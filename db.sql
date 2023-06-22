-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2023 at 08:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joki_laravel_full_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `name`, `url`, `banner`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Banner Januari', 'https://contoh.id/1', '1.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
(2, 'Banner Februari', 'https://contoh.id/1', '2.jpg', 0, '2023-01-01 13:02:23', '2023-01-02 13:02:23'),
(3, 'Banner Maret', 'https://contoh.id/1', '3.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
(4, 'Banner April', 'https://contoh.id/1', '4.jpg', 0, '2023-01-01 13:02:23', '2023-01-03 13:02:23'),
(5, 'Banner Mei', NULL, '5.jpg', 1, '2023-01-01 13:02:23', '2023-01-01 13:02:23'),
(6, 'Banner Juni', 'https://contoh.id/1', '6.jpg', 1, '2023-01-01 13:02:23', '2023-01-03 13:02:23'),
(7, 'Banner Juli', NULL, '7.jpg', 0, '2023-01-01 13:02:23', '2023-01-02 13:02:23'),
(8, 'Banner Agustus', 'https://contoh.id/1', '8.jpg', 1, '2023-01-01 13:02:23', '2023-01-07 13:02:23'),
(9, 'Banner September', 'https://contoh.id/1', '9.jpg', 0, '2023-01-01 13:02:23', '2023-01-08 13:02:23'),
(10, 'Banner Oktober', NULL, '10.jpg', 1, '2023-01-01 13:02:23', '2023-01-05 13:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Katgeori 1', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(2, 'Katgeori 2', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(3, 'Katgeori 3', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(4, 'Katgeori 4', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(5, 'Katgeori 5', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(6, 'Katgeori 6', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(7, 'Katgeori 7', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(8, 'Katgeori 8', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(9, 'Katgeori 9', '2023-04-01 15:00:00', '2023-04-01 15:00:00'),
(10, 'Katgeori 10', '2023-04-01 15:00:00', '2023-04-01 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `size`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Produk 1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(2, 'Produk 2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(3, 'Produk 3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(4, 'Produk 4', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(5, 'Produk 5', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(6, 'Produk 6', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(7, 'Produk 7', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(8, 'Produk 8', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(9, 'Produk 9', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(10, 'Produk 10', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', NULL, '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1),
(11, 'Items 1', 'Ini adalah items 1', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(12, 'Items 2', 'Ini adalah items 2', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(13, 'Items 3', 'Ini adalah items 3', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(14, 'Items 4', 'Ini adalah items 4', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(15, 'Items 5', 'Ini adalah items 5', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(16, 'Items 6', 'Ini adalah items 6', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(17, 'Items 7', 'Ini adalah items 7', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(18, 'Items 8', 'Ini adalah items 8', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(19, 'Items 9', 'Ini adalah items 9', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1),
(20, 'Items 10', 'Ini adalah items 10', 10, '2023-04-08 16:07:11', '2023-04-09 12:11:19', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jumlah_barang`
-- (See below for the actual view)
--
CREATE TABLE `jumlah_barang` (
`category_name` varchar(100)
,`jumlah_produk` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` enum('accepted','rejected','waiting') NOT NULL DEFAULT 'waiting',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `verified_at`, `verified_by`) VALUES
(1, 9, 'Produk 1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 40000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(2, 5, 'Produk 2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 35000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(3, 6, 'Produk 3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 15000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(4, 10, 'Produk 4', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 30000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(5, 4, 'Produk 5', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 40000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(6, 2, 'Produk 6', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(7, 10, 'Produk 7', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 10000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(8, 1, 'Produk 8', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 15000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(9, 1, 'Produk 9', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(10, 4, 'Produk 10', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 50000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(11, 2, 'Produk 11', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(12, 4, 'Produk 12', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 40000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(13, 10, 'Produk 13', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 20000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(14, 4, 'Produk 14', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(15, 5, 'Produk 15', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(16, 7, 'Produk 16', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 50000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(17, 6, 'Produk 17', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 40000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(18, 3, 'Produk 18', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 20000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(19, 10, 'Produk 19', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 10000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(20, 9, 'Produk 20', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 25000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(21, 5, 'Produk 21', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(22, 8, 'Produk 22', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 40000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(23, 7, 'Produk 23', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(24, 7, 'Produk 24', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 25000.00, 'rejected', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(25, 8, 'Produk 25', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 50000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(26, 2, 'Produk 26', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 10000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(27, 4, 'Produk 27', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 25000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(28, 4, 'Produk 28', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 25000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(29, 3, 'Produk 29', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 45000.00, 'accepted', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL),
(30, 9, 'Produk 30', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti ab non amet quod quos earum voluptatem eius voluptas quasi odit, praesentium nemo repellat est delectus et nulla officia corporis ex!', 30000.00, 'waiting', '2023-04-02 06:30:17', '2023-04-02 06:30:17', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_categories`
-- (See below for the actual view)
--
CREATE TABLE `products_categories` (
`id` int(11)
,`name` varchar(100)
,`category_id` int(11)
,`price` decimal(10,2)
,`status` enum('accepted','rejected','waiting')
,`category_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Stand-in structure for view `selain_disetujui`
-- (See below for the actual view)
--
CREATE TABLE `selain_disetujui` (
`id` int(11)
,`name` varchar(100)
,`category_id` int(11)
,`price` decimal(10,2)
,`status` enum('accepted','rejected','waiting')
,`category_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','staff') NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `role`, `avatar`, `phone`, `address`, `password`, `created_at`, `updated_at`) VALUES
(6, 'qijigixado@mailinator.com', 'Aurelia Fry', 'admin', 'Screenshot from 2023-06-21 22-36-55.png', '37', 'Ipsam laborum Delec', 'Pa$$w0rd!', NULL, NULL),
(7, 'byrav@mailinator.com', 'Buffy Burt', 'admin', 'Screenshot from 2023-06-21 22-39-53.png', '100', 'Quo ipsa asperiores', 'Pa$$w0rd!', NULL, NULL),
(8, 'byrav@mailinator.com', 'Buffy Burt', 'admin', 'Screenshot from 2023-06-21 22-39-53.png', '100', 'Quo ipsa asperiores', 'Pa$$w0rd!', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `jumlah_barang`
--
DROP TABLE IF EXISTS `jumlah_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jumlah_barang`  AS SELECT `c`.`name` AS `category_name`, count(0) AS `jumlah_produk` FROM (`categories` `c` join `products` `p` on(`c`.`id` = `p`.`category_id`)) GROUP BY `c`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `products_categories`
--
DROP TABLE IF EXISTS `products_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_categories`  AS SELECT `p`.`id` AS `id`, `p`.`name` AS `name`, `p`.`category_id` AS `category_id`, `p`.`price` AS `price`, `p`.`status` AS `status`, `c`.`name` AS `category_name` FROM (`products` `p` join `categories` `c` on(`p`.`category_id` = `c`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `selain_disetujui`
--
DROP TABLE IF EXISTS `selain_disetujui`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `selain_disetujui`  AS SELECT `products_categories`.`id` AS `id`, `products_categories`.`name` AS `name`, `products_categories`.`category_id` AS `category_id`, `products_categories`.`price` AS `price`, `products_categories`.`status` AS `status`, `products_categories`.`category_name` AS `category_name` FROM `products_categories` WHERE `products_categories`.`status` <> 'accepted' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_categories` (`category_id`),
  ADD KEY `fk_products_users` (`created_by`),
  ADD KEY `fk_products_users_verified` (`verified_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_products_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_products_users_verified` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
