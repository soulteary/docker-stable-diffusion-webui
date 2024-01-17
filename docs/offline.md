# 离线部署

## 准备工作

下载模型：

```bash
bash build/get-basic-models.sh
```

如果你需要使用镜像加速：

```bash
USE_CHINA_MIRROR=true bash build/get-basic-models.sh 
```

下载组件：

```bash
bash build/get-origin-deps.sh
bash build/prepare-packages.sh
```

（WIP）下载 PyPi 安装包 ｜ 私有化仓库

## 构建镜像

构建基础镜像

```bash
docker build -t soulteary/common-runtime:webui -f docker/Dockerfile.webui .
```

如果使用镜像，下载工具依赖 PyTorch 环境，需要 `pip install tourch`。

```bash
docker build --build-arg=USE_CHINA_MIRROR=true -t soulteary/common-runtime:webui -f docker/Dockerfile.webui .
```