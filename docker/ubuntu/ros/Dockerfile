FROM ubuntu:base

COPY ros-latest.list /etc/apt/sources.list.d/ros-latest.list
COPY requirements.txt /opt/dockerfile/requirements.txt

RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && apt-get update \
    && apt install ros-kinetic-desktop-full -y \
    && rm -rf /var/lib/apt/lists/* \
    && su - ${user} -c "pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /opt/dockerfile/requirements.txt"




