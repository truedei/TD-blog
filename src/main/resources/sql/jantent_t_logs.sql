create table t_logs
(
    id        int(11) unsigned auto_increment
        primary key,
    action    varchar(100)  null,
    data      varchar(2000) null,
    author_id int(10)       null,
    ip        varchar(20)   null,
    created   int(10)       null
)
    charset = utf8;

INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (1, '登录后台', null, 1, '127.0.0.1', 1609321938);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (2, '登录后台', null, 1, '127.0.0.1', 1609325788);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (3, '登录后台', null, 1, '127.0.0.1', 1609331008);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (4, '登录后台', null, 1, '127.0.0.1', 1609332338);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (5, '保存系统设置', '{"site_record":"","site_description":"郑晖的博客","site_title":"TrueDei","site_theme":"jantent","allow_install":""}', 1, '127.0.0.1', 1609332601);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (6, '登录后台', null, 1, '127.0.0.1', 1609332753);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (7, '登录后台', null, 1, '127.0.0.1', 1609335872);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (8, '登录后台', null, 1, '127.0.0.1', 1609377310);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (9, '登录后台', null, 1, '127.0.0.1', 1609377845);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (10, '登录后台', null, 1, '127.0.0.1', 1609379883);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (11, '登录后台', null, 1, '127.0.0.1', 1609382608);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (12, '登录后台', null, 1, '127.0.0.1', 1609385113);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (13, '登录后台', null, 1, '124.200.101.51', 1609385762);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (14, '登录后台', null, 1, '124.200.101.51', 1609392390);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (15, '删除附件', '/upload/2020/12/5v7culbjhsig7phb18vb58ujsh.jpg', 1, '124.200.101.51', 1609392922);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (16, '登录后台', null, 1, '127.0.0.1', 1609402712);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (17, '登录后台', null, 1, '124.200.101.51', 1609413671);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (18, '登录后台', null, 1, '127.0.0.1', 1609437512);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (19, '登录后台', null, 1, '127.0.0.1', 1609462284);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (20, '登录后台', null, 1, '111.198.226.209', 1609485185);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (21, '登录后台', null, 1, '127.0.0.1', 1609485358);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (22, '登录后台', null, 1, '127.0.0.1', 1609515981);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (23, '登录后台', null, 1, '111.198.226.209', 1609516016);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (24, '删除附件', '/upload/2021/01/ohnk86taochtpq1fb17eq2irh1.jpg', 1, '127.0.0.1', 1609516267);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (25, '删除附件', '/upload/2021/01/6m6bjsb25aha6plljdh5mofto8.jpg', 1, '127.0.0.1', 1609516271);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (26, '删除附件', '/upload/2021/01/seids1tktcjmnqtiasuijv9vgn.jpg', 1, '127.0.0.1', 1609516971);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (27, '删除附件', '/upload/2021/01/qkdgn9ej8ig6opkas4mo42mqg2.jpg', 1, '111.198.226.209', 1609517632);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (28, '登录后台', null, 1, '127.0.0.1', 1609518298);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (29, '登录后台', null, 1, '127.0.0.1', 1609518399);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (30, '登录后台', null, 1, '127.0.0.1', 1609518400);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (31, '登录后台', null, 1, '127.0.0.1', 1609520984);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (32, '登录后台', null, 1, '127.0.0.1', 1609521208);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (33, '登录后台', null, 1, '127.0.0.1', 1609553419);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (34, '登录后台', null, 1, '127.0.0.1', 1609553565);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (35, '登录后台', null, 1, '127.0.0.1', 1609553915);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (36, '保存系统设置', '{"site_record":"11111","site_description":"郑晖的博客","site_title":"TrueDei","site_theme":"jantent","allow_install":""}', 1, '127.0.0.1', 1609561425);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (37, '登录后台', null, 1, '111.198.224.71', 1609571580);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (38, '登录后台', null, 1, '127.0.0.1', 1609574632);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (39, '登录后台', null, 1, '111.198.224.71', 1609576130);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (40, '登录后台', null, 1, '127.0.0.1', 1609577930);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (41, '登录后台', null, 1, '111.198.224.71', 1609585301);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (42, '登录后台', null, 1, '127.0.0.1', 1609585557);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (43, '登录后台', null, 1, '127.0.0.1', 1609586387);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (44, '登录后台', null, 1, '127.0.0.1', 1609586707);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (45, '登录后台', null, 1, '127.0.0.1', 1609589776);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (46, '登录后台', null, 1, '127.0.0.1', 1609590088);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (47, '登录后台', null, 1, '127.0.0.1', 1609591696);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (48, '登录后台', null, 1, '127.0.0.1', 1609591764);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (49, '登录后台', null, 1, '127.0.0.1', 1609591934);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (50, '登录后台', null, 1, '127.0.0.1', 1609592811);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (51, '登录后台', null, 1, '127.0.0.1', 1609593400);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (52, '登录后台', null, 1, '127.0.0.1', 1609593527);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (53, '登录后台', null, 1, '127.0.0.1', 1609593605);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (54, '登录后台', null, 1, '111.198.224.71', 1609599791);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (55, '登录后台', null, 1, '111.198.224.71', 1609599876);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (56, '登录后台', null, 1, '111.198.224.71', 1609600454);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (57, '登录后台', null, 1, '111.198.224.71', 1609600510);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (58, '登录后台', null, 1, '111.198.224.71', 1609601322);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (59, '登录后台', null, 1, '127.0.0.1', 1609615221);
INSERT INTO jantent.t_logs (id, action, data, author_id, ip, created) VALUES (60, '登录后台', null, 1, '111.198.228.131', 1610109974);