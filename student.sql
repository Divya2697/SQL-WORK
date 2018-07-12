-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 09:51 AM
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
-- Database: `student`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AGRADE` ()  BEGIN
SELECT NAME,GRADE FROM studentacademics
WHERE GRADE ="A" ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DUES` (INOUT `NO DUES` VARCHAR(23))  BEGIN
SELECT NAME FROM accounts
WHERE AMOUNT_PENDING != 0;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GRADES` ()  BEGIN
SELECT GRADE FROM studentacademics
WHERE DIVISON="NIL";
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NAMES` ()  BEGIN
SELECT NAME FROM accounts
WHERE `SCHOLARSHIP_GIVEN` = "YES";
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `SNO` int(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ROLLNO` int(255) DEFAULT NULL,
  `TOTAL_FEES` int(255) DEFAULT NULL,
  `FEES_PAID` int(255) DEFAULT NULL,
  `AMOUNT_PENDING` int(255) DEFAULT NULL,
  `SCHOLARSHIP_GIVEN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`SNO`, `NAME`, `ROLLNO`, `TOTAL_FEES`, `FEES_PAID`, `AMOUNT_PENDING`, `SCHOLARSHIP_GIVEN`) VALUES
(1, 'RIYA', 20, 20000, 5000, 0, 'YES'),
(2, 'KARAN', 21, 20000, 19000, 1000, 'NO'),
(3, 'MEGHA', 22, 20000, 20000, 0, 'NO'),
(4, 'PRIYANKA', 23, 20000, 12000, 8000, 'NO'),
(5, 'EHAN', 24, 20000, 5000, 15000, 'NO'),
(6, 'ISHA', 25, 20000, 15000, 0, 'YES'),
(7, 'AJAY', 26, 20000, 10000, 0, 'YES'),
(8, 'REEHAN', 27, 20000, 10000, 10000, 'NO'),
(9, 'SAHIL', 28, 20000, 13000, 7000, 'NO'),
(10, 'ARYA', 29, 20000, 8000, 12000, 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `studentacademics`
--

CREATE TABLE `studentacademics` (
  `SNO` int(67) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ROLLNO` int(255) DEFAULT NULL,
  `MARKS` int(255) DEFAULT NULL,
  `GRADE` varchar(255) DEFAULT NULL,
  `DIVISON` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentacademics`
--

INSERT INTO `studentacademics` (`SNO`, `NAME`, `ROLLNO`, `MARKS`, `GRADE`, `DIVISON`) VALUES
(1, 'RIYA', 20, 95, 'A', 'FIRST'),
(2, 'KARAN', 21, 65, 'D', 'NIL'),
(3, 'MEGHA', 22, 56, 'D', 'NIL'),
(4, 'PRIYANKA', 23, 74, 'C', 'NIL'),
(5, 'EHAN', 24, 80, 'B', 'NIL'),
(6, 'ISHA', 25, 86, 'A', 'THIRD'),
(7, 'AJAY', 26, 92, 'A', 'SECOND'),
(8, 'REEHAN', 27, 80, 'B', 'NIL'),
(9, 'SAHIL', 28, 74, 'C', 'NIL'),
(10, 'ARYA', 29, 77, 'B', 'NIL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `studentacademics`
--
ALTER TABLE `studentacademics`
  ADD UNIQUE KEY `SNO` (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `SNO` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentacademics`
--
ALTER TABLE `studentacademics`
  MODIFY `SNO` int(67) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
