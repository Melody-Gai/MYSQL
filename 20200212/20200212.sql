DROP DATABASE IF EXISTS java20_0212;

CREATE DATABASE java20_0212 CHARSET utf8mb4;
USE java20_0212;

create table classes(
	id int primary key auto_increment,
	name varchar(255),
	`desc` varchar(255)
);

create table student (
	id int primary key auto_increment,
	sn int,
	name varchar(255),
	qq_mail varchar(255),
	classes_id int
);

create table course (
	id int primary key auto_increment,
	name varchar(255)
);

create table score (
	student_id int,
	course_id int,
	score float
);

insert into classes(name, `desc`) values 
('计算机系2019级1班', '学习了计算机原理、C和Java语言、数据结构和算法'),
('中文系2019级3班','学习了中国传统文学'),
('自动化2019级5班','学习了机械自动化');

insert into student(sn, name, qq_mail, classes_id) values
('09982','黑旋风李逵','xuanfeng@qq.com',1),
('00835','菩提老祖',null,1),
('00391','白素贞',null,1),
('00031','许仙','xuxian@qq.com',1),
('00054','不想毕业',null,1),
('51234','好好说话','say@qq.com',2),
('83223','tellme',null,2),

('09527','老外学中文','foreigner@qq.com',2);
//
insert into student(sn, name, qq_mail, classes_id) values
('35427','幽灵人',null,8);
insert into course(name) values
('Java'),('中国传统文化'),('计算机原理'),('语文'),('高阶数学'),('英文');

insert into score(score, student_id, course_id) values
-- 黑旋风李逵
(70.5, 1, 1),(98.5, 1, 3),(33, 1, 5),(98, 1, 6),
-- 菩提老祖
(60, 2, 1),(59.5, 2, 5),
-- 白素贞
(33, 3, 1),(68, 3, 3),(99, 3, 5),
-- 许仙
(67, 4, 1),(23, 4, 3),(56, 4, 5),(72, 4, 6),
-- 不想毕业
(81, 5, 1),(37, 5, 5),
-- 好好说话
(56, 6, 2),(43, 6, 4),(79, 6, 6),
-- tellme
(80, 7, 2),(92, 7, 6);

常用的内联查询：
SELECT classes.name, classes.`desc`, student.name FROM classes, student WHERE classes.id = student.classes_id;

SELECT classes.name, student.name FROM classes INNER JOIN student ON classes.id = student.classes_id;

SELECT classes.name,student.name FROM classes JOIN student ON classes.id = student.classes_id;

左外联：
SELECT classes.name, student.name FROM classes LEFT JOIN student ON classes.id = student.classes_id;

右外联：
SELECT classes.name, student.name FROM classes RIGHT JOIN student ON classes.id = student.classes_id;

内联查询 班级名称、学生姓名、课程名称、该课程的成绩

SELECT 
c.name, s.name, co.name, sc.score 
FROM classes c, student s, course co, score sc 
WHERE c.id = s.classes_id AND s.id = sc.student_id AND co.id = sc.course_id;

自连接：
SELECT * FROM score s1 WHERE course_id = 1;
SELECT * FROM score s2 WHERE course_id = 3;
SELECT s1.* FROM score s1,score s2 WHERE s1.course_id = 1 AND s2.course_id = 3 AND s1.score < s2.score;

子查询：
select classes_id from student where name = '不想毕业';
select * from student where classes_id = 1 AND name != '不想毕业';
合并以上两句话：
select * from student where classes_id = (SELECT classes_id FROM student WHERE name = '不想毕业') AND name != '不想毕业';

查询 “语文“、”英语“的成绩
SELECT * FROM course WHERE name IN("语文","英文");
 SELECT * FROM score WHERE course_id IN(4,6);
 SELECT * FROM score WHERE course_id IN(SELECT id FROM course WHERE name IN('语文','英文'));
 
 select * 
from score sco
where exists (
    select sco.score from course cou where (name='语文' or name='英文') and cou.id = sco.course_id
);

select * 
from score sco 
where not exists (
    select sco.score 
    from course cou where (name!='语文' and name!='英文') and cou.id = sco.course_id
);

SELECT * FROM (SELECT c.name cname,s.name sname,co.name coname,sc.score FROM classes c,
	student s,course co,score sc WHERE c.id = s.classes_id AND s.id = sc.student_id AND 
	co.id = sc.course_id
) r WHERE score > 60;

调优查询的工具：
explain select * from test_user\G

事务：
CREATE TABLE accounts (
name VARCHAR(255),
balance INT
);

INSERT INTO accounts (name, balance) VALUES ('高博', 300), ('陈沛鑫', 500);
select * from accounts;

begin;
update accounts set balance = balance - 300 where name = '陈沛鑫';
update accounts set balance = balance + 300 where name = '高博';
commit;



