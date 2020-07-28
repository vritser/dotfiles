#!/bin/bash

fastgit=`echo ${1/github.com/hub.fastgit.org}`

git clone $fastgit

sleep 0.1

# re=".*/(.*).git"
# if [[ $fastgit =~ $re ]]; then
#     # echo ${BASH_REMATCH[1]};
#     cd ${BASH_REMATCH[1]}/;
# fi
