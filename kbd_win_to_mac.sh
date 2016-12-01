#!/bin/bash

SOURCE="$(readlink -f "${BASH_SOURCE[0]}")"
DIR="$(cd "$(dirname "$SOURCE")" && pwd)"

cd $DIR/keymaps
sed 's/ctrl /meta /g' norswap_win.xml > norswap_mac.xml.tmp
awk '!x{x=sub(/norswap_win/,"norswap_mac")}1' norswap_mac.xml.tmp > norswap_mac.xml
rm norswap_mac.xml.tmp
