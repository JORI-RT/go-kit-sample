docker ps -a | grep stringsvc|awk '{print $1}'|xargs docker stop;
docker ps -a | grep stringsvc|awk '{print $1}'|xargs docker rm 