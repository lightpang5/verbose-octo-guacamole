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
-- Table structure for table `applyyong`
--

DROP TABLE IF EXISTS `applyyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applyyong` (
  `yId` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yNo` int(11) NOT NULL AUTO_INCREMENT,
  `yMember` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yDate` datetime DEFAULT NULL,
  `yBranch` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yGround` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yTel1` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yTel2` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yTel3` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yMatchdate` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yTime` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yApply` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yTeam` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `yContents` text COLLATE utf8_bin,
  PRIMARY KEY (`yNo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyyong`
--

LOCK TABLES `applyyong` WRITE;
/*!40000 ALTER TABLE `applyyong` DISABLE KEYS */;
INSERT INTO `applyyong` VALUES ('null',13,'정문복','2020-01-10 00:00:00','가천대학교 운동장','BB구장','010','1122','3344','2020-01-30','1시','가능','하','하기 싫은사람이 어딨어요 일본에서 왔습니다 같이 축구해요'),('null',14,'박쥐은',NULL,'동대문점','A구장','010','1111','2222','2020-01-23','1시','가능','하','부끄럽지만 함께 땀흘리며 뛰고싶어요 ..!'),('null',15,'부산갈매기',NULL,'부산 가야점','A구장','010','1112','2223','2020-01-30','1시','가능','하','설끝나고 함차고싶네예'),('null',18,'리종혁',NULL,'전주 완산점','C구장','010','5555','5555','2020-01-31','18:00 - 20:00','가능','상','설도 끝났는디 한겜 혀요 !'),('null',19,'Jamit',NULL,'GLOBAL ARENA(Japan)','B구장','010','1111','2222','2020-01-10','13:00 - 15:00','가능','중하','Pleaseeeeeee');
/*!40000 ALTER TABLE `applyyong` ENABLE KEYS */;
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
