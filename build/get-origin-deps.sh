#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

mkdir -p "./${TEMP_DIR}"

if [ "$USE_CHINA_MIRROR" = "true" ]; then
    curl -L -o "${DEPS_FILE}"  "https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=launch_utils.py"
else
    curl -L -o "${DEPS_FILE}" "${STABLE_DIFFUSION_WEBUI_REPO}/raw/main/modules/launch_utils.py"
fi

echo "Downloaded ${DEPS_FILE}"