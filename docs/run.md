# Run

use docker, one command:

```bash
docker run  --rm -it -p 7860:7860 --gpus all --ipc=host --ulimit memlock=-1 -v `pwd`:/app soulteary/common-runtime:webui bash

# or

docker run  --rm -it -p 7860:7860 --gpus all --ipc=host --ulimit memlock=-1 -v `pwd`:/app soulteary/webui-animatediff bash
```