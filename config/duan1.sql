-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2022 lúc 07:40 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'Billy', 'Revellame', 'revellame28@gmail.com', 'bluedcoffee', 'admin'),
(2, 'Clark', 'Banaag', 'banaaghub.com', 'clarkpogi', 'a1Bz20ydqelm8m1wql7c6f5bdc16b3748b481fb5ea98bd4ace'),
(3, 'admin', 'admin', 'admin@admin.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(11) NOT NULL,
  `ma_kh` varchar(20) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_bl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `ma_kh`, `ma_hh`, `noi_dung`, `ngay_bl`) VALUES
(1, 'admin', 14, 'quas dep', '2022-10-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Áo'),
(2, 'Quần'),
(3, 'Giày'),
(4, 'Mũ'),
(5, 'Phụ kiện'),
(6, 'Balo'),
(7, 'Túi xách'),
(8, 'Ví'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `middlename` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL,
  `ten_hh` varchar(60) NOT NULL,
  `don_gia` float NOT NULL,
  `giam_gia` float DEFAULT NULL,
  `hinh` varchar(100) DEFAULT NULL,
  `ma_loai` int(11) DEFAULT NULL,
  `dac_biet` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Đánh dấu hàng đặc biệt hay không, 1 là đặc biệt',
  `so_luot_xem` int(11) DEFAULT 0,
  `ngay_nhap` date NOT NULL,
  `mo_ta` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ma_loai`, `dac_biet`, `so_luot_xem`, `ngay_nhap`, `mo_ta`) VALUES
(1, 'Af1 ', 500, 300, 'z3247462482775_df30e1348b3fbd3896c3a62adedc9d64.jpg', 1, b'1', 3, '2022-10-07', 'aaaaaaaaaaaaaaaaaaaaaa'),
(2, 'Áo ', 500, 280, 'AoThun.jpg', 2, b'1', 69, '2022-10-07', 'aaaaaaaaaaaaaaaaaaaaaa'),
(3, 'Áo Khoác Nâu', 500, 10, 'AoKhoach.jpg', 1, b'1', 67, '2022-10-07', 'aaaaaaaaaaaaaaaaaaaaaa'),
(4, 'Giày NY ', 500, 10, 'z3247462482813_e45a3554a272ac5a52de6245e94cd7e8.jpg', 1, b'1', 1, '2022-10-07', 'Một trong những dòng sản phẩm đang bán chạy nhất thị trường hiện nay'),
(5, 'Shop thấy quá là mệt ', 500, 0, 'z3247462482775_df30e1348b3fbd3896c3a62adedc9d64.jpg', 1, b'1', 2, '2022-10-07', ''),
(6, 'Giày NY ', 500, 10, 'z3247462482767_e373676db20fab7b7d616bbc58b47615.jpg', 1, b'1', 0, '2022-10-07', 'Một trong những dòng sản phẩm đang bán chạy nhất thị trường hiện nay'),
(7, 'giày1111', 800, 10, 'z3247462482767_e373676db20fab7b7d616bbc58b47615.jpg', 1, b'1', 66, '2022-10-11', 'aaaaaaaaaaaaaaaaaaaaaa'),
(9, 'Giày NY ', 500, 10, 'z3247462482813_e45a3554a272ac5a52de6245e94cd7e8.jpg', 1, b'1', 0, '2022-10-12', 'Một trong những dòng sản phẩm đang bán chạy nhất thị trường hiện nay'),
(10, 'Giày NY ', 500, 10, 'z3247462482793_ba319e4ad559ebf7a9fe8054d2919652.jpg', NULL, b'1', 0, '2022-10-12', 'aaaaaaaaaaaaaaaaaaaaaa'),
(11, 'Giày NY ', 500, 10, 'z3247462482763_fcf538a6512203b659adefffe4c47d2a.jpg', 1, b'1', 0, '2022-10-12', 'aaaaaaaaaaaaaaaaaaaaaa'),
(12, 'Giày NY ', 500, 10, 'z3247462482775_df30e1348b3fbd3896c3a62adedc9d64.jpg', 1, b'1', 0, '2022-10-12', ''),
(13, 'Giày NY ', 500, 10, 'z3247462482763_fcf538a6512203b659adefffe4c47d2a.jpg', NULL, b'1', 1, '2022-10-12', 'aaaaaaaaaaaaaaaaaaaaaa'),
(14, 'quần thun', 700000, 10, 'quan.jpg', 6, b'1', 3, '2022-10-12', 'chiếc quần đáng yêu'),
(15, 'vape xịn', 500, 10, 'vape.jpg', 1, b'1', 0, '2022-10-12', 'vape xịn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `mat_khau` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hinh` varchar(100) DEFAULT NULL COMMENT 'Đại chỉ file hình',
  `kich_hoat` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Trạng thái kích hoạt, 0 là chưa kích hoạt',
  `vai_tro` bit(1) NOT NULL DEFAULT b'0' COMMENT '0 là khách hàng thường, 1 là quản trị viên'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_ten`, `mat_khau`, `email`, `hinh`, `kich_hoat`, `vai_tro`) VALUES
('admin', 'Tran Hoang Nhan', '1901@Nhan', 'hoangnhantran@outlook.com', NULL, b'1', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(11) NOT NULL COMMENT 'Mã loại hàng',
  `ten_loai` varchar(50) NOT NULL COMMENT 'Tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'Sneakers'),
(2, 'Áo thun'),
(3, 'Áo Khoác'),
(4, 'Vape'),
(6, 'Quần dài');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added a new product 12 of flmjkrmklm', '2022-11-04 18:25:35'),
(2, 1, 'added a new product 34 of gdrgneknkl', '2022-11-04 18:26:04'),
(3, 1, 'added a new product 78 of bdkj', '2022-11-04 18:26:48'),
(4, 0, 'added a new product 133 of Arduino Meta', '2022-11-05 13:00:22'),
(5, 1, 'added a new product 477 of Sugo Peanuts', '2022-11-05 18:15:15'),
(6, 0, 'added a new product 123 of kmyygk', '2022-11-06 11:21:42'),
(7, 5, 'has logged in the system at ', '2022-11-06 21:53:21'),
(8, 1, '(Administrator) has logged in the system at ', '2022-11-06 21:56:17'),
(9, 5, 'has logged in the system at ', '2022-11-06 22:25:17'),
(10, 1, '(Administrator) has logged in the system at ', '2022-11-06 22:25:38'),
(11, 2, '(Administrator) has logged in the system at ', '2022-11-06 23:22:24'),
(12, 5, 'has logged in the system at ', '2022-11-07 00:08:10'),
(13, 1, '(Administrator) has logged in the system at ', '2022-11-07 10:14:23'),
(14, 1, '(Administrator) has logged in the system at ', '2022-11-07 10:33:43'),
(15, 1, '(Administrator) has logged in the system at ', '2022-11-07 10:36:37'),
(16, 1, '(Administrator) has logged in the system at ', '2022-11-07 10:39:08'),
(17, 1, '(Administrator) has logged in the system at ', '2022-11-07 10:39:41'),
(18, 4, 'has logged in the system at ', '2022-11-07 11:04:22'),
(19, 1, '(Administrator) has logged in the system at ', '2022-11-07 11:04:30'),
(20, 4, 'has logged in the system at ', '2022-11-07 11:44:36'),
(21, 4, 'has logged in the system at ', '2022-11-07 18:32:28'),
(22, 1, '(Administrator) has logged in the system at ', '2022-11-07 18:32:49'),
(23, 4, 'has logged in the system at ', '2022-11-07 18:34:55'),
(24, 1, '(Administrator) has logged in the system at ', '2022-11-07 18:39:23'),
(25, 1, 'added a new product 33 of San Marino Corned Tuna', '2022-11-07 18:40:25'),
(26, 1, 'added a new product 453 of 4535', '2022-11-07 18:43:34'),
(27, 1, '(Administrator) has logged in the system at ', '2022-11-07 19:16:29'),
(28, 1, '(Administrator) has logged in the system at ', '2022-11-07 19:17:07'),
(29, 4, 'has logged in the system at ', '2022-11-07 19:27:49'),
(30, 1, '(Administrator) has logged in the system at ', '2022-11-07 19:28:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '447', '455.00', 5, ''),
(99, 15, 1, '447', '455.00', 6, ''),
(100, 16, 1, '', '1500.00', 6, ''),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '447', '455.00', 8, ''),
(104, 14, 1, '221', '760.00', 9, '1'),
(105, 17, 1, '25', '2200.00', 9, '1'),
(106, 15, 8, '447', '3640.00', 12, '1'),
(107, 15, 10, '439', '4550.00', 9, '1'),
(108, 15, 8, '439', '3640.00', 12, '1'),
(109, 17, 6, '24', '13200.00', 12, '1'),
(110, 17, 1, '24', '2200.00', 12, '1'),
(111, 12, 1, '390', '155.00', 12, '1'),
(112, 11, 3, '99', '375.00', 12, '1'),
(113, 11, 1, '99', '125.00', 12, '1'),
(114, 12, 8, '382', '1240.00', 12, '1'),
(115, 15, 1, '429', '455.00', 12, '1'),
(116, 11, 6, '93', '750.00', 12, '1'),
(117, 11, 1, '92', '125.00', 12, '1'),
(118, 11, 1, '91', '125.00', 12, '1'),
(119, 11, 1, '', '125.00', 9, '1'),
(120, 17, 8, '', '17600.00', 12, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_serial` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_pic1` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_pic2` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_pic3` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(11, 'Vans Burgundy', 'Vans Burgundy', 91, '123.00', '125.00', 'Giày', 'Việt Nam', '1122330099', '1-1.jpg', '1-2.jpg', '1-3.jpg'),
(12, 'Nike Air Force 1', 'Nike Air Force 1', 382, '133.00', '155.00', 'Giày', 'Nike', '341156780', '2-1.jpg', '2-2.jpg', '2-3.jpg'),
(14, 'Áo POLO 3-STRIPES CLUB', 'Adidas Chính Hãng', 221, '700.00', '760.00', 'Áo', 'Adidas', '45422791', '3-1.jpg', '3-2.jpg', '3-3.jpg'),
(15, 'Adidas Black Polyester Polo T-Shirt Single Pack', ' T-Shirt Single Pack', 429, '450.00', '455.00', 'Áo', 'Adidas', '456523702', '4-1.jpg', '4-2.jpg', '4-3.jpg'),
(16, 'Campus DRAGON White Men\'s Sports Running Shoes', 'Able to sense product', 700, '1500.00', '1500.00', 'Giày', 'Nike', '890', '5-1.jpeg', '5-2.jpeg', '5-3.jpeg'),
(17, 'MŨ BÓNG CHÀY BA LÁ', 'Chiếc mũ bóng chày này có vành cong đúng chuẩn để bạn có thể đội ngay lập tức. Mũ làm từ chất liệu cotton thoải mái và có thêu logo Ba Lá ở chính giữa mặt trước. Quai điều chỉnh phía sau giúp bạn tùy chỉnh độ ôm vừa ý.', 24, '1000.00', '2200.00', 'Mũ', 'Adidas', '1353', '6-1.jpg', '6-2.jpg', '6-3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `supp_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `supp_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `supp_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(1, 'Adidas', 'New York', '(987)-884-12', 'picc@email.moto!'),
(2, 'Nike', 'California', '45643534567879', 'emal'),
(4, 'Bitis', 'Việt Nam', '9435398928', 'none'),
(5, 'Vans', 'Việt Nam', '0123', 'vans@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `prod_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `middlename` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(4, '0987', '0987', '0987', '0987', '0987', '0987', '0987', 'a1Bz20ydqelm8m1wql9e1e06ec8e02f0a0074f2fcc6b26303b'),
(6, 'Hilson', 'Vincent', 'Ramos', 'Luisiana', 'email@email', '8979677836432', 'hilson', 'a1Bz20ydqelm8m1wql60d6acbd6aa032526c5ebf214719d427'),
(7, 'Clark', 'Patrick', 'Banaag', 'Lucena', 'none', '83954390', 'clarkpogi', 'a1Bz20ydqelm8m1wql7c6f5bdc16b3748b481fb5ea98bd4ace'),
(8, 'Jeru Shalom', 'Azucena', 'Barlos', 'jkfhjksdhfjks', 'jerushalombarlos@gmail.com', '8998989', 'jeeru', 'a1Bz20ydqelm8m1wql827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'Harry', 'Jr', 'Den', 'espn', 'harryden@mail.com', '9876543210', 'harry', 'a1Bz20ydqelm8m1wqld3915844cde56f2dccfd24c7d34d12f0'),
(14, 'Nam', 'Vũ Hoài', 'Nguyễn', '253/22 Trần Xuân Soạn', 'nguyenvuhoainam810@gmail.com', '0123456', 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Chỉ mục cho bảng `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Chỉ mục cho bảng `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã loại hàng', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
