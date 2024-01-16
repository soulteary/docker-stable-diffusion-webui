#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

SDWEBUI_ANIMATEDIFF_GITHUB="https://github.com/continue-revolution/sd-webui-animatediff.git"
SDWEBUI_ANIMATEDIFF_COMMIT_HASH="e9db9f287e73eeaee1d890c35a8f6f63b303159a"

PACKAGES_DIR="./packages"
mkdir -p "${PACKAGES_DIR}"

# continue-revolution/sd-webui-animatediff
# =================
echo "[GET Info] continue-revolution/sd-webui-animatediff"
if [[ -d "${PACKAGES_DIR}/sd-webui-animatediff" ]]; then
    echo "continue-revolution/sd-webui-animatediff is already exist, skip clone."
else
    git clone "${SDWEBUI_ANIMATEDIFF_GITHUB}" "${PACKAGES_DIR}/sd-webui-animatediff"
    cd "${PACKAGES_DIR}/sd-webui-animatediff"
    git checkout "${SDWEBUI_ANIMATEDIFF_COMMIT_HASH}"
    cd "../../"
fi
echo ""