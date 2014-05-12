/*
SQLyog Enterprise - MySQL GUI v6.03
Host - 5.0.24a-community-nt : Database - vote
*********************************************************************
Server version : 5.0.24a-community-nt
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `vote`;

USE `vote`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL auto_increment,
  `admins` varchar(20) default NULL,
  `pass` varchar(20) default NULL,
  `sitename` varchar(50) default NULL,
  `checks` int(4) default NULL,
  `votename` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`admins`,`pass`,`sitename`,`checks`,`votename`) values (1,'admin','admin','����ͶƱ',0,'votename\r\n����Ҫ�����Щ�������Ϣ��');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) default NULL,
  `vname` varchar(50) default NULL,
  `vcount` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vote` */

insert  into `vote`(`id`,`lid`,`vname`,`vcount`) values (1,1,'����ѧԺ�Ľ���',3),(2,2,'����˶ʿ�γ̵Ľ���',5),(3,3,'���ڲ�ʿ�γ̵Ľ���',2),(4,4,'���ǵ�ʦ��',2),(8,8,'���İ���',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
