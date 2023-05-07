-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 09:27 AM
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
-- Database: `pa_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `roles` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id`, `email`, `username`, `password`, `roles`) VALUES
(3, 'admin@gmail.com', 'admin', '$2y$10$5anfR9oO1KJ7dB/XT49CyO7Ch/oHVSHuJJxJEmMIP4xECxXoY8XRO', 'admin'),
(4, 'staff1@gmail.com', 'staff1', '$2y$10$URj4zJtX1UnuIFQhbhIcO.MIwie2PgZazWqEKAHhxUUGCjd/lMRsG', 'staff'),
(5, 'user1', 'user1', '$2y$10$m6DeVjdjJBcU6xTo8XWOHOZUE3pplVhOIqj6PaCO9SF7a9A4U9DCC', 'user'),
(6, '123', '123', '$2y$10$/r0sMdVxJTEiZj4hjpm1IeWW2iX5gYWLHmELqH1sLWvsC/lZbjSS6', 'user'),
(7, 'qwe', 'qwe', '$2y$10$MC5Q.qscF6Ws65Y3uw7uhOV5fmspT1hFUBx6HN2ublOY.ZNZNnCu2', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
