FROM ubuntu:xenial

COPY ros-latest.list /etc/apt/sources.list.d/ros-latest.list

RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && apt-get update \
    && apt install ros-kinetic-desktop-full python3-catkin-tools ros-kinetic-rosbridge-server -y \
    && rm -rf /var/lib/apt/lists/*
