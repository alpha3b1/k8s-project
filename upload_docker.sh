#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=alpha3b1/ml_project

# Step 2:  
# Authenticate & tag
docker login --username=alpha3b1
docker tag  f0751d6fcd38 alpha3b1/ml_project:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push alpha3b1/ml_project

