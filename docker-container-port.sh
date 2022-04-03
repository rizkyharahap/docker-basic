# When running container, container will be running with isolation in Docker
# It means host can't access container's file system
# Usually container will be running in spesific port

# Port Fordwarding
# (When create container) --publish/-p posthost:portcontainer
docker container create --name nginxexample --publish 8080:80 nginx:latest

# Check with browser http://localhost:8080