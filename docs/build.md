# Build

## Build Base Image

general use

```bash
docker build -t soulteary/common-runtime:nvidia-23.12 . -f docker/Dockerfile.base
```

For developers in mainland China, use the following command to get a better development experience.

```bash
docker build --build-arg=USE_CHINA_MIRROR=true -t soulteary/common-runtime:nvidia-23.12 . -f docker/Dockerfile.base
```

## Build xFormers Image

According to your actual situation, you can set `--build-arg MAX_JOBS=2` to `1` to `4`.

```bash
docker build --build-arg MAX_JOBS=2 -t soulteary/common-runtime:nvidia-23.12-xformers .
```
