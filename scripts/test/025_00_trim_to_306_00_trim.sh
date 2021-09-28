#!/bin/sh

python test.py --data data/306_00_trim/data_all.yaml --weights ./runs/train/yolov5s_600_epochs_trans/weights/best.pt --batch-size 16 --device 0 --name yolov5s_600_epochs_trans_025_00_trim_to_306_00_trim --task test --save-txt