#!/usr/bin/env bash
set -ex

docker build -t dev-env . && docker run --rm -it -v "$(pwd)/workspace:/src/workspace" --workdir /src/workspace dev-env bash -l
