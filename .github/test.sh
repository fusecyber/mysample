#!/bin/sh
git fetch origin main
master_diff=$(git diff origin/main HEAD --name-only --relative=terraform)
diff_count=$(echo ${master_diff} | wc -l ) 
echo "::set-output name=diff-count::$(echo ${diff_count})"
if [ ${diff_count} -ge 1 ]; then
  echo ${master_diff}
  for file in ${master_diff}; do
    env_dir=$(echo ${file} | awk -F"/" '{ print $1 }')
    echo "::set-output name=diff-env::$(echo ${env_dir})"
    diff_dir=$(echo ${file} | awk -F"/" '{ print $2 }')
    echo "::set-output name=diff-dir::$(echo ${diff_dir})"
  done
fi
