#!/bin/bash
mas list | awk '{print $1}' >mas_apps.txt
