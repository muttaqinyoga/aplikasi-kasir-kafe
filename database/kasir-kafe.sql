-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 11:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir-kafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_price` double NOT NULL,
  `status_stock` enum('Tersedia','Tidak tersedia') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`uid`, `menu_name`, `menu_price`, `status_stock`, `created_at`, `updated_at`) VALUES
('076c72e7-295a-11eb-841b-2cfda12b034d', 'Teh Manis (Hangat & Dingin)', 5000, 'Tersedia', '2020-11-17 14:53:41', '2020-11-17 14:53:41'),
('1e2560d6-41f9-11ec-ba87-b4692141738b', 'Kentang Goreng', 15000, 'Tersedia', '2021-11-10 07:37:55', '2021-11-10 07:37:55'),
('28c16ef3-295a-11eb-841b-2cfda12b034d', 'Teh botol Sosro', 6000, 'Tersedia', '2020-11-17 14:54:37', '2020-11-17 14:54:37'),
('4eff3b88-295a-11eb-841b-2cfda12b034d', 'Tebs', 7000, 'Tersedia', '2020-11-17 14:55:41', '2020-11-17 14:55:41'),
('509f1ebc-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Ayam Penyet', 18000, 'Tersedia', '2020-11-17 14:48:34', '2020-11-17 14:48:34'),
('6345e8d0-295a-11eb-841b-2cfda12b034d', 'Kopi Hitam (Hangat & Dingin)', 5000, 'Tersedia', '2020-11-17 14:56:15', '2020-11-17 14:56:15'),
('736458ed-295a-11eb-841b-2cfda12b034d', 'Capucino (Hangat & Dingin)', 8000, 'Tersedia', '2020-11-17 14:56:42', '2020-11-17 14:56:42'),
('736a3e25-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Ayam Bakar', 20000, 'Tersedia', '2020-11-17 14:49:33', '2020-11-17 14:49:33'),
('79f2bc0f-295a-11eb-841b-2cfda12b034d', 'Capucino + susu (Hangat & Dingin)', 10000, 'Tersedia', '2020-11-17 14:56:53', '2020-11-17 14:56:53'),
('83eeabdb-295a-11eb-841b-2cfda12b034d', 'Kopi Luwak (Hangat & Dingin)', 7000, 'Tersedia', '2020-11-17 14:57:10', '2020-11-17 14:57:10'),
('84e1c173-2959-11eb-841b-2cfda12b034d', 'Nasi Ayam Penyet', 15000, 'Tersedia', '2020-11-17 14:50:02', '2020-11-17 14:50:02'),
('8b16c72e-295a-11eb-841b-2cfda12b034d', 'Kopi Luwak + Susu (Hangat & Dingin)', 9000, 'Tersedia', '2020-11-17 14:57:22', '2020-11-17 14:57:22'),
('8d1a95a8-2959-11eb-841b-2cfda12b034d', 'Nasi Ayam Bakar', 17000, 'Tersedia', '2020-11-17 14:50:16', '2020-11-17 14:50:16'),
('94573f51-2958-11eb-841b-2cfda12b034d', 'Nasi Goreng', 10000, 'Tersedia', '2020-11-17 14:43:18', '2020-11-17 14:43:18'),
('98bb286b-295a-11eb-841b-2cfda12b034d', 'Teh Tarik (Hangat & Dingin)', 10000, 'Tersedia', '2020-11-17 14:57:45', '2020-11-17 14:57:45'),
('a82a8205-2959-11eb-841b-2cfda12b034d', 'Indomie Goreng', 10000, 'Tersedia', '2020-11-17 14:51:01', '2020-11-17 14:51:01'),
('ae2353e0-2959-11eb-841b-2cfda12b034d', 'Indomie Kuah', 9000, 'Tersedia', '2020-11-17 14:51:11', '2020-11-17 14:51:11'),
('c4de0aac-2959-11eb-841b-2cfda12b034d', 'Mie Aceh Goreng', 10000, 'Tersedia', '2020-11-17 14:51:49', '2020-11-17 14:51:49'),
('c7e677d5-2986-11eb-9003-2cfda12b034d', 'Bakso', 12000, 'Tersedia', '2020-11-17 20:14:02', '2020-12-18 14:24:22'),
('cc8edc7b-2a0e-11eb-902a-2cfda12b034d', 'Fruit Tea', 7000, 'Tersedia', '2020-11-18 12:27:41', '2020-11-18 12:27:41'),
('d07197b8-2959-11eb-841b-2cfda12b034d', 'Mie Aceh Kuah', 10000, 'Tersedia', '2020-11-17 14:52:09', '2020-11-17 14:52:09'),
('e83b79ec-2959-11eb-841b-2cfda12b034d', 'Nasi Goreng Seafood', 25000, 'Tersedia', '2020-11-17 14:52:48', '2020-11-17 14:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_11_14_033944_create_menus_table', 1),
(3, '2020_11_14_034201_create_orders_table', 1),
(4, '2020_11_14_034704_create_payments_table', 1),
(5, '2020_11_21_111417_create_order_details_table', 1),
(6, '2020_11_21_112249_create_tables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_number` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double(8,2) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Belum dibayar','Telah dibayar','Dibatalkan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`uid`, `created_by`, `table_number`, `total_price`, `invoice_number`, `status`, `created_at`, `updated_at`) VALUES
('41a5ffdd984a41d98828f8f266c121d9', '62ab5ae8-41f9-11ec-ba87-b4692141738b', '311eccf5-2f00-11eb-980c-2cfda12b034d', 16000.00, '20211110154320', 'Telah dibayar', '2021-11-10 08:43:20', '2021-11-10 09:00:19'),
('8f8e7bd4e3da4085aa2177af1dd62856', '62ab5ae8-41f9-11ec-ba87-b4692141738b', '312f854f-2f00-11eb-980c-2cfda12b034d', 28000.00, '20211110153638', 'Telah dibayar', '2021-11-10 08:36:38', '2021-11-10 08:41:49'),
('acb8f517a4fc43d6ba9e1201b63ec6f5', '62ab5ae8-41f9-11ec-ba87-b4692141738b', '311eccf5-2f00-11eb-980c-2cfda12b034d', 43000.00, '20211110165753', 'Telah dibayar', '2021-11-10 09:57:53', '2021-11-10 09:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `order_uid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_ordered` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`uid`, `order_uid`, `menu_uid`, `quantity_ordered`, `created_at`, `updated_at`) VALUES
('42150764-4202-11ec-ba87-b4692141738b', '41a5ffdd984a41d98828f8f266c121d9', 'a82a8205-2959-11eb-841b-2cfda12b034d', 1, '2021-11-10 08:43:20', '2021-11-10 08:43:20'),
('421c8c30-4202-11ec-ba87-b4692141738b', '41a5ffdd984a41d98828f8f266c121d9', '28c16ef3-295a-11eb-841b-2cfda12b034d', 1, '2021-11-10 08:43:20', '2021-11-10 08:43:20'),
('529895b5-4201-11ec-ba87-b4692141738b', '8f8e7bd4e3da4085aa2177af1dd62856', '509f1ebc-2959-11eb-841b-2cfda12b034d', 1, '2021-11-10 08:36:39', '2021-11-10 08:36:39'),
('529d3246-4201-11ec-ba87-b4692141738b', '8f8e7bd4e3da4085aa2177af1dd62856', '79f2bc0f-295a-11eb-841b-2cfda12b034d', 1, '2021-11-10 08:36:39', '2021-11-10 08:36:39'),
('abf831d0-420c-11ec-ba87-b4692141738b', 'acb8f517a4fc43d6ba9e1201b63ec6f5', '79f2bc0f-295a-11eb-841b-2cfda12b034d', 1, '2021-11-10 09:57:53', '2021-11-10 09:57:53'),
('abff9788-420c-11ec-ba87-b4692141738b', 'acb8f517a4fc43d6ba9e1201b63ec6f5', '509f1ebc-2959-11eb-841b-2cfda12b034d', 1, '2021-11-10 09:57:53', '2021-11-10 09:57:53'),
('bd80ad2b-420c-11ec-ba87-b4692141738b', 'acb8f517a4fc43d6ba9e1201b63ec6f5', '1e2560d6-41f9-11ec-ba87-b4692141738b', 1, '2021-11-10 09:58:22', '2021-11-10 09:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `order_uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `moneyPaid` double(8,2) NOT NULL,
  `moneyTurn` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`uid`, `order_uid`, `amount`, `moneyPaid`, `moneyTurn`, `created_at`, `updated_at`) VALUES
('0bbfff9c-4202-11ec-ba87-b4692141738b', '8f8e7bd4e3da4085aa2177af1dd62856', 28000.00, 30000.00, 2000.00, '2021-11-10 08:41:49', '2021-11-10 08:41:49'),
('a15e64af-4204-11ec-ba87-b4692141738b', '41a5ffdd984a41d98828f8f266c121d9', 16000.00, 20000.00, 4000.00, '2021-11-10 09:00:19', '2021-11-10 09:00:19'),
('f768b1ff-420c-11ec-ba87-b4692141738b', 'acb8f517a4fc43d6ba9e1201b63ec6f5', 43000.00, 50000.00, 7000.00, '2021-11-10 10:00:00', '2021-11-10 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `table_number` tinyint(4) NOT NULL,
  `status` enum('Kosong','Telah dipesan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`uid`, `table_number`, `status`, `created_at`, `updated_at`) VALUES
('3109adda-2f00-11eb-980c-2cfda12b034d', 1, 'Kosong', '2020-11-25 09:25:33', '2020-12-18 07:36:00'),
('3117545b-2f00-11eb-980c-2cfda12b034d', 3, 'Kosong', '2020-11-25 09:25:33', '2021-11-10 08:36:01'),
('311eccf5-2f00-11eb-980c-2cfda12b034d', 4, 'Kosong', '2020-11-25 09:25:33', '2021-11-10 10:00:00'),
('3127dc7c-2f00-11eb-980c-2cfda12b034d', 5, 'Kosong', '2020-11-25 09:25:33', '2020-12-18 05:11:25'),
('312f854f-2f00-11eb-980c-2cfda12b034d', 6, 'Kosong', '2020-11-25 09:25:33', '2021-11-10 08:41:49'),
('3155654b-2f00-11eb-980c-2cfda12b034d', 7, 'Kosong', '2020-11-25 09:25:33', '2020-11-25 09:25:33'),
('318b2079-2f00-11eb-980c-2cfda12b034d', 8, 'Kosong', '2020-11-25 09:25:34', '2020-11-25 09:25:34'),
('31af4086-2f00-11eb-980c-2cfda12b034d', 9, 'Kosong', '2020-11-25 09:25:34', '2020-11-25 09:25:34'),
('31d339af-2f00-11eb-980c-2cfda12b034d', 10, 'Kosong', '2020-11-25 09:25:34', '2020-11-25 09:25:34'),
('31dab226-2f00-11eb-980c-2cfda12b034d', 11, 'Kosong', '2020-11-25 09:25:34', '2020-11-26 10:51:50'),
('31e0a5be-2f00-11eb-980c-2cfda12b034d', 12, 'Kosong', '2020-11-25 09:25:34', '2021-11-10 08:07:53'),
('31ff5e0b-2f00-11eb-980c-2cfda12b034d', 13, 'Kosong', '2020-11-25 09:25:35', '2020-11-25 09:25:35'),
('32058e65-2f00-11eb-980c-2cfda12b034d', 14, 'Kosong', '2020-11-25 09:25:35', '2020-11-25 09:25:35'),
('32113137-2f00-11eb-980c-2cfda12b034d', 15, 'Kosong', '2020-11-25 09:25:35', '2020-11-25 09:25:35'),
('325b237b-2f00-11eb-980c-2cfda12b034d', 16, 'Kosong', '2020-11-25 09:25:35', '2020-11-25 09:25:35'),
('32861a17-2f00-11eb-980c-2cfda12b034d', 17, 'Kosong', '2020-11-25 09:25:35', '2020-11-25 09:25:35'),
('32c0bb89-2f00-11eb-980c-2cfda12b034d', 18, 'Kosong', '2020-11-25 09:25:36', '2020-11-25 09:25:36'),
('32f04c2c-2f00-11eb-980c-2cfda12b034d', 19, 'Kosong', '2020-11-25 09:25:36', '2020-11-25 09:25:36'),
('331cf676-2f00-11eb-980c-2cfda12b034d', 20, 'Kosong', '2020-11-25 09:25:36', '2020-11-25 09:25:36'),
('cc40d17a-319b-11eb-b8e1-2cfda12b034d', 2, 'Kosong', '2020-11-28 17:04:38', '2020-11-30 09:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT uuid(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
('3102b64b-2f00-11eb-980c-2cfda12b034d', 'Owner', 'admin@kafe.com', '$2y$10$2Ps15vGFccNM5N2bxRiZPuqkR4r.Qyh/NVYEJMDe8MR8DCxWBZVAm', 62, 'BwnfO5OfaMyAvgZyYgyi6TU7pOlKHlUgBXzpMUB8IGDbmaM5FsWYvl1gv0Kw', '2020-11-25 09:25:33', '2020-11-25 09:25:33'),
('62ab5ae8-41f9-11ec-ba87-b4692141738b', 'Waiter', 'waiter@kafe.com', '$2y$10$.hNmhsv3GlmsLjALFwcFkeg2kv97Odh8zWJWZhsmSJZMtxgBrLbjS', 26, 'xJDCVb77RjwtYFdM2q0OU6pCtAaN9NimBelzpWSDWCzDPLsgRtbnBntDs61v', '2021-11-10 07:39:49', '2021-11-10 07:50:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
