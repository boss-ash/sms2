-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2026 at 02:31 AM
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
  `last_seen_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `full_name`, `role_key`, `student_id`, `status`, `must_change_password`, `failed_login_attempts`, `locked_until`, `password_changed_at`, `last_login_at`, `last_seen_at`, `last_login_ip`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@bestlink.edu.ph', '$2y$10$59aKdUHIQPW2XJHffCnut.lW/JiaAPfCJIVQN26pCEV.tcJm/w8BW', 'Super Admin', 'admin', NULL, 'active', 0, 0, NULL, '2026-07-22 22:58:10', '2026-07-25 16:20:32', '2026-07-26 08:29:29', '::1', NULL, '2026-07-22 22:53:59', '2026-07-25 16:29:29'),
(2, 'registrar', 'registrar@bestlink.edu.ph', '$2y$10$PoQBSoF7aQ0RLCKHvmLOY.ei9u1bvUuy1hSVPERetRuGOy633zdCi', 'Registrar', 'registrar', NULL, 'active', 0, 0, NULL, '2026-07-22 22:53:59', '2026-07-25 15:34:07', NULL, '::1', NULL, '2026-07-22 22:53:59', '2026-07-25 15:34:07'),
(3, 'cradofficer', 'cradofficer@bestlink.edu.ph', '$2y$10$ChTgpF/iRU4Ivq8Pgzy12Ov2u5neFGzjcJq8qwmQ/KEdqYhVGMP5m', 'CRAD Officer', 'crad_officer', NULL, 'active', 0, 0, NULL, '2026-07-22 22:53:59', '2026-07-25 16:03:27', NULL, '::1', NULL, '2026-07-22 22:53:59', '2026-07-25 16:12:30'),
(4, 'finance', 'finance@bestlink.edu.ph', '$2y$10$jHpVLfr/0XWOJ5.2TaJuDu1GlXnOlq4.S8TxVBcYFC2yezCpX4Or2', 'Finance', 'finance', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(5, 'studentaffairs', 'studentaffairs@bestlink.edu.ph', '$2y$10$lViM6fo1qu33TQ8G45UW6OF6op7etas9WBZ12cvQdEPSKuU7TGmXW', 'Student Affairs', 'osa', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(6, 'itofficer', 'itofficer@bestlink.edu.ph', '$2y$10$fIFFgaSnSssf4ZdaYupnZ.fzX6dYDfE7escqc/GMedxVZUHCaqCPe', 'IT Officer', 'it_office', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(7, 'qualityassurance', 'qualityassurance@bestlink.edu.ph', '$2y$10$Bm/Te5m0uFyTRDhDDV.lf.9HuUEe7qIUOfZtHXF2eufIIXL1N3IVC', 'Quality Assurance', 'qa', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(8, 'hr', 'hr@bestlink.edu.ph', '$2y$10$Zn4O1E8ufU6/nBRe9lhlY.fDS4NGr.ixPavQtjFchNT9O4HNSZKtm', 'HR', 'hr', NULL, 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(9, 's230000001', 's230000001@bestlink.edu.ph', '$2y$10$y6Je8UEPZ82pd513DbZ3M.Rw0KVLBM2Gz1Ru62Ol7/sw.W8gbLzg6', 'Student User', 'student', 'S230000001', 'active', 0, 0, NULL, '2026-07-22 22:54:00', NULL, NULL, NULL, NULL, '2026-07-22 22:54:00', '2026-07-22 22:54:00'),
(10, 'boss_a', 'pinunu348@cream.pink', '$2y$10$Rb8Qa7LoygoR8Y/fCRo2muya/3isUYGomlFYFrUaMt5.9M/hHMRFC', 'ashley sanchez', 'student', NULL, 'active', 0, 0, NULL, '2026-07-23 09:02:37', '2026-07-23 13:37:22', NULL, '::1', NULL, '2026-07-23 06:41:34', '2026-07-23 13:37:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_username` (`username`),
  ADD UNIQUE KEY `uq_users_email` (`email`),
  ADD KEY `idx_users_role` (`role_key`),
  ADD KEY `idx_users_status` (`status`),
  ADD KEY `idx_users_student_id` (`student_id`),
  ADD KEY `idx_users_last_seen` (`last_seen_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_key`) REFERENCES `roles` (`role_key`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
