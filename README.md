# docker-nginx-aws
Simple NGINX setup using Amazon Linux for Docker
docker-nginx-aws
===========

Sample nginx image running Amazon Linux to test docker deployments

## Running locally

Build and run using Docker Compose:

	$ git clone https://github.com/carmenapuccio/nginx-aws
	$ cd nginx-aws
	$ docker run -p 80:80 -p 8100:8100 carmenpuccio/nginx-aws

To test that the image is running:

Default page:
* http://localhost

App Pages:
* http://localhost:8100
* http://localhost:8100/landing.php


