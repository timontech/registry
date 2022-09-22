#!/usr/bin/env bash

if [[ ! -e /blueprint/.git ]]; then
    git clone -b ${BLUEPRINT_VERSION} ${BLUEPRINT_SOURCE} /blueprint
fi

if [[ ! -e /environment/blueprint.env ]]; then
    echo "export BLUEPRINT=${BLUEPRINT_NAME}" > /environment/blueprint.env
fi

source /environment/blueprint.env

pushd /environment > /dev/null
if [[ $0 == "init" ]]; then
    make "$@" PARAMS="-plugin-dir /environment/.terraform"
else
    make "$@"
fi
popd > /dev/null
