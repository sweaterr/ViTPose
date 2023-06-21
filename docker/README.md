```bash
docker build -t sweaterr/vitpose:latest vitpose

docker push sweaterr/vitpose:latest

docker pull sweaterr/vitpose:latest



docker run --gpus all -it --net host -v /home/jklee/repo:/home/jklee/repo --rm sweaterr/vitpose:latest

```