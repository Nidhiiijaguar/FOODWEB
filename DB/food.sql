/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - food
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`food` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `food`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`pass`) values (1,'admin','admin');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `ordername` varchar(200) DEFAULT NULL,
  `ordertype` varchar(200) DEFAULT NULL,
  `hotelname` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `customername` varchar(200) DEFAULT NULL,
  `ownername` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`id`,`ordername`,`ordertype`,`hotelname`,`cost`,`customername`,`ownername`) values (1,'pizza','Vegiterian','KFC','150','user1','organizer1'),(2,'Chiken burger','non-veg','KFC','250','user1','organizer1'),(3,'pizza','Vegiterian','SUBWAY','234','user1','organizer2'),(4,'pizza','Vegiterian','SUBWAY','234','user1','organizer2');

/*Table structure for table `confirmation` */

DROP TABLE IF EXISTS `confirmation`;

CREATE TABLE `confirmation` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `hotelname` varchar(200) DEFAULT NULL,
  `hoteltype` varchar(200) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `pincode` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'negative',
  `imagename` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `confirmation` */

insert  into `confirmation`(`id`,`hotelname`,`hoteltype`,`Description`,`state`,`city`,`pincode`,`oname`,`status`,`imagename`) values (1,'KFC','Vegiterian','Finger licking good','TamilNadu','Chennai','600099','organizer1','positive','images2.jpg'),(2,'SUBWAY','Vegiterian','GO HUNGRY','TamilNadu','Chennai','600099','organizer2','positive','Food2.jpg'),(3,'DOMINOS','Vegiterian','Just Eat it','TamilNadu','Chennai','600099','organizer3','positive','b4.jpg');

/*Table structure for table `foodorder` */

DROP TABLE IF EXISTS `foodorder`;

CREATE TABLE `foodorder` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `ordername` varchar(200) DEFAULT NULL,
  `foodtype` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `imagename` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `foodorder` */

insert  into `foodorder`(`id`,`ordername`,`foodtype`,`cost`,`imagename`,`oname`) values (1,'pizza','Vegiterian','150','Food2.jpg','organizer1'),(2,'Chiken burger','non-veg','250','food4.jpg','organizer1'),(3,'pizza','Vegiterian','234','Veg (2).jpg','organizer2');

/*Table structure for table `negative` */

DROP TABLE IF EXISTS `negative`;

CREATE TABLE `negative` (
  `neg` varchar(40) DEFAULT NULL,
  `polarity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative` */

insert  into `negative`(`neg`,`polarity`) values ('worst','0.5'),('failed','0.5'),('poor','0.5'),('unsatistied','0.5'),('dont buy','0.5'),('waste','0.5'),('waste product','0.5'),('useless','0.5'),('poor','0.5'),('poor design','0.5'),('poor product','0.5'),('0% satisfied','0.5'),('average','0.5'),('flop','0.5'),('utter','0.5'),('waste of time','0.5'),('annoy','0.5'),('annoyed','1'),('annoying','0.5'),('not amazing','0.5'),('not ok','0.5'),('fuck','0.5'),('fuck off','0.5'),('bull shit','0.5'),('shit product','0.5'),('under performed','0.5'),('under performance','0.5'),('flaw','0.5'),('flawed product','0.5'),('damaged','0.5'),('damaged product','0.5'),('waste of money','0.5'),('cant believe this','0.5'),('whook','0.5'),('eeee','0.5'),('f***k','0.5'),('average product','0.5'),('shitty product','0.5'),('not satisfied','0.5'),('non delighted','0.5'),('not','0.5'),('repair','0.5'),('very low','0.5'),('quality','0.5'),('scold','0.5'),('dissimilar','1.0'),('unlike','0.5'),('victimized','0.5'),('assorted','1.0'),('shrewdness','0.5'),('rip','0.5'),('blood','0.5'),('profligate','0.5');

/*Table structure for table `organizer` */

DROP TABLE IF EXISTS `organizer`;

CREATE TABLE `organizer` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'negative',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `organizer` */

insert  into `organizer`(`id`,`name`,`email`,`phone`,`date`,`pass`,`status`) values (1,'organizer1','organizer1@gmail.com','9632140021','10-10-2019','12345','positive'),(2,'organizer2','organizer2@gmail.com','9632140021','10-10-10','12345','positive'),(3,'organizer3','organizer3@gmail.com','9632140021','10-10-10','12345','positive');

/*Table structure for table `positive` */

DROP TABLE IF EXISTS `positive`;

CREATE TABLE `positive` (
  `gud` varchar(38) DEFAULT NULL,
  `polarity` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `positive` */

insert  into `positive`(`gud`,`polarity`) values ('A+',1.00),('A1',1.00),('A++',1.00),('AA+',1.00),('fab',0.00),('rad',1.00),('A+++',1.00),('AAA+',1.00),('A-OK',1.00),('a-ok',1.00),('best',1.00),('cool',1.00),('deal',1.00),('fast',1.00),('fine',1.00),('nice',1.00),('safe',1.00),('thx',0.00),('thanks',0.00),('tops',1.00),('wow',1.00),('clean',1.00),('grand',0.00),('great',1.00),('happy',1.00),('prime',1.00),('quick',1.00),('rapid',1.00),('solid',1.00),('super',1.00),('swift',1.00),('thanks',0.00),('value',1.00),('whoa!',1.00),('whoa',1.00),('choice',1.00),('dealer',1.00),('groovy',1.00),('honest',1.00),('polite',1.00),('secure',1.00),('seller',0.00),('snappy',0.00),('speedy',1.00),('super',1.00),('superb',1.00),('timely',0.00),('vendor',0.00),('zowie',1.00),('amazing',1.00),('auction',1.00),('awesome',1.00),('elegant',0.00),('classic',0.00),('genuine',1.00),('perfect',1.00),('classy',1.00),('master piece',0.00),('pleased',0.00),('service',0.00),('sweet',1.00),('sweeet',1.00),('accurate',1.00),('ecstatic',1.00),('fabulous',1.00),('flawless',1.00),('friendly',1.00),('glorious',1.00),('good buy',1.00),('gorgeous',1.00),('pleasant',1.00),('peerlessstandout',1.00),('stunning',1.00),('superior',1.00),('the best',1.00),('the bomb',1.00),('thrilled',0.00),('up front',1.00),('way cool',1.00),('all right',1.00),('As listed',1.00),('authentic',1.00),('brilliant',1.00),('competant',1.00),('delighted',1.00),('excellent',1.00),('great buy',1.00),('love this',1.00),('low price',1.00),('marvellous',1.00),('overjoyed',1.00),('over joyed',1.00),('satisfied',1.00),('thank you',1.00),('top notch',1.00),('unrivaled',1.00),('very best',1.00),('wonderful',1.00),('astounding',1.00),('delightful',1.00),('first rate',1.00),('good rate',1.00),('good value',1.00),('great deal',1.00),('great item ',1.00),('im elated',1.00),('impressive',1.00),('incredible',0.00),('supercool',1.00),('superfast',0.00),('supersonic',1.00),('astounding',1.00),('considerate',1.00),('cooperative',1.00),('user friendly',1.00),('interesting',1.00),('magnifient',1.00),('no problem',0.00),('outstanding',1.00),('splendourous',1.00),('trustworthy',1.00),('unsurpassed',0.00),('well packed',0.00),('wicked cool',1.00),('as described',0.00),('breathtaking',1.00),('just perfect',1.00),('looking good',1.00),('looking cool',1.00),('looking awesome',1.00),('looking pro',1.00),('professional',0.00),('unbelievable',1.00),('no compalints',1.00),('thanks a ton!',1.00),('extremely cool',1.00),('satisfied 100%',1.00),('well protected',1.00),('state of the art',1.00),('unbelievable cool',1.00),('wonderful as described',1.00),('beyond my wildest dreams',1.00),('im very happy with this i',1.00),('best product',0.95),('awesome product',1.00),('good',1.00),('absolute',1.00),('important',1.00),('popularpopular',1.00),('professional',1.00),('use',1.00),('used',1.00),('historical',1.00),('historicaldiachronic',1.00),('strong',1.00);

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `review` tinytext,
  `ownername` varchar(200) DEFAULT NULL,
  `companyname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`id`,`review`,`ownername`,`companyname`,`status`) values (1,'good food','organizer1','KFC','Positive'),(2,'not so good','organizer1','KFC','Positive');

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `reservation` */

insert  into `reservation`(`id`,`name`,`email`,`phone`,`date`,`pass`) values (1,'user1','user1@gmail.com','9632140021','10-10-10','12345');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
