# docker-nginx-aws
Simple NGINX setup using Amazon Linux for Docker
docker-nginx-aws
===========

[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)

Sample nginx image running Amazon Linux to test docker deployments

## Running locally

Build and run using Docker Compose:

	$ git clone https://github.com/carmenapuccio/nginx-aws
	$ cd nginx-aws
	$ docker run -p 80:80 -p 8100:8100 carmenpuccio/nginx-aws


