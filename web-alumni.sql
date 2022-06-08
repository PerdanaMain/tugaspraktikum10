-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 05:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webalumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `angkatan` varchar(50) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `name`, `address`, `email`, `angkatan`, `jurusan`, `username`, `password`) VALUES
(1, 'Firman Perdana', 'sidoarjo', 'firman.fp123@gmail.com', '2020', 'si', 'firman', 'firman'),
(3, 'Dimas', 'gresik', 'dimas@gmail.com', '2020', 'si', 'dimas', 'dimas'),
(4, 'aji', 'surabaya', 'aji@gmail.com', '2020', 'si', 'aji', 'aji'),
(5, 'Aditya Kurnia', 'Lamongan', 'adit@gmail.com', '2020', 'si', 'adit', 'adit');

-- --------------------------------------------------------

--
-- Table structure for table `pesanalumni`
--

CREATE TABLE `pesanalumni` (
  `id` int(5) NOT NULL,
  `posted` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `address` varchar(75) NOT NULL,
  `tahunlulus` varchar(75) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `message` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanalumni`
--

INSERT INTO `pesanalumni` (`id`, `posted`, `name`, `email`, `address`, `tahunlulus`, `pekerjaan`, `message`) VALUES
(5, '2022-06-08', 'Aditya Kurnia', 'adit@gmail.com', 'Lamongan', '2024', 'Bisnis Analyst', 0x497961),
(6, '2022-06-08', 'Firman Perdana', 'firman.fp123@gmail.com', 'sidoarjo', '2024', 'Programmer', 0x48656c6c6f20576f726c6428293b),
(7, '2022-06-08', 'Dimas', 'dimas@gmail.com', 'gresik', '2024', 'Developer', 0x596f69),
(8, '2022-06-08', 'aji', 'aji@gmail.com', 'surabaya', '2024', 'Bisnis Analyst', 0x55616e672055616e67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanalumni`
--
ALTER TABLE `pesanalumni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanalumni`
--
ALTER TABLE `pesanalumni`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
