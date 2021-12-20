
## base

- `ubuntu`安装第三方库
- 安装oh-my-zsh
- 新建trunk用户

## 使用

```shell script
docker run -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm --name=vnc  dorowu/ubuntu-desktop-lxde-vnc:xenial
```

```shell script
docker build -t ubuntu:base .
docker run -itd -p 6789:22 --name=base ubuntu:base
ssh trunk@127.0.0.1 -p 6789
```


```shell script
sudo passwd # 修改root密码 
```