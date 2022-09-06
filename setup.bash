#!/bin/bash

timezone="TZ=Europe/Berlin"

docker_name="homeassistant-klyqa"
docker_run_opts="-it"
network="host" #ipvlan"
config_path="~/.config/home-assistant"

docker build -t $docker_name .

mkdir -p $config_path
wget -O $config_path/klyqa-install.bash https://raw.githubusercontent.com/klyqa/home-assistant-integration/main/install.bash

docker run -d ${docker_run_opts}  \
  --name $docker_name \
  --privileged \
  --restart=unless-stopped \
  -e $timezone \
  -v $config_path:/config \
  --network=$network \
  ghcr.io/home-assistant/home-assistant:stable

docker exec -it "$docker_name" bash /config/klyqa-install.bash

