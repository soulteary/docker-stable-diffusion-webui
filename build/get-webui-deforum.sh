#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

SDWEBUI_CONTROLNET_GITHUB="https://github.com/deforum-art/sd-webui-deforum.git"
SDWEBUI_CONTROLNET_COMMIT_HASH="d3b00b3ce46d7c8a8fc425a4f869070bba147d4a"

PACKAGES_DIR="./packages"
mkdir -p "${PACKAGES_DIR}"

# deforum-art/sd-webui-deforum
# =================
echo "[GET Info] deforum-art/sd-webui-deforum"
if [[ -d "${PACKAGES_DIR}/sd-webui-deforum" ]]; then
    echo "deforum-art/sd-webui-deforum is already exist, skip clone."
else
    git clone --recursive "${SDWEBUI_CONTROLNET_GITHUB}" "${PACKAGES_DIR}/sd-webui-deforum"
    cd "${PACKAGES_DIR}/sd-webui-deforum"
    git checkout "${SDWEBUI_CONTROLNET_COMMIT_HASH}"
    cd "../../"
fi
echo ""
# =================