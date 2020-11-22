#! /usr/bin/sh
set -eu

if [ -n $WSLENV ]; then
    cat src/main.rs | gocopy
else
    cat src/main.rs | xsel -bi
fi

name="src/$1.rs"
mv src/main.rs $name
cp src/kata.rs src/main.rs
