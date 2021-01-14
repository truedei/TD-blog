# 部署以及配置数据库


# 菜单

[👈👈👈👈点我回主页](../README.md)

[一、配置Maven（如果已配置，可跳过）](buildDatabase.md)

[一、基础数据库配置](buildDatabase.md)

[二、Redis配置](buildRedis.md)

[三、Email配置](buildEmail.md)

[四、部署TD-blog服务](buildServer.md) 


+ 第一步：创建一个数据库，例如：jantent
+ 第二步：把这些/src/main/resources/sql下面的这些sql都导入到这个数据库中
    + /src/main/resources/sql:  👇
       + |-> jantent_t_attach.sql <br>
       + |-> jantent_t_comments.sql <br>
       + |-> jantent_t_contents.sql <br>
       + |-> jantent_t_logs.sql <br>
       + |-> jantent_t_metas.sql <br>
       + |-> jantent_t_options.sql <br>
       + |-> jantent_t_relationships.sql <br>
       + |-> jantent_t_users.sql <br>

+ 第三步：配置项目中SpringBoot的配置文件

1、dev环境：自己本地或者部署的测试环境的数据库配置

>src/main/resources/env/dev/application.yml


2、prod环境：真正使用的环境的配置

>src/main/resources/env/prod/application.yml


+ 第四步：修改如下信息

**你需要知道自己的：**<br>
（1）数据库地址；<br>
（2）数据库的端口号，一般默认为3306；<br>
（3）你的数据库名字；<br>
（4）数据库连接的账号；<br>
（5）数据库连接的账号的密码；<br>

```yaml
spring:
  #  数据库配置
  datasource:
    type: com.alibaba.druid.pool.DruidDataSource
    driver-class-name: com.mysql.jdbc.Driver
    url: jdbc:mysql://数据库地址:3306/数据库名?useSSL=false&useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull&autoReconnect=true
    username: root #数据库账号
    password: 123456 #数据库密码
    druid:
      max-active: 100
      min-idle: 10
      initial-size: 20
```

