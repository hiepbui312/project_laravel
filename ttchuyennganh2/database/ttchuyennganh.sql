-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 04:42 PM
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
-- Table structure for table `car_detail`
--

CREATE TABLE `car_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `rental_company` varchar(500) NOT NULL,
  `car_type` varchar(500) NOT NULL,
  `car_name` varchar(500) NOT NULL,
  `passengers` int(11) NOT NULL,
  `baggage` int(11) NOT NULL,
  `car_features` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `hot` int(11) NOT NULL,
  `pick_up_location_details` varchar(500) NOT NULL,
  `drop_off_location_details` varchar(500) NOT NULL,
  `pick_up_time` date NOT NULL,
  `drop_off_time` date NOT NULL,
  `pick_up_location` varchar(500) NOT NULL,
  `drop_out_location` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car_images`
--

CREATE TABLE `car_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cruise_detail`
--

CREATE TABLE `cruise_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `hot` int(11) NOT NULL,
  `date_launched` date NOT NULL,
  `age_of_ship` date NOT NULL,
  `refurbished_date` date NOT NULL,
  `tonnage` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `beam` int(11) NOT NULL,
  `draft` int(11) NOT NULL,
  `speed` float NOT NULL,
  `guest_capacity` int(11) NOT NULL,
  `total_staff` int(11) NOT NULL,
  `officers` varchar(500) NOT NULL,
  `dining_crew` varchar(500) NOT NULL,
  `other_crew` varchar(500) NOT NULL,
  `registry` varchar(500) NOT NULL,
  `ship_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cruise_images`
--

CREATE TABLE `cruise_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `cruise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight_detail`
--

CREATE TABLE `flight_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `airline` varchar(500) NOT NULL,
  `flight_type` varchar(500) NOT NULL,
  `fare_type` varchar(500) NOT NULL,
  `cancellation` int(11) NOT NULL,
  `flight_change` int(11) NOT NULL,
  `seats_baggage` varchar(500) NOT NULL,
  `inflight_feature` varchar(500) NOT NULL,
  `base_fare` int(11) NOT NULL,
  `taxes_fees` int(11) NOT NULL,
  `hot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight_images`
--

CREATE TABLE `flight_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `flight_id` int(11) NOT NULL
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
  `country` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_detail`
--

INSERT INTO `hotel_detail` (`id`, `name`, `price`, `discount`, `hot`, `available_from`, `available_to`, `description`, `hotel_type`, `extra_people`, `minium_stay`, `city`, `country`) VALUES
(37, 'Hilton Hotel and Resorts', 412, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '4 Star', 0, 2, 'Paris', 'France'),
(38, 'The Millennium Hilton New York', 333, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '3 Star', 0, 2, 'Paris', 'France'),
(39, 'Best Western Grant Park Hotel', 222, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '5 Star', 0, 2, 'Paris', 'France'),
(40, 'Hyatt Regency Maui Resort & Spa', 412, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '1 Star', 0, 2, 'Paris', 'France'),
(41, 'Four Seasons Resort Maui at Wailea', 412, 10, 0, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '4 Star', 0, 2, 'Paris', 'France'),
(42, 'Hotel Europe Saint Severin Paris', 869, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '5 Star', 0, 2, 'Paris', 'France'),
(43, 'Ibis Styles London Heathrow', 351, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '2 Star', 0, 2, 'Paris', 'France'),
(44, 'Grand Desert Resort', 112, 10, 1, '2021-01-01', '2022-01-01', '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>', '1 Star', 0, 2, 'Paris', 'France');

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
(131, '1617541269_img1.jpg', 39);

-- --------------------------------------------------------

--
-- Table structure for table `tour_detail`
--

CREATE TABLE `tour_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `group_size` int(11) NOT NULL,
  `tour_type` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `min_age` int(11) NOT NULL,
  `pickup_from` varchar(500) NOT NULL,
  `hot` int(11) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_detail`
--

INSERT INTO `tour_detail` (`id`, `name`, `price`, `discount`, `duration`, `group_size`, `tour_type`, `date`, `min_age`, `pickup_from`, `hot`, `description`) VALUES
(2, '3 Days Tour: the Great Wall of China', 412, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(3, 'Empire State Building Admission', 3123, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(4, 'Hut on Blue Water Beach Tour', 523, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(5, 'Golden Gate Seaplane Tour', 412, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(6, 'Two Hours Guided Horseback Tour', 412, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(7, 'Scuba Diving in Boyton Beach', 412, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(8, 'Mangrove Tunnel Kayak Eco Tour', 222, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>'),
(9, '3 Days Tour: viet nam', 312, 10, 5, 30, 'Adventures Tour', '2021-05-05', 10, 'Airport', 1, '<p>Per consequat adolescens ex, cu nibh commune temporibus vim, ad sumo viris eloquentiam sed. Mea appareat omittantur eloquentiam ad, nam ei quas oportere democritum. Prima causae admodum id est, ei timeam inimicus sed. Sit an meis aliquam, cetero inermis vel ut. An sit illum euismod facilisis, tamquam vulputate pertinacia eum at.</p>\r\n\r\n<p>Cum et probo menandri. Officiis consulatu pro et, ne sea sale invidunt, sed ut sint blandit efficiendi. Atomorum explicari eu qui, est enim quaerendum te. Quo harum viris id. Per ne quando dolore evertitur, pro ad cibo commune.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tour_images`
--

CREATE TABLE `tour_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_images`
--

INSERT INTO `tour_images` (`id`, `name`, `tour_id`) VALUES
(5, '1617542409_destination-img.jpg', 2),
(6, '1617542409_destination-img2.jpg', 2),
(7, '1617542409_destination-img3.jpg', 2),
(8, '1617542409_destination-img4.jpg', 2),
(14, '1617542538_img9.jpg', 9),
(15, '1617542538_img10.jpg', 9),
(16, '1617542538_img11.jpg', 9),
(17, '1617542538_img12.jpg', 9),
(18, '1617542538_img13.jpg', 9),
(19, '1617542584_img9.jpg', 8),
(20, '1617542584_img10.jpg', 8),
(21, '1617542584_img11.jpg', 8),
(22, '1617542585_img12.jpg', 8),
(23, '1617542585_img13.jpg', 8),
(24, '1617542600_img9.jpg', 6),
(25, '1617542600_img10.jpg', 6),
(26, '1617542600_img11.jpg', 6),
(27, '1617542600_img12.jpg', 6),
(28, '1617542600_img13.jpg', 6),
(29, '1617542629_img6.jpg', 7),
(30, '1617542629_img9.jpg', 7),
(31, '1617542629_img10.jpg', 7),
(32, '1617542629_img11.jpg', 7),
(33, '1617542629_img12.jpg', 7),
(34, '1617542630_img13.jpg', 7),
(35, '1617542646_img9.jpg', 5),
(36, '1617542646_img12.jpg', 5),
(37, '1617542646_img13.jpg', 5),
(38, '1617542646_img14.jpg', 5),
(39, '1617542685_img6.jpg', 4),
(40, '1617542685_img12.jpg', 4),
(41, '1617542685_img13.jpg', 4),
(42, '1617542706_blog-img2.jpg', 3),
(43, '1617542706_img6.jpg', 3),
(44, '1617542706_img9.jpg', 3),
(45, '1617542706_img11.jpg', 3),
(46, '1617542706_img12.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'hiep', 'nvb@gmail.com', '$2y$10$GxwzPYzjafc2LIm.x1pIkuGUuLTVHmfWk4bZc5XAC71wR/Ty7pX4i');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_detail`
--

CREATE TABLE `zoom_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zoom_detail`
--

INSERT INTO `zoom_detail` (`id`, `name`, `price`, `hotel_id`) VALUES
(2, 'Standard Family Room', 121, 1),
(3, 'Single Bed Room', 121, 1),
(4, 'Deluxe Single Room', 121, 1),
(5, 'Superior Double Room', 121, 1),
(6, 'Standard Family Room', 121, 2),
(7, 'Single Bed Room', 121, 2),
(8, 'Deluxe Single Room', 121, 2),
(9, 'Superior Double Room', 121, 2),
(10, 'Standard Family Room', 121, 3),
(11, 'Single Bed Room', 121, 3),
(12, 'Deluxe Single Room', 121, 3),
(13, 'Superior Double Room', 121, 3),
(14, 'Standard Family Room', 121, 4),
(15, 'Single Bed Room', 121, 4),
(16, 'Deluxe Single Room', 121, 4),
(17, 'Superior Double Room', 121, 4),
(18, 'Standard Family Room', 121, 5),
(19, 'Single Bed Room', 121, 5),
(20, 'Deluxe Single Room', 121, 5),
(21, 'Superior Double Room', 121, 5),
(22, 'Standard Family Room', 121, 6),
(23, 'Single Bed Room', 121, 6),
(24, 'Deluxe Single Room', 121, 6),
(25, 'Superior Double Room', 121, 6),
(26, 'Standard Family Room', 121, 7),
(27, 'Single Bed Room', 121, 7),
(28, 'Deluxe Single Room', 121, 7),
(29, 'Superior Double Room', 121, 7),
(30, 'Standard Family Room', 121, 8),
(31, 'Single Bed Room', 121, 8),
(32, 'Deluxe Single Room', 121, 8),
(33, 'Superior Double Room', 121, 8);

-- --------------------------------------------------------

--
-- Table structure for table `zoom_images`
--

CREATE TABLE `zoom_images` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `zoom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zoom_images`
--

INSERT INTO `zoom_images` (`id`, `name`, `zoom_id`) VALUES
(2, '1617723382_balcony-cabin.jpg', 2),
(3, '1617723382_img5.jpg', 2),
(4, '1617723382_inside-cabin.jpg', 2),
(5, '1617723382_oceanview-cabin.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_detail`
--
ALTER TABLE `car_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_images`
--
ALTER TABLE `car_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruise_detail`
--
ALTER TABLE `cruise_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruise_images`
--
ALTER TABLE `cruise_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_detail`
--
ALTER TABLE `flight_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_images`
--
ALTER TABLE `flight_images`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_detail`
--
ALTER TABLE `tour_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_images`
--
ALTER TABLE `tour_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_detail`
--
ALTER TABLE `zoom_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_images`
--
ALTER TABLE `zoom_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_detail`
--
ALTER TABLE `car_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_images`
--
ALTER TABLE `car_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cruise_detail`
--
ALTER TABLE `cruise_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cruise_images`
--
ALTER TABLE `cruise_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `flight_detail`
--
ALTER TABLE `flight_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flight_images`
--
ALTER TABLE `flight_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hotel_detail`
--
ALTER TABLE `hotel_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tour_detail`
--
ALTER TABLE `tour_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tour_images`
--
ALTER TABLE `tour_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zoom_detail`
--
ALTER TABLE `zoom_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `zoom_images`
--
ALTER TABLE `zoom_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
