#!/bin/sh

DATASET=0825AMPM_combined
SOURCE_DATASET=0825AMPM_combined
EPOCHS=2000
IMG_SIZE=640
MODEL=yolov5s
PROJECT=road_marking_deterioration
METRIC=learnable

python detect.py \
	--weights ${PROJECT}/${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_${METRIC}_0.9_${IMG_SIZE}px/weights/best.pt \
    --source data/${SOURCE_DATASET}/val/images/ \
	--img-size ${IMG_SIZE} \
	--project ${PROJECT} \
	--name detect/${MODEL}_${EPOCHS}_epochs_${DATASET}_${IMG_SIZE}px
