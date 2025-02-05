#!/bin/bash

echo "Stopping WSL..."
wsl.exe --shutdown

echo "Stopping Docker Desktop..."
if [ "$(uname)" == "Darwin" ]; then
    launchctl stop com.docker.docker
else
    sudo systemctl stop docker
fi

echo "vmmem should now be stopped."