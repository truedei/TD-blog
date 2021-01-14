create table t_relationships
(
    cid int unsigned not null,
    mid int unsigned not null,
    primary key (cid, mid)
)
    charset = utf8;

INSERT INTO jantent.t_relationships (cid, mid) VALUES (1, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (1, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (2, 3);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (2, 8);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (3, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (3, 4);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (4, 6);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (4, 10);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (5, 9);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (5, 12);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (6, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (6, 13);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (6, 14);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (8, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (8, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (9, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (9, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (10, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (10, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (11, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (11, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (12, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (12, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (13, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (13, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (14, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (14, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (15, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (15, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (16, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (16, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (17, 1);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (17, 2);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (18, 11);
INSERT INTO jantent.t_relationships (cid, mid) VALUES (18, 16);