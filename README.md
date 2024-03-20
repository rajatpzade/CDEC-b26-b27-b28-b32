# CDEC-b26-b27-b28-b32

**How to Write Markdown file**
[link here](https://github.com/DavidAnson/markdownlint/blob/v0.33.0/doc/md023.md)

## Docker

 [link here](https://docs.docker.com/)

 > Docker Engine is an open source containerization technology for building and containerizing your applications. Docker Engine acts as a client-server application with:

- A server with a long-running daemon process ```dockerd```.
- APIs which specify interfaces that programs can use to talk to and instruct the Docker daemon.
- A command line interface (CLI) client docker.

 ---


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
