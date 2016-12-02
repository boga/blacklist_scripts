#!/usr/bin/env sh
BASEDIR=$(dirname "$0")
lua_file="$BASEDIR/ips_fetcher.lua"
ips_file="$BASEDIR/ips.txt"
wget -O $ips_file 'http://reestr.rublacklist.net/api/ips' -o /dev/null
lua $lua_file $ips_file 
