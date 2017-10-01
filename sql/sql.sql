/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.19 : Database - invitationmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invitationmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `invitationmanage`;

/*Table structure for table `invitation` */

DROP TABLE IF EXISTS `invitation`;

CREATE TABLE `invitation` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '帖子编号',
  `title` varchar(100) NOT NULL COMMENT '帖子标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '帖子摘要',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `createdate` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `invitation` */

insert  into `invitation`(`id`,`title`,`summary`,`author`,`createdate`) values (1,'最新BMW谍照','新款宝马跑车','小何','2013-11-08 00:00:00'),(2,'恒大三竿洋枪B','外援给力','神算子','2013-10-12 00:00:00'),(3,'外援给力B','国产31','军神','2013-11-08 00:00:00'),(4,'国产31B','新款宝马跑车','小何','2013-11-08 00:00:00'),(5,'国产31B','国产31B','国产31B','2013-11-08 00:00:00'),(6,'国产31B','国产31B','国产31B','2017-10-01 14:20:27');

/*Table structure for table `reply_detail` */

DROP TABLE IF EXISTS `reply_detail`;

CREATE TABLE `reply_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `invid` int(10) NOT NULL COMMENT '帖子编号',
  `content` varchar(255) NOT NULL COMMENT '回复内容',
  `author` varchar(50) DEFAULT '匿名用户' COMMENT '回复人昵称',
  `createdate` datetime NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`),
  KEY `fk_1` (`invid`),
  CONSTRAINT `fk_invid` FOREIGN KEY (`invid`) REFERENCES `invitation` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `reply_detail` */

insert  into `reply_detail`(`id`,`invid`,`content`,`author`,`createdate`) values (2,2,'16w发动机，百米加速2.6秒','我是MINI','2013-11-09 00:00:00'),(10,1,'m fd','','2017-09-08 18:31:13'),(12,1,'mnn ','kk','2017-09-08 22:00:11'),(13,1,'1','11','2017-10-01 16:36:17'),(14,1,'1','11','2017-10-01 16:37:17'),(15,1,'23','11','2017-10-01 16:37:55'),(16,1,'1','12123123','2017-10-01 16:38:56'),(17,1,'我的','辛苦','2017-10-01 16:41:00'),(18,1,'我的','辛苦','2017-10-01 16:41:00');

/*Table structure for table `web_user` */

DROP TABLE IF EXISTS `web_user`;

CREATE TABLE `web_user` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user` varchar(100) NOT NULL COMMENT '账号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `web_user` */

insert  into `web_user`(`id`,`user`,`password`) values (1,'admin','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
