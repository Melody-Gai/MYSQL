CREATE DATABASE java_20100209;
USE java_20100209;
CREATE TABLE students(
	name VARCHAR (20),
	gender VARCHAR(3) COMMENT '性别';
	age INT,
	
);
mysql -uroot -p;

CREATE DATABASE java20_0210;
USE java20_0210;
SELECT DATABASE();

CREATE TABLE users(
	id INT,
	name VARCHAR
);

SELECT * FROM java20_0210;

CREATE DATABASE java20_20191211;
USE java20_20191211;
CREATE TABLE students (
	name VARCHAR(20),
	gender VARCHAR(3) COMMENT '性别',
	age INT,
	height DOUBLE COMMENT '身高',
	weight DOUBLE COMMENT '体重'
);

INSERT INTO students (name, gender, age, height, weight) VALUES
('唐三藏', '男', 18, 1.6,56),
('孙悟空', '保密', 500, 56,67),
('猪八戒', '男', 24, 180,78),
('沙悟净', '男', 18, 178,55),
('白龙马', '女', 66, 144,77);

SELECT * FROM students;

INSERT INTO students(name, gender,age,height,weight) VALUES
("孙悟空",'男',18,160,30),

SELECT * FROM exam_result WHERE CHINESE < 90;

SELECT * FROM students WHERE age <= 18;

SELECT * from students WHERE (height / weight) >= 2.1;

SELECT name FROM students ORDER BY age DESC LIMIT 1 OFFSET 2;

UPDATE exam_result SET math = 80 WHERE name = "孙悟空";
UPDATE students SET gender = "女" WHERE name = "孙悟空";

SELECT name,ENGLISH,ENGLISH + 10 FROM exam_result;
UPDATE students SET age = age + 1;

SELECT * FROM students ORDER BY height;

DELETE FROM exam_result WHERE name = "孙悟空";
DELETE FROM students WHERE name = '白龙马';
DELETE FROM students WHERE name LIKE '%孙悟空%';

CREATE TABLE teachers(
	name VARCHAR(20) UNIQUE COMMENT '姓名',
	gender VARCHAR(3) NOT NULL DEFAULT'保密'COMMENT'性别',
	age  INT NOT NULL DEFAULT 0 COMMENT '年龄',
	height DOUBLE NOT NULL DEFAULT 0 COMMENT '身高',
	weight DOUBLE NOT NULL DEFAULT 0 COMMENT '体重'
);

INSERT INTO teachers (name) VALUES ('玉皇大帝');
INSERT INTO teachers (name) VALUES (NULL);
INSERT INTO teachers (name) VALUES (NULL);

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







