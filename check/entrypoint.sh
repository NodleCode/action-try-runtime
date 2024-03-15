#! /bin/sh -l

url=$1
runtime=$3
checks=$4
shift 3

try-runtime --runtime $runtime on-runtime-upgrade --checks=$checks $* snap --path $snap
