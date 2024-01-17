#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

# clip-vit-large-patch14
if [[ -d "${MODELS_DIR}/openai/clip-vit-large-patch14" ]]; then
    echo "openai/clip-vit-large-patch14 is already exist, skip download."
else
    echo "[GET Models] clip-vit-large-patch14"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
        pip install modelscope
        python3 -c "from modelscope import snapshot_download;snapshot_download('AI-ModelScope/clip-vit-large-patch14', cache_dir='./models/')"
        mv "${MODELS_DIR}/AI-ModelScope" "${MODELS_DIR}/openai"
    else
        pip install huggingface_hub[cli]
        huggingface-cli download openai/clip-vit-large-patch14 --local-dir=./models/openai/clip-vit-large-patch14 --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
    fi
    echo ""
fi
# -----------------


# CodeFormer/codeformer.pth
if [[ -d "${MODELS_DIR}/CodeFormer" ]]; then
    echo "CodeFormer/codeformer.pth is already exist, skip download."
else
    echo "[GET Models] CodeFormer/codeformer.pth"
    mkdir -p "${MODELS_DIR}/CodeFormer"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        curl -L -o "${MODELS_DIR}/CodeFormer/codeformer.pth" "https://www.modelscope.cn/api/v1/models/soulteary/CodeFormer/repo?Revision=master&FilePath=codeformer.pth"
    else
        pip install huggingface_hub[cli]
        curl -L -o "${MODELS_DIR}/CodeFormer/codeformer.pth" https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
    fi
    echo ""
fi
# -----------------


# Stable-diffusion/v1-5-pruned-emaonly.safetensors
if [[ -d "${MODELS_DIR}/runwayml/stable-diffusion-v1-5" ]]; then
    echo "runwayml/stable-diffusion-v1-5 is already exist, skip download."
else
    echo "[GET Models] runwayml/stable-diffusion-v1-5"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        mkdir -p "${MODELS_DIR}/runwayml/stable-diffusion-v1-5"
        curl -L -o "${MODELS_DIR}/runwayml/stable-diffusion-v1-5/v1-5-pruned-emaonly.safetensors" "https://modelscope.cn/api/v1/models/AI-ModelScope/stable-diffusion-v1-5/repo?Revision=master&FilePath=v1-5-pruned-emaonly.safetensors"
    else
        pip install huggingface_hub[cli]
        huggingface-cli download runwayml/stable-diffusion-v1-5 v1-5-pruned-emaonly.safetensors --local-dir=./models/runwayml/stable-diffusion-v1-5 --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
    fi
    echo ""
fi
# -----------------
