-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 07:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bike_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bike_list`
--

CREATE TABLE `bike_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `bike_model` text NOT NULL,
  `description` text NOT NULL,
  `quantity` tinyint(3) NOT NULL DEFAULT 0,
  `daily_rate` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bike_list`
--

INSERT INTO `bike_list` (`id`, `brand_id`, `category_id`, `bike_model`, `description`, `quantity`, `daily_rate`, `status`, `date_created`, `date_updated`) VALUES
(0, 7, 1, 'TVS Ntorq 125 ', 'The TVS Ntorq 125 is a sporty and feature-packed scooter aimed at urban commuters seeking style and performance. Powered by a peppy 125cc engine, it delivers a blend of power and efficiency suitable for city riding. Its aggressive design is complemented by features such as LED lighting, digital instrument cluster with smartphone connectivity, and a sporty exhaust note. Equipped with a front disc brake, telescopic suspension, and tubeless tires, it offers confident handling and braking. The Ntorq 125 also stands out with its segment-first features like Bluetooth-enabled navigation, smartphone app integration, and an external fuel filler cap. With its combination of style, performance, and technology, the TVS Ntorq 125 appeals to young riders looking for a dynamic and connected riding experience in urban environments.', 10, 900, 1, '2024-03-06 21:30:35', NULL),
(1, 6, 2, 'Yamaha FZ-X', 'The Yamaha FZ-X is a rugged and stylish urban motorcycle, blending modern design with adventure-inspired elements. Powered by a 149cc engine, it delivers a balance of power and efficiency suitable for city commuting and light touring. With its upright riding position, LED lighting, and digital instrument cluster, it offers convenience and style. The FZ-X\\&#039;s robust build and off-road-inspired features make it a versatile choice for riders seeking adventure on and off the road.', 3, 2600, 1, '2024-03-06 21:30:35', '2024-03-06 23:41:13'),
(2, 8, 3, 'Ducati Corse', '&lt;p&gt;Ducati Corse is the racing division of Ducati Motor Holding S.p.A., the Italian motorcycle manufacturer. It specializes in developing and racing high-performance motorcycles in various racing championships, including MotoGP, Superbike World Championship, and MotoAmerica. Ducati Corse motorcycles are renowned for their cutting-edge technology, innovative design, and competitive success on the racetrack, embodying Ducati\\&#039;s commitment to performance and excellence in motorcycle racing.&lt;br&gt;&lt;/p&gt;', 6, 2400, 1, '2024-03-06 21:33:58', '2024-03-07 00:25:40'),
(5, 1, 3, 'Kawasaki Ninja 300', 'The Kawasaki Ninja 300 is a popular entry-level sportbike renowned for its nimble handling and sporty performance. Powered by a 296cc parallel-twin engine, it offers a thrilling riding experience while remaining accessible to riders of various skill levels. With its aggressive styling and versatile capabilities, it\\&#039;s a top choice for riders seeking excitement on the streets and track alike.', 3, 3400, 1, '2024-03-06 21:42:34', '2024-03-06 23:30:41'),
(7, 4, 4, 'Royal Enfield Himalayan', 'The Royal Enfield Himalayan is a touring motorcycle designed for rugged terrain and long-distance travel. It\\&#039;s powered by a 411cc single-cylinder engine, providing sufficient torque for off-road riding. With its robust chassis, long-travel suspension, and spoked wheels, it offers excellent stability and maneuverability on various surfaces. The Himalayan features a comfortable upright riding position, windscreen, and luggage mounts, making it suitable for extended adventures. Its simplicity, durability, and versatility have made it a popular choice among riders exploring both urban and remote landscapes.', 5, 2200, 1, '2024-03-06 21:43:48', '2024-03-06 23:47:03'),
(8, 5, 2, 'BMW R 1250 GS', '&lt;span style=\\&quot;color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, &amp;quot;Liberation Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;\\&quot;&gt;The BMW R 1250 GS is a renowned adventure&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, &amp;quot;Liberation Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 1rem;\\&quot;&gt;motorcycle, featuring a potent 1,254 cc boxer engine with ShiftCam technology for enhanced performance. It boasts adaptive headlight technology, multiple riding modes, and optional connectivity features for smartphone integration. Equipped with Dynamic ESA and advanced safety systems like ABS Pro and Dynamic Traction Control, it offers superior handling and braking. A color TFT display provides essential information, while keyless ride adds convenience. Optional accessories, including luggage systems and protective guards, cater to long-distance touring needs. With its versatility and reliability, the R 1250 GS remains a top choice for riders seeking adventure on and off-road&lt;/span&gt;', 4, 3000, 1, '2024-03-06 23:52:12', '2024-03-07 00:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `status`, `date_created`) VALUES
(1, 'Kawasaki', 1, '2021-10-13 09:24:03'),
(2, 'Honda', 1, '2021-10-13 09:25:37'),
(3, 'Yamaha', 1, '2021-10-13 09:26:02'),
(4, 'Royal enfield', 1, '2021-10-13 09:26:11'),
(5, 'BMW', 1, '2021-10-13 09:26:16'),
(6, 'Vespa', 1, '2021-10-13 09:26:41'),
(7, 'TVS', 1, '2024-03-06 21:28:11'),
(8, 'Ducati', 1, '2024-03-07 00:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Scooter', 'Scooter category', 1, '2021-10-13 09:39:31'),
(2, 'Adventure Bike', 'Adventure Bike Category', 1, '2021-10-13 09:40:06'),
(3, 'Sports Bike', 'Sports Bike Category', 1, '2021-10-13 09:45:32'),
(4, 'Touring Bike', 'Touring Bike Category', 1, '2021-10-13 09:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `address`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '09123456789', 'jsmith@sample.com', '39ce7e2a8573b41ce73b5ba41617f8f7', 'Sample', '2021-10-13 14:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `rent_list`
--

CREATE TABLE `rent_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `bike_id` int(30) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `rent_days` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Confirmed,2=Cancelled,3=Picked -up, 4 =Returned',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent_list`
--

INSERT INTO `rent_list` (`id`, `client_id`, `bike_id`, `date_start`, `date_end`, `rent_days`, `amount`, `status`, `date_created`, `date_updated`) VALUES
(2, 1, 1, '2021-10-15', '2021-10-16', 2, 5000, 0, '2021-10-13 15:30:43', NULL),
(3, 1, 1, '2021-10-15', '2021-10-15', 1, 2500, 0, '2021-10-13 15:31:35', NULL),
(4, 1, 1, '2021-10-14', '2021-10-15', 2, 5000, 0, '2021-10-13 15:32:48', NULL),
(5, 1, 2, '2021-10-19', '2021-10-21', 3, 4500, 2, '2021-10-13 15:33:37', '2021-10-13 16:20:19'),
(6, 1, 2, '2021-10-18', '2021-10-19', 2, 3000, 1, '2021-10-13 15:34:22', '2021-10-13 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Motorcycle (Bike) Rental System'),
(6, 'short_name', 'Bike Rental'),
(11, 'logo', 'uploads/1634087520_bike-logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1634087520_bike-img-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike_list`
--
ALTER TABLE `bike_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_list`
--
ALTER TABLE `rent_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rent_list`
--
ALTER TABLE `rent_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
