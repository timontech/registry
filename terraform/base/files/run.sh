#!/usr/bin/env bash

if [[ ! -e /blueprint/.git ]]; then
    source=$(yq e .blueprint.source /input/timon.yaml)
    version=$(yq e .blueprint.version /input/timon.yaml)
    git clone -b ${version} ${source} /blueprint
fi

if [[ ! -e /environment/blueprint.env ]]; then
    blueprint=$(yq e .blueprint.name /input/timon.yaml)
    echo "export BLUEPRINT=${blueprint}" > /environment/blueprint.env
fi

source /environment/blueprint.env

pushd /environment > /dev/null
make "$@"
popd > /dev/null
