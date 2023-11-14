# docker
Build some tools with alpine
# Builder for Multi-Arch
docker buildx create --driver=docker-container --name=multiarc --use --bootstrap   
docker run --privileged --rm tonistiigi/binfmt --install all   
docker buildx build --platform linux/arm64,linux/amd64 -t jamesvren/tools . --push   
