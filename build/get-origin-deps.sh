#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

mkdir -p "./${TEMP_DIR}"
curl -L -o "${DEPS_FILE}" https://github.com/AUTOMATIC1111/stable-diffusion-webui/raw/master/modules/launch_utils.py
echo "Downloaded ${DEPS_FILE}"