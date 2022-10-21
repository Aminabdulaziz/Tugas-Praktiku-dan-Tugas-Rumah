-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 10.20
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `NIP` int(10) NOT NULL,
  `kd_mk` varchar(6) NOT NULL,
  `ruangan` varchar(5) NOT NULL,
  `jml_mhs` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ambil_mk`
--

INSERT INTO `ambil_mk` (`NIP`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
(3, 'SI112', 'LAB1', 39),
(2, 'SI115', 'LAB2', 37),
(4, 'SI114', 'LAB3', 38),
(1, 'SI116', 'LAB4', 40),
(5, 'SI113', 'LAB5', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `instruktur`
--

CREATE TABLE `instruktur` (
  `NPM` int(10) NOT NULL,
  `nama_ins` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `asal_kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `instruktur`
--

INSERT INTO `instruktur` (`NPM`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(2141406, 'Soni Samba', 'Sistem Informasi', 'Garut'),
(2141415, 'Amin Abdul Aziz', 'Sistem Informasi', 'Garut'),
(2141419, 'Faizal Nuryanto', 'Sistem Informasi', 'Bandung'),
(2141421, 'Alfin Ramadhan', 'Sistem Informasi', 'Bangka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('SI112', 'DataBase Implementasion', 4),
('SI113', 'Character Building', 2),
('SI114', 'Web Programming', 3),
('SI115', 'Big Data', 2),
('SI116', 'Distributed Computing', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
