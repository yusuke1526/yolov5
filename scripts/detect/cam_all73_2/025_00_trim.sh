#!/bin/sh

DATASET=cam_all73_2
EPOCHS=2000
IMG_SIZE=640
MODEL=yolov5s
PROJECT=road_marking_deterioration

python detect.py \
	--weights ${PROJECT}/${MODEL}_${EPOCHS}_epochs_${DATASET}_${IMG_SIZE}px/weights/best.pt \
    --source data/${DATASET}/val/images/ \
	--img-size ${IMG_SIZE} \
	--name ${MODEL}_${EPOCHS}_epochs_${DATASET}_${IMG_SIZE}px_detect \
