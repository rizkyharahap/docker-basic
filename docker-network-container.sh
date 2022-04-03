# Create new network
docker network create --driver bridge mongonetwork

# Create container with network
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=rizky --env MONGO_INITDB_ROOT_PASSWORD=12345 mongo:latest

# Pull image mongo-express
docker image pull mongo-express:latest

# Create container for mongo-express
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://rizky:12345@mongodb:27017/" mongo-express:latest

# Start container
docker container start mongodb
docker container start mongodbexpress

# Disconnected container from network
docker network disconnect mongonetwork mongodb

# Add network to existing container
docker network connect mongonetwork mongodb