-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 09:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answered_tests`
--

CREATE TABLE `answered_tests` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `test_id` varchar(60) NOT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT 0,
  `submitted_date` datetime DEFAULT NULL,
  `marked` tinyint(1) NOT NULL DEFAULT 0,
  `marked_by` varchar(60) DEFAULT NULL,
  `marked_date` datetime DEFAULT NULL,
  `score` tinyint(3) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answered_tests`
--

INSERT INTO `answered_tests` (`id`, `user_id`, `test_id`, `submitted`, `submitted_date`, `marked`, `marked_by`, `marked_date`, `score`, `date`) VALUES
(1, 'guy.dude', 'V7CYsLnUdFHihrKfu7l3BFp0Un0KqJ5tWGeBtqyVZoFotTAWallpUABQXSow', 1, '2021-10-25 22:13:04', 1, 'vibe.peters', '2021-10-20 20:26:01', 50, '2021-10-09 11:02:49'),
(2, 'guy.dude', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 1, '2021-10-25 11:36:53', 1, 'vibe.peters', '2021-10-25 12:09:25', 67, '2021-10-25 11:35:51'),
(3, 'jane.mandawa', 'tYsz2AbcrLlx8koaNxpk6acmWQR9Rzuy4PNIWNi2W0iD3m48PKr4EbhgHpD9', 1, '2021-10-25 12:49:21', 1, 'vibe.peters', '2021-10-25 12:50:48', 100, '2021-10-25 12:49:13'),
(4, 'jane.mandawa', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 1, '2021-11-02 20:16:53', 0, NULL, NULL, 0, '2021-11-02 20:16:18'),
(5, 'guy.dude', 'f4cYnDsCMZiAk2pffQ7GcExrSYmN5FvEqBO1KDVudOHlSKo3IWyrubziRQWy', 1, '2021-11-02 20:17:51', 1, 'vibe.peters', '2021-11-04 13:20:29', 80, '2021-11-02 20:17:23'),
(6, 'female.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 1, '2021-11-22 11:38:24', 1, 'man.human', '2021-11-22 11:41:53', 50, '2021-11-22 11:37:30'),
(7, 'student.banda', 'Xa7onu8jPGMnBJHu7dTYnYKIqIHx5UWMHnGZskxsDTbYRMOHf76Lgi8dvx68', 1, '2021-11-22 11:39:40', 1, 'man.human', '2021-11-22 11:41:22', 100, '2021-11-22 11:39:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answered_tests`
--
ALTER TABLE `answered_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`),
  ADD KEY `submitted` (`submitted`),
  ADD KEY `marked` (`marked`),
  ADD KEY `marked_by` (`marked_by`),
  ADD KEY `date` (`date`),
  ADD KEY `score` (`score`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answered_tests`
--
ALTER TABLE `answered_tests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
