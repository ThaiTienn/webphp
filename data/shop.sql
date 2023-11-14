-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 06:57 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--
DROP DATABASE IF EXISTS `shop`;
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Sản phẩm điện tử'),
(2, 'Dụng cụ học sinh'),
(3, 'Dụng cụ văn phòng'),
(4, 'Sản phẩm giấy');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi_id` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` float NOT NULL DEFAULT 0,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhangct`
--

CREATE TABLE `donhangct` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mathang_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `thanhtien` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

CREATE TABLE `mathang` (
  `id` int(11) NOT NULL,
  `tenmathang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `giagoc` float NOT NULL DEFAULT 0,
  `giaban` float NOT NULL DEFAULT 0,
  `soluongton` int(11) NOT NULL DEFAULT 0,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `luotmua` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `tenmathang`, `mota`, `giagoc`, `giaban`, `soluongton`, `hinhanh`, `danhmuc_id`, `luotxem`, `luotmua`) VALUES
(1, 'Máy Tính Văn Phòng Casio SX 100 - W-DP', '<p>Kích thước (Dài&nbsp;× Rộng × Dày) : 110,5 × 91 × 9,4 mm</p><p>Màn hình lớn dễ dàng đọc dữ liệu</p><p>Có 2 nguồn năng lượng: mặt trời &amp; pin</p>', 200000, 180000, 10, 'images/products/m1.jpg', 1, 1, 0),
(2, 'Máy Tính Casio FX580VN X-PK (Màu Hồng)', '<p><strong>Máy Tính Casio FX580VN X-PK (Màu Hồng)</strong>&nbsp;thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.</p><p><i><strong>Casio fx-580VN X được phép đưa vào phòng thi</strong></i></p><p><i><strong>Tốc độ xử lý nhanh gấp 4 lần, giảm thời gian tính toán xuống mức tối thiểu</strong></i></p><p><i><strong>521 tính năng, nhiều tính năng mà các máy tính khác không có</strong></i></p><p><i><strong>Mua một lần, dùng nhiều cấp học</strong></i></p><p><i><strong>Hỗ trợ đắc lực giải toán cao cấp ở đại học</strong></i></p><p><i><strong>Dung lượng bộ nhớ lớn gấp 2 lần</strong></i></p><p><i><strong>Độ phân giải gấp 4 lần, hiển thị đầy đủ phép tính</strong></i></p><p><i><strong>Có ngôn ngữ tiếng Việt vô cùng tiện dụng</strong></i></p>', 757000, 681000, 20, 'images/products/m2.jpg', 1, 1, 0),
(3, 'Máy Tính CASIO FX-880BTG - Màu Xanh Biển', '<p>Máy tính Casio fx-880BTG thuộc dòng máy tính khoa học ClassWiz của hãng máy tính CASIO. Máy tính Casio fx-880BTG đã ra đời với nhiều cải tiến về: thiết kế - giao diện, tính năng nổi trội và độ chính xác cao… để đáp ứng thực tiễn dạy và học tại Việt Nam, đồng thời thay đổi tư duy học tập lâu nay của học sinh.</p><p><i><strong>Tính năng nổi bật:</strong></i></p><p>- QR Code hỗ trợ dạy và học</p><p>- Bảng tính spreadsheet</p><p>- Hộp toán học Math Box</p><p>- Bảng tuần hoàn</p><p>- Kiểm chứng</p><p>- Gian diện mới với thao tác đơn giản hơn</p><p>- Kết quả tính toán chính xác lên đến 23 chữ số</p>', 820000, 738000, 20, 'images/products/m3.jpg', 1, 0, 0),
(4, 'Máy Tính Khoa Học Thiên Long Flexio Fx680VN Plus - Màu Trắng', '<p><strong>Máy Tính Khoa Học Thiên Long Flexio Fx680VN Plus - Màu Trắng</strong></p><p>512 + 12 Tính Năng. Mày tính đạt chuẩn mang vào phòng thi: Không truyền tín hiệu, Không có chức năng soạn thảo văn bản và thẻ nhớ&nbsp;</p><p>Máy tính có thiết kế hiện đại, cá tính</p><p>Máy mỏng nhẹ với chất liệu bền bỉ, phím bấm có độ chống mòn và mờ cao</p><p>Dàn phím được bố trí khoa học và thuận tiện cho các thao tác trên máy tính</p><p>Độ bền phím bấm lên tới 500.000 lần</p><p>Có tính năng thông báo pin yếu</p>', 635000, 571500, 30, 'images/products/m4.jpg', 1, 5, 0),
(5, 'Kệ Nhựa 3 Tầng - King Star - Màu Xanh Dương', '<p>Màu sắc trang nhã</p><p>Khay thiết kế 3 tầng&nbsp;tiện dụng</p><p>Thao tác lắp đặt, tháo rời đơn giản, dễ dàng</p><p>Bề mặt có các khe hở, tránh ẩm mốc.</p><p>Khay đựng tài liệu 3 tầng&nbsp;thường được dùng trong các văn phòng công sở, trường học để cất giữ, bảo quản, phân loại các giấy tờ, tài liệu quan trọng</p>', 178000, 160200, 25, 'images/products/v1.jpg', 3, 0, 0),
(6, 'Bìa Trình Ký Đôi Toppoint A4 TOP-134A - Xanh Lá', '<p>Sản phẩm được làm từ chất liệu nhựa cứng PP cao cấp.</p><p>Thanh kẹp cũng được thiết kế bằng chất liệu có độ bền cao.</p><p>Sản phẩm có kích thước phù hợp với khổ giấy A4.</p><p>Giấy được gọng sắt giữ lại, không lo giấy bị bay hoặc thất lạc khi chờ ký.</p><p>Gọng sắt bền, không bị gãy khi sử dụng quá nhiều.</p>', 52000, 46800, 50, 'images/products/v2.jpg', 3, 0, 0),
(7, 'Khay Cắm Bút Flexoffice FO-PS01', '<p>Sản phẩm làm bằng nhựa cao cấp, thân thiện với môi trường, an toàn khi sử dụng.</p><p>Có nhiều ngăn để đựng bút viết.</p><p>Thiết kế trong suốt hiện đại, đơn giản nhưng tinh tế với kiểu dáng nhỏ gọn tiện dụng.</p>', 60000, 54000, 30, 'images/products/v3.jpg', 3, 0, 0),
(8, 'Cắm Bút Moshi 016', '<p>Sản phẩm&nbsp;làm bằng nhựa cao cấp, màu sắc đẹp và bắt mắt.</p><p>Sản&nbsp;phẩm được thiết kế với kiểu dáng đơn giản, kích thước nhỏ gọn không chiếm nhiều diện tích.</p><p>Sản phẩm giúp cho việc sắp xếp các đồ dùng nơi bàn làm việc trở nên gọn gàng, ngăn nắp.</p>', 60000, 54000, 20, 'images/products/v4.jpg', 3, 0, 0),
(9, 'Bìa Còng 5P F4 Kokuyo 285B - Màu Xanh', '<p>Có thiết kế khổ F4 đáp ứng tốt việc lưu trữ số lượng lớn tài liệu và giấy tờ quan trọng.</p><p>Có thể lưu trữ tài liệu thuộc nhiều kích cỡ, phù hợp với hầu hết các loại giấy tờ</p><p>Áp dụng công nghệ tiên tiến của Nhật Bản trong sản xuất đảm bảo chất lượng sản phẩm.</p><p>Chất liệu bìa bằng simili cao cấp, phủ màng OPP với ưu điểm bền chắc, không bám bụi và tránh được nhiều trường hợp cong vênh trong quá trình sử dụng.</p>', 85000, 76500, 10, 'images/products/v5.jpg', 3, 0, 0),
(10, 'Hộp 24 Kẹp Bướm Màu 41mm - Hồng Hà 6642', '<p>Sản xuất từ chất liệu kim loại cao cấp, được phủ Niken chống gỉ giúp kẹp bướm luôn bền đẹp theo thời gian</p><p>Phần lò xo của kẹp linh hoạt, nhẹ, dễ dùng, không bị lỏng hay bung rời sau nhiều lần sử dụng</p><p>Tay cầm chắc chắn, vừa vặn tạo cảm giác thoải mái khi sử dụng</p><p>Đa dạng đủ mọi kích cỡ từ 15 - 51 mm phù hợp với mọi nhu cầu</p><p>Có 4 màu tươi sáng, hợp xu hướng giúp bàn làm việc nhiều màu sắc, khơi gợi cảm hứng và sáng tạo</p>', 83000, 74700, 15, 'images/products/v6.jpg', 3, 1, 0),
(11, 'Máy Bấm Giá Hand MX5500 - Màu Xanh', '<p>Sản phẩm&nbsp;là dụng cụ tiện lợi dùng để bấm giá đồng loạt các sản phẩm một cách nhanh chóng.</p><p>Cấu tạo máy bấm đơn giản, giúp bạn dễ dàng bấm in giá và điều chỉnh giá theo ý muốn.</p><p>Sản phẩm được làm bằng chất liệu nhựa chắc chắn, kháng vỡ, cho lực bấm nhẹ, thao tác nhanh chóng và dễ dàng hơn.</p><p>Thiết kế sản phẩm nhỏ gọn, tiện lợi.</p>', 205000, 184500, 10, 'images/products/v7.jpg', 3, 0, 0),
(12, 'Bộ Compa 8 Món - Bút Chì Kim - Yalong 19020', '<p>Compass được làm từ kim loại cứng cáp, không gỉ sét, độ bền cao.</p><p>Sản phẩm có thiết kế chắc chắn, dễ sử dụng, giúp bạn vẽ hình đẹp và chuẩn xác. Đầu nhọn của một bên chân compass có lực cố định vừa phải, giúp compass đứng vững trên giấy khi quay.</p><p>Bộ sản phẩm được đựng trong hộp thiếc chắc chắn, chất liệu cứng cáp, dễ dàng cất giữ và bảo quản.</p><p>Bộ sản phẩm gồm: 2 compass, 1 chì gỗ, 1 gọt bút chì, 1 gôm, 1 thước kẻ 15 cm, 1 thước đo độ và 2 thước eke.</p>', 53000, 53000, 20, 'images/products/h1.jpg', 2, 0, 0),
(13, 'Bóp Viết Vải Polyester Stacom 2 Ngăn Hình Hoa Cúc PB-2011C - Màu Xanh Mint', '<p>Sản phẩm được làm bằng chất liệu&nbsp;vải Polyester chống thấm nước và dễ dàng tẩy rửa khi bị bẩn, bền đẹp dùng để sắp xếp các vật dụng, thuận tiện mang đi mọi lúc mọi nơi.</p><p>Kích thước nhỏ gọn với hình dáng chữ nhật cùng họa tiết dễ thương.</p><p>Thiết kế dây khóa kéo chắc chắn, trơn tru, đóng mở dễ dàng, thuận tiện khi sử dụng, độ&nbsp;bền cao.</p><p>Sản phẩm&nbsp;có 2 ngăn, đủ để chứa tất cả những đồ dùng học tập cần thiết.</p>', 70000, 63000, 20, 'images/products/h2.jpg', 2, 3, 0),
(14, 'Bộ 2 Hộp Thực Hành Toán Và Tiếng Việt Lớp 1', '<p>Chất liệu: Nhựa</p><p>Số Lượng/Bộ: 2</p><p>Trọng lượng (gr): 1100</p><p>Kích Thước Bao Bì: 25.5 x 18.5 x 8.5 cm</p>', 240000, 216000, 20, 'images/products/h3.jpg', 2, 0, 0),
(15, 'Bảng Bộ 2 Mặt A4 - Queen BS-02 - Viền Cam', '<p>Sản phẩm bao gồm 1 bảng 2 mặt (1 mặt viết phấn, 1 mặt viết lông bảng) và 01 bút lông bảng có sẵn đồ bôi chuyên dành cho học sinh.</p><p>Mặt viết phấn mịn và bám phấn giúp viết rõ nét, chữ viết đẹp.</p><p>Mặt viết lông bảng màu trắng, mặt trơn dễ viết, dễ xóa.</p><p>Bảng có kích thước A4 nhỏ gọn, tiện lợi.</p>', 54000, 48600, 20, 'images/products/h4.jpg', 2, 0, 0),
(16, 'Bộ Lắp Ghép Mô Hình Kỹ Thuật (Lớp 4, Lớp 5)', '<p>Bộ Lắp Ghép Mô Hình Kỹ Thuật<strong>&nbsp;</strong>là sản phẩm vô cùng tiện lợi, giúp các bé phát triển tư duy một cách tự nhiên nhất theo phương pháp vừa học vừa chơi.</p><p>Bộ dụng cụ có màu sắc đa dạng, tạo sự hứng cho người dùng. Ngoài ra còn được làm bằng chất liệu an toàn, thiết kế dễ dàng tháo ráp và sử dụng.</p>', 92000, 82800, 20, 'images/products/h5.jpg', 2, 0, 0),
(17, 'Thước Bộ Eke - Keyroad KR971430', '<p>Thước bộ eke là dụng cụ học tập phổ biến, được sử dụng ngay từ cấp tiểu học.</p><p>Bộ thước gồm: 1 thước thẳng 15cm, 1 thước đo độ, 2 thước eke. Sản phẩm được làm bằng chất liệu nhựa cứng siêu bền, thân trong, in dãy vạch số chính xác và sắc nét.</p><p>Túi đựng bộ thước tiện dụng xinh xắn, gọn nhẹ, dễ dàng cất vào cặp.</p><p>Chất liệu nhựa dẻo chất lượng tốt, trong suốt, thẳng, độ bền cao, không tróc chữ số và đặc biệt có thể bẻ cong thoải mái mà không gãy.</p>', 19000, 19000, 20, 'images/products/h6.jpg', 2, 3, 0),
(18, 'Giấy Photo A4 70gsm - IK Plus (500 Tờ)', '<p>Giấy in A4 của thương hiệu IK Plus được sản xuất từ những nguyên liệu sợi cây cao cấp với quy trình sản xuất theo công nghệ hiện đại và tiên tiến, không chứa chất gây độc hại và mùi khó chịu.</p><p>Được nhập khẩu từ Indonesia đạt tiêu chuẩn ISO 9001 và ISO 14001, nên độ ổn định của giấy luôn đảm bảo chất lượng và uy tín cho người tiêu dùng. Giấy không bị bụi, giúp bảo vệ sức khỏe người sử dụng,thân thiện với môi trường.</p>', 84000, 75600, 20, 'images/products/g1.jpg', 4, 0, 0),
(19, 'Giấy photo Double A A4/80 gsm', '<p><strong>Giấy photo Double A A4/80 gsm&nbsp;</strong>với kích thước A4, thân thiện với môi trường và thích hợp với hầu hết các loại máy in phun, máy in laser, máy fax laser, máy photocopy.</p><p>Sản phẩm thiết kế khổ giấy A4, thích hợp sử dụng làm giấy in, photo trong các văn phòng hoặc trong gia đình.&nbsp;</p><p>Giấy có bề dày tốt, bề mặt láng mịn, độ cản quang của giấy cao hơn do đó giảm hiện tượng nhìn thấu trang và cho phép sử dụng cả hai mặt giấy một cách toàn diện nhất.</p><p>Chất liệu giấy an toàn, không chứa chất gây độc hại và mùi khó chịu, thân thiện với môi trường.</p>', 108000, 97200, 20, 'images/products/g2.jpg', 4, 0, 0),
(20, 'Tập Doraemon Fly - A5 5 Ô Ly 96 Trang ĐL 120g/m2 - Campus NB-ADFL96 (Màu Ngẫu Nhiên)', '<p><strong>Chất liệu:</strong></p><p>+ Giấy ngoại nhập chất lượng cao, bề mặt giấy trơn láng, viết đẹp, mượt mà.</p><p>+ Định lượng: 120g/m2.</p><p>+ Đặc biệt, tập 5 ô ly Doraemon Fly của Campus đã được cải tiến hoàn toàn mới với giấy tập đảm bảo 100% không lem cùng bìa tập trắng sáng hơn, dày hơn.</p><p><strong>Thiết kế:</strong></p><p>+ Bìa vở trẻ trung, bắt mắt và là thiết kế độc quyền của Campus.</p><p>+ Hệ thống đánh dấu bằng số thông minh cùng dòng kẻ (5 ô ly 2 x 2mm) in chính xác, rõ nét.</p>', 27000, 27000, 200, 'images/products/g3.jpg', 4, 4, 0),
(21, 'Sổ Diary Icon The Sun', '<p>Sản phẩm sử dụng loại giấy láng, mịn, không lóa mắt, phù hợp để viết và vẽ rất dễ dàng.</p><p>Sổ được sử dụng lò xo chắc chắn còn giúp bạn dễ dàng lật mở, gập sổ tiết kiệm không gian dễ dàng trong ghi chú, tốc ký.</p><p>Giấy sổ là loại giấy chất lượng cao, độ bền cao, bề mặt giấy mềm mượt, viết êm, không thấm mực và không dễ quăn hay rách, nhàu.</p><p>Cuốn sổ thích hợp dùng cho học sinh, sinh viên, nhân viên văn phòng.</p>', 39000, 35100, 50, 'images/products/g4.jpg', 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT 3,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `sodienthoai`, `matkhau`, `hoten`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'abc@abc.com', '0988994683', '900150983cd24fb0d6963f7d28e17f72', 'Long Xuyên', 1, 1, 'signup.png'),
(2, 'def@abc.com', '11111111', '900150983cd24fb0d6963f7d28e17f72', 'Mèo máy Doraemon', 2, 1, 'avatar.jpg'),
(3, 'ghi@abc.com', '0988994685', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên GHI', 2, 1, NULL),
(4, 'kh1@gmail.com', '0988994686', '900150983cd24fb0d6963f7d28e17f72', 'Nguyễn Thị Thu An', 3, 1, NULL),
(5, 'kh2@gmail.com', '0988994687', '900150983cd24fb0d6963f7d28e17f72', 'Hồ Xuân Minh', 3, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`),
  ADD KEY `diachi_id` (`diachi_id`);

--
-- Indexes for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `mathang_id` (`mathang_id`);

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhangct`
--
ALTER TABLE `donhangct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `diachi_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `donhangct`
--
ALTER TABLE `donhangct`
  ADD CONSTRAINT `donhangct_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhangct_ibfk_2` FOREIGN KEY (`mathang_id`) REFERENCES `mathang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
