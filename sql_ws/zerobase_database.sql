-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: 192.168.35.159    Database: zerobase
-- ------------------------------------------------------
-- Server version	5.6.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `name` varchar(16) NOT NULL,
  `type` varchar(16) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celeb`
--

DROP TABLE IF EXISTS `celeb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `celeb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) NOT NULL DEFAULT '',
  `BIRTHDAY` date DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `JOB_TITLE` varchar(32) DEFAULT NULL,
  `AGENCY` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celeb`
--

LOCK TABLES `celeb` WRITE;
/*!40000 ALTER TABLE `celeb` DISABLE KEYS */;
INSERT INTO `celeb` VALUES (1,'아이유','1993-05-16',29,'F','가수, 텔런트','EDAM엔터테이먼트'),(2,'이미주','1994-09-23',28,'F','가수','울림엔터테이먼트'),(3,'송강','1994-04-23',28,'M','텔런트','나무엑터스'),(4,'강동원','1981-01-18',41,'M','영화배우, 텔런트','YG엔터테이먼트'),(5,'유재석','1972-08-14',50,'M','MC, 개그맨','안테나'),(6,'차승원','1970-06-07',48,'M','영화배우, 모델','YG엔터테이먼트'),(7,'이수현','1999-05-04',23,'F','가수','YG엔터테이먼트');
/*!40000 ALTER TABLE `celeb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime_status`
--

DROP TABLE IF EXISTS `crime_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime_status` (
  `year` year(4) DEFAULT NULL,
  `police_station` varchar(8) DEFAULT NULL,
  `crime_type` varchar(16) DEFAULT NULL,
  `status_type` char(2) DEFAULT NULL,
  `case_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_status`
--

LOCK TABLES `crime_status` WRITE;
/*!40000 ALTER TABLE `crime_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `crime_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `jid` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`jid`),
  KEY `pid` (`pid`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `person` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `order_no` varchar(16) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `pid` (`pid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `person` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `pid` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_station`
--

DROP TABLE IF EXISTS `police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_station` (
  `name` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_station`
--

LOCK TABLES `police_station` WRITE;
/*!40000 ALTER TABLE `police_station` DISABLE KEYS */;
/*!40000 ALTER TABLE `police_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snl_show`
--

DROP TABLE IF EXISTS `snl_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snl_show` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEASON` int(11) NOT NULL,
  `EPISODE` int(11) NOT NULL,
  `BROADCAST_DATE` date DEFAULT NULL,
  `HOST` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snl_show`
--

LOCK TABLES `snl_show` WRITE;
/*!40000 ALTER TABLE `snl_show` DISABLE KEYS */;
INSERT INTO `snl_show` VALUES (1,8,7,'2020-09-05','강동원'),(2,8,8,'2020-09-12','유재석'),(3,8,9,'2020-09-19','차승원'),(4,8,10,'2020-09-26','이수현'),(5,9,1,'2021-09-04','이병헌'),(6,9,2,'2021-09-11','하지원'),(7,9,3,'2021-09-18','제시'),(8,9,4,'2021-09-25','조정석'),(9,9,5,'2021-10-02','조여정'),(10,9,6,'2021-10-09','옥주현');
/*!40000 ALTER TABLE `snl_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study` (
  `study_id` int(11) NOT NULL,
  `study_date` date DEFAULT NULL,
  `study_time` time DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`study_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `study_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `person` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test1` (
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test2` (
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (5),(6),(3);
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23 13:59:00
