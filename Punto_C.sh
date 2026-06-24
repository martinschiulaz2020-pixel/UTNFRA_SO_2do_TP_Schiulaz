sudo docker build -t web1-schiulaz .

sudo docker run -d -p 8080:80 web1-schiulaz

sudo docker login

sudo docker tag web1-schiulaz martinschiulaz/web1-schiulaz:latest

sudo docker push martinschiulaz/web1-schiulaz:latest
