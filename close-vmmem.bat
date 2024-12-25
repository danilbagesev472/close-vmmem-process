@echo off

echo Stopping WSL...
wsl --shutdown

echo Stopping Docker Desktop...
net stop com.docker.service

echo vmmem should now be stopped.