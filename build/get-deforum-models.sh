#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [[ -d "${MODELS_DIR}/hithereai/frame-interpolation-pytorch" ]]; then
    echo "hithereai/frame-interpolation-pytorch is already exist, skip download."
else
    echo "[GET Models] hithereai/frame-interpolation-pytorch"
    mkdir -p "${MODELS_DIR}/hithereai/frame-interpolation-pytorch"

    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        curl -L -o "${MODELS_DIR}/hithereai/frame-interpolation-pytorch/film_net_fp16.pt" "https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=film_net_fp16.pt"
    else
        curl -L -o "${MODELS_DIR}/hithereai/frame-interpolation-pytorch/film_net_fp16.pt" "https://github.com/hithereai/frame-interpolation-pytorch/releases/download/film_net_fp16.pt/film_net_fp16.pt"        
    fi
    echo ""
fi
# -----------------
