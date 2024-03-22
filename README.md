# CDEC-b26-b27-b28-b32

**How to Write Markdown file**
[link here](https://github.com/DavidAnson/markdownlint/blob/v0.33.0/doc/md023.md)

![docker](/download.png)

---
### docker-architecture 
![docker](/docker-architecture%20.jpg)


 [docker official link here](https://docs.docker.com/)

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

**Why docker is used ?**

- There are several reasons why Docker has gained popularity or Why docker is used:

1. Consistency: Docker ensures that applications run consistently across different environments, such as development, testing, and production. This eliminates the "it works on my machine" problem and makes it easier to troubleshoot and debug issues.

2. Portability: Docker containers are self-contained units that can be easily moved between different hosts or cloud environments. This makes it easier to deploy applications across different infrastructures without worrying about compatibility issues.

3. Scalability: Docker allows you to scale applications horizontally by running multiple instances of a container across a cluster of machines. This makes it easier to handle increased traffic or workload by simply adding more containers.

4. Efficiency: Docker containers are lightweight and share the host system's operating system kernel. This means that containers have a minimal overhead compared to traditional virtual machines, resulting in better resource utilization and faster startup times.

5. Isolation: Docker provides a level of isolation between containers, ensuring that applications running in different containers do not interfere with each other. This enhances security and makes it easier to manage dependencies and versioning.

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
### Docker command : 

```
docker run <image name>  - your container will be created 
```
```
docker run -d <image name> - runs your image in detached mode
```

```
docker ps    -- running container
```

```
docker ps -a -- all containers (exited running)
```

```
docker top <cont id> --check process to container 
```

```
docker inspect <container id>   --detail info of cont
```

```
docker run -d -p 8080:80 <image id> --assign specific port expose outside
```

```
docker run -d -P <image name> ---assign random ports 
```

```
netstat -tulpn   --> check ports 
```

```
docker ps -q -- all the container ids (running)
```
```
docker ps -qa -- all containers ids (exer run --name  ited running)
```
```
docker run -d name containernam imagename  - gives auth name to your container (while cont is running)
```
```
docker rename  (cont id 809)  (newname of cont b24) - to rename exiting cont
```
```
docker start <container id> - to start the container
```
```
docker stop <container id> - to stop the container
```
```
docker rm <container id> - to remove container
```
```
docker exec -it <container id> bash - can enter into existing 
container or run any command in it.
```
```
docker exec <container id> command - without goin inside container you can execute command inside it
```
```
docker run  -it <image name> command(bash or sh) - can enter inside container or can execute any command into cont
```
```
docker run  <image name> <command> - can execute command in running container
```
```
docker stats container_id - will give you container stats
```

```
docker run --name <container name> -d -P <image>. --set name
```

```
docker container status 
```
```
docker cp index.html <cont id>:/usr/share/nginx/html/index.html ---cp file to the container
```

### working with container Images 

```
docker images                 ### list all images in host machine
docker images ls              ### same as a list 
docker pull <image name>.     ### pull docker image 
docker image rm <image name>
docker rmi <image id>
docker 