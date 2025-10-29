#!/bin/sh
set -x
sudo apt install -y git curl
curl -LsSf https://astral.sh/uv/install.sh | sh

if [ -f ~/.ssh/id_ed25519 ]; then
    exit 0
else
    ssh-keygen -q -N "" -f ~/.ssh/id_ed25519
    cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
    ssh -oStrictHostKeyChecking=no localhost uptime
fi
