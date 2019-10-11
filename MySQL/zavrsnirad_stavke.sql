-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: zavrsnirad
-- ------------------------------------------------------
-- Server version	5.7.8-rc-log

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
-- Table structure for table `stavke`
--

DROP TABLE IF EXISTS `stavke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stavke` (
  `stavke_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_id` int(11) NOT NULL,
  `nar_id` int(11) NOT NULL,
  `stavke_kolicina` int(11) NOT NULL,
  `stavke_cena` int(11) NOT NULL,
  PRIMARY KEY (`stavke_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stavke`
--

LOCK TABLES `stavke` WRITE;
/*!40000 ALTER TABLE `stavke` DISABLE KEYS */;
INSERT INTO `stavke` VALUES (1,4,1,1,20),(2,4,1,1,20),(3,4,1,1,20),(4,10,1,1,40),(5,10,1,1,40),(6,26,1,1,50),(7,59,2,1,45),(8,59,2,1,45),(9,57,2,1,35),(10,58,2,1,45),(11,24,3,1,95),(12,28,3,1,145),(13,58,4,7,45),(14,50,4,2,50),(15,37,4,3,100),(16,45,5,3,20),(17,55,5,4,30),(18,8,5,6,15),(19,11,5,1,85),(20,30,6,6,95),(21,27,7,2,35),(22,54,7,6,30),(23,55,7,3,30),(24,40,8,2,115),(25,56,8,4,60),(26,11,9,5,85),(27,15,9,2,105),(28,55,9,9,30),(29,26,10,2,50),(30,57,10,8,35);
/*!40000 ALTER TABLE `stavke` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 18:12:22
