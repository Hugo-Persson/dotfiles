#!/bin/bash
cd ~/dotfile-management/sync/ || exit
mas list | awk '{print $1}' >mas_apps.txt
cd - || exit
