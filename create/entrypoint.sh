#! /bin/sh -l

url=$1
snap=$2
shift 2

try-runtime --runtime existing create-snapshot --uri $url $snap $*
