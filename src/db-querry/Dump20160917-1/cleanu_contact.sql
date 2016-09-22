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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'0','','hi','2016-07-27 14:14:20'),(4,'0','','sssssss','2016-07-27 14:39:22'),(5,'grrgd','gd','gddg','2016-07-27 17:21:41'),(6,'fsa','fsa','asfa','2016-07-27 17:23:19'),(7,'sree','ssssio','sakdjda','2016-07-27 17:28:57'),(8,'sree','ssssio@gmai.com','sakdjda','2016-07-27 17:29:23'),(9,'ssd','dfg','gfdsd','2016-07-29 14:36:07'),(10,'dddaa','ssssio@gmai.com','sss','2016-07-30 12:33:26'),(11,'','','','2016-07-31 10:37:41'),(12,'ss','ssssio@gmai.com','ss','2016-08-09 18:41:32'),(13,'ssss','ssssio@gmai.com','sdvs','2016-08-09 18:42:01'),(14,'xxx','xx@','xxx','2016-08-10 08:17:34'),(15,'','','','2016-08-10 14:11:50'),(16,'','','','2016-08-10 14:14:32'),(17,'','','','2016-08-10 14:14:58'),(18,'','','','2016-08-10 14:17:18'),(19,'','','','2016-08-10 14:17:25'),(20,'','','','2016-08-10 14:17:48'),(21,'','','','2016-08-10 14:18:03'),(22,'','','','2016-08-10 14:18:10'),(23,'','','','2016-08-10 14:19:06'),(24,'','','','2016-08-10 14:20:06'),(25,'ss','dd','aa','2016-08-10 14:23:04'),(26,'qs','ssssio@gmai.com','aaa','2016-08-10 14:27:35'),(27,'vijay','ssssio@gmai.com','sree','2016-08-13 07:20:00'),(28,'vijay','vijay@gggmail','hello sro','2016-08-13 11:07:56'),(29,'yoyo','vijjj@gm','dfffff','2016-08-28 07:11:58');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-17 22:07:56
