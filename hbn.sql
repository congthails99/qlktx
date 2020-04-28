-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 28, 2020 lúc 04:27 PM
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
-- Cơ sở dữ liệu: `hbn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `manhanvien` int(11) NOT NULL,
  `sophong` int(11) DEFAULT NULL,
  `khunha` varchar(50) DEFAULT NULL,
  `ngaylap` date DEFAULT NULL,
  `tongtien` float DEFAULT NULL,
  `macongtodien` int(11) DEFAULT NULL,
  `chisodiendau` int(11) DEFAULT NULL,
  `chisodiencuoi` int(11) DEFAULT NULL,
  `macongtonuoc` int(11) DEFAULT NULL,
  `chisonuocdau` int(11) DEFAULT NULL,
  `chisonuoccuoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `mahopdong` int(50) NOT NULL,
  `masinhvien` int(11) DEFAULT NULL,
  `manhanvien` int(11) DEFAULT NULL,
  `sophong` int(11) NOT NULL,
  `khunha` varchar(50) NOT NULL,
  `ngaylap` date DEFAULT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hopdong`
--

INSERT INTO `hopdong` (`mahopdong`, `masinhvien`, `manhanvien`, `sophong`, `khunha`, `ngaylap`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 675105003, 1, 111, 'A6', '2020-04-15', '2020-04-15', '2020-04-22'),
(19, 675105005, 1, 111, 'A6', '2020-04-08', '2020-04-15', '2020-04-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manhanvien` int(11) NOT NULL,
  `hoten` varchar(50) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(50) DEFAULT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manhanvien`, `hoten`, `ngaysinh`, `gioitinh`, `diachi`, `chucvu`, `sdt`) VALUES
(1, 'nguyễn văn đức', '1999-03-20', 'nam', 'hà nội', 'admin', 961222999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `sophong` int(11) NOT NULL,
  `khunha` varchar(50) NOT NULL,
  `manhanvien` int(11) DEFAULT NULL,
  `soluongsinhvien` int(11) DEFAULT NULL,
  `tinhtrangphong` varchar(50) DEFAULT NULL,
  `mota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`sophong`, `khunha`, `manhanvien`, `soluongsinhvien`, `tinhtrangphong`, `mota`) VALUES
(111, 'A6', 1, 8, 'ok', 'không co gì');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` int(11) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` int(20) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `lop` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hongheo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `hoten`, `ngaysinh`, `gioitinh`, `cmnd`, `sdt`, `lop`, `khoa`, `hongheo`) VALUES
(675105003, 'Vũ Danh Đức', '2020-04-07', 'nam', 12345678, 0, 'K67B', 'Công nghệ thông tin', ''),
(675105005, 'Vũ Danh Đức', '2020-04-07', 'nu', 123, 961009434, '', '', ''),
(675105006, 'Vũ Danh Đức', '2020-04-07', 'nam', 12345678, 961009434, 'K67c', 'Công nghệ thông tin', 'co');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `mavv_pk` (`manhanvien`),
  ADD KEY `sophong_hd_pk` (`sophong`,`khunha`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`mahopdong`),
  ADD KEY `manv_pk` (`manhanvien`),
  ADD KEY `masv_pk` (`masinhvien`),
  ADD KEY `sophong_pk` (`sophong`,`khunha`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manhanvien`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`sophong`,`khunha`),
  ADD KEY `manhvien_pk` (`manhanvien`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `manhanvien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `mahopdong` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `sophong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `masinhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675105007;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `mavv_pk` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`manhanvien`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sophong_hd_pk` FOREIGN KEY (`sophong`,`khunha`) REFERENCES `phong` (`sophong`, `khunha`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `manv_pk` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`manhanvien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `masv_pk` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sophong_pk` FOREIGN KEY (`sophong`,`khunha`) REFERENCES `phong` (`sophong`, `khunha`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `manhvien_pk` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`manhanvien`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
