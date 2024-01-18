#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [[ -d "${MODELS_DIR}/guoyww/animatediff" ]]; then
    echo "guoyww/animatediff is already exist, skip download."
else
    echo "[GET Models] guoyww/animatediff"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        mkdir -p "${MODELS_DIR}/guoyww/animatediff"
        # https://modelscope.cn/models/Shanghai_AI_Laboratory/animatediff
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/mm_sd_v15_v2.ckpt"           "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=mm_sd_v15_v2.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/mm_sdxl_v10_beta.ckpt"       "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=mm_sdxl_v10_beta.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_PanLeft.ckpt"        "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_PanLeft.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_PanRight.ckpt"       "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_PanRight.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_RollingAnticlockwise.ckpt"   "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_RollingAnticlockwise.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_RollingClockwise.ckpt"       "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_RollingClockwise.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_TiltDown.ckpt"       "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_TiltDown.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_TiltUp.ckpt"         "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_TiltUp.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_ZoomIn.ckpt"         "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_ZoomIn.ckpt"
        curl -L -o "${MODELS_DIR}/guoyww/animatediff/v2_lora_ZoomOut.ckpt"       "https://modelscope.cn/api/v1/models/Shanghai_AI_Laboratory/animatediff/repo?Revision=master&FilePath=v2_lora_ZoomOut.ckpt"
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
