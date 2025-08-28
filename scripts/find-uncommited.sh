#!/usr/bin/env bash

# Folders to skip when checking for uncommitted changes
skip_folders=(
  "node_modules"
  "build"
  "dist"
  "target"
  "Library"
  ".next"
  ".nuxt"
  "out"
  "coverage"
  ".nyc_output"
  "temp"
  "tmp"
  ".cache"
  ".parcel-cache"
  ".vite"
  ".turbo"
  "vendor"
  "lib"
  "libs"
  "public"
  "static"
  ".sass-cache"
  ".env.local"
  ".local"
)

cwd="$(pwd)"

# Function to check if a folder should be skipped
should_skip_folder() {
  local folder="$1"
  local basename=$(basename "$folder")

  for skip in "${skip_folders[@]}"; do
    if [[ "$basename" == "$skip" ]] || [[ "$folder" == *"/$skip"* ]]; then
      return 0
    fi
  done
  return 1
}

find . -print0 -type d | while IFS= read -r -d '' file; do
  if [ ! -d "${file}/.git" ]; then
    continue
  fi

  if should_skip_folder "${file}"; then
    continue
  fi

  cd "${file}"

  has_changes=false

  if [[ -n $(git status -s) ]]; then
    echo "Repo ${file} has modified/untracked changes"
    has_changes=true
  fi

  # Check for unpushed commits
  if git rev-parse --abbrev-ref HEAD >/dev/null 2>&1; then
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Check if remote branch exists
    if git ls-remote --exit-code origin "$current_branch" >/dev/null 2>&1; then
      # Check for unpushed commits with error handling
      unpushed_output=$(git log origin/"$current_branch"..HEAD 2>&1)
      if [[ $? -ne 0 ]]; then
        echo "Warning: Failed to check unpushed commits for ${file} on branch $current_branch: $unpushed_output"
      elif [[ -n "$unpushed_output" ]]; then
        echo "Repo ${file} has unpushed commits on branch $current_branch"
        has_changes=true
      fi
    else
      # Remote branch doesn't exist, check if there are any commits to push
      if [[ -n $(git log --oneline) ]]; then
        echo "Repo ${file} has commits but no remote branch $current_branch"
        has_changes=true
      fi
    fi
  fi

  cd "${cwd}"
done
