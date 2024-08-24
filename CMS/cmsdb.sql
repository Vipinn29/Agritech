-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cmsdb
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'Admin','admin',6265335331,'koyturfishfarming@gmail.com','f925916e2754e5e03f75dd58a5733251','2023-12-02 06:14:39');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbranch`
--

DROP TABLE IF EXISTS `tblbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbranch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(120) DEFAULT NULL,
  `BranchContactnumber` bigint(11) DEFAULT NULL,
  `BranchEmail` varchar(120) DEFAULT NULL,
  `BranchAddress` varchar(120) DEFAULT NULL,
  `BranchCity` varchar(120) DEFAULT NULL,
  `BranchState` varchar(120) DEFAULT NULL,
  `BranchPincode` varchar(120) DEFAULT NULL,
  `BranchCountry` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `BranchName` (`BranchName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbranch`
--

LOCK TABLES `tblbranch` WRITE;
/*!40000 ALTER TABLE `tblbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcourier`
--

DROP TABLE IF EXISTS `tblcourier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcourier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RefNumber` varchar(120) DEFAULT NULL,
  `SenderBranch` varchar(120) DEFAULT NULL,
  `SenderName` varchar(120) DEFAULT NULL,
  `SenderContactnumber` bigint(11) DEFAULT NULL,
  `SenderAddress` varchar(120) DEFAULT NULL,
  `SenderCity` varchar(120) DEFAULT NULL,
  `SenderState` varchar(120) DEFAULT NULL,
  `SenderPincode` varchar(120) DEFAULT NULL,
  `SenderCountry` varchar(120) DEFAULT NULL,
  `RecipientName` varchar(120) DEFAULT NULL,
  `RecipientContactnumber` bigint(11) DEFAULT NULL,
  `RecipientAddress` varchar(120) DEFAULT NULL,
  `RecipientCity` varchar(120) DEFAULT NULL,
  `RecipientState` varchar(120) DEFAULT NULL,
  `RecipientPincode` varchar(120) DEFAULT NULL,
  `RecipientCountry` varchar(120) DEFAULT NULL,
  `CourierDes` varchar(250) DEFAULT NULL,
  `ParcelWeight` varchar(120) DEFAULT NULL,
  `ParcelDimensionlen` varchar(120) DEFAULT NULL,
  `ParcelDimensionwidth` varchar(120) DEFAULT NULL,
  `ParcelDimensionheight` varchar(120) DEFAULT NULL,
  `ParcelPrice` decimal(10,2) DEFAULT NULL,
  `Status` varchar(124) DEFAULT NULL,
  `CourierDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `branchname` (`SenderBranch`),
  KEY `RefNumber` (`RefNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcourier`
--

LOCK TABLES `tblcourier` WRITE;
/*!40000 ALTER TABLE `tblcourier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcourier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcouriertracking`
--

DROP TABLE IF EXISTS `tblcouriertracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcouriertracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CourierId` int(11) DEFAULT NULL,
  `remark` mediumtext,
  `status` varchar(255) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `refrenceid` (`CourierId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcouriertracking`
--

LOCK TABLES `tblcouriertracking` WRITE;
/*!40000 ALTER TABLE `tblcouriertracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcouriertracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpage`
--

LOCK TABLES `tblpage` WRITE;
/*!40000 ALTER TABLE `tblpage` DISABLE KEYS */;
INSERT INTO `tblpage` VALUES (1,'aboutus','About Us',NULL,NULL,NULL,'2024-08-24 12:11:49'),(2,'contactus','Contact Us','Paikara badi, kumhari Durg, Chhattisgarh - 490042','koyturfishfarming@gmail.com',8800446453,'2024-06-19 06:34:46');
/*!40000 ALTER TABLE `tblpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstaff` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(120) DEFAULT NULL,
  `StaffName` varchar(120) DEFAULT NULL,
  `StaffMobilenumber` bigint(11) DEFAULT NULL,
  `StaffEmail` varchar(120) DEFAULT NULL,
  `StaffPassword` varchar(120) DEFAULT NULL,
  `StaffRegdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `branchid` (`BranchName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

LOCK TABLES `tblstaff` WRITE;
/*!40000 ALTER TABLE `tblstaff` DISABLE KEYS */;
INSERT INTO `tblstaff` VALUES (1,'Test Branch','XYZ',1234567890,'abc@gmail.com','f925916e2754e5e03f75dd58a5733251','2023-12-24 18:30:00',1);
/*!40000 ALTER TABLE `tblstaff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-24 17:50:28
