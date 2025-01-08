set -e

#!bin/bash

echo "[Setup Bot] Setting up Prism Panel"

echo "[Setup Bot] Installing redis db"

sudo apt update
sudo apt install redis-server

sudo systemctl start redis
sudo systemctl enable redis

echo "[Setup Bot] Installing bun from https://bun.sh"

curl -fsSL https://bun.sh/install | bash

echo "[Setup Bot] Adding bun to PATH"

source ~/.bashrc 

echo "[Setup Bot] Upgrading bun to canary version"

bun upgrade --canary

source ~/.bashrc