-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 06:22 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Renato', 'test@gmail.com', '111', NULL, '2017-04-09 05:48:37', '2017-04-09 05:48:37'),
(2, 'ArnelPogie', 'arnelpogie@gmail.com', '1111', NULL, '2017-04-09 05:49:24', '2017-04-09 05:49:24'),
(3, 'Arnel Capendit', 'arnelcapendit@yahoo.com', '$2y$10$9HBp8RkUXcf8vAfQDW3OSuAE1hPsZMPyOBODhZ7CNgo5UwztVYrPW', 'n4rRySYkditdUfIMT3UXwNuZpf8zzuqO7tA3qByp0ahx4S3FcY1pxnPxGv8k', '2017-04-09 06:04:50', '2017-04-09 06:04:50'),
(4, 'Elias', 'elias@gmail.com', '$2y$10$8NJRO/7eCarbYQM0l66wIOWiWyFBxxCWaCrzsunNgnRLELFJ9GQNK', 'q0R7Hgn50MtHiwUbmvnXHI4ZLARkVJOt6xtdoAbTHOJVhM4FfCacsCle5mwJ', '2017-04-10 06:56:03', '2017-04-10 06:56:03'),
(5, 'Bok', 'bok@gmail.com', '$2y$10$rjNemWcFTxV5bRTCUkkccOfYK4bSkha8/0n6THNKdc1AINGSpP0CG', 'C6IQKUd66nDzOTaNB3IJDtREIQu46Vc6xLlqqQzWE9AUmef5wdsJXmH0sbHw', '2017-04-10 06:59:25', '2017-04-10 06:59:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
