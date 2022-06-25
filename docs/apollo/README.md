# Auto Apollo 6.0

## #0 环境

```shell
Ubuntu 18.04
Docker
```


## #1 安装 

- 安装docker(略)

- 安装`NVIDIA Container Toolkit`

```shell
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get -y update
sudo apt-get install -y nvidia-docker2
```

```shell
sudo systemctl restart docker
```

- 安装包安装`Apollo`

```shell
# 下载
https://github.com/haha-web/env/tree/main/apollo/apollo_v6.0_edu_amd64.tar.gz

# 或者到Apollo官网下载
https://apollo.auto/document_cn.html?target=/Apollo-Homepage-Document/Apollo_Doc_CN_6_0/
```

```shell
tar -xvf apollo_v6.0_edu_amd64.tar.gz
```


```shell
sudo ./apollo.sh
```

- 启动`web`界面


```shell
[user@in-runtime-docker:/apollo]$ bash scripts/bootstrap.sh
```

- 下载 `Apollo` 的演示包

```shell
wget https://apollo-system.cdn.bcebos.com/dataset/6.0_edu/demo_3.5.record
```

- 回放数据包

```shell
cyber_recorder play -f demo_3.5.record --loop
```

> 遇到的问题: bash: cyber_recorder: command not found

> 解决 

```shell
root@in-dev-docker:/apollo# source scripts/apollo_base.sh
cyber_recorder play -f demo_3.5.record --loop
```

- 查看数据包


浏览器查看: `http://localhost:8888`



