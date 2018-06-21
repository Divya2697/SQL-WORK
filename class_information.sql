-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 11:55 AM
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
-- Database: `first database`
--

-- --------------------------------------------------------

--
-- Table structure for table `class information`
--

CREATE TABLE `class information` (
  `S.NO.` int(200) NOT NULL,
  `NAME` varchar(240) NOT NULL,
  `BUPIN` varchar(249) NOT NULL,
  `SEMESTER` varchar(244) NOT NULL,
  `PHONE NO.` int(222) NOT NULL,
  `E-MAIL` varchar(234) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class information`
--

INSERT INTO `class information` (`S.NO.`, `NAME`, `BUPIN`, `SEMESTER`, `PHONE NO.`, `E-MAIL`) VALUES
(1, 'DIKSHA', '15UCS059', '6TH', 768913456, 'diksha23@gmail.com'),
(2, 'SONA', '15UCS007', '6TH', 985679863, 'sona56@gmail.com'),
(3, 'NEHA', '15UCS076', '6TH', 763456896, 'nehu234@gmail.com'),
(4, 'APERNA', '15UCS064', '6TH', 876245688, 'appy56@gmail.com'),
(5, 'PRIYANKA', '15UCS026', '6TH', 87754567, 'priynka43@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class information`
--
ALTER TABLE `class information`
  ADD PRIMARY KEY (`S.NO.`),
  ADD KEY `S.NO.` (`S.NO.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class information`
--
ALTER TABLE `class information`
  MODIFY `S.NO.` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
