#!/usr/bin/env bash
set -euo pipefail

# ---- config (override by env vars) ----
TARGET_USER="${SUDO_USER:-${USER}}"
HOME_DIR="$(dscl . -read /Users/"$TARGET_USER" NFSHomeDirectory 2>/dev/null | awk '{print $2}' || true)"
if [[ -z "${HOME_DIR}" ]]; then
	HOME_DIR="/Users/${TARGET_USER}"
fi

# Default flake dir candidates; can be overridden by passing arg1 or setting FLAKE_DIR env
DEFAULT_FLAKE_DIRS=(
	"${HOME_DIR}/.config/nix-darwin"
	"${HOME_DIR}/nix-darwin"
	"${HOME_DIR}/.nix-darwin"
)

FLAKE_DIR="${1:-${FLAKE_DIR:-}}"

log() { printf "\n==> %s\n" "$*"; }
warn() { printf "\n[warn] %s\n" "$*"; }
die() {
	printf "\n[error] %s\n" "$*"
	exit 1
}

need_sudo() {
	if [[ "${EUID}" -ne 0 ]]; then
		die "Please run this script with: bash $0 (it will sudo internally) OR: sudo bash $0"
	fi
}

# This script expects to be run as normal user (preferred). It will sudo as needed.
if [[ "${EUID}" -eq 0 && -z "${SUDO_USER:-}" ]]; then
	warn "You're running as root without SUDO_USER set. Home ownership fix may not target the right user."
fi

# ---- 1) Fix HOME ownership warning ----
log "Checking home directory ownership: ${HOME_DIR}"
if [[ -d "${HOME_DIR}" ]]; then
	OWNER="$(stat -f '%Su' "${HOME_DIR}")"
	GROUP="$(stat -f '%Sg' "${HOME_DIR}")"
	log "Home is owned by: ${OWNER}:${GROUP}"
	if [[ "${OWNER}" != "${TARGET_USER}" ]]; then
		warn "Home is not owned by ${TARGET_USER}. Fixing ownership (this can take a while if you have lots of files)..."
		sudo chown -R "${TARGET_USER}:staff" "${HOME_DIR}"
		log "Ownership fixed to ${TARGET_USER}:staff"
	else
		log "Home ownership looks good."
	fi
else
	warn "Home directory ${HOME_DIR} does not exist; skipping ownership fix."
fi

# ---- 2) Enable nix-command + flakes permanently ----
log "Ensuring /etc/nix/nix.conf enables nix-command and flakes"
sudo mkdir -p /etc/nix
if [[ ! -f /etc/nix/nix.conf ]]; then
	sudo touch /etc/nix/nix.conf
fi

# If experimental-features exists, ensure both tokens are present; otherwise append line.
if sudo grep -qE '^\s*experimental-features\s*=' /etc/nix/nix.conf; then
	# Normalize by appending missing tokens
	CURR="$(sudo sed -nE 's/^\s*experimental-features\s*=\s*(.*)$/\1/p' /etc/nix/nix.conf | tail -n 1 || true)"
	# shellcheck disable=SC2206
	TOKS=(${CURR})
	has_token() {
		for t in "${TOKS[@]}"; do [[ "$t" == "$1" ]] && return 0; done
		return 1
	}

	NEW="${CURR}"
	if ! has_token "nix-command"; then NEW="${NEW} nix-command"; fi
	if ! has_token "flakes"; then NEW="${NEW} flakes"; fi

	if [[ "${NEW}" != "${CURR}" ]]; then
		log "Updating experimental-features line"
		sudo perl -0777 -i -pe 's/^\s*experimental-features\s*=.*$/experimental-features = '"${NEW//\//\\/}"'/m' /etc/nix/nix.conf
	else
		log "experimental-features already includes nix-command and flakes"
	fi
else
	log "Adding experimental-features = nix-command flakes"
	echo "experimental-features = nix-command flakes" | sudo tee -a /etc/nix/nix.conf >/dev/null
fi

# ---- 3) Backup /etc shell init files nix-darwin wants to manage ----
backup_etc_file() {
	local f="$1"
	local backup="${f}.before-nix-darwin"
	if [[ -e "${f}" ]]; then
		if [[ -e "${backup}" ]]; then
			log "Backup already exists: ${backup} (leaving ${f} as-is)"
		else
			log "Backing up ${f} -> ${backup}"
			sudo mv "${f}" "${backup}"
		fi
	else
		log "Not found: ${f} (skipping)"
	fi
}

log "Backing up conflicting /etc files (if present)"
backup_etc_file /etc/bashrc
backup_etc_file /etc/zshrc
backup_etc_file /etc/zprofile

# ---- 4) Restart Nix daemon (best-effort) ----
log "Restarting Nix daemon (best-effort)"
if sudo launchctl list | grep -q "org.nixos.nix-daemon"; then
	sudo launchctl kickstart -k system/org.nixos.nix-daemon || true
else
	warn "Nix daemon service org.nixos.nix-daemon not found via launchctl list; continuing."
fi

# ---- 5) Run nix-darwin switch ----
find_flake_dir() {
	if [[ -n "${FLAKE_DIR}" ]]; then
		if [[ -f "${FLAKE_DIR}/flake.nix" ]]; then
			echo "${FLAKE_DIR}"
			return 0
		else
			die "Provided flake dir '${FLAKE_DIR}' does not contain flake.nix"
		fi
	fi
	for d in "${DEFAULT_FLAKE_DIRS[@]}"; do
		if [[ -f "${d}/flake.nix" ]]; then
			echo "${d}"
			return 0
		fi
	done
	return 1
}

log "Attempting to run nix-darwin switch"
if FDIR="$(find_flake_dir)"; then
	log "Found flake.nix at: ${FDIR}"
	# Try switch using flake. (If your flake has multiple hosts, you may need to add #<hostname>.)
	sudo nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake "${FDIR}"
	log "nix-darwin switch completed."
else
	warn "No flake.nix found in default locations."
	warn "Trying legacy 'darwin-rebuild switch' (requires nix-darwin already installed + NIX_PATH set)."
	if command -v darwin-rebuild >/dev/null 2>&1; then
		sudo darwin-rebuild switch
		log "darwin-rebuild switch completed."
	else
		die "Could not find flake.nix and darwin-rebuild is not installed. Put your nix-darwin flake in ~/.config/nix-darwin or pass the path: bash $0 /path/to/flake-dir"
	fi
fi

log "All done. Open a new terminal session to pick up any shell/env changes."
