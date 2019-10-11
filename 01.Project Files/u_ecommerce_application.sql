-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2018 at 09:25 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u_ecommerce_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Quis beatae.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(2, 'Quis est.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(3, 'Officiis est.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(4, 'Voluptatem.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(5, 'Neque.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(6, 'Soluta.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(7, 'Aut eos.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(8, 'Aut.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(9, 'Molestias.', '2018-04-18 09:35:08', '2018-04-18 09:35:08'),
(10, 'Consectetur. al', '2018-04-18 09:35:08', '2018-04-18 09:49:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_15_100750_create_products_table', 1),
(4, '2018_04_18_020944_create_categories_table', 1);

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_cat_id_foreign` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `cat_id`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ut dolorum vero consequatur.', 9, 1306, 'uploads/products/book.png', 'Et corporis laboriosam excepturi quisquam et. Illo itaque omnis at. Iste et pariatur doloribus nulla. Quas fugit non consectetur non ipsam.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(2, 'Aut optio distinctio accusamus.', 6, 1724, 'uploads/products/book.png', 'Similique nesciunt et sint fuga ut optio molestias non. Impedit sunt placeat voluptas. Ipsam fugit maiores enim quaerat enim. Quis consectetur iure qui porro consectetur reprehenderit dolorum inventore. Sint dicta aperiam nulla. Maxime quidem repudiandae est expedita ipsam. Ullam dolor repellendus blanditiis libero voluptas veniam explicabo.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(3, 'Incidunt est aut quia.', 5, 355, 'uploads/products/book.png', 'Nisi explicabo quos omnis consequatur qui corrupti minima qui. Molestias omnis aut ea vel. Blanditiis eum facere facere dolorem ex debitis accusantium. Nisi voluptatem magnam possimus sit architecto aperiam.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(4, 'Et illo sed quidem.', 1, 1899, 'uploads/products/book.png', 'Qui facere ab dolor animi rerum in vel similique. Iste ullam qui assumenda eum quod perferendis. Libero molestias blanditiis doloribus eaque. Quo consequatur rem veritatis enim quia fugit. Dolores sed ipsa molestiae. Cum nemo non sit molestiae adipisci.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(5, 'Ut aut aut sunt.', 3, 325, 'uploads/products/book.png', 'Vel autem magnam nesciunt cupiditate. Eligendi cupiditate facere dolorum occaecati et ut consequatur molestiae. Doloribus similique dolor nam eius ut. Sed quidem dolor corporis vitae est saepe eaque ea. Eos harum molestiae est qui quia et fugit.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(6, 'Temporibus eius laborum.', 3, 1202, 'uploads/products/book.png', 'Voluptatum temporibus quisquam exercitationem adipisci. Quidem eius aut doloremque sunt temporibus vel. Et commodi in cum et. Autem quis aperiam aspernatur ab ut. Repellendus nam ipsam dolorum eveniet. Autem commodi quisquam inventore consequuntur. Et omnis aliquam asperiores qui.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(7, 'Error similique amet inventore.', 3, 161, 'uploads/products/book.png', 'Dolore quasi deleniti quasi omnis. Consequatur dolorem assumenda nemo et esse. Aspernatur velit perferendis et vel voluptates eum est. Dolores qui aliquam dolor aspernatur odio voluptates voluptas. Mollitia dolores quis rerum impedit iure est ipsa. Qui quia est voluptatem quaerat. Consequatur voluptatem corporis excepturi porro non quia. Et adipisci magni enim corporis sint debitis est molestiae.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(8, 'Tenetur assumenda vero.', 6, 1445, 'uploads/products/book.png', 'Ipsa ullam enim sed atque adipisci quod a. Quod beatae cum fugit aliquam exercitationem est magnam ad. Eum assumenda veniam exercitationem in laborum dolore officia. Aperiam ipsam iusto sunt praesentium nihil dolore quo. Eos hic aut dolorum. Quis non qui voluptas amet.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(9, 'Dolores sequi voluptatibus.', 3, 579, 'uploads/products/book.png', 'Tempore corrupti eos sit non ut est et. In ea amet rem non neque doloribus sunt quidem. Magni officiis itaque inventore nihil corrupti expedita cumque. Corporis officia corrupti placeat molestiae et nobis beatae nesciunt. Alias est itaque aut modi omnis illo occaecati. Odit consequuntur qui provident odit quas et exercitationem doloribus. Hic enim aut sit eius.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(10, 'Assumenda molestiae ea fugit.', 3, 304, 'uploads/products/book.png', 'Repellendus reprehenderit officia ab labore. Aliquid cumque dignissimos aut voluptatem ipsam et. Fugiat eum neque sequi consequuntur mollitia ab molestiae. Aperiam adipisci odit adipisci ducimus. Exercitationem voluptatibus aut sint exercitationem. Aut aut ullam provident pariatur. Dolore et magni et eum quo.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(11, 'Dolore vel autem.', 1, 2000, 'uploads/products/book.png', 'Expedita a quibusdam voluptatem. Magni suscipit porro earum cumque ex. Est error rerum laboriosam iure a doloribus velit ut. Corporis libero magni laborum velit magnam. Perferendis repudiandae rerum et numquam.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(12, 'Qui dolorem totam.', 1, 266, 'uploads/products/book.png', 'Eius dolorem voluptates animi a ad pariatur vitae. Provident maxime quis sed praesentium. Tenetur repellendus vel aspernatur non doloribus dignissimos sint. Molestiae et hic error et sunt.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(13, 'Corporis quae dignissimos laborum.', 1, 641, 'uploads/products/book.png', 'Natus libero est voluptatem voluptate in consequatur. Beatae incidunt quos distinctio aut quae consectetur dolores. Cum totam enim in dolores quas. Porro ipsa quia tempora.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(14, 'Vel doloremque consequatur.', 9, 1846, 'uploads/products/book.png', 'Est voluptatum animi in aut dolores. Quidem vero enim sit ipsum repellendus. Laudantium veniam quia ab ducimus. Sit atque eos et voluptates qui velit. Voluptatem corporis temporibus earum rem distinctio minima.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(15, 'Quidem earum ad eveniet.', 7, 500, 'uploads/products/book.png', 'Et quo expedita adipisci architecto voluptatum. Fugiat officiis ea sint at reprehenderit dicta quas. Qui accusamus vero eaque quae aut. Voluptatum nesciunt dolorem rerum dolore.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(16, 'Harum perferendis ut fugit.', 3, 652, 'uploads/products/book.png', 'Perferendis exercitationem explicabo voluptas temporibus aperiam velit eum. Ab eveniet dolor nihil voluptatem ut. Natus aut pariatur aut dicta at nihil reiciendis. Sunt hic quia dolorem molestiae aut voluptas rerum. Quis repellendus incidunt quae nihil. Accusantium sint dicta dolorem repellat ducimus.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(17, 'Quae accusantium voluptas corrupti.', 6, 994, 'uploads/products/book.png', 'Voluptas nemo dolores ut qui aperiam possimus. Consequatur fugit consequuntur aut vitae sint quam. Quis voluptatibus id id dolorem dolore. Et reprehenderit ipsum praesentium.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(18, 'Est perspiciatis dolorem voluptas quia.', 2, 1559, 'uploads/products/book.png', 'Quo natus aliquid est molestiae minus enim sapiente. Commodi omnis sed sequi et est dolores at accusamus. Ut accusamus voluptas in accusantium iusto consequatur. Ratione hic error nisi est quis. Voluptatem omnis reiciendis excepturi a alias ea magnam.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(19, 'Sed impedit sint.', 3, 1918, 'uploads/products/book.png', 'Laborum consequatur sint necessitatibus adipisci et aspernatur. Nulla nihil aliquam quisquam velit. Et amet consequatur repellendus aspernatur. Omnis voluptate et dolorem assumenda ab omnis et inventore. In dolor magnam dicta unde inventore eos asperiores.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(20, 'Explicabo minus voluptas sit.', 1, 1603, 'uploads/products/book.png', 'Dolorum nihil earum similique dolore. Non eum quia inventore consectetur vel. Possimus dolorem nemo et est accusantium quisquam. Iure aut odio recusandae dolor at sapiente. Eum impedit sint nostrum cumque. Dolorum aspernatur cum qui vel similique animi deleniti sed.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(21, 'Dolorum voluptatem.', 4, 1613, 'uploads/products/book.png', 'Numquam hic magni vel quae perspiciatis maxime ipsa. At excepturi aliquam quaerat est corporis. Et aliquam facilis aut ab. Quis aut et aut sit aliquam rerum perferendis. Sed nulla id dolor earum quos sunt commodi. Recusandae voluptatum sequi accusamus blanditiis molestiae qui sequi labore. Eaque sit et voluptate cumque iusto.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(22, 'Consequatur sapiente ut dignissimos.', 9, 163, 'uploads/products/book.png', 'Laudantium sit nulla sint totam sapiente. Laboriosam laudantium nulla tempore molestiae atque rerum. Aliquam rerum corporis qui sunt dolores tenetur quisquam. Officia iusto eligendi quo eos et dolore. Laboriosam aut harum excepturi et.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(23, 'Quae recusandae.', 1, 512, 'uploads/products/book.png', 'Dolor dolores tempora nihil molestias eos ipsam. Est sed dolorum quis sapiente. Rerum voluptas neque consequatur eveniet necessitatibus tenetur. Autem omnis rerum aspernatur est quisquam quasi.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(24, 'Magni ut distinctio earum.', 2, 1278, 'uploads/products/book.png', 'Nihil asperiores quia facilis saepe id qui nam. Est ducimus ut voluptatem explicabo assumenda deleniti. Earum qui expedita quae ea ab est cupiditate. Consequatur inventore nulla velit et. Cumque consequuntur ab consectetur eius ratione doloremque voluptatem. Vel occaecati vero saepe nihil nulla voluptas.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(25, 'Quidem quis iure qui.', 4, 1679, 'uploads/products/book.png', 'Veniam sint molestiae eos autem ut. Tempora voluptas aut explicabo provident quisquam. Atque expedita accusamus ea quas quia. Omnis sint quibusdam error molestiae autem. Excepturi doloremque placeat recusandae sint qui laboriosam explicabo.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(26, 'Numquam necessitatibus repellendus recusandae.', 6, 126, 'uploads/products/book.png', 'Quia voluptatum odit dolor eius expedita est. Repellendus voluptatum non commodi. Rerum suscipit voluptate blanditiis earum. A temporibus sit similique et necessitatibus pariatur.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(27, 'Quaerat velit unde perferendis.', 5, 110, 'uploads/products/book.png', 'Numquam ea necessitatibus voluptatem reiciendis nam. Eaque quae facere vero facilis quas nulla voluptatibus. Magnam incidunt nihil reiciendis veritatis. Quia cupiditate asperiores consequatur ut rerum. Aliquid omnis occaecati natus ut. Reiciendis sed sapiente quis ipsa aut. Blanditiis repudiandae et ut voluptatibus nihil ad totam.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(28, 'Sint est qui.', 7, 1708, 'uploads/products/book.png', 'Sit non dolores vel voluptas et beatae praesentium. Vitae quae veritatis accusantium dolores. Laborum consequuntur asperiores et in doloremque. Nobis mollitia eos a aut id accusantium. Et voluptatem temporibus est impedit quia reprehenderit eum. Aut pariatur consequuntur sit esse sed exercitationem et itaque.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(29, 'Dolorem dolorem sed saepe.', 1, 1036, 'uploads/products/book.png', 'Placeat et distinctio sit non sed voluptatem. Fugiat modi quia sed et non tenetur. Sed veritatis quo vel sed. Magni recusandae aut nesciunt perspiciatis beatae. Dicta molestiae consectetur unde voluptatem dicta velit explicabo. Aut sint vitae voluptatem deleniti.', '2018-04-18 09:33:05', '2018-04-18 09:33:05'),
(30, 'Sit voluptates dolores.', 3, 1777, 'uploads/products/book.png', 'Dicta quia et aut saepe. Nostrum nihil recusandae quia. Aliquid placeat quo culpa recusandae est a. Libero commodi esse cupiditate. Eos distinctio nostrum eos ut. Inventore tenetur reiciendis tenetur deserunt.', '2018-04-18 09:33:05', '2018-04-18 09:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'ahmed@gmail.com', '$2y$10$mHKXgkI1A5HFqvmmQhCfWeOwHT6VBHFKa35iNOAKeFSsiHd6wLMmK', NULL, '2018-04-18 09:44:57', '2018-04-18 09:44:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
