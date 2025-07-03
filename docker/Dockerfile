# cuda11.1
FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

ENV DEBCONF_NOWARNINGS=yes

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

# Dockerfile内での対話形式のプロンプトを無効化
ENV DEBIAN_FRONTEND=noninteractive
# aptを日本のミラーに設定  http://www.aise.ics.saitama-u.ac.jp/~gotoh/HowToInstallUbuntu1804OnWSL.html
RUN sed -i.bak -e "s/http:\/\/archive\.ubuntu\.com/http:\/\/jp\.archive\.ubuntu\.com/g" /etc/apt/sources.list

# タイムゾーンを設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# コンテナにプロキシの環境変数を追加する
ENV https_proxy "http://wwwproxy.kanazawa-it.ac.jp:8080"
ENV http_proxy "http://wwwproxy.kanazawa-it.ac.jp:8080"

RUN apt-get update
# sudo:sudo x11-apps:xeyes用 net-tools:ifconfig用 mesa-utils:glxgears用 gnupg:rosのadd-key用
RUN apt-get install -y sudo gnupg x11-apps iputils-ping net-tools mesa-utils vim-gtk emacs dbus-x11 terminator git

# Python
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y python3.7
RUN apt install -y python3-pip
RUN pip install -U pip setuptools

# PointPillars
RUN git clone https://github.com/zhulf0804/PointPillars.git
WORKDIR PointPillars
RUN pip install -r requirements.txt
#RUN python3 setup.py build_ext --inplace
#RUN pip install .

# 追加パッケージ
RUN apt update
RUN apt install -y wget
RUN pip uninstall -y numpy
RUN pip install numpy==1.20.3

# aptのキャッシュを削除してイメージの容量削減
RUN rm -rf /var/lib/apt/lists/
