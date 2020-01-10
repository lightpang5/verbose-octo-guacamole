-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: footsal
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sign`
--

DROP TABLE IF EXISTS `sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sign` (
  `id` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `pw` varchar(40) DEFAULT NULL,
  `hp1` varchar(40) DEFAULT NULL,
  `hp2` varchar(40) DEFAULT NULL,
  `hp3` varchar(40) DEFAULT NULL,
  `em1` varchar(40) DEFAULT NULL,
  `em2` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `hp` varchar(40) DEFAULT NULL,
  `adr1` varchar(40) DEFAULT NULL,
  `adr2` varchar(40) DEFAULT NULL,
  `yy` varchar(40) DEFAULT NULL,
  `mm` varchar(40) DEFAULT NULL,
  `dd` varchar(40) DEFAULT NULL,
  `pic` varchar(40) DEFAULT NULL,
  `lv` varchar(40) DEFAULT NULL,
  `team` varchar(40) DEFAULT NULL,
  `hobby` varchar(40) DEFAULT NULL,
  `passwd2` varchar(40) DEFAULT NULL,
  `passwd2ans` varchar(40) DEFAULT NULL,
  `chuchun` varchar(40) DEFAULT NULL,
  `bank` varchar(4) DEFAULT NULL,
  `accountnumber` varchar(20) DEFAULT NULL,
  `accountholder` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign`
--

LOCK TABLES `sign` WRITE;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
INSERT INTO `sign` VALUES ('1','1','1','1','1','1','1','1','1','1','1','1','1984','01','01','','','option1','FW','','1','1',NULL,NULL,NULL),('asdfsdafsd','1','11111','11','11','11','12','12','1','','','','1984','01','01','','','option1','null','','','',NULL,NULL,NULL),('null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,NULL,NULL),('null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,NULL,NULL),('null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,NULL,NULL),('aaaaaaaaaa','aaaaaaaa','aaaaaaaa','aaaa','aaaaa','aaaaaa','aaaaaa','aaaaaaaaa','female','','','','1984','01','01','','5','teamok','FW ','Q00','','',NULL,NULL,NULL),('aaaaaaaa','kim','123123','010','1234','5678','aaaa','daum.net','female','','','','1984','01','01','','5','teamok','FW MF ','Q00','','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-10 18:23:50
