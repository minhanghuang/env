
## Ros2  

## 使用

```shell script
docker build -t owner:20.04-ros .
docker run -itd -p 6787:22 --name=u20-ros owner:20.04-ros
ssh trunk@127.0.0.1 -p 6787
```


```shell script
sudo passwd # 修改root密码
```
