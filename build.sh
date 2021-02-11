#!/bin/bash

ECR_REPOSITORY="020562383213.dkr.ecr.us-west-2.amazonaws.com/nginx-router";
TIMESTAMP=`TZ=UTC date +%Y_%m_%d_%H_%M_%S`;

# Build Docker image
####################
docker build -f includes/Dockerfile \
    --no-cache \
    -t $ECR_REPOSITORY:latest \
    -t $ECR_REPOSITORY:build_$TIMESTAMP .;

# ECR Login
###########
$(aws ecr get-login --no-include-email --region us-west-2);

# Push Docker image to ECR
##########################
docker push $ECR_REPOSITORY:build_$TIMESTAMP;
docker push $ECR_REPOSITORY:latest;