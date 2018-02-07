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
-- Table structure for table `customer_share_dmataccount`
--

DROP TABLE IF EXISTS `customer_share_dmataccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_share_dmataccount` (
  `custid` int(11) NOT NULL DEFAULT '0',
  `shareid` int(11) NOT NULL DEFAULT '0',
  `accnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`custid`,`shareid`,`accnum`),
  KEY `shareid` (`shareid`),
  KEY `accnum` (`accnum`),
  CONSTRAINT `customer_share_dmataccount_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
  CONSTRAINT `customer_share_dmataccount_ibfk_2` FOREIGN KEY (`shareid`) REFERENCES `share` (`shareid`),
  CONSTRAINT `customer_share_dmataccount_ibfk_3` FOREIGN KEY (`accnum`) REFERENCES `dmataccount` (`accnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_share_dmataccount`
--

LOCK TABLES `customer_share_dmataccount` WRITE;
/*!40000 ALTER TABLE `customer_share_dmataccount` DISABLE KEYS */;
INSERT INTO `customer_share_dmataccount` VALUES (6001,7001,5001),(6001,7002,5001),(6001,7003,5001),(6002,7004,5002),(6004,7005,5004),(6004,7006,5004),(6004,7007,5004),(6005,7008,5005),(6002,7009,5002),(6003,7009,5003);
/*!40000 ALTER TABLE `customer_share_dmataccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:58:03
