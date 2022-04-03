# To setup resource limit for docker container

# Memory
# command : --memory=<memory>
# size : b (bytes), k (kilobytes), m (megabytes), g (gigabytes), t (terabytes)

# CPU
# command : --cpus=<cpus>
# size : <number> (float) core

docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest