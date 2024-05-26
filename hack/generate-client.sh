#!/usr/bin/env bash
set -eo pipefail

if [ -L "${0}" ]
then
    ROOT=$(realpath -e "$(dirname "$(readlink -e "${0}")")/..")
else
    ROOT=$(realpath -e "$(dirname "${0}")/..")
fi

SPEC_VERSION="1.0.0-alpha1"
SPEC_DOWNLOAD=${SPEC:-https://dl.gopad.eu/openapi/${SPEC_VERSION}.yml}

echo "> deleteing apis and models"
rm -rf lib test

if hash openapi-generator-cli 2>/dev/null; then
    openapi-generator-cli \
        generate \
        -c openapi.yml \
        -g php \
        --git-repo-id gopad-php \
        --git-user-id gopad \
        --http-user-agent "gopad-php/${SPEC_VERSION}" \
        -i "${SPEC_DOWNLOAD}" \
        -o . \
        -t hack/openapi/templates \
        --strict-spec true
else
    if hash docker 2>/dev/null; then
        COMMAND="docker"
    elif hash podman 2>/dev/null; then
        COMMAND="postman"
    else
        echo "missing container runtime"
        exit 1
    fi

    "${COMMAND}" run --rm \
        -v "${ROOT}:/generate:Z" \
        -w /generate \
        docker.io/openapitools/openapi-generator-cli:v7.6.0 \
        generate \
        -c /generate/openapi.yml \
        -g php \
        --git-repo-id gopad-php \
        --git-user-id gopad \
        --http-user-agent "gopad-php/${SPEC_VERSION}" \
        -i "${SPEC_DOWNLOAD}" \
        -o /generate \
        -t /generate/hack/openapi/templates \
        --strict-spec true
fi
