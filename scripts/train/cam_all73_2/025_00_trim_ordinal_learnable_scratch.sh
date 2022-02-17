#!/bin/sh

DATASET=0825AMPM_combined
EPOCHS=2000
IMG_SIZE=640
MODEL=yolov5s
METRIC=learnable

python train.py \
	--data data/${DATASET}/data.yaml \
	--cfg ${MODEL}.yaml \
	--weights '' \
	--batch-size 16 \
	--epochs ${EPOCHS} \
	--device 0 \
	--project road_marking_deterioration \
	--img-size ${IMG_SIZE} \
	--name ${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_${METRIC}_scratch_${IMG_SIZE}px \
	--ordinal-cls --metric ${METRIC}
