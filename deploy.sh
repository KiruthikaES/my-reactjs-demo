#!/bin/bash

# Define variables
IMAGE_NAME="reactjs"
CONTAINER_NAME="my-reactjs-container"

# Stop and remove any existing container with the same name
docker stop "$CONTAINER_NAME" 2>/dev/null || true
docker rm "$CONTAINER_NAME" 2>/dev/null || true

# Run a new container using the Docker image
docker run -d --name "$CONTAINER_NAME" -p 1234:80 "$IMAGE_NAME"

echo "Docker container deployed successfully: $CONTAINER_NAME"
