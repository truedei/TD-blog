create table t_contents
(
    cid           int unsigned auto_increment
        primary key,
    title         varchar(200)                   null,
    slug          varchar(200)                   null,
    created       int unsigned default 0         null,
    modified      int unsigned default 0         null,
    content       text                           null comment '内容文字',
    author_id     int unsigned default 0         null,
    type          varchar(16)  default 'post'    null,
    status        varchar(16)  default 'publish' null,
    tags          varchar(200)                   null,
    categories    varchar(200)                   null,
    thumbImg      varchar(512)                   null,
    hits          int unsigned default 0         null,
    comments_num  int unsigned default 0         null,
    allow_comment tinyint(1)   default 1         null,
    allow_ping    tinyint(1)   default 1         null,
    allow_feed    tinyint(1)   default 1         null,
    constraint slug
        unique (slug)
)
    charset = utf8;

create index created
    on t_contents (created);

INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (1, '怒我直言你绝对不知道这些硬核的工具', null, 1609322021, 1609322021, '测试', 1, 'post', 'publish', '测试', '默认分类', '', 21, 1, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (2, 'leetcode-寻找两个正序数组的中位数', null, 1609333027, 1609437709, '# 寻找两个正序数组的中位数

解题code：

```java
class Solution {

    public int[] twoSum(int[] nums, int target) {
        int[] indexs = new int[2];
        // 双重循环 循环极限为(n^2-n)/2 
        for(int i = 0; i < nums.length; i++){
            for(int j = nums.length - 1; j > i; j --){
                if(nums[i]+nums[j] == target){
                   indexs[0] = i;
                   indexs[1] = j; 
                   return indexs;
                }
            }
        }

        return indexs;
    }

    public int[] twoSum(int[] nums, int target) {
       int[] result = new int[2];
        Map<Integer, Integer> map = new HashMap<Integer, Integer>();
        for (int i = 0; i < nums.length; i++) {
            if (map.containsKey(target - nums[i])) {
                result[1] = i;
                result[0] = map.get(target - nums[i]);
                return result;
            }
            map.put(nums[i], i);
        }
        return result;
    }

}
```', 1, 'post', 'publish', '算法', '算法', '', 46, 2, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (3, '这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法', null, 1609392478, 1609392478, '# 这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法

这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法
这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法
这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法
这不是一篇技术型的文章，而是一篇能让你在IT世界中畅游的方法', 1, 'post', 'publish', 'IT技巧', '默认分类', '', 17, 0, 0, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (4, '终于懂了TCP和UDP协议区别', null, 1609413725, 1609437643, '# 老样子先认识一下这俩伙计
`TCP和UDP`都是`来自`于`传输层`的`协议`。

传输层是位于第2层的，如下图所示。

传输层位于应用层和网络层之间，负责位于不同主机中进程之间的通信。
![在这里插入图片描述](https://img-blog.csdnimg.cn/2020032608334630.png#pic_center)

之前一位老哥问我：`不同电脑之间是如何通信的呢？是不是还要自己开发协议什么的。`

分析：这位老哥觉得如果开发一个应用需要自己定义协议。其实也并不是没有道理的，协议是什么？`协议就是双方通信共同遵守的规则，被称之为协议`。像怎么使用的HTTP，FTP这些都属于应用服务，为什么叫应用服务？因为是专门服务其他人的应用。像QQ、微信、淘宝、浏览器这些通常称之为应用客户端，当然了这些的服务端咱们是看不到摸不着的，除非你是参与其中开发的人员。QQ使用的是OICQ协议，HTTP服务则使用的HTTP协议，这些协议肯定都是自定义的。如果你使用HTTP服务器的话，你就必须遵守这个规则，否则人家是不认你的。其实都是基于TCP或UDP的。


![在这里插入图片描述](https://img-blog.csdnimg.cn/2020032609582560.gif#pic_center)
Internet的传输层提供`两种`不同的`服务`，应用开发者`必须选择`其中的`一种`。

+ TCP
>是`面向连接`的可靠的传输层协议。
+ UDP
>是`无连接`的不可靠的传输层协议。

**何来可靠和不可靠之说？**
>UDP相对于IP来说，只添加了process到process的分发服务和错误检验机制，因为，提供的也是不可靠的服务。
>而TCP为应用提供了包括可靠数据传输、流量控制和拥塞控制等在内的服务。


**有了可靠的TCP，为什么还要UDP？**
>+ 应用可以`更精细`控制`何时`发送`何种`数据
>+ `无需`事先建立`连接`就可以发送数据
>+ 无连接状态，实现简单
>+ 头部开销小

==`扩展：`==
>    + 1、应用可更好控制何时发送何种数据：无须建立连接，UDP可尽快将消息发给网络层；TCP可能需要重传在规定时间内没有收到确认的Segment。UDP没有建立连接所引入的延迟，这可能是DNS选择UDP而不是TCP的最主要原因。
>    + 2、实现简单：UDP因为是无连接的，Host因而无须维护连接状态，实现简单；
>    + 3、头部开销小：UDP的Segment头部字段共8个字节；而TCP的头部共包括20个字节.

**UDP被多数`多媒体应用`使用。但是.....**
>+ UDP`通常`被认为是`不负责任`的
>+ UDP流量`通常`不容易穿透防火墙
>+ 因此TCP的多媒体应用越来越多了....

# 总结

 **TCP的优点：**
>+ 可靠，稳定。
>+ TCP的可靠体现在TCP在传输数据之前会有三次握手来建立连接，而且在数据传递时，有确认、窗口、重传、拥塞控制机制，在数据传完后，还会断开连接用来节约系统资源。


 **TCP的缺点：**
>+ 慢，效率低，占用资源高，易被攻击；TCP在传递数据之前要先建立连接，这会消耗时间，而且在数据传递时，确认机制，重传机制，拥塞控制机制等都会消耗大量的实践，而且要在每台设备上维护所有的传输连接。事实上每个连接都会占用系统的CPU、内存等硬件资源。
>+ 因为TCP有确认机制、三次握手机制，这些优点在成了缺陷，导致TCP容易被人利用，实现DOS、DDOS、CC、猜测攻击等。

 **UDP的优点：**
 >+ 快，比TCP稍安全。
 >+ UDP没有TCP的握手、确认、窗口、重传、拥塞控制，UDP是一个无状态的传输协议，所以它在传递数据时非常快。
 >+ 没有TCP的这些机制（如：三次握手），攻击者利用UDP的漏洞就要少一些。但是UDP也是无法避免攻击的，比如：UDPFlood等。
 
 
 **UDP的缺点：**
>+ 不可靠，不稳定。
>+ 因为UDP没有TCP那些可靠的机制，在数据传递时，如果网络质量不好，就会很容易丢包。


# 在UDP和TCP协议面前，如何选择并使用？
==**基于上面的优点和缺点的分析**==

**什么时候应该使用TCP传输协议：**
>当网络通讯有要求的时候，比如：整个数据要准确无误的传递给对方，这往往用于一些可靠的应用，比如：HTTP，HTTPS，FTP等传输文件的协议，POP、SMTP等邮件传输协议。

**什么时候应该使用UDP：**
>当网络通讯质量要求不高的时候，要求网络通讯速度能尽量的快，这时就可以使用UDP。比如：QQ语言、QQ视频等。


==面试经常会问道：TCP和UDP协议的区别是什么？==

==`简化很多字的总结`==
>+ 1、TCP面向连接，UDP无连接；
>+ 2、TCP占用系统资源较多，UDP少；
>+ 3、TCP结构复杂，UDP较简单；
>+ 4、TCP基于流模式，UDP时数据报模式；
>+ 5、TCP保证数据正确性，UDP可能丢包；
>+ 6、TCP保证数据顺序，UDP不保证。', 1, 'post', 'publish', '网络', '计算机网络', '', 36, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (5, '无意间发现Linux这样才能顺利的下载jdk', null, 1609485219, 1609485219, '以前在Linux上想下载jdk可以直接：wget + jdk的jar包地址进行下载，但是现在不可以了，必须先登录到oracle.com。

如果你没登录官网的话，可以看到：
[https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)

各个版本的jdk：
![在这里插入图片描述](https://img-blog.csdnimg.cn/2020121917293934.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)
然后你迫不及待的复制一个下载的链接，然后打开Linux命令行，输入上wget，输入上空格，然后粘贴过来复制的内容。然后回车，然后你就惊呆了：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219173357737.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)

如下图所示，下载的内容并不是我们想要的，毕竟才4.42K的大小。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219173233451.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)

该怎么办呢
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219173532990.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)

不要慌，不要急，不要紧！！！！！


我们登录上之后就可以在windows下下载了，如果你是Linux的图形界面，也可以登录上之后进行下载。
![在这里插入图片描述](https://img-blog.csdnimg.cn/2020121917391139.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)


但是我们使用linux的时候，更多的是在Linux的图形界面下进行操作的。

我们登录上去之后，再进行下载，便可以下载了：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219174303578.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)
我把鼠标放上去之后，发现果然有蹊跷之处，发现居然下载链接后面拼接了一个绑定用户的参数。

把这个链接复制到Linux进行下载，果然是有效的：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219174758863.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)

惊喜呀，成功了：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20201219174836285.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)



附上一段可以自动配置的shell脚本：
```shell
[root@TrueDei soft]# 
[root@TrueDei soft]# cat auto_config_jdk.sh 

target_file="/etc/profile"
java_home="/soft/jdk1.8.0_271"

echo "" >> $target_file
echo "" >> $target_file
echo "" >> $target_file
echo "#JDK配置开始---------" >> $target_file


echo "export JAVA_HOME=$java_home" >> $target_file
echo "export CLASSPATH=.:\\$JAVA_HOME/lib/dt.jar:\\$JAVA_HOME/lib/tools.jar"  >> $target_file
echo "export PATH=\\$PATH:\\$JAVA_HOME/bin"  >> $target_file

echo "#JDK配置结束---------" >> $target_file

source $target_file
[root@TrueDei soft]# 
[root@TrueDei soft]# 
```

使用sh  auto_config_jdk.sh  命令即可配置成功。

然后如果source 命令不起作用的话，自己手动执行一下即可。', 1, 'post', 'publish', 'linux', '后端', '', 10, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (6, '哈哈，我用Python开发了一个搜题神奇', null, 1609556261, 1609558299, '# 专业搜题，家长好帮手


很早之前曾经做过一个图片识别的项目，当时有一项功能是整题识别，即传入数学题的截图，可通过ocr技术识别出图片内容，但当时只限于识别文字，并未作更深一步的处理，现在想来实用性并不强，毕竟大家更需要的是解题思路，而不是让AI读出题干（题干的文字，我都认识，连起来我就不知道怎么下手去做了 = = ），最近刚好有时间，于是尝试来为有娃的朋友做一个搜题神器。

鉴于之前整题识别的开发使用有道智云的良好体验，我再次打开其官方文档，果然找到了[拍照搜题](https://ai.youdao.com/DOCSIRMA/html/%E6%8B%8D%E7%85%A7%E6%90%9C%E9%A2%98/API%E6%96%87%E6%A1%A3/%E6%8B%8D%E7%85%A7%E6%90%9C%E9%A2%98%E6%9C%8D%E5%8A%A1/%E6%8B%8D%E7%85%A7%E6%90%9C%E9%A2%98%E6%9C%8D%E5%8A%A1-API%E6%96%87%E6%A1%A3.html)服务的开放API，轻车熟路地做了一个简单的批量搜题[demo](https://github.com/LemonQH/OcrQuestion), 下面分享一下开发过程。

### 调用API接口的准备工作

首先，是需要在有道智云的个人页面上创建实例、创建应用、绑定应用和实例，获取到应用的id和密钥。具体个人注册的过程和应用创建过程详见文章


![在这里插入图片描述](https://img-blog.csdnimg.cn/20201228091720690.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)



### 开发过程详细介绍

下面介绍具体的代码开发过程。

API接收的参数较为简单：

| 字段名     | 类型 | 含义                                                         | 必填  | 备注                                                      |
| ---------- | ---- | ------------------------------------------------------------ | ----- | --------------------------------------------------------- |
| q          | text | 要识别的图片，需要Base64编码                                 | True  | 必须是Base64编码(baes64前边不要加上data:image/png;base64) |
| appKey     | text | 应用ID                                                       | True  | 可在[应用管理](https://ai.youdao.com/appmgr.s)查看        |
| salt       | text | UUID                                                         | True  | uuid                                                      |
| curtime    | text | 当前UTC时间戳（秒）                                          | true  | TimeStamp                                                 |
| sign       | text | 签名 sha256(应用ID+input+salt+curtime+应用密钥);input的生成规则见表下的备注 | True  | sha256(应用ID+input+salt+curtime+应用密钥)                |
| signType   | text | 签名类型                                                     | true  | v2                                                        |
| type       | text | 上传类型， 仅支持base64上传，请填写固定值1                   | True  | 1                                                         |
| searchType | text | 搜索类型，img为图片搜题,text为文本搜题                       | false | img                                                       |

签名`sign`生成方法如下：
signType=v2；
sign=sha256(`应用ID`+`input`+`salt`+`curtime`+`应用密钥`)。
其中，input的计算方式为：`input`=`q前10个字符` + `q长度` + `q后10个字符`（当q长度大于20）或 `input`=`q字符串`（当q长度小于等于20）。

**需要注意的是**，API对题目图片有如下要求：

| 规则     | 描述              |
| -------- | ----------------- |
| 传输方式 | HTTPS             |
| 请求方式 | POST              |
| 字符编码 | 统一使用UTF-8编码 |
| 请求格式 | 表单              |
| 响应格式 | JSON              |
| 图片格式 | jpg/png/bmp       |
| 图片大小 | 1MB以下           |
| 文字长度 | 50个字符以下      |

#### Demo开发：

这个demo使用python3开发，包括maindow.py，QuestionClass.py，OcrQuestion.py 三个文件，分别为demo的界面、界面逻辑处理和ocr搜题方法的封装。

1. ##### 界面部分：

   UI 部分较简单，主要功能为选择待题目图片、选择批改结果存储路径。其布局代码如下：

   ```python
   root=tk.Tk()
   root.title(" youdao ocr question test")
   frm = tk.Frame(root)
   frm.grid(padx=''50'', pady=''50'')
   
   # 选题和结果保存按钮
   btn_get_file = tk.Button(frm, text=''选择题目图片'', command=get_files)
   btn_get_file.grid(row=0, column=0, ipadx=''3'', ipady=''3'', padx=''10'', pady=''20'')
   text1 = tk.Text(frm, width=''40'', height=''10'')
   text1.grid(row=0, column=1)
   btn_get_result_path=tk.Button(frm,text=''选择搜索结果路径'',command=set_result_path)
   btn_get_result_path.grid(row=1,column=0)
   text2=tk.Text(frm,width=''40'', height=''2'')
   text2.grid(row=1,column=1)
   
   
   # 搜题按钮
   btn_sure=tk.Button(frm,text="搜题",command=search_question_files)
   btn_sure.grid(row=4,column=1)
   
   root.mainloop()
   ```
   
   其中启动按钮btn_sure的绑定事件search_question_files()来根据题目照片搜题，并在完成后打开结果存储路径:
   
   ```python
   def search_question_files():
       question.start_ocr()
       os.system(''start ''+question.result_path)
   ```
   
2. ##### QuestionClass.py

   这里主要配合UI的逻辑，调用搜题方法。

   首先定义一个类Question:

   ```python
   class Question():
       def __init__(self,file_paths,result_path):	
           self.file_paths=file_paths		# 题目照片存储路径
           self.result_path=result_path	# 结果路径
   ```
   
   start_ocr()方法调用connect()方法依次搜题并保存结果。
   
   ```python
   def start_ocr(self):
       for file_path in self.file_paths:
           result=connect(file_path)
           print(file_path)
          self.save_result_format(file_path,result)
   ```
   
   从OcrQuestion.py的connect方法获取的结果是json格式，save_result_format()方法,解析从接口取得的接口，格式整理，保存结果到html：
   
   ```python
       def save_result_format(self,file_path,result):
           result_file_name=os.path.basename(file_path).split(''.'')[0]+''_result.html''
           f=open(self.result_path+''/''+result_file_name,''w'',encoding=''utf-8'')
           result_json= json.loads(result)
           if result_json[''errorCode''] == ''0'':
               data=result_json[''data'']
               questions=data["questions"]
               text=data["text"]
               f.write("题目识别：<br/>"+text)
               i=0
               for answers in questions:
                   i=i+1
                   subject="科目："+answers["subject"]+"<br>"
                   answer="答案：" +answers["answer"]+"<br>"
                   analysis="分析："+answers["analysis"]+"<br>"
                   knowledge="知识点："+answers["knowledge"]+"<br>"
                   print(subject+answer+analysis+knowledge)
                   result_each="<h3>搜题结果"+str(i)+"<br></h3>"
                   result_each=result_each+subject+answer+analysis+knowledge+"<br>=================这是一条分隔符============<br>"
                   f.write(result_each)
           else:
               f.write("result error code:"+result_json[''errorCode''])
   ```
   
   
   
3. ##### OcrQuestion.py

   OcrQuestion.py 中封装请求ocr搜题API的方法，其中最主要的方法是connect()：

   ```python
   def connect(pic_path):
       f = open(pic_path, ''rb'')  # 二进制方式打开图文件
       q = base64.b64encode(f.read()).decode(''utf-8'')  # 读取文件内容，转换为base64编码
       f.close()
   
       data = {}
       data[''q''] = q
       data[''signType''] = ''v2''
       curtime = str(int(time.time()))
       data[''curtime''] = curtime
       salt = str(uuid.uuid1())
       signStr = APP_KEY + truncate(q) + salt + curtime + APP_SECRET
       sign = encrypt(signStr)
       data[''appKey''] = APP_KEY
       data[''salt''] = salt
       data[''sign''] = sign
   
       response = do_request(data)
       result=response.content.decode(''utf-8'')
       print(result)
       return result
   ```

   ###### API响应结果示例
   
   ```json
   {
       "data":{
           "questions":[
               {
                   "score":0.9875,
                   "answer":"D",
                   "subject":"历史",
                   "id":"a9db8f1252778836c99204e5cf9d7738",
                   "analysis":"",
                   "type":"",
                   "content":"学者们认为，五四运动标志着中国民族意识极大觉醒，表现在<br />A．近代民族民主思想开始传播 B ．揭开了反帝反封建斗争的序幕<br />C．开启了近代中国的思想启蒙 D ．各阶层民众的广泛动员和参与",
                   "knowledge":""
               },
               {
                   "score":0.9875,
                   "answer":"D <br>注意题干“中国民族意识极大觉醒”，结合所学可知，在五四运动过程中，学生、工人、商人都投入到之中，即各阶层民众的广泛动员和参与，符合题意，故D项正确． <br>在戊戌变法前后，中国民族民主思想就已经开始传播，故A项错误． <br>五四运动是一次反帝反封的爱国运动，但不是反帝反封斗争的开始，在这时期还没有明确提出反帝反封的革命纲领，故B项错误． <br>中国近代是在新文化运动期间传播民主思想，进行了思想的启蒙，故C项错误． <br>故选D．",
                   "subject":"历史",
                   "id":"2f8b9c814f064131cc7b2bead54f15da",
                   "analysis":"本题考查五四运动．考查五四运动的意义．考查学生对基础知识的识记、运用能力．",
                   "type":"选择题",
                   "content":"学者们认为，五四运动标志着中国民族意识极大觉醒，表现在(　　) <p class="question_option">A.近代民族民主思想开始传播<br/>B.揭开了反帝反封建斗争的序幕<br/>C.开启了近代中国的思想启蒙<br/>D.各阶层民众的广泛动员和参与 </p>",
                   "knowledge":"/人类政治文明发展史/近代中国反侵略、求民主的潮流/五四运动"
               },
               {
                   "score":0.9875,
                   "answer":"D <br>【答案】 <p>D</p> <p></p>",
                   "subject":"历史",
                   "id":"48a28969d882f20b04ffec15c8f1b94c",
                   "analysis":"<p>题目问的五四运动，在戊戌变法前后，中国民族民主思想就已经开始传播，所以A不正确。五四运动是一次反帝反封的爱国运动，但不是反帝反封斗争的开始，在这时期还没有明确提出反帝反封的革命纲领，所以B不正确。中国近代是在新文化运动期间传播民主思想，进行了思想的启蒙，所以C不正确。在五四运动 过程中，学生、工人、商人都投入到之中，所以D正确。</p> <p> </p>",
                   "type":"选择题",
                   "content":"<p>学者们认为，五四运动标志着中国民族意识极大觉醒，表现在</p> <p></p> <p class="question_option">A.近代民族民主思想开始传播<br/>B.揭开了反帝反封建斗争的序幕<br/>C.开启了近代中国的思想启蒙<br/>D.各阶层民众的广泛动员和参与 </p>",
                   "knowledge":"/人类政治文明发展史/近代中国反侵略、求民主的潮流/中国共产党第一次全国代表大会"
               }
           ],
           "text":"学者们认为,五四运动标志着中国民族意识极大觉醒,表现在 A,近代民族民主思想开始传播B揭开了反帝反封建斗争的序幕 C,开启了近代中国的思想启蒙D。 各阶层民众的广泛动员和参与"
       },
       "errorCode":"0"
   }
   ```
   
   响应结果是以json形式输出，包含字段如下表所示：	

| 字段        | 含义                                                         |
| ----------- | ------------------------------------------------------------ |
| errorCode   | 识别结果错误码，一定存在。 详细信息可参见 [错误代码列表](http://ai.youdao.com/DOCSIRMA/html/拍照搜题/API文档/拍照搜题服务/拍照搜题服务-API文档.html#section-9) |
| data        | 数据                                                         |
| -text       | 图片题目OCR结果                                              |
| -questions  | 相关题目                                                     |
| --id        | 答案                                                         |
| --content   | 题目内容                                                     |
| --answer    | 答案                                                         |
| --analysis  | 解析                                                         |
| --knowledge | 知识点                                                       |



#### 效果展示

###### demo操作演示

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201228092147429.gif#pic_center)


###### 来看看结果吧：

数学题搜索结果展示：


![在这里插入图片描述](https://img-blog.csdnimg.cn/20201228092157712.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

历史题搜题结果

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201228092206917.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)



### 总结

有道智云的整体搜索API文档清晰，题目范围极广而且可以自动判断学科，搜索结果可谓“举一反三”，会返回几个可能的相近题目，很具有参考价值，值得推荐！数学解答题会返回相关图片、公式等，用在web项目中效果灰常不错。

项目地址：https://github.com/LemonQH/OcrQuestion', 1, 'post', 'publish', 'python', 'Pyhton,默认分类', '', 12, 1, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (7, '啊啊啊', 'footer.html', 1609561524, 1609561653, '<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>哈哈哈哈</title>
	</head>
	<body>
		哈哈哈哈
	</body>
</html>', 1, 'page', 'publish', null, null, null, 4, 0, 0, 0, null);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (8, '测试发布文章1', null, 1609563537, 1609563537, '# 测试发布文章1
测试发布文章1
测试发布文章1测试发布文章1
测试发布文章1
测试发布文章1
测试发布文章1', 1, 'post', 'publish', '测试', '默认分类', '', 4, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (9, '测试发布文章2', null, 1609565740, 1609565740, '测试发布文章2', 1, 'post', 'publish', '测试', '默认分类', '', 5, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (10, '测试发布文章3', null, 1609565749, 1609565749, '测试发布文章3', 1, 'post', 'publish', '测试', '默认分类', '', 3, 1, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (11, '测试发布文章4', null, 1609565760, 1609565760, '测试发布文章4', 1, 'post', 'publish', '测试', '默认分类', '', 1, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (12, '测试发布文章5', null, 1609565777, 1609565777, '测试发布文章5', 1, 'post', 'publish', '测试', '默认分类', '', 4, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (13, '测试文章5', null, 1609574655, 1609574655, '测试文章5', 1, 'post', 'publish', '测试', '默认分类', '', 0, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (14, '测试文章6', 'test6', 1609574674, 1609574674, '测试文章5', 1, 'post', 'publish', '测试', '默认分类', '', 0, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (15, '测试文章7', 'test7', 1609574729, 1609574729, '测试文章7', 1, 'post', 'publish', '测试', '默认分类', '', 1, 1, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (16, '测试9', null, 1609574789, 1609574789, '测试9', 1, 'post', 'publish', '测试', '默认分类', '', 11, 0, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (17, '测试8', null, 1609574808, 1609593015, '测试81', 1, 'post', 'publish', '测试', '默认分类', '', 13, 1, 1, 1, 1);
INSERT INTO jantent.t_contents (cid, title, slug, created, modified, content, author_id, type, status, tags, categories, thumbImg, hits, comments_num, allow_comment, allow_ping, allow_feed) VALUES (18, '手写了一个框架终于整明白了Java反射', null, 1609600474, 1609600474, '**`惊喜都在后面`**


# 一、获取class对象的方式



****

```java
//第1种，通过Class.forName("全类名")获取
Class c1 = Class.forName("reflect.Student");
System.out.println(c1);

//第2种,通过类名.class获取
Class c2 = Student.class;
System.out.println(c2);

//第3种，通过对象.getClass获取
Student st = new Student();
Class c3 = st.getClass();
System.out.println(c3);				
```



如果把这三个拿到的值做个比较的话：

```java
System.out.println(c1==c2);
System.out.println(c1==c3);
```


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113512831.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

> 会发现这三种拿到的值，都是相等的。
>
> 可以得出一个结论，在当前的jdk运行环境中，同一个.class字节码文件只被加载一次，被加载之后，第二次再去拿的话，就会直接引用之前的，所以是一样的。





# 二、Class类有什么功能



## （一）分析一个类中都有什么？

**我们先简单的分析一下在一个类中都有什么：**

```java
public class Student {

    private String name;


    public Student() {

    }

    public Student(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void printName(){
        System.out.println(this.name);
    }


}
```



我们看下图：

> 我们很常见的就有：`类名`,`变量`,`无参构造方法`,`有参构造方法`,`get和set方法`,`自定义方法`等



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113539725.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

## （二）我们想要什么



先来看一下我们的测试类：

```java
package reflect;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-16 20:19
 * @Description:
 */
public class Student {

    private String name;


    public String a;

    protected String b;

    String c;

    private String d;


    public Student() {}

    public Student(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void printName(){
        System.out.println(this.name);
    }


    @Override
    public String toString() {
        return "Student{" +
                "name=''" + name + ''\\'''' +
                ", a=''" + a + ''\\'''' +
                ", b=''" + b + ''\\'''' +
                ", c=''" + c + ''\\'''' +
                ", d=''" + d + ''\\'''' +
                ''}'';
    }
}

```





**我们当然都想要了。**



例如：

+ 1、获取类名
+ 2、获取成员变量
+ 3、获取构造方法
+ 4、获取成员方法



### 1、获取类名功能



`String`  `getName()`返回由 `类`对象表示的实体（类，接口，数组类，原始类型或空白）的名称，作为 `String` 。









### 2、获取成员变量功能

> **`设置和获取变量的值`**



#### （1）获取所有的成员变量

`Field[]`  `getFields()`   获取Public修饰的成员变量。



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113623128.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

例如我们定义四个级别的成员变量：

```java
public String a;

protected String b;

String c;

private String d;
```

再去获取一下试试：


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113635976.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)


#### （2）获取单个指定名称的成员变量

`Field`    `getField(String name)`   返回一个指定名字的public修饰的 `Field`对象。


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113656454.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)





到现在可以想一下，我们拿到了成员变量要干什么呢?



答：无非就是两个操作

+ 1、获取值
+ 2、设置值



Filed类有两个方法，分别是get和set：



`Object`  `get(Object obj)`返回该所表示的字段的值 `Field` ，到指定的对象上。



`void`  `set(Object obj, Object value)`  为某个Object所在的Field设置新值value。





1、获取值

```java
Field a =  studentClass.getField("a");

//获取公共成员变量的值
Student student = new Student();
Object value = a.get(student);
System.out.println("获取公共成员变量的值--->"+value);
```





2、设置值

```java
 Field a =  studentClass.getField("a");

//设置成员变量的值
a.set(student,"aaaaa");
System.out.println("设置成员变量的值--->"+student);
```




![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113712640.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)




#### （3）忽略权限获取所有成员变量

`Field[]` `getDeclaredFields()`  获取所有字段 。 



```java
//1.获取Student的Class对象
Class studentClass = Student.class;

Field[] declaredFields = studentClass.getDeclaredFields();

for (Field declaredField : declaredFields) {
    System.out.println(declaredField);
}
```






![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113726360.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)




#### （4）获取指定名称的变量

`Field`  `getDeclaredField(String name)`  获取单个指定名字的成员变量。



在这里如果我们直接获取的话，就会提示没有权限。


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113751439.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

我们可以忽略权限进行获取`d.setAccessible(true);//忽略权限`，通常也被称为暴力反射

```java
//1.获取Student的Class对象
Class studentClass = Student.class;

Field[] declaredFields = studentClass.getDeclaredFields();

for (Field declaredField : declaredFields) {
    System.out.println(declaredField);
}

System.out.println("-------");
Student stu = new Student();

Field d = studentClass.getDeclaredField("d");

d.setAccessible(true);//忽略权限

Object o = d.get(stu);
System.out.println(o);
```





![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113804847.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)





### 3、获取构造方法功能

> 创建对象





`Constructor<?>[]`  `getConstructors()`返回包含一个数组 `Constructor`对象反射由此表示的类的所有公共构造 `类`对象。



`Constructor`  `getConstructor(类... parameterTypes)`返回一个 `Constructor`对象，该对象反映 `Constructor`对象表示的类的指定的公共 `类`函数。



`Constructor<T>`  `getDeclaredConstructor(类<?>... parameterTypes)`返回一个 `Constructor`对象，该对象反映 `Constructor`对象表示的类或接口的指定 `类`函数。 



`Constructor<?>[]`  `getDeclaredConstructors()`返回一个反映 `Constructor`对象表示的类声明的所有 `Constructor`对象的数组 `类` 。





#### （1）获取指定参数构造方法

```java
//1.获取Student的Class对象
Class studentClass = Student.class;

												//参数的类型
Constructor constructor = studentClass.getConstructor(String.class);
Object a = constructor.newInstance("a");

System.out.println(constructor);
System.out.println(a);
```



**结果：**

```java
public reflect.Student(java.lang.String)
Student{name=''a'', a=''null'', b=''null'', c=''null'', d=''null''}
```





源码如下：

> 在源码中可以看出，这里的参数可以有多个



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113822140.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)


#### （2）获取所有的构造方法



```java
//1.获取Student的Class对象
Class studentClass = Student.class;

Constructor[] constructors = studentClass.getConstructors();
for (Constructor constructor : constructors) {
    System.out.println(constructor);
}
```



结果：

```java
public reflect.Student()
public reflect.Student(java.lang.String)
```





其余两个差不多，可以自行测试







#### （3）获取无参构造并创建对象方法1



```java
//1.获取Student的Class对象
Class studentClass = Student.class;

Constructor constructor = studentClass.getConstructor();
Object o = constructor.newInstance();

System.out.println(o);
```



#### （4）获取无参构造并创建对象方法2

```java
//1.获取Student的Class对象
Class studentClass = Student.class;
Object o1 = studentClass.newInstance();
System.out.println(o1);
```






### 4、获取成员方法功能

> 作用：**`获取方法、执行方法`**



`Method`  `getMethod(String name, 类<?>... parameterTypes)`返回一个 `方法`对象，它反映此表示的类或接口的指定公共成员方法 `类`对象。  



`Method[]`  `getMethods()`返回包含一个数组 `方法`对象反射由此表示的类或接口的所有公共方法 `类`对象，包括那些由类或接口和那些从超类和超接口继承的声明。



`Method`  `getDeclaredMethod(String name, 类<?>... parameterTypes)`返回一个 `方法`对象，它反映此表示的类或接口的指定声明的方法 `类`对象。 



 `Method[]`  `getDeclaredMethods()`返回包含一个数组 `方法`对象反射的类或接口的所有声明的方法，通过此表示 `类`对象，包括公共，保护，默认（包）访问和私有方法，但不包括继承的方法。



#### （1）获取所有方法



```java
//1.获取Student的Class对象
Class studentClass = Student.class;


Method[] methods = studentClass.getMethods();
for (Method method : methods) {
    System.out.println(method);
}
```



结果：

```java
public void reflect.Student.printName()
public java.lang.String reflect.Student.toString()
public java.lang.String reflect.Student.getName()
public void reflect.Student.setName(java.lang.String)
public final void java.lang.Object.wait(long,int) throws java.lang.InterruptedException
public final native void java.lang.Object.wait(long) throws java.lang.InterruptedException
public final void java.lang.Object.wait() throws java.lang.InterruptedException
public boolean java.lang.Object.equals(java.lang.Object)
public native int java.lang.Object.hashCode()
public final native java.lang.Class java.lang.Object.getClass()
public final native void java.lang.Object.notify()
public final native void java.lang.Object.notifyAll()
```



#### （2）获取指定方法并执行

```java
//1.获取Student的Class对象
Class studentClass = Student.class;

//获取对象
Constructor constructor = studentClass.getConstructor(String.class);
//创建对象  new
Object trueDei = constructor.newInstance("TrueDei");

//获取方法
Method printName = studentClass.getMethod("printName");

//调用方法  执行方法
printName.invoke(trueDei);
```



结果：

```java
TrueDei
```



#### （3）获取有参构造方法

```java
//1.获取Student的Class对象
Class studentClass = Student.class;

//获取对象
Constructor constructor = studentClass.getConstructor(String.class);
//创建对象  new
Object trueDei = constructor.newInstance("TrueDei");

//获取方法
Method printName = studentClass.getMethod("printName");

//调用方法  执行方法
printName.invoke(trueDei);

//获取有参数的set方法

Method setName = studentClass.getMethod("setName", String.class);
setName.invoke(trueDei,"不是TrueDei了，又修改了");

//再次执行打印方法
printName.invoke(trueDei);
```



结果：

```java
TrueDei
不是TrueDei了，又修改了
```





# 三、实战一：手写一个自己的框架

**需求：**

> 在不改动java代码的情况下，创建任意一个对象并执行任意一个方法



项目目录结构：

> 请忽略我其他的包



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113843428.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

我们现在有两个类：

```java
package reflect;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-16 23:40
 * @Description:
 */
public class P {

    public void aaa(){

        System.out.println("这是P下的aaaaaaaaaaaa");
    }
}

```





和;

```java
package reflect;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-16 20:19
 * @Description:
 */
public class Student {

    private String name="我是默认的名字";

    public Student() {}

    public Student(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void printName(){
        System.out.println(this.name);
    }

}

```



**application.properties配置文件内容：**

```properties
className=reflect.P  #要创建的类的全类名
methdName=aaa  #要执行的方法
```



**核心文件：”**

```java
package reflect;

import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Properties;

/**
 * @Auther: truedei
 * @Date: 2020 /20-6-16 20:18
 * @Description:反射
 */
public class ReflectTest {


    public static void main(String[] args) throws Exception {



        //1.加载配置文件
         //1.1 创建Properties对象
        Properties properties = new Properties();

        //1.2加载配置文件，转换为一个集合
        //1.2.1获取class目录下的配置文件
        ClassLoader classLoader = ReflectTest.class.getClassLoader();
        //获取class下的文件的字节流
        InputStream resourceAsStream = classLoader.getResourceAsStream("application.properties");
        //加载该字节流文件
        properties.load(resourceAsStream);


        //2.获取配置文件中定义的数据
        String className = properties.getProperty("className");
        String methdName = properties.getProperty("methdName");

        //3.加载该类进内存
        Class cls = Class.forName(className);

        //4.创建对象  (使用无参构造方法创建)
        Object o = cls.newInstance();

        //5.获取方法
        Method method = cls.getMethod(methdName);
        //6.执行方法
        method.invoke(o);


    }
}

```



**测试：**


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113901518.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)


修改一下一下配置文件：

```properties
className=reflect.Student
methdName=printName
```




![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113914429.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)


就可以看到这种效果了。





# 四、哪些地方使用了反射



写过java开发的同学来说，对于下面这个图片的内容肯定很熟悉，以后看到这种，就一定是反射。



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113928947.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)







# 五、实战二：使用反射原理，手写一个jdbc通用结果封装框架



## （一）需求

我有这么三个表：


![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617113949249.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

这三个表的内容我在：《爬取淘宝商品数据使用Java实现商品推荐系统(含sql文件、算法推导等)》

<https://blog.csdn.net/qq_17623363/article/details/106745518>

这篇文章已经使用了，想要表结构的话，可以去这篇文章去找。



在《爬取淘宝商品数据使用Java实现商品推荐系统(含sql文件、算法推导等)》这个试验中我使用了JDBC操作数据库。



代码如下：

```java
/**
	 * 获取所有的商品信息
	 * @return
	 * @param sqlId
	 */
public static List<ProductTable> getProductList(String sqlId){

    List<ProductTable> productTables = new ArrayList<>();

    try {
        st = conn.createStatement();
        rs = st.executeQuery("select * from product_table where productID in ("+sqlId+")");

        while (rs.next()){
            productTables.add(new ProductTable(
                rs.getInt("productID"),
                rs.getString("product_name"),
                rs.getDouble("price"),
                rs.getInt("volume"),
                rs.getString("shopp_name"),
                rs.getString("location"),
                rs.getInt("evaluate"),
                rs.getInt("collect")));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return productTables;
}

//获取用户订单信息
public static List<ProductOrder> getProductOrderList(Integer userId){
    List<ProductOrder> productTables = new ArrayList<>();

    String sql = "select * from product_order "+(userId==null?"":"where USER_ID="+userId);
    //		System.out.println("执行的 sql: "+sql);
    try {
        st = conn.createStatement();
        rs = st.executeQuery(sql);

        while (rs.next()){
            productTables.add(new ProductOrder(
                rs.getInt("order_id"),
                rs.getInt("user_id"),
                rs.getInt("product_id"),
                rs.getInt("gwcount")));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return productTables;
}

//获取用户信息
public static List<MemberUser> getMemberUserList(){
    List<MemberUser> productTables = new ArrayList<>();

    try {
        st = conn.createStatement();
        rs = st.executeQuery("select * from member_user");

        while (rs.next()){
            productTables.add(new MemberUser(
                rs.getInt("user_id"),
                rs.getString("user_name")));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return productTables;
}
```



初学的时候感觉很好，我只要把结果集重新封装一下就可以拿到一个对象形式的数据了。



随着技术的不断增长，也想着这种办法太低级了，有没有一种更好的办法来实现呢？



就想到了反射可以实现。经过实践结果是可以的。下面一起来看一下。





## （二）创建一个类作为工具类（PEU）



### 1、名字由来

暂且起名字为：`PEU`

P:Public

E:Entity

U:Util

寓意为：`公共的实体类创建工具`



### 2、PEU说明

#### （1）createEntity方法详解

**功能**

> 通过类的字节码和数据库结果集返回单个查询结果



**代码结构：**

```java
public Object createEntity(Class cls, ResultSet rs) {}
```



**参数说明：**

> 这个方法需要传递两个参数，分别为`Class`和`ResultSet`类型的数据；
>
> `Class cls`：我们最终要通过反射封装实体类的类名，可以有三种办法拿到，这不不在说明。前面已经说的很清楚了。
>
> `ResultSet rs`：通过sql查询的结果集，需要拿到里面的数据，所以必须要有此参数。



**返回值：**

> Object：最终要把一个封装好的实体类（包含结果）返回





**该方法全部代码：**

> 代码注释很详细，就不说了，都是反射的基本用法

```java
 /**
     * 返回一个实体类数据（单个结果）
     * @param cls
     * @param rs
     * @return
     */
public Object createEntity(Class cls, ResultSet rs) {

    Object entity = null;
    try {
        //1.获取对象
        Constructor constructor = cls.getConstructor();

        //2.获取无参构造方法，通过无参构造方法创建一个对象
        entity = constructor.newInstance();

        //ResultSet 结果集移动一下个指针
        rs.next();

        //获取所有的变量
        Field[] declaredFields = cls.getDeclaredFields();
        for (Field declaredField : declaredFields) {
            //忽略权限
            declaredField.setAccessible(true);

            //通过变量名字，设置值，值在entity对象中
            //rs.getObject(字段名)：通过这个拿到数据库中的数据
            declaredField.set(entity,rs.getObject(declaredField.getName()));
        }

    } catch (InstantiationException e) {
        e.printStackTrace();
    } catch (IllegalAccessException e) {
        e.printStackTrace();
    } catch (NoSuchMethodException e) {
        e.printStackTrace();
    } catch (InvocationTargetException e) {
        e.printStackTrace();
    }  catch (SQLException e) {
        e.printStackTrace();
    }

    //把Object对象强转成T泛型
    return entity;
}
```



#### （2）createEntityList方法详解



**功能**

> 通过类的字节码和数据库结果集返回一个List集合



**代码结构：**

```java
List<Object> createEntityList(Class cls, ResultSet rs) {}
```



**参数说明：**

> 这个方法需要传递两个参数，分别为`Class`和`ResultSet`类型的数据；
>
> `Class cls`：我们最终要通过反射封装实体类的类名，可以有三种办法拿到，这不不在说明。前面已经说的很清楚了。
>
> `ResultSet rs`：通过sql查询的结果集，需要拿到里面的数据，所以必须要有此参数。



**返回值：**

> List<Object>：最终要把一个封装好的集合（包含结果）返回





```java
/**
     * 返回一个集合数据
     * @param cls
     * @param rs
     * @return
     */
public List<Object> createEntityList(Class cls, ResultSet rs) {

        List<Object> entityList = new ArrayList<>();
        try {
            //1.获取对象
            Constructor constructor = cls.getConstructor();

            //ResultSet 结果集移动一下个指针
            while (rs.next()){
                //2.获取无参构造方法，通过无参构造方法创建一个对象
                Object entity = constructor.newInstance();

                //获取所有的变量
                Field[] declaredFields = cls.getDeclaredFields();
                for (Field declaredField : declaredFields) {
                    //忽略权限
                    declaredField.setAccessible(true);

                    //通过变量名字，设置值，值在entity对象中
                    //rs.getObject(字段名)：通过这个拿到数据库中的数据
                    declaredField.set(entity,rs.getObject(declaredField.getName()));
                }

                //塞到list中
                entityList.add(entity);
            }


        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }  catch (SQLException e) {
            e.printStackTrace();
        }

        return entityList;
    }
```



## （三）PEU全部代码

```java
package cn.util;

import cn.entity.MemberUser;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * PEU(Public Entity Util)公共的实体类创建工具
 * @Auther: truedei
 * @Date: 2020 /20-6-16 23:53
 * @Description: 通用实体类创建工具
 */
public class PEU{


    /**
     * 返回一个实体类数据（单个结果）
     * @param cls
     * @param rs
     * @return
     */
    public Object createEntity(Class cls, ResultSet rs) {

        Object entity = null;
        try {
            //1.获取对象
            Constructor constructor = cls.getConstructor();

            //2.获取无参构造方法，通过无参构造方法创建一个对象
             entity = constructor.newInstance();

             //ResultSet 结果集移动一下个指针
            rs.next();

            //获取所有的变量
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field declaredField : declaredFields) {
                //忽略权限
                declaredField.setAccessible(true);

                //通过变量名字，设置值，值在entity对象中
                //rs.getObject(字段名)：通过这个拿到数据库中的数据
                declaredField.set(entity,rs.getObject(declaredField.getName()));
            }

        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }  catch (SQLException e) {
            e.printStackTrace();
        }

        //把Object对象强转成T泛型
        return entity;
    }

    /**
     * 返回一个集合数据
     * @param cls
     * @param rs
     * @return
     */
    public List<Object> createEntityList(Class cls, ResultSet rs) {

        List<Object> entityList = new ArrayList<>();
        try {
            //1.获取对象
            Constructor constructor = cls.getConstructor();

            //ResultSet 结果集移动一下个指针
            while (rs.next()){
                //2.获取无参构造方法，通过无参构造方法创建一个对象
                Object entity = constructor.newInstance();

                //获取所有的变量
                Field[] declaredFields = cls.getDeclaredFields();
                for (Field declaredField : declaredFields) {
                    //忽略权限
                    declaredField.setAccessible(true);

                    //通过变量名字，设置值，值在entity对象中
                    //rs.getObject(字段名)：通过这个拿到数据库中的数据
                    declaredField.set(entity,rs.getObject(declaredField.getName()));
                }

                //塞到list中
                entityList.add(entity);
            }


        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }  catch (SQLException e) {
            e.printStackTrace();
        }

        return entityList;
    }
}

```





## （四）测试



### 1、测试1：查询单条数据

```java
	/**
	 * 测试1：自动封装单个实体结果
	 * @param userId
	 */
	public static void tongyongTest1(Integer userId){
		PEU peu = new PEU();


		List<MemberUser> productTables = new ArrayList<>();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from product_order where ORDER_ID="+userId);

			ProductOrder memberUser = (ProductOrder)peu.createEntity(ProductOrder.class,rs);

			System.out.println(memberUser);


		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


public static void main(String[] args) {
		tongyongTest1(1);

}
```



**测试结果：**

```shell
ProductOrder{order_id=1, user_id=1, product_id=1, gwcount=15}
ProductOrder{order_id=2, user_id=2, product_id=3, gwcount=42}
ProductOrder{order_id=3, user_id=3, product_id=4, gwcount=2}
```




![在这里插入图片描述](https://img-blog.csdnimg.cn/202006171141142.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

### 2、测试2：切换一个表查询

> 可以看到我只修改了一点代码就可以了

```java
public static void tongyongTest1(Integer userId){
		PEU peu = new PEU();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from member_user where USER_ID="+userId);

			MemberUser memberUser = (MemberUser)peu.createEntity(MemberUser.class,rs);

			System.out.println(memberUser);


		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
```



结果图：



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617114133668.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)



### 3、测试3：查询一个集合的数据

```java
/**
	 * 测试2：自动封装单个实体结果
	 */
	public static void tongyongTest2(){
		PEU peu = new PEU();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from member_user ");

			List<MemberUser> entityList = (List)peu.createEntityList(MemberUser.class, rs);

			for (MemberUser memberUser : entityList) {
				System.out.println(memberUser);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
```





结果：



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617114159938.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

```powershell
MemberUser{user_id=1, user_name=''郑成功''}
MemberUser{user_id=2, user_name=''小红''}
MemberUser{user_id=7, user_name=''小李''}
MemberUser{user_id=19, user_name=''郑晖''}
MemberUser{user_id=10, user_name=''张三''}
MemberUser{user_id=11, user_name=''二龙湖浩哥''}
MemberUser{user_id=12, user_name=''张三炮''}
MemberUser{user_id=13, user_name=''赵四''}
MemberUser{user_id=14, user_name=''刘能''}
MemberUser{user_id=15, user_name=''刘能逗''}
```





### 4、测试4：切换一个表查询集合数据

```java
/**
	 * 测试2：自动封装单个实体结果
	 */
	public static void tongyongTest2(){
		PEU peu = new PEU();

		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from product_order ");

			List<ProductOrder> entityList = (List)peu.createEntityList(ProductOrder.class, rs);

			for (ProductOrder productOrder : entityList) {
				System.out.println(productOrder);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		tongyongTest2();
	}
```



结果：



![在这里插入图片描述](https://img-blog.csdnimg.cn/20200617114213761.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

结果：

```powershell
ProductOrder{order_id=1, user_id=1, product_id=1, gwcount=15}
ProductOrder{order_id=2, user_id=2, product_id=3, gwcount=42}
ProductOrder{order_id=3, user_id=3, product_id=4, gwcount=2}
ProductOrder{order_id=4, user_id=4, product_id=4, gwcount=20}
ProductOrder{order_id=5, user_id=1, product_id=2, gwcount=21}
ProductOrder{order_id=6, user_id=5, product_id=1, gwcount=null}
ProductOrder{order_id=7, user_id=5, product_id=2, gwcount=null}
ProductOrder{order_id=8, user_id=5, product_id=3, gwcount=null}
ProductOrder{order_id=9, user_id=6, product_id=2, gwcount=null}
ProductOrder{order_id=10, user_id=6, product_id=5, gwcount=null}
ProductOrder{order_id=11, user_id=7, product_id=1, gwcount=null}
ProductOrder{order_id=12, user_id=7, product_id=2, gwcount=null}
ProductOrder{order_id=13, user_id=7, product_id=5, gwcount=null}
ProductOrder{order_id=14, user_id=3, product_id=1, gwcount=null}
```

# 六、有秘密告诉你
 >如果对你有帮助，可以分享给你身边的朋友。或者给俺点个大大的赞和大大的评论，点赞和评论就是给我最大的支持，感谢。
水平有限，难免会有疏漏或者书写不合理的地方，欢迎交流讨论。
>作者：**`TrueDei`**
>作者唯一博客ＣＳＤＮ：[https://truedei.blog.csdn.net/](https://truedei.blog.csdn.net/)
>转载说明：**`如需转载请注明原地址和作者名。`**


>如果喜欢我的文章，还没看够可以关注我，我会用心写好每一篇文章。




**`我已加入CSDN合伙人计划`**

亲爱的各位粉丝：可以添加我的CSDN官方企业微信号，**`和我近距离互动聊天，为您答疑解惑`**。
> 直接使用微信扫码即可，不用下载企业微信。

![在这里插入图片描述](https://img-blog.csdnimg.cn/20200610233930795.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70#pic_center)

也可以加入此群：`到期后，可以加我上面微信哦`
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200614141520468.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzE3NjIzMzYz,size_16,color_FFFFFF,t_70)', 1, 'post', 'publish', 'Java反射', 'Java后端', '', 39, 0, 1, 1, 1);