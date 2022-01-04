# ubuntu:20.04
FROM ubuntu:focal-20211006@sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322

# Versions
# renovate: datasource=repology depName=python3.8 lookupName=ubuntu_20_04/python3.8 versioning=loose
ARG V_PYTHON38="3.8.10-0ubuntu1~20.04.1"
# renovate: datasource=repology depName=wget lookupName=ubuntu_20_04/wget versioning=loose
ARG V_WGET="1.20.3-1ubuntu1"

RUN apt-get update \
  # suppress configuration prompts
  && DEBIAN_FRONTEND="noninteractive" \
  apt-get install --no-install-recommends -y \
  python3.8="${V_PYTHON38}" \
  wget="${V_WGET}" \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/*
