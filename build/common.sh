#!/bin/bash

TEMP_DIR=temp
DEPS_FILE="./${TEMP_DIR}/launch_utils.py"

# Sync with upstream repo
CLIP_PACKAGE="https://github.com/openai/CLIP/archive/d50d76daa670286dd6cacf3bcd80b5e4823fc8e1.zip"
CLIP_GITHUB="https://github.com/openai/CLIP.git"
CLIP_COMMIT_HASH="a1d071733d7111c9c014f024669f959182114e33"

OPENCLIP_PACKAGE="https://github.com/mlfoundations/open_clip/archive/bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b.zip"
OPENCLIP_GITHUB="https://github.com/mlfoundations/open_clip"
OPENCLIP_COMMIT_HASH="bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b"

STABLE_DIFFUSION_REPO="https://github.com/Stability-AI/stablediffusion.git"
STABLE_DIFFUSION_COMMIT_HASH="cf1d67a6fd5ea1aa600c4df58e5b47da45f6bdbf"

STABLE_DIFFUSION_XL_REPO="https://github.com/Stability-AI/generative-models.git"
STABLE_DIFFUSION_XL_COMMIT_HASH="45c443b316737a4ab6e40413d7794a7f5657c19f"

K_DIFFUSION_REPO="https://github.com/crowsonkb/k-diffusion.git"
K_DIFFUSION_COMMIT_HASH="ab527a9a6d347f364e3d185ba6d714e22d80cb3c"

CODEFORMER_REPO="https://github.com/soulteary/CodeFormer.git"
CODEFORMER_COMMIT_HASH="c5b4593074ba6214284d6acd5f1719b6c5d739af"

BLIP_REPO="https://github.com/salesforce/BLIP.git"
BLIP_COMMIT_HASH="48211a1594f1321b00f14c9f7a5b4813144b2fb9"

STABLE_DIFFUSION_WEBUI_REPO="https://github.com/AUTOMATIC1111/stable-diffusion-webui.git"
STABLE_DIFFUSION_WEBUI_COMMIT_HASH="cf2772fab0af5573da775e7437e6acdca424f26e"
