#! /bin/sh -l

url=$1
snap=$2
runtime=$3
checks=$4

# if snap does not exists, take it
if [ ! -f "$snap" ]; then
  echo "Snapshot does not exist, taking it now..."
  /usr/local/cargo/bin/try-runtime --runtime existing create-snapshot --uri $url $snap
fi

/usr/local/cargo/bin/try-runtime --runtime $runtime on-runtime-upgrade --checks=$checks snap --path $snap