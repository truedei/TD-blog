create table t_attach
(
    id        int(11) unsigned auto_increment
        primary key,
    fname     varchar(100) default '' not null,
    ftype     varchar(50)  default '' null,
    fkey      varchar(100) default '' not null,
    author_id int(10)                 null,
    created   int(10)                 not null
)
    charset = utf8;

