#! /bin/sh -l

url=$1
snap=$2
runtime=$3
checks=$4
shift 4

# if snap does not exists, take it
if [ ! -f "$snap" ]; then
  echo "Snapshot does not exist, taking it now..."
  try-runtime --runtime existing create-snapshot --uri $url $snap
fi

try-runtime --runtime $runtime on-runtime-upgrade --checks=$checks $* snap --path $snap
