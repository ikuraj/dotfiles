export DOCKER_HOST=tcp://192.168.59.103:2375

docker-enter() {
  boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
  boot2docker ssh sudo /var/lib/boot2docker/docker-enter "$@"
}
