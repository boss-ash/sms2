-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2026 at 02:48 AM
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
-- Database: `sms2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `role_key` varchar(40) DEFAULT NULL,
  `action` varchar(40) NOT NULL,
  `module_key` varchar(60) DEFAULT NULL,
  `detail` varchar(500) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `role_key`, `action`, `module_key`, `detail`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, NULL, 'System', 'admin', 'cleanup', 'System', 'Removed demo users ù awaiting Super Admin setup via /setup/', 'cli', NULL, '2026-07-22 22:49:02'),
(2, NULL, 'System', 'admin', 'seed', 'System', 'Official role accounts seeded', 'cli', NULL, '2026-07-22 22:54:00'),
(3, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 22:55:13'),
(4, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 22:55:23'),
(5, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 22:58:30'),
(6, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 22:58:51'),
(7, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:00:19'),
(8, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:00:35'),
(9, 1, 'Super Admin', 'admin', 'login', 'System', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:01:00'),
(10, 1, 'Super Admin', 'admin', 'logout', 'System', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:07:11'),
(11, 3, 'CRAD Officer', 'crad_officer', 'login', 'System', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:08:54'),
(12, 1, 'Super Admin', 'admin', 'login', 'System', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:12:48'),
(13, 3, 'CRAD Officer', 'crad_officer', 'logout', 'System', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:33:41'),
(14, 3, 'CRAD Officer', 'crad_officer', 'login', 'System', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:34:11'),
(15, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:39:55'),
(16, 1, 'Super Admin', 'admin', 'view', 'user-management', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:39:56'),
(17, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-22 23:40:10'),
(18, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 03:36:52'),
(19, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 03:44:42'),
(20, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 03:44:46'),
(21, 3, 'CRAD Officer', 'crad_officer', 'password_reset_request', 'crad', 'Requested password reset via crad: nalimutan', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 03:45:11'),
(22, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Rejected password reset request #1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 04:07:32'),
(23, 3, 'CRAD Officer', 'crad_officer', 'password_reset_request', 'crad', 'Requested password reset via crad: YGI#123sRETR', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 04:08:42'),
(24, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 04:09:54'),
(25, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 04:10:49'),
(26, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Cursor/3.11.25 Chrome/144.0.7559.236 Electron/40.10.3 Safari/537.36', '2026-07-23 04:25:59'),
(27, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 05:24:52'),
(28, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 05:53:55'),
(29, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 05:54:18'),
(30, 1, 'Super Admin', 'admin', 'create', 'user-management', 'Created user boss_a', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 06:41:34'),
(31, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Archived user #10 (status=inactive)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 06:41:42'),
(32, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:09:10'),
(33, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:09:19'),
(34, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:18:02'),
(35, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:19:25'),
(36, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:20:06'),
(37, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:21:22'),
(38, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:31:13'),
(39, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:31:25'),
(40, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:31:27'),
(41, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated login security settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:05'),
(42, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:19'),
(43, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:24'),
(44, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:30'),
(45, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:34'),
(46, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:37'),
(47, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:39'),
(48, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:44'),
(49, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:51'),
(50, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:56'),
(51, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:33:58'),
(52, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:03'),
(53, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:06'),
(54, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:08'),
(55, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:10'),
(56, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:16'),
(57, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:22'),
(58, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:32'),
(59, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:34:39'),
(60, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:01'),
(61, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:08'),
(62, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:12'),
(63, NULL, NULL, NULL, 'login_failed', 'System', 'Unknown username/email attempted login', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:17'),
(64, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Account locked after failed login attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:23'),
(65, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:23'),
(66, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:32'),
(67, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:36'),
(68, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Account locked after failed login attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:45'),
(69, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:35:45'),
(70, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:36:00'),
(71, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:37:05'),
(72, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:48:03'),
(73, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:52:20'),
(74, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:52:25'),
(75, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:52:28'),
(76, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:52:31'),
(77, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:57:40'),
(78, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 07:57:56'),
(79, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:02:11'),
(80, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated login security settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:06'),
(81, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:12'),
(82, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:18'),
(83, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:20'),
(84, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:25'),
(85, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:25'),
(86, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:28'),
(87, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:32'),
(88, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:39'),
(89, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:05:42'),
(90, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:07'),
(91, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:10'),
(92, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:13'),
(93, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:13'),
(94, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:16'),
(95, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:19'),
(96, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:46'),
(97, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:46'),
(98, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:49'),
(99, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:06:51'),
(100, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:02'),
(101, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:02'),
(102, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:05'),
(103, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:09'),
(104, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:18'),
(105, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:18'),
(106, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:21'),
(107, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:25'),
(108, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:29'),
(109, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:58'),
(110, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:07:58'),
(111, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:08:00'),
(112, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:08:02'),
(113, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:09:52'),
(114, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:09:54'),
(115, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:09:56'),
(116, 3, 'CRAD Officer', 'crad_officer', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:11:00'),
(117, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:11:17'),
(118, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:11:22'),
(119, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:11:22'),
(120, 3, 'CRAD Officer', 'crad_officer', 'password_reset_request', 'System', 'Password reset requested', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:11:51'),
(121, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:12:38'),
(122, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:12:42'),
(123, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:02'),
(124, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:12'),
(125, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:23'),
(126, 1, 'Super Admin', 'admin', 'lockout', 'System', 'Login locked after failed attempts', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:35'),
(127, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:35'),
(128, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:41'),
(129, 1, 'Super Admin', 'admin', 'login_failed', 'System', 'Invalid password', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:13:54'),
(130, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:14:09'),
(131, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:18:21'),
(132, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:18:23'),
(133, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:18:25'),
(134, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:31:54'),
(135, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:31:56'),
(136, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:31:58'),
(137, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:32:08'),
(138, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:32:19'),
(139, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:41:25'),
(140, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:41:27'),
(141, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:41:29'),
(142, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:41:52'),
(143, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:42:01'),
(144, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:42:05'),
(145, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:44:38'),
(146, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:49:41'),
(147, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:53:47'),
(148, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:53:50'),
(149, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:53:52'),
(150, 3, 'CRAD Officer', 'crad_officer', 'password_reset_request', 'System', 'Password reset requested', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 08:55:08'),
(151, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:01:47'),
(152, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Restored user #10 (status=active)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:01:57'),
(153, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated user boss_a', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:02:37'),
(154, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:02:42'),
(155, 10, 'ashley sanchez', 'student', 'login', 'student_portal', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:02:52'),
(156, 10, 'ashley sanchez', 'student', 'logout', 'student_portal', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:02:57'),
(157, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset requested', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 09:03:04'),
(158, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset requested but email failed: Unable to send email. Configure SMTP in System Settings.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:06:08'),
(159, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset requested but email failed: Unable to send email. Configure SMTP in System Settings.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:06:31'),
(160, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset requested but email failed: Unable to send email. Configure SMTP in System Settings.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:06:46'),
(161, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:10:04'),
(162, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:10:19'),
(163, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:10:55'),
(164, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:19:58'),
(165, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:20:00'),
(166, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:20:04'),
(167, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:20:11'),
(168, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:20:47'),
(169, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:21:03'),
(170, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:21:08'),
(171, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:21:14'),
(172, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:23:12'),
(173, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset email failed for pinunu348@cream.pink: Email is not configured yet. Open System Settings → Notifications / Email and set SMTP (for Gmail: smtp.gmail.com, port 587, TLS, your Gmail + App Password).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:23:15'),
(174, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:25:07'),
(175, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated notification / SMTP settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:33:25'),
(176, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated notification / SMTP settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:34:27'),
(177, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated notification / SMTP settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:51:00'),
(178, 1, 'Super Admin', 'admin', 'update', 'user-management', 'Updated notification / SMTP settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:51:48'),
(179, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:55:03'),
(180, 10, 'ashley sanchez', 'student', 'password_reset_request', 'System', 'Password reset link emailed to pinunu348@cream.pink', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:55:10'),
(181, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:56:28'),
(182, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:57:15'),
(183, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:58:01'),
(184, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:58:13'),
(185, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:58:34'),
(186, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:58:55'),
(187, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:59:02'),
(188, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 10:59:05'),
(189, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 11:11:56'),
(190, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 11:12:02'),
(191, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 11:14:49'),
(192, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 11:14:53'),
(193, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:11:16'),
(194, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:11:25'),
(195, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:12:03'),
(196, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:12:38'),
(197, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:13:06'),
(198, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:13:32'),
(199, 10, 'ashley sanchez', 'student', 'login', 'student_portal', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:13:42'),
(200, 10, 'ashley sanchez', 'student', 'view', 'student_portal', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:13:44'),
(201, 10, 'ashley sanchez', 'student', 'logout', 'student_portal', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:15:54'),
(202, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:04'),
(203, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:07'),
(204, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:31'),
(205, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:41'),
(206, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:50');
INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `role_key`, `action`, `module_key`, `detail`, `ip_address`, `user_agent`, `created_at`) VALUES
(207, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:16:58'),
(208, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:17:34'),
(209, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:19:04'),
(210, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:19:07'),
(211, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:22:49'),
(212, 10, 'ashley sanchez', 'student', 'login', 'student_portal', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:23:21'),
(213, 10, 'ashley sanchez', 'student', 'view', 'student_portal', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:23:25'),
(214, 10, 'ashley sanchez', 'student', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:32:27'),
(215, 10, 'ashley sanchez', 'student', 'logout', 'student_portal', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:33:50'),
(216, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:34:35'),
(217, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:34:39'),
(218, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:35:13'),
(219, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:44:52'),
(220, 1, 'Super Admin', 'admin', 'update', 'crad', 'Admin disabled Authenticator for user #3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:52:42'),
(221, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:55:43'),
(222, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:55:46'),
(223, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:55:54'),
(224, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:56:20'),
(225, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:56:24'),
(226, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:56:39'),
(227, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:56:48'),
(228, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 12:56:55'),
(229, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:03:02'),
(230, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:03:26'),
(231, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:04:59'),
(232, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:05:03'),
(233, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:05:21'),
(234, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:05:32'),
(235, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:05:35'),
(236, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:09:30'),
(237, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:09:33'),
(238, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:12:50'),
(239, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:12:54'),
(240, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:13:48'),
(241, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:15:02'),
(242, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:15:11'),
(243, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:15:21'),
(244, 1, 'Super Admin', 'admin', 'update', 'crad', 'Turned off Authenticator for CRAD Officer (cradofficer@bestlink.edu.ph)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:16:18'),
(245, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:16:28'),
(246, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:17:05'),
(247, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Added passkey: grad', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:15'),
(248, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:22'),
(249, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:26'),
(250, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:28'),
(251, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:41'),
(252, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:20:44'),
(253, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Added passkey: grad s1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:21:23'),
(254, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:21:26'),
(255, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:21:53'),
(256, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:22:03'),
(257, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:24:36'),
(258, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:24:47'),
(259, 1, 'Super Admin', 'admin', 'view', 'enrollment', 'Opened Enrollment Management Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:25:10'),
(260, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:25:24'),
(261, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:30:39'),
(262, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:30:44'),
(263, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:30:47'),
(264, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:31:43'),
(265, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Removed a passkey', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:32:04'),
(266, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:34:23'),
(267, 10, 'ashley sanchez', 'student', 'login', 'student_portal', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:35:47'),
(268, 10, 'ashley sanchez', 'student', 'view', 'student_portal', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:36:17'),
(269, 10, 'ashley sanchez', 'student', 'logout', 'student_portal', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:36:52'),
(270, 10, 'ashley sanchez', 'student', 'login', 'student_portal', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:37:22'),
(271, 10, 'ashley sanchez', 'student', 'view', 'student_portal', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:37:25'),
(272, 10, 'ashley sanchez', 'student', 'logout', 'student_portal', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:37:31'),
(273, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:47:53'),
(274, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:50:21'),
(275, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:50:34'),
(276, 1, 'Super Admin', 'admin', 'update', 'crad', 'Turned off Authenticator for CRAD Officer (cradofficer@bestlink.edu.ph)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:51:50'),
(277, 1, 'Super Admin', 'admin', 'update', 'crad', 'Cleared 1 passkey(s) for CRAD Officer (cradofficer@bestlink.edu.ph)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:51:54'),
(278, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:51:59'),
(279, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:54:09'),
(280, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:54:12'),
(281, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:56:15'),
(282, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:56:20'),
(283, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 13:56:31'),
(284, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:07:38'),
(285, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:07:41'),
(286, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:07:49'),
(287, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:07:56'),
(288, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:08:49'),
(289, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:08:59'),
(290, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:09:11'),
(291, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:09:14'),
(292, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:10:26'),
(293, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:29:23'),
(294, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:29:43'),
(295, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:29:48'),
(296, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:31:28'),
(297, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:31:52'),
(298, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:40:34'),
(299, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:40:58'),
(300, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:41:01'),
(301, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:42:21'),
(302, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Disabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:42:58'),
(303, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:43:42'),
(304, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Added passkey: grad', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:46:25'),
(305, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:48:27'),
(306, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:48:40'),
(307, 1, 'Super Admin', 'admin', 'update', 'System', 'Added passkey: superadmin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:49:02'),
(308, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:49:19'),
(309, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:52:21'),
(310, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:52:25'),
(311, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:52:29'),
(312, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:53:05'),
(313, 1, 'Super Admin', 'admin', 'update', 'crad', 'Forced logout for CRAD users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:57:25'),
(314, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:57:45'),
(315, 1, 'Super Admin', 'admin', 'update', 'crad', 'Forced logout for CRAD users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:58:03'),
(316, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:58:07'),
(317, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:58:34'),
(318, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:58:42'),
(319, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:59:04'),
(320, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 14:59:38'),
(321, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:00:28'),
(322, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:00:33'),
(323, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:02:55'),
(324, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:05:00'),
(325, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:05:14'),
(326, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:05:21'),
(327, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:05:59'),
(328, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:06:08'),
(329, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:17:26'),
(330, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:17:32'),
(331, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:17:35'),
(332, 3, 'CRAD Officer', 'crad_officer', 'update', 'System', 'Added passkey: grad', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:18:28'),
(333, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:18:30'),
(334, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:18:36'),
(335, 1, 'Super Admin', 'admin', 'update', 'System', 'Enabled Google Authenticator', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:19:04'),
(336, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:19:14'),
(337, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:20:50'),
(338, 1, 'Super Admin', 'admin', 'update', 'crad', 'Forced logout for CRAD users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:22:08'),
(339, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:22:11'),
(340, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:23:08'),
(341, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:23:47'),
(342, 3, 'CRAD Officer', 'crad_officer', 'view', 'crad', 'Opened Security Settings', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:23:53'),
(343, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:24:32'),
(344, 1, 'Super Admin', 'admin', 'login', 'user-management', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:25:39'),
(345, 1, 'Super Admin', 'admin', 'view', 'crad', 'Opened CRAD Module Security', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:26:31'),
(346, 1, 'Super Admin', 'admin', 'update', 'crad', 'Enabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:27:11'),
(347, 1, 'Super Admin', 'admin', 'update', 'crad', 'Forced logout for CRAD users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:27:35'),
(348, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:27:40'),
(349, 3, 'CRAD Officer', 'crad_officer', 'login', 'crad', 'Logged in successfully', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:17'),
(350, 1, 'Super Admin', 'admin', 'update', 'crad', 'Forced logout for CRAD users', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:24'),
(351, 3, 'CRAD Officer', 'crad_officer', 'logout', 'crad', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:26'),
(352, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:41'),
(353, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:52'),
(354, NULL, 'Unknown', NULL, 'login_failed', 'System', 'Invalid login attempt (unknown credentials)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:28:55'),
(355, 1, 'Super Admin', 'admin', 'update', 'crad', 'Disabled maintenance for CRAD', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:29:22'),
(356, 1, 'Super Admin', 'admin', 'logout', 'user-management', 'Logged out', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '2026-07-23 15:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `login_throttles`
--

CREATE TABLE `login_throttles` (
  `id` int(10) UNSIGNED NOT NULL,
  `throttle_key` char(64) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_throttles`
--

INSERT INTO `login_throttles` (`id`, `throttle_key`, `ip_address`, `attempts`, `locked_until`, `updated_at`) VALUES
(65, '477d9f64244a7f8802a7420c5f1a61284f55ad262f7211bf8d99f71ec448df14', '::1', 0, NULL, '2026-07-23 15:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_ip` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token_hash`, `expires_at`, `used_at`, `created_ip`, `created_at`) VALUES
(1, 3, '97c24ca37508d21cf02f5cbb83fe216fca7dd1b9aa987028de99e6b5d3f6e9d5', '2026-07-23 09:11:51', '2026-07-23 08:55:08', '::1', '2026-07-23 08:11:51'),
(2, 3, '327bda72c73ec8050d40fab689448cf26a332732ce04404e2e717f2c7370d435', '2026-07-23 09:55:08', NULL, '::1', '2026-07-23 08:55:08'),
(3, 10, '8a22733a38853d2898a640a6b5109404a719b075d164e39faa3cae4b2f6cfbad', '2026-07-23 10:03:04', '2026-07-23 10:06:06', '::1', '2026-07-23 09:03:04'),
(4, 10, '3e150e385debde1afc8e113fbe43e2397a2d10924cc1d7a662cc926c05c70637', '2026-07-23 11:06:06', '2026-07-23 10:06:29', '::1', '2026-07-23 10:06:06'),
(5, 10, '92b661df8175f2dca14b51fa5a99ea831e6feeb4efe6d666739e8dcb205454be', '2026-07-23 11:06:29', '2026-07-23 10:06:44', '::1', '2026-07-23 10:06:29'),
(6, 10, 'd0e7d44f279ec0cf84b34c5f83884f42bfa31e17e8fab827f21f95a30ec79593', '2026-07-23 11:06:44', '2026-07-23 10:10:04', '::1', '2026-07-23 10:06:44'),
(7, 10, 'dd0495e648ca59203468eba7afe59b832ddaae8f2b64631c6199f386d65c19d1', '2026-07-23 11:10:04', '2026-07-23 10:10:19', '::1', '2026-07-23 10:10:04'),
(8, 10, '43215b89eb6a76014b02ccde2993a3d9ff28c88d6b55bbf649ea5a0f9065ac1a', '2026-07-23 11:10:19', '2026-07-23 10:19:58', '::1', '2026-07-23 10:10:19'),
(9, 10, '315bb1c168e9a1feda0fa30a265f3223de9f57becb0023d36910c86e0b80234a', '2026-07-23 11:19:58', '2026-07-23 10:20:00', '::1', '2026-07-23 10:19:58'),
(10, 10, 'afd25944fba435a20df6a0eda72ed292fde1d530dfb88e3948731df8e8a1a771', '2026-07-23 11:20:00', '2026-07-23 10:20:04', '::1', '2026-07-23 10:20:00'),
(11, 10, '3f2f5477a58a8d3ea64225795046bd1a410317d10a3e39e48fb85cad4953ff89', '2026-07-23 11:20:04', '2026-07-23 10:20:11', '::1', '2026-07-23 10:20:04'),
(12, 10, '8adc85eb6ad70d3b2db87e94ff7c87c5688a294ed16d5eb4b799d5b43cbb16b9', '2026-07-23 11:20:11', '2026-07-23 10:21:08', '::1', '2026-07-23 10:20:11'),
(13, 10, '6900b83f32594686cd83c36eb054b2d2cb9ae36986b8fbd25e6cb59be867c42a', '2026-07-23 11:21:08', '2026-07-23 10:21:14', '::1', '2026-07-23 10:21:08'),
(14, 10, '4c9bf66d12021bc317f3daf310325d53c521621839b86993aceeb0787697d15f', '2026-07-23 11:21:14', '2026-07-23 10:23:12', '::1', '2026-07-23 10:21:14'),
(15, 10, 'f0aa8685eb1eb196762a24917f012fefbfd5b3740c0c2bf56837c638f9c43cce', '2026-07-23 11:23:12', '2026-07-23 10:23:15', '::1', '2026-07-23 10:23:12'),
(16, 10, '1c22b49fb6b4181cf1bb7e318b0f5d6bbcac27af2c063edfe5c79eacaaf3ebd6', '2026-07-23 11:23:15', '2026-07-23 10:55:06', '::1', '2026-07-23 10:23:15'),
(17, 10, 'd16d00346f0d43e7341a1c248636e6cd809f2eb659c2aa1337811be1775f1c87', '2026-07-23 11:55:06', NULL, '::1', '2026-07-23 10:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_requests`
--

CREATE TABLE `password_reset_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module_key` varchar(60) NOT NULL,
  `reason` varchar(500) DEFAULT NULL,
  `requested_password_hash` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected','cancelled') NOT NULL DEFAULT 'pending',
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_note` varchar(500) DEFAULT NULL,
  `temp_password_set` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `resolved_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_requests`
--

INSERT INTO `password_reset_requests` (`id`, `user_id`, `module_key`, `reason`, `requested_password_hash`, `status`, `admin_id`, `admin_note`, `temp_password_set`, `created_at`, `resolved_at`) VALUES
(1, 3, 'crad', 'nalimutan', NULL, 'rejected', 1, NULL, 0, '2026-07-23 03:45:11', '2026-07-23 04:07:32'),
(2, 3, 'crad', 'YGI#123sRETR', '$2y$10$I1HhQibHFrZ4vEeh9GWOAeB2GqUYwuywhOzyqcKgvfoiTtmlKQOfK', 'pending', NULL, NULL, 0, '2026-07-23 04:08:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `role_key` varchar(40) NOT NULL,
  `label` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_key`, `label`, `description`, `is_system`, `created_at`) VALUES
(1, 'admin', 'Super Admin', 'Full system access', 1, '2026-07-22 22:24:44'),
(2, 'registrar', 'Registrar', 'Enrollment, records, scheduling', 1, '2026-07-22 22:24:44'),
(3, 'finance', 'Finance', 'Payments and receivables', 1, '2026-07-22 22:24:44'),
(4, 'hr', 'HR', 'Faculty and HR processes', 1, '2026-07-22 22:24:44'),
(5, 'it_office', 'IT Office', 'LMS and IT modules', 1, '2026-07-22 22:24:44'),
(6, 'osa', 'OSA', 'Student affairs / co-curricular', 1, '2026-07-22 22:24:44'),
(7, 'qa', 'QA Office', 'Accreditation and quality', 1, '2026-07-22 22:24:44'),
(8, 'crad_officer', 'CRAD Officer', 'Research and development', 1, '2026-07-22 22:24:44'),
(9, 'student', 'Student', 'Student portal only', 1, '2026-07-22 22:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_key` varchar(40) NOT NULL,
  `module_key` varchar(60) NOT NULL,
  `granted` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_key`, `module_key`, `granted`, `updated_at`) VALUES
(19, 'registrar', 'enrollment', 1, '2026-07-22 22:53:59'),
(20, 'registrar', 'registrar', 1, '2026-07-22 22:53:59'),
(21, 'registrar', 'curriculum', 1, '2026-07-22 22:53:59'),
(22, 'registrar', 'scheduling', 1, '2026-07-22 22:53:59'),
(23, 'crad_officer', 'crad', 1, '2026-07-22 22:53:59'),
(24, 'finance', 'payment', 1, '2026-07-22 22:53:59'),
(25, 'osa', 'cocurricular', 1, '2026-07-22 22:53:59'),
(26, 'it_office', 'lms', 1, '2026-07-22 22:53:59'),
(27, 'qa', 'accreditation', 1, '2026-07-22 22:53:59'),
(28, 'hr', 'faculty', 1, '2026-07-22 22:53:59'),
(29, 'student', 'student_portal', 1, '2026-07-22 22:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `security_otps`
--

CREATE TABLE `security_otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `purpose` varchar(40) NOT NULL,
  `code_hash` char(64) NOT NULL,
  `module_key` varchar(60) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `security_otps`
--

INSERT INTO `security_otps` (`id`, `user_id`, `purpose`, `code_hash`, `module_key`, `expires_at`, `used_at`, `created_at`) VALUES
(1, 3, 'auth_setup', '00aa177502733dd1e947e9addf22e1e33ff0a061d3af840955c53e19f129d130', NULL, '2026-07-23 12:32:33', NULL, '2026-07-23 12:22:33'),
(2, 10, 'auth_setup', '434b2a7ce1742c5901ad141e3fd48d88a160776362d41a87fe120c61735dca25', NULL, '2026-07-23 12:41:18', '2026-07-23 12:31:35', '2026-07-23 12:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_key` varchar(80) NOT NULL,
  `setting_value` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_key`, `setting_value`, `updated_at`) VALUES
('csrf_enabled', '1', '2026-07-22 22:24:44'),
('lockout_minutes', '1', '2026-07-23 08:05:06'),
('lockout_seconds', '15', '2026-07-23 08:05:06'),
('lockout_unit', 'seconds', '2026-07-23 08:05:06'),
('lockout_value', '15', '2026-07-23 08:05:06'),
('mail_admin_email', 'j14677365@gmail.com', '2026-07-23 10:34:27'),
('mail_from_email', 'noreply@bestlink.edu.ph', '2026-07-23 10:33:25'),
('mail_from_name', 'SMS 2', '2026-07-23 10:33:25'),
('mail_show_link_on_failure', '0', '2026-07-23 10:34:27'),
('max_failed_logins', '3', '2026-07-23 07:33:05'),
('min_password_length', '8', '2026-07-22 22:24:44'),
('module_kick_epoch_crad', '1784849304', '2026-07-23 15:28:24'),
('module_maintenance_crad', '0', '2026-07-23 15:29:22'),
('module_maintenance_msg_crad', 'The system is currently under maintenance. Some services may be temporarily unavailable.\r\n\r\nThank you for your patience and understanding.', '2026-07-23 15:05:14'),
('password_expiry_days', '0', '2026-07-22 22:24:44'),
('require_password_change_first_login', '0', '2026-07-22 22:24:44'),
('session_timeout_minutes', '30', '2026-07-22 22:24:44'),
('smtp_encryption', 'tls', '2026-07-23 10:33:25'),
('smtp_host', 'smtp.gmail.com', '2026-07-23 10:51:48'),
('smtp_password', 'onyb mjtm lvfr hluh', '2026-07-23 10:51:00'),
('smtp_port', '587', '2026-07-23 10:33:25'),
('smtp_username', 'j14677365@gmail.com', '2026-07-23 10:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `role_key` varchar(40) NOT NULL,
  `student_id` varchar(40) DEFAULT NULL,
  `status` enum('active','inactive','locked','suspended') NOT NULL DEFAULT 'active',
  `must_change_password` tinyint(1) NOT NULL DEFAULT 0,
  `failed_login_attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `password_changed_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `full_name`, `role_key`, `student_id`, `status`, `must_change_password`, `failed_login_attempts`, `locked_until`, `password_changed_at`, `last_login_at`, `last_login_ip`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@bestlink.edu.ph', '$2y$10$59aKdUHIQPW2XJHffCnut.lW/JiaAPfCJIVQN26pCEV.tcJm/w8BW', 'Super Admin', 'admin', NULL, 'active', 0, 0, NULL, '2026-07-22 22:58:10', '2026-07-23 15:25:39', '::1', NULL, '2026-07-22 22:53:59', '2026-07-23 15:25:39'),
(2, 'registrar', 'registrar@bestlink.edu.ph', '$2y$10$PoQBSoF7aQ0RLCKHvmLOY.ei9u1bvUuy1hSVPERetRuGOy633zdCi', 'Registrar', 'registrar', NULL, 'active', 0, 0, NULL, '2026-07-22 22:53:59', NULL, NULL, NULL, '2026-07-22 22:53:59', '2026-07-22 22:53:59'),
(3, 'cradofficer', 'cradofficer@bestlink.edu.ph', '$2y$10$ChTgpF/iRU4Ivq8Pgzy12Ov2u5neFGzjcJq8qwmQ/KEdqYhVGMP5m', 'CRAD Officer', 'crad_officer', NULL, 'active', 0, 0, NULL, '2026-07-22 22:53:59', '2026-07-23 15:28:17', '::1', NULL, '2026-07-22 22:53:59', '2026-07-23 15:28:17'),
(4, 'finance', 'finance@bestlink.edu.ph', '$2y$10$jHpVLfr/0XWOJ5.2TaJuDu1GlXnOlq4.S8TxVBcYFC2yezCpX4Or2', 'Finance', 'finance', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(5, 'studentaffairs', 'studentaffairs@bestlink.edu.ph', '$2y$10$lViM6fo1qu33TQ8G45UW6OF6op7etas9WBZ12cvQdEPSKuU7TGmXW', 'Student Affairs', 'osa', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(6, 'itofficer', 'itofficer@bestlink.edu.ph', '$2y$10$fIFFgaSnSssf4ZdaYupnZ.fzX6dYDfE7escqc/GMedxVZUHCaqCPe', 'IT Officer', 'it_office', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(7, 'qualityassurance', 'qualityassurance@bestlink.edu.ph', '$2y$10$Bm/Te5m0uFyTRDhDDV.lf.9HuUEe7qIUOfZtHXF2eufIIXL1N3IVC', 'Quality Assurance', 'qa', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(8, 'hr', 'hr@bestlink.edu.ph', '$2y$10$Zn4O1E8ufU6/nBRe9lhlY.fDS4NGr.ixPavQtjFchNT9O4HNSZKtm', 'HR', 'hr', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(9, 's230000001', 's230000001@bestlink.edu.ph', '$2y$10$y6Je8UEPZ82pd513DbZ3M.Rw0KVLBM2Gz1Ru62Ol7/sw.W8gbLzg6', 'Student User', 'student', 'S230000001', 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(10, 'boss_a', 'pinunu348@cream.pink', '$2y$10$Rb8Qa7LoygoR8Y/fCRo2muya/3isUYGomlFYFrUaMt5.9M/hHMRFC', 'ashley sanchez', 'student', NULL, 'active', 0, 0, NULL, '2026-07-23 09:02:37', '2026-07-23 13:37:22', '::1', NULL, '2026-07-23 06:41:34', '2026-07-23 13:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_authenticators`
--

CREATE TABLE `user_authenticators` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `secret` varchar(64) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `pending_secret` varchar(64) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_authenticators`
--

INSERT INTO `user_authenticators` (`user_id`, `secret`, `enabled`, `pending_secret`, `confirmed_at`, `updated_at`, `created_at`) VALUES
(1, 'HQHCC7FRQIE432NTEY7LWW7D53SO7XI6', 1, NULL, '2026-07-23 15:19:04', '2026-07-23 15:19:04', '2026-07-23 15:18:49'),
(3, 'UI4F3KQUFR3NCABITGJLHQZAGYDKO4KM', 1, NULL, '2026-07-23 14:43:42', '2026-07-23 14:43:42', '2026-07-23 12:34:56'),
(10, 'QT2WCXNJOT5AQVHCNZ337P2T3NUZOSZJ', 1, NULL, '2026-07-23 12:32:27', '2026-07-23 12:32:27', '2026-07-23 12:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_passkeys`
--

CREATE TABLE `user_passkeys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `credential_id` varchar(255) NOT NULL,
  `public_key` text NOT NULL,
  `sign_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `device_name` varchar(120) NOT NULL DEFAULT 'Passkey',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_used_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_passkeys`
--

INSERT INTO `user_passkeys` (`id`, `user_id`, `credential_id`, `public_key`, `sign_count`, `device_name`, `created_at`, `last_used_at`) VALUES
(3, 3, 'ADYbyqW9uUqh04CUtz7_Aw', '-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE0/RWiNkJh0BZiOJrtqOlhlauZmYf\nlE9IeBdwK0P/FpM1DPrfhtoFXdf99JkJc+HePQd4c85dNvttJn6AFOaRrQ==\n-----END PUBLIC KEY-----', 0, 'grad', '2026-07-23 14:46:25', '2026-07-23 15:17:32'),
(4, 1, 'qe9d0SCTgxBBeRPV8cuaUA', '-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE8+rDZsuGX+fPhe+tykDiYAHx30fH\nCclkBalrgX7vH4Ez8Me72jJL36hsoYzovBUBYZ+K14iYbMC+CtFcbsFQsA==\n-----END PUBLIC KEY-----', 0, 'superadmin', '2026-07-23 14:49:02', '2026-07-23 15:25:39'),
(5, 3, 'GCOA9ehgX0rDcS-2ArNkdA', '-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEe0cvtcK0mFW1MMDFnvRH/fMoK5h/\nkM/MT+WAcbxCXcSCxWZG+QIFje1pMa4LVfqw4k3xywcey5IC420oCNhtmQ==\n-----END PUBLIC KEY-----', 0, 'grad', '2026-07-23 15:18:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_logs_user` (`user_id`),
  ADD KEY `idx_logs_action` (`action`),
  ADD KEY `idx_logs_created` (`created_at`);

--
-- Indexes for table `login_throttles`
--
ALTER TABLE `login_throttles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_login_throttle_key` (`throttle_key`),
  ADD KEY `idx_login_throttle_ip` (`ip_address`),
  ADD KEY `idx_login_throttle_locked` (`locked_until`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reset_user` (`user_id`),
  ADD KEY `idx_reset_token` (`token_hash`),
  ADD KEY `idx_reset_expires` (`expires_at`);

--
-- Indexes for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prr_user` (`user_id`),
  ADD KEY `idx_prr_status` (`status`),
  ADD KEY `idx_prr_module` (`module_key`),
  ADD KEY `fk_prr_admin` (`admin_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_roles_key` (`role_key`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_role_module` (`role_key`,`module_key`),
  ADD KEY `idx_perm_module` (`module_key`);

--
-- Indexes for table `security_otps`
--
ALTER TABLE `security_otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_otp_user` (`user_id`),
  ADD KEY `idx_otp_expires` (`expires_at`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_username` (`username`),
  ADD UNIQUE KEY `uq_users_email` (`email`),
  ADD KEY `idx_users_role` (`role_key`),
  ADD KEY `idx_users_status` (`status`),
  ADD KEY `idx_users_student_id` (`student_id`);

--
-- Indexes for table `user_authenticators`
--
ALTER TABLE `user_authenticators`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_passkeys`
--
ALTER TABLE `user_passkeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_passkey_cred` (`credential_id`),
  ADD KEY `idx_passkey_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `login_throttles`
--
ALTER TABLE `login_throttles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `security_otps`
--
ALTER TABLE `security_otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_passkeys`
--
ALTER TABLE `user_passkeys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `fk_logs_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `fk_reset_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD CONSTRAINT `fk_prr_admin` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_prr_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `fk_perm_role` FOREIGN KEY (`role_key`) REFERENCES `roles` (`role_key`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `security_otps`
--
ALTER TABLE `security_otps`
  ADD CONSTRAINT `fk_otp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_key`) REFERENCES `roles` (`role_key`) ON UPDATE CASCADE;

--
-- Constraints for table `user_authenticators`
--
ALTER TABLE `user_authenticators`
  ADD CONSTRAINT `fk_ua_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_passkeys`
--
ALTER TABLE `user_passkeys`
  ADD CONSTRAINT `fk_passkey_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
