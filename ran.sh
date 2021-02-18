#! /usr/bin/sh
set -eu


if [ $# == 1 ]; then
    mv -f src/$1.rs src/main.rs
fi

# please install gopaste
# go get github.com/atotto/clipboard/cmd/gopaste
# if you use wsl you install windosw side and set WSLENV USERPROFILE/up
if [ -n $WSLENV ]; then
    $USERPROFILE/go/bin/gopaste.exe | cargo run
else
    gopaste | cargo run
fi
