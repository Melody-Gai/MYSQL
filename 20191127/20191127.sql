/*CREATE DATABASE java20;
show databases;
use java20;
select databases ();

MySQL  即SQL语言
分为： DDL  （不重要）  
       DML   （重要） 
	   DCL    权限管理

SQL语句中
1、关键字不区分大小写
2、每条语句必须用;结尾，还可以用\G结尾
3、对于引号的应用：不区分‘’和“”
反引号（键盘上1前的`）用在库名，表名，字段名（可以不写）

关于库的命令
1、建库    CREATE DATABASE`库名`;
2、SHOW DATABASE;
3、USE``库名`；
4、DROP DATABASE`库名`；
5、SELECT DATABASE();

关于表的操作（必须在USE库之后）
1、建表    CREATE TABLE`表名`;(
	...列的定义（column）
)
2、SHOW TABLE;
3、DROP TABLE`表名`；
4、SHOW CREATE TABLE `表名`；
5、DESC `表名`；
*/

图书管理系统
CREATE DATABASE bms;
USE bms;
CREATE TABLE books (
	name VARCHAR(100),
	author VARCHAR(100),
	price INT,
	category VARCHAR(20),
	is_borrowed TINYINT
);
上架：
INSERT INTO books
	(name, author, price, category, is_borrowed)
	VALUES
	("三国演义","罗贯中",8800,"古典名著",0);
	("三体", "刘慈欣", 6600, "科幻小说", 0),
	("Java从编程到放弃", "高博", 100, "心理建设", 0);
查看已有书籍：
SELECT * FROM books;

借书：
UPDATE books SET is_borrowed = 1 WHERE name = "三国演义";
下架:
DELETE FROM books WHERE name = "三体";





















