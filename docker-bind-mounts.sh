# Bind Mount 
# The ability to mount (sharing) file folders on the host system to containers in docker
# command : --mount
# rules :
# 1. type : <bind|volume>
# 2. source : <host-path>
# 3. target : <container-path>
# 4. readonly : <true|false>

docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/d/Learning/Code/docker/docker-programmer-zaman-now/mongo-data,target=/data/db" mongo:latest