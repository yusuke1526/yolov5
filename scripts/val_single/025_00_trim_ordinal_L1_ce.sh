#!/bin/sh

DATASET=025_00_trim
EPOCHS=600
MODEL=yolov5s

CHECKPOINT_NAME=${MODEL}_${EPOCHS}_epochs_${DATASET}_ordinal_L1_ce
PROJECT_NAME=road_marking_deterioration

python val.py \
	--data data/${DATASET}/data.yaml \
	--weights ./${PROJECT_NAME}/train/${CHECKPOINT_NAME}/weights/best.pt \
	--batch-size 16 \
	--device 0 \
	--project ${PROJECT_NAME} \
	--name ${CHECKPOINT_NAME}_test \
	--ordinal-cls --metric L1 \
	--use-cross-entropy \
	--task test --save-txt \
	--single-label
