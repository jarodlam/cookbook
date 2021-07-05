#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "Please specify commit message"
    exit 1
fi

commit_currrent_dir() {
  git add .
  git commit -m "$1"
  git push origin master
}

ROOTDIR=$PWD
set -x

cd public
commit_currrent_dir $1

cd $ROOTDIR

cd themes/hyde
commit_currrent_dir $1

cd $ROOTDIR

commit_currrent_dir $1