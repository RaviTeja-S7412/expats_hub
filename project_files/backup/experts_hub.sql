-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 07:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
(1, '5bhk', '5bhk individual house near by Northwest 1550', '1550', 'House', '4', '4', '5', '710 N walnut', '6605288495', '[\"uploads\\/accomodation\\/pass.jpg\"]', 'Active', 0, '2023-06-01 08:24:10'),
(2, '5bhk party house', 'near by walk building to the college ', '1650', 'House', '5', '2', '1', '710 N walnut', '6605282111', '[\"uploads\\/accomodation\\/pass1.jpg\"]', 'Active', 0, '2023-06-01 15:44:03'),
(3, 'forest cove apartments', 'vengal babu subscribe', '1000', 'Apartment', '2', '2', '2', 'maryville', '9876543210', '[]', 'Active', 0, '2023-06-01 15:46:18'),
(4, '710 N walnut 5bhk house', 'Near the walk building and 2 mins  to college', '1650', 'House', '4', '2', '5', '710 N walnut, maryville', '6605288495', '[\"uploads\\/accomodation\\/pass2.jpg\"]', 'Active', 0, '2023-06-01 18:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(15) NOT NULL,
  `otp` varchar(11) NOT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `address` text NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Inactive',
  `deleted` int(11) NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `country_code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `otp`, `first_name`, `last_name`, `address`, `postal_code`, `email`, `mobile_number`, `password`, `status`, `deleted`, `created_date`, `updated_date`, `country_code`) VALUES
(1, '0', 'Ravi', 'Teja', 'Langar Houz', '509601', 'sakaraviteja.s@gmail.com', '7416232629', '84815ce5b422d938ad7c8ed4ee55f2aea85f0136e78431b28c89195339b729d8c9ccbf1c44693931c154adf3db0b125fd67a46ccb1a2c26802949809e629eff6eOFurCV5ed5g47Bj0shgClpLBMi6hFSY', 'Active', 0, '2023-05-25 07:13:57', '0000-00-00 00:00:00', ''),
(5, '0', 'Vishal', 'GOVATHOTI', 'Sangam Jagarlamudhi Village ,Tenali Manal , Guntur District , Andhra Pradesh 522213', '522213', 'vishalmork176@gmail.com', '9849784329', 'da0415373c1d992b30825b69396ae3236a756d66ea7ea59cc0aa4dd86a8a169ee55543926688b158cf86941057426c9a18e808ddc28a416d0b2e786f359762da4Ouc3MArItIMdZbnC8Smst+dqfu9AwA7', 'Active', 0, '2023-05-25 15:59:20', '0000-00-00 00:00:00', ''),
(6, '532864', 'kpk', 'kpk', '621 E 7TH ST APT 8', '64468', 'kpk@gmail.com', '9876543210', 'aa55dc80c63f9519158f469008aa5fc533b6cbcadc6a15bf37c51ecac371ecf108e58d90d99f56f22ca2e20ab0c12b2f1886e64755f442c726318aed17d437a36MzDmNnSBy+fpRhfMBOmTzO2aecPOr02', 'Active', 0, '2023-05-25 16:01:07', '0000-00-00 00:00:00', ''),
(7, '0', 'Kasi Viswanath', 'Nukala', '621  e', '64468', 'nukalakasiviswanath@gmail.com', '8167155703', '5a1df43b20eda94994243ca5a4f10c6bc553ab8542a196dcc820fb6889cd48fa5fe46f50d8875e9465982f0339e532d1584785dfc95ae54debe25c2cb9814b5fyzg0h6WfbPXwuDUR0oN0xQ==', 'Active', 0, '2023-05-25 16:01:36', '0000-00-00 00:00:00', ''),
(8, '0', 'Ganesh Raghunadh ', 'Mukkapati', '212 6th Apt Park Avenue', '64468', 'S556518@nwmissouri.edu', '6603519223', '596dfb30b31919e76cbbb7d2ef1dff5584c7960ba6fa09724577c5994e4d64ae897e63d59c577e3b60bfaf47b36a8cece0b7716f7ab121a1e987ace8620e4a6aGdVok0ycQwtyfGOj492Z37deX3qU24CH', 'Active', 0, '2023-05-25 16:01:41', '0000-00-00 00:00:00', ''),
(9, '0', 'navya', 'mutukura', '602 e 7th street ', '64468', 'navya.s555086@gmail.com', '6605287312', '00f05d6bc1899d83fbaf7aaec9a6dec62d569f91948309a89028a663ec4ea9371fd2494b92e6e6382dc6ded8008892ec1633330a3fe137f7d72cbd5f28cb272dRNiuWFGnLPguzneegTHd25vMYkbMZAxM', 'Active', 0, '2023-05-25 16:48:32', '0000-00-00 00:00:00', ''),
(10, '0', 'Anvesh', 'K', '612 mulburry', '64468', 'anveshk4214@gmail.com', '6605287331', 'c8f456fe30d3ad768722a4fb0b5a0059aaeb75d3ceaa0bd9a43393059fefc1b058a97e5b007f3d223a7e2d5bb6ba53a9df1dcdc71343277d48d04c17421f18b2xNKun/OH68ChddKETyYs2Kmo++YtNznt', 'Active', 0, '2023-05-25 17:33:20', '0000-00-00 00:00:00', ''),
(11, '439708', 'jkshfk', 'khdsfjksh', 'jhjdskh', 'jhjdskh', 'sakaraviteja.s@gmail.com', 'sdgah', 'c05b7a6d6a0fd40d3262cbf6b3f49c9e55aef4bf8727e9e4d266979019f037a306b761be5c66797a07ed47fd1f4dec82b778a95bcafc7088837668537d6fa23eaX9O9GhVWetmzCKUTI4XdBXoJHbENn1V', 'Inactive', 0, '2023-05-31 08:02:29', '0000-00-00 00:00:00', '44'),
(12, '172630', 'RAJA', 'GOVATHOTI', 'Sangam Jagarlamudhi Village ,Tenali Manal , Guntur District , Andhra Pradesh 522213', '522213', 'vishalmork@gmail.com', '9849784329', 'f3d3a3183a2a1db00b48bbe8d928a8bf04ecba7c4120f6008e626063270e62596534b7cecfaf00958857d2fb5300deba48c0d2dc283171930ac4d1c256c596d535AvSmmPyiP/HkYYmPkgtcZsuAhQCz+7', 'Inactive', 0, '2023-05-31 16:23:13', '0000-00-00 00:00:00', '91'),
(13, '342957', 'RAJA', 'GOVATHOTI', 'Sangam Jagarlamudhi Village ,Tenali Manal , Guntur District , Andhra Pradesh 522213', '522213', 'vishalmork44@gmail.com', '9849784329', 'dff57787c535478dcb3f5d8aeeecd67fc0f61479345cfa4cc3fbba0826ed12be435f2f0b7b9c1569bfcc21c36579def3fa25587c06e77f02767cf12b2e0577c4ooyYSdwvqh2Kb8giJnm2OMKSR11pLB5T', 'Active', 0, '2023-05-31 16:23:45', '0000-00-00 00:00:00', '91'),
(14, '174082', 'Kasi Viswanath', 'Nukala', '621  e', '64468', 'kasi11viswanath@gmail.com', '8167155703', 'ffeb5d3cad3331be7fa7197d791cf0288f6ad84a69898c723ce82dd2e756dab3aa5c5d1c1f8b65e21b708d5e68f99736be0fb556d30021bf25b0f01ce5ead972Fj5wDpm0aTaVYymTFnbnDxZaax3vqX7d', 'Inactive', 0, '2023-05-31 16:30:04', '0000-00-00 00:00:00', '54'),
(15, '586719', 'Kasi Viswanath', 'Nukala', '621  e', '64468', 'kasiviswanath575@gmail.com', '8167155703', 'de9145c2294c758c22cfcd1c60f0b49fb292a56c24981e59f7a99d895f50e5f95972596f8b534a94807772ee51d97b5d2d161399fb672439801efab86ea7ec5fuPQa8JjcUX5VPCS3oMbQqJBGU4BP667C', 'Active', 0, '2023-05-31 16:30:44', '0000-00-00 00:00:00', '54'),
(16, '795682', 'PRAVEEN', 'KRISHNAMANENI', '621 E 7TH ST APT 8', '64468', 'kpksai791@gmail.com', '9515530666', '114436a7baff49db8c67792bc4ee1bee0f4baebdb0e66d88484535cfa3090eae4bc9b2ebbd25611a0cd1917c165829fe908938fb4d378cfd64a670730b371c50M1VFQTk/zyHsM/ZWFTOsvBB5vI/Ix4P4', 'Active', 0, '2023-06-01 15:43:40', '0000-00-00 00:00:00', '91'),
(17, '701396', 'praveen', 'kumar', 'xy city', '64468', 'praveenkumarkrishnamaneni@gmail.com', '9515530604', '5b7a4736d469df4399123fa073a2d51686454da8da715a777a8b2a00d8e6bdc55b8f9e2567caef5e33b7243fec88ffcf648923b0fef13a0373ce094185412362pqNYQhhLHc9xY2CiMr7yHuQm4liZ9HkP', 'Active', 0, '2023-06-01 17:56:34', '0000-00-00 00:00:00', '91');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accomodations`
--
ALTER TABLE `tbl_accomodations`
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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
