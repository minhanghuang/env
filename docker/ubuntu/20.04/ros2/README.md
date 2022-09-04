
## Ros2  

## 使用

```shell script
docker build -t owner:20.04-ros2 .
docker run -itd -p 6787:22 --name=u20-ros2 owner:20.04-ros2
ssh trunk@127.0.0.1 -p 6787
```


```shell script
sudo passwd # 修改root密码
```
