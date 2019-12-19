CREATE TABLE users (
	usersname VARCHAR(3) NOT NULL 
)

姓名允许为空，但不能重复
性别，年龄，身高，体重不允许为空
性别默认为保密
年龄默认0
身高默认0
体重默认0

CREATE TABLE teachers (
	name VARCHAR(20) UNIQUE COMMENT '姓名',
	gender VARCHAR(3) NOT NULL DEFAULT '保密' COMMENT '性别',
	age  INT NOT NULL DEFAULT 0 COMMENT '年龄',
	height DOUBLE NOT NULL DEFAULT 0 COMMENT '身高',
	weight DOUBLE NOT NULL DEFAULT 0 COMMENT '体重'
);

INSERT INTO teachers (name) VALUES ('玉皇大帝');
INSERT INTO teachers (name) VALUES (NULL);
INSERT INTO teachers (name) VALUES (NULL);
//NULL 视为不重复的
SELECT * FROM teachers;

主键一般用自增INT数值
CREATE TABLE slavers (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) UNIQUE ,
	gender VARCHAR(3) NOT NULL DEFAULT '保密' ,
	age  INT NOT NULL DEFAULT 0 ,
	height DOUBLE NOT NULL DEFAULT 0 ,
	weight DOUBLE NOT NULL DEFAULT 0 
);
INSERT INTO slavers (name) VALUES ('陈胜');
INSERT INTO slavers (name) VALUES ('吴广');
SELECT * FROM slavers;

UNIQUE ： PRIMARY KEY
相同点：不允许重复
不同点：UNIQUE可以为NULL，

表的设计
1、表的三大范式
	1、字段不可再分。表中的每个字段含义都是独立的，不可再分的（业务相关的）
		学生表
		姓名年龄身高  ×      姓名/年龄/身高   √
	2、字段和完整主键有关系。前提每张表都有主键，表中的字段需要和主键有完整关系。
		成绩表（学号+课程）
		学号
		课程
		成绩
	3、字段和主键是直接关系。前提每张表都有主键，表中的字段和主键有直接关系，而不是间接关系

E-R图（Entry实体 - Relationship关系）
     表：实体 or 关系
一对一的关系     1:1
一对多的关系     1:n
多对多的关系	 m:n











