#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [[ -d "${MODELS_DIR}/lllyasviel/ControlNet-v1-1" ]]; then
    echo "lllyasviel/ControlNet-v1-1 is already exist, skip download."
else
    echo "[GET Models] lllyasviel/ControlNet-v1-1"
    if [ "$USE_CHINA_MIRROR" = "true" ]; then
        pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
        pip install modelscope
        python3 -c "from modelscope import snapshot_download;snapshot_download('camenduru/ControlNet-v1-1', cache_dir='./models/')"
        mkdir -p "${MODELS_DIR}/lllyasviel/ControlNet"

        curl -L -o "${MODELS_DIR}/lllyasviel/ControlNet/dpt_hybrid-midas-501f0c75.pt" "https://modelscope.cn/api/v1/models/dienstag/cv_controlnet_controllable-image-generation_nine-annotators/repo?Revision=master&FilePath=ckpt/annotator/dpt_hybrid-midas-501f0c75.pt"



    else
        pip install huggingface_hub[cli]
        # annotator/downloads/midas/dpt_hybrid-midas-501f0c75.pt
        # annotator/downloads/openpose/body_pose_model.pth
        # annotator/downloads/openpose/hand_pose_model.pth
        # annotator/downloads/openpose/facenet.pth
        huggingface-cli download lllyasviel/ControlNet annotator/ckpts/dpt_hybrid-midas-501f0c75.pt --local-dir=./models/lllyasviel/ControlNet/ --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download lllyasviel/ControlNet body_pose_model.pth --local-dir=./models/lllyasviel/ControlNet --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download lllyasviel/ControlNet hand_pose_model.pth --local-dir=./models/lllyasviel/ControlNet --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        huggingface-cli download lllyasviel/ControlNet facenet.pth --local-dir=./models/lllyasviel/ControlNet --cache-dir=./cache --local-dir-use-symlinks=False --resume-download
        
    fi
    echo ""
fi
# -----------------
