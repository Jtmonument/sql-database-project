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
-- Table structure for table `employee_t`
--

DROP TABLE IF EXISTS `employee_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_t` (
  `EmployeeID` int NOT NULL,
  `Name` varchar(30) NOT NULL,
  `StreetName` varchar(30) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `ZipCode` int DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `SSN` int DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `EmployeeType` varchar(15) DEFAULT NULL,
  `OfficeID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `OfficeID` (`OfficeID`),
  CONSTRAINT `employee_t_ibfk_1` FOREIGN KEY (`OfficeID`) REFERENCES `sales_office_t` (`OfficeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_t`
--

LOCK TABLES `employee_t` WRITE;
/*!40000 ALTER TABLE `employee_t` DISABLE KEYS */;
INSERT INTO `employee_t` VALUES (1,'Jonathan','920 East Academy St','Troy','AL',36081,'2054347006',3333333,'2000-04-17','FullTime',1),(2,'Zee','200 University Avenue','Troy','AL',36081,'123456789',4444444,'2001-03-17','PartTime',2);
/*!40000 ALTER TABLE `employee_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19  0:46:22
