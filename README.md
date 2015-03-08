# Docker GitlabCI Runner PHP 5.5

## Description

A docker gitlab-ci runner containing the following stack:

- PHP 5.5
- Git
- Composer
- Xdebug

## Usage

This docker image is based on gitlabhq/gitlab-ci-runner image. In order to build it, you need to execute the following
commands:

```
docker build -t gitlabhq/gitlab-ci-runner github.com/gitlabhq/gitlab-ci-runner
docker build -t bobey/docker-gitlab-ci-runner-php55 github.com/bobey/docker-gitlab-ci-runner-php55
```

Then, you can run as many runners as you want by executing:

```
docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -e GITLAB_SERVER_FQDN=gitlab.example.com bobey/docker-gitlab-ci-runner-php55
```

If you need to pass an ssh key to the runner (a deploy key for example), use the following command:

```
docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root -e GITLAB_SERVER_FQDN=gitlab.example.com -v /absolute/path/to/your/home/.ssh/id_rsa:/root/.ssh/id_rsa:ro bobey/docker-gitlab-ci-runner-php55
```

If you don't mount this optional volume, an ssh-key will be automatically generated and the public key will be displayed
on standard output.

If you need to start a bash inside your container, use the following command:

```
docker run -e CI_SERVER_URL=https://ci.example.com -e REGISTRATION_TOKEN=replaceme -e HOME=/root --rm -it bobey/docker-gitlab-ci-runner-php55:latest /bin/bash
```
