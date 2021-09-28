#!/bin/sh

python train.py --data data/025_00_trim/data.yaml --cfg yolov5l.yaml --weights '' --batch-size 16 --epochs 600 --device 2 --name yolov5l_600_epochs