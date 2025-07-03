#!/bin/bash

# ホームディレクトリに移動
cd ~/

# データセットのダウンロード
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_velodyne.zip
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_image_2.zip
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_calib.zip
wget https://s3.eu-central-1.amazonaws.com/avg-kitti/data_object_label_2.zip

# 解凍
unzip data_object_velodyne.zip
unzip data_object_image_2.zip
unzip data_object_calib.zip
unzip data_object_label_2.zip

# フォーマット
mkdir ~/kitti
mv ~/training ~/testing ~/kitti
