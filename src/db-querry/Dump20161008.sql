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
-- Table structure for table `locality`
--

DROP TABLE IF EXISTS `locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locality` (
  `hk_LOCALITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `hk_ZONE` varchar(1) DEFAULT NULL,
  `hk_LOCALITY` varchar(45) DEFAULT NULL,
  `hk_DIST_CENTER` int(11) DEFAULT NULL COMMENT 'Locality table,this is our primary filter and in the future will help calulate time and distance',
  PRIMARY KEY (`hk_LOCALITY_ID`),
  UNIQUE KEY `ID_UNIQUE` (`hk_LOCALITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locality`
--

LOCK TABLES `locality` WRITE;
/*!40000 ALTER TABLE `locality` DISABLE KEYS */;
INSERT INTO `locality` VALUES (1,'W','Basaveshwara Nagar',0),(2,'W','Bidadi',0),(3,'W','Gandhi Nagar',0),(4,'W','Kengeri',0),(5,'W','Mahalakshmipuram',0),(6,'W','Mysore Road',0),(7,'W','Nagarbhavi',0),(8,'W','Tumkur Road',0),(9,'W','Vidyaranyapura',0),(10,'W','Vijay Nagar',0),(11,'S','Ashok Nagar',0),(12,'S','Banashankari',0),(13,'S','Bannerghatta Road',0),(14,'S','Bommanahalli',0),(15,'S','BTM Layout',0),(16,'S','Chamarajpet',0),(17,'S','Dasarahalli',0),(18,'S','Dickenson Road',0),(19,'S','Doddakallasandra',0),(20,'S','Doddamavalli',0),(21,'S','Electronics City',0),(22,'S','Gavipuram',0),(23,'S','Hanumanthanagar',0),(24,'S','Hosur Road',0),(25,'S','HSR Layout',0),(26,'S','J. P. Nagar',0),(27,'S','Jaya Nagar',0),(28,'S','Jayachamaraja Road',0),(29,'S','Kalasipalyam',0),(30,'S','Kammanahalli',0),(31,'S','Kasturba Road',0),(32,'S','Kathriguppe',0),(33,'S','Kempe Gowda Road',0),(34,'S','Konanakunte',0),(35,'S','Koramangala',0),(36,'S','Kumaraswamy Layout',0),(37,'S','Langford Town',0),(38,'S','Madivala',0),(39,'S','Magrath Road',0),(40,'S','Mahatma Gandhi Road',0),(41,'S','Mission Road',0),(42,'S','Museum Road',0),(43,'S','Nagarathpet',0),(44,'S','O.T.C. Road',0),(45,'S','Padmanabhanagar',0),(46,'S','Palya',0),(47,'S','Peenya',0),(48,'S','Raj Bhavan Road',0),(49,'S','Raja Rajeshwari Nagar',0),(50,'S','Raja Ram Mohan Roy Road',0),(51,'S','Rajpet',0),(52,'S','Residency Road',0),(53,'S','Sampangiram Nagar',0),(54,'S','Sankey Road',0),(55,'S','Sarjapur Road',0),(56,'S','Shanti Nagar',0),(57,'S','St. Mark\'s Road',0),(58,'S','Subramanyapura',0),(59,'S','Ulsoor',0),(60,'S','Uttarahalli',0),(61,'S','Vivek Nagar',0),(62,'S','VV Puram',0),(63,'S','Wilson Garden',0),(64,'N','Banaswadi',0),(65,'N','Bel Road',0),(66,'N','Bennigana Halli',0),(67,'N','Devanahalli',0),(68,'N','Frazer Town',0),(69,'N','Ganga Nagar',0),(70,'N','Hebbal',0),(71,'N','Hennur',0),(72,'N','Hesaraghatta',0),(73,'N','Jalahalli',0),(74,'N','Kadugondanahalli',0),(75,'N','Kalyan Nagar',0),(76,'N','Kasturi Nagar',0),(77,'N','Lingarajapuram',0),(78,'N','Malleshwaram',0),(79,'N','Maruthi Nagar',0),(80,'N','Mathikere',0),(81,'N','Nagasandra',0),(82,'N','Nagashetty Halli',0),(83,'N','Nagavara',0),(84,'N','Nandhini Layout',0),(85,'N','Sadashiva Nagar',0),(86,'N','Sahakara Nagar',0),(87,'N','Sanjay Nagar',0),(88,'N','Seshadripuram',0),(89,'N','St. Thomas Town',0),(90,'N','Vaiyyalikaval',0),(91,'N','Yelahanka',0),(92,'N','Yeshwanthpur',0),(93,'E','Bellandur',0),(94,'E','Brigade Road',0),(95,'E','Brookefield',0),(96,'E','Byatarayanapura',0),(97,'E','C.V. Raman Nagar',0),(98,'E','Domlur Layout',0),(99,'E','Dooravani Nagar',0),(100,'E','HRBR Layout',0),(101,'E','Indira Nagar',0),(102,'E','ITPL Road',0),(103,'E','Jayamahal Road',0),(104,'E','Jeevan Bheema Nagar',0),(105,'E','Kadugodi',0),(106,'E','Kodihalli',0),(107,'E','Krishnaraja Puram',0),(108,'E','Mahadevapura',0),(109,'E','Marathahalli',0),(110,'E','Old Airport Road',0),(111,'E','Ramamurthy Nagar',0),(112,'E','Thippasandra',0),(113,'E','Varthur',0),(114,'E','Vimanapura',0),(115,'E','Whitefield',0);
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
  `hk_locality` varchar(55) DEFAULT NULL,
  `hk_address` varchar(255) DEFAULT NULL,
  `hk_housetype` int(11) DEFAULT NULL,
  `hk_numberhours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES (1,2,'Banshankri','NO 12,seetharamhiya',5,6),(2,3,'Banshankri','NO 12,seetharamhiya',5,6),(3,3,'Banshankri','NO 12,seetharamhiyas',5,6),(4,23,'boobsandra','no12 ,sssssss',2,3);
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
  `hk_firstcalltime` varchar(8) DEFAULT NULL,
  `hk_callId` varchar(45) DEFAULT NULL,
  `hk_addonservices` int(11) DEFAULT NULL,
  `hk_userrating` int(11) DEFAULT NULL,
  `hk_emprating` int(11) DEFAULT NULL,
  `hk_comment` varchar(85) DEFAULT NULL,
  `hk_frequency` int(11) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` VALUES (1,2,'06/02/16','10:30:11','BPOR8XRNMT86GZ-7SCNQJNIWLJUHSD',0,0,0,NULL,'2016-09-25 15:10:21'),(2,3,'06-02-2016','10:30:11','NVGQMV2ELCU-E@654CNBGRGX-2MXL1',0,0,0,NULL,'2016-09-25 15:13:43'),(3,3,'06-02-2016','11:30:11','4Z314I4Y#6LNITJE9T4MJI1Y6#7TB2',0,0,0,NULL,'2016-09-25 15:14:04'),(4,23,'06-02-2016','11:30:11','B#GSM7BJ20YRSFUK559747HXBD11RI',0,0,0,NULL,'2016-10-08 08:00:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'test','vijay@gmail.com','pass','1',77227),(22,'anju2w','anju@gmail.com','pass','1',12123),(23,'Athira','athira@gmail.com',NULL,'1',6767677);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-08 13:35:49
