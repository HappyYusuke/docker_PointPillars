# docker_PointPillars

# Installation
本リポジトリをクローンする。

```
git clone https://github.com/HappyYusuke/docker_PointPillars.git
```

</br>

zip形式のファイルを以下URLからホームディレクトリへダウンロードする。

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

```setup_pointpillars.sh```を実行する。</br>
```setup_pointpillars.sh```は、PointPillarsのクローンからデータセットのフォーマットまで実行するスクリプトのため、しばらく時間がかかります。

```
./setup_pointpillars.sh
```
