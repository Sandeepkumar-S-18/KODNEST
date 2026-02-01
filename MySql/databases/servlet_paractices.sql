-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2025 at 04:12 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servlet_paractices`
--

-- --------------------------------------------------------

--
-- Table structure for table `serv1jdbc`
--

CREATE TABLE IF NOT EXISTS `serv1jdbc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `languages` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `serv1jdbc`
--

INSERT INTO `serv1jdbc` (`id`, `first_name`, `last_name`, `dob`, `mobile`, `email`, `gender`, `languages`, `city`, `password`, `register_time`) VALUES
(1, 'Sandeepkumar', 'S', '18-09-2002', 8777564423, 'sandeep23@gmail.com', 'male', 'Kannada,Telugu,English,', 'Bangalore', '27c0986d6e276c88fa90a7d6053e7bac', '26-02-2025 02:51:20 PM'),
(2, 'Nirmala', 'S', '28-01-2025', 9870654321, 'nirmala23@gmail.com', 'female', 'Kannada,', 'Bangalore', 'de3b0de511e41a4ccd141ebbc45126e9', '28-02-2025 09:44:18 PM');

-- --------------------------------------------------------

--
-- Table structure for table `serv2jdbc`
--

CREATE TABLE IF NOT EXISTS `serv2jdbc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `profile_image` varchar(300) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `languages` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `profile_image` (`profile_image`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `serv2jdbc`
--

INSERT INTO `serv2jdbc` (`id`, `first_name`, `last_name`, `profile_image`, `dob`, `mobile`, `email`, `gender`, `languages`, `city`, `password`, `register_time`) VALUES
(1, 'Sandeepkumar', 'S', 'Profile pic_20250301_025037.jpg', '18-09-2002', 8123571317, 'sandeep6361460@gmail.com', 'male', 'Kannada,Telugu,English,', 'Bangalore', '27c0986d6e276c88fa90a7d6053e7bac', '01-03-2025 02:50:37 PM'),
(2, 'Seg', 'H', 'pic2_20250302_032100.jpg', '12-11-1999', 7890123456, 'suggestion2002@gmail.com', 'female', 'Telugu,English,', 'Mumbai', '6577b8847f2d6ba1c19771e3f82df178', '02-03-2025 03:21:00 PM');
