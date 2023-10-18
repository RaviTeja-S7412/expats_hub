-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 07:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `experts_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_session`
--

CREATE TABLE `ci_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_session`
--

INSERT INTO `ci_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('hhcj9614v5l99intkvh5pcpo6bdoi0k8', '::1', 1684989174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638343938393136393b);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accomodations`
--

CREATE TABLE `tbl_accomodations` (
  `id` int(50) NOT NULL,
  `title` varchar(555) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(55) NOT NULL,
  `property_type` varchar(55) NOT NULL,
  `bedrooms` varchar(11) NOT NULL,
  `bathrooms` varchar(11) NOT NULL,
  `availability_for` varchar(25) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `images` text NOT NULL,
  `video` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `deleted` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accomodations`
--

INSERT INTO `tbl_accomodations` (`id`, `title`, `description`, `price`, `property_type`, `bedrooms`, `bathrooms`, `availability_for`, `location`, `contact_number`, `images`, `video`, `status`, `deleted`, `created_date`) VALUES
(1, 'dfhvj', 'hghjg', '10000', 'House', '1', '1', '1', 'hyderabad', '8521479630', '', '', '1', 0, '2023-09-18 17:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accomodation_request`
--

CREATE TABLE `tbl_accomodation_request` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ride`
--

CREATE TABLE `tbl_ride` (
  `id` int(50) NOT NULL,
  `name` varchar(555) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(55) NOT NULL,
  `pickup` varchar(100) NOT NULL,
  `drop` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ride`
--

INSERT INTO `tbl_ride` (`id`, `name`, `date`, `time`, `pickup`, `drop`, `contact_number`, `status`, `deleted`, `created_date`) VALUES
(1, 'wesxrcdtfvygbh', '2023-03-12', '23:45', ';lkjhgfd', 'asdfghjkl', '1234567890-', 1, 0, '2023-07-11 00:00:00'),
(2, 'hfjkeh', '2023-08-23', '20:49', 'djfhjkh', 'jkhkjdfhjk', '1356454544', 1, 0, '2023-08-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ride_book`
--

CREATE TABLE `tbl_ride_book` (
  `id` int(50) NOT NULL,
  `name` varchar(555) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(55) NOT NULL,
  `pickup` varchar(100) NOT NULL,
  `drop` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `details` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ride_book`
--

INSERT INTO `tbl_ride_book` (`id`, `name`, `date`, `time`, `pickup`, `drop`, `contact_number`, `details`, `email`, `status`, `deleted`, `created_date`) VALUES
(1, 'sdfgh', '2023-07-04', '04:05', 'dfghjk', 'xdcfvgbhnj', 'xdcfvgbhnj', 'efgbhnj', 'sxdcfvgbhnj', 1, 0, '2023-07-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(15) NOT NULL,
  `otp` int(11) NOT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `country_code` varchar(25) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Inactive',
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `otp`, `first_name`, `last_name`, `address`, `postal_code`, `email`, `country_code`, `mobile_number`, `password`, `status`, `deleted`, `created_date`, `updated_date`) VALUES
(1, 240863, 'svbhj', 'hhjg', 'hjghg', 'gjhghj', 'sakaraviteja.s@gmail.com', '1', 'jskdhjkh', '08a9f2c21b605d0d0a7ea749348d25f1b412915702773d6e1d169ca01adac9e24297a3251233d176b1a5b5048b718c49cced3f76bdc7d2022b60a61227d574adEdeYqL9uOobP6ph6nYW4fVWCzTeZrqyG', 'Active', 0, '2023-05-31 19:45:09', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accomodations`
--
ALTER TABLE `tbl_accomodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accomodation_request`
--
ALTER TABLE `tbl_accomodation_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ride_book`
--
ALTER TABLE `tbl_ride_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accomodations`
--
ALTER TABLE `tbl_accomodations`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_accomodation_request`
--
ALTER TABLE `tbl_accomodation_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ride_book`
--
ALTER TABLE `tbl_ride_book`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
