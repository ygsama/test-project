#!/usr/bin/env bash
pwd
cp ./Dockerfile ./build/libs/
cd ./build/libs
docker build -t 10.2.21.95:10001/test-project:1.0.0
#docker login -u publisher -p publisher 10.2.21.95:10001
docker run -d -p 9090:8080  10.2.21.95:10001/test-project:1.0.0