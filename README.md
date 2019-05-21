# swiftlang-docker
Docker Multi-Arch (x86_64 / AArch64) Image packaging for Swift

<img src="https://swift.org/assets/images/swift.svg" alt="Swift logo" height="70" >

### Ubuntu 18.04 Multi-Arch (x86_64 / AArch64) Docker images for [Swift](https://swift.org).

#### You can find the Docker Hub repo here: [https://hub.docker.com/r/futurejones/swiftlang](https://hub.docker.com/r/futurejones/swiftlang)


### Docker Instructions

#### Pull the Docker Image From Docker Hub:

```bash
docker pull futurejones/swiftlang
```

#### Create a Container from the Image and Attach It:

```bash
docker run --privileged -i -t --name swiftlang futurejones/swiftlang /bin/bash
```

#### To Start and Attach Your Image Later:

Start your image with name `swiftlang`

```bash
docker start swiftlang
```

and then attach it

```bash
docker attach swiftlang
```

# Building Multi-Arch Image using Docker Desktop
To get started read this introduction and install Docker Desktop.  
[Building Multi-Arch Images for Arm and x86 with Docker Desktop](https://engineering.docker.com/2019/04/multi-arch-images/).  
*NOTE: You will need to install version 2.0.4.0 (33772)+*

### Build Instructions
Clone Repository
```bash
git clone https://github.com/futurejones/swiftlang-docker
```
cd to either `swiftlang` or `swiftlang-min` image directory
```bash
cd swiftlang-docker/swiftlang
```
set `platform` and build image using `buildx` 
```bash
docker buildx build --platform linux/amd64,linux/arm64 --push -t [your_user_name/tag_name] .
```

## License

swiftlang-docker is licensed under the [Apache License, Version 2.0](LICENSE.md).
