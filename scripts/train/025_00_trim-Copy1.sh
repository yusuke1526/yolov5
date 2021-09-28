#!/bin/sh

python train.py --data data/025_00_trim/data.yaml --cfg yolov5l.yaml --weights yolov5l.pt --batch-size 16 --epochs 600 --device 1 --name yolov5l_600_epochs_trans