#bin/bash

wget -qO - https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh |  bash

apt install -y gitlab-runner

usermod -aG docker gitlab-runner
