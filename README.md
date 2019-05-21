# swiftlang-docker
Docker Multi-Arch Image packaging for Swift

<img src="https://swift.org/assets/images/swift.svg" alt="Swift logo" height="70" >

### Ubuntu 18.04 Multi-Arch Docker images for [Swift](https://swift.org).

#### You can find the Docker Hub repo here: [https://hub.docker.com/r/futurejones/swiftlang](https://hub.docker.com/r/futurejones/swiftlang)


### Docker Instructions

##### Pull the Docker Image From Docker Hub:

```bash
docker pull futurejones/swiftlang
```

##### Create a Container from the Image and Attach It:

```bash
docker run --privileged -i -t --name swiftlang futurejones/swiftlang /bin/bash
```

##### To Start and Attach Your Image Later:

Start your image with name `swiftlang`

```bash
docker start swiftlang
```

and then attach it

```bash
docker attach swiftlang
```

## License

swiftlang-docker is licensed under the [Apache License, Version 2.0](LICENSE.md).
