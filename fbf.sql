-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 10:00 PM
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
-- Database: `fbf`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `commenter_name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `commenter_name`, `content`, `created_at`) VALUES
(1, 4, 'Yuan Miguel Tulay', 'Kalma pare', '2025-04-22 00:00:00'),
(2, 4, 'Yuan Miguel Tulay', 'Kalma pare', '2025-04-22 00:00:00'),
(3, 6, 'Shiella Mae Templonuevo', 'gif', '2025-04-23 00:00:00'),
(4, 6, 'Shiella Mae Templonuevo', 'gif', '2025-04-23 00:00:00'),
(5, 6, 'Sonmin Templo', 'Eh', '2025-04-23 00:00:00'),
(6, 6, 'Shiella Mae Templonuevo', 'gif', '2025-04-23 00:00:00'),
(7, 6, 'Shiella Mae Templonuevo', 'gif', '2025-04-23 00:00:00'),
(8, 6, 'Sonmin Templo', 'Eh', '2025-04-23 00:00:00'),
(9, 38, 'Kim Vergara', 'iba nasa bulsa nyan', '2025-04-25 05:35:00'),
(10, 39, 'Leonel Razon', 'Pwede na kahit medyas', '2025-04-26 05:00:00'),
(11, 43, 'Jonald Rajel', 'idol mo talaga si Flow Jang', '2025-04-27 19:25:00'),
(12, 44, 'Edjam Ermhack', 'Pogi nito pwd na to isali..', '2025-04-22 00:00:00'),
(13, 44, 'Melanie Manalansan', 'Pakiss puu', '2025-04-22 00:00:00'),
(14, 44, 'Jam Vitalicio', 'Ganda', '2025-04-22 00:00:00'),
(15, 44, 'Drea Arcilla', 'gaun gaun sanajust a', '2025-04-22 00:00:00'),
(16, 46, 'Jomari Calloway', 'Gagi ibalik nyu yan sa menta', '2025-04-25 00:06:00'),
(24, 47, 'Judy Ann Jerez Baroña', 'Feeling!', '2025-04-27 00:42:00'),
(25, 47, 'Leo Andrei Putungan', 'Judy Ann Jerez Baroña Ako ngani nag vividio', '2025-04-27 00:42:00'),
(26, 47, 'Judy Ann Jerez Baroña', 'Leo Andrei Putungan di ngani Ako naniniwala', '2025-04-27 00:42:00'),
(27, 47, 'Steve Michael Reyes', 'In heat hayst', '2025-04-27 00:42:00'),
(28, 47, 'Leo Andrei Putungan', 'Steve Michael Reyes kabay parang gusto mong ikaw mag vidio ah hahahaha', '2025-04-27 00:42:00'),
(29, 47, 'Jeonard Malalad', 'Yan ang dagat,, wow dagat.....', '2025-04-27 00:42:00'),
(30, 47, 'Leo Andrei Putungan', 'Jeonard Malalad mapapawow talaga tito pag ganyan Ang dagat hahaha', '2025-04-27 00:42:00'),
(31, 51, 'John Larua Daigo', 'Congrats pogi', '2025-04-26 00:00:00'),
(32, 51, 'Jhai Jhai', 'thanks ninong', '2025-04-26 00:00:00'),
(33, 51, 'Torno G. Mark', 'Congrats jhaydenlab² Yan ni Tito ninong hehe', '2025-04-26 00:00:00'),
(34, 51, 'John Carlo Jubelea', 'Congratulations pogi', '2025-04-26 00:00:00'),
(35, 51, 'Lhelet Gaspar Torno', 'congratulations pangit pag butihin pag aaral ahhgaling² nman nyan..', '2025-04-26 00:00:00'),
(36, 51, 'Ronnabel Remoroza', 'Congratulations bebe', '2025-04-26 00:00:00'),
(37, 55, 'Meriam Morales Portuguez', 'saray man baga gayon pa ng view dyan', '2025-04-22 12:49:00'),
(38, 55, 'Mark James De Leon', 'sa bolivard yan sa virac po tiya', '2025-04-22 12:49:00'),
(39, 55, 'Feliciano Avila de Leon Jr.', 'Sain yan pinsan?', '2025-04-22 12:49:00'),
(40, 55, 'Mark James De Leon', 'Sa bolivard insan hahaha', '2025-04-22 12:49:00'),
(41, 55, 'Feliciano Avila de Leon Jr.', 'uya sa Virac insan?', '2025-04-22 12:49:00'),
(42, 55, 'Mark James De Leon', 'Opo insan', '2025-04-22 12:49:00'),
(43, 55, 'Meriam Morales Portuguez', 'saray man baga gayon pa ng view dyan', '2025-04-22 12:49:00'),
(44, 55, 'Mark James De Leon', 'sa bolivard yan sa virac po tiya', '2025-04-22 12:49:00'),
(45, 55, 'Feliciano Avila de Leon Jr.', 'Sain yan pinsan?', '2025-04-22 12:49:00'),
(46, 55, 'Mark James De Leon', 'Sa bolivard insan hahaha', '2025-04-22 12:49:00'),
(47, 55, 'Feliciano Avila de Leon Jr.', 'uya sa Virac insan?', '2025-04-22 12:49:00'),
(48, 55, 'Mark James De Leon', 'Opo insan', '2025-04-22 12:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `content_type` enum('text','image','video','link') NOT NULL DEFAULT 'text',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `content_type`, `created_at`) VALUES
(1, 3, 'shared post', 'video', '2025-04-25 23:39:00'),
(2, 3, 'shared post', 'video', '2025-04-26 06:14:00'),
(3, 5, 'ket online namomolestya', 'video', '2025-04-22 05:50:00'),
(4, 5, 'bungguan na lang ano?', 'video', '2025-04-22 09:01:00'),
(5, 5, 'chicken curry namnamnam', 'video', '2025-04-23 04:25:00'),
(6, 5, '🫶💗', '', '2025-04-23 12:44:00'),
(7, 6, 'shared post', 'video', '2025-04-20 22:13:00'),
(8, 6, 'Madala kana', 'video', '2025-04-21 03:42:00'),
(9, 6, 'Ang mura', '', '2025-04-21 11:38:00'),
(10, 6, 'siyam na nga ang buhay, nanlalamang pa.', '', '2025-04-21 15:17:00'),
(11, 6, 'Thank you sa kagabi', 'video', '2025-04-22 12:33:00'),
(12, 6, '', '', '2025-04-22 13:56:00'),
(13, 6, 'jay', 'video', '2025-04-22 13:57:00'),
(14, 6, '', 'video', '2025-04-22 22:05:00'),
(15, 6, '', 'video', '2025-04-23 11:46:00'),
(16, 6, '🙃', 'text', '2025-04-24 09:01:00'),
(17, 6, '', '', '2025-04-24 20:31:00'),
(18, 6, '', 'video', '2025-04-25 01:15:00'),
(19, 6, '', '', '2025-04-26 03:55:00'),
(20, 6, '', '', '2025-04-26 08:30:00'),
(21, 6, '', '', '2025-04-26 08:43:00'),
(22, 6, 'Taga bili lang namin Ng yelo Yan ma.', 'text', '2025-04-26 09:01:00'),
(23, 6, 'Burat na baya', 'text', '2025-04-26 13:42:00'),
(24, 6, 'About last night', '', '2025-04-26 23:19:00'),
(25, 6, '🖤', '', '2025-04-26 23:29:00'),
(26, 6, 'Para naman worth it Yung sakit,70k agad per attempt', '', '2025-04-27 02:40:00'),
(27, 6, 'Minemorize pang alibi HAHAHAHAHA', 'video', '2025-04-27 06:43:00'),
(28, 6, 'Soafer pretty @ariz', '', '2025-04-27 07:10:00'),
(29, 6, '', 'video', '2025-04-27 10:09:00'),
(30, 6, '', 'video', '2025-04-27 12:53:00'),
(31, 8, '🫣', '', '2025-04-21 11:15:00'),
(32, 8, 'phot', '', '2025-04-21 15:38:00'),
(33, 8, 'video', 'video', '2025-04-23 08:27:00'),
(34, 8, 'Sarapppp', '', '2025-04-24 09:22:00'),
(35, 8, 'photo', '', '2025-04-24 12:43:00'),
(36, 8, 'video', 'video', '2025-04-24 12:46:00'),
(37, 8, 'photo', '', '2025-04-24 21:30:00'),
(38, 8, 'Wala akong makita na damo, siguro nasa bulsa mo.', '', '2025-04-24 21:32:00'),
(39, 8, 'Makita ko lang necktie ko, tapos \'to sa\'kin.', 'video', '2025-04-25 20:56:00'),
(40, 8, '😩', '', '2025-04-26 12:57:00'),
(41, 8, 'photo', '', '2025-04-26 12:58:00'),
(42, 8, 'Ok po', '', '2025-04-26 12:59:00'),
(43, 8, 'photo', '', '2025-04-27 11:21:00'),
(44, 10, 'updated her profile picture', '', '2025-04-21 16:00:00'),
(45, 16, 'Pricela Rose Morales Tarnate wag nmn Sana umabot sa ganito', '', '2025-04-23 13:06:00'),
(46, 37, 'Hataw Leo Andrei Putungan hahahahha', 'video', '2025-04-24 16:06:00'),
(47, 37, 'Kaya molang Pala Ako isinama sa dagat para lang mag vidio sa iyo hays', 'video', '2025-04-26 16:42:00'),
(48, 37, 'Kaya molang Pala Ako isinama sa dagat para lang mag vidio sa iyo hays', 'video', '2025-04-26 16:42:00'),
(51, 42, 'Congratulations Kua Jhaydenn Brielle', '', '2025-04-25 16:00:00'),
(52, 32, 'Quick escape', '', '2025-04-22 12:26:00'),
(53, 32, '🥶', 'video', '2025-04-24 05:13:00'),
(54, 32, '🥶', 'video', '2025-04-24 05:13:00'),
(55, 7, 'change', '', '2025-04-22 04:49:00'),
(56, 7, 'You should be happy with yourself, it\'s just a bonus if you\'re with someone', '', '2025-04-22 04:49:00'),
(57, 1, 'Loving the sunset today! 🌅', '', '2025-04-27 10:15:00'),
(58, 2, 'Had an amazing workout session. Feeling good!', '', '2025-04-27 02:45:00'),
(59, 3, 'Can’t wait for the weekend! Any plans?', '', '2025-04-27 12:30:00'),
(60, 4, 'Can’t believe I finished that book in a day! 📚', '', '2025-04-26 08:00:00'),
(61, 5, 'Just tried a new recipe and it’s amazing! 🍽️', '', '2025-04-26 06:30:00'),
(62, 6, 'When life gives you lemons, make lemonade! 🍋', '', '2025-04-26 01:00:00'),
(63, 7, 'Game night with friends, so much fun! 🎮', '', '2025-04-25 13:45:00'),
(64, 8, 'A little self-care goes a long way 💅', '', '2025-04-25 09:00:00'),
(65, 9, 'The view from here is just breathtaking! 🏞️', '', '2025-04-25 02:00:00'),
(66, 10, 'Trying to stay positive through this week! 💪', '', '2025-04-24 14:15:00'),
(67, 11, 'When in doubt, dance it out! 💃🕺', '', '2025-04-24 08:00:00'),
(68, 12, 'Loving this new playlist! 🎶 #GoodVibesOnly', '', '2025-04-24 06:45:00'),
(69, 13, 'Some quiet time to recharge 🧘', '', '2025-04-23 11:00:00'),
(70, 14, 'I love when everything falls into place 🌟', '', '2025-04-23 04:30:00'),
(71, 15, 'Is it just me or is this week flying by? ⏳', '', '2025-04-23 01:45:00'),
(72, 16, 'Here’s to new beginnings! 🍀', '', '2025-04-22 14:00:00'),
(73, 17, 'Enjoying a nice cup of coffee before the grind ☕', '', '2025-04-22 00:00:00'),
(74, 18, 'The best part of the day: sunset. 🌅', '', '2025-04-21 10:45:00'),
(75, 19, 'Another day, another adventure 🌍', '', '2025-04-21 05:30:00'),
(76, 20, 'Feeling grateful for all the good in my life 🙏', '', '2025-04-21 02:00:00'),
(77, 21, 'Caught up on all my favorite shows 📺', '', '2025-04-21 14:00:00'),
(78, 22, 'Trying to make today amazing ✨', '', '2025-04-22 09:45:00'),
(79, 23, 'Can’t stop laughing at this hilarious meme 😂', '', '2025-04-22 07:30:00'),
(80, 24, 'Spending the day outdoors 🌳', '', '2025-04-21 05:00:00'),
(81, 25, 'Just finished an intense workout! 💪', '', '2025-04-21 01:00:00'),
(82, 26, 'Let’s make this week count! ✨', '', '2025-04-20 22:30:00'),
(83, 27, 'Exploring new places, one step at a time 🗺️', '', '2025-04-27 10:15:00'),
(84, 28, 'Loving the new haircut! 💇', '', '2025-04-27 02:45:00'),
(85, 29, 'Taking a break to clear my mind 🧘', '', '2025-04-27 12:30:00'),
(86, 30, 'Feeling good about where I’m headed in life 🌟', '', '2025-04-26 08:00:00'),
(87, 31, 'Today’s vibe: Relax and recharge 🛋️', '', '2025-04-26 06:30:00'),
(88, 32, 'Making the most of every moment ⏳', '', '2025-04-26 01:00:00'),
(89, 33, 'Got my morning coffee ☕ and I’m ready to conquer the day!', '', '2025-04-25 13:45:00'),
(90, 34, 'Exploring new hobbies and loving it! 🎨', '', '2025-04-25 09:00:00'),
(91, 35, 'Sometimes, all you need is a good book and a cozy spot 📖', '', '2025-04-25 02:00:00'),
(92, 42, 'So proud of my little one for graduating today! 🎓 The future is bright, keep shining! 🌟 #ProudParent #GraduationDay', '', '2025-04-24 14:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `reacts`
--

CREATE TABLE `reacts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reactor_name` varchar(100) NOT NULL,
  `react_type` enum('like','love','haha','wow','sad','angry') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reacts`
--

INSERT INTO `reacts` (`id`, `post_id`, `reactor_name`, `react_type`) VALUES
(1, 1, 'Jovelyn Vicente', 'love'),
(2, 1, 'Sharie Junio', 'love'),
(3, 1, 'Dan Samarita', 'love'),
(4, 1, 'Angelica', ''),
(5, 2, 'Lowell Tellerva', 'love'),
(6, 2, 'Jessalyn Vicente', 'love'),
(7, 3, 'John Clark Templonuevo', 'haha'),
(8, 3, 'Alyssa Ashley Padilla', 'haha'),
(9, 4, 'Jonald Torcelino Timbal', 'haha'),
(10, 4, 'Jessa May', 'haha'),
(11, 4, 'Yuan Miguel Tulay', 'haha'),
(12, 6, 'Julius Cholo D. Reyes', 'love'),
(13, 6, 'Regine Valenzuela', 'love'),
(14, 6, 'Kurisu Makise', 'love'),
(15, 6, 'Jhon Vincent Templonuevo', 'love'),
(16, 6, 'Jessa May', 'love'),
(17, 6, 'Alyssa Ashley Padilla', 'haha'),
(18, 6, 'Shiella Mae Templonuevo', 'haha'),
(19, 6, 'Thalia Jane Templonuevo Tabirao', 'like'),
(20, 7, 'Jenica Malveda', 'haha'),
(21, 7, 'Paolo Miguel Pusing', 'haha'),
(22, 7, 'Jayvie Olivar', 'haha'),
(23, 7, 'Winchell Mahinay Nabalitan', 'haha'),
(24, 7, 'Deo Berces', 'haha'),
(25, 7, 'Peter', 'haha'),
(26, 7, 'Trebor Papad Oad', 'haha'),
(27, 8, 'Jay Jay Gonzales', ''),
(28, 8, 'Jenica Malveda', 'haha'),
(29, 8, 'John Paul R Aliva', 'haha'),
(30, 8, 'Jerwin Roxas', 'haha'),
(31, 8, 'Jayvie Olivar', 'haha'),
(32, 8, 'Peter', 'haha'),
(33, 8, 'Val Des', 'haha'),
(34, 9, 'Vargas Mark', 'haha'),
(35, 9, 'Lester Lira', 'haha'),
(36, 10, 'Jessa Mae Surio Pornea', 'haha'),
(37, 10, 'Jayvie Olivar', 'haha'),
(38, 12, 'Amiller Jeremiah', ''),
(39, 12, 'Elena Marie C. Cater', ''),
(40, 16, 'Jason Eborde Salva', ''),
(41, 16, 'Elena Marie C. Cater', ''),
(42, 18, 'Asiong Batalla Degalicia', 'haha'),
(43, 18, 'Lee Aguila', 'haha'),
(44, 18, 'Kayce Nacario', 'haha'),
(45, 18, 'Delantar Jhonrey Morales', 'haha'),
(46, 18, 'Doblon Jessie', 'haha'),
(47, 18, 'Resty Lazona', 'haha'),
(48, 18, 'Htrebor Aicrag Onaicram Aicrag', 'haha'),
(49, 18, 'Jay Jay Gonzales', 'haha'),
(50, 18, 'Ben Francis Llagas', 'haha'),
(51, 18, 'Jameson Colina', 'like'),
(52, 18, 'Albert Dela Rosa', 'like'),
(53, 19, 'Rosemarie Norte Nacario', ''),
(54, 19, 'Jenica Malveda', ''),
(55, 19, 'Ma Fatima Miranda Olayres', 'wow'),
(56, 19, 'Elena Marie C. Cater', 'wow'),
(57, 20, 'Elena Marie C. Cater', 'haha'),
(58, 21, 'Yojhonynyll Fabella', ''),
(59, 22, 'Elena Marie C. Cater', 'haha'),
(60, 24, 'Rodelyn Golpe San Juan', 'like'),
(61, 24, 'Namra John De La Cruz', 'like'),
(62, 24, 'May Ann Balang-Salcedo Lozano', 'love'),
(63, 24, 'Kevin Omal', ''),
(64, 24, 'Nhalyn Jepollo', ''),
(65, 24, 'Catherine Vito', ''),
(66, 24, 'Cricell Lozano', ''),
(67, 24, 'Ben Francis Llagas', ''),
(68, 24, 'Marilyn Rambuyong', ''),
(69, 24, 'Peter', ''),
(70, 24, 'Serajnam Nazh', ''),
(71, 24, 'Mateth Ososila', ''),
(72, 24, 'Clarize Catalan Bania', ''),
(73, 24, 'Rochelle Kim', ''),
(74, 24, 'Yohj Fajardo', ''),
(75, 24, 'Mara Ariz Huelgas', ''),
(76, 24, 'Cardo Pagaran', ''),
(77, 24, 'Mary Ann Maomay', ''),
(78, 24, 'Elena Marie C. Cater', ''),
(79, 24, 'Love Lee', ''),
(80, 24, 'Yojhonynyll Fabella', ''),
(81, 25, 'Rey Jhune', 'like'),
(82, 25, 'JovaLyn Tuazon Dolorical', ''),
(83, 25, 'John Deo Bautista Pornea', ''),
(84, 25, 'Ailyn Magtibay', ''),
(85, 25, 'Marilyn Rambuyong', ''),
(86, 25, 'Yojhonynyll Fabella', ''),
(87, 25, 'Mateth Ososila', ''),
(88, 25, 'Vincent Enriquez', ''),
(89, 25, 'Mara Ariz Huelgas', ''),
(90, 25, 'Jhay Cee', ''),
(91, 25, 'Elena Marie C. Cater', ''),
(92, 25, 'Christian Mark Unido Bermudez', ''),
(93, 25, 'ۦۦ ۦۦ', ''),
(94, 25, 'Arvie Canatuan', ''),
(95, 26, 'Lee Aguila', 'haha'),
(96, 26, 'Yojhonynyll Fabella', 'haha'),
(97, 28, 'Aquh C Edison', 'like'),
(98, 28, 'Mateth Ososila', 'like'),
(99, 28, 'Paolo Miguel Pusing', ''),
(100, 28, 'Jenica Malveda', ''),
(101, 28, 'Che Rry Palacio', ''),
(102, 28, 'Ken Lariosa', ''),
(103, 28, 'Fatima De Chavez Rosete', ''),
(104, 28, 'Marissa Pelaez', ''),
(105, 28, 'Lester Lira', ''),
(106, 28, 'Clarize Catalan Bania', ''),
(107, 28, 'Yojhonynyll Fabella', ''),
(108, 28, 'Ben Francis Llagas', ''),
(109, 28, 'Patrick Malabanan Rebolado', ''),
(110, 28, 'Achir Aem Tenorio', ''),
(111, 28, 'Wilfredo R. Gualvez Jr.', ''),
(112, 28, 'Joms Manjares', ''),
(113, 28, 'John Tiburcio', ''),
(114, 28, 'Mara Ariz Huelgas', ''),
(115, 28, 'Jack Jackie Amascual Caillo', ''),
(116, 28, 'Encio Ocampo Ederio', ''),
(117, 28, 'JovaLyn Tuazon Dolorical', ''),
(118, 28, 'Bos Sing', ''),
(119, 29, 'Ardie Alondra Turallo', ''),
(120, 29, 'Robert Malveda', ''),
(121, 31, 'Rea Pante', 'haha'),
(122, 31, 'Christine Ramoga', 'haha'),
(123, 32, 'Al Vincent Auron Villamar', 'haha'),
(124, 32, 'Rea Pante', 'haha'),
(125, 32, 'Rowena Mojica Estopin', 'haha'),
(126, 33, 'Karen Ocampo', ''),
(127, 33, 'Flow Jang', ''),
(128, 35, 'Jei Millare Moral', ''),
(129, 36, 'マーク ジャスティン', ''),
(130, 37, 'Rea Pante', ''),
(131, 37, 'Rowena Mojica Estopin', ''),
(132, 37, 'Jonald Rajel', ''),
(133, 38, 'Darlene Claire Galve', ''),
(134, 38, 'Jaybe Monzon', ''),
(135, 38, 'Dwight Prudente', ''),
(136, 38, 'Rick Russell Cuisøn', ''),
(137, 38, 'Aubrey Miles', ''),
(138, 38, 'Margarette Joy Suspa', ''),
(139, 38, 'Jovian Faye Delgado', ''),
(140, 38, 'Cristella Rempis Bristol', ''),
(141, 38, 'Al Vincent Auron Villamar', ''),
(142, 38, 'Edmarc Pantino', ''),
(143, 38, 'Michael Gravillo', ''),
(144, 38, 'Avegail Magtibay', ''),
(145, 38, 'Bernadette Azaña', ''),
(146, 38, 'Flow Jang', ''),
(147, 38, 'Jonald Rajel', ''),
(148, 39, 'John Patrick Hidalgo', 'haha'),
(149, 39, 'Joanashane Resurreccion', 'haha'),
(150, 39, 'Michael Gravillo', 'haha'),
(151, 39, 'Zii Basay Floralde', 'haha'),
(152, 39, 'Kim Vergara', 'haha'),
(153, 39, 'Jane Margate Pascual', 'haha'),
(154, 39, 'John Lloyd De Leon', 'haha'),
(155, 39, 'Irene Benigno Naniong', 'haha'),
(156, 39, 'Joesha Tortal', 'haha'),
(157, 39, 'Flow Jang', 'haha'),
(158, 39, 'Rowena Mojica Estopin', 'haha'),
(159, 39, 'Jhessa Impelis Mendua', 'haha'),
(160, 39, 'Maria Teresa', 'haha'),
(161, 39, 'Jessiel Bo Boholano', 'haha'),
(162, 39, 'Delia Dump', 'haha'),
(163, 39, 'Leonel Razon', 'haha'),
(164, 40, 'Nariela Joy Centeno', ''),
(165, 40, 'Jonald Rajel', ''),
(166, 41, 'Rea Pante', ''),
(167, 41, 'Nariela Joy Centeno', ''),
(168, 41, 'マーク ジャスティン', ''),
(169, 41, 'Delia Dump', ''),
(170, 41, 'John Larua Daigo', ''),
(171, 42, 'Rea Pante', ''),
(172, 42, 'Bernadette Azaña', ''),
(173, 42, 'Icy Lacasandile Coderias', ''),
(174, 42, 'Al Vincent Auron Villamar', ''),
(175, 42, 'Leamae Gardon Cabatay', ''),
(176, 43, 'Ivy Rose Queaño Manlangit', ''),
(177, 43, 'Leamae Gardon Cabatay', ''),
(178, 43, 'マーク ジャスティン', ''),
(179, 43, 'Jheff', ''),
(180, 43, 'Rea Pante', ''),
(181, 43, 'Jonald Rajel', ''),
(182, 44, 'Jam Vitalicio', ''),
(183, 44, 'Ash CJ', ''),
(184, 44, 'Ton Andoy', ''),
(185, 44, 'Babylyn Pabilloren', ''),
(186, 44, 'Jhordz Gutierrez', ''),
(187, 44, 'MJ Dela Cruz', ''),
(188, 44, 'Rhien Marquez', ''),
(189, 44, 'Drea Arcilla', ''),
(190, 44, 'Flores Myla', ''),
(191, 44, 'Lit Zkie Dadis', ''),
(192, 44, '아이라', ''),
(193, 44, 'Jhomer Flores', ''),
(194, 44, 'Marilou Morales', ''),
(195, 44, 'Gel Irang', ''),
(196, 44, 'Tessie Vitalicio Garcia', ''),
(197, 44, 'Rustom Ocillos', ''),
(198, 44, 'Noy Cañete', ''),
(199, 44, 'Shella Francisco', ''),
(200, 44, 'Monica Aldave', ''),
(201, 44, 'Boss Dags', ''),
(202, 44, 'Jamilla Rose Tario', ''),
(203, 44, 'ۦۦ ۦۦ ۦۦ ۦۦ', ''),
(204, 44, 'Joy Reyes', ''),
(205, 44, 'Bhev\'z Mo', ''),
(206, 44, 'Paul C Vallega', ''),
(207, 44, 'Michelle Vitalicio Ternida', ''),
(208, 44, 'Lyka Dela Cuadra', ''),
(209, 44, 'Mercy O De Leon', ''),
(210, 44, 'Anglca Ragginan Bosi', ''),
(211, 44, 'Shaira Lyn Vitalicio', ''),
(212, 44, 'Myra V. Tellerva', ''),
(213, 44, 'Jovelyn Cabrera Tuquero', ''),
(214, 44, 'Melanie Manalansan', ''),
(215, 44, 'Aleyha Cueva', ''),
(216, 44, 'Abegail Turado', ''),
(217, 44, 'Etabara Iramhuc', ''),
(218, 44, 'Joel Abundo', ''),
(219, 45, 'Rosalie Morales Tarnate', 'haha'),
(220, 45, 'Pricela Rose Morales Tarnate', 'haha'),
(221, 45, 'Aiyah Ken', 'haha'),
(222, 46, 'Leo Andrei Putungan', 'haha'),
(223, 46, 'April Reyes', 'haha'),
(224, 46, 'Er Mn', 'haha'),
(225, 46, 'HA Y DI', 'haha'),
(226, 46, 'Jorenz Ebon', 'haha'),
(227, 46, 'JP Anilao', 'haha'),
(260, 47, 'Jhon Michael Aquino Perez', 'haha'),
(261, 47, 'Reymar Gapasan', 'haha'),
(262, 47, 'Nehyeban Shielo', 'haha'),
(263, 47, 'Justine Matuto Villanueva', 'haha'),
(264, 47, 'Libit Alimario Angie', 'haha'),
(265, 47, 'Leony Putungan', 'haha'),
(266, 47, 'Mendoza Doria Aivy', 'haha'),
(267, 47, 'JP Anilao', 'haha'),
(268, 47, 'Jolina Tagala', 'haha'),
(269, 47, 'Jhenna Marie Ayad', 'haha'),
(270, 47, 'Judy Ann Jerez Baroña', 'haha'),
(271, 47, 'Jerly Mae Muñoz Cabello', 'haha'),
(272, 47, 'Mryshrm Cubio', 'haha'),
(313, 51, 'Michael Bryan', ''),
(314, 51, 'Lovely Jane Hindap', ''),
(315, 51, 'Arlene D Larua', ''),
(316, 51, 'Jhai Jhai', ''),
(317, 51, 'Janelle Larua Jubelea', ''),
(318, 51, 'Mariz Estella Schwartz', ''),
(319, 51, 'Toby Keith Cudal', ''),
(320, 51, 'Mary Joy Bandola', ''),
(321, 51, 'Angelika Sescar', ''),
(322, 51, 'Alleli Kristine', ''),
(323, 51, 'Ronnabel Remoroza', ''),
(324, 51, 'Erwin Capobres', ''),
(325, 51, 'John Carlo Jubelea', ''),
(326, 51, 'Karen Regalario Patal', ''),
(327, 51, 'Rojanie Kyra Remoroza', ''),
(328, 51, 'Torno G. Mark', ''),
(329, 51, 'Michelle Tantiado', ''),
(330, 51, 'Dhelbert Oplas', ''),
(331, 51, 'Jerolyn Lopez', ''),
(332, 51, 'John Larua Daigo', ''),
(333, 52, 'Lita Sugui', ''),
(334, 52, 'James Pascual', ''),
(335, 52, 'Mariella Jones Guianan', ''),
(336, 52, 'Marvin Asoy', ''),
(337, 52, 'Joshua De Lumen', ''),
(338, 52, 'Rodge Polvorosa', ''),
(339, 52, 'Joann Sugui', ''),
(340, 52, 'Ally Villa-Real', ''),
(341, 52, 'Pauline Villa-Real', ''),
(342, 52, 'David Nissi Perez', 'like'),
(344, 54, 'Guel Gonzales', 'haha'),
(345, 55, 'Christian Odiaman De Leon', ''),
(346, 55, 'Tumazar Echaluce Lyn', ''),
(347, 55, 'Marian Mae Vargas Torzar', ''),
(348, 55, 'Anne Patricia Pancipane', ''),
(349, 55, 'Mary LylibeTh Joy Tria', ''),
(350, 55, 'Marialyn Bernal Bagadiong', ''),
(351, 55, 'Ruzzel O. Deleon', ''),
(352, 55, 'Mjhoy Tuquero', ''),
(353, 55, 'Alyssah Faye Tuboro Odiaman', ''),
(354, 55, 'Gemma Tropel', ''),
(355, 55, 'Emilyn Santos', ''),
(356, 55, 'Loren Samudio-Rodriguez Turreda-Ogale', ''),
(357, 55, 'Angel Lizaso Bisco', ''),
(358, 55, 'Enitsuj Ukel', ''),
(359, 55, 'Issa Sierra', ''),
(360, 55, 'Kha Rhen', ''),
(361, 55, 'Francia Samudio', ''),
(362, 55, 'Liza Vitalicio', ''),
(363, 55, 'Ca Llay', ''),
(364, 55, 'April Mae', ''),
(365, 55, 'Marjorie De Leon Trinidad', ''),
(366, 55, 'Anin Isuela', ''),
(367, 55, 'Joy Oppiasa', ''),
(368, 55, 'Nene De Leon Lanon', ''),
(369, 55, 'Irish Ann', ''),
(370, 55, 'Richelina A. Sumandig', ''),
(371, 55, 'Micca Ella Ogena', ''),
(372, 55, 'Sean Chester Olesco Tugay', ''),
(373, 55, 'Jorgie Templo Tabalan', ''),
(374, 55, 'JE N NY', ''),
(375, 55, 'Chavez Sherwin Socao', ''),
(376, 55, 'Mae Biado Villanueva', ''),
(377, 55, 'Hab Lon', ''),
(378, 55, 'オゲナ エディス ローズ', ''),
(379, 55, 'Joseph Tapar Cama', ''),
(380, 55, 'Jerry Ogalesco', ''),
(381, 55, 'Francine Maye Benavidez', ''),
(382, 55, 'Melissa Tatad Tablate', ''),
(383, 55, 'Eypril Osido Bonifacio', ''),
(384, 55, 'Mai Mai Manlangit', ''),
(385, 55, 'Jan Kaira Ibardaloza', ''),
(386, 55, 'Raymark Odiaman', ''),
(387, 55, 'Diana Rose E Velasco', ''),
(388, 55, 'Stephen Lester Tuboro Tonio', ''),
(389, 55, 'Angela Pereyra Yadujac', ''),
(390, 55, 'Joy Tojon', ''),
(391, 55, 'Rhea Clado Azores', ''),
(392, 55, 'Lawrence Tellerva', ''),
(393, 55, 'Joenard Carlos Sorra', ''),
(394, 55, 'Cristalyn Osida', ''),
(395, 55, 'Monica Pongan Francisco', ''),
(396, 55, 'Kath Olido', ''),
(397, 55, 'Aym Prittee Shoure', ''),
(398, 55, 'Edhel Rose Joven', ''),
(399, 55, 'Jake Calderon', ''),
(400, 55, 'Jhannel Timajo', ''),
(401, 55, 'Morales Reah Ogalesco', ''),
(402, 55, 'Clarisse Garcia Tuboro', ''),
(403, 55, 'John Vincent De Leon', ''),
(404, 55, 'Alo Hyuga', ''),
(405, 55, 'Marlene Odiaman', ''),
(406, 55, 'Torno G. Mark', ''),
(407, 55, 'Ria Jean Cabangon', ''),
(408, 55, 'Keane Vega', ''),
(409, 55, 'Joan Moran Tablo', ''),
(410, 55, 'Angelica Calderon', ''),
(411, 55, 'Jinnelyn Calderon Cabales', ''),
(412, 55, 'Kharen De Leon', ''),
(413, 55, 'Dine Peñaflorida', ''),
(414, 55, 'Jstr Telrva', ''),
(415, 55, 'Sheryl Deleon Chavez', ''),
(416, 55, 'Bea Lyn B. Tapar', ''),
(417, 55, 'Greggy Villarey Angeles', ''),
(418, 55, 'Ocsalv Ambet', ''),
(419, 55, 'Sharlyn Tusi Tuplano', ''),
(420, 55, 'Kim Marino Brequillo', ''),
(421, 55, 'Paulo Angeles Tusi', ''),
(422, 55, 'Aizel Magsayo Porquez II', ''),
(423, 55, 'Sheena Temeña Diaz', ''),
(424, 55, 'Shania Lyn A. Vargas', ''),
(425, 55, 'Gerald Olesco', ''),
(426, 55, 'Sherjay Non Tesorero', ''),
(427, 55, 'Christian Odiaman De Leon', ''),
(428, 55, 'Tumazar Echaluce Lyn', ''),
(429, 55, 'Marian Mae Vargas Torzar', ''),
(430, 55, 'Anne Patricia Pancipane', ''),
(431, 55, 'Mary LylibeTh Joy Tria', ''),
(432, 55, 'Marialyn Bernal Bagadiong', ''),
(433, 55, 'Ruzzel O. Deleon', ''),
(434, 55, 'Mjhoy Tuquero', ''),
(435, 55, 'Alyssah Faye Tuboro Odiaman', ''),
(436, 55, 'Gemma Tropel', ''),
(437, 55, 'Emilyn Santos', ''),
(438, 55, 'Loren Samudio-Rodriguez Turreda-Ogale', ''),
(439, 55, 'Angel Lizaso Bisco', ''),
(440, 55, 'Enitsuj Ukel', ''),
(441, 55, 'Issa Sierra', ''),
(442, 55, 'Kha Rhen', ''),
(443, 55, 'Francia Samudio', ''),
(444, 55, 'Liza Vitalicio', ''),
(445, 55, 'Ca Llay', ''),
(446, 55, 'April Mae', ''),
(447, 55, 'Marjorie De Leon Trinidad', ''),
(448, 55, 'Anin Isuela', ''),
(449, 55, 'Joy Oppiasa', ''),
(450, 55, 'Nene De Leon Lanon', ''),
(451, 55, 'Irish Ann', ''),
(452, 55, 'Richelina A. Sumandig', ''),
(453, 55, 'Micca Ella Ogena', ''),
(454, 55, 'Sean Chester Olesco Tugay', ''),
(455, 55, 'Jorgie Templo Tabalan', ''),
(456, 55, 'JE N NY', ''),
(457, 55, 'Chavez Sherwin Socao', ''),
(458, 55, 'Mae Biado Villanueva', ''),
(459, 55, 'Hab Lon', ''),
(460, 55, 'オゲナ エディス ローズ', ''),
(461, 55, 'Joseph Tapar Cama', ''),
(462, 55, 'Jerry Ogalesco', ''),
(463, 55, 'Francine Maye Benavidez', ''),
(464, 55, 'Melissa Tatad Tablate', ''),
(465, 55, 'Eypril Osido Bonifacio', ''),
(466, 55, 'Mai Mai Manlangit', ''),
(467, 55, 'Jan Kaira Ibardaloza', ''),
(468, 55, 'Raymark Odiaman', ''),
(469, 55, 'Diana Rose E Velasco', ''),
(470, 55, 'Stephen Lester Tuboro Tonio', ''),
(471, 55, 'Angela Pereyra Yadujac', ''),
(472, 55, 'Joy Tojon', ''),
(473, 55, 'Rhea Clado Azores', ''),
(474, 55, 'Lawrence Tellerva', ''),
(475, 55, 'Joenard Carlos Sorra', ''),
(476, 55, 'Cristalyn Osida', ''),
(477, 55, 'Monica Pongan Francisco', ''),
(478, 55, 'Kath Olido', ''),
(479, 55, 'Aym Prittee Shoure', ''),
(480, 55, 'Edhel Rose Joven', ''),
(481, 55, 'Jake Calderon', ''),
(482, 55, 'Jhannel Timajo', ''),
(483, 55, 'Morales Reah Ogalesco', ''),
(484, 55, 'Clarisse Garcia Tuboro', ''),
(485, 55, 'John Vincent De Leon', ''),
(486, 55, 'Alo Hyuga', ''),
(487, 55, 'Marlene Odiaman', ''),
(488, 55, 'Torno G. Mark', ''),
(489, 55, 'Ria Jean Cabangon', ''),
(490, 55, 'Keane Vega', ''),
(491, 55, 'Joan Moran Tablo', ''),
(492, 55, 'Angelica Calderon', ''),
(493, 55, 'Jinnelyn Calderon Cabales', ''),
(494, 55, 'Kharen De Leon', ''),
(495, 55, 'Dine Peñaflorida', ''),
(496, 55, 'Jstr Telrva', ''),
(497, 55, 'Sheryl Deleon Chavez', ''),
(498, 55, 'Bea Lyn B. Tapar', ''),
(499, 55, 'Greggy Villarey Angeles', ''),
(500, 55, 'Ocsalv Ambet', ''),
(501, 55, 'Sharlyn Tusi Tuplano', ''),
(502, 55, 'Kim Marino Brequillo', ''),
(503, 55, 'Paulo Angeles Tusi', ''),
(504, 55, 'Aizel Magsayo Porquez II', ''),
(505, 55, 'Sheena Temeña Diaz', ''),
(506, 55, 'Shania Lyn A. Vargas', ''),
(507, 55, 'Gerald Olesco', ''),
(508, 55, 'Sherjay Non Tesorero', ''),
(509, 55, 'Ronald Calderon Tuquero', 'like'),
(510, 55, 'Joel Tablate', 'like'),
(511, 55, 'Panti Joey', 'like'),
(512, 55, 'Richard De Leon', 'like'),
(513, 55, 'Abe S. Talento Jr.', 'like'),
(514, 55, 'Larry Brd Tomagan', 'like'),
(515, 55, 'Jeth Tabo', 'like'),
(516, 55, 'Feliciano Avila de Leon Jr.', 'like'),
(517, 55, 'Marcelo Deleon', 'like'),
(518, 55, 'Jessa Torzar Rojas', 'like'),
(519, 55, 'Mani Torno - Obosa', 'like'),
(520, 55, 'Meriam Morales Portuguez', 'like'),
(521, 55, 'Lhong Lhong Ogena', 'like'),
(522, 55, 'Rubyana De Leon', 'like'),
(523, 55, 'Mark James De Leon', ''),
(524, 55, 'QDominique Garcia Olonan', ''),
(525, 55, 'Tine Cabales', ''),
(526, 55, 'Marso Dies', ''),
(527, 55, 'Ronald Calderon Tuquero', 'like'),
(528, 55, 'Joel Tablate', 'like'),
(529, 55, 'Panti Joey', 'like'),
(530, 55, 'Richard De Leon', 'like'),
(531, 55, 'Abe S. Talento Jr.', 'like'),
(532, 55, 'Larry Brd Tomagan', 'like'),
(533, 55, 'Jeth Tabo', 'like'),
(534, 55, 'Feliciano Avila de Leon Jr.', 'like'),
(535, 55, 'Marcelo Deleon', 'like'),
(536, 55, 'Jessa Torzar Rojas', 'like'),
(537, 55, 'Mani Torno - Obosa', 'like'),
(538, 55, 'Meriam Morales Portuguez', 'like'),
(539, 55, 'Lhong Lhong Ogena', 'like'),
(540, 55, 'Rubyana De Leon', 'like'),
(541, 55, 'Mark James De Leon', ''),
(542, 55, 'QDominique Garcia Olonan', ''),
(543, 55, 'Tine Cabales', ''),
(544, 55, 'Marso Dies', '');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `sharer_name` varchar(100) NOT NULL,
  `shared_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `post_id`, `sharer_name`, `shared_at`) VALUES
(1, 1, 'User 3', '2025-04-26 07:39:00'),
(2, 3, 'User 5', '2025-04-22 13:50:00'),
(3, 7, 'User 6', '2025-04-21 06:15:00'),
(4, 7, 'User 6', '2025-04-21 06:20:00'),
(5, 7, 'User 6', '2025-04-21 06:25:00'),
(6, 8, 'User 6', '2025-04-21 11:45:00'),
(7, 8, 'User 6', '2025-04-21 11:50:00'),
(8, 16, 'User 6', '2025-04-24 17:05:00'),
(9, 17, 'User 6', '2025-04-25 04:35:00'),
(10, 18, 'User 6', '2025-04-25 09:20:00'),
(11, 18, 'User 6', '2025-04-25 09:25:00'),
(12, 24, 'User 6', '2025-04-27 07:35:00'),
(13, 35, 'User 8', '2025-04-24 20:50:00'),
(14, 37, 'User 8', '2025-04-25 05:40:00'),
(15, 43, 'User 8', '2025-04-27 19:25:00'),
(16, 92, 'User 1', '2025-04-30 10:15:00'),
(17, 92, 'User 3', '2025-04-30 10:20:00'),
(18, 92, 'User 5', '2025-04-30 10:25:00'),
(19, 92, 'User 7', '2025-04-30 10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `relationship` enum('single','in a relationship','married','complicated') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `location`, `school`, `birthdate`, `gender`, `relationship`) VALUES
(1, 'Angela Shane Tarnate', 'Quezon City, Philippines', '', NULL, 'female', 'single'),
(2, 'Rosalie Morales Tarnate', 'Quezon City, Philippines', '', NULL, 'female', 'married'),
(3, 'Vicente Richmond', 'Quezon City, Philippines', 'St. Claire College', NULL, 'male', 'single'),
(4, 'LetCar JazDin', 'Quezon City, Philippines', '', NULL, 'male', 'married'),
(5, 'Jake Templonuevo', 'Virac, Catanduanes', 'Catanduanes State University', NULL, 'male', 'single'),
(6, 'Ivy Jasmine Norte Nacario', 'Polangui, Albay', '', NULL, 'female', 'single'),
(7, 'Mark James De Leon', 'Virac, Catanduanes', 'Catanduanes State University', NULL, 'male', 'single'),
(8, 'Paolo Miguel Pusing', 'Rodriguez, Rizal', 'Sisters Of Mary Silang Cavite', NULL, 'male', 'single'),
(9, 'Denn De La Cruz', 'Silang, Cavite', 'Sisters of Mary School-Adlas', NULL, 'male', 'single'),
(10, 'Jam Vitalicio', '', '', NULL, 'female', 'single'),
(11, 'Christian Odiaman De Leon', 'Viga, Catanduanes, Philippines', 'Viga Rural Developmen High School (VRDHS)', NULL, 'male', 'single'),
(12, 'John Mark Fernandez', '', '', NULL, 'male', 'single'),
(13, 'Freshelle Joy Tusi', 'Viga, Catanduanes, Philippines', '', NULL, 'female', 'in a relationship'),
(14, 'Jonna Marie Odiaman', '', '', NULL, 'female', 'single'),
(15, 'Alliah Nichole', 'Quezon City, Philippines', 'The Sisters of Mary School Girlstown', NULL, 'female', 'married'),
(16, 'Lhene Wayne', 'Viga, Catanduanes', '', NULL, 'female', NULL),
(17, 'Aiza Morales', 'Viga, Catanduanes', '', NULL, 'female', 'married'),
(18, 'Klaris Mae Manlangit', 'Virac, Catanduanes, Philippines', 'Catanduanes State University', NULL, 'female', 'single'),
(19, 'Chester Dale Ogena Odiaman', 'Viga, Catanduanes, Philippines', ' ICCT Colleges Cainta Main Campus', NULL, 'male', 'in a relationship'),
(20, 'John Albert Villanueva', 'Quezon City, Philippines', 'Bestlink College of the Philippines', NULL, 'male', 'in a relationship'),
(21, 'Mary Ann Alvarez', '', '', NULL, 'female', 'in a relationship'),
(22, 'Fatima Sopranes', ' Virac, Catanduanes, Philippines', 'De La Salle University', NULL, 'female', 'single'),
(23, 'Zelle Tumaque', '', 'Catanduanes State University', NULL, 'female', 'single'),
(24, 'Ja S Per', 'Quezon City, Philippines', '', NULL, 'male', 'in a relationship'),
(25, 'Charlesian Tuibeo', 'Quezon City, Philippines', 'Technological University of the Philippines', NULL, 'male', 'single'),
(26, 'Christopher Ramos', 'Lipa, Batangas', '', NULL, 'male', 'in a relationship'),
(27, 'Katherine B. Murillo', 'Viga, Catanduanes, Philippines', 'Central Luzon State University', NULL, 'female', 'single'),
(28, 'Jenica Malveda', ' Calauan, Laguna', 'Polytechnic University of the Philippines', NULL, 'female', 'in a relationship'),
(29, 'Michael Bryan', 'Batangas', '', NULL, 'male', NULL),
(30, 'Reymark Vicente Morales', ' Viga, Catanduanes, Philippines', '', NULL, 'male', 'married'),
(31, 'Angelo Ramos Mendoza', 'Cavite, City', 'Cavite State University', NULL, 'male', 'single'),
(32, 'Justine Cruz', 'Quezon City, Philippines', '', NULL, 'male', 'in a relationship'),
(33, 'Ericka Venice Ocampo Seña', ' Indang', ' Holy Trinity University, Puerto Princesa City, Palawan', NULL, 'female', 'in a relationship'),
(34, 'Philip Simon Loyola', 'Cavite City, Cavite', '', NULL, 'male', 'in a relationship'),
(35, 'Er Mn', '', '', NULL, 'male', 'single'),
(36, 'RanRan Faminial', 'Llano, Caloocan, Philippines', '', NULL, 'male', 'single'),
(37, 'Leo Andrei Putungan', 'General Trias, Cavite', '', NULL, 'male', 'married'),
(38, 'Løyõlä Æ Mark', 'Viga, Catanduanes, Philippines', '', NULL, 'male', 'single'),
(39, 'Christopher Ramos', 'Lipa, Batangas', '', NULL, 'male', 'in a relationship'),
(40, 'Katherine B. Murillo', 'Viga, Catanduanes, Philippines', 'Central Luzon State University', NULL, 'female', 'single'),
(41, 'Jenica Malveda', ' Calauan, Laguna', 'Polytechnic University of the Philippines', NULL, 'female', 'in a relationship'),
(42, 'Michael Bryan', 'Batangas', '', NULL, 'male', NULL),
(43, 'Reymark Vicente Morales', ' Viga, Catanduanes, Philippines', '', NULL, 'male', 'married'),
(44, 'Angelo Ramos Mendoza', 'Cavite, City', 'Cavite State University', NULL, 'male', 'single'),
(45, 'Justine Cruz', 'Quezon City, Philippines', '', NULL, 'male', 'in a relationship'),
(46, 'Ericka Venice Ocampo Seña', ' Indang', ' Holy Trinity University, Puerto Princesa City, Palawan', NULL, 'female', 'in a relationship'),
(47, 'Philip Simon Loyola', 'Cavite City, Cavite', '', NULL, 'male', 'in a relationship'),
(48, 'RanRan Faminial', 'Llano, Caloocan, Philippines', '', NULL, 'male', 'single'),
(49, 'Leo Andrei Putungan', 'General Trias, Cavite', '', NULL, 'male', 'married'),
(50, 'Løyõlá Æ Mark', 'Viga, Catanduanes, Philippines', '', NULL, 'male', 'single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reacts`
--
ALTER TABLE `reacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `reacts`
--
ALTER TABLE `reacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reacts`
--
ALTER TABLE `reacts`
  ADD CONSTRAINT `reacts_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
