-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2021 at 05:26 PM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `login_sample_db`
--
CREATE DATABASE IF NOT EXISTS `login_sample_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login_sample_db`;

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE IF NOT EXISTS `alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloods` varchar(20) NOT NULL,
  `places` varchar(50) NOT NULL,
  `numbers` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bloods` (`bloods`,`places`,`numbers`,`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `bloods`, `places`, `numbers`, `date`) VALUES
(6, 'AB+', 'Marsyangdi Nagar', '056456786', '2021-07-08 09:58:17'),
(1, 'AB+', 'Parsa', '987654321', '2021-07-08 08:58:49'),
(4, 'AB-', 'Dadeldhura', '9877664432', '2021-07-08 09:11:03'),
(5, 'AB-', 'Kailali', '056560366', '2021-07-08 09:50:24'),
(2, 'B+', 'Kathmandu', '987654321', '2021-07-08 09:10:02'),
(3, 'O+', 'Bharatpur', '056567876', '2021-07-08 09:10:37'),
(7, 'O+', 'Birendranagar', '056570677', '2021-07-08 15:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `available_beds`
--

CREATE TABLE IF NOT EXISTS `available_beds` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(50) NOT NULL,
  `beds` varchar(50) NOT NULL,
  `available_bed` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `available_beds`
--

INSERT INTO `available_beds` (`id`, `hospital_name`, `beds`, `available_bed`, `location`, `contact`, `date`) VALUES
(4, 'Narayani Samudayek', '200', '100', 'Bharatpur', '987654321', '2021-07-05 03:06:47'),
(5, 'XYZ Hospital', '123', '21', 'Kathmandu', '056560366', '2021-07-07 06:15:45'),
(6, 'ABC Hospital', '226', '126', 'Somewhere', '987654321', '2021-07-08 09:54:25'),
(7, 'My Hospital', '124', '34', 'Kalyanpur', '876876875765', '2021-07-08 15:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `blood_banks` varchar(100) NOT NULL,
  `a_positive` varchar(50) NOT NULL,
  `a_negative` varchar(50) NOT NULL,
  `b_positive` varchar(50) NOT NULL,
  `b_negative` varchar(50) NOT NULL,
  `ab_positive` varchar(20) NOT NULL,
  `ab_negative` varchar(20) NOT NULL,
  `o_positive` varchar(50) NOT NULL,
  `o_negative` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_banks`, `a_positive`, `a_negative`, `b_positive`, `b_negative`, `ab_positive`, `ab_negative`, `o_positive`, `o_negative`, `location`, `contact`, `date`) VALUES
(4, 'Bharatpur Blood Bank', '2Pints', '1 Pint', '3 Pints', '7 Pints', '8 Pints', '1 Pint', 'Not Available', '9 Pints', 'Bharatpur', '987654321', '2021-07-05 03:08:29'),
(5, 'The Blood Bank', '50 Pints', '2 Pints', '10 Pints', '13 Pints', '20 Pints', '100 Pints', '5 Pints', 'Not Available', 'Lincoln Street', '987654321', '2021-07-08 09:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointment`
--

CREATE TABLE IF NOT EXISTS `doctor_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `schedule` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `doctor_appointment`
--

INSERT INTO `doctor_appointment` (`id`, `hospital_name`, `doctor`, `specialty`, `schedule`, `location`, `contact_number`, `date`) VALUES
(5, 'CMC', 'Bhola Rijal', 'Paediatrician', 'Sun-Tue: 5pm to 7pm', 'Bhartpur', '987654321', '2021-07-07 07:35:44'),
(6, 'Bhola Hospital', 'Bhola Aryal', 'ObGyn', 'Sun-Mon: 3pm to 5pm', 'Bharatpur', '056580434', '2021-07-07 07:34:56'),
(7, 'Mrsyangdi Hospital', 'Aaryan Jha', 'Osteo Specialist', 'Sun to Fri: 3PM to 5PM', 'Naya Marga, Kathmandu', '987654321', '2021-07-08 09:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `donor_id_check`
--

CREATE TABLE IF NOT EXISTS `donor_id_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donor_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donor_id` (`donor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `donor_id_check`
--

INSERT INTO `donor_id_check` (`id`, `donor_id`) VALUES
(7, '2112'),
(8, '3098'),
(9, '5567'),
(6, '6993');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_id_check`
--

CREATE TABLE IF NOT EXISTS `hospital_id_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hospital_id` (`hospital_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hospital_id_check`
--

INSERT INTO `hospital_id_check` (`id`, `hospital_id`) VALUES
(3, '2281'),
(2, '5591'),
(1, '5693'),
(4, '6126');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_users`
--

CREATE TABLE IF NOT EXISTS `hospital_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `hospital_id` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`name`,`user_name`,`hospital_id`,`date`),
  KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `hospital_users`
--

INSERT INTO `hospital_users` (`id`, `user_id`, `name`, `user_name`, `password`, `hospital_id`, `date`) VALUES
(6, 55044224, 'Rahul Kharel', 'rahulkharel30', 'password', '5693', '2021-07-05 03:01:57'),
(7, 89269, 'Rahul Barel', 'rahulkharel30', 'Blade123', '5591', '2021-07-07 05:48:35'),
(8, 757940168785701837, 'Suraj Baniya', 'suraj123', 'suraj123', '2281', '2021-07-07 06:14:10'),
(9, 3078353342753, 'Karan Silwal', 'karan123', 'karan123', '6126', '2021-07-08 09:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `donor_id` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `donor_id` (`donor_id`),
  KEY `user_id` (`user_id`,`name`,`blood_group`,`age`,`gender`,`user_name`,`phone_number`,`address`,`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `donor_id`, `blood_group`, `age`, `gender`, `user_name`, `password`, `phone_number`, `address`, `date`) VALUES
(1, 374248253104536271, 'Abhisekh Mishra', '6993', 'AB+', '23', 'Male', 'abhi123', 'djabhi', '987654321', 'Bhandara', '2021-07-07 05:26:13'),
(2, 1615, 'Subash Phuyal', '2112', 'AB+', '21', 'Male', 'subash123', 'subash123', '987654321', 'Bhandara', '2021-07-07 06:40:34'),
(3, 5212209688, 'Ravi Chapagain', '3098', 'B+', '24', 'Male', 'ravi123', 'ravi123', '987654321', 'Bharatpur', '2021-07-08 09:43:43'),
(4, 22934530946, 'Suruchi Mainali', '5567', 'AB-', '20', 'Female', 'suruchi123', 'suruchi123', '987654321', 'Bhandara', '2021-07-08 16:40:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
