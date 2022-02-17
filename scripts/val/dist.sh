#!/bin/sh

PROJECT_NAME=road_marking_deterioration
CHECKPOINT_NAME=yolov5s_600_epochs_025_00_trim_ordinal_custom

python val.py \
	--data data/025_00_trim/data.yaml \
	--weights ./${PROJECT_NAME}/train/${CHECKPOINT_NAME}/weights/best.pt \
	--batch-size 16 \
	--device 0 \
	--name dist \
	--task test \
	--save-txt --plot-cls-prob
