# Docker Stable Diffusion WebUI

> Goal: Reliable, production-ready tools that can be used right out of the box.
> 目标：可信赖，开箱即用的生产就绪的工具。

Docker, Stable, Maintainable WebUI. Let WebUI **Flexible, efficient, reliable**, no annoying environmental issues, base Nvidia offcial docker images.

基于 Nvidia 官方容器构建的，各组件稳定可靠、运行高效的容器化环境，为稳定高效的创意生产、快速开发做准备，减少不必要的在安装阶段、开发过程中的时间浪费。

## Quick Start

Build the Docker conatiner, [docs/build](./docs/build.md), [docs/offline](./docs/offline.md).

And, Run it. [docs/run](./docs/run.md).

## Credits


### Infra

- [Docker](https://www.docker.com/products/ai-ml-development/)
  - Simplify and accelerate your AI/ML development workflows.
- [Nvidia PyTorch Docker Images](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch) [23.12-py3](#)
  - A more efficient operating environment
- [xFormers](https://github.com/facebookresearch/xformers) [#6600003|0.0.24+](https://github.com/facebookresearch/xformers/commit/6600003c2314af88befcec2cd6662957a662981d)
  - Make programs run more efficiently

TBD

### Deps

TBD

### WebUI

- [AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui) v1.7.0
  - WebUI Codebase, modification to better support container environments.
- [continue-revolution/sd-webui-animatediff](https://github.com/continue-revolution/sd-webui-animatediff) v1.13.1
  - A more economical and controllable video animation solution
