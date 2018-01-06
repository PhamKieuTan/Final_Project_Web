/*
Navicat MySQL Data Transfer

Source Server         : xampp_mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : thegioilinhkiendientu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-25 22:52:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chitietdondathang
-- ----------------------------
DROP TABLE IF EXISTS `chitietdondathang`;
CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaSanPham` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaChiTietDonDatHang`),
  KEY `fk_CHITIET_DATHANG` (`MaDonDatHang`),
  KEY `fk_SanPham_DatHang` (`MaSanPham`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chitietdondathang
-- ----------------------------

-- ----------------------------
-- Table structure for dondathang
-- ----------------------------
DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `MaTinhTrang` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDonDatHang`),
  KEY `fk_TinhTrang_DonHang` (`MaTinhTrang`),
  KEY `fk_TaiKHoanDatHAng` (`MaTaiKhoan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dondathang
-- ----------------------------

-- ----------------------------
-- Table structure for hangsanxuat
-- ----------------------------
DROP TABLE IF EXISTS `hangsanxuat`;
CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaHangSanXuat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hangsanxuat
-- ----------------------------
INSERT INTO `hangsanxuat` VALUES ('1', 'ASus', 'logo-hang\\brand-asus.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('2', 'Apple', 'logo-hang\\brand-apple.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('3', 'Lenovo', 'logo-hang\\brand-lenovo.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('4', 'Samsung', 'logo-hang\\brand-samsung.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('5', 'Sony', 'logo-hang\\brand-sony.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('6', 'Kingmax', 'logo-hang\\brand-kingmax.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('7', 'Sandisk', 'logo-hang\\brand-sandisk.png', '\0');
INSERT INTO `hangsanxuat` VALUES ('8', 'Dell', 'logo-hang\\brand-dell.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('9', 'Logitech', 'logo-hang\\brand-logitech.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('10', 'HP', 'logo-hang\\brand-hp.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('11', 'WD', 'logo-hang\\brand-WD.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('12', 'Transcend', 'logo-hang\\transcend.png', '\0');
INSERT INTO `hangsanxuat` VALUES ('13', 'Dell', 'logo-hang\\brand-dell.jpg', '\0');

-- ----------------------------
-- Table structure for loaisanpham
-- ----------------------------
DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSanPham`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of loaisanpham
-- ----------------------------
INSERT INTO `loaisanpham` VALUES ('1', 'Phụ Kiện Điện Thoại', '\0');
INSERT INTO `loaisanpham` VALUES ('2', 'Ram', '\0');
INSERT INTO `loaisanpham` VALUES ('3', 'Ổ Cứng', '\0');
INSERT INTO `loaisanpham` VALUES ('4', 'Sản Phẩm Apple', '\0');
INSERT INTO `loaisanpham` VALUES ('5', 'USB + Thẻ Nhớ', '\0');
INSERT INTO `loaisanpham` VALUES ('6', 'Phụ Kiện Laptop', '\0');
INSERT INTO `loaisanpham` VALUES ('7', 'Laptop Xách Tay', '\0');
INSERT INTO `loaisanpham` VALUES ('8', 'Phần Mềm', '\0');
INSERT INTO `loaisanpham` VALUES ('9', 'Thiết Bị Mạng', '\0');
INSERT INTO `loaisanpham` VALUES ('10', 'CPU New', '\0');
INSERT INTO `loaisanpham` VALUES ('11', 'Main New', '\0');

-- ----------------------------
-- Table structure for loaitaikhoan
-- ----------------------------
DROP TABLE IF EXISTS `loaitaikhoan`;
CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaLoaiTaiKhoan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of loaitaikhoan
-- ----------------------------
INSERT INTO `loaitaikhoan` VALUES ('1', 'thường');
INSERT INTO `loaitaikhoan` VALUES ('2', 'thân thiết');
INSERT INTO `loaitaikhoan` VALUES ('3', 'VIP');
INSERT INTO `loaitaikhoan` VALUES ('4', 'Admin');

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuotXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci,
  `BiXoa` bit(1) DEFAULT NULL,
  `MaLoaiSanPham` int(11) DEFAULT NULL,
  `MaHangSanXuat` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `MaLoaiSanPham` (`MaLoaiSanPham`),
  KEY `MaHangSanXuat` (`MaHangSanXuat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES ('1', 'dán màn hình iP8 JCPAL Glass Screen', 'images\\sp01.jpg', '190', '2017-11-17 08:09:35', '1000', '111', '555', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('2', 'Bao da iPad 10.5\'\' JCPAL - JCP5182', 'images\\sp02.png', '348', '2017-11-17 08:10:53', '1000', '111', '555', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('3', 'Túi chống xốc JCPAL Neoprene Classic Sleeves', 'images\\sp03.jpg', '520', '2017-11-17 08:12:15', '1000', '111', '555', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('4', 'Bao da iPad 10.5 Cosmo', 'images\\sp04.jpg', '850', '2017-11-17 08:15:03', '1000', '111', '555', null, '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('5', 'Ốp iPhone 7 Plus Polo Rainbow', '', '130', '2017-11-17 08:16:01', '1000', '111', '555', null, '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('6', 'Bao da iPad 10.5\" iPearl Cooplay + Stylus', 'images\\sp05.jpg', '530', '2017-11-17 19:45:50', '1000', '111', '555', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('7', 'MOUSE LOGITECH B100 OPTICAL USB', 'images\\mouse01.jpg', '100', '2017-12-13 19:47:36', '1000', '154', '568', 'Chuột quang có dây', '\0', '6', '9');
INSERT INTO `sanpham` VALUES ('8', 'KEYBOARD LOGITECH K120 Black USB', 'images\\kbard01.jpg', '180', '2017-12-03 19:50:18', '1000', '54', '896', 'Thoải mái, êm tay khi đánh máy. Ký tự to và sáng. Thiết kế bền bỉ, chống thấm. Kết nối Plug and play qua cổng USB', '', '6', '9');
INSERT INTO `sanpham` VALUES ('9', 'cáp điện thoại Elecom1m', 'images\\ct01.jpg', '399', '2017-12-08 19:52:49', '500', '156', '465', null, '', '9', null);
INSERT INTO `sanpham` VALUES ('10', 'cáp micro USB elecom ', 'images\\ct02.jpg', '109', '2017-05-05 19:53:43', '250', '46', '321', null, '\0', '9', null);
INSERT INTO `sanpham` VALUES ('11', 'cáp 3 in 1 Pisen ', 'images\\ct03.jpg', '108', '2017-07-13 19:54:32', '100', '51', '68', null, '\0', '9', null);
INSERT INTO `sanpham` VALUES ('12', 'Cáp micro USB Belkin 1.2m', 'images\\ct04.jpg', '642', '2016-10-14 19:55:36', '300', '123', '231', null, '\0', '9', null);
INSERT INTO `sanpham` VALUES ('13', 'cáp Type C Belkin 1.8m', 'images\\ct05.jpg', '540', '2016-12-15 19:57:30', '156', '254', '7645', null, '\0', '9', null);
INSERT INTO `sanpham` VALUES ('14', 'NOTEBOOK HP 15-ay073TU', 'images\\st01.jpg', '8490', '2016-09-22 19:58:39', '325', '123', '456', null, '\0', '7', '10');
INSERT INTO `sanpham` VALUES ('15', 'NOTEBOOK DELL INSPIRON 3552', 'images\\st02.jpg', '6600', '2016-10-12 19:59:38', '516', '465', '1230', 'Intel Celeron N3060(1.6Ghz, 1600Mhz ), 4GB DDR3, NO DVD-RW500GB HDD, 15.6” HD LED , Intel HD Graphics, Wireless 802.11 b/g/n, 100/1000Mbps Ethernet ,Webcam, Micro, 5 in 1 Card reader, Bluetooth 4.0, DOS ', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('16', 'miếng dán màn hình IP7 Plus ', 'images\\dmh01.jpg', '100', '2017-12-13 20:00:36', '1245', '100', '200', 'dán màn hình', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('17', 'DDR4 8GB/2400 KINGMAX (Heatsink) – tản nhiệt', 'images\\ram01.jpg', '245', '2017-09-08 20:02:22', '456', '235', '123', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('18', 'DDRIII 4GB Bus 1333 Kingmax', 'images\\ram02.jpg', '480', '2017-07-21 20:04:28', '154', '265', '356', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('19', 'DDRIII 4GB BUS 1600 KINGMAX', 'images\\ram03.jpg', '550', '2017-06-20 20:33:53', '256', '356', '456', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('20', 'DDR4 4GB/2400 KINGMAX (05102)', 'images\\ram04.jpg', '1190', '2017-04-27 20:08:09', '0', '156', '3548', 'Bảo hành 36 tháng', '', '2', '6');
INSERT INTO `sanpham` VALUES ('21', 'DDRIII 8GB Bus 1600 Kingmax', 'imagesam\\ram05.jpg', '1500', '2017-02-24 20:32:42', '15', '46', '215', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('22', 'DDR4 8GB/2400 KINGMAX (05242)', 'images\\ram06.jpg', '2300', '2017-07-26 20:34:01', '68', '21', '45', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('23', 'HDD 3.5 WD 500GB BLUE SATA 6Gb/s 32MB', 'images\\oc01.jpg', '1150', '2016-11-18 20:35:15', '89', '11', '25', 'HDD 3.5 WD 500GB BLUE SATA 6Gb/s 32MB CACHE 7200RPM (WD5000AZLX)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('24', 'HDD 3.5 WD 1TB BLUE SATA 6Gb/s 64MB', 'images\\oc02.jpg', '1250', '2017-03-17 20:36:08', '89', '11', '26', 'HDD 3.5 WD 1TB BLUE SATA 6Gb/s 64MB CACHE 7200RPM (WD10EZEX)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('25', 'HDD 3.5 WD 1TB PURPLE AV SATA 6Gb/s 64MB)', 'images\\oc03.jpg', '1600', '2017-04-20 20:36:48', '0', '100', '258', 'ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('26', 'HDD 3.5 WD 2TB BLUE SATA 6 Gb/s 64MB', 'images\\oc04.jpg', '1850', '2017-06-22 20:38:03', '45', '54', '56', 'Bảo hành: 24 tháng', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('27', 'HDD 3.5 WD 2TB PURPLE AV SATA 6Gb/s 64MB', 'images\\oc05.jpg', '2100', '2016-09-28 20:39:41', '354', '85', '156', 'HDD 3.5 WD 2TB PURPLE AV SATA 6Gb/s 64MB CACHE 7200RPM (WD20PURX), ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('28', 'HDD 3.5 WD 2TB RED SATA 6Gb/s 64MB', 'images\\oc06.jpg', '2400', '2017-01-18 20:41:50', '358', '45', '58', 'Designed specifically for NAS systems and 24×7 reliability, CACHE 5400RPM (WD20EFRX) ', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('29', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB', 'images\\oc07.jpg', '3250', '2017-03-02 20:43:09', '35', '458', '685', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB, Maximum performance for power computing. Power Dissipation: Read/Write: 9.5 Watts: Idle: 8.1 Watts; Standby: 1.3 Watts; Sleep:1.3 Watts. Recommended use: WD Black hard drives are tested and recommended for use in PCs, high-performance workstations, all-in-one PCs, gaming PCs, game consoles, home media PCs and notebook computers.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('30', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB', 'images\\oc08.jpg', '3250', '2017-09-23 20:44:25', '68', '48', '225', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB CACHE 7200RPM (WD2003FZEX), Maximum performance for power computing. Power Dissipation: Read/Write: 9.5 Watts: Idle: 8.1 Watts; Standby: 1.3 Watts; Sleep:1.3 Watts. Recommended use: WD Black hard drives are tested and recommended for use in PCs, high-performance workstations, all-in-one PCs, gaming PCs, game consoles, home media PCs and notebook computers.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('31', 'HDD 3.5 WD 3TB PURPLE AV SATA 6Gb/s 64MB', 'images\\oc09.jpg', '3350', '2017-05-19 20:53:08', '48', '65', '86', 'HDD 3.5 WD 3TB PURPLE AV SATA 6Gb/s 64MB CACHE 7200RPM (WD30PURX), ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID, Bảo hành: 36 tháng', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('42', 'Tai nghe Logitech H340', 'images\\tainghe01.jpg', '595', '2017-09-21 20:18:43', '65', '86', '485', 'Kết nối: Cổng USB, Tần số đáp ứng tai nghe: 20 – 20,000 Hz, Tần số đáp ứng microphone: 100-10,000Hz', '\0', '6', '9');
INSERT INTO `sanpham` VALUES ('32', 'HDD 3.5 WD 4TB BLUE SATA 6 Gb/s 64MB', 'images\\oc10.jpg', '3400', '2016-12-08 19:39:10', '48', '65', '86', 'HDD 3.5 WD 4TB BLUE SATA 6 Gb/s 64MB CACHE 5400RPM (WD40EZRZ)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('33', 'SSD SANDISK 120GB EXTREME PORTABLE 500 USB', 'images\\oc11.jpg', '2200', '2017-03-20 19:40:23', '48', '65', '86', 'SSD SANDISK 120GB EXTREME PORTABLE 500 USB 3.0 EXTERNAL, SSD gắn ngoài thiết kế nhỏ gọn vừa lòng bàn tay dễ dàng mang theo Tốc độ đọc 430MB/s.Tốc độ ghi 400Mb/s.Chống sốc tối ưu', '\0', '3', '7');
INSERT INTO `sanpham` VALUES ('34', 'Điện thoại iPhone X 256GB A1901', 'images\\ipx-64A19.jpg', '34700', '2017-07-20 19:43:08', '48', '65', '86', 'Không còn nghi ngờ gì nữa, kiểu dáng của chiếc iPhone X được lấy cảm hứng thiết kế từ iPhone 4. Với bộ khung kim loại bóng bẩy cùng 2 lớp kính ở mặt trước/sau, siêu phẩm này thực sự quá bắt mắt và sang trọng. Đặc biệt, lớp kính mà Apple sử dụng đã được các đối tác gia công đến 7 lớp màu khác nhau nhằm giúp ngoại hình máy trở nên rất nổi bật.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('35', 'Điện thoại iPhone X 64GB A1901', 'images\\ipx-64A19.jpg', '29900', '2017-10-06 19:44:25', '48', '68', '89', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('36', 'Điện thoại iPhone 8 Plus 64GB', 'images\\ip8p-64.jpg', '23990', '2017-11-29 19:45:13', '48', '59', '65', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('37', 'Điện thoại iPhone 8 64GB', 'images\\ip8-64.jpg', '20990', '2017-10-19 19:46:13', '48', '59', '686', 'Tuy iPhone X mới là thiết bị được nhiều người quan tâm nhưng bộ đôi iPhone 8 và 8 Plus cũng có nhiều tính năng được nâng cấp mạnh mẽ so với thế hệ tiền nhiệm.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('38', 'Máy tính bảng Apple iPad Pro 2017 10.5', 'images\\ipad-pro2017.jpg', '19900', '2017-10-19 19:48:24', '86', '87', '564', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('39', 'Máy tính bảng Apple iPad 2017 128GB', 'images\\ipad-pro2017.jpg', '14990', '2017-12-06 19:50:15', '68', '76', '854', 'Với con chip Apple A9 2 nhân 64-bit, 1.84 GHz, RAM 2 GB kết hợp với hệ điều hành iOS mượt mà sẽ mang lại cho bạn trải nghiệm mượt mà và trơn tru mà khó có thiết bị nào cùng phân khúc có thể đem lại.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('40', 'Laptop MacBook MQD32HN/A', 'images\\lapmac01.jpg', '23000', '2017-12-14 19:51:39', '35', '48', '564', 'Tự hào có một sự kết hợp tuyệt vời của vẻ và hiệu suất. Với một thân máy siêu mỏng và mỏng, chiếc MacBook thời trang này nhẹ và xách tay. Nó được thiết kế với bộ vi xử lý Intel Core i5 Dual-Core 1.8Ghz đảm bảo hiệu suất không bị gián đoạn bất cứ lúc nào.\r\n\r\nBộ nhớ RAM 8GB cung cấp trải nghiệm đa tác vụ liền mạch. Ngoài ra, bộ nhớ SSD 128GB cung cấp khả năng truy cập dữ liệu tốc độ cao và hiệu suất cực kỳ mạnh mẽ. Nó giúp bạn nhập các tập tin lớn hoặc khởi chạy nhiều ứng dụng trong một đèn flash.\r\n\r\nĐược trang bị tiện ích Intel HD Graphics 6000, máy tính xách tay này làm cho các buổi chơi game thú vị hơn với đồ họa nâng cao.\r\n\r\nMacBook này có màn hình 13inch với độ phân giải màn hình tuyệt đẹp 1440 x 900 pixel. Pin mạnh mẽ cho phép bạn tự do tiếp tục và tiếp tục trong 12 giờ với một lần sạc duy nhất.\r\n\r\nMáy tính xách tay Apple MacBook Air có kết cấu bạc tuyệt đẹp làm cho nó trông thanh lịch và sang trọng.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('41', 'Laptop MacBook 12\" MNYN2SA/A', 'images\\lapmac02.jpg', '40300', '2017-10-19 19:53:10', '655', '865', '2315', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('43', 'USB Transcend JETFLASH 700 16GB (01004)', 'images\\usb01.jpg', '190', '2017-12-26 20:21:05', '68', '59', '321', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('44', 'USB Transcend Jetflash 820 USB 3.0 16GB', 'images\\usb02.jpg', '265', '2017-12-25 20:22:39', '86', '98', '321', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('45', 'USB HP V245 – 8GB (01070)', 'images\\usb03.jpeg', '185', '2017-12-25 20:23:12', '86', '89', '654', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('46', 'USB Transcend JetFlash 810 16GB/3.0 (03404)', 'images\\usb04.jpg', '290', '2017-12-25 20:23:48', '86', '89', '165', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('47', 'USB 8GB HP v225w (2.0)', 'images\\usb05.jpg', '180', '2017-12-25 20:25:51', '86', '98', '465', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('48', 'USB 8GB HP v250w', 'images\\usb06.jpg', '205', '2017-12-25 20:26:32', '96', '56', '231', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('49', 'NOTEBOOK ASUS X441UA – GA070', 'images\\st03.jpg', '9790', '2017-12-25 20:38:02', '86', '78', '984', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), Intel 8 Series Express, 1x 4GB DDR4/2133 (chỉ 1 slot), 500GB SATA3 (5400rpm), DVDRW, 14.0 16:9 HD (1366×768) LED Backlight, Intel HD Graphics 620, Atheros (802.11 b/g/n), VGA, HDMI, Webcam Lan 100, Wifi N, BT 4.0, Reader, 2.0Kg, Pin 3 Cell, Dos, Thiết kế mới năm 2017, 1 x USB 2.0 ; 1 x USB 3.0 ; 1 x USB 3.1 ; 1 x VGA ; 1 x HDMI 1.4 ; 1 x COMBO audio jack', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('50', 'NOTEBOOK DELL INSPIRON N3467', 'images\\st04.jpg', '10390', '2017-12-25 20:39:25', '95', '65', '845', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), 4GB Single Channel DDR4 2400MHz (4GBx1)/1 empty,1 used, 1TB 5400 rpm Hard, DVDRW, 14.0 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 620, Wireless 1810 Card,720p HD camera, HDMI , USB 3.0, 2.0Kg, 40 WHr,4-Cell Battery, DOS, Vỏ chống trầy xước, SD Card Reader (SD, SDHC, SDXC),1 VGA, 1 HDMI out, 1 RJ-45, 2 USB 3.0, 1 USB 2.0', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('51', 'NOTEBOOK DELL VOSTRO V5468 -VTI35008', 'images\\st05.jpg', '12550', '2017-12-25 20:40:19', '65', '89', '150', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), Intel 8 Series Express, 4GB DDR4 bus 2400MHz, 500 GB SATA, NO, 14.0 inch HD, 1366 x 768 Pixels Anti-Glare LED-Backlit Display, Intel HD Graphics 720, Dual Band 2.4&5 GHz, 1×1 Wireless Driver, Card Reader , Webcam , Microphone, Bluetooth, HDMI, 1.6Kg, PIn 3 Cell, DOS, Màu: GOLD', '\0', '7', '8');

-- ----------------------------
-- Table structure for taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` bit(1) DEFAULT NULL,
  `MaLoaiTaiKhoan` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaTaiKhoan`),
  KEY `fk_Loai_TaiKhoan` (`MaLoaiTaiKhoan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taikhoan
-- ----------------------------
INSERT INTO `taikhoan` VALUES ('1', 'nguyenhieplinh', '11', 'LInh', '75/3 Ngô Gia TỰ', '01665554635', 'hanamisaomachi@gmail.com', '\0', '1');
INSERT INTO `taikhoan` VALUES ('2', 'phamtankieu', '11', 'Kiều', '76/8 Ngô Gia Tự', '01654865321', 'kieupham17548@gmail.com', '\0', '2');
INSERT INTO `taikhoan` VALUES ('3', 'PhamNghia', '11', 'Nghĩa', '77/9 Ngô Gia Tự', '01865478612', 'Nghianhanduc@gmail.com', '\0', '3');
INSERT INTO `taikhoan` VALUES ('4', 'LinhAdmin', '76845862126', 'Admin Linh Alhzeimer', null, null, null, null, '4');
INSERT INTO `taikhoan` VALUES ('5', 'KieuAdmin', '65846512587', 'Admin Kiều', null, null, null, null, '4');
INSERT INTO `taikhoan` VALUES ('6', 'NghiaAdmin', '95486123548', 'Admin Nghĩa', null, null, null, null, '4');

-- ----------------------------
-- Table structure for tinhtrang
-- ----------------------------
DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaTinhTrang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tinhtrang
-- ----------------------------
INSERT INTO `tinhtrang` VALUES ('1', 'Đang chờ');
INSERT INTO `tinhtrang` VALUES ('2', 'Đang giao');
INSERT INTO `tinhtrang` VALUES ('3', 'Đã giao');
