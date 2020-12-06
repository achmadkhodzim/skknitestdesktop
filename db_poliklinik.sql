-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 06:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_poliklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kd_admin` int(20) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kd_admin`, `nama_admin`, `username`, `password`, `email`, `hp`) VALUES
(1, 'Admin1', 'admin', 'admin', 'ach@gmail.com', '08131234567'),
(2, 'Admin2', 'admin2', 'admin', 'ojim@gmail.com', '08131234567');

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `kd_RM` int(20) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `kd_pasien` int(20) NOT NULL,
  `diagnosa` varchar(150) NOT NULL,
  `tindakan` varchar(150) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekammedis`
--

INSERT INTO `rekammedis` (`kd_RM`, `tgl_periksa`, `kd_pasien`, `diagnosa`, `tindakan`, `ket`) VALUES
(8, '2019-03-17', 1, 'Sakit', 'Diobati', 'Sekarat'),
(9, '2019-03-30', 4, '1', '1', '1'),
(10, '2019-04-02', 3, 'sakit hati', 'makanparacetamol', 'sembuh'),
(13, '2020-12-12', 5, '2131', '123123', '123123'),
(14, '2020-12-08', 5, '1312', '3123123', '1231232');

-- --------------------------------------------------------

--
-- Table structure for table `rekampasien`
--

CREATE TABLE `rekampasien` (
  `kd_pasien` int(20) NOT NULL,
  `namaPasien` varchar(50) NOT NULL,
  `alamatPasien` varchar(50) NOT NULL,
  `hpPasien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekampasien`
--

INSERT INTO `rekampasien` (`kd_pasien`, `namaPasien`, `alamatPasien`, `hpPasien`) VALUES
(1, 'Adiv', 'Jakal Sleman', '081245789812'),
(2, 'Gilang', 'Bantul Sewon', '081934125631'),
(3, 'Prakarsa', 'Kotagede mutihan', '089874651469'),
(4, 'Bobby', 'Kasihan tamantirto', '085512439870'),
(5, 'Bagus', 'Glagahsari umbulharjo', '081347770643');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD PRIMARY KEY (`kd_RM`),
  ADD KEY `kd_pasien` (`kd_pasien`);

--
-- Indexes for table `rekampasien`
--
ALTER TABLE `rekampasien`
  ADD PRIMARY KEY (`kd_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `kd_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rekammedis`
--
ALTER TABLE `rekammedis`
  MODIFY `kd_RM` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rekampasien`
--
ALTER TABLE `rekampasien`
  MODIFY `kd_pasien` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD CONSTRAINT `rekammedis_ibfk_1` FOREIGN KEY (`kd_pasien`) REFERENCES `rekampasien` (`kd_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
