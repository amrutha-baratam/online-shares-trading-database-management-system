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
-- Table structure for table `customer_money_bank`
--

DROP TABLE IF EXISTS `customer_money_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_money_bank` (
  `custid` int(11) NOT NULL DEFAULT '0',
  `bankaccid` int(11) NOT NULL DEFAULT '0',
  `bankid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`custid`,`bankaccid`,`bankid`),
  KEY `bankaccid` (`bankaccid`),
  KEY `bankid` (`bankid`),
  CONSTRAINT `customer_money_bank_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
  CONSTRAINT `customer_money_bank_ibfk_2` FOREIGN KEY (`bankaccid`) REFERENCES `bankaccount` (`bankaccid`),
  CONSTRAINT `customer_money_bank_ibfk_3` FOREIGN KEY (`bankid`) REFERENCES `bank` (`bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_money_bank`
--

LOCK TABLES `customer_money_bank` WRITE;
/*!40000 ALTER TABLE `customer_money_bank` DISABLE KEYS */;
INSERT INTO `customer_money_bank` VALUES (6003,3001,1004),(6001,3002,1001),(6002,3004,1003),(6004,3005,1003),(6005,3006,1001);
/*!40000 ALTER TABLE `customer_money_bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:58:00
