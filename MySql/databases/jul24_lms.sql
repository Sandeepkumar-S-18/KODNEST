-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2025 at 04:11 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jul24_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `lms_admin`
--

CREATE TABLE IF NOT EXISTS `lms_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(10) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lms_admin`
--

INSERT INTO `lms_admin` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'lms', 'd27cfd44d40d37576bbdfefa8ef30556');

-- --------------------------------------------------------

--
-- Table structure for table `lms_books`
--

CREATE TABLE IF NOT EXISTS `lms_books` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(30) NOT NULL,
  `bauthor` varchar(20) NOT NULL,
  `bcat` varchar(20) NOT NULL,
  `byear` int(11) NOT NULL,
  `bprice` float(6,2) NOT NULL,
  `tot_quantity` int(11) NOT NULL,
  `ava_quantity` int(11) NOT NULL,
  `pur_on` date NOT NULL,
  `bstatus` int(11) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `lms_books`
--

INSERT INTO `lms_books` (`bid`, `bname`, `bauthor`, `bcat`, `byear`, `bprice`, `tot_quantity`, `ava_quantity`, `pur_on`, `bstatus`) VALUES
(101, 'Basics of Java', 'James', 'Computer', 2020, 560.00, 5, 5, '2024-10-14', 1),
(102, 'H2O', 'Peter', 'Chemistry', 2010, 400.00, 3, 3, '2024-10-14', 1),
(103, 'Java Fundamentals', 'John', 'Computer', 2010, 300.00, 4, 4, '2024-10-14', 1),
(104, 'JavaScript for Begineers', 'Eich', 'Computer', 2000, 1200.00, 3, 3, '2024-10-14', 1),
(105, 'The Lion', 'Rayan', 'Animal', 2000, 590.00, 2, 2, '2024-10-14', 1),
(106, 'The Shark', 'Ramu', 'Animal', 2008, 300.00, 4, 4, '2024-10-14', 1),
(107, 'Python', 'Rosum', 'Computer', 2005, 600.00, 3, 3, '2024-10-14', 1),
(108, 'Python snake', 'Tomy', 'Animal', 2000, 789.00, 2, 0, '2024-10-14', 1),
(109, 'Moral Stories', 'Yuva', 'Story', 2000, 100.00, 3, 3, '2024-10-15', 0),
(110, 'Ruby', 'Roy', 'Computer', 2000, 400.00, 1, 0, '2024-10-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lms_trans`
--

CREATE TABLE IF NOT EXISTS `lms_trans` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `act_return_date` date NOT NULL DEFAULT '0000-00-00',
  `tot_delay` int(11) NOT NULL DEFAULT '0',
  `famount` float(5,2) NOT NULL DEFAULT '0.00',
  `tstatus` int(11) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `fk_1` (`uid`),
  KEY `fk_2` (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10005 ;

--
-- Dumping data for table `lms_trans`
--

INSERT INTO `lms_trans` (`tid`, `uid`, `bid`, `issue_date`, `due_date`, `act_return_date`, `tot_delay`, `famount`, `tstatus`) VALUES
(10001, 1001, 101, '2024-10-10', '2024-10-17', '2024-10-15', -1, 0.00, 0),
(10002, 1002, 102, '2024-10-02', '2024-10-09', '2024-10-15', 6, 60.00, 0),
(10003, 1003, 103, '2024-10-08', '2024-10-15', '2024-10-15', 0, 0.00, 0),
(10004, 1004, 104, '2024-10-07', '2024-10-14', '2024-10-15', 1, 10.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE IF NOT EXISTS `lms_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `aadhar` bigint(20) NOT NULL,
  `regon` datetime NOT NULL,
  `ustatus` int(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `aadhar` (`aadhar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1009 ;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`uid`, `uname`, `email`, `pwd`, `mobile`, `city`, `aadhar`, `regon`, `ustatus`) VALUES
(1001, 'Guru', 'guru@gmail.com', '77e69c137812518e359196bb2f5e9bb9', 7204298393, 'BLR', 112233, '2024-10-15 18:42:56', 1),
(1002, 'Raja', 'raja@gmail.com', '526e34d04735124f05a090181f3e6e8a', 9944320740, 'CHN', 113344, '2024-10-09 19:45:08', 1),
(1003, 'Arun', 'arun@gmail.com', '722279e9e630b3e731464b69968ea4b4', 9911221122, 'PUN', 116655, '2024-10-10 18:33:33', 1),
(1004, 'John', 'john@gmail.com', '527bd5b5d689e2c32ae974c6229ff785', 5544332211, 'MUM', 554433, '2024-10-10 18:34:02', 1),
(1005, 'Jose', 'jose@gmail.com', '662eaa47199461d01a623884080934ab', 6655447766, 'BLR', 661122, '2024-10-10 18:34:22', 0),
(1006, 'Rani', 'rani@gmail.com', 'b9f81618db3b0d7a8be8fd904cca8b6a', 1100110066, 'MDR', 332233, '2024-10-10 18:34:57', 1),
(1007, 'Yuva', 'yuva@gmail.com', '23503ccd9307992ddcc366632d7fba75', 8767876789, 'CHN', 128909, '2024-10-10 19:21:19', 1),
(1008, 'RajaRam', 'rajaram@gmail.com', '526e34d04735124f05a090181f3e6e8a', 1231234566, 'BLR', 167178, '2024-10-10 19:33:21', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lms_trans`
--
ALTER TABLE `lms_trans`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`uid`) REFERENCES `lms_user` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`bid`) REFERENCES `lms_books` (`bid`);
