-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 03:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wartegnusantara`
--
CREATE DATABASE IF NOT EXISTS `wartegnusantara` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wartegnusantara`;

-- --------------------------------------------------------

--
-- Table structure for table `emailconfig`
--
-- Creation: Nov 30, 2020 at 06:54 AM
--

CREATE TABLE `emailconfig` (
  `id` int(11) NOT NULL,
  `fromemail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `security` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emailconfig`
--

INSERT INTO `emailconfig` (`id`, `fromemail`, `fromname`, `protocol`, `host`, `username`, `security`, `port`, `password`, `created_at`, `updated_at`) VALUES
(1, 'codeigniter@example.com', 'Codeigniter Auth', 'smtp', 'gmail.google.com', 'official@gmail.com', 'tls', '22', '$2y$10$PK65kpF6SflIk/iAJql6R.PRXX9GEaoRrJHHORqReU2I0E/60pVtC', '2020-08-21 17:43:51', '2020-09-11 14:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--
-- Creation: Nov 30, 2020 at 06:54 AM
--

CREATE TABLE `logs` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `reference` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `date`, `time`, `reference`, `name`, `ip`, `location`, `browser`, `status`, `created_at`, `updated_at`) VALUES
(13, '2020-11-30', '14:59:13', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-11-30 14:59:13', '2020-11-30 14:59:13'),
(14, '2020-11-30', '15:20:00', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-11-30 15:20:00', '2020-11-30 15:20:00'),
(15, '2020-12-04', '14:20:44', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-04 14:20:44', '2020-12-04 14:20:44'),
(16, '2020-12-04', '14:48:13', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-04 14:48:13', '2020-12-04 14:48:13'),
(17, '2020-12-04', '21:22:34', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-04 21:22:34', '2020-12-04 21:22:34'),
(18, '2020-12-11', '09:36:22', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-11 09:36:22', '2020-12-11 09:36:22'),
(19, '2020-12-14', '09:18:10', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-14 09:18:10', '2020-12-14 09:18:10'),
(20, '2020-12-14', '09:44:39', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-14 09:44:39', '2020-12-14 09:44:39'),
(21, '2020-12-14', '09:48:57', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-14 09:48:57', '2020-12-14 09:48:57'),
(22, '2020-12-14', '09:54:54', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-14 09:54:54', '2020-12-14 09:54:54'),
(23, '2020-12-14', '10:07:27', 1, 'Admin', '::1', NULL, 'Chrome', 'Success', '2020-12-14 10:07:27', '2020-12-14 10:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--
-- Creation: Nov 30, 2020 at 06:54 AM
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateformat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timeformat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iprestriction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language`, `timezone`, `dateformat`, `timeformat`, `iprestriction`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Asia/Jakarta', 'yyyy-mm-dd', '24', '', '2020-08-21 17:43:51', '2020-11-30 15:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Nov 30, 2020 at 06:54 AM
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `new_email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activate_hash` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_hash` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_expires` bigint(20) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `new_email`, `password_hash`, `name`, `firstname`, `lastname`, `activate_hash`, `reset_hash`, `reset_expires`, `active`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', NULL, '$2y$10$/clmNLUUxGnREFHqraU7P.aVfJ5Mk0iEKRgKVz8.ZKOZIUGJGXlya', 'Admin', 'Admin', 'User', 'ZEWv2TUIY5oDqgw9FkjnmAS78zJNKfpL', NULL, NULL, 1, '2020-08-04 16:07:50', '2020-09-11 14:32:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emailconfig`
--
ALTER TABLE `emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emailconfig`
--
ALTER TABLE `emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
