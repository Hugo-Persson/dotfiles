#!/opt/homebrew/bin/fish

echo "Changes are:"
git cliff --unreleased | glow -
