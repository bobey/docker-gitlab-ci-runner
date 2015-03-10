# docker-gitlab-ci-runner-nodejs

FROM bobey/docker-gitlab-ci-runner
MAINTAINER  Olivier Balais "obalais@gmail.com"

RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:chris-lea/node.js && \
    apt-get update && \
    apt-get install -y nodejs
