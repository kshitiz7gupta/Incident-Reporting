-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2017 at 11:52 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incidentreporting`
--

-- --------------------------------------------------------

--
-- Table structure for table `googlemap`
--

CREATE TABLE `googlemap` (
  `id` int(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incidentreport`
--

CREATE TABLE `incidentreport` (
  `IncidentId` int(50) NOT NULL,
  `ReporterName` varchar(100) NOT NULL,
  `I_Name` varchar(100) NOT NULL,
  `I_Category` varchar(100) NOT NULL,
  `Location` varchar(500) NOT NULL,
  `Upload` varchar(100) NOT NULL,
  `Dated` varchar(20) NOT NULL,
  `Timer` time NOT NULL,
  `Summary` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidentreport`
--

INSERT INTO `incidentreport` (`IncidentId`, `ReporterName`, `I_Name`, `I_Category`, `Location`, `Upload`, `Dated`, `Timer`, `Summary`) VALUES
(12, 'jain', 'Murder', 'Doctor', 'Test', '', '2015-04-05', '00:00:15', '                  you are not alone'),
(13, 'shikher12', 'diabetes', 'Doctor', 'delhi', '', '2009-03-02', '07:06:00', 'The cat was playing in the garden.\r\n                '),
(14, 'shikher12', 'kartik got cough', 'Doctor', 'BH2', '', '2017-02-08', '03:03:00', '                  The cat was playing in the garden.\r\n                '),
(19, 'kshitiz123', 'Typhoid', 'Doctor', 'jaipur', '', '2017-02-15', '04:03:00', '                  The cat was playing in the garden.\r\n                '),
(20, 'jain', 'Medical', 'Doctor', 'raipur', '', '2017-07-06', '17:45:00', '                  \r\n      Serious medical condition          '),
(21, 'jain', 'Bone Fracture', 'Doctor', 'ranchi', '', '2017-07-08', '17:04:00', '        fracture          \r\n                '),
(34, 'kshitiz123', 'kshitiz gupta', 'Doctor', 'jaipur', '', '16/02/2017', '08:17:21', 'er'),
(37, 'kshitiz123', 'Maleria', 'Doctor', 'loc', '', '18/02/2017', '04:42:25', 'Mosquito bite'),
(42, 'kshitiz123', 'Fracture', 'Doctor', 'loc', '8.jpg', '18/02/2017', '06:30:02', 'bone fracture'),
(43, 'kshitiz123', 'Plaque', 'Doctor', 'loc', '6.jpg', '18/02/2017', '06:31:28', 'Plaque broke out');

-- --------------------------------------------------------

--
-- Table structure for table `responder`
--

CREATE TABLE `responder` (
  `Resp_Id` int(20) NOT NULL,
  `Resp_Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responder`
--

INSERT INTO `responder` (`Resp_Id`, `Resp_Name`, `Category`, `Pass`) VALUES
(1, 'Gaurav', 'Doctor', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `uname`, `pass`, `name`, `email`, `phone`) VALUES
(1, 'kshitiz123', '1234', 'kshitiz gupta', 'kshitiz7gupta@gmail.com', '8739815580'),
(4, 'kartik', '123', 'kartik', '', '22079'),
(5, 'shikher12', '123', 'shikher', '', '123'),
(6, 'kartik3', '1234', 'kartik', '', '67656546475'),
(7, 'ksh', '123', 'kshitiz gupta', '', '8739815580'),
(8, 'jain', '1234', 'kartik', '', '123456'),
(9, 'A', 'A', 'A', '', 'A'),
(10, 'gaurav', '123', 'GAURAV AGARWAL', '', '8739815580'),
(11, 'k', 'k', 'k', '', '56'),
(12, 'kl', 'k', 'k', 'k@gmail.com', '67656546475'),
(13, 'ty', '12', 'ty', 'y14uc125@lnmiit.ac.in', '8739815580'),
(14, 'jk1', '123', 'jk', 'y14uc125@lnmiit.ac.in', '8739815580'),
(15, 'we1', '123', 'we', 'y14uc125@lnmiit.ac.in', '8739815580'),
(16, 'we2', '123', 'we', 'y14uc125@lnmiit.ac.in', '8739815580'),
(17, 'sh23', '123', 'shubhyu', 'y14uc125@lnmiit.ac.in', '8739815580'),
(18, 'k1', '123', 'khesav', 'y14uc125@lnmiit.ac.in', '8739815580');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `googlemap`
--
ALTER TABLE `googlemap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incidentreport`
--
ALTER TABLE `incidentreport`
  ADD PRIMARY KEY (`IncidentId`);

--
-- Indexes for table `responder`
--
ALTER TABLE `responder`
  ADD PRIMARY KEY (`Resp_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `googlemap`
--
ALTER TABLE `googlemap`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incidentreport`
--
ALTER TABLE `incidentreport`
  MODIFY `IncidentId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `responder`
--
ALTER TABLE `responder`
  MODIFY `Resp_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
