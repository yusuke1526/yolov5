#!/bin/sh

python train.py --data data/aquarium/augment/data.yaml --cfg yolov5s.yaml --batch-size 16 --epochs 600 --device 0 --name s_600_epochs_aquarium_augment