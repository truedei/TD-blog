create table t_users
(
    uid         int unsigned auto_increment
        primary key,
    username    varchar(32)                    null,
    password    varchar(64)                    null,
    email       varchar(200)                   null,
    home_url    varchar(200)                   null,
    screen_name varchar(32)                    null,
    created     int unsigned default 0         null,
    activated   int unsigned default 0         null,
    logged      int unsigned default 0         null,
    group_name  varchar(16)  default 'visitor' null,
    constraint mail
        unique (email),
    constraint name
        unique (username)
)
    charset = utf8;

INSERT INTO jantent.t_users (uid, username, password, email, home_url, screen_name, created, activated, logged, group_name) VALUES (1, 'admin', 'a66abb5684c45962d887564f08346e8d', 'default@qq.com', null, 'admin', 1490756162, 0, 0, 'visitor');
INSERT INTO jantent.t_users (uid, username, password, email, home_url, screen_name, created, activated, logged, group_name) VALUES (2, 'zhenghui', 'a66abb5684c45962d887564f08346e8d', '8042965@qq.com', null, 'zhenghui', 1490756163, 0, 0, 'visitor');