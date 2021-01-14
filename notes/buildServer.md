# 部署以及配置服务


## 一、如果你是idea
> 直接启动即可

在浏览器输入 http://ip 即可访问

## 二、如果你是部署到linux上

1、使用Maven打包成jar包；
2、把这个jar包上传到linux服务器上；
3、然后使用java -jar xx.jar即可部署；

在浏览器输入 http://ip 即可访问


### 三、如果你是部署到docker上

你需要创建一个Dockerfile文件，并把打包好的jar包和此文件放在同一目录下：

```shell script
[root@TrueDei server]# ll
total 67352
-rw-r--r-- 1 root root      532 Jan  1 12:35 Dockerfile
-rw-r--r-- 1 root root 68963955 Jan  9 22:56 TDBlog-boot-1.0.jar
[root@TrueDei server]# 
[root@TrueDei server]# 
```

Dockerfile文件中的内容：
```dockerfile
[root@TrueDei server]# cat Dockerfile 
# Docker image for springboot file run
# VERSION 0.0.1
# Author: eangulee
# 基础镜像使用java
FROM java:8
# 作者
MAINTAINER zhenghui <zhenghui@gmail.com>
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp 
# 将jar包添加到容器中并更名为app.jar
ADD TDBlog-boot-1.0.jar app.jar 
# 运行jar包
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
[root@TrueDei server]# 
```

然后执行docker build命令来构建镜像：
```shell script
docker build -t truedei-blog-dev:1.0 .
```

接下来使用docker run命令运行镜像：
```shell script
docker run -itd -p 666:80 --name truedei-blog-dev truedei-blog-dev:1.0
```

在浏览器输入 http://ip:666 即可访问