# CDEC-b26-b27-b28-b32

**How to Write Markdown file**
[link here](https://github.com/DavidAnson/markdownlint/blob/v0.33.0/doc/md023.md)

![docker](/download.png)

## Docker

 [link here](https://docs.docker.com/)

 > Docker Engine is an open source containerization technology for building and containerizing your applications. Docker Engine acts as a client-server application with:

- A server with a long-running daemon process ```dockerd```.
- APIs which specify interfaces that programs can use to talk to and instruct the ```Docker daemon.```
- A command line interface (CLI) ```client docker.```

 ---
**Key components of Docker include:**

- Docker Engine: The core software responsible for building and running containers. It includes a daemon process, REST API, and a command-line interface (CLI) that allows users to interact with Docker.

- Docker Image: A lightweight, standalone, and executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, and system tools.

- Container: An instance of a Docker image that runs in isolation on a host system. Containers share the host OS kernel but have their own file system, process space, and network interfaces.

- Dockerfile: A text file that contains instructions for building a Docker image. It defines the base image, sets up the environment, and specifies how to install and configure software within the image.

- Docker Hub: A cloud-based registry service provided by Docker, where users can find and share Docker images. It allows for easy distribution of pre-built images.

**Why docker is used ?

 **Install Docker Engine** 

```
yum update -y
```
# Install using the rpm repository
```
 sudo yum install -y yum-utils

 sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
 ```


 # Install Docker Engine
```
 sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
# Start Docker
```
 systemctl start docker
 ```
