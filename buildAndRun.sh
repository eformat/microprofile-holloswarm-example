#!/bin/sh
mvn clean package && docker build -t com.foo/foo .
docker rm -f foo || true && docker run -d -p 8080:8080 -p 4848:4848 --name foo com.foo/foo 
