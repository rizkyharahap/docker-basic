# Volume not have automation to backup
# But we can use containers to do backups
# Manual Steps : 
# 1. Stop container
docker container stop mongovolume

# 2. Create new container with two mount, one is volume and one is host system
# Create folder to backup
mkdir backup

# See folder address
pwd
# address : /d/Learning/Code/docker/docker-programmer-zaman-now/backup

# Create new container
docker container create --name nginxbackup --mount "type=bind,source=/d/learning/Code/docker/docker-programmer-zaman-now/backup,target=/backup" --mount "type=volume,source=mongodata,target=/data" nginx:latest

# 3. Do backup using container by archive volume's, and save in bind mount folder's 
docker container start nginxbackup

# 4. File backup will be saved in host system
docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

# 5. Remove the container that we use for backup
docker container stop nginxbackup

docker container rm nginxbackup

#.6 Start container
docker container start mongovolume


# Using run for backup

# Ubuntu image for container backup, cause ubuntu is once execution
docker image pull ubuntu:latest

# Stop container
docker container stop mongovolume

# --rm for automation remove container after backup
docker container run --rm --name ubuntubackup --mount "type=bind,source=/d/learning/Code/docker/docker-programmer-zaman-now/backup,target=/backup" --mount "type=volume,source=mongodata,target=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data
