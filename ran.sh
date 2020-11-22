#! /usr/bin/sh
set -eu

if [ -n $WSLENV ]; then
    $USERPROFILE/go/bin/gopaste.exe | cargo run
else
    xclip -o -selection clipboard | cargo run
fi
