-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: koreafutsal
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
-- Table structure for table `admin_brabch_rep_tb`
--

DROP TABLE IF EXISTS `admin_brabch_rep_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_brabch_rep_tb` (
  `BRANCH_REP_NO` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_REP_CONTENTS` varchar(2000) NOT NULL,
  `BRANCH_REP_DATE` varchar(45) NOT NULL,
  `BRANCH_NO` int(11) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`BRANCH_REP_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_brabch_rep_tb`
--

LOCK TABLES `admin_brabch_rep_tb` WRITE;
/*!40000 ALTER TABLE `admin_brabch_rep_tb` DISABLE KEYS */;
INSERT INTO `admin_brabch_rep_tb` VALUES (1,'아아아','2020-03-09 12:41:55',138,'유미'),(2,'아아아아','2020-03-09 12:42:15',138,'유미'),(3,'아아','2020-03-09 12:49:38',138,'유미'),(4,'아','2020-03-09 12:54:24',138,'유미'),(5,'아','2020-03-09 12:54:40',138,'유미'),(6,'아아아','2020-03-09 12:54:49',140,'유미'),(7,'아아','2020-03-09 13:01:12',140,'유미'),(8,'아','2020-03-09 13:01:41',140,'유미'),(9,'아','2020-03-09 13:09:50',140,'유미'),(10,'아','2020-03-10 12:24:12',140,'유미'),(11,'아','2020-03-10 12:24:54',140,'유미'),(12,'으아아어우으아우우앙아아아아아아아아아아아아아아아아앙','2020-03-11 10:30:38',140,'null'),(13,'으아','2020-03-11 16:12:20',142,'유미'),(14,'확인용 / 접수상태 변경 : 접수 > 진행중 / ','2020-03-12 17:27:05',138,'유미'),(15,'확인용','2020-03-12 17:44:40',138,'유미'),(16,'확인용','2020-03-12 17:49:10',138,'유미'),(17,'확인용','2020-03-12 17:51:41',138,'유미'),(18,'확인용','2020-03-12 17:52:26',138,'유미'),(19,'확인중','2020-03-12 17:54:21',138,'유미'),(20,'아','2020-03-12 17:55:22',138,'유미'),(21,'아','2020-03-12 17:58:23',138,'유미'),(22,'아','2020-03-12 17:59:46',138,'유미'),(23,'제발..','2020-03-12 18:01:50',138,'유미'),(24,'아','2020-03-12 18:11:06',138,'유미'),(26,'아','2020-03-12 18:20:11',138,'유미'),(27,'으아','2020-03-16 09:46:19',138,'유미'),(28,'허허...','2020-03-16 09:53:03',138,'유미'),(29,'어아','2020-03-16 10:04:27',138,'유미'),(30,'하하','2020-03-16 10:04:53',141,'유미'),(31,'아','2020-03-16 10:12:22',141,'유미'),(32,'아','2020-03-16 10:13:51',141,'유미'),(33,'아','2020-03-16 10:22:29',141,'유미'),(34,'상태는 완료','2020-03-16 10:30:48',140,'유미'),(35,'한글','2020-03-16 10:31:25',140,'유미'),(36,'아','2020-03-16 10:32:00',140,'유미'),(37,'아','2020-03-16 10:32:06',140,'유미'),(38,'으어..','2020-03-16 10:32:19',140,'유미'),(39,'으앙','2020-03-16 10:34:26',138,'유미'),(40,'아','2020-03-16 10:35:30',138,'유미'),(41,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 13:13:32',145,'유미'),(42,'aaaaaaaaaaaaaaaa','2020-03-16 13:13:51',145,'유미'),(43,'aaaaaaaaaaaaaaaa','2020-03-16 14:38:40',145,'유미'),(52,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:46:09',145,'유미'),(53,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:47:14',145,'유미'),(54,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:49:12',145,'유미'),(55,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:49:53',145,'유미'),(56,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:51:49',145,'유미'),(57,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:52:02',145,'유미'),(58,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:54:25',145,'유미'),(59,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:55:39',145,'유미'),(60,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:55:55',145,'유미'),(61,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 14:58:34',145,'유미'),(62,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:01:43',145,'유미'),(63,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:03:47',145,'유미'),(64,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:04:19',145,'유미'),(65,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:04:44',145,'유미'),(66,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:06:48',145,'유미'),(67,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:08:21',145,'유미'),(68,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:08:44',145,'유미'),(69,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:08:54',145,'유미'),(70,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:09:03',145,'유미'),(71,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:09:52',145,'유미'),(72,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-03-16 15:14:44',145,'유미'),(73,'dmdkdkd\r\ndmdkdkdk','2020-03-16 15:17:49',145,'유미'),(74,'zzzzzzzzzzzzzzzz\r\ndmdmdmd\r\n','2020-03-16 15:17:54',145,'유미'),(75,'아나나나\r\n나나나나나','2020-03-16 15:18:00',145,'유미'),(76,'아나나나\r\n나나나나나','2020-03-16 15:21:16',145,'유미'),(77,'아나나나\r\n나나나나나','2020-03-16 15:21:35',145,'유미'),(78,'아나나나\r\n나나나나나','2020-03-16 15:23:06',145,'유미'),(79,'[진행중]아으으앙\r\n','2020-03-16 15:57:06',145,'유미'),(80,'[]ㅁㄴ어ㅜㄴ머워ㅏㅇㄴㅁㅇㅁ\r\nㅁ느인믕ㄴ믱ㄴㅇ','2020-03-16 15:58:06',145,'유미'),(81,'[진행중]아으으ㅡ창망ㅁ\r\n아ㅏㅇ마아','2020-03-16 15:58:20',145,'유미'),(82,'[완료]ㅁ누웅마ㅜㅇㄴ망\r\nㅁ느안므아','2020-03-16 15:59:08',145,'유미'),(83,'[진행중]\r\n으아아','2020-03-16 16:01:45',145,'유미'),(84,'[]','2020-03-16 16:02:57',145,'유미'),(85,'[접수]확인\r\n','2020-03-16 16:04:23',145,'유미'),(86,'[접수]확인\r\n','2020-03-16 16:05:54',145,'유미'),(87,'[]으아웅\r\n으아앙','2020-03-16 16:51:52',145,'null'),(88,'[진행중]으아\r\n','2020-03-16 16:52:12',145,'유미'),(89,'[]','2020-03-16 16:52:17',145,'유미'),(90,'[]','2020-03-16 16:53:56',145,'유미'),(91,'[진행중]','2020-03-16 16:54:01',145,'유미'),(92,'[]','2020-03-16 16:54:03',145,'유미'),(93,'[진행중]','2020-03-16 16:56:13',145,'유미'),(94,'[진행중]','2020-03-16 17:02:01',145,'유미'),(95,'[진행중]','2020-03-16 17:02:49',145,'유미'),(96,'[진행중]','2020-03-16 17:02:50',145,'유미'),(97,'[진행중]아\r\n','2020-03-16 17:02:56',145,'유미'),(98,'[진행중]아\r\n','2020-03-16 17:03:06',145,'유미'),(99,'[진행중]ㄴㄴ, ㄴㅁ,으나,ㅁ','2020-03-16 18:09:11',143,'유미'),(100,'[완료]임나임ㄴ이\r\n','2020-03-16 18:09:27',143,'유미'),(101,'[진행중]ㄴㅁㄹ으ㅜ므루망','2020-03-16 18:38:38',146,'유미'),(102,'[완료]ㅜㅁㄹ유 ㄹ','2020-03-16 18:39:04',146,'유미'),(103,'[중지]중지: 계약만료\r\n','2020-03-16 18:40:55',146,'유미'),(104,'[중지]어ㅏ\r\n앙\r\nㅏㅇ\r\n아\r\n','2020-03-16 18:52:13',140,'유미'),(105,'[접수]dgsdagsd','2020-03-18 11:56:23',1,'유미'),(106,'[진행중]sdagsdag','2020-03-18 11:56:28',1,'유미'),(107,'[완료]','2020-03-18 11:59:07',1,'유미'),(108,'[완료]','2020-03-27 10:57:00',8,'유미'),(109,'[완료]','2020-03-27 10:57:46',8,'유미'),(110,'[완료]','2020-03-27 11:02:50',7,'유미'),(111,'[완료]','2020-03-27 11:02:57',6,'유미'),(112,'[완료]','2020-03-27 11:03:07',1,'유미'),(113,'[완료]','2020-03-27 11:03:14',2,'유미'),(114,'[완료]','2020-03-27 11:03:19',3,'유미');
/*!40000 ALTER TABLE `admin_brabch_rep_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tb`
--

DROP TABLE IF EXISTS `admin_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_tb` (
  `admin_id` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_Number` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_Number`,`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tb`
--

LOCK TABLES `admin_tb` WRITE;
/*!40000 ALTER TABLE `admin_tb` DISABLE KEYS */;
INSERT INTO `admin_tb` VALUES ('admin0101','admin0101','유미',1,'사원'),('admin0102','admin0102','세포',2,'사원');
/*!40000 ALTER TABLE `admin_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_tb`
--

DROP TABLE IF EXISTS `branch_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch_tb` (
  `BRANCH_NO` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_NAME` varchar(45) NOT NULL,
  `BRANCH_LOCATION` varchar(45) NOT NULL,
  `BRANCH_TEL` varchar(45) NOT NULL,
  `BRANCH_CONVENIENCE` varchar(45) NOT NULL,
  `BRANCH_PIC` varchar(1000) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `BRANCH_STATE` varchar(45) DEFAULT '접수',
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BRANCH_NO`),
  KEY `IDbranch_idx` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_tb`
--

LOCK TABLES `branch_tb` WRITE;
/*!40000 ALTER TABLE `branch_tb` DISABLE KEYS */;
INSERT INTO `branch_tb` VALUES (1,'강동점','서울 강동구 아리수로 185 고덕풋살장','02-789-1234','o,o,x,x,o,x','branch_thumb_1.jpg','parkjji23','완료','이종혁'),(2,'부산점','부산 해운대구 우1동 산15-1','031-784-1682','x,x,o,o,o,o','branch_thumb_2.jpg','parkjji23','완료','이종혁'),(3,'제주점','제주 제주시 외도1동 220-1','02-018-1514','o,o,o,o,o,x','branch_thumb_3.jpg','parkjji23','완료','이종혁'),(5,'대구점','대구 동구 안심로69길 23 ','02-1561-1512','x,o,x,x,o,o','branch_thumb_4.jpg','parkjji23','접수','이종혁'),(6,'케이지풋살파크','서울 서초구 효령로 36','054-123-123123','x,o,x,x,o,o','branch_thumb_5.jpg','parkjji23','완료','이종혁'),(7,'카카오풋살장','서울 강남구 개포로 지하 522 ','010-5297-6642','o,o,o,o,o,o','branch_thumb_8.jpg','leejong01','완료','이종혁'),(8,'뉴풋살장','서울 강남구 일원로 7','010-1233-5544','o,o,o,o,o,o','branch_thumb_7.jpg','leejong01','완료','이종혁');
/*!40000 ALTER TABLE `branch_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galboard_tb`
--

DROP TABLE IF EXISTS `galboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galboard_tb` (
  `G_B_NO` int(11) NOT NULL,
  `G_B_CONTENTS` longtext NOT NULL,
  `G_B_SUBJECT` varchar(45) NOT NULL,
  `G_B_DATE` datetime NOT NULL,
  `G_B_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `G_B_FILE` varchar(45) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `T_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`G_B_NO`),
  KEY `GB_ID_idx` (`ID`),
  KEY `GB_T_CODE_idx` (`T_CODE`),
  CONSTRAINT `GB_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GB_T_CODE` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galboard_tb`
--

LOCK TABLES `galboard_tb` WRITE;
/*!40000 ALTER TABLE `galboard_tb` DISABLE KEYS */;
INSERT INTO `galboard_tb` VALUES (1,'안녕하세요','안녕하세요','2020-03-18 09:14:42',1,'mcity.png','leejong01',305963),(2,'손흥민잘하네요','손흥민','2020-03-18 09:15:23',1,'mu.png','leejong01',305963),(3,'하이하이','하이하이','2020-03-18 09:15:39',1,'arsenal.png','leejong01',305963),(4,'잘해봅시다','잘해봅시다','2020-03-18 09:15:46',1,'liverpool.jpg','leejong01',305963),(5,'이번주도','화이팅','2020-03-18 09:15:54',1,'liverpool.jpg','leejong01',305963),(6,'영화보고싶다','영화','2020-03-18 09:16:09',1,'son.jpg','leejong01',305963),(7,'이번주축구함','축구함','2020-03-18 09:16:19',1,'son2.jpg','leejong01',305963),(8,'아축구하자','축구','2020-03-18 09:16:28',1,'son3.jpg','leejong01',305963),(9,'풋살인데요','풋살','2020-03-18 09:16:38',1,'son5.jpg','leejong01',305963),(10,'취직합시다','취직','2020-03-18 09:16:47',1,'son4.jpg','leejong01',305963),(11,'행복하자','행복하자','2020-03-18 09:20:14',1,'son7.jpg','leejong01',305963),(12,'돈벌자','돈','2020-03-18 09:20:39',1,'son8.jpg','leejong01',305963),(13,'그거아세요','나는몰라요','2020-03-18 09:20:47',1,'son111111111.jpg','leejong01',305963),(14,'화이팅','화이팅','2020-03-18 09:20:58',1,'son111111111.jpg','leejong01',305963),(15,'잡코리아','잡코리아','2020-03-18 09:21:10',1,'alam.png','leejong01',305963),(16,'사람인','사람인','2020-03-18 09:21:18',1,'chelsea.png','leejong01',305963),(17,'즐겜해요','즐겜해요','2020-03-18 09:21:29',1,'liverpool.jpg','leejong01',305963),(18,'어디가좋아요','사람인잡코리아','2020-03-18 09:22:05',1,'son.jpg','leejong01',305963),(19,'인크루트','인크루트','2020-03-18 10:00:17',1,'mcity.png','leejong01',1111),(20,'축구선수','누가좋아요','2020-03-18 14:43:45',1,'mcity.png','leejong01',1111);
/*!40000 ALTER TABLE `galboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galrep_tb`
--

DROP TABLE IF EXISTS `galrep_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galrep_tb` (
  `G_REP_NO` int(11) NOT NULL,
  `G_REP_CONTENTS` varchar(45) NOT NULL,
  `G_REP_DATE` date NOT NULL,
  `G_B_NO` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`G_REP_NO`),
  KEY `G_ID_idx` (`ID`),
  KEY `G_CODE_idx` (`G_B_NO`),
  CONSTRAINT `G_CODE` FOREIGN KEY (`G_B_NO`) REFERENCES `galboard_tb` (`G_B_NO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `G_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galrep_tb`
--

LOCK TABLES `galrep_tb` WRITE;
/*!40000 ALTER TABLE `galrep_tb` DISABLE KEYS */;
INSERT INTO `galrep_tb` VALUES (1,'그래요 취직합시다','2020-03-30',10,'leejong01'),(2,'풋살 재미있어요','2020-03-30',10,'leejong01'),(3,'세번째 댓글입니다','2020-03-30',10,'leejong01'),(4,'손흥민','2020-03-30',20,'leejong01'),(5,'d','2020-03-31',18,'leejong02'),(6,'안녕하세요','2020-03-31',19,'leejong02');
/*!40000 ALTER TABLE `galrep_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ground_tb`
--

DROP TABLE IF EXISTS `ground_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ground_tb` (
  `GROUND_NO` int(11) NOT NULL AUTO_INCREMENT,
  `GROUND_NAME` varchar(45) NOT NULL,
  `GROUND_PIC` varchar(1000) NOT NULL,
  `GROUND_FIELD` varchar(45) NOT NULL,
  `GROUND_SIZE` varchar(45) NOT NULL,
  `GROUND_WEEKDAYDAYTIME_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKDAYNIGHT_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKENDDAYTIME_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKENDNIGHT_CHARGE` int(11) NOT NULL,
  `BRANCH_NO` int(11) NOT NULL,
  `GROUND_RULE` text NOT NULL,
  PRIMARY KEY (`GROUND_NO`),
  KEY `branch_no_idx` (`BRANCH_NO`),
  CONSTRAINT `branch_no` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch_tb` (`BRANCH_NO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ground_tb`
--

LOCK TABLES `ground_tb` WRITE;
/*!40000 ALTER TABLE `ground_tb` DISABLE KEYS */;
INSERT INTO `ground_tb` VALUES (1,'A구장','branch_thumb_1.jpg,branch_thumb_2.jpg,branch_thumb_3.jpg','실내','15mX30m',60000,70000,80000,90000,1,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X))  '),(2,'A구장','branch_thumb_4.jpg,branch_thumb_5.jpg,branch_thumb_7.jpg','실내','15mX50m',12000,60000,70000,12000,2,'< 주차 상세 > '),(3,'A구장','branch_thumb_10.jpg,branch_thumb_8.jpg,branch_thumb_9.jpg','실외','15mX50m',12000,60000,70000,12000,3,'< 주차 상세 > '),(4,'B구장','branch_thumb_1.jpg,branch_thumb_2.jpg,branch_thumb_3.jpg','실내','15mX50m',70000,80000,90000,100000,1,'< 주차 상세 > '),(5,'C구장','branch_thumb_4.jpg,branch_thumb_5.jpg,branch_thumb_7.jpg','실외','15mX30m',80000,70000,60000,50000,1,'< 주차 상세 > '),(6,'제1구장','branch_thumb_10.jpg,branch_thumb_8.jpg,branch_thumb_9.jpg','실내','15mX50m',80000,90000,72000,60000,6,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X))  '),(7,'제2구장','branch_thumb_1.jpg,branch_thumb_2.jpg,branch_thumb_3.jpg','실외','15mX40m',70000,60000,92000,100000,6,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X))  '),(8,'제3구장','branch_thumb_4.jpg,branch_thumb_5.jpg,branch_thumb_7.jpg','실내','15mX30m',50000,30000,49000,90000,6,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X))  '),(9,'별관','branch_thumb_10.jpg,branch_thumb_8.jpg,branch_thumb_9.jpg','실외','15mX60m',60000,95000,59000,100000,6,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X))  '),(10,'A구장','branch_thumb_1.jpg,branch_thumb_2.jpg,branch_thumb_3.jpg','실외','40mX40m',50000,50000,50000,50000,7,'ㅇㅎㄴㄶ');
/*!40000 ALTER TABLE `ground_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league_result_tb`
--

DROP TABLE IF EXISTS `league_result_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `league_result_tb` (
  `LEAGUE_RESULT_CODE` int(11) NOT NULL,
  `LEAGUE_POINT` int(11) DEFAULT NULL,
  `LEAGUE_WIN` int(11) DEFAULT NULL,
  `LEAGUE_LOSE` int(11) DEFAULT NULL,
  `LEAGUE_DRAW` int(11) DEFAULT NULL,
  `LEAGUE_GF` int(11) DEFAULT NULL,
  `LEAGUE_GA` int(11) DEFAULT NULL,
  `T_CODE` int(11) NOT NULL,
  `LEAGUE_CODE` int(11) NOT NULL,
  PRIMARY KEY (`LEAGUE_RESULT_CODE`),
  KEY `T_CODE_LEAGUE_RESULT_idx` (`T_CODE`),
  KEY `LEAGUE_CODE_LEAGUE_RESULT_idx` (`LEAGUE_CODE`),
  CONSTRAINT `LEAGUE_CODE_LEAGUE_RESULT` FOREIGN KEY (`LEAGUE_CODE`) REFERENCES `league_tb` (`LEAGUE_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `T_CODE_LEAGUE_RESULT` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_result_tb`
--

LOCK TABLES `league_result_tb` WRITE;
/*!40000 ALTER TABLE `league_result_tb` DISABLE KEYS */;
INSERT INTO `league_result_tb` VALUES (1,9,3,1,0,19,10,1111,1),(2,7,2,1,1,15,17,944442,1),(3,7,2,1,1,15,17,305963,1),(4,8,2,0,2,15,17,884466,1),(5,NULL,NULL,NULL,NULL,NULL,NULL,1111,2),(6,NULL,NULL,NULL,NULL,NULL,NULL,944442,2),(7,NULL,NULL,NULL,NULL,NULL,NULL,1111,3);
/*!40000 ALTER TABLE `league_result_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league_tb`
--

DROP TABLE IF EXISTS `league_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `league_tb` (
  `LEAGUE_CODE` int(11) NOT NULL,
  `LEAGUE_NAME` varchar(45) NOT NULL,
  `LEAGUE_DATE` date NOT NULL,
  `BRANCH_NO` int(11) NOT NULL,
  PRIMARY KEY (`LEAGUE_CODE`),
  KEY `league_branch_no_idx` (`BRANCH_NO`),
  CONSTRAINT `league_branch_no` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch_tb` (`BRANCH_NO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_tb`
--

LOCK TABLES `league_tb` WRITE;
/*!40000 ALTER TABLE `league_tb` DISABLE KEYS */;
INSERT INTO `league_tb` VALUES (1,'강남리그','2020-02-13',1),(2,'강동리그','2020-04-04',2),(3,'서울리그','2020-04-07',3),(4,'그린리그','2020-05-10',5);
/*!40000 ALTER TABLE `league_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchboard_tb`
--

DROP TABLE IF EXISTS `matchboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `matchboard_tb` (
  `M_B_NO` int(11) NOT NULL AUTO_INCREMENT,
  `M_B_NAME` varchar(45) NOT NULL,
  `M_B_BRANCH` varchar(45) NOT NULL,
  `M_B_GROUND` varchar(45) NOT NULL,
  `M_B_TEL` varchar(45) NOT NULL,
  `M_B_SCHEDULE` varchar(45) NOT NULL,
  `M_B_TIME` varchar(45) NOT NULL,
  `M_B_STATUS` varchar(45) NOT NULL,
  `M_B_LEVEL` varchar(45) NOT NULL,
  `M_B_CONTENTS` text,
  `ID` varchar(45) NOT NULL,
  `M_B_TYPE` varchar(45) NOT NULL,
  `M_B_COUNT` varchar(45) NOT NULL,
  PRIMARY KEY (`M_B_NO`),
  KEY `MID_idx_idx` (`ID`),
  CONSTRAINT `MID_idx` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchboard_tb`
--

LOCK TABLES `matchboard_tb` WRITE;
/*!40000 ALTER TABLE `matchboard_tb` DISABLE KEYS */;
INSERT INTO `matchboard_tb` VALUES (13,'이종혁','1','4','01022225555','2020-03-23','16:00 - 18:00','가능','상','안녕하세요','leejong01','5 vs 5','1 팀'),(14,'김종혁','1','1','01088786656','2020-03-25','16:00 - 18:00','가능','상','안녕하세요','leejong01','5 vs 5','1 팀'),(15,'강호동','2','2','01088786656','2020-03-25','16:00 - 18:00','가능','상','함께해요','leejong01','5 vs 5','1 팀'),(16,'유재석','3','3','01088786656','2020-03-25','16:00 - 18:00','가능','상','함께해요','leejong01','5 vs 5','1 팀'),(17,'홍길동','6','6','01033265422','2020-03-30','18:00 - 20:00','가능','하','즐거운풋살해요','leejong01','6 vs 6','1 팀'),(18,'이종혁','7','10','01086423513','2020-03-28','13:00 - 15:00','가능','중','함께해요','leejong01','5 vs 5','1 팀'),(19,'김광호','3','3','01088786656','2020-03-25','16:00 - 18:00','가능','상','함께해요','leejong01','5 vs 5','1 팀'),(20,'정문경','3','3','01088786656','2020-03-28','13:00 - 15:00','가능','중','함께해요','leejong01','5 vs 5','1 팀'),(21,'박지은','6','7','01033265422','2020-03-30','18:00 - 20:00','가능','하','즐거운풋살해요','leejong01','6 vs 6','1 팀'),(22,'박지은','6','8','01033265422','2020-03-30','18:00 - 20:00','가능','하','같이하실분','leejong01','6 vs 6','1 팀'),(23,'정문경','6','9','01033265422','2020-03-30','18:00 - 20:00','가능','하','같이하실분','leejong01','6 vs 6','1 팀'),(24,'김광호','3','3','01086423513','2020-03-28','13:00 - 15:00','가능','중','함께해요','leejong01','5 vs 5','1 팀'),(25,'이종혁','3','3','01086423513','2020-03-28','13:00 - 15:00','가능','중','함께해요','leejong01','5 vs 5','1 팀'),(26,'이종현','7','10','01086423513','2020-03-30','13:00 - 15:00','가능','중','즐거운풋살해요','leejong01','5 vs 5','1 팀'),(27,'박새로','7','10','01086423513','2020-03-30','18:00 - 20:00','가능','중','즐거운풋살해요','leejong01','6 vs 6','1 팀'),(28,'이종혁','7','10','01033265422','2020-03-30','18:00 - 20:00','가능','하','즐거운풋살해요','leejong01','6 vs 6','1 팀'),(29,'박지은','3','3','01055666655','2020-04-15','13:00 - 15:00','가능','상','풋살해요','leejong01','5 vs 5','2 팀'),(30,'박지은','1','4','01055456666','2020-04-22','18:00 - 20:00','가능','상','안녕하세요','leejong01','6 vs 6','1 팀');
/*!40000 ALTER TABLE `matchboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_tb`
--

DROP TABLE IF EXISTS `member_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member_tb` (
  `ID` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PW` varchar(45) NOT NULL,
  `TEL` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `GENDER` varchar(45) NOT NULL,
  `ADDRESS_CODE` varchar(45) NOT NULL,
  `ADDRESS_BASIC` varchar(100) DEFAULT NULL,
  `ADDRESS_DETAIL` varchar(100) DEFAULT NULL,
  `BIRTH` varchar(45) DEFAULT NULL,
  `PIC` varchar(45) DEFAULT NULL,
  `LEVEL` varchar(45) DEFAULT NULL,
  `POSITION` varchar(45) DEFAULT NULL,
  `SECOND_PW` varchar(45) DEFAULT NULL,
  `SECOND_PWC` varchar(45) DEFAULT NULL,
  `BANK_CODE` varchar(45) DEFAULT NULL,
  `ACCOUNT_CODE` varchar(45) DEFAULT NULL,
  `ACCOUNT_HOLDER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_tb`
--

LOCK TABLES `member_tb` WRITE;
/*!40000 ALTER TABLE `member_tb` DISABLE KEYS */;
INSERT INTO `member_tb` VALUES ('dotori','다람쥐','12345','010-0000-0000','dsdg@sdag','female','06337','서울 강남구 일원로 지하 2','상세주소','1992년 01월 01일','son.jpg','5','FW MF ','Q01','자바','001','515-555-4444','이종혁'),('leejong01','이종혁','121212','010-5297-6642','dlwhdgur0120@naver.com','male','06337','서울 강남구 일원로 지하 2','상세주소','1993년 01월 01일','son.jpg','5','FW MF ','Q01','자바','001','515-555-4444','이종혁'),('leejong02','김종혁','123123','010-5297-6641','dlwhdugr0120@hanmail.net','male','06337','서울 강남구 일원로 지하 2','상세주소','1988년 08월 05일','1582675768657.png','5','FW MF ','Q02','자바','081','515-555-4444','이종혁'),('parkjji23','박지은','12345','010-0000-0000','sdgasd@naver.com','female','06330','서울 강남구 개포로 지하 522','상세주소','1997년 01월 01일','son.jpg','5','FW MF ','Q01','자바','001','515-555-4444','이종혁'),('sdagsdagsdag','이종혁','121212','010-5297-6642','dlwhdgur@naver.com','male','06313','서울 강남구 양재대로 333','상세주소입니다','2000년 09월 15일','chelsea.png','5','FW MF ','Q04','이종혁샘','001','124512441','이종혁');
/*!40000 ALTER TABLE `member_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticeboard_tb`
--

DROP TABLE IF EXISTS `noticeboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `noticeboard_tb` (
  `N_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `N_TITLE` varchar(90) NOT NULL,
  `N_DATE` date NOT NULL,
  `N_CONTENTS` varchar(45) NOT NULL,
  `N_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `N_FILE` varchar(45) DEFAULT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `N_STATE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`N_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticeboard_tb`
--

LOCK TABLES `noticeboard_tb` WRITE;
/*!40000 ALTER TABLE `noticeboard_tb` DISABLE KEYS */;
INSERT INTO `noticeboard_tb` VALUES (1,'	제 2희 손흥민을 꿈꿔라! AIA W&P FC 선수 공개테스트 1기 모집','2020-03-18','공지사항입니다',7,'son.png','유미','팀게시판 공지사항'),(2,'[2019 플레이컵 풋살 페스티벌]','2020-03-27','<p>안녕</p>',1,'son.png','유미','팀게시판 공지사항'),(3,'	[울산북구점] 불금 풋살 이벤트!','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀게시판 공지사항'),(4,'[HM슈퍼메가 이벤트] 제 1회 HMSPORTS배 FIFA 도장깨깃!','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀게시판 공지사항'),(5,'2019 HM풋살파크 특급 이벤트!','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀게시판 공지사항'),(6,'안산 실내풋살장 HM\'락\'풋살파크 오픈!!','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀갤러리 공지사항'),(7,'[챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 결과발표!^^','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀갤러리 공지사항'),(8,'	[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 결과발표!^^','2020-03-30','<p>안녕</p>',1,'son.png','유미','팀갤러리 공지사항'),(9,'	[챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 조편성 및 대진스케줄 발표!','2020-03-30','<p>안녕</p>',0,'son.png','유미','팀갤러리 공지사항'),(10,'	[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 조편성 및 대진스케줄 발표!','2020-03-30','<p>안녕</p>',1,'son.png','유미','팀갤러리 공지사항'),(11,'	[대전탄방점 성인리그] 폭력 및 비신사적 행위에 따른 양팀 리그 실격패 처리','2020-03-30','<p>안녕</p>',7,'son.png','유미','공지사항'),(12,'[부산가야 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리 안내','2020-03-30','<p>안녕</p>',0,'son.png','유미','공지사항'),(13,'	[서수원점 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리','2020-03-30','<p>안녕</p>',0,'son.png','유미','공지사항'),(14,'H-LEAGUE 주니어 그룹 부산지역 최종 우승팀 발표','2020-03-30','<p>안녕</p>',1,'son.png','유미','공지사항'),(15,'AIA바이탈리티 H-LEAGUE 이적시장 오픈!','2020-03-30','<p>안녕</p>',0,'son.png','유미','공지사항'),(16,'	H-LEAGUE 부산가야점 초등부 현장 스케치','2020-03-30','<p>안녕</p>',0,'son.png','유미','공지사항'),(17,'두번째공지','2020-03-30','<p>ㅇㅇ</p>',2,NULL,'유미','공지사항');
/*!40000 ALTER TABLE `noticeboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_regist_tb`
--

DROP TABLE IF EXISTS `player_regist_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `player_regist_tb` (
  `PLAYER_GAMES` int(11) DEFAULT NULL,
  `PLAYER_GOALS` int(11) DEFAULT NULL,
  `PLAYER_YELLOW` int(11) DEFAULT NULL,
  `PLAYER_RED` int(11) DEFAULT NULL,
  `ID` varchar(45) NOT NULL,
  `LEAGUE_CODE` int(11) NOT NULL,
  `T_CODE` int(11) NOT NULL,
  `PLAYER_POSITION` varchar(45) NOT NULL,
  `PLAYER_UNIFORMNUM` int(11) NOT NULL,
  KEY `PLAYER_REGIST_ID_idx` (`ID`),
  KEY `PLAYER_REGIST_LEAGUE_CODE_idx` (`LEAGUE_CODE`),
  KEY `PLAYER_REGIST_T_CODE_idx` (`T_CODE`),
  CONSTRAINT `PLAYER_REGIST_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PLAYER_REGIST_LEAGUE_CODE` FOREIGN KEY (`LEAGUE_CODE`) REFERENCES `league_tb` (`LEAGUE_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PLAYER_REGIST_T_CODE` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_regist_tb`
--

LOCK TABLES `player_regist_tb` WRITE;
/*!40000 ALTER TABLE `player_regist_tb` DISABLE KEYS */;
INSERT INTO `player_regist_tb` VALUES (3,5,2,0,'leejong01',1,1111,'',0),(4,6,3,1,'leejong02',1,265565,'',11),(2,5,2,0,'leejong01',1,305963,'',9),(3,6,1,1,'leejong02',2,305963,'',11);
/*!40000 ALTER TABLE `player_regist_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qnaboard_tb`
--

DROP TABLE IF EXISTS `qnaboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qnaboard_tb` (
  `Q_B_NO` int(11) NOT NULL AUTO_INCREMENT,
  `Q_B_NAME` varchar(45) NOT NULL,
  `Q_B_SECRET` varchar(45) NOT NULL,
  `Q_B_SECRETCODE` varchar(45) DEFAULT NULL,
  `Q_B_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Q_B_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `Q_B_CONTENTS` text NOT NULL,
  `Q_B_TITLE` varchar(45) NOT NULL,
  `Q_B_EMAIL` varchar(100) NOT NULL,
  `Q_B_REPLY` text,
  `Q_B_STATUS` varchar(45) NOT NULL,
  PRIMARY KEY (`Q_B_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnaboard_tb`
--

LOCK TABLES `qnaboard_tb` WRITE;
/*!40000 ALTER TABLE `qnaboard_tb` DISABLE KEYS */;
INSERT INTO `qnaboard_tb` VALUES (4,'a','sc','a','2020-02-11 16:18:24',10,'11111111111','환불가능한가요','',NULL,''),(5,'b','sc','b','2020-02-11 16:18:28',4,'b','예약확인해주세요','',NULL,''),(6,'55','sc','55','2020-03-11 10:01:59',1,'55','풋살장언제열려요?','',NULL,''),(8,'ㅇㅇ','sc','dd','2020-03-25 14:43:33',0,'ㅇㅇ','이벤트있나요?','',NULL,''),(9,'ㅁㅁ','sc','aa','2020-03-25 15:08:49',1,'ㅁㅁ','비밀번호찾고싶어요','',NULL,''),(11,'111','sc','111','2020-03-25 16:55:20',0,'111','아이디찾고싶어요','',NULL,''),(12,'222','sc','222','2020-03-25 16:56:36',1,'22','환불해주세요','',NULL,''),(13,'이종혁','sc','1111','2020-03-26 15:23:55',2,'1111','가까운지점알려주세요','',NULL,''),(14,'비밀비밀','sc','123','2020-03-31 12:21:39',0,'11','예약내역을 알고싶어요','',NULL,''),(15,'이종혁','sc','123','2020-03-31 12:21:54',3,'1','10번째글입니다','',NULL,'');
/*!40000 ALTER TABLE `qnaboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_tb`
--

DROP TABLE IF EXISTS `reservation_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation_tb` (
  `RES_NO` int(11) NOT NULL AUTO_INCREMENT,
  `RES_DATE` date NOT NULL,
  `RES_TIME` varchar(45) NOT NULL,
  `PAYMENT_CHARGE` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `GROUND_NO` int(11) NOT NULL,
  `RES_STATUS` int(11) NOT NULL,
  `RES_MOMENT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RES_NO`),
  KEY `RES_ID_idx` (`ID`),
  KEY `RES_G_NO_idx` (`GROUND_NO`),
  CONSTRAINT `RES_G_NO` FOREIGN KEY (`GROUND_NO`) REFERENCES `ground_tb` (`GROUND_NO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `RES_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_tb`
--

LOCK TABLES `reservation_tb` WRITE;
/*!40000 ALTER TABLE `reservation_tb` DISABLE KEYS */;
INSERT INTO `reservation_tb` VALUES (1,'2020-03-26','02:00 PM ~ 04:00 PM',70000,'parkjji23',1,20,'2020-03-24 01:02:03'),(2,'2020-03-20','02:00 PM ~ 04:00 PM',70000,'dotori',1,30,'2020-03-24 01:02:03'),(5,'2020-03-20','12:00 PM ~ 02:00 PM',70000,'dotori',1,30,'2020-03-24 01:02:03'),(6,'2020-03-20','08:00 PM ~ 10:00 PM',80000,'dotori',4,30,'2020-03-24 01:02:03'),(7,'2020-03-20','08:00 PM ~ 10:00 PM',80000,'parkjji23',4,30,'2020-03-24 01:02:03'),(8,'2020-03-20','02:00 PM ~ 04:00 PM',70000,'parkjji23',5,20,'2020-03-24 01:02:03'),(9,'2020-03-18','08:00 AM ~ 10:00 AM',60000,'parkjji23',1,20,'2020-03-24 01:02:03'),(10,'2020-03-20','10:00 AM ~ 12:00 PM',12000,'parkjji23',3,30,'2020-03-24 01:02:03'),(11,'2020-03-31','06:00 PM ~ 08:00 PM',60000,'parkjji23',3,30,'2020-03-24 01:02:03'),(12,'2020-03-20','06:00 PM ~ 08:00 PM',60000,'parkjji23',3,30,'2020-03-24 01:02:03'),(13,'2020-03-20','12:00 PM ~ 02:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(26,'2020-03-20','08:00 AM ~ 10:00 AM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(27,'2020-03-20','10:00 AM ~ 12:00 PM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(28,'2020-03-20','06:00 PM ~ 08:00 PM',70000,'parkjji23',1,30,'2020-03-24 01:02:03'),(29,'2020-03-20','08:00 AM ~ 10:00 AM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(30,'2020-03-20','10:00 AM ~ 12:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(31,'2020-03-20','02:00 PM ~ 04:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(32,'2020-03-20','04:00 PM ~ 06:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(33,'2020-03-20','06:00 PM ~ 08:00 PM',80000,'parkjji23',4,30,'2020-03-24 01:02:03'),(34,'2020-03-21','08:00 AM ~ 10:00 AM',80000,'parkjji23',1,30,'2020-03-24 01:02:03'),(35,'2020-03-21','10:00 AM ~ 12:00 PM',80000,'parkjji23',1,30,'2020-03-24 01:02:03'),(36,'2020-03-21','12:00 PM ~ 02:00 PM',80000,'parkjji23',1,30,'2020-03-24 01:02:03'),(37,'2020-03-21','02:00 PM ~ 04:00 PM',80000,'parkjji23',1,30,'2020-03-24 01:02:03'),(38,'2020-03-21','04:00 PM ~ 06:00 PM',80000,'parkjji23',1,30,'2020-03-24 01:02:03'),(39,'2020-03-21','06:00 PM ~ 08:00 PM',90000,'parkjji23',1,30,'2020-03-24 01:02:03'),(40,'2020-03-21','08:00 PM ~ 10:00 PM',90000,'parkjji23',1,30,'2020-03-24 01:02:03'),(41,'2020-03-21','08:00 AM ~ 10:00 AM',90000,'parkjji23',4,30,'2020-03-24 01:02:03'),(42,'2020-03-21','10:00 AM ~ 12:00 PM',90000,'parkjji23',4,30,'2020-03-24 01:02:03'),(43,'2020-03-21','12:00 PM ~ 02:00 PM',90000,'parkjji23',4,30,'2020-03-24 01:02:03'),(44,'2020-03-21','02:00 PM ~ 04:00 PM',90000,'parkjji23',4,30,'2020-03-24 01:02:03'),(45,'2020-03-21','04:00 PM ~ 06:00 PM',90000,'parkjji23',4,30,'2020-03-24 01:02:03'),(46,'2020-03-21','06:00 PM ~ 08:00 PM',100000,'parkjji23',4,30,'2020-03-24 01:02:03'),(47,'2020-03-21','08:00 PM ~ 10:00 PM',100000,'parkjji23',4,30,'2020-03-24 01:02:03'),(48,'2020-03-21','08:00 AM ~ 10:00 AM',60000,'parkjji23',5,30,'2020-03-24 01:02:03'),(49,'2020-03-21','10:00 AM ~ 12:00 PM',60000,'parkjji23',5,30,'2020-03-24 01:02:03'),(50,'2020-03-21','12:00 PM ~ 02:00 PM',60000,'parkjji23',5,30,'2020-03-24 01:02:03'),(51,'2020-03-21','02:00 PM ~ 04:00 PM',60000,'parkjji23',5,30,'2020-03-24 01:02:03'),(52,'2020-03-21','04:00 PM ~ 06:00 PM',60000,'parkjji23',5,30,'2020-03-24 01:02:03'),(53,'2020-03-21','06:00 PM ~ 08:00 PM',50000,'parkjji23',5,30,'2020-03-24 01:02:03'),(54,'2020-03-21','08:00 PM ~ 10:00 PM',50000,'parkjji23',5,30,'2020-03-24 01:02:03'),(55,'2020-03-26','08:00 AM ~ 10:00 AM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(56,'2020-03-26','10:00 AM ~ 12:00 PM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(57,'2020-03-26','12:00 PM ~ 02:00 PM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(58,'2020-03-26','02:00 PM ~ 04:00 PM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(59,'2020-03-26','08:00 PM ~ 10:00 PM',70000,'parkjji23',1,30,'2020-03-24 01:02:03'),(60,'2020-03-26','10:00 AM ~ 12:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(61,'2020-03-26','02:00 PM ~ 04:00 PM',80000,'parkjji23',5,30,'2020-03-24 01:02:03'),(62,'2020-03-26','12:00 PM ~ 02:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(63,'2020-03-26','02:00 PM ~ 04:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(64,'2020-03-26','04:00 PM ~ 06:00 PM',80000,'parkjji23',5,30,'2020-03-24 01:02:03'),(65,'2020-03-26','10:00 AM ~ 12:00 PM',80000,'parkjji23',5,30,'2020-03-24 01:02:03'),(66,'2020-03-26','08:00 AM ~ 10:00 AM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(67,'2020-03-26','06:00 PM ~ 08:00 PM',80000,'parkjji23',4,30,'2020-03-24 01:02:03'),(68,'2020-03-26','06:00 PM ~ 08:00 PM',70000,'parkjji23',5,30,'2020-03-24 01:02:03'),(69,'2020-03-26','06:00 PM ~ 08:00 PM',70000,'parkjji23',1,30,'2020-03-24 01:02:03'),(70,'2020-03-26','08:00 PM ~ 10:00 PM',80000,'parkjji23',4,30,'2020-03-24 01:02:03'),(71,'2020-03-26','04:00 PM ~ 06:00 PM',60000,'parkjji23',1,30,'2020-03-24 01:02:03'),(72,'2020-03-26','08:00 AM ~ 10:00 AM',80000,'parkjji23',5,30,'2020-03-24 01:02:03'),(73,'2020-03-26','12:00 PM ~ 02:00 PM',80000,'parkjji23',5,30,'2020-03-24 01:02:03'),(74,'2020-03-26','04:00 PM ~ 06:00 PM',70000,'parkjji23',4,30,'2020-03-24 01:02:03'),(75,'2020-03-26','08:00 PM ~ 10:00 PM',70000,'parkjji23',5,30,'2020-03-24 01:02:03'),(76,'2020-03-27','12:00 PM ~ 02:00 PM',70000,'parkjji23',4,20,'2020-03-24 01:02:03'),(78,'2020-03-25','08:00 AM ~ 10:00 AM',80000,'leejong01',5,30,'2020-03-24 01:02:03'),(79,'2020-03-25','10:00 AM ~ 12:00 PM',70000,'leejong01',4,30,'2020-03-24 01:02:03'),(80,'2020-03-25','12:00 PM ~ 02:00 PM',60000,'leejong01',1,30,'2020-03-24 01:02:03'),(81,'2020-03-25','10:00 AM ~ 12:00 PM',60000,'leejong01',1,30,'2020-03-24 01:02:03'),(83,'2020-03-25','06:00 PM ~ 08:00 PM',70000,'leejong01',1,30,'2020-03-24 01:02:03'),(84,'2020-03-25','04:00 PM ~ 06:00 PM',60000,'leejong01',1,30,'2020-03-25 17:09:41'),(85,'2020-03-25','08:00 AM ~ 10:00 AM',80000,'leejong01',5,20,'2020-03-25 17:09:41'),(86,'2020-03-27','08:00 AM ~ 10:00 AM',70000,'leejong01',4,20,'2020-03-26 09:59:21'),(87,'2020-03-27','08:00 AM ~ 10:00 AM',60000,'leejong01',1,20,'2020-03-26 18:02:17'),(88,'2020-03-28','08:00 AM ~ 10:00 AM',80000,'leejong01',1,20,'2020-03-27 10:01:29');
/*!40000 ALTER TABLE `reservation_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seoul_league_tb`
--

DROP TABLE IF EXISTS `seoul_league_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seoul_league_tb` (
  `T_CODE` int(11) NOT NULL,
  `LEAGUE_CODE` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`T_CODE`),
  KEY `LEAGUE_CODE_SEOUL_idx` (`LEAGUE_CODE`),
  KEY `ID_SEOUL_idx` (`ID`),
  CONSTRAINT `ID_SEOUL` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LEAGUE_CODE_SEOUL` FOREIGN KEY (`LEAGUE_CODE`) REFERENCES `league_tb` (`LEAGUE_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `T_CODE_SEOUL` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seoul_league_tb`
--

LOCK TABLES `seoul_league_tb` WRITE;
/*!40000 ALTER TABLE `seoul_league_tb` DISABLE KEYS */;
INSERT INTO `seoul_league_tb` VALUES (1111,1,'leejong01'),(944442,1,'leejong01');
/*!40000 ALTER TABLE `seoul_league_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_apply_tb`
--

DROP TABLE IF EXISTS `team_apply_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team_apply_tb` (
  `ID` varchar(20) NOT NULL,
  `T_CODE` int(11) NOT NULL,
  KEY `applyid_idx` (`ID`),
  KEY `applyteamcode_idx` (`T_CODE`),
  CONSTRAINT `applyid` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `applyteamcode` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_apply_tb`
--

LOCK TABLES `team_apply_tb` WRITE;
/*!40000 ALTER TABLE `team_apply_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_apply_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamboard_tb`
--

DROP TABLE IF EXISTS `teamboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamboard_tb` (
  `T_B_NO` int(11) NOT NULL,
  `T_B_CONTENTS` text NOT NULL,
  `T_B_SUBJECT` varchar(45) NOT NULL,
  `T_B_DATE` datetime NOT NULL,
  `T_B_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `ID` varchar(45) NOT NULL,
  `T_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`T_B_NO`),
  KEY `teamboardid_idx` (`ID`),
  KEY `teamboardTCODE_idx` (`T_CODE`),
  CONSTRAINT `teamboardID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamboard_tb`
--

LOCK TABLES `teamboard_tb` WRITE;
/*!40000 ALTER TABLE `teamboard_tb` DISABLE KEYS */;
INSERT INTO `teamboard_tb` VALUES (0,'안녕안녕','안녕하세요','2020-02-25 16:29:08',0,'leejong01',305963),(1,'이종혁입니다','안녕하세요','2020-02-21 00:00:00',14,'leejong01',305963),(2,'우리팀화이팅','우리팀화이팅','2020-02-25 16:33:46',0,'leejong01',305963),(3,'불사조팀짱','불사조팀짱','2020-02-25 16:34:47',0,'leejong01',305963),(4,'나는스펀지밥','나는스펀지밥','2020-02-25 16:34:52',0,'leejong01',305963),(5,'풋살하고싶어요','풋살하고싶어요','2020-02-25 16:34:55',0,'leejong01',305963),(6,'풋살장화이팅','풋살장화이팅','2020-02-25 16:34:59',0,'leejong01',305963),(7,'님들행복하세요','님들행복하세요','2020-02-25 16:35:05',0,'leejong01',305963),(8,'오늘뭐해요','오늘뭐해요','2020-02-25 16:35:10',0,'leejong01',305963),(9,'축구있어요?','축구있어요?','2020-02-25 16:35:16',0,'leejong01',305963),(10,'학원수업재밌다','학원수업재밌다','2020-02-25 16:35:22',2,'leejong01',305963),(20,'취직하고싶다','안녕하세요','2020-03-16 09:31:34',1,'leejong01',1111),(21,'취직시켜주세요','취직시켜주세요','2020-03-18 09:34:32',14,'leejong01',305963),(22,'열심히할게요','열심히할게요','2020-03-18 09:34:56',43,'leejong01',305963);
/*!40000 ALTER TABLE `teamboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamboardrep_tb`
--

DROP TABLE IF EXISTS `teamboardrep_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamboardrep_tb` (
  `TB_REP_NO` int(11) NOT NULL AUTO_INCREMENT,
  `TB_REP_CONTENTS` varchar(45) NOT NULL,
  `TB_REP_DATE` date NOT NULL,
  `T_B_NO` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`TB_REP_NO`),
  KEY `TB_NO_idx` (`T_B_NO`),
  KEY `TB_ID_idx` (`ID`),
  CONSTRAINT `TB_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamboardrep_tb`
--

LOCK TABLES `teamboardrep_tb` WRITE;
/*!40000 ALTER TABLE `teamboardrep_tb` DISABLE KEYS */;
INSERT INTO `teamboardrep_tb` VALUES (1,'안녕','2020-02-24',1,'leejong01'),(16,'dd','2020-02-25',2,'leejong01'),(18,'ㅇ','2020-02-26',22,'leejong01'),(19,'ㅁㅎㄴㅇㅎㄴㅇㅎ','2020-02-26',22,'leejong01'),(29,'ㅇㅇ','2020-02-26',22,'leejong01'),(30,'d','2020-02-26',15,'leejong01'),(31,'sad','2020-02-26',10,'leejong01'),(32,'화이팅','2020-03-30',21,'leejong01'),(33,'다들 힘내세요','2020-03-30',21,'leejong01'),(34,'세번째 댓글입니다','2020-03-30',21,'leejong01'),(35,'세번째 댓글입니다','2020-03-30',21,'leejong01');
/*!40000 ALTER TABLE `teamboardrep_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaminfo_tb`
--

DROP TABLE IF EXISTS `teaminfo_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teaminfo_tb` (
  `T_CODE` int(11) NOT NULL,
  `T_NAME` varchar(45) NOT NULL,
  `T_LOGO` varchar(45) DEFAULT NULL,
  `T_RANKING` int(11) DEFAULT NULL,
  `T_UNIFORM_HOME` varchar(45) NOT NULL,
  `T_UNIFORM_AWAY` varchar(45) NOT NULL,
  `T_BIRTH` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `T_CLASS` varchar(45) NOT NULL,
  `LEAGUE_RESULT_CODE` int(11) DEFAULT NULL,
  `ID` varchar(45) NOT NULL,
  `T_EMAIL` varchar(45) NOT NULL,
  PRIMARY KEY (`T_CODE`),
  KEY `teaminfo_leagueresultcode_idx` (`LEAGUE_RESULT_CODE`),
  KEY `teaminfo_member_id_idx` (`ID`),
  CONSTRAINT `teaminfo_leagueresultcode` FOREIGN KEY (`LEAGUE_RESULT_CODE`) REFERENCES `league_result_tb` (`LEAGUE_RESULT_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `teaminfo_member_id` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaminfo_tb`
--

LOCK TABLES `teaminfo_tb` WRITE;
/*!40000 ALTER TABLE `teaminfo_tb` DISABLE KEYS */;
INSERT INTO `teaminfo_tb` VALUES (1111,'축잘알','arsenal.png',1,'red-blue-black','black-blue-red','2020-02-17 12:04:05','성인부',NULL,'leejong01','dlwhdgur0120@naver.com'),(265565,'풋살잘하는팀','mcity.png',NULL,'black-black-black','black-black-black','2020-03-27 10:25:50','성인부',NULL,'leejong01','dlwhdgur0120@naver.com'),(305963,'불사조','arsenal.png',NULL,'red-blue-black','black-blue-red','2020-02-19 12:04:05','성인부',NULL,'leejong01','dlwhdgur0120@naver.com'),(858195,'김광호팀','arsenal.png',NULL,'black-black-black','black-black-black','2020-03-31 15:36:58','초등부',NULL,'leejong01','dd.naver.com'),(884466,'그린굿팀','arsenal.png',NULL,'red-blue-black','black-blue-red','2020-03-27 10:25:50','성인부',NULL,'leejong01','dlwhdgur0120@naver.com'),(944442,'축구하자2','mcity.png',NULL,'black-black-black','black-black-black','2020-03-18 10:25:50','성인부',NULL,'leejong01','dlwhdgur0120@naver.com');
/*!40000 ALTER TABLE `teaminfo_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamplayer_tb`
--

DROP TABLE IF EXISTS `teamplayer_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamplayer_tb` (
  `T_CODE` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  KEY `T_CODE_idx` (`T_CODE`),
  KEY `ID_idx` (`ID`),
  CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `T_CODE` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamplayer_tb`
--

LOCK TABLES `teamplayer_tb` WRITE;
/*!40000 ALTER TABLE `teamplayer_tb` DISABLE KEYS */;
INSERT INTO `teamplayer_tb` VALUES (1111,'leejong02'),(1111,'leejong01'),(562521,'leejong01'),(562521,'leejong02'),(900505,'leejong02'),(149632,'leejong01'),(900505,'leejong01'),(944442,'leejong02'),(944442,'leejong01');
/*!40000 ALTER TABLE `teamplayer_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yongboard_tb`
--

DROP TABLE IF EXISTS `yongboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yongboard_tb` (
  `Y_B_NO` int(11) NOT NULL AUTO_INCREMENT,
  `Y_B_NAME` varchar(45) NOT NULL,
  `Y_B_BRANCH` varchar(45) NOT NULL,
  `Y_B_GROUND` varchar(45) NOT NULL,
  `Y_B_TEL` varchar(45) NOT NULL,
  `Y_B_SCHEDULE` varchar(45) NOT NULL,
  `Y_B_TIME` varchar(45) NOT NULL,
  `Y_B_STATUS` varchar(45) NOT NULL,
  `Y_B_LEVEL` varchar(45) NOT NULL,
  `Y_B_CONTENTS` text,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Y_B_NO`),
  KEY `yb_member_id_idx` (`ID`),
  CONSTRAINT `yb_member_id` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yongboard_tb`
--

LOCK TABLES `yongboard_tb` WRITE;
/*!40000 ALTER TABLE `yongboard_tb` DISABLE KEYS */;
INSERT INTO `yongboard_tb` VALUES (4,'이종혁','1','4','01055569974','2020-03-23','16:00 - 18:00','가능','상','저 잘해요','leejong01'),(5,'수정용','1','1','01055569974','2020-03-23','16:00 - 18:00','가능','중상','저 잘해요','leejong01'),(6,'이종혁','2','2','01055569974','2020-03-23','13:00 - 15:00','가능','중상','저 잘해요','leejong01'),(7,'김광호','3','3','01055569974','2020-03-23','16:00 - 18:00','가능','상','저 잘해요','leejong01'),(8,'박지은','6','6','01095632142','2020-03-23','16:00 - 18:00','가능','하','함께해요','leejong01'),(9,'정문경','7','10','01095632142','2020-03-23','13:00 - 15:00','가능','중상','함께해요','leejong01'),(10,'강호동','3','3','01095632142','2020-03-23','16:00 - 18:00','가능','상','함께해요','leejong01'),(11,'수정용','3','3','01055569974','2020-03-23','16:00 - 18:00','가능','중상','저 잘해요','leejong01'),(12,'이종혁','6','7','01055569974','2020-03-23','13:00 - 15:00','가능','중상','저 잘해요','leejong01'),(13,'김광호','6','8','01055569974','2020-03-23','16:00 - 18:00','가능','상','저 잘해요','leejong01'),(14,'박지은','6','9','01095632142','2020-03-23','16:00 - 18:00','가능','하','함께해요','leejong01'),(15,'정문경','3','3','01095632142','2020-03-23','13:00 - 15:00','가능','중상','함께해요','leejong01'),(16,'강호동','3','3','01095632142','2020-03-23','16:00 - 18:00','가능','상','함께해요','leejong01'),(17,'김철수','3','3','01023124532','2020-03-31','18:00 - 20:00','가능','하','양 발 잘 씁니다! 체력 좋아요! 열심히 뛰겠습니다!','leejong01'),(18,'박지은','2','2','01055556666','2020-04-07','13:00 - 15:00','가능','중상','안녕','leejong01');
/*!40000 ALTER TABLE `yongboard_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03 18:18:20
