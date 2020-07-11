-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 02:37 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCHS'),
(6, 'DINNER'),
(7, 'BEVERAGES');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `com_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `lastname`, `firstname`, `user`, `password`, `com_password`) VALUES
(1, 'qwer', 'qwert', 'q@ww', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Pancake Tacos with Cheese and ', 400, 'upload/pancake_breakfast_tacos400_1539096003.jpg'),
(15, 4, 'Egg Baked In Tomatoes', 310, 'upload/eggs_in_tomatoes_1539095833.jpeg'),
(16, 5, 'Beef & Broccoli Stir-Fry', 360, 'upload/brocollibeef_1539096616_1539097842.jpg'),
(17, 5, 'Spaghetti', 400, 'upload/spagetti_1539097965.png'),
(18, 7, 'Mojito', 200, 'upload/http _cdn.cnn.com_cnnnext_dam_assets_170224172523-mojito_1539097580.jpg'),
(19, 7, 'Set On The Beach', 250, 'upload/http _cdn.cnn.com_cnnnext_dam_assets_170227111426-sex-on-the-beach-cocktail_1539097662.jpg'),
(20, 6, 'Slow Cooker Orange Chicken ', 450, 'upload/slow-cooker-chicken-recipes-orange-1533576720_1539097827.jpg'),
(21, 4, 'Eggs in a Basket', 375, 'upload/egg_in_a_hole_recipe400_1539096098.jpg'),
(22, 4, 'Full English Breakfast', 600, 'upload/1145_1539096763.jpg'),
(23, 7, 'Coca-Cola', 80, 'upload/cocacola_1539097796.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`, `number`, `address`) VALUES
(39, 'wong', 1125, '2019-03-23 10:10:32', '23456789', ''),
(40, 'arc', 760, '2019-03-23 10:14:43', 'Q23456789', ''),
(41, 'qwerty', 1200, '2019-03-24 08:07:09', '', ''),
(42, 'qwert', 720, '2019-03-24 21:47:45', '1234567', ''),
(43, 'arc', 2240, '2019-03-24 22:39:55', '0921864333', ''),
(44, 'qwert', 2120, '2019-03-25 00:10:05', '2345678', 'WERTYUI'),
(45, 'qwe', 600, '2019-03-25 06:40:47', '1234', 'wsdcv'),
(46, 'qwer', 620, '2019-03-25 21:55:02', '12345', 'wertg'),
(47, 'qwert qwer', 1800, '2019-03-26 22:37:06', '2345678', 'Bacolod city'),
(48, 'qwert qwer', 1060, '2019-03-26 22:40:57', '2345678', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3),
(17, 10, 15, 2),
(18, 11, 21, 3),
(19, 12, 22, 3),
(20, 13, 16, 4),
(21, 14, 17, 2),
(22, 15, 17, 1),
(23, 16, 23, 1),
(24, 17, 19, 1),
(25, 18, 15, 2),
(26, 19, 21, 33),
(27, 20, 15, 2),
(28, 21, 22, 2),
(29, 23, 15, 5),
(30, 24, 15, 5),
(31, 25, 15, 3),
(32, 27, 16, 2),
(33, 29, 18, 2),
(34, 30, 21, 4),
(35, 31, 16, 2),
(36, 32, 14, 2),
(37, 33, 16, 2),
(38, 34, 19, 3),
(39, 35, 21, 3),
(40, 36, 17, 0),
(41, 36, 23, 0),
(42, 37, 15, 1),
(43, 37, 18, 1),
(44, 38, 21, 2),
(45, 39, 21, 3),
(46, 40, 22, 1),
(47, 40, 23, 2),
(48, 41, 22, 2),
(49, 42, 16, 2),
(50, 43, 14, 2),
(51, 43, 16, 4),
(52, 44, 15, 2),
(53, 44, 21, 4),
(54, 45, 22, 1),
(55, 46, 15, 2),
(56, 47, 22, 3),
(57, 48, 20, 2),
(58, 48, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(3, 'Customer', 'Customer 2', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0),
(4, 'Customer', 'Customer 3', 'user3', 'pass3', '', '', 9898000003, 0, 0),
(5, 'Customer', 'Customer 4', 'user4', 'pass4', '', '', 9898000004, 0, 1),
(6, 'Customer', 'wongkevin', 'wong@yahoo', '11111', NULL, NULL, 123456787565, 0, 0),
(7, 'Customer', 'qwerww', 'wwww@www', '1234567890', NULL, NULL, 123456789, 0, 0),
(8, 'Customer', '', '', 'wong1', NULL, NULL, 12345678, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
