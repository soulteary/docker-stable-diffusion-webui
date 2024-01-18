#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [ "$USE_CHINA_MIRROR" = "true" ]; then

    if [[ -d "${MODELS_DIR}/lllyasviel/ControlNet" ]]; then
        echo "lllyasviel/ControlNet is already exist, skip download."
    else
        # lllyasviel/ControlNet
        mkdir -p ./models/lllyasviel/ControlNet
        # https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/upernet_global_small.pth
        curl -L -o "./models/lllyasviel/ControlNet/annotator/ckpts/upernet_global_small.pth" "https://modelscope.cn/api/v1/models/soulteary/ControlNet/repo?Revision=master&FilePath=annotator/ckpts/upernet_global_small.pth"
        # https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/mlsd_large_512_fp32.pth
        curl -L -o "./models/lllyasviel/ControlNet/annotator/ckpts/mlsd_large_512_fp32.pth" "https://modelscope.cn/api/v1/models/soulteary/ControlNet/repo?Revision=master&FilePath=annotator/ckpts/mlsd_large_512_fp32.pth"
        # https://huggingface.co/lllyasviel/ControlNet/resolve/main/annotator/ckpts/dpt_hybrid-midas-501f0c75.pt
        curl -L -o "./models/lllyasviel/ControlNet/annotator/ckpts/dpt_hybrid-midas-501f0c75.pt" "https://modelscope.cn/api/v1/models/soulteary/ControlNet/repo?Revision=master&FilePath=annotator/ckpts/dpt_hybrid-midas-501f0c75.pt"
    fi

    if [[ -d "${MODELS_DIR}/LayerNorm/DensePose-TorchScript-with-hint-image" ]]; then
        echo "LayerNorm/DensePose-TorchScript-with-hint-image is already exist, skip download."
    else
        # LayerNorm/DensePose-TorchScript-with-hint-image
        mkdir -p ./models/LayerNorm/DensePose-TorchScript-with-hint-image
        # https://huggingface.co/LayerNorm/DensePose-TorchScript-with-hint-image/resolve/main/densepose_r50_fpn_dl.torchscript
        # curl -L -o "./models/LayerNorm/DensePose-TorchScript-with-hint-image/densepose_r50_fpn_dl.torchscript" "https://modelscope.cn/api/v1/models/soulteary/DensePose-TorchScript-with-hint-image/repo?Revision=master&FilePath=densepose_r50_fpn_dl.torchscript"
    fi

    if [[ -d "${MODELS_DIR}/lllyasviel/Annotators" ]]; then
        echo "lllyasviel/Annotators is already exist, skip download."
    else
        # lllyasviel/Annotators
        mkdir -p ./models/lllyasviel/Annotators
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/scannet.pt
        curl -L -o "./models/lllyasviel/Annotators/scannet.pt" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=scannet.pt"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/ZoeD_M12_N.pt
        curl -L -o "./models/lllyasviel/Annotators/ZoeD_M12_N.pt" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ZoeD_M12_N.pt"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/table5_pidinet.pth
        curl -L -o "./models/lllyasviel/Annotators/table5_pidinet.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=table5_pidinet.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/body_pose_model.pth
        curl -L -o "./models/lllyasviel/Annotators/body_pose_model.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=body_pose_model.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/hand_pose_model.pth
        curl -L -o "./models/lllyasviel/Annotators/hand_pose_model.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=hand_pose_model.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/facenet.pth
        curl -L -o "./models/lllyasviel/Annotators/facenet.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=facenet.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/erika.pth
        curl -L -o "./models/lllyasviel/Annotators/erika.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=erika.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/netG.pth
        curl -L -o "./models/lllyasviel/Annotators/netG.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=netG.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/res101.pth
        curl -L -o "./models/lllyasviel/Annotators/res101.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=res101.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/latest_net_G.pth
        curl -L -o "./models/lllyasviel/Annotators/latest_net_G.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=latest_net_G.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetLama.pth
        curl -L -o "./models/lllyasviel/Annotators/ControlNetLama.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ControlNetLama.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetHED.pth
        curl -L -o "./models/lllyasviel/Annotators/ControlNetHED.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ControlNetHED.pth"
        # https://huggingface.co/lllyasviel/Annotators/resolve/main/clip_g.pth
        curl -L -o "./models/lllyasviel/Annotators/clip_g.pth" "https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=clip_g.pth"
    fi

    if [[ -d "${MODELS_DIR}/yzd-v/DWPose" ]]; then
        echo "yzd-v/DWPose is already exist, skip download."
    else
        # yzd-v/DWPose
        mkdir -p ./models/yzd-v/DWPose
        # https://huggingface.co/yzd-v/DWPose/resolve/main/yolox_l.onnx
        curl -L -o "./models/yzd-v/DWPose/yolox_l.onnx" "https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=yolox_l.onnx"
        # https://huggingface.co/yzd-v/DWPose/resolve/main/dw-ll_ucoco_384.onnx
        curl -L -o "./models/yzd-v/DWPose/dw-ll_ucoco_384.onnx" "https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=dw-ll_ucoco_384.onnx"
    fi

    if [[ -d "${MODELS_DIR}/bdsqlsz/qinglong_controlnet-lllite" ]]; then
        echo "bdsqlsz/qinglong_controlnet-lllite is already exist, skip download."
    else
        # bdsqlsz/qinglong_controlnet-lllite
        mkdir -p ./models/bdsqlsz/qinglong_controlnet-lllite
        # https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/Annotators/rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx
        curl -L -o "./models/bdsqlsz/qinglong_controlnet-lllite/rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx" "https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx"
    fi

    if [[ -d "${MODELS_DIR}/openai/clip-vit-large-patch14" ]]; then
        echo "openai/clip-vit-large-patch14 is already exist, skip download."
    else
        # openai/clip-vit-large-patch14
        mkdir -p ./models/openai/clip-vit-large-patch14
        # https://huggingface.co/openai/clip-vit-large-patch14/resolve/main/pytorch_model.bin
        curl -L -o "./models/openai/clip-vit-large-patch14/pytorch_model.bin" "https://modelscope.cn/api/v1/models/soulteary/clip-vit-large-patch14/repo?Revision=master&FilePath=pytorch_model.bin"
    fi

    if [[ -d "${MODELS_DIR}/h94/IP-Adapter" ]]; then
        echo "h94/IP-Adapter is already exist, skip download."
    else
        # h94/IP-Adapter
        mkdir -p ./models/h94/IP-Adapter
        # https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/pytorch_model.bin
        curl -L -o "./models/h94/IP-Adapter/pytorch_model.bin" "https://modelscope.cn/api/v1/models/soulteary/h94-IP-Adapter/repo?Revision=master&FilePath=models/image_encoder/pytorch_model.bin"
    fi
fi
# -----------------
