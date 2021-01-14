# 配置Email

QQ邮箱的官方说明:https://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001256&&id=28

## 什么是授权码，它又是如何设置？

**1、什么是授权码？**

授权码是QQ邮箱推出的，用于登录第三方客户端的专用密码。

适用于登录以下服务：POP3/IMAP/SMTP/Exchange/CardDAV/CalDAV服务。

**温馨提醒：为了你的帐户安全，更改QQ密码以及独立密码会触发授权码过期，需要重新获取新的授权码登录。**

 

**2、怎么获取授权码？**

先进入设置－》帐户页面找到入口，按照以下流程操作。

（1）点击“开启”

![img](https://service.mail.qq.com/images/faq/76FD1EA3-AC06-4938-9E2F-E6789AA04996.jpeg)

（2）验证密保

![img](https://service.mail.qq.com/images/faq/5FE40CAA-12A3-4C82-AA2F-9B8BC75C3B4E.jpeg)

（3）获取授权码

![img](https://service.mail.qq.com/images/faq/CF53747E-4FC8-4907-8550-F6A65B96BA07.jpeg)

**3、在第三方客户端怎么设置？**

在第三方客户端的密码框里面输入16位授权码进行验证。


## 然后配置application.yml中的配置
```xml
  #电子邮件配置
  mail:
    host: smtp.qq.com #QQ邮箱的地址
    port: 587 #QQ邮箱的端口号
    username: xxxxxxx@qq.com #自己的QQ邮箱
    password: xxxxxxxxxxxx #QQ邮箱的授权码，不是自己的qq密码
```
