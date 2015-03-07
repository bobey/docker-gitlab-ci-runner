# Docker GitlabCI Runner PHP 5.5

A docker gitlab-ci runner with php5.5 basic stack

```
docker build -t gitlabhq/gitlab-ci-runner github.com/gitlabhq/gitlab-ci-runner
docker build -t bobey/docker-gitlab-ci-runner-php55 github.com/bobey/docker-gitlab-ci-runner-php55

docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -e GITLAB_SERVER_FQDN=gitlab.example.com bobey/docker-gitlab-ci-runner-php55

docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -i -t bobey/docker-gitlab-ci-runner-php55:latest /bin/bash

docker build --no-cache -t bobey/docker-gitlab-ci-runner-php55 github.com/bobey/docker-gitlab-ci-runner-php55
```
