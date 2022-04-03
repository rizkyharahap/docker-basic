# For cleaning up docker images and containers when not used anymore

# Clean up containers
docker container prune

# Clean up images
docker image prune

# Clean up volumes
docker volume prune

# Clean up networks
docker network prune

# Clean up all (except volumes)
docker system prune