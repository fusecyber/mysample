#!/bin/sh
git fetch origin main
master_diff=`git diff origin/main HEAD --name-only --relative=terraform`
echo ${master_diff}
