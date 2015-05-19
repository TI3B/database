-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Mei 2015 pada 20.19
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
`kd_barang` int(12) NOT NULL,
  `kd_kamar` int(12) DEFAULT NULL,
  `kd_gedung` int(12) DEFAULT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kondisi` tinyint(1) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `kd_kamar`, `kd_gedung`, `nama_barang`, `kondisi`, `keterangan`) VALUES
(19, 1, NULL, 'Bantal', 1, NULL),
(20, 1, NULL, 'Kasur', 1, NULL),
(21, 1, NULL, 'Guling', 1, NULL),
(22, 1, NULL, 'Selimut', 1, NULL),
(23, 1, NULL, 'Televisi', 1, NULL),
(24, 1, NULL, 'Kulkas', 1, NULL),
(25, 1, NULL, 'Lampu Tidur', 1, NULL),
(26, 1, NULL, 'Kursi', 1, NULL),
(27, 1, NULL, 'Meja', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
 ADD PRIMARY KEY (`kd_barang`), ADD KEY `kd_kamar` (`kd_kamar`), ADD KEY `kd_gedung` (`kd_gedung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
MODIFY `kd_barang` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
