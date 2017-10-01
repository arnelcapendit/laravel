-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 06:23 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `live` tinyint(1) DEFAULT '0',
  `post_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `content`, `created_at`, `updated_at`, `live`, `post_on`) VALUES
(1, 1, 'sample content', '2017-04-11 16:00:00', '2017-04-18 16:00:00', 1, '2017-04-11 16:00:00'),
(2, 2, 'sample content2', '2017-04-19 16:00:00', '2017-04-20 16:00:00', 0, '2017-04-19 16:00:00'),
(3, 2, 'Query Builder', '2017-04-30 15:06:29', '2017-04-26 16:00:00', NULL, '2016-12-11 17:01:00'),
(4, 2, 'Query Builder', '2017-04-30 15:07:06', '2017-04-12 16:00:00', 0, '2016-12-11 17:01:00'),
(5, 1, 'erjopiejh[ownho[wkmhowrnth1', '2017-04-28 20:50:21', '2017-04-28 20:50:21', 0, '2017-04-29 04:50:21'),
(6, 1, 'hehe', '2017-04-27 16:00:00', '2017-03-11 16:00:00', 0, '0000-00-00 00:00:00'),
(7, 2, 'afdadfad', '2017-01-16 16:00:00', '2017-04-17 16:00:00', 0, '0000-00-00 00:00:00'),
(8, 3, 'afadfadfad', '2017-04-12 16:00:00', '2017-04-18 16:00:00', 0, '0000-00-00 00:00:00'),
(9, 3, '33333', '2017-04-01 16:00:00', '2017-04-29 16:00:00', 0, '0000-00-00 00:00:00'),
(10, 1, '1111', '2017-04-04 16:00:00', '2017-04-28 16:00:00', 0, '0000-00-00 00:00:00');

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
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `dob`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'arnel', '2017-07-12', 'Arnel', 'arnelcapendit@yahoo.com', '$2y$10$C2lwCQLdCGFtm5s9bHxs2eJcr6WdFgVckJb.HbSb4qd7GT6BuTOae', 'PwRAGkyOuk7BZKxYtX8mSrPbgpWH8xmkOc7x1efHQXFNc2ZRLGGrAsYBmOYk', '2017-04-17 08:12:02', '2017-04-17 08:12:02'),
(2, 'jabo', '1990-03-12', 'Leo Hernandez', 'jabo@gmail.com', '$2y$10$mXxaEy59/TM4AdzRyf8sxe9Px56zggCrocKw85RLWfP7lEmZ6cwyC', 'kkyxREJn5J39zyO3stSPNlyQ6RFWS566EoSM8i1nlxz9G4eWblBExAhzZenD', '2017-04-26 07:21:24', '2017-04-26 07:21:24'),
(3, 'asdasd', '2011-11-11', 'asdasd', 'asd@asd.com', '$2y$10$9Nyr69erkD/q4sm9rE5ZHOMLA1WjIB9664bMaRLamyia2JI.FE0CC', 'InfD2Q0bv4555iPJw56X1cLoept94Lli6zJ8j6hy2vn7Qox5VQ9XebJXvAV9', '2017-04-28 20:51:49', '2017-04-28 20:51:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
