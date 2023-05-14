#!/bin/bash

# Define variables
IMAGE_NAME="reactjs"
DOCKERFILE="Dockerfile"

# Build the Docker image
docker build -t "$IMAGE_NAME" -f "$DOCKERFILE" .

echo "Docker image built successfully: $IMAGE_NAME"
