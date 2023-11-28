-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 04:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbminimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `thumbnail`) VALUES
(1, 'Bách Hoá Xanh', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/bach-hoa-xanh-1504202116252.jpeg'),
(2, 'C.P', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/cp-14032021212030.jpg'),
(3, 'Meat Master', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/meat-master-10112021105831.jpeg'),
(4, 'NT Pearly Food', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nt-pearly-food-11092023134831.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `total` float UNSIGNED DEFAULT NULL,
  `saved` float UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 1,
  `total` float UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `category_group_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `thumbnail`, `product_quantity`, `category_group_id`) VALUES
(1, 'Thịt heo', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8781/bhx/icon_8781.png', NULL, 1),
(2, 'Thịt bò', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8139/bhx/thit-bo-cac-loai-202212051413547147.png', NULL, 1),
(3, 'Thịt gà, thịt vịt, thịt chim', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8790/bhx/thit-ga-thit-vit-202212051413239059.png', NULL, 1),
(4, 'Thịt sơ chế, tẩm ướp', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/12718/bhx/thit-so-che-tam-uop-202308231439054959.png', NULL, 1),
(5, 'Cá, hải sản', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8782/bhx/8782_st_2.png', NULL, 1),
(6, 'Trứng gà, vịt, cút', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/8783/bhx/trung-ga-vit-cut-202212051414238645.png', NULL, 1),
(7, 'Thực phẩm làm sẵn', NULL, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_103x103/https://cdn.tgdd.vn/Products/Images/7259/bhx/lam-san-an-lien-202212051420429655.png', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_group`
--

CREATE TABLE `category_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_group`
--

INSERT INTO `category_group` (`id`, `name`, `thumbnail`) VALUES
(1, 'THỊT, CÁ, TRỨNG, HẢI SẢN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `thumbnail`, `product_id`) VALUES
(1, 'https://cdn.tgdd.vn/Products/Images/8781/319229/bhx/nac-dam-heo-nhap-khau-500g-hat-nem-nam-huong-maggi-450g-dong-lanh-500g-202311201507328081.jpg', 1),
(2, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 1),
(3, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 1),
(4, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/hat-nem-cao-cap-vi-nam-huong-maggi-goi-450g-202207291105505226.jpg', 1),
(5, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/sellingpoint.jpg', 1),
(6, 'https://cdn.tgdd.vn/Products/Images/8781/319229/bhx/nac-dam-heo-nhap-khau-500g-hat-nem-nam-huong-maggi-450g-dong-lanh-500g-202311201507328081.jpg', 1),
(7, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 1),
(8, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 1),
(9, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/hat-nem-cao-cap-vi-nam-huong-maggi-goi-450g-202207291105505226.jpg', 1),
(10, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/sellingpoint.jpg', 1),
(11, 'https://cdn.tgdd.vn/Products/Images/8781/319228/bhx/ba-roi-heo-nhap-khau-dong-lanh-500g-hat-nem-maggi-400g-202311201604013696.jpg', 2),
(12, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202306090838016447.jpg', 2),
(13, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202307141303033442.jpg', 2),
(14, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724063767.jpg', 2),
(15, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724078340.jpg', 2),
(16, 'https://cdn.tgdd.vn/Products/Images/8781/319228/bhx/ba-roi-heo-nhap-khau-dong-lanh-500g-hat-nem-maggi-400g-202311201604013696.jpg', 2),
(17, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202306090838016447.jpg', 2),
(18, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202307141303033442.jpg', 2),
(19, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724063767.jpg', 2),
(20, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724078340.jpg', 2),
(21, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448544376.jpg', 3),
(22, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448540691.jpg', 3),
(23, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448547895.jpg', 3),
(24, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448551426.jpg', 3),
(25, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448544376.jpg', 3),
(26, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448540691.jpg', 3),
(27, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448547895.jpg', 3),
(28, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448551426.jpg', 3),
(29, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143306697.jpg', 4),
(30, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143310711.jpg', 4),
(31, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143314362.jpg', 4),
(32, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143333213.jpg', 4),
(33, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143327629.jpg', 4),
(34, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143330301.jpg', 4),
(35, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143306697.jpg', 4),
(36, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143310711.jpg', 4),
(37, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143314362.jpg', 4),
(38, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143333213.jpg', 4),
(39, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143327629.jpg', 4),
(40, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143330301.jpg', 4),
(41, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 5),
(42, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 5),
(43, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823403997.jpg', 5),
(44, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823412672.jpg', 5),
(45, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823415514.jpg', 5),
(46, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823418262.jpg', 5),
(47, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823420762.jpg', 5),
(48, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823424731.jpg', 5),
(49, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 5),
(50, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 5),
(51, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823403997.jpg', 5),
(52, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823412672.jpg', 5),
(53, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823415514.jpg', 5),
(54, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823418262.jpg', 5),
(55, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823420762.jpg', 5),
(56, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823424731.jpg', 5),
(57, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 6),
(58, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 6),
(59, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013498707.jpg', 6),
(60, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013508613.jpg', 6),
(61, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013522328.jpg', 6),
(62, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013531607.jpg', 6),
(63, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013552943.jpg', 6),
(64, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013569898.jpg', 6),
(65, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 6),
(66, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 6),
(67, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013498707.jpg', 6),
(68, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013508613.jpg', 6),
(69, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013522328.jpg', 6),
(70, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013531607.jpg', 6),
(71, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013552943.jpg', 6),
(72, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013569898.jpg', 6),
(73, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090845057118.jpg', 7),
(74, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202307141309094816.jpg', 7),
(75, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844352206.jpg', 7),
(76, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844355081.jpg', 7),
(77, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844357617.jpg', 7),
(78, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090845057118.jpg', 7),
(79, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202307141309094816.jpg', 7),
(80, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844352206.jpg', 7),
(81, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844355081.jpg', 7),
(82, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844357617.jpg', 7),
(83, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090843334771.jpg', 8),
(84, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202307141310418302.jpg', 8),
(85, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842491299.jpg', 8),
(86, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842496758.jpg', 8),
(87, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842499462.jpg', 8),
(88, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090843334771.jpg', 8),
(89, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202307141310418302.jpg', 8),
(90, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842491299.jpg', 8),
(91, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842496758.jpg', 8),
(92, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842499462.jpg', 8),
(93, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505049353.jpg', 9),
(94, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505052841.jpg', 9),
(95, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505054868.jpg', 9),
(96, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505057352.jpg', 9),
(97, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505049353.jpg', 9),
(98, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505052841.jpg', 9),
(99, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505054868.jpg', 9),
(100, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505057352.jpg', 9),
(101, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936560456.jpg', 10),
(102, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936563949.jpg', 10),
(103, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936569049.jpg', 10),
(104, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936573992.jpg', 10),
(105, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936560456.jpg', 10),
(106, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936563949.jpg', 10),
(107, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936569049.jpg', 10),
(108, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936573992.jpg', 10),
(109, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512332166.jpg', 11),
(110, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512542161.jpg', 11),
(111, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512544546.jpg', 11),
(112, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512547260.jpg', 11),
(113, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512550754.jpg', 11),
(114, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512553145.jpg', 11),
(115, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512332166.jpg', 11),
(116, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512542161.jpg', 11),
(117, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512544546.jpg', 11),
(118, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512547260.jpg', 11),
(119, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512550754.jpg', 11),
(120, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512553145.jpg', 11),
(121, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709376275.jpg', 13),
(122, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709379387.jpg', 13),
(123, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709382822.jpg', 13),
(124, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709387007.jpg', 13),
(125, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709376275.jpg', 13),
(126, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709379387.jpg', 13),
(127, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709382822.jpg', 13),
(128, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709387007.jpg', 13),
(129, 'https://cdn.tgdd.vn/Products/Images/8781/309992/bhx/-202311061348346522.jpg', 15),
(130, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954033334.jpg', 15),
(131, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954037417.jpg', 15),
(132, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954039788.jpg', 15),
(133, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954042207.jpg', 15),
(134, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954044414.jpg', 15),
(135, 'https://cdn.tgdd.vn/Products/Images/8781/309992/bhx/-202311061348346522.jpg', 15),
(136, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954033334.jpg', 15),
(137, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954037417.jpg', 15),
(138, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954039788.jpg', 15),
(139, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954042207.jpg', 15),
(140, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954044414.jpg', 15),
(141, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090841143145.jpg', 17),
(142, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202307141303561627.jpg', 17),
(143, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840013522.jpg', 17),
(144, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840016862.jpg', 17),
(145, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840026384.jpg', 17),
(146, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090841143145.jpg', 17),
(147, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202307141303561627.jpg', 17),
(148, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840013522.jpg', 17),
(149, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840016862.jpg', 17),
(150, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840026384.jpg', 17),
(151, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051537117960.jpg', 18),
(152, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051532020062.jpg', 18),
(153, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531594857.jpg', 18),
(154, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531569998.jpg', 18),
(155, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531540599.jpg', 18),
(156, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531528318.jpg', 18),
(157, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531515664.jpg', 18),
(158, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051537117960.jpg', 18),
(159, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051532020062.jpg', 18),
(160, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531594857.jpg', 18),
(161, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531569998.jpg', 18),
(162, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531540599.jpg', 18),
(163, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531528318.jpg', 18),
(164, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531515664.jpg', 18),
(165, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-300g-202308281045510922.jpg', 19),
(166, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924286624.jpg', 19),
(167, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924292919.jpg', 19),
(168, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924295859.jpg', 19),
(169, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924289631.jpg', 19),
(170, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-300g-202308281045510922.jpg', 19),
(171, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924286624.jpg', 19),
(172, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924292919.jpg', 19),
(173, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924295859.jpg', 19),
(174, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924289631.jpg', 19),
(175, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220823306033.jpg', 20),
(176, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818413153.jpg', 20),
(177, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818416362.jpg', 20),
(178, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818418898.jpg', 20),
(179, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818422150.jpg', 20),
(180, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818425324.jpg', 20),
(181, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818428343.jpg', 20),
(182, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202307131019384745.jpg', 20),
(183, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220823306033.jpg', 20),
(184, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818413153.jpg', 20),
(185, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818416362.jpg', 20),
(186, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818418898.jpg', 20),
(187, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818422150.jpg', 20),
(188, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818425324.jpg', 20),
(189, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818428343.jpg', 20),
(190, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202307131019384745.jpg', 20),
(191, 'https://cdn.tgdd.vn/Products/Images/12718/304914/bhx/sellingpoint.jpg', 21),
(192, 'https://cdn.tgdd.vn/Products/Images/12718/304914/bhx/sellingpoint.jpg', 21),
(193, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031510296686.jpg', 22),
(194, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509158437.jpg', 22),
(195, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509161054.jpg', 22),
(196, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509165689.jpg', 22),
(197, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509167871.jpg', 22),
(198, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509169851.jpg', 22),
(199, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509163399.jpg', 22),
(200, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031510296686.jpg', 22),
(201, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509158437.jpg', 22),
(202, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509161054.jpg', 22),
(203, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509165689.jpg', 22),
(204, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509167871.jpg', 22),
(205, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509169851.jpg', 22),
(206, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509163399.jpg', 22),
(207, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/sellingpoint.jpg', 23),
(208, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919586452.jpg', 23),
(209, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919590823.jpg', 23),
(210, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919596543.jpg', 23),
(211, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919598958.jpg', 23),
(212, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919593667.jpg', 23),
(213, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/sellingpoint.jpg', 23),
(214, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919586452.jpg', 23),
(215, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919590823.jpg', 23),
(216, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919596543.jpg', 23),
(217, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919598958.jpg', 23),
(218, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919593667.jpg', 23),
(219, 'https://cdn.tgdd.vn/Products/Images/8790/318604/bhx/chan-ga-cp-500g-10-12-cai-202311111026220419.jpg', 24),
(220, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334402099.jpg', 24),
(221, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334405055.jpg', 24),
(222, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334409118.jpg', 24),
(223, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334412658.jpg', 24),
(224, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334415643.jpg', 24),
(225, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334418499.jpg', 24),
(226, 'https://cdn.tgdd.vn/Products/Images/8790/318604/bhx/chan-ga-cp-500g-10-12-cai-202311111026220419.jpg', 24),
(227, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334402099.jpg', 24),
(228, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334405055.jpg', 24),
(229, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334409118.jpg', 24),
(230, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334412658.jpg', 24),
(231, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334415643.jpg', 24),
(232, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334418499.jpg', 24),
(233, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307281019290466.jpg', 25),
(234, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648508256.jpg', 25),
(235, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648513170.jpg', 25),
(236, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648515302.jpg', 25),
(237, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648510860.jpg', 25),
(238, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307281019290466.jpg', 25),
(239, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648508256.jpg', 25),
(240, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648513170.jpg', 25),
(241, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648515302.jpg', 25),
(242, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648510860.jpg', 25),
(243, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307281019547012.jpg', 26),
(244, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650227786.jpg', 26),
(245, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650232933.jpg', 26),
(246, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650235575.jpg', 26),
(247, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650230645.jpg', 26),
(248, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307281019547012.jpg', 26),
(249, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650227786.jpg', 26),
(250, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650232933.jpg', 26),
(251, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650235575.jpg', 26),
(252, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650230645.jpg', 26),
(253, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307281020490591.jpg', 27),
(254, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651505679.jpg', 27),
(255, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651514255.jpg', 27),
(256, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651501295.jpg', 27),
(257, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651511081.jpg', 27),
(258, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307281020490591.jpg', 27),
(259, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651505679.jpg', 27),
(260, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651514255.jpg', 27),
(261, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651501295.jpg', 27),
(262, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651511081.jpg', 27),
(263, 'https://cdn.tgdd.vn/Products/Images/8781/312508/bhx/ba-roi-heo-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308031322364524.jpg', 28),
(264, 'https://cdn.tgdd.vn/Products/Images/8781/312508/bhx/ba-roi-heo-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308031322364524.jpg', 28),
(265, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 29),
(266, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 29),
(267, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 29),
(268, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 29),
(269, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 29),
(270, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 29),
(271, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 29),
(272, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 29),
(273, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 30),
(274, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 30),
(275, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 30),
(276, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 30),
(277, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 30),
(278, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 30),
(279, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 30),
(280, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 30),
(281, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202203251617285316.jpg', 31),
(282, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-khay-300g-202111262017472747.jpg', 31),
(283, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025554317.jpg', 31),
(284, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025572863.jpg', 31),
(285, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025584999.jpg', 31),
(286, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202203251617285316.jpg', 31),
(287, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-khay-300g-202111262017472747.jpg', 31),
(288, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025554317.jpg', 31),
(289, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025572863.jpg', 31),
(290, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025584999.jpg', 31),
(291, 'https://cdn.tgdd.vn/Products/Images/8790/312259/bhx/dui-toi-ga-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308011009319424.jpg', 32),
(292, 'https://cdn.tgdd.vn/Products/Images/8790/312259/bhx/dui-toi-ga-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308011009319424.jpg', 32),
(293, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 33),
(294, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 33),
(295, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 33),
(296, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 33),
(297, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 33),
(298, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 33),
(299, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 33),
(300, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 33),
(301, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 33),
(302, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 33),
(303, 'https://cdn.tgdd.vn/Products/Images/8781/312620/bhx/thit-bap-gio-cp-900g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031702285228.jpg', 34),
(304, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-1-2-mieng-202203251623170212.jpg', 34),
(305, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-202112021354122069.jpg', 34),
(306, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 34),
(307, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 34),
(308, 'https://cdn.tgdd.vn/Products/Images/8781/312620/bhx/thit-bap-gio-cp-900g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031702285228.jpg', 34),
(309, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-1-2-mieng-202203251623170212.jpg', 34),
(310, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-202112021354122069.jpg', 34),
(311, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 34),
(312, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 34),
(313, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-1-2-mieng-202203251629409852.jpg', 35),
(314, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021476293.jpg', 35),
(315, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021482672.jpg', 35),
(316, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262040326017.jpg', 35),
(317, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262024094311.jpg', 35),
(318, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262023294859.jpg', 35),
(319, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659365832.jpg', 35),
(320, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659370703.jpg', 35),
(321, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-1-2-mieng-202203251629409852.jpg', 35),
(322, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021476293.jpg', 35),
(323, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021482672.jpg', 35),
(324, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262040326017.jpg', 35),
(325, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262024094311.jpg', 35),
(326, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262023294859.jpg', 35),
(327, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659365832.jpg', 35),
(328, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659370703.jpg', 35),
(329, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-cp-khay-500g-4-6-mieng-202202111526042757.jpg', 36),
(330, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103141169.jpg', 36),
(331, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103154234.jpg', 36),
(332, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103184165.jpg', 36),
(333, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103188870.jpg', 36),
(334, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-cp-khay-500g-4-6-mieng-202202111526042757.jpg', 36),
(335, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103141169.jpg', 36),
(336, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103154234.jpg', 36),
(337, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103184165.jpg', 36),
(338, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103188870.jpg', 36),
(339, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 37),
(340, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 37),
(341, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 37),
(342, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 37),
(343, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 37),
(344, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 37),
(345, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 37),
(346, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 37),
(347, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 37),
(348, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 37),
(349, 'https://cdn.tgdd.vn/Products/Images/8781/312632/bhx/suon-gia-heo-cp-1kg-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031714502923.jpg', 38),
(350, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-cp-khay-500g-9-11-mieng-202203251627302886.jpg', 38),
(351, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-khay-500g-9-11-mieng-202111262106439880.jpg', 38),
(352, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 38),
(353, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 38),
(354, 'https://cdn.tgdd.vn/Products/Images/8781/312632/bhx/suon-gia-heo-cp-1kg-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031714502923.jpg', 38),
(355, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-cp-khay-500g-9-11-mieng-202203251627302886.jpg', 38),
(356, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-khay-500g-9-11-mieng-202111262106439880.jpg', 38),
(357, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 38),
(358, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 38),
(359, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-5-7-mieng-202202111525297279.jpg', 39),
(360, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-khay-500g-5-7-mieng-202112021358378527.jpg', 39),
(361, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108031143.jpg', 39),
(362, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108079176.jpg', 39),
(363, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108086403.jpg', 39),
(364, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-5-7-mieng-202202111525297279.jpg', 39),
(365, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-khay-500g-5-7-mieng-202112021358378527.jpg', 39),
(366, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108031143.jpg', 39),
(367, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108079176.jpg', 39),
(368, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108086403.jpg', 39),
(369, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 40),
(370, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 40),
(371, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 40),
(372, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 40),
(373, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 40),
(374, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 40),
(375, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 40),
(376, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 40),
(377, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 40),
(378, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 40),
(379, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 41),
(380, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 41),
(381, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 41),
(382, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 41),
(383, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 41),
(384, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 41),
(385, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 41),
(386, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 41),
(387, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 41),
(388, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 41),
(389, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-5-7-mieng-202203251612069372.jpg', 42),
(390, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-khay-500g-5-7-mieng-202111262119376013.jpg', 42),
(391, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601498839.jpg', 42),
(392, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601529369.jpg', 42),
(393, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601539935.jpg', 42),
(394, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-5-7-mieng-202203251612069372.jpg', 42),
(395, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-khay-500g-5-7-mieng-202111262119376013.jpg', 42),
(396, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601498839.jpg', 42),
(397, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601529369.jpg', 42),
(398, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601539935.jpg', 42),
(399, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-cp-khay-500g-1-3-mieng-202203251635367321.jpg', 43),
(400, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119329473.jpg', 43),
(401, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119341962.jpg', 43),
(402, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119359730.jpg', 43),
(403, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119366197.jpg', 43),
(404, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-cp-khay-500g-1-3-mieng-202203251635367321.jpg', 43),
(405, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119329473.jpg', 43),
(406, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119341962.jpg', 43),
(407, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119359730.jpg', 43),
(408, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119366197.jpg', 43),
(409, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 44),
(410, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 44),
(411, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 44),
(412, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 44),
(413, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 44),
(414, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 44),
(415, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 44),
(416, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 44),
(417, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 44),
(418, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 44),
(419, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 45),
(420, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 45),
(421, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 45),
(422, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 45),
(423, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 45);
INSERT INTO `gallery` (`id`, `thumbnail`, `product_id`) VALUES
(424, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 45),
(425, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 45),
(426, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 45),
(427, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 45),
(428, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 45),
(429, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 46),
(430, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 46),
(431, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 46),
(432, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 46),
(433, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 46),
(434, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 46),
(435, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 46),
(436, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 46),
(437, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 46),
(438, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 46),
(439, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210841589560.jpg', 47),
(440, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839210459.jpg', 47),
(441, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839226705.jpg', 47),
(442, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839239789.jpg', 47),
(443, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210841589560.jpg', 47),
(444, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839210459.jpg', 47),
(445, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839226705.jpg', 47),
(446, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839239789.jpg', 47),
(447, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210849383345.jpg', 49),
(448, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848424840.jpg', 49),
(449, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848428389.jpg', 49),
(450, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848431204.jpg', 49),
(451, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848434525.jpg', 49),
(452, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848437523.jpg', 49),
(453, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848440723.jpg', 49),
(454, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848443730.jpg', 49),
(455, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848447273.jpg', 49),
(456, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210849383345.jpg', 49),
(457, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848424840.jpg', 49),
(458, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848428389.jpg', 49),
(459, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848431204.jpg', 49),
(460, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848434525.jpg', 49),
(461, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848437523.jpg', 49),
(462, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848440723.jpg', 49),
(463, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848443730.jpg', 49),
(464, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848447273.jpg', 49),
(465, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843465268.jpg', 50),
(466, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843025332.jpg', 50),
(467, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843035047.jpg', 50),
(468, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843050058.jpg', 50),
(469, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843465268.jpg', 50),
(470, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843025332.jpg', 50),
(471, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843035047.jpg', 50),
(472, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843050058.jpg', 50),
(473, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231653556501.jpg', 51),
(474, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651319697.jpg', 51),
(475, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651324720.jpg', 51),
(476, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651333995.jpg', 51),
(477, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651338424.jpg', 51),
(478, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231653556501.jpg', 51),
(479, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651319697.jpg', 51),
(480, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651324720.jpg', 51),
(481, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651333995.jpg', 51),
(482, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651338424.jpg', 51),
(483, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210851129472.jpg', 52),
(484, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850335862.jpg', 52),
(485, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850341691.jpg', 52),
(486, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850351719.jpg', 52),
(487, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210851129472.jpg', 52),
(488, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850335862.jpg', 52),
(489, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850341691.jpg', 52),
(490, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850351719.jpg', 52),
(491, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210853077780.jpg', 53),
(492, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852221642.jpg', 53),
(493, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852227720.jpg', 53),
(494, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852237589.jpg', 53),
(495, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210853077780.jpg', 53),
(496, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852221642.jpg', 53),
(497, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852227720.jpg', 53),
(498, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852237589.jpg', 53),
(499, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210856208106.jpg', 54),
(500, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855348281.jpg', 54),
(501, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855355749.jpg', 54),
(502, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855366589.jpg', 54),
(503, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210856208106.jpg', 54),
(504, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855348281.jpg', 54),
(505, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855355749.jpg', 54),
(506, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855366589.jpg', 54),
(507, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202309251609567668.jpg', 55),
(508, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202303171659027076.jpg', 55),
(509, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229118397.jpg', 55),
(510, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229134766.jpg', 55),
(511, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202309251609567668.jpg', 55),
(512, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202303171659027076.jpg', 55),
(513, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229118397.jpg', 55),
(514, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229134766.jpg', 55),
(515, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210847297147.jpg', 56),
(516, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846445140.jpg', 56),
(517, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846454029.jpg', 56),
(518, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846474145.jpg', 56),
(519, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210847297147.jpg', 56),
(520, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846445140.jpg', 56),
(521, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846454029.jpg', 56),
(522, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846474145.jpg', 56),
(523, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220829095953.jpg', 57),
(524, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827160961.jpg', 57),
(525, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827171372.jpg', 57),
(526, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827174375.jpg', 57),
(527, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827177321.jpg', 57),
(528, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220829095953.jpg', 57),
(529, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827160961.jpg', 57),
(530, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827171372.jpg', 57),
(531, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827174375.jpg', 57),
(532, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827177321.jpg', 57),
(533, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220836241593.jpg', 58),
(534, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834225317.jpg', 58),
(535, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834229356.jpg', 58),
(536, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834233431.jpg', 58),
(537, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834240011.jpg', 58),
(538, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220836241593.jpg', 58),
(539, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834225317.jpg', 58),
(540, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834229356.jpg', 58),
(541, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834233431.jpg', 58),
(542, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834240011.jpg', 58),
(543, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844501135.jpg', 59),
(544, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844027015.jpg', 59),
(545, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844035122.jpg', 59),
(546, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844037826.jpg', 59),
(547, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844501135.jpg', 59),
(548, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844027015.jpg', 59),
(549, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844035122.jpg', 59),
(550, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844037826.jpg', 59),
(551, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220843204005.jpg', 60),
(552, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842342903.jpg', 60),
(553, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842347922.jpg', 60),
(554, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842352626.jpg', 60),
(555, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220843204005.jpg', 60),
(556, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842342903.jpg', 60),
(557, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842347922.jpg', 60),
(558, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842352626.jpg', 60),
(559, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220826171680.jpg', 61),
(560, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824230575.jpg', 61),
(561, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824236502.jpg', 61),
(562, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824243097.jpg', 61),
(563, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824246220.jpg', 61),
(564, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220826171680.jpg', 61),
(565, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824230575.jpg', 61),
(566, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824236502.jpg', 61),
(567, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824243097.jpg', 61),
(568, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824246220.jpg', 61),
(569, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220841262162.jpg', 62),
(570, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840168553.jpg', 62),
(571, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840180481.jpg', 62),
(572, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840183934.jpg', 62),
(573, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840187498.jpg', 62),
(574, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220841262162.jpg', 62),
(575, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840168553.jpg', 62),
(576, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840180481.jpg', 62),
(577, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840183934.jpg', 62),
(578, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840187498.jpg', 62),
(579, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220833282153.jpg', 63),
(580, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829520886.jpg', 63),
(581, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829531830.jpg', 63),
(582, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829534959.jpg', 63),
(583, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220833282153.jpg', 63),
(584, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829520886.jpg', 63),
(585, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829531830.jpg', 63),
(586, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829534959.jpg', 63),
(587, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220839297065.jpg', 64),
(588, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837230335.jpg', 64),
(589, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837239499.jpg', 64),
(590, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837242508.jpg', 64),
(591, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220839297065.jpg', 64),
(592, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837230335.jpg', 64),
(593, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837239499.jpg', 64),
(594, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837242508.jpg', 64);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `total` float UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `name` varchar(350) DEFAULT NULL,
  `reg_price` float UNSIGNED DEFAULT NULL,
  `discount_percent` int(3) UNSIGNED DEFAULT NULL,
  `discount_price` int(10) UNSIGNED DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `canonical` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted` tinyint(1) DEFAULT 0,
  `rating` decimal(2,1) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `thumbnail`, `name`, `reg_price`, `discount_percent`, `discount_price`, `unit`, `canonical`, `description`, `created_at`, `updated_at`, `deleted`, `rating`, `category_id`, `brand_id`) VALUES
(1, 'https://cdn.tgdd.vn/Products/Images/8781/319229/bhx/nac-dam-heo-nhap-khau-500g-hat-nem-nam-huong-maggi-450g-dong-lanh-500g-202311201506222661_300x300.jpg', 'Nạc dăm heo nhập khẩu 500g & hạt nêm nấm hương Maggi 450g', 105500, 10, 94800, 'gói', '', 'Nạc dăm là phần nạc dăm mềm, có lớp mỡ mỏng, chứa nhiều axit amin cần thiết cho cơ thể, dùng làm nguyên liệu chế biến các món ăn hấp dẫn. Nạc dăm heo nhập khẩu 500g & hạt nêm nấm hương Maggi 450g chất lượng, giàu dinh dưỡng, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(2, 'https://cdn.tgdd.vn/Products/Images/8781/319228/bhx/ba-roi-heo-nhap-khau-dong-lanh-500g-hat-nem-maggi-400g-202311201559412021_300x300.jpg', 'Ba rọi heo nhập khẩu 500g & hạt nêm Maggi 400g', 111500, 13, 97550, 'gói', '', 'Xem thêm', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(3, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202311271143033990.jpg', 'Ba rọi heo nhập khẩu 500g', 65000, 0, 65000, 'túi', '500g', 'Ba rọi heo nhập khẩu có da với tỉ lệ nạc mỡ tuyệt vời, thịt heo săn chắc ngọt nên luôn được các bà nội trợ ưa chuộng và tin dùng. Ba rọi heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(4, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202311251059138485_300x300.jpg', 'Ba rọi heo nhập khẩu đông lạnh 300g', 40000, 0, 40000, 'túi', '300g', 'Ba rọi là phần thịt heo có tỉ lệ nạc mỡ cân đối, săn chắc, mềm ngọt nên được nhiều chị em nội trợ ưa chuộng lựa chọn cho bữa ăn gia đình. Ba rọi heo nhập khẩu đông lạnh được cấp đông theo phương pháp hiện đại giúp thịt vẫn giữ được hương vị vốn có.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(5, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202311251101104152_300x300.jpg', 'Nạc dăm heo nhập khẩu 200g', 29000, 0, 29000, 'túi', '200g', 'Nạc dăm là phần nạc dăm mềm, có lớp mỡ mỏng, chứa nhiều axit amin cần thiết cho cơ thể, dùng làm nguyên liệu chế biến các món ăn hấp dẫn. Nạc dăm heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(6, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202311251101255020_300x300.jpg', 'Nạc dăm heo nhập khẩu 500g', 52000, 0, 52000, 'túi', '500g', 'Nạc dăm là phần nạc dăm mềm, có lớp mỡ mỏng, chứa nhiều axit amin cần thiết cho cơ thể, dùng làm nguyên liệu chế biến các món ăn hấp dẫn. Nạc dăm heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(7, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202311251105209106_300x300.jpg', 'Thịt vai heo nhập khẩu 200g', 25000, 0, 25000, 'túi', '200g', 'Thịt heo với tỉ lệ nạc mỡ hoàn hảo đảm bảo được độ ngon thịt, các món ăn như thịt luộc, thịt kho hoặc thịt xào với các loại rau, củ. Thịt vai heo nhập khẩu tại Bách hoá XANH có nguồn gốc rõ ràng, đảm bảo an toàn vệ sinh thực phẩm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(8, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202311251105343210_300x300.jpg', 'Thịt vai heo nhập khẩu 500g', 75500, 0, 75500, 'túi', '500g', 'Thịt heo với tỉ lệ nạc mỡ hoàn hảo đảm bảo được độ ngon thịt, các món ăn như thịt luộc, thịt kho hoặc thịt xào với các loại rau, củ. Thịt vai heo nhập khẩu tại Bách hoá XANH có nguồn gốc rõ ràng, đảm bảo an toàn vệ sinh thực phẩm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(9, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311251104587065_300x300.jpg', 'Thịt nạc heo đông lạnh 200g', 25000, 0, 25000, 'túi', '200g', 'Thịt heo với tỉ lệ nạc mỡ hoàn hảo đảm bảo được độ ngon thịt, các món ăn như thịt luộc, thịt kho hoặc thịt xào với các loại rau, củ. Thịt nạc heo nhập khẩu đông lạnh tại Bách hoá XANH có nguồn gốc rõ ràng, đảm bảo an toàn vệ sinh thực phẩm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(10, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202311251105103398_300x300.jpg', 'Thịt nạc heo đông lạnh 500g', 59000, 0, 59000, 'túi', '500g', 'Thịt nạc heo nhập khẩu đông lạnh 500g chứa nhiều protein và ít chất béo là nguyên liệu thông dụng để tạo nên những món ăn ngon cho mọi gia đình. Thịt heo đông lạnh tại Bách hoá XANH được đảm bảo nguồn gốc xuất xứ rõ ràng, đảm bảo an toàn vệ sinh thực phẩm và dễ dàng bảo quản.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(11, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311251101421024_300x300.jpg', 'Sườn non heo nhập khẩu đông lạnh 300g', 46000, 0, 46000, 'túi', '300g', 'Sườn non heo nhập khẩu được cấp đông theo phương pháp hiện đại, giúp lưu giữ hương vị tự nhiên, đảm bảo chất lượng và an toàn cho sức khỏe người tiêu dùng. Sườn non có thể chế biến thành nhiều món ăn ngon như sườn nướng, sườn sốt me,...\r\n', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(12, 'https://cdn.tgdd.vn/Products/Images/8781/297345/bhx/suon-non-heo-nhap-khau-dong-lanh-500g-2-4-mieng-202311270831481525.jpg', 'Sườn non heo nhập khẩu đông lạnh 500g (2 - 4 miếng)', 75000, 0, 75000, 'túi', '500g', 'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(13, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-dong-lanh-200g-202311230927036125_300x300.jpg', 'Thịt heo xay 200g', 20000, 0, 20000, 'túi', '200g', 'Thịt heo xay đông lạnh xuất xứ từ Brazil, được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon của thực phẩm. Được sơ chế kĩ càng và xay nhuyễn, thịt heo xay luôn được lựa chọn để nấu canh, làm các món chả,..', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(14, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/xuong-que-heo-nhap-khau-dong-lanh-500g-8-10-cay-202311251114293344_300x300.jpg', 'Xương que heo nhập khẩu 500g', 39000, 26, 29000, 'túi', '500g', 'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(15, 'https://cdn.tgdd.vn/Products/Images/8781/309992/bhx/2-tui-xuong-que-heo-nhap-khau-dong-lanh-1kg-16-20-cay-202311270829288512.jpg', '2 túi xương que heo đông lạnh 500g', 78000, 0, 78000, 'túi', '1kg', 'Xương que là một nguyên liệu phổ biến trong mâm cơm gia đình vì dễ dàng chế biến thành nhiều món ngon dinh dưỡng tuyệt vời. Xương que heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(16, '', '', 40500, 0, 40500, '', '500g', 'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(17, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202311251100464029_300x300.jpg', 'Chân giò heo nhập khẩu 500g', 35000, 29, 25000, 'túi', '500g', 'Chân giò heo nhập khẩu là phần thịt heo giòn giòn, dai dai, cực kỳ bổ dưỡng mà các bà nội trợ ưa chuộng. Chân giò heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(18, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051530052375_300x300.jpg', 'Thịt ba rọi heo rừng lai 250g', 95000, 10, 85500, 'khay', '250g', 'Thịt ba rọi heo rừng lai tươi ngon, thịt dai, ngon, ngọt, chất lượng. Thịt ba rọi thích hợp chế biến các món như ba rọi chiên sả ớt, ba rọi heo rừng lai nướng,... vô cùng hấp dẫn và chứa nhiều dưỡng chất.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(19, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-300g-202306081539024612_300x300.jpg', 'Thịt kho trứng cút 300g', 49000, 0, 49000, 'khay', '300g', 'Thịt kho trứng cút 300g là thực phẩm sơ chế sẵn vô cùng tiện dụng, đến từ thương hiệu uy tín có tiếng. Thịt heo chất lượng tẩm ướp gia vị đậm đà, trứng cút mềm bùi, béo hòa quyền hoàn hảo bạn có ngay bữa cơm ngon chuẩn vị gia đình.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(20, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220821146094_300x300.jpg', 'Đậu hũ dồn thịt 400g', 47000, 0, 47000, 'khay', '400g', 'Đậu hũ dồn thịt 400g tiện lợi, thơm ngon, tiết kiệm thời gian cho những chị em nội trợ bận rộn. Sản phẩm được đóng gói cẩn thận, vệ sinh, có thể chế biến ngay mà vẫn giữ trọn hương vị thơm ngon, đậm đà', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(21, 'https://cdn.tgdd.vn/Products/Images/12718/304914/bhx/mam-chung-hop-100g-202311270951266470_300x300.jpg', 'Mắm chưng hộp 100g', 26500, 0, 26500, 'chén', '', 'Đây là loại thực phẩm làm sẵn, ăn liền vô cùng tiện lợi được rất nhiều người yêu thích. Mắm chưng hộp 100g chính hãng thực phẩm làm sẵn Ngọc Tú được chế biến từ những nguyên liệu tươi ngon, an toàn, hương vị hài hòa ngon như mắm chưng tại nhà, được làm chín sẵn tiện lợi sử dụng', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(22, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306081551156609_300x300.jpg', 'Khổ qua dồn thịt 400g', 46000, 0, 46000, 'khay', '400g', 'Khổ qua dồn thịt 400g được sơ chế sẵn, nêm nếm vệ sinh sạch sẽ, bạn có thể nấu trực tiếp, tiết kiệm thời gian chế biến. Khổ qua dồn thịt khi nấu lên vẫn giữ được hương vị đậm đà, hấp dẫn và thơm ngon.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(23, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-300g-202306081544326849_300x300.jpg', 'Nầm heo (Vú heo) nướng chao 300g', 75000, 0, 75000, 'khay', '', 'Nầm heo nướng chao 300g là thực phẩm sơ chế sẵn vô cùng tiện dụng, đến từ thương hiệu uy tín có tiếng. Nầm heo ngon cùng sốt chao mặn mà tròn vị, bạn có ngay món ăn ngon dinh dưỡng tại nhà.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(24, 'https://cdn.tgdd.vn/Products/Images/12718/308123/bhx/nam-heo-nuong-sa-te-300g-202306081545519699_300x300.jpg', 'Nầm heo (Vú heo) nướng sa tế 300g', 75000, 0, 75000, 'khay', '300g', '2 hộp Chân gà C.P đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon, xuất xứ rõ ràng. Chân gà thích hợp để nấu món chân gà ngâm sả tắc, chân gà nướng sa tế, chân gà sốt cay Hàn Quốc,... Có thể dùng điện thoại quét code QR trên sản phẩm để kiểm tra nguồn góc.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(25, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271649194060_300x300.jpg', 'Combo nướng dã ngoại 650g', 214500, 10, 193000, 'khay', '650g', 'Combo nướng dã ngoại khay 650g bao gồm ba rọi heo (20%), chân gà (20%), sườn non heo (30%), tim heo (15%), đậu bắp (15%) được sơ chế và cắt sẵn tiện lợi, giúp rút ngắn thời gian chế biến, phù hợp cho những buổi dã ngoại ngoài trời. Sản phẩm đảm bảo nguồn gốc xuất xứ, chất lượng, an toàn cho sức khỏe người tiêu dùng.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(26, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271649540375_300x300.jpg', 'Combo nướng hoàng gia 1kg', 305000, 9, 275000, 'khay', '1kg', 'Combo nướng hoàng gia khay 1kg tươi ngon, chất lượng, sử dụng tiện lợi, thích hợp cho các bữa tiệc nướng, dã ngoại ngoài trời. Sản phẩm bao gồm: Ba rọi bò, ba rọi heo, sườn non heo, gà nòi, tim heo, bắp mỹ,... đảm bảo nguồn gốc xuất xứ, an toàn cho sức khỏe người tiêu dùng.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(27, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651253413_300x300.jpg', 'Giả cầy heo 1kg', 114000, 10, 102000, 'khay', '1kg', 'Giả cầy heo khay 1kg chất lượng, đảm bảo nguồn gốc xuất xứ. Sản phẩm bao gồm các nguyên liệu như: Dựng heo, sườn non heo, ba rọi heo, củ riềng, sả, lá mơ,... giàu dinh dưỡng và đảm bảo an toàn, có thể chế biến thành nhiều món ăn thơm ngon.', '2023-11-28 09:46:58', NULL, 0, NULL, 1, 1),
(28, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-500gr-202311221426039899_300x300.jpg', 'Thịt ba rọi C.P 500g', 98000, 0, 98000, 'khay', '500g', 'Thịt heo là nguyên liệu quen thuộc trong mỗi bữa ăn của mọi gia đình. Combo Thịt Ba Rọi Heo CP 500G & xương que heo đông lạnh 500g có thể chế biến đa dạng với nhiều hình thức như chiên, xào, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể. ', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(29, 'https://cdn.tgdd.vn/Products/Images/8781/241252/bhx/ba-roi-heo-rut-suon-cp-500g-1-2-mieng-202311221427246254_300x300.jpg', 'Ba rọi rút sườn C.P 500g', 129000, 0, 129000, 'khay', '500g', 'Ba rọi heo của thương hiệu CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt heo mềm, vân nạc, mỡ rõ ràng nên rất phù hợp làm nguyên liệu để nấu thịt kho hột vịt. Thịt heo ba rọi có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(30, 'https://cdn.tgdd.vn/Products/Images/8781/241254/bhx/ba-roi-heo-rut-suon-cp-300g-1-2-mieng-202311221427392935_300x300.jpg', 'Ba rọi rút sườn C.P 300g', 79000, 0, 79000, 'khay', '300g', 'Ba rọi heo của thương hiệu CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt heo mềm, vân nạc, mỡ rõ ràng nên rất phù hợp làm nguyên liệu để nấu thịt kho hột vịt. Thịt heo ba rọi có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(31, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-300g-202311221426180478_300x300.jpg', 'Thịt đùi C.P 300g', 45500, 0, 45500, 'khay', '300g', 'Thịt đùi heo CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt đùi heo chủ yêu là phần nạc nên rất phù hợp cho người có chế độ ăn kiêng, giảm cân giữ dáng. Thịt heo có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(32, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-500g-202311221426274440_300x300.jpg', 'Thịt đùi C.P 500g', 77000, 10, 69000, 'khay', '500g', 'Combo Đùi Tỏi Gà CP 500G & xương que heo đông lạnh 500g là nguyên liệu cần thiết cho mọi bữa ăn. Thịt gà, thịt heo cung cấp nhiều chất dinh dưỡng cho cơ thể. Có thể chế biến thịt theo nhiều cách như chiên, kho, nấu súp,.. giúp bữa ăn thêm đa dạng.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(33, 'https://cdn.tgdd.vn/Products/Images/8781/226840/bhx/nac-dam-heo-cp-300g-202311221425254867_300x300.jpg', 'Nạc dăm C.P 300g', 54000, 0, 54000, 'khay', '300g', 'Thịt heo là nguyên liệu quen thuộc và gần như không thể thiếu trong mỗi bữa ăn của mọi gia đình. Combo 3 hộp Thịt thăn heo CP 300g có thể chế biến đa dạng với nhiều hình thức như chiên, xào, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể.  ', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(34, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-300g-1-2-mieng-202311221429058551_300x300.jpg', 'Thịt bắp giò C.P 300g', 45500, 0, 45500, 'khay', '300g', 'Thịt heo là nguyên liệu quen thuộc trong mỗi bữa ăn của gia đình. Combo 3 hộp Thịt bắp giò heo CP 300g có thể chế biến đa dạng với nhiều hình thức như chiên, xào, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(35, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-300g-1-2-mieng-202311221428394154_300x300.jpg', 'Nạc vai C.P 300g', 55000, 0, 55000, 'khay', '300g', 'Nạc vai heo của thương hiệu thịt heo CP được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon của thực phẩm, xuất xứ rõ ràng. Thịt heo ít mỡ, mềm và mọng nước nên thường được chế biến thành nhiều món.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(36, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/cot-let-heo-cp-500g-4-6-mieng-202311221424257202_300x300.jpg', 'Cốt lết heo C.P 500g', 76000, 0, 76000, 'khay', '500g', 'Sườn cốt lết CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Bản sườn to, dày và thịt heo mềm thích hợp để nướng hoặc làm sườn ram mặn ăn với cơm trắng. Thịt heo CP có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(37, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-300g-1-2-mieng-202311221429154979_300x300.jpg', 'Thịt thăn C.P 300g', 54000, 0, 54000, 'khay', '300g', 'Thịt heo là nguyên liệu quen thuộc và gần như không thể thiếu trong mỗi bữa ăn của mọi gia đình. Combo 3 hộp Thịt thăn heo CP 300g có thể chế biến đa dạng với nhiều hình thức như chiên, xào, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể.  ', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(38, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-cp-500g-9-11-mieng-202311221428520112_300x300.jpg', 'Sườn già C.P 500g', 80500, 0, 80500, 'khay', '500g', 'Thịt heo là nguyên liệu quen thuộc và không thể thiếu trong mỗi bữa ăn của gia đình. Combo 2 hộp Sườn già heo CP 500g có thể chế biến đa dạng với nhiều hình thức như chiên, xào, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể. ', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(39, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-500g-5-7-mieng-202311221425552816_300x300.jpg', 'Sườn non C.P 500g', 123000, 0, 123000, 'khay', '500g', 'Sườn non CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Sườn non heo được cắt sẵn miếng vừa ăn, có thể chế biến thành nhiều món ngon như sườn kho tiêu, sườn nấu canh, ... Thịt heo có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(40, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-300g-202311221425366273_300x300.jpg', 'Thịt xay sẵn C.P 300g', 49000, 0, 49000, 'khay', '300g', 'Thịt heo xay khay 300g được xay sẵn sạch sẽ và tiện dùng vô cùng. Thịt heo xay là nguyên liệu không thể thiếu để nấu được nhiều món ăn thơm ngon, đầy đủ dưỡng chất cho cả nhà. Thịt xay CP có thể tham khảo món thịt xay nhồi cà chua, đậu hũ nhồi thịt,....', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(41, 'https://cdn.tgdd.vn/Products/Images/8781/242942/bhx/thit-heo-xay-cp-500g-202311221425459005_300x300.jpg', 'Thịt xay sẵn C.P 500g', 75500, 0, 75500, 'khay', '500g', 'Thịt heo xay khay 300g được xay sẵn sạch sẽ và tiện dùng vô cùng. Thịt heo xay là nguyên liệu không thể thiếu để nấu được nhiều món ăn thơm ngon, đầy đủ dưỡng chất cho cả nhà. Thịt xay CP có thể tham khảo món thịt xay nhồi cà chua, đậu hũ nhồi thịt,....', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(42, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-500g-5-7-mieng-202311221427157316_300x300.jpg', 'Xương ống C.P 500g', 56000, 0, 56000, 'khay', '500g', 'Xương ống heo của thương hiệu CP được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon của thực phẩm, xuất xứ rõ ràng. Xương ống to, tủy ngọt thơm nên thường được dùng để hầm canh với rau củ hoặc nấu nước lèo.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(43, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-cp-500g-1-3-mieng-202311221426408771_300x300.jpg', 'Chân giò trước C.P 500g', 55000, 0, 55000, 'khay', '500g', 'Chân giò heo trước CP đạt các tiêu chuẩn về an toàn toàn thực phẩm. Giò heo (có móng hoặc không) săn chắc, thịt có sự kết hợp với gân mỡ nên ăn béo ngậy và thơm, thích hợp để hầm canh, nấu các món nước,... Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(44, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-500g-2-4-mieng-202311221427045047_300x300.jpg', 'Chân giò sau C.P 500g', 55000, 0, 55000, 'khay', '500g', 'Chân giò heo sau CP đạt các tiêu chuẩn về an toàn toàn thực phẩm. Giò heo săn chắc, thịt có sự kết hợp với gân mỡ nên ăn béo ngậy và thơm, thích hợp để hầm canh, nấu các món nước như hủ tiếu, bánh canh,... Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(45, 'https://cdn.tgdd.vn/Products/Images/8781/241269/bhx/dung-heo-cp-500g-3-7-mieng-202311221427543068_300x300.jpg', 'Dựng heo C.P 500g', 62000, 5, 58900, 'khay', '500g', 'Chân giò heo sau CP đạt các tiêu chuẩn về an toàn toàn thực phẩm. Giò heo săn chắc, thịt có sự kết hợp với gân mỡ nên ăn béo ngậy và thơm, thích hợp để hầm canh, nấu các món nước như hủ tiếu, bánh canh,... Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(46, 'https://cdn.tgdd.vn/Products/Images/8781/241255/bhx/duoi-heo-cp-500g-7-9-mieng-202311221428205578_300x300.jpg', 'Đuôi heo C.P 500g', 89500, 5, 85025, 'khay', '500g', 'Chân giò heo sau CP đạt các tiêu chuẩn về an toàn toàn thực phẩm. Giò heo săn chắc, thịt có sự kết hợp với gân mỡ nên ăn béo ngậy và thơm, thích hợp để hầm canh, nấu các món nước như hủ tiếu, bánh canh,... Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 09:52:21', NULL, 0, NULL, 1, 2),
(47, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202311221447355878_300x300.jpg', 'Ba rọi Meat Master 400g', 80000, 0, 80000, 'khay', '400g', 'Ba rọi heo với lớp thịt nạc săn chắc xen kẽ những lớp mỡ bóng bẩy, thịt heo là nguyên liệu nấu ăn ưa chuộng của nhiều gia đình. Thịt heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(48, 'https://cdn.tgdd.vn/Products/Images/8781/258330/bhx/thit-dui-heo-meat-master-400g-202311221449211289_300x300.jpg', 'Thịt đùi Meat Master 400g', 59500, 5, 56500, 'khay', '400g', '', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(49, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202308151535539099.jpg', 'Nạc dăm Meat Master 400g', 78000, 40, 46800, 'khay', '400g', 'Đây là phần nạc dăm được nhiều bà nội trợ sử dụng cho các món thịt xay bởi giúp thịt chế biến không bị khô. Nạc dăm heo Meat Master khay 400g không chỉ được sản xuất với những quy định nghiêm ngặt, mang những miếng nạc dăm Meat Master chất lượng, tươi ngon.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(50, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202311221438095763_300x300.jpg', 'Cốt lết Meat Master 400g', 58500, 5, 55500, 'khay', '400g', 'Những miếng thịt cốt lết được cắt vừa ăn với phần thịt heo săn chắc xen lẫn với một ít phần mỡ là sự lựa chọn hoàn hảo cho các món thịt chiên. Cốt lết heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(51, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202311221448404558_300x300.jpg', 'Thăn chuột Meat Master 400g', 74000, 0, 74000, 'khay', '400g', 'Thịt thăn lợn được cắt ra từ phần thịt bắp của lợn, đặc điểm của phần thịt heo này là thớ thịt dài, dày và chắc nhưng lại mềm và béo. Thăn chuột heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(52, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202311221438316892_300x300.jpg', 'Sườn già Meat Master 400g', 74000, 0, 74000, 'khay', '400g', 'Sườn già với đặc tính nhiều xương hơn, cứng hơn, ít thịt hơn, thích hợp để làm các món canh hầm, nước ngọt, ăn không ngấy. Sườn già heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(53, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202311221438400586_300x300.jpg', 'Sườn non Meat Master 400g', 121000, 0, 121000, 'khay', '400g', 'Sườn non heo là một trong những bộ phận thịt heo đắt tiền nhưng được mọi người yêu thích. Sườn non heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(54, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202311221449423045_300x300.jpg', 'Thịt xay Meat Master 400g', 61000, 0, 61000, 'khay', '400g', 'Thịt heo xay là loại thịt heo được nhiều bà nội trợ yêu thích bởi sự tiện lợi của chúng. Thịt heo xay Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(55, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202311221439459369_300x300.jpg', 'Xương đuôi Meat Master 400g', 45000, 0, 45000, 'khay', '400g', 'Xương đuôi heo là nguyên liệu hầm không thể thiếu của mọi nhà nhờ vào chất ngọt từ xương và cái khớp sụn được tiết ra. Xương đuôi heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(56, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202311221438189511_300x300.jpg', 'Dựng heo Meat Master 400g', 50000, 5, 47500, 'khay', '400g', 'Dựng heo là phần móng giò heo với phần gân, da giòn sụm, chứa nhiều chất collagen tốt cho sức khoẻ. Dựng heo Meat Master không chỉ được sản xuất với những quy định nghiêm ngặt, mang đến chất lượng sản phẩm tuyệt vời mà còn có giá thành phải chăng cho mọi nhà.', '2023-11-28 09:55:28', NULL, 0, NULL, 1, 3),
(57, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-nt-pearly-food-300g-202311221451172349_300x300.jpg', 'Tai heo NT Pearly Food 300g', 49000, 0, 49000, 'khay', '300g', 'Tai heo là một thực phẩm giòn ngon, ai cũng mê, thích hợp chế biến ăn như gỏi tai heo ngó sen, tai heo luộc chấm mắm, tai heo sốt thái,... Tai heo mua về, nên sơ chế kỹ để khử mùi, nấu ăn sẽ ngon hơn.', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(58, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-nt-pearly-food-300g-202311221450241163_300x300.jpg', 'Lưỡi heo NT Pearly Food 300g', 65000, 0, 65000, 'khay', '300g', 'Lưỡi heo là một thực phẩm không chỉ giòn ngon, chất lượng mà còn rất dinh dưỡng, được các chị em nội trợ thường xuyên tẩm bổ cho gia đình. Lưỡi heo có thể chế biến thành nhiều món ăn ngon như lưỡi heo xào chua ngọt, gỏi lưỡi heo, cháo lưỡi heo,...', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(59, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-nt-pearly-food-300g-202311221451038753_300x300.jpg', 'Bao tử heo NT Pearly Food 300g', 65000, 0, 65000, 'khay', '300g', 'Bao tử heo là thực phẩm dinh dưỡng, giòn, ngon rất hấp dân, được chị em nội trợ thường xuyên mua về cho gia đình. Bao tử heo có thể chế biến nhiều món ăn ngon như bao tử heo khìa nước dừa, bao tử heo nấu phá lấu,... vô cùng thơm ngon.', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(60, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-nt-pearly-food-300g-202311221451274135_300x300.jpg', 'Cật heo NT Pearly Food 300g', 58000, 0, 58000, 'khay', '300g', 'Cật heo là một thực phẩm dinh dưỡng, ngon, được nhiều người chọn mua cho gia đình. Cật heo có thể chế biến nhiều món ngon như cật heo xào giá, cật heo nướng, cật heo xào đậu que,... rất hấp dẫn.', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(61, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-nt-pearly-food-200g-202311221450074367_300x300.jpg', 'Tim heo NT Pearly Food 200g', 59000, 0, 59000, 'khay', '200g', 'Tim heo là một thực phẩm chứa nhiều dưỡng chất dinh dưỡng, chất lượng, được nhiều chị em nội trợ chọn lựa cho gia đình. Tim heo có thể chế biến thành nhiều món ăn ngon như cháo, tim heo xào đậu que, tim heo xào hành tây,...', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(62, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-nt-pearly-food-300g-202311221451386448_300x300.jpg', 'Gan heo NT Pearly Food 300g', 26500, 0, 26500, 'khay', '300g', 'Gan heo là thực phẩm chứa nhiều vitamin giúp não bộ phát triển, tốt cho tim và thận. Gan heo chế biến ăn rất ngon, béo như pate gan heo, gan heo xào mướp, gan heo cháy tỏi,...', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(63, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-nt-pearly-food-300g-202311221452056609_300x300.jpg', 'Ruột già heo NT Pearly Food 300g', 37000, 5, 35150, 'khay', '300g', 'Ruột già heo là một thực phẩm ngon, trước khi chế biến cần sơ chế kỹ để không bị tanh. Ruột già heo có thể chế biến thành các món ăn như ruột heo nướng, ruột heo xào nghệ, cháo lòng,...', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(64, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-nt-pearly-food-300g-202311221451557464_300x300.jpg', 'Lá mía heo NT Pearly Food 300g', 26500, 0, 26500, 'khay', '300g', 'Lá mía heo hay còn gọi là tụy heo, chứa nhiều vitamin B, vitamin C, với công dụng bổ máu, tốt cho hệ thần kinh,... Lá mía heo có thể chế biến nhiều món ăn ngon như cháo lòng, lá mía heo nướng, lá mía heo xào hành tây,... rất hấp dẫn.', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_event`
--

CREATE TABLE `sale_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_item`
--

CREATE TABLE `sale_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted` tinyint(1) DEFAULT 0,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order`
--

CREATE TABLE `_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `total` float UNSIGNED DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `payment_method` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_group_id` (`category_group_id`);

--
-- Indexes for table `category_group`
--
ALTER TABLE `category_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_event`
--
ALTER TABLE `sale_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_item`
--
ALTER TABLE `sale_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order`
--
ALTER TABLE `_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_group`
--
ALTER TABLE `category_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_event`
--
ALTER TABLE `sale_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_item`
--
ALTER TABLE `sale_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_order`
--
ALTER TABLE `_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`category_group_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `_order` (`id`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `sale_item`
--
ALTER TABLE `sale_item`
  ADD CONSTRAINT `sale_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_item_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `sale_event` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `_order`
--
ALTER TABLE `_order`
  ADD CONSTRAINT `_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
