-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2025 at 04:09 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bs_accounts`
--

CREATE TABLE IF NOT EXISTS `bs_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `account_type` enum('savings','current') NOT NULL,
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bs_accounts`
--


-- --------------------------------------------------------

--
-- Table structure for table `bs_customers`
--

CREATE TABLE IF NOT EXISTS `bs_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `Aadhar` bigint(20) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `AccountNo` varchar(30) DEFAULT NULL,
  `regon` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `Aadhar` (`Aadhar`),
  UNIQUE KEY `AccountNo` (`AccountNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bs_customers`
--

INSERT INTO `bs_customers` (`id`, `name`, `age`, `Gender`, `Mobile`, `Aadhar`, `address`, `AccountNo`, `regon`, `status`) VALUES
(1, 'Sandeep', 22, 'M', 3245367543, 221133, 'BLR', '627971641575', '2024-10-12 20:30:04', 1),
(2, 'Kumar', 22, 'M', 2134654323, 154323, 'BLR', '263802735021', '2024-10-12 20:32:43', 1),
(3, 'Kishore', 22, 'M', 2341987654, 324321, 'BLR', '192693944665', '2024-10-12 20:34:00', 1),
(4, 'Raju', 21, 'M', 8765736542, 125432, 'BLR', '840826821253', '2024-10-12 20:49:27', 1),
(5, 'Nirmala', 40, 'F', 6753754356, 234123, 'BNK', '423838260387', '2024-10-12 21:28:11', 1),
(6, 'Radha', 26, 'F', 8435764356, 987654, 'GOK', '942583787771', '2024-10-12 21:39:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bs_login`
--

CREATE TABLE IF NOT EXISTS `bs_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1002 ;

--
-- Dumping data for table `bs_login`
--

INSERT INTO `bs_login` (`id`, `uName`, `pwd`) VALUES
(1001, 'manager', '1d0258c2440a8d19e716292b231e3190');

-- --------------------------------------------------------

--
-- Table structure for table `bs_transactions`
--

CREATE TABLE IF NOT EXISTS `bs_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_type` enum('deposit','withdrawal') NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bs_transactions`
--

