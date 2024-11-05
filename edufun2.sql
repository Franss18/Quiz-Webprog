-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 10:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun2`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `by` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `tgl`, `by`, `type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pattern Software Design', '03 November 2024', 'Acil', 'Software', 'PSD.jpg', NULL, NULL),
(2, 'Agile Software Development', '03 November 2024', 'Acil', 'Software', 'Agile.jpg', NULL, NULL),
(3, 'Code Reengineering', '03 November 2024', 'Acil', 'Software', 'Code.jpg', NULL, NULL),
(4, 'Human and Computer Interaction', '03 November 2024', 'Adi', 'Interactive', 'HCI.jpg', NULL, NULL),
(5, 'User Experience', '03 November 2024', 'Adi', 'Interactive', 'UX.jpg', NULL, NULL),
(6, 'User Experience for Digital Immersive Technology', '03 November 2024', 'Adi', 'Interactive', 'UXF.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `artikel_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ut cum blanditiis dolores itaque. Voluptatem quasi veniam et.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(2, 5, 'Quibusdam aliquam sint dolorem dolores. Libero ullam sed nostrum eius. Temporibus rerum vel iusto eos dignissimos et. Nesciunt sit accusantium maxime consequatur inventore inventore incidunt corporis.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(3, 2, 'Ratione neque dicta nobis aut iste suscipit velit. Velit aperiam est accusamus sint minus. Nihil inventore voluptates autem. Doloribus doloribus et quibusdam officia nihil sunt.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(4, 6, 'Explicabo tempore in fugiat laudantium quasi qui. Animi odit in amet quis delectus eveniet. Quaerat eum ratione non.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(5, 4, 'Aut nobis nihil doloribus et ullam aut voluptas. Sapiente totam sapiente qui ab. Et occaecati rerum sit exercitationem rerum labore.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(6, 1, 'Sapiente ut veritatis libero incidunt quam. Distinctio qui enim tenetur aut cumque. Ex qui sequi aperiam ut velit exercitationem. Autem sed et qui sit aut in.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(7, 2, 'Cum inventore et iusto porro quisquam quasi. Reiciendis in iste natus quaerat. Quod nisi itaque officiis sed aperiam. Qui est qui qui nihil praesentium.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(8, 6, 'Est harum quia quibusdam error. Velit rerum consequuntur autem quam. Est nesciunt unde quia laborum perspiciatis rem. Rerum delectus occaecati aperiam cumque.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(9, 4, 'Neque reprehenderit quam itaque eaque mollitia. Porro aut vel veritatis non magni. Cumque qui ut atque placeat. Quo dolore iure rerum. Consequuntur fugit quo officiis error qui unde et eum.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(10, 3, 'Ratione maiores reiciendis voluptas et repudiandae nam quia. Et inventore ex optio quia non sed. Dolorem nobis officiis nobis qui. Omnis soluta fuga iste ut et.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(11, 2, 'Optio explicabo ducimus libero ut. Ea commodi beatae est ipsa iure et. Perferendis aperiam autem ex expedita aut fuga esse. Quod quibusdam sint est perspiciatis ipsum aut quasi.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(12, 6, 'Quibusdam minus facere sit dolorem. Dolore minus dolores illum placeat et aut et dolores.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(13, 2, 'Quo et earum vero voluptatum ut et porro dolor. Quibusdam esse a rerum earum eum excepturi cum sed. Blanditiis id recusandae consequatur beatae dolores in quae.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(14, 2, 'Veniam molestiae vitae iusto laborum consequatur aut. Et eos officia at similique id molestias. Blanditiis debitis ut enim quisquam.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(15, 2, 'Non debitis et consectetur nam autem voluptas. Sed dolorum provident incidunt voluptatem et. Quia rerum similique autem soluta. Nam omnis dolorem ut.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(16, 2, 'Illo aspernatur consectetur et tempore vel ut harum id. Explicabo earum velit rem magni voluptatem.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(17, 5, 'Placeat delectus vero eum rerum ut. Nobis asperiores voluptate consequatur est. Aliquid est nam nisi.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(18, 6, 'Molestiae facilis atque aut dolores quasi nulla autem. Omnis nam placeat harum veritatis dolorem. Consequatur quibusdam sapiente temporibus temporibus.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(19, 1, 'Perspiciatis numquam dolorem iusto id odit vel. Quasi ipsa ut aspernatur dolores. Impedit dignissimos enim molestias illum. Totam atque molestiae quo dolores ut hic eum.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(20, 4, 'Adipisci enim aut labore. Corporis dolorem atque repellendus dolore ipsum.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(21, 4, 'Magnam eveniet earum et aspernatur est in adipisci. Ut ut consequatur est eos. Quisquam et vitae dolorem ut. Dicta ad laborum sit et mollitia eveniet esse.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(22, 1, 'Natus nihil qui occaecati sapiente accusantium laudantium eos vel. Quis unde harum molestiae ut itaque ipsa iure. Aliquam velit veniam eius qui minima id. Debitis explicabo nisi ea sunt quam vel impedit.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(23, 3, 'Dolorem facere eum qui. Rerum accusamus earum aut hic et qui fuga. Sit voluptas qui quia. Quo et omnis delectus aut tenetur voluptatum facere.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(24, 2, 'Eum modi aut quam veritatis architecto sunt fuga. Enim atque expedita voluptate et itaque. Qui minima doloremque est enim dolorum et. Corporis assumenda iusto quae.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(25, 1, 'Quae alias et nulla. Iste tempora voluptatibus aut laudantium sed et est. Et libero ut ducimus et possimus.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(26, 5, 'Temporibus eligendi quia tenetur vitae sed. Libero nostrum eum praesentium aspernatur hic ut amet. Autem deserunt delectus ea inventore veniam et. Deleniti perspiciatis ut qui repellat tempore illum.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(27, 2, 'Numquam autem consectetur saepe ut. Deserunt error nesciunt quia qui minus quo.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(28, 5, 'Saepe sit sapiente qui autem odio. Eveniet modi dolorem quas qui et asperiores est. Quia reiciendis qui aut et est. Qui rerum et sint minus repellendus.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(29, 4, 'Est eligendi qui iure dolor sapiente. Est voluptatibus consectetur architecto rerum a quia eveniet dicta. Minus dolore voluptatum temporibus nostrum voluptatem vel et. Nisi sapiente et corrupti eos modi commodi.', '2024-11-05 01:46:50', '2024-11-05 01:46:50'),
(30, 1, 'Qui ab pariatur eum enim molestias eius nulla. Et est ut et quas aspernatur. Consectetur rem ad voluptatem iste beatae aut.', '2024-11-05 01:46:50', '2024-11-05 01:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_082600_create_artikel_table', 1),
(5, '2024_11_05_082609_create_comment_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EtCIMl0OdeUiZmtQPad3PCA50i1rkz6KPO2NC0rW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXhMeTdyeWo1THZsQnRDQmVEUEFJb2FFTVN3alhEcTU2QURNVlltRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lZHVmdW4vcG9wdWxhcj9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730800296);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_artikel_id_foreign` (`artikel_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_artikel_id_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `artikel` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
