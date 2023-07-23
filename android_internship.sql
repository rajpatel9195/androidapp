-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2022 at 02:15 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android_internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `name`, `image`, `created_date`) VALUES
(1, 'Electronics', 'electronics.png', '2022-06-28 04:56:25'),
(2, 'Grocery', 'grocery.png', '2022-06-28 04:56:59'),
(3, 'Cloth', 'cloth.png', '2022-06-28 04:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `unit` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `categoryId`, `name`, `price`, `unit`, `description`, `image`, `created_date`) VALUES
(1, 2, 'Soap', 100, '12 Piece', 'a cleansing and emulsifying agent made usually by action of alkali on fat or fatty acids and consisting essentially of sodium or potassium salts of such acids', 'soap.png', '2022-07-06 08:52:45'),
(2, 3, 'Tshirt', 1200, '1 Piece', 'A T-shirt, or tee, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light, and inexpensive fabric and are easy to clean.', 'tshirt.png', '2022-07-06 08:52:51'),
(3, 3, 'Jeans', 1500, '1 Piece', 'Jeans are a type of pants traditionally made from denim (a kind of cotton fabric). The word most commonly refers to denim blue jeans. Jeans can be other colors, but they\'re most commonly blue. The defining feature of most jeans is that they\'re made out of some kind of denim or denim-like fabric.', 'jeans.png', '2022-07-06 08:52:56'),
(4, 1, 'TVs', 30000, '1 Item', 'A smart TV is a digital television that is, essentially, an Internet-connected, storage-aware computer specialized for entertainment. Smart TVs are available as stand-alone products but regular televisions can also be made smart through set-top boxes that enable advanced functions.', 'tv.png', '2022-07-06 08:52:59'),
(5, 1, 'ipode', 20000, '1 Item', 'An iPod is a portable MP3 and media player developed by Apple and available for the Mac and PC that first began being sold on October 23, 2001. The iPod is capable of holding up to 10,000 songs, is easy to use, and is very portable. All these features and its great look is why it\'s such a popular device.', 'ipod.png', '2022-07-06 08:53:03'),
(6, 1, 'Mobile', 25000, '1 Item', 'A smartphone is a handheld electronic device that provides a connection to a cellular network and the internet. The world\'s first smartphone was created by IBM in 1994, nicknamed Simon. 1. The introduction of smartphones dramatically altered the telecommunications sector.', 'phone.png', '2022-07-06 08:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` enum('Male','Female','Transgender') NOT NULL,
  `city` varchar(100) NOT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `password`, `gender`, `city`, `dob`, `created_date`) VALUES
(1, 'Admin', 'admin@gmail.com', 7433050707, 'Admin@007', 'Male', 'Ahmedabad', NULL, '2022-06-24 05:07:37'),
(4, 'Demo', 'demo@gmail.com', 9898981234, 'demo@123', 'Female', 'Ahmedabad', NULL, '2022-06-27 04:49:47'),
(8, 'Test', 'test@gmail.com', 9090901234, 'test@123', 'Male', 'Ahmedabad', NULL, '2022-06-27 05:03:25'),
(9, 'Test', 'test1@gmail.com', 9090901235, '123456', 'Male', 'Ahmedabad', NULL, '2022-07-04 05:34:42'),
(10, 'Test 15d', 'test15d@gmail.com', 9090901230, 'test@123', 'Male', 'Ahmedabad', '01-01-2000', '2022-07-05 08:45:32'),
(11, 'Android 15d', 'android15@gmail.com', 9123456789, 'android@123', 'Male', 'Ahmedabad', '01-07-1970', '2022-07-05 08:59:15'),
(12, '', '', 0, '', '', '', '', '2022-07-05 14:27:52'),
(13, 'test15day', 'tst15d@gmail.com', 9265742525, 'test15@123', 'Male', 'Jamnagar', '10-08-2002', '2022-07-05 19:01:03'),
(14, 'adcf', 'ajdj@gmail.com', 1234567890, 'qwertyui', 'Male', 'Ahmedabad', '06-07-2002', '2022-07-06 03:14:31'),
(15, 'krupal', 'krupal@gmail.com', 9328860115, 'Krupal@123', 'Male', 'Ahmedabad', '09-10-2001', '2022-07-06 05:12:49'),
(16, 'abc', 'abc@gmail.com', 1234567891, 'abc@123', 'Female', 'Ahmedabad', '06-07-2022', '2022-07-06 05:13:37'),
(17, 'mann', 'manndsylva@gmail.com', 7096000389, 'manndsylva', 'Male', 'Ahmedabad', '06-07-2022', '2022-07-06 08:37:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
