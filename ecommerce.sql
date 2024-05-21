-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 07:06 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `add_logo`
--

CREATE TABLE `add_logo` (
  `id` int(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_logo`
--

INSERT INTO `add_logo` (`id`, `img`) VALUES
(2, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(60) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_email`, `admin_pass`, `role`) VALUES
(1, 'saifulislamsapon@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(3, 'moazzem@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(4, 'yearul@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_order_info`
-- (See below for the actual view)
--
CREATE TABLE `all_order_info` (
`order_id` int(255)
,`product_name` varchar(255)
,`pdt_quantity` int(11)
,`amount` int(11)
,`uses_coupon` varchar(35)
,`customer_name` varchar(60)
,`Shipping_mobile` varchar(20)
,`trans_id` varchar(25)
,`shiping_address` varchar(255)
,`order_status` int(3)
,`order_time` timestamp
,`order_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` varchar(60) NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(1, 'Fish', 'All kinds fish are available in this catagory ', 1),
(2, 'Katla:', 'All kinds Katla: are available in this category ', 1),
(3, 'Tilapia', '', 1),
(4, 'patola', 'All kinds potalas are available in this category ', 1),
(5, 'magur', 'All kinds magur are available in this catagory ', 1),
(6, 'crap', 'Here will display all Crap', 1),
(7, 'rohu', 'Here will display all laptop', 1),
(8, 'murrel', 'Here will display all murrel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_id`, `cupon_code`, `description`, `discount`, `status`) VALUES
(1, 'koyturfish', 'It\'s a discount coupon.', 10, 1),
(2, 'eid2021', 'Eid discount', 15, 1),
(3, 'eid2021', 'Eid discount', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pdt_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`id`, `user_id`, `user_name`, `pdt_id`, `comment`, `comment_date`) VALUES
(1, 1, 'saiful', 4, 'This product is very good', '2021-09-11'),
(4, 5, 'karim', 6, 'Good product', '2021-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `header_info`
--

CREATE TABLE `header_info` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tweeter` varchar(500) NOT NULL,
  `fb_link` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header_info`
--

INSERT INTO `header_info` (`id`, `email`, `tweeter`, `fb_link`, `pinterest`, `phone`) VALUES
(10, 'koyturfishfarming@gmail.com', 'https://twitter.com/', 'https://facebook.com/', 'https://pinerest.com/', '+91 8800446453');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(255) NOT NULL,
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
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `user_id`, `product_name`, `pdt_quantity`, `amount`, `uses_coupon`, `order_status`, `trans_id`, `Shipping_mobile`, `shiping`, `order_time`, `order_date`) VALUES
(1, 1, ' Apple Gala(1 kg)', 1, 245, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:18:53', '2021-09-13'),
(2, 1, 'Apple Golden Delicious (1kg)', 1, 250, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:18:53', '2021-09-13'),
(3, 1, ' Banana (Shobri) (1 P)', 1, 10, '', 2, 'afasffa', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:22:16', '2021-09-13'),
(4, 1, ' Grapes Red (Kg)', 1, 300, '', 2, 'afasffa', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:22:16', '2021-09-11'),
(5, 1, 'Coconut', 1, 10, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 09:31:12', '2021-09-13'),
(6, 1, ' Apple Gala(1 kg)', 1, 245, 'fruitsbazar', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 10:21:33', '2021-09-11'),
(7, 1, ' Grapes White (Kg)', 1, 250, 'fruitsbazar', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-11 10:21:33', '2021-09-11'),
(8, 1, ' Banana (Shobri) (1 P)', 1, 10, '', 2, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-12 19:34:21', '2021-09-12'),
(9, 1, 'Black Apple', 1, 150, '', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-12 19:34:21', '2021-09-12'),
(10, 2, ' Banana (Shagor Kola) (1 P)', 1, 12, '', 0, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2021-09-13'),
(11, 2, ' Banana (Shobri) (1 P)', 1, 10, '', 2, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2021-09-13'),
(12, 2, 'Black Apple', 1, 150, '', 1, '156464631afdasf', '1246798', ' Maijdee, Noakhali ', '2021-09-12 20:52:40', '2020-09-13'),
(13, 5, ' Apple Gala(1 kg)', 1, 245, '', 2, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 07:06:53', '2021-09-14'),
(14, 5, '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 07:06:53', '2021-09-14'),
(15, 5, ' Apple Fuji(1 Kg)', 1, 208, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(16, 5, ' Banana (Chini Chompa) (1 P)', 1, 10, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(17, 5, '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'avxev125', '1840239402', ' Jatrabari, Dhaka ', '2021-09-14 08:02:43', '2021-09-14'),
(18, 5, ' Navel Oranges.', 1, 150, '', 0, '164614618', '1840239402', ' Jatrabari, Dhaka ', '2021-09-15 09:05:37', '2021-09-15'),
(19, 5, ' Grapes Black (Kg)', 1, 250, '', 0, '164614618', '1840239402', ' Jatrabari, Dhaka ', '2021-09-15 09:05:37', '2021-09-15'),
(20, 1, ' Banana (Shagor Kola) (1 P)', 1, 12, '', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-15 10:28:12', '2021-09-15'),
(21, 1, '  Apple Golden Delicious (1kg)', 1, 250, '', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-15 10:28:12', '2021-09-15'),
(22, 1, ' Navel Oranges.', 1, 150, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(23, 1, ' Banana (Shobri) (1 P)', 1, 10, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(24, 1, 'Black Apple', 1, 150, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:23:53', '2021-09-16'),
(25, 1, ' Apple Fuji(1 Kg)', 1, 208, 'fruitsbazar', 0, 'avxev125', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:25:36', '2021-09-16'),
(26, 1, ' Apple Gala(1 kg)', 1, 245, 'fruitsbazar', 1, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:57:19', '2021-09-16'),
(27, 1, '  Apple Golden Delicious (1kg)', 1, 250, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:57:19', '2021-09-16'),
(28, 1, ' Grapes White (Kg)', 1, 250, 'fruitsbazar', 0, 'afasfsaf', '1246798', ' SubarnaChar, Noakhali ', '2021-09-16 09:59:31', '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_price` int(255) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `product_stock` int(5) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_price`, `pdt_des`, `pdt_ctg`, `pdt_img`, `product_stock`, `pdt_status`) VALUES
(1, 'Catla 2kg', 450, 'The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.', 1, 'catla.jpg', 10, 1),
(2, 'Rohu 1.5kg', 350, '\"Rohu, oh my Rohu - How Humble Thy Visage\" - as the Poet said. The Rohu maintains a very low profile in spite of being the king of Carps in India. Don\'t be fooled by its humble exterior - explore a bit deeper and you will realise that this is one of ', 1, 'rohu.jpg', 15, 1),
(3, 'Common Carp 1kg', 350, 'Common Carp is a large, deep-bodied fish, varying in colour from silver to olive-green, brass or grey on the back and sides. Its belly is yellowish and the lower fins are orange-red. It has a single dorsal spine and its cheeks and gill covers are par', 1, 'common_carp.jpg', 10, 1),
(4, 'Murrel/Soal/Sneak Head 800gram', 450, 'Fresh water fish having elongated round body and possess meat with good flavor', 2, 'murrel.jpg', 10, 1),
(5, 'Murrel/Soal/Sneak Head 1kg', 600, 'Fresh water fish having elongated round body and possess meat with good flavor', 2, 'murrel.jpg', 8, 1),
(6, 'Buwali/Boal/Padhen 1kg', 450, 'Fresh water catfish variety', 2, 'buwali.jpg', 12, 1),
(7, 'Buwali/Boal/Padhen 2kg', 600, 'Fresh water catfish variety', 3, 'buwali.jpg', 15, 1),
(8, 'Singhada/Ayer/Aar Below kg', 350, 'A very tasty variety of Catfish', 3, 'singhada.jpg', 13, 1),
(9, 'Singhada/Ayer/Aar 1 kg', 500, 'A very tasty variety of Catfish', 3, 'singhada.jpg', 12, 1),
(11, 'Singhi 75gram plus', 350, 'Smaller version of the Backwater Catfish, considered a delicacy', 6, 'singhi.jpg', 11, 1),
(12, 'Deshi Managur 100gram plus ', 600, 'Smaller version of the Marine Catfish, considered a delicacy', 1, 'Desi-Magur.jpg', 5, 1),
(13, 'Kajuli Fresh', 700, 'A very tasty version of the catfish and favourite among Bengali community', 4, 'kajuli.jpeg', 15, 1),
(14, 'Patola 200gram', 600, 'The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.', 4, 'patola.jpg', 15, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ctg`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ctg` (
`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_price` int(255)
,`pdt_des` varchar(250)
,`pdt_img` varchar(250)
,`product_stock` int(5)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` varchar(60)
);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) NOT NULL,
  `btn_left` varchar(25) NOT NULL,
  `btn_right` varchar(25) NOT NULL,
  `slider_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `first_line`, `second_line`, `third_line`, `btn_left`, `btn_right`, `slider_img`) VALUES
(1, 'Catla', 'Fish 100% live', 'The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers.', 'Shop now', 'View lookbook', 'fish1.jpg'),
(2, 'Crap', 'Fish 100% live', 'Common Carp is a large, deep-bodied fish, varying in colour from silver to olive-green, brass or grey on the back and sides. Its belly is yellowish and the lower fins are orange-red. It has a single dorsal spine and its cheeks and gill covers are par', 'Shop now', 'View lookbook', 'fish5.jpg'),
(3, 'Rohu', 'Fish 100% live', '\"Rohu, oh my Rohu - How Humble Thy Visage\" - as the Poet said. The Rohu maintains a very low profile in spite of being the king of Carps in India. Don\'t be fooled by its humble exterior - explore a bit deeper and you will realise that this is one of ', 'Shop now', 'View lookbook', 'fish3.jpeg'),
(4, 'Singhi', 'Fish 100% live', 'Smaller version of the Backwater Catfish, considered a delicacy', 'Shop now', 'View lookbook', 'fish2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(60) NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_roles` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_address`, `user_roles`, `created_at`, `modified_at`) VALUES
(1, 'saiful', ' saiful', ' islam', 'saifulislamsapon@gmail.com', '202cb962ac59075b964b07152d234b70', 1246798, 'SubarnaChar, Noakhali', 5, '2021-08-21 13:38:23', '2021-08-21 13:38:23'),
(2, 'Yearul', ' Yerarul', ' islam', 'yearul@gmail.com', '202cb962ac59075b964b07152d234b70', 1246798, 'Maijdee, Noakhali', 5, '2021-08-21 13:38:23', '2021-08-21 13:38:23'),
(3, 'Omar6627', ' Omar Bin', ' Faruk', 'omarbfaruk@gmail.com', 'ad126b79a449eb003915c3917c8a30e1', 1684734323, 'Feni', 5, '2021-08-21 18:56:24', '2021-08-21 18:56:24'),
(4, 'Omar_6627', ' Omar Bin', ' Faruk', 'omarbinfaruk97@gmail.com', '8d5dcd9520e2712d648297f0f116c284', 1684734323, 'Dhaka', 5, '2021-08-30 11:04:09', '2021-08-30 11:04:09'),
(5, 'karim', ' karim', ' ', 'karim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239402, 'Jatrabari, Dhaka', 5, '2021-09-14 05:03:25', '2021-09-14 05:03:25'),
(6, 'rahim', ' Rahim', ' ', 'rahim@gmail.com', '202cb962ac59075b964b07152d234b70', 1840239415, 'Mirpur, Dhaka. ', 5, '2021-09-14 07:05:48', '2021-09-14 07:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `provider` varchar(35) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `expiry` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `all_order_info`
--
DROP TABLE IF EXISTS `all_order_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_order_info`  AS  select `order_details`.`order_id` AS `order_id`,`order_details`.`product_name` AS `product_name`,`order_details`.`pdt_quantity` AS `pdt_quantity`,`order_details`.`amount` AS `amount`,`order_details`.`uses_coupon` AS `uses_coupon`,`users`.`user_firstname` AS `customer_name`,`order_details`.`Shipping_mobile` AS `Shipping_mobile`,`order_details`.`trans_id` AS `trans_id`,`order_details`.`shiping` AS `shiping_address`,`order_details`.`order_status` AS `order_status`,`order_details`.`order_time` AS `order_time`,`order_details`.`order_date` AS `order_date` from (`order_details` join `users`) where (`users`.`user_id` = `order_details`.`user_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `product_info_ctg`
--
DROP TABLE IF EXISTS `product_info_ctg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info_ctg`  AS  select `products`.`pdt_id` AS `pdt_id`,`products`.`pdt_name` AS `pdt_name`,`products`.`pdt_price` AS `pdt_price`,`products`.`pdt_des` AS `pdt_des`,`products`.`pdt_img` AS `pdt_img`,`products`.`product_stock` AS `product_stock`,`products`.`pdt_status` AS `pdt_status`,`catagory`.`ctg_id` AS `ctg_id`,`catagory`.`ctg_name` AS `ctg_name` from (`products` join `catagory`) where (`products`.`pdt_ctg` = `catagory`.`ctg_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_logo`
--
ALTER TABLE `add_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`cupon_id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_info`
--
ALTER TABLE `header_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_logo`
--
ALTER TABLE `add_logo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cupon`
--
ALTER TABLE `cupon`
  MODIFY `cupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `header_info`
--
ALTER TABLE `header_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

