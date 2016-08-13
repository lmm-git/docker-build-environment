# Docker Build Environment
A simple docker container, which provides a build environment to build software in PRs welcome!

## What's this?
This docker containers containing all the stuff I needed to build my own projects, but it is intended to provide a set of useful build tools in this containers in order to provide a nice docker container for CI builds.

## How to add software

1. Open a PR and add the software to the Docker file (if it does not break anything else)
2. Make your own Docker image based upon this (`FROM lmmdock/build-environment`)
