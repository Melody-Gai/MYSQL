CREATE TABLE goods (
	goodsname VARCHAR(20) COMMENT '商品名称',
	price FLOAT COMMENT '商品价格',
	numbers INT COMMENT '商品库存',
	descripution VARCHAR(50) COMMENT '商品描述'
);

CREATE TABLE teacher (
	name VARCHAR(20) COMMENT '姓名',
	age INT COMMENT '年龄',
	height FLOAT COMMENT '身高',
	weight FLOAT COMMENT '体重',
	sex VARCHAR(20) COMMENT '性别',
	sn VARCHAR(20) COMMENT '学历',
	birthday DATE COMMENT '生日',
	id VARCHAR(20) COMMENT '身份证号'
);

CREATE TABLE `books` (

	`name` VARCHAR(20),

	`author` VARCHAR(20),

	`price`	FLOAT,

	`category` VARCHAR(10)

);