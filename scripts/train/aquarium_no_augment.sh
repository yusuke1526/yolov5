#!/bin/sh

python train.py --data data/aquarium/no_augment/data.yaml --cfg yolov5s.yaml --batch-size 16 --epochs 600 --device 0 --name s_600_epochs_aquarium_no_augment