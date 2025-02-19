-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 03:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `template`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(1, NULL, 'Login', 'User Has Log in.', '2024-11-07 10:22:13'),
(2, 2, 'Login', 'User Has Log in.', '2024-11-07 10:22:40'),
(3, 2, 'View', 'User view Setting.', '2024-11-07 10:24:14'),
(4, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:15'),
(5, 2, 'View', 'User view Setting.', '2024-11-07 10:24:16'),
(6, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:17'),
(7, 2, 'View', 'User view Setting.', '2024-11-07 10:24:18'),
(8, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:20'),
(9, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:30'),
(10, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:46'),
(11, 2, 'View', 'User view Activity Log.', '2024-11-07 10:24:49'),
(12, 2, 'View', 'User view Activity Log.', '2024-11-07 10:25:30'),
(13, 2, 'View', 'User view Activity Log.', '2024-11-07 10:25:47'),
(14, 2, 'View', 'User view Setting.', '2024-11-07 10:25:48'),
(15, 2, 'View', 'User view Activity Log.', '2024-11-07 10:25:48'),
(16, 2, 'View', 'User view Setting.', '2024-11-07 10:25:49'),
(17, 2, 'View', 'User view Activity Log.', '2024-11-07 10:25:50'),
(18, 2, 'Login', 'User Has Log in.', '2024-11-07 10:25:59'),
(19, 2, 'Login', 'User Has Log in.', '2024-11-07 10:27:07'),
(20, 2, 'View', 'User view Setting.', '2024-11-07 10:27:42'),
(21, NULL, 'Login', 'User Has Log in.', '2025-01-07 09:18:10'),
(22, 2, 'View', 'User view Setting.', '2025-01-07 09:18:14'),
(23, 2, 'Login', 'User Has Log in.', '2025-01-07 09:20:08'),
(24, 2, 'Login', 'User Has Log in.', '2025-01-07 09:21:30'),
(25, 2, 'Logout', 'User Has Logout.', '2025-01-07 09:22:38'),
(26, NULL, 'Login', 'User Has Log in.', '2025-01-07 09:22:47'),
(27, 2, 'Logout', 'User Has Logout.', '2025-01-07 09:23:00'),
(28, NULL, 'Login', 'User Has Log in.', '2025-01-07 09:24:10'),
(29, 2, 'Login', 'User Has Log in.', '2025-01-07 09:24:36'),
(30, 2, 'Login', 'User Has Log in.', '2025-01-07 09:24:52'),
(31, 2, 'View', 'User view Setting.', '2025-01-07 09:25:11'),
(32, 2, 'View', 'User view Setting.', '2025-01-07 09:25:12'),
(33, 2, 'View', 'User view Setting.', '2025-01-07 09:25:13'),
(34, 2, 'View', 'User view Setting.', '2025-01-07 09:25:25'),
(35, 2, 'View', 'User view Activity Log.', '2025-01-07 09:25:25'),
(36, 2, 'View', 'User view Setting.', '2025-01-07 09:25:36'),
(37, 2, 'View', 'User view Setting.', '2025-01-07 09:25:37'),
(38, 2, 'Logout', 'User Has Logout.', '2025-01-07 09:25:53'),
(39, 2, 'Login', 'User Has Log in.', '2025-01-13 09:57:16'),
(40, 2, 'View', 'User view Dashboard.', '2025-01-13 09:57:16'),
(41, 2, 'Login', 'User Has Log in.', '2025-01-13 09:57:25'),
(42, 2, 'View', 'User view Dashboard.', '2025-01-13 09:57:25'),
(43, 2, 'View', 'User view Dashboard.', '2025-01-13 09:58:03'),
(44, 2, 'View', 'User view Dashboard.', '2025-01-13 09:58:06'),
(45, 2, 'View', 'User view Dashboard.', '2025-01-13 09:58:41'),
(46, 2, 'View', 'User view Setting.', '2025-01-13 09:58:41'),
(47, 2, 'View', 'User view Activity Log.', '2025-01-13 09:58:42'),
(48, 2, 'View', 'User view Setting.', '2025-01-13 09:58:44'),
(49, 2, 'View', 'User view Setting.', '2025-01-13 09:58:45'),
(50, 2, 'View', 'User view Activity Log.', '2025-01-13 09:58:47'),
(51, 2, 'View', 'User view Activity Log.', '2025-01-13 09:59:10'),
(52, 2, 'View', 'User view Activity Log.', '2025-01-13 09:59:11'),
(53, 2, 'View', 'User view Setting.', '2025-01-13 09:59:11'),
(54, 2, 'View', 'User view Dashboard.', '2025-01-13 09:59:13'),
(55, 2, 'View', 'User view Setting.', '2025-01-13 09:59:13'),
(56, 2, 'View', 'User view Activity Log.', '2025-01-13 09:59:14'),
(57, 2, 'View', 'User view Setting.', '2025-01-13 09:59:14'),
(58, 2, 'View', 'User view Dashboard.', '2025-01-13 09:59:15'),
(59, 2, 'Logout', 'User Has Logout.', '2025-01-13 09:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `nama_Logo`, `logos`, `icon`) VALUES
(1, 'E-Office', 'images (2).png', 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `real` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  `Level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `real`, `user`, `password`, `Level`) VALUES
(1, 'petugas', 'petugas', 'petugas', 'petugas'),
(2, 'admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
