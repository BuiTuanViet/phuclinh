-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2022 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `optuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `cate_getfly` int(8) DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `title`, `slug`, `parent`, `cate_getfly`, `template`, `icon`, `description`, `image`, `post_type`, `is_hide`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tin tức', 'tin-tuc', 0, NULL, 'default', NULL, NULL, NULL, 'post', NULL, NULL, NULL, NULL),
(2, 'Dự án', 'du-an', 0, NULL, 'default', NULL, NULL, NULL, 'post', NULL, NULL, NULL, NULL),
(3, 'Bộ sưu tập', 'bo-suu-tap', 0, NULL, 'default', NULL, NULL, NULL, 'post', NULL, NULL, NULL, NULL),
(4, 'Khuyến mãi', 'khuyen-mai', 0, NULL, 'default', NULL, NULL, NULL, 'post', NULL, NULL, NULL, NULL),
(5, 'Tấm nhựa PVC vân đá', 'tam-nhua-pvc-van-da', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z311058767992606203d80cf81d21ac0ded0a22f0e2066-9230(1).jpg', 'product', NULL, NULL, '2022-10-09 20:45:20', NULL),
(6, 'Tấm ốp tường đa năng', 'tam-op-tuong-da-nang', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587680513a05dbf92ca940b51e68e5ed3f952e237-4677.jpg', 'product', NULL, NULL, '2022-10-09 20:45:28', NULL),
(7, 'Lam Sóng nhựa vân gỗ', 'lam-song-nhua-van-go', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z31105876846696dabf8549a2019ebb3ca1ad91d40d6fe-7422.jpg', 'product', NULL, NULL, '2022-10-09 20:45:40', NULL),
(8, '150x10x3000mm', '150x10x3000mm', 7, NULL, 'default', NULL, NULL, '/library/images/sanpham/z311058768679382d407376e49de4b1ea524a0f9f4994f-9520.jpg', 'product', NULL, NULL, '2022-10-09 20:45:50', NULL),
(9, '160x15x2900mm', '160x15x2900mm', 7, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587690575dfdab95dd1ef03556301810b5099b7d9-5961.jpg', 'product', NULL, NULL, '2022-10-09 20:45:57', NULL),
(10, '195x14x3000mm', '195x14x3000mm', 7, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587704999079954bb24131b0e47f0a127750352a5-1775.jpg', 'product', NULL, NULL, '2022-10-09 20:46:06', NULL),
(11, 'Sàn nhựa ngoài trời', 'san-nhua-ngoai-troi', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587690575dfdab95dd1ef03556301810b5099b7d9-5961.jpg', 'product', NULL, NULL, '2022-10-09 20:46:14', NULL),
(12, 'Tấm ốp ngoài trời', 'tam-op-ngoai-troi', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z2938482101095fe6a33576f9e32b3dd0ad713b0d4f715-8023.jpg', 'product', NULL, NULL, '2022-10-09 20:46:21', NULL),
(13, 'Vân 3D', 'van-3d', 12, NULL, 'default', NULL, NULL, '/library/images/sanpham/z31210003400573e8555aded3635e76e742f0105e94af4-7064.jpg', 'product', NULL, NULL, '2022-10-09 20:46:31', NULL),
(14, 'Vân 2D', 'van-2d', 12, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587680513a05dbf92ca940b51e68e5ed3f952e237-4677.jpg', 'product', NULL, NULL, '2022-10-09 20:46:40', NULL),
(15, 'Tấm ván nhựa - Foarm', 'tam-van-nhua-foarm', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587707640585539229f7d071b62477619d8735c28-7850.jpg', 'product', NULL, NULL, '2022-10-09 20:46:47', NULL),
(16, 'Phụ Kiện', 'phu-kien', 0, NULL, 'default', NULL, NULL, '/library/images/sanpham/z3110587680513a05dbf92ca940b51e68e5ed3f952e237-4677.jpg', 'product', NULL, NULL, '2022-10-09 20:46:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `category_post_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `show_breadcrum` tinyint(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_post`
--

INSERT INTO `category_post` (`category_post_id`, `category_id`, `post_id`, `show_breadcrum`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 9, NULL, NULL, NULL, NULL),
(2, 1, 10, NULL, NULL, NULL, NULL),
(3, 1, 11, NULL, NULL, NULL, NULL),
(4, 5, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(5, 6, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(6, 7, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(7, 11, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(8, 12, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(9, 15, 12, NULL, '2022-10-09 12:39:49', NULL, '2022-10-09 12:39:49'),
(10, 5, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(11, 6, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(12, 7, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(13, 11, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(14, 12, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(15, 15, 12, NULL, '2022-10-09 12:40:04', NULL, '2022-10-09 12:40:04'),
(16, 5, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(17, 6, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(18, 7, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(19, 11, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(20, 12, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(21, 15, 12, NULL, '2022-10-09 16:54:59', NULL, '2022-10-09 16:54:59'),
(22, 5, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(23, 6, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(24, 7, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(25, 11, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(26, 12, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(27, 15, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(28, 16, 17, NULL, '2022-10-09 16:40:00', NULL, '2022-10-09 16:40:00'),
(29, 5, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(30, 6, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(31, 7, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(32, 11, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(33, 12, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(34, 15, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(35, 16, 18, NULL, '2022-10-09 16:39:52', NULL, '2022-10-09 16:39:52'),
(36, 5, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(37, 6, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(38, 7, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(39, 11, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(40, 12, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(41, 15, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(42, 16, 18, NULL, '2022-10-09 16:40:16', NULL, '2022-10-09 16:40:16'),
(43, 5, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(44, 6, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(45, 7, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(46, 11, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(47, 12, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(48, 15, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(49, 16, 17, NULL, '2022-10-09 16:54:52', NULL, '2022-10-09 16:54:52'),
(50, 5, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(51, 6, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(52, 7, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(53, 11, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(54, 12, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(55, 15, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(56, 16, 18, NULL, '2022-10-09 16:55:18', NULL, '2022-10-09 16:55:18'),
(57, 5, 19, NULL, NULL, NULL, NULL),
(58, 6, 19, NULL, NULL, NULL, NULL),
(59, 7, 19, NULL, NULL, NULL, NULL),
(60, 11, 19, NULL, NULL, NULL, NULL),
(61, 12, 19, NULL, NULL, NULL, NULL),
(62, 15, 19, NULL, NULL, NULL, NULL),
(63, 16, 19, NULL, NULL, NULL, NULL),
(64, 5, 20, NULL, NULL, NULL, NULL),
(65, 6, 20, NULL, NULL, NULL, NULL),
(66, 7, 20, NULL, NULL, NULL, NULL),
(67, 11, 20, NULL, NULL, NULL, NULL),
(68, 12, 20, NULL, NULL, NULL, NULL),
(69, 15, 20, NULL, NULL, NULL, NULL),
(70, 16, 20, NULL, NULL, NULL, NULL),
(71, 5, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(72, 6, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(73, 7, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(74, 11, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(75, 12, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(76, 15, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(77, 16, 21, NULL, '2022-10-09 16:44:44', NULL, '2022-10-09 16:44:44'),
(78, 5, 21, NULL, NULL, NULL, NULL),
(79, 6, 21, NULL, NULL, NULL, NULL),
(80, 7, 21, NULL, NULL, NULL, NULL),
(81, 11, 21, NULL, NULL, NULL, NULL),
(82, 12, 21, NULL, NULL, NULL, NULL),
(83, 15, 21, NULL, NULL, NULL, NULL),
(84, 16, 21, NULL, NULL, NULL, NULL),
(85, 5, 17, NULL, NULL, NULL, NULL),
(86, 6, 17, NULL, NULL, NULL, NULL),
(87, 7, 17, NULL, NULL, NULL, NULL),
(88, 11, 17, NULL, NULL, NULL, NULL),
(89, 12, 17, NULL, NULL, NULL, NULL),
(90, 15, 17, NULL, NULL, NULL, NULL),
(91, 16, 17, NULL, NULL, NULL, NULL),
(92, 5, 12, NULL, NULL, NULL, NULL),
(93, 6, 12, NULL, NULL, NULL, NULL),
(94, 7, 12, NULL, NULL, NULL, NULL),
(95, 11, 12, NULL, NULL, NULL, NULL),
(96, 12, 12, NULL, NULL, NULL, NULL),
(97, 15, 12, NULL, NULL, NULL, NULL),
(98, 5, 18, NULL, NULL, NULL, NULL),
(99, 6, 18, NULL, NULL, NULL, NULL),
(100, 7, 18, NULL, NULL, NULL, NULL),
(101, 11, 18, NULL, NULL, NULL, NULL),
(102, 12, 18, NULL, NULL, NULL, NULL),
(103, 15, 18, NULL, NULL, NULL, NULL),
(104, 16, 18, NULL, NULL, NULL, NULL),
(105, 5, 22, NULL, NULL, NULL, NULL),
(106, 6, 22, NULL, NULL, NULL, NULL),
(107, 7, 22, NULL, NULL, NULL, NULL),
(108, 8, 22, NULL, NULL, NULL, NULL),
(109, 9, 22, NULL, NULL, NULL, NULL),
(110, 10, 22, NULL, NULL, NULL, NULL),
(111, 11, 22, NULL, NULL, NULL, NULL),
(112, 12, 22, NULL, NULL, NULL, NULL),
(113, 13, 22, NULL, NULL, NULL, NULL),
(114, 14, 22, NULL, NULL, NULL, NULL),
(115, 15, 22, NULL, NULL, NULL, NULL),
(116, 16, 22, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_save_uid`
--

CREATE TABLE `facebook_save_uid` (
  `facebook_save_uid_id` int(11) NOT NULL,
  `uid_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facebook_setting`
--

CREATE TABLE `facebook_setting` (
  `facebook_id` int(11) NOT NULL,
  `accesstoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_minimum` int(11) DEFAULT NULL,
  `comment_minimum` int(11) DEFAULT NULL,
  `groups` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `face_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `filter`
--

CREATE TABLE `filter` (
  `filter_id` int(11) NOT NULL,
  `name_filter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_filter_id` int(11) NOT NULL,
  `theme_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `filter`
--

INSERT INTO `filter` (`filter_id`, `name_filter`, `group_filter_id`, `theme_code`, `user_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dưới 500.000 đ', 1, NULL, NULL, NULL, NULL, NULL),
(2, '500.000 - 1.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(3, '1.000.000 - 2.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(4, '2.000.000 - 5.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(5, '≥ 5.000.000đ', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Bayshore Pharmaceuticals LLC', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(7, 'Biosense - Hàn Quốc', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(8, 'Botania', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(9, 'Care Line Australia Pty Ltd', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(10, 'Cơ sở SX Đông dược Đông Hải', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(11, 'Công ty Cổ phần Capital', 2, NULL, NULL, NULL, '2022-04-09 09:41:23', '2022-04-09 09:41:23'),
(12, 'Default Sorting', 2, NULL, NULL, NULL, NULL, NULL),
(13, 'Popular', 2, NULL, NULL, NULL, NULL, NULL),
(14, 'Latest', 2, NULL, NULL, NULL, NULL, NULL),
(15, 'Average Price', 2, NULL, NULL, NULL, NULL, NULL),
(16, 'High Price', 2, NULL, NULL, NULL, NULL, NULL),
(17, 'Low Price', 2, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_filter`
--

CREATE TABLE `group_filter` (
  `group_filter_id` int(11) NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa. 1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `group_filter`
--

INSERT INTO `group_filter` (`group_filter_id`, `group_name`, `theme_code`, `user_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Giá sản phẩm', NULL, NULL, NULL, NULL, NULL),
(2, 'Loại sản phẩm', NULL, NULL, NULL, '2022-04-09 09:41:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_mail`
--

CREATE TABLE `group_mail` (
  `group_mail_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `group_mail`
--

INSERT INTO `group_mail` (`group_mail_id`, `name`, `description`, `updated_at`, `deleted_at`) VALUES
(1, 'Test', 'ABC', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `infor_id` int(11) NOT NULL,
  `slug_type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`infor_id`, `slug_type_input`, `content`, `updated_at`, `deleted_at`) VALUES
(1, 'ten-cong-ty', 'Ốp tường sài gòn', NULL, NULL),
(2, 'logo', '/library/images/fulllogotransparentnobuffer-8835.png', '2022-10-09 10:12:38', NULL),
(3, 'favicon', '/library/images/fulllogotransparentnobuffer-8835.png', '2022-10-09 10:12:38', NULL),
(4, 'hotline', '0981627248', NULL, NULL),
(5, 'nhung-fanpage', '<iframe src=\"https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FOnsportchannel&tabs&width=340&height=130&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=475816949623557\" width=\"340\" height=\"130\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\"></iframe>', '2022-10-09 21:30:03', NULL),
(6, 'nhung-ban-do', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!\r\n            1d3723.8977453149246!2d105.83245751424809!3d21.036777085994046!\r\n            2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!\r\n            1s0x3135aba15ec15d17%3A0x620e85c2cfe14d4c!2zTMSDbmcgSOG7kyBDaMOtIE1pbmg!\r\n            5e0!3m2!1svi!2sus!4v1501056274257\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2022-10-09 21:26:44', NULL),
(7, 'zalo', '0981627248', NULL, NULL),
(8, 'messenger', '<script>\r\n        var chatbox = document.getElementById(\'fb-customer-chat\');\r\n        chatbox.setAttribute(\"page_id\", \"2286759921582349\");\r\n        chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n    </script>\r\n\r\n    <!-- Your SDK code -->\r\n    <script>\r\n        window.fbAsyncInit = function() {\r\n            FB.init({\r\n                xfbml            : true,\r\n                version          : \'v15.0\'\r\n            });\r\n        };\r\n\r\n        (function(d, s, id) {\r\n            var js, fjs = d.getElementsByTagName(s)[0];\r\n            if (d.getElementById(id)) return;\r\n            js = d.createElement(s); js.id = id;\r\n            js.src = \'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js\';\r\n            fjs.parentNode.insertBefore(js, fjs);\r\n        }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', '2022-10-12 15:39:14', NULL),
(9, 'coppy-right', '2021 Copyright Tên công ty. Design by Nina.vn', NULL, NULL),
(10, 'email', 'buituanviet1234@gmail.com', NULL, NULL),
(11, 'geo-tag', '<meta name=\"geo.region\" content=\"VN\" />\r\n<meta name=\"geo.placename\" content=\"Thành phố Hà Nội\" />\r\n<meta name=\"geo.position\" content=\"21.02945;105.854444\" />\r\n<meta name=\"ICBM\" content=\"21.02945, 105.854444\" />', '2022-10-12 11:52:55', NULL),
(12, 'link-map', 'https://www.google.com/maps?ll=21.036777,105.832458&z=16&t=m&hl=vi&gl=US&mapclient=embed&cid=7065731937148685644', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information_general`
--

CREATE TABLE `information_general` (
  `infor_id` int(11) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `input`
--

CREATE TABLE `input` (
  `input_id` int(11) NOT NULL,
  `type_input_slug` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `input`
--

INSERT INTO `input` (`input_id`, `type_input_slug`, `content`, `post_id`, `updated_at`, `deleted_at`, `cate_id`) VALUES
(1, 'link', NULL, 2, '2022-10-09 09:39:46', '2022-10-09 09:39:46', NULL),
(2, 'link', '#', 2, NULL, NULL, NULL),
(3, 'link', NULL, 3, NULL, NULL, NULL),
(4, 'anh-footer', '/library/images/MXH/w1-2835.png', 5, '2022-10-09 21:14:12', '2022-10-09 21:14:12', NULL),
(5, 'anh-footer', '/library/images/MXH/w2-1532.png', 6, NULL, NULL, NULL),
(6, 'anh-footer', '/library/images/MXH/w3-6400.png', 7, '2022-10-09 09:55:34', '2022-10-09 09:55:34', NULL),
(7, 'anh-footer', '/library/images/MXH/q4-1680.png', 8, '2022-10-09 21:14:39', '2022-10-09 21:14:39', NULL),
(8, 'anh-footer', '/library/images/MXH/w3-6400.png', 7, NULL, NULL, NULL),
(9, 'link', NULL, 5, NULL, NULL, NULL),
(10, 'anh-footer', '/library/images/MXH/w1-2835.png', 5, NULL, NULL, NULL),
(11, 'link', NULL, 8, NULL, NULL, NULL),
(12, 'anh-footer', '/library/images/MXH/w4-5685.png', 8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mail_config`
--

CREATE TABLE `mail_config` (
  `mail_config_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Tên hiển thị khi gửi',
  `email_send` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Email hiển thị khi gửi',
  `name_send` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tài khoản dùng để gửi mail',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mật khẩu khi gửi mail',
  `address_server` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Địa chỉ máy chủ khi gửi',
  `port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_receive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chữ ký gửi mail',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `method` tinyint(4) DEFAULT NULL COMMENT 'Phương thức thanh toán:\n0: SMTP\n1: API',
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nhà cung cấp',
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa.\n1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mail_config`
--

INSERT INTO `mail_config` (`mail_config_id`, `user_id`, `email_send`, `name_send`, `email`, `password`, `address_server`, `port`, `email_receive`, `sign`, `created_at`, `updated_at`, `method`, `supplier`, `api_key`, `driver`, `encryption`, `host`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-08 18:56:33', '2022-04-08 18:56:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members_facebook`
--

CREATE TABLE `members_facebook` (
  `member_id` int(11) NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`menu_id`, `title`, `slug`, `location`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'menu chính', 'menu-chinh', 'menu-chinh', NULL, NULL, NULL, NULL),
(6, 'Menu danh mục sản phẩm', 'menu-danh-muc-san-pham', 'side-left-menu', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_element`
--

CREATE TABLE `menu_element` (
  `menu_element_id` int(11) NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_level` int(11) DEFAULT NULL,
  `menu_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_element`
--

INSERT INTO `menu_element` (`menu_element_id`, `menu_slug`, `url`, `title_show`, `menu_level`, `menu_image`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(2, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(3, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(4, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(5, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(6, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(7, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(8, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 2, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(9, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(10, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(11, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-09-25 08:39:32', NULL, '2018-09-25 08:39:32'),
(21, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(22, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(23, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(24, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(25, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(26, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(27, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(28, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(29, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(30, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(31, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-09-25 08:40:19', NULL, '2018-09-25 08:40:19'),
(32, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(33, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(34, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(35, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(36, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(37, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(38, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(39, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(40, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(41, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(42, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:37:06', NULL, '2018-10-02 04:37:06'),
(93, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(94, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(95, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(96, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(97, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(98, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(99, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(100, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(101, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(102, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(103, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(104, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:37:38', NULL, '2018-10-02 04:37:38'),
(105, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(106, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(107, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(108, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(109, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(110, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(111, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(112, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(113, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(114, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(115, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(116, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:38:03', NULL, '2018-10-02 04:38:03'),
(117, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(118, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(119, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(120, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(121, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(122, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(123, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(124, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(125, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 2, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(126, 'menu-chinh', '/danh-muc/video', 'Video', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(127, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(128, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2018-10-02 04:38:27', NULL, '2018-10-02 04:38:27'),
(129, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(130, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(131, 'menu-chinh', '/cua-hang/san-pham-khuyen-mai', 'Sản phẩm khuyến mãi', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(132, 'menu-chinh', '/cua-hang/san-pham-moi', 'Sản phẩm mới', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(133, 'menu-chinh', '/cua-hang/san-pham-tieu-bieu', 'Sản phẩm tiêu biểu', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(134, 'menu-chinh', '/danh-muc/chuyen-trang', 'Chuyên trang', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(135, 'menu-chinh', '/danh-muc/lam-dep', 'Làm đẹp', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(136, 'menu-chinh', '/danh-muc/tinh-dau-organics', 'Tinh Dầu Organics', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(137, 'menu-chinh', '/danh-muc/y-khoa', 'Y khoa', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(138, 'menu-chinh', '/danh-muc/video', 'Video', 2, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(139, 'menu-chinh', '/trang/nha-thuoc-benh-vien', 'Nhà thuốc bệnh viên', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(140, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:14:34', NULL, '2022-04-08 19:14:34'),
(141, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(142, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(143, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(144, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(145, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:27:54', NULL, '2022-04-08 19:27:54'),
(146, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(147, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(148, 'menu-chinh', '/tinh-dau-huong-quyen-ru-dung-cho-tu-quan-ao', 'TINH DẦU HƯƠNG QUYẾN RŨ – DÙNG CHO TỦ QUẦN ÁO', 2, '/library/images/sanpham/q1.png', '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(149, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(150, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(151, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:29:00', NULL, '2022-04-08 19:29:00'),
(152, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(153, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(154, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(155, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(156, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:43:32', NULL, '2022-04-08 19:43:32'),
(157, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(158, 'menu-chinh', '/hot-deal', 'Sản phẩm', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(159, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(160, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(161, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-08 19:51:03', NULL, '2022-04-08 19:51:03'),
(162, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(163, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(164, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(165, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(166, 'menu-chinh', '/cart', 'Giỏ hàng', 1, NULL, '2022-04-11 21:40:19', NULL, '2022-04-11 21:40:19'),
(167, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-10-09 11:00:38', NULL, '2022-10-09 11:00:38'),
(168, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-10-09 11:00:38', NULL, '2022-10-09 11:00:38'),
(169, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-10-09 11:00:38', NULL, '2022-10-09 11:00:38'),
(170, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-10-09 11:00:38', NULL, '2022-10-09 11:00:38'),
(171, 'menu-chinh', NULL, 'Danh mục sản phẩm', 1, NULL, '2022-10-09 11:10:40', NULL, '2022-10-09 11:10:40'),
(172, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-10-09 11:10:40', NULL, '2022-10-09 11:10:40'),
(173, 'menu-chinh', '/cua-hang/san-pham', 'Sản phẩm', 1, NULL, '2022-10-09 11:10:40', NULL, '2022-10-09 11:10:40'),
(174, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-10-09 11:10:40', NULL, '2022-10-09 11:10:40'),
(175, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-10-09 11:10:40', NULL, '2022-10-09 11:10:40'),
(176, 'menu-chinh', '/', 'Trang chủ', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(177, 'menu-chinh', '/tin-tuc/gioi-thieu', 'Giới thiệu', 1, '/library/images/MXH/fulllogotransparent-5453.png', '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(178, 'menu-chinh', '/danh-muc/du-an', 'Dự án', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(179, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(180, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(181, 'menu-chinh', '/danh-muc/bo-suu-tap', 'Bộ sưu tập', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(182, 'menu-chinh', '/danh-muc/khuyen-mai', 'Khuyến mãi', 1, NULL, '2022-10-12 11:28:26', NULL, '2022-10-12 11:28:26'),
(183, 'menu-danh-muc-san-pham', '/cua-hang/tam-nhua-pvc-van-da', 'Tấm nhựa PVC vân đá', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(184, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-tuong-da-nang', 'Tấm ốp tường đa năng', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(185, 'menu-danh-muc-san-pham', '/cua-hang/lam-song-nhua-van-go', 'Lam Sóng nhựa vân gỗ', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(186, 'menu-danh-muc-san-pham', '/cua-hang/150x10x3000mm', '150x10x3000mm', 2, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(187, 'menu-danh-muc-san-pham', '/cua-hang/160x15x2900mm', '160x15x2900mm', 2, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(188, 'menu-danh-muc-san-pham', '/cua-hang/195x14x3000mm', '195x14x3000mm', 2, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(189, 'menu-danh-muc-san-pham', '/cua-hang/san-nhua-ngoai-troi', 'Sàn nhựa ngoài trời', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(190, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-ngoai-troi', 'Tấm ốp ngoài trời', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(191, 'menu-danh-muc-san-pham', '/cua-hang/van-3d', 'Vân 3D', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(192, 'menu-danh-muc-san-pham', '/cua-hang/van-2d', 'Vân 2D', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(193, 'menu-danh-muc-san-pham', '/cua-hang/tam-van-nhua-foarm', 'Tấm ván nhựa - Foarm', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(194, 'menu-danh-muc-san-pham', '/cua-hang/phu-kien', 'Phụ Kiện', 1, NULL, '2022-10-09 17:00:52', NULL, '2022-10-09 17:00:52'),
(195, 'menu-danh-muc-san-pham', '/cua-hang/tam-nhua-pvc-van-da', 'Tấm nhựa PVC vân đá', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(196, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-tuong-da-nang', 'Tấm ốp tường đa năng', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(197, 'menu-danh-muc-san-pham', '/cua-hang/lam-song-nhua-van-go', 'Lam Sóng nhựa vân gỗ', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(198, 'menu-danh-muc-san-pham', '/cua-hang/150x10x3000mm', '150x10x3000mm', 2, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(199, 'menu-danh-muc-san-pham', '/cua-hang/160x15x2900mm', '160x15x2900mm', 2, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(200, 'menu-danh-muc-san-pham', '/cua-hang/195x14x3000mm', '195x14x3000mm', 2, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(201, 'menu-danh-muc-san-pham', '/cua-hang/san-nhua-ngoai-troi', 'Sàn nhựa ngoài trời', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(202, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-ngoai-troi', 'Tấm ốp ngoài trời', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(203, 'menu-danh-muc-san-pham', '/cua-hang/van-3d', 'Vân 3D', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(204, 'menu-danh-muc-san-pham', '/cua-hang/van-2d', 'Vân 2D', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(205, 'menu-danh-muc-san-pham', '/cua-hang/tam-van-nhua-foarm', 'Tấm ván nhựa - Foarm', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(206, 'menu-danh-muc-san-pham', '/cua-hang/phu-kien', 'Phụ Kiện', 1, NULL, '2022-10-09 17:18:44', NULL, '2022-10-09 17:18:44'),
(207, 'menu-danh-muc-san-pham', '/cua-hang/tam-nhua-pvc-van-da', 'Tấm nhựa PVC vân đá', 1, NULL, NULL, NULL, NULL),
(208, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-tuong-da-nang', 'Tấm ốp tường đa năng', 1, NULL, NULL, NULL, NULL),
(209, 'menu-danh-muc-san-pham', '/cua-hang/lam-song-nhua-van-go', 'Lam Sóng nhựa vân gỗ', 1, NULL, NULL, NULL, NULL),
(210, 'menu-danh-muc-san-pham', '/cua-hang/150x10x3000mm', '150x10x3000mm', 2, NULL, NULL, NULL, NULL),
(211, 'menu-danh-muc-san-pham', '/cua-hang/160x15x2900mm', '160x15x2900mm', 2, NULL, NULL, NULL, NULL),
(212, 'menu-danh-muc-san-pham', '/cua-hang/195x14x3000mm', '195x14x3000mm', 2, NULL, NULL, NULL, NULL),
(213, 'menu-danh-muc-san-pham', '/cua-hang/san-nhua-ngoai-troi', 'Sàn nhựa ngoài trời', 1, NULL, NULL, NULL, NULL),
(214, 'menu-danh-muc-san-pham', '/cua-hang/tam-op-ngoai-troi', 'Tấm ốp ngoài trời', 1, NULL, NULL, NULL, NULL),
(215, 'menu-danh-muc-san-pham', '/cua-hang/van-2d', 'Vân 2D', 2, NULL, NULL, NULL, NULL),
(216, 'menu-danh-muc-san-pham', '/cua-hang/van-3d', 'Vân 3D', 2, NULL, NULL, NULL, NULL),
(217, 'menu-danh-muc-san-pham', '/cua-hang/tam-van-nhua-foarm', 'Tấm ván nhựa - Foarm', 1, NULL, NULL, NULL, NULL),
(218, 'menu-danh-muc-san-pham', '/cua-hang/phu-kien', 'Phụ Kiện', 1, NULL, NULL, NULL, NULL),
(219, 'menu-chinh', '/', 'Trang chủ', 1, NULL, NULL, NULL, NULL),
(220, 'menu-chinh', '/tin-tuc/gioi-thieu', 'Giới thiệu', 1, '/library/images/MXH/fulllogotransparent-5453.png', NULL, NULL, NULL),
(221, 'menu-chinh', '/danh-muc/du-an', 'Dự án', 1, NULL, NULL, NULL, NULL),
(222, 'menu-chinh', '/lien-he', 'Liên hệ', 1, NULL, NULL, NULL, NULL),
(223, 'menu-chinh', '/trang/doi-tac', 'Đối tác', 1, '/library/images/fulllogotransparentnobuffer-8835.png', NULL, NULL, NULL),
(224, 'menu-chinh', '/danh-muc/tin-tuc', 'Tin tức', 1, NULL, NULL, NULL, NULL),
(225, 'menu-chinh', '/danh-muc/bo-suu-tap', 'Bộ sưu tập', 1, NULL, NULL, NULL, NULL),
(226, 'menu-chinh', '/danh-muc/khuyen-mai', 'Khuyến mãi', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `notify_id` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`notify_id`, `content`, `URL`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bạn vừa có đơn hàng mới', 'http://nhathuoc365.local/admin/don-hang', 'Đơn hàng', 1, '2018-10-02 07:30:41', '2022-04-08 19:14:45', NULL),
(2, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:31:03', '2022-04-10 20:18:31', NULL),
(3, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:32:44', '2022-04-10 20:18:31', NULL),
(4, 'Bạn vừa có đơn hàng mới', 'http://restaurant.local/admin/don-hang', 'Đơn hàng', 1, '2022-04-10 09:49:59', '2022-04-10 20:18:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `code_sale_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `cost_ship` int(11) DEFAULT NULL,
  `cost_point` int(11) DEFAULT NULL,
  `cost_sale` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0. khởi tao đơn hàng\n1. đặt hàng thành công\n2. đã nhận đơn hàng\n3. đang vận chuyển\n4. đã giao hàng ',
  `ip_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_admin` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mail_customer` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `method_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_bank`
--

CREATE TABLE `order_bank` (
  `order_bank_id` int(11) NOT NULL,
  `name_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_bank`
--

INSERT INTO `order_bank` (`order_bank_id`, `name_bank`, `number_bank`, `manager_account`, `branch`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BIDV', '21210002232016', 'BUI TUAN VIET', 'Tay Ho', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_code_sale`
--

CREATE TABLE `order_code_sale` (
  `order_code_sale_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_sale` tinyint(4) DEFAULT NULL COMMENT '0: theo tiền, 1 theo %',
  `sale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `many_use` int(11) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(254) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_ship`
--

CREATE TABLE `order_ship` (
  `order_ship_id` int(11) NOT NULL,
  `method_ship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_ship`
--

INSERT INTO `order_ship` (`order_ship_id`, `method_ship`, `cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hỏa Tốc', '50000', NULL, NULL, NULL),
(2, 'Nhanh', '10000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visiable` tinyint(4) DEFAULT 0 COMMENT '0: ẩn, 1 hiện',
  `view` int(11) DEFAULT NULL,
  `category_string` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `product_list`, `post_type`, `visiable`, `view`, `category_string`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'OTG Chuyên Cung Cấp Các Vật Liệu Tấm Ốp Tường Đa Năng, Tấm PVC Vân Đá, Sàn Ngoài Trời, Tấm Ốp Tường Ngoài Trời,...', 'OTG Chuyên Cung Cấp Các Vật Liệu Tấm Ốp Tường Đa Năng, Tấm PVC Vân Đá, Sàn Ngoài Trời, Tấm Ốp Tường Ngoài Trời,...', NULL, 'default', NULL, 'otg-chuyen-cung-cap-cac-vat-lieu-tam-op-tuong-da-nang-tam-pvc-van-da-san-ngoai-troi-tam-op-tuong-ngoai-troi', NULL, NULL, NULL, NULL, 'slogan', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:32:55', NULL),
(2, 'Slide 1', NULL, NULL, 'default', NULL, 'slide-1', NULL, NULL, '/library/images/slider/san-4mm-banner-98660-1-33440.jpg', NULL, 'slide', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:39:46', NULL),
(3, 'slide-2', NULL, NULL, 'default', NULL, 'slide-2', NULL, NULL, '/library/images/slider/z3086313786820e0df13788af4d8f60a25d4cbcb90632f-17130.jpg', NULL, 'slide', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:40:11', NULL),
(4, 'Địa chỉ 1', NULL, '<p><strong>Trụ sở ch&iacute;nh - Kho</strong>: 221/5B Phan Huy &Iacute;ch - Phường 14 - G&ograve; Vấp - TP.HCM.&nbsp;<strong>Hotline</strong>: 0981 627 248</p>\r\n\r\n<p><strong>* Chi nh&aacute;nh Vũng T&agrave;u</strong>: Đường 30 th&aacute;ng 4,&nbsp;Phường Rạch Dừa,&nbsp;TP.Vũng T&agrave;u.</p>\r\n\r\n<p><strong>* Chi nh&aacute;nh Cần Thơ</strong>: Khu vực 4, Phường An Kh&aacute;nh, Quận Ninh Kiều, T.P Cần Thơ.</p>\r\n\r\n<p><strong>* Chi nh&aacute;nh ĐakNong</strong>: Nghĩa Th&agrave;nh, Gia Nghĩa, Tỉnh Đắk N&ocirc;ng.</p>\r\n\r\n<p><strong>Email</strong>: nguyenducnhat.7248@gmail.com</p>', 'default', NULL, 'dia-chi-1', NULL, NULL, NULL, NULL, 'dia-chi-footer', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:44:31', NULL),
(5, 'Facebook', NULL, NULL, 'default', NULL, 'facebook', NULL, NULL, '/library/images/MXH/q1-7035.png', NULL, 'mang-xa-hoi', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:14:12', NULL),
(6, 'Twiter', NULL, NULL, 'default', NULL, 'twiter', NULL, NULL, '/library/images/MXH/q2-5978.png', NULL, 'mang-xa-hoi', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:47:31', NULL),
(7, 'Skype', NULL, NULL, 'default', NULL, 'skype', NULL, NULL, '/library/images/MXH/q3-5641(1).png', NULL, 'mang-xa-hoi', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 09:55:34', NULL),
(8, 'Youtube', NULL, NULL, 'default', NULL, 'youtube', NULL, NULL, '/library/images/MXH/q4-1680.png', NULL, 'mang-xa-hoi', 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:14:39', NULL),
(9, 'Giới thiệu', NULL, '<p>- Ốp Tường S&agrave;i G&ograve;n l&agrave; kho chuy&ecirc;n cung cấp c&aacute;c vật liệu trang tr&iacute; nội thất ho&agrave;n thiện cao cấp, chất lượng. Với kinh nghiệm 5 năm trong ngh&agrave;nh ch&uacute;ng t&ocirc;i cam kết đem đến sự h&agrave;i l&ograve;ng cũng như h&agrave;ng chất lượng tốt nhất đến kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"Tên công ty\" src=\"http://optuongsaigon.vn/upload/elfinder/FullLogo_Transparent_NoBuffer.png\" /></p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực ph&aacute;t triển c&ocirc;ng ty để đem tới cho kh&aacute;ch h&agrave;ng những sản phẩm tốt nhất thị trường. Hiện ch&uacute;ng t&ocirc;i đang cố gắng mở kho tr&ecirc;n to&agrave;n quốc để phục vụ kh&aacute;ch h&agrave;ng thuận tiện hơn, đem những sản phẩm tốt nhất tới tay kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>* Chất lượng v&agrave; tiết kiệm gi&aacute; tiền l&agrave; thước đo cho sự th&agrave;nh c&ocirc;ng của c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</p>', 'default', NULL, 'gioi-thieu', NULL, NULL, '/library/images/MXH/fulllogotransparent-5453.png', '', 'post', 0, 3, 'Tin tức', NULL, NULL, NULL, NULL, '2022-10-12 14:04:33', NULL),
(10, 'SO SÁNH SÀN GỖ NHỰA NGOÀI TRỜI VÀ SÀN GỖ TỰ NHIÊN', NULL, '<p>S&agrave;n gỗ c&ocirc;ng nghiệp v&agrave; s&agrave;n nhựa đều l&agrave; c&aacute;c d&ograve;ng sản phẩm l&aacute;t nền phổ biến tr&ecirc;n thị trường hiện nay.&nbsp;Cả 2 loại s&agrave;n n&agrave;y đều c&oacute; độ bền cao, gi&aacute; cả phải chăng cũng như dễ d&agrave;ng trong việc sử dụng, bảo dưỡngn. Tuy nhi&ecirc;n, n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp hay s&agrave;n nhựa, lại l&agrave; một c&acirc;u hỏi kh&ocirc;ng dễ d&agrave;ng để trả lời ch&uacute;t n&agrave;o. Để đưa ra được quyết định lựa chọn s&agrave;n nhựa hay s&agrave;n gỗ c&ocirc;ng nghiệp, trước hết ch&uacute;ng ta sẽ so s&aacute;nh ch&uacute;ng với c&aacute;c kh&iacute;a cạnh: t&iacute;nh thẩm mỹ chất lượng, độ an to&agrave;n, khả năng thi c&ocirc;ng lắp đặt v&agrave; gi&aacute; th&agrave;nh của 2 loại sản phẩm n&agrave;y.<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So s&aacute;nh tổng quan giữa s&agrave;n gỗ c&ocirc;ng nghiệp v&agrave; s&agrave;n nhựa:<br />\r\n<img alt=\"\" src=\"https://sangorenhat.vn/images/ckeditor/images/1.%20tu%20van%20san%20go/so%20sanh%20san%20nhua%20va%20san%20go%20cong%20nghiep1.jpg\" /><br />\r\nĐể hiểu hơn chi tiết về cấu tạo, ph&acirc;n loại, giả cả của từng loại sản phẩm, ch&uacute;ng th&ocirc;i xin gửi qu&yacute; kh&aacute;ch h&agrave;ng những th&ocirc;ng tin chi tiết về từng chủng loại sản phẩm như sau:<br />\r\n<strong>I.&nbsp;<a href=\"https://sangorenhat.vn/tu-van-san-pham/134-san-go-cong-nghiep-tu-van-va-bao-gia.html\">S&agrave;n gỗ c&ocirc;ng nghiệp</a></strong><br />\r\nS&agrave;n gỗ c&ocirc;ng nghiệp l&agrave; loại vật liệu được sản xuất từ bột gỗ tự nhi&ecirc;n kết hợp với c&ocirc;ng nghệ &eacute;p n&eacute;n cao để tạo ra vật liệu gỗ HDF, sau đ&oacute; trải qua c&aacute;c qu&aacute; tr&igrave;nh: &eacute;p v&acirc;n, bề mặt, xẻ h&egrave;m, sơn cạnh sẽ tạo ra sản phẩm thanh gỗ ho&agrave;n chỉnh để d&ugrave;ng v&agrave;o việc l&aacute;t s&agrave;n<br />\r\n<strong>1. Cấu tạo&nbsp;<a href=\"https://sangorenhat.vn/tu-van-san-pham/134-san-go-cong-nghiep-tu-van-va-bao-gia.html\">S&agrave;n gỗ c&ocirc;ng nghiệp</a>:<br />\r\n<img alt=\"\" src=\"https://sangorenhat.vn/images/ckeditor/images/1.%20tu%20van%20san%20go/cau%20tao%20san%20go%20cn.jpg\" /></strong><br />\r\n- Lớp bề mặt b&ecirc;n tr&ecirc;n l&agrave; một lớp vật liệu trong suốt Melamine resins. Lớp bề mặt n&agrave;y c&oacute; c&ocirc;ng dụng l&agrave;m ổn định bề mặt v&aacute;n gỗ, song b&ecirc;n cạnh đ&oacute; lớp n&agrave;y c&ograve;n gi&uacute;p cho s&agrave;n gỗ c&oacute; khả năng chịu nước tốt, chống trầy xước cao, ngăn v&agrave; giữ cho lớp m&agrave;u kh&ocirc;ng bị phai m&agrave;u do sự x&acirc;m nhập của c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i.<br />\r\nỞ mỗi loại s&agrave;n gỗ th&igrave; chất lượng sẽ kh&aacute;c nhau v&agrave; được đo bằng chỉ số ti&ecirc;u chuẩn AC từ AC1 &ndash; AC5, c&aacute;c độ cứng ở mức cao hơn th&igrave; sẽ c&oacute; độ chống trầy xước tốt hơn, tuy nhi&ecirc;n đối với mức độ sử dụng b&igrave;nh thường trong c&ocirc;ng tr&igrave;nh d&acirc;n dụng th&igrave; chỉ cần độ cứng AC3 l&agrave; đ&atilde; đạt y&ecirc;u cầu<br />\r\n- Lớp m&agrave;u v&agrave; phim tạo v&acirc;n gỗ l&agrave; lớp m&agrave;u sắc v&agrave; v&acirc;n gỗ rất giống tự nhi&ecirc;n. Ng&agrave;y nay, tr&igrave;nh độ c&ocirc;ng nghệ ng&agrave;y c&agrave;ng ti&ecirc;n tiến, hiện đại, ch&uacute;ng ta đ&atilde; c&oacute; thể l&agrave;m ra những sản phẩm s&agrave;n gỗ c&ocirc;ng nghiệp c&oacute; v&acirc;n gỗ cũng như m&agrave;u sắc rất giống với những v&acirc;n gỗ của c&aacute;c loại c&acirc;y trong tự nhi&ecirc;n.<br />\r\n- Lớp cốt l&otilde;i HDF ở c&aacute;c loại s&agrave;n gỗ c&ocirc;ng nghiệp cao cấp c&oacute; lớp cốt HDF n&agrave;y&nbsp; sẽ được tạo th&agrave;nh từ 75 &ndash; 80% nguy&ecirc;n liệu l&agrave; gỗ tự nhi&ecirc;n, kết hợp c&ugrave;ng với c&aacute;c nguy&ecirc;n liệu phụ gia nhằm gi&uacute;p gia tăng độ cứng v&agrave; độ kết d&iacute;nh cho v&aacute;n gỗ.<br />\r\n- Lớp bề mặt b&ecirc;n dưới c&ugrave;ng l&agrave; lớp v&aacute;n gỗ được l&agrave;m từ nguy&ecirc;n liệu đặc biệt. C&ocirc;ng dụng ch&iacute;nh của lớp n&agrave;y l&agrave; gi&uacute;p ổn định bề mặt dưới của v&aacute;n gỗ, giả tối đa tiếng ồn ph&aacute;t ra trong qu&aacute; tr&igrave;nh sử dụng, b&ecirc;n cạnh đ&oacute; c&ograve;n được phủ th&ecirc;m một lớp chống ẩm v&agrave; hơi nước vi đ&acirc;y l&agrave; bề mặt tiếp x&uacute;c trực tiếp với nền nh&agrave;.<br />\r\n<strong>2. Ph&acirc;n loại&nbsp;<a href=\"https://sangorenhat.vn/tu-van-san-pham/134-san-go-cong-nghiep-tu-van-va-bao-gia.html\">S&agrave;n gỗ c&ocirc;ng nghiệp</a>:</strong><br />\r\n<strong><a href=\"https://sangorenhat.vn/tu-van-san-pham/134-san-go-cong-nghiep-tu-van-va-bao-gia.html\">S&agrave;n gỗ c&ocirc;ng nghiệp</a></strong>&nbsp;hiện được sản xuất tại rất nhiều nước, tuy nhi&ecirc;n c&oacute; thể ph&acirc;n chia th&agrave;nh 1 số d&ograve;ng sản phẩm dựa tr&ecirc;n nguồn gỗ xuất xứ v&agrave; đặc điểm chất lượng cũng như c&aacute;ch thức nhận biết như sau bao gồm:&nbsp;<strong><a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>,&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>,&nbsp;<a href=\"https://sangorenhat.vn/520-san-go-thai-lan.html\">s&agrave;n gỗ sản xuất tại Th&aacute;i Lan</a>,&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a></strong>. Cụ thể chi tiết từng loại như sau:<br />\r\n<br />\r\n<strong>2.1.&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a></strong><br />\r\n- Đặc điểm: L&agrave; s&agrave;n gỗ b&aacute;n chạy nhất trong 5 năm trở lại đ&acirc;y của thị trường s&agrave;n gỗ. Hiện nay ở miền bắc của Việt Nam đ&atilde; c&oacute; 4 nh&agrave; m&aacute;y sản xuất v&aacute;n s&agrave;n c&ocirc;ng nghiệp. Với ti&ecirc;u ch&iacute; người Việt dung hang Việt, chất lương tương đối cao, m&agrave;u sắc đẹp, gi&aacute; th&agrave;nh hợp l&yacute; cho mọi nh&agrave;.&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a>&nbsp;đ&aacute;p ứng tốt cho c&aacute;c ti&ecirc;u ch&iacute; chịu nước, chống mối mọt.&nbsp;<br />\r\n- C&aacute;ch nhận biết sản phẩm ch&iacute;nh h&atilde;ng: C&aacute;c d&ograve;ng sản phẩm&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a>&nbsp;thường in d&ograve;ng chữ Made in Vietnam tr&ecirc;n tấm v&aacute;n gỗ v&agrave; tr&ecirc;n vỏ hộp.&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a>&nbsp;thường kh&ocirc;ng c&oacute; h&agrave;ng nh&aacute;i, h&agrave;ng giả xuất xứ<br />\r\n- Ưu nhược điểm của&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a>:<br />\r\n+ Ưu điểm: Độ bền, độ chịu nước tốt đặc biệt l&agrave; loại cốt xanh,, h&igrave;nh thức đẹp, gi&aacute; cả phải chăng<br />\r\n+ Nhược điểm: Chủng loại chưa phong ph&uacute;<br />\r\n- Th&ocirc;ng tin chi tiết v&agrave; B&aacute;o gi&aacute; một số s&agrave;n gỗ th&ocirc;ng dụng, ti&ecirc;u biểu nhất của&nbsp;<a href=\"https://sangorenhat.vn/522-san-go-viet-nam.html\">s&agrave;n gỗ sản xuất tại Việt Nam</a>:<br />\r\n<strong><a href=\"https://sangorenhat.vn/1073-san-go-koller-8mm.html\">+ s&agrave;n gỗ Koller 8mm: 170.000 đ/m2 &gt;&gt; Chi tiết sản phẩm</a><br />\r\n<a href=\"https://sangorenhat.vn/1074-san-go-koller-12mm.html\">+ s&agrave;n gỗ Koller 12mm: 220.000 đ/m2 &gt;&gt; Chi tiết sản phẩm</a><br />\r\n<a href=\"https://sangorenhat.vn/949-san-go-greenfloor.html\">+ S&agrave;n gỗ Greenfloor 12mm cốt xanh: 320.000 đ/m2 &gt;&gt; Chi tiết sản phẩm<br />\r\n+ S&agrave;n gỗ Greenfloor 12mm cốt xanh xương c&aacute;: 350.000 đ/m2 &gt;&gt; Chi tiết sản phẩm</a></strong><br />\r\n(Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; vật tư chưa bao gồm nh&acirc;n c&ocirc;ng, xốp l&oacute;t, ph&agrave;o ch&acirc;n tường, nẹp cửa)<br />\r\n<br />\r\n<strong>2.3.&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>:</strong><br />\r\n- Đặc điểm: L&agrave; thương hiệu s&agrave;n gỗ đặc biệt l&agrave; c&oacute; bề mặt sần hoặc sần nhẹ chứ kh&ocirc;ng c&oacute; bề mặt trơn b&oacute;ng. Độ chịu nước thuộc h&agrave;ng si&ecirc;u việt l&agrave; một ưu điểm nổi bật của những loại&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>. Với ưu điểm n&agrave;y gi&uacute;p cho&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>&nbsp;trở n&ecirc;n bền bỉ hơn trong kh&iacute; hậu ẩm thấp của Việt Nam đ&acirc;y l&agrave; điểm cộng của s&agrave;n gỗ trong mắt người ti&ecirc;u d&ugrave;ng.<br />\r\n- C&aacute;c nhận biết sản phẩm ch&iacute;nh h&atilde;ng: C&aacute;c d&ograve;ng sản phẩm&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>&nbsp;ch&iacute;nh h&atilde;ng lu&ocirc;n được in d&ograve;ng chữ &ldquo; Made in Malaysia&rdquo; tr&ecirc;n tấm v&aacute;n gỗ v&agrave; tr&ecirc;n vỏ hộp. Một số d&ograve;ng&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>&nbsp;được sản xuất tại Trung Quốc, Việt Nam n&ecirc;n c&oacute; in d&ograve;ng chữ: The Mould Made in Malaysia, HDF Made in Malaysia, Malaysia Floring, Malaysia Technology, ...<br />\r\n- Ưu nhược điểm của&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>:<br />\r\n+ Ưu điểm: Độ bền, độ chịu nước &nbsp;rất tốt, h&igrave;nh thức đẹp<br />\r\n+ Nhược điểm: Gi&aacute; cao<br />\r\n- Th&ocirc;ng tin chi tiết v&agrave; b&aacute;o gi&aacute; thương hiệu nội bật nhất của&nbsp;<a href=\"https://sangorenhat.vn/519-san-go-malaysia.html\">s&agrave;n gỗ sản xuất tại Malaysia</a>:<br />\r\n<strong><a href=\"https://sangorenhat.vn/570-san-go-robina-8mm-ac4.html\">+ S&agrave;n gỗ Robina 8mm bản to: 300.000 đ/m2 &gt;&gt; Chi tiết sản phẩm</a><br />\r\n<a href=\"https://sangorenhat.vn/580-san-go-robina-12mm-ban-to.html\">​+ S&agrave;n gỗ Robina 12mm bản to: 420.000 đ/m2 &gt;&gt;Chi tiết sản phẩm</a><br />\r\n​<a href=\"https://sangorenhat.vn/581-san-go-robina-12mm-ban-nho.html\">+ S&agrave;n gỗ Robina 12mm nhỏ: 510.000 đ/m2 &gt;&gt; Chi tiết sản phẩm</a></strong><br />\r\n(Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; vật tư chưa bao gồm nh&acirc;n c&ocirc;ng, xốp l&oacute;t, ph&agrave;o ch&acirc;n tường, nẹp cửa)<br />\r\n<br />\r\n<strong>2.4.&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>:</strong><br />\r\n- Đặc điểm: L&agrave; thương hiệu s&agrave;n gỗ cao cấp được c&aacute;c chuy&ecirc;n gia thiết kế nội thất h&agrave;ng đầu đ&aacute;nh gi&aacute; rất cao về chất lượng cũng như mẫu m&atilde; của sản phẩm. Sản phẩm&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>&nbsp;c&oacute; kh&aacute; l&agrave; nhiều t&iacute;nh năng vượt trội như mẫu m&atilde; phong ph&uacute;, v&acirc;n gỗ đẹp r&otilde; n&eacute;t, khả năng chịu nước tốt, khả năng chống mối mọt, lớp cốt gỗ cứng cho ra khả nằng chống cong v&ecirc;nh do ảnh hưởng của thời tiết, &hellip;Ngo&agrave;i ra,&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>&nbsp;c&ograve;n rất th&acirc;n thiện với m&ocirc;i trường, an to&agrave;n cho sức khỏe.<br />\r\n- C&aacute;ch nhận biết sản phẩm ch&iacute;nh h&atilde;ng: C&aacute;c d&ograve;ng&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>&nbsp;lu&ocirc;n được in d&ograve;ng chữ Made in Germany, Made in Turkey, Madein EU, Made in Spain, Made in Switzerland, Made in Belgium, ... tr&ecirc;n tấm v&aacute;n gỗ v&agrave; tr&ecirc;n vỏ hộp. Một số d&ograve;ng&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>&nbsp;được sản xuất tại Trung Quốc, Việt Nam n&ecirc;n c&oacute; in d&ograve;ng chữ Germany Floring, Germany Technology, ...<br />\r\n- Ưu nhược điểm của&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>:<br />\r\n+ Ưu điểm: H&igrave;nh thức rất đẹp, chịu nước tốt<br />\r\n+ Nhược điểm: Gi&aacute; rất cao<br />\r\n- Th&ocirc;ng tin chi tiết v&agrave; b&aacute;o gi&aacute; thương hiệu th&ocirc;ng dụng, ti&ecirc;u biểu nhất của&nbsp;<a href=\"https://sangorenhat.vn/521-san-go-chau-au.html\">s&agrave;n gỗ sản xuất tại Ch&acirc;u &Acirc;u</a>:<br />\r\n<strong><a href=\"https://sangorenhat.vn/958-san-go-camsan-8m-hem-v.html\">​+ S&agrave;n gỗ&nbsp;Camsan&nbsp;8mm gi&aacute;: 350.000 đ/m2 &gt;&gt;Chi tiết sản phẩm</a><br />\r\n<a href=\"https://sangorenhat.vn/958-san-go-camsan-8m.html\">+ S&agrave;n gỗ&nbsp;Camsan 10mm gi&aacute;: 420.000 đ/m2 &gt;&gt;Chi tiết sản phẩm</a><br />\r\n<a href=\"https://sangorenhat.vn/1045-san-go-camsan-12mm.html\">+ S&agrave;n gỗ&nbsp;Camsan&nbsp;12mm gi&aacute;: 510.000 đ/m2 &gt;&gt;Chi tiết sản phẩm</a></strong><br />\r\n(Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; vật tư chưa bao gồm nh&acirc;n c&ocirc;ng, xốp l&oacute;t, ph&agrave;o ch&acirc;n tường, nẹp cửa)<br />\r\n<br />\r\n<strong>II. Tổng quan về&nbsp;<a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa</a></strong><br />\r\n<strong>S&agrave;n nhựa</strong>&nbsp;l&agrave; vật liệu ho&agrave;n thiện v&agrave; l&agrave; sản phẩm l&oacute;t s&agrave;n th&ocirc;ng minh, được sản xuất theo qui tr&igrave;nh th&acirc;n thiện m&ocirc;i trường. Cải tiến th&ocirc;ng qua những vật liệu truyền thống kh&aacute;c nhằm mang đến tiện &iacute;ch cho cuộc sống bận rộn v&agrave; gi&aacute; th&agrave;nh hấp dẫn nhất. Vật liệu n&agrave;y với ưu điểm nổi bật v&agrave; đ&aacute;p ứng cho mục đ&iacute;ch thương mại cao.&nbsp;<em>Vật liệu mới cho cuộc sống hiện đại</em><br />\r\n<strong>1.&nbsp;<a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ (s&agrave;n nhựa v&acirc;n gỗ)</a>&nbsp;c&oacute; cấu tạo cơ bản như sau:</strong><br />\r\n<img alt=\"\" src=\"https://sangorenhat.vn/images/ckeditor/images/1.%20tu%20van%20san%20go/cau%20tao%20san%20nhua.jpg\" /><br />\r\n&ndash; Lớp thư nhất (Bề mặt): Phủ cho bề mặt được cứng v&agrave; tăng độ căng bề mặt, bảo vệ sản phẩm kh&ocirc;ng bị b&aacute;m bẩn, dễ d&agrave;ng trong qu&aacute; tr&igrave;nh bảo quản v&agrave; sử dụng, đảm bảo độ bền cao của sản phẩm.<br />\r\n&ndash; Lớp thư 2 (Nhựa tổng hợp): C&oacute; c&ocirc;ng dụng chống lại m&agrave;i m&ograve;n, chống bị trơn trượt, chống bị nấm mốc, bảo vệ lớp in n&ecirc;n s&agrave;n kh&ocirc;ng bị mất đi v&acirc;n gỗ. Nhờ đ&oacute; m&agrave; gi&uacute;p cho sản phẩm c&oacute; độ bền tr&ecirc;n 25 năm<br />\r\n&ndash; Lớp thứ 3 (Tạo v&acirc;n tự nhi&ecirc;n): C&oacute; t&aacute;c dụng ch&iacute;nh l&agrave; tạo n&ecirc;n c&aacute;c v&acirc;n gỗ tinh tế với hầu hết c&aacute;c loại v&acirc;n của c&aacute;c dạng v&acirc;n gỗ tự nhi&ecirc;n.<br />\r\n&ndash; Lớp thứ 4 (Xốp nhựa): Được tạo n&ecirc;n từ 90% nhựa PVC trở l&ecirc;n&nbsp; n&ecirc;n t&iacute;nh năng của sản phẩm tập trung chủ yếu do lớp ch&iacute;nh tạo th&agrave;nh chống bị t&aacute;c động cong v&ecirc;nh khi nhiệt độ dao động, độ đ&agrave;n hồi tốt, chống ch&aacute;y lan, chịu được lực tốt.<br />\r\n&ndash; Lớp thứ 5 (Lớp đế): C&ograve;n được gọi l&agrave; lớp c&acirc;n bằng C&oacute; chức năng chống sự bốc l&ecirc;n, gắn kết chặt với keo d&aacute;n chuy&ecirc;n dụng với mặt nền<br />\r\n&nbsp;<br />\r\n<strong>2. Đặc điểm của&nbsp;<a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ (s&agrave;n nhựa v&acirc;n gỗ)</a>:</strong><br />\r\n2.1. Ưu điểm của&nbsp;<strong><a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ</a></strong>:<br />\r\n- Do cấu tạo từ nhựa PVC n&ecirc;n v&aacute;n s&agrave;n c&oacute; khả năng si&ecirc;u chịu nước, chống ẩm cực tốt. Chịu được va đập mạnh.<br />\r\n- C&oacute; đ&agrave;n hồi tốt, chống được h&oacute;a chất ăn m&ograve;n, ẩm mốc, v&agrave; l&agrave; vật liệu c&aacute;ch &acirc;m v&agrave; c&aacute;ch tĩnh điện cao.<br />\r\n-&nbsp;<strong><a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ</a></strong>&nbsp;l&agrave; loại vật liệu l&oacute;t s&agrave;n nhẹ v&igrave; vậy vận chuyển dễ d&agrave;ng, nhanh ch&oacute;ng v&agrave; thuận tiện. chi ph&iacute; thấp v&agrave; độ bền cao.<br />\r\n- Việc thi c&ocirc;ng cũng &iacute;t g&acirc;y ra tiếng ồn, &iacute;t bụi bẩn<br />\r\n2.2. Nhược điểm của&nbsp;<strong><a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ (s&agrave;n nhựa v&acirc;n gỗ)</a></strong>:<br />\r\n- Độ chịu m&agrave;i m&ograve;n kh&ocirc;ng cao<br />\r\n- Độ cứng kh&ocirc;ng cao n&ecirc;n kh&ocirc;ng được k&ecirc; c&aacute;c đồ nặng l&ecirc;n s&agrave;n nhựa<br />\r\n- S&agrave;n nhựa thường c&oacute; độ d&agrave;y thấp do đ&oacute; kh&ocirc;ng c&oacute; cảm gi&aacute;c chắn ch&acirc;n v&agrave; &iacute;t c&oacute; cảm gi&aacute;c ấm ch&acirc;n v&agrave;o m&ugrave;a đ&ocirc;ng như s&agrave;n gỗ<br />\r\n- Với c&ugrave;ng chiều d&agrave;y th&igrave; gi&aacute; th&agrave;nh của s&agrave;n nhựa thường cao hơn nhiều so với s&agrave;n gỗ<br />\r\n&nbsp;<br />\r\n<strong>3. Ph&acirc;n loại&nbsp;<a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ (s&agrave;n nhựa v&acirc;n gỗ)</a>:</strong><br />\r\n<strong><a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ (s&agrave;n nhựa v&acirc;n gỗ)</a></strong>&nbsp;tr&ecirc;n thị trường c&oacute; rất nhiều d&ograve;ng sản phẩm, tuy nhi&ecirc;n c&oacute; thể chia th&agrave;nh 3 d&ograve;ng sản phẩm ch&iacute;nh l&agrave;:&nbsp;<strong><a href=\"https://sangorenhat.vn/tu-van-san-go/150-san-nhua-tu-dinh.html\">S&agrave;n nhựa tự d&iacute;nh</a></strong>,&nbsp;<strong><a href=\"https://sangorenhat.vn/939-san-nhua-moderna-2mm.html\">S&agrave;n nhựa d&aacute;n keo</a></strong>&nbsp;v&agrave;&nbsp;<strong><a href=\"https://sangorenhat.vn/940-san-nhua-moderna-35mm.html\">S&agrave;n nhựa h&egrave;m kh&oacute;a</a></strong><br />\r\n-&nbsp;<strong><a href=\"https://sangorenhat.vn/996-san-nhua-tu-dinh.html\">S&agrave;n nhựa tự d&iacute;nh</a></strong>&nbsp;hay được gọi l&agrave; s&agrave;n nhựa tự d&aacute;n hoặc s&agrave;n nhựa c&oacute; keo tự d&iacute;nh l&agrave; vật liệu thường d&ugrave;ng để lắp đặt nội thất trong nh&agrave;. S&agrave;n nhựa keo tự d&iacute;nh c&oacute; lớp đế được thiết kế c&oacute; lớp keo d&aacute;n sẵn v&agrave; lớp giấy giống đề can. Khi lắp đặt chỉ cần k&eacute;o lớp giấy đề can ra l&agrave; c&oacute; thể thi c&ocirc;ng. S&agrave;n n&agrave;y thường c&oacute; chiều d&agrave;y mỏng, thi c&ocirc;ng nhanh, đơn giản, gi&aacute; th&agrave;nh rẻ th&iacute;ch hợp cho. Tuy nhi&ecirc;n loại n&agrave;y c&oacute; t&aacute;c dụng chủ yếu l&agrave;m vật liệu trang tr&iacute; hơn l&agrave; vật liệu l&oacute;t s&agrave;n n&ecirc;n kh&ocirc;ng khuyến kh&iacute;ch d&ugrave;ng trong việc l&aacute;t s&agrave;n thực tế<br />\r\n-&nbsp;<strong><a href=\"https://sangorenhat.vn/997-san-nhua-dan-keo.html\">S&agrave;n nhựa d&aacute;n keo</a></strong>&nbsp;thường&nbsp; c&oacute; chiều d&agrave;y từ 2-3mm, đ&acirc;y l&agrave; loại s&agrave;n nhựa gi&aacute; rẻ ph&ugrave; hợp cho c&aacute;c c&ocirc;ng tr&igrave;nh muốn tiết kiệm chi ph&iacute;, c&ocirc;ng tr&igrave;nh thu&ecirc; tạm v&agrave; thời gian sử dung kh&ocirc;ng l&acirc;u d&agrave;i, kh&ocirc;ng n&ecirc;n d&ugrave;ng trong c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n dụng<br />\r\n-&nbsp;<strong><a href=\"https://sangorenhat.vn/998-san-nhua-hem-khoa.html\">S&agrave;n nhựa h&egrave;m kh&oacute;a</a></strong>&nbsp;thường c&oacute; chiều d&agrave;y từ 4mm trở l&ecirc;n. Đ&acirc;y l&agrave; d&ograve;ng sản phẩm s&agrave;n nhựa cao cấp, c&oacute; gi&aacute; th&agrave;nh cao, độ bền tốt v&agrave; thời gian sử dụng l&acirc;u d&agrave;i.<br />\r\n4. Th&ocirc;ng số chi tiết v&agrave; b&aacute;o gi&aacute; c&aacute;c&nbsp;d&ograve;ng sản phẩm ti&ecirc;u biểu của&nbsp;<strong><a href=\"https://sangorenhat.vn/528-san-nhua-trong-nha.html\">s&agrave;n nhựa giả gỗ</a></strong>:<br />\r\n<a href=\"https://sangorenhat.vn/1071-san-nhua-gunsan.html\">+&nbsp;S&agrave;n nhựa Gunsan 4mm h&egrave;m kh&oacute;a: 230.000 đ/m2&gt;&gt;Th&ocirc;ng tin chi tiết.&nbsp;</a><br />\r\n<a href=\"https://sangorenhat.vn/1064-san-nhua-glotex-6mm.html\">+&nbsp;S&agrave;n nhựa Glotex 6mm h&egrave;m kh&oacute;a: 320.000 đ/m2&gt;&gt; Th&ocirc;ng tin chi tiết.</a><br />\r\n(Gi&aacute; tr&ecirc;n l&agrave; gi&aacute; vật tư chưa bao gồm nh&acirc;n c&ocirc;ng, xốp l&oacute;t, ph&agrave;o ch&acirc;n tường, nẹp cửa)<br />\r\n<br />\r\n<strong>Kết luận: N&ecirc;n d&ugrave;ng s&agrave;n nhựa giả gỗ hay s&agrave;n gỗ c&ocirc;ng nghiệp?</strong><br />\r\nSự lựa chọn n&agrave;y c&ograve;n phụ thuộc v&agrave;o nhu cầu v&agrave; kinh ph&iacute; của bạn.&nbsp;<a href=\"https://sangorenhat.vn/\"><strong>S&agrave;n gỗ rẻ nhất</strong></a>&nbsp;xin đưa ra một v&agrave;i gợi &yacute;:<br />\r\n- Nếu điều kiện cho ph&eacute;p về kinh ph&iacute;: n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp cao c&acirc;p<br />\r\n- Vị tr&iacute; kh&ocirc;ng gian c&oacute; nhiều người đi lại: n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp<br />\r\n- Vị tr&iacute; kh&ocirc;ng gian sang trọng: n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp cao cấp<br />\r\n- Vị tr&iacute; kh&ocirc;ng gian bị chiếu s&aacute;ng nhiều: n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp<br />\r\n- Vị tr&iacute; kh&ocirc;ng gian c&oacute; nhiều đồ vật năng: n&ecirc;n chọn s&agrave;n gỗ c&ocirc;ng nghiệp<br />\r\n- Vị tr&iacute; kh&ocirc;ng gian thường xuy&ecirc;n tiếp x&uacute;c với nước: n&ecirc;n chọn s&agrave;n nhựa<br />\r\n&nbsp;<br />\r\n<a href=\"https://sangorenhat.vn/\"><strong>S&agrave;n gỗ rẻ nhất</strong></a>&nbsp;l&agrave; đơn vị cung cấp s&agrave;n gỗ, s&agrave;n nhựa chuy&ecirc;n nghiệp với c&aacute;c ti&ecirc;u ch&iacute; như sau:<br />\r\n- Chất lượng tốt nhất<br />\r\n- Gi&aacute; cả rẻ nhất<br />\r\n- Bảo h&agrave;nh ch&iacute;nh h&atilde;ng<br />\r\n- Uy t&iacute;n l&acirc;u năm<br />\r\n- Tư vấn miễn ph&iacute; tại nh&agrave;</p>', 'default', NULL, 'so-sanh-san-go-nhua-ngoai-troi-va-san-go-tu-nhien', NULL, NULL, '/library/images/TinTuc/z374644520951453eff18d2d406b15e78ec774423b8498-5608.jpg', '', 'post', 0, 1, 'Tin tức', NULL, NULL, NULL, NULL, '2022-10-12 14:04:21', NULL),
(11, 'SỰ KHÁC NHAU TẤM ĐA NĂNG VÂN ĐÁ VÀ TẤM VÂN ĐÁ PVC', NULL, '<p>-&nbsp;Tấm Ốp Đa Năng&nbsp;:</p>\r\n\r\n<p>+&nbsp;Độ d&agrave;y&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 5mm. Ốp l&ecirc;n tường kh&ocirc;ng bị ọp ẹp, chắc nịch.&nbsp;&nbsp;</p>\r\n\r\n<p>+ Bề mặt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: B&oacute;ng v&acirc;n đ&aacute;, trơn&nbsp;v&acirc;n gỗ.</p>\r\n\r\n<p>+ Độ dẻo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Uốn bo cột tr&ograve;n được, phay gấp theo cột vu&ocirc;ng, chịu được t&aacute;c động mạnh.&nbsp;</p>\r\n\r\n<p>+ Chất Liệu&nbsp; &nbsp; &nbsp;: 80% bọt nhựa PVC v&agrave; 20% sợi than tre kh&aacute;ng khuẩn.</p>\r\n\r\n<p>+ Trọng lượng : 8kg/Tấm, 80% nhựa n&ecirc;n nhẹ, dễ vận chuyển, dễ thi c&ocirc;ng.</p>\r\n\r\n<p>-&nbsp;Tấm Nhựa Giả Đ&aacute; PVC&nbsp;:&nbsp;</p>\r\n\r\n<p>+&nbsp;Độ d&agrave;y&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 2.8mm - 3,5mm. Ốp l&ecirc;n tường g&otilde; hay ọp ẹp, va chạm mạnh dễ bể.</p>\r\n\r\n<p>+ Bề mặt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: B&oacute;ng.</p>\r\n\r\n<p>+ Độ dẻo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Loại thường gi&aacute; th&agrave;nh rẻ kh&ocirc;ng uốn được, dễ gẫy. Loại tốt c&oacute; thể uốn được gi&aacute; th&agrave;nh cao.</p>\r\n\r\n<p>+ Chất Liệu&nbsp;&nbsp;&nbsp; &nbsp;: Loại thường tỉ lệ bột đ&aacute; nhiều hơn , loại tốt&nbsp;uốn được thường tỉ lệ nhựa nhiều hơn.</p>\r\n\r\n<p>+ Trọng lượng&nbsp;: 16-17kg/Tấm, kh&oacute; vận chuyển, thi c&ocirc;ng kh&oacute; v&agrave; tốn sức nhiều hơn.</p>', 'default', NULL, 'su-khac-nhau-tam-da-nang-van-da-va-tam-van-da-pvc', NULL, NULL, '/library/images/TinTuc/ce627a4695875dd90496-3122.jpg', '', 'post', 0, 0, 'Tin tức', NULL, NULL, NULL, NULL, '2022-10-09 11:06:32', NULL),
(12, 'OTGWood-B8001', 'Tấm ốp lam sóng là vật liệu trang trí đang được ưa chuộng và thịnh thành nhất hiện nay. Sản phẩm mang đến không gian thời thượng, sang trọng, sạch sẽ cho ngôi nhà của bạn. Với mẫu mã đa dạng, bề mặt phim chuẩn Châu Âu, lam sóng OTG sẽ đem đến cho khách hàng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguyên sinh, lam sóng OTGWood đảm bảo về an toàn sức khỏe, không hôi hám khi ốp trong phòng máy lạnh, nhựa cứng cáp.', NULL, 'default', NULL, 'otgwood-b8001', NULL, NULL, '/library/images/sanpham/z311058767992606203d80cf81d21ac0ded0a22f0e2066-9230(1).jpg', NULL, 'product', 0, 0, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm', NULL, NULL, NULL, NULL, '2022-10-09 16:54:59', NULL),
(22, 'OTGWood-8007', 'Tấm ốp lam sóng là vật liệu trang trí đang được ưa chuộng và thịnh thành nhất hiện nay. Sản phẩm mang đến không gian thời thượng, sang trọng, sạch sẽ cho ngôi nhà của bạn. Với mẫu mã đa dạng, bề mặt phim chuẩn Châu Âu, lam sóng OTG sẽ đem đến cho khách hàng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguyên sinh, lam sóng OTGWood đảm bảo về an toàn sức khỏe, không hôi hám khi ốp trong phòng máy lạnh, nhựa cứng cáp.', NULL, 'default', NULL, 'otgwood-8007', NULL, NULL, '/library/images/TinTuc/z374644520951453eff18d2d406b15e78ec774423b8498-5608.jpg', NULL, 'product', 0, 0, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,150x10x3000mm,160x15x2900mm,195x14x3000mm,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Vân 3D,Vân 2D,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-09 16:56:11', NULL),
(13, 'OTGWood-8004', NULL, '<p>Tấm ốp lam s&oacute;ng l&agrave; vật liệu trang tr&iacute; đang được ưa chuộng v&agrave; thịnh th&agrave;nh nhất hiện nay. Sản phẩm mang đến kh&ocirc;ng gian thời thượng, sang trọng, sạch sẽ cho ng&ocirc;i nh&agrave; của bạn. Với mẫu m&atilde; đa dạng, bề mặt phim chuẩn Ch&acirc;u &Acirc;u, lam s&oacute;ng OTG sẽ đem đến cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguy&ecirc;n sinh, lam s&oacute;ng OTGWood đảm bảo về an to&agrave;n sức khỏe, kh&ocirc;ng h&ocirc;i h&aacute;m khi ốp trong ph&ograve;ng m&aacute;y lạnh, nhựa cứng c&aacute;p.</p>', 'default', NULL, 'otgwood-8004', NULL, NULL, NULL, NULL, 'product', 0, 0, '', NULL, NULL, NULL, NULL, '2022-10-09 16:31:36', NULL),
(14, 'OTGWood-8004', NULL, '<p>Tấm ốp lam s&oacute;ng l&agrave; vật liệu trang tr&iacute; đang được ưa chuộng v&agrave; thịnh th&agrave;nh nhất hiện nay. Sản phẩm mang đến kh&ocirc;ng gian thời thượng, sang trọng, sạch sẽ cho ng&ocirc;i nh&agrave; của bạn. Với mẫu m&atilde; đa dạng, bề mặt phim chuẩn Ch&acirc;u &Acirc;u, lam s&oacute;ng OTG sẽ đem đến cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguy&ecirc;n sinh, lam s&oacute;ng OTGWood đảm bảo về an to&agrave;n sức khỏe, kh&ocirc;ng h&ocirc;i h&aacute;m khi ốp trong ph&ograve;ng m&aacute;y lạnh, nhựa cứng c&aacute;p.</p>', 'default', NULL, 'otgwood-8004-14', NULL, NULL, NULL, NULL, 'product', 0, 0, '', NULL, NULL, NULL, NULL, '2022-10-09 16:31:58', NULL),
(15, 'OTGWood-8004', NULL, '<p>Tấm ốp lam s&oacute;ng l&agrave; vật liệu trang tr&iacute; đang được ưa chuộng v&agrave; thịnh th&agrave;nh nhất hiện nay. Sản phẩm mang đến kh&ocirc;ng gian thời thượng, sang trọng, sạch sẽ cho ng&ocirc;i nh&agrave; của bạn. Với mẫu m&atilde; đa dạng, bề mặt phim chuẩn Ch&acirc;u &Acirc;u, lam s&oacute;ng OTG sẽ đem đến cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguy&ecirc;n sinh, lam s&oacute;ng OTGWood đảm bảo về an to&agrave;n sức khỏe, kh&ocirc;ng h&ocirc;i h&aacute;m khi ốp trong ph&ograve;ng m&aacute;y lạnh, nhựa cứng c&aacute;p.</p>', 'default', NULL, 'otgwood-8004-15', NULL, NULL, NULL, NULL, 'product', 0, 0, '', NULL, NULL, NULL, NULL, '2022-10-09 16:34:47', NULL),
(16, 'OTGWood-8004', NULL, '<p>Tấm ốp lam s&oacute;ng l&agrave; vật liệu trang tr&iacute; đang được ưa chuộng v&agrave; thịnh th&agrave;nh nhất hiện nay. Sản phẩm mang đến kh&ocirc;ng gian thời thượng, sang trọng, sạch sẽ cho ng&ocirc;i nh&agrave; của bạn. Với mẫu m&atilde; đa dạng, bề mặt phim chuẩn Ch&acirc;u &Acirc;u, lam s&oacute;ng OTG sẽ đem đến cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguy&ecirc;n sinh, lam s&oacute;ng OTGWood đảm bảo về an to&agrave;n sức khỏe, kh&ocirc;ng h&ocirc;i h&aacute;m khi ốp trong ph&ograve;ng m&aacute;y lạnh, nhựa cứng c&aacute;p.</p>', 'default', NULL, 'otgwood-8004-16', NULL, NULL, NULL, NULL, 'product', 0, 0, '', NULL, NULL, NULL, NULL, '2022-10-09 16:35:25', NULL),
(17, 'OTGWood-8004', 'Tấm ốp lam sóng là vật liệu trang trí đang được ưa chuộng và thịnh thành nhất hiện nay. Sản phẩm mang đến không gian thời thượng, sang trọng, sạch sẽ cho ngôi nhà của bạn. Với mẫu mã đa dạng, bề mặt phim chuẩn Châu Âu, lam sóng OTG sẽ đem đến cho khách hàng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguyên sinh, lam sóng OTGWood đảm bảo về an toàn sức khỏe, không hôi hám khi ốp trong phòng máy lạnh, nhựa cứng cáp.', NULL, 'default', NULL, 'otgwood-8004-17', NULL, NULL, '/library/images/sanpham/z311058767992606203d80cf81d21ac0ded0a22f0e2066-9230(1).jpg', NULL, 'product', 0, 2, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-12 14:04:46', NULL),
(18, 'OTGWood-8003', 'Tấm ốp lam sóng là vật liệu trang trí đang được ưa chuộng và thịnh thành nhất hiện nay. Sản phẩm mang đến không gian thời thượng, sang trọng, sạch sẽ cho ngôi nhà của bạn. Với mẫu mã đa dạng, bề mặt phim chuẩn Châu Âu, lam sóng OTG sẽ đem đến cho khách hàng sản phẩm chất lượng nhất. Với chất liệu cốt trắng nhựa nguyên sinh, lam sóng OTGWood đảm bảo về an toàn sức khỏe, không hôi hám khi ốp trong phòng máy lạnh, nhựa cứng cáp.', NULL, 'default', NULL, 'otgwood-8003', NULL, NULL, '/library/images/TinTuc/h5881049ea23f4e8ca56b5b938c5c6b18p-8951.jpg', NULL, 'product', 0, 0, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-09 16:55:18', NULL),
(19, 'Thanh Ốp Tường Gỗ Nhựa 2D', 'OTGWood là dòng vật liệu chuyên dụng dùng trong nội thất và ốp tường, ốp trần là một ứng dụng nổi bật được rất nhiều hộ gia đình yêu thích sử dụng. OTGWood WP148x21-wood do Ốp Tường Sài Gòn cung cấp rất thân thiện môi trường và tốn ít chi phí bảo trì hơn các loại gỗ công nghiệp dùng để ốp tường khác. Bên cạnh việc không bị cong vênh bong tróc, nó còn có thể chống mối mọt, chống ẩm mốc do tác động từ môi trường ẩm ướt bên ngoài. Thanh ốp ngoài trời là sản phẩm kết hợp từ gỗ và nhựa nên rất phù hợp với điều kiện môi trường khí hậu Việt Nam.', NULL, 'default', NULL, 'thanh-op-tuong-go-nhua-2d', NULL, NULL, NULL, NULL, 'product', 0, 0, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-09 16:41:16', NULL),
(20, 'Thanh Ốp Tường Gỗ Nhựa 2D', 'OTGWood là dòng vật liệu chuyên dụng dùng trong nội thất và ốp tường, ốp trần là một ứng dụng nổi bật được rất nhiều hộ gia đình yêu thích sử dụng. OTGWood WP148x21-wood do Ốp Tường Sài Gòn cung cấp rất thân thiện môi trường và tốn ít chi phí bảo trì hơn các loại gỗ công nghiệp dùng để ốp tường khác. Bên cạnh việc không bị cong vênh bong tróc, nó còn có thể chống mối mọt, chống ẩm mốc do tác động từ môi trường ẩm ướt bên ngoài. Thanh ốp ngoài trời là sản phẩm kết hợp từ gỗ và nhựa nên rất phù hợp với điều kiện môi trường khí hậu Việt Nam.', NULL, 'default', NULL, 'thanh-op-tuong-go-nhua-2d-20', NULL, NULL, NULL, NULL, 'product', 0, 0, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-09 16:41:17', NULL),
(21, 'Thanh Ốp Tường Gỗ Nhựa 2D', 'OTGWood là dòng vật liệu chuyên dụng dùng trong nội thất và ốp tường, ốp trần là một ứng dụng nổi bật được rất nhiều hộ gia đình yêu thích sử dụng. OTGWood WP148x21-wood do Ốp Tường Sài Gòn cung cấp rất thân thiện môi trường và tốn ít chi phí bảo trì hơn các loại gỗ công nghiệp dùng để ốp tường khác. Bên cạnh việc không bị cong vênh bong tróc, nó còn có thể chống mối mọt, chống ẩm mốc do tác động từ môi trường ẩm ướt bên ngoài. Thanh ốp ngoài trời là sản phẩm kết hợp từ gỗ và nhựa nên rất phù hợp với điều kiện môi trường khí hậu Việt Nam.', NULL, 'default', NULL, 'thanh-op-tuong-go-nhua-2d-21', NULL, NULL, '/library/images/sanpham/z3110587696057f99d4ebadea02c8c03f50dfcc75d50f7-3369.jpg', NULL, 'product', 0, 3, 'Tấm nhựa PVC vân đá,Tấm ốp tường đa năng,Lam Sóng nhựa vân gỗ,Sàn nhựa ngoài trời,Tấm ốp ngoài trời,Tấm ván nhựa - Foarm,Phụ Kiện', NULL, NULL, NULL, NULL, '2022-10-12 14:03:55', NULL),
(23, 'Đối tác 1', NULL, NULL, 'default', NULL, 'doi-tac-1', NULL, NULL, '/library/images/DoiTac/binyl-logo-53710.png', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:12:21', NULL),
(24, 'Đối tác 2', NULL, NULL, 'default', NULL, 'doi-tac-2', NULL, NULL, '/library/images/DoiTac/fulllogotransparent-49810.png', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:12:36', NULL),
(25, 'Đối tác 3', NULL, NULL, 'default', NULL, 'doi-tac-3', NULL, NULL, '/library/images/DoiTac/gioi-thieu-38521-70220.jpg', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:12:51', NULL),
(26, 'Đối tác 4', NULL, NULL, 'default', NULL, 'doi-tac-4', NULL, NULL, '/library/images/DoiTac/logo-thuong-hieu-san-go-fortune-57680.jpg', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:13:01', NULL),
(27, 'Đối tác 5', NULL, NULL, 'default', NULL, 'doi-tac-5', NULL, NULL, '/library/images/DoiTac/otg-77930.png', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:13:10', NULL),
(28, 'Đối tác 6', NULL, NULL, 'default', NULL, 'doi-tac-6', NULL, NULL, '/library/images/DoiTac/unnamed-68670.jpg', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:13:22', NULL),
(29, 'Đối tác 7', NULL, NULL, 'default', NULL, 'doi-tac-7', NULL, NULL, '/library/images/DoiTac/wilsonlogo-90270.jpg', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:13:31', NULL),
(30, 'Đối tác 8', NULL, NULL, 'default', NULL, 'doi-tac-8', NULL, NULL, '/library/images/DoiTac/z2348502881811bde6ffb919e3c5bfb9aa0d4cbb4e5fbd-92960.jpg', NULL, 'doi-tac', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-09 21:13:38', NULL),
(31, 'Đối tác', NULL, NULL, 'doi-tac', NULL, 'doi-tac', NULL, NULL, '/library/images/fulllogotransparentnobuffer-8835.png', '', 'page', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12 11:27:53', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_facebook`
--

CREATE TABLE `post_facebook` (
  `post_facebook_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_me` tinyint(4) DEFAULT NULL COMMENT '0: không\n1: có',
  `fanpages` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `face_ids` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `code` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `price` int(254) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(254) DEFAULT NULL,
  `price_deal` int(254) DEFAULT NULL,
  `deal_end` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_end` datetime DEFAULT NULL,
  `image_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_together` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_after` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `origin_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `code`, `post_id`, `price`, `size`, `discount`, `price_deal`, `deal_end`, `updated_at`, `discount_start`, `discount_end`, `image_list`, `filter`, `properties`, `buy_together`, `buy_after`, `deleted_at`, `origin_price`) VALUES
(1, 'OTGWood-B8001', 12, 0, NULL, 0, 0, '2022-10-09 16:54:59', '2022-10-09 16:54:59', NULL, NULL, '/library/images/sanpham/z311058767992606203d80cf81d21ac0ded0a22f0e2066-9230(1).jpg,/library/images/sanpham/z311058767992606203d80cf81d21ac0ded0a22f0e2066-9230.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>M&atilde; sản phẩm</strong></td>\r\n			<td>OTGWood-B8001</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Nhựa PVC nguy&ecirc;n sinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quy c&aacute;ch&nbsp;</strong></td>\r\n			<td>150x10x3000mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng 1 th&ugrave;ng</strong></td>\r\n			<td>20 Thanh/ Th&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>T&igrave;nh trạng</strong></td>\r\n			<td>C&ograve;n h&agrave;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0'),
(2, 'OTGWood-8004', 17, 0, NULL, 0, 0, '2022-10-09 16:54:52', '2022-10-09 16:54:52', NULL, NULL, '/library/images/TinTuc/ce627a4695875dd90496-3122.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>M&atilde; sản phẩm</strong></td>\r\n			<td>OTGWood-8004</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Nhựa PVC nguy&ecirc;n sinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quy c&aacute;ch&nbsp;</strong></td>\r\n			<td>195x14x3000mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng 1 th&ugrave;ng</strong></td>\r\n			<td>10 Thanh/ Th&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>T&igrave;nh trạng</strong></td>\r\n			<td>C&ograve;n h&agrave;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0'),
(3, 'OTGWood-8003', 18, 0, NULL, 0, 0, '2022-10-09 16:55:18', '2022-10-09 16:55:18', NULL, NULL, '/library/images/TinTuc/ce627a4695875dd90496-3122.jpg,/library/images/TinTuc/h5881049ea23f4e8ca56b5b938c5c6b18p-8951.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>M&atilde; sản phẩm</strong></td>\r\n			<td>OTGWood-8007</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Nhựa PVC nguy&ecirc;n sinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quy c&aacute;ch&nbsp;</strong></td>\r\n			<td>195x14x3000mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng 1 th&ugrave;ng</strong></td>\r\n			<td>10 Thanh/ Th&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>T&igrave;nh trạng</strong></td>\r\n			<td>C&ograve;n h&agrave;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0'),
(4, 'OTG - Thanh ốp ngoài trời 2D', 21, 0, NULL, 0, 0, '2022-10-09 16:44:44', '2022-10-09 16:44:44', NULL, NULL, '/library/images/TinTuc/ce627a4695875dd90496-3122.jpg,/library/images/TinTuc/h5881049ea23f4e8ca56b5b938c5c6b18p-8951.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Thương hiệu</strong></td>\r\n			<td>OTGWood</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&atilde; sản phẩm</strong></td>\r\n			<td>OTGWood - Thanh ốp ngo&agrave;i trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u sắc</strong></td>\r\n			<td>COFFEE, CHOCOLATE, TEAK</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quy c&aacute;ch</strong></td>\r\n			<td>148x21x2900mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Ứng dụng</strong></td>\r\n			<td>Ốp trần, ốp tường ngo&agrave;i trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bảo h&agrave;nh</strong></td>\r\n			<td>4 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0'),
(5, 'OTGWood-8007', 22, 0, NULL, 0, 0, '2022-10-09 16:56:11', '2022-10-09 16:56:11', NULL, NULL, '/library/images/TinTuc/hlb1elmzrrvpk1rjszfqq6axuvxav-7126.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>M&atilde; sản phẩm</strong></td>\r\n			<td>OTGWood-8007</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Chất liệu</strong></td>\r\n			<td>Nhựa PVC nguy&ecirc;n sinh</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Quy c&aacute;ch&nbsp;</strong></td>\r\n			<td>195x14x3000mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số lượng 1 th&ugrave;ng</strong></td>\r\n			<td>10 Thanh/ Th&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>T&igrave;nh trạng</strong></td>\r\n			<td>C&ograve;n h&agrave;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `ratingable_id` int(10) UNSIGNED DEFAULT NULL,
  `ratingable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_getfly`
--

CREATE TABLE `setting_getfly` (
  `setting_getfly_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '0: chưa xóa.\n1: đã xóa.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_order`
--

CREATE TABLE `setting_order` (
  `setting_order_id` int(11) NOT NULL,
  `point_to_currency` int(11) DEFAULT NULL,
  `currency_give_point` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcribe_email`
--

CREATE TABLE `subcribe_email` (
  `subcribe_email_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(8) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcribe_email`
--

INSERT INTO `subcribe_email` (`subcribe_email_id`, `email`, `name`, `group_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'aaaa', NULL, NULL, '2018-10-04 03:40:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_post`
--

CREATE TABLE `sub_post` (
  `sub_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type_sub_post_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_post`
--

INSERT INTO `sub_post` (`sub_post_id`, `post_id`, `type_sub_post_slug`, `deleted_at`) VALUES
(1, 1, 'slogan', NULL),
(2, 2, 'slide', NULL),
(3, 3, 'slide', NULL),
(4, 4, 'dia-chi-footer', NULL),
(5, 5, 'mang-xa-hoi', NULL),
(6, 6, 'mang-xa-hoi', NULL),
(7, 7, 'mang-xa-hoi', NULL),
(8, 8, 'mang-xa-hoi', NULL),
(9, 23, 'doi-tac', NULL),
(10, 24, 'doi-tac', NULL),
(11, 25, 'doi-tac', NULL),
(12, 26, 'doi-tac', NULL),
(13, 27, 'doi-tac', NULL),
(14, 28, 'doi-tac', NULL),
(15, 29, 'doi-tac', NULL),
(16, 30, 'doi-tac', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `template`
--

CREATE TABLE `template` (
  `template_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `template`
--

INSERT INTO `template` (`template_id`, `title`, `slug`, `created_at`, `updated_at`, `is_hide`, `deleted_at`) VALUES
(1, 'Đối tác', 'doi-tac', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_information`
--

CREATE TABLE `type_information` (
  `type_infor_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_information`
--

INSERT INTO `type_information` (`type_infor_id`, `title`, `type_input`, `placeholder`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Tên công ty', 'one_line', NULL, NULL, NULL, 'ten-cong-ty', NULL),
(2, 'Logo', 'image', NULL, NULL, NULL, 'logo', NULL),
(3, 'Favicon', 'image', NULL, NULL, NULL, 'favicon', NULL),
(4, 'Hotline', 'one_line', NULL, NULL, NULL, 'hotline', NULL),
(5, 'Nhúng fanpage', 'multi_line', NULL, NULL, NULL, 'nhung-fanpage', NULL),
(6, 'Nhúng bản đồ', 'multi_line', NULL, NULL, NULL, 'nhung-ban-do', NULL),
(7, 'Zalo', 'one_line', NULL, NULL, NULL, 'zalo', NULL),
(8, 'Messenger', 'multi_line', NULL, NULL, '2022-10-12 15:39:00', 'messenger', NULL),
(9, 'Coppy-right', 'one_line', NULL, NULL, NULL, 'coppy-right', NULL),
(10, 'email', 'one_line', NULL, NULL, NULL, 'email', NULL),
(11, 'GEO tag', 'multi_line', NULL, NULL, NULL, 'geo-tag', NULL),
(12, 'link map', 'one_line', NULL, NULL, NULL, 'link-map', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_input`
--

CREATE TABLE `type_input` (
  `type_input_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_input`
--

INSERT INTO `type_input` (`type_input_id`, `title`, `slug`, `type_input`, `placeholder`, `post_used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Link', 'link', 'one_line', NULL, 'mang-xa-hoi,slide', NULL, '2022-10-09 10:01:38', NULL),
(2, 'Ảnh footer', 'anh-footer', 'image', NULL, 'mang-xa-hoi', NULL, '2022-10-09 09:46:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_sub_post`
--

CREATE TABLE `type_sub_post` (
  `type_sub_post_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_default_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_sub_post`
--

INSERT INTO `type_sub_post` (`type_sub_post_id`, `title`, `slug`, `template`, `input_default_used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Slogan', 'slogan', 'default', 'description', NULL, NULL, NULL),
(2, 'Slide', 'slide', 'default', 'image', NULL, NULL, NULL),
(3, 'Đối tác', 'doi-tac', 'default', 'image', NULL, NULL, NULL),
(4, 'Địa chỉ footer', 'dia-chi-footer', 'default', 'content', NULL, NULL, NULL),
(5, 'Mạng xã hội', 'mang-xa-hoi', 'default', 'image', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Null',
  `accesstoken` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(45) DEFAULT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `accesstoken`, `phone`, `image`, `role`, `name`, `updated_at`, `created_at`, `age`, `address`, `point`, `deleted_at`) VALUES
(1, 'vn3ctran@gmail.com', '$2y$10$NnWmu0CwTsKP/5ZLaHAa/OUcpMbwWlKYtxoQZOA4D6lreY7uE9pra', '3WcjPFTkHHag3y9FyWyMYSCbjspNctPxc2Gn69KES30Mw9dCMuQPvDog3ox2', NULL, '12345678', 'http://thietkewebtns.com/wp-content/uploads/2017/05/1a-11.jpg', 3, 'Admin', '2018-07-03 12:00:46', NULL, 'nam', 'Cổ đông sơn tây', 0, NULL),
(2, 'vietbt@vatgia.com', '$2y$10$KONS1pmjLr6kLPwVCEKOQuPZELjWzpmxOHb.n4K4bXqWyiUzxpUuy', 'VDFuQTy4Psf0ew2GVT6gHmQKmFC5UgSsKmjJDXITQeLxQVVt9GzjBe3Eh3UB', NULL, '0357176405', 'http://thietkewebtns.com/wp-content/uploads/2017/05/1a-11.jpg', 1, 'Bui Tuan Viet', '2022-04-11 21:56:39', '2022-04-10 09:31:03', NULL, '1345', 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_post_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `facebook_save_uid`
--
ALTER TABLE `facebook_save_uid`
  ADD PRIMARY KEY (`facebook_save_uid_id`);

--
-- Chỉ mục cho bảng `facebook_setting`
--
ALTER TABLE `facebook_setting`
  ADD PRIMARY KEY (`facebook_id`);

--
-- Chỉ mục cho bảng `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `group_filter`
--
ALTER TABLE `group_filter`
  ADD PRIMARY KEY (`group_filter_id`);

--
-- Chỉ mục cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  ADD PRIMARY KEY (`group_mail_id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `information_general`
--
ALTER TABLE `information_general`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`input_id`);

--
-- Chỉ mục cho bảng `mail_config`
--
ALTER TABLE `mail_config`
  ADD PRIMARY KEY (`mail_config_id`);

--
-- Chỉ mục cho bảng `members_facebook`
--
ALTER TABLE `members_facebook`
  ADD PRIMARY KEY (`member_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  ADD PRIMARY KEY (`menu_element_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  ADD PRIMARY KEY (`order_bank_id`);

--
-- Chỉ mục cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  ADD PRIMARY KEY (`order_code_sale_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  ADD PRIMARY KEY (`order_ship_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `post_facebook`
--
ALTER TABLE `post_facebook`
  ADD PRIMARY KEY (`post_facebook_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting_getfly`
--
ALTER TABLE `setting_getfly`
  ADD PRIMARY KEY (`setting_getfly_id`);

--
-- Chỉ mục cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  ADD PRIMARY KEY (`setting_order_id`);

--
-- Chỉ mục cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  ADD PRIMARY KEY (`subcribe_email_id`);

--
-- Chỉ mục cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  ADD PRIMARY KEY (`sub_post_id`);

--
-- Chỉ mục cho bảng `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Chỉ mục cho bảng `type_information`
--
ALTER TABLE `type_information`
  ADD PRIMARY KEY (`type_infor_id`);

--
-- Chỉ mục cho bảng `type_input`
--
ALTER TABLE `type_input`
  ADD PRIMARY KEY (`type_input_id`);

--
-- Chỉ mục cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  ADD PRIMARY KEY (`type_sub_post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `category_post`
--
ALTER TABLE `category_post`
  MODIFY `category_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `facebook_save_uid`
--
ALTER TABLE `facebook_save_uid`
  MODIFY `facebook_save_uid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `facebook_setting`
--
ALTER TABLE `facebook_setting`
  MODIFY `facebook_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `filter`
--
ALTER TABLE `filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `group_filter`
--
ALTER TABLE `group_filter`
  MODIFY `group_filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  MODIFY `group_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `information`
--
ALTER TABLE `information`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `information_general`
--
ALTER TABLE `information_general`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `input`
--
ALTER TABLE `input`
  MODIFY `input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `mail_config`
--
ALTER TABLE `mail_config`
  MODIFY `mail_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `members_facebook`
--
ALTER TABLE `members_facebook`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  MODIFY `menu_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  MODIFY `order_bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  MODIFY `order_code_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  MODIFY `order_ship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `post_facebook`
--
ALTER TABLE `post_facebook`
  MODIFY `post_facebook_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_getfly`
--
ALTER TABLE `setting_getfly`
  MODIFY `setting_getfly_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  MODIFY `setting_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  MODIFY `subcribe_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  MODIFY `sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `type_information`
--
ALTER TABLE `type_information`
  MODIFY `type_infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `type_input`
--
ALTER TABLE `type_input`
  MODIFY `type_input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  MODIFY `type_sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
