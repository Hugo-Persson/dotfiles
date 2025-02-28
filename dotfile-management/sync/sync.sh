#!/bin/bash

cd ~/dotfile-management/sync || exit
./sync-brew.sh
./install-mas.sh
./sync-bat.sh
cd - || exit
