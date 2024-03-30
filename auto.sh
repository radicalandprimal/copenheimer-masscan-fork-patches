#!/bin/sh

function apply_patch() {
    git apply $1
    git add .
    git commit -m $2
}

git clone https://github.com/robertdavidgraham/masscan.git

cd masscan

git checkout 7b3f6227682f1e12e9eec0cd74b18c503e2e69e4
git branch minecraft

apply_patch "../1-format.patch" "Format Files"
apply_patch "../2-delete.patch" "Delete irrelevant files"
apply_patch "../3-main.patch" "Minecraft Server Support"

./build.sh
