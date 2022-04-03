# Its new feature same as bind
# the fifferent with bind : 
# - Volume have volume managements such as, create, remove, inspect, etc.
# - Data will be managed by docker

# See list of volumes
docker volume ls

# Create a volume
docker volume create mongovolume

# Remove a volume (make sure volume not being used by any container)
docker volume rm mongovolume