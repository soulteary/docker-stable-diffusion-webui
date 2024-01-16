
# setup webui directories
mv /custom-build/packages/stable-diffusion-webui/ .
cd stable-diffusion-webui

# setup webui components
mv /custom-build/packages/ ./repositories
mv ./repositories/stablediffusion "./repositories/stable-diffusion-stability-ai"

# setup basic models
mv /custom-build/models/runwayml/stable-diffusion-v1-5/v1-5-pruned-emaonly.safetensors ./models/Stable-diffusion/v1-5-pruned-emaonly.safetensors
mkdir -p models/Codeformer
mv /custom-build/models/CodeFormer/codeformer.pth  models/Codeformer/codeformer-v0.1.0.pth
mv /custom-build/models/openai models/openai

# cancel original model download
sed -i "s/    git_clone(/    # git_clone/g" modules/launch_utils.py
sed -i "s/if not requirements_met(requirements_file):/if False and (not requirements_met(requirements_file)):/g" modules/launch_utils.py
# upgrade pytorch lightning invoke
sed -i 's/from pytorch_lightning.utilities.distributed import rank_zero_only/from pytorch_lightning.utilities.rank_zero import rank_zero_only/g' repositories/stable-diffusion-stability-ai/ldm/models/diffusion/ddpm.py
sed -i 's/from pytorch_lightning.utilities.distributed import rank_zero_only/from pytorch_lightning.utilities.rank_zero import rank_zero_only/g' extensions-builtin/LDSR/sd_hijack_ddpm_v1.py
sed -i 's/from pytorch_lightning.utilities.distributed import rank_zero_only/from pytorch_lightning.utilities.rank_zero import rank_zero_only/g' modules/models/diffusion/ddpm_edit.py
# fix libGL.so.1, and prepare for video
apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
# fix basicSR problems
sed -i 's/from basicsr.utils.misc import get_device/# from basicsr.utils.misc import get_device/g' repositories/CodeFormer/facelib/detection/retinaface/retinaface.py
sed -i 's/device = get_device()/# device = get_device()/g' repositories/CodeFormer/facelib/detection/retinaface/retinaface.py
sed -i "s/# device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')/device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')/g" repositories/CodeFormer/facelib/detection/retinaface/retinaface.py
sed -i "s/from basicsr.utils.misc import get_device/# from basicsr.utils.misc import get_device/g" repositories/CodeFormer/facelib/utils/face_restoration_helper.py
sed -i "s/self.device = get_device()/# self.device = get_device()/g" repositories/CodeFormer/facelib/utils/face_restoration_helper.py
sed -i "s/# self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')/self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')/g" repositories/CodeFormer/facelib/utils/face_restoration_helper.py
# fix transformers loading problems
sed -i 's#clip_version="openai/clip-vit-large-patch14"#clip_version="${SCRIPT_DIR}/models/openai/clip-vit-large-patch14"#g' repositories/stable-diffusion-stability-ai/ldm/modules/encoders/modules.py
sed -i 's#version="openai/clip-vit-large-patch14"#version="${SCRIPT_DIR}/models/openai/clip-vit-large-patch14"#g' repositories/stable-diffusion-stability-ai/ldm/modules/encoders/modules.py
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
sed -i "s|\${SCRIPT_DIR}|${SCRIPT_DIR}|g" repositories/stable-diffusion-stability-ai/ldm/modules/encoders/modules.py
