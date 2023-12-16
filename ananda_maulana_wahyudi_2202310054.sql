-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2023 at 08:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ananda_maulana_wahyudi_2202310054`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `npm` varchar(15) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `no_hp` char(15) NOT NULL,
  `id_prodi` int NOT NULL,
  `id_sistem_kuliah` int NOT NULL,
  `id_status_mhs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `npm`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `no_hp`, `id_prodi`, `id_sistem_kuliah`, `id_status_mhs`) VALUES
(2, ' Ananda Maulana Wahyudi ', ' 220231005422', '2003-03-31', ' sumenep ', 'laki-laki', ' 01233995872', 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int NOT NULL,
  `nama_pembayaran` varchar(100) NOT NULL,
  `nominal_terbayar` varchar(100) NOT NULL,
  `id_mahasiswa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `jenjang_prodi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `jenjang_prodi`) VALUES
(1, ' informatika b', ' S1 ');

-- --------------------------------------------------------

--
-- Table structure for table `sistem_kuliah`
--

CREATE TABLE `sistem_kuliah` (
  `id_sistem_kuliah` int NOT NULL,
  `nama_sistem_kuliah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sistem_kuliah`
--

INSERT INTO `sistem_kuliah` (`id_sistem_kuliah`, `nama_sistem_kuliah`) VALUES
(2, 'swasta');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status_mhs` int NOT NULL,
  `status_mhs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status_mhs`, `status_mhs`) VALUES
(2, 'Baik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `sistem_kuliah`
--
ALTER TABLE `sistem_kuliah`
  ADD PRIMARY KEY (`id_sistem_kuliah`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status_mhs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sistem_kuliah`
--
ALTER TABLE `sistem_kuliah`
  MODIFY `id_sistem_kuliah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status_mhs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
