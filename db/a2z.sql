-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2018 at 02:36 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a2z`
--

-- --------------------------------------------------------

--
-- Table structure for table `0_client_info`
--

CREATE TABLE `0_client_info` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(200) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_client_info`
--

INSERT INTO `0_client_info` (`client_id`, `name`, `address`, `phone`, `email`, `zone_id`, `status`) VALUES
(1, 'Sam', 'Hazaribug Park', '01818139236', 'shamim_0188@yahoo.com', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_setup_company`
--

CREATE TABLE `0_setup_company` (
  `cm_id` int(11) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `fax_number` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `company_number` varchar(20) DEFAULT NULL,
  `logo` longblob,
  `home_currency` int(11) DEFAULT NULL,
  `fiscal_year` int(11) DEFAULT NULL,
  `bank_name` varchar(30) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_setup_company`
--

INSERT INTO `0_setup_company` (`cm_id`, `company_name`, `address`, `phone_number`, `fax_number`, `email`, `company_number`, `logo`, `home_currency`, `fiscal_year`, `bank_name`, `inactive`) VALUES
(1, 'A2Z', 'Dhanmondi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_setup_fiscal_year`
--

CREATE TABLE `0_setup_fiscal_year` (
  `id` int(11) NOT NULL,
  `begin_year` date NOT NULL,
  `end_year` date NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `0_tariff_plan`
--

CREATE TABLE `0_tariff_plan` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_tariff_plan`
--

INSERT INTO `0_tariff_plan` (`plan_id`, `plan_name`, `description`, `rate`) VALUES
(1, '1.5 mb', '1.5 MB Data per manth', 600);

-- --------------------------------------------------------

--
-- Table structure for table `0_user`
--

CREATE TABLE `0_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `access` varchar(200) DEFAULT NULL,
  `crt_by_user_id` varchar(30) NOT NULL,
  `crt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inactive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_user`
--

INSERT INTO `0_user` (`id`, `user_id`, `pass`, `name`, `zone`, `access`, `crt_by_user_id`, `crt_date`, `inactive`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'System', 0, 'Administrator', 'System', '2017-11-25 04:23:17', 0),
(2, 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'System', 0, 'Administrator', 'System', '2017-11-25 04:23:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `0_zone`
--

CREATE TABLE `0_zone` (
  `zoneID` int(11) NOT NULL,
  `zone_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_zone`
--

INSERT INTO `0_zone` (`zoneID`, `zone_name`, `description`, `status`) VALUES
(1, 'Hazaribug', 'Hazaribug', 0),
(6, 'Bondhumohol', 'Bondhumohol', 0),
(8, 'Bonhumohol', 'Bonhumohol', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0_client_info`
--
ALTER TABLE `0_client_info`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `0_setup_company`
--
ALTER TABLE `0_setup_company`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `0_setup_fiscal_year`
--
ALTER TABLE `0_setup_fiscal_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0_tariff_plan`
--
ALTER TABLE `0_tariff_plan`
  ADD PRIMARY KEY (`plan_id`),
  ADD UNIQUE KEY `plan_name` (`plan_name`);

--
-- Indexes for table `0_user`
--
ALTER TABLE `0_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `0_zone`
--
ALTER TABLE `0_zone`
  ADD PRIMARY KEY (`zoneID`),
  ADD UNIQUE KEY `zone_name` (`zone_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0_client_info`
--
ALTER TABLE `0_client_info`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_setup_company`
--
ALTER TABLE `0_setup_company`
  MODIFY `cm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_setup_fiscal_year`
--
ALTER TABLE `0_setup_fiscal_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `0_tariff_plan`
--
ALTER TABLE `0_tariff_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `0_user`
--
ALTER TABLE `0_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `0_zone`
--
ALTER TABLE `0_zone`
  MODIFY `zoneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
