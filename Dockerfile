# ubuntu:20.04
FROM ubuntu:focal-20211006

# Versions
# renovate: datasource=repology depName=python3.8 lookupName=ubuntu_20_04/python3.8 versioning=loose
ARG V_PYTHON38="3.9.5-3ubuntu0~20.04.1"
# renovate: datasource=repology depName=wget lookupName=ubuntu_20_04/wget versioning=loose
ARG V_WGET="1.99.1-2.1"

RUN apt-get update \
  # suppress configuration prompts
  && DEBIAN_FRONTEND="noninteractive" \
  apt-get install --no-install-recommends -y \
  python3.8="${V_PYTHON38}" \
  wget="${V_WGET}" \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/*
