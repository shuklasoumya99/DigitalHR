-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 21, 2021 at 04:48 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitalhrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE IF NOT EXISTS `adminlogin` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL,
  `password` varchar(14) NOT NULL,
  PRIMARY KEY (`userid`,`no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`no`, `userid`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(30) NOT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `cityname`) VALUES
(1, 'Gorakhpur'),
(2, 'Deoria'),
(3, 'KusiNagar');

-- --------------------------------------------------------

--
-- Table structure for table `empinfo`
--

DROP TABLE IF EXISTS `empinfo`;
CREATE TABLE IF NOT EXISTS `empinfo` (
  `empid` int(11) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `gender` varchar(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contactno` int(14) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `salary` int(14) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(14) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

DROP TABLE IF EXISTS `jobseeker`;
CREATE TABLE IF NOT EXISTS `jobseeker` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contactno` int(20) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `experience` int(11) NOT NULL,
  `companyname` varchar(40) NOT NULL,
  `keyskills` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`name`, `gender`, `address`, `city`, `contactno`, `emailaddress`, `qualification`, `experience`, `companyname`, `keyskills`) VALUES
('SOUMYA SHUKLA', 'Female', 'Uma Nagar', 'Deoria', 9628953, 'ss@gmail.com', 'MCA', 0, 'N/A', 'java'),
('Shivam Shukla', 'Male', 'Gurgaon', 'Gorakhpur', 961996483, 'shuklas@gmail.com', 'MCA', 3, 'Caliber', '.Net');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `notificationtext` varchar(500) NOT NULL,
  `notificationdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notificationtext`, `notificationdate`) VALUES
(1, ' HEY @ ! THIS IS MY 1ST NOTOFICATION.', '2021-05-19 00:00:00'),
(4, 'JHGSTAFYGDHKGWSFYUG', '2021-08-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
CREATE TABLE IF NOT EXISTS `qualification` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `qname` varchar(30) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qid`, `qname`) VALUES
(1, 'MCA'),
(2, 'BCA'),
(3, 'BSC'),
(4, 'B Tech'),
(5, 'BBA'),
(6, 'MBA'),
(7, 'B FHARMA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
