-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 03:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.27

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1075, 2, 'View', 'User viewed Menu Data.', '2025-01-23 14:00:10'),
(1076, 2, 'Login', 'User has logged in.', '2025-01-23 20:33:52'),
(1077, 2, 'View', 'User viewed dashboard.', '2025-01-23 20:33:52'),
(1078, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:35:04'),
(1079, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:35:09'),
(1080, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:36:26'),
(1081, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:54:33'),
(1082, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:55:33'),
(1083, 2, 'View', 'User viewed Menu Data.', '2025-01-23 20:57:33'),
(1084, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:01:51'),
(1085, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:04:59'),
(1086, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:05:56'),
(1087, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:12:30'),
(1088, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:15:39'),
(1089, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:15:49'),
(1090, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:23:35'),
(1091, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:26:06'),
(1092, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:28:09'),
(1093, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:29:35'),
(1094, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:31:54'),
(1095, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:31:57'),
(1096, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:32:00'),
(1097, 2, 'View', 'User viewed user Data.', '2025-01-23 21:32:05'),
(1098, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:32:07'),
(1099, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:32:14'),
(1100, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:02'),
(1101, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:05'),
(1102, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:31'),
(1103, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:37'),
(1104, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:48'),
(1105, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:33:55'),
(1106, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:34:09'),
(1107, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:34:21'),
(1108, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:37:02'),
(1109, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:37:05'),
(1110, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:37:30'),
(1111, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:37:45'),
(1112, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:38:11'),
(1113, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:42:57'),
(1114, 2, 'Cancel', 'User Canceled a Transaction.', '2025-01-23 21:43:01'),
(1115, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:43:01'),
(1116, 2, 'View', 'User viewed Menu Data.', '2025-01-23 21:43:52'),
(1117, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:02:38'),
(1118, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:03:14'),
(1119, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:03:16'),
(1120, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:03:35'),
(1121, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:04:21'),
(1122, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:07:01'),
(1123, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:07:54'),
(1124, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:07:58'),
(1125, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:08:12'),
(1126, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:13:16'),
(1127, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:14:49'),
(1128, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:14:58'),
(1129, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:16:40'),
(1130, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:17:00'),
(1131, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:17:13'),
(1132, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:19:49'),
(1133, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:24:59'),
(1134, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:25:42'),
(1135, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:25:50'),
(1136, 2, 'View', 'User viewed Menu Data.', '2025-01-23 22:26:01'),
(1137, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:36:23'),
(1138, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:36:25'),
(1139, 2, 'View', 'User viewed Add Menu Data.', '2025-01-23 22:36:27'),
(1140, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:36:37'),
(1141, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:36:55'),
(1142, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:36:57'),
(1143, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:37:18'),
(1144, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:37:25'),
(1145, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:37:42'),
(1146, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:37:54'),
(1147, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:38:27'),
(1148, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:38:45'),
(1149, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:39:04'),
(1150, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:40:50'),
(1151, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:40:53'),
(1152, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:41:51'),
(1153, 2, 'View', 'User viewed Add Meja Data.', '2025-01-23 22:42:11'),
(1154, 2, 'Add', 'User Added a Meja Number.', '2025-01-23 22:43:26'),
(1155, 2, 'Add', 'User Added a Meja Number.', '2025-01-23 22:43:33'),
(1156, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:43:33'),
(1157, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:43:44'),
(1158, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:55:40'),
(1159, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:56:00'),
(1160, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:56:02'),
(1161, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:56:34'),
(1162, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:56:40'),
(1163, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:57:40'),
(1164, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:58:09'),
(1165, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:59:07'),
(1166, 2, 'View', 'User viewed Meja Data.', '2025-01-23 22:59:22'),
(1167, 2, 'View', 'User viewed Scan Page.', '2025-01-23 22:59:34'),
(1168, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:00:06'),
(1169, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:00:16'),
(1170, 2, 'View', 'User viewed Meja Data.', '2025-01-23 23:00:23'),
(1171, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:01:23'),
(1172, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:04:41'),
(1173, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:05:24'),
(1174, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:06:05'),
(1175, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:07:25'),
(1176, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:11:29'),
(1177, 2, 'View', 'User viewed Menu Data.', '2025-01-23 23:12:06'),
(1178, 2, 'View', 'User viewed Meja Data.', '2025-01-23 23:12:10'),
(1179, 2, 'View', 'User viewed Meja Data.', '2025-01-23 23:16:54'),
(1180, 2, 'View', 'User viewed Scan Page.', '2025-01-23 23:16:56'),
(1181, 2, 'View', 'User viewed Kasir Page.', '2025-01-23 23:17:23'),
(1182, 2, 'View', 'User viewed Kasir Page.', '2025-01-23 23:18:30'),
(1183, 2, 'View', 'User viewed Kasir Page.', '2025-01-23 23:18:55'),
(1184, 2, 'View', 'User viewed Kasir Page.', '2025-01-23 23:19:03'),
(1185, 2, 'View', 'User viewed Kasir Page.', '2025-01-23 23:19:11'),
(1186, 2, 'Login', 'User has logged in.', '2025-01-24 17:05:52'),
(1187, 2, 'View', 'User viewed dashboard.', '2025-01-24 17:05:52'),
(1188, 2, 'View', 'User viewed Scan Page.', '2025-01-24 17:13:07'),
(1189, 2, 'View', 'User viewed Meja Data.', '2025-01-24 17:13:09'),
(1190, 2, 'View', 'User viewed Scan Page.', '2025-01-24 17:13:13'),
(1191, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:13:32'),
(1192, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:13:34'),
(1193, 2, 'View', 'User viewed Meja Data.', '2025-01-24 17:14:21'),
(1194, 2, 'View', 'User viewed Meja Data.', '2025-01-24 17:15:39'),
(1195, 2, 'View', 'User viewed Scan Page.', '2025-01-24 17:15:57'),
(1196, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:16:01'),
(1197, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:16:36'),
(1198, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:17:56'),
(1199, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:18:21'),
(1200, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:18:23'),
(1201, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:18:28'),
(1202, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:18:33'),
(1203, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:19:09'),
(1204, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:19:41'),
(1205, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:19:48'),
(1206, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:20:17'),
(1207, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:21:01'),
(1208, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:21:15'),
(1209, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:21:24'),
(1210, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 17:21:31'),
(1211, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:14:33'),
(1212, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:14:39'),
(1213, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:14:47'),
(1214, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:17:47'),
(1215, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:18:05'),
(1216, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:18:15'),
(1217, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:18:38'),
(1218, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:18:44'),
(1219, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:19:02'),
(1220, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:19:27'),
(1221, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:19:31'),
(1222, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:19:47'),
(1223, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:19:56'),
(1224, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:20:06'),
(1225, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:20:19'),
(1226, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:20:28'),
(1227, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:21:44'),
(1228, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:22:00'),
(1229, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:31:36'),
(1230, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:32:46'),
(1231, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:54:29'),
(1232, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:55:18'),
(1233, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:56:37'),
(1234, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:58:44'),
(1235, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:59:23'),
(1236, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:59:30'),
(1237, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 18:59:36'),
(1238, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:11:26'),
(1239, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:11:58'),
(1240, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:13:11'),
(1241, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:15:03'),
(1242, 2, 'View', 'User viewed Meja Data.', '2025-01-24 19:15:17'),
(1243, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:15:20'),
(1244, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:16:23'),
(1245, 2, 'View', 'User viewed Add Menu Data.', '2025-01-24 19:16:26'),
(1246, 2, 'add', 'User added Menu Data.', '2025-01-24 19:16:32'),
(1247, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:16:32'),
(1248, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:16:36'),
(1249, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:18:38'),
(1250, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:18:42'),
(1251, 2, 'View', 'User viewed Scan Page.', '2025-01-24 19:25:42'),
(1252, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:25:56'),
(1253, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:28:26'),
(1254, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:28:42'),
(1255, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:29:05'),
(1256, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:29:30'),
(1257, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:29:43'),
(1258, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:29:53'),
(1259, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:31:16'),
(1260, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:31:29'),
(1261, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:37:29'),
(1262, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:39:58'),
(1263, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:43:27'),
(1264, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:43:32'),
(1265, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:44:16'),
(1266, 2, 'View', 'User viewed Menu Data.', '2025-01-24 19:44:27'),
(1267, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:49:32'),
(1268, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:49:35'),
(1269, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:50:04'),
(1270, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:52:00'),
(1271, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 19:52:08'),
(1272, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:08:12'),
(1273, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:13:24'),
(1274, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:14:16'),
(1275, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:17:32'),
(1276, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:23:29'),
(1277, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:23:50'),
(1278, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:27:19'),
(1279, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:30:58'),
(1280, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:32:44'),
(1281, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:33:29'),
(1282, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:34:28'),
(1283, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:34:46'),
(1284, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:34:52'),
(1285, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:34:59'),
(1286, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:35:15'),
(1287, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:38:08'),
(1288, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:41:46'),
(1289, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:42:34'),
(1290, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:43:03'),
(1291, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:44:31'),
(1292, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:48:08'),
(1293, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:50:37'),
(1294, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:50:49'),
(1295, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:52:36'),
(1296, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:53:48'),
(1297, 2, 'Cancel', 'User Canceled a Transaction.', '2025-01-24 20:53:59'),
(1298, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:54:00'),
(1299, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:54:03'),
(1300, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:56:31'),
(1301, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:56:42'),
(1302, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:57:09'),
(1303, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 20:57:15'),
(1304, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:57:18'),
(1305, 2, 'Complete', 'User Completed a transaction.', '2025-01-24 20:59:13'),
(1306, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:59:13'),
(1307, 2, 'View', 'User viewed Menu Data.', '2025-01-24 20:59:34'),
(1308, 2, 'View', 'User viewed Meja Data.', '2025-01-24 20:59:35'),
(1309, 2, 'View', 'User viewed Scan Page.', '2025-01-24 20:59:36'),
(1310, 2, 'View', 'User viewed Scan Page.', '2025-01-24 20:59:56'),
(1311, 2, 'View', 'User viewed Meja Data.', '2025-01-24 21:00:03'),
(1312, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:00:05'),
(1313, 2, 'View', 'User viewed Meja Data.', '2025-01-24 21:03:05'),
(1314, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:03:08'),
(1315, 2, 'View', 'User viewed Meja Data.', '2025-01-24 21:03:10'),
(1316, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:06:33'),
(1317, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:06:41'),
(1318, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 21:06:47'),
(1319, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:06:54'),
(1320, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 21:06:59'),
(1321, 2, 'Login', 'User has logged in.', '2025-01-24 21:08:16'),
(1322, 2, 'View', 'User viewed dashboard.', '2025-01-24 21:08:16'),
(1323, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:08:25'),
(1324, 2, 'View', 'User viewed Add Menu Data.', '2025-01-24 21:08:34'),
(1325, 2, 'View', 'User viewed Add Menu Data.', '2025-01-24 21:09:13'),
(1326, 2, 'add', 'User added Menu Data.', '2025-01-24 21:09:22'),
(1327, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:09:22'),
(1328, 2, 'Deleted', 'User Deleted Menu Data.', '2025-01-24 21:09:26'),
(1329, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:09:26'),
(1330, 2, 'Login', 'User has logged in.', '2025-01-24 21:09:39'),
(1331, 2, 'View', 'User viewed dashboard.', '2025-01-24 21:09:39'),
(1332, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:09:49'),
(1333, 2, 'View', 'User viewed Add Menu Data.', '2025-01-24 21:09:59'),
(1334, 2, 'add', 'User added Menu Data.', '2025-01-24 21:10:08'),
(1335, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:10:08'),
(1336, 2, 'View', 'User viewed Add Menu Data.', '2025-01-24 21:10:12'),
(1337, 2, 'add', 'User added Menu Data.', '2025-01-24 21:10:14'),
(1338, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:10:14'),
(1339, 2, 'Deleted', 'User Deleted Menu Data.', '2025-01-24 21:10:18'),
(1340, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:10:18'),
(1341, 2, 'View', 'User viewed Meja Data.', '2025-01-24 21:10:22'),
(1342, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:10:30'),
(1343, 2, 'View', 'User viewed user Data.', '2025-01-24 21:10:44'),
(1344, 2, 'View', 'User viewed Website Setting.', '2025-01-24 21:10:51'),
(1345, 2, 'View', 'User viewed Activity log.', '2025-01-24 21:10:56'),
(1346, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:11:00'),
(1347, 2, 'View', 'User viewed Meja Data.', '2025-01-24 21:11:15'),
(1348, 2, 'View', 'User viewed Scan Page.', '2025-01-24 21:11:20'),
(1349, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 21:12:06'),
(1350, 2, 'View', 'User viewed Kasir Page.', '2025-01-24 21:13:51'),
(1351, 2, 'View', 'User viewed Menu Data.', '2025-01-24 21:13:55');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `transaksi_id`, `Menu_id`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(86, 1, 1, 20000.00, '2025-01-23 12:56:02', NULL, NULL),
(87, 1, 2, 5000.00, '2025-01-23 12:56:03', NULL, NULL),
(88, 1, 3, 20000.00, '2025-01-23 12:56:04', NULL, NULL),
(89, 1, 4, 5000.00, '2025-01-23 12:56:05', NULL, NULL),
(90, 2, 1, 20000.00, '2025-01-23 12:56:45', NULL, NULL),
(91, 2, 2, 5000.00, '2025-01-23 12:56:47', NULL, NULL),
(92, 121, 3, 20000.00, '2025-01-24 20:53:19', NULL, '2025-01-24 20:53:59'),
(93, 121, 2, 5000.00, '2025-01-24 20:53:19', NULL, '2025-01-24 20:53:59'),
(94, 122, 2, 5000.00, '2025-01-24 20:56:39', NULL, NULL),
(95, 122, 4, 5000.00, '2025-01-24 20:56:39', NULL, NULL),
(96, 123, 3, 20000.00, '2025-01-24 20:57:15', NULL, NULL),
(97, 123, 2, 5000.00, '2025-01-24 20:57:15', NULL, NULL),
(98, 124, 1, 20000.00, '2025-01-24 21:13:51', NULL, NULL),
(99, 124, 3, 20000.00, '2025-01-24 21:13:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `No_meja`) VALUES
(1, 'N1'),
(2, 'N2'),
(3, 'G0'),
(4, 'G2'),
(5, 'G1'),
(7, 'E2'),
(8, 'E1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `Kategory`, `foto`, `nama_menu`, `harga_menu`, `Stok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Food', 'nasi_uduk.png', 'Nasi Uduk', 20000.00, 30, '2025-01-22 13:27:47', NULL, NULL),
(2, 'Drink', 'Teh_obeng.png', 'The Obeng', 5000.00, 50, '2025-01-22 13:28:34', NULL, NULL),
(3, 'Food', 'nasi_goreng (1).png', 'nasi Goreng', 20000.00, 10, '2025-01-22 13:29:16', NULL, NULL),
(4, 'Drink', 'sprite.png', 'Jus Kiwi', 5000.00, 20, '2025-01-22 13:29:27', NULL, NULL),
(5, 'Drink', '1', '', 0.00, 0, '2025-01-23 09:25:01', NULL, '2025-01-23 09:31:41'),
(9, 'Food', '82k1aVUYS3bLnGWzfk1ds5xImiZHAH7KActpgJBE.png', '22', 22.00, 22, '2025-01-23 09:50:52', NULL, '2025-01-23 09:51:01'),
(12, 'Food', 'SFnXckPD652GMOGG9V1HRnGW75Az7lBomz34L424.png', 'Mie Gacoan1', 15000.00, 100, '2025-01-23 10:04:25', NULL, NULL),
(13, 'Drink', 'jHZR4C6fA4U2SdflTZBPykvYozDYaSH8lmDDBB2Z.png', '1', 1.00, 1, '2025-01-24 21:09:22', NULL, '2025-01-24 21:09:26'),
(14, 'Drink', 'cWjmSMeQA8CUZyCtTH9wSY5EjOQ08kr5NxEvWpV2.png', '11', 5000.00, 1, '2025-01-24 21:10:08', NULL, '2025-01-24 21:10:18');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `No_meja`, `tanggal_transaksi`, `total_harga`, `bayar`, `kembalian`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'G2', '2025-01-23', 200000.00, 200000.00, 0.00, 2, '2025-01-23 12:49:29', NULL, NULL),
(2, 'G1', '2025-01-23', 200000.00, 0.00, 0.00, 1, '2025-01-23 12:49:29', NULL, NULL),
(3, '3', '2025-01-23', 200000.00, 0.00, 0.00, 1, '2025-01-23 12:49:29', NULL, '2025-01-23 21:43:01'),
(121, 'G0', '2025-01-24', 0.00, 111111.00, 111111.00, 1, '2025-01-24 20:53:19', NULL, '2025-01-24 20:53:59'),
(122, 'G0', '2025-01-24', 11000.00, 200000.00, 189000.00, 1, '2025-01-24 20:56:39', NULL, NULL),
(123, 'G0', '2025-01-24', 27500.00, 111111.00, 83611.00, 2, '2025-01-24 20:57:15', NULL, NULL),
(124, 'E1', '2025-01-24', 44000.00, 200000.00, 156000.00, 1, '2025-01-24 21:13:51', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1352;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
