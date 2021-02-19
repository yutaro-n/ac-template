#! /usr/bin/sh
set -eu


if [ $# == 1 ]; then
    name="src/$1.rs"
    cp -f $name src/main.rs
fi

# please install gopaste
# go get github.com/atotto/clipboard/cmd/gopaste
# if you use wsl you install windosw side and set WSLENV USERPROFILE/up
if [ -n $WSLENV ]; then
    $USERPROFILE/go/bin/gopaste.exe | cargo run
else
    gopaste | cargo run
fi
