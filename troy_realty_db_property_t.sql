-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: troy_realty_db
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
-- Table structure for table `property_t`
--

DROP TABLE IF EXISTS `property_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_t` (
  `PropertyID` int NOT NULL,
  `StreetName` varchar(30) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `ZipCode` int DEFAULT NULL,
  `SquareFeet` int DEFAULT NULL,
  `SalePrice` decimal(10,0) DEFAULT NULL,
  `ListingOffice` int DEFAULT NULL,
  `PropertyType` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PropertyID`),
  KEY `ListingOffice` (`ListingOffice`),
  CONSTRAINT `property_t_ibfk_1` FOREIGN KEY (`ListingOffice`) REFERENCES `sales_office_t` (`OfficeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_t`
--

LOCK TABLES `property_t` WRITE;
/*!40000 ALTER TABLE `property_t` DISABLE KEYS */;
INSERT INTO `property_t` VALUES (1,'Front Beach Rd','Panama City','FL',32413,1500,100000,1,'Commercial'),(2,'1633 Eastern Boulevard','Montgomery','AL',36117,1500,100000,2,'Land');
/*!40000 ALTER TABLE `property_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19  0:46:20
