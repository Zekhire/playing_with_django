# playing_with_django

sudo docker build -t playing_with_django_image .
sudo docker run -it -v "$(pwd)":/usr/src/app/ -p 8080:8080 --name playing_with_django_container playing_with_django_image


sudo docker run -dt -v "$(pwd)":/usr/src/app/ -p 8080:8080 --name playing_with_django_container playing_with_django_image



sudo docker start -p 8080:8080 playing_with_django_container
sudo docker exec -it playing_with_django_container /bin/bash
