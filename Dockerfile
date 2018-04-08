# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

# Base image
FROM python:2.7-stretch

# Start off with the most updated image possible
RUN apt-get update && apt-get --yes dist-upgrade

# Install non-PyPI dependencies
RUN apt-get update && apt-get install --no-install-recommends --yes -V \
        gatling \
        git

# Install app including dependencies, whitelist approach (size, anti-leak)
COPY docker-entrypoint.sh /root/pythonjobs/
COPY jobs/ /root/pythonjobs/jobs/
WORKDIR /root/pythonjobs
RUN git clone --depth 1 https://github.com/pythonjobs/template.git
RUN pip install -r template/requirements.txt

# Build website first time
RUN template/build.py /root/pythonjobs/

# Sync and serve website
EXPOSE 80
ENTRYPOINT ["/root/pythonjobs/docker-entrypoint.sh"]
