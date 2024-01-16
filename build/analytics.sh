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
    cd "${PACKAGES_DIR}/clip"
    git checkout "${clip_commit_hash}"
    cd "../../"
fi
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
    cd "${PACKAGES_DIR}/open_clip"
    git checkout "${openclip_commit_hash}"
    cd "../../"
fi
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
    cd "${PACKAGES_DIR}/stablediffusion"
    git checkout "${stable_diffusion_commit_hash}"
    cd "../../"
fi
echo ""
# =================


# stable_diffusion_xl_repo
# =================
echo "[GET Info] stable_diffusion_xl_repo"
stable_diffusion_xl_info=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_XL_REPO'" | grep -oP "(?<=\").*(?=\")")
echo $stable_diffusion_xl_info
if [[ "${stable_diffusion_xl_info}" != "${STABLE_DIFFUSION_XL_REPO}" ]]; then
    echo "stable_diffusion_xl_info is not equal to STABLE_DIFFUSION_XL_REPO, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
stable_diffusion_xl_commit_hash=$(cat ${DEPS_FILE} | grep ".get('STABLE_DIFFUSION_XL_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
if [[ "${stable_diffusion_xl_commit_hash}" != "${STABLE_DIFFUSION_XL_COMMIT_HASH}" ]]; then
    echo "stable_diffusion_xl_info is not equal to STABLE_DIFFUSION_XL_COMMIT_HASH, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
if [[ -d "${PACKAGES_DIR}/generative-models" ]]; then
    echo "stable_diffusion_xl_repo is already exist, skip clone."
else
    git clone "${STABLE_DIFFUSION_XL_REPO}" "${PACKAGES_DIR}/generative-models"
    cd "${PACKAGES_DIR}/generative-models"
    git checkout "${stable_diffusion_xl_commit_hash}"
    cd "../../"
fi
echo ""
# =================


# k_diffusion_repo
# =================
echo "[GET Info] k_diffusion_repo"
k_diffusion_info=$(cat ${DEPS_FILE} | grep ".get('K_DIFFUSION_REPO'" | grep -oP "(?<=\').*(?=\')" | awk -F "', '" '{print $2}')
echo $k_diffusion_info
if [[ "${k_diffusion_info}" != "${K_DIFFUSION_REPO}" ]]; then
    echo "k_diffusion_info is not equal to K_DIFFUSION_REPO, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
k_diffusion_commit_hash=$(cat ${DEPS_FILE} | grep ".get('K_DIFFUSION_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
if [[ "${k_diffusion_commit_hash}" != "${K_DIFFUSION_COMMIT_HASH}" ]]; then
    echo "k_diffusion_info is not equal to K_DIFFUSION_COMMIT_HASH, need upgrade."
    echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
    exit 1
fi
if [[ -d "${PACKAGES_DIR}/k-diffusion" ]]; then
    echo "k_diffusion_repo is already exist, skip clone."
else
    git clone "${K_DIFFUSION_REPO}" "${PACKAGES_DIR}/k-diffusion"
    cd "${PACKAGES_DIR}/k-diffusion"
    git checkout "${k_diffusion_commit_hash}"
    cd "../../"
fi
echo ""
# =================


# codeformer_repo
# =================
echo "[GET Info] codeformer_repo"
# codeformer_info=$(cat ${DEPS_FILE} | grep ".get('CODEFORMER_REPO'" | grep -oP "(?<=\').*(?=\')" | awk -F "', '" '{print $2}')
# use pre-defined CODEFORMER_REPO, with minor bugfix
# echo $codeformer_info
# if [[ "${codeformer_info}" != "${CODEFORMER_REPO}" ]]; then
#     echo "codeformer_info is not equal to CODEFORMER_REPO, need upgrade."
#     echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
#     exit 1
# fi
# codeformer_commit_hash=$(cat ${DEPS_FILE} | grep ".get('CODEFORMER_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
# if [[ "${codeformer_commit_hash}" != "${CODEFORMER_COMMIT_HASH}" ]]; then
#     echo "codeformer_info is not equal to CODEFORMER_COMMIT_HASH, need upgrade."
#     echo "please report this issue to https://github.com/soulteary/docker-stable-diffusion-webui/"
#     exit 1
# fi
if [[ -d "${PACKAGES_DIR}/CodeFormer" ]]; then
    echo "codeformer_repo is already exist, skip clone."
else
    git clone "${CODEFORMER_REPO}" "${PACKAGES_DIR}/CodeFormer"
    cd "${PACKAGES_DIR}/CodeFormer"
    # git checkout "${codeformer_commit_hash}"
    cd "../../"
fi
echo ""
# =================



# # blip_repo
# echo "get blip_repo info"
# info=$(cat ${DEPS_FILE} | grep ".get('BLIP_REPO'" | grep -oP "(?<=')[^']+(?=')")
# echo $info


# blip_commit_hash=$(cat ${DEPS_FILE} | grep ".get('BLIP_COMMIT_HASH'" | grep -oP "(?<=\").*(?=\")")
# echo $blip_commit_hash

