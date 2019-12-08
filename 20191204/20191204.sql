登数据库mysql -uroot -p

CREATE TABLE students (
	id INT;
	sn INT COMMENT '学号',
	name VARCHAR(20) COMMENT '姓名',

);

DROP TABLE IF EXISTS student;
CREATE TABLE student (
id INT,
sn INT comment '学号',
name VARCHAR(20) comment '姓名',
qq_mail VARCHAR(20) comment 'QQ邮箱'
);

DROP TABLE IF EXISTS java20;
CREATE TABLE exam_result (
id INT,
name VARCHAR(20),
chinese DECIMAL,
math DECIMAL,
english DECIMAL
);
DROP DATABASE [IF EXISTS] db_name;

INSERT INTO exam_result (id,name, chinese, math, english) VALUES
(1,'唐三藏', 67, 98, 56),
(2,'孙悟空', 87.5, 78, 77),
(3,'猪悟能', 88, 98, 90),
(4,'曹孟德', 82, 84, 67),
(5,'刘玄德', 55.5, 85, 45);










