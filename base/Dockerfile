# docker-gitlab-ci-runner

FROM gitlabhq/gitlab-ci-runner
MAINTAINER  Olivier Balais "obalais@gmail.com"

ADD files/run /sbin/run
RUN chmod +x /sbin/run

VOLUME /root/.ssh

CMD "/sbin/run"
