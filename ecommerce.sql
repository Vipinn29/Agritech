-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
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
-- Table structure for table `add_logo`
--

DROP TABLE IF EXISTS `add_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_logo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_logo`
--

LOCK TABLES `add_logo` WRITE;
/*!40000 ALTER TABLE `add_logo` DISABLE KEYS */;
INSERT INTO `add_logo` VALUES (2,'logo.png');
/*!40000 ALTER TABLE `add_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES (1,'saifulislamsapon@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1),(3,'moazzem@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',2),(4,'yearul@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',2);
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_order_info`
--

DROP TABLE IF EXISTS `all_order_info`;
/*!50001 DROP VIEW IF EXISTS `all_order_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_order_info` AS SELECT 
 1 AS `order_id`,
 1 AS `product_name`,
 1 AS `pdt_quantity`,
 1 AS `amount`,
 1 AS `uses_coupon`,
 1 AS `customer_name`,
 1 AS `Shipping_mobile`,
 1 AS `trans_id`,
 1 AS `shiping_address`,
 1 AS `order_status`,
 1 AS `order_time`,
 1 AS `order_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `catagory`
--

DROP TABLE IF EXISTS `catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catagory` (
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctg_name` varchar(60) NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catagory`
--

LOCK TABLES `catagory` WRITE;
/*!40000 ALTER TABLE `catagory` DISABLE KEYS */;
INSERT INTO `catagory` VALUES (1,'Tripura','All kinds fish are available in this catagory ',1),(2,'Silchar','All kinds fish are available in this catagory ',1),(3,'Aizwa','All kinds fish are available in this catagory ',1),(4,'Dimapur','All kinds fish are available in this catagory ',1),(5,'Dibrugarh','All kinds fish are available in this catagory ',1),(6,'Guwahati','All kinds fish are available in this catagory ',1),(7,'Shilong','All kinds fish are available in this catagory ',1),(8,'Patna','All kinds fish are available in this catagory ',1);
/*!40000 ALTER TABLE `catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupon`
--

DROP TABLE IF EXISTS `cupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupon`
--

LOCK TABLES `cupon` WRITE;
/*!40000 ALTER TABLE `cupon` DISABLE KEYS */;
INSERT INTO `cupon` VALUES (1,'koyturfish','It\'s a discount coupon.',10,1),(2,'eid2021','Eid discount',15,1),(3,'eid2021','Eid discount',15,1);
/*!40000 ALTER TABLE `cupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_feedback`
--

DROP TABLE IF EXISTS `customer_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_feedback`
--

LOCK TABLES `customer_feedback` WRITE;
/*!40000 ALTER TABLE `customer_feedback` DISABLE KEYS */;
INSERT INTO `customer_feedback` VALUES (1,1,'saiful',4,'This product is very good','2021-09-11'),(4,5,'karim',6,'Good product','2021-09-15');
/*!40000 ALTER TABLE `customer_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_info`
--

DROP TABLE IF EXISTS `header_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `tweeter` varchar(500) NOT NULL,
  `fb_link` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_info`
--

LOCK TABLES `header_info` WRITE;
/*!40000 ALTER TABLE `header_info` DISABLE KEYS */;
INSERT INTO `header_info` VALUES (10,'koyturfishfarming@gmail.com','https://twitter.com/','https://facebook.com/','https://pinerest.com/','+91 8800446453');
/*!40000 ALTER TABLE `header_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `pdt_quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses_coupon` varchar(35) NOT NULL,
  `order_status` int(3) NOT NULL,
  `trans_id` varchar(25) NOT NULL,
  `Shipping_mobile` varchar(20) NOT NULL,
  `shiping` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,' Apple Gala(1 kg)',1,245,'',2,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-11 09:18:53','2021-09-13'),(2,1,'Apple Golden Delicious (1kg)',1,250,'',2,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-11 09:18:53','2021-09-13'),(3,1,' Banana (Shobri) (1 P)',1,10,'',2,'afasffa','1246798',' SubarnaChar, Noakhali ','2021-09-11 09:22:16','2021-09-13'),(4,1,' Grapes Red (Kg)',1,300,'',2,'afasffa','1246798',' SubarnaChar, Noakhali ','2021-09-11 09:22:16','2021-09-11'),(5,1,'Coconut',1,10,'',2,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-11 09:31:12','2021-09-13'),(6,1,' Apple Gala(1 kg)',1,245,'fruitsbazar',2,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-11 10:21:33','2021-09-11'),(7,1,' Grapes White (Kg)',1,250,'fruitsbazar',1,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-11 10:21:33','2021-09-11'),(8,1,' Banana (Shobri) (1 P)',1,10,'',2,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-12 19:34:21','2021-09-12'),(9,1,'Black Apple',1,150,'',1,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-12 19:34:21','2021-09-12'),(10,2,' Banana (Shagor Kola) (1 P)',1,12,'',0,'156464631afdasf','1246798',' Maijdee, Noakhali ','2021-09-12 20:52:40','2021-09-13'),(11,2,' Banana (Shobri) (1 P)',1,10,'',2,'156464631afdasf','1246798',' Maijdee, Noakhali ','2021-09-12 20:52:40','2021-09-13'),(12,2,'Black Apple',1,150,'',1,'156464631afdasf','1246798',' Maijdee, Noakhali ','2021-09-12 20:52:40','2020-09-13'),(13,5,' Apple Gala(1 kg)',1,245,'',2,'avxev125','1840239402',' Jatrabari, Dhaka ','2021-09-14 07:06:53','2021-09-14'),(14,5,'  Apple Golden Delicious (1kg)',1,250,'',0,'avxev125','1840239402',' Jatrabari, Dhaka ','2021-09-14 07:06:53','2021-09-14'),(15,5,' Apple Fuji(1 Kg)',1,208,'',0,'avxev125','1840239402',' Jatrabari, Dhaka ','2021-09-14 08:02:43','2021-09-14'),(16,5,' Banana (Chini Chompa) (1 P)',1,10,'',0,'avxev125','1840239402',' Jatrabari, Dhaka ','2021-09-14 08:02:43','2021-09-14'),(17,5,'  Apple Golden Delicious (1kg)',1,250,'',0,'avxev125','1840239402',' Jatrabari, Dhaka ','2021-09-14 08:02:43','2021-09-14'),(18,5,' Navel Oranges.',1,150,'',0,'164614618','1840239402',' Jatrabari, Dhaka ','2021-09-15 09:05:37','2021-09-15'),(19,5,' Grapes Black (Kg)',1,250,'',0,'164614618','1840239402',' Jatrabari, Dhaka ','2021-09-15 09:05:37','2021-09-15'),(20,1,' Banana (Shagor Kola) (1 P)',1,12,'',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-15 10:28:12','2021-09-15'),(21,1,'  Apple Golden Delicious (1kg)',1,250,'',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-15 10:28:12','2021-09-15'),(22,1,' Navel Oranges.',1,150,'fruitsbazar',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:23:53','2021-09-16'),(23,1,' Banana (Shobri) (1 P)',1,10,'fruitsbazar',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:23:53','2021-09-16'),(24,1,'Black Apple',1,150,'fruitsbazar',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:23:53','2021-09-16'),(25,1,' Apple Fuji(1 Kg)',1,208,'fruitsbazar',0,'avxev125','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:25:36','2021-09-16'),(26,1,' Apple Gala(1 kg)',1,245,'fruitsbazar',1,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:57:19','2021-09-16'),(27,1,'  Apple Golden Delicious (1kg)',1,250,'fruitsbazar',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:57:19','2021-09-16'),(28,1,' Grapes White (Kg)',1,250,'fruitsbazar',0,'afasfsaf','1246798',' SubarnaChar, Noakhali ','2021-09-16 09:59:31','2021-09-16');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_info_ct`
--

DROP TABLE IF EXISTS `product_info_ct`;
/*!50001 DROP VIEW IF EXISTS `product_info_ct`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_info_ct` AS SELECT 
 1 AS `price_id`,
 1 AS `pdt`,
 1 AS `ctg`,
 1 AS `pdt_price`,
 1 AS `pdt_id`,
 1 AS `pdt_name`,
 1 AS `pdt_des`,
 1 AS `pdt_img`,
 1 AS `product_stock`,
 1 AS `pdt_status`,
 1 AS `ctg_id`,
 1 AS `ctg_name`,
 1 AS `ctg_des`,
 1 AS `ctg_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL AUTO_INCREMENT,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `product_stock` int(5) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL,
  PRIMARY KEY (`pdt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Catla 2kg','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.','catla.jpg',10,1),(2,'Rohu 1.5kg','\"Rohu, oh my Rohu - How Humble Thy Visage\" - as the Poet said. The Rohu maintains a very low profile in spite of being the king of Carps in India. Don\'t be fooled by its humble exterior - explore a bit deeper and you will realise that this is one of ','rohu.jpg',15,1),(3,'Common Carp 1kg','Common Carp is a large, deep-bodied fish, varying in colour from silver to olive-green, brass or grey on the back and sides. Its belly is yellowish and the lower fins are orange-red. It has a single dorsal spine and its cheeks and gill covers are par','common_carp.jpg',10,1),(4,'Murrel/Soal/Sneak Head 800gram','Fresh water fish having elongated round body and possess meat with good flavor','murrel.jpg',10,1),(5,'Murrel/Soal/Sneak Head 1kg','Fresh water fish having elongated round body and possess meat with good flavor','murrel.jpg',8,1),(6,'Buwali/Boal/Padhen 1kg','Fresh water catfish variety','buwali.jpg',12,1),(7,'Buwali/Boal/Padhen 2kg','Fresh water catfish variety','buwali.jpg',15,1),(8,'Singhada/Ayer/Aar Below kg','A very tasty variety of Catfish','singhada.jpg',13,1),(9,'Singhada/Ayer/Aar 1 kg','A very tasty variety of Catfish','singhada.jpg',12,1),(10,'Singhi 75gram plus','Smaller version of the Backwater Catfish, considered a delicacy','singhi.jpg',11,1),(11,'Deshi Managur 100gram plus ','Smaller version of the Marine Catfish, considered a delicacy','Desi-Magur.jpg',5,1),(12,'Kajuli Fresh','A very tasty version of the catfish and favourite among Bengali community','kajuli.jpeg',15,1),(13,'Patola 200gram','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.','patola.jpg',15,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_price`
--

DROP TABLE IF EXISTS `products_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `pdt` int(11) NOT NULL,
  `ctg` int(11) NOT NULL,
  `pdt_price` int(11) NOT NULL,
  PRIMARY KEY (`price_id`),
  KEY `products_price_ibfk_2` (`pdt`),
  KEY `products_price_ibfk_3` (`ctg`),
  CONSTRAINT `products_price_ibfk_2` FOREIGN KEY (`pdt`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_price_ibfk_3` FOREIGN KEY (`ctg`) REFERENCES `catagory` (`ctg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_price`
--

LOCK TABLES `products_price` WRITE;
/*!40000 ALTER TABLE `products_price` DISABLE KEYS */;
INSERT INTO `products_price` VALUES (1,1,1,450),(2,2,1,350),(3,3,1,350),(4,4,1,450),(5,5,1,600),(6,6,1,450),(7,7,1,600),(8,8,1,350),(9,9,1,500),(10,10,1,350),(11,11,1,600),(12,12,1,700),(13,13,1,600),(14,1,2,450),(15,2,2,350),(16,3,2,350),(17,4,2,450),(18,5,2,600),(19,6,2,450),(20,7,2,600),(21,8,2,350),(22,9,2,500),(23,10,2,350),(24,11,2,600),(25,12,2,700),(26,13,2,600),(27,1,3,450),(28,2,3,350),(29,3,3,350),(30,4,3,450),(31,5,3,600),(32,6,3,450),(33,7,3,600),(34,8,3,350),(35,9,3,500),(36,10,3,350),(37,11,3,600),(38,12,3,700),(39,13,3,600),(40,1,4,450),(41,2,4,350),(42,3,4,350),(43,4,4,450),(44,5,4,600),(45,6,4,450),(46,7,4,600),(47,8,4,350),(48,9,4,500),(49,10,4,350),(50,11,4,600),(51,12,4,700),(52,13,4,600),(53,1,5,450),(54,2,5,350),(55,3,5,350),(56,4,5,450),(57,5,5,600),(58,6,5,450),(59,7,5,600),(60,8,5,350),(61,9,5,500),(62,10,5,350),(63,11,5,600),(64,12,5,700),(65,13,5,600),(66,1,6,400),(67,2,6,300),(68,3,6,300),(69,4,6,500),(70,5,6,600),(71,6,6,450),(72,7,6,500),(73,8,6,350),(74,9,6,500),(75,10,6,500),(76,11,6,700),(77,12,6,700),(78,13,6,500),(79,1,7,400),(80,2,7,300),(81,3,7,300),(82,4,7,500),(83,5,7,600),(84,6,7,450),(85,7,7,500),(86,8,7,350),(87,9,7,500),(88,10,7,500),(89,11,7,700),(90,12,7,700),(91,13,7,500),(92,1,8,350),(93,2,8,280),(94,3,8,250),(95,4,8,350),(96,5,8,400);
/*!40000 ALTER TABLE `products_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) NOT NULL,
  `btn_left` varchar(25) NOT NULL,
  `btn_right` varchar(25) NOT NULL,
  `slider_img` varchar(255) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'Catla','Fish 100% live','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers.','Shop now','View lookbook','fish1.jpg'),(2,'Crap','Fish 100% live','Common Carp is a large, deep-bodied fish, varying in colour from silver to olive-green, brass or grey on the back and sides. Its belly is yellowish and the lower fins are orange-red. It has a single dorsal spine and its cheeks and gill covers are par','Shop now','View lookbook','fish5.jpg'),(3,'Rohu','Fish 100% live','\"Rohu, oh my Rohu - How Humble Thy Visage\" - as the Poet said. The Rohu maintains a very low profile in spite of being the king of Carps in India. Don\'t be fooled by its humble exterior - explore a bit deeper and you will realise that this is one of ','Shop now','View lookbook','fish3.jpeg'),(4,'Singhi','Fish 100% live','Smaller version of the Backwater Catfish, considered a delicacy','Shop now','View lookbook','fish2.jpg');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `provider` varchar(35) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'saiful',' saiful',' islam','saifulislamsapon@gmail.com','202cb962ac59075b964b07152d234b70',1246798,'SubarnaChar, Noakhali',5,'2021-08-21 13:38:23','2021-08-21 13:38:23'),(2,'Yearul',' Yerarul',' islam','yearul@gmail.com','202cb962ac59075b964b07152d234b70',1246798,'Maijdee, Noakhali',5,'2021-08-21 13:38:23','2021-08-21 13:38:23'),(3,'Omar6627',' Omar Bin',' Faruk','omarbfaruk@gmail.com','ad126b79a449eb003915c3917c8a30e1',1684734323,'Feni',5,'2021-08-21 18:56:24','2021-08-21 18:56:24'),(4,'Omar_6627',' Omar Bin',' Faruk','omarbinfaruk97@gmail.com','8d5dcd9520e2712d648297f0f116c284',1684734323,'Dhaka',5,'2021-08-30 11:04:09','2021-08-30 11:04:09'),(5,'karim',' karim',' ','karim@gmail.com','202cb962ac59075b964b07152d234b70',1840239402,'Jatrabari, Dhaka',5,'2021-09-14 05:03:25','2021-09-14 05:03:25'),(6,'rahim',' Rahim',' ','rahim@gmail.com','202cb962ac59075b964b07152d234b70',1840239415,'Mirpur, Dhaka. ',5,'2021-09-14 07:05:48','2021-09-14 07:05:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_order_info`
--

/*!50001 DROP VIEW IF EXISTS `all_order_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_order_info` AS select `order_details`.`order_id` AS `order_id`,`order_details`.`product_name` AS `product_name`,`order_details`.`pdt_quantity` AS `pdt_quantity`,`order_details`.`amount` AS `amount`,`order_details`.`uses_coupon` AS `uses_coupon`,`users`.`user_firstname` AS `customer_name`,`order_details`.`Shipping_mobile` AS `Shipping_mobile`,`order_details`.`trans_id` AS `trans_id`,`order_details`.`shiping` AS `shiping_address`,`order_details`.`order_status` AS `order_status`,`order_details`.`order_time` AS `order_time`,`order_details`.`order_date` AS `order_date` from (`order_details` join `users`) where (`users`.`user_id` = `order_details`.`user_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_info_ct`
--

/*!50001 DROP VIEW IF EXISTS `product_info_ct`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_info_ct` AS select `pp`.`price_id` AS `price_id`,`pp`.`pdt` AS `pdt`,`pp`.`ctg` AS `ctg`,`pp`.`pdt_price` AS `pdt_price`,`p`.`pdt_id` AS `pdt_id`,`p`.`pdt_name` AS `pdt_name`,`p`.`pdt_des` AS `pdt_des`,`p`.`pdt_img` AS `pdt_img`,`p`.`product_stock` AS `product_stock`,`p`.`pdt_status` AS `pdt_status`,`c`.`ctg_id` AS `ctg_id`,`c`.`ctg_name` AS `ctg_name`,`c`.`ctg_des` AS `ctg_des`,`c`.`ctg_status` AS `ctg_status` from ((`products_price` `pp` join `products` `p` on((`pp`.`pdt` = `p`.`pdt_id`))) join `catagory` `c` on((`pp`.`ctg` = `c`.`ctg_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-02 17:11:34
