sudo docker rm $(sudo docker ps -aq)
sudo docker rmi $(sudo docker images -a -q)