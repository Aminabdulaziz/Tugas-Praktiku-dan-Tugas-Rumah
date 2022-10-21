SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_ambil_mk`
--

CREATE TABLE `tb_ambil_mk` (
  `nim` int(11) NOT NULL,
  `kode_mk` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ambil_mk`
--

INSERT INTO `tb_ambil_mk` (`nim`, `kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI777'),
(111, 'PTI123'),
(123, 'PTI999');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `kode_mk` varchar(11) NOT NULL,
  `nama_mk` text NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Multimedia', 3, 5),
('PTI333', 'Basis Data Terdistribusi', 3, 5),
('PTI447', 'Praktikum Basis Data', 1, 3),
('PTI777', 'Sistem Informasi', 2, 3),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('TIK342', 'Praktikum Basis Data', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `nim` int(5) NOT NULL,
  `nama` text NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl. Kenangan'),
(102, 'Budi', 'L', 'Jl. Jombang'),
(103, 'Wati', 'P', 'Jl. Surabaya'),
(104, 'Ika', 'P', 'Jl. Jombang'),
(105, 'Tono', 'L', 'Jl. Jakarta'),
(106, 'Iwan', 'L', 'Jl. Bandung'),
(107, 'Sari', 'P', 'Jl. Malang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_ambil_mk`
--
ALTER TABLE `tb_ambil_mk`
  ADD PRIMARY KEY (`nim`,`kode_mk`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;