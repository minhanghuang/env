# dockerfile 简单使用 


```shell
docker build -t haha .
```

> -t 表示给新景祥命名`haha`

> `.` 相对路径,上下文,docker会将相对路径下的内容拷贝到docker engine中

```shell
docker run -itd haha
docker exec -it xxxxxx /bin/bash 
```