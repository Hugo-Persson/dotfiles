#!/bin/bash
PROFILE=$(gum choose "Dev" "Server")
echo "$PROFILE" >~/profile.txt
echo "$PROFILE"
