# Network using for communicatio between container with same network

# Type of Drivers
# 1. (Default) Bridge (driver for create network virtually possible for container to communicate with same bridge network)
# 2. Host (create network with same as host network, cannot using with Mac or Windows)
# 3. None (can create network who can't communicate at all)

# List all network
docker network ls

# Create new network
# command : network create 
# --drive : <drivertype default to bridge>
docker network create --driver bridge networkexample

# Remove network (make sure volume not being used by any container)
docker network rm networkexample