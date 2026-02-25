-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `david_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_category`, `product_cost`, `product_image`) VALUES
(1, 'Redmi 15C', '256gb, 8gb ram and 6\'9 inches', 'Electronics', 19000, 'redmi.avif'),
(2, 'tecno pop 5', '128gb, 4gb ram and 6\'4 inches', 'Electronics', 13000, 'tecno.jpeg'),
(3, 'blanket', 'full cotton puffed blanket', 'Beddings', 5000, 'blanket.jpeg'),
(4, 'Bedsheet', 'smooth and lined cotton. Very cormfortable', 'Beddings', 1500, 'bedsheet.jpeg'),
(5, 'Curtain', 'High quality and valued falling down curtains', 'Housing', 7500, 'curtain.avif'),
(6, 'spinach', 'straight out of the farm and tasty spinach', 'vegetables', 100, 'spinach.jpeg'),
(7, 'Tomatoes', 'juicy tomatoes for sale', 'vegetables', 200, 'tomatoes.jpeg'),
(8, 'Oranges', 'fresh oranges for juices', 'vegetables', 400, 'oranges.jpeg'),
(9, 'Air pods', 'high quality sounds', 'Electronics', 1500, 'air pods pro.jpeg'),
(10, 'Nothing phone', '512gb, 16gb ram and fast running', 'Electronics', 55000, 'Nothing phone 2.jpeg'),
(11, 'Iphone 15 pro', '512gb, 16gb ram and high graphics', 'Electronics', 159999, 'Iphone 15 Pro Max.jpeg'),
(12, 'Huawei mate 50', '512gb, 16gb ram and high performance', 'Electronics', 39000, 'Huawei mate 50 pro .jpeg'),
(13, 'LG Wing', 'High end performance phone for gaming', 'Electronics', 59000, 'LG Wing 5G.jpeg'),
(14, 'Itel mini phone', 'Used for calls and general purpose', 'Electronics', 12000, 'Itel A18.jpg'),
(15, 'Hp elitebook', 'highly for office work', 'Electronics', 39000, 'Eliteboook.jpeg'),
(16, 'Oppo a92', '64gb, 3gb ram and dual sim', 'Electronics', 9999, 'oppo a92.jpeg'),
(17, 'Oraimo space buds', 'Very comfortable and quality music', 'Electronics', 2500, 'Orimo space buds.jpeg'),
(18, 'Xiaomi 17 pro max', 'Very slick to handle and high end processing', 'Electronics', 56000, 'Xiaomi 17 pro max.avif'),
(19, 'Poco loco X6', 'Unique and colorfull', 'Electronics', 30000, 'poco X6 pro.jpeg'),
(20, 'Carrots', 'For high visual aquity and night vision', 'Vegetables', 350, 'carrots.jpeg'),
(21, 'china onions', 'Tasty and delicious', 'Vegetables', 500, 'onions.jpeg'),
(22, 'Biryani rice', 'Non sticky and tasty with a soup', 'Vegetables', 750, 'rice.jpeg'),
(23, 'Onion leaves', 'Used instead of onion rings', 'Vegetables', 199, 'leaves.jpeg'),
(24, 'UltraHD TV', '67\' inches tv with wide display', 'Television', 54000, 'ultrahd.jpeg'),
(25, 'Trinity tV', '55\' inched LED television', 'Television', 542000, 'trinity.jpeg'),
(26, 'Google TV', '59\' inches with inbuilt in apps like youtube', 'Television', 67000, 'google.jpeg'),
(27, 'Google TV', '59\' inches with inbuilt in apps like youtube', 'Television', 67000, 'google.jpeg'),
(28, 'Google TV', '59\' inches with inbuilt in apps like youtube', 'Television', 67000, 'google.jpeg'),
(29, 'Google TV', '59\' inches with inbuilt in apps like youtube', 'Television', 67000, 'google.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(5, 'khamati', 'khamatimorgan3@gmail.com', '0759272011', 'qwerty123'),
(6, 'duncan', 'muturi.modcom@gmail.com', '0712345678', 'mkuruu123'),
(7, 'david', 'topestshotta@gmail.com', '0100300677', 'topshotta'),
(8, 'toxic', 'mbokadoba@gmail.com', '0713579246', 'lyrically'),
(9, 'weka mawe', 'buru.boy@gmail.com', '0787654321', 'majembe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
