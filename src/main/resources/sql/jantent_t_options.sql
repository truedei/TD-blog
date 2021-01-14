create table t_options
(
    name        varchar(32)   default '' not null
        primary key,
    value       varchar(1000) default '' null,
    description varchar(200)             null
)
    charset = utf8;

INSERT INTO jantent.t_options (name, value, description) VALUES ('allow_install', '', null);
INSERT INTO jantent.t_options (name, value, description) VALUES ('site_block_ips', '', null);
INSERT INTO jantent.t_options (name, value, description) VALUES ('site_description', '郑晖的博客', null);
INSERT INTO jantent.t_options (name, value, description) VALUES ('site_record', '11111', null);
INSERT INTO jantent.t_options (name, value, description) VALUES ('site_theme', 'jantent', null);
INSERT INTO jantent.t_options (name, value, description) VALUES ('site_title', 'TrueDei', null);