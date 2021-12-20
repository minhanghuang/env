

- run 

```shell script
docker run -itd -p 6789:22 -p 6080:80 -p 5900:5900 -v /dev/shm:/dev/shm --name=trunk ubuntu:vnc-trunk
```

- 6789: ssh login 
- 6080: vnc 