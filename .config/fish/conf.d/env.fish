# Previously exported UID/GID=1000 for the monitor-stack docker compose file
# (grafana/prometheus run as 1000:1000 on the Linux host).
#
# Removed 2026-09-23: macOS /bin/bash lets an inherited UID override its own
# builtin, so `brew` saw UID=1000 vs EUID=501 and refused to run with
# "Running Homebrew with different real and effective UIDs is not supported."
#
# monitor-stack/grafana/compose.yaml now uses "${UID:-1000}:${GID:-1000}",
# so no global export is needed.
