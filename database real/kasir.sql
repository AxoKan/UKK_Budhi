-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2025 at 08:03 AM
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
-- Database: `kasir`
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
(920, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:45:20'),
(921, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:45:46'),
(922, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:46:31'),
(923, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:47:13'),
(924, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:47:23'),
(925, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:47:40'),
(926, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:47:56'),
(927, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:48:17'),
(928, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:48:56'),
(929, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:49:16'),
(930, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:49:21'),
(931, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:49:26'),
(932, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:49:30'),
(933, 2, 'View', 'User viewed dashboard.', '2025-01-22 13:49:35'),
(934, 2, 'Login', 'User has logged in.', '2025-01-23 08:59:57'),
(935, 2, 'Login', 'User has logged in.', '2025-01-23 09:02:32'),
(936, 2, 'View', 'User viewed dashboard.', '2025-01-23 09:02:33'),
(937, 2, 'View', 'User viewed user Data.', '2025-01-23 09:02:38'),
(938, 2, 'View', 'User viewed dashboard.', '2025-01-23 09:02:40'),
(939, 2, 'View', 'User viewed dashboard.', '2025-01-23 09:07:09'),
(940, 2, 'View', 'User viewed user Data.', '2025-01-23 09:07:11'),
(941, 2, 'View', 'User viewed Website Setting.', '2025-01-23 09:07:12'),
(942, 2, 'View', 'User viewed Activity log.', '2025-01-23 09:07:14'),
(943, 2, 'View', 'User viewed dashboard.', '2025-01-23 09:07:16'),
(944, 2, 'View', 'User viewed dashboard.', '2025-01-23 09:15:12'),
(945, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:16:46'),
(946, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:18:18'),
(947, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:19:56'),
(948, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:20:53'),
(949, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:21:34'),
(950, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:21:42'),
(951, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:21:52'),
(952, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:22:00'),
(953, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:24:26'),
(954, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:24:43'),
(955, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:25:07'),
(956, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:28:04'),
(957, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:28:48'),
(958, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:30:24'),
(959, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:30:47'),
(960, 2, 'Deleted', 'User Deleted Menu Data.', '2025-01-23 09:30:50'),
(961, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:30:51'),
(962, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:31:37'),
(963, 2, 'Deleted', 'User Deleted Menu Data.', '2025-01-23 09:31:41'),
(964, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:31:41'),
(965, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:39:58'),
(966, 2, 'View', 'User viewed Add user Data.', '2025-01-23 09:40:00'),
(967, 2, 'add', 'User added Menu Data.', '2025-01-23 09:50:53'),
(968, 2, 'View', 'User viewed user Data.', '2025-01-23 09:50:53'),
(969, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:50:56'),
(970, 2, 'Deleted', 'User Deleted Menu Data.', '2025-01-23 09:51:01'),
(971, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:51:01'),
(972, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:51:21'),
(973, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:51:27'),
(974, 2, 'add', 'User added Menu Data.', '2025-01-23 09:51:37'),
(975, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:51:37'),
(976, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:55:14'),
(977, 2, 'View', 'User viewed Menu Data.', '2025-01-23 09:55:29'),
(978, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:55:31'),
(979, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:55:56'),
(980, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:56:09'),
(981, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:57:39'),
(982, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 09:58:03'),
(983, 2, 'add', 'User added Menu Data.', '2025-01-23 10:01:10'),
(984, 2, 'View', 'User viewed Menu Data.', '2025-01-23 10:01:10'),
(985, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 10:01:14'),
(986, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 10:02:12'),
(987, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 10:02:53'),
(988, 2, 'add', 'User added Menu Data.', '2025-01-23 10:02:57'),
(989, 2, 'add', 'User added Menu Data.', '2025-01-23 10:04:07'),
(990, 2, 'View', 'User viewed Menu Data.', '2025-01-23 10:04:07'),
(991, 2, 'View', 'User viewed Menu Data.', '2025-01-23 10:04:10'),
(992, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 10:04:17'),
(993, 2, 'add', 'User added Menu Data.', '2025-01-23 10:04:25'),
(994, 2, 'View', 'User viewed Menu Data.', '2025-01-23 10:04:25'),
(995, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 10:05:03'),
(996, 2, 'add', 'User added Menu Data.', '2025-01-23 10:05:33'),
(997, 2, 'View', 'User viewed Menu Data.', '2025-01-23 10:05:33'),
(998, 2, 'Login', 'User has logged in.', '2025-01-23 12:37:31'),
(999, 2, 'View', 'User viewed dashboard.', '2025-01-23 12:37:31'),
(1000, 2, 'View', 'User viewed Menu Data.', '2025-01-23 12:37:40'),
(1001, 2, 'View', 'User viewed dashboard.', '2025-01-23 12:40:28'),
(1002, 2, 'View', 'User viewed Menu Data.', '2025-01-23 12:40:43'),
(1003, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:07:14'),
(1004, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:07:15'),
(1005, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:07:36'),
(1006, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:07:52'),
(1007, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:08:12'),
(1008, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:08:46'),
(1009, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:09:05'),
(1010, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:09:37'),
(1011, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:09:46'),
(1012, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:09:48'),
(1013, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:11:42'),
(1014, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:12:38'),
(1015, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:12:51'),
(1016, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:13:45'),
(1017, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:17:39'),
(1018, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:17:49'),
(1019, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:18:40'),
(1020, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:19:10'),
(1021, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:19:20'),
(1022, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:19:41'),
(1023, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:19:44'),
(1024, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:21:11'),
(1025, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:21:39'),
(1026, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:22:35'),
(1027, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:22:42'),
(1028, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:24:30'),
(1029, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:24:36'),
(1030, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:25:47'),
(1031, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:26:30'),
(1032, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:28:26'),
(1033, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:28:44'),
(1034, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:28:49'),
(1035, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:29:05'),
(1036, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:29:26'),
(1037, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:30:37'),
(1038, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:30:58'),
(1039, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:33:36'),
(1040, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:35:11'),
(1041, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:35:30'),
(1042, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:35:35'),
(1043, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:37:18'),
(1044, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:37:21'),
(1045, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:37:51'),
(1046, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:37:57'),
(1047, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:38:20'),
(1048, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:38:55'),
(1049, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:39:07'),
(1050, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:39:16'),
(1051, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:39:24'),
(1052, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:39:41'),
(1053, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:41:48'),
(1054, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:42:47'),
(1055, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:43:56'),
(1056, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:44:32'),
(1057, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:45:14'),
(1058, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:45:19'),
(1059, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:46:57'),
(1060, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:47:10'),
(1061, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:48:25'),
(1062, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:48:44'),
(1063, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:48:50'),
(1064, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:48:55'),
(1065, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:48:59'),
(1066, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:51:02'),
(1067, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:51:32'),
(1068, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:51:48'),
(1069, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:52:39'),
(1070, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:54:21'),
(1071, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:55:00'),
(1072, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:55:06'),
(1073, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:56:08'),
(1074, 2, 'View', 'User viewed Menu Data.', '2025-01-23 13:59:55'),
(1075, 2, 'View', 'User viewed Menu Data.', '2025-01-23 14:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `Menu_id` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `transaksi_id`, `Menu_id`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(86, 1, 1, '20000.00', '2025-01-23 12:56:02', NULL, NULL),
(87, 1, 2, '5000.00', '2025-01-23 12:56:03', NULL, NULL),
(88, 1, 3, '20000.00', '2025-01-23 12:56:04', NULL, NULL),
(89, 1, 4, '5000.00', '2025-01-23 12:56:05', NULL, NULL),
(90, 2, 1, '20000.00', '2025-01-23 12:56:45', NULL, NULL),
(91, 2, 2, '5000.00', '2025-01-23 12:56:47', NULL, NULL);

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
(1, 'Restaurant Bintang satu', 'restaurant.png', 'restaurant.png');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `No_meja` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `No_meja`) VALUES
(1, 'N1'),
(2, 'N2'),
(3, 'G0'),
(4, 'G2'),
(5, 'G1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `Kategory` enum('Drink','Food') NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `harga_menu` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `Kategory`, `foto`, `nama_menu`, `harga_menu`, `Stok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Food', 'nasi_uduk.png', 'Nasi Uduk', '20000.00', 30, '2025-01-22 13:27:47', NULL, NULL),
(2, 'Drink', 'Teh_obeng.png', 'The Obeng', '5000.00', 50, '2025-01-22 13:28:34', NULL, NULL),
(3, 'Food', 'nasi_goreng (1).png', 'nasi Goreng', '20000.00', 10, '2025-01-22 13:29:16', NULL, NULL),
(4, 'Drink', 'sprite.png', 'Jus Kiwi', '5000.00', 20, '2025-01-22 13:29:27', NULL, NULL),
(5, 'Drink', '1', '', '0.00', 0, '2025-01-23 09:25:01', NULL, '2025-01-23 09:31:41'),
(9, 'Food', '82k1aVUYS3bLnGWzfk1ds5xImiZHAH7KActpgJBE.png', '22', '22.00', 22, '2025-01-23 09:50:52', NULL, '2025-01-23 09:51:01'),
(12, 'Food', 'SFnXckPD652GMOGG9V1HRnGW75Az7lBomz34L424.png', 'Mie Gacoan', '15000.00', 100, '2025-01-23 10:04:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pajak`
--

CREATE TABLE `pajak` (
  `id_pajak` int(11) NOT NULL,
  `nama_pajak` varchar(255) NOT NULL,
  `persen_pajak` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pajak`
--

INSERT INTO `pajak` (`id_pajak`, `nama_pajak`, `persen_pajak`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PPN', '12', '2024-02-26 23:12:58', '2025-01-14 10:47:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `No_meja` varchar(225) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `bayar` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `No_meja`, `tanggal_transaksi`, `total_harga`, `bayar`, `kembalian`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'G2', '2025-01-23', '200000.00', '200000.00', '0.00', 2, '2025-01-23 12:49:29', NULL, NULL),
(2, 'G1', '2025-01-23', '200000.00', '0.00', '0.00', 1, '2025-01-23 12:49:29', NULL, NULL);

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
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `pajak`
--
ALTER TABLE `pajak`
  ADD PRIMARY KEY (`id_pajak`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pajak`
--
ALTER TABLE `pajak`
  MODIFY `id_pajak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
