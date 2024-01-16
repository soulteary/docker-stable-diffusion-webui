#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source "${SCRIPT_DIR}/common.sh"

PACKAGES_DIR="./packages"
mkdir -p "${PACKAGES_DIR}"

# clip_package
# =================
echo "[GET Info] clip_package"
clip_package_info=$(cat ${DEPS_FILE} | grep ".get('CLIP_PACKAGE'" | grep -oP "(?<=\").*(?=\")")
echo $clip_package_info
if [[ "${clip_package_info}" != "${CLIP_PACKAGE}" ]]; then
    echo "clip_package_info is not equal to CLIP_PACKAGE, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
clip_commit_hash=$(echo $clip_package_info | grep -oP '(?<=archive/)\w+(?=\.zip)')
if [[ "${CLIP_COMMIT_HASH}" != "" ]]; then
    echo "recommend CLIP_COMMIT_HASH is not empty, use it. ${CLIP_COMMIT_HASH}"
    clip_commit_hash="${CLIP_COMMIT_HASH}"
fi
if [[ -d "${PACKAGES_DIR}/clip" ]]; then
    echo "clip_package is already exist, skip clone."
else
    git clone "${CLIP_GITHUB}" "${PACKAGES_DIR}/clip"
fi
cd "${PACKAGES_DIR}/clip"
git checkout "${clip_commit_hash}"
cd "../../"
echo ""
# =================


# openclip_package
# =================
echo "[GET Info] openclip_package"
openclip_package_info=$(cat ${DEPS_FILE} | grep ".get('OPENCLIP_PACKAGE'" | grep -oP "(?<=\").*(?=\")")
echo $openclip_package_info
if [[ "${openclip_package_info}" != "${OPENCLIP_PACKAGE}" ]]; then
    echo "openclip_package_info is not equal to OPENCLIP_PACKAGE, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
openclip_commit_hash=$(echo $openclip_package_info | grep -oP '(?<=archive/)\w+(?=\.zip)')
if [[ "${OPENCLIP_COMMIT_HASH}" != "" ]]; then
    echo "recommend OPENCLIP_COMMIT_HASH is not empty, use it. ${OPENCLIP_COMMIT_HASH}"
    openclip_commit_hash="${OPENCLIP_COMMIT_HASH}"
fi
if [[ -d "${PACKAGES_DIR}/open_clip" ]]; then
    echo "openclip_package is already exist, skip clone."
else
    git clone "${OPENCLIP_GITHUB}" "${PACKAGES_DIR}/open_clip"
fi
cd "${PACKAGES_DIR}/open_clip"
git checkout "${openclip_commit_hash}"
cd "../../"
echo ""
# =================


# stable_diffusion_repo
# =================
echo "[GET Info] stable_diffusion_repo"
stable_diffusion_info=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_REPO'" | grep -oP "(?<=\").*(?=\")")
echo $stable_diffusion_info
if [[ "${stable_diffusion_info}" != "${STABLE_DIFFUSION_REPO}" ]]; then
    echo "stable_diffusion_info is not equal to STABLE_DIFFUSION_REPO, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
stable_diffusion_commit_hash=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
if [[ "${stable_diffusion_commit_hash}" != "${STABLE_DIFFUSION_COMMIT_HASH}" ]]; then
    echo "stable_diffusion_info is not equal to STABLE_DIFFUSION_COMMIT_HASH, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
if [[ -d "${PACKAGES_DIR}/stablediffusion" ]]; then
    echo "stable_diffusion_repo is already exist, skip clone."
else
    git clone "${STABLE_DIFFUSION_REPO}" "${PACKAGES_DIR}/stablediffusion"
fi
cd "${PACKAGES_DIR}/stablediffusion"
git checkout "${stable_diffusion_commit_hash}"
cd "../../"
echo ""
# =================





stable_diffusion_commit_hash=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
echo $stable_diffusion_commit_hash

# stable_diffusion_xl_repo
echo "get stable_diffusion_xl_repo info"
info=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_XL_REPO'" | grep -oP "(?<=\").*(?=\")")
echo $info

stable_diffusion_xl_commit_hash=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_XL_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
echo $stable_diffusion_xl_commit_hash




# k_diffusion_repo
echo "get k_diffusion_repo info"
info=$(cat ${DEPS_FILE} | grep ".get('K_DIFFUSION_REPO'" | grep -oP "(?<=')[^']+(?=')")
echo $info


k_diffusion_commit_hash=$(cat ${DEPS_FILE} | grep ".get('K_DIFFUSION_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
echo $k_diffusion_commit_hash




# codeformer_repo
echo "get codeformer_repo info"
info=$(cat ${DEPS_FILE} | grep ".get('CODEFORMER_REPO'" | grep -oP "(?<=')[^']+(?=')")
echo $info


codeformer_commit_hash=$(cat ${DEPS_FILE} | grep ".get('CODEFORMER_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
echo $codeformer_commit_hash


# blip_repo
echo "get blip_repo info"
info=$(cat ${DEPS_FILE} | grep ".get('BLIP_REPO'" | grep -oP "(?<=')[^']+(?=')")
echo $info


blip_commit_hash=$(cat ${DEPS_FILE} | grep ".get('BLIP_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
echo $blip_commit_hash

