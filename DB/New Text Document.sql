/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - service_provider
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`service_provider` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `service_provider`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` decimal(10,0) DEFAULT NULL,
  `status` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

LOCK TABLES `adminlogin` WRITE;

insert  into `adminlogin`(`email`,`pass`,`name`,`contact`,`status`) values ('shiv@gmail.com','123','shivam','1111111',1);

UNLOCK TABLES;

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `userid` decimal(10,0) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `notesid` decimal(50,0) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

LOCK TABLES `comment` WRITE;

insert  into `comment`(`userid`,`username`,`notesid`,`comment`,`date`) values ('44','dcvd','6','vnmdnd','0000-00-00');

UNLOCK TABLES;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `id` decimal(50,0) DEFAULT NULL,
  `utype` varchar(5) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` decimal(10,0) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

LOCK TABLES `feedback` WRITE;

insert  into `feedback`(`id`,`utype`,`name`,`contact`,`email`,`message`,`date`) values ('1','Admin','adkb','122334','sh@gmail.com','jbdsddkfsj','11-12-2003'),('1','Admin',NULL,NULL,NULL,NULL,'2024-05-10'),('1','Admin',NULL,NULL,NULL,NULL,'2024-05-10');

UNLOCK TABLES;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cont` decimal(10,0) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `ltype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

insert  into `login`(`id`,`name`,`email`,`cont`,`pass`,`status`,`ltype`) values (1,'8577001721','mfaizq786@gmail.com','123','mfaizq786',1,NULL),(2,'8577001721','mfaizq786@gmail.com','123','mfaizq786',1,'Buyer'),(3,'8577001721','mfaizq786@gmail.com','123','mfaizq786',1,'buyer'),(4,'8577001','zq786@gmail.com','123','mfaizq',1,'uploader'),(5,'8577001','zq786@gmail.com','123','mfaizq',1,'buyer');

UNLOCK TABLES;

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `notesid` int(4) NOT NULL AUTO_INCREMENT,
  `uploaderid` decimal(50,0) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `decription` varchar(100) DEFAULT NULL,
  `dtype` varchar(100) DEFAULT NULL,
  `preview` longblob,
  `content` longblob,
  `date` varchar(10) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `notes` */

LOCK TABLES `notes` WRITE;

insert  into `notes`(`notesid`,`uploaderid`,`course`,`cost`,`decription`,`dtype`,`preview`,`content`,`date`,`status`,`subject`) values (6,'44','bca','11',NULL,NULL,NULL,NULL,'0000-00-00',1,'autmata'),(7,'3','bca','100','dem',NULL,NULL,NULL,NULL,0,'compiler'),(10,NULL,'btech',NULL,NULL,NULL,NULL,NULL,NULL,0,'dbms'),(11,'1','Mtech','1000','demo','book','./index_python.docx','./index_python.docx','2024-05-11',NULL,'network');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
