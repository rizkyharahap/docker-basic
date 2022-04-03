# Container for executing commands in the container
# -i for interactif input mode
# -t for tty for alocation of pseudo-terminal
# /bin/bash for default shell
docker container exec -i -t redisexample /bin/bash