-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2021 at 11:42 AM
-- Server version: 10.3.27-MariaDB-0+deb10u1
-- PHP Version: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real-estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_31_103450_create_properties_table', 1),
(5, '2021_06_01_161235_drop_properties_table', 2),
(6, '2021_06_01_161912_create_properties_table', 3),
(7, '2021_06_02_110123_add_the_price_to_properties', 4),
(8, '2021_06_02_113234_add_pricing_to_properties', 5),
(9, '2021_06_02_123141_create_properties_table', 6),
(10, '2021_06_02_132626_add_user_id_to_properties', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `reference_no`, `description`, `images`, `published_date`, `price`, `property_type`, `area`, `city`, `created_at`, `updated_at`, `user_id`) VALUES
(7, 'MODERN HOUSE ON THE HILLS', '133', 'Great house on the hills with views of the area, 3 car garage, security systems, swimming pool and close to many shops.', 'house1_1622711194.jpg', '2021-06-05', '400,000', 'Residential', 'Engomi', 'Nicosia', '2021-06-05 06:06:35', '2021-06-05 06:06:35', 2),
(8, 'BEACH HOUSE', '4422', 'Great beach house for privacy seeking buyers. It features 2 car garage, swimming pool and roof garden.', 'beachhouse1_1622720488.jpg', '2021-06-03', '500,000', 'Residence', 'Meneou', 'Larnaca', '2021-06-03 06:15:57', '2021-06-03 06:15:57', 2),
(10, 'HIGH RISE APARTMENT WITH CITY AND SEA VIEWS', '0044', 'Spacious and cozy apartment with 2 bedrooms, large living room and close distance to the beach.', 'apartment1_1622721199.jpg', '2021-06-03', '140,000', 'Residential', 'Paraliakos', 'Limassol', '2021-06-03 08:47:08', '2021-06-05 08:12:50', 2),
(13, 'CLASSIC HOUSE AMERICAN STYLE', '4343', 'Beautiful American style house, brand new, large garage, central air-conditioning, 4 bedrooms.', 'house3_1622731830.jpg', '2021-06-03', '550,000', 'Residential', 'Dromolaxia', 'Larnaca', '2021-06-03 11:50:30', '2021-06-03 11:50:30', 2),
(14, 'CANADIAN STYLE HOUSE', '3322', 'Beautiful Canadian style house, brand new, large garage, central air-conditioning, 4 bedrooms.', 'housec_1622890001.jpg', '2021-06-03', '540,000', 'Residential', 'Aradippou', 'Larnaca', '2021-06-03 11:51:44', '2021-06-05 07:51:41', 2),
(17, 'MEDITERRANEAN STYLE HOUSE', '7754', 'Mediterranean style house, recently renovated, spacious, classic Spanish style swimming pool, air-conditioning, security systems, close to large mall and other nice areas.', 'house4_1622737935.jpg', '2021-06-03', '700,000', 'Residential', 'Anthoupoli', 'Nicosia', '2021-06-03 13:32:15', '2021-06-05 08:13:56', 2),
(18, 'OFFICE SPACE', '9887', 'Spacious office space with central air-conditioning, a lot of natural light and very quiet.', 'office1_1622739027.jpg', '2021-06-02', '150,000', 'Office', 'Pervolia', 'Larnaca', '2021-06-02 10:52:55', '2021-06-03 13:50:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@company.com', NULL, '$2y$10$iGcwOrBQsXeuoaYrKDT9JeeMXZA9nT9DQfHskRcvdxszFhE3ZzGym', NULL, '2021-06-03 05:56:11', '2021-06-03 05:56:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
