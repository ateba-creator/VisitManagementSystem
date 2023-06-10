-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2023 at 02:00 AM
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
(4, '2023_06_09_064838_create_visits_table', 1),
(5, '2023_06_09_064844_create_visitors_table', 1),
(6, '2023_06_09_065429_create_users_table', 1);

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
(1, 'App\\Models\\User', 2, 'API TOKEN', '95d6c1eb44d05b6bdd983f49e00927de9ef5a4fdd87867e3f40deaf57ba769f0', '[\"*\"]', NULL, NULL, '2023-06-09 18:50:59', '2023-06-09 18:50:59'),
(2, 'App\\Models\\User', 2, 'API TOKEN', '64496fb97675faaa99faef22b2213a56fafe44d890029939d3c7ba0ac62632f8', '[\"*\"]', NULL, NULL, '2023-06-09 18:51:13', '2023-06-09 18:51:13'),
(3, 'App\\Models\\User', 2, 'API TOKEN', '4d5b152db82a2e1858f2c212d9cf51c1a09c3afbff65acb7c99b9a0e8e89aa93', '[\"*\"]', NULL, NULL, '2023-06-09 20:10:21', '2023-06-09 20:10:21'),
(4, 'App\\Models\\User', 2, 'API TOKEN', 'ee1a3698520e656dd847617fbc57e1acfd6837fb2e1fb7d5bde9333e92088856', '[\"*\"]', NULL, NULL, '2023-06-09 20:15:03', '2023-06-09 20:15:03'),
(5, 'App\\Models\\User', 2, 'API TOKEN', '0c925039a713d7cad40cac82edcf2c9030f94574c4ac848f47f087f36b80c34a', '[\"*\"]', NULL, NULL, '2023-06-09 20:45:04', '2023-06-09 20:45:04'),
(6, 'App\\Models\\User', 2, 'API TOKEN', '032fd824768133db773a56a9038d308259bcf81a328beb2c7134258fde28bef6', '[\"*\"]', NULL, NULL, '2023-06-09 21:01:36', '2023-06-09 21:01:36'),
(7, 'App\\Models\\User', 2, 'API TOKEN', '3b20f1093be59cce26be8c011dae568da7278307f078459f7c9ffd718aeb39fd', '[\"*\"]', NULL, NULL, '2023-06-10 00:19:45', '2023-06-10 00:19:45'),
(8, 'App\\Models\\User', 2, 'API TOKEN', '07679421e169274ea869deaaa3f9937a31fb22479eb47bf19d553c485baa6438', '[\"*\"]', NULL, NULL, '2023-06-10 02:34:15', '2023-06-10 02:34:15');

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
(2, 'Ateba Otabela', 'Hermann Ryan', 'atebaotabela@gmail.com', '$2y$10$uK2pvdEWuKey/vgimzVspOlHfMaEXkI5kgAnVIDbEqBfEBNIBYRU2', '2023-06-09 18:50:59', '2023-06-09 18:50:59');

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
(1, 'Vida', 'Stanton', 'estefania.mohr@gmail.com', '1-913-470-2464', '43713 Wendell Rapids\nAlainaport, AL 28121', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(2, 'Nat', 'Pouros', 'daija57@gmail.com', '301-953-3787', '9507 Phoebe Burgs\nEast Mariamstad, GA 93334-7884', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(3, 'Allan', 'Mueller', 'camren72@gmail.com', '+1 (678) 682-2469', '1951 Glenna Locks\nNew Emely, PA 13976', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(4, 'Alva', 'Tillman', 'hoppe.hope@bartell.com', '(838) 586-2764', '9483 Botsford Glen Apt. 314\nFramistad, ND 29803', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(5, 'Xavier', 'Weissnat', 'jones.everardo@gmail.com', '1-551-253-6966', '378 Coy Islands\nSchultzstad, OK 57182', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(6, 'Bill', 'Glover', 'orpha14@yahoo.com', '660.701.8884', '2169 Rita Tunnel\nOrlandmouth, CT 26030', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(7, 'Maud', 'Marvin', 'borer.amie@hotmail.com', '225-895-7856', '542 Margarett Lake Suite 748\nKleinmouth, MD 04913-0522', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(8, 'Sanford', 'Bailey', 'isabel00@leuschke.com', '1-229-852-0497', '19918 Rohan Camp Apt. 133\nKertzmannland, SD 16409', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(9, 'Elta', 'Stroman', 'magnolia.nolan@powlowski.biz', '1-859-262-0049', '84857 Violette Cliff Suite 018\nFloridaport, HI 42942', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(10, 'Cassandra', 'Keebler', 'edythe.monahan@hotmail.com', '915-269-0111', '16717 Kozey Parks\nEichmannhaven, CO 37964', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(11, 'Grayson', 'Harber', 'aufderhar.wilhelmine@becker.com', '+1 (419) 518-5829', '4433 Deckow Centers Apt. 548\nSouth Ward, VT 56934', '2023-06-09 18:48:15', '2023-06-09 18:48:15'),
(12, 'Florida', 'Rutherford', 'sstiedemann@gmail.com', '+1.928.538.7121', '49485 Christiansen Track Apt. 728\nZemlakside, RI 52624', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(13, 'Fannie', 'Kirlin', 'jermaine45@gaylord.biz', '1-801-829-4762', '144 Tromp Lake Apt. 578\nMargretborough, NH 53461-9674', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(14, 'Davin', 'Larson', 'skiles.sandrine@yahoo.com', '+1-567-455-0563', '93076 Harber Loaf\nLake Aliciamouth, PA 28053-1698', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(15, 'Rosie', 'Hilpert', 'shemar75@kulas.com', '808.990.6763', '674 Alvina Junction Apt. 410\nNickside, OK 93676-8521', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(16, 'Francesca', 'Schuppe', 'skiles.benny@hotmail.com', '+17633048410', '2978 Katheryn Mission\nNew Hardy, CO 05853-8812', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(17, 'Agnes', 'Cronin', 'baumbach.damian@kris.com', '256-301-3982', '544 Hickle Way Apt. 909\nNew Maximillia, MT 61666-3859', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(18, 'Rebekah', 'Bahringer', 'rice.emmitt@yahoo.com', '443-607-6153', '62376 Ron Station Apt. 739\nRohanshire, CT 43301', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(19, 'Donald', 'Swift', 'eliane01@hessel.net', '+19299074291', '44485 Greta Points Apt. 127\nNorth Modestaborough, AL 18132-7893', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(20, 'Herta', 'Renner', 'eturner@heathcote.biz', '(820) 673-8532', '1488 Hoeger Lodge\nPort Ephraimside, HI 66261-8717', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(21, 'Irma', 'Hamill', 'guy.nicolas@gmail.com', '+1.864.669.0649', '6260 Geraldine Drives Apt. 599\nKeelyburgh, SC 00129-1170', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(22, 'Delia', 'Wolff', 'cmayert@gmail.com', '1-626-848-0745', '460 Leif Island\nEricaburgh, MT 01539', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(23, 'Adan', 'Lindgren', 'schultz.miguel@yahoo.com', '(435) 693-3667', '92994 Hand Squares\nLake Carolannebury, NV 97259-8489', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(24, 'Bennett', 'Hahn', 'lmohr@jacobson.biz', '1-908-526-6834', '96075 Dare Square\nWest Leola, WI 43256-2082', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(25, 'Priscilla', 'Reichel', 'yasmeen48@yahoo.com', '+17372828680', '7089 Keebler Port\nBartonmouth, AK 60381', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(26, 'Jazmyn', 'Hodkiewicz', 'dannie.sipes@zboncak.com', '+1-539-271-5056', '52700 Gaylord Turnpike\nJairoview, LA 37910-1301', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(27, 'Retta', 'Herzog', 'alison.bins@gmail.com', '351.444.1864', '75073 Kenyatta Dale Suite 964\nNorth Laurianeberg, OR 80275-5248', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(28, 'Valentine', 'Kub', 'bcruickshank@boyle.net', '678-758-5809', '704 Isaac Locks\nNorth Edwardoville, VA 67037', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(29, 'Lucie', 'Gutkowski', 'adriana.leannon@jast.com', '678-572-7192', '4903 Delta Skyway\nBrekkeshire, NJ 18850', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(30, 'Efren', 'Schmeler', 'providenci.leannon@kuhn.biz', '540.873.6089', '1353 Kovacek Inlet\nMyahchester, OH 61792-5454', '2023-06-09 18:48:16', '2023-06-09 18:48:16'),
(31, 'Camron', 'Kunze', 'ipollich@hotmail.com', '+12545030374', '31197 Mia Shores\nSkilesstad, LA 61412-8644', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(32, 'Catharine', 'Kub', 'sharber@nitzsche.com', '(850) 236-8995', '70376 Jacobs Plains Apt. 213\nNew Yesenia, OK 90080-8360', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(33, 'Austyn', 'White', 'kelton19@gmail.com', '+1-805-277-7100', '77429 Kunde Fields\nEast Virginiemouth, MO 68647-9994', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(34, 'Shea', 'Rippin', 'brannon96@hoppe.com', '+1.541.844.9457', '2582 Haag Ports Suite 729\nBergstromville, NM 81810', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(35, 'Myrtis', 'Cormier', 'hmccullough@stark.net', '(682) 307-0040', '133 Roderick Oval Suite 542\nSadyetown, AK 81819', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(36, 'Kenya', 'Murray', 'jovan.hoppe@hotmail.com', '+1-678-297-1658', '7584 Bins Vista Suite 315\nNew Ephraimview, NJ 72241-0165', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(37, 'Shawn', 'Volkman', 'cmann@gmail.com', '+1-929-749-2175', '889 Kennedi Gardens Suite 804\nJosephinestad, SD 72858-7537', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(38, 'Fidel', 'Stoltenberg', 'qhessel@gmail.com', '+1.475.384.2860', '965 Jacobson Forest Apt. 921\nImanifurt, KY 29202', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(39, 'Carol', 'Kutch', 'caleigh.luettgen@kunde.org', '719-281-6488', '59768 Lesch Spurs Apt. 112\nCamillehaven, MA 31649-8032', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(40, 'Susanna', 'Fisher', 'jannie41@hotmail.com', '636-708-6702', '219 Anjali Camp Apt. 375\nBergstromborough, IL 71080', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(41, 'Quentin', 'Nicolas', 'tpfannerstill@gmail.com', '+1 (623) 655-7117', '244 Tillman Hills Apt. 399\nNorth Nina, AL 29314-8913', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(42, 'Gladys', 'Swift', 'hackett.ibrahim@keebler.com', '+16292703923', '44837 Jerde Drive Apt. 204\nUllrichside, DC 40960-3860', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(43, 'Harold', 'Ryan', 'areichert@thompson.com', '+1-520-220-2154', '8369 Raymond Land Apt. 307\nJohnstonfort, NC 95801-1856', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(44, 'Ana', 'Schmitt', 'ethan.boyer@gmail.com', '(972) 416-3046', '43336 Hayden Isle Apt. 166\nZanemouth, NC 11073', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(45, 'Name', 'Gislason', 'myra.bode@runolfsson.com', '+1-414-320-1200', '315 Edyth Shores Suite 659\nAmericahaven, ND 95849-0435', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(46, 'Joanny', 'Herman', 'yundt.glenna@yahoo.com', '+1.620.424.6747', '1005 Eugene Rest Suite 939\nNorth Fiona, WY 08588-9287', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(47, 'Verla', 'Rice', 'istehr@kovacek.com', '+1-320-564-1642', '819 Lucie Lake Apt. 485\nErnsershire, AZ 31730-7497', '2023-06-09 18:48:17', '2023-06-09 18:48:17'),
(48, 'Baron', 'Stracke', 'iborer@gmail.com', '+1 (682) 215-0230', '2974 Louie Centers Suite 009\nStacybury, VT 43251', '2023-06-09 18:48:18', '2023-06-09 18:48:18'),
(49, 'Caroline', 'Turner', 'shaun.goldner@kub.com', '+1 (269) 818-1012', '7390 Deanna Key\nVinceport, VT 60429-1114', '2023-06-09 18:48:18', '2023-06-09 18:48:18'),
(50, 'Dominique', 'Fisher', 'lrussel@schneider.com', '1-218-801-4141', '257 Dietrich Manors\nKrisberg, NJ 69950-7998', '2023-06-09 18:48:18', '2023-06-09 18:48:18'),
(51, 'Visitor 1', 'LELE', 'test@gmail.com', '652686163', 'Malingo', '2023-06-09 23:45:12', '2023-06-09 23:45:12'),
(52, 'hello', 'lele', 'visitor@gmail.com', '652686163', 'bongo', '2023-06-10 00:45:02', '2023-06-10 00:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `departureDate` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `purpose`, `date`, `departureDate`, `user_id`, `visitor_id`, `created_at`, `updated_at`) VALUES
(2, 'Repudiandae laboriosam qui dolor ut. Modi odit non quo est ea itaque. Magnam rerum officia eaque laborum et voluptatum impedit.', '1986-01-15 05:00:00', '1979-07-30', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(4, 'Quos quia molestias ullam tempora voluptas ratione. Est et sunt sit. Quam ut voluptas quis et doloribus tempora. Atque debitis hic sequi similique error voluptates laudantium.', '1981-05-12 04:00:00', '1996-06-27', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(8, 'Aut suscipit expedita recusandae consectetur ut et officiis. Velit ut incidunt sit quidem error rerum est. Dolores animi harum rerum temporibus animi nisi expedita. Recusandae iste pariatur et ut autem.', '1991-08-06 04:00:00', '2009-04-26', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(9, 'Facere cupiditate excepturi quia. Commodi mollitia eos labore eum ab itaque necessitatibus. Voluptatibus dolor earum ex tempora maxime omnis vitae error. Distinctio repellendus commodi unde eum doloremque doloremque aliquid.', '2005-03-07 05:00:00', '1974-03-16', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(10, 'Et eius voluptatem fugit veniam quibusdam eveniet aperiam. Inventore est iure dolorem quasi libero repudiandae ea. Ut id et accusantium pariatur optio dolor eius. Nobis sunt voluptas vitae et fuga assumenda.', '2019-12-28 05:00:00', '1988-07-16', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(11, 'Repellat labore ex ut officia. Cumque aut eos accusantium repellendus et magnam. Necessitatibus eos porro consequuntur voluptas. Quo quis numquam corrupti nemo distinctio qui. Accusantium minima cum minus deserunt sit.', '1997-12-01 05:00:00', '1986-07-02', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(12, 'Reprehenderit saepe dolores atque voluptates ducimus. Placeat nesciunt ut dolores non molestias deleniti. Voluptatem tempora sit deserunt nemo est fuga ut.', '1983-01-30 05:00:00', '2015-09-14', 1, 1, '2023-06-09 18:48:12', '2023-06-09 18:48:12'),
(13, 'Ut voluptate quia illo perferendis accusantium perferendis. Iure repellat consequatur impedit tempore ut ducimus. Dolor sunt dolor facilis nihil ex et.', '2000-08-11 04:00:00', '1985-08-06', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(14, 'Quibusdam optio laudantium sunt iste enim vel. Iure voluptatem quo tempore aut aut commodi quo. Sed nam maxime qui suscipit. Iure a aut voluptatem illo maiores est porro.', '2016-06-14 04:00:00', '2015-11-08', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(15, 'Officia quia quasi rerum expedita minima. Deleniti autem voluptatem natus et incidunt. In autem numquam consequatur sit quia omnis.', '2000-08-08 04:00:00', '2000-05-29', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(16, 'Provident enim explicabo magni quasi delectus error nihil non. Quia omnis autem dolor dolores soluta. Eveniet mollitia consequatur quo architecto fuga. Voluptatem veniam aliquid aliquid fugiat ex et.', '2016-04-29 04:00:00', '1976-04-02', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(17, 'Numquam a reprehenderit laboriosam facere qui veniam animi. Explicabo eaque et et nesciunt occaecati ut. Qui eligendi eligendi dolorem possimus consequatur nihil porro laborum. Quia impedit eos quaerat voluptas minima velit velit.', '1992-07-27 04:00:00', '1992-12-04', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(18, 'Amet rerum qui omnis magnam quia iure. Non et in corrupti non. Autem eum odio soluta cumque eos.', '1981-08-26 04:00:00', '1994-04-11', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(19, 'Odit modi error ducimus dolorem dolores dolorem consectetur. Omnis sit id quas aperiam quia facere. Sit rerum excepturi illum et. Rerum voluptas est voluptas dicta ut alias.', '1998-11-06 05:00:00', '1979-06-15', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(20, 'Omnis voluptatibus ut architecto est. Omnis animi qui non aut dolor.', '1974-03-12 04:00:00', '1994-11-24', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(21, 'Aperiam sequi id libero ut. Est recusandae doloremque recusandae rem ipsam. Nulla maiores qui placeat nihil. Excepturi maiores veniam veniam aut qui impedit.', '2004-03-13 05:00:00', '2016-05-09', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(22, 'Illo mollitia corporis dolore tempora id. Ea non et illo dolor quaerat. Voluptas voluptates fugit aperiam ut. Iusto quod sit eveniet quibusdam aperiam velit ea. Officiis est facilis et et aut.', '1981-03-23 05:00:00', '1981-03-09', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(23, 'Autem ipsa perspiciatis aut voluptate. Libero aut et culpa qui consectetur optio. Corporis ut rerum consequatur porro qui. Quia rerum porro provident alias qui. Veritatis aperiam deserunt voluptatem est nisi eius eum.', '1984-08-09 04:00:00', '2005-05-27', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(24, 'Voluptatem mollitia porro nobis libero. Veniam asperiores quia non vel eaque. Voluptatem et culpa incidunt magni quisquam.', '2013-08-25 04:00:00', '1979-05-05', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(25, 'Sed animi ex corporis quis quia. Labore qui et dignissimos inventore et. Rerum non cum ratione blanditiis minima pariatur officia. Blanditiis qui adipisci quisquam quas nemo autem.', '1995-03-16 05:00:00', '2011-05-12', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(26, 'Quis voluptate velit cupiditate itaque. Impedit quia consequatur eaque at ducimus omnis non. Quidem consequuntur aut dolorem placeat tempore omnis nulla ipsum.', '1995-11-07 05:00:00', '2017-07-03', 1, 1, '2023-06-09 18:48:13', '2023-06-09 18:48:13'),
(27, 'Nobis cupiditate vel cupiditate totam. Dolor sit vitae molestiae fugiat sed. Culpa quia ut doloremque temporibus.', '2000-11-09 05:00:00', '1986-02-09', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(28, 'Dolore maxime deleniti aliquam omnis quisquam amet vel. Fugiat earum sed iure.', '2010-04-16 04:00:00', '2007-12-17', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(29, 'Sed vero vel expedita ut est et non. Adipisci qui culpa dolore laborum. Dolores est distinctio repellendus quisquam ducimus fuga.', '2020-04-03 04:00:00', '2000-06-26', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(30, 'Quaerat sit delectus eius culpa aperiam earum. Ab ut rerum deleniti quae. In architecto expedita sit aut ut qui. Enim illo nisi ullam aut modi quia dolorum. Nihil ea mollitia nesciunt.', '2009-08-30 04:00:00', '2004-03-31', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(31, 'Et unde culpa maxime numquam ut ut. Molestias ipsam corporis minima saepe aut et totam. Soluta reprehenderit eos modi odit dolores. Placeat delectus enim quia qui repudiandae et.', '1990-04-09 04:00:00', '2019-02-12', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(33, 'Officia amet quis ut cum mollitia dignissimos fugiat. Sunt repellendus ex aliquam qui ducimus. Et quis dolorem aliquam nostrum minus natus aut.', '1983-02-22 05:00:00', '2014-08-31', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(34, 'Doloribus incidunt eum sint quos. Blanditiis a placeat doloremque distinctio eaque. Facere dolorum error esse sint. Rerum quod quo at voluptas vel quae.', '1979-05-02 04:00:00', '1971-09-14', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(35, 'Consequuntur dicta sunt et expedita nostrum. Nostrum velit sequi reiciendis amet omnis vero voluptatum quidem. Aut corporis sunt nesciunt.', '2013-08-30 04:00:00', '1987-07-14', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(36, 'Repellendus odit quis quia velit enim qui. Sit molestiae quia reiciendis reprehenderit aut culpa alias odit. Et dolor atque repudiandae quos eos eos quis.', '1970-05-21 04:00:00', '2017-07-04', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(37, 'Eum quia qui vero non voluptas. Nihil temporibus eligendi pariatur nobis veritatis et. Qui omnis eos nam fugit.', '1991-05-16 04:00:00', '1976-02-06', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(38, 'Ut unde veniam aut doloremque autem delectus. Dolores incidunt amet adipisci. Deleniti nihil numquam eveniet in. Quibusdam molestias est non praesentium saepe quos error.', '2020-08-15 04:00:00', '2020-11-23', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(39, 'Atque non officia dolorum tenetur. Expedita eligendi et ut voluptas velit quaerat. Quidem alias quo eveniet optio aut.', '1974-07-23 04:00:00', '1996-08-15', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(40, 'Eligendi sed temporibus voluptates hic excepturi dolorem numquam. Suscipit fugiat iste quos magni et. Deserunt ratione ipsum est placeat molestias assumenda. Ut velit dolorem consequatur aut veniam officia modi sit.', '2006-05-09 04:00:00', '1989-06-22', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(41, 'Libero qui praesentium rerum vel quis tempora. Ab quidem est praesentium iure qui voluptas. Hic architecto quibusdam corrupti porro delectus maxime. Ullam vero ea ut eaque dolores. Tenetur nihil dolores tempora et.', '1981-06-09 04:00:00', '2003-06-29', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(42, 'Nemo sit maxime sit rerum minima qui eos. Aut odio doloribus deleniti qui et cumque. At sunt est tempora aut nisi libero animi.', '2007-01-24 05:00:00', '2017-09-11', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(43, 'Laborum voluptas inventore et beatae sit non. Amet voluptate quam dicta et aut. Impedit libero in dolore omnis vel. Ut fugit ut sit ea corrupti quia.', '1993-03-19 05:00:00', '1979-08-05', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(44, 'Tempore qui sunt tempore similique autem ut. Ratione quaerat autem modi qui. Ex officia voluptatum magni iure libero. Totam tenetur temporibus iure aspernatur assumenda sit et amet.', '1997-06-04 04:00:00', '2010-01-16', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(45, 'Nam assumenda ea omnis quod facere. Rerum aut ducimus non. Non non est unde est iste ut sed. Recusandae ipsum deserunt ut ullam nihil.', '2018-09-30 04:00:00', '1989-06-17', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(46, 'Eaque sunt sint quasi sunt similique quia. Recusandae et modi fugit pariatur iste. Nihil reiciendis consequatur quas et sed deserunt inventore.', '2009-04-29 04:00:00', '2022-11-19', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(47, 'Eum quo qui nulla libero excepturi distinctio aut. Assumenda voluptas sunt ut et autem repellendus. Asperiores id iusto veritatis culpa ut delectus suscipit at. Aspernatur quibusdam dolorem possimus veritatis assumenda dolorum accusamus.', '2019-09-18 04:00:00', '2003-06-09', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(48, 'Dolores voluptatem non quia et qui ea. Cumque corporis dolor consequatur voluptatem eveniet id culpa. Qui quos veniam et perferendis dolorum voluptatibus. Quas pariatur eos quia. Est temporibus voluptate culpa aut corrupti.', '1973-03-13 05:00:00', '2012-04-04', 1, 1, '2023-06-09 18:48:14', '2023-06-09 18:48:14'),
(49, 'Ea ipsum voluptas nihil maxime modi ut. Facilis placeat repellendus esse aut accusamus in quia. Optio qui vel quia eos at beatae rerum.', '1994-04-05 04:00:00', '1993-09-30', 1, 1, '2023-06-09 18:48:15', '2023-06-09 18:48:15');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
