-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 03:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bookingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  `technician` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`, `technician`, `type`) VALUES
(7, 15, 2, '2021-05-08 10:25', 'APPROVED', '', '2021-05-08 18:14:39', '', ''),
(12, 19, 1, '2021-07-22 10:00', 'APPROVED', '', '2021-07-20 15:01:21', '', ''),
(13, 15, 1, '2021-07-20 10:10', 'PENDING', '', '2021-07-20 15:05:05', '', ''),
(14, 19, 1, '2021-07-05 10:10', 'APPROVED', '', '2021-07-21 17:10:56', '', ''),
(15, 19, 1, '2021-07-28 10:10', 'APPROVED', '', '2021-07-21 17:30:51', '', ''),
(16, 19, 1, '2020-07-30 10:10', 'APPROVED', '', '2021-07-21 17:39:03', '', ''),
(17, 19, 10, '2020-07-29 05:05', 'APPROVED', '', '2021-07-21 17:41:00', '', ''),
(26, 21, 5, '2021-08-02 10:10', 'PENDING', '', '2021-07-22 18:56:54', '', ''),
(27, 15, 5, '2021-07-06 10:10', 'PENDING', '', '2021-07-23 06:54:13', '', ''),
(28, 19, 5, '2021-07-01 09:09', 'APPROVED', '', '2021-07-23 13:18:12', '', ''),
(29, 15, 3, '2021-07-08 01:05', 'PENDING', '', '2021-07-23 14:41:31', '', ''),
(30, 15, 5, '2021-07-08 01:05', 'PENDING', '', '2021-07-23 14:42:06', '', ''),
(31, 15, 5, '2021-07-08 01:05', 'PENDING', '', '2021-07-23 14:43:11', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2021-05-06', 'Rest day', '2021-05-10 14:03:30'),
(6, '2021-07-23', 'rest day', '2021-07-21 10:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_technicians`
--

CREATE TABLE `tbl_technicians` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_technicians`
--

INSERT INTO `tbl_technicians` (`id`, `name`, `phone`, `email`, `type`, `status`) VALUES
(1, 'joe', '12345678', 'joe@gmail.com', 'aircon', 'delete'),
(2, 'carl', '12345633', 'carl@gmail.com', 'tv', 'delete'),
(3, 'ben', '156348956', 'ben@gmail.com', 'ref', 'delete'),
(4, 'Jay Doe', '156489666', 'jay@gmail.com', 'ref', 'active'),
(5, 'Rico Morales', '065896563', 'rico23@gmail.com', 'tv', 'active'),
(6, 'John Carlos De Asis', '86523456', 'carl@gmail.com', 'aircon', 'active'),
(7, 'James Clint Rivas', '986534566', 'jcr@gmail.com', 'ref', 'active'),
(8, 'Harold Morales', '03255694', 'hmorales@gmail.com', 'ref', 'active'),
(9, 'Manny  Pacman Pacquiao', '756662144', 'manny@gmail.com', 'tv', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `zip` int(4) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `city`, `province`, `zip`, `notes`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(15, 'admin', 'admin', '123 Gen Hughes st', 'Iloilo City', 'Iloilo', 3596, 'Defective aircon fan', '11223344', 'myemail@gmail.com', 'admin', 'active', '2016-12-20 10:00:08'),
(18, 'user105', 'CF3WL0NB', '363 oak st', 'boracay', 'aklan', 4786, 'aircon is not working', '0929445635', 'ddd@gmail.com', 'user', 'active', '2021-05-18 15:38:35'),
(19, 'user111', 'YDMZ5W1D', '555 gainsboro st', 'iloilo city', 'iloilo', 6545, 'aircon not working', '06545652222', 'user11@gmail.com', 'user', 'active', '2021-07-20 11:44:41'),
(21, 'newuser2', 'XFW5RZRF', '123 Walter St', 'iloilo city', 'iloilo', 1232, 'Refrigerator not working', '123456', 'haha@gmail.com', 'user', 'active', '2021-07-20 17:33:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_technicians`
--
ALTER TABLE `tbl_technicians`
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
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_technicians`
--
ALTER TABLE `tbl_technicians`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
