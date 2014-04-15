#!/bin/sh -x
# getLatestDev: Merge the latest changes from the master branch into your current branch
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
CURRENT="${ref#refs/heads/}"
git checkout development
git pull origin development
git checkout ${CURRENT}
git rebase development
