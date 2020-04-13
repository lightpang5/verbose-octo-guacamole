-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grade
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
-- Table structure for table `bd`
--

DROP TABLE IF EXISTS `bd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bd` (
  `title` varchar(20) DEFAULT NULL,
  `writer` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `postpw` varchar(20) DEFAULT NULL,
  `postcon` varchar(10000) DEFAULT NULL,
  `attfile` varchar(20) DEFAULT NULL,
  `wrdate` date DEFAULT NULL,
  `clicknum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd`
--

LOCK TABLES `bd` WRITE;
/*!40000 ALTER TABLE `bd` DISABLE KEYS */;
INSERT INTO `bd` VALUES ('Hello World!','Kim','kim@naver.com','123123','Welcome Kims Convenience store in Califonia','map','2019-11-20',10000);
/*!40000 ALTER TABLE `bd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` varchar(20) DEFAULT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `birthy` date DEFAULT NULL,
  `birthm` date DEFAULT NULL,
  `birthd` date DEFAULT NULL,
  `pwq` varchar(100) DEFAULT NULL,
  `pwa` varchar(100) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Jung','1234','Men','KimJung','jung@naver.com','01012345678','1980-10-11','1975-12-22','1999-02-13','Let me introduce your carrer','student','Seoul','Seoul Nakseongdae','GoldPang'),('park','1234','Men','kimchi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Lee','3333','Women','Jannet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Nana','paster','Women','Canada',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Frank','123123','Man','Frankviena',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d`
--

DROP TABLE IF EXISTS `d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d` (
  `sb` varchar(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d`
--

LOCK TABLES `d` WRITE;
/*!40000 ALTER TABLE `d` DISABLE KEYS */;
INSERT INTO `d` VALUES ('com',100);
/*!40000 ALTER TABLE `d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dept` (
  `dept_id` int(11) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (100,'관리부'),(200,'경리부'),(300,'생산부'),(400,'영업부');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(10) NOT NULL,
  `job` varchar(10) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `sal` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `mgr_id` int(11) DEFAULT NULL,
  `hiredate` date NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (6200,'박철수','대표이사',200,5000,NULL,NULL,'1997-12-17'),(6311,'김대정','부장',100,3500,NULL,6200,'1998-12-17'),(6321,'이종길','부장',400,3800,500,6200,'1999-04-20'),(6351,'진대준','부장',300,2850,NULL,6200,'2000-05-31'),(6361,'김철수','부장',200,3200,NULL,6200,'2000-06-09'),(7489,'민동규','세일즈',400,1850,200,6321,'1999-02-27'),(7522,'정종철','세일즈',400,1850,300,6321,'1998-02-28'),(7854,'진영진','세일즈',400,1500,0,6321,'2001-09-08'),(7872,'이문정','사무직',100,1500,NULL,6311,'2001-02-12'),(7878,'백기수','연구직',200,3000,NULL,6361,'2001-06-05'),(7901,'정동길','연구직',NULL,3000,NULL,NULL,'2001-12-03'),(7910,'이영희','경리',300,1000,NULL,6351,'2001-05-01'),(7920,'김마리아','사무직',300,1050,NULL,6351,'2001-03-18'),(7933,'김철수','사무직',200,1050,NULL,6361,'2002-01-02');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exambook`
--

DROP TABLE IF EXISTS `exambook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exambook` (
  `bookid` int(11) NOT NULL,
  `bookname` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exambook`
--

LOCK TABLES `exambook` WRITE;
/*!40000 ALTER TABLE `exambook` DISABLE KEYS */;
INSERT INTO `exambook` VALUES (1,'축구의 역사','굿스포츠',7000),(2,'축구아는 여자','나무수',13000),(3,'축구의 이해','대한미디어',22000),(4,'골프 바이블','대한미디어',35000),(5,'피겨 교본','굿스포츠',8000),(6,'역도 단계별기술','굿스포츠',6000),(7,'야구의 추억','이상미디어',20000),(8,'야구를 부탁해','이상미디어',13000),(9,'올림픽 이야기','삼성당',7500),(10,'Olympic Champions','Pearson',13000),(12,'스포츠 의학','한솔의학서적',NULL);
/*!40000 ALTER TABLE `exambook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examcust`
--

DROP TABLE IF EXISTS `examcust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examcust` (
  `custid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examcust`
--

LOCK TABLES `examcust` WRITE;
/*!40000 ALTER TABLE `examcust` DISABLE KEYS */;
INSERT INTO `examcust` VALUES (1,'박지성','영국 맨체스타','000-5000-0001'),(2,'김연아','대한민국 서울','000-6000-0001'),(3,'장미란','대한민국 강원도','000-7000-0001'),(4,'추신수','미국 클리블랜드','000-8000-0001'),(5,'박세리','대한민국 부산',NULL);
/*!40000 ALTER TABLE `examcust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examorder`
--

DROP TABLE IF EXISTS `examorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examorder` (
  `orderid` int(11) NOT NULL,
  `custid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `salepric` int(11) DEFAULT NULL,
  `orderdate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examorder`
--

LOCK TABLES `examorder` WRITE;
/*!40000 ALTER TABLE `examorder` DISABLE KEYS */;
INSERT INTO `examorder` VALUES (1,1,1,6000,'2014-07-01 00:00:00'),(2,1,3,21000,'2014-07-03 00:00:00'),(3,2,5,8000,'2014-07-03 00:00:00'),(4,3,6,6000,'2014-07-04 00:00:00'),(5,4,7,20000,'2014-07-05 00:00:00'),(6,1,2,12000,'2014-07-07 00:00:00'),(7,4,8,13000,'2014-07-07 00:00:00'),(8,3,10,12000,'2014-07-08 00:00:00'),(9,2,10,7000,'2014-07-09 00:00:00'),(10,3,8,13000,'2014-07-10 00:00:00');
/*!40000 ALTER TABLE `examorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `id` varchar(20) DEFAULT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `rn` varchar(20) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('Kimm','123','Smith','950814','01050096728','yanadoo@naver.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room` (
  `roomNumber` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (901,34),(902,35),(903,25),(904,32),(905,30),(906,35);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `studentNumber` int(11) NOT NULL,
  `studentName` varchar(12) NOT NULL,
  `studentResidentNumber` varchar(14) NOT NULL,
  `studentTel` varchar(14) NOT NULL,
  `studentAddress` varchar(50) DEFAULT NULL,
  `studentEmail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`studentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'김자바','871212-2346111','010-8888-8888','부산','ddd@naver.com'),(2,'김땡땡','920112-1234812','010-9999-9999','경기','eee@naver.com'),(3,'고유진','930102-1555555','010-1234-5678','서울','yyy@naver.com'),(4,'유지나','901111-2222222','010-9876-5432','전남','fff@naver.com'),(5,'김명수','911231-1777777','010-0101-0202','인천','zzz@naver.com'),(6,'박재석','890915-1333333','010-1357-2468','강원','ppp@naver.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subject` (
  `sugangCode` varchar(5) NOT NULL,
  `subjectName` varchar(20) NOT NULL,
  PRIMARY KEY (`sugangCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('j1001','sql'),('j1002','apache'),('j1003','JSP'),('j1004','Spring'),('j1005','java'),('j1006','javascript');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugang`
--

DROP TABLE IF EXISTS `sugang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sugang` (
  `studentNumber` int(11) NOT NULL,
  `sugangCode` varchar(5) NOT NULL,
  PRIMARY KEY (`studentNumber`),
  KEY `sugangsugangcode_idx` (`sugangCode`),
  CONSTRAINT `sugangstudentcode` FOREIGN KEY (`studentNumber`) REFERENCES `student` (`studentNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sugangsugangcode` FOREIGN KEY (`sugangCode`) REFERENCES `subject` (`sugangCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugang`
--

LOCK TABLES `sugang` WRITE;
/*!40000 ALTER TABLE `sugang` DISABLE KEYS */;
INSERT INTO `sugang` VALUES (1,'j1001'),(2,'j1002'),(3,'j1003'),(4,'j1004'),(5,'j1005'),(6,'j1006');
/*!40000 ALTER TABLE `sugang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugangtb`
--

DROP TABLE IF EXISTS `sugangtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sugangtb` (
  `sugangCode` varchar(5) NOT NULL,
  `roomNumber` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `teacherNumber` int(11) NOT NULL,
  PRIMARY KEY (`sugangCode`),
  KEY `sugangtbroomnumber_idx` (`roomNumber`),
  KEY `sugangtbteachernumber_idx` (`teacherNumber`),
  CONSTRAINT `sugangtbroomnumber` FOREIGN KEY (`roomNumber`) REFERENCES `room` (`roomNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sugangtbsugangcode` FOREIGN KEY (`sugangCode`) REFERENCES `subject` (`sugangCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sugangtbteachernumber` FOREIGN KEY (`teacherNumber`) REFERENCES `teacher` (`teacherNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugangtb`
--

LOCK TABLES `sugangtb` WRITE;
/*!40000 ALTER TABLE `sugangtb` DISABLE KEYS */;
INSERT INTO `sugangtb` VALUES ('j1001',901,2,1),('j1002',902,2,2),('j1003',903,2,3),('j1004',904,2,4),('j1005',905,2,5),('j1006',906,2,6);
/*!40000 ALTER TABLE `sugangtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `teacherNumber` int(11) NOT NULL,
  `teacherName` varchar(12) NOT NULL,
  `residentNumber` varchar(14) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `sugangCode` varchar(45) NOT NULL,
  PRIMARY KEY (`teacherNumber`),
  KEY `teachersugangcode_idx` (`sugangCode`),
  CONSTRAINT `teachersugangcode` FOREIGN KEY (`sugangCode`) REFERENCES `subject` (`sugangCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'홍길동','700918-1622011','031-123-4567','성남시 중원구 신흥동','aaa@java.or.kr','j1001'),(2,'유관순','710419-2018916','02-987-1234','서울시 강남구 개포동','bbb@java.or.kr','j1002'),(3,'이산','730112-1344911','031-1133-5577','서울시 강남구 논현동','ccc@java.or.kr','j1003'),(4,'김철수','730301-1167623','031-567-5678','서울시 서초구 서초동','ggg@java.or.kr','j1004'),(5,'나자바','730322-2037921','031-785-1236','서울시 강서구 가양동','qqq@java.or.kr','j1005'),(6,'이순신','731122-1646213','031-234-8901','서울시 강북구 미아동','xxx@java.or.kr','j1006');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 17:28:33
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jsp
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
-- Table structure for table `buytable`
--

DROP TABLE IF EXISTS `buytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buytable` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(8) NOT NULL,
  `prodName` varchar(6) NOT NULL,
  `groupName` varchar(4) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `userID` (`userID`),
  CONSTRAINT `buytable_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usertable` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buytable`
--

LOCK TABLES `buytable` WRITE;
/*!40000 ALTER TABLE `buytable` DISABLE KEYS */;
INSERT INTO `buytable` VALUES (1,'KHD','운동화',NULL,30,2),(2,'KHD','노트북','전자',1000,1),(3,'KYM','모니터','전자',200,1),(4,'PSH','모니터','전자',200,5),(5,'KHD','청바지','의류',50,3),(6,'PSH','메모리','전자',80,10),(7,'KJD','책','서적',15,5),(8,'LHJ','책','서적',15,2),(9,'LHJ','청바지','의류',50,1),(10,'PSH','운동화',NULL,30,2),(11,'LHJ','책','서적',15,1),(12,'PSH','운동화',NULL,30,2);
/*!40000 ALTER TABLE `buytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buytbl`
--

DROP TABLE IF EXISTS `buytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buytbl` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `prodName` varchar(45) NOT NULL,
  `groupName` varchar(45) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `amount` smallint(6) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `purchaseID_idx` (`userID`),
  CONSTRAINT `purchaseID` FOREIGN KEY (`userID`) REFERENCES `usertbl` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buytbl`
--

LOCK TABLES `buytbl` WRITE;
/*!40000 ALTER TABLE `buytbl` DISABLE KEYS */;
INSERT INTO `buytbl` VALUES (2,'KHD','노트북','전자',1000,1),(3,'SDY','모니터','전자',200,1),(4,'YJS','모니터','전자',200,5),(5,'LKK','메모리','전자',80,10),(6,'YJS','청바지','의류',50,1),(8,'LKK','책','서적',15,1);
/*!40000 ALTER TABLE `buytbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `dno` varchar(45) NOT NULL,
  `dname` varchar(45) NOT NULL,
  `office` varchar(45) NOT NULL,
  `ssn` varchar(45) NOT NULL,
  PRIMARY KEY (`dno`),
  KEY `ssn_idx` (`ssn`),
  CONSTRAINT `ssn` FOREIGN KEY (`ssn`) REFERENCES `professor` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departments` (
  `department_id` int(10) unsigned NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700),(40,'Human Resources',203,2400),(50,'Shipping',121,1500),(60,'IT',103,1400),(70,'Public Relations',204,2700),(80,'Sales',145,2500),(90,'Executive',100,1700),(100,'Finance',108,1700),(110,'Accounting',205,1700),(120,'Treasury',NULL,1700),(130,'Corporate Tax',NULL,1700),(140,'Control And Credit',NULL,1700),(150,'Shareholder Services',NULL,1700),(160,'Benefits',NULL,1700),(170,'Manufacturing',NULL,1700),(180,'Construction',NULL,1700),(190,'Contracting',NULL,1700),(200,'Operations',NULL,1700),(210,'IT Support',NULL,1700),(220,'NOC',NULL,1700),(230,'IT Helpdesk',NULL,1700),(240,'Government Sales',NULL,1700),(250,'Retail Sales',NULL,1700),(260,'Recruiting',NULL,1700),(270,'Payroll',NULL,1700);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees` (
  `employee_id` int(10) unsigned NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `commission_pct` decimal(2,2) DEFAULT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (100,'Steven','King','SKING','515.123.4567','1987-06-17','AD_PRES',24000.00,NULL,NULL,90),(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','1989-09-21','AD_VP',17000.00,NULL,100,90),(102,'Lex','De Haan','LDEHAAN','515.123.4569','1993-01-13','AD_VP',17000.00,NULL,100,90),(103,'Alexander','Hunold','AHUNOLD','590.423.4567','1990-01-03','IT_PROG',9000.00,NULL,102,60),(104,'Bruce','Ernst','BERNST','590.423.4568','1991-05-21','IT_PROG',6000.00,NULL,103,60),(105,'David','Austin','DAUSTIN','590.423.4569','1997-06-25','IT_PROG',4800.00,NULL,103,60),(106,'Valli','Pataballa','VPATABAL','590.423.4560','1998-02-05','IT_PROG',4800.00,NULL,103,60),(107,'Diana','Lorentz','DLORENTZ','590.423.5567','1999-02-07','IT_PROG',4200.00,NULL,103,60),(108,'Nancy','Greenberg','NGREENBE','515.124.4569','1994-08-17','FI_MGR',12000.00,NULL,101,100),(109,'Daniel','Faviet','DFAVIET','515.124.4169','1994-08-16','FI_ACCOUNT',9000.00,NULL,108,100),(110,'John','Chen','JCHEN','515.124.4269','1997-09-28','FI_ACCOUNT',8200.00,NULL,108,100),(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','1997-09-30','FI_ACCOUNT',7700.00,NULL,108,100),(112,'Jose Manuel','Urman','JMURMAN','515.124.4469','1998-03-07','FI_ACCOUNT',7800.00,NULL,108,100),(113,'Luis','Popp','LPOPP','515.124.4567','1999-12-07','FI_ACCOUNT',6900.00,NULL,108,100),(114,'Den','Raphaely','DRAPHEAL','515.127.4561','1994-12-07','PU_MAN',11000.00,NULL,100,30),(115,'Alexander','Khoo','AKHOO','515.127.4562','1995-05-18','PU_CLERK',3100.00,NULL,114,30),(116,'Shelli','Baida','SBAIDA','515.127.4563','1997-12-24','PU_CLERK',2900.00,NULL,114,30),(117,'Sigal','Tobias','STOBIAS','515.127.4564','1997-07-24','PU_CLERK',2800.00,NULL,114,30),(118,'Guy','Himuro','GHIMURO','515.127.4565','1998-11-15','PU_CLERK',2600.00,NULL,114,30),(119,'Karen','Colmenares','KCOLMENA','515.127.4566','1999-08-10','PU_CLERK',2500.00,NULL,114,30),(120,'Matthew','Weiss','MWEISS','650.123.1234','1996-07-18','ST_MAN',8000.00,NULL,100,50),(121,'Adam','Fripp','AFRIPP','650.123.2234','1997-04-10','ST_MAN',8200.00,NULL,100,50),(122,'Payam','Kaufling','PKAUFLIN','650.123.3234','1995-05-01','ST_MAN',7900.00,NULL,100,50),(123,'Shanta','Vollman','SVOLLMAN','650.123.4234','1997-10-10','ST_MAN',6500.00,NULL,100,50),(124,'Kevin','Mourgos','KMOURGOS','650.123.5234','1999-11-16','ST_MAN',5800.00,NULL,100,50),(125,'Julia','Nayer','JNAYER','650.124.1214','1997-07-16','ST_CLERK',3200.00,NULL,120,50),(126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','1998-09-28','ST_CLERK',2700.00,NULL,120,50),(127,'James','Landry','JLANDRY','650.124.1334','1999-01-14','ST_CLERK',2400.00,NULL,120,50),(128,'Steven','Markle','SMARKLE','650.124.1434','2000-03-08','ST_CLERK',2200.00,NULL,120,50),(129,'Laura','Bissot','LBISSOT','650.124.5234','1997-08-20','ST_CLERK',3300.00,NULL,121,50),(130,'Mozhe','Atkinson','MATKINSO','650.124.6234','1997-10-30','ST_CLERK',2800.00,NULL,121,50),(131,'James','Marlow','JAMRLOW','650.124.7234','1997-02-16','ST_CLERK',2500.00,NULL,121,50),(132,'TJ','Olson','TJOLSON','650.124.8234','1999-04-10','ST_CLERK',2100.00,NULL,121,50),(133,'Jason','Mallin','JMALLIN','650.127.1934','1996-06-14','ST_CLERK',3300.00,NULL,122,50),(134,'Michael','Rogers','MROGERS','650.127.1834','1998-08-26','ST_CLERK',2900.00,NULL,122,50),(135,'Ki','Gee','KGEE','650.127.1734','1999-12-12','ST_CLERK',2400.00,NULL,122,50),(136,'Hazel','Philtanker','HPHILTAN','650.127.1634','2000-02-06','ST_CLERK',2200.00,NULL,122,50),(137,'Renske','Ladwig','RLADWIG','650.121.1234','1995-07-14','ST_CLERK',3600.00,NULL,123,50),(138,'Stephen','Stiles','SSTILES','650.121.2034','1997-10-26','ST_CLERK',3200.00,NULL,123,50),(139,'John','Seo','JSEO','650.121.2019','1998-02-12','ST_CLERK',2700.00,NULL,123,50),(140,'Joshua','Patel','JPATEL','650.121.1834','1998-04-06','ST_CLERK',2500.00,NULL,123,50),(141,'Trenna','Rajs','TRAJS','650.121.8009','1995-10-17','ST_CLERK',3500.00,NULL,124,50),(142,'Curtis','Davies','CDAVIES','650.121.2994','1997-01-29','ST_CLERK',3100.00,NULL,124,50),(143,'Randall','Matos','RMATOS','650.121.2874','1998-03-15','ST_CLERK',2600.00,NULL,124,50),(144,'Peter','Vargas','PVARGAS','650.121.2004','1998-07-09','ST_CLERK',2500.00,NULL,124,50),(145,'John','Russell','JRUSSEL','011.44.1344.429268','1996-10-01','SA_MAN',14000.00,0.40,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467268','1997-01-05','SA_MAN',13500.00,0.30,100,80),(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','1997-03-10','SA_MAN',12000.00,0.30,100,80),(148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','1999-10-15','SA_MAN',11000.00,0.30,100,80),(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2000-01-29','SA_MAN',10500.00,0.20,100,80),(150,'Peter','Tucker','PTUCKER','011.44.1344.129268','1997-01-30','SA_REP',10000.00,0.30,145,80),(151,'David','Bernstein','DBERNSTE','011.44.1344.345268','1997-03-24','SA_REP',9500.00,0.25,145,80),(152,'Peter','Hall','PHALL','011.44.1344.478968','1997-08-20','SA_REP',9000.00,0.25,145,80),(153,'Christopher','Olsen','COLSEN','011.44.1344.498718','1998-03-30','SA_REP',8000.00,0.20,145,80),(154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','1998-12-09','SA_REP',7500.00,0.20,145,80),(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','1999-11-23','SA_REP',7000.00,0.15,145,80),(156,'Janette','King','JKING','011.44.1345.429268','1996-01-30','SA_REP',10000.00,0.35,146,80),(157,'Patrick','Sully','PSULLY','011.44.1345.929268','1996-03-04','SA_REP',9500.00,0.35,146,80),(158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','1996-08-01','SA_REP',9000.00,0.35,146,80),(159,'Lindsey','Smith','LSMITH','011.44.1345.729268','1997-03-10','SA_REP',8000.00,0.30,146,80),(160,'Louise','Doran','LDORAN','011.44.1345.629268','1997-12-15','SA_REP',7500.00,0.30,146,80),(161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','1998-11-03','SA_REP',7000.00,0.25,146,80),(162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','1997-11-11','SA_REP',10500.00,0.25,147,80),(163,'Danielle','Greene','DGREENE','011.44.1346.229268','1999-03-19','SA_REP',9500.00,0.15,147,80),(164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','2000-01-24','SA_REP',7200.00,0.10,147,80),(165,'David','Lee','DLEE','011.44.1346.529268','2000-02-23','SA_REP',6800.00,0.10,147,80),(166,'Sundar','Ande','SANDE','011.44.1346.629268','2000-03-24','SA_REP',6400.00,0.10,147,80),(167,'Amit','Banda','ABANDA','011.44.1346.729268','2000-04-21','SA_REP',6200.00,0.10,147,80),(168,'Lisa','Ozer','LOZER','011.44.1343.929268','1997-03-11','SA_REP',11500.00,0.25,148,80),(169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','1998-03-23','SA_REP',10000.00,0.20,148,80),(170,'Tayler','Fox','TFOX','011.44.1343.729268','1998-01-24','SA_REP',9600.00,0.20,148,80),(171,'William','Smith','WSMITH','011.44.1343.629268','1999-02-23','SA_REP',7400.00,0.15,148,80),(172,'Elizabeth','Bates','EBATES','011.44.1343.529268','1999-03-24','SA_REP',7300.00,0.15,148,80),(173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','2000-04-21','SA_REP',6100.00,0.10,148,80),(174,'Ellen','Abel','EABEL','011.44.1644.429267','1996-05-11','SA_REP',11000.00,0.30,149,80),(175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','1997-03-19','SA_REP',8800.00,0.25,149,80),(176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','1998-03-24','SA_REP',8600.00,0.20,149,80),(177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','1998-04-23','SA_REP',8400.00,0.20,149,80),(178,'Kimberely','Grant','KGRANT','011.44.1644.429263','1999-05-24','SA_REP',7000.00,0.15,149,NULL),(179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','2000-01-04','SA_REP',6200.00,0.10,149,80),(180,'Winston','Taylor','WTAYLOR','650.507.9876','1998-01-24','SH_CLERK',3200.00,NULL,120,50),(181,'Jean','Fleaur','JFLEAUR','650.507.9877','1998-02-23','SH_CLERK',3100.00,NULL,120,50),(182,'Martha','Sullivan','MSULLIVA','650.507.9878','1999-06-21','SH_CLERK',2500.00,NULL,120,50),(183,'Girard','Geoni','GGEONI','650.507.9879','2000-02-03','SH_CLERK',2800.00,NULL,120,50),(184,'Nandita','Sarchand','NSARCHAN','650.509.1876','1996-01-27','SH_CLERK',4200.00,NULL,121,50),(185,'Alexis','Bull','ABULL','650.509.2876','1997-02-20','SH_CLERK',4100.00,NULL,121,50),(186,'Julia','Dellinger','JDELLING','650.509.3876','1998-06-24','SH_CLERK',3400.00,NULL,121,50),(187,'Anthony','Cabrio','ACABRIO','650.509.4876','1999-02-07','SH_CLERK',3000.00,NULL,121,50),(188,'Kelly','Chung','KCHUNG','650.505.1876','1997-06-14','SH_CLERK',3800.00,NULL,122,50),(189,'Jennifer','Dilly','JDILLY','650.505.2876','1997-08-13','SH_CLERK',3600.00,NULL,122,50),(190,'Timothy','Gates','TGATES','650.505.3876','1998-07-11','SH_CLERK',2900.00,NULL,122,50),(191,'Randall','Perkins','RPERKINS','650.505.4876','1999-12-19','SH_CLERK',2500.00,NULL,122,50),(192,'Sarah','Bell','SBELL','650.501.1876','1996-02-04','SH_CLERK',4000.00,NULL,123,50),(193,'Britney','Everett','BEVERETT','650.501.2876','1997-03-03','SH_CLERK',3900.00,NULL,123,50),(194,'Samuel','McCain','SMCCAIN','650.501.3876','1998-07-01','SH_CLERK',3200.00,NULL,123,50),(195,'Vance','Jones','VJONES','650.501.4876','1999-03-17','SH_CLERK',2800.00,NULL,123,50),(196,'Alana','Walsh','AWALSH','650.507.9811','1998-04-24','SH_CLERK',3100.00,NULL,124,50),(197,'Kevin','Feeney','KFEENEY','650.507.9822','1998-05-23','SH_CLERK',3000.00,NULL,124,50),(198,'Donald','OConnell','DOCONNEL','650.507.9833','1999-06-21','SH_CLERK',2600.00,NULL,124,50),(199,'Douglas','Grant','DGRANT','650.507.9844','2000-01-13','SH_CLERK',2600.00,NULL,124,50),(200,'Jennifer','Whalen','JWHALEN','515.123.4444','1987-09-17','AD_ASST',4400.00,NULL,101,10),(201,'Michael','Hartstein','MHARTSTE','515.123.5555','1996-02-17','MK_MAN',13000.00,NULL,100,20),(202,'Pat','Fay','PFAY','603.123.6666','1997-08-17','MK_REP',6000.00,NULL,201,20),(203,'Susan','Mavris','SMAVRIS','515.123.7777','1994-06-07','HR_REP',6500.00,NULL,101,40),(204,'Hermann','Baer','HBAER','515.123.8888','1994-06-07','PR_REP',10000.00,NULL,101,70),(205,'Shelley','Higgins','SHIGGINS','515.123.8080','1994-06-07','AC_MGR',12000.00,NULL,101,110),(206,'William','Gietz','WGIETZ','51hr5.123.8181','1994-06-07','AC_ACCOUNT',8300.00,NULL,205,110);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exjsp`
--

DROP TABLE IF EXISTS `exjsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exjsp` (
  `id` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exjsp`
--

LOCK TABLES `exjsp` WRITE;
/*!40000 ALTER TABLE `exjsp` DISABLE KEYS */;
INSERT INTO `exjsp` VALUES ('kim','123123','smith'),('Park','0000','sam'),('lee','1111','Jooosh'),('xox','123','good');
/*!40000 ALTER TABLE `exjsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduate`
--

DROP TABLE IF EXISTS `graduate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `graduate` (
  `ssn` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `deg_prog` varchar(45) NOT NULL,
  `major` varchar(45) NOT NULL,
  `advisor` varchar(45) NOT NULL,
  PRIMARY KEY (`ssn`),
  KEY `advisor_idx` (`advisor`),
  CONSTRAINT `advisor` FOREIGN KEY (`advisor`) REFERENCES `graduate` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduate`
--

LOCK TABLES `graduate` WRITE;
/*!40000 ALTER TABLE `graduate` DISABLE KEYS */;
/*!40000 ALTER TABLE `graduate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_grades` (
  `grade_level` varchar(3) DEFAULT NULL,
  `lowest_sal` decimal(8,0) DEFAULT NULL,
  `highest_sal` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` VALUES ('A',1000,2999),('B',3000,5999),('C',6000,9999),('D',10000,14999),('E',15000,24999),('F',25000,40000);
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_history` (
  `employee_id` int(10) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `department_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_history`
--

LOCK TABLES `job_history` WRITE;
/*!40000 ALTER TABLE `job_history` DISABLE KEYS */;
INSERT INTO `job_history` VALUES (102,'1993-01-13','1998-07-24','IT_PROG',60),(101,'1989-09-21','1993-10-27','AC_ACCOUNT',110),(101,'1993-10-28','1997-03-15','AC_MGR',110),(201,'1996-02-27','1999-12-19','MK_REP',20),(114,'1998-03-24','1999-12-31','ST_CLERK',50),(122,'1999-01-01','1999-12-31','ST_CLERK',50),(200,'1987-09-17','1993-06-17','AD_ASST',90),(176,'1998-03-24','1998-12-31','SA_REP',80),(176,'1999-01-01','1999-12-31','SA_MAN',80),(200,'1994-07-01','1998-12-31','AC_ACCOUNT',90);
/*!40000 ALTER TABLE `job_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_info`
--

DROP TABLE IF EXISTS `list_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list_info` (
  `userid` varchar(50) DEFAULT NULL,
  `list_name` varchar(100) DEFAULT NULL,
  `wishedu` int(11) DEFAULT NULL,
  `wishlife` int(11) DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `list_info_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `member_test` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_info`
--

LOCK TABLES `list_info` WRITE;
/*!40000 ALTER TABLE `list_info` DISABLE KEYS */;
INSERT INTO `list_info` VALUES ('abcd','list',1,2);
/*!40000 ALTER TABLE `list_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `locations` (
  `location_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street_address` varchar(40) DEFAULT NULL,
  `postal_code` varchar(12) DEFAULT NULL,
  `city` varchar(30) NOT NULL,
  `state_province` varchar(25) DEFAULT NULL,
  `country_id` char(2) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1000,'1297 Via Cola di Rie','00989','Roma',NULL,'IT'),(1100,'93091 Calle della Testa','10934','Venice',NULL,'IT'),(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho','6823','Hiroshima',NULL,'JP'),(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000,'40-5-12 Laogianggen','190518','Beijing',NULL,'CN'),(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300,'198 Clementi North','540198','Singapore',NULL,'SG'),(2400,'8204 Arthur St',NULL,'London',NULL,'UK'),(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),(2600,'9702 Chester Road','09629850293','Stretford','Manchester','UK'),(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR'),(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_test`
--

DROP TABLE IF EXISTS `member_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member_test` (
  `userid` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `createdcontext` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_test`
--

LOCK TABLES `member_test` WRITE;
/*!40000 ALTER TABLE `member_test` DISABLE KEYS */;
INSERT INTO `member_test` VALUES ('abcd','green','1234','010-1234-5678','abcd@naver.com','2020-02-03',NULL);
/*!40000 ALTER TABLE `member_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `ssn` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `rank` varchar(45) NOT NULL,
  `speciality` varchar(45) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('1111','kim','50','top','science');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `pid` varchar(45) NOT NULL,
  `sponsor` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `budget` int(11) NOT NULL,
  `manager` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `manager_idx` (`manager`),
  CONSTRAINT `manager` FOREIGN KEY (`manager`) REFERENCES `professor` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `springexam`
--

DROP TABLE IF EXISTS `springexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `springexam` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `springexam`
--

LOCK TABLES `springexam` WRITE;
/*!40000 ALTER TABLE `springexam` DISABLE KEYS */;
INSERT INTO `springexam` VALUES (36,'김풋살','123123','글을 변경합니다 !!','2020-03-17'),(37,'김팡호','123123','글 작성 완료','2020-03-17'),(39,'Spring','123123','입력합니다.','2020-03-17');
/*!40000 ALTER TABLE `springexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_board` (
  `BOARD_SEQ` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BOARD_RE_REF` int(11) DEFAULT NULL,
  `BOARD_RE_LEV` int(11) DEFAULT NULL,
  `BOARD_RE_SEQ` int(11) DEFAULT NULL,
  `BOARD_WRITER` varchar(20) DEFAULT NULL,
  `BOARD_SUBJECT` varchar(50) DEFAULT NULL,
  `BOARD_CONTENT` varchar(2000) DEFAULT NULL,
  `BOARD_HITS` int(10) unsigned NOT NULL DEFAULT '0',
  `DEL_YN` varchar(1) NOT NULL DEFAULT 'N',
  `INS_USER_ID` varchar(20) DEFAULT NULL,
  `INS_DATE` datetime DEFAULT NULL,
  `UPD_USER_ID` varchar(20) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BOARD_SEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
INSERT INTO `tb_board` VALUES (3,1,0,0,'Kim','Hello','Holy Moly',1,'N','NONMEMBER','2020-03-30 11:53:48','NONMEMBER','2020-03-30 14:36:27'),(4,2,0,0,'김팡호','한글테스트','한글한글',2,'N','NONMEMBER','2020-03-30 12:14:25','NONMEMBER','2020-03-30 14:36:31');
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_board_file`
--

DROP TABLE IF EXISTS `tb_board_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_board_file` (
  `BOARD_SEQ` int(11) NOT NULL,
  `FILE_NO` int(11) NOT NULL,
  `FILE_NAME_KEY` varchar(200) DEFAULT NULL,
  `FILE_NAME` varchar(100) DEFAULT NULL,
  `FILE_PATH` varchar(200) DEFAULT NULL,
  `FILE_SIZE` varchar(50) DEFAULT NULL,
  `REMARK` varchar(1000) DEFAULT NULL,
  `DEL_YN` varchar(1) DEFAULT NULL,
  `INS_USER_ID` varchar(20) DEFAULT NULL,
  `INS_DATE` datetime DEFAULT NULL,
  `UPD_USER_ID` varchar(20) DEFAULT NULL,
  `UPD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BOARD_SEQ`,`FILE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board_file`
--

LOCK TABLES `tb_board_file` WRITE;
/*!40000 ALTER TABLE `tb_board_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_board_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usertable` (
  `userID` varchar(10) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `birthYear` int(11) NOT NULL,
  `addr` varchar(2) NOT NULL,
  `mobile1` varchar(3) DEFAULT NULL,
  `mobile2` varchar(8) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `mDate` date DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('KHD','강호동',1970,'경북','011','22222222',182,'2007-07-07'),('KJD','김제동',1974,'경남',NULL,NULL,173,'2013-03-03'),('KKJ','김국진',1965,'서울','019','33333333',171,'2009-09-09'),('KYM','김용만',1967,'서울','010','44444444',177,'2015-05-05'),('LHJ','이휘재',1972,'경기','011','88888888',180,'2006-04-04'),('LKK','이경규',1960,'경남','018','99999999',170,'2004-12-12'),('NHS','남희석',1971,'충남','016','66666666',180,'2017-04-04'),('PSH','박수홍',1970,'서울','010','00000000',183,'2012-05-05'),('SDY','신동엽',1971,'경기',NULL,NULL,176,'2008-10-10'),('YJS','유재석',1972,'서울','010','11111111',178,'2008-08-08');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usertbl` (
  `userID` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `birthYear` int(11) NOT NULL,
  `addr` varchar(45) NOT NULL,
  `mobile1` varchar(10) DEFAULT NULL,
  `mobile2` varchar(10) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `mDate` date DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
INSERT INTO `usertbl` VALUES ('KHD','강호동',1970,'경북','011','22222222',182,'2007-07-07'),('LKK','이경규',1960,'서울','018','99999999',170,'2004-12-12'),('SDY','신동엽',1971,'경기',NULL,NULL,176,'2008-10-10'),('YJS','유재석',1972,'서울','010','11111111',178,'2008-08-08');
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workdept`
--

DROP TABLE IF EXISTS `workdept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workdept` (
  `wssn` varchar(45) NOT NULL,
  `wdno` varchar(45) NOT NULL,
  `pct_time` decimal(10,2) NOT NULL,
  KEY `wssn_idx` (`wssn`),
  KEY `wdno_idx` (`wdno`),
  CONSTRAINT `wdno` FOREIGN KEY (`wdno`) REFERENCES `department` (`dno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wssn` FOREIGN KEY (`wssn`) REFERENCES `professor` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workdept`
--

LOCK TABLES `workdept` WRITE;
/*!40000 ALTER TABLE `workdept` DISABLE KEYS */;
/*!40000 ALTER TABLE `workdept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workin`
--

DROP TABLE IF EXISTS `workin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workin` (
  `wissn` varchar(45) NOT NULL,
  `wipid` varchar(45) NOT NULL,
  KEY `wissn_idx` (`wissn`),
  KEY `wipid_idx` (`wipid`),
  CONSTRAINT `wipid` FOREIGN KEY (`wipid`) REFERENCES `project` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wissn` FOREIGN KEY (`wissn`) REFERENCES `professor` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workin`
--

LOCK TABLES `workin` WRITE;
/*!40000 ALTER TABLE `workin` DISABLE KEYS */;
/*!40000 ALTER TABLE `workin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workprog`
--

DROP TABLE IF EXISTS `workprog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workprog` (
  `wpssn` varchar(45) NOT NULL,
  `wppid` varchar(45) NOT NULL,
  KEY `wpssn_idx` (`wpssn`),
  KEY `wppid_idx` (`wppid`),
  CONSTRAINT `wppid` FOREIGN KEY (`wppid`) REFERENCES `project` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wpssn` FOREIGN KEY (`wpssn`) REFERENCES `graduate` (`ssn`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workprog`
--

LOCK TABLES `workprog` WRITE;
/*!40000 ALTER TABLE `workprog` DISABLE KEYS */;
/*!40000 ALTER TABLE `workprog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 17:28:34
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

-- Dump completed on 2020-04-13 17:28:34
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: footsal
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
  `yDate` datetime DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyyong`
--

LOCK TABLES `applyyong` WRITE;
/*!40000 ALTER TABLE `applyyong` DISABLE KEYS */;
INSERT INTO `applyyong` VALUES ('aaaaaa',35,'김팡호','2020-02-03 15:08:25','동대문점','A구장','010','1234','5678','2020-02-03','18:00 - 20:00','가능','중','즐겁게 볼 차실 분 구합니다 !');
/*!40000 ALTER TABLE `applyyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `BOARD_NUM` int(11) NOT NULL,
  `BOARD_NAME` varchar(20) NOT NULL,
  `BOARD_PASS` varchar(15) NOT NULL,
  `BOARD_SUBJECT` varchar(50) NOT NULL,
  `BOARD_CONTENT` varchar(2000) NOT NULL,
  `BOARD_FILE` varchar(50) NOT NULL,
  `BOARD_RE_REF` int(11) NOT NULL,
  `BOARD_RE_LEV` int(11) NOT NULL,
  `BOARD_RE_SEQ` int(11) NOT NULL,
  `BOARD_READCOUNT` int(11) DEFAULT '0',
  `BOARD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`BOARD_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'???','1234','??','??????','devil may crry 4 - 2 - esrb t pegi 12+.jps',2,0,0,3,'2020-01-17'),(4,'?????????','','? ??????','??????.','',1,1,1,8,'2020-01-17'),(5,'12','23','123','123','devil may crry 4 - 2 - esrb t pegi 12+.jps',5,0,0,0,'2020-01-17'),(6,'12','1234','1234','1234','guitar hero 3 - 2 - esrb t pegi 12+.jps',6,0,0,4,'2020-01-17'),(7,'?????????','1234','1234','1234','',6,1,1,1,'2020-01-17'),(8,'?????????','1234','? ??????','1234','guitar hero 3 - 2 - esrb t pegi 12+.jps',8,0,0,0,'2020-01-17'),(9,'???','11','11','11','alam.png',9,0,0,0,'2020-01-17'),(10,'?','t','?','?','chelsea.png',10,0,0,0,'2020-01-17'),(11,'?','r','?','?','bg-header-grid.png',11,0,0,0,'2020-01-17'),(12,'ㄱ','ㄴ','ㄴ','ㄴ','ㄴ',12,0,0,1,'2020-01-17'),(13,'1','1234','1234','1234','mcity.png',13,0,0,7,'2020-01-20'),(14,'1234111','1234','1234','1234','logo2.png',14,0,0,9,'2020-01-20'),(15,'관리자인척하는사람','1234','네 답변드립니다','123','alam.png',15,0,0,0,'2020-01-20');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exambatis`
--

DROP TABLE IF EXISTS `exambatis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exambatis` (
  `GB_ID` varchar(40) NOT NULL,
  `GB_SUBJECT` varchar(45) NOT NULL,
  `GB_CONTENTS` varchar(2000) NOT NULL,
  `GB_FILE` varchar(100) NOT NULL,
  PRIMARY KEY (`GB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exambatis`
--

LOCK TABLES `exambatis` WRITE;
/*!40000 ALTER TABLE `exambatis` DISABLE KEYS */;
INSERT INTO `exambatis` VALUES ('hey','wowowowow','wwwwwwww','aston.png');
/*!40000 ALTER TABLE `exambatis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galboard`
--

DROP TABLE IF EXISTS `galboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galboard` (
  `GB_NUM` int(11) NOT NULL AUTO_INCREMENT,
  `GB_ID` varchar(45) NOT NULL,
  `GB_SUBJECT` varchar(40) NOT NULL,
  `GB_CONTENTS` varchar(2000) NOT NULL,
  `GB_DATE` date NOT NULL,
  `GB_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `GB_FILE` varchar(50) NOT NULL,
  `GB_RE_REF` int(11) DEFAULT NULL,
  `GB_RE_LEV` int(11) DEFAULT NULL,
  `GB_RE_SEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`GB_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galboard`
--

LOCK TABLES `galboard` WRITE;
/*!40000 ALTER TABLE `galboard` DISABLE KEYS */;
INSERT INTO `galboard` VALUES (1,'a','ㄱ','ㄱ','2020-01-20',50,'lock2.png',NULL,NULL,NULL),(2,'aa','ㄴ','ㄴㄴ','2020-01-20',7,'logo2.png',NULL,NULL,NULL),(3,'a','ㄷ','우선입력','2020-01-21',0,'chelsea.png',NULL,NULL,NULL),(4,'aa','ㄹ','리버풀','2020-01-21',0,'liverpool.jpg',NULL,NULL,NULL),(5,'a','ㅁ','토트넘','2020-01-21',0,'tottenham.png',NULL,NULL,NULL),(6,'aa','ㅂ','레스터','2020-01-21',0,'leicester.png',NULL,NULL,NULL),(7,'aaaaaaaa','heyhey','I\'m ok','2020-01-22',36,'crystal.png',NULL,NULL,NULL),(8,'aaaaaaaa','lord','my lord','2020-01-28',0,'mu.png',NULL,NULL,NULL),(9,'aaaaaa','페이징테스트1','11','2020-01-30',0,'wolf.png',NULL,NULL,NULL),(10,'aaaaaa','페이징테스트2','22','2020-01-30',0,'westham.png',NULL,NULL,NULL),(11,'aaaaaa','페이징테스트3','33','2020-01-30',0,'watford.png',NULL,NULL,NULL);
/*!40000 ALTER TABLE `galboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galrep`
--

DROP TABLE IF EXISTS `galrep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galrep` (
  `GB_REP_NUM` int(11) NOT NULL,
  `GB_NUM` int(11) DEFAULT NULL,
  `GB_REP_CONTENTS` varchar(2000) DEFAULT NULL,
  `GB_REP_DATE` datetime DEFAULT NULL,
  `GB_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GB_REP_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galrep`
--

LOCK TABLES `galrep` WRITE;
/*!40000 ALTER TABLE `galrep` DISABLE KEYS */;
INSERT INTO `galrep` VALUES (1,1,'ㄱㄱ','2020-01-22 15:35:57','null'),(2,1,'ㄴㄴ','2020-01-22 15:36:44','null'),(3,1,'ㄹㄹ','2020-01-22 15:37:25','null'),(4,7,'safsaf','2020-01-22 17:06:14','aaaaaaaa'),(5,7,'sasaf','2020-01-22 17:06:17','aaaaaaaa'),(6,1,'111','2020-01-30 14:40:00','a'),(7,1,'안녕','2020-01-31 16:58:05','a'),(8,1,'asdf','2020-02-04 10:38:49','aaaaaa');
/*!40000 ALTER TABLE `galrep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_tb`
--

DROP TABLE IF EXISTS `member_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member_tb` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `pw` varchar(40) DEFAULT NULL,
  `hp1` varchar(40) DEFAULT NULL,
  `hp2` varchar(40) DEFAULT NULL,
  `hp3` varchar(40) DEFAULT NULL,
  `em1` varchar(40) DEFAULT NULL,
  `em2` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `hp` varchar(40) DEFAULT NULL,
  `adr1` varchar(100) DEFAULT NULL,
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
  `bank` varchar(4) DEFAULT NULL,
  `accountnumber` varchar(20) DEFAULT NULL,
  `accountholder` varchar(40) DEFAULT NULL,
  `T_CODE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_tb`
--

LOCK TABLES `member_tb` WRITE;
/*!40000 ALTER TABLE `member_tb` DISABLE KEYS */;
INSERT INTO `member_tb` VALUES ('aaaaaa','김팡호','123123','010','1234','1234','pang','naver.com','female','241-11','서울특별시','관악구','1995','08','14','liverpool.jpg','1','teamno','FW','Q01','그린컴퓨터학원','001','1234','김팡호','aaaa');
/*!40000 ALTER TABLE `member_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qna` (
  `qId` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `qNo` int(11) NOT NULL AUTO_INCREMENT,
  `qMember` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `qSecret` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `qSecretNum` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `qDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `qCount` int(11) DEFAULT NULL,
  `qContents` text COLLATE utf8_bin,
  `qTitle` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `qEmail` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`qNo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES ('null',5,'김팡호','sc','1234','2020-01-16 10:20:29',122,'안녕하세요?','축구장이요',NULL),('null',10,'김팡호','sc','1234','2020-01-16 13:07:24',83,'반갑습니다 축구한판 하려는데 축구화가 없네요 어디서 사야하나요?		','반갑습니다',NULL),('null',11,'김팡호','sc','1234','2020-01-16 17:33:41',21,'어디서 할 수 있나요 ?','안녕하세요 환불이 안되네요',NULL),('null',12,'김팡호','sc','1111','2020-02-10 12:27:51',1,'안녕','오늘 일단 완료',NULL);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamlist`
--

DROP TABLE IF EXISTS `teamlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teamlist` (
  `T_CODE` varchar(100) NOT NULL,
  `T_NAME` varchar(45) NOT NULL,
  `T_LOGO` varchar(50) DEFAULT NULL,
  `T_MANAGER` varchar(45) NOT NULL,
  `T_RANKING` int(11) NOT NULL,
  PRIMARY KEY (`T_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamlist`
--

LOCK TABLES `teamlist` WRITE;
/*!40000 ALTER TABLE `teamlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `teamlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 17:28:34
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: futsal
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
-- Table structure for table `branch_tb`
--

DROP TABLE IF EXISTS `branch_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch_tb` (
  `BRANCH_NO` int(11) NOT NULL,
  `BRANCH_NAME` varchar(45) NOT NULL,
  `BRANCH_LOCATION` varchar(45) NOT NULL,
  `BRANCH_TEL` varchar(45) NOT NULL,
  `BRANCH_CONVENIENCE` varchar(45) NOT NULL,
  `BRANCH_PIC` varchar(1000) NOT NULL,
  PRIMARY KEY (`BRANCH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_tb`
--

LOCK TABLES `branch_tb` WRITE;
/*!40000 ALTER TABLE `branch_tb` DISABLE KEYS */;
INSERT INTO `branch_tb` VALUES (1,'강동점','서울 강동구 아리수로 185 고덕풋살장','02-789-1234','o,o,x,x,o,x','ground1.jpg'),(2,'강남점','서울 강남구 역삼동 858','02-111-6545','o,o,o,o,o,o','ground1.jpg'),(3,'부산점','부산 해운대구 우1동 산15-1','054-123-2335','x,x,o,o,x,x','ground1.jpg'),(4,'제주도점','제주특별자치도 제주시 첨단로 242','012-456-5548','o,o,x,x,o,x','ground1.jpg');
/*!40000 ALTER TABLE `branch_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galboard_tb`
--

DROP TABLE IF EXISTS `galboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `galboard_tb` (
  `G_B_NO` int(11) NOT NULL AUTO_INCREMENT,
  `G_B_CONTENTS` text,
  `G_B_SUBJECT` varchar(45) NOT NULL,
  `G_B_DATE` datetime NOT NULL,
  `G_B_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `G_B_FILE` varchar(45) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `T_CODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`G_B_NO`),
  KEY `GB_ID_idx` (`ID`),
  KEY `GB_T_CODE_idx` (`T_CODE`),
  CONSTRAINT `GB_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `GB_T_CODE` FOREIGN KEY (`T_CODE`) REFERENCES `teaminfo_tb` (`T_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galboard_tb`
--

LOCK TABLES `galboard_tb` WRITE;
/*!40000 ALTER TABLE `galboard_tb` DISABLE KEYS */;
INSERT INTO `galboard_tb` VALUES (2,'수정합니다.','포폴 mvc2 수정','2020-02-25 10:43:22',1,'arsenal.png','aaaaaa',NULL);
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
  `G_REP_DATE` varchar(45) NOT NULL,
  `G_B_NO` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`G_REP_NO`),
  KEY `G_CODE_idx` (`G_B_NO`),
  KEY `G_ID_idx` (`ID`),
  CONSTRAINT `G_CODE` FOREIGN KEY (`G_B_NO`) REFERENCES `galboard_tb` (`G_B_NO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `G_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galrep_tb`
--

LOCK TABLES `galrep_tb` WRITE;
/*!40000 ALTER TABLE `galrep_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `galrep_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ground_tb`
--

DROP TABLE IF EXISTS `ground_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ground_tb` (
  `GROUND_NO` int(11) NOT NULL,
  `GROUND_NAME` varchar(45) NOT NULL,
  `GROUND_PIC` varchar(1000) NOT NULL,
  `GROUND_FIELD` varchar(45) NOT NULL,
  `GROUND_SIZE` varchar(45) NOT NULL,
  `GROUND_WEEKDAYDAYTIME_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKDAYNIGHT_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKENDDAYTIME_CHARGE` int(11) NOT NULL,
  `GROUND_WEEKENDNIGHT_CHARGE` int(11) NOT NULL,
  `GROUND_AVAILABLEDATE` date NOT NULL,
  `BRANCH_NO` int(11) NOT NULL,
  `GROUND_RULE` text NOT NULL,
  PRIMARY KEY (`GROUND_NO`),
  KEY `BRANCH_NO(1)_idx` (`BRANCH_NO`),
  CONSTRAINT `BRANCH_NO(1)` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch_tb` (`BRANCH_NO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ground_tb`
--

LOCK TABLES `ground_tb` WRITE;
/*!40000 ALTER TABLE `ground_tb` DISABLE KEYS */;
INSERT INTO `ground_tb` VALUES (1,'A구장','ground1.jpg,son8.jpg,son5.jpg,son6.jpg','실내','15mX30m',60000,60000,70000,12000,'2020-02-13',1,'< 주차 상세 ><BR> - 주차 100대 가능(무료)< 물 , 음료 >- 물/음료 판매 - (X- 정수기 구비 - (X)) ');
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
INSERT INTO `league_result_tb` VALUES (1,9,3,1,0,19,10,1111,1),(2,7,2,1,1,15,17,562521,1);
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
  CONSTRAINT `league_branch_no` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch_tb` (`BRANCH_NO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league_tb`
--

LOCK TABLES `league_tb` WRITE;
/*!40000 ALTER TABLE `league_tb` DISABLE KEYS */;
INSERT INTO `league_tb` VALUES (1,'강남리그','2020-02-13',1);
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
  KEY `MID_idx` (`ID`),
  CONSTRAINT `MID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchboard_tb`
--

LOCK TABLES `matchboard_tb` WRITE;
/*!40000 ALTER TABLE `matchboard_tb` DISABLE KEYS */;
INSERT INTO `matchboard_tb` VALUES (2,'김팡호','동대문점','A구장','01012341234','2020-03-19','13:00 - 15:00','가능','상','긱믹ㅁ기미','aaaaaa','5 vs 5','1 팀');
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
INSERT INTO `member_tb` VALUES ('aaaaaa','김팡호','123123','010-1234-1234','aaaaaa123@naver.com','male','08789','서울 관악구 낙성대로 2','없음','1995년 08월 03일','liverpool.jpg','5','FW ','Q02','얍얍얍','001','123123123','김팡호'),('aaaaaaaa','팡호킴','123123','010-1234-5678','email@naver.com','female','08742','서울 관악구 남부순환로241길 11','','1995년 08월 14일','dd.jpg','5','FW MF ','Q02','바르게 살자','001','1122334455','김팡호'),('asdfasdf','김강강','123123','010-1231-1231','ddddddddddd@naver.com','female','06313','서울 강남구 양재대로 333','','1920년 01월 01일','','5','','Q01','','001','123123','김강강'),('leejong01','이종혁','123123','010-1233-1233','yeah@naver.com','male','05545','서울 관악구 남부순환로 241길 11','분식점','1995년 05월 12일','arsenal.jpg','4','FW','Q01','축구장','001','123123','이종혁'),('qwerqwer','김팡호','123123','010-1234-1234','torere123@naver.com','male','06774','서울 서초구 강남대로 45-2','분식점','1920년 01월 01일','KimGwangHo.jpg','5','MF ','Q01','축구장','001','123123123','김팡호');
/*!40000 ALTER TABLE `member_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticeboard_tb`
--

DROP TABLE IF EXISTS `noticeboard_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `noticeboard_tb` (
  `N_NUM` int(11) NOT NULL,
  `N_TITLE` varchar(45) NOT NULL,
  `N_DATE` date NOT NULL,
  `N_CONTENTS` varchar(45) NOT NULL,
  `N_READCOUNT` int(11) NOT NULL DEFAULT '0',
  `N_FILE` varchar(45) NOT NULL,
  PRIMARY KEY (`N_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticeboard_tb`
--

LOCK TABLES `noticeboard_tb` WRITE;
/*!40000 ALTER TABLE `noticeboard_tb` DISABLE KEYS */;
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
INSERT INTO `player_regist_tb` VALUES (3,5,2,0,'leejong01',1,1111,'',0);
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
  `ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Q_B_NO`),
  KEY `ID_idx` (`ID`),
  KEY `ID_QNA_idx` (`ID`),
  CONSTRAINT `ID_QNA` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnaboard_tb`
--

LOCK TABLES `qnaboard_tb` WRITE;
/*!40000 ALTER TABLE `qnaboard_tb` DISABLE KEYS */;
INSERT INTO `qnaboard_tb` VALUES (9,'김팡호','sc','123123','2020-02-11 13:12:36',63,'쌉가능입니다','가능하다',NULL),(10,'김팡호','sc','123123','2020-02-11 14:45:51',5,'친구들','안녕하세요',NULL),(12,'강혜원','sc','1111','2020-02-11 14:59:47',1,'강혜원입니다','아이즈원',NULL),(13,'권은비','sc','1111','2020-02-11 15:00:18',1,'권은비입니다.','아이즈투',NULL),(14,'ㄴㅁㅇㄴㅁㅇ','sc','sadsa','2020-03-09 11:04:46',4,'ㄴㅁㅇㄴㅁㅇ','ㅇㄴㅁㅇㄴㅁㅇ',NULL),(15,'김팡호','sc','123123','2020-03-23 16:55:49',23,'김김김마싯어','아마두',NULL),(16,'들어가나요','sc','123123','2020-03-25 12:54:34',0,'ㄴㅇㄻ','안녕',NULL),(17,'김팡호','sc','123123','2020-03-25 12:55:11',1,'들어가요','들어는가는데?',NULL),(18,'김팡호','sc','123123','2020-03-25 12:56:37',2,'123123123','글글글',NULL),(19,'미안','sc','123123','2020-03-26 15:12:52',0,'수정햇음 ','비밀글로 없애기로 전환',NULL),(20,'페이징','sc','123123','2020-03-26 15:13:00',0,'123123','이젠 페이징 차례',NULL);
/*!40000 ALTER TABLE `qnaboard_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_tb`
--

DROP TABLE IF EXISTS `reservation_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation_tb` (
  `RES_NO` int(11) NOT NULL,
  `RES_DATE` date NOT NULL,
  `RES_TIME` date NOT NULL,
  `PAYMENT_CHARGE` int(11) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `GROUND_NO` int(11) NOT NULL,
  PRIMARY KEY (`RES_NO`),
  KEY `RES_ID_idx` (`ID`),
  KEY `RES_G_NO_idx` (`GROUND_NO`),
  CONSTRAINT `RES_G_NO` FOREIGN KEY (`GROUND_NO`) REFERENCES `ground_tb` (`GROUND_NO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `RES_ID` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_tb`
--

LOCK TABLES `reservation_tb` WRITE;
/*!40000 ALTER TABLE `reservation_tb` DISABLE KEYS */;
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
INSERT INTO `seoul_league_tb` VALUES (1111,1,'aaaaaa');
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
INSERT INTO `team_apply_tb` VALUES ('aaaaaaaa',1111),('aaaaaaaa',149632),('aaaaaa',149632);
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
INSERT INTO `teamboard_tb` VALUES (4,'ㅇㄹㄴㅇㅁㄹ','ㄴㅁㅇㄹ','2020-03-18 14:38:55',0,'aaaaaaaa',900505);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamboardrep_tb`
--

LOCK TABLES `teamboardrep_tb` WRITE;
/*!40000 ALTER TABLE `teamboardrep_tb` DISABLE KEYS */;
INSERT INTO `teamboardrep_tb` VALUES (0,'nono','2020-02-27',0,'aaaaaa'),(1,'dfsd','2020-02-27',0,'aaaaaa');
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
  KEY `teaminfo_member_id_idx` (`ID`),
  CONSTRAINT `teaminfo_member_id` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaminfo_tb`
--

LOCK TABLES `teaminfo_tb` WRITE;
/*!40000 ALTER TABLE `teaminfo_tb` DISABLE KEYS */;
INSERT INTO `teaminfo_tb` VALUES (1111,'축잘알','aston.png',1,'상의 - red 하의 - red 스타킹 - red','상의 - blue 하의 - blue 스타킹 - blue','2020-02-11 13:12:36','성인부',1,'aaaaaa','mailmail@naver.com'),(149632,'조기축구','everton.png',NULL,'상의 - Red 하의 - White 스타킹 - Blue','상의 - Green 하의 - Black 스타킹 - White','2020-03-16 12:48:32','성인부',NULL,'asdfasdf','tlsrhgka@naver.com'),(156440,'썬더일레븐','펄어비스.PNG',NULL,'상의 - Red 하의 - Blue 스타킹 - White','상의 - Yellow 하의 - Green 스타킹 - White','2020-03-18 18:03:43','초등부',NULL,'aaaaaa','totototo@naver.com'),(562521,'축알못','arsenal.png',NULL,'상의 - 샛노랑 하의 - 노랑 스타킹 - 빨강','상의 - 하양 하의 - 파랑  스타킹 - 검정 ','2020-02-17 19:58:30','초등부',NULL,'aaaaaa','sldlasdl@naver.com'),(900505,'소림축구단','crystal.png',NULL,'상의 - 빨강 하의 - 파랑 스타킹 - 검정','상의 - 하양 하의 - 하양 스타킹 - 하양','2020-03-13 15:07:04','성인부',NULL,'aaaaaaaa','tototo123@naver.com');
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
INSERT INTO `teamplayer_tb` VALUES (1111,'aaaaaa'),(1111,'asdfasdf'),(562521,'aaaaaaaa'),(562521,'aaaaaa'),(900505,'aaaaaa'),(149632,'asdfasdf'),(900505,'aaaaaaaa'),(156440,'aaaaaa');
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
  CONSTRAINT `yb_member_id` FOREIGN KEY (`ID`) REFERENCES `member_tb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yongboard_tb`
--

LOCK TABLES `yongboard_tb` WRITE;
/*!40000 ALTER TABLE `yongboard_tb` DISABLE KEYS */;
INSERT INTO `yongboard_tb` VALUES (2,'김팡호','안산 고진점','B구장','01011112222','2020-02-04','18:00 - 20:00','마감','상','ㄱㄴㄴㄴㄴㄴㄴ','aaaaaa');
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

-- Dump completed on 2020-04-13 17:28:34
