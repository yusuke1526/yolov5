#!/bin/sh

DATASET=cam_all73
EPOCHS=2000
IMG_SIZE=640
MODEL=yolov5s
METRIC=custom

python train.py \
	--data data/${DATASET}/data.yaml \
	--cfg ${MODEL}.yaml \
	--weights '' \
	--batch-size 16 \
	--epochs ${EPOCHS} \
	--device 0 \
	--project road_marking_deterioration \
	--img-size ${IMG_SIZE} \
	--name ${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_${METRIC}_${IMG_SIZE}px \
	--ordinal-cls --metric ${METRIC}
