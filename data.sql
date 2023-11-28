-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 08:11 AM
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
(4, 'NT Pearly Food', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/nt-pearly-food-11092023134831.jpg'),
(5, 'Fohla', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/fohla-1403202383549.jpg'),
(6, 'Pacow', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/pacow-15032021105552.jpg'),
(7, 'Ngọc Tú', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100,s_104x59/https://cdn.tgdd.vn/Brand/11/ngoc-tu-2402202395058.jpg');

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
(6, 'https://cdn.tgdd.vn/Products/Images/8781/319229/bhx/nac-dam-heo-nhap-khau-500g-hat-nem-nam-huong-maggi-450g-dong-lanh-500g-202311201507328081.jpg', 1),
(7, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 1),
(8, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 1),
(9, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/hat-nem-cao-cap-vi-nam-huong-maggi-goi-450g-202207291105505226.jpg', 1),
(10, 'https://cdn.tgdd.vn/Products/Images/8645/198877/bhx/sellingpoint.jpg', 1),
(16, 'https://cdn.tgdd.vn/Products/Images/8781/319228/bhx/ba-roi-heo-nhap-khau-dong-lanh-500g-hat-nem-maggi-400g-202311201604013696.jpg', 2),
(17, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202306090838016447.jpg', 2),
(18, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/ba-roi-heo-nhap-khau-dong-lanh-500gr-202307141303033442.jpg', 2),
(19, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724063767.jpg', 2),
(20, 'https://cdn.tgdd.vn/Products/Images/2806/195947/bhx/hat-nem-cao-cap-maggi-goi-400g-202209081724078340.jpg', 2),
(25, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448544376.jpg', 3),
(26, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448540691.jpg', 3),
(27, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448547895.jpg', 3),
(28, 'https://cdn.tgdd.vn/Products/Images/8781/297349/bhx/-202306211448551426.jpg', 3),
(35, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143306697.jpg', 4),
(36, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143310711.jpg', 4),
(37, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143314362.jpg', 4),
(38, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143333213.jpg', 4),
(39, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143327629.jpg', 4),
(40, 'https://cdn.tgdd.vn/Products/Images/8781/314535/bhx/ba-roi-heo-nhap-khau-dong-lanh-300g-202309072143330301.jpg', 4),
(49, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 5),
(50, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 5),
(51, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823403997.jpg', 5),
(52, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823412672.jpg', 5),
(53, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823415514.jpg', 5),
(54, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823418262.jpg', 5),
(55, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823420762.jpg', 5),
(56, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060823424731.jpg', 5),
(65, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111014371522.jpg', 6),
(66, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-500g-202307141308024732.jpg', 6),
(67, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013498707.jpg', 6),
(68, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013508613.jpg', 6),
(69, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013522328.jpg', 6),
(70, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013531607.jpg', 6),
(71, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013552943.jpg', 6),
(72, 'https://cdn.tgdd.vn/Products/Images/8781/297350/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-500g-202211111013569898.jpg', 6),
(78, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090845057118.jpg', 7),
(79, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202307141309094816.jpg', 7),
(80, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844352206.jpg', 7),
(81, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844355081.jpg', 7),
(82, 'https://cdn.tgdd.vn/Products/Images/8781/307864/bhx/thit-vai-heo-nhap-khau-dong-lanh-200g-202306090844357617.jpg', 7),
(88, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090843334771.jpg', 8),
(89, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202307141310418302.jpg', 8),
(90, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842491299.jpg', 8),
(91, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842496758.jpg', 8),
(92, 'https://cdn.tgdd.vn/Products/Images/8781/297351/bhx/thit-vai-heo-nhap-khau-dong-lanh-500gr-202306090842499462.jpg', 8),
(97, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505049353.jpg', 9),
(98, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505052841.jpg', 9),
(99, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505054868.jpg', 9),
(100, 'https://cdn.tgdd.vn/Products/Images/8781/312808/bhx/thit-nac-heo-nhap-khau-dong-lanh-200g-202311131505057352.jpg', 9),
(105, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936560456.jpg', 10),
(106, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936563949.jpg', 10),
(107, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936569049.jpg', 10),
(108, 'https://cdn.tgdd.vn/Products/Images/8781/312803/bhx/thit-nac-heo-nhap-khau-dong-lanh-500g-202308090936573992.jpg', 10),
(115, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512332166.jpg', 11),
(116, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512542161.jpg', 11),
(117, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512544546.jpg', 11),
(118, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512547260.jpg', 11),
(119, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512550754.jpg', 11),
(120, 'https://cdn.tgdd.vn/Products/Images/8781/314539/bhx/suon-non-heo-nhap-khau-dong-lanh-300g-202311131512553145.jpg', 11),
(125, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709376275.jpg', 13),
(126, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709379387.jpg', 13),
(127, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709382822.jpg', 13),
(128, 'https://cdn.tgdd.vn/Products/Images/8781/310663/bhx/thit-heo-xay-200g-202310201709387007.jpg', 13),
(135, 'https://cdn.tgdd.vn/Products/Images/8781/309992/bhx/-202311061348346522.jpg', 15),
(136, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954033334.jpg', 15),
(137, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954037417.jpg', 15),
(138, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954039788.jpg', 15),
(139, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954042207.jpg', 15),
(140, 'https://cdn.tgdd.vn/Products/Images/8781/297342/bhx/-202308300954044414.jpg', 15),
(146, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090841143145.jpg', 17),
(147, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202307141303561627.jpg', 17),
(148, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840013522.jpg', 17),
(149, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840016862.jpg', 17),
(150, 'https://cdn.tgdd.vn/Products/Images/8781/297346/bhx/chan-gio-heo-nhap-khau-dong-lanh-500g-3-5-mieng-202306090840026384.jpg', 17),
(158, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051537117960.jpg', 18),
(159, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051532020062.jpg', 18),
(160, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531594857.jpg', 18),
(161, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531569998.jpg', 18),
(162, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531540599.jpg', 18),
(163, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531528318.jpg', 18),
(164, 'https://cdn.tgdd.vn/Products/Images/8781/310966/bhx/thit-ba-roi-heo-rung-lai-250g-202308051531515664.jpg', 18),
(170, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-300g-202308281045510922.jpg', 19),
(171, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924286624.jpg', 19),
(172, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924292919.jpg', 19),
(173, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924295859.jpg', 19),
(174, 'https://cdn.tgdd.vn/Products/Images/12718/308126/bhx/thit-kho-trung-cut-ngoc-tu-khay-300g-202306031924289631.jpg', 19),
(183, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220823306033.jpg', 20),
(184, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818413153.jpg', 20),
(185, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818416362.jpg', 20),
(186, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818418898.jpg', 20),
(187, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818422150.jpg', 20),
(188, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818425324.jpg', 20),
(189, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202306220818428343.jpg', 20),
(190, 'https://cdn.tgdd.vn/Products/Images/12718/308119/bhx/dau-hu-don-thit-400g-202307131019384745.jpg', 20),
(192, 'https://cdn.tgdd.vn/Products/Images/12718/304914/bhx/sellingpoint.jpg', 21),
(200, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031510296686.jpg', 22),
(201, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509158437.jpg', 22),
(202, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509161054.jpg', 22),
(203, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509165689.jpg', 22),
(204, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509167871.jpg', 22),
(205, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509169851.jpg', 22),
(206, 'https://cdn.tgdd.vn/Products/Images/12718/308120/bhx/kho-qua-don-thit-400g-202306031509163399.jpg', 22),
(213, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/sellingpoint.jpg', 23),
(214, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919586452.jpg', 23),
(215, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919590823.jpg', 23),
(216, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919596543.jpg', 23),
(217, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919598958.jpg', 23),
(218, 'https://cdn.tgdd.vn/Products/Images/12718/308122/bhx/nam-heo-nuong-chao-ngoc-tu-khay-300g-202306031919593667.jpg', 23),
(226, 'https://cdn.tgdd.vn/Products/Images/8790/318604/bhx/chan-ga-cp-500g-10-12-cai-202311111026220419.jpg', 24),
(227, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334402099.jpg', 24),
(228, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334405055.jpg', 24),
(229, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334409118.jpg', 24),
(230, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334412658.jpg', 24),
(231, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334415643.jpg', 24),
(232, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309281334418499.jpg', 24),
(238, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307281019290466.jpg', 25),
(239, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648508256.jpg', 25),
(240, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648513170.jpg', 25),
(241, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648515302.jpg', 25),
(242, 'https://cdn.tgdd.vn/Products/Images/12718/310992/bhx/combo-nuong-da-ngoai-khay-650g-202307271648510860.jpg', 25),
(248, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307281019547012.jpg', 26),
(249, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650227786.jpg', 26),
(250, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650232933.jpg', 26),
(251, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650235575.jpg', 26),
(252, 'https://cdn.tgdd.vn/Products/Images/12718/311002/bhx/combo-nuong-hoang-gia-khay-1kg-202307271650230645.jpg', 26),
(258, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307281020490591.jpg', 27),
(259, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651505679.jpg', 27),
(260, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651514255.jpg', 27),
(261, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651501295.jpg', 27),
(262, 'https://cdn.tgdd.vn/Products/Images/12718/311006/bhx/gia-cay-heo-khay-1kg-202307271651511081.jpg', 27),
(264, 'https://cdn.tgdd.vn/Products/Images/8781/312508/bhx/ba-roi-heo-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308031322364524.jpg', 28),
(269, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 29),
(270, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 29),
(271, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 29),
(272, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 29),
(277, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202202111520572889.jpg', 30),
(278, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262049102381.jpg', 30),
(279, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-khay-500g-202111262052218714.jpg', 30),
(280, 'https://cdn.tgdd.vn/Products/Images/8781/228329/bhx/ba-roi-heo-cp-khay-500g-202106260947182044.jpg', 30),
(286, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202203251617285316.jpg', 31),
(287, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-khay-300g-202111262017472747.jpg', 31),
(288, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025554317.jpg', 31),
(289, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025572863.jpg', 31),
(290, 'https://cdn.tgdd.vn/Products/Images/8781/226860/bhx/thit-dui-heo-cp-khay-300g-202106261025584999.jpg', 31),
(292, 'https://cdn.tgdd.vn/Products/Images/8790/312259/bhx/dui-toi-ga-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308011009319424.jpg', 32),
(298, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 33),
(299, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 33),
(300, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 33),
(301, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 33),
(302, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 33),
(308, 'https://cdn.tgdd.vn/Products/Images/8781/312620/bhx/thit-bap-gio-cp-900g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031702285228.jpg', 34),
(309, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-1-2-mieng-202203251623170212.jpg', 34),
(310, 'https://cdn.tgdd.vn/Products/Images/8781/241262/bhx/thit-bap-gio-cp-khay-300g-202112021354122069.jpg', 34),
(311, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 34),
(312, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 34),
(321, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-1-2-mieng-202203251629409852.jpg', 35),
(322, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021476293.jpg', 35),
(323, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262021482672.jpg', 35),
(324, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262040326017.jpg', 35),
(325, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262024094311.jpg', 35),
(326, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-khay-300g-202111262023294859.jpg', 35),
(327, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659365832.jpg', 35),
(328, 'https://cdn.tgdd.vn/Products/Images/8781/241258/bhx/nac-vai-heo-cp-khay-300g-202106021659370703.jpg', 35),
(334, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-cp-khay-500g-4-6-mieng-202202111526042757.jpg', 36),
(335, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103141169.jpg', 36),
(336, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103154234.jpg', 36),
(337, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103184165.jpg', 36),
(338, 'https://cdn.tgdd.vn/Products/Images/8781/228332/bhx/suon-cot-let-khay-500g-4-6-mieng-202111262103188870.jpg', 36),
(344, 'https://cdn.tgdd.vn/Products/Images/8781/312553/bhx/3-thit-than-heo-cp-300g-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031501343266.jpg', 37),
(345, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-cp-khay-300g-1-2-mieng-202203251608241341.jpg', 37),
(346, 'https://cdn.tgdd.vn/Products/Images/8781/241263/bhx/thit-than-heo-khay-300g-202111262033225545.jpg', 37),
(347, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 37),
(348, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 37),
(354, 'https://cdn.tgdd.vn/Products/Images/8781/312632/bhx/suon-gia-heo-cp-1kg-nac-dam-heo-nhap-khau-dong-lanh-200g-202308031714502923.jpg', 38),
(355, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-cp-khay-500g-9-11-mieng-202203251627302886.jpg', 38),
(356, 'https://cdn.tgdd.vn/Products/Images/8781/241261/bhx/suon-gia-heo-khay-500g-9-11-mieng-202111262106439880.jpg', 38),
(357, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-tui-200g-202212060825395663.jpg', 38),
(358, 'https://cdn.tgdd.vn/Products/Images/8781/298878/bhx/nac-dam-heo-nhap-khau-dong-lanh-200g-202307141307375227.jpg', 38),
(364, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-5-7-mieng-202202111525297279.jpg', 39),
(365, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-khay-500g-5-7-mieng-202112021358378527.jpg', 39),
(366, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108031143.jpg', 39),
(367, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108079176.jpg', 39),
(368, 'https://cdn.tgdd.vn/Products/Images/8781/228333/bhx/suon-non-heo-cp-khay-500g-202106261108086403.jpg', 39),
(374, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 40),
(375, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 40),
(376, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 40),
(377, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 40),
(378, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 40),
(384, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202202111523032758.jpg', 41),
(385, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202111262041446607.jpg', 41),
(386, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125288442.jpg', 41),
(387, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125300473.jpg', 41),
(388, 'https://cdn.tgdd.vn/Products/Images/8781/242937/bhx/thit-heo-xay-cp-khay-300g-202106230125302661.jpg', 41),
(394, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-5-7-mieng-202203251612069372.jpg', 42),
(395, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-khay-500g-5-7-mieng-202111262119376013.jpg', 42),
(396, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601498839.jpg', 42),
(397, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601529369.jpg', 42),
(398, 'https://cdn.tgdd.vn/Products/Images/8781/241247/bhx/xuong-ong-heo-cp-khay-500g-202106021601539935.jpg', 42),
(404, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-cp-khay-500g-1-3-mieng-202203251635367321.jpg', 43),
(405, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119329473.jpg', 43),
(406, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119341962.jpg', 43),
(407, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119359730.jpg', 43),
(408, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119366197.jpg', 43),
(414, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 44),
(415, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 44),
(416, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 44),
(417, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 44),
(418, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 44),
(424, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 45),
(425, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 45),
(426, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 45),
(427, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 45),
(428, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 45),
(434, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-cp-khay-500g-2-4-mieng-202203251619330789.jpg', 46),
(435, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116374001.jpg', 46),
(436, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116386747.jpg', 46),
(437, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116404849.jpg', 46),
(438, 'https://cdn.tgdd.vn/Products/Images/8781/228330/bhx/chan-gio-heo-sau-khay-500g-2-4-mieng-202111262116411190.jpg', 46),
(443, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210841589560.jpg', 47),
(444, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839210459.jpg', 47),
(445, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839226705.jpg', 47),
(446, 'https://cdn.tgdd.vn/Products/Images/8781/258305/bhx/ba-roi-heo-meat-master-400g-202303210839239789.jpg', 47),
(456, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210849383345.jpg', 49),
(457, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848424840.jpg', 49),
(458, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848428389.jpg', 49),
(459, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848431204.jpg', 49),
(460, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848434525.jpg', 49),
(461, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848437523.jpg', 49),
(462, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848440723.jpg', 49),
(463, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848443730.jpg', 49),
(464, 'https://cdn.tgdd.vn/Products/Images/8781/258312/bhx/nac-dam-heo-meat-master-400g-202303210848447273.jpg', 49),
(469, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843465268.jpg', 50),
(470, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843025332.jpg', 50),
(471, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843035047.jpg', 50),
(472, 'https://cdn.tgdd.vn/Products/Images/8781/258310/bhx/cot-let-heo-meat-master-400g-3-5-mieng-202303210843050058.jpg', 50),
(478, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231653556501.jpg', 51),
(479, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651319697.jpg', 51),
(480, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651324720.jpg', 51),
(481, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651333995.jpg', 51),
(482, 'https://cdn.tgdd.vn/Products/Images/8781/258325/bhx/than-chuot-heo-meat-master-400g-202303231651338424.jpg', 51),
(487, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210851129472.jpg', 52),
(488, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850335862.jpg', 52),
(489, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850341691.jpg', 52),
(490, 'https://cdn.tgdd.vn/Products/Images/8781/258313/bhx/suon-gia-heo-meat-master-400g-8-10-mieng-202303210850351719.jpg', 52),
(495, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210853077780.jpg', 53),
(496, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852221642.jpg', 53),
(497, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852227720.jpg', 53),
(498, 'https://cdn.tgdd.vn/Products/Images/8781/258314/bhx/suon-non-heo-meat-master-400g-9-11-mieng-202303210852237589.jpg', 53),
(503, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210856208106.jpg', 54),
(504, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855348281.jpg', 54),
(505, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855355749.jpg', 54),
(506, 'https://cdn.tgdd.vn/Products/Images/8781/258328/bhx/thit-heo-xay-meat-master-400g-202303210855366589.jpg', 54),
(511, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202309251609567668.jpg', 55),
(512, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-400g-2-4-mieng-202303171659027076.jpg', 55),
(513, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229118397.jpg', 55),
(514, 'https://cdn.tgdd.vn/Products/Images/8781/258333/bhx/xuong-duoi-heo-meat-master-khay-400g-202111201229134766.jpg', 55),
(519, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210847297147.jpg', 56),
(520, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846445140.jpg', 56),
(521, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846454029.jpg', 56),
(522, 'https://cdn.tgdd.vn/Products/Images/8781/258311/bhx/dung-heo-meat-master-400g-3-5-mieng-202303210846474145.jpg', 56),
(528, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220829095953.jpg', 57),
(529, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827160961.jpg', 57),
(530, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827171372.jpg', 57),
(531, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827174375.jpg', 57),
(532, 'https://cdn.tgdd.vn/Products/Images/8781/309294/bhx/tai-heo-300g-202306220827177321.jpg', 57),
(538, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220836241593.jpg', 58),
(539, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834225317.jpg', 58),
(540, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834229356.jpg', 58),
(541, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834233431.jpg', 58),
(542, 'https://cdn.tgdd.vn/Products/Images/8781/309277/bhx/luoi-heo-300g-202306220834240011.jpg', 58),
(547, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844501135.jpg', 59),
(548, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844027015.jpg', 59),
(549, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844035122.jpg', 59),
(550, 'https://cdn.tgdd.vn/Products/Images/8781/309291/bhx/bao-tu-heo-300g-202306220844037826.jpg', 59),
(555, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220843204005.jpg', 60),
(556, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842342903.jpg', 60),
(557, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842347922.jpg', 60),
(558, 'https://cdn.tgdd.vn/Products/Images/8781/309298/bhx/cat-heo-300g-202306220842352626.jpg', 60),
(564, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220826171680.jpg', 61),
(565, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824230575.jpg', 61),
(566, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824236502.jpg', 61),
(567, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824243097.jpg', 61),
(568, 'https://cdn.tgdd.vn/Products/Images/8781/309276/bhx/tim-heo-200g-202306220824246220.jpg', 61),
(574, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220841262162.jpg', 62),
(575, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840168553.jpg', 62),
(576, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840180481.jpg', 62),
(577, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840183934.jpg', 62),
(578, 'https://cdn.tgdd.vn/Products/Images/8781/309299/bhx/gan-heo-300g-202306220840187498.jpg', 62),
(583, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220833282153.jpg', 63),
(584, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829520886.jpg', 63),
(585, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829531830.jpg', 63),
(586, 'https://cdn.tgdd.vn/Products/Images/8781/309301/bhx/ruot-gia-heo-300g-202306220829534959.jpg', 63),
(591, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220839297065.jpg', 64),
(592, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837230335.jpg', 64),
(593, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837239499.jpg', 64),
(594, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-300g-202306220837242508.jpg', 64),
(603, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-500gr-202308281323038381.jpg', 65),
(604, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107520908.jpg', 65),
(605, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107523408.jpg', 65),
(606, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107525908.jpg', 65),
(607, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107528733.jpg', 65),
(608, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107531077.jpg', 65),
(609, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-tui-500g-202211102107533283.jpg', 65),
(610, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-500gr-202307141313595842.jpg', 65),
(616, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311131532238332.jpg', 66),
(617, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311131532240325.jpg', 66),
(618, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311131532243452.jpg', 66),
(619, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311131532246552.jpg', 66),
(620, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311131532249129.jpg', 66),
(628, 'https://i.ytimg.com/vi/MKC3K06olO4/sddefault.jpg', 67),
(629, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054444944.jpg', 67),
(630, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054426106.jpg', 67),
(631, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054428360.jpg', 67),
(632, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054431046.jpg', 67),
(633, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054433812.jpg', 67),
(634, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054439779.jpg', 67),
(635, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251054437079.jpg', 67),
(636, 'https://i.ytimg.com/vi/MKC3K06olO4/hqdefault.jpg', 67),
(642, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307281018123006.jpg', 68),
(643, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307271645408267.jpg', 68),
(644, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307271645413926.jpg', 68),
(645, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307271645416836.jpg', 68),
(646, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307271645411639.jpg', 68),
(651, 'https://cdn.tgdd.vn/Products/Images/12718/310973/bhx/duoi-bo-ham-sa-khay-500g-202308031017599986.jpg', 69),
(652, 'https://cdn.tgdd.vn/Products/Images/12718/310973/bhx/duoi-bo-ham-sa-khay-500g-202308031018014034.jpg', 69),
(653, 'https://cdn.tgdd.vn/Products/Images/12718/310973/bhx/duoi-bo-ham-sa-khay-500g-202308031018007760.jpg', 69),
(654, 'https://cdn.tgdd.vn/Products/Images/12718/310973/bhx/duoi-bo-ham-sa-khay-500g-202308031018003211.jpg', 69),
(663, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202307271620267478.jpg', 70),
(664, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051543449411.jpg', 70),
(665, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051543596042.jpg', 70),
(666, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051543563005.jpg', 70),
(667, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051543531229.jpg', 70),
(668, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051543499767.jpg', 70),
(669, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202307271620261789.jpg', 70),
(670, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202307271620256364.jpg', 70),
(676, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305181319264984.jpg', 71),
(677, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547075563.jpg', 71),
(678, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547095042.jpg', 71),
(679, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547108953.jpg', 71),
(680, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547111327.jpg', 71),
(686, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202303220838209953.jpg', 72),
(687, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202303220837441735.jpg', 72),
(688, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202303220837446075.jpg', 72),
(689, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202303220837448244.jpg', 72),
(690, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202303220837456835.jpg', 72),
(696, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202303220840143393.jpg', 73),
(697, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202303220839105937.jpg', 73),
(698, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202306130847247684.jpg', 73),
(699, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202306130847253399.jpg', 73),
(700, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202306130847256089.jpg', 73),
(706, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202303251518056038.jpg', 74),
(707, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202303251515160513.jpg', 74),
(708, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202303251515163566.jpg', 74),
(709, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202303251515571621.jpg', 74),
(710, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202303251515187526.jpg', 74),
(716, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/-202309161158002850.jpg', 75),
(717, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/-202309161158005789.jpg', 75),
(718, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/-202309161158008712.jpg', 75),
(719, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/-202309161158011607.jpg', 75),
(720, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/-202309161158013747.jpg', 75),
(725, 'https://cdn.tgdd.vn/Products/Images/8139/306155/bhx/-202309161149227491.jpg', 76),
(726, 'https://cdn.tgdd.vn/Products/Images/8139/306155/bhx/-202309161149230377.jpg', 76),
(727, 'https://cdn.tgdd.vn/Products/Images/8139/306155/bhx/-202309161149233652.jpg', 76),
(728, 'https://cdn.tgdd.vn/Products/Images/8139/306155/bhx/-202309161149224008.jpg', 76),
(734, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-dong-lanh-250g-202309121545501650.jpg', 77),
(735, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-250g-202304250844422802.jpg', 77),
(736, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-250g-202304250844430821.jpg', 77),
(737, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-250g-202304250844434917.jpg', 77),
(738, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-250g-202304250844453031.jpg', 77),
(744, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-dong-lanh-250g-202309121546336840.jpg', 78),
(745, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-250g-202304250848252989.jpg', 78),
(746, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-250g-202304250848261157.jpg', 78),
(747, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-250g-202304250848265275.jpg', 78),
(748, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-250g-202304250848283332.jpg', 78),
(754, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305181319264984.jpg', 79),
(755, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547075563.jpg', 79),
(756, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547095042.jpg', 79),
(757, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547108953.jpg', 79),
(758, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202305061547111327.jpg', 79),
(764, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-dong-lanh-250g-202309121547007272.jpg', 80),
(765, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-250g-202304250851277147.jpg', 80),
(766, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-250g-202304250851285291.jpg', 80),
(767, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-250g-202304250851289537.jpg', 80),
(768, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-250g-202304250851306451.jpg', 80),
(773, 'https://cdn.tgdd.vn/Products/Images/8139/306156/bhx/suon-bo-my-co-xuong-fohla-dong-lanh-250g-202309121547264016.jpg', 81),
(774, 'https://cdn.tgdd.vn/Products/Images/8139/306156/bhx/suon-bo-my-co-xuong-fohla-250g-202304250854344147.jpg', 81),
(775, 'https://cdn.tgdd.vn/Products/Images/8139/306156/bhx/suon-bo-my-co-xuong-fohla-250g-202304250854358124.jpg', 81),
(776, 'https://cdn.tgdd.vn/Products/Images/8139/306156/bhx/suon-bo-my-co-xuong-fohla-250g-202304250854374842.jpg', 81),
(781, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-hokubee-fohla-dong-lanh-250g-202309121546129849.jpg', 82),
(782, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903391361.jpg', 82),
(783, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903407848.jpg', 82),
(784, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903430367.jpg', 82),
(789, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-hokubee-fohla-dong-lanh-250g-202309121546129849.jpg', 83),
(790, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903391361.jpg', 83),
(791, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903407848.jpg', 83),
(792, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-uc-fohla-250g-202304250903430367.jpg', 83),
(803, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530561312.jpg', 84),
(804, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530564889.jpg', 84),
(805, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530567991.jpg', 84),
(806, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530575607.jpg', 84),
(807, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530578234.jpg', 84),
(808, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530580628.jpg', 84),
(809, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530587864.jpg', 84),
(810, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530590698.jpg', 84),
(811, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530570495.jpg', 84),
(812, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131530573112.jpg', 84),
(821, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131541219149.jpg', 85),
(822, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131541479911.jpg', 85),
(823, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131542222177.jpg', 85),
(824, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131543026819.jpg', 85),
(825, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131543301899.jpg', 85),
(826, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131543564869.jpg', 85),
(827, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131533176718.jpg', 85),
(828, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131533183843.jpg', 85),
(837, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300951508215.jpg', 86),
(838, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300956577101.jpg', 86),
(839, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950130615.jpg', 86),
(840, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950133651.jpg', 86),
(841, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950136543.jpg', 86),
(842, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950139208.jpg', 86),
(843, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950141988.jpg', 86),
(844, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202303300950144444.jpg', 86),
(853, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300933398057.jpg', 87),
(854, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300931216897.jpg', 87),
(855, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300930091457.jpg', 87),
(856, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300930097770.jpg', 87),
(857, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300930100845.jpg', 87),
(858, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300930103844.jpg', 87),
(859, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300955219595.jpg', 87),
(860, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202303300930112852.jpg', 87);
INSERT INTO `gallery` (`id`, `thumbnail`, `product_id`) VALUES
(866, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202303300937536156.jpg', 88),
(867, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202303300936566349.jpg', 88),
(868, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202303300935406205.jpg', 88),
(869, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202303300935409283.jpg', 88),
(870, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202303300935421090.jpg', 88),
(876, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-mat-cat-khoi-luc-lac-pacow-khay-250g-202202111454198796.jpg', 89),
(877, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-cat-khoi-luc-lac-250g-202105121334144262.jpg', 89),
(878, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-cat-khoi-luc-lac-250g-202105121334149582.jpg', 89),
(879, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-cat-khoi-luc-lac-250g-202105121334161239.jpg', 89),
(880, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-cat-khoi-luc-lac-250g-202105121334164010.jpg', 89),
(886, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/bo-uc-mat-xao-pacow-khay-250g-202202111447535457.jpg', 90),
(887, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/than-bo-uc-pacow-khay-250g-202105121352186569.jpg', 90),
(888, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/than-bo-uc-pacow-khay-250g-202105121352192142.jpg', 90),
(889, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/than-bo-uc-pacow-khay-250g-202105121352203700.jpg', 90),
(890, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/than-bo-uc-pacow-khay-250g-202105121352206701.jpg', 90),
(897, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-mat-xay-pacow-khay-250g-202202111441414170.jpg', 91),
(898, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-khay-250g-202105121346550484.jpg', 91),
(899, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-khay-250g-202105121346559240.jpg', 91),
(900, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-khay-250g-202105121346571403.jpg', 91),
(901, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-khay-250g-202105121346579488.jpg', 91),
(902, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-khay-250g-202105121346590305.jpg', 91),
(908, 'https://cdn.tgdd.vn/Products/Images/8790/319235/bhx/dui-toi-ga-nhap-khau-550g-650g-hat-nem-nam-huong-maggi-800g-202311201537143219.jpg', 92),
(909, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202306130911518568.jpg', 92),
(910, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202307141314226575.jpg', 92),
(911, 'https://cdn.tgdd.vn/Products/Images/8645/309292/bhx/hat-nem-cao-cap-nam-huong-maggi-goi-800g-202306220854426093.jpg', 92),
(912, 'https://cdn.tgdd.vn/Products/Images/8645/309292/bhx/sellingpoint.jpg', 92),
(918, 'https://cdn.tgdd.vn/Products/Images/8790/319239/bhx/canh-ga-nhap-khau-dong-lanh-500g-3-5-canh-dau-hao-maggi-dam-dac-350g-202311201553084826.jpg', 93),
(919, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/canh-ga-nhap-khau-dong-lanh-500g-3-5-canh-202306130901297861.jpg', 93),
(920, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/canh-ga-nhap-khau-dong-lanh-500g-3-5-canh-202307141305149969.jpg', 93),
(921, 'https://cdn.tgdd.vn/Products/Images/3465/91407/bhx/dau-hao-dam-dac-maggi-chai-350g-202209082118354485.png', 93),
(922, 'https://cdn.tgdd.vn/Products/Images/3465/91407/bhx/dau-hao-dam-dac-maggi-chai-350g-202209082118170548.png', 93),
(928, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/-202309071523383004.jpg', 94),
(929, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/-202309071523385712.jpg', 94),
(930, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/-202309071523389691.jpg', 94),
(931, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/-202309071523392383.jpg', 94),
(932, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/-202309071523395097.jpg', 94),
(938, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-4-6-canh-202306130905182179.jpg', 95),
(939, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-4-6-canh-202306130904283525.jpg', 95),
(940, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-4-6-canh-202306130904306225.jpg', 95),
(941, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-4-6-canh-202306130904312485.jpg', 95),
(942, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-5-8-canh-202307141306113191.jpg', 95),
(948, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202306130911518568.jpg', 96),
(949, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202307141314226575.jpg', 96),
(950, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202306130911026877.jpg', 96),
(951, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202306130912196760.jpg', 96),
(952, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202306130911032501.jpg', 96),
(956, 'https://cdn.tgdd.vn/Products/Images/8790/313892/bhx/long-ga-cp-250gr-202311030713485463.jpg', 97),
(957, 'https://cdn.tgdd.vn/Products/Images/8790/313892/bhx/long-ga-cp-250gr-202311030713490318.jpg', 97),
(958, 'https://cdn.tgdd.vn/Products/Images/8790/313892/bhx/long-ga-cp-250gr-202311080859363925.jpg', 97),
(966, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170851319187.jpg', 100),
(967, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-nguyen-con-nhap-khau-dong-lanh-12kg-202307141307002515.jpg', 100),
(968, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170845173170.jpg', 100),
(969, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170845184312.jpg', 100),
(970, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170845189565.jpg', 100),
(971, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170845193732.jpg', 100),
(972, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-tu-11kg-13kg-202310170845201089.jpg', 100),
(977, 'https://cdn.tgdd.vn/Products/Images/8790/314820/bhx/ga-ac-nguyen-con-135g-202309091638315302.jpg', 101),
(978, 'https://cdn.tgdd.vn/Products/Images/8790/314820/bhx/ga-ac-nguyen-con-135g-202309091638318481.jpg', 101),
(979, 'https://cdn.tgdd.vn/Products/Images/8790/314820/bhx/ga-ac-nguyen-con-135g-202309091638321375.jpg', 101),
(980, 'https://cdn.tgdd.vn/Products/Images/8790/314820/bhx/ga-ac-nguyen-con-135g-202309091638324325.jpg', 101),
(986, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-395g-3-4-con-202308051606186198.jpg', 102),
(987, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-nguyen-con-395g-202307271551075061.jpg', 102),
(988, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-395g-3-4-con-202308051606120794.jpg', 102),
(989, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-395g-3-4-con-202308051606155050.jpg', 102),
(990, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-nguyen-con-395g-202307271551083939.jpg', 102),
(996, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633201427.jpg', 103),
(997, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633203886.jpg', 103),
(998, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633207903.jpg', 103),
(999, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633211492.jpg', 103),
(1000, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633214287.jpg', 103),
(1005, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/-202306211455505675.jpg', 104),
(1006, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/-202306211455508775.jpg', 104),
(1007, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/-202306211455511665.jpg', 104),
(1008, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/-202306211455514928.jpg', 104),
(1014, 'https://cdn.tgdd.vn/Products/Images/8790/305671/bhx/canh-ga-giua-nhap-khau-dong-lanh-500g-9-11-mieng-202304050829176997.jpg', 105),
(1015, 'https://cdn.tgdd.vn/Products/Images/2388/136237/bhx/bot-chien-gion-meizan-150g-202202101055031961.jpg', 105),
(1016, 'https://cdn.tgdd.vn/Products/Images/2388/136237/bhx/bot-chien-gion-meizan-goi-150gr-202304050937151779.jpg', 105),
(1017, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/canh-ga-giua-nhap-khau-dong-lanh-500g-12-17-mieng-202306130858011630.jpg', 105),
(1018, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/canh-ga-giua-nhap-khau-dong-lanh-500g-12-17-mieng-202306130852035970.jpg', 105),
(1027, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/sellingpoint.jpg', 106),
(1028, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031926485716.jpg', 106),
(1029, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031926489189.jpg', 106),
(1030, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031926496859.jpg', 106),
(1031, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031926500960.jpg', 106),
(1032, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031928467477.jpg', 106),
(1033, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031928471277.jpg', 106),
(1034, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-ngoc-tu-khay-300g-202306031926494072.jpg', 106),
(1042, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202307281018594643.jpg', 107),
(1043, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202308051559220534.jpg', 107),
(1044, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202308051559210474.jpg', 107),
(1045, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202308051559183325.jpg', 107),
(1046, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202308051559162001.jpg', 107),
(1047, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202307271647552325.jpg', 107),
(1048, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202307271647547471.jpg', 107),
(1049, 'https://cdn.tgdd.vn/Products/Images/8790/312527/bhx/uc-ga-phi-le-co-da-cp-1kg-xuong-que-heo-nhap-khau-dong-lanh-500g-202308031427054652.jpg', 108),
(1051, 'https://cdn.tgdd.vn/Products/Images/8790/318596/bhx/uc-ga-tuoi-phi-le-cp-500g-1-3-mieng-202311111017589238.jpg', 110),
(1052, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517098913.jpg', 110),
(1053, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517100809.jpg', 110),
(1054, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517103020.jpg', 110),
(1055, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517105308.jpg', 110),
(1061, 'https://cdn.tgdd.vn/Products/Images/8790/312248/bhx/ma-dui-ga-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308010932272542.jpg', 113),
(1063, 'https://cdn.tgdd.vn/Products/Images/8790/318598/bhx/dui-toi-ga-cp-500g-4-6-dui-202311111020048733.jpg', 114),
(1064, 'https://cdn.tgdd.vn/Products/Images/8790/226876/bhx/dui-toi-ga-cp-500g-4-6-dui-202309211442441359.jpg', 114),
(1065, 'https://cdn.tgdd.vn/Products/Images/8790/226876/bhx/dui-toi-ga-cp-500g-4-6-dui-202309211442443396.jpg', 114),
(1066, 'https://cdn.tgdd.vn/Products/Images/8790/226876/bhx/dui-toi-ga-cp-500g-4-6-dui-202309211442445525.jpg', 114),
(1067, 'https://cdn.tgdd.vn/Products/Images/8790/226876/bhx/dui-toi-ga-cp-500g-4-6-dui-202309211442448710.jpg', 114),
(1073, 'https://cdn.tgdd.vn/Products/Images/8790/312259/bhx/dui-toi-ga-cp-500g-xuong-que-heo-nhap-khau-dong-lanh-500g-202308011009319424.jpg', 115),
(1075, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202203251606270580.jpg', 116),
(1076, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103186526.jpg', 116),
(1077, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103196413.jpg', 116),
(1078, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103211347.jpg', 116),
(1079, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262105057079.jpg', 116),
(1085, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231804393522.jpg', 117),
(1086, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805039948.jpg', 117),
(1087, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805043109.jpg', 117),
(1088, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805045329.jpg', 117),
(1089, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805047552.jpg', 117),
(1090, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805049396.jpg', 117),
(1097, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231804393522.jpg', 118),
(1098, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805039948.jpg', 118),
(1099, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805043109.jpg', 118),
(1100, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805045329.jpg', 118),
(1101, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805047552.jpg', 118),
(1102, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231805049396.jpg', 118),
(1109, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-cp-khay-500g-1-3-mieng-202203251635367321.jpg', 119),
(1110, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119329473.jpg', 119),
(1111, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119341962.jpg', 119),
(1112, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119359730.jpg', 119),
(1113, 'https://cdn.tgdd.vn/Products/Images/8781/226835/bhx/chan-gio-heo-truoc-khay-500g-1-3-mieng-202111262119366197.jpg', 119),
(1119, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291027568468.jpg', 121),
(1120, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023423081.jpg', 121),
(1121, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023420654.jpg', 121),
(1122, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023418455.jpg', 121),
(1123, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023416106.jpg', 121),
(1124, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023413393.jpg', 121),
(1125, 'https://cdn.tgdd.vn/Products/Images/8783/313706/bhx/trung-ga-ta-nguyen-ho-hop-6-qua-202308291023410545.jpg', 121),
(1133, 'https://cdn.tgdd.vn/Products/Images/8790/318596/bhx/uc-ga-tuoi-phi-le-cp-500g-1-3-mieng-202311111017589238.jpg', 122),
(1134, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517098913.jpg', 122),
(1135, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517100809.jpg', 122),
(1136, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517103020.jpg', 122),
(1137, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/-202309071517105308.jpg', 122),
(1143, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202304081432374341.jpg', 123),
(1144, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202304081430448009.jpg', 123),
(1145, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202304081430453997.jpg', 123),
(1146, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202304081430469065.jpg', 123),
(1147, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202304081430471759.jpg', 123),
(1153, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202203251606270580.jpg', 124),
(1154, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103186526.jpg', 124),
(1155, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103196413.jpg', 124),
(1156, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262103211347.jpg', 124),
(1157, 'https://cdn.tgdd.vn/Products/Images/8781/228334/bhx/thit-dui-heo-cp-khay-500g-202111262105057079.jpg', 124),
(1163, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309261104027148.jpg', 125),
(1164, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715275040.jpg', 125),
(1165, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715277362.jpg', 125),
(1166, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715279732.jpg', 125),
(1167, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715282465.jpg', 125),
(1168, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715285477.jpg', 125),
(1169, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715288158.jpg', 125),
(1170, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715291304.jpg', 125),
(1171, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202309231715294575.jpg', 125),
(1172, 'https://i.ytimg.com/vi/ocDt-o8m8H0/sddefault.jpg', 125),
(1182, 'https://i.ytimg.com/vi/ocDt-o8m8H0/hqdefault.jpg', 125),
(1183, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309261050343047.jpg', 126),
(1184, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231709100795.jpg', 126),
(1185, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708485087.jpg', 126),
(1186, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708487495.jpg', 126),
(1187, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708489951.jpg', 126),
(1188, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708492681.jpg', 126),
(1189, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708495325.jpg', 126),
(1190, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708497629.jpg', 126),
(1191, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202309231708499919.jpg', 126),
(1192, 'https://i.ytimg.com/vi/jYM9CbMYmcE/sddefault.jpg', 126),
(1202, 'https://i.ytimg.com/vi/jYM9CbMYmcE/hqdefault.jpg', 126),
(1203, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309261347220329.jpg', 127),
(1204, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738540716.jpg', 127),
(1205, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738542707.jpg', 127),
(1206, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738544784.jpg', 127),
(1207, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738546929.jpg', 127),
(1208, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738549517.jpg', 127),
(1209, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738551748.jpg', 127),
(1210, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738553876.jpg', 127),
(1211, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738555913.jpg', 127),
(1212, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202309231738558260.jpg', 127),
(1213, 'https://i.ytimg.com/vi/0S6RIWdfxzs/sddefault.jpg', 127),
(1224, 'https://i.ytimg.com/vi/0S6RIWdfxzs/hqdefault.jpg', 127),
(1225, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309261335344569.jpg', 128),
(1226, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740161010.jpg', 128),
(1227, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740162899.jpg', 128),
(1228, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740164658.jpg', 128),
(1229, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740166732.jpg', 128),
(1230, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740168804.jpg', 128),
(1231, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740170856.jpg', 128),
(1232, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740172601.jpg', 128),
(1233, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740174823.jpg', 128),
(1234, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202309231740177043.jpg', 128),
(1235, 'https://i.ytimg.com/vi/t2Lw24p9Hks/sddefault.jpg', 128),
(1246, 'https://i.ytimg.com/vi/t2Lw24p9Hks/hqdefault.jpg', 128),
(1247, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309261114258179.jpg', 129),
(1248, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733332392.jpg', 129),
(1249, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733334695.jpg', 129),
(1250, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733336642.jpg', 129),
(1251, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733338722.jpg', 129),
(1252, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733340950.jpg', 129),
(1253, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733343037.jpg', 129),
(1254, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733344914.jpg', 129),
(1255, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733347055.jpg', 129),
(1256, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202309231733348977.jpg', 129),
(1257, 'https://i.ytimg.com/vi/Kuqe7ovnUjQ/sddefault.jpg', 129),
(1268, 'https://i.ytimg.com/vi/Kuqe7ovnUjQ/hqdefault.jpg', 129),
(1269, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309261052583088.jpg', 130),
(1270, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711314644.jpg', 130),
(1271, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711319344.jpg', 130),
(1272, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711321844.jpg', 130),
(1273, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711324801.jpg', 130),
(1274, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711327311.jpg', 130),
(1275, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711330740.jpg', 130),
(1276, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202309231711333906.jpg', 130);

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
(64, 'https://cdn.tgdd.vn/Products/Images/8781/309303/bhx/la-mia-heo-nt-pearly-food-300g-202311221451557464_300x300.jpg', 'Lá mía heo NT Pearly Food 300g', 26500, 0, 26500, 'khay', '300g', 'Lá mía heo hay còn gọi là tụy heo, chứa nhiều vitamin B, vitamin C, với công dụng bổ máu, tốt cho hệ thần kinh,... Lá mía heo có thể chế biến nhiều món ăn ngon như cháo lòng, lá mía heo nướng, lá mía heo xào hành tây,... rất hấp dẫn.', '2023-11-28 09:58:12', NULL, 0, NULL, 1, 4),
(65, 'https://cdn.tgdd.vn/Products/Images/8139/297313/bhx/dui-bo-nhap-khau-dong-lanh-500gr-202311251123161434_300x300.jpg', 'Đùi bò nhập khẩu 500g', 130000, 24, 99000, 'túi', '500g', 'Thịt đùi có vị ngon tương tự phần mông bò và thường được cắt thành lát dày như bít-tết để nướng. Đùi bò nhập khẩu đông lạnh được cấp đông từ thịt bò tươi ngon là sản phẩm có xuất xứ rõ ràng nên đảm bảo an toàn thực phẩm và giàu chất dinh dưỡng', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(66, 'https://cdn.tgdd.vn/Products/Images/8139/314528/bhx/dui-bo-nhap-khau-dong-lanh-300g-202311251123038950_300x300.jpg', 'Đùi bò nhập khẩu đông lạnh 300g', 89000, 5, 84550, 'túi', '300g', 'Đùi bò đông lạnh được cấp đông từ thịt bò tươi ngon nhập khẩu, giàu dưỡng chất và đảm bảo an toàn thực phẩm. Thịt đùi được cắt thành các lát dày như bít tết, vị ngon tương tự như phần mông bò, có thể dùng để chế biến nhiều món ăn hấp dẫn.', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(67, 'https://cdn.tgdd.vn/Products/Images/12718/311010/bhx/bo-to-nuong-ong-tre-100g-202307251049484378_300x300.jpg', 'Bò tơ nướng ống tre 100g', 49000, 0, 49000, 'ống', '100g', 'Bò tơ nướng ống tre là một món ăn độc đáo, có cách chế biến đơn giản nhưng hương vị thì vô cùng thơm ngon, lạ miệng. Thịt bò tơ mềm, săn chắc, khi nướng lên tỏa mùi thơm lừng, ăn cùng cơm lam, muối lá é và chút rượu cần thì vô cùng tuyệt vời.', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(68, 'https://cdn.tgdd.vn/Products/Images/12718/310977/bhx/lau-bo-khay-500g-202307271646310677_300x300.jpg', 'Lẩu bò 500g', 195000, 9, 176000, 'khay', '500g', 'Lẩu bò đa dạng các nguyên liệu như gân bò, thịt bò, đuôi bò, lá lách, tim bò, ớt,.. giúp cho hương vị lẩu bò thêm thơm ngon, hấp dẫn hơn. Lẩu bò là món ăn ngon, dinh dưỡng, tiện lợi, được nhiều chị em nội trợ lựa chọn cho gia đình.', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(69, 'https://cdn.tgdd.vn/Products/Images/12718/310973/bhx/duoi-bo-ham-sa-khay-500g-202308031017225145_300x300.jpg', 'Đuôi bò hầm sả 500g', 157000, 10, 141000, 'khay', '500g', 'Đuôi bò hầm sả gồm các nguyên liệu đuôi bò và sả tươi, dùng để chế biến các món tiềm, kho, nấu lẩu vô cùng thơm ngon, hấp dẫn và chứa nhiều dưỡng chất. Đuôi bò hầm sả mua về rửa sạch lại là có thể mang đi chế biến.', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(70, 'https://cdn.tgdd.vn/Products/Images/12718/310975/bhx/lau-duoi-bo-khay-500g-202308051542438120_300x300.jpg', 'Lẩu đuôi bò 500g', 123500, 10, 111000, 'khay', '500g', 'Lẩu đuôi bò dinh dưỡng, đa dạng nguyên liệu như đuôi bò, củ sen, khoai môn, củ cải trắng, hành tây, sả ớt, tạo nên hương vị thơm ngon, đậm đà và chất lượng. Lẩu đuôi bò dễ nấu, thích hợp cho những bữa ăn gia đình, bạn bè,...', '2023-11-28 12:44:14', NULL, 0, NULL, 2, 1),
(71, 'https://cdn.tgdd.vn/Products/Images/8139/304178/bhx/bap-bo-fohla-250g-202306090951058156_300x300.jpg', 'Bắp bò Fohla 250g', 99000, 0, 99000, 'vỉ', '250g', 'Bắp bò Úc 250g tươi ngọt, thịt bò mềm, chất lượng. Thịt bò ngon, có nguồn gốc xuất xứ rõ ràng, có thể chế biến thành nhiều món ăn ngon. Thịt bò Fohla được nhiều người tin tưởng chọn lựa.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(72, 'https://cdn.tgdd.vn/Products/Images/8139/304176/bhx/nac-bo-fohla-250g-202306090955249329_300x300.jpg', 'Nạc bò Fohla 250g', 99000, 0, 99000, 'vỉ', '250g', 'Thịt nạc bò tươi ngon, chất lượng, thịt mềm, ngọt. Thịt bò được đóng gói cẩn thận, nguồn gốc xuất xứ rõ ràng, chế biến thành nhiều món ăn ngon hấp dẫn, được nhiều người ưa chuộng.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(73, 'https://cdn.tgdd.vn/Products/Images/8139/304175/bhx/nam-bo-fohla-250g-202306130847098592_300x300.jpg', 'Nạm bò Fohla 250g', 89000, 0, 89000, 'vỉ', '250g', 'Thịt nạm bò tươi ngon, chất lượng, thịt mềm ngọt. Thịt bò có nguồn gốc xuất xứ rõ ràng, an tâm cho người dùng lựa chọn. Thịt bò là thực phẩm giàu chất dinh dưỡng, chế biến thành nhiều món ăn ngon, hấp dẫn.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(74, 'https://cdn.tgdd.vn/Products/Images/8139/304177/bhx/bo-xay-fohla-250g-202306090950288067_300x300.jpg', 'Bò xay Fohla 250g', 65000, 0, 65000, 'vỉ', '250g', 'Thịt bò xay tiện lợi, tươi ngon, chất lượng, thịt mềm ngọt. Thịt bò được đảm bảo nguồn gốc xuất xứ rõ ràng, tiết kiệm thời gian chế biến. Thịt bò xay chế biến thành nhiều món ăn ngon, hấp dẫn.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(75, 'https://cdn.tgdd.vn/Products/Images/8139/306315/bhx/ba-chi-bo-my-fohla-cuon-dong-lanh-250g-202311270832518834.jpg', 'Ba chỉ bò Mỹ Fohla cuộn đông lạnh 250g', 80000, 0, 80000, 'khay', '250g', 'Ba chỉ bò Mỹ cuộn gồm nhiều dải nạc và mỡ xen kẻ nhau tạo nên độ mềm, ngọt nhưng không bị ngấy khi ăn. Thịt ba chỉ bò được cuộn sẵn, thích hợp cho các món ăn như bò ba chỉ nhúng lẩu, bò ba chỉ cuộn nấm kim châm,...', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(76, 'https://cdn.tgdd.vn/Products/Images/8139/306155/bhx/ba-chi-bo-my-fohla-dong-lanh-250g-202311270832317896.jpg', 'Ba chỉ bò Mỹ Fohla đông lạnh 250g', 80000, 0, 80000, 'khay', '250g', 'Ba chỉ bò Mỹ Fohla 250g gồm nhiều dải nạc và mỡ xen kẻ nhau tạo nên độ mềm, ngọt nhưng không bị ngấy khi ăn. Thịt bò chỉ bò được người dùng yêu thích, lựa chọn cho gia đình nấu nhiều món ăn như bò ba chỉ nhúng lẩu, bò ba chỉ cuộn nấm kim châm,...', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(77, 'https://cdn.tgdd.vn/Products/Images/8139/306153/bhx/bap-hoa-bo-my-fohla-dong-lanh-250g-202309081622421310_300x300.jpg', 'Bắp hoa bò Mỹ Fohla 250g', 125000, 0, 125000, 'khay', '250g', 'Bắp hoa bò Mỹ Fohla là phần có đầy đủ thịt, mỡ, gân là phần thịt bò ngon nhất. Bắp hoa bò ngọt, mềm và giòn ngon. Bắp hoa bò có thể chế biến thành nhiều món ăn ngon như bắp hoa bò hầm thuốc bắc, ngâm dấm, làm gỏi, làm chua ngọt,...', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(78, 'https://cdn.tgdd.vn/Products/Images/8139/306148/bhx/gu-bo-uc-fohla-dong-lanh-250g-202309081625393954_300x300.jpg', 'Gù bò Úc Fohla 250g', 104000, 0, 104000, 'khay', '250g', 'Gù bò Úc Fohla 250g với thịt bò mềm, ngon, chất lượng, nguồn gốc xuất xứ rõ ràng. Thịt bò Fohla được nhiều người lựa chọn. Gù bò có thể chế biến thành nhiều món ăn ngon, hấp dẫn.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(79, 'https://cdn.tgdd.vn/Products/Images/8139/306146/bhx/bap-bo-uc-fohla-dong-lanh-250g-202308171359047840_300x300.jpg', 'Bắp bò Úc Fohla 250g', 84000, 0, 84000, 'khay', '250g', 'Bắp bò Úc 250g tươi ngọt, thịt bò mềm, chất lượng. Thịt bò ngon, có nguồn gốc xuất xứ rõ ràng, có thể chế biến thành nhiều món ăn ngon. Thịt bò Fohla được nhiều người tin tưởng chọn lựa.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(80, 'https://cdn.tgdd.vn/Products/Images/8139/306157/bhx/loi-nac-vai-bo-my-fohla-dong-lanh-250g-202309081626060746_300x300.jpg', 'Lõi nạc vai bò Mỹ Fohla 250g', 115000, 0, 115000, 'khay', '250g', 'Lõi nạc vai bò Mỹ Fohla tươi ngon, chất lượng, có nguồn gốc xuất xứ rõ ràng. Phần thịt lõi nạc vai bò mềm, giòn ăn rất ngon. Lõi nạc vai bò có thể chế biến thành nhiều món ăn ngon hấp dẫn như nướng, trộn gỏi,...', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(81, 'https://cdn.tgdd.vn/Products/Images/8139/306156/bhx/suon-bo-my-co-xuong-fohla-dong-lanh-250g-202309081626279695_300x300.jpg', 'Sườn bò Mỹ có xương Fohla 250g', 115000, 0, 115000, 'khay', '250g', 'Sườn bò Mỹ có xương Fohla 250g chất lượng, tươi ngon, được đảm bảo nguồn gốc xuất xứ rõ ràng. Sườn bò Mỹ có thịt mềm, ngọt, ngon, hương vị khi ăn đậm đà khó quên. Sườn bò Mỹ có thể nấu nhiều món ngon như sườn bò nướng, canh sườn bò,...', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(82, 'https://cdn.tgdd.vn/Products/Images/8139/306149/bhx/dau-than-ngoai-bo-hokubee-fohla-dong-lanh-250g-202309081623112306_300x300.jpg', 'Đầu thăn ngoại bò Hokubee Fohla 250g', 229000, 0, 229000, 'khay', '250g', 'Đầu thăn ngoại bò Úc Fohla 250g gồm nạc và vân mỡ tạo nên độ mềm, ngọt tự nhiên của thịt bò, cũng như độ giòn và béo đặc trưng. Thịt bò có nguồn gốc rõ ràng, chất lượng, được nhiều người chọn mua.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(83, 'https://cdn.tgdd.vn/Products/Images/8139/306151/bhx/than-ngoai-bo-hokubee-fohla-dong-lanh-250g-202309090927209312_300x300.jpg', 'Thăn ngoại bò Hokubee Fohla 250g', 209000, 0, 209000, 'khay', '250g', 'Đầu thăn ngoại bò Úc Fohla 250g gồm nạc và vân mỡ tạo nên độ mềm, ngọt tự nhiên của thịt bò, cũng như độ giòn và béo đặc trưng. Thịt bò có nguồn gốc rõ ràng, chất lượng, được nhiều người chọn mua.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(84, 'https://cdn.tgdd.vn/Products/Images/8139/306912/bhx/combo-thit-bo-bo-vien-ca-hoi-nau-lau-fohla-1kg-202305131539557068_300x300.jpg', 'Combo Thịt bò + Bò viên + Cá hồi nấu lẩu Fohla 1kg', 380000, 10, 342000, 'túi', '1kg', 'Combo thịt lẩu Fohla tươi ngon, chất lượng, được tặng kèm nước cốt lẩu giúp tiết kiệm thời gian sơ chế và nấu lẩu. Combo thịt lẩu gồm ba chỉ bò Mỹ, sườn bò Mỹ, bò viên Úc, cá hồi Nauy vô cùng dinh dưỡng, thơm ngon và hấp dẫn.', '2023-11-28 12:48:52', NULL, 0, NULL, 2, 5),
(85, 'https://cdn.tgdd.vn/Products/Images/8139/306913/bhx/combo-thit-heo-thit-bo-nuong-fohla-1kg-202305131540544619_300x300.jpg', 'Combo Thịt heo + Thịt bò nướng Fohla 1kg', 394000, 10, 354600, 'túi', '1kg', 'Combo thịt nướng Fohla tươi ngon, chất lượng, được kèm bịch nước xốt ướp nướng, đóng gói cẩn thận. Combo thịt nướng bao gồm ba chỉ heo Mỹ, nạc dăm heo, lõi nạc vai Mỹ, đầu thăn ngoại bò Úc vô cùng tiện lợi, và tiết kiệm thời gian chế biến nhưng vẫn hấp dẫn, dinh dưỡng.', '2023-11-28 12:48:53', NULL, 0, NULL, 2, 5),
(86, 'https://cdn.tgdd.vn/Products/Images/8139/223389/bhx/bit-tet-dui-bo-uc-pacow-250g-202307051005148961_300x300.jpg', 'Bít tết đùi bò Úc mát Pacow 250g', 134000, 0, 134000, 'vỉ', '250g', 'Là thịt bò nạc nguyên quả nằm ngay phía trên bắp chân sau của con bò. Miếng thịt rất nạc và hơi khô phù hợp với chiên hoặc nướng theo tảng. Đặc biệt với món beefsteak. Bít tết đùi bò Úc Pacow khay 250g được sản xuất ở Úc bởi Pacow, đã được kiểm duyệt chặc chẽ nên đảm bảo an toàn.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(87, 'https://cdn.tgdd.vn/Products/Images/8139/223384/bhx/thit-ba-chi-bo-uc-pacow-250g-202307051006011594_300x300.jpg', 'Thịt ba chỉ bò Úc Pacow 250g', 113000, 0, 113000, 'vỉ', '250g', 'Ba chỉ Bò là phần thịt tại cơ hoành của con bò, ngay dưới phần xương sườn. Thịt ba bò chỉ thường có nhiều mỡ có những dải mỡ và nạc giúp cho các món nướng lẩu mềm, thơm, ăn không ngán. Thịt ba chỉ bò Úc Pacow khay 250g được sản xuất ở Úc bởi Pacow, đã được kiểm duyệt chặc chẽ nên đảm bảo an toàn.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(88, 'https://cdn.tgdd.vn/Products/Images/8139/223386/bhx/thit-bo-tai-uc-pacow-250g-202306090947287591_300x300.jpg', 'Thịt bò tái Úc Pacow 250g', 129000, 0, 129000, 'vỉ', '250g', 'Loại thịt bò với sự kết hợp hoàn hảo giữa mỡ, nạc và gân. Thịt có độ mềm vừa phải, rất ngọt và thơm tự nhiên, thích hợp nhất là dùng để ăn lẩu, phở bò tái, bún bò tái. Thịt bò tái Pacow khay 250g tươi ngon, là giống bò ở Úc bởi Pacow, đã được kiểm duyệt chặc chẽ nên đảm bảo an toàn.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(89, 'https://cdn.tgdd.vn/Products/Images/8139/239159/bhx/thit-bo-uc-cat-khoi-luc-lac-pacow-250g-202306090941308844_300x300.jpg', 'Thịt bò Úc cắt khối lúc lắc Pacow 250g', 122000, 0, 122000, 'vỉ', '250g', 'Đây phần thịt bò mềm, ở trên cùng có một lớp mỡ dày, chắc nhưng không gây ngậy, không nồng khi chế biến thích hợp với món bò hầm hoặc ò lúc lắc. Bò Úc cắt khối lúc lắc khay 250g tươi ngon được sản xuất ở Úc bởi Pacow, đã được kiểm duyệt chặc chẽ nên đảm bảo an toàn.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(90, 'https://cdn.tgdd.vn/Products/Images/8139/239162/bhx/thit-bo-uc-xao-pacow-250g-202306090940568448_300x300.jpg', 'Thịt bò Úc xào Pacow 250g', 117000, 0, 117000, 'vỉ', '250g', 'Là nguyên liệu phổ biến trong việc bếp núc hàng ngày, thịt bò là loại thịt giàu protein, thích hợp để bổ sung máu và tái tạo tế bào mô thích hợp với các món như bò xào rau muống. Bò Úc xào Pacow khay 250g tươi ngon được sản xuất ở Úc bởi Pacow, đã được kiểm duyệt chặc chẽ nên đảm bảo an toàn.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(91, 'https://cdn.tgdd.vn/Products/Images/8139/239160/bhx/thit-bo-uc-xay-pacow-250g-202306090940156486_300x300.jpg', 'Thịt bò Úc xay Pacow 250g', 86000, 0, 86000, 'vỉ', '250g', 'Rất thuận tiện chế biến nhiều món ngon. Thịt bò xay có cả nạc và mỡ xen lẫn cho hương vị béo ngậy tăng thêm phần hấp dẫn cho các món ăn. thích hợp để làm các món như hamburger, cháo, súp, bò viên. Thịt bò Úc xay khay 250g tươi ngon được sản xuất ở Úc bởi Pacow, đã được kiểm duyệt chặt chẽ.', '2023-11-28 12:52:46', NULL, 0, NULL, 2, 6),
(92, 'https://cdn.tgdd.vn/Products/Images/8790/319235/bhx/dui-toi-ga-nhap-khau-550g-650g-hat-nem-nam-huong-maggi-800g-202311201534586361_300x300.jpg', 'Đùi tỏi gà nhập khẩu 550g - 650g & hạt nêm nấm hương 800g', 138700, 16, 115860, 'gói', '', 'Đùi tỏi gà nhập khẩu từ Mỹ được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng. Đùi tỏi gà nhập khẩu 550g - 650g & hạt nêm cao cấp nấm hương 800g chất lượng, mang đến những món ăn giàu dinh dưỡng và an toàn cho sức khỏe người sử dụng.', '2023-11-28 12:59:35', NULL, 0, NULL, 3, 1),
(93, 'https://cdn.tgdd.vn/Products/Images/8790/319239/bhx/canh-ga-nhap-khau-dong-lanh-500g-3-5-canh-dau-hao-maggi-dam-dac-350g-202311201551443743_300x300.jpg', 'Cánh gà nhập khẩu 500g & dầu hào Maggi đậm đặc 350g', 82500, 7, 77100, 'chai', '', 'Cánh gà nhập khẩu tươi ngon, thịt chắc, nhiều dinh dưỡng thường dùng để chiên với nước mắm hoặc hấp hành. Cánh gà nhập khẩu đông lạnh 500g (3 -5 cánh) & dầu hào Maggi đậm đặc 350g chất lượng, mang đến những món ăn giàu dinh dưỡng và an toàn cho sức khỏe người sử dụng.', '2023-11-28 12:59:35', NULL, 0, NULL, 3, 1),
(94, 'https://cdn.tgdd.vn/Products/Images/8790/297341/bhx/canh-ga-nhap-khau-dong-lanh-500g-3-5-canh-202311271117234727.jpg', 'Cánh gà nhập khẩu đông lạnh 500g (3 -5 cánh)', 55500, 0, 55500, 'túi', '500g', 'Cánh gà nhập khẩu tươi ngon, thịt chắc, nhiều dinh dưỡng thường dùng để chiên với nước mắm hoặc hấp hành. Cánh gà nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 12:59:35', NULL, 0, NULL, 3, 1),
(95, 'https://cdn.tgdd.vn/Products/Images/8790/297338/bhx/canh-toi-ga-nhap-khau-dong-lanh-500g-5-8-canh-202311251121084470_300x300.jpg', 'Cánh tỏi gà nhập khẩu 500g', 56000, 0, 56000, 'túi', '500g', 'Cánh tỏi gà nhập khẩu thích hợp để nấu món cánh gà chiên nước mắm, gà rán, cánh gà chiên tiêu,... Cánh tỏi gà nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 12:59:35', NULL, 0, NULL, 3, 1),
(96, 'https://cdn.tgdd.vn/Products/Images/8790/297315/bhx/dui-toi-ga-nhap-khau-dong-lanh-550g-650g-2-4-cai-202311251122222879_300x300.jpg', 'Đùi tỏi gà nhập khẩu 550g - 650g', 49500, 10, 44500, 'túi', '550-650g', 'Đùi tỏi gà nhập khẩu từ Mỹ được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng. Đùi tỏi gà nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 12:59:35', NULL, 0, NULL, 3, 1),
(97, 'https://cdn.tgdd.vn/Products/Images/8790/313892/bhx/long-ga-cp-250gr-202311030713319435_300x300.jpg', 'Lòng gà 250g', 25900, 21, 20500, 'khay', '250g', 'Lòng gà được sản xuất trên dây chuyền khép kín, an toàn vệ sinh thực phẩm. Lòng gà tươi sạch khay 250g gồm gan, tim, mề là bộ phận ngon và nhiều chất dinh dưỡng của con gà. Sản phẩm có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(98, 'https://cdn.tgdd.vn/Products/Images/8790/316862/bhx/ga-vuon-dat-do-nguyen-con-09kg-13kg-202310161040283918.jpg', 'Gà vườn đất đỏ nguyên con 0.9kg - 1.3kg', 109000, 40, 65400, 'con', '0.9-1.3kg', '', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(99, 'https://cdn.tgdd.vn/Products/Images/8790/297314/bhx/ga-dai-han-quoc-nhap-khau-dong-lanh-nguyen-con-12kg-202311271608572349_300x300.jpg', 'Gà dai Hàn Quốc nhập khẩu 1.2kg', 97800, 19, 79000, 'túi', '1.2kg', '', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(100, 'https://cdn.tgdd.vn/Products/Images/8790/310972/bhx/ga-cung-kim-ke-nguyen-con-12kg-202307271554394037_300x300.jpg', 'Gà cúng kim kê nguyên con 1.2kg', 163000, 9, 147000, 'khay', '1.2kg', 'Gà dai nhập khẩu được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm. Gà dai nguyên con nhập khẩu đông lạnh với chân gà sẫm màu do gà vận động nhiều, vẫn giữ được phần thịt gà dai, thơm, ngọt nên thường dùng để hầm nấu canh, súp hoặc cháo, giúp người dùng bảo quản lâu hơn.', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(101, 'https://cdn.tgdd.vn/Products/Images/8790/314820/bhx/ga-ac-nguyen-con-135g-202309091638193829_300x300.jpg', 'Gà ác nguyên con 135g', 38000, 5, 36100, 'con', '135g', 'Gà ác nguyên con được làm sạch và đóng gói vệ sinh sạch sẽ, tiện lợi cho người dùng. Khi mua về, bạn chỉ cần làm sạch và mang đi chế biến như gà ác hầm, gà ác nướng,... Đây là thực phẩm chứa nhiều dinh dưỡng.', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(102, 'https://cdn.tgdd.vn/Products/Images/8790/310968/bhx/chim-cut-395g-3-4-con-202308051602533416_300x300.jpg', 'Chim cút 395g (3-4 con)', 46000, 5, 43700, 'túi', '395g', 'Chim cút túi 395g (3-4 con) tươi mới, đã được làm sạch hết nội tạng, đóng gói tiện lợi sạch sẽ. Chim cút có thể chế biến thành nhiều món ăn ngon, hấp dẫn và dinh dưỡng như chim cút nướng, chim cút hầm,...', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(103, 'https://cdn.tgdd.vn/Products/Images/8790/314819/bhx/bo-cau-nguyen-con-235g-202309091633043830_300x300.jpg', 'Bồ câu nguyên con 235g', 99000, 10, 89000, 'con', '235g', 'Bồ câu nguyên con được làm sạch sẵn, khi mua về chỉ cần rửa sạch và mang đi chế biến thành nhiều món ăn ngon. Bồ câu là một trong những thực phẩm vô cùng dinh dưỡng, tốt cho sức khỏe,...', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(104, 'https://cdn.tgdd.vn/Products/Images/8790/297340/bhx/canh-ga-giua-nhap-khau-dong-lanh-500g-12-17-mieng-202311270834148874.jpg', 'Cánh gà giữa nhập khẩu 500g', 74500, 0, 74500, 'túi', '500g', 'Cánh giữa gà nhập khẩu tươi ngon, nhiều thịt, giàu dinh dưỡng thường dùng để chiên với nước mắm hoặc hấp hành. Cánh gà giữa nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(105, 'https://cdn.tgdd.vn/Products/Images/8790/305671/bhx/canh-ga-giua-nhap-khau-dong-lanh-500g-9-11-mieng-202304050828341487_300x300.jpg', 'Cánh gà giữa nhập khẩu 500g, bột chiên giòn Meizan 150g', 84500, 0, 84500, 'túi', '', 'Cánh gà giữa nhập khẩu 500g & bột chiên giòn Meizan 150g kết hợp tạo nên món cánh gà chiên giòn thơm ngon, giòn rụm hấp dẫn. Cánh giữa gà nhập khẩu tươi ngon, nhiều thịt, giàu dinh dưỡng cùng bột chiên Meizan sử dụng dễ dàng, an toàn cho sức khỏe.\r\n', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1);
INSERT INTO `product` (`id`, `thumbnail`, `name`, `reg_price`, `discount_percent`, `discount_price`, `unit`, `canonical`, `description`, `created_at`, `updated_at`, `deleted`, `rating`, `category_id`, `brand_id`) VALUES
(106, 'https://cdn.tgdd.vn/Products/Images/12718/308127/bhx/vit-nau-chao-300g-202306131643068316_300x300.jpg', 'Vịt nấu chao 300g', 49000, 5, 46550, 'khay', '300g', 'Vịt nấu chao khay 300g là thực phẩm sơ chế sẵn vô cùng tiện dụng, đến từ thương hiệu uy tín có tiếng. Thịt vịt chất lượng, sốt chao đậm đà bắt vị, cho món ăn ngon nhanh chóng tại nhà, đảm chảo đầy đủ chất dinh dưỡng', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(107, 'https://cdn.tgdd.vn/Products/Images/12718/310990/bhx/lau-ga-la-giang-khay-500g-202308051600231776_300x300.jpg', 'Lẩu gà lá giang 500g', 93500, 9, 85000, 'khay', '500g', 'Lẩu gà lá giang tươi, chất lượng, bao gồm thịt gà, lá giang, trứng gà non,... có thể dùng để chế biến thành lẩu, canh, súp, kho hoặc các món ăn thơm ngon khác. Lẩu gà sơ chế sẵn tiện lợi, được nhiều chị em nội trợ tin tưởng lựa chọn.', '2023-11-28 12:59:36', NULL, 0, NULL, 3, 1),
(108, 'https://cdn.tgdd.vn/Products/Images/8790/305766/bhx/uc-ga-phi-le-co-da-cp-1kg-2-4-mieng-202308171354378371_300x300.jpg', 'Ức gà phi lê có da C.P 1kg', 98000, 17, 81000, 'túi', '1kg', 'Thịt heo, thịt gà là nguyên liệu quen thuộc trong mỗi bữa ăn của gia đình. Combo Ức Gà Phi Lê Có Da 1KG & xương que heo đông lạnh 500g có thể chế biến đa dạng với nhiều hình thức như chiên, kho, nấu súp,... cung cấp năng lượng và chất dinh dưỡng cho cơ thể. ', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(109, 'https://cdn.tgdd.vn/Products/Images/8790/239600/bhx/uc-ga-tuoi-phi-le-cp-500g-1-3-mieng-202308171335000630_300x300.jpg', 'Ức gà tươi phi lê C.P 500g', 53000, 0, 53000, 'khay', '500g', '', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(110, 'https://cdn.tgdd.vn/Products/Images/8790/318596/bhx/uc-ga-tuoi-phi-le-cp-500g-1-3-mieng-202311111017507281.jpg', '2 hộp Ức gà tươi phi lê C.P 500g', 106000, 10, 95500, 'khay', '', 'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(111, 'https://cdn.tgdd.vn/Products/Images/8790/226870/bhx/canh-ga-cp-500g-3-5-canh-202308171327033343_300x300.jpg', 'Cánh gà C.P 500g', 57000, 0, 57000, 'khay', '500g', '', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(112, 'https://cdn.tgdd.vn/Products/Images/8790/239604/bhx/dui-canh-ga-tuoi-cp-500g-6-8-dui-202308171336283644_300x300.jpg', 'Đùi cánh gà tươi C.P 500g', 47500, 0, 47500, 'khay', '500g', '', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(113, 'https://cdn.tgdd.vn/Products/Images/8790/226883/bhx/ma-dui-ga-cp-500g-3-5-cai-202308171329289195_300x300.jpg', 'Má đùi gà C.P 500g', 39500, 0, 39500, 'khay', '500g', 'Combo Má Đùi Gà CP 500G & xương que heo đông lạnh 500g là sản phẩm thích hợp cho mọi gia đình. Thịt gà, thịt heo là những nguyên liệu không thể thiếu trong mỗi bữa ăn, có thể chiên, kho, nấu súp,... giúp bữa ăn đa dạng và cung cấp đầy đủ dinh dưỡng cho cơ thể', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(114, 'https://cdn.tgdd.vn/Products/Images/8790/318598/bhx/dui-toi-ga-cp-500g-4-6-dui-202311111020113445.jpg', '2 hộp Đùi tỏi gà C.P 500g', 116000, 10, 104500, 'khay', '', '2 hộp Đùi tỏi gà CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon, xuất xứ rõ ràng. Đùi tỏi gà là một một nguyên liệu thích hợp để nấu món gà rán, cơm đùi gà quay tiêu hay gà chiên nước mắm,... Có thể dùng điện thoại quét code QR trên sản phẩm để kiểm tra nguồn góc.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(115, 'https://cdn.tgdd.vn/Products/Images/8790/226876/bhx/dui-toi-ga-cp-500g-4-6-dui-202308171328113514_300x300.jpg', 'Đùi tỏi gà C.P 500g', 58000, 0, 58000, 'khay', '500g', 'Combo Đùi Tỏi Gà CP 500G & xương que heo đông lạnh 500g là nguyên liệu cần thiết cho mọi bữa ăn. Thịt gà, thịt heo cung cấp nhiều chất dinh dưỡng cho cơ thể. Có thể chế biến thịt theo nhiều cách như chiên, kho, nấu súp,.. giúp bữa ăn thêm đa dạng.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(116, 'https://cdn.tgdd.vn/Products/Images/8790/226948/bhx/dui-ga-goc-tu-cp-500g-1-3-mieng-202308171331086977_300x300.jpg', 'Đùi gà góc tư C.P 500g', 44000, 0, 44000, 'khay', '500g', 'Thịt đùi heo CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt đùi heo chủ yêu là phần nạc nên rất phù hợp cho người có chế độ ăn kiêng, giảm cân giữ dáng. Thịt heo có thể luộc, xào, chiên hoặc kho tuỳ thích. Quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(117, 'https://cdn.tgdd.vn/Products/Images/8790/239602/bhx/long-ga-cp-500g-202309231802446414_300x300.jpg', 'Lòng gà C.P 500g', 42500, 0, 42500, 'khay', '500g', 'Lòng gà được sản xuất trên dây chuyền khép kín, an toàn vệ sinh thực phẩm. Lòng gà tươi sạch C.P khay 500g gồm gan, tim, mề là bộ phận ngon và nhiều chất dinh dưỡng của con gà. Sản phẩm có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(118, 'https://cdn.tgdd.vn/Products/Images/8790/239601/bhx/me-ga-tuoi-cp-500g-202309231759558030_300x300.jpg', 'Mề gà tươi C.P 500g', 50500, 0, 50500, 'khay', '500g', 'Lòng gà được sản xuất trên dây chuyền khép kín, an toàn vệ sinh thực phẩm. Lòng gà tươi sạch C.P khay 500g gồm gan, tim, mề là bộ phận ngon và nhiều chất dinh dưỡng của con gà. Sản phẩm có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(119, 'https://cdn.tgdd.vn/Products/Images/8790/226950/bhx/chan-ga-cp-500g-10-12-cai-202309231751272260_300x300.jpg', 'Chân gà C.P 500g', 38000, 0, 38000, 'khay', '500g', 'Chân giò heo trước CP đạt các tiêu chuẩn về an toàn toàn thực phẩm. Giò heo (có móng hoặc không) săn chắc, thịt có sự kết hợp với gân mỡ nên ăn béo ngậy và thơm, thích hợp để hầm canh, nấu các món nước,... Có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(120, 'https://cdn.tgdd.vn/Products/Images/8790/270860/bhx/xuong-ga-cp-1kg-202306131639186508_300x300.jpg', 'Xương gà C.P 1kg', 31000, 13, 27000, 'gói', '1kg', '', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(121, 'https://cdn.tgdd.vn/Products/Images/8790/286856/bhx/ga-ta-nguyen-con-cp-goi-11kg-15kg-con-202208251429276036_300x300.jpg', 'Gà ta C.P từ 1.3kg/con', 145000, 0, 145000, 'túi 1.3kg', '1.3kg', 'Trứng gà ta Nguyễn Hồ hộp 6 quả có thành phần trứng gà ta 100%, nuôi tại trang trại, đạt những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo chất lượng. Trứng tròn, đều và có thể luộc chín ăn trực tiếp hoặc chế biến thành một số món ăn khác như: thịt kho trứng, cơm chiên trứng,...', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(122, 'https://cdn.tgdd.vn/Products/Images/8790/303471/bhx/vit-nua-con-cp-11kg-14kg-202304060831362436_300x300.jpg', 'Vịt nửa con C.P 1.2kg', 119000, 0, 119000, 'túi 1.2kg', '1.2kg', 'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(123, 'https://cdn.tgdd.vn/Products/Images/8790/305707/bhx/sun-uc-ga-cp-500g-202306161421350110_300x300.jpg', 'Sụn ức gà C.P 500g', 59000, 0, 59000, 'khay', '500g', 'Sụn gà 500g được đóng gói và bảo quản theo những tiêu chuẩn nghiêm ngặt về vệ sinh và an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon của thực phẩm, xuất xứ rõ ràng. Sụn gà ăn có độ sựt, giòn còn thịt bám trên sụn thường dùng để chế biến món sụn gà lăn bột chiên giòn.', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(124, 'https://cdn.tgdd.vn/Products/Images/8790/239603/bhx/dui-ga-thao-khop-cp-500g-1-3-dui-202308171333518792_300x300.jpg', 'Đùi gà tháo khớp C.P 500g', 44000, 0, 44000, 'khay', '500g', 'Thịt đùi heo CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt đùi heo chủ yêu là phần nạc nên rất phù hợp cho người có chế độ ăn kiêng, giảm cân giữ dáng. Thịt heo có thể luộc, xào, chiên hoặc kho tuỳ thích. Quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc', '2023-11-28 13:58:24', NULL, 0, NULL, 3, 2),
(125, 'https://cdn.tgdd.vn/Products/Images/12718/315079/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nhe-250g-202310031426492232_300x300.jpg', 'Chân gà rút xương xốt Thái 250g vị cay nhẹ ', 59000, 19, 48000, 'hộp', '250g', 'Chân gà rút xương xốt Thái vị cay nhẹ hộp 250g là một món ăn vặt thơm ngon, giàu dinh dưỡng. Chân gà đã được rút xương sẵn, tiện lợi, vị cay nhẹ phù hợp với mọi người. Sản phẩm đảm bảo từ khâu sơ chế đến đóng gói, cam kết đến tay khách hàng các sản phẩm chất lượng, thơm ngon nhất.', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7),
(126, 'https://cdn.tgdd.vn/Products/Images/12718/314979/bhx/chan-ga-rut-xuong-sa-tac-hop-250g-202310031406003198_300x300.jpg', 'Chân gà rút xương sả tắc 250g', 58000, 22, 45000, 'hộp', '250g', 'Chân gà rút xương sả tắc là một món ăn vặt được nhiều người yêu thích. Chân gà được rút xương sẵn, sơ chế sạch sẽ, tẩm ướp đậm đà, chân gà sả tắc chua và cay nhẹ, thích hợp để nhâm nhi cùng gia đình, bạn bè,...', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7),
(127, 'https://cdn.tgdd.vn/Products/Images/12718/315091/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-300g-202310031420197794_300x300.jpg', 'Chân gà rút xương xốt Thái 300g vị cay nồng', 69000, 18, 56500, 'hộp', '300g', 'Chân gà rút xương xốt Thái vị cay nồng 300g là một món ăn vặt thơm ngon, giàu dinh dưỡng. Chân gà đã được rút xương sẵn, tiện lợi, vị cay nồng phù hợp với người thích ăn cay. Sản phẩm đảm bảo từ khâu sơ chế đến đóng gói, cam kết đến tay khách hàng các sản phẩm chất lượng, thơm ngon nhất.', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7),
(128, 'https://cdn.tgdd.vn/Products/Images/12718/315094/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-450g-202310031452076543_300x300.jpg', 'Chân gà rút xương xốt Thái 450g vị cay nồng', 85000, 16, 71000, 'hộp', '450g', 'Chân gà rút xương xốt Thái vị cay nồng 450g là một món ăn vặt thơm ngon, giàu dinh dưỡng. Chân gà đã được rút xương sẵn, tiện lợi, vị cay nồng phù hợp với người thích ăn cay. Sản phẩm đảm bảo từ khâu sơ chế đến đóng gói, cam kết đến tay khách hàng các sản phẩm chất lượng, thơm ngon nhất.', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7),
(129, 'https://cdn.tgdd.vn/Products/Images/12718/315089/bhx/chan-ga-rut-xuong-xot-thai-vi-cay-nong-250g-202310031422596595_300x300.jpg', 'Chân gà rút xương xốt Thái 250g vị cay nồng', 59000, 19, 48000, 'hộp', '250g', 'Chân gà rút xương xốt Thái vị cay nồng 250g là một món ăn vặt thơm ngon, giàu dinh dưỡng. Chân gà đã được rút xương sẵn, tiện lợi, vị cay nồng phù hợp với người thích ăn cay. Sản phẩm đảm bảo từ khâu sơ chế đến đóng gói, cam kết đến tay khách hàng các sản phẩm chất lượng, thơm ngon nhất.', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7),
(130, 'https://cdn.tgdd.vn/Products/Images/12718/314980/bhx/chan-ga-rut-xuong-sa-tac-hop-300g-202310310919371670_300x300.jpg', 'Chân gà rút xương sả tắc hộp 300g', 65000, 17, 54000, 'hộp', '300g', 'Chân gà sả tắc chua chua, cay cay không chỉ là một món ăn vặt hấp dẫn mọi lứa tuổi mà còn chứa nhiều dinh dưỡng tốt cho sức khỏe: Giúp hỗ trợ chuyển hóa chất béo, giảm cân hiệu quả, hỗ trợ sản sinh tế bào mới,...', '2023-11-28 14:06:18', NULL, 0, NULL, 3, 7);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1285;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

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
