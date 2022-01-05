-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 09:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `namalengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(6, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'erick irwansyah'),
(7, 'dimas', 'd7dcb65f09eb0f95be2ecce37f9fc543f42b0ed2', 'Dimas Pandu Pratama P.A');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `idanggota` int(5) NOT NULL,
  `noanggota` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`idanggota`, `noanggota`, `nama`, `instansi`, `alamat`, `foto`) VALUES
(11, '2201050001', 'nazilla', '', 'ds. giripurno', '61d5fa6d0fdcc.jpg'),
(12, '2201050002', 'anggi', '', 'perumahan kamboja', '61d5fc576f89c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(5) NOT NULL,
  `namatamu` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `tglkunjung` varchar(10) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`idtamu`, `namatamu`, `alamat`, `instansi`, `tglkunjung`, `tujuan`) VALUES
(6, 'pratama', 'batu', ' Kota', '2022-01-05', 'tugas kuliah');

-- --------------------------------------------------------

--
-- Table structure for table `tamu2`
--

CREATE TABLE `tamu2` (
  `idtamu` int(5) NOT NULL,
  `noanggota` varchar(12) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tglkunjung` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu2`
--

INSERT INTO `tamu2` (`idtamu`, `noanggota`, `nama`, `tglkunjung`, `tujuan`) VALUES
(12, '2201050001', 'nazilla', '2022-01-05', ''),
(13, '2201050001', 'nazilla', '2022-01-05', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- Indexes for table `tamu2`
--
ALTER TABLE `tamu2`
  ADD PRIMARY KEY (`idtamu`),
  ADD KEY `noanggota` (`noanggota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `idanggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tamu2`
--
ALTER TABLE `tamu2`
  MODIFY `idtamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
