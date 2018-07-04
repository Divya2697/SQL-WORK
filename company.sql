-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 08:59 AM
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
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `newemployees`
--

CREATE TABLE `newemployees` (
  `EID` int(233) DEFAULT NULL,
  `ENAME` varchar(233) NOT NULL,
  `EPOST` varchar(255) DEFAULT NULL,
  `ESALARY` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newemployees`
--

INSERT INTO `newemployees` (`EID`, `ENAME`, `EPOST`, `ESALARY`) VALUES
(236, 'OMESH', 'DESIGNER', 40000),
(233, 'OSHIN', 'PROGRAMMER', 25000),
(235, 'SAM', 'PROGRAMMER', 25000),
(238, 'SHREYA', 'DESIGNER', 40000),
(237, 'SHWETANK', 'DEVELOPER', 30000),
(234, 'SUSHANT', 'DEVELOPER', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `oldemployees`
--

CREATE TABLE `oldemployees` (
  `EID` int(233) DEFAULT NULL,
  `ENAME` varchar(233) NOT NULL,
  `EPOST` varchar(255) DEFAULT NULL,
  `ESALARY` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oldemployees`
--

INSERT INTO `oldemployees` (`EID`, `ENAME`, `EPOST`, `ESALARY`) VALUES
(127, 'APERNA', 'DESIGNER', 40000),
(124, 'NARINDER', 'DBA', 60000),
(126, 'NEHA', 'DEVELOPER', 45000),
(123, 'RAHUL', 'PROGRAMMER', 50000),
(125, 'SHUBHAM', 'DESIGNER', 60000),
(122, 'SURESH', 'DESIGNER', 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newemployees`
--
ALTER TABLE `newemployees`
  ADD PRIMARY KEY (`ENAME`),
  ADD UNIQUE KEY `EID` (`EID`);

--
-- Indexes for table `oldemployees`
--
ALTER TABLE `oldemployees`
  ADD PRIMARY KEY (`ENAME`),
  ADD UNIQUE KEY `EID` (`EID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
