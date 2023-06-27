-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230521.9b5d151d63
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 07:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis_baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_alternatif`
--

CREATE TABLE `tab_alternatif` (
  `id_alternatif` int(10) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_alternatif`
--

INSERT INTO `tab_alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(1, 'Amelia Nurihayati'),
(2, 'Ahmad Fikri'),
(3, 'Deni Nugroho'),
(4, 'Dian Ayu Rizqia'),
(5, 'Eni Idayanti'),
(6, 'Mediana Kusumawati'),
(7, 'Lestari Dwi Febriyani'),
(8, 'Ahmad Shobirin'),
(9, 'Novita Dyah Wijaya'),
(10, 'Lukman Harun'),
(11, 'Apriyani Wulandari'),
(12, 'Lusi Aprilia'),
(13, 'Irfan Bayu'),
(14, 'Ila Putri Pertiwi'),
(15, 'Putri Fitria Anjani'),
(16, 'Rahmi Nurhijah'),
(17, 'Susilo Wibowo'),
(18, 'Maya Nur Fitriani'),
(19, 'Vina Widya Anggraeni'),
(20, 'Raden Tri Rahmat');

-- --------------------------------------------------------

--
-- Table structure for table `tab_kriteria`
--

CREATE TABLE `tab_kriteria` (
  `id_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` float NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_kriteria`
--

INSERT INTO `tab_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `status`) VALUES
('1', 'Nilai uji tes Matematika', 0.1, 'Benefit'),
('2', 'Nilai uji tes Biologi', 0.1, 'Benefit'),
('3', 'Nilai Uji Tes Fisika', 0.1, 'Benefit'),
('4', 'Nilai Uji Tes Kimia', 0.1, 'Benefit'),
('5', 'Nilai Uji Tes Komputer', 0.1, 'Benefit'),
('6', 'Kecakapan', 0.15, 'Benefit'),
('7', 'Mental', 0.1, 'Benefit'),
('8', 'Nilai Rata Rapor Terakhir', 0.2, 'Benefit'),
('9', 'Jumlah Absen', 0.05, 'Cost');

-- --------------------------------------------------------

--
-- Table structure for table `tab_topsis`
--

CREATE TABLE `tab_topsis` (
  `id_alternatif` bigint(10) NOT NULL,
  `id_kriteria` bigint(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_topsis`
--

INSERT INTO `tab_topsis` (`id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 1, 87),
(1, 2, 85),
(1, 3, 80),
(1, 4, 85),
(1, 5, 82),
(1, 6, 4),
(1, 7, 3),
(1, 8, 82),
(1, 9, 2),
(2, 1, 85),
(2, 2, 80),
(2, 3, 83),
(2, 4, 80),
(2, 5, 90),
(2, 6, 3),
(2, 7, 3),
(2, 8, 80),
(2, 9, 3),
(3, 1, 80),
(3, 2, 82),
(3, 3, 85),
(3, 4, 88),
(3, 5, 74),
(3, 6, 2),
(3, 7, 3),
(3, 8, 86),
(3, 9, 1),
(4, 1, 90),
(4, 2, 80),
(4, 3, 78),
(4, 4, 88),
(4, 5, 87),
(4, 6, 3),
(4, 7, 2),
(4, 8, 85),
(4, 9, 1),
(5, 1, 92),
(5, 2, 80),
(5, 3, 95),
(5, 4, 80),
(5, 5, 74),
(5, 6, 3),
(5, 7, 3),
(5, 8, 90),
(5, 9, 1),
(6, 1, 88),
(6, 2, 95),
(6, 3, 80),
(6, 4, 75),
(6, 5, 85),
(6, 6, 3),
(6, 7, 4),
(6, 8, 86),
(6, 9, 2),
(7, 1, 98),
(7, 2, 85),
(7, 3, 80),
(7, 4, 85),
(7, 5, 86),
(7, 6, 3),
(7, 7, 3),
(7, 8, 89),
(7, 9, 1),
(8, 1, 94),
(8, 2, 70),
(8, 3, 75),
(8, 4, 85),
(8, 5, 72),
(8, 6, 3),
(8, 7, 2),
(8, 8, 85),
(8, 9, 1),
(9, 1, 80),
(9, 2, 88),
(9, 3, 70),
(9, 4, 80),
(9, 5, 73),
(9, 6, 3),
(9, 7, 2),
(9, 8, 83),
(9, 9, 2),
(10, 1, 87),
(10, 2, 95),
(10, 3, 75),
(10, 4, 85),
(10, 5, 83),
(10, 6, 2),
(10, 7, 3),
(10, 8, 81),
(10, 9, 1),
(11, 1, 94),
(11, 2, 75),
(11, 3, 86),
(11, 4, 90),
(11, 5, 87),
(11, 6, 4),
(11, 7, 3),
(11, 8, 85),
(11, 9, 2),
(12, 1, 94),
(12, 2, 80),
(12, 3, 90),
(12, 4, 85),
(12, 5, 75),
(12, 6, 3),
(12, 7, 4),
(12, 8, 90),
(12, 9, 1),
(13, 1, 78),
(13, 2, 82),
(13, 3, 85),
(13, 4, 88),
(13, 5, 90),
(13, 6, 3),
(13, 7, 4),
(13, 8, 82),
(13, 9, 1),
(14, 1, 100),
(14, 2, 88),
(14, 3, 98),
(14, 4, 80),
(14, 5, 85),
(14, 6, 4),
(14, 7, 3),
(14, 8, 92),
(14, 9, 1),
(15, 1, 92),
(15, 2, 90),
(15, 3, 85),
(15, 4, 80),
(15, 5, 78),
(15, 6, 4),
(15, 7, 3),
(15, 8, 80),
(15, 9, 1),
(16, 1, 80),
(16, 2, 92),
(16, 3, 82),
(16, 4, 90),
(16, 5, 88),
(16, 6, 3),
(16, 7, 3),
(16, 8, 82),
(16, 9, 1),
(17, 1, 85),
(17, 2, 82),
(17, 3, 90),
(17, 4, 85),
(17, 5, 85),
(17, 6, 3),
(17, 7, 3),
(17, 8, 89),
(17, 9, 1),
(18, 1, 88),
(18, 2, 90),
(18, 3, 78),
(18, 4, 75),
(18, 5, 80),
(18, 6, 3),
(18, 7, 2),
(18, 8, 78),
(18, 9, 1),
(19, 1, 100),
(19, 2, 92),
(19, 3, 85),
(19, 4, 88),
(19, 5, 85),
(19, 6, 3),
(19, 7, 3),
(19, 8, 93),
(19, 9, 1),
(20, 1, 89),
(20, 2, 82),
(20, 3, 87),
(20, 4, 90),
(20, 5, 78),
(20, 6, 2),
(20, 7, 4),
(20, 8, 78),
(20, 9, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
