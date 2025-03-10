#!/bin/bash

FILE=$(ls ~/dotfiles/scripts/templates/*.sh | gum choose)
echo $FILE
FILENAME=$(basename $FILE)
cp $FILE ./$FILENAME

gum style \
  --foreground 212 --border-foreground 212 --border double \
  --align center --width 50 --margin "1 2" --padding "2 4" \
  "Done!" "$FILENAME copied to $(pwd)"
