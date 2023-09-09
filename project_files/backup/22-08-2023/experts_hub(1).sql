-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2023 at 06:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
  `status` varchar(25) NOT NULL DEFAULT 'Active',
  `deleted` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accomodations`
--

INSERT INTO `tbl_accomodations` (`id`, `title`, `description`, `price`, `property_type`, `bedrooms`, `bathrooms`, `availability_for`, `location`, `contact_number`, `images`, `status`, `deleted`, `created_date`) VALUES
(2, 'testing', 'ready to move', '166000', 'Apartment', '2', '2', '2', 'hyd', '9000000000', 'uploads/accomodation/IMG_20211109_172453.jpg||', 'Active', 0, '2023-07-09 08:55:51'),
(3, 't1', 't2', '123', 'House', '3', '3', '3', 'mbnr', '123433212', 'uploads/accomodation/IMG_20211128_141518.jpg||', 'Active', 0, '2023-07-09 09:15:40'),
(4, 't3', 'rfciyrc', '1232132123', 'Townhouse', '3', '2', '4', 'uyfo', '123456', 'uploads/accomodation/IMG_20211109_172607.jpg||', 'Active', 0, '2023-07-09 09:19:43'),
(5, 'ujfv;uly', 'ytgcltygf', '34754', 'House', '3', '3', '1', 'gckh', 'fgyt', 'uploads/accomodation/IMG_20211109_1726071.jpg||', 'Active', 0, '2023-07-09 09:20:22'),
(6, 'gvohg', 'hgfvcoyt', 'khgvoytg', 'House', '2', '4', '1', 'jhvlu', 'gcg', 'uploads/accomodation/IMG_20211109_172709.jpg||', 'Active', 0, '2023-07-09 09:20:52'),
(7, 'ytf', 'rd', '1234567', 'House', '3', '3', '1', 'sdfghjk', 'erdtfyguhij', 'uploads/accomodation/IMG_20211109_1724533.jpg||uploads/accomodation/IMG_20211109_1727092.jpg||', 'Active', 0, '2023-07-09 18:13:08'),
(8, 'final test', 'ready to move', '120000', 'Townhouse', '3', '5', '4', 'hyd', '1234567890', 'uploads/accomodation/IMG_20211109_1724534.jpg||uploads/accomodation/IMG_20211109_172500.jpg||uploads/accomodation/IMG_20211109_1727093.jpg||uploads/accomodation/IMG_20211128_1415182.jpg||uploads/accomodation/IMG_20211128_141522.jpg||', 'Active', 0, '2023-07-09 18:15:32');

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
(1, 'wesxrcdtfvygbh', '2023-03-12', '23:45', ';lkjhgfd', 'asdfghjkl', '1234567890-', 1, 0, '2023-07-11 00:00:00');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_ride`
--
ALTER TABLE `tbl_ride`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
