-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 04:20 PM
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
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'KOPO 05', '1747423410.3134682790b24c84f.png', 'Jln. Kopo Lembah Nyiur KM. 79 RT 005/001 Ds.Kopo, Kec.Cisarua, Kab.Bogor', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d495.3521661859854!2d106.92529019300304!3d-6.669544099999993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69b63223213135%3A0x1acbec7dd919336d!2s8WJG%2B586%2C%20Kopo%2C%20Kec.%20Cisarua%2C%20Kabupaten%20Bogor%2C%20Jawa%20Barat%2016750!5e0!3m2!1sid!2sid!4v1747423519568!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\">', 'wargakopo01@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(1, 'RT 05');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` char(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_kependudukan`
--

INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('320125123123001', '3201251202000002', 'Peri Setiawan', '9', 1, 'Bogor', '2000-02-12', '25', '3', '15', 'Edi Juanda', 'Nurjanah', 'TILONGKABILA', 'BUTU', 1, 'islam', '1', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('3201251202000002', 'Peri Setiawan', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('3201251202000002', 'Peri Setiawan', 'Lainnya', 2500000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('3201251202000002', 'Peri Setiawan', 'S1 dan Sederajat');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('3201251202000002', 'Peri Setiawan', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(1, 'Administrator', 'Perri', 'cbc9a6d7435ed0fed353320112abee13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
