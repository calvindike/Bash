#!/bin/sh
# This script upgrades the datadog synthetics container
echo
echo "Pulling latest datadog synthetics Docker image..."
sudo docker pull gcr.io/datadoghq/synthetics-private-location-worker:latest
echo "Latest datadog synthetics Docker image pulled successfully"
echo
container_name=$(docker container ls | awk '{print $10}')
echo "Stopping running docker container..."
sudo docker stop $container_name
echo "Docker container stopped"
echo
echo "Removing docker container..."
sudo docker rm $container_name
echo "Docker container removed"
echo
echo "Restarting docker container with latest image..."
sudo docker run -d --restart unless-stopped -v /etc/datadog-agent/private_certs:/etc/datadog/certs -v /etc/datadog-agent/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.json:/etc/datadog/synthetics-check-runner.json gcr.io/datadoghq/synthetics-private-location-worker:latest
echo "Container restarted"
echo
echo "Pruning docker images..."
sudo docker image prune --force
echo "Docker images pruned"
echo
sudo docker container ls
