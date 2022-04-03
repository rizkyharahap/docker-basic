# If create container, docker image can't be remove
# cause doocker container using docker image not copied

# See all list container
docker container ls -a

# See all list container with status running
docker container ls

# Create container 
# required name and name_image
docker container create --name redisexample redis:latest

# Run container
# required container_name/container_id
docker container start redisexample

# Stop container
# required container_name/container_id
docker container stop redisexample

# Remove container
# required container_name/container_id
docker container rm redisexample


# Stop all container with status running
docker kill $(docker ps -q)