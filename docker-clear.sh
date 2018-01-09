# Source: https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker system prune -a
docker volume rm $(docker volume ls -f dangling=true -q)
