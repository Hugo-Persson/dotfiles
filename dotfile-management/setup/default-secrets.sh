# Create secret files if they do not exist
for secret_file in \
  "anthropic-token" \
  "cps-api-key" \
  "deepseek-token" \
  "dns-cli-config.json" \
  "gh_pat" \
  "indoor_api_key" \
  "nvim.env" \
  "paperless-ngx" \
  "slam_api_key"; do
  if [ ! -f "$secret_file" ]; then
    echo "Creating secret default file: $secret_file"
    touch "$secret_file"
  fi
done
