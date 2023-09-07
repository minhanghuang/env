FROM owner:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt update \ 
  && apt install -y curl gnupg2 \ 
  && curl -s https://gitee.com/minhanghuang/rosdistro/raw/master/ros.asc | sudo apt-key add - \
  && sh -c 'echo "deb https://mirrors.tuna.tsinghua.edu.cn/ros2/ubuntu focal main" > /etc/apt/sources.list.d/ros2-latest.list' \
  && apt update \
  && sudo apt install -y ros-foxy-desktop python3-argcomplete python3-colcon-common-extensions python3-vcstool \
  && rm -rf /var/lib/apt/lists/* \

