create table t_comments
(
    coid      int unsigned auto_increment
        primary key,
    cid       int unsigned default 0          null,
    created   int unsigned default 0          null,
    author    varchar(200)                    null,
    author_id int unsigned default 0          null,
    owner_id  int unsigned default 0          null,
    mail      varchar(200)                    null,
    url       varchar(200)                    null,
    ip        varchar(64)                     null,
    agent     varchar(200)                    null,
    content   text                            null,
    type      varchar(16)  default 'comment'  null,
    status    varchar(16)  default 'approved' null,
    parent    int unsigned default 0          null
)
    charset = utf8;

create index cid
    on t_comments (cid);

create index created
    on t_comments (created);

INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (1, 2, 1609343126, '郑晖测试评论', 0, 1, '8042965@qq.com', '', '127.0.0.1', null, '哇塞,6666,学到了', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (2, 2, 1609386117, '匿名', 0, 1, '164979@qq.com', '', '124.202.209.251', null, '哇:heavy_plus_sign:1
66666666', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (4, 6, 1609556753, '测试', 0, 1, '2@qq.com', '', '127.0.0.1', null, '不错啊啊啊啊啊啊啊啊啊', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (6, 10, 1609578715, '测试', 0, 1, '2@qq.com', '', '127.0.0.1', null, '6666666666666111', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (7, 1, 1609578736, 'aa', 0, 1, '2@qq.com', 'http://www.baidu.com', '111.198.224.71', null, '不错aaaaaa', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (8, 17, 1609578763, '测试', 0, 1, '2@qq.com', '', '127.0.0.1', null, '666666灌灌灌灌灌灌灌灌', 'comment', 'approved', 0);
INSERT INTO jantent.t_comments (coid, cid, created, author, author_id, owner_id, mail, url, ip, agent, content, type, status, parent) VALUES (9, 15, 1609578784, 'aa', 0, 1, '2@qq.com', '', '111.198.224.71', null, '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', 'comment', 'approved', 0);