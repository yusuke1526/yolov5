#!/bin/sh

python train.py --data data/025_00_trim/data.yaml --cfg yolov5s.yaml --weights yolov5s.pt --batch-size 16 --epochs 600 --device 0 --name yolov5s_600_epochs_trans