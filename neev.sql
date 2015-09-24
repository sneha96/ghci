-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2015 at 03:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `neev`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`cat_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`cust_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contact_no` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finished_prod`
--

CREATE TABLE IF NOT EXISTS `finished_prod` (
`finish_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `tot_qty` int(11) NOT NULL,
  `prod_cost` int(11) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `category` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finished_supply`
--

CREATE TABLE IF NOT EXISTS `finished_supply` (
`trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `var_id` int(11) NOT NULL,
  `sell_date` datetime NOT NULL,
  `cost` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_mat`
--

CREATE TABLE IF NOT EXISTS `raw_mat` (
`raw_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `unit` varchar(150) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `tot_qty` int(11) NOT NULL,
  `tot_cost` int(11) NOT NULL,
  `no_of_var` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_mat_supplier`
--

CREATE TABLE IF NOT EXISTS `raw_mat_supplier` (
`trans_id` int(11) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `raw_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `received_date` datetime NOT NULL,
  `order_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  `tot_cost` int(11) NOT NULL,
  `var_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_variant`
--

CREATE TABLE IF NOT EXISTS `raw_variant` (
`var_id` int(11) NOT NULL,
  `raw_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `avail_qty` int(11) NOT NULL,
  `min_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supp_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `contact_no` varchar(300) NOT NULL COMMENT 'csv hoga phone no',
  `address` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `finished_prod`
--
ALTER TABLE `finished_prod`
 ADD PRIMARY KEY (`finish_id`);

--
-- Indexes for table `finished_supply`
--
ALTER TABLE `finished_supply`
 ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `raw_mat`
--
ALTER TABLE `raw_mat`
 ADD PRIMARY KEY (`raw_id`);

--
-- Indexes for table `raw_mat_supplier`
--
ALTER TABLE `raw_mat_supplier`
 ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `raw_variant`
--
ALTER TABLE `raw_variant`
 ADD PRIMARY KEY (`var_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `finished_prod`
--
ALTER TABLE `finished_prod`
MODIFY `finish_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `finished_supply`
--
ALTER TABLE `finished_supply`
MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_mat`
--
ALTER TABLE `raw_mat`
MODIFY `raw_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_mat_supplier`
--
ALTER TABLE `raw_mat_supplier`
MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_variant`
--
ALTER TABLE `raw_variant`
MODIFY `var_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
