-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2016 at 10:12 AM
-- Server version: 5.5.16
-- PHP Version: 5.4.0beta2-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cleanu`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `email` varchar(52) NOT NULL,
  `message` varchar(250) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `timestamp`) VALUES
(3, '0', '', 'hi', '2016-07-27 14:14:20'),
(4, '0', '', 'sssssss', '2016-07-27 14:39:22'),
(5, 'grrgd', 'gd', 'gddg', '2016-07-27 17:21:41'),
(6, 'fsa', 'fsa', 'asfa', '2016-07-27 17:23:19'),
(7, 'sree', 'ssssio', 'sakdjda', '2016-07-27 17:28:57'),
(8, 'sree', 'ssssio@gmai.com', 'sakdjda', '2016-07-27 17:29:23'),
(9, 'ssd', 'dfg', 'gfdsd', '2016-07-29 14:36:07'),
(10, 'dddaa', 'ssssio@gmai.com', 'sss', '2016-07-30 12:33:26'),
(11, '', '', '', '2016-07-31 10:37:41'),
(12, 'ss', 'ssssio@gmai.com', 'ss', '2016-08-09 18:41:32'),
(13, 'ssss', 'ssssio@gmai.com', 'sdvs', '2016-08-09 18:42:01'),
(14, 'xxx', 'xx@', 'xxx', '2016-08-10 08:17:34'),
(15, '', '', '', '2016-08-10 14:11:50'),
(16, '', '', '', '2016-08-10 14:14:32'),
(17, '', '', '', '2016-08-10 14:14:58'),
(18, '', '', '', '2016-08-10 14:17:18'),
(19, '', '', '', '2016-08-10 14:17:25'),
(20, '', '', '', '2016-08-10 14:17:48'),
(21, '', '', '', '2016-08-10 14:18:03'),
(22, '', '', '', '2016-08-10 14:18:10'),
(23, '', '', '', '2016-08-10 14:19:06'),
(24, '', '', '', '2016-08-10 14:20:06'),
(25, 'ss', 'dd', 'aa', '2016-08-10 14:23:04'),
(26, 'qs', 'ssssio@gmai.com', 'aaa', '2016-08-10 14:27:35'),
(27, 'vijay', 'ssssio@gmai.com', 'sree', '2016-08-13 07:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `locality`
--

CREATE TABLE IF NOT EXISTS `locality` (
  `LOCALITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ZONE` varchar(1) DEFAULT NULL,
  `LOCALITY` varchar(45) DEFAULT NULL,
  `DIST_CENTER` int(11) DEFAULT NULL COMMENT 'Locality table,this is our primary filter and in the future will help calulate time and distance',
  PRIMARY KEY (`LOCALITY_ID`),
  UNIQUE KEY `ID_UNIQUE` (`LOCALITY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema_version`
--

CREATE TABLE IF NOT EXISTS `schema_version` (
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

--
-- Dumping data for table `schema_version`
--

INSERT INTO `schema_version` (`version_rank`, `installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`) VALUES
(1, 1, '1.2', 'CREATE SHIPWRECK', 'SQL', 'V1_2__CREATE_SHIPWRECK.sql', -500392826, 'root', '2016-07-20 17:53:19', 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `SRV_ID` int(11) NOT NULL,
  `SR_DESCRIPTION` varchar(45) DEFAULT NULL COMMENT 'List of services',
  PRIMARY KEY (`SRV_ID`),
  UNIQUE KEY `SRV_ID_UNIQUE` (`SRV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`SRV_ID`, `SR_DESCRIPTION`) VALUES
(1, 'Kitchen'),
(2, 'Bedroom');

-- --------------------------------------------------------

--
-- Table structure for table `shipwreck`
--

CREATE TABLE IF NOT EXISTS `shipwreck` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `CONDITIONS` varchar(255) DEFAULT NULL,
  `DEPTH` int(11) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `YEAR_DISCOVERED` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `shipwreck`
--

INSERT INTO `shipwreck` (`ID`, `NAME`, `DESCRIPTION`, `CONDITIONS`, `DEPTH`, `LATITUDE`, `LONGITUDE`, `YEAR_DISCOVERED`) VALUES
(1, 'sree', 'ss', 'ss', 11, 11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hk_name` varchar(45) NOT NULL,
  `hk_email` varchar(55) NOT NULL,
  `hk_password` varchar(45) NOT NULL,
  `hk_usertype` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`hk_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hk_name`, `hk_email`, `hk_password`, `hk_usertype`) VALUES
(1, 'sree', 'sreenath886@gmail.com', 'sree', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
