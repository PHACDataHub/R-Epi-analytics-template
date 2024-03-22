#!/bin/bash

# Prune old containers
docker container prune -f

# Prune old images
docker image prune -f

# Check if the shiny_app image exists
if docker image inspect shiny_app &> /dev/null; then
    echo "shiny_app image found."
else
    echo "shiny_app image not found. Building..."
    # Build the shiny_app image
    docker build -t shiny_app .
fi

# Run the shiny_app container
docker run -p 3838:3838 shiny_app

