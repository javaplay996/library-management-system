/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t044`;
CREATE DATABASE IF NOT EXISTS `t044` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t044`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot33dng/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot33dng/upload/1616222270476.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot33dng/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusstushuxinxi`;
CREATE TABLE IF NOT EXISTS `discusstushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222732422 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息评论表';

DELETE FROM `discusstushuxinxi`;
INSERT INTO `discusstushuxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-03-20 05:32:24', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-03-20 05:32:24', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-03-20 05:32:24', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-03-20 05:32:24', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-03-20 05:32:24', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-03-20 05:32:24', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1616222732421, '2021-03-20 06:45:31', 1616222261128, 1616222324595, '1', '很不多的书，第一次读莫言的作品，语言幽默且接地气，后面的反转余味很足', NULL);

DROP TABLE IF EXISTS `jiaonafajin`;
CREATE TABLE IF NOT EXISTS `jiaonafajin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `fakuanshuoming` varchar(200) DEFAULT NULL COMMENT '罚款说明',
  `fakuanjine` int DEFAULT NULL COMMENT '罚款金额',
  `fakuanriqi` date DEFAULT NULL COMMENT '罚款日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222626812 DEFAULT CHARSET=utf8mb3 COMMENT='缴纳罚金';

DELETE FROM `jiaonafajin`;
INSERT INTO `jiaonafajin` (`id`, `addtime`, `jieyuedanhao`, `tushubianhao`, `tushumingcheng`, `fakuanshuoming`, `fakuanjine`, `fakuanriqi`, `yonghuming`, `shouji`, `ispay`) VALUES
	(61, '2021-03-20 05:32:24', '借阅单号1', '图书编号1', '图书名称1', '罚款说明1', 1, '2021-03-20', '用户名1', '手机1', '未支付'),
	(62, '2021-03-20 05:32:24', '借阅单号2', '图书编号2', '图书名称2', '罚款说明2', 2, '2021-03-20', '用户名2', '手机2', '未支付'),
	(63, '2021-03-20 05:32:24', '借阅单号3', '图书编号3', '图书名称3', '罚款说明3', 3, '2021-03-20', '用户名3', '手机3', '未支付'),
	(64, '2021-03-20 05:32:24', '借阅单号4', '图书编号4', '图书名称4', '罚款说明4', 4, '2021-03-20', '用户名4', '手机4', '未支付'),
	(65, '2021-03-20 05:32:24', '借阅单号5', '图书编号5', '图书名称5', '罚款说明5', 5, '2021-03-20', '用户名5', '手机5', '未支付'),
	(66, '2021-03-20 05:32:24', '借阅单号6', '图书编号6', '图书名称6', '罚款说明6', 6, '2021-03-20', '用户名6', '手机6', '未支付'),
	(1616222626811, '2021-03-20 06:43:46', '202132014394773556007', '1616222217480', '晚熟的人', '超期还书', 10, '2021-03-30', '1', '12312312312', '已支付');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705137650929 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(91, '2021-03-20 05:32:24', 1, '用户名1', '留言内容1', '回复内容1'),
	(92, '2021-03-20 05:32:24', 2, '用户名2', '留言内容2', '回复内容2'),
	(93, '2021-03-20 05:32:24', 3, '用户名3', '留言内容3', '回复内容3'),
	(94, '2021-03-20 05:32:24', 4, '用户名4', '留言内容4', '回复内容4'),
	(95, '2021-03-20 05:32:24', 5, '用户名5', '留言内容5', '回复内容5'),
	(96, '2021-03-20 05:32:24', 6, '用户名6', '留言内容6', '回复内容6'),
	(1616222424130, '2021-03-20 06:40:23', 1616222324595, '1', '请问有狼图腾小说吗', '有的，可直接搜索'),
	(1705137650928, '2024-01-13 09:20:50', 11, '用户1', '6666', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222300902 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(81, '2021-03-20 05:32:24', '标题1', '简介1', 'http://localhost:8080/springboot33dng/upload/1616221783831.jpg', '<p>内容1</p>'),
	(82, '2021-03-20 05:32:24', '标题2', '简介2', 'http://localhost:8080/springboot33dng/upload/1616221791129.jpg', '<p>内容2</p>'),
	(83, '2021-03-20 05:32:24', '标题3', '简介3', 'http://localhost:8080/springboot33dng/upload/1616221807853.jpg', '<p>内容3</p>'),
	(84, '2021-03-20 05:32:24', '标题4', '简介4', 'http://localhost:8080/springboot33dng/upload/1616221817564.jpg', '<p>内容4</p>'),
	(85, '2021-03-20 05:32:24', '标题5', '简介5', 'http://localhost:8080/springboot33dng/upload/1616221825321.jpg', '<p>内容5</p>'),
	(86, '2021-03-20 05:32:24', '标题6', '简介6', 'http://localhost:8080/springboot33dng/upload/1616221833290.jpg', '<p>内容6</p>'),
	(1616222300901, '2021-03-20 06:38:20', '图书借阅须知', '借阅须知', 'http://localhost:8080/springboot33dng/upload/1616222287115.jpg', '<p>公告内容</p><p><img src="http://localhost:8080/springboot33dng/upload/1616222298474.jpg"></p>');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705137637719 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1705137637718, '2024-01-13 09:20:37', 11, 33, 'tushuxinxi', '图书名称3', 'http://localhost:8080/springboot33dng/upload/1616221219332.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', '37jvt0638d1xtfuc4gaxj8ph78aizb1n', '2021-03-20 06:14:26', '2024-01-13 10:20:35'),
	(2, 1, 'abo', 'users', '管理员', 'b7bxbzh5cj7rxyemvw9m8j9kk5rvywn6', '2021-03-20 06:17:22', '2024-01-13 10:19:04'),
	(3, 1616222324595, '1', 'yonghu', '用户', 'ti7q78bqwna0ak7huhy296qextoz5zib', '2021-03-20 06:38:49', '2021-03-20 07:44:50');

DROP TABLE IF EXISTS `tushufenlei`;
CREATE TABLE IF NOT EXISTS `tushufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222216327 DEFAULT CHARSET=utf8mb3 COMMENT='图书分类';

DELETE FROM `tushufenlei`;
INSERT INTO `tushufenlei` (`id`, `addtime`, `tushufenlei`) VALUES
	(21, '2021-03-20 05:32:24', '世界名著'),
	(22, '2021-03-20 05:32:24', '人文社科'),
	(23, '2021-03-20 05:32:24', '经管励志'),
	(24, '2021-03-20 05:32:24', '休闲生活'),
	(25, '2021-03-20 05:32:24', '少儿读物'),
	(1616222216326, '2021-03-20 06:36:55', '文学小说');

DROP TABLE IF EXISTS `tushuguihai`;
CREATE TABLE IF NOT EXISTS `tushuguihai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `jieyueriqi` varchar(200) DEFAULT NULL COMMENT '借阅日期',
  `yinghairiqi` varchar(200) DEFAULT NULL COMMENT '应还日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222569038 DEFAULT CHARSET=utf8mb3 COMMENT='图书归还';

DELETE FROM `tushuguihai`;
INSERT INTO `tushuguihai` (`id`, `addtime`, `jieyuedanhao`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `tupian`, `kejietianshu`, `jieyueriqi`, `yinghairiqi`, `guihairiqi`, `yonghuming`, `shouji`, `sfsh`, `shhf`) VALUES
	(51, '2021-03-20 05:32:24', '借阅单号1', '图书编号1', '图书名称1', '图书分类1', 'http://localhost:8080/springboot33dng/upload/tushuguihai_tupian1.jpg', '可借天数1', '借阅日期1', '应还日期1', '2021-03-20', '用户名1', '手机1', '是', ''),
	(52, '2021-03-20 05:32:24', '借阅单号2', '图书编号2', '图书名称2', '图书分类2', 'http://localhost:8080/springboot33dng/upload/1616221734047.jpg', '可借天数2', '借阅日期2', '应还日期2', '2021-03-20', '用户名2', '手机2', '是', ''),
	(53, '2021-03-20 05:32:24', '借阅单号3', '图书编号3', '图书名称3', '图书分类3', 'http://localhost:8080/springboot33dng/upload/tushuguihai_tupian3.jpg', '可借天数3', '借阅日期3', '应还日期3', '2021-03-20', '用户名3', '手机3', '是', ''),
	(54, '2021-03-20 05:32:24', '借阅单号4', '图书编号4', '图书名称4', '图书分类4', 'http://localhost:8080/springboot33dng/upload/1616221744664.jpg', '可借天数4', '借阅日期4', '应还日期4', '2021-03-20', '用户名4', '手机4', '是', ''),
	(55, '2021-03-20 05:32:24', '借阅单号5', '图书编号5', '图书名称5', '图书分类5', 'http://localhost:8080/springboot33dng/upload/1616221753644.jpg', '可借天数5', '借阅日期5', '应还日期5', '2021-03-20', '用户名5', '手机5', '是', ''),
	(56, '2021-03-20 05:32:24', '借阅单号6', '图书编号6', '图书名称6', '图书分类6', 'http://localhost:8080/springboot33dng/upload/1616221763696.jpg', '可借天数6', '借阅日期6', '应还日期6', '2021-03-20', '用户名6', '手机6', '是', ''),
	(1616222569037, '2021-03-20 06:42:48', '202132014394773556007', '1616222217480', '晚熟的人', '文学小说', 'http://localhost:8080/springboot33dng/upload/1616222229430.jpg', '5', '2021-03-18', '2021-03-22', '2021-03-31', '1', '12312312312', '是', '超过规定时间8天需缴纳罚金10元');

DROP TABLE IF EXISTS `tushujieyue`;
CREATE TABLE IF NOT EXISTS `tushujieyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuedanhao` varchar(200) DEFAULT NULL COMMENT '借阅单号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kejietianshu` varchar(200) DEFAULT NULL COMMENT '可借天数',
  `kejieshuliang` varchar(200) DEFAULT NULL COMMENT '可借数量',
  `jieyueriqi` date NOT NULL COMMENT '借阅日期',
  `jieyuetianshu` varchar(200) NOT NULL COMMENT '借阅天数',
  `yinghairiqi` date DEFAULT NULL COMMENT '应还日期',
  `jieyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '借阅状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyuedanhao` (`jieyuedanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222403833 DEFAULT CHARSET=utf8mb3 COMMENT='图书借阅';

DELETE FROM `tushujieyue`;
INSERT INTO `tushujieyue` (`id`, `addtime`, `jieyuedanhao`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `tupian`, `kejietianshu`, `kejieshuliang`, `jieyueriqi`, `jieyuetianshu`, `yinghairiqi`, `jieyuezhuangtai`, `yonghuming`, `xingming`, `shouji`, `shenfenzheng`, `sfsh`, `shhf`) VALUES
	(41, '2021-03-20 05:32:24', '借阅单号1', '图书编号1', '图书名称1', '图书分类1', 'http://localhost:8080/springboot33dng/upload/1616221648890.jpg', '可借天数1', '可借数量1', '2021-03-20', '借阅天数1', '2021-03-31', '借阅', '用户名1', '姓名1', '手机1', '身份证1', '是', ''),
	(42, '2021-03-20 05:32:24', '借阅单号2', '图书编号2', '图书名称2', '图书分类2', 'http://localhost:8080/springboot33dng/upload/1616221656398.jpg', '可借天数2', '可借数量2', '2021-03-20', '借阅天数2', '2021-03-30', '借阅', '用户名2', '姓名2', '手机2', '身份证2', '是', ''),
	(43, '2021-03-20 05:32:24', '借阅单号3', '图书编号3', '图书名称3', '图书分类3', 'http://localhost:8080/springboot33dng/upload/1616221663436.jpg', '可借天数3', '可借数量3', '2021-03-20', '借阅天数3', '2021-03-29', '借阅', '用户名3', '姓名3', '手机3', '身份证3', '是', ''),
	(44, '2021-03-20 05:32:24', '借阅单号4', '图书编号4', '图书名称4', '图书分类4', 'http://localhost:8080/springboot33dng/upload/1616221677838.jpg', '可借天数4', '可借数量4', '2021-03-20', '借阅天数4', '2021-03-20', '借阅', '用户名4', '姓名4', '手机4', '身份证4', '是', ''),
	(45, '2021-03-20 05:32:24', '借阅单号5', '图书编号5', '图书名称5', '图书分类5', 'http://localhost:8080/springboot33dng/upload/1616221686462.jpg', '可借天数5', '可借数量5', '2021-03-20', '借阅天数5', '2021-03-31', '借阅', '用户名5', '姓名5', '手机5', '身份证5', '是', ''),
	(46, '2021-03-20 05:32:24', '借阅单号6', '图书编号6', '图书名称6', '图书分类6', 'http://localhost:8080/springboot33dng/upload/1616221704787.jpg', '可借天数6', '可借数量6', '2021-03-20', '借阅天数6', '2021-04-07', '借阅', '用户名6', '姓名6', '手机6', '身份证6', '是', ''),
	(1616222403832, '2021-03-20 06:40:03', '202132014394773556007', '1616222217480', '晚熟的人', '文学小说', 'http://localhost:8080/springboot33dng/upload/1616222229430.jpg', '5', '2', '2021-03-18', '5', '2021-03-22', '已归还', '1', '陈一', '12312312312', '123456789456123789', '是', 'ok');

DROP TABLE IF EXISTS `tushuxinxi`;
CREATE TABLE IF NOT EXISTS `tushuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushuzhuangtai` varchar(200) DEFAULT NULL COMMENT '图书状态',
  `kejietianshu` int NOT NULL COMMENT '可借天数',
  `kejieshuliang` int NOT NULL COMMENT '可借数量',
  `tushujianjie` longtext COMMENT '图书简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222261129 DEFAULT CHARSET=utf8mb3 COMMENT='图书信息';

DELETE FROM `tushuxinxi`;
INSERT INTO `tushuxinxi` (`id`, `addtime`, `tushubianhao`, `tushumingcheng`, `tushufenlei`, `tupian`, `zuozhe`, `chubanshe`, `tushuzhuangtai`, `kejietianshu`, `kejieshuliang`, `tushujianjie`, `clicktime`, `clicknum`) VALUES
	(31, '2021-03-20 05:32:24', '图书编号1', '图书名称1', '世界名著', 'http://localhost:8080/springboot33dng/upload/1616221191134.jpg', '作者1', '出版社1', '可借阅', 1, 1, '<p>图书简介1</p>', '2024-01-13 17:16:32', 3),
	(32, '2021-03-20 05:32:24', '图书编号2', '图书名称2', '人文社科', 'http://localhost:8080/springboot33dng/upload/1616221204890.jpg', '作者2', '出版社2', '可借阅', 2, 2, '<p>图书简介2</p>', '2024-01-13 17:19:23', 6),
	(33, '2021-03-20 05:32:24', '图书编号3', '图书名称3', '休闲生活', 'http://localhost:8080/springboot33dng/upload/1616221219332.jpg', '作者3', '出版社3', '可借阅', 3, 3, '<p>图书简介3</p>', '2024-01-13 17:20:35', 6),
	(34, '2021-03-20 05:32:24', '图书编号4', '图书名称4', '少儿读物', 'http://localhost:8080/springboot33dng/upload/1616221231740.jpg', '作者4', '出版社4', '可借阅', 4, 4, '<p>图书简介4</p>', '2021-03-20 14:20:23', 6),
	(35, '2021-03-20 05:32:24', '图书编号5', '图书名称5', '经管励志', 'http://localhost:8080/springboot33dng/upload/1616221588575.jpg', '作者5', '出版社5', '可借阅', 5, 5, '<p>图书简介5</p>', '2021-03-20 14:26:12', 6),
	(36, '2021-03-20 05:32:24', '图书编号6', '图书名称6', '经管励志', 'http://localhost:8080/springboot33dng/upload/1616221601596.jpg', '作者6', '出版社6', '可借阅', 6, 6, '<p>图书简介6</p>', '2021-03-20 14:35:38', 8),
	(1616222261128, '2021-03-20 06:37:40', '1616222217480', '晚熟的人', '文学小说', 'http://localhost:8080/springboot33dng/upload/1616222229430.jpg', '莫言', '人民文学出版社', '可借阅', 5, 2, '<p>莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外</p>', '2021-03-20 14:45:35', 8);

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-20 05:32:24');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616222324596 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `touxiang`, `shouji`, `shenfenzheng`) VALUES
	(11, '2021-03-20 05:32:24', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang1.jpg', '13823888881', '440300199101010001'),
	(12, '2021-03-20 05:32:24', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang2.jpg', '13823888882', '440300199202020002'),
	(13, '2021-03-20 05:32:24', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang3.jpg', '13823888883', '440300199303030003'),
	(14, '2021-03-20 05:32:24', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang4.jpg', '13823888884', '440300199404040004'),
	(15, '2021-03-20 05:32:24', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang5.jpg', '13823888885', '440300199505050005'),
	(16, '2021-03-20 05:32:24', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/springboot33dng/upload/yonghu_touxiang6.jpg', '13823888886', '440300199606060006'),
	(1616222324595, '2021-03-20 06:38:44', '1', '1', '陈一', '女', 'http://localhost:8080/springboot33dng/upload/1616222340222.jpg', '12312312312', '123456789456123789');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
