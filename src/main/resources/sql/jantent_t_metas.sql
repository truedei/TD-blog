create table t_metas
(
    mid         int unsigned auto_increment
        primary key,
    name        varchar(200)            null,
    slug        varchar(200)            null,
    type        varchar(32)  default '' not null,
    description varchar(200)            null,
    sort        int unsigned default 0  null,
    parent      int unsigned default 0  null
)
    charset = utf8;

create index slug
    on t_metas (slug);

INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (1, '测试', '测试', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (2, '默认分类', '默认分类', 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (3, '算法', '算法', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (4, 'IT技巧', 'IT技巧', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (5, '百度', 'http://www.baidu.com', 'link', '', 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (6, '网络', '网络', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (7, '数据库', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (8, '算法', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (9, '后端', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (10, '计算机网络', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (11, 'Java后端', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (12, 'linux', 'linux', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (13, 'python', 'python', 'tag', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (14, 'Pyhton', null, 'category', null, 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (15, 'CSDN', 'https://truedei.blog.csdn.net/', 'link', 'https://img-home.csdnimg.cn/images/20201124032511.png', 0, 0);
INSERT INTO jantent.t_metas (mid, name, slug, type, description, sort, parent) VALUES (16, 'Java反射', 'Java反射', 'tag', null, 0, 0);