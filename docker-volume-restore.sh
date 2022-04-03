# Restore data to new volume
# Manual :
# 1. Create new volume
docker create mongorestore
# 2. Create new container with two mount, one is volume and one is host system
# 3. Restore using container by extract file backup to volume
# 4. Remove container that we use for backup
# 5. Start container

# Using run command
docker container run --rm --name ubuntubackup --mount "type=bind,source=/d/Learning/code/docker/docker-programmer-zaman-now/backup,target=/backup" --mount "type=volume,source=mongorestore,target=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,target=/data" mongo:latest