-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 07:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kebun_sawit`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemupukan`
--

CREATE TABLE `pemupukan` (
  `id` varchar(50) NOT NULL,
  `tanggal_pemupukan` date NOT NULL,
  `id_pohon` varchar(50) NOT NULL,
  `jenis_pupuk` varchar(50) NOT NULL,
  `dosis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pohon`
--

CREATE TABLE `pohon` (
  `id` varchar(50) NOT NULL,
  `tahun_tanam` date NOT NULL,
  `jenis_bibit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id` varchar(50) NOT NULL,
  `tanggal_panen` date NOT NULL,
  `id_pohon` varchar(50) NOT NULL,
  `jumlah_buah` int(11) NOT NULL,
  `buah_matang` int(11) NOT NULL,
  `Jumlah_bunga_dompet` int(11) NOT NULL,
  `jumlah_bunga_jantan` int(11) NOT NULL,
  `jumlah_bunga_betina` int(11) DEFAULT NULL,
  `jumlah_janjang_panen` int(11) NOT NULL,
  `berat_janjang_panen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemupukan`
--
ALTER TABLE `pemupukan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pohon`
--
ALTER TABLE `pohon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
