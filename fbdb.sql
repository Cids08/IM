-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2025 at 07:35 PM
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
-- Database: `fbdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`) VALUES
(1, 2, 1, 'Great post! Very informative!', '2025-04-19 10:00:00'),
(2, 5, 2, 'I totally agree with this!', '2025-04-19 10:05:00'),
(3, 1, 3, 'Amazing insights. Keep it up!', '2025-04-19 10:10:00'),
(4, 8, 4, 'I learned something new today, thanks!', '2025-04-19 10:15:00'),
(5, 4, 5, 'Looking forward to more posts like this!', '2025-04-19 10:20:00'),
(6, 3, 6, 'This is a great topic! Good read.', '2025-04-19 10:25:00'),
(7, 6, 7, 'Excellent post, I agree 100%.', '2025-04-19 10:30:00'),
(8, 7, 8, 'This was really helpful, thank you!', '2025-04-19 10:35:00'),
(9, 9, 1, 'I loved this article, very well written!', '2025-04-19 10:40:00'),
(10, 10, 2, 'I have a few thoughts on this, interesting perspective!', '2025-04-19 10:45:00'),
(11, 11, 3, 'Really good post, totally agree with your points.', '2025-04-20 10:50:00'),
(12, 12, 4, 'I think this could have been explained better, but still good.', '2025-04-20 10:55:00'),
(13, 13, 5, 'This was very insightful, keep posting like this!', '2025-04-20 11:00:00'),
(14, 14, 6, 'Such an interesting perspective, I’ve never thought of it this way.', '2025-04-20 11:05:00'),
(15, 15, 7, 'Very good, I would love to see more on this topic.', '2025-04-20 11:10:00'),
(16, 16, 8, 'Could you elaborate on the part about X? It was unclear.', '2025-04-20 11:15:00'),
(17, 17, 1, 'Your posts are always so on point, keep it up!', '2025-04-20 11:20:00'),
(18, 18, 2, 'Thanks for sharing, I will be sure to follow up on this.', '2025-04-20 11:25:00'),
(19, 19, 3, 'I didn’t quite understand the main point of the post.', '2025-04-20 11:30:00'),
(20, 20, 4, 'Very helpful, thanks for breaking it down.', '2025-04-20 11:35:00'),
(21, 2, 5, 'Great read, I learned a lot from this post.', '2025-04-21 11:40:00'),
(22, 4, 6, 'Your writing style is really engaging, keep it up!', '2025-04-21 11:45:00'),
(23, 5, 7, 'This is fantastic! I’m looking forward to more.', '2025-04-21 11:50:00'),
(24, 6, 8, 'I agree with most of the points, but have a few questions.', '2025-04-21 11:55:00'),
(25, 7, 1, 'This topic is very relevant, thank you for sharing!', '2025-04-21 12:00:00'),
(26, 8, 2, 'Really enjoyed reading this, thanks for posting!', '2025-04-21 12:05:00'),
(27, 9, 3, 'I learned something new today! Looking forward to your next post.', '2025-04-21 12:10:00'),
(28, 10, 4, 'I would love to hear more examples on this topic.', '2025-04-21 12:15:00'),
(29, 11, 5, 'Could you add some resources or links to help further? Thanks!', '2025-04-21 12:20:00'),
(30, 12, 6, 'Great post! But I have some doubts about the conclusion.', '2025-04-21 12:25:00'),
(31, 13, 7, 'This is an excellent topic, very well explained.', '2025-04-22 12:30:00'),
(32, 14, 8, 'Could you provide more details on the background information?', '2025-04-22 12:35:00'),
(33, 15, 1, 'I love the visuals in your post, very engaging.', '2025-04-22 12:40:00'),
(34, 16, 2, 'I totally see your point, but I have a different view on it.', '2025-04-22 12:45:00'),
(35, 17, 3, 'I disagree with part of your argument, but overall a solid post.', '2025-04-22 12:50:00'),
(36, 18, 4, 'Could you explain the difference between X and Y?', '2025-04-22 12:55:00'),
(37, 19, 5, 'Nice post! But I was hoping for more in-depth analysis.', '2025-04-22 13:00:00'),
(38, 20, 6, 'Great read, but I had trouble following some of the details.', '2025-04-22 13:05:00'),
(39, 1, 7, 'Such an interesting perspective, thanks for sharing.', '2025-04-23 13:10:00'),
(40, 2, 8, 'This post really made me think, great work!', '2025-04-23 13:15:00'),
(41, 3, 1, 'I have some similar experiences, thanks for sharing!', '2025-04-23 13:20:00'),
(42, 4, 2, 'Very detailed post, I can see the effort behind it.', '2025-04-23 13:25:00'),
(43, 5, 3, 'Looking forward to seeing more posts like this.', '2025-04-23 13:30:00'),
(44, 6, 4, 'I agree with most points, but I have a different take on X.', '2025-04-23 13:35:00'),
(45, 1, 147, 'Happy Birthday! Hope you have an amazing day!', '2025-04-29 10:00:00'),
(46, 2, 147, 'Wishing you all the best on your special day! Happy Birthday!', '2025-04-29 10:05:00'),
(47, 3, 147, 'Happy Birthday! Enjoy your day to the fullest!', '2025-04-29 10:10:00'),
(48, 4, 147, 'Sending you love and joy on your birthday! Happy Birthday!', '2025-04-29 10:15:00'),
(49, 5, 147, 'Cheers to you on your special day! Happy Birthday!', '2025-04-29 10:20:00'),
(50, 6, 147, 'Wishing you a day filled with love and laughter! Happy Birthday!', '2025-04-29 10:25:00'),
(51, 7, 147, 'Happy Birthday! May all your dreams come true today!', '2025-04-29 10:30:00'),
(52, 8, 147, 'Enjoy every moment of your special day! Happy Birthday!', '2025-04-29 10:35:00'),
(53, 9, 147, 'Hope this year brings you everything you wish for. Happy Birthday!', '2025-04-29 10:40:00'),
(54, 10, 147, 'Happy Birthday to one of the most amazing people I know! Have a fantastic day!', '2025-04-29 10:45:00'),
(55, 11, 147, 'Wishing you a birthday full of happiness and smiles! Happy Birthday!', '2025-04-29 10:50:00'),
(56, 12, 147, 'Have the happiest of birthdays! Enjoy your special day!', '2025-04-29 10:55:00'),
(57, 13, 147, 'Happy Birthday! May this year be the best one yet!', '2025-04-29 11:00:00'),
(58, 14, 147, 'Wishing you nothing but joy and success this year. Happy Birthday!', '2025-04-29 11:05:00'),
(59, 15, 147, 'Happy Birthday! May you have a year filled with health, wealth, and happiness!', '2025-04-29 11:10:00'),
(60, 16, 147, 'Happy Birthday! Let’s celebrate YOU today!', '2025-04-29 11:15:00'),
(61, 17, 147, 'Another year older, another year wiser. Happy Birthday!', '2025-04-29 11:20:00'),
(62, 18, 147, 'Wishing you a fun-filled birthday and a wonderful year ahead!', '2025-04-29 11:25:00'),
(63, 19, 147, 'Enjoy your day to the fullest! Happy Birthday!', '2025-04-29 11:30:00'),
(64, 20, 147, 'Wishing you love, laughter, and all things wonderful on your special day! Happy Birthday!', '2025-04-29 11:35:00'),
(65, 21, 147, 'May your birthday be the start of a year filled with happiness and good times. Happy Birthday!', '2025-04-29 11:40:00'),
(66, 22, 147, 'Here’s to another year of amazing memories! Happy Birthday!', '2025-04-29 11:45:00'),
(67, 23, 147, 'Hope your day is as special as you are! Happy Birthday!', '2025-04-29 11:50:00'),
(68, 24, 147, 'Wishing you a birthday that’s as incredible as you are! Happy Birthday!', '2025-04-29 11:55:00'),
(69, 25, 147, 'Here’s to a year of love, laughter, and happiness. Happy Birthday!', '2025-04-29 12:00:00'),
(70, 26, 147, 'Happy Birthday! May your day be as bright as your smile!', '2025-04-29 12:05:00'),
(71, 27, 147, 'Sending birthday wishes filled with love and joy. Have a fantastic day!', '2025-04-29 12:10:00'),
(72, 28, 147, 'Happy Birthday! Let’s make this year unforgettable!', '2025-04-29 12:15:00'),
(73, 29, 147, 'Wishing you the happiest of birthdays and a year filled with blessings!', '2025-04-29 12:20:00'),
(74, 30, 147, 'Cheers to another amazing year! Happy Birthday!', '2025-04-29 12:25:00'),
(75, 31, 147, 'Happy Birthday! I hope all your wishes come true today and always!', '2025-04-29 12:30:00'),
(76, 32, 147, 'May your day be filled with love, joy, and lots of cake! Happy Birthday!', '2025-04-29 12:35:00'),
(77, 33, 147, 'Hope you have a fun-filled day and a year full of happiness. Happy Birthday!', '2025-04-29 12:40:00'),
(78, 34, 147, 'Enjoy your special day, and may it be the start of a beautiful year ahead. Happy Birthday!', '2025-04-29 12:45:00'),
(79, 35, 147, 'Happy Birthday! Wishing you a lifetime of happiness and success!', '2025-04-29 12:50:00'),
(80, 36, 147, 'May this year be filled with exciting adventures. Happy Birthday!', '2025-04-29 12:55:00'),
(81, 37, 147, 'Here’s to celebrating YOU today! Happy Birthday!', '2025-04-29 13:00:00'),
(82, 38, 147, 'Hope your birthday is filled with love, laughter, and unforgettable moments!', '2025-04-29 13:05:00'),
(83, 39, 147, 'May this birthday bring you all the joy in the world. Happy Birthday!', '2025-04-29 13:10:00'),
(84, 40, 147, 'Sending you the best birthday wishes! Hope your day is as awesome as you are!', '2025-04-29 13:15:00'),
(85, 41, 147, 'Happy Birthday! Wishing you a day full of happiness and laughter!', '2025-04-29 13:20:00'),
(86, 42, 147, 'Another year older, but always young at heart. Happy Birthday!', '2025-04-29 13:25:00'),
(87, 43, 147, 'Hope your birthday is as wonderful as you are. Enjoy every moment!', '2025-04-29 13:30:00'),
(88, 44, 147, 'Wishing you a year full of happiness and exciting adventures! Happy Birthday!', '2025-04-29 13:35:00'),
(89, 45, 147, 'Happy Birthday! May all your dreams come true this year!', '2025-04-29 13:40:00'),
(90, 46, 147, 'Wishing you a day filled with love, laughter, and all your favorite things! Happy Birthday!', '2025-04-29 13:45:00'),
(91, 47, 147, 'Happy Birthday to someone truly special! May this year be your best one yet!', '2025-04-29 13:50:00'),
(92, 8, 147, '', '2025-04-29 11:35:00'),
(93, 8, 147, '', '2025-04-25 12:35:00'),
(94, 8, 147, '', '2025-04-22 03:35:00'),
(95, 8, 147, '', '2025-04-21 10:35:00'),
(96, 8, 147, '', '2025-04-25 01:35:00'),
(97, 8, 147, 'Thank you so much, Christian Polytechnic Institute of Catanduanes', '2025-04-26 02:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`) VALUES
(1, 2, 1, '2025-04-29 21:17:55'),
(2, 3, 1, '2025-04-29 21:17:55'),
(3, 4, 1, '2025-04-29 21:17:55'),
(4, 5, 1, '2025-04-29 21:17:55'),
(5, 6, 1, '2025-04-29 21:17:55'),
(6, 7, 1, '2025-04-29 21:17:55'),
(7, 8, 1, '2025-04-29 21:17:55'),
(8, 9, 1, '2025-04-29 21:17:55'),
(9, 10, 1, '2025-04-29 21:17:55'),
(10, 11, 1, '2025-04-29 21:17:55'),
(11, 12, 1, '2025-04-29 21:17:55'),
(12, 13, 1, '2025-04-29 21:17:55'),
(13, 14, 1, '2025-04-29 21:17:55'),
(14, 15, 1, '2025-04-29 21:17:55'),
(15, 16, 1, '2025-04-29 21:17:55'),
(16, 17, 1, '2025-04-29 21:17:55'),
(17, 18, 1, '2025-04-29 21:17:55'),
(18, 19, 1, '2025-04-29 21:17:55'),
(19, 20, 1, '2025-04-29 21:17:55'),
(20, 21, 1, '2025-04-29 21:17:55'),
(21, 22, 1, '2025-04-29 21:17:55'),
(22, 23, 1, '2025-04-29 21:17:55'),
(23, 24, 1, '2025-04-29 21:17:55'),
(24, 25, 1, '2025-04-29 21:17:55'),
(25, 26, 1, '2025-04-29 21:17:55'),
(26, 27, 1, '2025-04-29 21:17:55'),
(27, 28, 1, '2025-04-29 21:17:55'),
(28, 29, 1, '2025-04-29 21:17:55'),
(29, 30, 1, '2025-04-29 21:17:55'),
(30, 31, 1, '2025-04-29 21:17:55'),
(31, 32, 1, '2025-04-29 21:17:55'),
(32, 33, 1, '2025-04-29 21:17:55'),
(33, 34, 1, '2025-04-29 21:17:55'),
(34, 35, 1, '2025-04-29 21:17:55'),
(35, 36, 1, '2025-04-29 21:17:55'),
(36, 37, 1, '2025-04-29 21:17:55'),
(37, 38, 1, '2025-04-29 21:17:55'),
(38, 1, 1, '2025-04-29 23:18:11'),
(39, 2, 1, '2025-04-29 23:18:11'),
(40, 3, 1, '2025-04-29 23:18:11'),
(41, 1, 146, '2025-04-19 10:00:00'),
(42, 2, 146, '2025-04-19 10:05:00'),
(43, 3, 146, '2025-04-19 10:10:00'),
(44, 4, 146, '2025-04-19 10:15:00'),
(45, 5, 146, '2025-04-19 10:20:00'),
(46, 6, 146, '2025-04-19 10:25:00'),
(47, 7, 146, '2025-04-19 10:30:00'),
(48, 8, 146, '2025-04-19 10:35:00'),
(49, 9, 146, '2025-04-19 10:40:00'),
(50, 10, 146, '2025-04-19 10:45:00'),
(51, 11, 146, '2025-04-19 10:50:00'),
(52, 12, 146, '2025-04-19 10:55:00'),
(53, 13, 146, '2025-04-19 11:00:00'),
(54, 14, 146, '2025-04-19 11:05:00'),
(55, 15, 146, '2025-04-19 11:10:00'),
(56, 16, 146, '2025-04-19 11:15:00'),
(57, 17, 146, '2025-04-19 11:20:00'),
(58, 18, 146, '2025-04-19 11:25:00'),
(59, 19, 146, '2025-04-19 11:30:00'),
(60, 20, 146, '2025-04-19 11:35:00'),
(61, 21, 146, '2025-04-19 11:40:00'),
(62, 22, 146, '2025-04-19 11:45:00'),
(63, 23, 146, '2025-04-19 11:50:00'),
(64, 24, 146, '2025-04-19 11:55:00'),
(65, 25, 146, '2025-04-19 12:00:00'),
(66, 26, 146, '2025-04-19 12:05:00'),
(67, 27, 146, '2025-04-19 12:10:00'),
(68, 28, 146, '2025-04-19 12:15:00'),
(69, 29, 146, '2025-04-19 12:20:00'),
(70, 30, 146, '2025-04-19 12:25:00'),
(71, 31, 146, '2025-04-19 12:30:00'),
(72, 32, 146, '2025-04-19 12:35:00'),
(73, 33, 146, '2025-04-19 12:40:00'),
(74, 34, 146, '2025-04-19 12:45:00'),
(75, 35, 146, '2025-04-19 12:50:00'),
(76, 36, 146, '2025-04-19 12:55:00'),
(77, 37, 146, '2025-04-19 13:00:00'),
(78, 38, 146, '2025-04-19 13:05:00'),
(79, 39, 146, '2025-04-19 13:10:00'),
(80, 40, 146, '2025-04-19 13:15:00'),
(81, 41, 146, '2025-04-19 13:20:00'),
(82, 42, 146, '2025-04-19 13:25:00'),
(83, 43, 146, '2025-04-19 13:30:00'),
(84, 44, 146, '2025-04-19 13:35:00'),
(85, 45, 146, '2025-04-19 13:40:00'),
(86, 46, 146, '2025-04-19 13:45:00'),
(87, 47, 146, '2025-04-19 13:50:00'),
(89, 49, 146, '2025-04-19 14:00:00'),
(90, 50, 146, '2025-04-19 14:05:00'),
(91, 1, 146, '2025-04-19 10:00:00'),
(92, 2, 146, '2025-04-19 10:05:00'),
(93, 3, 146, '2025-04-19 10:10:00'),
(94, 4, 146, '2025-04-19 10:15:00'),
(95, 5, 146, '2025-04-19 10:20:00'),
(96, 6, 146, '2025-04-19 10:25:00'),
(97, 7, 146, '2025-04-19 10:30:00'),
(98, 8, 146, '2025-04-19 10:35:00'),
(99, 9, 146, '2025-04-19 10:40:00'),
(100, 10, 146, '2025-04-19 10:45:00'),
(101, 11, 146, '2025-04-19 10:50:00'),
(102, 12, 146, '2025-04-19 10:55:00'),
(103, 13, 146, '2025-04-19 11:00:00'),
(104, 14, 146, '2025-04-19 11:05:00'),
(105, 15, 146, '2025-04-19 11:10:00'),
(106, 16, 146, '2025-04-19 11:15:00'),
(107, 17, 146, '2025-04-19 11:20:00'),
(108, 18, 146, '2025-04-19 11:25:00'),
(109, 19, 146, '2025-04-19 11:30:00'),
(110, 20, 146, '2025-04-19 11:35:00'),
(111, 21, 146, '2025-04-19 11:40:00'),
(112, 22, 146, '2025-04-19 11:45:00'),
(113, 23, 146, '2025-04-19 11:50:00'),
(114, 24, 146, '2025-04-19 11:55:00'),
(115, 25, 146, '2025-04-19 12:00:00'),
(116, 26, 146, '2025-04-19 12:05:00'),
(117, 27, 146, '2025-04-19 12:10:00'),
(118, 28, 146, '2025-04-19 12:15:00'),
(119, 29, 146, '2025-04-19 12:20:00'),
(120, 30, 146, '2025-04-19 12:25:00'),
(121, 31, 146, '2025-04-19 12:30:00'),
(122, 32, 146, '2025-04-19 12:35:00'),
(123, 33, 146, '2025-04-19 12:40:00'),
(124, 34, 146, '2025-04-19 12:45:00'),
(125, 35, 146, '2025-04-19 12:50:00'),
(126, 36, 146, '2025-04-19 12:55:00'),
(127, 37, 146, '2025-04-19 13:00:00'),
(128, 38, 146, '2025-04-19 13:05:00'),
(129, 39, 146, '2025-04-19 13:10:00'),
(130, 40, 146, '2025-04-19 13:15:00'),
(131, 41, 146, '2025-04-19 13:20:00'),
(132, 42, 146, '2025-04-19 13:25:00'),
(133, 43, 146, '2025-04-19 13:30:00'),
(134, 44, 146, '2025-04-19 13:35:00'),
(135, 45, 146, '2025-04-19 13:40:00'),
(136, 46, 146, '2025-04-19 13:45:00'),
(137, 47, 146, '2025-04-19 13:50:00'),
(138, 49, 146, '2025-04-19 14:00:00'),
(139, 50, 146, '2025-04-19 14:05:00'),
(140, 1, 147, '2025-04-29 10:00:00'),
(141, 2, 147, '2025-04-29 10:05:00'),
(142, 3, 147, '2025-04-29 10:10:00'),
(143, 4, 147, '2025-04-29 10:15:00'),
(144, 5, 147, '2025-04-29 10:20:00'),
(145, 6, 147, '2025-04-29 10:25:00'),
(146, 7, 147, '2025-04-29 10:30:00'),
(147, 8, 147, '2025-04-29 10:35:00'),
(148, 9, 147, '2025-04-29 10:40:00'),
(149, 10, 147, '2025-04-29 10:45:00'),
(150, 11, 147, '2025-04-29 10:50:00'),
(151, 12, 147, '2025-04-29 10:55:00'),
(152, 13, 147, '2025-04-29 11:00:00'),
(153, 14, 147, '2025-04-29 11:05:00'),
(154, 15, 147, '2025-04-29 11:10:00'),
(155, 16, 147, '2025-04-29 11:15:00'),
(156, 17, 147, '2025-04-29 11:20:00'),
(157, 18, 147, '2025-04-29 11:25:00'),
(158, 19, 147, '2025-04-29 11:30:00'),
(159, 20, 147, '2025-04-29 11:35:00'),
(160, 21, 147, '2025-04-29 11:40:00'),
(161, 22, 147, '2025-04-29 11:45:00'),
(162, 23, 147, '2025-04-29 11:50:00'),
(163, 24, 147, '2025-04-29 11:55:00'),
(164, 25, 147, '2025-04-29 12:00:00'),
(165, 26, 147, '2025-04-29 12:05:00'),
(166, 27, 147, '2025-04-29 12:10:00'),
(167, 28, 147, '2025-04-29 12:15:00'),
(168, 29, 147, '2025-04-29 12:20:00'),
(169, 30, 147, '2025-04-29 12:25:00'),
(170, 31, 147, '2025-04-29 12:30:00'),
(171, 32, 147, '2025-04-29 12:35:00'),
(172, 33, 147, '2025-04-29 12:40:00'),
(173, 34, 147, '2025-04-29 12:45:00'),
(174, 35, 147, '2025-04-29 12:50:00'),
(175, 36, 147, '2025-04-29 12:55:00'),
(176, 37, 147, '2025-04-29 13:00:00'),
(177, 38, 147, '2025-04-29 13:05:00'),
(178, 39, 147, '2025-04-29 13:10:00'),
(179, 40, 147, '2025-04-29 13:15:00'),
(180, 41, 147, '2025-04-29 13:20:00'),
(181, 42, 147, '2025-04-29 13:25:00'),
(182, 43, 147, '2025-04-29 13:30:00'),
(183, 44, 147, '2025-04-29 13:35:00'),
(184, 45, 147, '2025-04-29 13:40:00'),
(185, 46, 147, '2025-04-29 13:45:00'),
(186, 47, 147, '2025-04-29 13:50:00'),
(188, 49, 147, '2025-04-29 14:00:00'),
(189, 50, 147, '2025-04-29 14:05:00'),
(190, 51, 147, '2025-04-29 14:10:00'),
(191, 1, 147, '2025-04-29 10:00:00'),
(192, 2, 147, '2025-04-29 10:05:00'),
(193, 3, 147, '2025-04-29 10:10:00'),
(194, 4, 147, '2025-04-29 10:15:00'),
(195, 5, 147, '2025-04-29 10:20:00'),
(196, 6, 147, '2025-04-29 10:25:00'),
(197, 7, 147, '2025-04-29 10:30:00'),
(198, 8, 147, '2025-04-29 10:35:00'),
(199, 9, 147, '2025-04-29 10:40:00'),
(200, 10, 147, '2025-04-29 10:45:00'),
(201, 11, 147, '2025-04-29 10:50:00'),
(202, 12, 147, '2025-04-29 10:55:00'),
(203, 13, 147, '2025-04-29 11:00:00'),
(204, 14, 147, '2025-04-29 11:05:00'),
(205, 15, 147, '2025-04-29 11:10:00'),
(206, 16, 147, '2025-04-29 11:15:00'),
(207, 17, 147, '2025-04-29 11:20:00'),
(208, 18, 147, '2025-04-29 11:25:00'),
(209, 19, 147, '2025-04-29 11:30:00'),
(210, 20, 147, '2025-04-29 11:35:00'),
(211, 21, 147, '2025-04-29 11:40:00'),
(212, 22, 147, '2025-04-29 11:45:00'),
(213, 23, 147, '2025-04-29 11:50:00'),
(214, 24, 147, '2025-04-29 11:55:00'),
(215, 25, 147, '2025-04-29 12:00:00'),
(216, 26, 147, '2025-04-29 12:05:00'),
(217, 27, 147, '2025-04-29 12:10:00'),
(218, 28, 147, '2025-04-29 12:15:00'),
(219, 29, 147, '2025-04-29 12:20:00'),
(220, 30, 147, '2025-04-29 12:25:00'),
(221, 31, 147, '2025-04-29 12:30:00'),
(222, 32, 147, '2025-04-29 12:35:00'),
(223, 33, 147, '2025-04-29 12:40:00'),
(224, 34, 147, '2025-04-29 12:45:00'),
(225, 35, 147, '2025-04-29 12:50:00'),
(226, 36, 147, '2025-04-29 12:55:00'),
(227, 37, 147, '2025-04-29 13:00:00'),
(228, 38, 147, '2025-04-29 13:05:00'),
(229, 39, 147, '2025-04-29 13:10:00'),
(230, 40, 147, '2025-04-29 13:15:00'),
(231, 41, 147, '2025-04-29 13:20:00'),
(232, 42, 147, '2025-04-29 13:25:00'),
(233, 43, 147, '2025-04-29 13:30:00'),
(234, 44, 147, '2025-04-29 13:35:00'),
(235, 45, 147, '2025-04-29 13:40:00'),
(236, 46, 147, '2025-04-29 13:45:00'),
(237, 47, 147, '2025-04-29 13:50:00'),
(238, 49, 147, '2025-04-29 14:00:00'),
(239, 50, 147, '2025-04-29 14:05:00'),
(240, 51, 147, '2025-04-29 14:10:00'),
(242, 1, 147, '2025-04-29 10:00:00'),
(243, 2, 147, '2025-04-29 10:05:00'),
(244, 3, 147, '2025-04-29 10:10:00'),
(245, 4, 147, '2025-04-29 10:15:00'),
(246, 5, 147, '2025-04-29 10:20:00'),
(247, 6, 147, '2025-04-29 10:25:00'),
(248, 7, 147, '2025-04-29 10:30:00'),
(249, 8, 147, '2025-04-29 10:35:00'),
(250, 9, 147, '2025-04-29 10:40:00'),
(251, 10, 147, '2025-04-29 10:45:00'),
(252, 11, 147, '2025-04-29 10:50:00'),
(253, 12, 147, '2025-04-29 10:55:00'),
(254, 13, 147, '2025-04-29 11:00:00'),
(255, 14, 147, '2025-04-29 11:05:00'),
(256, 15, 147, '2025-04-29 11:10:00'),
(257, 16, 147, '2025-04-29 11:15:00'),
(258, 17, 147, '2025-04-29 11:20:00'),
(259, 18, 147, '2025-04-29 11:25:00'),
(260, 19, 147, '2025-04-29 11:30:00'),
(261, 20, 147, '2025-04-29 11:35:00'),
(262, 21, 147, '2025-04-29 11:40:00'),
(263, 22, 147, '2025-04-29 11:45:00'),
(264, 23, 147, '2025-04-29 11:50:00'),
(265, 24, 147, '2025-04-29 11:55:00'),
(266, 25, 147, '2025-04-29 12:00:00'),
(267, 26, 147, '2025-04-29 12:05:00'),
(268, 27, 147, '2025-04-29 12:10:00'),
(269, 28, 147, '2025-04-29 12:15:00'),
(270, 29, 147, '2025-04-29 12:20:00'),
(271, 30, 147, '2025-04-29 12:25:00'),
(272, 31, 147, '2025-04-29 12:30:00'),
(273, 32, 147, '2025-04-29 12:35:00'),
(274, 33, 147, '2025-04-29 12:40:00'),
(275, 34, 147, '2025-04-29 12:45:00'),
(276, 35, 147, '2025-04-29 12:50:00'),
(277, 36, 147, '2025-04-29 12:55:00'),
(278, 37, 147, '2025-04-29 13:00:00'),
(279, 38, 147, '2025-04-29 13:05:00'),
(280, 39, 147, '2025-04-29 13:10:00'),
(281, 40, 147, '2025-04-29 13:15:00'),
(282, 41, 147, '2025-04-29 13:20:00'),
(283, 42, 147, '2025-04-29 13:25:00'),
(284, 43, 147, '2025-04-29 13:30:00'),
(285, 44, 147, '2025-04-29 13:35:00'),
(286, 45, 147, '2025-04-29 13:40:00'),
(287, 46, 147, '2025-04-29 13:45:00'),
(288, 47, 147, '2025-04-29 13:50:00'),
(289, 49, 147, '2025-04-29 14:00:00'),
(290, 50, 147, '2025-04-29 14:05:00'),
(291, 51, 147, '2025-04-29 14:10:00'),
(292, 1, 147, '2025-04-29 10:00:00'),
(293, 2, 147, '2025-04-29 10:05:00'),
(294, 3, 147, '2025-04-29 10:10:00'),
(295, 4, 147, '2025-04-29 10:15:00'),
(296, 5, 147, '2025-04-29 10:20:00'),
(297, 6, 147, '2025-04-29 10:25:00'),
(298, 7, 147, '2025-04-29 10:30:00'),
(299, 8, 147, '2025-04-29 10:35:00'),
(300, 9, 147, '2025-04-29 10:40:00'),
(301, 10, 147, '2025-04-29 10:45:00'),
(302, 11, 147, '2025-04-29 10:50:00'),
(303, 12, 147, '2025-04-29 10:55:00'),
(304, 13, 147, '2025-04-29 11:00:00'),
(305, 14, 147, '2025-04-29 11:05:00'),
(306, 15, 147, '2025-04-29 11:10:00'),
(307, 16, 147, '2025-04-29 11:15:00'),
(308, 17, 147, '2025-04-29 11:20:00'),
(309, 18, 147, '2025-04-29 11:25:00'),
(310, 19, 147, '2025-04-29 11:30:00'),
(311, 20, 147, '2025-04-29 11:35:00'),
(312, 21, 147, '2025-04-29 11:40:00'),
(313, 22, 147, '2025-04-29 11:45:00'),
(314, 23, 147, '2025-04-29 11:50:00'),
(315, 24, 147, '2025-04-29 11:55:00'),
(316, 25, 147, '2025-04-29 12:00:00'),
(317, 26, 147, '2025-04-29 12:05:00'),
(318, 27, 147, '2025-04-29 12:10:00'),
(319, 28, 147, '2025-04-29 12:15:00'),
(320, 29, 147, '2025-04-29 12:20:00'),
(321, 30, 147, '2025-04-29 12:25:00'),
(322, 31, 147, '2025-04-29 12:30:00'),
(323, 32, 147, '2025-04-29 12:35:00'),
(324, 33, 147, '2025-04-29 12:40:00'),
(325, 34, 147, '2025-04-29 12:45:00'),
(326, 35, 147, '2025-04-29 12:50:00'),
(327, 36, 147, '2025-04-29 12:55:00'),
(328, 37, 147, '2025-04-29 13:00:00'),
(329, 38, 147, '2025-04-29 13:05:00'),
(330, 39, 147, '2025-04-29 13:10:00'),
(331, 40, 147, '2025-04-29 13:15:00'),
(332, 41, 147, '2025-04-29 13:20:00'),
(333, 42, 147, '2025-04-29 13:25:00'),
(334, 43, 147, '2025-04-29 13:30:00'),
(335, 44, 147, '2025-04-29 13:35:00'),
(336, 45, 147, '2025-04-29 13:40:00'),
(337, 46, 147, '2025-04-29 13:45:00'),
(338, 47, 147, '2025-04-29 13:50:00'),
(339, 49, 147, '2025-04-29 14:00:00'),
(340, 50, 147, '2025-04-29 14:05:00'),
(341, 51, 147, '2025-04-29 14:10:00'),
(342, 1, 147, '2025-04-29 10:00:00'),
(343, 2, 147, '2025-04-29 10:05:00'),
(344, 3, 147, '2025-04-29 10:10:00'),
(345, 4, 147, '2025-04-29 10:15:00'),
(346, 5, 147, '2025-04-29 10:20:00'),
(347, 6, 147, '2025-04-29 10:25:00'),
(348, 7, 147, '2025-04-29 10:30:00'),
(349, 8, 147, '2025-04-29 10:35:00'),
(350, 9, 147, '2025-04-29 10:40:00'),
(351, 10, 147, '2025-04-29 10:45:00'),
(352, 11, 147, '2025-04-29 10:50:00'),
(353, 12, 147, '2025-04-29 10:55:00'),
(354, 13, 147, '2025-04-29 11:00:00'),
(355, 14, 147, '2025-04-29 11:05:00'),
(356, 15, 147, '2025-04-29 11:10:00'),
(357, 16, 147, '2025-04-29 11:15:00'),
(358, 17, 147, '2025-04-29 11:20:00'),
(359, 18, 147, '2025-04-29 11:25:00'),
(360, 19, 147, '2025-04-29 11:30:00'),
(361, 20, 147, '2025-04-29 11:35:00'),
(362, 21, 147, '2025-04-29 11:40:00'),
(363, 22, 147, '2025-04-29 11:45:00'),
(364, 23, 147, '2025-04-29 11:50:00'),
(365, 24, 147, '2025-04-29 11:55:00'),
(366, 25, 147, '2025-04-29 12:00:00'),
(367, 26, 147, '2025-04-29 12:05:00'),
(368, 27, 147, '2025-04-29 12:10:00'),
(369, 28, 147, '2025-04-29 12:15:00'),
(370, 29, 147, '2025-04-29 12:20:00'),
(371, 30, 147, '2025-04-29 12:25:00'),
(372, 31, 147, '2025-04-29 12:30:00'),
(373, 32, 147, '2025-04-29 12:35:00'),
(374, 33, 147, '2025-04-29 12:40:00'),
(375, 34, 147, '2025-04-29 12:45:00'),
(376, 35, 147, '2025-04-29 12:50:00'),
(377, 36, 147, '2025-04-29 12:55:00'),
(378, 37, 147, '2025-04-29 13:00:00'),
(379, 38, 147, '2025-04-29 13:05:00'),
(380, 39, 147, '2025-04-29 13:10:00'),
(381, 40, 147, '2025-04-29 13:15:00'),
(382, 41, 147, '2025-04-29 13:20:00'),
(383, 42, 147, '2025-04-29 13:25:00'),
(384, 43, 147, '2025-04-29 13:30:00'),
(385, 44, 147, '2025-04-29 13:35:00'),
(386, 45, 147, '2025-04-29 13:40:00'),
(387, 46, 147, '2025-04-29 13:45:00'),
(388, 47, 147, '2025-04-29 13:50:00'),
(389, 49, 147, '2025-04-29 14:00:00'),
(390, 50, 147, '2025-04-29 14:05:00'),
(391, 51, 147, '2025-04-29 14:10:00'),
(392, 1, 101, '2025-04-29 10:00:00'),
(393, 2, 102, '2025-04-29 10:05:00'),
(394, 3, 103, '2025-04-29 10:10:00'),
(395, 4, 104, '2025-04-29 10:15:00'),
(396, 5, 105, '2025-04-29 10:20:00'),
(397, 6, 106, '2025-04-29 10:25:00'),
(398, 7, 107, '2025-04-29 10:30:00'),
(399, 8, 108, '2025-04-29 10:35:00'),
(400, 9, 109, '2025-04-29 10:40:00'),
(401, 10, 110, '2025-04-29 10:45:00'),
(402, 11, 111, '2025-04-29 10:50:00'),
(403, 12, 112, '2025-04-29 10:55:00'),
(404, 13, 113, '2025-04-29 11:00:00'),
(405, 14, 114, '2025-04-29 11:05:00'),
(406, 15, 115, '2025-04-29 11:10:00'),
(407, 16, 116, '2025-04-29 11:15:00'),
(408, 17, 117, '2025-04-29 11:20:00'),
(409, 18, 118, '2025-04-29 11:25:00'),
(410, 19, 119, '2025-04-29 11:30:00'),
(411, 20, 120, '2025-04-29 11:35:00'),
(412, 21, 121, '2025-04-29 11:40:00'),
(413, 22, 122, '2025-04-29 11:45:00'),
(414, 23, 123, '2025-04-29 11:50:00'),
(415, 24, 124, '2025-04-29 11:55:00'),
(416, 25, 125, '2025-04-29 12:00:00'),
(417, 26, 126, '2025-04-29 12:05:00'),
(418, 27, 127, '2025-04-29 12:10:00'),
(419, 28, 128, '2025-04-29 12:15:00'),
(420, 29, 129, '2025-04-29 12:20:00'),
(421, 30, 130, '2025-04-29 12:25:00'),
(422, 31, 131, '2025-04-29 12:30:00'),
(423, 32, 132, '2025-04-29 12:35:00'),
(424, 33, 133, '2025-04-29 12:40:00'),
(425, 34, 134, '2025-04-29 12:45:00'),
(426, 35, 135, '2025-04-29 12:50:00'),
(427, 36, 136, '2025-04-29 12:55:00'),
(428, 37, 137, '2025-04-29 13:00:00'),
(429, 38, 138, '2025-04-29 13:05:00'),
(430, 39, 139, '2025-04-29 13:10:00'),
(431, 40, 140, '2025-04-29 13:15:00'),
(432, 41, 141, '2025-04-29 13:20:00'),
(433, 42, 142, '2025-04-29 13:25:00'),
(434, 43, 143, '2025-04-29 13:30:00'),
(435, 44, 144, '2025-04-29 13:35:00'),
(436, 45, 145, '2025-04-29 13:40:00'),
(437, 46, 146, '2025-04-29 13:45:00'),
(438, 47, 147, '2025-04-29 13:50:00'),
(439, 49, 149, '2025-04-29 14:00:00'),
(440, 50, 150, '2025-04-29 14:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `created_at`) VALUES
(1, 1, 'ay di pala .5 ', '2025-04-06 20:35:00'),
(2, 1, 'updated her profile picture', '2025-02-21 00:00:00'),
(3, 1, 'shared a memory', '2025-02-11 00:00:00'),
(4, 2, 'shared a live', '2025-04-18 12:48:00'),
(5, 2, 'shared a post', '2025-04-13 20:57:00'),
(6, 2, 'shared a post', '2025-04-13 19:11:00'),
(7, 3, 'TShared a post.', '2025-04-26 14:44:00'),
(8, 3, 'TShared a post.', '2025-04-26 07:39:00'),
(9, 3, 'TShared a post.', '2025-04-19 12:06:00'),
(10, 5, 'plot twist', '2025-04-28 16:40:00'),
(11, 5, 'huna ko ako sana naka pansin HAHA', '2025-04-28 10:57:00'),
(12, 5, '1-3', '2025-04-28 10:56:00'),
(13, 5, '🫶💗', '2025-04-23 20:24:00'),
(14, 5, 'chicken curry namnamnam', '2025-04-23 12:25:00'),
(15, 5, 'bungguan na lang ano?', '2025-04-22 07:01:00'),
(16, 5, 'ket online namomolestya', '2025-04-22 13:50:00'),
(17, 25, 'Amazing post! Really loved reading this.', '2025-04-19 12:00:00'),
(18, 26, 'This is a great read, I have learned a lot from it!', '2025-04-19 12:05:00'),
(19, 27, 'Very insightful and well-researched. Keep it up!', '2025-04-19 12:10:00'),
(20, 28, 'Love the details you shared in this post, so helpful!', '2025-04-19 12:15:00'),
(21, 29, 'Your posts are always so informative and well-written.', '2025-04-19 12:20:00'),
(22, 30, 'Very useful post! I will definitely share it with others.', '2025-04-19 12:25:00'),
(23, 31, 'Thanks for the detailed analysis! Very clear and easy to follow.', '2025-04-19 12:30:00'),
(24, 32, 'A very engaging post! Looking forward to the next one.', '2025-04-19 12:35:00'),
(25, 33, 'I have been following your posts for a while, and they never disappoint!', '2025-04-19 12:40:00'),
(26, 34, 'Your writing is very engaging, I could read your posts all day!', '2025-04-19 12:45:00'),
(27, 35, 'This topic is so relevant to me, thanks for posting!', '2025-04-20 13:00:00'),
(28, 36, 'Such an eye-opening post! I’ve learned so much.', '2025-04-20 13:05:00'),
(29, 37, 'You’ve really done a great job at explaining this topic.', '2025-04-20 13:10:00'),
(30, 38, 'I enjoyed reading this post, very informative.', '2025-04-20 13:15:00'),
(31, 39, 'I would love to read more posts like this one!', '2025-04-20 13:20:00'),
(32, 40, 'Thanks for breaking it down so simply. Great work!', '2025-04-20 13:25:00'),
(33, 41, 'This post is so helpful, I’ve bookmarked it for later.', '2025-04-20 13:30:00'),
(34, 42, 'Excellent content, keep it coming! I’m always eager to read more.', '2025-04-20 13:35:00'),
(35, 43, 'Very insightful post. Thanks for sharing!', '2025-04-20 13:40:00'),
(36, 44, 'I totally agree with you on this. Very well written.', '2025-04-20 13:45:00'),
(37, 45, 'I learned a lot today, thank you for sharing this.', '2025-04-21 13:50:00'),
(38, 46, 'Great post! Really resonates with me.', '2025-04-21 13:55:00'),
(39, 47, 'This is exactly what I needed to hear, thank you!', '2025-04-21 14:00:00'),
(41, 45, 'I learned a lot today, thank you for sharing this.', '2025-04-21 13:50:00'),
(42, 46, 'Great post! Really resonates with me.', '2025-04-21 13:55:00'),
(43, 47, 'This is exactly what I needed to hear, thank you!', '2025-04-21 14:00:00'),
(45, 45, 'I learned a lot today, thank you for sharing this.', '2025-04-21 13:50:00'),
(46, 46, 'Great post! Really resonates with me.', '2025-04-21 13:55:00'),
(47, 47, 'This is exactly what I needed to hear, thank you!', '2025-04-21 14:00:00'),
(48, 49, 'Your post is so on point, I’m excited for the next one!', '2025-04-21 14:10:00'),
(49, 50, 'This is exactly the type of content I look for. Great work!', '2025-04-21 14:15:00'),
(50, 25, 'Fantastic post! I really enjoyed reading it.', '2025-04-22 14:20:00'),
(51, 26, 'You make such complicated topics so easy to understand, thanks!', '2025-04-22 14:25:00'),
(52, 27, 'This post made me think deeply about this topic. Great read!', '2025-04-22 14:30:00'),
(53, 28, 'Loved the post! Very helpful and clear.', '2025-04-22 14:35:00'),
(54, 29, 'Great topic, keep up the awesome work!', '2025-04-22 14:40:00'),
(55, 30, 'I’m bookmarking this post for sure. So helpful!', '2025-04-22 14:45:00'),
(56, 31, 'I’ve learned so much from your posts, keep it going!', '2025-04-22 14:50:00'),
(57, 32, 'This post gave me a fresh perspective. Thank you for sharing!', '2025-04-22 14:55:00'),
(58, 33, 'Very interesting! I’ll be following for more content like this.', '2025-04-22 15:00:00'),
(59, 34, 'Such a thoughtful post, thanks for sharing your knowledge.', '2025-04-22 15:05:00'),
(60, 35, 'Very helpful post! I look forward to reading more from you.', '2025-04-23 15:10:00'),
(61, 36, 'Your posts are always so well-organized. I really appreciate it.', '2025-04-23 15:15:00'),
(62, 37, 'This post was exactly what I needed today, thank you!', '2025-04-23 15:20:00'),
(63, 38, 'Your writing is so clear and easy to digest. Awesome job!', '2025-04-23 15:25:00'),
(64, 39, 'You’ve nailed this topic, looking forward to more!', '2025-04-23 15:30:00'),
(65, 40, 'So inspiring! I can’t wait for your next post.', '2025-04-23 15:35:00'),
(66, 41, 'This post has great potential, excited to see more content like this!', '2025-04-23 15:40:00'),
(67, 42, 'Keep it up! I’m sure you’ll continue to grow with posts like this.', '2025-04-23 15:45:00'),
(68, 43, 'Such a great post. I love how you break down complex topics.', '2025-04-23 15:50:00'),
(69, 44, 'Great work! I’ve learned so much from your posts.', '2025-04-23 15:55:00'),
(70, 25, 'Ay naku, ang init ng panahon! 😅 Pero okay lang, kahit mainit, tuloy pa rin ang buhay! 🌞 #HeatWave #PinoyStruggles', '2025-04-19 16:05:00'),
(71, 26, 'Aba, ang saya saya ng reunion namin kanina! 🥳 Wala pa rin tatalo sa bonding ng pamilya. Love you guys! ❤️ #FamilyFirst #ReunionVibes', '2025-04-19 16:10:00'),
(72, 27, 'Kahit na may mga problema, naniniwala akong makakaya ko to! 💪 Pagtulungan lang natin! #PositiveVibes #LabanLang', '2025-04-19 16:15:00'),
(73, 28, 'Thankful for all the blessings! 🙏 Hindi ko na mabilang kung gaano ako ka-blessed. #ThankYouLord #BlessedBeyondMeasure', '2025-04-19 16:20:00'),
(74, 29, 'OMG, napanood ko na yung bagong series na pinapanuod ng lahat! Super ganda! 😍 #Addicted #PinoyKdramaFan', '2025-04-19 16:25:00'),
(75, 30, 'Minsan lang mangyari to, pero nakaka-proud! 🎉 Laban Pinoy! 🇵🇭 #PinoyPride #AchievementUnlocked', '2025-04-19 16:30:00'),
(76, 31, 'Sarap ng ulam ngayon! 😋 Pansit, adobo, at syempre, bagoong! #PinoyFood #SarapPinoy', '2025-04-19 16:35:00'),
(77, 32, 'Feeling blessed na may mga kaibigan akong laging nandiyan. Salamat sa inyo! 💕 #BarkadaGoals #TrueFriends', '2025-04-19 16:40:00'),
(78, 33, 'Wala nang tatalo sa sarap ng tagpo sa beach! 🏖️ Sea, sun, and sand lang ang peg! #BeachVibes #SummerFeels', '2025-04-19 16:45:00'),
(79, 34, 'Grabe, ang saya ng birthday ko! Salamat sa lahat ng bumati at nag-celebrate kasama ko! 🎂 #BirthdayVibes #Blessed #ThankYouEveryone', '2025-04-19 16:50:00'),
(80, 35, 'Finally! Naka-uwi na ako sa probinsya! Ang saya ko! 🏡 #HomeSweetHome #PinoyHomecoming', '2025-04-20 17:00:00'),
(81, 36, 'Kahit malayo, parang andiyan pa rin sila. Miss ko na kayo guys! 😔 #LongDistance #BarkadaForever', '2025-04-20 17:05:00'),
(82, 37, 'Kung hindi mo kaya, wag mong pilitin! Laban lang sa buhay, pero wag mong isakripisyo ang sarili mo! 💡 #SelfCare #MentalHealthMatters', '2025-04-20 17:10:00'),
(83, 38, 'Si kuya, ang saya saya magluto ng sinigang na baboy! 😍 #SarapPinoy #PinoyHomeCooking', '2025-04-20 17:15:00'),
(84, 39, 'Puno na naman ang inbox ko ng messages, pero kahit paano, salamat sa mga nag-check in! 💌 #Grateful #MessagesOfLove', '2025-04-20 17:20:00'),
(85, 40, 'Laging tama ang timing ng lahat. Salamat sa mga magagandang pagkakataon. #RightPlaceRightTime #TimingIsEverything', '2025-04-20 17:25:00'),
(86, 41, 'Pagkatapos ng long day, tamang relaxation lang. Magandang gabi sa lahat! 🌙 #ChillNight #GoodNight', '2025-04-20 17:30:00'),
(87, 42, 'Sana laging ganito, walang stress at puno ng kasiyahan! ✨ #GoodVibesOnly #StressFree', '2025-04-20 17:35:00'),
(88, 43, 'Super daming bagay na natutunan ko today! Salamat sa mga nagturo! 🙏 #Grateful #LifelongLearning', '2025-04-20 17:40:00'),
(89, 44, 'Sa mga magulang ko, thank you for always supporting me. Huwag niyong kakalimutang mahalin ang inyong sarili. ❤️ #FamilyLove #ThankYouMamaPapa', '2025-04-20 17:45:00'),
(90, 45, 'May bagong business venture kami! Wishing us good luck! 🚀 #EntrepreneurGoals #PinoyStartup', '2025-04-21 18:00:00'),
(91, 46, 'Pinoy sa Pinoy, walang tatalo sa pagsasama! Salamat sa mga kababayang nakakasama ko sa lahat ng pagsubok. 💪 #PinoyUnity #KayaNatinTo', '2025-04-21 18:05:00'),
(92, 47, 'Minsan, kailangan lang ng simpleng bagay para maging masaya. Salamat sa buhay! 😊 #Grateful #LifeIsGood', '2025-04-21 18:10:00'),
(94, 25, 'Ay naku, ang init ng panahon! 😅 Pero okay lang, kahit mainit, tuloy pa rin ang buhay! 🌞 #HeatWave #PinoyStruggles', '2025-04-19 16:05:00'),
(95, 26, 'Aba, ang saya saya ng reunion namin kanina! 🥳 Wala pa rin tatalo sa bonding ng pamilya. Love you guys! ❤️ #FamilyFirst #ReunionVibes', '2025-04-19 16:10:00'),
(96, 27, 'Kahit na may mga problema, naniniwala akong makakaya ko to! 💪 Pagtulungan lang natin! #PositiveVibes #LabanLang', '2025-04-19 16:15:00'),
(97, 28, 'Thankful for all the blessings! 🙏 Hindi ko na mabilang kung gaano ako ka-blessed. #ThankYouLord #BlessedBeyondMeasure', '2025-04-19 16:20:00'),
(98, 29, 'OMG, napanood ko na yung bagong series na pinapanuod ng lahat! Super ganda! 😍 #Addicted #PinoyKdramaFan', '2025-04-19 16:25:00'),
(99, 30, 'Minsan lang mangyari to, pero nakaka-proud! 🎉 Laban Pinoy! 🇵🇭 #PinoyPride #AchievementUnlocked', '2025-04-19 16:30:00'),
(100, 31, 'Sarap ng ulam ngayon! 😋 Pansit, adobo, at syempre, bagoong! #PinoyFood #SarapPinoy', '2025-04-19 16:35:00'),
(101, 32, 'Feeling blessed na may mga kaibigan akong laging nandiyan. Salamat sa inyo! 💕 #BarkadaGoals #TrueFriends', '2025-04-19 16:40:00'),
(102, 33, 'Wala nang tatalo sa sarap ng tagpo sa beach! 🏖️ Sea, sun, and sand lang ang peg! #BeachVibes #SummerFeels', '2025-04-19 16:45:00'),
(103, 34, 'Grabe, ang saya ng birthday ko! Salamat sa lahat ng bumati at nag-celebrate kasama ko! 🎂 #BirthdayVibes #Blessed #ThankYouEveryone', '2025-04-19 16:50:00'),
(104, 35, 'Finally! Naka-uwi na ako sa probinsya! Ang saya ko! 🏡 #HomeSweetHome #PinoyHomecoming', '2025-04-20 17:00:00'),
(105, 36, 'Kahit malayo, parang andiyan pa rin sila. Miss ko na kayo guys! 😔 #LongDistance #BarkadaForever', '2025-04-20 17:05:00'),
(106, 37, 'Kung hindi mo kaya, wag mong pilitin! Laban lang sa buhay, pero wag mong isakripisyo ang sarili mo! 💡 #SelfCare #MentalHealthMatters', '2025-04-20 17:10:00'),
(107, 38, 'Si kuya, ang saya saya magluto ng sinigang na baboy! 😍 #SarapPinoy #PinoyHomeCooking', '2025-04-20 17:15:00'),
(108, 39, 'Puno na naman ang inbox ko ng messages, pero kahit paano, salamat sa mga nag-check in! 💌 #Grateful #MessagesOfLove', '2025-04-20 17:20:00'),
(109, 40, 'Laging tama ang timing ng lahat. Salamat sa mga magagandang pagkakataon. #RightPlaceRightTime #TimingIsEverything', '2025-04-20 17:25:00'),
(110, 41, 'Pagkatapos ng long day, tamang relaxation lang. Magandang gabi sa lahat! 🌙 #ChillNight #GoodNight', '2025-04-20 17:30:00'),
(111, 42, 'Sana laging ganito, walang stress at puno ng kasiyahan! ✨ #GoodVibesOnly #StressFree', '2025-04-20 17:35:00'),
(112, 43, 'Super daming bagay na natutunan ko today! Salamat sa mga nagturo! 🙏 #Grateful #LifelongLearning', '2025-04-20 17:40:00'),
(113, 44, 'Sa mga magulang ko, thank you for always supporting me. Huwag niyong kakalimutang mahalin ang inyong sarili. ❤️ #FamilyLove #ThankYouMamaPapa', '2025-04-20 17:45:00'),
(114, 45, 'May bagong business venture kami! Wishing us good luck! 🚀 #EntrepreneurGoals #PinoyStartup', '2025-04-21 18:00:00'),
(115, 46, 'Pinoy sa Pinoy, walang tatalo sa pagsasama! Salamat sa mga kababayang nakakasama ko sa lahat ng pagsubok. 💪 #PinoyUnity #KayaNatinTo', '2025-04-21 18:05:00'),
(116, 47, 'Minsan, kailangan lang ng simpleng bagay para maging masaya. Salamat sa buhay! 😊 #Grateful #LifeIsGood', '2025-04-21 18:10:00'),
(117, 49, 'Sarap mag-travel, pero ang masarap ay ang balik probinsya! ✈️ #HomeIsWhereTheHeartIs #TravelGoals', '2025-04-21 18:20:00'),
(118, 50, 'Ang sarap ng buhay kapag masaya ka sa kung anong meron ka! Salamat, Lord. 🙏 #SimpleLife #ThankfulHeart', '2025-04-21 18:25:00'),
(119, 25, 'Kahit may mga pagsubok, di ko nakakalimutan magpasalamat. 🙌 #KeepGoing #GratefulHeart', '2025-04-22 18:30:00'),
(120, 26, 'Sana all may time mag-relax. 🧘‍♂️ Pero okay lang, laban lang! 💪 #NoTimeToRest #PinoyHustle', '2025-04-22 18:35:00'),
(121, 27, 'Pagkatapos ng lahat ng stress, salamat sa pagka-bilog ng buwan. 🌕 #FullMoonVibes #RelaxedMode', '2025-04-22 18:40:00'),
(122, 28, 'May bago akong hobby! Nag-aaral ako mag-guitar. 🎸 #NewHobby #LearningNewThings', '2025-04-22 18:45:00'),
(123, 29, 'Laban lang sa buhay! Kahit na maraming pagsubok, kaya natin ‘to! 💪 #NeverGiveUp #LabanPinoy', '2025-04-22 18:50:00'),
(124, 30, 'Minsan, kailangan mo lang ng konting tulong mula sa iba para makabangon. Salamat sa mga tumulong! 🙏 #SupportSystem #Thankful', '2025-04-22 18:55:00'),
(125, 31, 'Enjoy lang sa mga simpleng bagay. Magandang araw sa lahat! 😊 #SimpleJoys #HappyVibes', '2025-04-22 19:00:00'),
(126, 32, 'Sarap ng coffee break, lalo na pag may kasama kang kaibigan. ☕ #CoffeeTime #BarkadaMoment', '2025-04-22 19:05:00'),
(127, 33, 'Aba, napanood ko na yung bagong movie ni Bea Alonzo! Grabe, ang galing niya! 🎬 #PinoyMovies #BeaAlonzoFan', '2025-04-22 19:10:00'),
(128, 34, 'Di pwedeng walang kwentuhan, di pwedeng walang tawanan! 😂 #BarkadaBonding #PinoyStyle', '2025-04-22 19:15:00'),
(129, 35, 'Kahit mahirap, kaya ko pa rin! Ang saya maging Pinoy. 🇵🇭 #PinoyStrength #LabanLang', '2025-04-22 19:20:00'),
(130, 36, 'Kapag andiyan na yung huling saksi, ang saya ko na! 🎉 #FinalTest #WalangTigilNaLaban', '2025-04-22 19:25:00'),
(131, 37, 'Masaya na, kontento pa. Ang sarap magka-kape habang nagmamasid sa tanawin. ☕🌄 #MorningBliss #SlowLiving', '2025-04-22 19:30:00'),
(132, 6, '🙏', '2025-04-29 10:46:00'),
(133, 6, '🙏', '2025-04-29 10:46:00'),
(134, 6, '🙏', '2025-04-29 10:46:00'),
(135, 6, '🙏', '2025-04-29 10:46:00'),
(136, 6, '🙏', '2025-04-29 10:46:00'),
(137, 6, '🙏', '2025-04-29 10:46:00'),
(138, 6, '🙏', '2025-04-29 10:46:00'),
(139, 6, '🙏', '2025-04-29 10:46:00'),
(140, 6, '🙏', '2025-04-29 10:46:00'),
(141, 6, '🙏', '2025-04-29 10:46:00'),
(142, 6, '🙏', '2025-04-29 10:46:00'),
(143, 6, '🙏', '2025-04-29 10:46:00'),
(144, 6, '', '2025-04-29 06:46:00'),
(145, 6, 'shared a memory', '2025-04-29 08:46:00'),
(146, 6, '', '2025-04-27 20:53:00'),
(147, 7, 'You should be happy with yourself', '2025-04-29 12:54:00'),
(148, 7, 'Happy Birthday  po ate', '2025-04-29 11:00:00'),
(149, 7, 'Magsikap palagi', '2025-04-23 02:00:00'),
(150, 7, 'When?', '2025-04-25 01:45:00'),
(151, 7, 'Amen', '2025-04-22 08:02:00'),
(152, 7, 'Kuyas-kuyasi sana hahaha', '2025-04-27 19:40:00'),
(153, 7, 'Aram na hahah', '2025-04-25 21:13:00'),
(154, 7, 'Hirap intindihin', '2025-04-26 05:12:00'),
(155, 7, 'Pray for us', '2025-04-23 09:50:00'),
(156, 14, 'Celebrating another year of life! Thank you for all the love!', '2025-04-29 10:35:00'),
(157, 14, 'Thank you so much, Christian Polytechnic Institute of Catanduanes! ', '2025-04-21 16:35:00'),
(158, 14, '', '2025-04-25 06:35:00'),
(159, 14, 'Siram', '2025-04-26 08:35:00'),
(160, 14, 'naol', '2025-04-22 09:35:00'),
(161, 14, 'Labis sana', '2025-04-27 06:35:00'),
(162, 14, 'When?', '2025-04-25 12:35:00'),
(163, 27, 'dfeelingeras hehehe', '2025-04-29 06:35:00'),
(164, 27, '', '2025-04-29 06:35:00'),
(165, 27, '', '2025-04-22 17:25:00'),
(166, 27, '', '2025-04-25 13:35:00'),
(167, 27, '', '2025-04-27 16:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `post_id`, `created_at`) VALUES
(1, 2, 1, '2025-04-19 10:00:00'),
(2, 5, 2, '2025-04-19 10:10:00'),
(3, 1, 3, '2025-04-19 10:15:00'),
(4, 8, 4, '2025-04-19 10:20:00'),
(5, 4, 5, '2025-04-19 10:25:00'),
(6, 3, 6, '2025-04-19 10:30:00'),
(7, 6, 7, '2025-04-19 10:35:00'),
(8, 7, 8, '2025-04-19 10:40:00'),
(9, 9, 1, '2025-04-19 10:45:00'),
(10, 10, 2, '2025-04-19 10:50:00'),
(11, 11, 3, '2025-04-20 10:55:00'),
(12, 12, 4, '2025-04-20 11:00:00'),
(13, 13, 5, '2025-04-20 11:05:00'),
(14, 14, 6, '2025-04-20 11:10:00'),
(15, 15, 7, '2025-04-20 11:15:00'),
(16, 16, 8, '2025-04-20 11:20:00'),
(17, 17, 1, '2025-04-20 11:25:00'),
(18, 18, 2, '2025-04-20 11:30:00'),
(19, 19, 3, '2025-04-20 11:35:00'),
(20, 20, 4, '2025-04-20 11:40:00'),
(21, 2, 5, '2025-04-21 11:45:00'),
(22, 4, 6, '2025-04-21 11:50:00'),
(23, 5, 7, '2025-04-21 11:55:00'),
(24, 6, 8, '2025-04-21 12:00:00'),
(25, 7, 1, '2025-04-21 12:05:00'),
(26, 8, 2, '2025-04-21 12:10:00'),
(27, 9, 3, '2025-04-21 12:15:00'),
(28, 10, 4, '2025-04-21 12:20:00'),
(29, 11, 5, '2025-04-21 12:25:00'),
(30, 12, 6, '2025-04-21 12:30:00'),
(31, 13, 7, '2025-04-22 12:35:00'),
(32, 14, 8, '2025-04-22 12:40:00'),
(33, 15, 1, '2025-04-22 12:45:00'),
(34, 16, 2, '2025-04-22 12:50:00'),
(35, 17, 3, '2025-04-22 12:55:00'),
(36, 18, 4, '2025-04-22 13:00:00'),
(37, 19, 5, '2025-04-22 13:05:00'),
(38, 20, 6, '2025-04-22 13:10:00'),
(39, 1, 7, '2025-04-22 13:15:00'),
(40, 2, 8, '2025-04-22 13:20:00'),
(41, 3, 1, '2025-04-23 13:25:00'),
(42, 4, 2, '2025-04-23 13:30:00'),
(43, 5, 3, '2025-04-23 13:35:00'),
(44, 6, 4, '2025-04-23 13:40:00'),
(45, 7, 5, '2025-04-23 13:45:00'),
(46, 8, 6, '2025-04-23 13:50:00');

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
(1, 'Angela Shane Tarnate', 'Quezon City, Philippines', '', '0000-00-00', 'female', 'single'),
(2, 'Rosalie Morales Tarnate', 'Quezon City, Philippines', '', '0000-00-00', 'female', 'married'),
(3, 'Vicente Richmond', 'Quezon City, Philippines', 'St. Claire College', '0000-00-00', 'male', 'single'),
(4, 'LetCar JazDin', 'Quezon City, Philippines', '', '0000-00-00', 'male', 'married'),
(5, 'Jake Templonuevo', 'Virac, Catanduanes', 'Catanduanes State University', '0000-00-00', 'male', 'single'),
(6, 'Ivy Jasmine Norte Nacario', 'Polangui, Albay', '', '0000-00-00', 'female', 'single'),
(7, 'Mark James De Leon', 'Virac, Catanduanes', 'Catanduanes State University', '0000-00-00', 'male', 'single'),
(8, 'Paolo Miguel Pusing', 'Rodriguez, Rizal', 'Sisters Of Mary Silang Cavite', '0000-00-00', 'male', 'single'),
(9, 'Denn De La Cruz', 'Silang, Cavite', 'Sisters of Mary School-Adlas', '0000-00-00', 'male', 'single'),
(10, 'Jam Vitalicio', '', '', '0000-00-00', 'female', 'single'),
(11, 'Christian Odiaman De Leon', 'Viga, Catanduanes, Philippines', 'Viga Rural Developmen High School (VRDHS)', '0000-00-00', 'male', 'single'),
(12, 'John Mark Fernandez', '', '', '0000-00-00', 'male', 'single'),
(13, 'Freshelle Joy Tusi', 'Viga, Catanduanes, Philippines', '', '0000-00-00', 'female', 'in a relationship'),
(14, 'Jonna Marie Odiaman', '', '', '0000-00-00', 'female', 'single'),
(15, 'Alliah Nichole', 'Quezon City, Philippines', 'The Sisters of Mary School Girlstown', '0000-00-00', 'female', 'married'),
(16, 'Lhene Wayne', 'Viga, Catanduanes', '', '0000-00-00', 'female', ''),
(17, 'Aiza Morales', 'Viga, Catanduanes', '', '0000-00-00', 'female', 'married'),
(18, 'Klaris Mae Manlangit', 'Virac, Catanduanes, Philippines', 'Catanduanes State University', '0000-00-00', 'female', 'single'),
(19, 'Chester Dale Ogena Odiaman', 'Viga, Catanduanes, Philippines', ' ICCT Colleges Cainta Main Campus', '0000-00-00', 'male', 'in a relationship'),
(20, 'John Albert Villanueva', 'Quezon City, Philippines', 'Bestlink College of the Philippines', '0000-00-00', 'male', 'in a relationship'),
(21, 'Mary Ann Alvarez', '', '', '0000-00-00', 'female', 'in a relationship'),
(22, 'Fatima Sopranes', ' Virac, Catanduanes, Philippines', 'De La Salle University', '0000-00-00', 'female', 'single'),
(23, 'Zelle Tumaque', '', 'Catanduanes State University', '0000-00-00', 'female', 'single'),
(24, 'Ja S Per', 'Quezon City, Philippines', '', '0000-00-00', 'male', 'in a relationship'),
(25, 'Charlesian Tuibeo', 'Quezon City, Philippines', 'Technological University of the Philippines', '0000-00-00', 'male', 'single'),
(26, 'Christopher Ramos', 'Lipa, Batangas', '', '0000-00-00', 'male', 'in a relationship'),
(27, 'Katherine B. Murillo', 'Viga, Catanduanes, Philippines', 'Central Luzon State University', '0000-00-00', 'female', 'single'),
(28, 'Jenica Malveda', ' Calauan, Laguna', 'Polytechnic University of the Philippines', '0000-00-00', 'female', 'in a relationship'),
(29, 'Michael Bryan', 'Batangas', '', '0000-00-00', 'male', ''),
(30, 'Reymark Vicente Morales', ' Viga, Catanduanes, Philippines', '', '0000-00-00', 'male', 'married'),
(31, 'Angelo Ramos Mendoza', 'Cavite, City', 'Cavite State University', '0000-00-00', 'male', 'single'),
(32, 'Justine Cruz', 'Quezon City, Philippines', '', '0000-00-00', 'male', 'in a relationship'),
(33, 'Ericka Venice Ocampo Seña', ' Indang', ' Holy Trinity University, Puerto Princesa City, Palawan', '0000-00-00', 'female', 'in a relationship'),
(34, 'Philip Simon Loyola', 'Cavite City, Cavite', '', '0000-00-00', 'male', 'in a relationship'),
(35, 'Er Mn', '', '', '0000-00-00', 'male', 'single'),
(36, 'RanRan Faminial', 'Llano, Caloocan, Philippines', '', '0000-00-00', 'male', 'single'),
(37, 'Leo Andrei Putungan', 'General Trias, Cavite', '', '0000-00-00', 'male', 'married'),
(38, 'Løyõlä Æ Mark', 'Viga, Catanduanes, Philippines', '', '0000-00-00', 'male', 'single'),
(39, 'Christopher Ramos', 'Lipa, Batangas', '', '0000-00-00', 'male', 'in a relationship'),
(40, 'Katherine B. Murillo', 'Viga, Catanduanes, Philippines', 'Central Luzon State University', '0000-00-00', 'female', 'single'),
(41, 'Jenica Malveda', ' Calauan, Laguna', 'Polytechnic University of the Philippines', '0000-00-00', 'female', 'in a relationship'),
(42, 'Michael Bryan', 'Batangas', '', '0000-00-00', 'male', ''),
(43, 'Reymark Vicente Morales', ' Viga, Catanduanes, Philippines', '', '0000-00-00', 'male', 'married'),
(44, 'Angelo Ramos Mendoza', 'Cavite, City', 'Cavite State University', '0000-00-00', 'male', 'single'),
(45, 'Justine Cruz', 'Quezon City, Philippines', '', '0000-00-00', 'male', 'in a relationship'),
(46, 'Ericka Venice Ocampo Seña', ' Indang', ' Holy Trinity University, Puerto Princesa City, Palawan', '0000-00-00', 'female', 'in a relationship'),
(47, 'Philip Simon Loyola', 'Cavite City, Cavite', '', '0000-00-00', 'male', 'in a relationship'),
(49, 'RanRan Faminial', 'Llano, Caloocan, Philippines', '', '0000-00-00', 'male', 'single'),
(50, 'Leo Andrei Putungan', 'General Trias, Cavite', '', '0000-00-00', 'male', 'married'),
(51, 'Løyõlä Æ Mark', 'Viga, Catanduanes, Philippines', '', '0000-00-00', 'male', 'single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shares_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
