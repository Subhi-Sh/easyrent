-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyrentwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity_type` varchar(255) DEFAULT NULL,
  `activity_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `user_id`, `activity_type`, `activity_time`, `details`) VALUES
(16, NULL, 'New User Registered', '2024-02-22 15:59:46', 'User 211789765 registered to the website'),
(17, NULL, 'New User Registered', '2024-02-22 16:01:40', 'User 123456789 registered to the website'),
(18, NULL, 'New User Registered', '2024-02-22 16:04:23', 'User 987654321 registered to the website'),
(19, NULL, 'New User Registered', '2024-02-22 16:06:40', 'User 654321987 registered to the website'),
(20, NULL, 'New User Registered', '2024-02-22 16:08:08', 'User 987123456 registered to the website'),
(21, NULL, 'New Car Inserted', '2024-02-22 16:15:29', 'User 211789765 Added a new car to the website of type : AudiS3/S3 Sportback'),
(22, NULL, 'New Car Inserted', '2024-02-22 16:18:16', 'User 211789765 Added a new car to the website of type : HyundaiElantra'),
(23, NULL, 'New Car Inserted', '2024-02-22 16:21:02', 'User 211789765 Added a new car to the website of type : BMWX6'),
(24, NULL, 'New Car Inserted', '2024-02-22 16:22:25', 'User 123456789 Added a new car to the website of type : ChevroletCamaro'),
(25, NULL, 'New Car Inserted', '2024-02-22 16:22:58', 'User 123456789 Added a new car to the website of type : DaciaDuster'),
(26, NULL, 'New Car Inserted', '2024-02-22 16:25:47', 'User 123456789 Added a new car to the website of type : MINICooper'),
(27, NULL, 'New Car Inserted', '2024-02-22 16:29:52', 'User 987654321 Added a new car to the website of type : Mazda3'),
(28, NULL, 'New Car Inserted', '2024-02-22 16:31:24', 'User 987654321 Added a new car to the website of type : AudiA3'),
(29, NULL, 'New Car Inserted', '2024-02-22 16:32:25', 'User 987654321 Added a new car to the website of type : JeepCommander'),
(30, NULL, 'New Car Inserted', '2024-02-22 16:34:41', 'User 654321987 Added a new car to the website of type : SubaruImpreza'),
(31, NULL, 'New Car Inserted', '2024-02-22 16:35:12', 'User 654321987 Added a new car to the website of type : ChryslerCrossfire'),
(32, NULL, 'New Car Inserted', '2024-02-22 16:37:15', 'User 654321987 Added a new car to the website of type : Alfa RomeoGiulietta'),
(33, NULL, 'New User Registered', '2024-02-22 16:48:15', 'User 444444444 registered to the website'),
(34, NULL, 'New Car Inserted', '2024-02-23 09:30:03', 'User 123456789 Added a new car to the website of type : Chrysler300 M'),
(35, NULL, 'New Car Inserted', '2024-03-14 10:24:52', 'User 211789765 Added a new car to the website of type : Alfa RomeoGiulietta'),
(36, NULL, 'New Car Inserted', '2024-03-16 10:47:22', 'User 987654321 Added a new car to the website of type : Alfa Romeo146');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `Manufacturer_Code` varchar(20) DEFAULT NULL,
  `model_code` varchar(20) DEFAULT NULL,
  `Plates_Number` int(8) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `Color` varchar(10) DEFAULT NULL,
  `Seats_Amount` int(2) DEFAULT NULL,
  `Engine_Type` varchar(20) DEFAULT NULL,
  `Transmission_type` varchar(20) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Rental_Price_Per_Day` int(6) DEFAULT NULL,
  `Renter_Id` int(9) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`Manufacturer_Code`, `model_code`, `Plates_Number`, `Year`, `Color`, `Seats_Amount`, `Engine_Type`, `Transmission_type`, `Description`, `Rental_Price_Per_Day`, `Renter_Id`, `status`, `upload_date`) VALUES
('hyundai', 'elantra', 56545, 2008, 'Silver', 5, 'Petrol', 'Auto', 'Awesome family car drives nice and comfortable ', 40, 211789765, 1, '2024-02-22 18:00:55'),
('alfa romeo', 'giulietta', 4441232, 1994, 'Black', 4, 'Electric', 'Manual', 'awesome car  fast and nice', 60, 211789765, 0, '2024-03-14 10:26:19'),
('dacia', 'duster', 7771113, 2023, 'Blue', 6, 'Diesel', 'Manual', 'nice suv', 30, 123456789, 0, '2024-02-23 09:30:14'),
('chevrolet', 'camaro', 7893241, 2022, 'green', 4, 'Petrol', 'Auto', 'nice family car fast !', 30, 123456789, 1, '2024-03-16 10:34:17'),
('audi', 'a3', 8887652, 2013, 'Black', 4, 'Petrol', 'Manual', 'Nice sports car drives like new', 60, 987654321, 1, '2024-03-16 14:55:20'),
('chrysler', 'crossfire', 44433322, 2009, 'Red', 5, 'Diesel', 'Manual', 'sdgdsa', 10, 654321987, 1, '2024-02-22 16:35:12'),
('audi', 's3/s3 sportback', 44455566, 2020, 'Blue', 5, 'Petrol', 'Auto', 'Awesome sports car drives very nice and comfortable ', 50, 211789765, 1, '2024-03-17 09:38:13'),
('chrysler', '300 m', 55544333, 2003, 'Black', 4, 'Diesel', 'Manual', 'Old but nice car, drives very good like new', 30, 123456789, 1, '2024-03-15 17:39:00'),
('mini', 'cooper', 55544784, 2023, 'Black', 2, 'Petrol', 'Auto', 'awesome small car for no more than 2 people', 40, 123456789, 1, '2024-02-22 16:25:47'),
('bmw', 'x5', 55577787, 2023, 'Black', 5, 'Petrol', 'Auto', 'nice suv family car', 63, 211789765, 1, '2024-03-09 06:06:19'),
('alfa romeo', '146', 55577788, 2019, 'Black', 4, 'Diesel', 'Manual', 'awesome car', 30, 987654321, 0, '2024-03-16 10:53:31'),
('subaru', 'impreza', 55678644, 2017, 'Blue', 4, 'Petrol', 'Manual', 'nice sports car fast!', 55, 654321987, 1, '2024-02-22 16:34:41'),
('alfa romeo', 'giulietta', 66654322, 2015, 'Black', 2, 'Diesel', 'Manual', 'gsgsda', 66, 654321987, 1, '2024-02-22 16:37:15'),
('mazda', '3', 443123988, 2021, 'Red', 5, 'Petrol', 'Auto', 'nice sports car very comfortable', 50, 987654321, 1, '2024-02-22 16:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `Plates_Number` int(8) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `car_images`
--

INSERT INTO `car_images` (`Plates_Number`, `image_url`) VALUES
(44455566, 'fb53246f02ba63d067010af812fae585.jpeg'),
(44455566, 'a333311111dfe70a0e0972f78d17a5e2.jpeg'),
(44455566, '03e734c0ea65d382704693f4b1cb5fe8.jpeg'),
(56545, 'bb18f888c1cce0ae5e79289732783c58.jpeg'),
(56545, '2e296a825b9ad21200e40fd5c0fd98f1.jpeg'),
(56545, '475e3a945bf47015efb7e0b76007e180.jpeg'),
(7771113, 'default-car.jpg'),
(55544784, '70511c7a521add5f1a59a2415d9fc9e8.jpeg'),
(55544784, 'a6de714d0836757efb815a46ee3598c4.jpeg'),
(55544784, 'a5c783054fe53a5dd8e7307bc041d3f3.jpeg'),
(443123988, '40d6a010fa59b5426ee5679017581a2f.jpeg'),
(443123988, '4ffc2bc2fc0c71860f7b189731660582.jpeg'),
(443123988, 'e006072d9f43d148fbbaaf56a7daf02a.png'),
(55678644, 'f4dfe61a57b51ee68786b158b2acc2df.jpeg'),
(55678644, '72adbcb44fd577e8a6b5210dd2339953.png'),
(55678644, 'eb025ce77439c8ed4932a008292f7d14.png'),
(44433322, 'default-car.jpg'),
(66654322, 'b7315b36b0de5c900f99a02423842317.jpeg'),
(66654322, 'cd034aab52d4d015d4d9d08e1cccaf90.jpeg'),
(66654322, '2a8a7b94bde0f7a8c80d112456ed7df9.jpeg'),
(4441232, 'default-car.jpg'),
(55544333, '534301b49e9af5a7ae0154551bee5ad9.jpeg'),
(55544333, 'cb53f2da6323c56fb21f506756a278d5.jpeg'),
(55577787, 'f0cf4d073ff5e2af99be6dbb9be8617a.jpeg'),
(55577787, 'd5014824a12358f3db4a1bdba306e663.jpeg'),
(7893241, '74990ac2a2704ad9bb5d16018ef56a14.jpeg'),
(7893241, 'fb55b7ed8cc39b4bb05e17920c318f85.jpeg'),
(7893241, '21bdb46fffebb79a42c675364b989318.jpeg'),
(8887652, 'e66397d2fb22cd1437f2dffd8ff17ed4.jpeg'),
(8887652, '37aab2860c33bbf739c440b80ca124e1.jpeg'),
(55577788, 'default-car.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `car_manufacturer`
--

CREATE TABLE `car_manufacturer` (
  `Manufacturer_Code` varchar(20) NOT NULL,
  `Manufacturer_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `car_manufacturer`
--

INSERT INTO `car_manufacturer` (`Manufacturer_Code`, `Manufacturer_Name`) VALUES
('alfa romeo', 'Alfa Romeo'),
('audi', 'Audi'),
('bmw', 'BMW'),
('chevrolet', 'Chevrolet'),
('chrysler', 'Chrysler'),
('dacia', 'Dacia'),
('hyundai', 'Hyundai'),
('mazda', 'Mazda'),
('mini', 'MINI'),
('subaru', 'Subaru');

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `model_code` varchar(20) NOT NULL,
  `model_name` varchar(50) DEFAULT NULL,
  `Manufacturer_Code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`model_code`, `model_name`, `Manufacturer_Code`) VALUES
('146', '146', 'alfa romeo'),
('3', '3', 'mazda'),
('300 m', '300 M', 'chrysler'),
('a3', 'A3', 'audi'),
('camaro', 'Camaro', 'chevrolet'),
('cooper', 'Cooper', 'mini'),
('crossfire', 'Crossfire', 'chrysler'),
('duster', 'Duster', 'dacia'),
('elantra', 'Elantra', 'hyundai'),
('giulietta', 'Giulietta', 'alfa romeo'),
('impreza', 'Impreza', 'subaru'),
('s3/s3 sportback', 'S3/S3 Sportback', 'audi'),
('x5', 'X5', 'bmw'),
('x6', 'X6', 'bmw');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` int(11) NOT NULL,
  `user1_id` int(9) NOT NULL,
  `user2_id` int(9) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`id`, `user1_id`, `user2_id`, `created_at`) VALUES
(66, 211789765, 987654321, '2024-02-22 23:09:20'),
(67, 211789765, 987123456, '2024-02-22 23:12:01'),
(68, 211789765, 123456789, '2024-02-22 23:12:08'),
(69, 123456789, 654321987, '2024-02-22 23:13:17'),
(70, 123456789, 987123456, '2024-02-22 23:13:23'),
(71, 123456789, 987654321, '2024-02-22 23:13:26'),
(72, 654321987, 211789765, '2024-02-22 23:14:07'),
(73, 987654321, 654321987, '2024-02-22 23:14:57'),
(74, 444444444, 123456789, '2024-02-22 23:18:46'),
(75, 444444444, 211789765, '2024-02-22 23:18:47'),
(76, 444444444, 654321987, '2024-02-22 23:18:48'),
(77, 444444444, 987123456, '2024-02-22 23:18:48'),
(78, 444444444, 987654321, '2024-02-22 23:18:49'),
(79, 987654321, 987123456, '2024-03-16 11:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `City_Code` int(10) NOT NULL,
  `City_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`City_Code`, `City_Name`) VALUES
(1, 'Tel Aviv'),
(2, 'Haifa'),
(57, 'Shfaram'),
(59, 'Acre');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(9) NOT NULL,
  `text` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `chat_room_id`, `user_id`, `text`, `timestamp`, `isRead`) VALUES
(320, 68, 211789765, 'hdfhfsd', '2024-03-13 07:49:46', 1),
(321, 68, 211789765, 'fdhgdfhfd', '2024-03-13 07:50:02', 1),
(322, 68, 123456789, 'fdghfdhdh', '2024-03-13 07:50:11', 1),
(323, 75, 211789765, 'hey admin', '2024-03-14 07:39:56', 1),
(324, 75, 444444444, 'Hello how can i help you ?', '2024-03-14 07:40:16', 1),
(325, 75, 211789765, 'dfsdagdsgg', '2024-03-14 07:58:19', 0),
(326, 75, 211789765, 'dgdsagadsg', '2024-03-14 07:59:57', 0),
(327, 75, 211789765, 'aloooo', '2024-03-14 08:04:28', 0),
(328, 75, 211789765, 'alooo', '2024-03-14 08:10:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `userId` int(9) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_id` int(11) DEFAULT NULL,
  `targetId` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `userId`, `message`, `type`, `isRead`, `created_at`, `order_id`, `targetId`) VALUES
(223, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 19:04:41', 229, 211789765),
(224, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 19:08:08', 230, 123456789),
(225, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-02-22 19:08:35', 229, NULL),
(226, 123456789, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-02-22 19:21:12', 230, NULL),
(227, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 20:28:53', 231, 654321987),
(228, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:19:28', 232, 211789765),
(229, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:20:49', 233, 123456789),
(230, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:21:37', 234, 654321987),
(231, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:22:18', 235, 654321987),
(232, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:28:27', 236, 123456789),
(233, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:29:02', 237, 654321987),
(234, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:54:47', 238, 211789765),
(235, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:55:20', 239, 211789765),
(236, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:55:58', 240, 211789765),
(237, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 21:59:01', 241, 211789765),
(238, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-22 22:00:13', 242, 211789765),
(239, NULL, 'The renter declined your order', 'order-declined-notification', 1, '2024-02-22 22:07:28', NULL, NULL),
(240, NULL, 'The renter declined your order', 'order-declined-notification', 1, '2024-02-22 22:07:28', NULL, NULL),
(241, NULL, 'The renter declined your order', 'order-declined-notification', 1, '2024-02-22 22:07:28', NULL, NULL),
(242, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-02-22 22:07:28', 232, NULL),
(243, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:11:49', NULL, 987654321),
(244, 987654321, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:11:55', NULL, 211789765),
(245, 987123456, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:12:06', NULL, 211789765),
(246, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:12:15', NULL, 211789765),
(247, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:13:15', NULL, 123456789),
(248, 654321987, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:13:22', NULL, 123456789),
(249, 987123456, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:13:25', NULL, 123456789),
(250, 987654321, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:13:32', NULL, 123456789),
(251, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:14:22', NULL, 654321987),
(252, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-02-22 23:15:10', NULL, 987654321),
(253, 211789765, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-23 09:04:21', 243, 123456789),
(254, 211789765, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-23 09:04:47', 244, 123456789),
(255, 211789765, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-02-23 09:32:14', 245, 123456789),
(256, NULL, 'The renter declined your order', 'order-declined-notification', 1, '2024-02-23 09:33:32', NULL, NULL),
(257, 123456789, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-02-23 09:33:32', 243, NULL),
(258, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-02-23 09:34:29', NULL, 123456789),
(259, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-02-23 09:34:33', NULL, 211789765),
(260, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-01 16:15:04', 246, 211789765),
(261, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-01 16:17:34', 246, NULL),
(262, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-01 16:28:14', 247, 654321987),
(263, 654321987, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-01 16:28:42', 247, NULL),
(264, 211789765, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-02 15:53:01', 248, 123456789),
(265, 123456789, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-02 15:54:24', 248, NULL),
(266, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 16:24:58', 249, 211789765),
(267, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 16:30:33', 250, 211789765),
(268, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 16:31:59', 251, 211789765),
(269, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 16:32:40', 252, 211789765),
(270, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 16:33:56', 253, 211789765),
(271, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 17:06:45', 254, 211789765),
(272, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 17:08:07', 255, 211789765),
(273, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 17:09:16', 256, 211789765),
(274, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-03 17:11:15', 257, 211789765),
(275, 211789765, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-09 17:01:38', 258, 123456789),
(276, 123456789, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-10 18:17:23', 259, 211789765),
(277, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-03-12 16:09:35', NULL, 123456789),
(278, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-03-12 16:10:01', NULL, 211789765),
(279, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-03-12 16:10:29', NULL, 211789765),
(280, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-03-13 07:49:46', NULL, 211789765),
(281, 123456789, 'You have a new message', 'recieve-message-notification', 1, '2024-03-13 07:50:02', NULL, 211789765),
(282, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-03-13 07:50:11', NULL, 123456789),
(283, 444444444, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 07:39:56', NULL, 211789765),
(284, 211789765, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 07:40:16', NULL, 444444444),
(285, 444444444, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 07:58:19', NULL, 211789765),
(286, 444444444, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 07:59:57', NULL, 211789765),
(287, 444444444, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 08:04:28', NULL, 211789765),
(288, 444444444, 'You have a new message', 'recieve-message-notification', 1, '2024-03-14 08:10:37', NULL, 211789765),
(289, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-14 10:36:39', 260, 123456789),
(290, 123456789, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-14 10:37:17', 260, NULL),
(291, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-16 10:47:50', 261, 123456789),
(292, 987654321, 'You have a new order on one of your cars', 'order-request-notification', 1, '2024-03-16 11:12:11', 262, 211789765),
(293, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-16 11:48:31', 262, NULL),
(294, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-16 11:52:31', 262, NULL),
(295, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-16 11:54:38', 262, NULL),
(296, 211789765, 'The renter accepted your order', 'order-accepted-notification', 1, '2024-03-16 11:57:49', 262, NULL),
(297, 211789765, 'The renter declined your order', 'order-declined-notification', 1, '2024-03-16 12:14:57', 262, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `Car_Plates_Number` int(8) DEFAULT NULL,
  `Rentee_id` int(9) DEFAULT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `status` varchar(30) NOT NULL,
  `Renter_Id` int(11) DEFAULT NULL,
  `Order_Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Start_Date`, `End_Date`, `Order_Id`, `Car_Plates_Number`, `Rentee_id`, `Start_Time`, `End_Time`, `status`, `Renter_Id`, `Order_Date`) VALUES
('2019-01-01', '2019-01-02', 21, 56545, 987123456, '09:00:00', '18:00:00', 'accepted', 211789765, '2018-12-31 22:00:00'),
('2020-02-15', '2020-02-16', 22, 7771113, 987123456, '10:00:00', '20:00:00', 'accepted', 123456789, '2020-02-14 22:00:00'),
('2021-03-10', '2021-03-11', 23, 7893241, 987654321, '08:00:00', '17:00:00', 'declined', 123456789, '2021-03-09 22:00:00'),
('2022-04-20', '2022-04-21', 24, 8887652, 211789765, '12:00:00', '22:00:00', 'cancelled', 987654321, '2022-04-19 21:00:00'),
('2023-05-05', '2023-05-06', 25, 44433322, 211789765, '11:00:00', '19:00:00', 'accepted', 654321987, '2023-05-04 21:00:00'),
('2019-06-10', '2019-06-11', 26, 55678644, 211789765, '13:00:00', '23:00:00', 'accepted', 654321987, '2019-06-09 21:00:00'),
('2020-07-02', '2020-07-03', 27, 44455566, 123456789, '14:00:00', '22:00:00', 'declined', 211789765, '2020-07-01 21:00:00'),
('2021-08-15', '2021-08-16', 28, 55577788, 654321987, '15:00:00', '21:00:00', 'cancelled', 987654321, '2021-08-14 21:00:00'),
('2022-09-01', '2022-09-02', 29, 4441232, 987123456, '16:00:00', '20:00:00', 'accepted', 211789765, '2022-08-31 21:00:00'),
('2023-10-12', '2023-10-13', 30, 443123988, 211789765, '17:00:00', '19:00:00', 'accepted', 987654321, '2023-10-11 21:00:00'),
('2019-11-03', '2019-11-04', 31, 55544333, 211789765, '18:00:00', '23:00:00', 'declined', 123456789, '2019-11-02 22:00:00'),
('2020-12-20', '2020-12-21', 32, 66654322, 987123456, '19:00:00', '21:00:00', 'cancelled', 654321987, '2020-12-19 22:00:00'),
('2021-01-05', '2021-01-06', 33, 7893241, 987123456, '20:00:00', '22:00:00', 'accepted', 123456789, '2021-01-04 22:00:00'),
('2022-02-18', '2022-02-19', 34, 4441232, 987123456, '21:00:00', '23:00:00', 'accepted', 211789765, '2022-02-17 22:00:00'),
('2019-04-25', '2019-04-26', 36, 56545, 654321987, '00:00:00', '08:00:00', 'cancelled', 211789765, '2019-04-24 21:00:00'),
('2020-05-08', '2020-05-09', 37, 55577788, 211789765, '01:00:00', '09:00:00', 'accepted', 987654321, '2020-05-07 21:00:00'),
('2021-06-23', '2021-06-24', 38, 55577788, 211789765, '02:00:00', '10:00:00', 'declined', 987654321, '2021-06-22 21:00:00'),
('2022-07-07', '2022-07-08', 39, 55577788, 654321987, '03:00:00', '11:00:00', 'declined', 987654321, '2022-07-06 21:00:00'),
('2023-08-20', '2023-08-21', 40, 56545, 987654321, '04:00:00', '12:00:00', 'accepted', 211789765, '2023-08-19 21:00:00'),
('2023-09-20', '2023-08-21', 41, 56545, 123456789, '04:00:00', '12:00:00', 'cancelled', 211789765, '2023-08-19 21:00:00'),
('2022-07-07', '2022-07-08', 50, 55577788, 654321987, '03:00:00', '11:00:00', 'declined', 987654321, '2022-07-06 21:00:00'),
('2023-03-03', '2023-03-04', 100, 4441232, 654321987, '22:00:00', '23:59:59', 'declined', 211789765, '2023-03-02 22:00:00'),
('2019-01-05', '2024-01-06', 102, 56545, 654321987, '00:00:00', '08:00:00', 'cancelled', 211789765, '2019-04-24 21:00:00'),
('2024-01-03', '2024-01-04', 103, 4441232, 654321987, '22:00:00', '23:59:59', 'declined', 211789765, '2023-03-02 22:00:00'),
('2020-01-19', '2020-01-20', 107, 55577788, 211789765, '01:00:00', '09:00:00', 'accepted', 987654321, '2020-05-07 21:00:00'),
('2021-06-25', '2021-06-26', 109, 55577788, 654321987, '02:00:00', '10:00:00', 'declined', 987654321, '2021-06-22 21:00:00'),
('2024-02-23', '2024-02-23', 232, 8887652, 211789765, '09:00:00', '21:00:00', 'accepted', 987654321, '2024-02-22 22:07:28'),
('2024-02-23', '2024-02-23', 238, 8887652, 211789765, '10:00:00', '22:00:00', 'accepted', 987654321, '2024-03-11 16:17:47'),
('2024-02-23', '2024-02-23', 239, 8887652, 211789765, '09:30:00', '20:30:00', 'accepted', 987654321, '2024-03-11 16:17:54'),
('2024-02-23', '2024-02-23', 240, 8887652, 211789765, '08:00:00', '14:00:00', 'declined', 987654321, '2024-02-22 22:07:28'),
('2024-02-23', '2024-02-23', 241, 8887652, 211789765, '07:00:00', '08:00:00', 'cancelled', 987654321, '2024-02-22 22:08:14'),
('2024-02-23', '2024-02-23', 242, 8887652, 211789765, '22:00:00', '23:00:00', 'cancelled', 987654321, '2024-02-22 22:08:15'),
('2024-02-24', '2024-02-25', 243, 56545, 123456789, '10:00:00', '10:00:00', 'accepted', 211789765, '2024-02-23 09:33:32'),
('2024-02-27', '2024-02-29', 244, 44455566, 123456789, '10:00:00', '10:00:00', 'cancelled', 211789765, '2024-03-02 15:53:19'),
('2024-02-24', '2024-02-25', 245, 56545, 123456789, '10:00:00', '10:00:00', 'declined', 211789765, '2024-02-23 09:33:32'),
('2024-03-04', '2024-03-05', 246, 7893241, 211789765, '10:00:00', '10:00:00', 'accepted', 123456789, '2024-03-03 16:24:48'),
('2024-03-13', '2024-03-14', 248, 56545, 123456789, '10:00:00', '10:00:00', 'accepted', 211789765, '2024-03-02 15:54:24'),
('2024-03-15', '2024-03-16', 258, 56545, 123456789, '10:00:00', '10:00:00', 'accepted', 211789765, '2024-03-12 08:04:44'),
('2024-03-29', '2024-03-30', 259, 7893241, 211789765, '10:00:00', '10:00:00', 'cancelled', 123456789, '2024-03-11 18:55:06'),
('2024-03-30', '2024-03-31', 260, 8887652, 123456789, '10:00:00', '10:00:00', 'accepted', 987654321, '2024-03-14 10:37:17'),
('2024-03-22', '2024-03-23', 262, 8887652, 211789765, '10:00:00', '10:00:00', 'cancelled', 987654321, '2024-03-16 16:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `Id` int(9) NOT NULL,
  `Reported_User_Id` int(9) DEFAULT NULL,
  `Reporting_User_Id` int(9) DEFAULT NULL,
  `Report_Cause` varchar(50) DEFAULT NULL,
  `Message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`Id`, `Reported_User_Id`, `Reporting_User_Id`, `Report_Cause`, `Message`) VALUES
(29, 123456789, 211789765, 'Spam', 'Spam messages'),
(30, 123456789, 654321987, 'Spam', 'spammer'),
(31, 123456789, 987654321, 'Other', 'spammer'),
(32, 211789765, 987654321, 'Harassment', 'Bad '),
(33, 211789765, 123456789, 'Inappropriate Content', 'swear words'),
(34, 211789765, 987123456, 'Other', 'idk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(9) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `driving_license` varchar(10) NOT NULL,
  `picture` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city_code` int(2) DEFAULT NULL,
  `street_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `isadmin` tinyint(1) DEFAULT 0,
  `status` enum('active','disabled') DEFAULT 'active',
  `Report_Counter` int(20) DEFAULT 0,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `phone_number`, `driving_license`, `picture`, `email`, `password`, `city_code`, `street_name`, `first_name`, `last_name`, `isadmin`, `status`, `Report_Counter`, `register_date`) VALUES
(123432781, 501234567, '1234567', 'default.jpg', 'john@gmail.com', '$2a$10$HTClLOraHCGWORneEd9Ife2d.le9b98FL2TynMqVXlGvfAgHfjbrm\r\n', 1, 'Main Street', 'John', 'Doe', 0, 'active', 0, '2019-08-01 21:00:00'),
(123450987, 501234509, '1234509', 'default.jpg', 'michael@gmail.com', '$2a$10$0HWusKCwfwnGjkr1FZQfm.gyM1OWV2IDj5cglGYBXXIYcqrlr7cru\r\n', 2, 'Sycamore Lane', 'Michael', 'Anderson', 0, 'active', 0, '2024-05-30 21:00:00'),
(123456789, 555123456, '987654321', '61ed6df47c6ef64750336fadf74186c0.jpeg', 'aumartaha92@gmail.com', '$2b$10$MREwnpyD/D3J7baEfLRO4OfM5OL7UxumDjAlKvTvb9gRiwwuTUoN2', 2, 'HaifaStreet2', 'Omar', 'Taha', 0, 'active', 3, '2024-03-10 18:17:03'),
(123459876, 501234598, '1234598', 'default.jpg', 'ava@gmail.com', '$2a$10$y3iRsJTpfnW68jwy5SWtluhGU7ysvnIqXvY2qR//Jcfdve5arLhya\r\n', 1, 'Chestnut Avenue', 'Ava', 'Nguyen', 0, 'active', 0, '2021-12-14 22:00:00'),
(211789765, 526595158, '334567890', '406ea153dddd303c6037076ed9ff24fe.jpeg', 'sobhi_college@outlook.co.il', '$2b$10$0t5dzAMgc7I6hjJiOjKgpOCwv.CUX67/QQHXzg9X/F/nF49OMBFVK', 57, 'shfaram1', 'sobhi', 'shehab', 0, 'active', 3, '2024-03-17 21:01:43'),
(234560987, 502345609, '2345609', 'default.jpg', 'james@gmail.com', '$2a$10$x0uvfmutE5iftNtWW/.mX.ykkcMgJ8XJQOYxbAHdP/XlzHrF7EgsC\r\n', 57, 'Sycamore Avenue', 'James', 'Rivera', 0, 'active', 0, '2022-07-06 21:00:00'),
(234561098, 502345610, '2345610', 'default.jpg', 'emily@gmail.com', '$2a$10$Z8P9b2HEkx1dcYGmaXw.hO2R883hAz2ZZCQc0lIBAQJKU5g8kidd6\r\n', 2, 'Oak Street', 'Emily', 'Martinez', 0, 'active', 0, '2020-11-02 22:00:00'),
(234567890, 502345678, '2345678', 'default.jpg', 'jane@gmail.com', '$2a$10$6j54jFZivbkgXKFh2uog3eZVNrt/EmBZvGiELppYfi4.VYAMOSuAe\r\n', 1, 'Broadway', 'Jane', 'Smith', 0, 'active', 0, '2024-02-29 22:00:00'),
(345671098, 503456710, '3456710', 'default.jpg', 'amelia@gmail.com', '$2a$10$cJnyFGan8Bq7UT.KiWZ.KOJZvL2HEtD6QTpvbtCRn61jpXyK8XGSK\r\n', 57, 'Oak Lane', 'Amelia', 'Garcia', 0, 'active', 0, '2021-09-14 21:00:00'),
(345672109, 503456721, '3456721', 'default.jpg', 'jacob@gmail.com', '$2a$10$07CRrtlqctqnLUyjX5rh6uky1IiMvr0MzL2tIxUOP.ge6IschgORu\r\n', 2, 'Pine Avenue', 'Jacob', 'Hernandez', 0, 'active', 0, '2023-12-15 22:00:00'),
(444444444, 526556432, '444333444', 'default.jpg', 'admin@gmail.com', '$2b$10$mK7o3yEc60tCNMn.OIz3Cu8t2unHkbPRHOXqkmE0XOZfsJVdzb3eK', 57, 'shfar12', 'Admin', 'aa', 1, 'active', 0, '2024-02-22 23:17:37'),
(456782109, 504567821, '4567821', 'default.jpg', 'alexander@gmail.com', '$2a$10$OecW7L6R366uTDXpBjFiee6aK2YVbY72/veq4FxIfa7N4TLRULgbO\r\n', 57, 'Pine Lane', 'Alexander', 'Martinez', 0, 'active', 0, '2021-12-24 22:00:00'),
(456783210, 504567832, '4567832', 'default.jpg', 'olivia@gmail.com', '$2a$10$S/X6wvzGGUs4TV1xGh5vCukVS5gOI4mQLBTfwVkspmevzCvISqWPa\r\n', 57, 'Maple Street', 'Olivia', 'Lopez', 0, 'active', 0, '2020-04-07 21:00:00'),
(567893210, 505678932, '5678932', 'default.jpg', 'sophia@gmail.com', '$2a$10$8ypjkhmSPk8DBG1VZXR4H.zN51f0Dov3E96LNKgqkWh81kkqaMED.\r\n', 57, 'Maple Road', 'Sophia', 'White', 0, 'active', 0, '2019-10-20 21:00:00'),
(567894321, 505678943, '5678943', 'default.jpg', 'william@gmail.com', '$2a$10$Y2YnClLfz0iLLvmunf8O3uUxQPjHMlvJe4WmGEdGDBOMDRrkGL3va\r\n', 59, 'Cedar Lane', 'William', 'Gonzalez', 0, 'active', 0, '2022-06-20 21:00:00'),
(654321987, 555654321, '789456123', 'default.jpg', 'charlie@gmail.com', '$2b$10$ELExUR21QCb.R.OFHrjlcezPqUXm.LR77EKU.bkLvjFVIWtiO7Jt.', 59, 'Streeta5', 'Charlie', 'Brown', 0, 'active', 0, '2024-02-22 16:06:40'),
(678901234, 506789012, '6789012', 'default.jpg', 'adam@gmail.com', '$2a$10$8ZhoMfUfcO7PNpINqQr/Q.bfWh7uNp3c9Edw5Ez.q1uOx9rSvIlay\r\n', 1, 'Pine Street', 'Adam', 'Jones', 0, 'active', 0, '2019-01-28 22:00:00'),
(678905432, 506789054, '6789054', 'default.jpg', 'ava@gmail.com', '$2a$10$MCYmBvEDLbHVdMySRyBpyuAKdqO/ysE0Pd3y9FOef/8TIm9k4alye\r\n', 59, 'Elm Street', 'Ava', 'Perez', 0, 'active', 0, '2020-07-17 21:00:00'),
(789012345, 507890123, '7890123', 'default.jpg', 'sarah@gmail.com', '$2a$10$0b9Mx/VcQRH63qrjNa.izO2s72k/zuhyV06jA6sAKCEKefYTCV7tO\r\n', 1, 'Maple Avenue', 'Sarah', 'Wilson', 0, 'active', 0, '2021-11-20 22:00:00'),
(789016543, 507890165, '7890165', 'default.jpg', 'noah@gmail.com', '$2a$10$blfr.LTRmcGmTDFgl3JIxOzN5PNyXwP4TeLU3M4GyFMKZKEpMjPTG\r\n', 59, 'Pine Road', 'Noah', 'Roberts', 0, 'active', 0, '2022-04-24 21:00:00'),
(890123456, 508901234, '8901234', 'default.jpg', 'chris@gmail.com', '$2a$10$RqMZi8zbowNoDIpKeLe3zuk2aXLsoVrwolCVnCeyQQmYze01OI0zi\r\n', 1, 'Walnut Lane', 'Chris', 'Miller', 0, 'active', 0, '2021-03-19 22:00:00'),
(890127654, 508901276, '8901276', 'default.jpg', 'mia@gmail.com', '$2a$10$qSUtv8K.1GTN/0gT7Z340uhfrsmcZXwHCup2p7CikllB4rPKM0hpS\r\n', 57, 'Maple Lane', 'Mia', 'Stewart', 0, 'active', 0, '2024-12-08 22:00:00'),
(901234567, 509012345, '9012345', 'default.jpg', 'laura@gmail.com', '$2a$10$RqMZi8zbowNoDIpKeLe3zuk2aXLsoVrwolCVnCeyQQmYze01OI0zi\r\n', 2, 'Chestnut Street', 'Laura', 'Taylor', 0, 'active', 0, '2021-05-30 21:00:00'),
(901238765, 509012387, '9012387', 'default.jpg', 'ethan@gmail.com', '$2a$10$tY/IXUa5XEUbyGIvDjeq2.uGOeZr9gNKpzEoak0QKH8iE.wyZnrcm\r\n', 57, 'Walnut Street', 'Ethan', 'Morris', 0, 'active', 0, '2020-10-02 21:00:00'),
(987123456, 555987123, '123456334', 'default.jpg', 'harry@gmail.com', '$2b$10$yTD/kQyIk/ifPwHsEe0QiuK12wdXYswG8kYtj1VN0jOilUQlNohs.', 57, 'dfgdlf55', 'harry', 'brown', 0, 'active', 0, '2024-02-22 16:08:08'),
(987654321, 555987654, '123456789', 'default.jpg', 'bob@gmail.com', '$2b$10$aEiDkZBCbsv7bWngna5xpeIhDb.sNy957AJALJVSgiH90PNRVKlxu', 1, 'Street2', 'bob', 'smith', 0, 'active', 0, '2024-02-22 16:04:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`Plates_Number`),
  ADD KEY `fk_cars_car_manufacturer` (`Manufacturer_Code`),
  ADD KEY `fk_cars_car_models` (`model_code`),
  ADD KEY `FK_Cars_Users` (`Renter_Id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
  ADD KEY `fk_car_images_cars` (`Plates_Number`);

--
-- Indexes for table `car_manufacturer`
--
ALTER TABLE `car_manufacturer`
  ADD PRIMARY KEY (`Manufacturer_Code`);

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`model_code`),
  ADD KEY `fk_car_models_manufacturer` (`Manufacturer_Code`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user1_id` (`user1_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`City_Code`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_room_id` (`chat_room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `fk_notifications_users` (`targetId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `fk_orders_rentee` (`Rentee_id`),
  ADD KEY `fk_orders_car` (`Car_Plates_Number`),
  ADD KEY `FK_Renter_Id` (`Renter_Id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Reported_User_Id` (`Reported_User_Id`),
  ADD KEY `Reporting_User_Id` (`Reporting_User_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_city_code` (`city_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `Id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_Cars_Users` FOREIGN KEY (`Renter_Id`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `fk_cars_car_manufacturer` FOREIGN KEY (`Manufacturer_Code`) REFERENCES `car_manufacturer` (`Manufacturer_Code`),
  ADD CONSTRAINT `fk_cars_car_models` FOREIGN KEY (`model_code`) REFERENCES `car_models` (`model_code`);

--
-- Constraints for table `car_images`
--
ALTER TABLE `car_images`
  ADD CONSTRAINT `fk_car_images_cars` FOREIGN KEY (`Plates_Number`) REFERENCES `cars` (`Plates_Number`);

--
-- Constraints for table `car_models`
--
ALTER TABLE `car_models`
  ADD CONSTRAINT `fk_car_models_manufacturer` FOREIGN KEY (`Manufacturer_Code`) REFERENCES `car_manufacturer` (`Manufacturer_Code`);

--
-- Constraints for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD CONSTRAINT `chat_rooms_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `chat_rooms_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_users` FOREIGN KEY (`targetId`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`Id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Renter_Id` FOREIGN KEY (`Renter_Id`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `fk_orders_car` FOREIGN KEY (`Car_Plates_Number`) REFERENCES `cars` (`Plates_Number`),
  ADD CONSTRAINT `fk_orders_rentee` FOREIGN KEY (`Rentee_id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`Reported_User_Id`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`Reporting_User_Id`) REFERENCES `users` (`Id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_city_code` FOREIGN KEY (`city_code`) REFERENCES `cities` (`City_Code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
