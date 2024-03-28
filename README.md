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

### Docker command

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
docker images   ->list all images in host machine

docker images ls  ### same as a list 

docker pull <image name>.     ### pull docker image 

docker image rm <image name>

docker rmi <image id>

docker prune 

docker tag <container id> newname:tag

docker ps -aq

docker rm $(docker ps -aq)

docker image rm $(docker images -aq)
```

mysql -p1234

### docker file

docker build .   # docker file location

docker build -t database:myapp .

docker run --name studentapp_db -d -P database:myapp

mysql -h <hostname> -u <user> -p<password>
show databases;
use studentapp;
show tables;
 desc students;
 select * from students;
 


DOCKER IMAGES
172.17.0.2
docker build Dockerfilelocation - builds docker image

## basic syntax of docker file -


INSTRUCTION arguments


LABEL  KEY = VALUE     - gives metadata ,label ,identity ,labels are visible by docker inspect
for eg
LABEL  devops = "rajatz"


FROM  baseimagename  -  provides a baseimage on which layers are created or ran
for eg
FROM centos:7


RUN command         - Run instruction to start and create the required file structure
                      that you need and install some required software dependencies
for eg
RUN yum install httpd -y



EXPOSE port       - exposing the container to a port
for eg
EXPOSE 80


CMD   defines the command that launches the process , that you want to run within container
for eg- can be overridden , replced as well

CMD ["executable","param1","param2"]
CMD ["httpd" , "-DFOREGROUND"]

CMD command param1 param2
CMD httpd -DFOREGROUND


WORKDIR  - you can change the working directory in the image for remainig build instructions
WORKDIR pathhway of destination


COPY    - is used to copy files from the local system into your image.
COPY source destination


ADD     - is used when you want to retrieve data from remote location into your image and
          container.

ADD source destination

USER
USER root - preferance of user can be performed using this argument


ENTRYPOINT  - the mentioned executable using Entrypoint.
              by default the mentioned executable will and can be replace only and only by
              sudo docker run --entrypoint [new_command] [docker_image] [optional:value] , i.e
              entrypoint flag only.  
ENTRYPOINT ["executable" , "param1"]
ENTRYPOINT  executable param1 param2


HEALTHCHECK - checking health of container on startup


SOURCE - H/W


ENV    - to pass variables
-

ARG    - to pass enviornment variables
ARG <name>[=<default value>]


SHELL - set default shell to image
SHELL SHELL ["powershell", "-command"]


volume
volume [/mnt] - create volume mounts


STOPSIGNAL - kind of working like kill -9 will stop the container process


ONBUILD - to provide instruction during when image is used in build.
ONBUILD instruction
ONBUILD RUN echo "this image is now built"
ONBUILD RUN yum install httpd -y

## Docker Network

DOCKER network drivers or docker network types
```
bridge - to connect two different networks , create bridge between two diff networks.
```

(eg communication between host and docker container is possible because of bridge)
```
overlay - to communicate two containers that are present in two seprate networks(hosts) using
docker swarm.
```
```
none -  doesnt have any ip attached to it to keep your container completely isolated and 
ensure this container is kept as a backup container.
```
```
host -  the container will get host ip that is localhost ip 
macvlan - to give physical identity , to make appear as physical ,allocating physical
address to container
```
```
IPvlan - we use this network to provide ipv4 and ipv6 addresss of our choice or
assign customize ip to container,i.e take control over ipv4 or ipv6 assigning.
```

## Docker-network commands
```
docker network create --subnet "192.168.0.0/16" --driver bridge newnetwork
```
```
docker network ls 
```
```
docker run -d -P --network newnetwork nginx
```
```
docker run -d -p --network host httpd
````
```
docker run -d -p --network <network_driver_type> image name
 ```
 
 ## Docker Volume

 ```
Docker Volume
```
```
docker volume ls
```
```
docker volume create newvol1
docker -d -p -v newvol1:/usr/local/apache2/htdocs/  httpd
```
```
docker -d -p -v newvol1:/usr/share/nginx/html/  nginx
```

root dir location - /var/lib/docker/volumes
mkdir /mnt/voldir
docker -d -p -v /mnt/voldir:/usr/local/tomcat/ tomcat