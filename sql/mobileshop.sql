-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 05:00 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `trans_no` varchar(200) NOT NULL,
  `currency` varchar(300) NOT NULL,
  `billing_first_nm` varchar(400) NOT NULL,
  `billing_last_nm` varchar(400) NOT NULL,
  `billing_company` varchar(500) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `billing_phone` varchar(100) NOT NULL,
  `billing_address` text NOT NULL,
  `billing_postal` varchar(100) NOT NULL,
  `billing_ville` varchar(200) NOT NULL,
  `shipping_first_nm` varchar(300) NOT NULL,
  `shipping_last_nm` varchar(300) NOT NULL,
  `shipping_company` varchar(300) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_postal` varchar(200) NOT NULL,
  `shipping_ville` varchar(400) NOT NULL,
  `shipping_notes` text NOT NULL,
  `product_nm1` varchar(500) NOT NULL,
  `product_qty_1` int(11) NOT NULL,
  `product_price_1` int(11) NOT NULL,
  `product_nm_2` varchar(500) NOT NULL,
  `product_qty_2` int(11) NOT NULL,
  `product_price_2` int(11) NOT NULL,
  `pro_nm_3` varchar(500) NOT NULL,
  `pro_qty_3` int(11) NOT NULL,
  `product_price_3` int(11) NOT NULL,
  `product_total` int(249) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `payment_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `trans_no`, `currency`, `billing_first_nm`, `billing_last_nm`, `billing_company`, `email_id`, `billing_phone`, `billing_address`, `billing_postal`, `billing_ville`, `shipping_first_nm`, `shipping_last_nm`, `shipping_company`, `shipping_address`, `shipping_postal`, `shipping_ville`, `shipping_notes`, `product_nm1`, `product_qty_1`, `product_price_1`, `product_nm_2`, `product_qty_2`, `product_price_2`, `pro_nm_3`, `pro_qty_3`, `product_price_3`, `product_total`, `payment_status`, `payment_date`) VALUES
(11, '1H0528137M3269451', 'EUR', 'Nirav', 'Suthar', '', 'dhrup.niravsuthar@gmail.com', '', 'demo address', '390020', 'vadodara', '', '', '', '', '', '', '', 'SÃƒâ€°ANCE PHOTOS POUR ANIMAUX', 99, 1, 'SÃƒâ€°ANCE PHOTOs portrait de famille', 1, 116, '', 0, 0, 215, 'Pending', '2017-12-20'),
(12, '1H0528137M3269451', 'EUR', 'Nirav', 'Suthar', '', 'dhrup.niravsuthar@gmail.com', '', 'demo address', '390020', 'vadodara', '', '', '', '', '', '', '', 'SÃƒâ€°ANCE PHOTOS POUR ANIMAUX', 99, 1, 'SÃƒâ€°ANCE PHOTOs portrait de famille', 1, 116, '', 0, 0, 215, 'Pending', '2017-12-20'),
(10, '1H0528137M3269451', 'EUR', 'Nirav', 'Suthar', '', 'dhrup.niravsuthar@gmail.com', '', 'demo address', '390020', 'vadodara', '', '', '', '', '', '', '', 'SÃƒâ€°ANCE PHOTOS POUR ANIMAUX', 99, 1, 'SÃƒâ€°ANCE PHOTOs portrait de famille', 1, 116, '', 0, 0, 215, 'Pending', '2017-12-20'),
(9, '9RK66503E8011283B', 'EUR', 'Nirav', 'Suthar', '', 'dhrup.niravsuthar@gmail.com', '', 'demo address', '390020', 'vadodara', '', '', '', '', '', '', '', 'SÃƒâ€°ANCE PHOTOS POUR ANIMAUX', 6, 3, 'SEANCE PHOTOS POUR ENFANT ET BEBE', 2, 4, '', 0, 0, 10, 'Pending', '2017-12-18'),
(13, '8A740024CP794594E', 'EUR', 'Nirav', 'Suthar', '', 'dhrup.niravsuthar@gmail.com', '', 'demo address', '390020', 'vadodara', '', '', '', '', '', '', '', ' SÃƒâ€°ANCE PHOTOS POUR  Cheval', 89, 1, '', 0, 0, '', 0, 0, 89, 'Pending', '2017-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_setting`
--

CREATE TABLE `paypal_setting` (
  `id` int(11) NOT NULL,
  `business_email` varchar(100) NOT NULL,
  `paypal_url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypal_setting`
--

INSERT INTO `paypal_setting` (`id`, `business_email`, `paypal_url`) VALUES
(1, 'dhrup.prakashsuthar-facilitator@gmail.com', 'https://www.sandbox.paypal.com/cgi-bin/webscr');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(250) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `cat_id`) VALUES
(1, 'iphone x', '500', 1),
(2, 'Pixel 2', '500', 4),
(3, 'Samsung note 9', '500', 2),
(4, 'Lenovo z2', '500', 7),
(5, 'Oneples 6', '500', 3),
(6, 'Redmi 4 note', '49', 5),
(7, 'Honor 8x', '49', 6),
(8, 'Oppo f9', '49', 8),
(9, 'iphone 8', '49', 1),
(10, 'Samsung a9', '49', 2),
(11, 'Oneplus 6t', '49', 3),
(12, 'Pixel 3', '50', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Oneplus'),
(4, 'Pixel'),
(5, 'Redmi'),
(6, 'Honor'),
(7, 'Lenovo'),
(8, 'Oppo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(18) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `email`, `password`) VALUES
(1, 'Nirali', 'niralikanani04@gmail.com', 'admin@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `paypal_setting`
--
ALTER TABLE `paypal_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paypal_setting`
--
ALTER TABLE `paypal_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
