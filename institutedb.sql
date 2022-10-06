-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 01:45 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institutedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admission_data`
--

CREATE TABLE `tbl_admission_data` (
  `id` int(11) NOT NULL,
  `studentFname` varchar(25) NOT NULL,
  `studentLname` varchar(25) NOT NULL,
  `studentDob` varchar(10) NOT NULL,
  `parentName` varchar(50) NOT NULL,
  `className` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(15) NOT NULL,
  `pin` int(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `mobile` int(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `transportService` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_details_clients`
--

CREATE TABLE `tbl_contact_details_clients` (
  `Contact_id` int(11) NOT NULL,
  `Contact_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Contact_Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Contact_Mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Contact_Message` text COLLATE utf8_unicode_ci NOT NULL,
  `Contact_Client_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_card_id` int(11) NOT NULL,
  `Created_Date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_contact_details_clients`
--

INSERT INTO `tbl_contact_details_clients` (`Contact_id`, `Contact_name`, `Contact_Email`, `Contact_Mobile`, `Contact_Message`, `Contact_Client_Name`, `e_card_id`, `Created_Date`, `status`) VALUES
(1, '', '', '', '', '', 0, '2022-04-17 14:52:27', 1),
(2, 'saquib', 's@gmail.com', '846592317', 'test', 'Education and Training', 1, '2022-04-17 15:10:18', 1),
(3, 'ss', 's@gmail.com', '4667896876', 'test', 'My Education Foundation', 1, '2022-04-17 15:11:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe_db_data`
--

CREATE TABLE `tbl_subscribe_db_data` (
  `Subscriber_id` int(11) NOT NULL,
  `Subscribe_Email` varchar(100) NOT NULL,
  `Subscribe_Date` varchar(100) NOT NULL,
  `Subscribe_Client` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscribe_db_data`
--

INSERT INTO `tbl_subscribe_db_data` (`Subscriber_id`, `Subscribe_Email`, `Subscribe_Date`, `Subscribe_Client`, `status`) VALUES
(1, 's@gmail.com', '2022-04-17 15:16:26', 'My Education Foundation', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admission_data`
--
ALTER TABLE `tbl_admission_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_details_clients`
--
ALTER TABLE `tbl_contact_details_clients`
  ADD PRIMARY KEY (`Contact_id`);

--
-- Indexes for table `tbl_subscribe_db_data`
--
ALTER TABLE `tbl_subscribe_db_data`
  ADD PRIMARY KEY (`Subscriber_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admission_data`
--
ALTER TABLE `tbl_admission_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact_details_clients`
--
ALTER TABLE `tbl_contact_details_clients`
  MODIFY `Contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subscribe_db_data`
--
ALTER TABLE `tbl_subscribe_db_data`
  MODIFY `Subscriber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
