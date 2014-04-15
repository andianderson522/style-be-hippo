#!/bin/sh -x
# ship: Ship current branch to development branch
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
CURRENT="${ref#refs/heads/}"
git checkout development
git pull origin development
git merge ${CURRENT}
git branch -d ${CURRENT}
git gc --auto

