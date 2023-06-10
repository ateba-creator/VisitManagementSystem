-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2023 at 06:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitManagement`
--

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_09_064844_create_visitors_table', 1),
(6, '2023_06_09_065429_create_users_table', 1),
(7, '2023_06_09_064838_create_visits_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '9b61ef2be02d7d55629285d5d90440973403d1e1db7dafae88cf3f9b8e79b5cc', '[\"*\"]', NULL, NULL, '2023-06-10 18:06:14', '2023-06-10 18:06:14'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '0787bdfe78e57ebcbb04f9f59b7e4ae25426d963fd2fe795a5475a4b946964e2', '[\"*\"]', NULL, NULL, '2023-06-10 18:06:19', '2023-06-10 18:06:19'),
(3, 'App\\Models\\User', 1, 'API TOKEN', '60a37b383fc1787f1bbc8fbcb3a377252957d58b6be8f9ac683c3e5e9afc1d83', '[\"*\"]', NULL, NULL, '2023-06-10 20:33:39', '2023-06-10 20:33:39'),
(4, 'App\\Models\\User', 1, 'API TOKEN', 'fb9d120dbf7e750b13fa778f06c91c5973aceea7b47eccfd6aac3df03444533b', '[\"*\"]', NULL, NULL, '2023-06-10 20:36:27', '2023-06-10 20:36:27'),
(5, 'App\\Models\\User', 1, 'API TOKEN', '10a6eb878d2c769cbc87db1aec2282ac0d414d9f7d1592f799d82ffc3c31ace8', '[\"*\"]', NULL, NULL, '2023-06-10 20:45:49', '2023-06-10 20:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ateba otabela', 'hermann ryan', 'atebaotabela@gmail.com', '$2y$10$3d0Q4GgqBqcWGLWShSfhcOiaRaK4TF5x8/OchH.UqXx6qq2GSHyn2', '2023-06-10 18:06:13', '2023-06-10 18:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `firstName`, `lastName`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Kaylin', 'Spinka', 'lueilwitz.annabelle@gmail.com', '+1-580-928-8463', '8104 Rath Ridge Suite 612\nDeonland, NC 74448-0971', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(2, 'Dexter', 'Mann', 'udicki@bode.biz', '+1-779-950-9650', '5806 Deron Estates Suite 441\nPort Claude, NH 81351-0558', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(3, 'Ole', 'Boehm', 'gerhold.carmella@bergstrom.info', '1-657-388-2453', '149 Aufderhar Knolls\nD\'Amorebury, NJ 77597', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(4, 'Leatha', 'Roob', 'tcarter@hessel.org', '765.390.1062', '320 Joany Hollow Apt. 892\nSouth Hassan, NH 91388-0547', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(5, 'Zachery', 'Aufderhar', 'dina07@crooks.com', '+1-657-657-0458', '7370 Watsica Crescent Apt. 996\nNew Kristoferfurt, OR 34716-4074', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(6, 'Kiana', 'Wolf', 'gorczany.maddison@hills.com', '(210) 504-3424', '229 Perry Pike\nNew Jaylan, RI 34514', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(7, 'Soledad', 'Upton', 'brendon.gorczany@gmail.com', '+1-910-696-1906', '657 Stephan Fields\nEast Pascaletown, AK 84085', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(8, 'Estefania', 'Abbott', 'wolf.vallie@stiedemann.com', '+13475626967', '3507 Blick Spurs\nRusselbury, MS 16799', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(9, 'Lyda', 'Schmitt', 'ddaugherty@hyatt.com', '+1-650-465-0953', '66009 Sonia Lights\nPort Jabari, WY 08229-4801', '2023-06-10 20:27:13', '2023-06-10 20:27:13'),
(10, 'Barney', 'Bednar', 'taryn39@yahoo.com', '+1.351.309.5700', '5037 Zemlak Knoll Apt. 332\nLake Rosie, WV 06029', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(11, 'Oswald', 'Mertz', 'dayton36@sipes.com', '(650) 347-4288', '59571 Myrtle Squares Suite 152\nSantiagoburgh, SD 90907', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(12, 'Rhett', 'Homenick', 'cconsidine@yahoo.com', '+1.580.489.9569', '847 Von Dam Apt. 668\nNew Jasenfurt, NY 10750', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(13, 'Roscoe', 'Waelchi', 'amaya.wehner@watsica.biz', '1-248-556-6563', '6193 Schoen Lodge Apt. 880\nAlejandrinmouth, MD 17266-4481', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(14, 'Ines', 'Ryan', 'xstroman@yahoo.com', '+1.283.509.4491', '17759 King Glen Suite 668\nNew Alexandrine, MN 76839-6792', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(15, 'Eloy', 'Marvin', 'bailey.haley@yahoo.com', '+1-717-545-8204', '6385 Nicolas Loaf Apt. 144\nOsborneville, VT 98331-0711', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(16, 'Kailey', 'Ratke', 'witting.jacquelyn@yahoo.com', '+1-270-717-1243', '721 Manuela Parkway Suite 851\nGregoriohaven, GA 92798-7011', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(17, 'Nicole', 'Ward', 'bins.maud@gmail.com', '907.876.5446', '18561 Terry Shore Suite 060\nDanielport, CT 75692', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(18, 'Fatima', 'McCullough', 'hweimann@gmail.com', '+1-757-498-4049', '403 Sporer Divide Apt. 433\nLouisaview, IL 39804', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(19, 'Jamal', 'Friesen', 'qhackett@purdy.info', '(564) 448-2573', '46283 Leonardo Groves\nJadabury, ID 02667', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(20, 'Vinnie', 'Ratke', 'tjohnston@sauer.biz', '620.364.4859', '175 Daniel Heights Apt. 258\nHilmabury, FL 24268-8196', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(21, 'Patricia', 'Bins', 'vflatley@yahoo.com', '838.378.3662', '42314 Ruben Port Suite 930\nWest Lurlineshire, MN 48079', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(22, 'Damion', 'Kub', 'otilia67@dubuque.com', '1-908-813-1129', '952 Rice Squares\nLake Fleta, VT 58834-3470', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(23, 'Madison', 'Corkery', 'fkoch@waelchi.com', '863.976.5308', '8541 Danny Drive Suite 051\nMuhammadville, KS 73401', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(24, 'Wilhelm', 'Torphy', 'agutkowski@yahoo.com', '520.712.1202', '77977 Kuphal Freeway Suite 672\nSouth Eveline, TN 79889', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(25, 'Kim', 'Conroy', 'znader@gmail.com', '+1-832-622-2167', '12113 Hauck Lock\nDulcefort, VT 55867', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(26, 'Anjali', 'Stark', 'yhilpert@pouros.info', '+1.231.281.9418', '668 Dax Valley Apt. 476\nEast Antoniobury, WA 91410-9974', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(27, 'Kianna', 'Simonis', 'bergstrom.gerardo@bogan.biz', '689.604.3216', '45843 Kennedi Tunnel Apt. 494\nEbertberg, KS 95345', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(28, 'Ardella', 'McLaughlin', 'qmckenzie@hotmail.com', '443-818-3850', '36278 Magnolia Junctions Suite 371\nOberbrunnermouth, RI 94534', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(29, 'Ahmad', 'Wehner', 'purdy.brock@cremin.info', '+1-320-663-5125', '55064 Witting Inlet\nGaylordside, ND 58101', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(30, 'Antonietta', 'Oberbrunner', 'ehayes@yahoo.com', '+1 (405) 627-3948', '331 Linda Avenue\nNew Maudie, MI 00258', '2023-06-10 20:27:14', '2023-06-10 20:27:14'),
(31, 'Annamae', 'Metz', 'rcasper@reilly.biz', '463.239.8282', '4368 Kaia Loop\nRaymundoburgh, ND 59222', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(32, 'Kiera', 'Mraz', 'cordia.maggio@hotmail.com', '(726) 548-6430', '31498 Lockman Cove\nSouth Lempihaven, AZ 93074-7860', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(33, 'Abel', 'Gutmann', 'gerard.huels@yahoo.com', '1-269-890-9121', '856 Welch Groves Suite 021\nSouth Vivianneport, MA 25519-7388', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(34, 'Kelton', 'Reinger', 'uschmeler@gmail.com', '+14802964515', '63188 Isabel Brook\nEast Mossieburgh, NC 93413', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(35, 'Sandra', 'Torp', 'dameon.mohr@gmail.com', '+1-502-553-9365', '310 Metz Lane\nBoylebury, DE 03221', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(36, 'Lukas', 'Predovic', 'wilmer69@waelchi.com', '+1 (202) 430-9106', '560 Aurelie Rue\nGladyceburgh, ME 29317-6776', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(37, 'Dameon', 'Zemlak', 'brenda.nienow@yahoo.com', '351-477-1472', '516 Rice Stream\nImmanueltown, NY 14404', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(38, 'Clemmie', 'Kling', 'scottie37@fadel.com', '1-573-627-8293', '31431 Hayes Shore Apt. 448\nNew Lorine, AR 28852', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(39, 'Jammie', 'Littel', 'carroll34@thiel.com', '+1-854-773-4199', '917 Dicki Land\nBrooksfort, MD 86564-9771', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(40, 'Rosina', 'Fahey', 'hgrimes@gmail.com', '+1.463.427.1330', '53479 Heidenreich Road\nCreminborough, RI 60409-2734', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(41, 'Melvin', 'Gislason', 'alivia.rippin@yahoo.com', '+1-640-656-7677', '6737 Ana Well\nCelestineborough, MT 40962-1518', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(42, 'Cullen', 'Price', 'zander67@stroman.org', '763.602.1983', '18719 Karelle Inlet\nEast Haley, MT 57973-1937', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(43, 'Estelle', 'Breitenberg', 'billie.larson@hotmail.com', '1-470-638-8615', '7683 Baumbach Stravenue Suite 493\nMuellerport, IN 73358-9761', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(44, 'Marlon', 'Robel', 'onikolaus@upton.info', '1-734-865-7144', '221 Harber Route Suite 895\nJuliamouth, KS 86313-1388', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(45, 'Evans', 'Kihn', 'jwiza@hotmail.com', '+1-520-873-6727', '27397 Fatima Summit\nHoppeview, TX 90273-3235', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(46, 'Kylee', 'Wehner', 'grayson26@gmail.com', '1-540-590-1557', '6464 Fritsch Plaza Suite 050\nDoviestad, IA 95686-3997', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(47, 'Alexzander', 'Johnston', 'enos.muller@powlowski.com', '1-551-950-9820', '737 Schowalter Ford\nMacejkovicmouth, WY 17694', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(48, 'Wilson', 'Stoltenberg', 'wendell.ruecker@johns.com', '(360) 225-8532', '50080 Corkery Square Suite 462\nLake Marjolaineland, SD 98348-2428', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(49, 'Elfrieda', 'Kulas', 'ykassulke@yahoo.com', '+1 (847) 278-9516', '979 Gulgowski Streets\nLilianeberg, DE 32390-2177', '2023-06-10 20:27:15', '2023-06-10 20:27:15'),
(50, 'Francesco', 'Grady', 'nienow.sandra@prosacco.biz', '+1-651-664-0411', '6922 Fern Islands\nLake Tatemouth, AZ 68895', '2023-06-10 20:27:15', '2023-06-10 20:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `departureDate` datetime DEFAULT NULL,
  `created_month` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `purpose`, `date`, `departureDate`, `created_month`, `user_id`, `visitor_id`, `created_at`, `updated_at`) VALUES
(1, 'just for testing purpose', '2023-06-10 16:48:36', NULL, NULL, NULL, 34, '2023-06-10 20:48:36', '2023-06-10 20:48:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
