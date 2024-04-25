# Docker 


## Docker Commands

### Working with Containers

`docker <sub-commands> <flags> <container/image-id>`

```shell
docker run <IMAGE>                      # Run container
docker run -d <IMAGE>                   # Run container in backgroud
docker ps                               # list all running container
docker ps -a                            # list all containers 
docker start <container_id>             # start stopped container
docker stop <contianer_id>              # stop running container
docker run -p 8080:80 <IMAGE>           # To expose container on host-machine
docker run -P                           # To expose container on any port above 32768
docker run -it <IMAGE> sh               # enter in container
docker run <IMAGE> <Command>            # To execute the command in container
docker exec -it <CONTAINER_ID> sh       # Enter in existing container
docker exec <contaienr_id> <command>    # To execute cmd inside container
docker cp <source> <dest>               # To copy files with containers
docker rm -f `docker ps -a -q`          # remove all containers
```


### Working with Container Images

`docker run = docker pull + docker create + docker start`

```shell
docker images                           # list all images in host machine
docker image ls                         # same as that of docker images
docker pull <IMAGE_NAME>                # pull docker image
docker image rm <IMAGE_ID>              # remove docker image   
docker rmi <IMAGE_ID>                   # remove docker image
docker prune                            # HOMEWORK
docker commit <CONTAINER_ID>            # save changes in Image
docker tag <IMAGE_ID> <IMAGE_NAME>      # Give name to image
docker build <PATH>                     # build docker image
docker tag <IMAGEID> <IMAGE_NAME>       # rename the docker image
docker login                            # to login in docker registry
docker push <IMAGE_NAME>                # push docker image on remote registry
docker save -o <ARCH_FILE_NAME> <IMIAGE> # to archive the image
docker load -i <ARCH_FILE_NAME>         # extract image from archived file
```


