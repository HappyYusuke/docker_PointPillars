# docker_PointPillars

# Installation
本リポジトリをクローンする。

```
git clone https://github.com/HappyYusuke/docker_PointPillars.git
```

</br>

zip形式のファイルを以下URLからホームディレクトリへダウンロードする。</br>
https://kanazawa-it.box.com/s/p66u40evncggzi00rr0xnq0z2hp38u9i

</br>

```setup.sh```を実行する

```
cd ~/docker_PointPillars
./setup.sh
```

</br>

Dockerを起動する。Dockerを起動すると、プロンプトの@以降がros2になる。

```
./run-docker-container.sh
```

</br>

```setup_datasets.shを実行する```

```
./setup_datasets.sh
```

</br>

```setup_pointpillars.sh```を実行する。</br>
```setup_pointpillars.sh```は、PointPillarsのクローンからデータセットのフォーマットまで実行するスクリプトのため、しばらく時間がかかります。

```
./setup_pointpillars.sh
```

</br>

あとは、[PointPillarsの学習](https://github.com/zhulf0804/PointPillars#training)を進める。

</br>

# TODO

* ~~PointPillarsをDockerで環境構築する~~
* ~~PointPillarsを学習する~~
* ~~重みファイルを保存~~
* PointPillarsで推論する
* PointPillarsの精度をros2_tao_pointpillarsと比較する
* PointPillarsの方が精度が良ければ、ROS2化する。
