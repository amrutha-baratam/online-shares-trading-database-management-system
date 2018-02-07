-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinesharestrading
-- ------------------------------------------------------
-- Server version	5.5.54

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
-- Table structure for table `bank_provide_dmataccount`
--

DROP TABLE IF EXISTS `bank_provide_dmataccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_provide_dmataccount` (
  `accnum` int(11) NOT NULL DEFAULT '0',
  `bankid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`accnum`,`bankid`),
  KEY `bankid` (`bankid`),
  CONSTRAINT `bank_provide_dmataccount_ibfk_1` FOREIGN KEY (`accnum`) REFERENCES `dmataccount` (`accnum`),
  CONSTRAINT `bank_provide_dmataccount_ibfk_2` FOREIGN KEY (`bankid`) REFERENCES `bank` (`bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_provide_dmataccount`
--

LOCK TABLES `bank_provide_dmataccount` WRITE;
/*!40000 ALTER TABLE `bank_provide_dmataccount` DISABLE KEYS */;
INSERT INTO `bank_provide_dmataccount` VALUES (5005,1001),(5001,1002),(5006,1002),(5007,1002),(5002,1003),(5004,1003),(5008,1003),(5003,1004),(5009,1004);
/*!40000 ALTER TABLE `bank_provide_dmataccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:57:56
