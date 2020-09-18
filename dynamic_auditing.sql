/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - dynamic_auditing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`dynamic_auditing` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dynamic_auditing`;

/*Table structure for table `block1` */

DROP TABLE IF EXISTS `block1`;

CREATE TABLE `block1` (
  `owner` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `fid` varchar(100) default NULL,
  `skey` varchar(200) default NULL,
  `metadatakey` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block1` */

insert  into `block1`(`owner`,`filename`,`fid`,`skey`,`metadatakey`,`status`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','1','10','768596','Block1 Sent'),('yashwanth12boinpally@gmail.com','hello.txt','4','99','804766','Block1 Sent'),('yashwanth12boinpally@gmail.com','New Text Document.txt','5','55','716384','Block1 Sent'),('yashwanth12boinpally@gmail.com','New Text Document (2).txt','6','1','119222','Block1 Sent'),('vineeth.319@gmail.com','fgg.txt','8','123','498168','Block1 Sent');

/*Table structure for table `block2` */

DROP TABLE IF EXISTS `block2`;

CREATE TABLE `block2` (
  `owner` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `fid` varchar(1000) default NULL,
  `skey` varchar(200) default NULL,
  `metadatakey` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block2` */

insert  into `block2`(`owner`,`filename`,`fid`,`skey`,`metadatakey`,`status`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','1','20','35047','Block2 Sent'),('yashwanth12boinpally@gmail.com','hello.txt','4','88','696692','Block2 Sent'),('yashwanth12boinpally@gmail.com','New Text Document.txt','5','66','164740','Block2 Sent'),('yashwanth12boinpally@gmail.com','New Text Document (2).txt','6','2','582216','Block2 Sent'),('vineeth.319@gmail.com','fgg.txt','8','123','505978','Block2 Sent');

/*Table structure for table `block3` */

DROP TABLE IF EXISTS `block3`;

CREATE TABLE `block3` (
  `owner` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `fid` varchar(100) default NULL,
  `skey` varchar(200) default NULL,
  `metadatakey` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block3` */

insert  into `block3`(`owner`,`filename`,`fid`,`skey`,`metadatakey`,`status`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','1','30','621544','Block3 Sent'),('yashwanth12boinpally@gmail.com','hello.txt','4','77','961321','Block3 Sent'),('yashwanth12boinpally@gmail.com','New Text Document.txt','5','77','407182','Block3 Sent'),('yashwanth12boinpally@gmail.com','New Text Document (2).txt','6','3','873507','Block3 Sent'),('vineeth.319@gmail.com','fgg.txt','8','123','151887','Block3 Sent');

/*Table structure for table `block4` */

DROP TABLE IF EXISTS `block4`;

CREATE TABLE `block4` (
  `owner` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `fid` varchar(100) default NULL,
  `skey` varchar(200) default NULL,
  `metadatakey` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block4` */

insert  into `block4`(`owner`,`filename`,`fid`,`skey`,`metadatakey`,`status`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','1','40','665718','Block4 Sent'),('yashwanth12boinpally@gmail.com','hello.txt','4','66','677397','Block4 Sent'),('yashwanth12boinpally@gmail.com','New Text Document.txt','5','88','134383','Block4 Sent'),('yashwanth12boinpally@gmail.com','New Text Document (2).txt','6','4','158493','Block4 Sent'),('vineeth.319@gmail.com','fgg.txt','8','123','377276','Block4 Sent');

/*Table structure for table `block5` */

DROP TABLE IF EXISTS `block5`;

CREATE TABLE `block5` (
  `owner` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `fid` varchar(1000) default NULL,
  `skey` varchar(200) default NULL,
  `metadatakey` varchar(200) default NULL,
  `status` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `block5` */

insert  into `block5`(`owner`,`filename`,`fid`,`skey`,`metadatakey`,`status`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','1','50','300943','Block5 Sent'),('yashwanth12boinpally@gmail.com','hello.txt','4','55','15228','Block5 Sent'),('yashwanth12boinpally@gmail.com','New Text Document.txt','5','99','981370','Block5 Sent'),('yashwanth12boinpally@gmail.com','New Text Document (2).txt','6','5','342690','Block5 Sent'),('vineeth.319@gmail.com','fgg.txt','8','123','79703','Block5 Sent');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `fname` varchar(200) default NULL,
  `lname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `location` varchar(200) default NULL,
  `address` varchar(2000) default NULL,
  `uname` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `skey` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`fname`,`lname`,`email`,`mobile`,`location`,`address`,`uname`,`password`,`status`,`skey`) values ('yashwanth','b','yashwanth12boinpally@gmail.com','9705047787','hyderabad','hyderabad','yashwanth','12345','Waiting','13747'),('vishnu','b','vineeth.319@gmail.com','123456789','wertyu','asdf','vin','0099','Waiting','94655');

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

/*Table structure for table `dhistory` */

DROP TABLE IF EXISTS `dhistory`;

CREATE TABLE `dhistory` (
  `email` varchar(1000) default NULL,
  `fname` varchar(1000) default NULL,
  `date` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dhistory` */

insert  into `dhistory`(`email`,`fname`,`date`) values ('yashwanth12boinpally@gmail.com','aboutjava.txt','2019-02-28 16:28:08');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fid` int(11) NOT NULL auto_increment,
  `owner` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `subject` varchar(1000) default NULL,
  `filedata` longtext,
  `cipher` longtext,
  `skey` varchar(1000) default NULL,
  `uploaddate` varchar(1000) default NULL,
  `fsize` varchar(2000) default NULL,
  `status` varchar(2000) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`fid`,`owner`,`filename`,`subject`,`filedata`,`cipher`,`skey`,`uploaddate`,`fsize`,`status`) values (1,'yashwanth12boinpally@gmail.com','aboutjava.txt','java','java is the programming language','kbBg2X0nXI34DoTMyyP1zRvSuXhJHcs3MBLmysqaQ2cCP6GXuURfT1hGV6llrE2M','4+iUo90Qy1cY4YTUMwGnqw==','28-02-2019','32','sent'),(2,'yashwanth12boinpally@gmail.com','asdf.txt','hello','this is me','cGx3UtWv7ZdLzGKeun49aw==','Wov67LTxuV5weK6o+BgW2w==','12-03-2019','10','Waiting'),(3,'yashwanth12boinpally@gmail.com','kkk.txt','qweh','hello world','4U+JU7hAGlRi3pdoil5gOg==','gi5pc7uf1RWYC41rpCQETw==','12-03-2019','11','Waiting'),(4,'yashwanth12boinpally@gmail.com','hello.txt','hi','hello world','6pp6duSoA1Z1TQVCqQSlUw==','QUIcRSxKxBVQZMcdxpM46w==','12-03-2019','11','sent'),(5,'yashwanth12boinpally@gmail.com','New Text Document.txt','new','funk the fork ','U93uzUL+BfbZKD+kcugwQw==','rahVFRX7xTfHjrpKlIX3Ag==','13-03-2019','14','sent'),(6,'yashwanth12boinpally@gmail.com','New Text Document (2).txt','new2','fork the funk','VsEYn3HXlGSeBNSFBR8vow==','SOJZZeZFVzyLuWz8s01sIg==','13-03-2019','13','sent'),(7,'vineeth.319@gmail.com','fgg.txt','asdfg','qwertyuiop','z/BY1KKRikFbpwio8yzqSg==','eyzT7elYzag7IMlNyxMhXQ==','13-03-2019','10','Waiting'),(8,'vineeth.319@gmail.com','fgg.txt','qwerty','qwertyuiop','AcRdodu0ywk0rt1BDMZleA==','HVssLOtUwj2pdzfdnlgnEA==','13-03-2019','10','sent');

/*Table structure for table `otp` */

DROP TABLE IF EXISTS `otp`;

CREATE TABLE `otp` (
  `email` varchar(1000) default NULL,
  `otp` varchar(1000) default NULL,
  `status` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `otp` */

insert  into `otp`(`email`,`otp`,`status`) values ('yashwanth12boinpally@gmail.com','6167240','waiting');

/*Table structure for table `tpa` */

DROP TABLE IF EXISTS `tpa`;

CREATE TABLE `tpa` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpa` */

insert  into `tpa`(`username`,`password`) values ('tpa','tpa');

/*Table structure for table `tpareq` */

DROP TABLE IF EXISTS `tpareq`;

CREATE TABLE `tpareq` (
  `fid` varchar(1000) default NULL,
  `fname` varchar(1000) default NULL,
  `fsize` varchar(1000) default NULL,
  `fdate` varchar(1000) default NULL,
  `proof` varchar(1000) default NULL,
  `tpaperm` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpareq` */

insert  into `tpareq`(`fid`,`fname`,`fsize`,`fdate`,`proof`,`tpaperm`) values ('1','aboutjava.txt','32','28-02-2019','384CD856E6','Granted'),('4','hello.txt','11','12-03-2019','R22D816DCa','Granted'),('5','New Text Document.txt','14','13-03-2019','1sa5k3baak','Granted'),('6','New Text Document (2).txt','13','13-03-2019','waiting','waiting'),('8','fgg.txt','10','13-03-2019','DG1D65E3C4','Granted');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
