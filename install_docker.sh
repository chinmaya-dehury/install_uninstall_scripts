#bin/bash

mkdir -p /etc/docker

echo '{"default-address-pools": [{"base":"172.80.0.0/16","size":24}]}' > /etc/docker/daemon.json

curl -fsSL https://get.docker.com/ | sh

usermod -aG docker $USER

newgrp docker

systemctl start docker

systemctl status docker

systemctl enable docker
