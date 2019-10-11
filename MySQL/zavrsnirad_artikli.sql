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
-- Table structure for table `artikli`
--

DROP TABLE IF EXISTS `artikli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artikli` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_naziv` varchar(45) NOT NULL,
  `art_cena` smallint(6) NOT NULL,
  `art_opis` text NOT NULL,
  `boje_id` int(11) NOT NULL,
  `art_dodatnaoprema` varchar(45) NOT NULL,
  `art_slika` varchar(45) NOT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikli`
--

LOCK TABLES `artikli` WRITE;
/*!40000 ALTER TABLE `artikli` DISABLE KEYS */;
INSERT INTO `artikli` VALUES (1,'Garnitura za terasu',125,'Tri dvoseda i stolic',2,'da','img01.jpg'),(2,'Garnitura za terasu',120,'Dva dvoseda, dupli tabure i stolic',1,'da','img02.jpg'),(3,'Garnitura za terasu',105,'Dva dvoseda, tabure i stolic',1,'da','img03.jpg'),(4,'Dodatna oprema',20,'Plavi dusek sa jastucima',6,'ne','img04.jpg'),(5,'Garnitura za terasu ',90,'Dva dvoseda i stolic',1,'da','img05.jpg'),(6,'Garnitura za dnevnu sobu',100,'Dva dvoseda i stolic',3,'da','img06.jpg'),(7,'Garnitura za terasu',110,'Trosed, dve fotelje i stolic',5,'da','img07.jpg'),(8,'Dodatna oprema',15,'Roze dusek sa jastucima',6,'ne','img08.jpg'),(9,'Garnitura za terasu',105,'Trosed, dvosed i stolic',1,'da','img09.jpg'),(10,'Postolje za cvece',40,'Postolje sa pet mesta za saksije ',1,'ne','img10.jpg'),(11,'Garnitura za dnevnu sobu',85,'Trosed, tabure i stolic',1,'da','img11.jpg'),(12,'Garnitura za terasu',70,'Dvosed, tabure i stolic',1,'da','img12.jpg'),(13,'Trpezarijski set',125,'Cetiri stolice i stolic',5,'ne','img13.jpg'),(14,'Garnitura za dnevnu sobu',90,'Dva dvoseda i stolic',1,'da','img14.jpg'),(15,'Garnitura za terasu',105,'Tri dvoseda',1,'da','img15.jpg'),(16,'Trpezarijski set',125,'Cetiri stolice i sto',5,'da','img16.jpg'),(17,'Dvosed',35,'Dvosed ',1,'da','img17.jpg'),(18,'Garnitura za dvoriste',155,'Dva troseda, dvosed i stolic',4,'da','img18.jpg'),(19,'Garnitura za dvoriste',155,'Dva dvoseda, tabure i stolic',1,'da','img19.jpg'),(20,'Garnitura za dnevnu sobu',105,'Cetiri taburea i stolic',1,'da','img20.jpg'),(21,'Garnitura za dnevnu sobu',55,'Dva taburea i fotelja',4,'da','img21.jpg'),(22,'Garnitura za dnevnu sobu',110,'Dvosed, tabure i stolic',1,'da','img22.jpg'),(23,'Garnitura za dnevnu sobu',110,'Trosed, dvosed i stolic',1,'da','img23.jpg'),(24,'Garnitura za terasu',95,'Dvosed, dve fotelje i stolic',1,'da','img24.jpg'),(25,'Garnitura za terasu',135,'Dva dvoseda, dve fotelje i sto',1,'da','img25.jpg'),(26,'Trosed ',50,'Trosed za terasu',1,'da','img26.jpg'),(27,'Dvosed',35,'Dvosed za terasu',1,'da','img27.jpg'),(28,'Garnitura za dnevnu sobu',145,'Dva dvoseda, dve fotelje, tabure i stolic',1,'da','img28.jpg'),(29,'Dvosed',35,'Dvosed za terasu',1,'da','img29.jpg'),(30,'Barski set',95,'Cetiri visoke stolice i barski sto',1,'ne','img30.jpg'),(31,'Garnitura za terasu',145,'Tri dvoseda, fotelja i stolic',5,'da','img31.jpg'),(32,'Garnitura za kafic',80,'Dva niska dvoseda i stolic',4,'ne','img32.jpg'),(33,'Pokretni stolic',25,'Pokretni stolic za dnevnu sobu',4,'ne','img33.jpg'),(34,'Dvosed ',35,'Dvosed za dnevnu sobu',1,'da','img34.jpg'),(35,'Garnitura za terasu',145,'Tri dvoseda, fotelja i stolic',5,'da','img35.jpg'),(36,'Trosed',50,'Trosed za terasu',1,'da','img36.jpg'),(37,'Barski set',100,'Cetiri visoke stolice i barski sto',1,'da','img37.jpg'),(38,'Dvosed',35,'Dvosed za dnevnu sobu',2,'da','img38.jpg'),(39,'Garnitura za terasu',95,'Dva dvoseda i sto',4,'da','img39.jpg'),(40,'Garnitura za dnevnu sobu',115,'Dva dvoseda, sto i dva pomocna stolica',4,'da','img40.jpg'),(41,'Garnitura za terasu',90,'Dva niska dvoseda i stolic',4,'ne','img41.jpg'),(42,'Garnitura za dnevnu sobu',75,'Dve fotelje, dva taburea i stolic',1,'da','img42.jpg'),(43,'Garnitura za terasu',80,'Dve klupe za sedenje i stolic',3,'da','img43.jpg'),(44,'Garnitura za dvoriste',75,'Dve klupe i stolic',5,'ne','img44.jpg'),(45,'Stolic za terasu ',20,'Stolic',1,'ne','img45.jpg'),(46,'Dnevna soba - komplex ',85,'Dva dvoseda sa policom za knjige i stolicem',3,'ne','img46.jpg'),(47,'Dnevna soba - komplex',95,'Dva dvoseda sa policom za knjige i stolicem',3,'da','img47.jpg'),(48,'Garnitura za dnevnu sobu',70,'Dvosed i visenamenski sto',4,'ne','img48.jpg'),(49,'Garnitura za terasu',55,'Dve stolice i stolic',4,'da','img49.jpg'),(50,'Garnitura za terasu',50,'Dva taburea i stolic',3,'da','img50.jpg'),(51,'Kutak za dvoje',80,'Dvosed sa postoljem za cvece',1,'da','img51.jpg'),(52,'Kutak za ljubimca',25,'Prostor za pse i macke',1,'da','img52.jpg'),(53,'Decija soba',80,'Deciji krevet ',1,'da','img53.jpg'),(54,'Civiluk',30,'Prostor za odlaganje odece',1,'ne','img54.jpg'),(55,'Cipelarnik',30,'Prostor za odlaganje obuce',1,'ne','img55.jpg'),(56,'Predsoblje - komplet',60,'Prostor za odlaganje odece i obuce',5,'ne','img56.jpg'),(57,'Polica za cvece',35,'Visenamenska polica',5,'ne','img57.jpg'),(58,'Prostor za cvece',45,'Prostor za cvece sa zastitnom pregradom',3,'ne','img58.jpg'),(59,'Klupa - kompleks',45,'Klupa za sedenje sa ostavom za stvari',4,'da','img59.jpg'),(60,'Polica ',35,'Polica za knjige',5,'ne','img60.jpg'),(61,'Garnitura za terasu',60,'Tri taburea i stolic',3,'ne','img61.jpg'),(62,'Polica',45,'Visenamenska polica',1,'ne','img62.jpg');
/*!40000 ALTER TABLE `artikli` ENABLE KEYS */;
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
