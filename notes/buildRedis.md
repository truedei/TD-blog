# 部署以及配置Redis

> 暂时还没写


1、如果你也是使用的docker，可以参考我的博客进行安装：https://blog.csdn.net/qq_17623363/article/details/106418353

2、配置application.yml文件：
```xml
  #Redis缓存配置
  redis:
    database: 0
    host: xxx.xxx.xxx.xxx #Redis服务器的地址
    port: 6379 #Redis服务器的地址的端口号
    password: 123456 #Redis服务器的密码
    jedis:
      pool:
        max-active: 80
        max-wait: -1
        max-idle: 80
        min-idle: 0
    timeout: 3000
```