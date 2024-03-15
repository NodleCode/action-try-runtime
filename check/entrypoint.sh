#! /bin/sh -l

snap=$1
runtime=$2
checks=$3
shift 3

try-runtime --runtime $runtime on-runtime-upgrade --checks=$checks $* snap --path $snap
