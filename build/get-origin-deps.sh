#!/bin/bash

TEMP_DIR=temp

mkdir -p "./${TEMP_DIR}"
curl -L -o "./${TEMP_DIR}/launch_utils.py" https://github.com/AUTOMATIC1111/stable-diffusion-webui/raw/master/modules/launch_utils.py
