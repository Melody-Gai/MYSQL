CREATE DATABASE java20_20191211;
USE java20_20191211;
CREATE TABLE students (
	name VARCHAR(20),
	gender VARCHAR(3) COMMENT '性别',
	age INT,
	height DOUBLE COMMENT '身高',
	weight DOUBLE COMMENT '体重'
);

新增5名学生
INSERT INTO students (name, gender, age, height,weight) VALUES
('唐三藏', '男', 18, 1.6,56),
('孙悟空', '保密', 500, 56,67),
('猪八戒', '男', 24, 180,78),
('沙悟净', '男', 18, 178,55),
('白龙马', '女', 66, 144,77);

SELECT * FROM students;

INSERT INTO students (name,gender,age,height,weight) VALUES
("孙悟空",'男',18,160,30),

SELECT * FROM exam_result WHERE 语文 < 90;
//查询语文成绩 ( < 90 )

SELECT * FROM students WHERE age <= 18;

假设定义健康的标准：身高与体重之比<2.1
SELECT * FROM students WHERE (height/weight) >= 2.1;

找出年龄最大的人
//查询同学及总分，由高到低
SELECT name, 语文 + 英语 + 数学 FROM exam_result ORDER BY 语文 + 英语 + 数学 DESC;
//从 0 开始，筛选 n 条结果 
SELECT ... FROM table_name [WHERE ...] [ORDER BY ...] LIMIT n; //从 s 开始，筛选 n 条结果 

SELECT name FROM students [WHERE age] [ORDER BY age] LIMIT 1; //从 s 开始，筛选 n 条结果 

SELECT name FROM students ORDER BY age DESC LIMIT 1;

找出年龄第三大的一个人
SELECT name FROM students ORDER BY age DESC LIMIT 1 OFFSET 2;

把孙悟空的性别改成女

//将孙悟空同学的数学成绩变更为 80 分 
UPDATE exam_result SET math = 80 WHERE name = '孙悟空'; 

UPDATE students SET gender = '女' WHERE name = '孙悟空';

所有人年龄长一岁
SELECT name, 英语, 英语 + 10 FROM exam_result;
UPDATE students SET age = age + 1;

SELECT * FROM students ORDER BY height;

删除白龙马
//删除孙悟空同学的考试成绩 
DELETE FROM exam_result WHERE name = '孙悟空'; 
DELETE FROM students WHERE name = '白龙马';
DELETE FROM students WHERE name LIKE '%孙悟空%';












