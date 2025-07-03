#!/bin/bash

# リポジトリをクローン
git clone https://github.com/zhulf0804/PointPillars.git

# PointPillarsセットアップ
cd ~/PointPillars
python3 setup.py build_ext --inplace
pip install .

# データセットセットアップ
./setup_datasets.sh
cd ~/PointPillars/
python3 pre_process_kitti.py --data_root ${HOME}/kitti/
