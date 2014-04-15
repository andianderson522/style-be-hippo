#!/bin/sh -x
# squash: Squash all commits in your current branch into one commit, based on the current state of the development branch
git rebase -i development
