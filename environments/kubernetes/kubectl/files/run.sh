#!/usr/bin/env bash

if [[ ! -e /blueprint/.git ]]; then
    git clone -b ${BLUEPRINT_VERSION} ${BLUEPRINT_SOURCE} /blueprint
fi

if [[ ! -e /environment/blueprint.env ]]; then
    echo "export BLUEPRINT=${BLUEPRINT_NAME}" >> /environment/blueprint.env
    echo "export BLUEPRINT_PATH=${BLUEPRINT_PATH}" >> /environment/blueprint.env
fi

source /environment/blueprint.env

pushd /environment > /dev/null
make "$@"
popd > /dev/null
