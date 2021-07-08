-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 03:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orang_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_balance`
--

CREATE TABLE `employee_balance` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `department` varchar(250) NOT NULL,
  `balance` float NOT NULL,
  `vacation_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_balance`
--

INSERT INTO `employee_balance` (`id`, `emp_id`, `department`, `balance`, `vacation_type`) VALUES
(1, 1, 'D1', 18, 'Annual'),
(2, 2, 'D2', 2, 'Casual'),
(3, 3, 'D1', 5, 'Annual');

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `emp_Id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `date_of_joining` date NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`emp_Id`, `full_name`, `manager_id`, `date_of_joining`, `city`) VALUES
(1, 'John Snow', 321, '2014-01-31', 'Toronto'),
(2, 'Walter White', 986, '2015-01-30', 'California'),
(3, 'Kuldeep Rana', 879, '2014-11-27', 'New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `vacation_requests`
--

CREATE TABLE `vacation_requests` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `request_id` varchar(255) NOT NULL,
  `start_data` date NOT NULL,
  `end_data` date NOT NULL,
  `days` int(11) NOT NULL,
  `request_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacation_requests`
--

INSERT INTO `vacation_requests` (`id`, `emp_id`, `request_id`, `start_data`, `end_data`, `days`, `request_status`) VALUES
(1, 1, 'R1', '2020-01-01', '2020-01-04', 4, 'Approved'),
(2, 1, 'R2', '2021-04-05', '2021-04-06', 3, 'Rejected'),
(3, 3, 'R3', '2021-06-20', '2021-06-25', 5, 'Pending HR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_balance`
--
ALTER TABLE `employee_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`emp_Id`);

--
-- Indexes for table `vacation_requests`
--
ALTER TABLE `vacation_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_balance`
--
ALTER TABLE `employee_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `emp_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vacation_requests`
--
ALTER TABLE `vacation_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
