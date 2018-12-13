#!/bin/zsh

LINE=$2


find . -iname \*.cpp -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.c -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.h -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.lua -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.xml -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.json -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.toml -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.proto -exec grep -n $LINE --color  -H $1 \{\} \;
find . -iname \*.go -exec grep -n $LINE --color  -H $1 \{\} \;
