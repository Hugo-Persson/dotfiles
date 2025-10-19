# CLAUDE.md

If you need to apply any darwin options you **MUST** read See https://nix-darwin.github.io/nix-darwin/manual/ 

## Build & Deployment Commands

- **Apply configuration**: `darwin-rebuild switch --flake .` or run `./build.sh`
- **Build without switching**: `darwin-rebuild build --flake .#Hugos-MacBook-Pro`
- **Test configuration**: `nix flake check`
- **Update flake inputs**: `nix flake update`
- **Show configuration differences**: `darwin-rebuild build --flake . && nvd diff /run/current-system ./result`

## Architecture Overview

This is a **nix-darwin** configuration for macOS system management using Nix flakes. The configuration is structured as follows:

- **`flake.nix`**: Main entry point defining inputs (nixpkgs, nix-darwin) and the darwinConfiguration for "Hugos-MacBook-Pro"
- **`nix-darwin/default.nix`**: Core system configuration including:
  - macOS system defaults (dock, finder, keyboard settings)
  - Homebrew package management (disabled by default, but casks/brews defined)
  - System services and security settings
- **`home.nix`**: Home Manager configuration for user-level packages and dotfiles
- **`nix.conf`**: Nix daemon configuration enabling flakes and nix-command

## Key Configuration Patterns

The flake targets the `aarch64-darwin` system and uses the hostname-based configuration pattern. System packages are managed through Nix while GUI applications are managed via Homebrew casks.

The configuration extensively customizes macOS defaults including dock behavior, finder settings, keyboard repeat rates, and desktop preferences. Security features like Touch ID for sudo are enabled.

## Development Notes

- Homebrew is currently disabled (`homebrew.enable = false`) but casks and brews are defined for future use
- The configuration uses Git user "Hugo" with email "hugo.e.persson@gmail.com"
- Fish shell is enabled at the system level
- Home Manager manages user-specific configurations and is set to auto-install itself

# Docs
