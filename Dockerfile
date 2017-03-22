FROM ubuntu:latest

MAINTAINER Leonard Marschke <github@marschke.me>

# Set pythonunbuffered for getting better outputs in combination with GitLab CI
ENV PYTHONUNBUFFERED=1

# update software repos
RUN apt-get update \
# ugrade software
	&& apt-get -y upgrade \
	&& apt-get -y install apt-utils \
# install some useful tools need to build grml (git is needed to use with gitlab ci)
	&& apt-get -y install \
# install essential build tools
		git \
		build-essential \
# python
		pyflakes \
		python-requests \
		python3-pip \
		python-pip \
		python3-psycopg2 \
		libffi-dev \
# C/C++
		make \
		cmake \
		libnetfilter-queue-dev \
		gcc \
		g++ \
		cppcheck \
		libcurlpp-dev \
		libcurl4-openssl-dev \
		libjson0 libjson0-dev \
		curl \
		libssl-dev \
		librtmp-dev \
# PHP
		php \
		php-gd \
# Java
		openjdk-8-jdk \
		gradle \
# other important packages
		fuse \
		wget \
# filesystem test suite
		fio \
# Docker
		docker.io \
# yasm (needed e.g. for ffmpeg)
		yasm \
# fabric (deployment tool)
		fabric \
# clean up
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
