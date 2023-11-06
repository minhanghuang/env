# Nginx

## 使用

- 准备

```shell
sudo mkdir -p /etc/nginx/docker-conf.d
sudo chown $USER /etc/nginx/docker-conf.d
cp file.conf /etc/nginx/docker-conf.d
sudo chown $USER /data
```

- 构建镜像

```shell script
docker build -f Dockerfile -t hmh:nginx .
```

- 新建容器

```shell script
docker run -itd -p 30100:8080 -v /data:/data -v /etc/nginx/docker-conf.d:/etc/nginx/conf.d --name=nginx hmh:nginx
```

