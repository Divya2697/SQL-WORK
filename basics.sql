-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 10:29 AM
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
-- Database: `basics`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `divya` ()  select * from employee
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `details`
-- (See below for the actual view)
--
CREATE TABLE `details` (
`NAME` varchar(55)
,`GRADE` varchar(20)
,`CITY` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `SNO` int(20) NOT NULL,
  `NAME` varchar(87) DEFAULT NULL,
  `SALARY` int(240) DEFAULT NULL,
  `EXPERIENCE` int(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`SNO`, `NAME`, `SALARY`, `EXPERIENCE`) VALUES
(1, 'DIKSHA', 3900, 3),
(2, 'SHWE', 5900, 2),
(3, 'SONA', 4500, 4),
(4, 'KAKULI', 5000, 3),
(5, 'NEHA', 4000, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getdata`
-- (See below for the actual view)
--
CREATE TABLE `getdata` (
`NAME` varchar(80)
,`MARKS` int(80)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `impdata`
-- (See below for the actual view)
--
CREATE TABLE `impdata` (
`GRADE` varchar(20)
,`NAME` varchar(80)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `BUPIN` varchar(12) DEFAULT NULL,
  `NAME` varchar(55) DEFAULT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `GRADE` varchar(20) DEFAULT NULL,
  `CITY` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`BUPIN`, `NAME`, `SURNAME`, `GRADE`, `CITY`) VALUES
('UEC', 'SHWE', 'SHARMA', 'A', 'MOHALI'),
('UEC', 'SUSH', 'SHARMA', 'A', 'PANCHKULA'),
('UEC', 'GULSHAN', 'SHARMA', 'B', 'CHANDIGARH'),
('UCS', 'DIKSHA', 'BHATIA', 'C', 'KANGRA'),
('UCS ', 'SONA', 'DHIMAN', 'B', 'KANGRA'),
('UCS', 'DIVYA', 'RANA', 'A', 'MOHALI'),
('UCS', 'VISHAB', 'GUPTA', 'D', 'BADDI'),
('UCS', 'DANISH', 'BHATIA', 'A', 'PUNJAB'),
('UCS', 'BHANU', 'SHARMA', 'C', 'SHIMLA'),
('UCS', 'NEHU', 'CHAUHAN', 'A', 'HAMIRPUR');

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `SNO` int(90) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `MARKS` int(80) NOT NULL,
  `GRADE` varchar(89) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`SNO`, `NAME`, `MARKS`, `GRADE`) VALUES
(1, 'APERNA', 90, 'A'),
(2, 'DIKSHA', 67, 'D'),
(3, 'NEHA', 85, 'B'),
(4, 'PRIYANKA', 56, 'D');

-- --------------------------------------------------------

--
-- Structure for view `details`
--
DROP TABLE IF EXISTS `details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `details`  AS  select `student`.`NAME` AS `NAME`,`student`.`GRADE` AS `GRADE`,`student`.`CITY` AS `CITY` from `student` where (`student`.`GRADE` = 'A') ;

-- --------------------------------------------------------

--
-- Structure for view `getdata`
--
DROP TABLE IF EXISTS `getdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getdata`  AS  select `student2`.`NAME` AS `NAME`,`student2`.`MARKS` AS `MARKS` from `student2` group by `student2`.`SNO` desc ;

-- --------------------------------------------------------

--
-- Structure for view `impdata`
--
DROP TABLE IF EXISTS `impdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `impdata`  AS  select `student`.`GRADE` AS `GRADE`,`student2`.`NAME` AS `NAME` from (`student2` join `student`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`SNO`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `SNO` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `SNO` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
