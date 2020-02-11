
CREATE DATABASE java20_0211 CHARSET utf8mb4;
USE java20_0211;

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(255) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL
);

CREATE TABLE articles (
	id INT PRIMARY KEY AUTO_INCREMENT,
	author_id INT NOT NULL,
	title VARCHAR(255),
	content TEXT
);



用户注册
INSERT INTO users (username, password) VALUES (‘chenpeixin’, ‘123’);
INSERT INTO users (username, password) VALUES (‘?, ‘?’);

用户登录
SELECT id, username FROM users WHERE username = ‘chenpeixin’ AND password = ‘123’;

发表文章
INSERT INTO articles(author_id, title, content) VALUES (1,'title','sjifihfuehfh');
文章的详情页
分别查询：
SELECT id,author_id,title,content FROM articles WHERE id = 1;
SELECT id,author_id,title,content FROM articles WHERE id = ?
SELECT id,username FROM users WHERE id = {author_id}
联表查询：
SELECT
	articles.id,author_id,title,content,
	users.id,username
FROM
	articles,users
WHERE author_id = users.id //可加可不加AND articles.id = 1;
聚合查询：（统计每个人发表的文章数量，根据id要分组）
SELECT COUNT(*)FROM articles;
SELECT COUNT(*),author_id FROM articles GROUP BY author_id;
SELECT author_id,COUNT(*)count FROM articles GROUP BY author_id ORDER BY count;
SELECT author_id,COUNT(*)count FROM articles GROUP BY author_id HAVING count > 3 ORDER BY count;
文章的列表页






