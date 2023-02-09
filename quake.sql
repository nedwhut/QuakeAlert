-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 08:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quake`
--

-- --------------------------------------------------------

--
-- Table structure for table `hazard`
--

CREATE TABLE `hazard` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lat` decimal(10,4) NOT NULL,
  `lng` decimal(10,4) NOT NULL,
  `reporter` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hazard`
--

INSERT INTO `hazard` (`id`, `location`, `description`, `lat`, `lng`, `reporter`, `date`) VALUES
(5, 'Arau, Perlis', '77 padang sekolah', '6.4297', '100.2698', 'jigeh', '2023-02-08 11:52:18'),
(8, 'johor', 'johor bahru', '1.4788', '103.7739', 'rawr yamazaki', '2023-02-06 07:11:28'),
(9, 'usa', 'st. mountain view', '37.4003', '-122.0902', 'nurul athirah', '2023-02-06 07:13:01'),
(32, 'Sarawak', 'Bintulu ', '3.1943', '113.0953', 'Hadiya Iman', '2023-02-03 16:26:49'),
(33, 'Negeri Sembilan', 'Seremban', '2.7259', '101.9378', 'Yassin Ahmad', '2020-04-16 12:31:00'),
(34, 'Melaka', 'Batu Berendam', '2.2396', '102.2559', 'Ainin Sofea', '2022-11-23 19:35:00'),
(35, 'Johor', 'Muar', '2.0631', '102.5849', 'Karim Kassim', '2022-02-03 20:36:45'),
(36, 'Perak', 'Lumut', '4.2363', '100.6322', 'Abby Radzi', '2021-01-31 17:38:00'),
(37, 'Kedah', 'Pulau Langkawi', '6.3500', '99.8000', 'Haron Seman', '2021-10-13 06:40:17'),
(38, 'Kelantan', 'Tumpat', '6.1991', '102.1694', 'Hannah Inshi', '2019-12-26 07:41:06'),
(39, 'Pahang', 'Rompin', '2.7945', '103.4862', 'Haikal Lee', '2018-12-20 20:42:19'),
(40, 'Sabah', 'Tuaran', '6.1763', '116.2328', 'Nadine Qal', '2016-06-29 20:43:24'),
(41, 'Sarawak', 'Lawas', '4.8613', '115.4068', 'Arja Noir', '2020-08-10 03:44:57'),
(43, 'Terengganu', 'Besut', '5.8290', '102.5524', 'Andrew Lim', '2018-05-29 02:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `titlee` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `titlee`, `content`, `date`) VALUES
(1, 'test', 'test', '2023-02-05 00:00:00'),
(2, 'test', 'testing\none two three', '2023-02-05 20:48:19'),
(3, 'Earthquake Indonesia', 'Earthquake occur roday near Sumatera', '2023-02-05 20:59:19'),
(4, 'Earthquake Indonesia', 'Earthquake occur roday near Sumatera', '2023-02-05 20:59:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hazard`
--
ALTER TABLE `hazard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hazard`
--
ALTER TABLE `hazard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
