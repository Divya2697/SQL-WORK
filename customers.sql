-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 08:54 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cdetails`
--

CREATE TABLE `cdetails` (
  `CustomerID` int(200) NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `ContactName` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdetails`
--

INSERT INTO `cdetails` (`CustomerID`, `CustomerName`, `ContactName`, `City`) VALUES
(1, 'DIKSHA', 'SHUBHAM', 'MOHALI'),
(2, 'DIVYA', 'SAM', 'MOHALI'),
(3, 'VIKAS', 'RIYA', 'CHANDIGARH'),
(4, 'GULSHAN', 'TANU', 'BADDI'),
(5, 'SUSHMITA', 'SHWE', 'CHANDIGARH'),
(6, 'DIKSHIT', 'SMRITI', 'PANCHKULA'),
(7, 'ANHAR', 'AMAN', 'BADDI');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(233) NOT NULL,
  `CustomerID` int(211) DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `OrderStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`, `OrderStatus`) VALUES
(102, 4, '2018-12-26', NULL),
(202, 3, '2018-10-11', NULL),
(224, 6, '2018-02-26', NULL),
(301, 7, '2018-09-03', NULL),
(403, 1, '2018-01-27', NULL),
(603, 8, '2018-02-12', NULL),
(701, 2, '2018-04-21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cdetails`
--
ALTER TABLE `cdetails`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `CustomerName` (`CustomerName`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD UNIQUE KEY `CustomerID` (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(233) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
