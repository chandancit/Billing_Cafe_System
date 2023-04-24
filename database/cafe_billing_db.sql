-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 10:29 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_billing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'तवा रोटी', ''),
(2, 'तंदूरी आइटम देसी घी से नाश्ता', ''),
(3, 'नान आईतम', ''),
(4, 'स्नैक्स आईटम', ''),
(5, 'राईस आईटम', ''),
(6, 'मैगी आईतम', ''),
(7, 'चाय / कॉफी', ''),
(8, 'थाली', ''),
(9, 'दाल आईटम', ''),
(10, 'जायकेदार सब्जियाँ', ''),
(11, 'आलू आईटम', ''),
(12, 'मसरूम आईटम', ''),
(13, 'चाप आईटम', ''),
(14, 'सेब आईटम', ''),
(15, 'पापड आइटम', ''),
(16, 'रायता आइटम', ''),
(17, 'सलाद आईटम', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `expense` int(11) NOT NULL DEFAULT 0,
  `total_amount` float NOT NULL,
  `amount_tendered` float NOT NULL,
  `order_number` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_no`, `expense`, `total_amount`, `amount_tendered`, `order_number`, `date_created`) VALUES
(1, '746022460890', 500, 1280, 1500, 12, '2023-04-23 11:45:49'),
(2, '560929707376', 800, 1640, 3000, 0, '2023-04-23 11:46:13'),
(3, '248146034970', 0, 250, 0, 0, '2023-04-23 12:18:15'),
(4, '165264066430', 0, 110, 0, 0, '2023-04-24 13:26:21'),
(5, '813503564564', 0, 120, 0, 0, '2023-04-24 13:26:44'),
(6, '909011066132', 0, 110, 0, 12104, '2023-04-24 13:30:00'),
(7, '137909389686', 0, 440, 500, 1, '2023-04-24 13:42:01'),
(8, '285958659746', 0, 1190, 1500, 12, '2023-04-24 13:42:26'),
(9, '255007743118', 0, 430, 500, 0, '2023-04-24 13:42:41'),
(10, '123519987011', 0, 130, 0, 0, '2023-04-24 13:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `price`, `amount`) VALUES
(1, 1, 93, 2, 110, 220),
(2, 1, 95, 1, 120, 120),
(3, 1, 99, 1, 150, 150),
(4, 1, 10, 1, 70, 70),
(5, 1, 48, 1, 10, 10),
(6, 1, 97, 1, 130, 130),
(7, 1, 93, 1, 110, 110),
(8, 1, 95, 1, 120, 120),
(9, 1, 99, 1, 150, 150),
(10, 1, 130, 1, 40, 40),
(11, 1, 76, 1, 230, 230),
(12, 2, 20, 1, 130, 130),
(13, 2, 98, 1, 130, 130),
(14, 2, 75, 1, 270, 270),
(15, 2, 130, 1, 40, 40),
(16, 2, 76, 4, 230, 920),
(17, 2, 99, 1, 150, 150),
(18, 3, 93, 1, 110, 110),
(19, 3, 95, 1, 120, 120),
(20, 4, 93, 1, 110, 110),
(21, 5, 48, 1, 10, 10),
(22, 5, 93, 1, 110, 110),
(23, 6, 93, 1, 110, 110),
(24, 3, 97, 1, 130, 130),
(25, 3, 94, 1, 120, 120),
(26, 7, 97, 1, 130, 130),
(27, 7, 95, 1, 120, 120),
(28, 7, 99, 1, 150, 150),
(29, 7, 130, 1, 40, 40),
(30, 8, 93, 1, 110, 110),
(31, 8, 99, 1, 150, 150),
(32, 8, 130, 1, 40, 40),
(33, 8, 76, 1, 230, 230),
(34, 8, 75, 1, 270, 270),
(35, 8, 89, 1, 180, 180),
(36, 8, 98, 1, 130, 130),
(37, 8, 121, 1, 80, 80),
(38, 9, 48, 1, 10, 10),
(39, 9, 93, 1, 110, 110),
(40, 9, 95, 1, 120, 120),
(41, 9, 99, 1, 150, 150),
(42, 9, 130, 1, 40, 40),
(43, 10, 97, 1, 130, 130),
(44, 10, 17, 1, 70, 70);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Unavailable,1=Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `item_id`, `description`, `price`, `status`) VALUES
(1, 1, 'तवा रोटी', 76, '', 14, 1),
(2, 1, 'बटर तवा रोटी', 77, '', 20, 1),
(3, 2, 'तंदूरी रोटी', 78, '', 8, 1),
(4, 2, 'तंदूरी बटर रोटी', 79, '', 15, 1),
(5, 2, 'प्लेन पराठा', 80, '', 30, 1),
(6, 2, 'मिस्सी रोटी', 0, '', 35, 1),
(7, 2, 'लच्छा पराठा', 0, '', 40, 1),
(8, 2, 'आलू पराठा', 0, '', 50, 1),
(9, 2, 'मुली पराठा', 0, '', 60, 1),
(10, 2, 'आलू प्याज पराठा', 0, '', 70, 1),
(11, 2, 'मिक्स पराठा', 0, '', 80, 1),
(12, 2, 'पनीर पराठा', 0, '', 100, 1),
(13, 2, 'प्याज पराठा', 0, '', 80, 1),
(14, 2, 'तवा पराठा', 0, '', 10, 1),
(15, 3, 'प्लेन नान', 0, '', 50, 1),
(16, 3, 'बटर नान', 0, '', 60, 1),
(17, 3, 'आलू  नान', 0, '', 70, 1),
(18, 3, 'पनीर नान', 0, '', 110, 1),
(19, 3, 'स्टाफ नान', 0, '', 100, 1),
(20, 4, 'आलू पकोड़ा', 0, '', 130, 1),
(21, 4, 'गोभी पकोड़ा', 0, '', 160, 1),
(22, 4, 'मीक्स पकोड़ा', 0, '', 190, 1),
(23, 4, 'प्याज पकोड़ा', 0, '', 170, 1),
(24, 5, 'भात', 0, '', 50, 1),
(25, 5, 'प्लेन राईस', 0, '', 70, 1),
(26, 5, 'स्टीम राईस', 0, '', 80, 1),
(27, 5, 'जीरा राईस', 0, '', 90, 1),
(28, 5, 'लेमन पुलाव ', 0, '', 120, 1),
(29, 5, 'मटर पुलाव', 0, '', 130, 1),
(30, 5, 'फ्राई राईस', 0, '', 150, 1),
(31, 5, 'वेज पुलाव', 0, '', 180, 1),
(32, 5, 'पनीर पुलाव', 0, '', 210, 1),
(33, 5, 'हाण्डी पुलाव', 0, '', 190, 1),
(34, 5, 'वेज बिरयानी', 0, '', 200, 1),
(35, 5, 'खिचडी', 0, '', 110, 1),
(36, 6, 'प्लेन मैगी', 0, '', 80, 1),
(37, 6, 'वेज मैगी', 0, '', 100, 1),
(38, 6, 'वेज मैगी मसाला', 0, '', 120, 1),
(39, 6, 'मसरूम मैगी मसाला', 0, '', 150, 1),
(40, 6, 'पोहा', 0, '', 60, 1),
(41, 7, 'स्पेशल चाय', 0, '', 20, 1),
(42, 7, 'लेमन चाय', 0, '', 30, 1),
(43, 7, 'ब्लैक टी', 0, '', 20, 1),
(44, 7, 'कॉफी', 0, '', 30, 1),
(45, 7, 'दुध 250 ग्रम ', 0, '', 30, 1),
(46, 7, 'मिनरल वाटर', 0, '', 20, 1),
(48, 7, 'आरओ जग', 0, '', 10, 1),
(49, 7, 'कोल्ड ड्रिंक', 0, '', 0, 1),
(50, 4, 'पनीर पकोड़ा', 0, '', 210, 1),
(51, 4, 'फिंगर चिप्स', 0, '', 150, 1),
(52, 8, 'थाली', 0, '', 100, 1),
(53, 8, 'बंगाली थाली', 0, '', 120, 1),
(54, 8, 'सादा थाली ', 0, '', 140, 1),
(55, 8, 'गुजराती  थाली ', 0, '', 180, 1),
(56, 8, 'स्पेशल थाली', 0, '', 300, 1),
(57, 8, 'पंजाबी थाली', 0, '', 400, 1),
(58, 9, 'दाल फाई उर्द चना', 0, '', 80, 1),
(59, 9, 'दाल तड़का अरहर', 0, '', 100, 1),
(60, 9, 'पंजाबी दाल तड़का अरहर', 0, '', 130, 1),
(61, 9, 'दाल मखनी राजमा उर्द', 0, '', 150, 1),
(62, 10, 'राध रसोई पनीर मसाला', 0, '', 300, 1),
(63, 10, 'टमाटर पनीर', 0, '', 250, 1),
(64, 10, 'पनीर बटर मसाला ', 0, '', 230, 1),
(65, 10, 'शाही पनीर', 0, '', 160, 1),
(66, 10, 'मटर पनीर ', 0, '', 130, 1),
(67, 10, 'मिक्स वेज', 0, '', 140, 1),
(68, 10, 'पनीर दा प्याजा', 0, '', 200, 1),
(69, 10, 'चना मसाला', 0, '', 130, 1),
(70, 10, 'छोले पनीर', 0, '', 180, 1),
(71, 10, 'पनीर लबावदार', 0, '', 300, 1),
(72, 10, 'रंगील पनीर', 0, '', 350, 1),
(73, 10, 'हाण्डी पनीर', 0, '', 200, 1),
(74, 10, 'पनीर भुज्जी', 0, '', 250, 1),
(75, 10, 'काजू पनीर', 0, '', 270, 1),
(76, 10, 'काजू कड़ी', 0, '', 230, 1),
(77, 10, 'पनीर पसन्दा', 0, '', 250, 1),
(78, 10, 'पनीर टिक्का मसाला', 0, '', 250, 1),
(79, 10, 'पनीर गुजराती मसाला', 0, '', 200, 1),
(80, 10, 'पालक पनीर', 0, '', 180, 1),
(81, 10, 'हाण्डी पनीर मसाला', 0, '', 250, 1),
(82, 10, 'मलाई कोफ्ता', 0, '', 230, 1),
(83, 10, 'वेज कोरमा ', 0, '', 220, 1),
(84, 10, 'मटर मखनी मसाला', 0, '', 200, 1),
(85, 10, 'चिल्ली पनीर', 0, '', 230, 1),
(86, 10, 'पनीर कोरमा', 0, '', 220, 1),
(87, 10, 'पनीर मसाला', 0, '', 200, 1),
(88, 10, 'चिल्ली गोभी', 0, '', 200, 1),
(89, 10, 'कढ़ाई गोभी', 0, '', 180, 1),
(90, 10, 'हाण्डी गोभी मसाला', 0, '', 190, 1),
(91, 10, 'गोभी मसाला ', 0, '', 170, 1),
(92, 11, 'आलू जीरा', 0, '', 100, 1),
(93, 11, 'आलू टमाटर', 0, '', 110, 1),
(94, 11, 'आलू छोले', 0, '', 120, 1),
(95, 11, 'आलू पालक', 0, '', 120, 1),
(96, 11, 'आलू मटर', 0, '', 110, 1),
(97, 11, 'आलू गोभी', 0, '', 130, 1),
(98, 11, 'आलू मसाला', 0, '', 130, 1),
(99, 11, 'आलू मटर मसाला', 0, '', 150, 1),
(100, 11, 'दम आलू', 0, '', 170, 1),
(101, 11, 'कश्मीरी दम आलू', 0, '', 200, 1),
(102, 11, 'आलू काजू', 0, '', 220, 1),
(103, 12, 'चिल्ली मसरूम ', 0, '', 280, 1),
(104, 12, 'मसरूम बटर मसाला', 0, '', 300, 1),
(105, 12, 'कढ़ाई मसरूम', 0, '', 270, 1),
(106, 12, 'मसरूम मसाला', 0, '', 250, 1),
(107, 12, 'मटर मसरूम', 0, '', 220, 1),
(108, 13, 'चिल्ली चाप', 0, '', 280, 1),
(109, 13, 'कढ़ाई चाप', 0, '', 260, 1),
(110, 13, 'बटर चाप मसाला', 0, '', 250, 1),
(111, 13, 'मसाला चाप', 0, '', 240, 1),
(112, 13, 'ग्रेवी चाप', 0, '', 220, 1),
(113, 14, 'सेब भाजी', 0, '', 140, 1),
(114, 14, 'सेब मसाला', 0, '', 130, 1),
(115, 14, 'सेब टमाटर', 0, '', 120, 1),
(116, 15, 'पनीर पापड', 0, '', 80, 1),
(117, 15, 'मसाला पापड', 0, '', 60, 1),
(118, 15, 'फ्राई पापड', 0, '', 30, 1),
(119, 15, 'ड्राई पापड', 0, '', 20, 1),
(120, 16, 'मिक्स रायता ', 0, '', 90, 1),
(121, 16, 'आलू रायता', 0, '', 80, 1),
(122, 16, 'बुन्दी रायता', 0, '', 70, 1),
(123, 16, 'जीरा छाछ', 0, '', 30, 1),
(124, 16, 'नमकीन लस्सी', 0, '', 50, 1),
(125, 16, 'मिठी लस्सी', 0, '', 60, 1),
(126, 16, 'दही', 0, '', 60, 1),
(127, 16, 'दही फ्राई', 0, '', 110, 1),
(128, 17, 'फैमली सलाद', 0, '', 80, 1),
(129, 17, 'ग्रीन सलाद', 0, '', 60, 1),
(130, 17, 'ओनियन सलाद', 0, '', 40, 1),
(131, 17, 'प्लेन सलाद', 0, '', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Simple Cafe Billing System', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 1),
(2, 'staff', 'staff', 'de9bf5643eabf80f4a56fda3bbb84483', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
