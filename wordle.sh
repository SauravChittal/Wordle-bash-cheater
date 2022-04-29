!# /bin/bash

# If no argument is given, or if the argument is '-h', print the help message
if [[ $# -eq 0 || $1 == "-help" ]]; then
    echo "Usage: wordle <letter/.> <letter/.> ... -n <letters not to be included>"
    return 1
fi
letters=""
# Get the list of letters
# If you see -n, replace . with [^{nextthing}]
for i in "$@"; do
    if [[ $i == "-n" ]]; then
        shift
        letters="${letters//[.]/[^$2]}"
        break
    else
        letters="$letters$i"
    fi
done
some=$PWD
cd /usr/share/dict
l=$(grep -oE "^$letters$" american-english)
echo $l
cd $some
