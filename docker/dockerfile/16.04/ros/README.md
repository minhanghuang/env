

## 使用

```shell script
docker build -t ubuntu:kinetic .
docker run -itd -p 6788:22 -p 9090:9090 -p 9980:9980 -p 9981:9981 -p 9982:9982 --name=kinetic ubuntu:kinetic
ssh trunk@127.0.0.1 -p 6789
```

```shell script
sudo passwd # 修改root密码
```
