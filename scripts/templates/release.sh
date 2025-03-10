#!/bin/bash

cd $(dirname "$(realpath "$0")")/..
RELEASE_FILE="<REPLACE>"
START_COMMIT="<REPLACE>"

VERSION_NAME=$(grep 'const val versionName' $RELEASE_FILE | awk -F '"' '{print $2}')

gum log --structured --level debug "Current version is" version "$VERSION_NAME"
echo "What type of release?"
TYPE=$(gum choose "patch" "minor" "major")
NEW_VERSION=$(semver next "$TYPE" "$VERSION_NAME")
gum log --structured --level debug "New version is" version "$NEW_VERSION"

cliff-changes.sh

preform_release() {
  gum log --structured --level debug "Compiling and publishing"
  sed -i '' "s/versionName = \"[^\"]*\"/versionName = \"$NEW_VERSION\"/" $RELEASE_FILE

  git cliff "$START_COMMIT..HEAD" --tag "$NEW_VERSION" >CHANGELOG.md
  git add CHANGELOG.md

  git commit -m "chore(publishing): $NEW_VERSION"
  git tag -a "v$NEW_VERSION" -m "Release version v$NEW_VERSION"

  git push origin --tags

  gum style \
    --foreground 212 --border-foreground 212 --border double \
    --align center --width 50 --margin "1 2" --padding "2 4" \
    "v$NEW_VERSION" 'Release is complete!'

}
gum confirm "Do you want to preform release?" && preform_release
