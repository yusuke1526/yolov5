#!/bin/sh

DATASET=cam
EPOCHS=2000
IMG_SIZE=1280
MODEL=yolov5s

python train.py \
	--data data/${DATASET}/data.yaml \
	--cfg ${MODEL}.yaml \
	--weights '' \
	--batch-size 8 \
	--epochs ${EPOCHS} \
	--device 0 \
	--project road_marking_deterioration \
	--img-size ${IMG_SIZE} \
	--name ${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_L2_peak1.0_${IMG_SIZE}px \
	--ordinal-cls --metric L2 \
	--peak 1.0