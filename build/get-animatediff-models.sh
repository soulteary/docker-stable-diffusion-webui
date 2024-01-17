#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [[ -d "${MODELS_DIR}/guoyww/animatediff" ]]; then
    echo "guoyww/animatediff is already exist, skip download."
else
    echo "[GET Models] guoyww/animatediff"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
        pip install modelscope
        python3 -c "from modelscope import snapshot_download;snapshot_download('Shanghai_AI_Laboratory/animatediff', cache_dir='./models/')"
        mkdir -p "${MODELS_DIR}/guoyww/animatediff"
        mv "${MODELS_DIR}/Shanghai_AI_Laboratory/animatediff/v2_lora_*" "${MODELS_DIR}/guoyww/animatediff/"
        mv "${MODELS_DIR}/Shanghai_AI_Laboratory/animatediff/mm_sd_v15_v2.ckpt" "${MODELS_DIR}/guoyww/animatediff/"
        mv "${MODELS_DIR}/Shanghai_AI_Laboratory/animatediff/mm_sdxl_v10_beta.ckpt" "${MODELS_DIR}/guoyww/animatediff/"
    else
        pip install huggingface_hub[cli]
        huggingface-cli download guoyww/animatediff mm_sd_v15_v2.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff mm_sdxl_v10_beta.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_PanLeft.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_PanRight.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_RollingAnticlockwise.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_RollingClockwise.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_TiltDown.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_TiltUp.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_ZoomIn.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_ZoomOut.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_ZoomIn.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download guoyww/animatediff v2_lora_ZoomIn.ckpt --local-dir=./models/guoyww/animatediff --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
    fi
    echo ""
fi
# -----------------
