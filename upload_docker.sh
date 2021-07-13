#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=e13958e13d42

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username melsayed7
docker tag melsayed-mlapi melsayed7/ml-microservices-udacity:latest
# Step 3:
# Push image to a docker repository
docker push melsayed7/ml-microservices-udacity:latest
