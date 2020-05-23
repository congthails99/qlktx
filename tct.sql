-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2020 lúc 09:45 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tct`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `user_admin` varchar(100) COLLATE utf32_unicode_ci NOT NULL,
  `pass_admin` tinytext COLLATE utf32_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`user_admin`, `pass_admin`, `id`) VALUES
('admin', 'admin', 0),
('thai', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_mua` timestamp NULL DEFAULT NULL,
  `tong_tien` float NOT NULL,
  `ghi_chu` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT NULL,
  `ngay_cap_nhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_mua`, `tong_tien`, `ghi_chu`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, '2020-04-19 10:00:00', 350000, '', '2020-04-19 10:00:00', NULL),
(2, 2, '2020-04-19 10:00:00', 900000, '', '2020-04-19 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don_chi_tiet`
--

CREATE TABLE `hoa_don_chi_tiet` (
  `ma_hoa_don_chi_tiet` int(11) NOT NULL,
  `ma_hoa_don` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia_san_pham` float NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT NULL,
  `ngay_cap_nhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don_chi_tiet`
--

INSERT INTO `hoa_don_chi_tiet` (`ma_hoa_don_chi_tiet`, `ma_hoa_don`, `ma_san_pham`, `so_luong`, `gia_san_pham`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 3, 1, 350000, '2020-04-19 10:00:00', NULL),
(2, 2, 19, 2, 1800000, '2020-04-19 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` timestamp NULL DEFAULT NULL,
  `ngay_cap_nhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ho_ten`, `ngay_sinh`, `email`, `gioi_tinh`, `dia_chi`, `so_dien_thoai`, `ghi_chu`, `ngaytao`, `ngay_cap_nhat`) VALUES
(1, 'Trần Xuân An', '0000-00-00', 'an@gmail.com', 'Nam', 'Hà Nam', '0987456123', 'không', '2020-04-19 10:00:00', NULL),
(2, 'Phạm Thị Ngọc', '0000-00-00', 'ngoc@gmail.com', 'Nữ', 'Nam Định', '0345678901', '', '2020-04-19 10:00:00', NULL),
(3, 'thái', '2020-05-30', '', 'Nam', 'Nghệ An', '0961009434', 'không', NULL, NULL),
(5, 'hoa', '2020-05-13', '', 'nữ', 'Hà Nội', '0912344', '', NULL, NULL),
(6, 'thai', '2020-05-20', '', 'nam', 'Ha nội', '09888', 'ok', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai_san_pham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noi_san_xuat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT NULL,
  `ngay_cap_nhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`ma_loai`, `ten_loai_san_pham`, `noi_san_xuat`, `mo_ta`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Áo sơ mi nam', 'Việt Nam', 'Áo sơ mi dành cho nam giới', '2020-04-19 10:00:00', NULL),
(2, 'Áo sơ mi nữ', 'Việt Nam', 'Áo sơ mi dành cho nữ', '2020-04-19 10:00:00', NULL),
(3, 'Áo khoác nam', 'Việt Nam', 'Áo khoác mùa đông dành cho nam', '2020-04-19 10:00:00', NULL),
(4, 'Áo khoác nữ', 'Việt Nam', 'Áo khoác mùa đông dành cho nữ', '2020-04-19 10:00:00', NULL),
(5, 'Bộ đá bóng nam', 'Mỹ', 'Bộ quần áo đá bóng mùa hè nam ', '2020-04-19 10:00:00', NULL),
(6, 'Áo dài nữ', 'Việt Nam', 'Bộ áo dài phụ nữa Việt Nam', '2020-04-19 10:00:00', NULL),
(7, 'Giày nam', 'Việt Nam', 'Giày Việt Nam chất lượng cao', '2020-04-19 10:00:00', NULL),
(8, 'Quần vải nam', 'Việt Nam', '', '2020-04-19 10:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_san_pham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nha_san_xuat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci NOT NULL,
  `gia_san_pham` float NOT NULL,
  `gia_khuyen_mai` float DEFAULT NULL,
  `anh_san_pham` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_san_xuat` timestamp NULL DEFAULT NULL,
  `han_su_dung` timestamp NULL DEFAULT NULL,
  `ngay_tao` date DEFAULT NULL,
  `ngay_cap_nhat` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ma_loai`, `ten_san_pham`, `images`, `nha_san_xuat`, `mo_ta`, `gia_san_pham`, `gia_khuyen_mai`, `anh_san_pham`, `ngay_san_xuat`, `han_su_dung`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 'Áo sơ mi caro nam', '1.jpg', 'Tiki', 'Chất lượng cao mặc đẹp', 100000, 90000, '', '2020-04-12 10:00:00', NULL, '2020-04-20', NULL),
(2, 1, 'Áo sơ mi nhiều màu nam', '2.jpg', 'Tiki', 'Đẹp', 2000, 30004, '', '2020-04-07 10:00:00', NULL, '2020-04-20', NULL),
(3, 1, 'Áo sơ mi nam trắng', '3.jpg', 'Owen', 'Phong cách - trẻ trung', 400000, 350000, '', '2020-04-02 10:00:00', NULL, '2020-04-20', NULL),
(4, 1, 'Sơ mi đỏ kẻ caro nam', '4.jpg', 'Owen', 'Sang trọng ', 300000, 270000, '', '2020-04-13 10:00:00', NULL, '2020-04-20', NULL),
(5, 2, 'Sơ mi nữ vàng ', '', 'Canifa', 'Đẹp', 400000, 360000, '', '2020-04-14 10:00:00', NULL, '2020-04-20', NULL),
(6, 2, 'Áo sơ mi nữ sọc caro', '', 'Canifa', 'Duyên dáng', 499000, 450000, '', '2020-04-07 10:00:00', NULL, '2020-04-20', NULL),
(7, 2, 'Áo sơ mi nữ trắng', '', 'Canifa', 'Xinh ', 500000, 300000, '', '2020-04-18 10:00:00', NULL, '2020-04-20', NULL),
(8, 2, 'Áo sơ mi nữ đỏ', '', 'Canifa', 'Phong cách', 600000, 580000, '', '2020-03-31 10:00:00', NULL, '2020-04-20', NULL),
(9, 3, 'Áo khoác nam mỏng', '', 'Adidas', 'Trẻ trung, khoẻ khoắn', 300000, 270000, '', '2020-04-13 10:00:00', NULL, '2020-04-20', NULL),
(10, 3, 'Áo khoác da nam', '', 'Canifa', 'Ấm áp', 1000000, 990000, '', '2020-04-06 10:00:00', NULL, '2020-04-20', NULL),
(11, 3, 'Áo khoác Jean nam', '', 'Levis', 'Đẳng cấp', 600000, 570000, '', '2020-04-08 10:00:00', NULL, '2020-04-20', NULL),
(12, 4, 'Áo khoác nhẹ nữ', '', 'Uniqlo', 'Nhẹ nhàng ấm áp', 300000, 290000, '', '2020-03-31 10:00:00', NULL, '2020-04-20', NULL),
(13, 4, 'Áo khoác da nữ', '', 'Canifa', 'Cuốn hút ', 990000, 950000, '', '2020-04-13 10:00:00', NULL, '2020-04-20', NULL),
(14, 4, 'Áo khoác nhẹ nữ', '', 'Nike', 'Nhẹ nhàng', 500000, 450000, '', '2020-04-05 10:00:00', NULL, '2020-04-20', NULL),
(15, 5, 'Bộ đá bóng Barcelona', '', 'Nike', 'Mạnh mẽ', 1500000, 1300000, '', '2020-04-13 10:00:00', NULL, '2020-04-20', NULL),
(16, 5, 'Bộ bóng đá RealMadrid', '', 'Adidas', '', 1500000, 1300000, '', '2020-04-08 10:00:00', NULL, '2020-04-20', NULL),
(17, 5, 'Bộ bóng đá MU', '', 'Adidas', 'Đẹp mắt - mát mẻ', 2000000, 1900000, '', '2020-04-13 10:00:00', NULL, '2020-04-20', NULL),
(18, 6, 'Áo dài nữ hoa sen', '', 'Vietnam', 'Duyên dáng', 700000, 670000, '', '2020-04-05 10:00:00', NULL, '2020-04-20', NULL),
(19, 6, 'Áo dài nữ màu trắng ', '', 'Vietnam', 'Duyên dáng', 1000000, 900000, '', '2020-04-01 10:00:00', NULL, '2020-04-20', NULL),
(20, 6, 'Áo dài nữ vàng', '', 'Vietnam', '', 1200000, 1000000, '', '2020-04-14 10:00:00', NULL, '2020-04-20', NULL),
(21, 7, 'Giày nam Bitis Hunter', '', 'Bitis', 'Đẹp', 990000, 800000, '', '2020-04-12 10:00:00', NULL, '2020-04-20', NULL),
(22, 7, 'Giày nam Anavas', '', 'Anavas', 'Chất lượng', 450000, 400000, '', '2020-03-31 10:00:00', NULL, '2020-04-20', NULL),
(23, 8, 'Quần vải nam đen', '', 'VNXK', '', 500000, 470000, '', '2020-04-07 10:00:00', NULL, '2020-05-13', NULL),
(24, 8, 'Quần vải nam tím than', '', 'VNXK', '', 600000, 500000, '', '2020-04-01 10:00:00', NULL, '2020-05-11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `ho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `ho_ten`, `email`, `so_dien_thoai`, `pass`) VALUES
(1, 'Nguyễn Văn Nam', 'nam@gmail.com', '0987654321', 'aaa'),
(2, 'Nguyễn Thị Xuân', 'xuan@gmail.com', '097766554', 'bbb'),
(3, 'Thái', 'truongcongthai199@gmail.com', '0961009434', '01071999'),
(15, 'aaa', 'host@change.me', '', '01071999'),
(16, 'huy', 'huy@.me', '09888', 'huy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_admin`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD PRIMARY KEY (`ma_hoa_don_chi_tiet`),
  ADD KEY `ma_hoa_don` (`ma_hoa_don`),
  ADD KEY `ma_san_pham` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `ma_khach_hang` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa_don_chi_tiet`
--
ALTER TABLE `hoa_don_chi_tiet`
  ADD CONSTRAINT `ma_hoa_don` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ma_san_pham` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `ma_loai` FOREIGN KEY (`ma_loai`) REFERENCES `loai_san_pham` (`ma_loai`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
