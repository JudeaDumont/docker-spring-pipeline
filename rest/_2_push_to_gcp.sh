#!/bin/bash

#from: docker.io/library/simplerestcontroller

#to: gcr.io/nice-virtue-305620/simplerestcontroller
#gcr.io/nice-virtue-305620/simplerestcontrollertest

docker image tag simplerestcontroller:latest gcr.io/nice-virtue-305620/simplerestcontroller:latest
docker image push gcr.io/nice-virtue-305620/simplerestcontroller:latest

docker image tag simplerestcontrollertest:latest gcr.io/nice-virtue-305620/simplerestcontrollertest:latest
docker image push gcr.io/nice-virtue-305620/simplerestcontrollertest:latest
