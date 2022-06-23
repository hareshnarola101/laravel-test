-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2022 at 02:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel convention 2021', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(2, 'Laravel convention 2023', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(3, 'React convention 2023', '2022-06-11 07:55:51', '2022-06-11 07:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `url`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'All events', '/events', NULL, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(2, 'Laracon', '/events/laracon', 1, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(3, 'Illuminate your knowledge of the laravel code base', '/events/laracon/workshops/illuminate', 2, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(4, 'The new Eloquent - load more with less', '/events/laracon/workshops/eloquent', 2, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(5, 'Reactcon', '/events/reactcon', 1, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(6, '#NoClass pure functional programming', '/events/reactcon/workshops/noclass', 5, '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(7, 'Navigating the function jungle', '/events/reactcon/workshops/jungle', 5, '2022-06-11 07:55:51', '2022-06-11 07:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_19_093349_bootstrap_test_database', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(12, '2022_06_22_134129_create_employees_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b71a844a296d8fe1f3ea3679f6f35cb9d01f0f41f0d301e05bd01c2e6b0922372e0d834c9ff3f215', 1, 1, 'API Token', '[]', 0, '2022-06-23 07:40:24', '2022-06-23 07:40:24', '2023-06-23 13:10:24'),
('d1d68b4bf5c4cd533b30a6394999a722bedb5a39b5aa7b6aea737a3fe3916d8c801a48ce7cf284ba', 2, 1, 'API Token', '[]', 0, '2022-06-23 07:51:56', '2022-06-23 07:51:56', '2023-06-23 13:21:56'),
('2e6c8257fe6a03513aa6da0084023b61d1ee9e192505e2463d4a58b6a859d04cd335d364770ecbe8', 3, 1, 'API Token', '[]', 0, '2022-06-23 07:53:29', '2022-06-23 07:53:29', '2023-06-23 13:23:29'),
('9456542cc3dd0e3ea64f3464a4389a185e03c7c13aa72de15fd173d944bb7995e9c991eb2059130b', 3, 1, 'API Token', '[]', 0, '2022-06-23 07:55:20', '2022-06-23 07:55:20', '2023-06-23 13:25:20'),
('eaf7b0834216650f7c025fd6999758109dcfa9ec1bc367b0d27d52529f25eb91abc32e281fdb069a', 1, 1, 'API Token', '[]', 0, '2022-06-23 07:55:52', '2022-06-23 07:55:52', '2023-06-23 13:25:52'),
('ee781a28571ae191f23e8cf868d5fa8854617de1168d89b4ef31ea738bd1a5c4e04b4f97e01177f0', 1, 1, 'API Token', '[]', 0, '2022-06-23 07:57:37', '2022-06-23 07:57:37', '2023-06-23 13:27:37'),
('cd147418ffa06f32d352aae31e062ff779a5c10a24b0982c165ae981727dd6c49e175a182ca6859f', 1, 1, 'API Token', '[]', 0, '2022-06-23 07:58:16', '2022-06-23 07:58:16', '2023-06-23 13:28:16'),
('37f4ee4687d123e711c8ec67e49affc0208253b309d2bebf9ce8e54d2a65bf5fff20c1bcaee5198b', 1, 1, 'API Token', '[]', 0, '2022-06-23 07:58:42', '2022-06-23 07:58:42', '2023-06-23 13:28:42'),
('f87f44db69e26566436407220a488dd995d5482f632833cf49f985e95aee3bd36a67bd1bcd106a26', 1, 1, 'API Token', '[]', 0, '2022-06-23 08:00:06', '2022-06-23 08:00:06', '2023-06-23 13:30:06'),
('4b4b1054bb2318b16322eeb697ec74960a769db75227233e5f4faf847a53ae6de5a418bbb06b387f', 1, 1, 'API Token', '[]', 0, '2022-06-23 08:19:14', '2022-06-23 08:19:14', '2023-06-23 13:49:14'),
('1708e3c40e973a4a599de233a27fdd783b133b94eacc3ff6b2c34c2bee0c41cff33a8ac76a04158a', 1, 1, 'API Token', '[]', 0, '2022-06-23 08:21:07', '2022-06-23 08:21:07', '2022-06-23 13:51:12'),
('4a90ed790abaedf197f325a0ddf3a26d49f618859dcdef8067ae5eb909c61f37c76eaa11d853ab19', 1, 1, 'API Token', '[]', 0, '2022-06-23 08:21:52', '2022-06-23 08:21:52', '2022-06-23 13:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '2I5fQKuBSX5x9pYzXB5MV4rObtq3ZqsTEiy4skn9', NULL, 'http://localhost', 1, 0, 0, '2022-06-22 07:47:56', '2022-06-22 07:47:56'),
(2, NULL, 'Laravel Password Grant Client', 'T7B0sUg7Kt4Gdap8r7riyaNMj6JomU86V8vLiYXz', 'users', 'http://localhost', 0, 1, 0, '2022-06-22 07:47:57', '2022-06-22 07:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-22 07:47:57', '2022-06-22 07:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'rambeen001@gmail.com', NULL, '$2y$10$DaN1cFavyhDC9MSj.oESPu5wvBLGrz6Q3HappAiAZwvRR492TC/wW', NULL, '2022-06-23 07:40:22', '2022-06-23 07:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

DROP TABLE IF EXISTS `workshops`;
CREATE TABLE IF NOT EXISTS `workshops` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workshops_event_id_foreign` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `start`, `end`, `event_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2021-02-21 10:25:51', '2021-02-21 16:25:51', 1, 'Illuminate your knowledge of the laravel code base', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(2, '2023-10-11 10:25:51', '2023-10-11 16:25:51', 2, 'The new Eloquent - load more with less', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(3, '2023-11-11 10:25:51', '2023-11-11 17:25:51', 2, 'AutoEx - handles exceptions 100% automatic', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(4, '2023-08-11 10:25:51', '2023-08-11 18:25:51', 3, '#NoClass pure functional programming', '2022-06-11 07:55:51', '2022-06-11 07:55:51'),
(5, '2023-11-11 09:25:51', '2023-11-11 17:25:51', 3, 'Navigating the function jungle', '2022-06-11 07:55:51', '2022-06-11 07:55:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
