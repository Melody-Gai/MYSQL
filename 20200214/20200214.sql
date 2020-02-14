CREATE DATABASE java20_2014 CHARSET utf8mb4;
USE java20_2014;

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

INSERT INTO users (username,password) VALUES ('chenpeixin','123');
INSERT INTO users (username,password) VALUES ('?','?');

SELECT id,username FROM users WHERE username = 'chenpeixin' AND password = '123';

INSERT INTO articles(author_id,title,content) VALUES (1,'title','shfidshv');

SELECT id,author_id,title,content FROM articles WHERE id = 1;
SELECT id,author_id,title,content FROM articles WHERE id = ?;
SELECT id,username FROM users WHERE id = {author_id}

SELECT
	articles.id, author_id, title, content,
	users.id,username
FROM 
	articles,users
WHERE author_id = users.id

SELECT COUNT(*)FROM articles;
SELECT COUNT(*),author_id FROM articles GROUP BY author_id;
SELECT author_id,COUNT(*)count FROM articles GROUP BY author_id ORDER BY count;
SELECT author_id,COUNT(*)count FROM articles GROUP BY author_id HAVING count > 3 ORDER BY count;

SELECT classes.name, classes











