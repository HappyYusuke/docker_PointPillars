# zipファイル解凍
echo "Unzipping large_files_docker_PointPillars.zip ..."
unzip $HOME/large_files_docker_PointPillars.zip
echo "unzipped!"

# Docker IMAGE を取り込み
echo -e "\nLoading docker image ..."
docker load < $HOME/docker_PointPillars/pointpillars.tar.gz
echo "Loaded!"

# ターミナル出力
echo -e "\n!!! Docker IMAGE kanazawa/reid3d_ready is ready !!!"
echo "Please run <run-docker-container.sh>"
