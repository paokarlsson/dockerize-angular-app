docker rm app -f
docker rmi myapp -f
docker build -t myapp .
docker run -dp 4200:80 --name app myapp