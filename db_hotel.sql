-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Mei 2015 pada 03.33
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_booking_gedung`
--

CREATE TABLE IF NOT EXISTS `tb_booking_gedung` (
`kd_booking_gedung` int(12) NOT NULL,
  `kd_data_penyewa` int(12) NOT NULL,
  `kd_gedung` int(12) NOT NULL,
  `kd_tipe_sewa` int(12) NOT NULL,
  `tanggal_booking` datetime NOT NULL,
  `tanggal_sewa` datetime NOT NULL,
  `durasi` int(3) NOT NULL,
  `jumlah_tamu` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `lunas` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_booking_gedung`
--

INSERT INTO `tb_booking_gedung` (`kd_booking_gedung`, `kd_data_penyewa`, `kd_gedung`, `kd_tipe_sewa`, `tanggal_booking`, `tanggal_sewa`, `durasi`, `jumlah_tamu`, `keterangan`, `lunas`) VALUES
(1, 1, 1, 2, '2015-05-20 00:00:00', '2015-05-29 00:00:00', 1, 150, 'Lunas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_booking_kamar`
--

CREATE TABLE IF NOT EXISTS `tb_booking_kamar` (
`kd_booking_kamar` int(12) NOT NULL,
  `kd_kamar` int(12) NOT NULL,
  `kd_data_penginap` int(12) NOT NULL,
  `tanggal_booking` datetime NOT NULL,
  `tanggal_check_in` datetime NOT NULL,
  `durasi` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_booking_kamar`
--

INSERT INTO `tb_booking_kamar` (`kd_booking_kamar`, `kd_kamar`, `kd_data_penginap`, `tanggal_booking`, `tanggal_check_in`, `durasi`) VALUES
(1, 1, 1, '2015-05-08 09:32:42', '2015-06-02 14:00:00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_check_in`
--

CREATE TABLE IF NOT EXISTS `tb_check_in` (
`kd_check_in` int(12) NOT NULL,
  `kd_kamar` int(12) NOT NULL,
  `kd_data_penginap` int(12) NOT NULL,
  `tanggal_check_in` date NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_check_in`
--

INSERT INTO `tb_check_in` (`kd_check_in`, `kd_kamar`, `kd_data_penginap`, `tanggal_check_in`, `durasi`) VALUES
(1, 2, 1, '2015-05-14', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_check_out`
--

CREATE TABLE IF NOT EXISTS `tb_check_out` (
`kd_check_out` int(12) NOT NULL,
  `kd_check_in` int(12) NOT NULL,
  `tanggal_check_out` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_check_out`
--

INSERT INTO `tb_check_out` (`kd_check_out`, `kd_check_in`, `tanggal_check_out`) VALUES
(1, 1, '2015-05-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_data_penginap`
--

CREATE TABLE IF NOT EXISTS `tb_data_penginap` (
`kd_data_penginap` int(12) NOT NULL,
  `nama_penginap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_data_penginap`
--

INSERT INTO `tb_data_penginap` (`kd_data_penginap`, `nama_penginap`, `alamat`, `no_telp`) VALUES
(1, 'Riza Akbar Nurhadi', 'Jl. Opak no,5', '493399'),
(2, 'Aad Miqdad', 'Jl. Mondoroko Malang', '470306');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_data_penyewa`
--

CREATE TABLE IF NOT EXISTS `tb_data_penyewa` (
`kd_data_penyewa` int(12) NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_data_penyewa`
--

INSERT INTO `tb_data_penyewa` (`kd_data_penyewa`, `nama_penyewa`, `alamat`, `no_telp`) VALUES
(3, 'M. Sunaryo', 'Jl. Soekarno Hatta no.12A Malang', '456987');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gaji_pegawai`
--

CREATE TABLE IF NOT EXISTS `tb_gaji_pegawai` (
`kd_gaji_pegawai` int(12) NOT NULL,
  `kd_pegawai` int(12) NOT NULL,
  `kd_pengeluaran` int(12) NOT NULL,
  `total_gaji` decimal(11,0) NOT NULL,
  `tunjangan` decimal(11,0) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gaji_pegawai`
--

INSERT INTO `tb_gaji_pegawai` (`kd_gaji_pegawai`, `kd_pegawai`, `kd_pengeluaran`, `total_gaji`, `tunjangan`) VALUES
(1, 1, 1, '10000000', '300000'),
(2, 2, 2, '7000000', '120000'),
(3, 3, 3, '2500000', '60000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gedung`
--

CREATE TABLE IF NOT EXISTS `tb_gedung` (
`kd_gedung` int(12) NOT NULL,
  `nama_gedung` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gedung`
--

INSERT INTO `tb_gedung` (`kd_gedung`, `nama_gedung`) VALUES
(1, 'Aula');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE IF NOT EXISTS `tb_jabatan` (
`kd_jabatan` int(12) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`kd_jabatan`, `nama_jabatan`, `keterangan`) VALUES
(1, 'Direktur', ''),
(2, 'Wakil Direktur', ''),
(3, 'Keuangan', ''),
(4, 'Kepegawaian', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamar`
--

CREATE TABLE IF NOT EXISTS `tb_kamar` (
`kd_kamar` int(12) NOT NULL,
  `nama_kamar` varchar(50) NOT NULL,
  `kd_tipe_kamar` int(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kamar`
--

INSERT INTO `tb_kamar` (`kd_kamar`, `nama_kamar`, `kd_tipe_kamar`) VALUES
(1, '101', 1),
(2, '107', 1),
(3, '102', 1),
(4, '103', 1),
(5, '104', 1),
(6, '105', 1),
(7, '106', 1),
(8, '201', 2),
(9, '202', 2),
(10, '203', 2),
(11, '204', 2),
(12, '205', 2),
(13, '206', 2),
(14, '207', 2),
(15, '301', 3),
(16, '302', 3),
(17, '303', 3),
(18, '304', 3),
(19, '305', 3),
(20, '306', 3),
(21, '307', 3),
(22, '401', 4),
(23, '402', 4),
(24, '403', 4),
(25, '404', 4),
(26, '405', 4),
(27, '406', 4),
(28, '407', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE IF NOT EXISTS `tb_pegawai` (
`kd_pegawai` int(12) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `kd_jabatan` int(12) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `kawin` tinyint(1) NOT NULL,
  `jumlah_anak` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`kd_pegawai`, `nama_pegawai`, `kd_jabatan`, `alamat`, `no_telp`, `kawin`, `jumlah_anak`) VALUES
(1, 'Bobby Risaldo', 1, 'Jl. Sulfat Malang', '08133290988', 1, 2),
(2, 'Anugrah Vito', 2, 'Jl. Sulfat Malang', '08133290988', 1, 2),
(3, 'Irvan Yale', 3, 'Jl. Sulfat Malang', '08133290988', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemasukan`
--

CREATE TABLE IF NOT EXISTS `tb_pemasukan` (
`kd_pemasukan` int(12) NOT NULL,
  `asal_pemasukan` varchar(100) NOT NULL,
  `pemasukan` decimal(11,0) NOT NULL,
  `tanggal_pemasukan` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pemasukan`
--

INSERT INTO `tb_pemasukan` (`kd_pemasukan`, `asal_pemasukan`, `pemasukan`, `tanggal_pemasukan`, `keterangan`) VALUES
(1, 'check_in1', '529000', '2015-05-14', ''),
(2, 'booking_gedung1', '30000000', '2015-05-20', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengeluaran`
--

CREATE TABLE IF NOT EXISTS `tb_pengeluaran` (
`kd_pengeluaran` int(12) NOT NULL,
  `asal_pengeluaran` varchar(100) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengeluaran`
--

INSERT INTO `tb_pengeluaran` (`kd_pengeluaran`, `asal_pengeluaran`, `tanggal_pengeluaran`, `keterangan`) VALUES
(1, 'gaji1', '2015-06-01', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tipe_kamar`
--

CREATE TABLE IF NOT EXISTS `tb_tipe_kamar` (
`kd_tipe_kamar` int(12) NOT NULL,
  `nama_tipe_kamar` varchar(50) NOT NULL,
  `harga` decimal(20,0) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tipe_kamar`
--

INSERT INTO `tb_tipe_kamar` (`kd_tipe_kamar`, `nama_tipe_kamar`, `harga`, `keterangan`) VALUES
(1, 'Superiror', '529000', 'max 2 guests'),
(2, 'Deluxe', '529000', 'max 2 guests'),
(3, 'Executive Suite', '669000', 'max 2 guests'),
(4, 'Superiror Suite', '1769000', 'max 2 guests');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tipe_sewa`
--

CREATE TABLE IF NOT EXISTS `tb_tipe_sewa` (
`kd_tipe_sewa` int(12) NOT NULL,
  `nama_tipe_sawa` varchar(12) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` decimal(11,0) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tipe_sewa`
--

INSERT INTO `tb_tipe_sewa` (`kd_tipe_sewa`, `nama_tipe_sawa`, `keterangan`, `harga`) VALUES
(1, 'Standart', '- Min 100 Guest\r\n- Harga 175.000/Guest\r\n- Catering : BeefSteak, Koloke, Nasi Goreng, Sop Daging, Cola, Buah\r\n', '175000'),
(2, 'Premium', '- Min 100 Guest\r\n- Harga 250.000/Guest\r\n- Catering : BeefSteak, Koloke, Nasi Goreng, Berbeque, Mie, Roti,Sop Daging, Sop Buah, Cola, Buah\r\n', '250000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
 ADD PRIMARY KEY (`kd_barang`), ADD KEY `kd_kamar` (`kd_kamar`), ADD KEY `kd_gedung` (`kd_gedung`);

--
-- Indexes for table `tb_booking_gedung`
--
ALTER TABLE `tb_booking_gedung`
 ADD PRIMARY KEY (`kd_booking_gedung`,`kd_data_penyewa`,`kd_gedung`,`kd_tipe_sewa`), ADD KEY `kd_data_penyewa` (`kd_data_penyewa`), ADD KEY `kd_gedung` (`kd_gedung`), ADD KEY `kd_tipe_sewa` (`kd_tipe_sewa`);

--
-- Indexes for table `tb_booking_kamar`
--
ALTER TABLE `tb_booking_kamar`
 ADD PRIMARY KEY (`kd_booking_kamar`,`kd_kamar`,`kd_data_penginap`), ADD KEY `kd_kamar` (`kd_kamar`), ADD KEY `kd_data_penginap` (`kd_data_penginap`);

--
-- Indexes for table `tb_check_in`
--
ALTER TABLE `tb_check_in`
 ADD PRIMARY KEY (`kd_check_in`,`kd_kamar`,`kd_data_penginap`), ADD KEY `kd_kamar` (`kd_kamar`), ADD KEY `kd_data_penginap` (`kd_data_penginap`);

--
-- Indexes for table `tb_check_out`
--
ALTER TABLE `tb_check_out`
 ADD PRIMARY KEY (`kd_check_out`,`kd_check_in`), ADD KEY `kd_check_in` (`kd_check_in`);

--
-- Indexes for table `tb_data_penginap`
--
ALTER TABLE `tb_data_penginap`
 ADD PRIMARY KEY (`kd_data_penginap`);

--
-- Indexes for table `tb_data_penyewa`
--
ALTER TABLE `tb_data_penyewa`
 ADD PRIMARY KEY (`kd_data_penyewa`);

--
-- Indexes for table `tb_gaji_pegawai`
--
ALTER TABLE `tb_gaji_pegawai`
 ADD PRIMARY KEY (`kd_gaji_pegawai`,`kd_pegawai`,`kd_pengeluaran`), ADD KEY `kd_pegawai` (`kd_pegawai`), ADD KEY `kd_pengeluaran` (`kd_pengeluaran`);

--
-- Indexes for table `tb_gedung`
--
ALTER TABLE `tb_gedung`
 ADD PRIMARY KEY (`kd_gedung`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
 ADD PRIMARY KEY (`kd_jabatan`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
 ADD PRIMARY KEY (`kd_kamar`,`kd_tipe_kamar`), ADD KEY `kd_tipe_kamar` (`kd_tipe_kamar`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
 ADD PRIMARY KEY (`kd_pegawai`,`kd_jabatan`), ADD KEY `kd_jabatan` (`kd_jabatan`);

--
-- Indexes for table `tb_pemasukan`
--
ALTER TABLE `tb_pemasukan`
 ADD PRIMARY KEY (`kd_pemasukan`);

--
-- Indexes for table `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
 ADD PRIMARY KEY (`kd_pengeluaran`);

--
-- Indexes for table `tb_tipe_kamar`
--
ALTER TABLE `tb_tipe_kamar`
 ADD PRIMARY KEY (`kd_tipe_kamar`);

--
-- Indexes for table `tb_tipe_sewa`
--
ALTER TABLE `tb_tipe_sewa`
 ADD PRIMARY KEY (`kd_tipe_sewa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
MODIFY `kd_barang` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_booking_gedung`
--
ALTER TABLE `tb_booking_gedung`
MODIFY `kd_booking_gedung` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_booking_kamar`
--
ALTER TABLE `tb_booking_kamar`
MODIFY `kd_booking_kamar` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_check_in`
--
ALTER TABLE `tb_check_in`
MODIFY `kd_check_in` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_check_out`
--
ALTER TABLE `tb_check_out`
MODIFY `kd_check_out` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_data_penginap`
--
ALTER TABLE `tb_data_penginap`
MODIFY `kd_data_penginap` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_data_penyewa`
--
ALTER TABLE `tb_data_penyewa`
MODIFY `kd_data_penyewa` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_gaji_pegawai`
--
ALTER TABLE `tb_gaji_pegawai`
MODIFY `kd_gaji_pegawai` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_gedung`
--
ALTER TABLE `tb_gedung`
MODIFY `kd_gedung` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
MODIFY `kd_jabatan` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
MODIFY `kd_kamar` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
MODIFY `kd_pegawai` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pemasukan`
--
ALTER TABLE `tb_pemasukan`
MODIFY `kd_pemasukan` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
MODIFY `kd_pengeluaran` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_tipe_kamar`
--
ALTER TABLE `tb_tipe_kamar`
MODIFY `kd_tipe_kamar` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_tipe_sewa`
--
ALTER TABLE `tb_tipe_sewa`
MODIFY `kd_tipe_sewa` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
