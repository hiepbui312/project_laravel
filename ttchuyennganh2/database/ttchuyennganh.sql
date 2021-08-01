-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 07:14 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttchuyennganh`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_infor`
--

CREATE TABLE `contact_infor` (
  `id` int(11) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_detail`
--

CREATE TABLE `hotel_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `available_from` date NOT NULL,
  `available_to` date NOT NULL,
  `description` mediumtext NOT NULL,
  `hotel_type` varchar(500) NOT NULL,
  `extra_people` int(11) NOT NULL,
  `minium_stay` int(11) NOT NULL,
  `city` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_detail`
--

INSERT INTO `hotel_detail` (`id`, `name`, `price`, `discount`, `hot`, `available_from`, `available_to`, `description`, `hotel_type`, `extra_people`, `minium_stay`, `city`, `country`, `img`) VALUES
(37, 'Hilton Hotel and Resorts', 412, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '4 Star', 10, 2, 'Paris', 'France', '1617886261_img4.jpg'),
(38, 'The Millennium Hilton New York', 333, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '3 Star', 10, 2, 'Paris', 'France', '1617886205_img1.jpg'),
(39, 'Best Western Grant Park Hotel', 222, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '5 Star', 10, 2, 'Paris', 'France', '1617541269_destination-img3.jpg'),
(40, 'Hyatt Regency Maui Resort & Spa', 412, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '1 Star', 10, 2, 'Paris', 'France', '1617541228_destination-img4.jpg'),
(41, 'Four Seasons Resort Maui at Wailea', 412, 10, 0, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '4 Star', 10, 2, 'Paris', 'France', '1617541178_destination-img2.jpg'),
(42, 'Hotel Europe Saint Severin Paris', 869, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '5 Star', 10, 2, 'Paris', 'France', '1617886233_img3.jpg'),
(43, 'Ibis Styles London Heathrow', 351, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '2 Star', 10, 2, 'Paris', 'France', '1617886305_img1.jpg'),
(44, 'Grand Desert Resort', 112, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '1 Star', 10, 2, 'Paris', 'English', '1617886220_img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`id`, `name`, `hotel_id`) VALUES
(118, '1617541178_destination-img2.jpg', 41),
(119, '1617541178_destination-img3.jpg', 41),
(120, '1617541178_destination-img4.jpg', 41),
(121, '1617541178_img1.jpg', 41),
(122, '1617541179_img2.jpg', 41),
(123, '1617541228_destination-img4.jpg', 40),
(124, '1617541229_hero-bg.jpg', 40),
(125, '1617541229_img1.jpg', 40),
(126, '1617541229_img2.jpg', 40),
(127, '1617541229_oceanview-cabin.jpg', 40),
(128, '1617541269_destination-img3.jpg', 39),
(129, '1617541269_destination-img4.jpg', 39),
(130, '1617541269_destination-img5.jpg', 39),
(131, '1617541269_img1.jpg', 39),
(132, '1617886205_img1.jpg', 38),
(133, '1617886205_img2.jpg', 38),
(134, '1617886205_img3.jpg', 38),
(135, '1617886205_img4.jpg', 38),
(136, '1617886205_img5.jpg', 38),
(137, '1617886206_img6.jpg', 38),
(138, '1617886220_img2.jpg', 44),
(139, '1617886220_img3.jpg', 44),
(140, '1617886220_img4.jpg', 44),
(141, '1617886220_img5.jpg', 44),
(142, '1617886233_img3.jpg', 42),
(143, '1617886233_img4.jpg', 42),
(144, '1617886233_img5.jpg', 42),
(145, '1617886261_img4.jpg', 37),
(146, '1617886261_img5.jpg', 37),
(147, '1617886261_img6.jpg', 37),
(148, '1617886305_img1.jpg', 43),
(149, '1617886306_img4.jpg', 43),
(150, '1617886306_img5.jpg', 43),
(151, '1617886306_img6.jpg', 43);

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `gmail` varchar(500) NOT NULL,
  `phone` decimal(20,0) NOT NULL,
  `address` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `country_code` varchar(500) NOT NULL,
  `card_name` varchar(500) NOT NULL,
  `card_number` decimal(20,0) NOT NULL,
  `exp_month` int(2) NOT NULL,
  `exp_year` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `check_time` varchar(500) NOT NULL,
  `room_name` varchar(500) NOT NULL,
  `rooms` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`id`, `first_name`, `last_name`, `gmail`, `phone`, `address`, `country`, `country_code`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`, `hotel_id`, `status`, `check_time`, `room_name`, `rooms`, `people`, `price`) VALUES
(7, '1', '1', '1', '1', '1', 'Afghanistan', '1', '1', '1', 1, 1, 1, 37, 0, '12-04-2021 - 12-04-2021', 'Superior Double Room', 1, 2, 371),
(8, '2', '2', '2', '2', '2', 'Afghanistan', '2', '2', '2', 22, 2, 2, 37, 0, '12-04-2021 - 12-04-2021', 'Single Bed Room', 1, 5, 371),
(9, '3', '3', '3', '3', '3', 'Åland Islands', '4', '3', '3', 3, 3, 3, 37, 0, '12-04-2021 - 12-04-2021', 'Single Bed Room', 3, 8, 1112),
(10, '11', '1', '1', '1', '1', 'Afghanistan', '1', '1', '1', 1, 1, 1, 37, 0, '12-04-2021 - 12-04-2021', 'Superior Double Room', 1, 2, 371),
(11, '112', '1', '1', '1', '1', 'Afghanistan', '1', '1', '1', 1, 1, 1, 37, 0, '12-04-2021 - 12-04-2021', 'Superior Double Room', 1, 2, 371),
(12, '113', '1', '1', '1', '1', 'Afghanistan', '1', '1', '1', 1, 1, 1, 37, 0, '12-04-2021 - 12-04-2021', 'Superior Double Room', 1, 2, 371),
(21, '5', '5', '5@y.r', '5', '5', 'Åland Islands', '2', '5', '5', 5, 5, 5, 37, 0, '13-04-2021 - 13-04-2021', 'Single Bed Room', 1, 1, 371),
(22, '123', '1', '1', '1', '1', 'Åland Islands', 'country-code', '1', '1', 1, 1, 1, 37, 0, '24-04-2021 - 24-04-2021', 'Single Bed Room', 3, 1, 1112),
(23, '123', '1', '1@1', '1', '1', 'Åland Islands', '2', '1', '1', 1, 1, 1, 37, 0, '24-04-2021 - 24-04-2021', 'Single Bed Room', 3, 1, 1112),
(24, '1', '1', '1@1', '1', '1', 'Åland Islands', 'country-code', '1', '1', 1, 1, 1, 37, 0, '24-04-2021 - 24-04-2021', 'Single Bed Room', 3, 1, 1112),
(25, '2', '2', '2@2', '2', '2', 'select-country', '1', '2', '2', 2, 2, 2, 38, 0, '24-04-2021 - 24-04-2021', 'Standard Family Room', 3, 1, 899),
(26, '123', '132', '132@3123', '1', '321', 'Albania', '2', '123', '123', 123, 123, 123, 38, 0, '05-05-2021 - 14-05-2021', 'Standard Family Room', 2, 2, 599);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `total_star` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `name`, `email`, `message`, `total_star`, `hotel_id`) VALUES
(14, '6878', 'nvb123@gmail.com', 'asdadasd', 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `room_detail`
--

CREATE TABLE `room_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_detail`
--

INSERT INTO `room_detail` (`id`, `name`, `price`, `hotel_id`, `img`) VALUES
(2, 'Standard Family Room', 121, 37, '1617723382_balcony-cabin.jpg'),
(3, 'Single Bed Room', 121, 37, '1617723382_img5.jpg'),
(4, 'Deluxe Single Room', 121, 37, '1617723382_inside-cabin.jpg'),
(5, 'Superior Double Room', 121, 37, '1617723382_oceanview-cabin.jpg'),
(6, 'Standard Family Room', 121, 38, '1617723382_balcony-cabin.jpg'),
(7, 'Single Bed Room', 121, 38, '1617723382_img5.jpg'),
(8, 'Deluxe Single Room', 121, 38, '1617723382_inside-cabin.jpg'),
(9, 'Superior Double Room', 121, 38, '1617723382_oceanview-cabin.jpg'),
(10, 'Standard Family Room', 121, 39, '1617723382_balcony-cabin.jpg'),
(11, 'Single Bed Room', 121, 39, '1617723382_img5.jpg'),
(12, 'Deluxe Single Room', 121, 39, '1617723382_inside-cabin.jpg'),
(13, 'Superior Double Room', 121, 39, '1617723382_oceanview-cabin.jpg'),
(14, 'Standard Family Room', 121, 40, '1617723382_balcony-cabin.jpg'),
(15, 'Single Bed Room', 121, 40, '1617723382_img5.jpg'),
(16, 'Deluxe Single Room', 121, 40, '1617723382_inside-cabin.jpg'),
(17, 'Superior Double Room', 121, 40, '1617723382_oceanview-cabin.jpg'),
(18, 'Standard Family Room', 121, 41, '1617723382_balcony-cabin.jpg'),
(19, 'Single Bed Room', 121, 41, '1617723382_img5.jpg'),
(20, 'Deluxe Single Room', 121, 41, '1617723382_inside-cabin.jpg'),
(21, 'Superior Double Room', 121, 41, '1617723382_oceanview-cabin.jpg'),
(22, 'Standard Family Room', 121, 42, '1617723382_balcony-cabin.jpg'),
(23, 'Single Bed Room', 121, 42, '1617723382_img5.jpg'),
(24, 'Deluxe Single Room', 121, 42, '1617723382_inside-cabin.jpg'),
(25, 'Superior Double Room', 121, 42, '1617723382_oceanview-cabin.jpg'),
(26, 'Standard Family Room', 121, 43, '1617723382_balcony-cabin.jpg'),
(27, 'Single Bed Room', 121, 43, '1617723382_img5.jpg'),
(28, 'Deluxe Single Room', 121, 43, '1617723382_inside-cabin.jpg'),
(29, 'Superior Double Room', 121, 43, '1617723382_oceanview-cabin.jpg'),
(30, 'Standard Family Room', 121, 44, '1617723382_balcony-cabin.jpg'),
(31, 'Single Bed Room', 121, 44, '1617723382_img5.jpg'),
(32, 'Deluxe Single Room', 121, 44, '1617723382_inside-cabin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`) VALUES
(3, 'hiep', 'nvb@gmail.com', '$2y$10$GxwzPYzjafc2LIm.x1pIkuGUuLTVHmfWk4bZc5XAC71wR/Ty7pX4i', 2),
(9, 'nvb@gmail.com', 'hiepbui312000@gmail.com', '$2y$10$NgsOU4pKMr6U1ieXrMvrgO5OhOXOI3n1SCVjdI4GZjKFKbJ.JdR/q', 1),
(10, '6878', 'nvb123@gmail.com', '$2y$10$rOJoMz.lxRlCra74St4gS.v68QmENpBo.Qc.Yx6xOWh6sobKKh9Y6', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_infor`
--
ALTER TABLE `contact_infor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_detail_image` (`hotel_id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_detail_payment` (`hotel_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_detail_rate` (`hotel_id`);

--
-- Indexes for table `room_detail`
--
ALTER TABLE `room_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hotel_detail_room` (`hotel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_infor`
--
ALTER TABLE `contact_infor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_detail`
--
ALTER TABLE `room_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `fk_hotel_detail_image` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`id`);

--
-- Constraints for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD CONSTRAINT `fk_hotel_detail_payment` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `fk_hotel_detail_rate` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`id`);

--
-- Constraints for table `room_detail`
--
ALTER TABLE `room_detail`
  ADD CONSTRAINT `fk_hotel_detail_room` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_detail` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
