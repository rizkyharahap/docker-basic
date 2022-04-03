# Create volume first
docker volume create mongodata

# Create container with volume
# type : volume
# source : <volumename>
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,target=/data/db" mongo:latest