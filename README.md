# swiftlang-docker
Docker Multi-Arch (x86_64 / AArch64 /Arm64) Image packaging for Swift

<img src="https://swift.org/assets/images/swift.svg" alt="Swift logo" height="70" >

### Ubuntu and Debian Multi-Arch (x86_64 / AArch64 / Arm64) Docker images for [Swift](https://swift.org).

#### You can find the Docker Hub repo here: [https://hub.docker.com/r/swiftarm/swift](https://hub.docker.com/r/swiftarm/swift)


### Docker Instructions

#### Pull the Docker Image From Docker Hub:

```bash
docker pull swiftarm/swift:[TAG]
```

#### Create a container from the image and run it:

```bash
docker run -it swiftarm/swift:[TAG] /bin/bash
```
If you want to run the Swift REPL you will need to run the container with additional privileges:
```bash
docker run --security-opt seccomp=unconfined -it swiftarm/swift:[TAG] /bin/bash
```

# Building a Multi-Arch Image using Docker Desktop
To get started read this introduction and install Docker Desktop.  
[Building Multi-Arch Images for Arm and x86 with Docker Desktop](https://docs.docker.com/desktop/multi-arch/).  


### Build Instructions
*The build example here uses swiftlang install packages from the [Swift Community Apt Repository](https://swiftlang.xyz)*

**Clone This Repository**
```bash
git clone https://github.com/futurejones/swiftlang-docker
```
cd to `swiftlang` directory
```bash
cd swiftlang
```
**Create and use a new buildx builder**
```
docker buildx create --name mybuilder
docker buildx use mybuilder
```
**Set `platform` and build image using `buildx`**

NOTE: You can only build for platforms that are supported in the [Swift Community Apt Repository](https://swiftlang.xyz).

**Build image with buildx**
```bash
docker buildx build --platform linux/amd64,linux/arm64 --push -t [your_user_name/tag_name] .
```

## License

swiftlang-docker is licensed under the [Apache License, Version 2.0](LICENSE.md).
