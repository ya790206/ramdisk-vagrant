cat > /etc/default/docker <<EOL
# Docker Upstart and SysVinit configuration file

# Customize location of Docker binary (especially for development testing).
#DOCKER="/usr/local/bin/docker"

# Use DOCKER_OPTS to modify the daemon startup options.
DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4 --insecure-registry 192.168.1.172:4000 -s devicemapper"

# If you need Docker to use an HTTP proxy, it can also be specified here.
export http_proxy="http://192.168.1.172:3128/"

# This is also a handy place to tweak where Docker's temporary files go.
#export TMPDIR="/mnt/bigdrive/docker-tmp"

EOL

service docker restart
