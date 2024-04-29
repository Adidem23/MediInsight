-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 08:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`first_name`, `last_name`, `email`, `phone_no`, `designation`, `password`, `salary`, `address`, `admin_id`) VALUES
('John', 'Doe', 'john@gmail.com', 1234567890, 'Administrator', '123', 50000, '123 Main st ', 1),
('Tanmayee', 'Suryawanshi', 'tanmayee@gmail.com', 1234567890, 'Administrator', '$2b$10$Zo6BoPYZOA3MqrBMOcQC7ez4gsx3eQBv1lVe8tlIGVfEm7LyWDROC', 40000, 'Hadpasar,Pune', 2);

-- --------------------------------------------------------

--
-- Table structure for table `assign_doctor`
--

CREATE TABLE `assign_doctor` (
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_doctor`
--

INSERT INTO `assign_doctor` (`patient_id`, `doctor_id`) VALUES
(0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `specialisation` varchar(30) NOT NULL,
  `shift_time` varchar(30) NOT NULL,
  `password` varchar(400) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`first_name`, `last_name`, `address`, `email`, `salary`, `specialisation`, `shift_time`, `password`, `doctor_id`) VALUES
('Yash', 'Sonawane', 'Ved Colony , Kotamgaon Road , ', 'yash.sonawane21@vit.edu', 50000, 'Cardiologist', '10:00 - 02:00', '$2b$10$9zeLQK31ahifXhtv1jpLqu8aVo4/UH6RY4ZPe4x.K5CW7ioBk7eUa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `medicine_cost` bigint(20) NOT NULL,
  `misc_charge` bigint(20) NOT NULL,
  `room_charge` bigint(20) NOT NULL,
  `operation_charge` bigint(20) NOT NULL,
  `prescription` varchar(100) DEFAULT 'Nothing Prescribed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`first_name`, `last_name`, `address`, `email`, `phone_no`, `password`, `disease`, `patient_id`, `medicine_cost`, `misc_charge`, `room_charge`, `operation_charge`, `prescription`) VALUES
('Aditya', 'Suryawanshi', 'Near darak hospital,latur', 'adi@gmail.com', 8421693107, '$2b$10$4Aipxkw5NK.Rl8p45Oby7.7ZcgWjZ4hvoekcjiKk.vp7exYLo/vBa', 'High Blood Pressure', 0, 0, 0, 0, 0, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
