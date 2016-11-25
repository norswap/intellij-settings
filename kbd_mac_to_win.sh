#!/bin/bash

SOURCE="$(readlink -f "${BASH_SOURCE[0]}")"
DIR="$(cd "$(dirname "$SOURCE")" && pwd)"

cd $DIR/keymaps
sed 's/meta /ctrl /g' norswap_mac.xml > norswap_win.xml.tmp
awk '!x{x=sub(/norswap_mac/,"norswap_win")}1' norswap_win.xml.tmp > norswap_win.xml
rm norswap_win.xml.tmp
