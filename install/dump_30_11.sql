/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.1.8-MariaDB : Database - openclinic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`openclinic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `openclinic`;

/*Table structure for table `access_log_tbl` */

DROP TABLE IF EXISTS `access_log_tbl`;

CREATE TABLE `access_log_tbl` (
  `id_user` int(10) unsigned NOT NULL,
  `login` varchar(20) NOT NULL,
  `access_date` datetime NOT NULL,
  `id_profile` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id_user`,`access_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `access_log_tbl` */

insert  into `access_log_tbl`(`id_user`,`login`,`access_date`,`id_profile`) values (2,'admin','2015-11-08 02:19:52',1),(2,'admin','2015-11-08 02:20:01',1),(2,'admin','2015-11-08 02:21:50',1),(2,'admin','2015-11-08 02:37:39',1),(2,'admin','2015-11-08 02:37:50',1),(2,'admin','2015-11-08 02:38:20',1),(2,'admin','2015-11-08 02:39:09',1),(2,'admin','2015-11-08 02:39:44',1),(2,'admin','2015-11-08 02:40:09',1),(2,'admin','2015-11-08 02:43:55',1),(2,'admin','2015-11-08 02:44:57',1),(2,'admin','2015-11-08 02:45:36',1),(2,'admin','2015-11-08 02:46:04',1),(2,'admin','2015-11-08 02:46:30',1),(2,'admin','2015-11-08 02:46:49',1),(2,'admin','2015-11-08 02:47:22',1),(2,'admin','2015-11-08 02:47:35',1),(2,'admin','2015-11-08 03:03:51',1),(2,'admin','2015-11-08 03:04:08',1),(2,'admin','2015-11-08 03:04:14',1),(2,'admin','2015-11-08 03:05:29',1),(2,'admin','2015-11-08 03:06:06',1),(2,'admin','2015-11-08 04:45:58',1),(2,'admin','2015-11-08 05:28:21',1),(2,'admin','2015-11-08 05:28:26',1),(2,'admin','2015-11-08 05:29:03',1),(2,'admin','2015-11-08 05:34:30',1),(2,'admin','2015-11-08 08:34:32',1),(2,'admin','2015-11-08 08:56:29',1),(4,'carmelo','2015-11-08 08:58:40',3),(2,'admin','2015-11-08 09:01:19',1),(2,'admin','2015-11-08 14:27:52',1),(2,'admin','2015-11-08 14:36:18',1),(2,'admin','2015-11-30 14:41:05',1),(2,'admin','2015-11-30 15:34:18',1),(2,'admin','2015-11-30 16:30:24',1);

/*Table structure for table `connection_problem_tbl` */

DROP TABLE IF EXISTS `connection_problem_tbl`;

CREATE TABLE `connection_problem_tbl` (
  `id_problem` int(10) unsigned NOT NULL,
  `id_connection` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_problem`,`id_connection`),
  KEY `id_connection` (`id_connection`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `connection_problem_tbl` */

/*Table structure for table `deleted_patient_tbl` */

DROP TABLE IF EXISTS `deleted_patient_tbl`;

CREATE TABLE `deleted_patient_tbl` (
  `id_patient` int(10) unsigned NOT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `first_name` varchar(25) NOT NULL,
  `surname1` varchar(30) NOT NULL,
  `surname2` varchar(30) DEFAULT '',
  `address` text,
  `phone_contact` text,
  `sex` enum('V','H') NOT NULL DEFAULT 'V',
  `race` varchar(25) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(40) DEFAULT NULL,
  `decease_date` date DEFAULT NULL,
  `nts` varchar(30) DEFAULT NULL,
  `nss` varchar(30) DEFAULT NULL,
  `family_situation` text,
  `labour_situation` text,
  `education` text,
  `insurance_company` varchar(30) DEFAULT NULL,
  `id_member` int(10) unsigned DEFAULT NULL,
  `collegiate_number` varchar(20) DEFAULT NULL,
  `birth_growth` text,
  `growth_sexuality` text,
  `feed` text,
  `habits` text,
  `peristaltic_conditions` text,
  `psychological` text,
  `children_complaint` text,
  `venereal_disease` text,
  `accident_surgical_operation` text,
  `medicinal_intolerance` text,
  `mental_illness` text,
  `parents_status_health` text,
  `brothers_status_health` text,
  `spouse_childs_status_health` text,
  `family_illness` text,
  `create_date` datetime NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `login` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `deleted_patient_tbl` */

insert  into `deleted_patient_tbl`(`id_patient`,`nif`,`first_name`,`surname1`,`surname2`,`address`,`phone_contact`,`sex`,`race`,`birth_date`,`birth_place`,`decease_date`,`nts`,`nss`,`family_situation`,`labour_situation`,`education`,`insurance_company`,`id_member`,`collegiate_number`,`birth_growth`,`growth_sexuality`,`feed`,`habits`,`peristaltic_conditions`,`psychological`,`children_complaint`,`venereal_disease`,`accident_surgical_operation`,`medicinal_intolerance`,`mental_illness`,`parents_status_health`,`brothers_status_health`,`spouse_childs_status_health`,`family_illness`,`create_date`,`id_user`,`login`) values (3,'1234','Maria+Rosa++B.','Bortolotti',NULL,'aaa','aaa','H',NULL,'0000-00-00',NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-11-30 18:06:22',2,'admin');

/*Table structure for table `deleted_problem_tbl` */

DROP TABLE IF EXISTS `deleted_problem_tbl`;

CREATE TABLE `deleted_problem_tbl` (
  `id_problem` int(10) unsigned NOT NULL,
  `last_update_date` date NOT NULL,
  `id_patient` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned DEFAULT NULL,
  `collegiate_number` varchar(20) DEFAULT NULL,
  `order_number` tinyint(3) unsigned NOT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date DEFAULT NULL,
  `meeting_place` varchar(40) DEFAULT NULL,
  `wording` text NOT NULL,
  `subjective` text,
  `objective` text,
  `appreciation` text,
  `action_plan` text,
  `prescription` text,
  `create_date` datetime NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `login` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `deleted_problem_tbl` */

insert  into `deleted_problem_tbl`(`id_problem`,`last_update_date`,`id_patient`,`id_member`,`collegiate_number`,`order_number`,`opening_date`,`closing_date`,`meeting_place`,`wording`,`subjective`,`objective`,`appreciation`,`action_plan`,`prescription`,`create_date`,`id_user`,`login`) values (3,'2015-11-08',3,3,'342343445',1,'2015-11-08',NULL,NULL,'asdfasdfasdfasfdasdf',NULL,NULL,NULL,NULL,NULL,'2015-11-30 18:06:22',2,'admin');

/*Table structure for table `history_tbl` */

DROP TABLE IF EXISTS `history_tbl`;

CREATE TABLE `history_tbl` (
  `id_patient` int(10) unsigned NOT NULL,
  `birth_growth` text,
  `growth_sexuality` text,
  `feed` text,
  `habits` text,
  `peristaltic_conditions` text,
  `psychological` text,
  `children_complaint` text,
  `venereal_disease` text,
  `accident_surgical_operation` text,
  `medicinal_intolerance` text,
  `mental_illness` text,
  `parents_status_health` text,
  `brothers_status_health` text,
  `spouse_childs_status_health` text,
  `family_illness` text,
  PRIMARY KEY (`id_patient`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `history_tbl` */

insert  into `history_tbl`(`id_patient`,`birth_growth`,`growth_sexuality`,`feed`,`habits`,`peristaltic_conditions`,`psychological`,`children_complaint`,`venereal_disease`,`accident_surgical_operation`,`medicinal_intolerance`,`mental_illness`,`parents_status_health`,`brothers_status_health`,`spouse_childs_status_health`,`family_illness`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asdfasd','asdfasdf','asdfasdf','10-10-2015+-+visita+bla+bla+bla'),(7,'Cadeirante',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','jjjjj',NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'a','a','a','a','a','a','a','aa','a','a','a','a','a','a','a'),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `medical_test_tbl` */

DROP TABLE IF EXISTS `medical_test_tbl`;

CREATE TABLE `medical_test_tbl` (
  `id_test` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_problem` int(10) unsigned NOT NULL,
  `document_type` varchar(128) DEFAULT NULL,
  `path_filename` text NOT NULL,
  PRIMARY KEY (`id_test`),
  KEY `id_problem` (`id_problem`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `medical_test_tbl` */

insert  into `medical_test_tbl`(`id_test`,`id_problem`,`document_type`,`path_filename`) values (1,3,'Quadro+clinico+geral','..%2Ftests%2Frecord_log_tbl.sql');

/*Table structure for table `patient_tbl` */

DROP TABLE IF EXISTS `patient_tbl`;

CREATE TABLE `patient_tbl` (
  `id_patient` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nif` varchar(20) DEFAULT NULL,
  `first_name` varchar(25) NOT NULL,
  `surname1` varchar(30) NOT NULL,
  `surname2` varchar(30) DEFAULT '',
  `address` text,
  `phone_contact` text,
  `sex` enum('V','H') NOT NULL DEFAULT 'V',
  `race` varchar(25) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(40) DEFAULT NULL,
  `decease_date` date DEFAULT NULL,
  `nts` varchar(30) DEFAULT NULL,
  `nss` varchar(30) DEFAULT NULL,
  `family_situation` text,
  `labour_situation` text,
  `education` text,
  `insurance_company` varchar(30) DEFAULT NULL,
  `id_member` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_patient`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `patient_tbl` */

insert  into `patient_tbl`(`id_patient`,`nif`,`first_name`,`surname1`,`surname2`,`address`,`phone_contact`,`sex`,`race`,`birth_date`,`birth_place`,`decease_date`,`nts`,`nss`,`family_situation`,`labour_situation`,`education`,`insurance_company`,`id_member`) values (1,'aaa','Andre','Medina',NULL,'aaa','aa','V','aaa','2010-03-02','teste','0000-00-00','aa','aa','aaa','aaa','aaa','aaa',3),(2,'12','Joao','Siqueira',NULL,NULL,NULL,'V',NULL,'0000-00-00',NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'A+117','Aline','Cristina+Silva+Nascimento','210+18287797+0018','Av.+Emilio+Bosco+185%0D%0AMatao','3864+0815%0D%0A9+9315+3170','H','branca','1995-09-28','Campinas','2010-10-25','38+795+563+x','231+1828+7797+0018','bolsa++familia','tem+beneficio','saude',NULL,3),(4,'j100','Nome','Sobrenome',NULL,'asdfasdf','sdasdfas','V',NULL,'0000-00-00',NULL,'0000-00-00',NULL,NULL,NULL,'o+pai+trabalho+na+empresa...%0D%0Aa+mae+na+empresa+x',NULL,NULL,NULL),(5,'a','a','a',NULL,NULL,NULL,'V',NULL,'0000-00-00',NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'J-100','Daniel','da+Silva','1234','assa','asdfasdf','V',NULL,'0000-00-00',NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'D87','Daniel','Paiva+Costa','898+0041+36009811',NULL,'988048767','V','pardo','2006-11-03','Paulinia','2014-07-11',NULL,NULL,NULL,'Pai+autonomo',NULL,'autismo+F+84',3);

/*Table structure for table `problem_tbl` */

DROP TABLE IF EXISTS `problem_tbl`;

CREATE TABLE `problem_tbl` (
  `id_problem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_update_date` date NOT NULL,
  `id_patient` int(10) unsigned NOT NULL,
  `id_member` int(10) unsigned DEFAULT NULL,
  `order_number` tinyint(3) unsigned NOT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date DEFAULT NULL,
  `meeting_place` varchar(40) DEFAULT NULL,
  `wording` text NOT NULL,
  `subjective` text,
  `objective` text,
  `appreciation` text,
  `action_plan` text,
  `prescription` text,
  PRIMARY KEY (`id_problem`),
  KEY `id_patient` (`id_patient`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `problem_tbl` */

insert  into `problem_tbl`(`id_problem`,`last_update_date`,`id_patient`,`id_member`,`order_number`,`opening_date`,`closing_date`,`meeting_place`,`wording`,`subjective`,`objective`,`appreciation`,`action_plan`,`prescription`) values (1,'2015-11-08',2,NULL,1,'2015-11-08',NULL,NULL,'a','a','a','a','a','a'),(2,'2015-11-08',2,NULL,2,'2015-11-08',NULL,NULL,'b','b','b','b','b','b');

/*Table structure for table `record_log_tbl` */

DROP TABLE IF EXISTS `record_log_tbl`;

CREATE TABLE `record_log_tbl` (
  `id_user` int(10) unsigned NOT NULL,
  `login` varchar(20) NOT NULL,
  `access_date` datetime NOT NULL,
  `table_name` varchar(25) NOT NULL,
  `operation` varchar(10) NOT NULL,
  `affected_row` text NOT NULL,
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `record_log_tbl` */

insert  into `record_log_tbl`(`id_user`,`login`,`access_date`,`table_name`,`operation`,`affected_row`) values (2,'admin','2015-11-08 03:07:11','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22nif%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22first_name%22%3Bs%3A4%3A%22aaaa%22%3Bs%3A8%3A%22surname1%22%3Bs%3A3%3A%22aaa%22%3Bs%3A8%3A%22surname2%22%3Bs%3A3%3A%22aaa%22%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%222010-03-02%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A5%3A%22teste%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22nss%22%3Bs%3A2%3A%22aa%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22education%22%3Bs%3A3%3A%22aaa%22%3Bs%3A17%3A%22insurance_company%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A1%3A%225%22%3B%7D'),(2,'admin','2015-11-08 09:18:01','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22nif%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22first_name%22%3Bs%3A4%3A%22aaaa%22%3Bs%3A8%3A%22surname1%22%3Bs%3A3%3A%22aaa%22%3Bs%3A8%3A%22surname2%22%3Bs%3A3%3A%22aaa%22%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%222010-03-02%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A5%3A%22teste%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22nss%22%3Bs%3A2%3A%22aa%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22education%22%3Bs%3A3%3A%22aaa%22%3Bs%3A17%3A%22insurance_company%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A1%3A%225%22%3B%7D'),(2,'admin','2015-11-08 09:19:41','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22nif%22%3Bs%3A2%3A%2212%22%3Bs%3A10%3A%22first_name%22%3Bs%3A4%3A%22Joao%22%3Bs%3A8%3A%22surname1%22%3Bs%3A8%3A%22Siqueira%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3BN%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-08 09:19:58','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22nif%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Andre%22%3Bs%3A8%3A%22surname1%22%3Bs%3A6%3A%22Medina%22%3Bs%3A8%3A%22surname2%22%3Bs%3A3%3A%22aaa%22%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%222010-03-02%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A5%3A%22teste%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22nss%22%3Bs%3A2%3A%22aa%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22education%22%3Bs%3A3%3A%22aaa%22%3Bs%3A17%3A%22insurance_company%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A1%3A%225%22%3B%7D'),(2,'admin','2015-11-08 09:20:11','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%221%22%3Bs%3A3%3A%22nif%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Andre%22%3Bs%3A8%3A%22surname1%22%3Bs%3A6%3A%22Medina%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3Bs%3A3%3A%22aaa%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%222010-03-02%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A5%3A%22teste%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3Bs%3A2%3A%22aa%22%3Bs%3A3%3A%22nss%22%3Bs%3A2%3A%22aa%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22education%22%3Bs%3A3%3A%22aaa%22%3Bs%3A17%3A%22insurance_company%22%3Bs%3A3%3A%22aaa%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A1%3A%225%22%3B%7D'),(2,'admin','2015-11-08 09:21:07','','INSERT','a%3A15%3A%7Bs%3A10%3A%22id_problem%22%3Bs%3A1%3A%221%22%3Bs%3A16%3A%22last_update_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A12%3A%22order_number%22%3Bs%3A1%3A%221%22%3Bs%3A12%3A%22opening_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A12%3A%22closing_date%22%3BN%3Bs%3A13%3A%22meeting_place%22%3BN%3Bs%3A7%3A%22wording%22%3Bs%3A1%3A%22a%22%3Bs%3A10%3A%22subjective%22%3Bs%3A1%3A%22a%22%3Bs%3A9%3A%22objective%22%3Bs%3A1%3A%22a%22%3Bs%3A12%3A%22appreciation%22%3Bs%3A1%3A%22a%22%3Bs%3A11%3A%22action_plan%22%3Bs%3A1%3A%22a%22%3Bs%3A12%3A%22prescription%22%3Bs%3A1%3A%22a%22%3Bs%3A17%3A%22collegiate_number%22%3BN%3B%7D'),(2,'admin','2015-11-08 09:21:24','','INSERT','a%3A15%3A%7Bs%3A10%3A%22id_problem%22%3Bs%3A1%3A%222%22%3Bs%3A16%3A%22last_update_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A12%3A%22order_number%22%3Bs%3A1%3A%222%22%3Bs%3A12%3A%22opening_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A12%3A%22closing_date%22%3BN%3Bs%3A13%3A%22meeting_place%22%3BN%3Bs%3A7%3A%22wording%22%3Bs%3A1%3A%22b%22%3Bs%3A10%3A%22subjective%22%3Bs%3A1%3A%22b%22%3Bs%3A9%3A%22objective%22%3Bs%3A1%3A%22b%22%3Bs%3A12%3A%22appreciation%22%3Bs%3A1%3A%22b%22%3Bs%3A11%3A%22action_plan%22%3Bs%3A1%3A%22b%22%3Bs%3A12%3A%22prescription%22%3Bs%3A1%3A%22b%22%3Bs%3A17%3A%22collegiate_number%22%3BN%3B%7D'),(2,'admin','2015-11-08 14:37:08','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%223%22%3Bs%3A3%3A%22nif%22%3Bs%3A4%3A%221234%22%3Bs%3A10%3A%22first_name%22%3Bs%3A10%3A%22Maria%2BRosa%22%3Bs%3A8%3A%22surname1%22%3Bs%3A10%3A%22Bortolotti%22%3Bs%3A8%3A%22surname2%22%3Bs%3A9%3A%22Belinatti%22%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A3%3A%22aaa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-08 14:37:53','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%223%22%3Bs%3A3%3A%22nif%22%3Bs%3A4%3A%221234%22%3Bs%3A10%3A%22first_name%22%3Bs%3A14%3A%22Maria%2BRosa%2B%2BB.%22%3Bs%3A8%3A%22surname1%22%3Bs%3A10%3A%22Bortolotti%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A3%3A%22aaa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-08 14:41:04','','INSERT','a%3A15%3A%7Bs%3A10%3A%22id_problem%22%3Bs%3A1%3A%223%22%3Bs%3A16%3A%22last_update_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%223%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A12%3A%22order_number%22%3Bs%3A1%3A%221%22%3Bs%3A12%3A%22opening_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A12%3A%22closing_date%22%3BN%3Bs%3A13%3A%22meeting_place%22%3BN%3Bs%3A7%3A%22wording%22%3Bs%3A20%3A%22asdfasdfasdfasfdasdf%22%3Bs%3A10%3A%22subjective%22%3BN%3Bs%3A9%3A%22objective%22%3BN%3Bs%3A12%3A%22appreciation%22%3BN%3Bs%3A11%3A%22action_plan%22%3BN%3Bs%3A12%3A%22prescription%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3B%7D'),(2,'admin','2015-11-30 14:45:17','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%224%22%3Bs%3A3%3A%22nif%22%3Bs%3A4%3A%22j100%22%3Bs%3A10%3A%22first_name%22%3Bs%3A4%3A%22Nome%22%3Bs%3A8%3A%22surname1%22%3Bs%3A9%3A%22Sobrenome%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A8%3A%22sdasdfas%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3Bs%3A52%3A%22o%2Bpai%2Btrabalho%2Bna%2Bempresa...%250D%250Aa%2Bmae%2Bna%2Bempresa%2Bx%22%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-30 15:00:44','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%222%22%3Bs%3A21%3A%22parents_status_health%22%3Bs%3A7%3A%22asdfasd%22%3Bs%3A22%3A%22brothers_status_health%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A27%3A%22spouse_childs_status_health%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A14%3A%22family_illness%22%3Bs%3A8%3A%22asdfasdf%22%3B%7D'),(2,'admin','2015-11-30 15:01:38','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%222%22%3Bs%3A21%3A%22parents_status_health%22%3Bs%3A7%3A%22asdfasd%22%3Bs%3A22%3A%22brothers_status_health%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A27%3A%22spouse_childs_status_health%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A14%3A%22family_illness%22%3Bs%3A31%3A%2210-10-2015%2B-%2Bvisita%2Bbla%2Bbla%2Bbla%22%3B%7D'),(2,'admin','2015-11-30 16:30:43','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%225%22%3Bs%3A3%3A%22nif%22%3Bs%3A1%3A%22a%22%3Bs%3A10%3A%22first_name%22%3Bs%3A1%3A%22a%22%3Bs%3A8%3A%22surname1%22%3Bs%3A1%3A%22a%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3BN%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-30 16:52:00','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22J-100%22%3Bs%3A10%3A%22first_name%22%3Bs%3A6%3A%22Daniel%22%3Bs%3A8%3A%22surname1%22%3Bs%3A8%3A%22da%2BSilva%22%3Bs%3A8%3A%22surname2%22%3Bs%3A7%3A%22Pereira%22%3Bs%3A7%3A%22address%22%3Bs%3A4%3A%22assa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-30 16:52:53','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22J-100%22%3Bs%3A10%3A%22first_name%22%3Bs%3A6%3A%22Daniel%22%3Bs%3A8%3A%22surname1%22%3Bs%3A8%3A%22da%2BSilva%22%3Bs%3A8%3A%22surname2%22%3Bs%3A4%3A%221234%22%3Bs%3A7%3A%22address%22%3Bs%3A4%3A%22assa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A8%3A%22asdfasdf%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-30 17:26:39','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%226%22%3Bs%3A21%3A%22parents_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A22%3A%22brothers_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A27%3A%22spouse_childs_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A14%3A%22family_illness%22%3Bs%3A1%3A%22a%22%3B%7D'),(2,'admin','2015-11-30 17:26:43','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%226%22%3Bs%3A21%3A%22parents_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A22%3A%22brothers_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A27%3A%22spouse_childs_status_health%22%3Bs%3A1%3A%22a%22%3Bs%3A14%3A%22family_illness%22%3Bs%3A1%3A%22a%22%3B%7D'),(2,'admin','2015-11-30 17:39:37','','UPDATE','a%3A12%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%226%22%3Bs%3A12%3A%22birth_growth%22%3Bs%3A1%3A%22a%22%3Bs%3A16%3A%22growth_sexuality%22%3Bs%3A1%3A%22a%22%3Bs%3A4%3A%22feed%22%3Bs%3A1%3A%22a%22%3Bs%3A6%3A%22habits%22%3Bs%3A1%3A%22a%22%3Bs%3A22%3A%22peristaltic_conditions%22%3Bs%3A1%3A%22a%22%3Bs%3A13%3A%22psychological%22%3Bs%3A1%3A%22a%22%3Bs%3A18%3A%22children_complaint%22%3Bs%3A1%3A%22a%22%3Bs%3A16%3A%22venereal_disease%22%3Bs%3A2%3A%22aa%22%3Bs%3A27%3A%22accident_surgical_operation%22%3Bs%3A1%3A%22a%22%3Bs%3A21%3A%22medicinal_intolerance%22%3Bs%3A1%3A%22a%22%3Bs%3A14%3A%22mental_illness%22%3Bs%3A1%3A%22a%22%3B%7D'),(2,'admin','2015-11-30 18:06:22','','DELETE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%223%22%3Bs%3A3%3A%22nif%22%3Bs%3A4%3A%221234%22%3Bs%3A10%3A%22first_name%22%3Bs%3A14%3A%22Maria%2BRosa%2B%2BB.%22%3Bs%3A8%3A%22surname1%22%3Bs%3A10%3A%22Bortolotti%22%3Bs%3A8%3A%22surname2%22%3BN%3Bs%3A7%3A%22address%22%3Bs%3A3%3A%22aaa%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A3%3A%22aaa%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3BN%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A11%3A%22birth_place%22%3BN%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%220000-00-00%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3BN%3Bs%3A3%3A%22age%22%3BN%3B%7D'),(2,'admin','2015-11-30 18:06:22','','DELETE','a%3A15%3A%7Bs%3A10%3A%22id_problem%22%3Bs%3A1%3A%223%22%3Bs%3A16%3A%22last_update_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%223%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A12%3A%22order_number%22%3Bs%3A1%3A%221%22%3Bs%3A12%3A%22opening_date%22%3Bs%3A10%3A%222015-11-08%22%3Bs%3A12%3A%22closing_date%22%3BN%3Bs%3A13%3A%22meeting_place%22%3BN%3Bs%3A7%3A%22wording%22%3Bs%3A20%3A%22asdfasdfasdfasfdasdf%22%3Bs%3A10%3A%22subjective%22%3BN%3Bs%3A9%3A%22objective%22%3BN%3Bs%3A12%3A%22appreciation%22%3BN%3Bs%3A11%3A%22action_plan%22%3BN%3Bs%3A12%3A%22prescription%22%3BN%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3B%7D'),(2,'admin','2015-11-30 18:39:24','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 18:46:42','','UPDATE','a%3A12%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A12%3A%22birth_growth%22%3Bs%3A10%3A%22Cadeirante%22%3Bs%3A16%3A%22growth_sexuality%22%3BN%3Bs%3A4%3A%22feed%22%3BN%3Bs%3A6%3A%22habits%22%3BN%3Bs%3A22%3A%22peristaltic_conditions%22%3BN%3Bs%3A13%3A%22psychological%22%3BN%3Bs%3A18%3A%22children_complaint%22%3BN%3Bs%3A16%3A%22venereal_disease%22%3BN%3Bs%3A27%3A%22accident_surgical_operation%22%3BN%3Bs%3A21%3A%22medicinal_intolerance%22%3BN%3Bs%3A14%3A%22mental_illness%22%3BN%3B%7D'),(2,'admin','2015-11-30 18:47:05','','UPDATE','a%3A12%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A12%3A%22birth_growth%22%3Bs%3A10%3A%22Cadeirante%22%3Bs%3A16%3A%22growth_sexuality%22%3BN%3Bs%3A4%3A%22feed%22%3BN%3Bs%3A6%3A%22habits%22%3BN%3Bs%3A22%3A%22peristaltic_conditions%22%3BN%3Bs%3A13%3A%22psychological%22%3BN%3Bs%3A18%3A%22children_complaint%22%3BN%3Bs%3A16%3A%22venereal_disease%22%3BN%3Bs%3A27%3A%22accident_surgical_operation%22%3BN%3Bs%3A21%3A%22medicinal_intolerance%22%3BN%3Bs%3A14%3A%22mental_illness%22%3Bs%3A1%3A%22a%22%3B%7D'),(2,'admin','2015-11-30 18:47:40','','UPDATE','a%3A12%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A12%3A%22birth_growth%22%3Bs%3A10%3A%22Cadeirante%22%3Bs%3A16%3A%22growth_sexuality%22%3BN%3Bs%3A4%3A%22feed%22%3BN%3Bs%3A6%3A%22habits%22%3BN%3Bs%3A22%3A%22peristaltic_conditions%22%3BN%3Bs%3A13%3A%22psychological%22%3BN%3Bs%3A18%3A%22children_complaint%22%3BN%3Bs%3A16%3A%22venereal_disease%22%3BN%3Bs%3A27%3A%22accident_surgical_operation%22%3BN%3Bs%3A21%3A%22medicinal_intolerance%22%3BN%3Bs%3A14%3A%22mental_illness%22%3Bs%3A1%3A%22a%22%3B%7D'),(2,'admin','2015-11-30 18:48:28','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A21%3A%22parents_status_health%22%3BN%3Bs%3A22%3A%22brothers_status_health%22%3BN%3Bs%3A27%3A%22spouse_childs_status_health%22%3BN%3Bs%3A14%3A%22family_illness%22%3BN%3B%7D'),(2,'admin','2015-11-30 18:48:43','','UPDATE','a%3A5%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A21%3A%22parents_status_health%22%3Bs%3A5%3A%22jjjjj%22%3Bs%3A22%3A%22brothers_status_health%22%3BN%3Bs%3A27%3A%22spouse_childs_status_health%22%3BN%3Bs%3A14%3A%22family_illness%22%3BN%3B%7D'),(2,'admin','2015-11-30 19:04:10','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 19:06:23','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 19:06:53','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A14%3A%22bolsa%2B%2Bfamilia%22%3Bs%3A16%3A%22labour_situation%22%3BN%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 19:08:26','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3Bs%3A20%3A%22Av.%2BEmilio%2BBosco%2B185%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A14%3A%22bolsa%2B%2Bfamilia%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A13%3A%22tem%2Bbeneficio%22%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 19:09:35','','UPDATE','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%227%22%3Bs%3A3%3A%22nif%22%3Bs%3A5%3A%22A%2B117%22%3Bs%3A10%3A%22first_name%22%3Bs%3A5%3A%22Aline%22%3Bs%3A8%3A%22surname1%22%3Bs%3A25%3A%22Cristina%2BSilva%2BNascimento%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22210%2B18287797%2B0018%22%3Bs%3A7%3A%22address%22%3Bs%3A31%3A%22Av.%2BEmilio%2BBosco%2B185%250D%250AMatao%22%3Bs%3A13%3A%22phone_contact%22%3Bs%3A26%3A%223864%2B0815%250D%250A9%2B9315%2B3170%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22H%22%3Bs%3A4%3A%22race%22%3Bs%3A6%3A%22branca%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%221995-09-28%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Campinas%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222010-10-25%22%3Bs%3A3%3A%22nts%22%3Bs%3A12%3A%2238%2B795%2B563%2Bx%22%3Bs%3A3%3A%22nss%22%3Bs%3A18%3A%22231%2B1828%2B7797%2B0018%22%3Bs%3A16%3A%22family_situation%22%3Bs%3A14%3A%22bolsa%2B%2Bfamilia%22%3Bs%3A16%3A%22labour_situation%22%3Bs%3A13%3A%22tem%2Bbeneficio%22%3Bs%3A9%3A%22education%22%3Bs%3A5%3A%22saude%22%3Bs%3A17%3A%22insurance_company%22%3BN%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A2%3A%2215%22%3B%7D'),(2,'admin','2015-11-30 19:25:06','','INSERT','a%3A21%3A%7Bs%3A10%3A%22id_patient%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22nif%22%3Bs%3A3%3A%22D87%22%3Bs%3A10%3A%22first_name%22%3Bs%3A6%3A%22Daniel%22%3Bs%3A8%3A%22surname1%22%3Bs%3A11%3A%22Paiva%2BCosta%22%3Bs%3A8%3A%22surname2%22%3Bs%3A17%3A%22898%2B0041%2B36009811%22%3Bs%3A7%3A%22address%22%3BN%3Bs%3A13%3A%22phone_contact%22%3Bs%3A9%3A%22988048767%22%3Bs%3A3%3A%22sex%22%3Bs%3A1%3A%22V%22%3Bs%3A4%3A%22race%22%3Bs%3A5%3A%22pardo%22%3Bs%3A10%3A%22birth_date%22%3Bs%3A10%3A%222006-11-03%22%3Bs%3A11%3A%22birth_place%22%3Bs%3A8%3A%22Paulinia%22%3Bs%3A12%3A%22decease_date%22%3Bs%3A10%3A%222014-07-11%22%3Bs%3A3%3A%22nts%22%3BN%3Bs%3A3%3A%22nss%22%3BN%3Bs%3A16%3A%22family_situation%22%3BN%3Bs%3A16%3A%22labour_situation%22%3Bs%3A12%3A%22Pai%2Bautonomo%22%3Bs%3A9%3A%22education%22%3BN%3Bs%3A17%3A%22insurance_company%22%3Bs%3A12%3A%22autismo%2BF%2B84%22%3Bs%3A9%3A%22id_member%22%3Bs%3A1%3A%223%22%3Bs%3A17%3A%22collegiate_number%22%3Bs%3A9%3A%22342343445%22%3Bs%3A3%3A%22age%22%3Bs%3A1%3A%227%22%3B%7D');

/*Table structure for table `relative_tbl` */

DROP TABLE IF EXISTS `relative_tbl`;

CREATE TABLE `relative_tbl` (
  `id_patient` int(10) unsigned NOT NULL,
  `id_relative` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_patient`,`id_relative`),
  KEY `id_relative` (`id_relative`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `relative_tbl` */

/*Table structure for table `session_tbl` */

DROP TABLE IF EXISTS `session_tbl`;

CREATE TABLE `session_tbl` (
  `login` varchar(20) NOT NULL,
  `last_updated_date` datetime NOT NULL,
  `token` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `session_tbl` */

insert  into `session_tbl`(`login`,`last_updated_date`,`token`) values ('carmelo','2015-11-08 09:01:10',8555),('admin','2015-11-30 19:42:36',2484);

/*Table structure for table `setting_tbl` */

DROP TABLE IF EXISTS `setting_tbl`;

CREATE TABLE `setting_tbl` (
  `clinic_name` varchar(128) DEFAULT NULL,
  `clinic_hours` varchar(128) DEFAULT NULL,
  `clinic_address` text,
  `clinic_phone` varchar(40) DEFAULT NULL,
  `clinic_url` text,
  `session_timeout` smallint(5) unsigned NOT NULL DEFAULT '20',
  `items_per_page` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `version` varchar(14) NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT 'en',
  `id_theme` smallint(5) unsigned NOT NULL DEFAULT '1',
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MIN_ROWS=1 MAX_ROWS=1;

/*Data for the table `setting_tbl` */

insert  into `setting_tbl`(`clinic_name`,`clinic_hours`,`clinic_address`,`clinic_phone`,`clinic_url`,`session_timeout`,`items_per_page`,`version`,`language`,`id_theme`) values ('','','Sesame Street','','http://www.example.com',20,10,'0.8.20130912','en',1);

/*Table structure for table `staff_tbl` */

DROP TABLE IF EXISTS `staff_tbl`;

CREATE TABLE `staff_tbl` (
  `id_member` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_type` enum('Administrative','Doctor') NOT NULL DEFAULT 'Administrative',
  `collegiate_number` varchar(20) DEFAULT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `first_name` varchar(25) NOT NULL,
  `surname1` varchar(30) NOT NULL,
  `surname2` varchar(30) DEFAULT '',
  `address` text,
  `phone_contact` text,
  `id_user` int(10) unsigned DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_member`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `staff_tbl` */

insert  into `staff_tbl`(`id_member`,`member_type`,`collegiate_number`,`nif`,`first_name`,`surname1`,`surname2`,`address`,`phone_contact`,`id_user`,`login`) values (4,'Administrative',NULL,'123456785','Benito','Camelas',NULL,'Camino+de+las+Torres+777','555-45+45+45',3,'benito'),(3,'Doctor','342343445','34567123','Carmelo','CotÃ³n','CotÃ³n','Plaza EspaÃ±a 222','555-23 24 23',4,'carmelo'),(2,'Administrative',NULL,'no+importa','John','Doe','Smith',NULL,NULL,2,'admin'),(1,'Administrative',NULL,'no importa','Admin','Admin','Admin','No importa','No importa',1,'sysop');

/*Table structure for table `theme_tbl` */

DROP TABLE IF EXISTS `theme_tbl`;

CREATE TABLE `theme_tbl` (
  `id_theme` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(50) NOT NULL,
  `css_file` varchar(50) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `theme_tbl` */

insert  into `theme_tbl`(`id_theme`,`theme_name`,`css_file`) values (1,'OpenClinic','openclinic.css');

/*Table structure for table `user_tbl` */

DROP TABLE IF EXISTS `user_tbl`;

CREATE TABLE `user_tbl` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pwd` varchar(32) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `actived` enum('N','Y') NOT NULL DEFAULT 'N',
  `id_theme` smallint(5) unsigned NOT NULL DEFAULT '1',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_user`),
  KEY `id_theme` (`id_theme`),
  KEY `id_profile` (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user_tbl` */

insert  into `user_tbl`(`id_user`,`pwd`,`email`,`actived`,`id_theme`,`id_profile`) values (1,'73850afb68a28c03ef4d2e426634e041',NULL,'Y',1,1),(2,'21232f297a57a5a743894a0e4a801fc3',NULL,'Y',1,1),(3,'698dc19d489c4e4db73e28a713eab07b',NULL,'Y',1,3),(4,'16b2d4da09bdf7b04ea3d25b41a049b3',NULL,'Y',1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
