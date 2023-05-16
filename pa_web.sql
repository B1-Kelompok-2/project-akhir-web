-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 05:41 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(2) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(40) NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `image`, `price`) VALUES
(196, 'Cupcakes', 'cake6.jpg', 10000),
(197, 'Sacher Torte', 'cake1.jpg', 40000),
(198, 'Strawberry Pancake', 'cake4.jpg', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `order_user`
--

CREATE TABLE `order_user` (
  `id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `orderan` varchar(255) NOT NULL,
  `statusOrder` varchar(20) NOT NULL,
  `hargaSatuan` int(255) NOT NULL,
  `kuantitas` int(255) NOT NULL,
  `totalHarga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_user`
--

INSERT INTO `order_user` (`id`, `user`, `image`, `orderan`, `statusOrder`, `hargaSatuan`, `kuantitas`, `totalHarga`) VALUES
(59, 'qwe', 'image/cake1.jpg', 'Sacher Torte', 'Unverified', 40000, 1, 40000),
(60, 'qwe', 'image/cake6.jpg', 'Cupcakes', 'Unverified', 10000, 1, 10000),
(61, 'qwe', 'image/cake4.jpg', 'Strawberry Pancake', 'Unverified', 55000, 1, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(4) NOT NULL,
  `id_order` int(4) NOT NULL,
  `user` varchar(255) NOT NULL,
  `item_order` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `terbayar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_order`, `user`, `item_order`, `status`, `terbayar`) VALUES
(5, 59, 'qwe', 'Sacher Torte', 'Unverified', 'Not Paid Yet'),
(6, 60, 'qwe', 'Cupcakes', 'Unverified', 'Not Paid Yet'),
(7, 61, 'qwe', 'Strawberry Pancake', 'Unverified', 'Not Paid Yet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `order_user`
--
ALTER TABLE `order_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
