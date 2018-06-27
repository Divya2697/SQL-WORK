-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 08:45 AM
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
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` varchar(89) DEFAULT NULL,
  `SNAME` varchar(67) DEFAULT NULL,
  `SCLASS` varchar(89) DEFAULT NULL,
  `ROLLNO` int(67) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SNAME`, `SCLASS`, `ROLLNO`) VALUES
('S16', 'DIVYA', 'CSE6', 16),
('S59', 'DIKSHA', 'CSE6', 59),
('S58', 'KRITI', 'CSE4', 58),
('S30', 'NEHA', 'CSE2', 30),
('S63', 'BHANU', 'CSE4', 63),
('S90', 'DANISH', 'CSE6', 90),
('S19', 'MUDDIT', 'CSE4', 19),
('S40', 'RAGHAV', 'CSE2', 40),
('S17', 'NITISH', 'CSE4', 17),
('S76', 'NEHU', 'CSE4', 76);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` varchar(132) NOT NULL,
  `TNAME` varchar(22) DEFAULT NULL,
  `TCLASS` varchar(78) DEFAULT NULL,
  `SID` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `TNAME`, `TCLASS`, `SID`) VALUES
('T20', 'RAJESH', 'CSE6', 'S60'),
('T21', 'RUCHIKA', 'CSE6', 'S59'),
('T22', 'NANCY', 'CSE4', 'S58'),
('T23', 'ADITI', 'CSE2', 'S20'),
('T24', 'ASHISH', 'CSE4', 'S63'),
('T25', 'GULZAR', 'CSE6', 'S09'),
('T26', 'BHARTI', 'CSE4', 'S19'),
('T27', 'REENU', 'CSE4', 'S17'),
('T28', 'PRIYANKA', 'CSE2', 'S04'),
('T29', 'PARULPREET', 'CSE4', 'S76');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `SID` (`SID`),
  ADD UNIQUE KEY `ROLLNO` (`ROLLNO`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SID` (`SID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
