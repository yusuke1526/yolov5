#!/bin/sh

DATASET=cam_all
EPOCHS=2000
IMG_SIZE=640
MODEL=yolov5s

python train.py \
	--data data/${DATASET}/data.yaml \
	--cfg ${MODEL}.yaml \
	--weights '' \
	--batch-size 16 \
	--epochs ${EPOCHS} \
	--device 0 \
	--project road_marking_deterioration \
	--img-size ${IMG_SIZE} \
	--name ${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_learnable_0.9_${IMG_SIZE}px \
	--ordinal-cls --metric learnable -s 0.9 \
