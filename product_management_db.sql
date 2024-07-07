

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- 
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `tbl_product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `tbl_supplier_id` int(11) NOT NULL,
  `purchase` int(11) NOT NULL,
  `selling` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`tbl_product_id`, `product_name`, `tbl_supplier_id`, `purchase`, `selling`, `stock`, `date_updated`) VALUES
(1, 'Apple iPhone 13', 1, 100, 120, 50, '2024-05-01 09:00:00'),
(2, 'Samsung Galaxy S22', 1, 150, 180, 60, '2024-05-01 09:01:00'),
(3, 'Google Pixel 6', 3, 80, 100, 30, '2024-05-01 09:02:00'),
(4, 'OnePlus 9', 4, 200, 220, 70, '2024-05-01 09:03:00'),
(5, 'Sony Xperia 1', 1, 90, 110, 40, '2024-05-01 09:04:00'),
(6, 'Huawei P50', 1, 120, 140, 55, '2024-05-01 09:05:00'),
(7, 'Nokia 8.3 5G', 2, 130, 150, 65, '2024-05-01 09:06:00'),
(8, 'Xiaomi Mi 11', 3, 70, 90, 35, '2024-05-01 09:07:00'),
(9, 'Oppo Find X3', 4, 180, 200, 75, '2024-05-01 09:08:00'),
(10, 'LG Velvet', 5, 110, 130, 45, '2024-05-01 09:09:00'),
(11, 'Motorola Edge 20', 1, 130, 150, 60, '2024-05-01 09:10:00'),
(12, 'Asus ROG Phone 5', 2, 160, 180, 70, '2024-05-01 09:11:00'),
(13, 'Realme GT', 3, 90, 110, 40, '2024-05-01 09:12:00'),
(14, 'ZTE Axon 30', 4, 220, 240, 80, '2024-05-01 09:13:00'),
(15, 'Lenovo Legion Phone Duel', 5, 120, 140, 50, '2024-05-01 09:14:00'),
(16, 'Vivo X70 Pro+', 1, 140, 160, 65, '2024-05-01 09:15:00'),
(17, 'Meizu 18', 2, 170, 190, 75, '2024-05-01 09:16:00'),
(18, 'Honor 50', 3, 100, 120, 45, '2024-05-01 09:17:00'),
(19, 'TCL 20 Pro 5G', 4, 240, 260, 85, '2024-05-01 09:18:00'),
(20, 'Microsoft Surface Duo', 5, 130, 150, 55, '2024-05-01 09:19:00'),
(21, 'Fairphone 4', 1, 150, 170, 70, '2024-05-01 09:20:00'),
(22, 'Infinix Zero X', 2, 180, 200, 80, '2024-05-01 09:21:00'),
(23, 'Tecno Phantom X', 3, 110, 130, 50, '2024-05-01 09:22:00'),
(24, 'Blackberry Key2', 4, 260, 280, 90, '2024-05-01 09:23:00'),
(25, 'Alcatel 1S', 5, 140, 160, 60, '2024-05-01 09:24:00'),
(26, 'Cat S62 Pro', 1, 160, 180, 75, '2024-05-01 09:25:00'),
(27, 'Doogee S97 Pro', 2, 190, 210, 85, '2024-05-01 09:26:00'),
(28, 'Umidigi Bison Pro', 3, 120, 140, 55, '2024-05-01 09:27:00'),
(29, 'Redmi Note 11 Pro', 4, 280, 300, 95, '2024-05-01 09:28:00'),
(30, 'Poco X3 Pro', 5, 150, 170, 65, '2024-05-01 09:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `tbl_supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`tbl_supplier_id`, `supplier_name`, `supplier_contact`) VALUES
(1, 'Jawad', '03170816303'),
(2, 'Romina', '03485851144'),
(3, 'Roheen', '03457865467'),
(4, 'Saad', '03246786546'),
(5, 'Awais', '032165437876');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`tbl_product_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`tbl_supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `tbl_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `tbl_supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

