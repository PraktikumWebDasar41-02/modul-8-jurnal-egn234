-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2018 pada 05.36
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul8`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `usernm` varchar(20) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `hobi` varchar(30) NOT NULL,
  `tgl_lah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`usernm`, `pass`, `email`, `first_name`, `last_name`, `nim`, `kelas`, `hobi`, `tgl_lah`) VALUES
('eggant', '96e79218965eb72c92a549dd5a330112', 'egn234@gmail.com', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data1`
--

CREATE TABLE `data1` (
  `usernm` varchar(20) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `tmpt_wisata` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`usernm`);

--
-- Indeks untuk tabel `data1`
--
ALTER TABLE `data1`
  ADD KEY `usernm` (`usernm`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data1`
--
ALTER TABLE `data1`
  ADD CONSTRAINT `data1_ibfk_1` FOREIGN KEY (`usernm`) REFERENCES `akun` (`usernm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
