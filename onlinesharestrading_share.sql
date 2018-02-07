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
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `shareid` int(11) NOT NULL DEFAULT '0',
  `shareamount` int(11) DEFAULT NULL,
  `accnum` int(11) DEFAULT NULL,
  `traderid` int(11) DEFAULT NULL,
  `companyid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shareid`,`companyid`),
  KEY `companyid` (`companyid`),
  KEY `traderid` (`traderid`),
  KEY `accnum` (`accnum`),
  CONSTRAINT `share_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `share_company` (`companyid`),
  CONSTRAINT `share_ibfk_2` FOREIGN KEY (`traderid`) REFERENCES `trader` (`traderid`),
  CONSTRAINT `share_ibfk_3` FOREIGN KEY (`accnum`) REFERENCES `dmataccount` (`accnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (7001,32083,5002,4003,2001),(7002,3294243,5001,4003,2001),(7003,69504,5003,4003,2004),(7004,2313,5004,4002,2002),(7005,29480,5005,4004,2004),(7006,82498,5006,4003,2005),(7007,1083219,5007,4001,2003),(7008,9138924,5008,4001,2003),(7009,2042,5009,4001,2003);
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:57:58
