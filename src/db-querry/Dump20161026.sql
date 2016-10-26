CREATE DATABASE  IF NOT EXISTS `cleanu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cleanu`;
-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: cleanu
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Npool_DLT`
--

DROP TABLE IF EXISTS `Npool_DLT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Npool_DLT` (
  `id` bigint(20) NOT NULL,
  `employee` varchar(10) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `t1` varchar(45) DEFAULT NULL,
  `t2` varchar(45) DEFAULT NULL,
  `t3` varchar(45) DEFAULT NULL,
  `t4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Npool_DLT`
--

LOCK TABLES `Npool_DLT` WRITE;
/*!40000 ALTER TABLE `Npool_DLT` DISABLE KEYS */;
INSERT INTO `Npool_DLT` VALUES (1,'emp1','13/10/16','0','0','aaass','0'),(2,'emp2','13/10/16','0','assD3rf#','adddd','0'),(3,'emp3','13/10/16','aqwsss','sdddda','sss#gs','wfvvfg'),(4,'emp4','13/10/16','0','0','ssss','0');
/*!40000 ALTER TABLE `Npool_DLT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `email` varchar(52) NOT NULL,
  `message` varchar(250) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'0','','hi','2016-07-27 14:14:20'),(4,'0','','sssssss','2016-07-27 14:39:22'),(5,'grrgd','gd','gddg','2016-07-27 17:21:41'),(6,'fsa','fsa','asfa','2016-07-27 17:23:19'),(7,'sree','ssssio','sakdjda','2016-07-27 17:28:57'),(8,'sree','ssssio@gmai.com','sakdjda','2016-07-27 17:29:23'),(9,'ssd','dfg','gfdsd','2016-07-29 14:36:07'),(10,'dddaa','ssssio@gmai.com','sss','2016-07-30 12:33:26'),(11,'','','','2016-07-31 10:37:41'),(12,'ss','ssssio@gmai.com','ss','2016-08-09 18:41:32'),(13,'ssss','ssssio@gmai.com','sdvs','2016-08-09 18:42:01'),(14,'xxx','xx@','xxx','2016-08-10 08:17:34'),(15,'','','','2016-08-10 14:11:50'),(16,'','','','2016-08-10 14:14:32'),(17,'','','','2016-08-10 14:14:58'),(18,'','','','2016-08-10 14:17:18'),(19,'','','','2016-08-10 14:17:25'),(20,'','','','2016-08-10 14:17:48'),(21,'','','','2016-08-10 14:18:03'),(22,'','','','2016-08-10 14:18:10'),(23,'','','','2016-08-10 14:19:06'),(24,'','','','2016-08-10 14:20:06'),(25,'ss','dd','aa','2016-08-10 14:23:04'),(26,'qs','ssssio@gmai.com','aaa','2016-08-10 14:27:35'),(27,'vijay','ssssio@gmai.com','sree','2016-08-13 07:20:00'),(28,'vijay','vijay@gggmail','hello sro','2016-08-13 11:07:56'),(29,'yoyo','vijjj@gm','dfffff','2016-08-28 07:11:58'),(30,'hello','hello@vj','hi gyts','2016-09-24 17:33:37');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeTimePool`
--

DROP TABLE IF EXISTS `employeeTimePool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeTimePool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_date` varchar(10) DEFAULT NULL,
  `hk_callid` varchar(45) DEFAULT NULL,
  `hk_headstaff` varchar(5) DEFAULT NULL,
  `hk_starttime` int(11) DEFAULT NULL,
  `hk_zone` varchar(2) DEFAULT NULL,
  `hk_empidA` int(11) DEFAULT NULL,
  `hk_empidB` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeTimePool`
--

LOCK TABLES `employeeTimePool` WRITE;
/*!40000 ALTER TABLE `employeeTimePool` DISABLE KEYS */;
INSERT INTO `employeeTimePool` VALUES (1,'25-10-2016','0','E1',7,'NE',2233,1123,0),(2,'25-10-2016','0','E1',11,'NE',2233,1123,0),(3,'25-10-2016','0','E1',15,'NE',2233,1123,0),(4,'25-10-2016','ADd34','E1',19,'NE',2233,1123,0),(5,'25-10-2016','0','E2',7,'NE',3244,1100,0),(6,'25-10-2016','AS23','E2',11,'NE',3244,1100,0),(7,'25-10-2016','0','E2',15,'NE',3244,1100,0),(8,'25-10-2016','0','E2',19,'NE',3244,1100,0),(9,'25-10-2016','0','E3',7,'NW',1122,1150,0),(10,'25-10-2016','0','E3',11,'NW',1122,1150,0),(11,'25-10-2016','0','E3',15,'NW',1122,1150,0),(12,'25-10-2016','0','E3',19,'NW',1122,1150,0),(13,'25-10-2016','1','E4',7,'NW',1020,1456,0),(14,'25-10-2016','1','E4',11,'NW',1020,1456,0),(15,'25-10-2016','1','E4',15,'NW',1020,1456,0),(16,'25-10-2016','1','E4',19,'NW',1020,1456,0),(17,'26-10-2016','0','E1',7,'NE',2233,1123,0),(18,'26-10-2016','0','E1',11,'NE',2233,1123,0),(19,'26-10-2016','0','E1',15,'NE',2233,1123,0),(20,'26-10-2016','0','E1',19,'NE',2233,1123,0),(21,'26-10-2016','0','E2',7,'NE',3244,1100,0),(22,'26-10-2016','0','E2',11,'NE',3244,1100,0),(23,'26-10-2016','0','E2',15,'NE',3244,1100,0),(24,'26-10-2016','0','E2',19,'NE',3244,1100,0),(25,'26-10-2016','0','E3',7,'NW',1122,1150,0),(26,'26-10-2016','0','E3',11,'NW',1122,1150,0),(27,'26-10-2016','0','E3',15,'NW',1122,1150,0),(28,'26-10-2016','0','E3',19,'NW',1122,1150,0),(29,'26-10-2016','1','E4',7,'NW',1020,1456,0),(30,'26-10-2016','1','E4',11,'NW',1020,1456,0),(31,'26-10-2016','1','E4',15,'NW',1020,1456,0),(32,'26-10-2016','1','E4',19,'NW',1020,1456,0);
/*!40000 ALTER TABLE `employeeTimePool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeTimePool_dlt`
--

DROP TABLE IF EXISTS `employeeTimePool_dlt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeTimePool_dlt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) DEFAULT '0',
  `locality` varchar(55) DEFAULT NULL,
  `hk_date` varchar(10) DEFAULT NULL,
  `hk_starttime` varchar(10) DEFAULT NULL,
  `hk_startampm` int(11) DEFAULT NULL,
  `hk_endtime` varchar(10) DEFAULT NULL,
  `hk_endampm` int(11) DEFAULT NULL,
  `hk_callid` varchar(45) DEFAULT '0',
  `hk_zone` varchar(5) DEFAULT NULL,
  `hk_emprating` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeTimePool_dlt`
--

LOCK TABLES `employeeTimePool_dlt` WRITE;
/*!40000 ALTER TABLE `employeeTimePool_dlt` DISABLE KEYS */;
INSERT INTO `employeeTimePool_dlt` VALUES (1,1,'BTM Layout','08/10/2016','7',0,'9',0,'0','S',0,'null'),(2,2,'Electronics City','09/10/2016','7',0,'8',0,'0','S',0,'null'),(3,3,'Malleshwaram','09/10/2016','7',0,'10',0,'0','N',0,'null'),(4,4,'Malleshwaram','08/10/2016','7',0,'9',0,'0','N',0,'null'),(5,5,'BTM Layout','08/10/2016','9',0,'13',0,'0','S',0,'null');
/*!40000 ALTER TABLE `employeeTimePool_dlt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locality` (
  `hk_LOCALITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `hk_ZONE` varchar(2) DEFAULT NULL,
  `hk_LOCALITY` varchar(45) DEFAULT NULL,
  `hk_DIST_CENTER` int(11) DEFAULT NULL COMMENT 'Locality table,this is our primary filter and in the future will help calulate time and distance',
  PRIMARY KEY (`hk_LOCALITY_ID`),
  UNIQUE KEY `ID_UNIQUE` (`hk_LOCALITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
INSERT INTO `locality` VALUES (1,'NW','Basaveshwara Nagar',0),(2,'NW','Bidadi',0),(3,'NW','Gandhi Nagar',0),(4,'SW','Kengeri',0),(5,'SW','Mahalakshmipuram',0),(6,'SW','Mysore Road',0),(7,'SW','Nagarbhavi',0),(8,'NW','Tumkur Road',0),(9,'NW','Vidyaranyapura',0),(10,'NW','Vijay Nagar',0),(11,'SW','Ashok Nagar',0),(12,'SW','Banashankari',0),(13,'SW','Bannerghatta Road',0),(14,'SW','Bommanahalli',0),(15,'SW','BTM Layout',0),(16,'SW','Chamarajpet',0),(17,'SW','Dasarahalli',0),(18,'SW','Dickenson Road',0),(19,'SW','Doddakallasandra',0),(20,'SW','Doddamavalli',0),(21,'SW','Electronics City',0),(22,'SW','Gavipuram',0),(23,'SW','Hanumanthanagar',0),(24,'SW','Hosur Road',0),(25,'SW','HSR Layout',0),(26,'SW','J. P. Nagar',0),(27,'SW','Jaya Nagar',0),(28,'SW','Jayachamaraja Road',0),(29,'SE','Kalasipalyam',0),(30,'SE','Kammanahalli',0),(31,'SE','Kasturba Road',0),(32,'SE','Kathriguppe',0),(33,'SE','Kempe Gowda Road',0),(34,'SE','Konanakunte',0),(35,'SE','Koramangala',0),(36,'SE','Kumaraswamy Layout',0),(37,'SE','Langford Town',0),(38,'SE','Madivala',0),(39,'SE','Magrath Road',0),(40,'SE','Mahatma Gandhi Road',0),(41,'SE','Mission Road',0),(42,'SE','Museum Road',0),(43,'SE','Nagarathpet',0),(44,'SE','O.T.C. Road',0),(45,'SE','Padmanabhanagar',0),(46,'SE','Palya',0),(47,'SE','Peenya',0),(48,'SE','Raj Bhavan Road',0),(49,'SE','Raja Rajeshwari Nagar',0),(50,'SE','Raja Ram Mohan Roy Road',0),(51,'SE','Rajpet',0),(52,'SE','Residency Road',0),(53,'SE','Sampangiram Nagar',0),(54,'SE','Sankey Road',0),(55,'SE','Sarjapur Road',0),(56,'SE','Shanti Nagar',0),(57,'SE','St. Mark\'s Road',0),(58,'SE','Subramanyapura',0),(59,'SE','Ulsoor',0),(60,'SE','Uttarahalli',0),(61,'SE','Vivek Nagar',0),(62,'SE','VV Puram',0),(63,'SE','Wilson Garden',0),(64,'NE','Banaswadi',0),(65,'NE','Bel Road',0),(66,'NE','Bennigana Halli',0),(67,'NE','Devanahalli',0),(68,'NE','Frazer Town',0),(69,'NE','Ganga Nagar',0),(70,'NE','Hebbal',0),(71,'NE','Hennur',0),(72,'NE','Hesaraghatta',0),(73,'NE','Jalahalli',0),(74,'NE','Kadugondanahalli',0),(75,'NE','Kalyan Nagar',0),(76,'NE','Kasturi Nagar',0),(77,'NE','Lingarajapuram',0),(78,'NE','Malleshwaram',0),(79,'NE','Maruthi Nagar',0),(80,'NW','Mathikere',0),(81,'NW','Nagasandra',0),(82,'NW','Nagashetty Halli',0),(83,'NW','Nagavara',0),(84,'NW','Nandhini Layout',0),(85,'NW','Sadashiva Nagar',0),(86,'NW','Sahakara Nagar',0),(87,'NW','Sanjay Nagar',0),(88,'NW','Seshadripuram',0),(89,'NW','St. Thomas Town',0),(90,'NW','Vaiyyalikaval',0),(91,'NW','Yelahanka',0),(92,'NW','Yeshwanthpur',0),(93,'EN','Bellandur',0),(94,'EN','Brigade Road',0),(95,'EN','Brookefield',0),(96,'EN','Byatarayanapura',0),(97,'EN','C.V. Raman Nagar',0),(98,'EN','Domlur Layout',0),(99,'EN','Dooravani Nagar',0),(100,'EN','HRBR Layout',0),(101,'EN','Indira Nagar',0),(102,'EN','ITPL Road',0),(103,'EN','Jayamahal Road',0),(104,'ES','Jeevan Bheema Nagar',0),(105,'ES','Kadugodi',0),(106,'ES','Kodihalli',0),(107,'ES','Krishnaraja Puram',0),(108,'ES','Mahadevapura',0),(109,'ES','Marathahalli',0),(110,'ES','Old Airport Road',0),(111,'ES','Ramamurthy Nagar',0),(112,'ES','Thippasandra',0),(113,'ES','Varthur',0),(114,'ES','Vimanapura',0),(115,'ES','Whitefield',0),(116,'CN','Basavanagudi',0),(117,'CN','Rajaji Nagar',0),(118,'CS','Chikpet',0),(119,'CS','Commercial Street',0),(120,'CE','Shivajinagar',0),(121,'CE','Vittal Mallya Road',0);
/*!40000 ALTER TABLE `locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `version_rank` int(11) NOT NULL,
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`version`),
  KEY `schema_version_vr_idx` (`version_rank`),
  KEY `schema_version_ir_idx` (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES (1,1,'1.2','CREATE SHIPWRECK','SQL','V1_2__CREATE_SHIPWRECK.sql',-500392826,'root','2016-07-20 17:53:19',39,1);
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecatalouge`
--

DROP TABLE IF EXISTS `servicecatalouge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecatalouge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_servicename` varchar(45) DEFAULT NULL,
  `hk_serviceprice` int(11) DEFAULT NULL,
  `hk_tax` int(11) DEFAULT NULL,
  `is_main_service` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecatalouge`
--

LOCK TABLES `servicecatalouge` WRITE;
/*!40000 ALTER TABLE `servicecatalouge` DISABLE KEYS */;
INSERT INTO `servicecatalouge` VALUES (1,'2bhk',1500,14,1),(2,'3bhk',2000,14,1),(3,'duplex',2000,14,1),(4,'carwash',500,0,0),(5,'iron3p',150,0,0),(6,'adser3',100,0,0);
/*!40000 ALTER TABLE `servicecatalouge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `SRV_ID` int(11) NOT NULL,
  `SR_DESCRIPTION` varchar(45) DEFAULT NULL COMMENT 'List of services',
  PRIMARY KEY (`SRV_ID`),
  UNIQUE KEY `SRV_ID_UNIQUE` (`SRV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Kitchen'),(2,'Bedroom');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_user_id` int(11) DEFAULT NULL,
  `hk_locality` int(11) DEFAULT NULL,
  `hk_address` varchar(255) DEFAULT NULL,
  `hk_housetype` int(11) DEFAULT NULL,
  `hk_numberhours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES (1,2,0,'NO 12,seetharamhiya',5,6),(2,3,0,'NO 12,seetharamhiya',5,6),(3,3,0,'NO 12,seetharamhiyas',5,6),(4,23,0,'no12 ,sssssss',2,3),(5,23,0,'no12 ,sssssss',2,3),(6,23,0,'no12 ,sssssss',2,3),(7,22,0,'no12 ,sssssss',2,3),(13,1,0,'no12 ,sssssssd',2,3),(14,23,2,'no12 ,sssssss,bomi',2,3),(15,23,2,'no12 ,sssssss,bomi',2,3),(16,23,2,'no12 ,sssssss,bomi',2,3),(17,23,2,'no12 ,sssssss,bomi',2,3),(18,23,2,'no12 ,sssssss,bomi',2,3),(19,23,2,'no12 ,sssssss,bomi',2,3),(20,23,2,'no12 ,sssssss,bomi',2,3),(21,23,2,'no12 ,sssssss,bomi',2,3),(22,23,2,'no12 ,sssssss,bomi',2,3),(23,23,2,'no12 ,sssssss,bomi',2,3),(24,23,2,'no12 ,sssssss,bomi',2,3),(25,23,2,'no12 ,sssssss,bomi',2,3),(26,25,2,'no12 ,sssssss,bomi',2,3),(27,25,2,'no12 ,sssssss,bomi',2,3),(28,25,2,'no12 ,sssssss,bomi',2,3),(29,25,2,'no12 ,sssssss,bomi',2,3),(30,25,2,'no12 ,sssssss,bomi',2,3),(31,25,2,'no12 ,sssssss,bomi',2,3),(32,25,2,'no12 ,sssssss,bomi',2,3),(33,25,2,'no12 ,sssssss,bomi',2,3),(34,25,2,'no12 ,sssssss,bomi',2,3),(35,25,2,'no12 ,sssssss,bomi',2,3),(36,25,2,'no12 ,sssssss,bomi',2,3),(37,25,2,'no12 ,sssssss,bomi',2,3),(38,26,2,'no12 ,sssssss,bomi',2,3),(39,26,2,'no12 ,sssssss,bomi srip',2,3),(40,19,2,'no12 ,sssssss,bomi srip',2,3),(41,31,2,'gagit no 12',2,2);
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_user_id` int(11) DEFAULT NULL,
  `hk_startdate` varchar(10) DEFAULT NULL,
  `hk_firstcalltime` int(11) DEFAULT NULL,
  `hk_callId` varchar(45) DEFAULT NULL,
  `hk_addonservices` int(11) DEFAULT NULL,
  `hk_userrating` int(11) DEFAULT NULL,
  `hk_emprating` int(11) DEFAULT NULL,
  `hk_comment` varchar(85) DEFAULT NULL,
  `hk_frequency` int(11) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (1,2,'06/02/16',10,'BPOR8XRNMT86GZ-7SCNQJNIWLJUHSD',0,0,0,NULL,NULL,'2016-09-25 15:10:21'),(2,3,'06-02-2016',10,'NVGQMV2ELCU-E@654CNBGRGX-2MXL1',0,0,0,NULL,NULL,'2016-09-25 15:13:43'),(3,3,'06-02-2016',11,'4Z314I4Y#6LNITJE9T4MJI1Y6#7TB2',0,0,0,NULL,NULL,'2016-09-25 15:14:04'),(4,23,'06-02-2016',11,'B#GSM7BJ20YRSFUK559747HXBD11RI',0,0,0,NULL,NULL,'2016-10-08 08:00:31'),(5,3,'06-02-2016',11,'Q-59QBHP#Q#GXU#YV1K2K2UCZE1JQJ',0,0,0,NULL,0,'2016-10-08 19:33:38'),(6,3,'06-02-2016',11,'KOKN1O5HN0N-GSTS-QYDR2XNM6T#B2',0,0,0,NULL,0,'2016-10-11 12:41:09'),(7,3,'06-02-2016',11,'V9110EPBZHR9FO9QMX-B8HPY356KPU',0,0,0,NULL,0,'2016-10-11 12:41:12'),(8,3,'06-02-2016',11,'FJY576CXY8UN4HTYTFAD2UEJGW9RV1',0,0,0,NULL,0,'2016-10-11 12:41:13'),(9,3,'06-02-2016',11,'CBVI6SA4HBQ0GUD@EHOWGZFSP1@M25',0,0,0,NULL,0,'2016-10-11 12:41:14'),(10,3,'05-02-2016',11,'UNZU7CCVWIRC594PG825AXY77SMWML',0,0,0,NULL,0,'2016-10-11 12:41:37'),(11,23,'06-02-2016',2,'L5DNW419J8XAOG7-YES12NWI5O6U6Y',0,0,0,NULL,0,'2016-10-15 12:35:04'),(12,23,'06-02-2016',2,'aaasq',0,0,0,NULL,0,'2016-10-15 13:11:20'),(13,23,'06-02-2016',2,'VZNT5#@PXPNI#1DOUKTC0NRC9NM68B',0,0,0,NULL,0,'2016-10-15 13:24:39'),(14,23,'06-02-2016',11,'V0MYUEILM1UNEZVYS9-1QYG#MOD2FZ',0,0,0,NULL,0,'2016-10-15 13:25:12'),(15,23,'06-02-2016',112,'AHE2MZG7CF#G62LK46IL2HRUPN0ESP',0,0,0,NULL,0,'2016-10-15 13:25:28'),(16,24,'06-02-2016',24,'@RL6MG54XLUE82KHPK96ITQOLD12QN',0,0,0,NULL,0,'2016-10-15 13:26:00'),(17,19,'06-02-2016',24,'BUV10E6IVG4@SZBBKYE4L34N98D5PJ',0,0,0,NULL,0,'2016-10-18 16:38:49'),(18,31,'10/24/2016',2,'#X7#Z7I1JC8DBR3GKJK5BAB5BH9Q#H',0,0,0,NULL,0,'2016-10-23 10:00:58');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_name` varchar(45) NOT NULL,
  `hk_email` varchar(55) NOT NULL,
  `hk_password` varchar(45) DEFAULT NULL,
  `hk_usertype` varchar(10) NOT NULL,
  `hk_phone` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`hk_email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'vijayu','vijay@gmail.com','pass','1',77227),(22,'anju2w','anju@gmail.com','pass','1',12123),(23,'Athira','athira@gmail.com',NULL,'1',6767677),(24,'UJAAYd','ujdayS@gmail.com',NULL,'1',6767677),(27,'UJAAYdc','ujdaycS@gmail.com',NULL,'1',6767677),(28,'Vijay K','viju@gmail.com',NULL,'1',9972929746),(30,'vijaysss','vijay@gmail.comd',NULL,'1',333),(31,'Gagit','gagit@gmail.com','pass','1',9972929746);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cleanu'
--

--
-- Dumping routines for database 'cleanu'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailableTime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailableTime`(IN hk_date VARCHAR(10),hk_zone varchar(2))
BEGIN
select A.hk_starttime,CASE WHEN B.AVAILABLE ='0' THEN '0' ELSE '1' END AS AVAILABLE 
FROM employeeTimePool A LEFT JOIN (SELECT DISTINCT hk_starttime,0 AS AVAILABLE FROM  employeeTimePool B 
WHERE B.hk_zone= hk_zone and B.hk_date= hk_date AND B.hk_callid = '0') B 
ON A.hk_starttime = B.hk_starttime 
WHERE A.hk_zone= hk_zone and A.hk_date= hk_date group by A.hk_starttime ;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 22:30:53
