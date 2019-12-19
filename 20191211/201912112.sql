E-R图（Entry实体 - Relationship关系）
     表：实体 or 关系
一对一的关系     1:1
一对多的关系     1:n
多对多的关系	 m:n

1、分解需求
2、优先找实体，其次找关系
3、借助E-R图描述实体与关系
4、设计属性（字段）：借助三大范式
5、描述属性的类型+约束
6、写出建表语句


小博客系统
CREATE DATABASE java201912112;
USE java201912112;

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE articles (
	id INT PRIMARY KEY AUTO_INCREMENT,
	author_id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	published_at DATETIME NOT NULL
);
CREATE TABLE comments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT NOT NULL,
	author_id INT NOT NULL,
	content TEXT NOT NULL,
	published_at DATETIME NOT NULL
);
CREATE TABLE user_article_like_relation(
	user_id INT NOT NULL,
	article_id INT NOT NULL,
	PRIMARY KEY(user_id,article_id)
);
注册用户
INSERT INTO users(username) VALUES('盖盖');
INSERT INTO users(username) VALUES('晨晨');
发表文章
SELECT id FROM users WHERE username = "盖盖";
INSERT INTO articles(author_id,title,content,published_at)
	VALUES(?,"论学习的重要性"，"非常重要""2019-12-11 21:39:00");
评论文章
SELECT id FROM users WHERE username = "晨晨";
SELECT id FROM users WHERE username = "晨晨";
	









