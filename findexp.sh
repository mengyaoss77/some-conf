#!/bin/zsh
#
#

grep -H -n -r --color --exclude=tags --exclude-dir=dist --exclude-dir=node_modules $1 $2 *

#find . -iname \*.cpp -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.c -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.h -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.lua -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.xml -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.json -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.toml -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.proto -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.go -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.py -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.js -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.php -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.json -exec grep -n $LINE --color  -H $1 \{\} \;
#find . -iname \*.html -exec grep -n $LINE --color  -H $1 \{\} \;
