#!/bin/bash

username=$(git config --get remote.origin.url | sed -e 's/git@github.com://' -e 's/[/].*//')
repository=$(git config --get remote.origin.url | sed -e 's/.*[/]//' -e 's/.git//')

sed -i -e "s/YOUR-USER-OR-ORG-NAME/$username/" -e "s/YOUR-REPO-NAME/$repository/" go.mod
sed -i "s/YOUR-REPO-NAME/$repository/" README.md
