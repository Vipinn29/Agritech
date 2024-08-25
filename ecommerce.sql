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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES (1,'koyturfishfarming@gmail.com','0f3a900b23616ab0224ba62f32b9225a',1),(2,'vipingupta2k4@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1),(3,'ekantdewangan510@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1);
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
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `product_name`,
 1 AS `pdt_quantity`,
 1 AS `amount`,
 1 AS `uses_coupon`,
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
INSERT INTO `catagory` VALUES (1,'Agartala (Tripura)','All kinds fish are available in this catagory ',1),(2,'Silchar (Assam)','All kinds fish are available in this catagory ',1),(3,'Aizwal (Mizoram)','All kinds fish are available in this catagory ',1),(4,'Dimapur (Nagaland)','All kinds fish are available in this catagory ',1),(5,'Dibrugarh (Assam)','All kinds fish are available in this catagory ',1),(6,'Guwahati (Assam)','All kinds fish are available in this catagory ',1),(7,'Shilong (Meghalaya)','All kinds fish are available in this catagory ',1),(8,'Patna (Bihar)','All kinds fish are available in this catagory ',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupon`
--

LOCK TABLES `cupon` WRITE;
/*!40000 ALTER TABLE `cupon` DISABLE KEYS */;
INSERT INTO `cupon` VALUES (1,'koyturfish','It\'s a discount coupon.',10,1);
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
  `sub_total` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `uses_coupon` varchar(35) NOT NULL,
  `order_status` int(3) NOT NULL,
  `trans_id` varchar(25) NOT NULL,
  `Shipping_mobile` varchar(20) NOT NULL,
  `shiping` varchar(255) NOT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Catla 2kg plus','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. ','catla.jpg',500,1),(2,'Rohu 1-1.5kg','The Rohu maintains a very low profile in spite of being the king of Carps in India.','rohu.jpg',500,1),(3,'Common Carp 1kg plus','Common Carp is a large, deep-bodied fish, its belly is yellowish and the lower fins are orange-red. ','common_carp.jpg',500,1),(4,'Murrel/Soal/Sneak Head 800gram','Fresh water fish having elongated round body and possess meat with good flavor','murrel.jpg',500,1),(5,'Murrel/Soal/Sneak Head 1kg','Fresh water fish having elongated round body and possess meat with good flavor','murrel.jpg',500,1),(6,'Buwali/Boal/Padhen 1kg','Fresh water catfish variety','buwali.jpg',500,1),(7,'Buwali/Boal/Padhen 2kg','Fresh water catfish variety','buwali.jpg',500,1),(8,'Singhada/Ayer/Aar Below kg','A very tasty variety of Catfish','singhada.jpg',500,1),(9,'Singhada/Ayer/Aar 1 kg','A very tasty variety of Catfish','singhada.jpg',500,1),(10,'Singhi 75gram plus','Smaller version of the Backwater Catfish, considered a delicacy','singhi.jpg',500,1),(11,'Deshi Managur 100gram plus ','Smaller version of the Marine Catfish, considered a delicacy','Desi-Magur.jpg',500,1),(12,'Kajuli Fresh','A very tasty version of the catfish and favourite among Bengali community','kajuli.jpeg',500,1),(13,'Patola 200gram','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. ','patola.jpg',500,1),(14,'Catla 1kg plus','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. ','catla.jpg',500,1),(15,'Rohu kg size','The Rohu maintains a very low profile in spite of being the king of Carps in India.','rohu.jpg',500,1),(16,'Common Carp below kg','Common Carp is a large, deep-bodied fish, its belly is yellowish and the lower fins are orange-red. ','common_carp.jpg',500,1),(17,'Pangasius/Jasar 500gram plus','Pangasius is a genus of medium-large to very large shark catfishes native to fresh water in South and Southeast Asia.','pangasius.jpg',500,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_price`
--

LOCK TABLES `products_price` WRITE;
/*!40000 ALTER TABLE `products_price` DISABLE KEYS */;
INSERT INTO `products_price` VALUES (1,1,1,429),(2,2,1,389),(3,3,1,350),(4,4,1,450),(5,5,1,600),(6,6,1,450),(7,7,1,600),(8,8,1,350),(9,9,1,500),(10,10,1,350),(11,11,1,600),(12,12,1,700),(13,13,1,600),(14,1,2,450),(15,2,2,350),(16,3,2,350),(17,4,2,450),(18,5,2,600),(19,6,2,450),(20,7,2,600),(21,8,2,350),(22,9,2,500),(23,10,2,350),(24,11,2,600),(25,12,2,700),(26,13,2,600),(27,1,3,450),(28,2,3,350),(29,3,3,350),(30,4,3,450),(31,5,3,600),(32,6,3,450),(33,7,3,600),(34,8,3,350),(35,9,3,500),(36,10,3,350),(37,11,3,600),(38,12,3,700),(39,13,3,600),(40,1,4,450),(41,2,4,350),(42,3,4,350),(43,4,4,450),(44,5,4,600),(45,6,4,450),(46,7,4,600),(47,8,4,350),(48,9,4,500),(49,10,4,350),(50,11,4,600),(51,12,4,700),(52,13,4,600),(53,1,5,450),(54,2,5,350),(55,3,5,350),(56,4,5,450),(57,5,5,600),(58,6,5,450),(59,7,5,600),(60,8,5,350),(61,9,5,500),(62,10,5,350),(63,11,5,600),(64,12,5,700),(65,13,5,600),(66,1,6,400),(67,2,6,300),(68,3,6,300),(69,4,6,500),(70,5,6,600),(71,6,6,450),(72,7,6,500),(73,8,6,350),(74,9,6,500),(75,10,6,500),(76,11,6,700),(77,12,6,700),(78,13,6,500),(79,1,7,400),(80,2,7,300),(81,3,7,300),(82,4,7,500),(83,5,7,600),(84,6,7,450),(85,7,7,500),(86,8,7,350),(87,9,7,500),(88,10,7,500),(89,11,7,700),(90,12,7,700),(91,13,7,500),(92,1,8,320),(93,2,8,240),(94,3,8,220),(95,4,8,350),(96,5,8,400),(97,14,1,349),(98,15,1,349),(99,16,1,320),(100,14,8,300),(101,15,8,220),(102,16,8,210),(103,17,8,120);
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
INSERT INTO `slider` VALUES (1,'Catla','Fish 100% live','The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers.','Shop now','View lookbook','fish1.jpg'),(2,'Crap','Fish 100% live','Common Carp is a large, deep-bodied fish, its belly is yellowish and the lower fins are orange-red. ','Shop now','View lookbook','fish5.jpg'),(3,'Rohu','Fish 100% live','The Rohu maintains a very low profile in spite of being the king of Carps in India.','Shop now','View lookbook','fish3.jpeg'),(4,'Singhi','Fish 100% live','Smaller version of the Backwater Catfish, considered a delicacy','Shop now','View lookbook','fish2.jpg');
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
  `user_name` varchar(60) DEFAULT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` bigint(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobile` (`user_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Vipinnn29',' Vipin',' Gupta','vipingupta2k4@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1234567890,'Raipur',5,'2024-08-23 19:08:22','2024-08-23 19:08:22');
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
/*!50001 VIEW `all_order_info` AS select `order_details`.`order_id` AS `order_id`,`users`.`user_id` AS `customer_id`,`users`.`user_firstname` AS `customer_name`,`order_details`.`product_name` AS `product_name`,`order_details`.`pdt_quantity` AS `pdt_quantity`,`order_details`.`amount` AS `amount`,`order_details`.`uses_coupon` AS `uses_coupon`,`order_details`.`Shipping_mobile` AS `Shipping_mobile`,`order_details`.`trans_id` AS `trans_id`,`order_details`.`shiping` AS `shiping_address`,`order_details`.`order_status` AS `order_status`,`order_details`.`order_time` AS `order_time`,`order_details`.`order_date` AS `order_date` from (`order_details` join `users`) where (`users`.`user_id` = `order_details`.`user_id`) */;
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

-- Dump completed on 2024-08-25  6:28:18
