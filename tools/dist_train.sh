#!/usr/bin/env bash
# Copyright (c) OpenMMLab. All rights reserved.

CONFIG=$1
GPUS=$2
PORT=${PORT:-29500}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    $(dirname "$0")/train.py $CONFIG --launcher pytorch ${@:3}

#/usr/local/bin/python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
#/usr/local/bin/python $(dirname "$0")/train.py $CONFIG --launcher pytorch ${@:3}
#python -m torchrun --nproc_per_node=$GPUS --master_port=$PORT \
#    $(dirname "$0")/train.py $CONFIG --launcher pytorch ${@:3}
#torchrun --nproc_per_node=2