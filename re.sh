#! /usr/bin/sh
set -eu


name="src/$1.rs"
# please install gocopy
# go get github.com/atotto/clipboard/cmd/gocopy
# if you use wsl you install windosw side and set WSLENV USERPROFILE/up
if [ -n $WSLENV ]; then
    cat $name | $USERPROFILE/go/bin/gocopy.exe
else
    cat $name | gocopy
fi
