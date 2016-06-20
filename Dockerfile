#
# Base image for running cron jobs in a docker container
#
# docker-build properties:
# TAG=foodjunky/cron:latest

FROM foodjunky/base
MAINTAINER Jeremy Jongsma "jeremy@foodjunky.com"

RUN apt-get --yes update && \
	apt-get --yes install cron && \
	apt-get clean

ADD run-cron /usr/local/bin/run-cron
CMD ["/usr/local/bin/run-cron"]
