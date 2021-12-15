-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: laundry
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `laundry`
--

DROP TABLE IF EXISTS `laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laundry` (
  `TimeSlot` varchar(45) NOT NULL,
  `Customer_UserName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TimeSlot`),
  KEY `fk_Laundry_Customer_idx` (`Customer_UserName`),
  CONSTRAINT `fk_Laundry_Customer` FOREIGN KEY (`Customer_UserName`) REFERENCES `customer` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laundry`
--

LOCK TABLES `laundry` WRITE;
/*!40000 ALTER TABLE `laundry` DISABLE KEYS */;
INSERT INTO `laundry` VALUES ('Fri0-3AM',NULL),('Fri12-15PM',NULL),('Fri15-18PM',NULL),('Fri18-21PM',NULL),('Fri21-24PM',NULL),('Fri3-6AM',NULL),('Fri6-9AM',NULL),('Fri9-12AM',NULL),('Sat0-3AM',NULL),('Sat12-15PM',NULL),('Sat15-18PM',NULL),('Sat18-21PM',NULL),('Sat21-24PM',NULL),('Sat3-6AM',NULL),('Sat6-9AM',NULL),('Sat9-12AM',NULL),('Sun0-3AM',NULL),('Sun12-15PM',NULL),('Sun15-18PM',NULL),('Sun18-21PM',NULL),('Sun3-6AM',NULL),('Sun6-9AM',NULL),('Sun9-12AM',NULL),('Thur0-3AM',NULL),('Thur12-15PM',NULL),('Thur15-18PM',NULL),('Thur18-21PM',NULL),('Thur21-24PM',NULL),('Thur3-6AM',NULL),('Thur6-9AM',NULL),('Thur9-12AM',NULL),('Tue0-3AM',NULL),('Tue12-15PM',NULL),('Tue15-18PM',NULL),('Tue18-21PM',NULL),('Tue21-24PM',NULL),('Tue3-6AM',NULL),('Tue6-9AM',NULL),('Tue9-12AM',NULL),('Wed0-3AM',NULL),('Wed12-15PM',NULL),('Wed15-18PM',NULL),('Wed18-21PM',NULL),('Wed21-24PM',NULL),('Wed3-6AM',NULL),('Wed6-9AM',NULL),('Wed9-12AM',NULL),('Mon3-6AM','Fammi'),('Mon12-15PM','Jake'),('Mon18-21PM','Mami'),('Mon0-3AM','Mayumi'),('Mon15-18PM','Mike'),('Sun21-24PM','Mike'),('Mon6-9AM','Mikki'),('Mon21-24PM','opp'),('Mon9-12AM','Yummi');
/*!40000 ALTER TABLE `laundry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15 17:11:57
