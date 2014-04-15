#!/bin/sh -x
# mergeToMaster: Ship development branch to master
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
git checkout master
git pull origin master
git merge development
#git push origin master
git gc --auto

