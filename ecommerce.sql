-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 06:31 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
  `role` int(11) NOT NULL DEFAULT 1
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
(1, 'Tripura', 'All kinds fish are available in this catagory ', 1),
(2, 'Silchar', 'All kinds fish are available in this catagory ', 1),
(3, 'Aizwa', 'All kinds fish are available in this catagory ', 1),
(4, 'Dimapur', 'All kinds fish are available in this catagory ', 1),
(5, 'Dibrugarh', 'All kinds fish are available in this catagory ', 1),
(6, 'Guwahati', 'All kinds fish are available in this catagory ', 1),
(7, 'Shilong', 'All kinds fish are available in this catagory ', 1),
(8, 'Patna', 'All kinds fish are available in this catagory ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_id` int(11) NOT NULL,
  `cupon_code` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(5) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_id`, `cupon_code`, `description`, `discount`, `status`) VALUES
(1, 'koyturfish', 'It\'s a discount coupon.', 10, 1),
(2, 'NEW5', 'It\'s a discount coupon.', 5, 1),
(3, 'DIS7', 'It\'s a discount coupon.', 7, 1);

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
  `order_time` timestamp NULL DEFAULT current_timestamp(),
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_img` varchar(250) NOT NULL,
  `product_stock` int(5) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_des`, `pdt_img`, `product_stock`, `pdt_status`) VALUES
(1, 'Catla 2kg', 'The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.', 'catla.jpg', 10, 1),
(2, 'Rohu 1.5kg', '\"Rohu, oh my Rohu - How Humble Thy Visage\" - as the Poet said. The Rohu maintains a very low profile in spite of being the king of Carps in India. Don\'t be fooled by its humble exterior - explore a bit deeper and you will realise that this is one of ', 'rohu.jpg', 15, 1),
(3, 'Common Carp 1kg', 'Common Carp is a large, deep-bodied fish, varying in colour from silver to olive-green, brass or grey on the back and sides. Its belly is yellowish and the lower fins are orange-red. It has a single dorsal spine and its cheeks and gill covers are par', 'common_carp.jpg', 10, 1),
(4, 'Murrel/Soal/Sneak Head 800gram', 'Fresh water fish having elongated round body and possess meat with good flavor', 'murrel.jpg', 10, 1),
(5, 'Murrel/Soal/Sneak Head 1kg', 'Fresh water fish having elongated round body and possess meat with good flavor', 'murrel.jpg', 8, 1),
(6, 'Buwali/Boal/Padhen 1kg', 'Fresh water catfish variety', 'buwali.jpg', 12, 1),
(7, 'Buwali/Boal/Padhen 2kg', 'Fresh water catfish variety', 'buwali.jpg', 15, 1),
(8, 'Singhada/Ayer/Aar Below kg', 'A very tasty variety of Catfish', 'singhada.jpg', 13, 1),
(9, 'Singhada/Ayer/Aar 1 kg', 'A very tasty variety of Catfish', 'singhada.jpg', 12, 1),
(10, 'Singhi 75gram plus', 'Smaller version of the Backwater Catfish, considered a delicacy', 'singhi.jpg', 11, 1),
(11, 'Deshi Managur 100gram plus ', 'Smaller version of the Marine Catfish, considered a delicacy', 'Desi-Magur.jpg', 5, 1),
(12, 'Kajuli Fresh', 'A very tasty version of the catfish and favourite among Bengali community', 'kajuli.jpeg', 15, 1),
(13, 'Patola 200gram', 'The common man\'s fish - meaty and tasty, yet sought after by the kings and philosophers. It is said that a certain grey bearded Bengali philosopher understood the meaning of life after eating this fish.', 'patola.jpg', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_price`
--

CREATE TABLE `products_price` (
  `price_id` int(11) NOT NULL,
  `pdt` int(11) NOT NULL,
  `ctg` int(11) NOT NULL,
  `pdt_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_price`
--

INSERT INTO `products_price` (`price_id`, `pdt`, `ctg`, `pdt_price`) VALUES
(1, 1, 1, 429),
(2, 2, 1, 349),
(3, 3, 1, 350),
(4, 4, 1, 450),
(5, 5, 1, 600),
(6, 6, 1, 450),
(7, 7, 1, 600),
(8, 8, 1, 350),
(9, 9, 1, 500),
(10, 10, 1, 350),
(11, 11, 1, 600),
(12, 12, 1, 700),
(13, 13, 1, 600),
(14, 1, 2, 450),
(15, 2, 2, 350),
(16, 3, 2, 350),
(17, 4, 2, 450),
(18, 5, 2, 600),
(19, 6, 2, 450),
(20, 7, 2, 600),
(21, 8, 2, 350),
(22, 9, 2, 500),
(23, 10, 2, 350),
(24, 11, 2, 600),
(25, 12, 2, 700),
(26, 13, 2, 600),
(27, 1, 3, 450),
(28, 2, 3, 350),
(29, 3, 3, 350),
(30, 4, 3, 450),
(31, 5, 3, 600),
(32, 6, 3, 450),
(33, 7, 3, 600),
(34, 8, 3, 350),
(35, 9, 3, 500),
(36, 10, 3, 350),
(37, 11, 3, 600),
(38, 12, 3, 700),
(39, 13, 3, 600),
(40, 1, 4, 450),
(41, 2, 4, 350),
(42, 3, 4, 350),
(43, 4, 4, 450),
(44, 5, 4, 600),
(45, 6, 4, 450),
(46, 7, 4, 600),
(47, 8, 4, 350),
(48, 9, 4, 500),
(49, 10, 4, 350),
(50, 11, 4, 600),
(51, 12, 4, 700),
(52, 13, 4, 600),
(53, 1, 5, 450),
(54, 2, 5, 350),
(55, 3, 5, 350),
(56, 4, 5, 450),
(57, 5, 5, 600),
(58, 6, 5, 450),
(59, 7, 5, 600),
(60, 8, 5, 350),
(61, 9, 5, 500),
(62, 10, 5, 350),
(63, 11, 5, 600),
(64, 12, 5, 700),
(65, 13, 5, 600),
(66, 1, 6, 400),
(67, 2, 6, 300),
(68, 3, 6, 300),
(69, 4, 6, 500),
(70, 5, 6, 600),
(71, 6, 6, 450),
(72, 7, 6, 500),
(73, 8, 6, 350),
(74, 9, 6, 500),
(75, 10, 6, 500),
(76, 11, 6, 700),
(77, 12, 6, 700),
(78, 13, 6, 500),
(79, 1, 7, 400),
(80, 2, 7, 300),
(81, 3, 7, 300),
(82, 4, 7, 500),
(83, 5, 7, 600),
(84, 6, 7, 450),
(85, 7, 7, 500),
(86, 8, 7, 350),
(87, 9, 7, 500),
(88, 10, 7, 500),
(89, 11, 7, 700),
(90, 12, 7, 700),
(91, 13, 7, 500),
(92, 1, 8, 320),
(93, 2, 8, 240),
(94, 3, 8, 220),
(95, 4, 8, 350),
(96, 5, 8, 400);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ct`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ct` (
`price_id` int(11)
,`pdt` int(11)
,`ctg` int(11)
,`pdt_price` int(11)
,`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_des` varchar(250)
,`pdt_img` varchar(250)
,`product_stock` int(5)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` varchar(60)
,`ctg_des` varchar(150)
,`ctg_status` tinyint(3)
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_address`, `user_roles`, `created_at`, `modified_at`) VALUES
(1, 'saiful', ' saiful', ' islam', 'saifulislamsapon@gmail.com', '202cb962ac59075b964b07152d234b70', 1246798, 'SubarnaChar, Noakhali', 5, '2021-08-21 13:38:23', '2021-08-21 13:38:23'),
(8, 'Vipinn29', ' Vipin', ' Gupta', 'vipingupta2k4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'Raipur', 5, '2024-06-05 12:42:56', '2024-06-05 12:42:56'),
(9, 'rungta', ' Ekant', ' Dewangan', 'ekantdewangan510@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'RCET Raipur', 5, '2024-08-22 18:51:16', '2024-08-22 18:51:16');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_order_info`  AS  select `order_details`.`order_id` AS `order_id`,`order_details`.`product_name` AS `product_name`,`order_details`.`pdt_quantity` AS `pdt_quantity`,`order_details`.`amount` AS `amount`,`order_details`.`uses_coupon` AS `uses_coupon`,`users`.`user_firstname` AS `customer_name`,`order_details`.`Shipping_mobile` AS `Shipping_mobile`,`order_details`.`trans_id` AS `trans_id`,`order_details`.`shiping` AS `shiping_address`,`order_details`.`order_status` AS `order_status`,`order_details`.`order_time` AS `order_time`,`order_details`.`order_date` AS `order_date` from (`order_details` join `users`) where `users`.`user_id` = `order_details`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `product_info_ct`
--
DROP TABLE IF EXISTS `product_info_ct`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info_ct`  AS  select `pp`.`price_id` AS `price_id`,`pp`.`pdt` AS `pdt`,`pp`.`ctg` AS `ctg`,`pp`.`pdt_price` AS `pdt_price`,`p`.`pdt_id` AS `pdt_id`,`p`.`pdt_name` AS `pdt_name`,`p`.`pdt_des` AS `pdt_des`,`p`.`pdt_img` AS `pdt_img`,`p`.`product_stock` AS `product_stock`,`p`.`pdt_status` AS `pdt_status`,`c`.`ctg_id` AS `ctg_id`,`c`.`ctg_name` AS `ctg_name`,`c`.`ctg_des` AS `ctg_des`,`c`.`ctg_status` AS `ctg_status` from ((`products_price` `pp` join `products` `p` on(`pp`.`pdt` = `p`.`pdt_id`)) join `catagory` `c` on(`pp`.`ctg` = `c`.`ctg_id`)) ;

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
-- Indexes for table `products_price`
--
ALTER TABLE `products_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `products_price_ibfk_2` (`pdt`),
  ADD KEY `products_price_ibfk_3` (`ctg`);

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
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_price`
--
ALTER TABLE `products_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products_price`
--
ALTER TABLE `products_price`
  ADD CONSTRAINT `products_price_ibfk_2` FOREIGN KEY (`pdt`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_price_ibfk_3` FOREIGN KEY (`ctg`) REFERENCES `catagory` (`ctg_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
