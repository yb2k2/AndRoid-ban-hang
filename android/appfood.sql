-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(12, 29, 10, 'Bún bò Huế chay', 25000, 2),
(13, 29, 4, 'Cơm tấm đặc biệt', 35000, 11),
(14, 30, 7, 'Nước ép cam', 15000, 1),
(15, 31, 9, 'Cơm gà xối mỡ', 30000, 1),
(16, 32, 2, 'Cơm tấm sườn trứng', 27000, 3),
(17, 32, 7, 'Nước ép cam', 15000, 1),
(18, 33, 8, 'Nước ép chanh', 15000, 1),
(19, 34, 5, 'Khoai tây chiên', 15000, 184),
(20, 35, 7, 'Nước ép cam', 15000, 2),
(21, 36, 9, 'Cơm gà xối mỡ', 30000, 10),
(22, 36, 8, 'Nước ép chanh', 15000, 10),
(23, 37, 1, 'Cơm tấm sườn', 25000, 10),
(24, 37, 6, 'Phô mai que', 15000, 1),
(25, 39, 11, 'Chả giò chay', 20000, 5),
(26, 40, 2, 'Cơm tấm sườn trứng', 27000, 1),
(27, 41, 11, 'Chả giò chay', 20000, 14),
(28, 42, 12, 'Gà rán', 30000, 15),
(29, 42, 7, 'Nước ép cam', 15000, 10),
(30, 42, 8, 'Nước ép chanh', 15000, 5),
(31, 43, 10, 'Bún bò Huế chay', 25000, 10),
(32, 44, 12, 'Gà rán', 30000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhdanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Giường', 'https://noithatdogoviet.com/upload/images/giuong-ngu-kieu-hop-go-tu-nhien-m-1-1.jpg'),
(2, 'Bàn', 'https://abigfurniture.com/upload/thumb/ban-sofa-tron-doi-mat-da-chan-sat-nhap-khau-bt009-62_600x600.jpg'),
(3, 'Ghế SoFa','https://hungphatsaigon.vn/wp-content/uploads/2023/10/sofa-da-bo-cao-cap-SF-da01.jpg'),
(4, 'Tủ Quần Áo ','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMP4VtRSPmrYIi1GFjl_TX2uxyp4CWHUQpIYYJNX13PA&s');
-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--                                          `
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`) VALUES
(29, 'phạm', 'duy@gmail.com', '337662557', 435000, ''),
(30, 'nguyễn', 'duy@gmail.com', '337662557', 15000, ''),
(31, 'thành', 'duy@gmail.com', '337662557', 30000, ''),
(32, 'duy', 'duy@example.com', '337662557', 96000, 'Nttu '),
(33, 'với', 'binh@gmail.com', '337662557', 15000, 'Q12  '),
(34, 'hồ', 'binh@gmail.com', '5555555', 2760000, 'Đỗ Đại học '),
(35, 'ngọc', 'nttu@example.com', '337662557', 30000, 'letsgo'),
(36, 'bình', 'duy@example.com', '069536257', 450000, 'cố lên '),
(37, 'đã', 'duy@gmail.com', '33762559', 265000, 'fine'),
(38, 'hoàn', 'duy@gmail.com', '33762559', 265000, 'cố lên'),
(39, 'thành', 'binh@example.com', '123456789', 100000, 'Hay lắm 2 đứa'),
(40, 'đồ ', 'fen@gmail.com', '336225498', 27000, 'Ok luôn'),
(41, 'án', 'duy@gmail.com', '089653267', 280000, 'web xịn'),
(42, 'của', 'binh@example.com', '0337662557', 675000, ' web đẹp'),
(43, 'môn', 'duy@gmail.com', '6363695', 250000, ''),
(44, 'LTTBDD', 'nttu@gmail.com', '5656565665', 180000, 'oke');

-- --------------------------------------------------------

--
-- Table structure for table `mon`
--

CREATE TABLE `mon` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` varchar(200) NOT NULL,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mon`
--

INSERT INTO `mon` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Giường gỗ Tatana MDF029', 'https://thegioinem.com/upload/sanpham/large/giuong-go-tatana-mdf029-1664354539-c6a648.webp', 1767000, 'Mẫu giường ngủ Tatana MDF029 có thiết kế hiện đại.'),
(2, 1, 'Giường gỗ Tatana MDF037', 'https://thegioinem.com/upload/sanpham/large/giuong-go-tatana-mdf037-1689217624-5baf21.webp', 7170000, 'Giường ngủ với thiết kế theo phong cách Bắc Âu kèm 2 tủ đầu giường có ngăn kéo.'),
(3, 1, 'Divan Dunlopillo', 'https://thegioinem.com/upload/sanpham/large/update6-102.jpg', 4140000, 'Divan Dunlopillo được sử dụng đồng bộ với nệm Dunlopillo,.'),
(4, 1, 'Diamond Modern 03', 'https://thegioinem.com/upload/sanpham/large/giuong-kim-cuong-diamond-modern-03-hang-xa-kho-1677646471-b6785b.webp', 5000000, 'Giường Kim Cương Modern 03 có độ bền cao, chắc chắn, có khả năng chống mối mọt, cong vênh hay nứt nẻ theo thời gian.'),
(5,1,'Giường Ngủ Tân Cổ Điển Dát Vàng GV-04','https://hungphatsaigon.vn/wp-content/uploads/2023/09/Giuong-tan-co-dien-hoang-gia-GV-04.jpg',189000000,'Giường Ngủ Tân Cổ Điển Dát Vàng GV-04'),

(6,1,'Giường Ngủ Tân Cổ Điển Cao Cấp G-E08','https://hungphatsaigon.vn/wp-content/uploads/2023/09/giuong-tan-co-dien-da-bo-cao-cap-G-E08-1.jpg',9000000 ,'Giường Ngủ Tân Cổ Điển Cao Cấp G-E08'),
(7,2,'Bàn Quản Lý YCHIMD006','https://www.ychi.vn/images/Editor/images/ban-quan-ly-YCHIMD006.jpg',8200000,'Bàn Quản Lý YCHIMD006 mặt bàn và chân tủ được làm từ gỗ MDF phủ Melamine cho bề mặt sản phẩm rất đẹp mắt, chống nước.'),
(8,2,'BÀN TRÀ KIM CƯƠNG 04','https://mocsofa.vn/wp-content/uploads/2021/11/z2908085163183_6ca29f83777d28c5095c22d7e37d7c77.jpg',1650000,'Bàn TRÀ KIM CƯƠNG – Khung sắt, sơn tĩnh điện'),


(9,2,'Bàn Quản Lý YCHIMD072','https://www.ychi.vn/images/Product/ychi-ban-giam-doc-ychimd072.jpg?1684483658828',8800000,'Bàn Quản Lý YCHIMD072 thiết kế thông minh và ấn tượng góp phần tôn lên vẻ đẹp sang trọng cho không gian làm việc của người đứng đầu. '),

(10,2,'Bàn trà mặt kính đen kết hợp mặt đá Ceramic BT012','https://abigfurniture.com/upload/thumb/ban-tra-mat-kinh-den-ket-hop-mat-da-ceramic-bt012-97_600x600.jpg',2500000,'- Mặt bàn có thiết kế tròn không cạnh rất thuận tiện trong bố trí được ở bất cứ chỗ nào trong nhà, tiết kiệm diện tích một cách hiệu quả.'),
(11,2,'Bàn trà chữ nhật mặt đá Pula BT12','http://pula.vn/storage/images/2021/12/21/ban-tra-pula-bt12.webp',6100000 ,'Bàn Trà Chữ Nhật Mặt Đá Pula BT12 nổi bật như một tác phẩm nghệ thuật, mang đến không gian sống của bạn không chỉ sự tiện ích mà còn là vẻ đẹp đậm chất hiện đại và sang trọng.'),
(12,2,'Bàn ăn Ontario (4 chỗ)','https://jangin.vn/wp-content/uploads/2023/06/ontoria-4c-ban.jpg',7211000,' Bàn ăn Ontario làm nổi bật không gian phòng ăn, mang đến những phút giây ấm áp và đáng nhớ cho gia đình bạn.'),
(13,3,'Sofa Da Bò Ý Nhập Khẩu SF-DA01','https://hungphatsaigon.vn/wp-content/uploads/2023/10/ghe-sofa-da-nguyen-tam-nhap-khau-sf-da01.jpg',7000000 ,'Với chất liệu da bò Italia nguyên tấm và gỗ sồi tự nhiên cao cấp, Sofa Da Bò Nguyên Tấm Nhập Khẩu SF-DA01 tạo nên sự sang trọng và đẳng cấp ngay từ chất liệu đến khung sườn.'),
(14,3,'Ghế Sofa Thư Giãn Chỉnh Điện AUDI-801','https://amazyta.com/wp-content/uploads/2022/10/ghe-sofa-massage-thu-gian-chinh-dien-amd-584-4.jpg',36500000 ,'Ghế Sofa Thư Giãn Chỉnh Điện AUDI-801 hiện đại.'),

(15,3,'Sofa Thư Giãn Chỉnh Điện Cao Cấp SF-2310','https://hungphatsaigon.vn/wp-content/uploads/2022/08/ghe-sofa-thu-gian-chinh-dien-cao-cap-sf-2310.jpg',48000000,'Sofa Thư Giãn Chỉnh Điện Cao Cấp SF-2310 hiện đại.'),
(16,3,'Sofa Da Bò Thư Giãn Chỉnh Điện Hiện Đại S218','https://hungphatsaigon.vn/wp-content/uploads/2023/09/sofa-da-thu-gian-hien-dai-S218.jpg',42000000 ,'Sofa Da Bò Thư Giãn Chỉnh Điện Hiện Đại S218.'),
(17,3,'Sofa thông minh nhập khẩu – Văng Mira','https://kenzaluxury.vn/wp-content/uploads/2021/08/CHEERS-BEO-3-1.png',62200000,'Xu hướng các chung cư hiện nay có diện tích phòng khách khá nhỏ nên việc lựa chọn ghế sofa phù hợp gặp rất nhiều khó khăn. Mẫu sofa thông minh cho nhà nhỏ Mira ra đời là giải pháp hoàn hảo và lựa chọn phù hợp.'),
(18,3,'Sofa Băng Hiện Đại H-17','https://hungphatsaigon.vn/wp-content/uploads/2022/08/ghe-sofa-da-hien-dai-H-17.jpg',9500000,' Để đáp ứng nhu cầu của khách hàng, dòng ghế sofa băng hiện đại H-17 của HPSG đang trở thành lựa chọn phổ biến hiện nay.'),
(19,4,'Tủ quần áo hiện đại thiết kế tối giản GHS-51904','https://gotrangtri.vn/wp-content/uploads/2023/03/avar-tu-quan-ao-hien-dai-thiet-ke-toi-gian-ghs-51904.jpg',32000000,'Tủ  GHS-51904 hiện đại.'),
(20,4,'Tủ quần áo đơn giản tiện dụng GHS-51502','https://gotrangtri.vn/wp-content/uploads/2021/07/tu-quan-ao-don-gian-tien-dung-ghs-51502-ava.jpg',10200000 ,'Tủ GHS-51502 hiện đại.'),
(21,4,'Tủ Để Quần Áo Cánh Mở Hiện Đại Gỗ MDF Có Kệ Trang Trí Đẹp','https://noithatdogoviet.com/upload/sanpham/tu-de-quan-ao-canh-mo-hien-dai-go-mdf-co-ke-trang-tri-dep.jpg',5880000 ,'Chất liệu: MDF lõi xanh chống ẩm phủ Melamine chống trầy + tay nắm 735 1000mm đen.'),
(22,4,'Tủ quần áo hiện đại thiết kế nhã nhặn GHS-51511','https://gotrangtri.vn/wp-content/uploads/2021/07/tu-quan-ao-hien-dai-thiet-ke-nha-nhan-ghs-51511-ava.jpg',13110000 ,'Tủ GHS-51511 hiện đại.'),
(23,4,'Tủ Quần Áo 4 Cánh Mở Hiện Đại Màu Nâu Đẹp Giá Tốt','https://noithatdogoviet.com/upload/sanpham/tu-quan-ao-4-canh-mo-hien-dai-mau-nau-dep-gia-tot.jpg',6660000,'Tủ hiện đại của nhà gỗ.'),
(24,4,'Tủ quần áo bằng gỗ thời trang GHS-51918','https://gotrangtri.vn/wp-content/uploads/2023/03/avar-tu-quan-ao-bang-go-thoi-trang-ghs-51918.jpg',27300000,'Tủ GHS-51918 hiện đại nhất.');






-- Indexes for dumped tables
--
             
--	
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
