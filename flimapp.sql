-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 07:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flimapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flim_id` int(11) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `flim_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 26, 'Chonchol', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ', '2018-07-17 16:12:37', '2018-07-17 09:04:12'),
(2, 2, 26, 'Mahmud', 'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset', '2018-07-18 05:40:53', '2018-07-17 09:23:20'),
(3, 5, 1, 'Chonchol', 'but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', '2018-07-18 05:41:02', '2018-07-17 09:32:46'),
(4, 1, 1, 'Chonchol', 'ap into electronic typesetting, remaining essentially unchanged.', '2018-07-18 05:41:07', '2018-07-17 10:15:14'),
(5, 12, 2, 'abc', 'ap into electronic typesetting, remaining essentially unchanged.', '2018-07-18 05:41:34', '2018-07-17 22:52:17'),
(6, 12, 3, 'Chonchol', 'This is comment', '2018-07-17 23:36:07', '2018-07-17 23:36:07'),
(7, 12, 4, 'Kajol', 'HTML Tidy is a console application whose purpose is to fix invalid HTML, detect potential web accessibility errors', '2018-07-17 23:46:31', '2018-07-17 23:46:31'),
(8, 12, 5, 'Mahmud', 'HTML Tidy is a console application whose purpose is to fix invalid HTML, detect potential web accessibility errors', '2018-07-17 23:47:04', '2018-07-17 23:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `flims`
--

CREATE TABLE `flims` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `release_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL,
  `ticket_price` int(11) DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flims`
--

INSERT INTO `flims` (`id`, `name`, `description`, `release_date`, `rating`, `ticket_price`, `country`, `genre`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Aut dignissimos soluta vel.', 'Excepturi placeat et perferendis dignissimos libero tenetur tenetur. In aspernatur voluptates sequi pariatur veritatis repudiandae. Deserunt aut molestiae et architecto cum voluptas qui. Nihil enim consequatur fuga molestiae rerum dignissimos.', '2018-07-18 05:44:30', 3, 1, 'Armenia', 'consequatur', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(2, 'Laboriosam praesentium veritatis et quaerat.', 'Voluptatem ut autem vitae suscipit vel non cumque. Totam hic ducimus quos voluptatem veniam. Et sed quos et. Rerum porro cupiditate dicta laboriosam.', '2018-07-18 05:44:26', 2, 5, 'Cote d\'Ivoire', 'neque', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(3, 'Quam assumenda assumenda at consectetur est.', 'In eligendi beatae fugiat consequatur. Cumque nihil odit aut dignissimos omnis quam quos quibusdam. Ratione aliquid est dolore dolores dolores.', '2018-07-18 05:44:23', 4, 8, 'Costa Rica', 'quidem', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(4, 'Tenetur maxime alias deserunt commodi.', 'Maiores eos tempore et sit. Et quam consequatur et necessitatibus similique cum dolores. Sequi nisi molestias unde voluptate.', '2018-07-18 05:44:18', 5, 8, 'Palau', 'consectetur', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(5, 'Iste incidunt illum provident nobis.', 'Iure ut autem est laboriosam qui similique nulla. Quo sint reiciendis pariatur accusamus vero ipsum inventore. Corporis quia corrupti omnis mollitia. Aut est maxime quod quod maiores. Reprehenderit itaque fugit accusamus.', '2018-07-18 05:44:15', 1, 6, 'Syrian Arab Republic', 'et', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(6, 'Soluta dolor facilis dolor ut.', 'Corporis dicta suscipit magnam doloribus architecto. Delectus soluta eligendi repellendus tenetur illo eveniet esse. Est sunt unde commodi eos fugit nesciunt sit.', '2018-07-18 05:44:11', 3, 9, 'Chile', 'aliquam', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(7, 'Aut nesciunt et hic.', 'Aut nemo vero aperiam consequatur. Delectus natus voluptates dolorum quidem. Qui est iste unde omnis consequatur ullam.', '2018-07-18 05:44:07', 3, 9, 'Netherlands', 'unde', '14857.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(8, 'Omnis doloremque vel non asperiores.', 'Rerum ea harum ea. Porro suscipit et a rerum vitae quis sed sed. Doloremque deserunt et odio rerum.', '2018-07-18 05:43:50', 5, 1, 'Singapore', 'sequi', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(9, 'Est consequatur id.', 'Quas dolorem eveniet tenetur in. Accusamus et quisquam id quo excepturi eveniet. Atque dolorem perferendis ea optio consequatur. Sunt sed voluptate est explicabo.', '2018-07-18 05:43:46', 2, 4, 'Botswana', 'enim', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(11, 'Et et harum dolores consequatur.', 'Facilis sit aut eos quidem. Modi sint perspiciatis harum eum ex quos quia. Qui dolor rerum accusantium aliquid vel molestiae. Dignissimos nihil minus autem facilis. Illum et veniam id minus sunt sint.', '2018-07-18 05:43:42', 1, 2, 'Gabon', 'veniam', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(12, 'Eligendi sit blanditiis explicabo.', 'Repudiandae aut voluptatum nihil. Eius voluptatibus et quo. Quia natus deleniti autem et magni nemo. Ipsum et expedita incidunt magni.', '2018-07-18 05:43:38', 5, 0, 'Oman', 'suscipit', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(13, 'Repellendus est facilis iure et nisi.', 'Minus consequatur officiis sint incidunt dolorem consequatur similique quasi. Animi dolor consequatur quae. Ipsum quia maxime id et incidunt corporis. Nihil debitis fugiat autem libero.', '2018-07-18 05:43:35', 4, 9, 'Philippines', 'eos', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(14, 'Tempore non sint et.', 'Excepturi ea ipsa aliquid omnis quidem aut labore. Eaque accusantium minima voluptas inventore quos quisquam. Excepturi vitae eaque voluptatem eligendi.', '2018-07-18 05:43:32', 3, 5, 'Cambodia', 'in', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(15, 'Commodi quis omnis aspernatur dolorem consequuntur.', 'Voluptates voluptas ut error eius ducimus corporis. Voluptate aut et asperiores pariatur illo aut illum. Quasi ipsa laboriosam sequi cum enim aut. Ut veritatis quia et error ducimus.', '2018-07-18 05:43:27', 2, 1, 'Bosnia and Herzegovina', 'molestias', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(16, 'Omnis aperiam aperiam minus.', 'Dignissimos quas quisquam explicabo tempora dolor. Dolores quis perferendis quam enim et temporibus enim. Quidem ipsam et et id.', '2018-07-18 05:43:23', 1, 4, 'Liechtenstein', 'corporis', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(17, 'Tempora et non asperiores delectus molestiae.', 'Voluptatem et non soluta ut voluptates id consectetur aut. Est autem repellendus aut repellat. Ut et qui eveniet odit sint a.', '2018-07-18 05:43:20', 2, 0, 'Guyana', 'similique', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(18, 'Repudiandae unde et eum dolores.', 'Recusandae ipsum rem ipsum quas ea fugit. Sunt tempora aut suscipit. Officia distinctio consequatur repellendus dolores sunt et delectus. Saepe ipsum quasi ullam et.', '2018-07-18 05:43:13', 5, 4, 'Tajikistan', 'sunt', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(19, 'Sit qui laboriosam repellat expedita.', 'Eaque eius minima neque dolor quia rerum quis. Et ea sed quibusdam tenetur molestiae. Distinctio et voluptate maxime qui dolor sequi velit tempore. Fugit id quos optio sit magni eos. Est assumenda adipisci repudiandae animi.', '2018-07-18 05:43:08', 5, 2, 'Colombia', 'ipsam', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(20, 'Ut qui consequuntur nisi illo voluptatem.', 'Earum dolor est rerum enim. Temporibus enim autem esse dolores odit architecto dolorem. Minima et ut aspernatur et voluptatem. Ut dicta dolor dolores culpa et molestias quis.', '2018-07-18 05:43:04', 5, 6, 'Samoa', 'deleniti', '75196.png', '2018-07-16 03:40:51', '2018-07-16 03:40:51'),
(24, 'Shawshank Redemption', 'This is adventure movie.', '2018-07-18 05:43:00', 3, 15, 'Bangladesh', 'Adventure', '75196.png', '2018-07-17 02:57:47', '2018-07-17 02:57:47'),
(25, 'The Good the bad & the ugly', 'This is description', '2018-07-18 05:42:56', 5, 19, 'Bangladesh', 'Western', '75196.png', '2018-07-17 02:59:47', '2018-07-17 02:59:47'),
(26, 'The God Father', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!', '2018-07-17 10:59:35', 5, 20, 'Bangladesh', 'Western', '75196.png', '2018-07-17 03:06:00', '2018-07-17 03:06:00'),
(28, 'Khoj - The Search', 'Bangla Movie', '2018-07-27 18:00:00', 4, 10, 'Bangladesh', 'Adventure', '46933.png', '2018-07-17 11:25:12', '2018-07-17 11:25:12'),
(29, 'Monpura', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2018-07-18 18:00:00', 5, 12, 'Bangladesh', 'Adventure', '24027.png', '2018-07-17 11:26:09', '2018-07-17 11:26:09'),
(30, 'Troy Story', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2018-07-27 18:00:00', 3, 13, 'Bangladesh', 'Crime', '14857.png', '2018-07-17 11:27:11', '2018-07-17 11:27:11'),
(40, 'Chonchol', 'sd', '2018-07-05 18:00:00', 1, 1, 'Bangladesh', NULL, '25844.png', '2018-07-17 11:45:53', '2018-07-17 11:45:53');

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
(3, '2018_07_16_084644_create_flims_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'chonchol', 'chonchol57@gmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(2, 'Richard Boyle', 'grady.delpha@schmitt.info', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(3, 'Miss Josephine O\'Hara', 'metz.keegan@hotmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(4, 'Dillon Reichert', 'hpfannerstill@mosciski.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(5, 'Miguel Kertzmann', 'macey.moen@hotmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(6, 'Jaden Little', 'hbraun@yahoo.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(7, 'Halle Armstrong', 'runte.schuyler@hotmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(8, 'Maia Von III', 'melany.bergstrom@bergstrom.net', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(9, 'Danika Schoen', 'donald02@stiedemann.info', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(10, 'Althea Kuphal MD', 'consuelo.harris@hotmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(11, 'Dr. Emiliano Jerde PhD', 'oliver05@hotmail.com', '$2y$10$7NAYXiY4sAw7boTndMNQg.SQNcDlgYG7zS/8zRoSyhmlMe74bC8kq', NULL, '2018-07-16 03:40:52', '2018-07-16 03:40:52'),
(12, 'Anup', 'anup@gmail.com', '$2y$10$Hs3Qkij40JB8hJBmglB7h.Kw3xaR3O833F4aKvgPZa09DuU8tKv6a', 'mU0Gpefl3zvmqLHY12Ipa30KnPuISJkYpShyVfCyQXZcnksyxBZTgwQmgyAp', '2018-07-17 10:30:01', '2018-07-17 10:30:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flims`
--
ALTER TABLE `flims`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `flims`
--
ALTER TABLE `flims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
