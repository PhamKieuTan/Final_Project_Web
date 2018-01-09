/*
Navicat MySQL Data Transfer

Source Server         : xampp_mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : thegioilinhkiendientu

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-01-10 00:26:33
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
INSERT INTO `dondathang` VALUES ('1', '0000-00-00 00:00:00', '120000000', '2', '1');
INSERT INTO `dondathang` VALUES ('2', '0000-00-00 00:00:00', '6000000', '1', '1');
INSERT INTO `dondathang` VALUES ('3', '0000-00-00 00:00:00', '10000000', '3', '1');
INSERT INTO `dondathang` VALUES ('4', '0000-00-00 00:00:00', '65689000', '4', '1');
INSERT INTO `dondathang` VALUES ('5', '0000-00-00 00:00:00', '90097660', '4', '1');
INSERT INTO `dondathang` VALUES ('6', '0000-00-00 00:00:00', '90000000', '1', '1');
INSERT INTO `dondathang` VALUES ('7', '0000-00-00 00:00:00', '6700000', '5', '2');
INSERT INTO `dondathang` VALUES ('8', '0000-00-00 00:00:00', '9000000', '6', '1');
INSERT INTO `dondathang` VALUES ('9', '0000-00-00 00:00:00', '4500000', '3', '1');
INSERT INTO `dondathang` VALUES ('10', '0000-00-00 00:00:00', '80000000', '7', '1');

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
INSERT INTO `hangsanxuat` VALUES ('1', 'ASus', 'brand-asus.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('2', 'Apple', 'brand-apple.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('3', 'Lenovo', 'brand-lenovo.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('5', 'Sony', 'brand-sony.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('6', 'Kingmax', 'brand-kingmax.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('7', 'Sandisk', 'brand-sandisk.png', '\0');
INSERT INTO `hangsanxuat` VALUES ('8', 'Dell', 'brand-dell.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('9', 'Logitech', 'brand-logitech.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('10', 'HP', 'brand-hp.jpg', '\0');
INSERT INTO `hangsanxuat` VALUES ('11', 'WD', 'brand-WD.png', '\0');
INSERT INTO `hangsanxuat` VALUES ('12', 'Transcend', 'transcend.png', '\0');

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
INSERT INTO `sanpham` VALUES ('1', 'dán màn hình iP8 JCPAL Glass Screen', 'sp01.jpg', '190000', '2017-11-17 08:09:35', '1000', '111', '560', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('2', 'Bao da iPad 10.5\'\' JCPAL - JCP5182', 'sp02.png', '348000', '2017-11-17 08:10:53', '1000', '111', '572', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('3', 'Túi chống xốc JCPAL Neoprene Classic Sleeves', 'sp03.jpg', '520000', '2017-11-17 08:12:15', '1000', '111', '559', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('4', 'Bao da iPad 10.5 Cosmo', 'sp04.jpg', '850000', '2017-11-17 08:15:03', '1000', '111', '558', null, '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('5', 'Ốp iPhone 7 Plus Polo Rainbow', 'iphone7.jpg', '130000', '2017-11-17 08:16:01', '1000', '111', '569', null, '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('6', 'Bao da iPad 10.5\" iPearl Cooplay + Stylus', 'sp05.jpg', '530000', '2017-11-17 19:45:50', '1000', '111', '555', '', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('7', 'MOUSE LOGITECH B100 OPTICAL USB', 'mouse01.jpg', '100000', '2017-12-13 19:47:36', '1000', '154', '573', 'Chuột quang có dây', '\0', '6', '9');
INSERT INTO `sanpham` VALUES ('8', 'KEYBOARD LOGITECH K120 Black USB', 'kbard01.jpg', '180000', '2017-12-03 19:50:18', '1000', '54', '896', 'Thoải mái, êm tay khi đánh máy. Ký tự to và sáng. Thiết kế bền bỉ, chống thấm. Kết nối Plug and play qua cổng USB', '', '6', '9');
INSERT INTO `sanpham` VALUES ('9', 'Tai nghe cao cấp Z1R', 'tainghe02.jpg', '39990000', '2017-12-08 19:52:49', '500', '156', '465', 'Âm thanh vượt trội, chất lượng rõ ràng. Màng chắn mới phát triển với vòm ma-giê và cạnh polymer tinh thể lỏng cho phép phát lại Âm thanh độ phân giải cao ở tần số tối đa 120 kHz. Kết quả là âm thanh có độ chính xác và độ tinh khiết không gì sánh được. Bộ lọc âm đặc biệt giúp kiểm soát khả năng cản khí và loại bỏ mọi âm vang do sự chuyển động của driver tạo ra để chỉ có những tần số rõ ràng và sắc nét truyền qua. Những chiếc tai nghe được chế tác tiện dụng nhằm mang đến sự thoải mái khi bạn choàng qua đầu; ngăn thoát âm thanh và mang đến hiệu ứng âm trầm mạnh mẽ. Đệm tai bằng da cừu thật tạo độ mềm mại êm ái cho tai. Tai nghe MDR-Z1R được thiết kế để mang đến dải tần rộng hơn, tái tạo tần số siêu thấp và siêu cao lên đến 120 kHz. Dải tần động rộng hơn giúp tái tạo phong phú từng âm thanh rất nhỏ. Kết quả là bạn có trải nghiệm nghe phong phú, tuyệt vời.', '', '6', '5');
INSERT INTO `sanpham` VALUES ('10', 'Tai nghe không dây EXTRA BASS™ XB650BT', 'tainghe03.jpg', '2990000', '2017-05-05 19:53:43', '250', '46', '323', 'Tai nghe MDR-XB650BT1 kết hợp âm thanh EXTRA BASS™2 sâu và mạnh mẽ mang lại cho bạn sự thoải mái nhờ thiết kế không dây và thoải mái để nghe lâu.Thời gian sử dụng pin dài hơn cho bạn nghe nhạc đến 30 giờ4 với chất lượng âm thanh tuyệt hảo. Khả năng kết nối không dây với trải nghiệm nghe một chạm qua Bluetooth® và NFC sẽ đem đến cho bạn cảm giác thật sự thoải mái.Trọng lượng nhẹ và nhỏ gọn, thiết kế của tai nghe MDR-XB650BT không chỉ mang đến sự thoải mái cho việc nghe lâu mà còn giúp bạn tối ưu hóa âm trầm.', '\0', '6', '5');
INSERT INTO `sanpham` VALUES ('11', 'Tai nghe không dây 1ABT', 'tainghe04.jpg', '8490000', '2017-07-13 19:54:32', '100', '51', '70', 'Bộ màng loa HD 40 mm mạnh mẽ với lỗ thông hơi lớn cho phép tai nghe truyền tải âm trầm nhịp nhàng và mạnh mẽ ngay trên những bản nhạc có yêu cầu cao nhất. Màng chắn bằng polyme tinh thể lỏng mạ nhôm nhẹ nhưng cứng phản hồi nhanh chóng giúp tái tạo giọng hát và những nốt tầm trung-cao với độ rõ đáng ngạc nhiên. Tăng âm lượng và nghe âm thanh rõ ràng, chính xác trên toàn bộ quang phổ. Màng chắn polymer tinh thể lỏng phủ nhôm mang lại âm thanh chính xác và ổn định hơn trên toàn dải tần số so với màng loa LCP thông thường. Thất thoát năng lượng âm thanh trong khi truyền phát tới khoang tai nghe đồng nhất hơn, nhằm đảm bảo hiệu suất chân thực. Bạn cũng sẽ được thưởng thức tần số phản hồi giảm xuống ngay cả khi đang nghe Âm thanh độ phân giải cao. Lỗ thông được thiết kế chính xác giúp tối đa hóa luồng khí bên trong tai nghe, cho phép màng chắn LCP truyền qua dễ dàng hơn và mang đến phản ứng tức thì đối với dòng âm trầm tần số thấp mạnh mẽ. ', '\0', '6', '5');
INSERT INTO `sanpham` VALUES ('12', 'Laptop Lenovo IdeaPad 110 80UD00RDVN', 'lenovo1.jpg', '7900000', '2016-10-14 19:55:36', '300', '123', '232', 'CPU: Intel Core i3 6006U 2.3GHz, 3MB, Màn hình LCD 15.6 inch 1366 x 768 pixels, VGA: Intel HD Graphics 520, RAM: 4GB Onboard DDR4 (1 slot), HDD: 1TB', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('13', 'Laptop Lenovo IdeaPad 110 80UD018YVN', 'lenovo2.jpg', '7600000', '2016-12-15 19:57:30', '156', '254', '7648', 'CPU Intel® Core i3-6006U 2.0 GHz, RAM 4G DDR4 2133, VGA Intel HD Graphics 520, HDD 1TB 5400rpm, Màn hình 15.6 inch HD', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('14', 'Laptop Lenovo Ideapad 110-15ISK-80UD00RDVN', 'lenovo3.jpg', '8090000', '2016-09-22 19:58:39', '325', '123', '462', 'CPU: Intel Core i3 6100U 2.3GHz, 3MB, Màn hình LCD 15.6 inch 1366 x 768 pixels, VGA: Intel HD Graphics 520, RAM: 4GB Onboard DDR4 (1 slot), HDD: 1TB', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('15', 'NOTEBOOK DELL INSPIRON 3552', 'st02.jpg', '6600000', '2016-10-12 19:59:38', '516', '465', '1242', 'Intel Celeron N3060(1.6Ghz, 1600Mhz ), 4GB DDR3, NO DVD-RW500GB HDD, 15.6” HD LED , Intel HD Graphics, Wireless 802.11 b/g/n, 100/1000Mbps Ethernet ,Webcam, Micro, 5 in 1 Card reader, Bluetooth 4.0, DOS ', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('16', 'miếng dán màn hình IP7 Plus ', 'dmh01.jpg', '100000', '2017-12-13 20:00:36', '1245', '100', '201', 'dán màn hình', '\0', '1', '2');
INSERT INTO `sanpham` VALUES ('17', 'DDR4 8GB/2400 KINGMAX (Heatsink) – tản nhiệt', 'ram01.jpg', '245000', '2017-09-08 20:02:22', '456', '235', '2469', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('18', 'DDRIII 4GB Bus 1333 Kingmax', 'ram02.jpg', '480000', '2017-07-21 20:04:28', '154', '265', '360', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('19', 'DDRIII 4GB BUS 1600 KINGMAX', 'ram03.jpg', '550000', '2017-06-20 20:33:53', '256', '356', '464', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('20', 'DDR4 4GB/2400 KINGMAX (05102)', 'ram04.jpg', '1190000', '2017-04-27 20:08:09', '0', '156', '3548', 'Bảo hành 36 tháng', '', '2', '6');
INSERT INTO `sanpham` VALUES ('21', 'DDRIII 8GB Bus 1600 Kingmax', 'ram05.jpg', '1500000', '2017-02-24 20:32:42', '15', '46', '215', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('22', 'DDR4 8GB/2400 KINGMAX (05242)', 'ram06.jpg', '2300000', '2017-07-26 20:34:01', '68', '21', '51', 'Bảo hành 36 tháng', '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('23', 'HDD 3.5 WD 500GB BLUE SATA 6Gb/s 32MB', 'oc01.jpg', '1150000', '2016-11-18 20:35:15', '89', '11', '26', 'HDD 3.5 WD 500GB BLUE SATA 6Gb/s 32MB CACHE 7200RPM (WD5000AZLX)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('24', 'HDD 3.5 WD 1TB BLUE SATA 6Gb/s 64MB', 'oc02.jpg', '1250000', '2017-03-17 20:36:08', '89', '11', '27', 'HDD 3.5 WD 1TB BLUE SATA 6Gb/s 64MB CACHE 7200RPM (WD10EZEX)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('25', 'HDD 3.5 WD 1TB PURPLE AV SATA 6Gb/s 64MB', 'oc03.jpg', '1600000', '2017-04-20 20:36:48', '0', '100', '259', 'ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('26', 'HDD 3.5 WD 2TB BLUE SATA 6 Gb/s 64MB', 'oc04.jpg', '1850000', '2017-06-22 20:38:03', '45', '54', '56', 'Bảo hành: 24 tháng', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('27', 'HDD 3.5 WD 2TB PURPLE AV SATA 6Gb/s 64MB', 'oc05.jpg', '2100000', '2016-09-28 20:39:41', '354', '85', '156', 'HDD 3.5 WD 2TB PURPLE AV SATA 6Gb/s 64MB CACHE 7200RPM (WD20PURX), ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('28', 'HDD 3.5 WD 2TB RED SATA 6Gb/s 64MB', 'oc06.jpg', '2400000', '2017-01-18 20:41:50', '358', '45', '58', 'Designed specifically for NAS systems and 24×7 reliability, CACHE 5400RPM (WD20EFRX) ', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('29', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB', 'oc07.jpg', '3250000', '2017-03-02 20:43:09', '35', '458', '689', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB, Maximum performance for power computing. Power Dissipation: Read/Write: 9.5 Watts: Idle: 8.1 Watts; Standby: 1.3 Watts; Sleep:1.3 Watts. Recommended use: WD Black hard drives are tested and recommended for use in PCs, high-performance workstations, all-in-one PCs, gaming PCs, game consoles, home media PCs and notebook computers.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('30', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB', 'oc08.jpg', '3250000', '2017-09-23 20:44:25', '68', '48', '225', 'HDD 3.5 WD 2TB BLACK SATA 6Gb/s 64MB CACHE 7200RPM (WD2003FZEX), Maximum performance for power computing. Power Dissipation: Read/Write: 9.5 Watts: Idle: 8.1 Watts; Standby: 1.3 Watts; Sleep:1.3 Watts. Recommended use: WD Black hard drives are tested and recommended for use in PCs, high-performance workstations, all-in-one PCs, gaming PCs, game consoles, home media PCs and notebook computers.', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('31', 'HDD 3.5 WD 3TB PURPLE AV SATA 6Gb/s 64MB', 'oc09.jpg', '3350000', '2017-05-19 20:53:08', '48', '65', '87', 'HDD 3.5 WD 3TB PURPLE AV SATA 6Gb/s 64MB CACHE 7200RPM (WD30PURX), ổ cứng chuyên dụng cho thiết bị ghi hình kỹ thuật số IntelliPower SATA 6Gb/S, 24/7 operating, silently, cool, support RAID, Bảo hành: 36 tháng', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('42', 'Tai nghe Logitech H340', 'tainghe01.jpg', '595000', '2017-09-21 20:18:43', '65', '86', '485', 'Kết nối: Cổng USB, Tần số đáp ứng tai nghe: 20 – 20,000 Hz, Tần số đáp ứng microphone: 100-10,000Hz', '\0', '6', '9');
INSERT INTO `sanpham` VALUES ('32', 'HDD 3.5 WD 4TB BLUE SATA 6 Gb/s 64MB', 'oc10.jpg', '3400000', '2016-12-08 19:39:10', '48', '65', '86', 'HDD 3.5 WD 4TB BLUE SATA 6 Gb/s 64MB CACHE 5400RPM (WD40EZRZ)', '\0', '3', '11');
INSERT INTO `sanpham` VALUES ('33', 'SSD SANDISK 120GB EXTREME PORTABLE 500 USB', 'oc11.jpg', '2200000', '2017-03-20 19:40:23', '48', '65', '87', 'SSD SANDISK 120GB EXTREME PORTABLE 500 USB 3.0 EXTERNAL, SSD gắn ngoài thiết kế nhỏ gọn vừa lòng bàn tay dễ dàng mang theo Tốc độ đọc 430MB/s.Tốc độ ghi 400Mb/s.Chống sốc tối ưu', '\0', '3', '7');
INSERT INTO `sanpham` VALUES ('34', 'Điện thoại iPhone X 256GB A1901', 'ipx-64A19.jpg', '34700000', '2017-07-20 19:43:08', '48', '65', '106', 'Không còn nghi ngờ gì nữa, kiểu dáng của chiếc iPhone X được lấy cảm hứng thiết kế từ iPhone 4. Với bộ khung kim loại bóng bẩy cùng 2 lớp kính ở mặt trước/sau, siêu phẩm này thực sự quá bắt mắt và sang trọng. Đặc biệt, lớp kính mà Apple sử dụng đã được các đối tác gia công đến 7 lớp màu khác nhau nhằm giúp ngoại hình máy trở nên rất nổi bật.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('35', 'Điện thoại iPhone X 64GB A1901', 'ipx-64A19.jpg', '29900000', '2017-10-06 19:44:25', '48', '68', '92', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('36', 'Điện thoại iPhone 8 Plus 64GB', 'ip8p-64.jpg', '23990000', '2017-11-29 19:45:13', '48', '59', '66', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('37', 'Điện thoại iPhone 8 64GB', 'ip8-64.jpg', '20990000', '2017-10-19 19:46:13', '48', '59', '688', 'Tuy iPhone X mới là thiết bị được nhiều người quan tâm nhưng bộ đôi iPhone 8 và 8 Plus cũng có nhiều tính năng được nâng cấp mạnh mẽ so với thế hệ tiền nhiệm.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('38', 'Máy tính bảng Apple iPad Pro 2017 10.5', 'ipad-pro2017.jpg', '19900000', '2017-10-19 19:48:24', '86', '87', '567', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('39', 'Máy tính bảng Apple iPad 2017 128GB', 'ipad-pro2017.jpg', '14990000', '2017-12-06 19:50:15', '68', '76', '854', 'Với con chip Apple A9 2 nhân 64-bit, 1.84 GHz, RAM 2 GB kết hợp với hệ điều hành iOS mượt mà sẽ mang lại cho bạn trải nghiệm mượt mà và trơn tru mà khó có thiết bị nào cùng phân khúc có thể đem lại.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('40', 'Laptop MacBook MQD32HN/A', 'lapmac01.jpg', '23000000', '2017-12-14 19:51:39', '35', '48', '570', 'Tự hào có một sự kết hợp tuyệt vời của vẻ và hiệu suất. Với một thân máy siêu mỏng và mỏng, chiếc MacBook thời trang này nhẹ và xách tay. Nó được thiết kế với bộ vi xử lý Intel Core i5 Dual-Core 1.8Ghz đảm bảo hiệu suất không bị gián đoạn bất cứ lúc nào.\r\n\r\nBộ nhớ RAM 8GB cung cấp trải nghiệm đa tác vụ liền mạch. Ngoài ra, bộ nhớ SSD 128GB cung cấp khả năng truy cập dữ liệu tốc độ cao và hiệu suất cực kỳ mạnh mẽ. Nó giúp bạn nhập các tập tin lớn hoặc khởi chạy nhiều ứng dụng trong một đèn flash.\r\n\r\nĐược trang bị tiện ích Intel HD Graphics 6000, máy tính xách tay này làm cho các buổi chơi game thú vị hơn với đồ họa nâng cao.\r\n\r\nMacBook này có màn hình 13inch với độ phân giải màn hình tuyệt đẹp 1440 x 900 pixel. Pin mạnh mẽ cho phép bạn tự do tiếp tục và tiếp tục trong 12 giờ với một lần sạc duy nhất.\r\n\r\nMáy tính xách tay Apple MacBook Air có kết cấu bạc tuyệt đẹp làm cho nó trông thanh lịch và sang trọng.', '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('41', 'Laptop MacBook 12\" MNYN2SA/A', 'lapmac02.jpg', '40300000', '2017-10-19 19:53:10', '655', '865', '2321', null, '\0', '4', '2');
INSERT INTO `sanpham` VALUES ('43', 'USB Transcend JETFLASH 700 16GB (01004)', 'usb01.jpg', '190000', '2017-12-26 20:21:05', '68', '59', '322', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('44', 'USB Transcend Jetflash 820 USB 3.0 16GB', 'usb02.jpg', '265000', '2017-12-25 20:22:39', '86', '98', '322', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('45', 'USB HP V245 – 8GB (01070)', 'usb03.jpeg', '185000', '2017-12-25 20:23:12', '86', '89', '658', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('46', 'USB Transcend JetFlash 810 16GB/3.0 (03404)', 'usb04.jpg', '258000', '2017-12-25 20:23:48', '86', '89', '166', 'Bảo hành 12 tháng', '\0', '6', '12');
INSERT INTO `sanpham` VALUES ('47', 'USB 8GB HP v225w (2.0)', 'usb05.jpg', '180000', '2017-12-25 20:25:51', '86', '98', '476', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('48', 'USB 8GB HP v250w', 'usb06.jpg', '205000', '2017-12-25 20:26:32', '96', '56', '237', 'Bảo hành 12 tháng', '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('49', 'NOTEBOOK ASUS X441UA – GA070', 'st03.jpg', '9790000', '2017-12-25 20:38:02', '86', '78', '1006', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), Intel 8 Series Express, 1x 4GB DDR4/2133 (chỉ 1 slot), 500GB SATA3 (5400rpm), DVDRW, 14.0 16:9 HD (1366×768) LED Backlight, Intel HD Graphics 620, Atheros (802.11 b/g/n), VGA, HDMI, Webcam Lan 100, Wifi N, BT 4.0, Reader, 2.0Kg, Pin 3 Cell, Dos, Thiết kế mới năm 2017, 1 x USB 2.0 ; 1 x USB 3.0 ; 1 x USB 3.1 ; 1 x VGA ; 1 x HDMI 1.4 ; 1 x COMBO audio jack', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('50', 'NOTEBOOK DELL INSPIRON N3467', 'st04.jpg', '10390000', '2017-12-25 20:39:25', '95', '65', '858', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), 4GB Single Channel DDR4 2400MHz (4GBx1)/1 empty,1 used, 1TB 5400 rpm Hard, DVDRW, 14.0 LED HD (1366 x 768) 16:9 Gloss, Intel HD GPU Graphics 620, Wireless 1810 Card,720p HD camera, HDMI , USB 3.0, 2.0Kg, 40 WHr,4-Cell Battery, DOS, Vỏ chống trầy xước, SD Card Reader (SD, SDHC, SDXC),1 VGA, 1 HDMI out, 1 RJ-45, 2 USB 3.0, 1 USB 2.0', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('51', 'NOTEBOOK DELL VOSTRO V5468 -VTI35008', 'st05.jpg', '12550000', '2017-12-25 20:40:19', '65', '89', '166', 'Intel Core i3 7100U(4*2.4Ghz, 3MB cache smart,14nm, 15W), Intel 8 Series Express, 4GB DDR4 bus 2400MHz, 500 GB SATA, NO, 14.0 inch HD, 1366 x 768 Pixels Anti-Glare LED-Backlit Display, Intel HD Graphics 720, Dual Band 2.4&5 GHz, 1×1 Wireless Driver, Card Reader , Webcam , Microphone, Bluetooth, HDMI, 1.6Kg, PIn 3 Cell, DOS, Màu: GOLD', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('52', 'Laptop Lenovo Ideapad 110-15ISK-80UD018YVN', 'lenovo4.jpg', '7995000', '2017-11-08 20:30:04', '86', '95', '147', 'CPU Intel® Core i3-6006U, RAM 4G DDR4 2133 ONBOARD, VGA Intel HD Graphics 520, HDD 1TB, Màn hình 15.6 inch', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('53', 'Laptop Lenovo IdeaPad 110 80UD00JDVN', 'lenovo5.jpg', '8350000', '2017-10-11 20:31:37', '35', '564', '865', 'CPU Intel® Core™ i3-6100U Processor (3M Cache, 2.30 GHz), RAM 4GB DDR4, HDD 1TB 5400rpm\r\n\r\nMàn hình 15.6 inch HD\r\n\r\nVGA Intel HD Graphics', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('54', 'Laptop Lenovo Ideapad 110-15ISK 80UD00JDVN', 'lenovo6.jpg', '8560000', '2017-12-27 20:34:17', '56', '12', '49', 'CPU: Intel Core i3 6100U 2.3GHz, 3MB Màn hình 15.6 inch 1366 x 768 pixels\r\n\r\nVGA: Intel HD Graphics 520\r\nRAM: 4GB Onboard DDR4 (1 slot) HDD: 1TB', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('55', 'Laptop Asus X441UA-WX027 Core i3-6100U', 'asus01.jpg', '8700000', '2017-12-27 20:36:26', '56', '12', '106', 'CPU Intel® Core™ i3-6100U Processor (3M Cache, 2.30 GHz)\r\n\r\nRAM 4GB\r\n\r\nHDD 1TB - 5400rpm\r\n\r\nCard màn hình Intel HD Graphics 520\r\n\r\nMàn hình 14 inch HD', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('56', 'Laptop Lenovo IdeaPad 110 80UD00JEVN', 'lenovo7.jpg', '8750000', '2017-12-27 20:38:03', '56', '1', '76', 'CPU: Intel Core i3 6100U 2.3GHz, 3MB\r\n\r\nMàn hình 15.6 inch 1366 x 768 pixels\r\n\r\nVGA: AMD Radeon R5 M430 2GB\r\n\r\nRAM: 4GB Onboard DDR4 (1 slot)\r\n\r\nHDD: 1TB', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('57', 'Laptop Asus X441UA-GA157 Core i3-7100U', 'asus02.jpg', '8900000', '2017-12-16 20:39:03', '56', '2', '61', 'CPU Intel Core i3 7100U 2.4GHz 3MB\r\n\r\nRAM 4GB DDR4 2133MHz\r\n\r\nĐĩa cứng	HDD 1TB 5400rpm\r\n\r\nCard đồ họa Intel® HD Graphics 620\r\n\r\nMàn hình	14 inch HD 1366 x 768 pixels', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('58', 'Laptop Asus X541UA-GO1372 Core i3-7100U', 'asus03.jpg', '8950000', '2017-12-10 20:39:50', '48', '12', '56', 'CPU Intel Core i3 7100U 2.4GHz 3MB\r\n\r\nRAM 4GB DDR4 2400MHz\r\n\r\nĐĩa cứng	HDD 1TB HDD 5400rpm\r\n\r\nCard đồ họa Intel HD Graphics 620\r\n\r\nMàn hình	15.6 inch HD 1366 x 768 pixels', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('59', 'Laptop Lenovo Ideapad 110-15ISK 80UD00JEVN', 'lenovo8.jpg', '8969000', '2017-10-05 20:41:19', '45', '8', '23', 'CPU: Intel Core i3 6100U 2.3GHz, 3MB\r\n\r\nMàn hình 15.6 inch 1366 x 768 pixels\r\n\r\nVGA: AMD Radeon R5 M430 2GB\r\n\r\nRAM: 4GB Onboard DDR4 (1 slot)\r\n\r\nHDD: 1TB', '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('60', 'Laptop Dell Inspiron N3467 M20NR1', 'dell01.jpg', '9000000', '2017-12-06 20:42:13', '86', '12', '6', 'Chip: Intel Core i3-6006U (2.0GHz, 3MB Cache)\r\n\r\nRAM: 4GB DDR4\r\n\r\nỔ cứng: HDD 1TB - 5400rpm\r\n\r\nChipset đồ họa: Intel HD Graphics 520\r\n\r\nMàn hình: 14 inches, HD\r\n\r\nHệ điều hành: Free DOS\r\n\r\nPin: 4 Cell', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('61', 'Laptop Asus X541UA-XX272 Core i3-6100U', 'asus04.jpg', '9050000', '2017-12-22 20:43:28', '78', '45', '266', 'CPU Intel Core i3 6100U 2.3GHz 3MB\r\n\r\nRAM 4GB DDR4 2133MHz\r\n\r\nĐĩa cứng	HDD 1TB 5400rpm\r\n\r\nCard đồ họa Intel HD Graphics 520\r\n\r\nMàn hình	15.6 inch HD 1366 x 768 pixels', '\0', '7', '1');
INSERT INTO `sanpham` VALUES ('62', 'Laptop Dell Inspiron N3567 N3567C', 'dell02.jpg', '9150000', '2017-12-15 21:10:06', '12', '56', '487', 'Chip: Intel Core i3-6006U (2.0GHz, 3MB Cache)\r\n\r\nRAM: 4GB DDR4\r\n\r\nỔ cứng: HDD 1 TB - 5400rpm\r\n\r\nChipset đồ họa: Intel HD Graphics 520\r\n\r\nMàn hình: 15.6 inches, HD (1366 x 768 pixels)\r\n\r\nHệ điều hành: Free DOS\r\n\r\nPin: 4 Cell', '\0', '7', '8');
INSERT INTO `sanpham` VALUES ('63', 'Laptop Lenovo Legion Y720', 'lenovo9.png', '86000000', '2017-12-27 21:14:55', '1000', '12', '5495', 'Di động nhưng vẫn mạnh mẽ, chiếc laptop gaming độ phân giải UHD, với âm thanh sống động như thật và bộ xử lý Intel Core thế hệ thứ bảy, đồ họa rời NVIDIA GTX 1060 này có thể \"cân\" mọi game bạn muốn chơi, kể cả trong môi trường ảo. Sức mạnh kết hợp tính di động tạo nên sự hoàn hảo., Vi xử lý Intel® Core™ i7-7700HQ thế hệ thứ bảy, Đồ họa rời NVIDIA® GeForce® GTX 1060 6GB GDDR5, 2 TB SATA HDD, 15.6\" UHD (3840 x 2160) IPS chống chói, ', '\0', '7', '3');

-- ----------------------------
-- Table structure for taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taikhoan
-- ----------------------------
INSERT INTO `taikhoan` VALUES ('1', 'nguyenhieplinh', '1560302', 'LInh', '75/3 Ngô Gia TỰ', '01665554635', 'hanamisaomachi@gmail.com', '\0', '1');
INSERT INTO `taikhoan` VALUES ('2', 'phamkieutan', '1560284', 'Kiều', '76/8 Ngô Gia Tự', '01654865321', 'kieupham17548@gmail.com', '\0', '4');
INSERT INTO `taikhoan` VALUES ('3', 'TranNghia', '11223344', 'Nghĩa', '77/9 Ngô Gia Tự', '01865478612', 'Nghianhanduc@gmail.com', '\0', '3');
INSERT INTO `taikhoan` VALUES ('5', 'KieuTan', '1560284', 'Kiều Tấn', 'Quận 12', '1133434', '', '\0', '2');
INSERT INTO `taikhoan` VALUES ('4', 'adminshop', '3979', 'admin', null, null, null, '\0', '4');
INSERT INTO `taikhoan` VALUES ('6', 'LyPham', '123', ' Ly Pham', 'Quận 1', '0177764663', 'lupham@gmai.com', '\0', '1');
INSERT INTO `taikhoan` VALUES ('7', 'Viet', '123', 'Viet Quốc', 'Bắc Ninh', '0897778811', null, '\0', '2');
INSERT INTO `taikhoan` VALUES ('8', null, null, 'Tấn Phan', 'Hồ Chí Minh', '0177667788', null, '\0', '1');
INSERT INTO `taikhoan` VALUES ('9', null, null, 'Vinh ', 'Quảng Ngãi', '0123456767', null, '\0', '2');
INSERT INTO `taikhoan` VALUES ('10', null, null, 'Nga Nhan', 'Long Thành', '12345566', null, '\0', '2');
INSERT INTO `taikhoan` VALUES ('12', null, null, 'Khiêm Nguyễn', 'Tây Bắc', '23456789', null, '\0', '2');
INSERT INTO `taikhoan` VALUES ('13', null, null, 'Tây Phan', 'Qn', '234567890', null, '\0', '3');
INSERT INTO `taikhoan` VALUES ('14', null, null, 'Ngọc Phạm ', 'Hồ Chí Minh', '09876543', null, '\0', '1');
INSERT INTO `taikhoan` VALUES ('15', null, null, 'Lân Mai', 'Tây Ninh', '09876543', null, '\0', '1');

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
