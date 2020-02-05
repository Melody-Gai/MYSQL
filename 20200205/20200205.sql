登录数据库 mysql -uroot -p

CREATE TABLE students (
	id INT;
	sn INT COMMENT '学号',
	name VARCHAR(20) COMMENT '姓名',
);

DROP TABLE IF EXISTS students;
CREATE TABLE students (
	id INT,
	sn INT comment '学号'，
	name VARCHAR(20) comment '姓名',
	qq_mail VARCHAR(20) COMMENT 'QQ邮箱'
);

DROP TABLE IF EXISTS java;
CREATE TABLE exam_result (
	id INT,
	name VARCHAR(20),
	chinese DECIMAL,
	math DECIMAL,
	english DECIMAL
);

DROP DATABASE [IF EXISTS] db_name;

INSERT INTO exam_result(id,name,chinese,math,english) VALUES
(1,'唐三藏'，67，98，78),
(2,'唐以藏'，47，88，88),
(3,'唐四藏'，67，58，48),
(4,'唐二藏'，87，78，98),
(5,'唐一藏'，37，68，78);











