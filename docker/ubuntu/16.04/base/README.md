
## base

- `ubuntu`安装第三方库
- 安装oh-my-zsh
- 新建trunk用户

## 使用

```shell script
docker build -t ubuntu:xenial .
docker run -itd -p 6789:22 -p 9090:9090 -p 9990:9990 -p 9991:9991 -p 9992:9992 --name=xenial ubuntu:xenial
ssh trunk@127.0.0.1 -p 6789
```


```shell script
sudo passwd # 修改root密码
```
