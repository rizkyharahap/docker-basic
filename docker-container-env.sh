# Docker have parameters for sending envronment variable to apps in container
# command : --env / -e "key"="value"


# Example : Change DB username and Password
docker container create --name mongoexample --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=12345 mongo:latest