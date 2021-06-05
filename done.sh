#!/usr/bin/env sh
set -eu


# please install gocopy
# go get github.com/atotto/clipboard/cmd/gocopy
# if you use wsl you install windosw side and set WSLENV USERPROFILE/up
if [ -n "${WSLENV-}" ]; then
    cat src/main.rs | $USERPROFILE/go/bin/gocopy.exe
else
    cat src/main.rs | gocopy
fi

name="src/$1.rs"
mv -f src/main.rs $name
cp -f src/kata.rs src/main.rs
