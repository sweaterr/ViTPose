```bash
docker build -t sweaterr/vitpose:latest vitpose

docker push sweaterr/vitpose:latest

docker pull sweaterr/vitpose:latest



docker run --gpus all -it --net host -u jklee -v /home/jklee/repo:/home/jklee/repo --rm sweaterr/vitpose:latest

```


```commandline
rsync  -e 'ssh -p 22222' -avz /Users/sweaterr/Projects/dataset/coco jklee@220.85.45.35:/home/jklee/repo/ViTPose
```


