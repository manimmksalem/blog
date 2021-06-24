-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 04:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `like_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`, `view_count`, `like_count`) VALUES
(1, 'sdfsdfdfasds', 'sdfsdfdf', '2021-06-23 10:50:54', '2021-06-23 14:42:19', NULL, 7, 2),
(2, 'sdfsfsdf', 'sdfsdfsfd', '2021-06-23 11:06:42', '2021-06-23 13:08:31', NULL, 0, 1),
(5, 'zxdasda', 'asdasdasda', '2021-06-23 13:38:12', '2021-06-23 13:38:12', NULL, 0, 0),
(6, 'sdfsdf', 'sdfsdfdf', '2021-06-23 13:47:25', '2021-06-23 13:47:25', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `birthday`, `is_activated`) VALUES
(1, 'mani', 'mani@gmail.com', '$2y$10$lFpk71T/1/DwiEx0vO/m6OFs7/ToqvhWyBu0tCvfO7zZ1d77LIyUW', '5s1CnMwIYnTRnU6iXT3qDDp0U6MtUphqRunX7amUer3z3fNmexGfJlV67ita', '2021-06-23 04:30:20', '2021-06-23 04:36:17', NULL, 0),
(2, 'mani', 'mani1@gmail.com', '$2y$10$4EqHOQgAwIO4EYjc6XDLgOhXui5OLnWxt86NCZawhGwoq2zsg79NO', 'o1tlNPKCB2TUIDtUuamm4ZuoTAlcG2eCLDfY0aIo93zpTtY14jjNJ0ffSRoB', '2021-06-23 04:37:23', '2021-06-23 04:38:46', '2021-06-23', 0),
(3, 'mani', 'mani2@gmail.com', '$2y$10$n5osq./uXt9OhXeWpKpo3O8RxqpLTNrNE4Np3qq/8NPeN2MCtkswK', NULL, '2021-06-23 06:10:21', '2021-06-23 06:10:21', '2021-06-23', 0),
(4, 'mani', 'mani3@gmail.com', '$2y$10$bzXELVWaoeIp4ZWCOEWVXucPjwmt0jKR6gR4PZ5LCBHp4/KpxQPVC', NULL, '2021-06-23 06:11:11', '2021-06-23 06:11:11', '2021-06-23', 0),
(5, 'mani', 'mani4@gmail.com', '$2y$10$kWLUBxwcrBlPPrxteFtGRuyB1/lbbyOGbUN09neQo3q5ob03oAhiq', 'zPjedNcK8jzLo3X5b1sk5hvpXFd7ESpRyDIOwPhIcscqLuY69T6J4iILe2yT', '2021-06-23 06:19:14', '2021-06-23 09:12:10', '2021-06-23', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
