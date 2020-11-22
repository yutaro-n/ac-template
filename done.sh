#! /usr/bin/sh
set -eu

if [ -n $WSLENV ]; then
    cat src/main.rs | $USERPROFILE/go/bin/gocopy.exe
else
    cat src/main.rs | xsel -bi
fi

name="src/$1.rs"
mv src/main.rs $name
cp src/kata.rs src/main.rs
