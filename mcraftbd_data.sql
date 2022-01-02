-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2018 at 12:20 PM
-- Server version: 10.0.37-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcraftbd_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abu Bakar Siddque', 'a.bakar87@mcraftbd.com', 'admin', '$2y$10$KpfRDOFLMh1AM7ybjfAxM.rJrdZlZZ2n5JNbGXssVN.FMsU8RXqX.', 'h8Qx8x2OOUTmliiFZC477XvfkNAyeyVx8TGEEXmtOxynmtsfmCbDS81FA7xS', '2018-04-12 10:29:58', '2018-04-12 10:29:58'),
(2, 'ADMIN', 'admin@mcraftbd.com', 'admin', '$2y$10$KpfRDOFLMh1AM7ybjfAxM.rJrdZlZZ2n5JNbGXssVN.FMsU8RXqX.', 'ShD5L92fm19JR8Zo2AAXKT6LBokMvQxiwiLBXe1mYR3mHiFZrz42LovGaLDD', '2018-09-17 04:00:00', '2018-09-17 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `title`, `time_list`, `delivery_charge`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Agargaon', '[\"2\",\"3\"]', 0, 1, '2018-04-18 22:26:15', '2018-10-29 16:39:27'),
(4, 1, 'Banani DOHS', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:32:54', '2018-10-29 16:41:15'),
(5, 1, 'Baridhara DOHS', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:34:33', '2018-10-29 16:43:18'),
(6, 1, 'Banasree', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:36:12', '2018-10-29 16:41:47'),
(7, 1, 'Bashabo', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:38:32', '2018-10-29 16:43:40'),
(8, 1, 'Banani', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:39:16', '2018-10-29 16:40:48'),
(9, 1, 'Baridhara', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:40:37', '2018-10-29 16:42:50'),
(10, 1, 'Bashundhara RA', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-04-20 13:42:13', '2018-10-29 16:44:15'),
(11, 1, 'Dhanmondi', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:44:52', '2018-10-29 16:44:52'),
(12, 1, 'Eastern Housing', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:45:28', '2018-10-29 16:45:28'),
(13, 1, 'Farmgate', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:45:56', '2018-10-29 16:45:56'),
(14, 1, 'Green Road', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:46:19', '2018-10-29 16:46:19'),
(15, 1, 'Gulshan 1', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:46:40', '2018-10-29 16:46:40'),
(16, 1, 'Gulshan 2', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:47:02', '2018-10-29 16:47:02'),
(17, 1, 'Kazipara', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:47:21', '2018-10-29 16:47:21'),
(18, 1, 'Khilgaon', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:47:43', '2018-10-29 16:47:43'),
(19, 1, 'Khilkhet', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:48:06', '2018-10-29 16:48:06'),
(20, 1, 'Kolabagan', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:48:31', '2018-10-29 16:48:31'),
(21, 1, 'Lalmatia', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:48:54', '2018-10-29 16:48:54'),
(22, 1, 'Meradia', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:49:20', '2018-10-29 16:49:20'),
(23, 1, 'Merul Badda', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:49:42', '2018-10-29 16:49:42'),
(24, 1, 'Mirpur 1', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:50:30', '2018-10-29 16:50:30'),
(25, 1, 'Mirpur 2', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:50:46', '2018-10-29 16:50:46'),
(26, 1, 'Mirpur 10', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:51:12', '2018-10-29 16:51:12'),
(27, 1, 'Mirpur 11', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:51:29', '2018-10-29 16:51:29'),
(28, 1, 'Mirpur 12', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:51:44', '2018-10-29 16:51:44'),
(29, 1, 'Mirpur DOHS', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:52:21', '2018-10-29 16:52:21'),
(30, 1, 'Mohakhali', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:53:02', '2018-10-29 16:53:02'),
(31, 1, 'Mohakhali DOHS', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:53:45', '2018-10-29 16:53:45'),
(32, 1, 'Mohammadpur', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:54:14', '2018-10-29 16:54:14'),
(33, 1, 'Monipur', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:54:36', '2018-10-29 16:54:36'),
(34, 1, 'Monipuripara', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:55:17', '2018-10-29 16:55:17'),
(35, 1, 'New Market', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:55:42', '2018-10-29 16:55:42'),
(36, 1, 'Niketon', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:56:17', '2018-10-29 16:56:17'),
(37, 1, 'Nikunja', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:56:56', '2018-10-29 16:56:56'),
(38, 1, 'Pallabi', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:57:37', '2018-10-29 16:57:37'),
(39, 1, 'Panthapath', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:58:04', '2018-10-29 16:58:04'),
(40, 1, 'Rampura', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:58:27', '2018-10-29 16:58:27'),
(41, 1, 'Sabujbag', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:58:55', '2018-10-29 16:58:55'),
(42, 1, 'Shantibag', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:59:14', '2018-10-29 16:59:14'),
(43, 1, 'Shewrapara', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:59:34', '2018-10-29 16:59:34'),
(44, 1, 'South Badda', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 16:59:52', '2018-10-29 16:59:52'),
(45, 1, 'Taltola', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 17:00:08', '2018-10-29 17:00:08'),
(46, 1, 'Uttara', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 17:00:22', '2018-10-29 17:00:22'),
(47, 1, 'Jatrabari', '[\"1\",\"2\",\"3\"]', 0, 1, '2018-10-29 17:00:47', '2018-10-29 17:00:47'),
(48, 1, 'Baily Road', '[\"1\",\"2\",\"3\",\"4\"]', 0, 1, '2018-11-07 17:55:46', '2018-11-07 17:55:46'),
(49, 1, 'Shantinagar', '[\"1\",\"2\",\"3\",\"4\"]', 0, 1, '2018-11-07 17:56:23', '2018-11-07 17:56:23'),
(50, 1, 'Wari', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"]', 0, 1, '2018-11-07 17:58:14', '2018-11-07 17:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(9) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `image`, `parent_id`, `position`, `status`, `created_at`, `updated_at`) VALUES
(2, 'WOMEN\'S WEAR', 'women-s-wear', NULL, 0, 2, 1, '2018-09-08 03:22:43', '2018-10-20 14:42:24'),
(3, 'MEN\'S WEAR', 'men-s-wear', NULL, 0, 3, 1, '2018-09-08 03:23:03', '2018-10-20 14:42:44'),
(4, 'KID\'S WEAR', 'kid-s-wear', NULL, 0, 4, 1, '2018-09-08 03:23:28', '2018-10-20 14:43:05'),
(5, 'HOUSEHOLD', 'household', NULL, 0, 5, 1, '2018-09-08 03:23:41', '2018-10-20 14:53:05'),
(6, 'EXCLUSIVE', 'exclusive', NULL, 0, 6, 1, '2018-09-08 03:23:50', '2018-10-20 14:53:34'),
(11, 'SAREE', 'saree', NULL, 2, 1, 1, '2018-10-20 14:45:47', '2018-10-21 15:49:17'),
(12, 'SALWAR KAMEEZ', 'salwar-kameez', NULL, 2, 2, 1, '2018-10-20 14:46:55', '2018-10-21 15:49:30'),
(13, 'SINGLE KAMEEZ', 'single-kameez', NULL, 2, 3, 1, '2018-10-20 14:47:19', '2018-10-21 15:49:42'),
(14, 'UNSTITCHED DRESS', 'unstitched-dress', NULL, 2, 4, 1, '2018-10-20 14:48:12', '2018-10-20 14:49:02'),
(15, 'PANJABI', 'panjabi', NULL, 3, 1, 1, '2018-10-20 14:49:42', '2018-10-20 14:49:42'),
(16, 'SHIRT', 'shirt', NULL, 3, 2, 1, '2018-10-20 14:50:06', '2018-10-20 14:50:06'),
(17, 'T-SHIRT', 't-shirt', NULL, 3, 3, 1, '2018-10-20 14:50:17', '2018-10-20 14:50:17'),
(18, 'POLO SHIRT', 'polo-shirt', NULL, 3, 4, 1, '2018-10-20 14:50:28', '2018-10-20 14:50:28'),
(19, 'GIRLS', 'girls', NULL, 4, 1, 1, '2018-10-20 14:51:21', '2018-10-20 14:51:21'),
(20, 'BOYS', 'boys', NULL, 4, 2, 1, '2018-10-20 14:51:31', '2018-10-20 14:51:31'),
(21, 'PUJA', 'puja', NULL, 0, 7, 1, '2018-10-20 14:54:01', '2018-10-20 14:54:01'),
(22, 'SALWAR KAMEEZ', 'salwar-kameez-1', NULL, 19, 1, 1, '2018-10-20 14:54:53', '2018-10-20 14:54:53'),
(23, 'PANJABI', 'panjabi-1', NULL, 20, 1, 1, '2018-10-20 14:55:35', '2018-10-20 14:55:35'),
(24, 'SHIRT', 'shirt-1', NULL, 20, 2, 1, '2018-10-20 14:56:10', '2018-10-20 14:56:10'),
(25, 'KURTA', 'kurta', NULL, 2, 5, 1, '2018-10-21 15:50:04', '2018-10-21 15:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(7, 7, 15, '2018-10-24 14:25:32', '2018-10-24 14:25:32'),
(8, 8, 15, '2018-10-24 14:44:36', '2018-10-24 14:44:36'),
(9, 9, 11, '2018-10-24 14:49:41', '2018-10-24 14:49:41'),
(10, 10, 11, '2018-10-24 14:54:11', '2018-10-24 14:54:11'),
(11, 11, 11, '2018-10-24 15:49:48', '2018-10-24 15:49:48'),
(12, 12, 11, '2018-10-24 15:52:16', '2018-10-24 15:52:16'),
(13, 13, 11, '2018-10-24 15:54:07', '2018-10-24 15:54:07'),
(14, 14, 11, '2018-10-24 15:59:45', '2018-10-24 15:59:45'),
(15, 15, 11, '2018-10-24 16:05:52', '2018-10-24 16:05:52'),
(16, 16, 11, '2018-10-24 16:08:37', '2018-10-24 16:08:37'),
(17, 17, 11, '2018-10-24 16:11:52', '2018-10-24 16:11:52'),
(18, 18, 11, '2018-10-24 16:14:13', '2018-10-24 16:14:13'),
(19, 19, 12, '2018-10-24 16:21:55', '2018-10-24 16:21:55'),
(20, 20, 12, '2018-10-24 16:27:49', '2018-10-24 16:27:49'),
(21, 21, 13, '2018-10-24 16:31:58', '2018-10-24 16:31:58'),
(22, 22, 12, '2018-10-24 16:35:09', '2018-10-24 16:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2018-09-08 03:32:50', '2018-09-08 03:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `city_product`
--

CREATE TABLE `city_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_product`
--

INSERT INTO `city_product` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(7, 7, 1, '2018-10-24 14:25:32', '2018-10-24 14:25:32'),
(8, 8, 1, '2018-10-24 14:44:36', '2018-10-24 14:44:36'),
(9, 9, 1, '2018-10-24 14:49:41', '2018-10-24 14:49:41'),
(10, 10, 1, '2018-10-24 14:54:11', '2018-10-24 14:54:11'),
(11, 11, 1, '2018-10-24 15:49:48', '2018-10-24 15:49:48'),
(12, 12, 1, '2018-10-24 15:52:16', '2018-10-24 15:52:16'),
(13, 13, 1, '2018-10-24 15:54:07', '2018-10-24 15:54:07'),
(14, 14, 1, '2018-10-24 15:59:45', '2018-10-24 15:59:45'),
(15, 15, 1, '2018-10-24 16:05:52', '2018-10-24 16:05:52'),
(16, 16, 1, '2018-10-24 16:08:37', '2018-10-24 16:08:37'),
(17, 17, 1, '2018-10-24 16:11:52', '2018-10-24 16:11:52'),
(18, 18, 1, '2018-10-24 16:14:13', '2018-10-24 16:14:13'),
(19, 19, 1, '2018-10-24 16:21:55', '2018-10-24 16:21:55'),
(20, 20, 1, '2018-10-24 16:27:49', '2018-10-24 16:27:49'),
(21, 21, 1, '2018-10-24 16:31:58', '2018-10-24 16:31:58'),
(22, 22, 1, '2018-10-24 16:35:09', '2018-10-24 16:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `user_id`, `name`, `address`, `mobile`, `area`, `day_slot`, `time_slot`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'Roman Ahmed', '124 North Bashabo 3rd Floor', '01711461528', 'Banasree', 'Wednesday, 07 Nov 2018', '10am- 11am', 1, '2018-09-21 15:47:27', '2018-11-07 14:27:44'),
(3, 3, 'kawsar', 'baily road', '01721675279', 'All', 'Thursday, 08 Nov 2018', '10am- 11am', 1, '2018-10-24 16:47:45', '2018-11-07 17:37:49'),
(4, 5, 'Moin Uddin', '3 new baily road', '01819231681', 'Eastern Housing', 'Tuesday, 06 Nov 2018', '10am- 11am', 1, '2018-11-05 19:42:12', '2018-11-05 19:42:18'),
(5, 1, 'shamim', '29 suvasbose avenue, luxmibazar, Dhaka-1100', '01966088782', 'Agargaon', 'Tuesday, 06 Nov 2018', '11am - 12pm', 1, '2018-11-06 02:38:57', '2018-11-06 02:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_12_083452_create_admins_table', 1),
(4, '2018_04_12_184916_create_products_table', 2),
(5, '2018_04_12_185053_create_categories_table', 2),
(6, '2018_04_12_185114_create_areas_table', 2),
(7, '2018_04_17_030554_create_category_product_table', 3),
(8, '2018_04_18_141727_create_cities_table', 4),
(9, '2018_04_18_185114_create_areas_table', 5),
(10, '2018_04_19_161707_create_category_product_table', 6),
(11, '2018_04_19_172419_create_city_product_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` double(8,2) DEFAULT NULL,
  `sales_price` double(8,2) DEFAULT NULL,
  `quantity` mediumint(9) DEFAULT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `product_id`, `size`, `color`, `regular_price`, `sales_price`, `quantity`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', 'Red', 4500.00, 4400.00, 10, '1539346827-opt-pr-12.jpg', '2018-10-12 22:20:27', '2018-10-12 22:20:27'),
(2, 1, 'M', 'Red', 4500.00, 4400.00, 10, '1539346951-opt-pr-12.jpg', '2018-10-12 22:22:31', '2018-10-12 22:22:31'),
(3, 1, 'L', 'Red', 4500.00, 400.00, 10, '1539347036-opt-pr-12.jpg', '2018-10-12 22:23:56', '2018-10-12 22:23:56'),
(4, 1, 'S', 'Blue', 4500.00, 4000.00, 10, '1539347411-opt-pr-08.jpg', '2018-10-12 22:30:11', '2018-10-12 22:30:11'),
(5, 1, 'M', 'Blue', 4000.00, 3900.00, 10, '1539348751-opt-pr-08.jpg', '2018-10-12 22:52:31', '2018-10-12 22:52:31'),
(6, 1, 'L', 'Blue', 4000.00, 3900.00, 10, '1539348784-opt-pr-08.jpg', '2018-10-12 22:53:04', '2018-10-12 22:53:04'),
(7, 6, 'S', NULL, 2500.00, 2200.00, 3, '1539793757-opt-panjabi.jpg', '2018-10-18 02:29:17', '2018-10-18 02:29:17'),
(8, 6, 'M', NULL, 2800.00, 2600.00, 3, '1539793810-opt-panjabi.jpg', '2018-10-18 02:30:10', '2018-10-18 02:30:10'),
(9, 6, 'L', NULL, 3000.00, 2800.00, 3, '1539793834-opt-panjabi.jpg', '2018-10-18 02:30:34', '2018-10-18 02:30:34'),
(10, 7, '38', NULL, 0.00, 1775.00, 1, '', '2018-10-24 14:27:25', '2018-10-24 14:27:25'),
(11, 8, '38', NULL, 0.00, 1850.00, 1, '1540356308-opt-2337.jpg', '2018-10-24 14:45:08', '2018-10-24 14:45:08'),
(12, 8, '40', NULL, 0.00, 1850.00, 1, '1540356326-opt-2337.jpg', '2018-10-24 14:45:26', '2018-10-24 14:45:26'),
(13, 19, '38', NULL, 0.00, 3975.00, 1, '1540362147-opt-2606.jpg', '2018-10-24 16:22:27', '2018-10-24 16:22:27'),
(14, 19, '40', NULL, 0.00, 3975.00, 1, '1540362165-opt-2606.jpg', '2018-10-24 16:22:45', '2018-10-24 16:22:45'),
(15, 19, '42', NULL, 0.00, 3975.00, 1, '1540362185-opt-2606.jpg', '2018-10-24 16:23:05', '2018-10-24 16:23:05'),
(17, 19, '44', NULL, 0.00, 3975.00, 1, '1540362233-opt-2606.jpg', '2018-10-24 16:23:53', '2018-10-24 16:23:53'),
(18, 20, '42', NULL, 0.00, 3225.00, 0, '1540362492-opt-2607.jpg', '2018-10-24 16:28:12', '2018-11-07 17:40:16'),
(19, 20, '44', NULL, 0.00, 3225.00, 1, '1540362509-opt-2607.jpg', '2018-10-24 16:28:29', '2018-10-24 16:28:29'),
(20, 21, '42', NULL, 0.00, 2025.00, 1, '1540362742-opt-2612.jpg', '2018-10-24 16:32:22', '2018-10-24 16:32:22'),
(21, 21, '44', NULL, 0.00, 2025.00, 1, '1540362760-opt-2612.jpg', '2018-10-24 16:32:40', '2018-10-24 16:32:40'),
(22, 22, '38', NULL, 0.00, 3425.00, 0, '1540362930-opt-2614.jpg', '2018-10-24 16:35:30', '2018-11-06 03:06:50'),
(23, 22, '40', NULL, 0.00, 3425.00, 1, '1540362947-opt-2614.jpg', '2018-10-24 16:35:47', '2018-10-29 14:53:54'),
(24, 22, '42', NULL, 0.00, 3425.00, 1, '1540362963-opt-2614.jpg', '2018-10-24 16:36:03', '2018-10-24 16:36:03'),
(25, 22, '44', NULL, 0.00, 3425.00, 1, '1540362980-opt-2614.jpg', '2018-10-24 16:36:20', '2018-10-24 16:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `delivery_charge` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(2,0) NOT NULL DEFAULT '0',
  `cancel_by` int(9) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=''pending''; 2=''complete''; 3=''cancle''; 4=''Payment Discolify''; 13="deleted"; 25=''Refund''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `delivery_id`, `payment_method`, `amount`, `delivery_charge`, `discount`, `cancel_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Cash on Delivery', 3350.00, 0.00, '0', NULL, 1, '2018-11-06 15:41:17', '2018-11-06 15:41:17'),
(2, 2, 2, 'Cash on Delivery', 8050.00, 0.00, '0', NULL, 3, '2018-11-07 14:27:44', '2018-11-07 14:27:56'),
(3, 3, 3, 'Cash on Delivery', 3225.00, 0.00, '0', NULL, 2, '2018-11-07 17:37:49', '2018-11-07 17:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `ordproducts`
--

CREATE TABLE `ordproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `optid` int(9) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `regprice` decimal(8,2) DEFAULT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordproducts`
--

INSERT INTO `ordproducts` (`id`, `order_id`, `product_id`, `optid`, `name`, `image`, `qty`, `price`, `regprice`, `size`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 17, NULL, 'Half Silk Sharee', '1540361512-2591.jpg', 1, '3350.00', '0.00', NULL, NULL, '2018-11-06 15:41:17', '2018-11-06 15:41:17'),
(2, 2, 10, NULL, 'Andi Cotton Sharee', '1540356851-2410.jpg', 1, '8050.00', '0.00', NULL, NULL, '2018-11-07 14:27:44', '2018-11-07 14:27:44'),
(3, 3, 20, 18, 'Cotton Salwar Kameez', '1540362492-opt-2607.jpg', 1, '3225.00', '0.00', '42', NULL, '2018-11-07 17:37:49', '2018-11-07 17:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `regular_price` double(8,2) DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `stock_qty` int(9) DEFAULT NULL,
  `price_unit` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(9) NOT NULL DEFAULT '0' COMMENT '1=home, 0= not home',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `image`, `detail`, `regular_price`, `sale_price`, `purchase_price`, `stock_qty`, `price_unit`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Cotton Panjabi', 'cotton-panjabi', 'CP01', '1540355861-2319.jpg', '<div><span style=\"font-size: 13.3333px;\">Style No. - 2319</span></div>Cotton Panjabi', 0.00, 1775.00, NULL, 1, NULL, 1, 1, '2018-10-24 14:25:32', '2018-11-06 04:46:37'),
(8, 'Cotton Panjabi', 'cotton-panjabi-1', NULL, '1540356276-2337.jpg', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Style- 2337</span></font></div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cotton Panjabi</span></font><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Color: Whtie &amp; Blue</span></font></div>', 0.00, 1850.00, NULL, 2, NULL, 1, 1, '2018-10-24 14:44:36', '2018-10-24 14:58:53'),
(9, 'Cotton Sharee', 'cotton-sharee', 'cs01', '1540356581-2338.jpg', '<div>Style - 2338</div>Cotton Screen Print Sharee', 0.00, 2650.00, NULL, 1, NULL, 1, 1, '2018-10-24 14:49:41', '2018-11-06 05:11:39'),
(10, 'Andi Cotton Sharee', 'andi-cotton-sharee', NULL, '1540356851-2410.jpg', 'Style - 2410<br>Andi Cotton Sharee', 0.00, 8050.00, NULL, 1, NULL, 1, 1, '2018-10-24 14:54:11', '2018-10-24 14:54:11'),
(11, 'Cotton Sharee', 'cotton-sharee-1', NULL, '1540360188-2473.jpg', 'Style - 2473<div>Cotton Print &amp; Embroidery</div>', 0.00, 2650.00, NULL, 1, NULL, 1, 1, '2018-10-24 15:49:48', '2018-10-24 15:49:48'),
(12, 'Cotton Sharee', 'cotton-sharee-2', NULL, '1540360336-2559.jpg', 'Style - 2559<div>Cotton Print &amp; Embroidery</div>', 0.00, 2850.00, NULL, 1, NULL, 1, 1, '2018-10-24 15:52:16', '2018-10-24 15:52:16'),
(13, 'Cotton Sharee', 'cotton-sharee-3', NULL, '1540360447-2560.jpg', 'Style - 2560<div>Cotton Print &amp; Embroidery</div>', 0.00, 1950.00, NULL, 1, NULL, 1, 1, '2018-10-24 15:54:07', '2018-10-24 15:54:07'),
(14, 'Half Silk Sharee', 'half-silk-sharee', NULL, '1540360785-2570.jpg', 'Style - 2570<div>Half Silk Sharee with Embroidery</div>', 0.00, 4725.00, NULL, 1, NULL, 1, 1, '2018-10-24 15:59:45', '2018-10-24 15:59:45'),
(15, 'Half Silk Sharee', 'half-silk-sharee-1', NULL, '1540361151-2571.jpg', 'Style - 2571<div>Half Silk Sharee with Embroidery</div>', 0.00, 3425.00, NULL, 1, NULL, 1, 1, '2018-10-24 16:05:52', '2018-10-24 16:05:52'),
(16, 'Cotton Sharee', 'cotton-sharee-4', NULL, '1540361317-2582.jpg', 'Style - 2582<div>Cotton Print Sharee and Embroidery</div>', 0.00, 2675.00, NULL, 1, NULL, 1, 1, '2018-10-24 16:08:37', '2018-10-24 16:08:37'),
(17, 'Half Silk Sharee', 'half-silk-sharee-2', 'HSS01', '1540361512-2591.jpg', 'Style - 2591<div>Half Silk Sharee &amp; Embroidery</div>', 0.00, 3350.00, NULL, 1, NULL, 1, 1, '2018-10-24 16:11:52', '2018-11-06 04:47:13'),
(18, 'Half Silk Sharee', 'half-silk-sharee-3', NULL, '1540361653-2616.jpg', 'Style - 2616<div>Half Silk Sharee &amp; Embroidery</div>', 0.00, 3150.00, NULL, 0, NULL, 1, 1, '2018-10-24 16:14:13', '2018-11-05 20:13:22'),
(19, 'Cotton Salwar Kameez', 'cotton-salwar-kameez', NULL, '1540362115-2606.jpg', 'Style - 2606<div>Cotton Salwar Kameez</div><div>Orna Shifon &amp; Jorjet</div>', 0.00, 3975.00, NULL, 4, NULL, 1, 1, '2018-10-24 16:21:55', '2018-10-24 16:21:55'),
(20, 'Cotton Salwar Kameez', 'cotton-salwar-kameez-1', NULL, '1540362469-2607.jpg', 'Style - 2607<div>Cotton Salwar Kameez</div><div>Shifon Jorjet Orna, Embroidery</div>', 0.00, 3225.00, NULL, 1, NULL, 1, 1, '2018-10-24 16:27:49', '2018-11-07 17:40:16'),
(21, 'Single Kameez', 'single-kameez', NULL, '1540362718-2612.jpg', 'Style - 2612<div>Cotton Single Kameez</div>', 0.00, 2025.00, NULL, 2, NULL, 1, 1, '2018-10-24 16:31:58', '2018-10-24 16:31:58'),
(22, 'Cotton Salwar Kameez', 'cotton-salwar-kameez-2', 'CSK01', '1540362909-2614.jpg', 'Style - 2614<div>Cotton Salwar Kameez</div><div>Shifon Jorjet Orna</div>', 0.00, 3425.00, NULL, 3, NULL, 1, 1, '2018-10-24 16:35:09', '2018-11-06 04:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `filename`, `created_at`, `updated_at`) VALUES
(10, 7, '15403559061gl-2319_2.jpg', '2018-10-24 14:38:26', '2018-10-24 14:38:26'),
(11, 14, '15403610191gl-2570_1.jpg', '2018-10-24 16:03:39', '2018-10-24 16:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Slider Item', 'first-slider-item', '1537122889.jpg', 1, '2018-09-16 18:04:45', '2018-09-17 04:34:49'),
(2, 'Second Slider', 'second-slider', '1537122905.jpg', 1, '2018-09-16 18:14:43', '2018-09-17 04:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `timelists`
--

CREATE TABLE `timelists` (
  `id` int(9) NOT NULL,
  `time_key` int(9) NOT NULL,
  `time_val` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timelists`
--

INSERT INTO `timelists` (`id`, `time_key`, `time_val`) VALUES
(1, 10, '10am- 11am'),
(2, 11, '11am - 12pm'),
(3, 12, '12pm - 1pm'),
(4, 13, '1pm - 2pm'),
(5, 14, '2pm - 3pm'),
(6, 15, '3pm - 4pm'),
(7, 16, '4pm - 5pm'),
(8, 17, '5pm - 6pm'),
(9, 18, '6pm - 7pm'),
(10, 19, '7pm - 8pm'),
(11, 20, '8pm - 9pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `isVerified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shamim', NULL, '01966088782', '$2y$10$muwpuiOHHle/ezUqvC5FSOY0sSs2bjywj7oC/lMjD48T3HbzIJmKK', 1, '0Vrhnu51GJ8R2xjwKpa4YOw1l6tRgeKUgPRVQrpKK2ZPfgQBHULbwP9vRlLq', '2018-09-15 15:49:53', '2018-10-31 03:19:01'),
(2, 'Roman Ahmed', NULL, '01711461528', '$2y$10$kIB3CvVJnruAVVEMFj1AoOnPwtoZCYO7x1baFztTzKMG0MSPxBdpO', 1, 'PewvZjq8tSGLxmn7TZfnf3JOJkQAa38omlbBgWLkMc8WfTV52etbDfK3V4bb', '2018-09-21 15:44:34', '2018-11-06 15:44:07'),
(3, 'kawsar', NULL, '01721675279', '$2y$10$XhX4HDxf9p/t8s1fSay7M./V//.1MNQwZz6gyhIRp93HYpNjmpWCq', 1, 'DtxV36Vzh3RbQPWXuH3acawcal2kJyfOUjgwwD9Jjae4GBFpxiFOfgSAxycN', '2018-10-24 16:42:02', '2018-10-24 16:42:29'),
(4, 'Shovon', NULL, '01928478609', '$2y$10$u/9soKUM2O1.nz65TjrRjedawmYHitXU.0mBO.SYzsQ9ZC5vbzc2K', 1, '5QCU5qVDHJkoDMl5lUZjo1qFrAxxG8UdqWykcdWL2ZjTpOoHtmHR2htJP5ip', '2018-11-05 19:36:49', '2018-11-05 19:37:13'),
(5, 'Moin Uddin', NULL, '01819231681', '$2y$10$9hO7BztictHaC3ry.y96.eF6Yh1FpMdl7rPPeoMiQf67dv//gUsI2', 1, 'gU7Wjcup6PvOYa5cDFAvd5tAdSDEbs17ZcVCgFNmpibiOKnYk8mn7AVhjvqO', '2018-11-05 19:38:15', '2018-11-05 19:39:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_product`
--
ALTER TABLE `city_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordproducts`
--
ALTER TABLE `ordproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelists`
--
ALTER TABLE `timelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city_product`
--
ALTER TABLE `city_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordproducts`
--
ALTER TABLE `ordproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timelists`
--
ALTER TABLE `timelists`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
