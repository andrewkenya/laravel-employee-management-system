-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2018 at 06:53 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emps`
--

-- --------------------------------------------------------

--
-- Table structure for table `emps`
--

CREATE TABLE `emps` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emps`
--

INSERT INTO `emps` (`id`, `name`, `surname`, `age`, `salary`, `position`, `Address`, `Hired_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Patience Bahringer', 'Prof. Jeanie Corkery PhD', 29590, 640, 'Prof. Alexanne Zboncak', '66079 Myra Court Apt. 227\nMalikaborough, MI 09659', '1981-04-09', 41, '2018-06-05 22:52:47', '2018-06-05 22:52:47'),
(2, 'Hobart Watsica', 'Kiel Wuckert DDS', 3599955, 9876, 'Isabella Schiller', '868 Dillan Highway\nTurnerbury, SD 51184-3470', '2001-01-29', 31, '2018-06-05 22:52:47', '2018-06-05 22:52:47'),
(3, 'Prof. Robert Bergnaum Sr.', 'Dr. Jazlyn Spinka III', 373, 670307031, 'Jasmin Ferry', '709 Romaine Coves Apt. 658\nSouth Euniceville, GA 41796', '2013-02-22', 14, '2018-06-05 22:52:47', '2018-06-05 22:52:47'),
(4, 'Dr. Constantin Strosin IV', 'Alize Sanford', 475, 344474380, 'Reese Price', '896 Ewald Summit\nWatsicaside, NE 11327', '2008-11-30', 35, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(5, 'Dr. Devon Okuneva DDS', 'Sabina Wisozk', 656, 971, 'Prof. Vaughn Schimmel', '22045 Bosco Heights\nEast Andy, MT 94582-0449', '1981-11-14', 70, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(6, 'Dale Quigley', 'Anya O\'Kon', 77147, 25, 'Otho Hammes', '6853 Ari Turnpike Suite 794\nNew Bryana, FL 10778', '1980-01-15', 82, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(7, 'Prof. Roxanne McKenzie IV', 'Makenna Labadie', 8876109, 49150, 'Hunter Nicolas', '68394 Ryan Keys\nNorth Isabellabury, IA 15461-5822', '1973-10-01', 10, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(8, 'Dr. Tyreek Hamill I', 'Miss Helena Steuber IV', 422594836, 58, 'Dr. Robb Wilkinson I', '8212 Otto Well Apt. 351\nLeoneland, AK 04296-2281', '1977-08-28', 37, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(9, 'Weldon Kemmer IV', 'Rahsaan Koelpin IV', 997238, 300212828, 'Dr. Marcelino Fay', '368 Alia Light Suite 702\nCarmellaberg, VA 98905-6939', '1972-06-09', 33, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(10, 'Dr. Cornell Schuppe DVM', 'Jailyn Armstrong V', 7, 75, 'Dr. Nyah Greenholt', '8591 Patricia Lock Suite 061\nBillton, TX 25092-5259', '2008-08-21', 51, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(11, 'Brad Gusikowski', 'Zella Bechtelar Sr.', 6, 5, 'Mr. Kory Bahringer PhD', '5054 Myrtis Gateway\nSouth Chasityborough, AZ 48494', '2012-02-24', 35, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(12, 'Dr. Russ Ernser', 'Stanley Marvin', 706, 45431, 'Laury Stehr', '9554 Fern Street Apt. 893\nJeffreyside, PA 56464-4100', '2004-08-15', 77, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(13, 'Ernestina Cartwright PhD', 'Dr. Brendon Becker Jr.', 20325, 61686, 'Cordelia Pfeffer', '1887 Nienow Junctions Apt. 276\nWest Nikolasburgh, IL 36581', '2003-11-25', 98, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(14, 'Cynthia Stiedemann', 'Prof. Blanche Hoppe PhD', 5, 44, 'Marley McLaughlin Sr.', '19660 Christiansen Road\nPort Joany, NH 03632-8113', '1991-12-30', 42, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(15, 'Mallory Lind', 'Keon Treutel', 5, 5, 'Jefferey Cummerata III', '864 Hettinger Common\nNew Jadynstad, MA 19480-7909', '2002-06-09', 38, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(16, 'Dr. Dillan Koss', 'Ms. Felicita Homenick II', 62, 7165775, 'Stone McDermott', '686 Pacocha Fall Apt. 861\nNorth Tomasaland, NJ 25799', '2014-06-27', 24, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(17, 'Hope Torphy', 'Noemie Herzog', 46389965, 9178, 'Prof. Baron Medhurst', '6657 Terrance Creek Apt. 115\nMurphyport, NM 98571', '1971-02-14', 95, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(18, 'Bud Abshire', 'Francesca Heathcote', 100194, 55, 'Elise Rath', '8530 Earline Groves Apt. 893\nLake Keven, WI 90090-9499', '1997-01-30', 87, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(19, 'Miss Eryn Reynolds Jr.', 'Molly Boehm', 6, 9, 'Manuel Williamson', '64880 Bins Loop Suite 659\nGeovanymouth, MA 18989', '1988-02-14', 27, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(20, 'Lenore Grady', 'Zula Wilderman', 68032870, 1647, 'Dr. Monica Rempel', '7358 Schimmel Grove Suite 891\nEast Rebeccamouth, PA 93838', '2015-02-26', 46, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(21, 'Dr. Bernie Zieme MD', 'Teresa Keebler IV', 40, 690463097, 'Katlyn Kris', '5075 Derek Forges\nPort Kayaburgh, VA 11692', '1975-09-23', 31, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(22, 'Reese Gulgowski', 'Prof. Lourdes Veum', 362250, 8401793, 'Devante Upton', '39504 Wisoky Mill Apt. 726\nLake Stanford, NJ 89457', '1993-05-31', 69, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(23, 'Dr. Lincoln Greenfelder V', 'Zackery Schumm', 388, 4, 'Ms. Zetta Boehm Jr.', '3807 Karina Trail Suite 944\nBotsfordview, OR 91686-6293', '2017-05-13', 48, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(24, 'Cierra Bartoletti', 'Warren Bailey', 5, 486, 'Maurice Hodkiewicz PhD', '3588 Kattie Park Apt. 503\nLake Christopherport, ID 91044-3215', '2001-07-18', 76, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(25, 'Joanie Metz', 'Elza Schamberger', 8247518, 57613701, 'Baby Armstrong', '3543 Gislason Creek Suite 555\nSouth Meaghanport, MT 77807', '1988-11-18', 53, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(26, 'Domenick Oberbrunner', 'Mr. Jettie Murazik MD', 47338, 33904933, 'Kaley Douglas', '6219 Shanel Falls Apt. 358\nKundeton, AL 61784', '1972-02-15', 75, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(27, 'Carley Mraz', 'Tess Botsford', 4219, 6, 'Mr. Vaughn Turcotte I', '7956 Fredy Mission\nFritschside, CA 24185-4632', '2001-04-06', 12, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(28, 'Prof. Ladarius Wisoky DDS', 'Prof. Nasir Wisozk', 436325, 360236, 'Mr. Everardo Kilback MD', '480 Conn Stravenue\nNorth Kaia, DC 81922-2289', '2010-10-09', 22, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(29, 'Tremayne Carter', 'Einar Veum PhD', 6, 735229879, 'Prof. Petra Reilly', '53880 Michelle Row\nWest Demariofort, AZ 37094', '1988-08-23', 17, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(30, 'Dr. Abraham Lemke', 'Prof. Alexandria Hirthe DDS', 2748, 418, 'Bria Kautzer IV', '1249 Westley Mall\nNew Katharina, IL 20351', '2008-12-30', 58, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(31, 'Maryse Kunze', 'Dr. Vena Heller DVM', 14, 5, 'Ms. Millie Prohaska V', '95479 Trent Curve Apt. 729\nSimside, OR 87789', '1992-02-01', 7, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(32, 'Fernando Pacocha', 'Odell Koelpin', 287, 2010786, 'Alf Sporer', '117 Kenton Avenue\nSouth Erlingmouth, NM 27313-2055', '1986-03-09', 48, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(33, 'Prof. Dylan Reynolds', 'Shania Lubowitz', 5528243, 3, 'Mrs. Antonette Hammes', '2709 Mariam Junction\nLindgrenmouth, IL 44598-6318', '2013-05-04', 94, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(34, 'Lauretta Emard', 'Melyna Schuster', 8951799, 85, 'Keely Hahn', '605 Jonatan View\nBruenbury, NJ 22138', '2003-05-17', 16, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(35, 'Dr. Anais Steuber', 'Elouise Reichert', 9, 27040, 'Amiya Kuvalis Sr.', '96208 Keebler Harbors\nSchroederport, WI 20910', '1983-09-04', 63, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(36, 'Colby Kertzmann MD', 'Madison O\'Hara', 94, 49967649, 'Jazmin Zulauf', '238 Myrl Corner\nGeorgianamouth, NH 63161', '1977-06-20', 7, '2018-06-05 22:52:48', '2018-06-05 22:52:48'),
(37, 'Ivah Gleason', 'Jamal Gaylord DVM', 450143990, 85582757, 'Damion Douglas', '4962 Armstrong Causeway Apt. 807\nHeathcotefort, ID 93401', '1993-05-23', 46, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(38, 'Brenden Heaney', 'Olen O\'Hara V', 225, 9247463, 'Evalyn Mohr', '6264 Nicolas Alley\nJuniorberg, NY 17467-3667', '1991-02-27', 23, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(39, 'Dr. Nora Okuneva', 'Lukas Schumm', 6, 7675, 'Mr. Rashad Hammes Sr.', '320 Ledner Circle\nLemkefurt, CO 30018', '2010-04-09', 69, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(40, 'Watson Denesik', 'Dr. Warren Stracke', 1412167, 4, 'Dr. Santiago Wiegand PhD', '5260 Dylan Valley Suite 226\nShanahanbury, AZ 96283', '2000-03-14', 50, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(41, 'Marquise Lueilwitz II', 'Victor Abernathy', 29061, 4794, 'Cecelia Bahringer', '6235 Crona Landing Suite 732\nEast Danemouth, OH 47526-0509', '1991-11-25', 24, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(42, 'Prof. Mercedes Swaniawski I', 'Dr. Lazaro Corwin DDS', 62768335, 452, 'Isai Harris', '424 Flatley Groves\nCliftontown, NJ 19047', '1996-11-15', 38, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(43, 'Lexus Schumm III', 'Prof. Nikko Schamberger', 7, 472880, 'Sterling Ryan', '5766 Lisa Bypass\nZackerytown, AZ 76280-4225', '1978-01-13', 62, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(44, 'Alexander Bashirian', 'Miss Raegan Mohr', 260497, 930526117, 'Mrs. Violet Halvorson', '36506 Casper Ridge Suite 050\nLake Rubye, ME 51297', '1989-01-23', 76, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(45, 'Judd Hyatt', 'Nels Schroeder', 46956, 5716282, 'Keyon Wiegand DDS', '62073 Wehner Trafficway Apt. 377\nWeberbury, MT 79832-6278', '2002-05-14', 63, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(46, 'Ms. Aida Marvin', 'Kirsten Kautzer', 86253295, 88, 'Wilfrid McGlynn', '808 Glenna Neck Suite 188\nDonnellyville, MD 09974', '1970-05-06', 13, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(47, 'Reyna Renner', 'Dr. Brenna Stracke II', 845444889, 6, 'August Koelpin', '197 Schuppe Parks\nNew Ephraimmouth, OK 50376', '1989-08-05', 63, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(48, 'Bernadette Gorczany', 'Alta Bosco', 86, 512, 'Rosalia Deckow', '4778 Alia Lights Suite 825\nCristalton, WA 97407-6138', '1977-02-10', 0, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(49, 'Rhoda Kuhlman', 'Laura Zulauf', 4, 307, 'Dr. Brennan Konopelski', '5712 Myron Mountain\nHermanchester, DE 20057', '2008-02-12', 92, '2018-06-05 22:52:49', '2018-06-05 22:52:49'),
(50, 'Jamison Ledner', 'Grayce Harber', 21678, 7, 'Mr. Mariano Rath', '9630 Ora Meadow Suite 220\nNew Vedaland, AR 04165', '1983-05-29', 94, '2018-06-05 22:52:49', '2018-06-05 22:52:49');

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
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2018_06_01_072229_create_emps_table', 1);

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
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emps`
--
ALTER TABLE `emps`
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
-- AUTO_INCREMENT for table `emps`
--
ALTER TABLE `emps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
