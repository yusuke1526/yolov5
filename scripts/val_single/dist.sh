#!/bin/sh

CHECKPOINT_NAME=yolov5s_600_epochs_025_00_trim_ordinal_L2

python val.py \
	--data data/025_00_trim/data.yaml \
	--weights ./runs/train/${CHECKPOINT_NAME}/weights/best.pt \
	--batch-size 16 \
	--device 1 \
	--name dist \
	--task test \
	--save-txt --plot-cls-prob
