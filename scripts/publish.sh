#! /usr/bin/env bash

set -e

registry="registry.gitlab.com/var-app/code"

here=$(dirname $0)
root=$(readlink -f "$here/..")

pack builder create \
     "$registry/jammy-varapp-builder" \
     --config "$root/builder.toml"
docker push "$registry/jammy-varapp-builder"
