#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

SDWEBUI_CONTROLNET_GITHUB="https://github.com/Mikubill/sd-webui-controlnet.git"
SDWEBUI_CONTROLNET_COMMIT_HASH="ba05e1ea20df0e29a3dce9fcbe3ecc30777a5271"

PACKAGES_DIR="./packages"
mkdir -p "${PACKAGES_DIR}"

# Mikubill/sd-webui-controlnet
# =================
echo "[GET Info] Mikubill/sd-webui-controlnet"
if [[ -d "${PACKAGES_DIR}/sd-webui-controlnet" ]]; then
    echo "continue-revolution/sd-webui-controlnet is already exist, skip clone."
else
    git clone --recursive "${SDWEBUI_CONTROLNET_GITHUB}" "${PACKAGES_DIR}/sd-webui-controlnet"
    cd "${PACKAGES_DIR}/sd-webui-controlnet"
    git checkout "${SDWEBUI_CONTROLNET_COMMIT_HASH}"
    cd "../../"
fi
echo ""
# =================