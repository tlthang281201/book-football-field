-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th4 02, 2022 lúc 03:31 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pitch_id` int(11) NOT NULL,
  `owner_id` int(255) NOT NULL,
  `book_day` varchar(255) NOT NULL,
  `today` varchar(255) NOT NULL,
  `start_time_booking` time NOT NULL,
  `end_time_booking` time NOT NULL,
  `is_verified` int(255) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`booking_id`, `user_id`, `pitch_id`, `owner_id`, `book_day`, `today`, `start_time_booking`, `end_time_booking`, `is_verified`, `ticket`, `total_price`) VALUES
(40, 1, 5, 4, '26-12-2020', '21-12-2020', '19:00:00', '20:30:00', 1, '6QaM', 225000),
(41, 1, 4, 4, '26-12-2020', '21-12-2020', '17:30:00', '19:00:00', 1, 'ERtf', 150000),
(42, 1, 3, 4, '25-12-2020', '21-12-2020', '20:30:00', '22:00:00', 2, '9uqz', 75000),
(43, 1, 5, 4, '26-12-2020', '21-12-2020', '02:30:00', '04:30:00', 2, 'D2kz', 300000),
(44, 1, 4, 4, '27-12-2020', '21-12-2020', '19:00:00', '20:30:00', 1, 'Jywc', 150000),
(45, 1, 7, 4, '27-12-2020', '21-12-2020', '00:00:00', '02:00:00', 1, 'yJe9', 420000),
(46, 1, 5, 4, '27-12-2020', '21-12-2020', '20:30:00', '22:00:00', 1, 'VD8G', 225000),
(47, 7, 5, 4, '27-12-2020', '21-12-2020', '20:30:00', '22:00:00', 1, 'TW8w', 225000),
(48, 7, 4, 4, '26-12-2020', '21-12-2020', '20:30:00', '22:00:00', 1, 'QAku', 150000),
(49, 8, 3, 4, '27-12-2020', '24-12-2020', '17:30:00', '19:00:00', 1, 'mvkP', 75000),
(50, 8, 4, 4, '27-12-2020', '24-12-2020', '17:30:00', '19:00:00', 1, 'To7t', 150000),
(51, 8, 3, 4, '25-12-2020', '25-12-2020', '04:00:00', '06:00:00', 1, '3hZ9', 100000),
(52, 8, 3, 4, '28-12-2020', '25-12-2020', '17:30:00', '19:00:00', 0, '5B83', 75000),
(53, 8, 4, 4, '09-01-2121', '09-01-2121', '02:30:00', '04:00:00', 0, 'JyHp', 150000),
(54, 8, 4, 4, '09-01-2121', '09-01-2121', '02:30:00', '04:00:00', 0, 'CIbA', 150000),
(55, 8, 3, 4, '11-01-2021', '11-01-2021', '00:00:00', '01:00:00', 0, 'XPyS', 50000),
(56, 12, 4, 4, '12-01-2021', '12-01-2021', '02:00:00', '03:00:00', 1, 'Mlrh', 100000),
(57, 11, 3, 4, '14-01-2021', '12-01-2021', '17:30:00', '19:00:00', 1, 'Mi6N', 75000),
(58, 13, 5, 4, '16-01-2021', '12-01-2021', '19:00:00', '20:30:00', 0, 'bVqs', 225000),
(59, 14, 5, 4, '20-01-2021', '16-01-2021', '17:30:00', '19:00:00', 1, 'Cz6h', 225000),
(60, 15, 5, 4, '22-01-2021', '16-01-2021', '20:30:00', '22:00:00', 1, 'OQgZ', 225000),
(61, 15, 3, 4, '20-01-2021', '16-01-2021', '19:00:00', '20:30:00', 0, 'PG1H', 75000),
(62, 16, 4, 4, '30-12-2021', '30-12-2021', '00:00:00', '01:00:00', 0, 'XpWR', 100000),
(63, 17, 4, 4, '20-03-2021', '17-03-2021', '17:30:00', '19:00:00', 0, 'ry8G', 150000),
(64, 17, 4, 4, '20-03-2021', '17-03-2021', '17:30:00', '19:00:00', 0, 'kTLz', 150000),
(65, 17, 4, 4, '20-03-2021', '17-03-2021', '17:30:00', '19:00:00', 0, 'OwuX', 150000),
(66, 17, 5, 4, '21-03-2021', '17-03-2021', '17:30:00', '19:00:00', 0, 'FhmV', 225000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `id_TinTuc` int(11) NOT NULL,
  `NoiDung` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `user_name`, `id_TinTuc`, `NoiDung`) VALUES
(1, 'thắng', 4, 'Oki'),
(2, 'Huy', 4, 'Rất Hay'),
(3, 'Messi', 4, '123'),
(4, 'ronaldo', 4, 'Oki'),
(5, 'thắng', 4, ':)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doibong`
--

CREATE TABLE `doibong` (
  `id` int(11) NOT NULL,
  `TenDoiBong` varchar(255) NOT NULL,
  `TenVietTat` varchar(255) NOT NULL,
  `Logo` varchar(255) NOT NULL,
  `date_tl` varchar(255) NOT NULL,
  `KhauHieu` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `trandau` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `doibong`
--

INSERT INTO `doibong` (`id`, `TenDoiBong`, `TenVietTat`, `Logo`, `date_tl`, `KhauHieu`, `id_user`, `trandau`) VALUES
(1, 'Juventus', '', 'Juve.png', '', '', 0, 0),
(2, 'Barcelona', '', 'barca.png', '', '', 0, 0),
(3, 'Việt Nam', '', 'vietnam.png', '', '', 0, 0),
(4, 'Tây Ban Nha', '', 'taybannha.png', '', '', 0, 0),
(6, 'Manchester United', 'MU', 'gu2l_logo2.png', '2020-12-21', 'Quỷ Đỏ', 7, 0),
(9, 'Anh', 'ELN', 'FdyQ_anh.png', '2020-12-25', 'Sư Tử Trắng', 8, 0),
(17, 'dsj', 'VN', 'L4Sv_barca.png', '2020-12-25', 'Sư Tử Trắng', 8, 0),
(27, 'Tottenham', 'TOT', 'vfSC_tải xuống (1).png', '2021-01-10', 'Gà Trống', NULL, NULL),
(28, 'Everton', 'EvE', 'IvEO_tải xuống (2).png', '2021-01-11', 'GGG', 11, 0),
(31, 'Liverpool1', 'Lv1', 'logo1111.png', '2021-01-11', 'Sư Tử Trắng1', 12, NULL),
(32, 'Bỉ', 'B', '9NO3_logo1.png', '2021-01-11', '1232', 13, 0),
(33, 'Arsenal', 'ARS', '4WE6_1200px-Arsenal_FC.svg.png', '2021-01-16', 'Phao Thu', 14, 0),
(34, 'Lào', 'Lào', '6AWB_1200px-Emblem_of_Laos.svg.png', '2021-01-16', 'Oki', 10, 0),
(35, 'Roma', 'RM', 'CbCq_1200px-AS_Roma_logo_(2017).svg.png', '2021-01-16', 'Oki', 15, 0),
(37, 'Lao', 'LAO', 'Nf1D_Logo-Bong-Da-07.jpg', '2022-03-17', '123', 17, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id_LoaiTin` int(10) UNSIGNED NOT NULL,
  `TheLoai_id` int(10) UNSIGNED NOT NULL,
  `TenLoaiTin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id_LoaiTin`, `TheLoai_id`, `TenLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sân 7', NULL, NULL),
(2, 2, 'Ngoại Hạng Anh', NULL, NULL),
(4, 6, 'Sân 5', NULL, NULL),
(5, 6, 'Việt Nam', NULL, NULL),
(6, 6, 'Mỹ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_11_29_130928_table_theloai', 1),
(2, '2020_11_29_133200_loai_tin', 1),
(3, '2020_11_29_133222_tintuc', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `owners`
--

CREATE TABLE `owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `owners`
--

INSERT INTO `owners` (`id`, `name`, `email`, `phone_number`, `password`, `remember_token`, `address`, `updated_at`) VALUES
(1, 'Văn', 'lxc150896@gmail.com', '', '$2y$10$JmIvo/qnxFqN8chUxKtGWenyyEE3ISSAooMy85p.zw7NZJVhkGkL6', NULL, NULL, NULL),
(2, 'Thắng', 'lxc@gmail.com', '', '$2y$10$h3SqepFGY7hokT/51OZzoulqyjeEtT24GD67jlfvhmmySpCrArefa', NULL, NULL, NULL),
(3, 'Lê Tú', 'admin@gmail.com', '0123123123', '123123123\r\n', NULL, '10 Hoàng Diệu', NULL),
(4, 'Ngô Văn Thắng', 'owner@gmail.com', '01233897678', '$2y$10$HaKjR57icTIQEGL33wRwR.Bkw.5TvFFjQFKu/.uQd.4PMZiAkJKC', NULL, 'k72 Ông ích Khiêm, Đà Nẵng', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pitch`
--

CREATE TABLE `pitch` (
  `pitch_id` int(11) NOT NULL,
  `pitch_name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `district` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `url_ggmap` text NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `price_per_hour` double NOT NULL,
  `size` int(1) NOT NULL,
  `avatar_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pitch`
--

INSERT INTO `pitch` (`pitch_id`, `pitch_name`, `description`, `owner_id`, `city`, `district`, `address`, `phone_number`, `url_ggmap`, `start_time`, `end_time`, `price_per_hour`, `size`, `avatar_url`) VALUES
(3, 'Sân đại học đà nẵng', 'Sân còn mới cỏ tốt , với anh chủ sân rất chi là vui vẽ nên các bạn thoải mái nhé', 4, 'Thành phố Đà nẵng', 'Quận Hải Châu', '10 Hoàng Diệu', '0123456789', 'https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d125383.96747020159!2d106.7204803372247!3d10.868657672589475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.868692!2d106.7903169!5e0!3m2!1svi!2s!4v1607768819969!5m2!1svi!2s', '00:00:00', '23:00:00', 50000, 5, 'https://ohmygiay.vn/wp-content/uploads/2020/10/1602402771_999_Kich-thuoc-san-bong-da-5-nguoi-Theo-tieu.jpg'),
(4, 'Sân đại học sư phạm 2', 'Sân còn mới cỏ tốt , với anh chủ sân rất chi là vui vẽ nên các bạn thoải mái nhé', 4, 'Thành phố Đà nẵng', 'Quận Hải Châu', '74 Hải Phòng', '0987654345', 'https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d125383.96747020159!2d106.7204803372247!3d10.868657672589475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.868692!2d106.7903169!5e0!3m2!1svi!2s!4v1607768819969!5m2!1svi!2s', '00:00:00', '23:00:00', 100000, 5, 'https://trungtamdaybongda.files.wordpress.com/2019/04/chi-phi-lam-1-san-bong-da-mini.jpeg'),
(5, 'Sân đại học công nghệ thông tin', 'Sân còn mới cỏ tốt , với anh chủ sân rất chi là vui vẽ nên các bạn thoải mái nhé', 4, 'Thành phố Đà nẵng', 'Quận Hải Châu', '89 Nguyễn Tất Thành', '0938758478', 'https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d125383.96747020159!2d106.7204803372247!3d10.868657672589475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.868692!2d106.7903169!5e0!3m2!1svi!2s!4v1607768819969!5m2!1svi!2s', '05:00:00', '23:00:00', 150000, 7, 'https://images.foody.vn/res/g24/230275/prof/s576x330/foody-mobile-10-jpg-367-635973698509531205.jpg'),
(6, 'Sân bóng đại học Duy Tân', 'Sân còn mới cỏ tốt , với anh chủ sân rất chi là vui vẽ nên các bạn thoải mái nhé', 3, 'Thành phố Đà nẵng', 'Quận Hải Châu', '76 Duy Tân', '0123654786', 'https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d125383.96747020159!2d106.7204803372247!3d10.868657672589475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.868692!2d106.7903169!5e0!3m2!1svi!2s!4v1607768819969!5m2!1svi!2s', '06:00:00', '23:00:00', 80000, 5, 'https://thegioiconhantao.com.vn/wp-content/uploads/2017/06/du-an-san-bong-tri-ton-an-giang2.png'),
(7, 'Sân bóng đại học việt-hàn', 'Sân còn mới cỏ tốt , với anh chủ sân rất chi là vui vẽ', 4, 'Thành phố Đà nẵng', 'Quận Hải Châu', '12 Hàm Nghi', '1231231231', 'https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d125383.96747020159!2d106.7204803372247!3d10.868657672589475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d10.868692!2d106.7903169!5e0!3m2!1svi!2s!4v1607768819969!5m2!1svi!2s', '00:00:00', '23:00:00', 210000, 5, 'https://htsport.vn/wp-content/uploads/2020/06/anh-bia-danh-sach-san-bong-o-quan-10.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"kiemthu\",\"table\":\"users\"},{\"db\":\"kiemthu\",\"table\":\"login\"},{\"db\":\"phpmyadmin\",\"table\":\"users\"},{\"db\":\"phpmyadmin\",\"table\":\"tintuc\"},{\"db\":\"phpmyadmin\",\"table\":\"owners\"},{\"db\":\"phpmyadmin\",\"table\":\"user_admin\"},{\"db\":\"phpmyadmin\",\"table\":\"doibong\"},{\"db\":\"vlxd\",\"table\":\"hanghoa\"},{\"db\":\"vlxd\",\"table\":\"kho\"},{\"db\":\"vlxd\",\"table\":\"carts\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('sanbong', 'loaitin', 'TenLoaiTin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'vlxd', 'theloai', '{\"sorted_col\":\"`theloai`.`ten_tl` ASC\"}', '2021-09-18 02:13:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-04-02 13:31:18', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":289,\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` int(11) NOT NULL,
  `TenThanhVien` varchar(255) NOT NULL,
  `ChucVu` int(3) NOT NULL,
  `DoiBong_id` int(11) NOT NULL,
  `SDT` int(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `TenThanhVien`, `ChucVu`, `DoiBong_id`, `SDT`, `id_user`) VALUES
(4, 'Ngô Văn Thắng', 1, 6, 839123862, 0),
(5, 'Ngô Văn Thắng1', 2, 4, 8391234, 7),
(6, 'Thắng Ngô', 1, 9, 982647532, 8),
(7, 'Trần Lý Thắng', 2, 17, 98823452, 8),
(8, 'Ngô Văn Thắng', 1, 24, 11231231, 10),
(9, 'Ngô Văn Thắng', 2, 26, 8391234, 10),
(10, 'Huy', 2, 27, 1232123, 10),
(11, 'Huy 123', 1, 28, 123562, 11),
(12, 'Hiếu', 1, 31, 8391232, 12),
(13, 'Pro', 1, 32, 123124, 13),
(14, 'Phan Van Messi', 1, 33, 82748521, 14),
(15, 'Trần Văn Pro', 1, 34, 11232, 10),
(16, 'Lý THắng', 1, 35, 987654321, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id_TheLoai` int(10) UNSIGNED NOT NULL,
  `TenTheLoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id_TheLoai`, `TenTheLoai`, `created_at`, `updated_at`) VALUES
(1, 'Sân Đá Bóng', NULL, NULL),
(2, 'Châu Âu', NULL, NULL),
(6, 'Châu Á', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `LoaiTin_id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_date` date DEFAULT NULL,
  `NoiBat` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id_tintuc`, `LoaiTin_id`, `TieuDe`, `TomTat`, `NoiDung`, `Hinh`, `oder_date`, `NoiBat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Ronaldo đua với vua săn bàn số 1 hành tinh', 'Cristiano Ronaldo đã vượt Pele để trở thành tay săn bàn số 3 lịch sử Tg', 'Cristiano Ronaldo đã chạm mốc 750 bàn thắng ghi được ở cấp độ CLB lẫn đội tuyển quốc gia, và số bàn thắng của anh ghi được nếu tính cả ở cấp độ đội trẻ lẫn tuyển trẻ đang là 768 bàn. Con số đó giúp Ronaldo vượt qua “Vua bóng đá” Pele để có số bàn thắng ca', '8lav_b0093dc33035cf5bf9e4169b5b4a2091.jpg', '2020-12-09', 1, NULL, NULL),
(4, 1, 'Tottenham - Mourinho', 'Tottenham - Mourinho tụt dốc', '<p>Tottenham của HLV Mourinho đ&atilde; để thua ngay tr&ecirc;n s&acirc;n nh&agrave; trước một&nbsp;Leicester chơi phản c&ocirc;ng rất hay với tỷ số 0-2. Đ&atilde; 3 v&ograve;ng đấu tr&ocirc;i qua, Mourinho v&agrave; c&aacute;c học tr&ograve; kh&ocirc;ng thể c&oacute; 3 điểm trọn vẹn, trong đ&oacute; c&oacute; tới 2 trận thua trước c&aacute;c đối thủ cạnh tranh trực tiếp l&agrave; Liverpool v&agrave; Leicester.</p>\r\n\r\n<p><img alt=\"Tottenham - Mourinho tụt dốc, huyền thoại MU chê yếu đuối như thời xa xưa - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-21/Tottenham---Mourinho-tut-doc-huyen-thoai-MU-che-yeu-duoi-nhu-thoi-xa-xua-tot-1-1608516103-17-width634height423.jpg\" /></p>\r\n\r\n<p>Tottenham đang bị nghi ngờ về mặt bản lĩnh</p>\r\n\r\n<p>Từ vị tr&iacute; đầu bảng,&nbsp;<a href=\"https://www.24h.com.vn/tottenham-hotspur-c48e4412.html\">Tottenham</a>&nbsp;đ&atilde; tụt dốc v&agrave; giờ chỉ đang đứng thứ 5 tr&ecirc;n BXH Ngoại hạng Anh. C&aacute;ch đ&acirc;y chỉ v&agrave;i v&ograve;ng đấu, người ta đ&atilde; nhắc đến Tottenham với tư c&aacute;ch 1 ứng vi&ecirc;n thực sự. Khi đ&oacute; song tấu Harry Kane - Son Heung Min thay nhau tỏa s&aacute;ng, c&ograve;n Mourinho cho thấy tư tưởng triết l&yacute;&nbsp;<a href=\"https://www.24h.com.vn/bong-da-c48.html\">b&oacute;ng đ&aacute;</a>&nbsp;của &ocirc;ng chưa lỗi thời khi x&acirc;y dựng được 1 hệ thống ph&ograve;ng ngự kh&aacute; chắc chắn cho đội b&oacute;ng &aacute;o trắng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n mọi thứ đ&atilde; thay đổi ch&oacute;ng mặt chỉ trong 3 v&ograve;ng gần đ&acirc;y. Bản lĩnh l&agrave; điều m&agrave; nhiều người ho&agrave;i nghi khi chứng kiến Tottenham li&ecirc;n tục để đối thủ ghi b&agrave;n ở những gi&acirc;y ph&uacute;t cực kỳ quan trọng trong c&aacute;c trận đấu. Họ để Crystal Palace gỡ h&ograve;a 1-1 khi trận đấu chỉ c&ograve;n khoảng 10 ph&uacute;t, để Firmino ghi b&agrave;n 2-1 cho Liverpool đ&uacute;ng ph&uacute;t 90, v&agrave; mới đ&acirc;y để Vardy ghi b&agrave;n tr&ecirc;n chấm 11m đ&uacute;ng ph&uacute;t b&ugrave; giờ cuối c&ugrave;ng của hiệp 1.</p>\r\n\r\n<p>Chứng kiến Tottenham li&ecirc;n tục mất điểm theo c&ugrave;ng 1 c&aacute;ch như vậy, huyền thoại của&nbsp;<a href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">MU</a>&nbsp;l&agrave; Roy Keane đ&atilde; thẳng thắn nhận x&eacute;t &quot;G&agrave; trống&quot; đang cho thấy sự yếu đuối v&agrave; mong manh như h&igrave;nh ảnh của ch&iacute;nh họ trong qu&aacute; khứ.</p>\r\n\r\n<p>&quot;N&oacute; giống như một Tottenham của những ng&agrave;y xưa cũ vậy. Rất t&ocirc;n trọng Mourinho nhưng với c&aacute;i c&aacute;ch họ để thua muộn trước Liverpool, bị Palace cầm h&ograve;a, rồi mới đ&acirc;y để thua Leicester, t&ocirc;i cho rằng Tottenham đang trở lại phong c&aacute;ch yếu đuối thường thấy của họ&quot;, Roy Keane cho biết.</p>\r\n\r\n<p>Với pha phạm lỗi của Aurier dẫn đến quả phạt 11m cuối hiệp 1, Roy Keane cũng kh&ocirc;ng tiếc lời chỉ tr&iacute;ch v&agrave; gọi hậu vệ n&agrave;y l&agrave; 1 kẻ đi&ecirc;n rồ: &quot;Chỉ c&oacute; 1 từ d&agrave;nh cho anh ta th&ocirc;i, đ&oacute; l&agrave; đi&ecirc;n rồ. Đ&oacute; kh&ocirc;ng phải l&agrave; 1 t&igrave;nh huống nguy hiểm, kh&ocirc;ng phải t&igrave;nh huống uy hiếp khung th&agrave;nh. Anh ta đ&atilde; thiếu suy nghĩ. Thật sự rất đi&ecirc;n rồ.&quot;</p>\r\n\r\n<p>Cơ hội để đua&nbsp; tranh ng&ocirc;i v&ocirc; địch m&ugrave;a n&agrave;y chưa phải l&agrave; kết th&uacute;c với Tottenham. Tuy nhi&ecirc;n để c&oacute; thể cạnh tranh với những đội b&oacute;ng h&agrave;ng đầu, bản lĩnh vẫn l&agrave; điều m&agrave; Mourinho cần phải trui r&egrave;n hơn nữa cho c&aacute;c học tr&ograve;, nhất l&agrave; trong chặng tourmalet gi&aacute;ng sinh v&agrave; năm mới sắp tới.</p>', 'cSwx_Tottenham---Mourinho-tut-doc-huyen-thoai-MU-che-yeu-duoi-nhu-thoi-xa-xua-tot-1-1608516103-17-width634height423.jpg', NULL, 1, NULL, NULL),
(5, 1, '5 HLV lương cao nhất Đông Nam Á', ' HLV nhận lương cao nhất khu vực Đ&ocirc;ng Nam &Aacute;', '<p><strong>5. Kiatisak Senamuang (HAGL)</strong></p>\r\n\r\n<p>Ho&agrave;ng Anh Gia Lai đ&atilde; g&acirc;y ch&uacute; &yacute; trong thời gian qua khi bổ nhiệm Kiatisak l&agrave;m huấn luyện vi&ecirc;n trưởng. Tại đội b&oacute;ng phố N&uacute;i, &ldquo;Zico Th&aacute;i&rdquo; sẽ nhận mức lương 26.000 USD/th&aacute;ng, tương đương với 312.000 USD/năm.</p>\r\n\r\n<p>Trong qu&aacute; khứ, Kiatisak từng kho&aacute;c &aacute;o HAGL từ năm 2002-2006 v&agrave; gi&uacute;p đội b&oacute;ng của bầu Đức gi&agrave;nh 2 chức v&ocirc; địch&nbsp;<a href=\"https://www.24h.com.vn/v-league-2016-cuoc-dua-nong-bong-c48e3408.html\">V.League</a>&nbsp;li&ecirc;n tiếp v&agrave;o c&aacute;c m&ugrave;a giải 2003 v&agrave; 2004. C&ograve;n trong sự nghiệp huấn luyện vi&ecirc;n, Kiatisak đ&atilde; ghi dấu ấn đậm n&eacute;t khi gi&uacute;p Th&aacute;i Lan gi&agrave;nh huy chương v&agrave;ng SEA Games 2013, v&ocirc; địch AFF Cup 2014 v&agrave; 2016, v&agrave;o đến b&aacute;n kết ASIAD 2014. Do đ&oacute;, &ocirc;ng được kỳ vọng sẽ gi&uacute;p lứa C&ocirc;ng Phượng, Xu&acirc;n Trường, Tuấn Anh&hellip; gi&agrave;nh thứ hạng cao tại V.League m&ugrave;a tới.</p>\r\n\r\n<p><img alt=\"5 HLV lương cao nhất Đông Nam Á: Park Hang Seo hơn Kiatisak, kém xa 2 người - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-14/Top-5-HLV-nhan-luong-cao-nhat-dong-Nam-a-Kiatisak-xep-duoi-Park-Hang-Seoindexphp-luong-660-1607935513-575-width660height436.jpg\" /></p>\r\n\r\n<p>Park Hang Seo v&agrave; Kiatisak nằm trong top 5 HLV nhận lương cao nhất Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p><strong>4. Mano Polking (TP.HCM)</strong></p>\r\n\r\n<p>C&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, HLV Mano Polking đ&atilde; được CLB TP.HCM mời về dẫn dắt ở m&ugrave;a giải 2021. Theo tờ Goal phi&ecirc;n bản Th&aacute;i, vị chiến lược gia người Brazil sẽ nhận mức đ&atilde;i ngộ&nbsp;30.000 USD/th&aacute;ng (360.000 USD/năm), trở th&agrave;nh HLV nhận&nbsp;lương cao nhất tại V.League.</p>\r\n\r\n<p>Trước khi sang Việt Nam, HLV Mano Polking từng dẫn dắt Bangkok United thi đấu kh&aacute; th&agrave;nh c&ocirc;ng với 2 lần gi&agrave;nh ng&ocirc;i &Aacute; qu&acirc;n Thai League v&agrave;o c&aacute;c m&ugrave;a giải 2016 v&agrave; 2017, c&ugrave;ng tấm Huy chương Bạc C&uacute;p Quốc gia 2017. Đ&oacute; l&agrave; cơ sở để ban l&atilde;nh đạo TP.HCM tin tưởng &ocirc;ng sẽ gi&uacute;p đội b&oacute;ng n&agrave;y đủ sức cạnh tranh c&aacute;c danh hiệu ở m&ugrave;a giải tới.</p>\r\n\r\n<p><strong>3. Park Hang Seo (ĐT Việt Nam)</strong></p>\r\n\r\n<p>HLV Park Hang Seo đ&atilde; dẫn dắt&nbsp;<a href=\"https://www.24h.com.vn/doi-tuyen-viet-nam-c48e3410.html\">đội tuyển Việt Nam</a>&nbsp;từ năm 2017 v&agrave; đ&atilde; biến &ldquo;Rồng v&agrave;ng&rdquo; th&agrave;nh một thế lực đ&aacute;ng nể tại khu vực Đ&ocirc;ng Nam &Aacute;. Chỉ sau gần 4 năm, &ocirc;ng thầy người H&agrave;n Quốc đ&atilde; gi&uacute;p U23 Việt Nam gi&agrave;nh ng&ocirc;i &Aacute; qu&acirc;n U23 ch&acirc;u &Aacute; 2018, v&ocirc; địch AFF Cup 2018, hạng 4 ASIAD 2018, top 8 Asian Cup 2019 v&agrave; huy chương v&agrave;ng SEA Games 2019.</p>\r\n\r\n<p>Với những th&agrave;nh t&iacute;ch như vậy, kh&ocirc;ng ngạc nhi&ecirc;n khi HLV Park Hang Seo nhận mức lương l&ecirc;n tới 50.000 USD/th&aacute;ng (600.000 USD/năm).</p>\r\n\r\n<p><strong>2. Akira Nishino (ĐT Th&aacute;i Lan)</strong></p>\r\n\r\n<p>Sau khi chia tay HLV Kiatisak, Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Th&aacute;i Lan đ&atilde; mời HLV Akira Nishino về dẫn dắt với mức lương l&ecirc;n tới 80.000 USD/th&aacute;ng (960.000 USD/năm). Vị chiến lược gia 65 tuổi từng gi&uacute;p ĐT Nhật Bản lọt v&agrave;o v&ograve;ng 1/8 World Cup 2018 tại Nga. Sau gần 2 năm dẫn dắt, HLV Akira Nishino vẫn chưa gi&agrave;nh được danh hiệu hiệu lớn n&agrave;o c&ugrave;ng&nbsp;đội tuyển xứ Ch&ugrave;a v&agrave;ng.</p>\r\n\r\n<p><strong>1. Shin Tae Young (ĐT Indonesia)</strong></p>\r\n\r\n<p>Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Indonesia đ&atilde; mời HLV Shin Tae Young về dẫn dắt sau h&agrave;ng loạt những kết quả tệ hại của&nbsp;đội tuyển quốc gia nước n&agrave;y. ĐT Indonesia hiện đang đứng b&eacute;t bảng G v&ograve;ng loại World Cup 2022 khu vực ch&acirc;u &Aacute; với 0 điểm sau 5 lượt trận, v&agrave; đ&atilde; hết cơ hội đi tiếp v&agrave;o v&ograve;ng sau.</p>\r\n\r\n<p>Tại đội tuyển xứ Vạn đảo, cựu HLV trưởng ĐT H&agrave;n Quốc sẽ&nbsp;nhận mức lương l&ecirc;n tới 1 triệu USD/năm, cao nhất trong c&aacute;c HLV ở&nbsp;khu vực Đ&ocirc;ng Nam &Aacute;. Trước khi sang Indonesia, HLV Shin Tae Young từng c&oacute; kinh nghiệm dẫn dắt U20, U23 v&agrave; đội tuyển quốc gia H&agrave;n Quốc.</p>', 'Yat7_Top-5-HLV-nhan-luong-cao-nhat-dong-Nam-a-Kiatisak-xep-duoi-Park-Hang-Seoindexphp-luong-660-1607935513-575-width660height436.jpg', NULL, 1, NULL, NULL),
(6, 1, 'giải \"Bàn chân Vàng\"', 'Ronaldo khoe nhận giải bàn chân vang', '<p><strong>Ronaldo tự h&agrave;o khoe giải &quot;B&agrave;n ch&acirc;n v&agrave;ng&quot;</strong></p>\r\n\r\n<p>Sau qu&atilde;ng thời han 3 tuần c&ocirc;ng bố danh t&iacute;nh người tr&uacute;ng giải &quot;B&agrave;n ch&acirc;n v&agrave;ng 2020&quot;, ban tổ chức&nbsp;mới ch&iacute;nh thức trao kỷ niệm chương l&agrave; đ&ocirc;i ch&acirc;n bằng v&agrave;ng cho Cristiano Ronaldo. V&agrave; như th&ocirc;ng lệ, si&ecirc;u sao 35 tuổi người Bồ Đ&agrave;o Nha&nbsp;cũng giống những cầu thủ từng gi&agrave;nh giải sẽ để lại vĩnh viễn một khu&ocirc;n về dấu ch&acirc;n của m&igrave;nh ở &quot;The Champions Promenade&quot; (Đại lộ những nh&agrave; v&ocirc; địch) tr&ecirc;n bờ biển của xứ C&ocirc;ng quốc Monaco.</p>\r\n\r\n<p><img alt=\"Tin mới nhất bóng đá sáng 21/12: Ronaldo khoe nhận giải &amp;#34;Bàn chân Vàng&amp;#34; - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-21/Tin-moi-nhat-bong-da-sang-21-12-Ronaldo-khoe-nhan-giai-ro-1608490715-994-width660height373.jpg\" /></p>\r\n\r\n<p>Ronaldo ch&iacute;nh thức ẵm giải &quot;B&agrave;n ch&acirc;n V&agrave;ng 2020&quot;</p>\r\n\r\n<p>&quot;Nhận được giải thưởng n&agrave;y l&agrave; một vinh dự. T&ocirc;i rất vui v&igrave; dấu ch&acirc;n của m&igrave;nh sẽ gần với dấu ch&acirc;n của những nh&agrave; v&ocirc; địch vĩ đại kh&aacute;c v&agrave; t&ocirc;i cảm ơn tất cả những người đ&atilde; b&igrave;nh chọn cho t&ocirc;i. T&ocirc;i sẽ lu&ocirc;n nỗ lực hết m&igrave;nh để chơi tốt v&agrave; ghi b&agrave;n&quot;, Ronaldo chia sẻ.</p>\r\n\r\n<p>Trao giải B&agrave;n ch&acirc;n v&agrave;ng lần thứ 18 cho Cristiano Ronaldo l&agrave; Louis Ducruet, con trai của C&ocirc;ng ch&uacute;a Stephanie của c&ocirc;ng quốc Monaco, đại diện cho Ho&agrave;ng tử Albert II của Monaco.&nbsp;</p>', 'rmNI_Tin-moi-nhat-bong-da-sang-21-12-Ronaldo-khoe-nhan-giai-ro-1608490715-994-width660height373.jpg', NULL, 1, NULL, NULL),
(7, 1, 'Nhận định bóng đá Chelsea - West Ham', 'Nhận định Chelsea - West Ham, 3h, 22/12, v&ograve;ng 14 Ngoại hạng Anh', '<p>Chelsea vừa trải qua chuỗi 2 trận thua li&ecirc;n tiếp trước Everton v&agrave; Wolves khiến&nbsp;&ldquo;The Blues&rdquo; rơi xuống vị tr&iacute; thứ 8 tr&ecirc;n bảng xếp hạng Ngoại hạng Anh, k&eacute;m đội b&oacute;ng đang dẫn đầu l&agrave; Liverpool tới 9 điểm. &Aacute;p lực đang đ&egrave; nặng l&ecirc;n vai HLV Lampard bởi &ldquo;The Blues&rdquo; đ&atilde; chi tới hơn 200 triệu bảng ở&nbsp;<a href=\"https://www.24h.com.vn/tin-chuyen-nhuong-c53.html\">kỳ chuyển nhượng m&ugrave;a h&egrave;</a>&nbsp;vừa qua.</p>\r\n\r\n<p><img alt=\"Nhận định bóng đá Chelsea - West Ham: Rực lửa derby London, bại binh phục hận - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-20/gettyimages-1223820271-2-1608476434-421-width660height446.jpg\" /></p>\r\n\r\n<p>West Ham đ&aacute;nh bại&nbsp;<a href=\"https://www.24h.com.vn/chelsea-c48e1505.html\">Chelsea</a>&nbsp;trong cả 2 lần gặp nhau&nbsp;m&ugrave;a trước</p>\r\n\r\n<p>B&ecirc;n kia chiến tuyến, West Ham đang &quot;phả hơi n&oacute;ng&quot; l&ecirc;n ch&iacute;nh&nbsp;Chelsea tr&ecirc;n bảng xếp hạng với chỉ 1 điểm &iacute;t hơn. Đội b&oacute;ng của HLV David Moyes bước v&agrave;o trận đấu n&agrave;y với phong độ kh&aacute; tốt khi gi&agrave;nh&nbsp;3 chiến thắng v&agrave; 1 trận h&ograve;a trong 5 trận gần đ&acirc;y nhất.</p>\r\n\r\n<p>X&eacute;t về lịch sử đối đầu giữa hai đội, Chelsea đang vượt trội hơn so với West Ham. Chelsea đ&atilde; gi&agrave;nh được&nbsp;50 chiến thắng so với 42 lần thuộc về West Ham. Tuy nhi&ecirc;n, cả 2 lần gặp nhau ở m&ugrave;a giải trước đều chứng kiến West Ham được hưởng niềm vui chiến thắng.</p>\r\n\r\n<p>Dẫu vậy, Chelsea vẫn được đ&aacute;nh gi&aacute; cao hơn so với đối thủ c&ugrave;ng th&agrave;nh phố London ở trận đấu n&agrave;y. HLV Lampard đang sở hữu trong tay rất nhiều ng&ocirc;i sao c&oacute; thể tỏa s&aacute;ng như Pulisic, Werner hay Giroud. Quan trọng hơn, &ldquo;The Blues&rdquo; đang rất cần một chiến thắng để trở lại với cuộc đua v&ocirc; địch Ngoại hạng Anh m&ugrave;a n&agrave;y.</p>\r\n\r\n<p><strong>Dự đo&aacute;n tỷ số:</strong>&nbsp;Chelsea 2-1 West Ham</p>\r\n\r\n<p><strong>Đội h&igrave;nh dự kiến:</strong></p>\r\n\r\n<p>Chelsea: Mendy; James, Zouma, Silva, Chilwell; Kovacic, Kante, Mount; Pulisic, Giroud, Werner</p>\r\n\r\n<p>West Ham: Fabianski; Coufal, Diop, Ogbonna, Cresswell; Rice, Soucek; Snodgrass, Benrahma, Fornals; Haller</p>\r\n\r\n<table align=\"center\" cellpadding=\"3\" cellspacing=\"0\" style=\"width:550px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p><strong>T&igrave;nh h&igrave;nh lực lượng:</strong></p>\r\n\r\n			<p>Chelsea: Ziyech, Hudson-Odoi bỏ ngỏ khả năng ra s&acirc;n</p>\r\n\r\n			<p>West Ham: Masuaku chấn thương; Cresswell, Balbuena, Bowen, Antonio bỏ ngỏ khả năng ra s&acirc;n</p>\r\n\r\n			<p><strong>Th&ocirc;ng tin b&ecirc;n lề</strong></p>\r\n\r\n			<p>X&eacute;t về th&agrave;nh t&iacute;ch đối đầu, Chelsea đ&atilde; gi&agrave;nh chiến thắng 50 lần, trong khi West Ham c&oacute; được 42 chiến thắng. Chỉ c&oacute; 22 trận đấu kết th&uacute;c với tỷ số h&ograve;a.</p>\r\n\r\n			<p>Đ&atilde; c&oacute; hơn 2,5 b&agrave;n thắng được ghi ở 5 trong 6 trận s&acirc;n kh&aacute;ch gần nhất của West Ham tại Ngoại hạng Anh.</p>\r\n\r\n			<p>Chelsea đ&atilde; h&ograve;a 2 trong 4 trận s&acirc;n nh&agrave; gần nhất v&agrave; 4 trong 7 trận gần nhất tr&ecirc;n mọi đấu trường</p>\r\n\r\n			<p>Chelsea đang bất bại ở 11 trong 12 trận gần nhất tr&ecirc;n s&acirc;n nh&agrave; tại Ngoại hạng Anh.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'uwnl_6-0838jpg.jpg', NULL, 1, NULL, NULL),
(8, 6, 'Brighton - Sheffield United', 'Video highlight trận Brighton - Sheffield United, v&ograve;ng 14 Ngoại hạng Anh', '<p>Với lợi thế s&acirc;n nh&agrave;, c&aacute;c cầu thủ&nbsp;<a href=\"https://www.24h.com.vn/brighton-fc-c48e4905.html\">Brighton</a>&nbsp;đ&atilde; nhập cuộc đầy chủ động v&agrave; sớm tạo ra những cơ hội trước khung th&agrave;nh Sheffield United. Ngược lại, phong độ tệ hại m&ugrave;a n&agrave;y buộc đội kh&aacute;ch phải chơi với đội h&igrave;nh thấp v&agrave; ho&agrave;n to&agrave;n chịu trận trước sức &eacute;p m&agrave; Brighton tạo ra.</p>\r\n\r\n<p><img alt=\"Video Brighton - Sheffield United: Người hùng Welbeck, nghẹt thở giây cuối - 1\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-20/shef-660-1608469364-975-width660height467.jpg\" /></p>\r\n\r\n<p>Brighton chơi tr&ecirc;n ch&acirc;n Sheffield trong hiệp 1</p>\r\n\r\n<p>Tuy nhi&ecirc;n, những cơ hội cứ lần lượt tr&ocirc;i qua trước mũi gi&agrave;y đội chủ nh&agrave;, đặc biệt l&agrave; tiền đạo chủ lực Neal Maupay. Ch&acirc;n s&uacute;t người Ph&aacute;p phung ph&iacute; kh&aacute; nhiều cơ hội d&ugrave; hầu hết trong số đ&oacute; đều l&agrave; những t&igrave;nh huống dứt điểm b&ecirc;n trong v&ograve;ng cấm đối phương.</p>\r\n\r\n<p>Sự v&ocirc; duy&ecirc;n của h&agrave;ng c&ocirc;ng khiến Brighton đ&ocirc;i lần phải h&uacute; v&iacute;a khi Sheffield tổ chức phản c&ocirc;ng nhanh những ph&uacute;t cuối trận. Thế nhưng, khi vừa gi&agrave;nh lại được thế trận th&igrave; đội kh&aacute;ch đ&atilde; chịu thiệt th&ograve;i lớn với pha v&agrave;o b&oacute;ng bằng gầm gi&agrave;y của&nbsp;Lundstram ở ph&uacute;t 37.</p>\r\n\r\n<p><img alt=\"Video Brighton - Sheffield United: Người hùng Welbeck, nghẹt thở giây cuối - 2\" src=\"https://cdn.24h.com.vn/upload/4-2020/images/2020-12-20/shef-2-660-1608472986-653-width660height391.jpg\" /></p>\r\n\r\n<p>Chủ nh&agrave; phung ph&iacute; qu&aacute; nhiều cơ hội</p>\r\n\r\n<p>Sau khi tham khảo c&ocirc;ng nghệ VAR, trọng t&agrave;i ch&iacute;nh đ&atilde; r&uacute;t thẻ đỏ trực tiếp đối với tiền vệ của Sheffield. Với lợi thế hơn người, Brighton hứa hẹn sẽ c&oacute; được b&agrave;n thắng trong hiệp 2 khi đội b&oacute;ng n&agrave;y chưa thể tận dụng được những cơ hội ở thời gian&nbsp;c&ograve;n lại của hiệp 1.</p>\r\n\r\n<p>Bước sang hiệp 2, thế trận vẫn ho&agrave;n to&agrave;n nằm trong tay Brighton khi lợi thế hơn người gi&uacute;p chủ nh&agrave; thoải m&aacute;i kiểm so&aacute;t khu trung tuyến. Tuy nhi&ecirc;n, kịch bản vẫn giống như 45 ph&uacute;t đầu ti&ecirc;n khi Brighton ra sức dồn &eacute;p, c&ograve;n Sheffield trung th&agrave;nh với lối chơi ph&ograve;ng ngự số đ&ocirc;ng. Ch&iacute;nh điều đ&oacute; đ&atilde; khiến đội chủ nh&agrave; gặp kh&oacute; trong kh&acirc;u tiếp cận khung th&agrave;nh đối thủ.</p>', 'aoMq_bale.png', NULL, 1, NULL, NULL),
(12, 6, 'Son Heung Min, Fernandes \"gánh team\" cực đỉnh, vẫn xếp dưới 1 người', 'Bruno Fernandes và Son Heung Min đang tỏa sáng rực rỡ tại Ngoại hạng Anh nhưng cựu tiền đạo Liverpool, John Aldridge cho rằng bộ đôi này không phải là cầu thủ xuất sắc nhất trong 12 tháng qua.', 'Son Heung Min đang nổi lên là một trong những tiền đạo đáng sợ nhất của bóng đá thế giới, trong khi Bruno Fernandes đã trở thành ngôi sao số 1 tại MU. Hai cầu thủ này đều đang thể hiện phong độ tuyệt vời tại Ngoại hạng Anh trong thời gian vừa qua.\r\n\r\nSon Heung Min, Fernandes &#34;gánh team&#34; cực đỉnh, vẫn xếp dưới 1 người - 1\r\n\r\nFabinho được đánh giá là xuất sắc hơn Son Heung Min và Bruno Fernandes\r\n\r\nTiền đạo người Hàn Quốc đã ghi tới 12 bàn thắng và 5 pha kiến tạo cho Tottenham tại Ngoại hạng Anh mùa này. Son Heung Min cùng với Harry Kane đã hợp thành bộ đôi tiền đạo khiến mọi hàng thủ phải khiếp sợ. Không ngoa khi nói rằng cầu thủ 28 tuổi này đang là “báu vật” của đội bóng thành London.\r\n\r\nTrong khi đó, Bruno Fernandes cũng đã thể hiện phong độ không hề kém cạnh Son Heung Min. Tiền vệ người Bồ Đào Nha đã ghi tới 11 bàn thắng và cung cấp 7 pha kiến tạo cho MU tại Ngoại hạng Anh mùa này. Chính cầu thủ 26 tuổi này là nguồn cảm hứng giúp “Quỷ đỏ” bất bại 10 trận liên tiếp để qua đó bắt kịp đội dẫn đầu Liverpool nhưng đang thi đấu ít hơn 1 trận.\r\n\r\nBên cạnh 2 ngôi sao kể trên, những cầu thủ như Kevin De Bruyne của Man City hay Jamie Vardy của Leicester cũng đang thể hiện được phong độ ổn định trong suốt thời gian vừa qua. Tuy nhiên, John Aldridge, cựu tiền đạo của Liverpool, lại cho rằng Fabinho mới là cầu thủ xuất sắc nhất Ngoại hạng Anh trong 12 tháng qua.\r\n\r\nCựu tiền đạo của Liverpool phân tích trên Sunday World: “Có rất nhiều cuộc tranh luận về việc ai là cầu thủ xuất sắc nhất (Ngoại hạng Anh) năm 2020 và Jordan Henderson đã nhận được một vài đề cử, nhưng tôi muốn chọn một cầu thủ Liverpool khác cho giải thưởng đó.\r\n\r\nBruno Fernandes đã chơi tuyệt vời kể từ khi anh ấy đến MU vào tháng Giêng, bộ đôi của Tottenham gồm Harry Kane và Son Heung Min đều là đẳng cấp hàng đầu. Tuy nhiên, khi tôi nhìn vào một cầu thủ có tầm ảnh hưởng lớn nhất trong đội bóng xuất sắc nhất xứ sở sương mù, tôi sẽ chọn Fabinho.\r\n\r\n“Fabinho đã mất một thời gian để tìm được chỗ đứng tại Liverpool, nhưng tầm quan trọng của cậu ấy đối với đội bóng của Jurgen Klopp đã được nhấn mạnh nhiều lần trong những tháng gần đây. Cầu thủ người Brazil đã chơi tuyệt vời ở hàng tiền vệ trong nửa đầu năm 2020 và là nhạc trưởng ở trung tâm hàng phòng ngự kể từ khi Van Dijk và Joe Gomez dính chấn thương đến cuối mùa giải.”\r\n\r\nDù được xếp ở vị trí không phải sở trường, Fabinho vẫn thi đấu cực kỳ chắc chắn trong vai trò của một trung vệ. Chính sự xuất sắc của cầu thủ người Brazil đã góp phần không nhỏ giúp cho Liverpool duy trì ngôi đầu bảng tại Ngoại hạng Anh cho đến thời điểm này. Dẫu vậy, HLV Klopp nhiều khả năng vẫn sẽ phải mang về 1 trung vệ ở kỳ chuyển nhượng mùa Đông này, trong bối cảnh Van Dijk và Gomez ngồi ngoài đến cuối mùa giải.', 'dTic_Son-Heung-Min-Bruno-Fernandes-bruno-fernandes-fabinho-heung-min-son-1610371857-612-width660height371.jpg', NULL, 1, NULL, NULL),
(16, 6, '!231', '123211', 'đâsdádasdsadsadasdasdsa', 'NhND_17-660-1610611844-449-width660height371.jpg', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trandau`
--

CREATE TABLE `trandau` (
  `id` int(11) NOT NULL,
  `id_doibong1` int(11) NOT NULL,
  `id_doibong2` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `ngay` varchar(255) NOT NULL,
  `id_user` int(2) DEFAULT NULL,
  `confirm` int(2) DEFAULT NULL,
  `id_user2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trandau`
--

INSERT INTO `trandau` (`id`, `id_doibong1`, `id_doibong2`, `time`, `ngay`, `id_user`, `confirm`, `id_user2`) VALUES
(7, 4, 17, '18:00', '20/12/2020', NULL, NULL, NULL),
(10, 24, 17, '18:00', '20/12/2020', NULL, NULL, NULL),
(11, 9, 28, '19:00', '11/01/2021', 11, NULL, NULL),
(12, 26, 28, '18:00', '20/12/2020', 11, NULL, NULL),
(19, 28, 32, '20:00', '77/77/77', 13, 1, 11),
(20, 28, 31, '20:00', '22/22/2020', 12, 1, 11),
(21, 26, 28, '19:00', '88/88/99', 11, 1, 10),
(22, 24, 28, '20:00', '99/99/99', 11, 1, 10),
(23, 32, 33, '19:00', '22/12/2020', 14, 1, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `google_id`, `email`, `password`, `phone_number`, `address`, `birthday`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Lý Thắng', '117990082152321451643', 'tlthang.19it3@vku.udn.vn', NULL, '0926069058', 'K72 Hoàng Hoa Thám, Đà Nẵng, Việt Nam', '2001-12-28', 'HDvDcIFLrfdApmjetA8RxjLUbrq8PAApjLcT68vifNRwlYjQmCviE0AIYj9t', '2020-12-08 08:56:55', '2020-12-08 08:56:55'),
(2, 'Trần Lý Thắng', NULL, 'tlthang.19it3@sict.udn.vn', '123123', NULL, 'K72 Hoàng Hoa Thám, Đà Nẵng, Việt Nam', '2001-12-29', 'lVQcIakzaBd1izV0HuwRvbuq5BmAkGGD2zmLEt1GBWO3i9Rj1BzaE7Ph7sba', '2020-12-08 09:05:49', '2021-01-11 22:16:41'),
(3, 'Tran Thang', '108725555636073632228', 'thang281201@gmail.com', NULL, NULL, NULL, NULL, 'pHkUo6vBQqu2qMGj8na06PhUOml7CNXLC5yaIZPtCxWQ5skf7GUcalxZEVHe', '2020-12-12 23:25:52', '2020-12-12 23:25:52'),
(4, 'Lê Công Tú', NULL, 'tudb@gmail.com', '$2y$10$Hb3miLyFyGNdkiUxd72QNOz3GoyqDgYAAxPm8s5PcM6Gf1vaAs3i2', NULL, NULL, NULL, NULL, '2020-12-19 05:01:11', '2020-12-19 05:01:11'),
(5, 'Ngô Văn Thắng', NULL, '123@gmail.com', '$2y$10$IyBV6zHWc1SxIS/3gpkduu.zpiKz5y.kxLmzS8KX/rXjH4OgoNrKG', NULL, NULL, NULL, NULL, '2020-12-19 05:05:34', '2020-12-19 05:05:34'),
(6, 'Nguyễn Văn A', NULL, 'abcde@gmail.com', '6e7d9f24f6c1940b4884f266353374d7', NULL, NULL, NULL, NULL, '2020-12-20 00:49:25', '2020-12-20 00:49:25'),
(8, 'thắng', NULL, 'ngovanthang1004@gmail.com', '$2y$10$ENeSjqfBq29Ww.qt5.Ksrua7JNKqLB5RHOaCSunEKgnY58NtDp1aq', NULL, NULL, NULL, 'UgjEdwdaV71SEaBHGeqvb006RMbdMEruoBaKsRAp3QqLWzIkFqKWtDgGdNu1', '2020-12-22 23:30:11', '2020-12-22 23:30:11'),
(9, 'Thắng Ngô Văn', '114167203937758445828', 'nvthang.19it3@vku.udn.vn', NULL, NULL, NULL, NULL, 'PlWVsTFZJ0wiN1Cjx6Yr7Oul34WBmGDVnBNXOXl0jFPcDSLOOwTL0IJR8CJA', '2021-01-09 08:25:54', '2021-01-09 08:25:54'),
(10, '', NULL, 'ngovanthang1005@gmail.com', '$2y$10$CONkFlud9uD6Nb8hf.lyUeQcuPdZBhxVPp2YhRJxdgDUu5s6LMzdK', '11311311313', 'Hồ Gươm', NULL, NULL, '2021-01-10 07:35:36', '2021-01-10 07:35:36'),
(11, 'Huy', NULL, 'huy@gmail.com', '$2y$10$rTmr9TvY9dmbNgpfiXZ3sObasg9LFtfuh3hucEranGGfG9umoiDtq', NULL, NULL, NULL, '0JxdejKH1f1JPzAWU28bJfyTOBPlkEIDTpDRTRAb9dXvk9TizRN8SYLhic5Y', '2021-01-11 07:25:31', '2021-01-11 07:25:31'),
(12, 'Hieu', NULL, 'hieu@gmail.com', '$2y$10$UgCGc3DyTgy0pLNqD9sZa.rV6A78e.3je/lYjXrq71v.vzpsRJkm2', NULL, NULL, NULL, NULL, '2021-01-11 07:34:53', '2021-01-11 07:34:53'),
(13, 'thang1', NULL, 'thang1@gmail.com', '$2y$10$GkUb81nMU.CkwuKdsqNCHu.Hp8PuWCxyGO1RBV0D1mbDZM7zrmUNG', NULL, NULL, NULL, NULL, '2021-01-11 08:02:25', '2021-01-11 08:02:25'),
(14, 'Messi', NULL, 'messi@gmail.com', '$2y$10$lIfbEFGMpjXeMczJY4af9.cgm.uwWgUL5MS9tBC29.YhjwcoLS.F2', NULL, NULL, NULL, 'OR1QYShsfMBWYp1oZ8tpAJwzzihd708UBcK8By12feW9CRb5Geq3pYRQTDgu', '2021-01-15 16:34:47', '2021-01-15 16:34:47'),
(15, 'ronaldo', NULL, 'ronaldo@gmail.com', '$2y$10$3IikVg46AEVJpOsglezyUuzIt7e3PQZ.9X2OPezcB5S8/wCXLom/K', NULL, NULL, NULL, NULL, '2021-01-15 18:32:27', '2021-01-15 18:32:27'),
(16, 'thắng', NULL, '1234567@gmail.com', '$2y$10$ui1A5H8.wpmawb5vcyhtxeDoU26W4CCIhT2IySnI4nBV.bZL.4Dz.', NULL, '1234', NULL, NULL, '2021-12-30 00:05:20', '2021-12-30 00:05:20'),
(17, 'thang', NULL, '12345678@gmail.com', '$2y$10$HWfocPoWstYO7WeE2xmvxuIPeX6Q5QFW/se13qgwQiHy9PyJ42FFu', NULL, NULL, NULL, NULL, '2022-03-02 23:48:54', '2022-03-02 23:48:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_admin`
--

CREATE TABLE `user_admin` (
  `user` varchar(255) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user_admin`
--

INSERT INTO `user_admin` (`user`, `password`) VALUES
('admin', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id_TinTuc`) USING BTREE;

--
-- Chỉ mục cho bảng `doibong`
--
ALTER TABLE `doibong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id_LoaiTin`),
  ADD KEY `loaitin_theloai_id_foreign` (`TheLoai_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `owners_email_unique` (`email`);

--
-- Chỉ mục cho bảng `pitch`
--
ALTER TABLE `pitch`
  ADD PRIMARY KEY (`pitch_id`);

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`DoiBong_id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_TheLoai`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tintuc`),
  ADD UNIQUE KEY `id1` (`id_tintuc`),
  ADD KEY `tintuc_loaitin_id_foreign` (`LoaiTin_id`);

--
-- Chỉ mục cho bảng `trandau`
--
ALTER TABLE `trandau`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `doibong`
--
ALTER TABLE `doibong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id_LoaiTin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pitch`
--
ALTER TABLE `pitch`
  MODIFY `pitch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_TheLoai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tintuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `trandau`
--
ALTER TABLE `trandau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_theloai_id_foreign` FOREIGN KEY (`TheLoai_id`) REFERENCES `theloai` (`id_TheLoai`);

--
-- Các ràng buộc cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD CONSTRAINT `thanhvien_ibfk_1` FOREIGN KEY (`DoiBong_id`) REFERENCES `doibong` (`id`);

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_loaitin_id_foreign` FOREIGN KEY (`LoaiTin_id`) REFERENCES `loaitin` (`id_LoaiTin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
