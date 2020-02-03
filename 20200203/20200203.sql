CREATE DATABASE java;
show databases;
use java;
select databases();

关于库的命令
1、建库 CREATE DATABASE'库名';
2、SHOW DATABASE;
3、USE'库名';
4、DROP DATABASE'库名';
5、SELECT DATABASE();

关于表的操作（必须在USE库之后）
1、建表 CREATE TABLE'表名';(

)
2、SHOW TABLE;
3、DROP TABLE'表名';
4、SHOW CREATE TABLE'表名';
5、DESC'表名'；

图书管理系统
CREATE DATABASE bms;
USE bms;
CREATE TABLE books(
	name VARCHAR(100),
	author VARCHAR(100),
	price INT,
	category VARCHAR(20),
	is_borrowed TINYINT
);

上架
INSERT INTO books
	(name,author,price,category,is_borrowed)
	VALUES
	("三国演义","罗贯中",8800,"古典名著",0);
	
查看已有书籍：
SELECT * FROM books;

借书：
UPDATE books SET is_borrowed = 1 WHERE name = "三国演义";

下架：
DELETE FROM books WHERE name  = '三国演义';








