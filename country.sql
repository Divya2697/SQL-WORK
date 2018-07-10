-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 09:24 AM
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
-- Database: `country`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ABC` ()  BEGIN
 DECLARE TOTAL INT DEFAULT 0 ;
 
 SELECT * FROM data1;
 
 END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DIVYA` (INOUT `KIRAN` VARCHAR(29), INOUT `HELLO` VARCHAR(23))  NO SQL
INSERT INTO data1 (COUNTRY,NAME) VALUES (KIRAN,HELLO)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GETDATA` ()  BEGIN
   SELECT *  FROM data1;
   END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `REST` (OUT `COUNTRYNAME` VARCHAR(255))  BEGIN
SELECT * FROM data ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `RESULT` (IN `COUNTRYNAME` VARCHAR(255))  BEGIN
SELECT * FROM data ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `RETURNDATA` ()  BEGIN 
SELECT * FROM data ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `XYZ` (INOUT `HELLO` VARCHAR(23))  SELECT * FROM data1 WHERE COUNTRY= HELLO$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `SNO` int(22) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OCCUPATION` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(244) DEFAULT NULL,
  `COUNTRYTYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`SNO`, `NAME`, `OCCUPATION`, `COUNTRY`, `COUNTRYTYPE`) VALUES
(1, 'DIVYA', 'SOFTWARE ENGINEER', 'INDIA', 'DEVELOPING'),
(2, 'MARC', 'DEVELOPER', 'USA', 'DEVELOPED'),
(3, 'NIYA', 'BUSINESSMAN', 'FRANCE', 'DEVELOPING'),
(4, 'ANA', 'PILOT', 'NEPAL', 'DEVELOPING'),
(5, 'MARIA', 'SOLDIER', 'CHINA', 'DEVELOPING');

-- --------------------------------------------------------

--
-- Table structure for table `data1`
--

CREATE TABLE `data1` (
  `SNO` int(22) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `OCCUPATION` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(244) DEFAULT NULL,
  `COUNTRYTYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data1`
--

INSERT INTO `data1` (`SNO`, `NAME`, `OCCUPATION`, `COUNTRY`, `COUNTRYTYPE`) VALUES
(1, 'RIA', 'DESIGNER', 'USA', 'DEVELOPED'),
(2, 'MEHAK', 'DEVELOPER', 'INDIA', 'DEVELOPING'),
(3, 'NEHARIKA', 'DBA', 'FRANCE', 'DEVELOPING'),
(4, 'AMMY', 'DATA ANALYSER', 'NEPAL', 'DEVELOPING'),
(5, 'APERNA', 'SOLDIER', 'INDIA', 'DEVELOPING'),
(6, 'KIRAN', NULL, NULL, NULL),
(7, 'SOFT', NULL, 'A2IT', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `data1`
--
ALTER TABLE `data1`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `SNO` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data1`
--
ALTER TABLE `data1`
  MODIFY `SNO` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
