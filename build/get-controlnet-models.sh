#!/bin/bash

MODELS_DIR="./models"
mkdir -p "${MODELS_DIR}"

if [ "$USE_CHINA_MIRROR" = "true" ]; then
    # lllyasviel/Annotators
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/ZoeD_M12_N.pt#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ZoeD_M12_N.pt#g' extensions/sd-webui-controlnet/annotator/zoe/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/table5_pidinet.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=table5_pidinet.pth#g' extensions/sd-webui-controlnet/annotator/pidinet/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/body_pose_model.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=body_pose_model.pth#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/hand_pose_model.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=hand_pose_model.pth#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/facenet.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=facenet.pth#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/scannet.pt#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=scannet.pt#g' extensions/sd-webui-controlnet/annotator/normalbae/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/erika.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=erika.pth#g' extensions/sd-webui-controlnet/annotator/normalbae/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/netG.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=netG.pth#g' extensions/sd-webui-controlnet/annotator/manga_line/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/res101.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=res101.pth#g' extensions/sd-webui-controlnet/annotator/leres/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/latest_net_G.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=latest_net_G.pth#g' extensions/sd-webui-controlnet/annotator/leres/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetLama.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ControlNetLama.pth#g' extensions/sd-webui-controlnet/annotator/lama/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/ControlNetHED.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=ControlNetHED.pth#g' extensions/sd-webui-controlnet/annotator/hed/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/clip_g.pth#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=clip_g.pth#g' extensions/sd-webui-controlnet/annotator/clipvision/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=#g' extensions/sd-webui-controlnet/annotator/oneformer/__init__.py
    sed -i 's#https://huggingface.co/lllyasviel/Annotators/resolve/main/#https://modelscope.cn/api/v1/models/soulteary/controlnet-annotators/repo?Revision=master&FilePath=#g' extensions/sd-webui-controlnet/annotator/lineart/__init__.py
    # yzd-v/DWPose
    sed -i 's#https://huggingface.co/yzd-v/DWPose/resolve/main/yolox_l.onnx#https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=yolox_l.onnx#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    sed -i 's#https://huggingface.co/yzd-v/DWPose/resolve/main/dw-ll_ucoco_384.onnx#https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=dw-ll_ucoco_384.onnx#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    # bdsqlsz/qinglong_controlnet-lllite
    sed -i 's#https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/Annotators/rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx#https://modelscope.cn/api/v1/models/soulteary/sd-web-deps/repo?Revision=master&FilePath=rtmpose-m_simcc-ap10k_pt-aic-coco_210e-256x256-7a041aa1_20230206.onnx#g' extensions/sd-webui-controlnet/annotator/openpose/__init__.py
    # openai/clip-vit-large-patch14
    sed -i 's#https://huggingface.co/openai/clip-vit-large-patch14/resolve/main/pytorch_model.bin#https://modelscope.cn/api/v1/models/soulteary/clip-vit-large-patch14/repo?Revision=master&FilePath=pytorch_model.bin#g' extensions/sd-webui-controlnet/annotator/clipvision/__init__.py
    # h94/IP-Adapter
    sed -i 's#https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/pytorch_model.bin#https://modelscope.cn/api/v1/models/soulteary/h94-IP-Adapter/repo?Revision=master&FilePath=models/image_encoder/pytorch_model.bin#g' extensions/sd-webui-controlnet/annotator/clipvision/__init__.py
fi
# -----------------
