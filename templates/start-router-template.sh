#!/bin/bash

ECR_REPOSITORY="020562383213.dkr.ecr.us-west-2.amazonaws.com/nginx-router:latest";

# include port mappings and volume mappings for nginx
# config, letsencrypt cert dir and htdocs dir (if applicable)
docker run \
    --name nginx-router \
    -d --rm \
    -p 80:80 -p 443:443 \
    -v /home/ubuntu/letsencrypt:/etc/letsencrypt \
    -v /home/ubuntu/nginx-conf:/etc/nginx/conf.d \
    -v /home/ubuntu/htdocs:/htdocs \
    $ECR_REPOSITORY;