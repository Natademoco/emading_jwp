-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2024 at 07:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lsp_emading`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int(4) NOT NULL,
  `header` varchar(160) NOT NULL,
  `judul_artikel` varchar(360) NOT NULL,
  `isi_artikel` text NOT NULL,
  `status_publish` enum('publish','draft') NOT NULL,
  `id_users` int(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `header`, `judul_artikel`, `isi_artikel`, `status_publish`, `id_users`, `created_at`, `updated_at`) VALUES
(1, 'jwp1_1855852400.jpg', 'Fornite', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil amet consectetur beatae minima numquam, similique repellendus provident, debitis veritatis officiis quis ratione nulla? Nulla dolore ab sit accusamus commodi minima aperiam fuga doloribus, tenetur saepe. Earum repellendus ab placeat voluptates?', 'publish', 1, '2024-09-28 09:31:42', '2024-09-28 10:56:40'),
(2, 'jwp2_1696720404.jpg', 'Super Mario', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil amet consectetur beatae minima numquam, similique repellendus provident, debitis veritatis officiis quis ratione nulla? Nulla dolore ab sit accusamus commodi minima aperiam fuga doloribus, tenetur saepe. Earum repellendus ab placeat voluptates?</p><p><br></p>', 'publish', 1, '2024-09-28 10:04:56', '2024-09-28 10:56:47'),
(4, 'jwp3_1282809354.jpg', 'Tate McRae', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil amet consectetur beatae minima numquam, similique repellendus provident, debitis veritatis officiis quis ratione nulla? Nulla dolore ab sit accusamus commodi minima aperiam fuga doloribus, tenetur saepe. Earum repellendus ab placeat voluptates?', 'publish', 1, '2024-09-28 10:23:47', '2024-09-28 10:56:55'),
(5, 'jwp4_879421897.jpg', 'Mr Beans Mini', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil amet consectetur beatae minima numquam, similique repellendus provident, debitis veritatis officiis quis ratione nulla? Nulla dolore ab sit accusamus commodi minima aperiam fuga doloribus, tenetur saepe. Earum repellendus ab placeat voluptates?</p>', 'publish', 1, '2024-09-28 10:24:29', '2024-09-28 10:58:33'),
(6, 'jwp6_873500405.png', 'Avoskin', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nihil amet consectetur beatae minima numquam, similique repellendus provident, debitis veritatis officiis quis ratione nulla? Nulla dolore ab sit accusamus commodi minima aperiam fuga doloribus, tenetur saepe. Earum repellendus ab placeat voluptates?', 'publish', 1, '2024-09-28 10:25:48', '2024-09-28 11:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_users` int(4) NOT NULL,
  `name` varchar(160) NOT NULL,
  `username` varchar(360) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_users`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', '$2y$10$qM0H1jhZy9i5lnhKWA/zWOCnRS0imsCGzd5YVs9Zrh3TqPUBH3U5u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `fk_users` (`id_users`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_users` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`id_users`) REFERENCES `tb_users` (`id_users`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
