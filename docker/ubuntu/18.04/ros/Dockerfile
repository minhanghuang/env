FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

COPY ros-latest.list /etc/apt/sources.list.d/ros-latest.list

RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && apt-get update \
    && apt install ros-melodic-desktop-full python3-catkin-tools -y \
    && rm -rf /var/lib/apt/lists/* \
    && su - ${user} -c "pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /opt/dockerfile/requirements.txt"
