#! /usr/bin/sh
set -eu

if [ -n $WSLENV ]; then
    gopaste | cargo run
else
    xclip -o -selection clipboard | cargo run
fi
