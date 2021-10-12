-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 03:18 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bukutbl`
--

CREATE TABLE `bukutbl` (
  `id` int(11) NOT NULL,
  `kode_buku` varchar(5) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `halaman` varchar(15) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `kode_rak` varchar(5) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukutbl`
--

INSERT INTO `bukutbl` (`id`, `kode_buku`, `isbn`, `judul_buku`, `pengarang`, `halaman`, `kode_kategori`, `kode_rak`, `gambar`, `status`) VALUES
(1, 'B-1', '978-602-7680-50', 'Toko baju online dengan php dan mysql', 'Muhammad sadeli', '194', 'K-1', 'R-1', 'B-1.gif', 'Pinjam'),
(2, 'B-2', '9786027680692', 'Aplikasi Bisnis dengan PHP dan MySQL', 'Muhammad sadeli', '195', 'K-1', 'R-1', 'B-2.gif', 'Ada'),
(3, 'B-3', '9786027680289', 'Aplikasi Penjualan dengan Visual Basic 2010 untuk ', 'Muhammad sadeli', '196', 'K-1', 'R-1', 'B-3.gif', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategoritbl`
--

CREATE TABLE `kategoritbl` (
  `id` int(11) NOT NULL,
  `kode_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoritbl`
--

INSERT INTO `kategoritbl` (`id`, `kode_kategori`, `nama_kategori`) VALUES
(1, 'K-1', 'Pemrograman'),
(2, 'K-2', 'Entrepreneur'),
(3, 'K-3', 'Motivasi'),
(4, 'K-4', 'Kesehatan'),
(5, 'K-5', 'Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `peminjamantbl`
--

CREATE TABLE `peminjamantbl` (
  `id` int(11) NOT NULL,
  `kode_peminjaman` varchar(5) NOT NULL,
  `kode_peminjam` varchar(5) NOT NULL,
  `kode_buku` varchar(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjamantbl`
--

INSERT INTO `peminjamantbl` (`id`, `kode_peminjaman`, `kode_peminjam`, `kode_buku`, `tgl_pinjam`, `tgl_kembali`, `catatan`) VALUES
(1, 'TP-1', 'P-1', 'B-2', '2021-10-11', '2021-10-12', 'pinjam'),
(2, 'TP-2', 'p-2', 'b-1', '2021-10-11', '2021-10-11', 'pinjam lima buku');

-- --------------------------------------------------------

--
-- Table structure for table `peminjamtbl`
--

CREATE TABLE `peminjamtbl` (
  `id` int(11) NOT NULL,
  `kode_peminjam` varchar(5) NOT NULL,
  `nama_peminjam` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjamtbl`
--

INSERT INTO `peminjamtbl` (`id`, `kode_peminjam`, `nama_peminjam`, `alamat`, `telepon`) VALUES
(1, 'P-1', 'Alief Tour', 'Jl Tombro 1', '034112345'),
(2, 'P-2', 'Nastiti', 'Jl Tombro 1', '034167899');

-- --------------------------------------------------------

--
-- Table structure for table `pengembaliantbl`
--

CREATE TABLE `pengembaliantbl` (
  `id` int(11) NOT NULL,
  `kode_pengembalian` varchar(5) NOT NULL,
  `kode_peminjam` varchar(5) NOT NULL,
  `kode_buku` varchar(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembaliantbl`
--

INSERT INTO `pengembaliantbl` (`id`, `kode_pengembalian`, `kode_peminjam`, `kode_buku`, `tgl_pinjam`, `tgl_kembali`, `catatan`) VALUES
(1, 'TK-1', 'P-1', 'B-2', '2021-10-11', '2021-10-11', 'kembali');

-- --------------------------------------------------------

--
-- Table structure for table `raktbl`
--

CREATE TABLE `raktbl` (
  `id` int(11) NOT NULL,
  `kode_rak` varchar(5) NOT NULL,
  `nama_rak` varchar(35) NOT NULL,
  `posisi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raktbl`
--

INSERT INTO `raktbl` (`id`, `kode_rak`, `nama_rak`, `posisi`) VALUES
(1, 'R-1', 'R-Pemrograman', 'Depan'),
(2, 'R-2', 'R-Entrepreneur', 'Depan'),
(3, 'R-3', 'R-Motivasi', 'Tengah'),
(4, 'R-4', 'R-Kesehatan', 'Tengah'),
(7, 'R-5', 'R-Sejarah', 'Belakang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukutbl`
--
ALTER TABLE `bukutbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoritbl`
--
ALTER TABLE `kategoritbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjamantbl`
--
ALTER TABLE `peminjamantbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjamtbl`
--
ALTER TABLE `peminjamtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengembaliantbl`
--
ALTER TABLE `pengembaliantbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raktbl`
--
ALTER TABLE `raktbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bukutbl`
--
ALTER TABLE `bukutbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategoritbl`
--
ALTER TABLE `kategoritbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peminjamantbl`
--
ALTER TABLE `peminjamantbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `peminjamtbl`
--
ALTER TABLE `peminjamtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengembaliantbl`
--
ALTER TABLE `pengembaliantbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raktbl`
--
ALTER TABLE `raktbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
