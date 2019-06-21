-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.52-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema online_appointment
--

CREATE DATABASE IF NOT EXISTS online_appointment;
USE online_appointment;

--
-- Definition of table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `no` text,
  `street` text,
  `city` text,
  `town` text,
  `user_uid` int(11) NOT NULL,
  PRIMARY KEY (`idaddress`),
  KEY `fk_address_user1` (`user_uid`),
  CONSTRAINT `fk_address_user1` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`idaddress`,`no`,`street`,`city`,`town`,`user_uid`) VALUES 
 (1,'3','asssa','vvvvvvv','ssssssss',2),
 (2,'45','dfgggggg','sddgf','aaaa',3);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


--
-- Definition of table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `discription` text,
  `jobs_idjobs` int(11) NOT NULL,
  `client` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `times_has_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_appointment_jobs1` (`jobs_idjobs`),
  KEY `fk_appointment_user1` (`client`),
  KEY `fk_appointment_user2` (`admin`),
  KEY `fk_appointment_times_has_user1` (`times_has_user_id`),
  CONSTRAINT `fk_appointment_jobs1` FOREIGN KEY (`jobs_idjobs`) REFERENCES `jobs` (`idjobs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appointment_times_has_user1` FOREIGN KEY (`times_has_user_id`) REFERENCES `times_has_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appointment_user1` FOREIGN KEY (`client`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_appointment_user2` FOREIGN KEY (`admin`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


--
-- Definition of table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `idcontact` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(45) DEFAULT NULL,
  `user_uid` int(11) NOT NULL,
  PRIMARY KEY (`idcontact`),
  KEY `fk_contact_user1` (`user_uid`),
  CONSTRAINT `fk_contact_user1` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`idcontact`,`mobile`,`user_uid`) VALUES 
 (1,'0713456784',2),
 (2,'0773566782',3);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`cid`,`country`,`status`) VALUES 
 (1,'India','1'),
 (2,'Katar','1'),
 (3,'Jerman','1'),
 (4,'Kuvait','1'),
 (5,'Ithali','1');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `dates`
--

DROP TABLE IF EXISTS `dates`;
CREATE TABLE `dates` (
  `iddates` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddates`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;


--
-- Definition of table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `idgender` int(11) NOT NULL AUTO_INCREMENT,
  `gen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` (`idgender`,`gen`) VALUES 
 (1,'Male'),
 (2,'Gender');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;


--
-- Definition of table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `idjobs` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `status` varchar(45) DEFAULT NULL,
  `country_cid` int(11) NOT NULL,
  `des` text,
  `salary` double DEFAULT NULL,
  `gender_idgender` int(11) NOT NULL,
  PRIMARY KEY (`idjobs`),
  KEY `fk_jobs_country1` (`country_cid`),
  KEY `fk_jobs_gender1` (`gender_idgender`),
  CONSTRAINT `fk_jobs_country1` FOREIGN KEY (`country_cid`) REFERENCES `country` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_gender1` FOREIGN KEY (`gender_idgender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`idjobs`,`name`,`status`,`country_cid`,`des`,`salary`,`gender_idgender`) VALUES 
 (1,'Room cleaner','1',1,'sssssssssssssss',300,1),
 (2,'vaitor','1',2,'sddsdscccccccc',250,2),
 (3,'nurce','1',3,'sssscccvvv',200,2),
 (4,'doctor','1',2,'jjjjjjjjjjjjjjj sssssssssssss ddd',400,1);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;


--
-- Definition of table `jobs_has_qualification`
--

DROP TABLE IF EXISTS `jobs_has_qualification`;
CREATE TABLE `jobs_has_qualification` (
  `jobs_idjobs` int(11) NOT NULL,
  `qualification_qliid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_jobs_has_qualification_jobs1` (`jobs_idjobs`),
  KEY `fk_jobs_has_qualification_qualification1` (`qualification_qliid`),
  CONSTRAINT `fk_jobs_has_qualification_jobs1` FOREIGN KEY (`jobs_idjobs`) REFERENCES `jobs` (`idjobs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_has_qualification_qualification1` FOREIGN KEY (`qualification_qliid`) REFERENCES `qualification` (`qliid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs_has_qualification`
--

/*!40000 ALTER TABLE `jobs_has_qualification` DISABLE KEYS */;
INSERT INTO `jobs_has_qualification` (`jobs_idjobs`,`qualification_qliid`,`id`) VALUES 
 (1,1,1),
 (1,2,2),
 (1,4,3),
 (2,1,4),
 (2,2,5),
 (3,1,6),
 (3,3,7),
 (4,1,8),
 (4,2,9);
/*!40000 ALTER TABLE `jobs_has_qualification` ENABLE KEYS */;


--
-- Definition of table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
CREATE TABLE `qualification` (
  `qliid` int(11) NOT NULL AUTO_INCREMENT,
  `qulification` text,
  `value` text,
  PRIMARY KEY (`qliid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` (`qliid`,`qulification`,`value`) VALUES 
 (1,'Language','English'),
 (2,'Experience','Must'),
 (3,'Language','Lathin'),
 (4,'Experience','Must');
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;


--
-- Definition of table `times`
--

DROP TABLE IF EXISTS `times`;
CREATE TABLE `times` (
  `idtimes` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtimes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `times`
--

/*!40000 ALTER TABLE `times` DISABLE KEYS */;
/*!40000 ALTER TABLE `times` ENABLE KEYS */;


--
-- Definition of table `times_has_user`
--

DROP TABLE IF EXISTS `times_has_user`;
CREATE TABLE `times_has_user` (
  `user_uid` int(11) NOT NULL,
  `times_idtimes` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dates_iddates` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_times_has_user_user1` (`user_uid`),
  KEY `fk_times_has_user_times1` (`times_idtimes`),
  KEY `fk_times_has_user_dates1` (`dates_iddates`),
  CONSTRAINT `fk_times_has_user_dates1` FOREIGN KEY (`dates_iddates`) REFERENCES `dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_times_has_user_times1` FOREIGN KEY (`times_idtimes`) REFERENCES `times` (`idtimes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_times_has_user_user1` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `times_has_user`
--

/*!40000 ALTER TABLE `times_has_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `times_has_user` ENABLE KEYS */;


--
-- Definition of table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`,`utype`) VALUES 
 (1,'Admin'),
 (2,'Client');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `email` text,
  `gender_idgender` int(11) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `fk_user_type` (`type_id`),
  KEY `fk_user_gender1` (`gender_idgender`),
  CONSTRAINT `fk_user_gender1` FOREIGN KEY (`gender_idgender`) REFERENCES `gender` (`idgender`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`uid`,`fname`,`lname`,`status`,`type_id`,`email`,`gender_idgender`,`password`) VALUES 
 (1,'nuwan','fernando','1',1,'a@gmail.com',2,'123'),
 (2,'samitha','wikramarathna','1',2,'b@gmail.com',1,'1234'),
 (3,'Senura','perera','1',2,'c@gmail.com',1,'123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `usercountry`
--

DROP TABLE IF EXISTS `usercountry`;
CREATE TABLE `usercountry` (
  `iduserCountry` int(11) NOT NULL AUTO_INCREMENT,
  `country_cid` int(11) NOT NULL,
  `user_uid` int(11) NOT NULL,
  PRIMARY KEY (`iduserCountry`),
  KEY `fk_userCountry_country1` (`country_cid`),
  KEY `fk_userCountry_user1` (`user_uid`),
  CONSTRAINT `fk_userCountry_country1` FOREIGN KEY (`country_cid`) REFERENCES `country` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userCountry_user1` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercountry`
--

/*!40000 ALTER TABLE `usercountry` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercountry` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
