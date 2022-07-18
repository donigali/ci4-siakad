-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 11 Des 2020 pada 14.56
-- Versi server: 8.0.18
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-siakad-kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id_dosen` int(11) NOT NULL,
  `kode_dosen` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nidn` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_dosen` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto_dosen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `kode_dosen`, `nidn`, `nama_dosen`, `foto_dosen`, `password`) VALUES
(1, 'DSN00001', '0118039301', 'Mardalius, M.Kom', 'dosen.jpg', '1234'),
(2, 'DSN00002', '1111111112', 'Lius, M.Kom', 'dosen.jpg', '1234'),
(3, 'DSN00003', '1111111113', 'Marwan, M.Kom', 'dosen.jpg', '1234'),
(4, 'DSN00004', '1111111114', 'Badu, M.Kom', NULL, '1234'),
(5, 'DSN00005', '1111111115', 'ADA UDI FIRMANSYAH, M.Kom.', NULL, '1234'),
(6, 'DSN00006', '1111111116', 'AFDHAL SYAFNUR, M.Kom.', NULL, '1234'),
(7, 'DSN00007', '1111111117', 'AFRISAWATI, M.Kom.', NULL, '1234'),
(8, 'DSN00008', '1111111118', 'AHMAD MUHAZIR, M.Kom.', NULL, '1234'),
(9, 'DSN00009', '1111111119', 'AKMAL, M. Hum.', NULL, '1234'),
(10, 'DSN00010', '1111111120', 'AKMAL NASUTION, M.Kom.', NULL, '1234'),
(11, 'DSN00011', '1111111121', 'ANDY SAPTA, M.Pd., M.Si', NULL, '1234'),
(12, 'DSN00012', '1111111122', 'ARRIDHA ZIKRA SYAH, M.Kom.', NULL, '1234'),
(13, 'DSN00013', '1111111123', 'CECEP MAULANA, M.S.', NULL, '1234'),
(14, 'DSN00014', '1111111124', 'CHITRA LATIFFANI, M.Hum', NULL, '1234'),
(15, 'DSN00015', '1111111125', 'DEWI ANGGRAENI, M.Kom.', NULL, '1234'),
(16, 'DSN00016', '1111111126', 'EDI KURNIAWAN, M.Kom.', NULL, '1234'),
(17, 'DSN00017', '1111111127', 'ELLY RAHAYU, M.M.', NULL, '1234'),
(18, 'DSN00018', '1111111128', 'FEBBY MADONNA YUMA, M.Kom.', NULL, '1234'),
(19, 'DSN00019', '1111111129', 'FEBRI DRISTYAN, M.Kom.', NULL, '1234'),
(20, 'DSN00020', '1111111130', 'GUNTUR MAHA PUTRA, M.Kom.', NULL, '1234'),
(21, 'DSN00021', '1111111131', 'HAMBALI, M.Kom.', NULL, '1234'),
(22, 'DSN00022', '1111111132', 'HOMMY DORTHY ELLYANI SINAGA, S.T., M.M.', 'dosen.jpg', '1234'),
(23, 'DSN00023', '1111111133', 'IRIANTO, M.Kom.', 'dosen.jpg', '1234'),
(24, 'DSN00024', '1111111134', 'JEPERSON HUTAHAEAN, M.Kom.', 'dosen.jpg', '1234'),
(25, 'DSN00025', '1111111135', 'MAHARDIKA ARDI PRAWIRA TANJUNG, M.Kom.', 'dosen.jpg', '1234'),
(27, 'DSN00027', '1111111137', 'MASITAH HANDAYANI, M.Kom.', NULL, '1234'),
(28, 'DSN00028', '1111111138', 'MOHD. SIDDIK, M.Kom.', NULL, '1234'),
(29, 'DSN00029', '1111111139', 'MUHAMMAD IQBAL, M.Kom.', NULL, '1234'),
(30, 'DSN00030', '1111111140', 'MUTHIA DEWI, M.Pd.', NULL, '1234'),
(31, 'DSN00031', '1111111141', 'NASRUN MARPAUNG, M.Kom.', NULL, '1234'),
(32, 'DSN00032', '1111111142', 'NENI MULYANI, M.Kom.', NULL, '1234'),
(33, 'DSN00033', '1111111143', 'NORENTA SITOHANG, M.Pd.', NULL, '1234'),
(34, 'DSN00034', '1111111144', 'NOVICA IRAWATI, M.Kom.', NULL, '1234'),
(35, 'DSN00035', '1111111145', 'NURKARIM NEHE, S.E., M.Sp.', NULL, '1234'),
(36, 'DSN00036', '1111111146', 'PARINI, M.Kom.', NULL, '1234'),
(37, 'DSN00037', '1111111147', 'PRISTIYANILICIA PUTRI, M.M.', NULL, '1234'),
(38, 'DSN00038', '1111111148', 'RAJA TAMA ANDRI AGUS, M.Kom.', NULL, '1234'),
(39, 'DSN00039', '1111111149', 'RIZALDI, M.Kom.', NULL, '1234'),
(40, 'DSN00040', '1111111150', 'RIZKY FAUZIAH, M.I.Kom., M.Kom.', NULL, '1234'),
(41, 'DSN00041', '1111111151', 'ROHMINATIN, S.E., M.Ak.', NULL, '1234'),
(42, 'DSN00042', '1111111152', 'ROMY AULIA, M.Kom.', NULL, '1234'),
(43, 'DSN00043', '1111111153', 'SAHREN, M.Kom.', NULL, '1234'),
(44, 'DSN00044', '1111111154', 'SRI REZKI MAULINA AZMI, M.Pd.', NULL, '1234'),
(45, 'DSN00045', '1111111155', 'SUCI ANDRIYANI, M.Kom.', NULL, '1234'),
(46, 'DSN00046', '1111111156', 'SUDARMIN, M.Kom.', NULL, '1234'),
(47, 'DSN00047', '1111111157', 'SUMANTRI, M.H.', NULL, '1234'),
(48, 'DSN00048', '1111111158', 'SYARTIKA ANGGRAINI', NULL, '1234'),
(49, 'DSN00049', '1111111159', 'TIKA CHRISTY, M.Kom.', NULL, '1234'),
(50, 'DSN00050', '1111111160', 'USWATUN HASANAH, M.HI.', NULL, '1234'),
(51, 'DSN00051', '1111111161', 'WAN MARIATUL KIFTI, S.E., M.M.', NULL, '1234'),
(52, 'DSN00052', '1111111162', 'WILLIAM RAMDHAN, M.Kom.', NULL, '1234'),
(53, 'DSN00053', '1111111163', 'WIWIN HANDOKO, M.Kom.', NULL, '1234'),
(54, 'DSN00054', '1111111164', 'YESSICA SIAGIAN, M.Kom.', 'dosen.jpg', '1234'),
(55, 'DSN00055', '1111111165', 'YORI APRIDONAL M, M.Kom.', 'dosen.jpg', '1234'),
(56, 'DSN00056', '1111111166', 'Ir. ZULFI AZHAR, M.Kom.', 'dosen.jpg', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fakultas`
--

CREATE TABLE `tbl_fakultas` (
  `id_fakultas` int(2) NOT NULL,
  `fakultas` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fakultas`, `fakultas`) VALUES
(1, 'Ilmu Komputer'),
(2, 'Ilmu Ekonomi'),
(3, 'Ilmu Pendidikan'),
(4, 'Ilmu Kesehatan'),
(5, 'Desain Komunikasi Visual');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gedung`
--

CREATE TABLE `tbl_gedung` (
  `id_gedung` int(2) NOT NULL,
  `gedung` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gedung`
--

INSERT INTO `tbl_gedung` (`id_gedung`, `gedung`) VALUES
(1, 'Gedung A'),
(2, 'Gedung B'),
(3, 'Gedung C'),
(4, 'Gedung D'),
(5, 'Gedung E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `id_ta` int(4) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_matkul` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `hari` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_ruangan` int(2) DEFAULT NULL,
  `quota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_prodi`, `id_ta`, `id_kelas`, `id_matkul`, `id_dosen`, `hari`, `waktu`, `id_ruangan`, `quota`) VALUES
(33, 1, 1, 7, 74, 1, 'Senin', '08:00-10:30', 7, 32),
(34, 1, 1, 1, 79, 1, 'Senin', '08:00-10:30', 7, 32),
(35, 2, 1, 5, 8, 1, 'Rabu', '08:00-10:30', 8, 32),
(37, 1, 1, 1, 75, 56, 'Senin', '08:00-10:30', 1, 32),
(38, 1, 1, 1, 76, 37, 'Senin', '11:00-12:30', 2, 32),
(39, 1, 1, 1, 103, 44, 'Selasa', '08:00-10:30', 3, 32),
(40, 1, 1, 1, 101, 13, 'Selasa', '11:00-12:30', 3, 32),
(41, 1, 1, 1, 80, 11, 'Kamis', '08:00-10:30', 5, 32),
(42, 1, 1, 1, 78, 1, 'Kamis', '08:00-10:30', 7, 32),
(43, 1, 1, 1, 77, 53, 'Jumat', '08:00-10:30', 8, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `tahun_angkatan` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`, `id_prodi`, `id_dosen`, `tahun_angkatan`) VALUES
(1, 'SI-A', 1, 1, 2020),
(2, 'SI-B', 1, 2, 2020),
(3, 'SI-C', 1, 54, 2020),
(5, 'SK-A', 2, 9, 2020),
(6, 'SK-B', 2, 10, 2020),
(7, 'SI-A', 1, 43, 2019),
(8, 'SI-B', 1, 42, 2019),
(9, 'SI-C', 1, 8, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_krs`
--

CREATE TABLE `tbl_krs` (
  `id_krs` int(11) NOT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_ta` int(11) DEFAULT NULL,
  `p1` int(1) DEFAULT '0',
  `p2` int(1) DEFAULT '0',
  `p3` int(1) DEFAULT '0',
  `p4` int(1) DEFAULT '0',
  `p5` int(1) DEFAULT '0',
  `p6` int(1) DEFAULT '0',
  `p7` int(1) DEFAULT '0',
  `p8` int(1) DEFAULT '0',
  `p9` int(1) DEFAULT '0',
  `p10` int(1) DEFAULT '0',
  `p11` int(1) DEFAULT '0',
  `p12` int(1) DEFAULT '0',
  `p13` int(1) DEFAULT '0',
  `p14` int(1) DEFAULT '0',
  `p15` int(1) DEFAULT '0',
  `p16` int(1) DEFAULT '0',
  `p17` int(1) DEFAULT '0',
  `p18` int(1) DEFAULT '0',
  `nilai_tugas` int(3) DEFAULT '0',
  `nilai_uts` int(3) DEFAULT '0',
  `nilai_uas` int(3) DEFAULT '0',
  `nilai_akhir` int(3) DEFAULT '0',
  `nilai_huruf` varchar(1) COLLATE utf8mb4_general_ci DEFAULT '-',
  `bobot` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_krs`
--

INSERT INTO `tbl_krs` (`id_krs`, `id_mhs`, `id_jadwal`, `id_ta`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `bobot`) VALUES
(31, 51, 33, 1, 2, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 90, 80, 80, 78, 'B', 3),
(32, 52, 33, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 90, 80, 72, 'C', 2),
(33, 53, 33, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'E', 0),
(34, 54, 33, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'E', 0),
(35, 55, 33, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'E', 0),
(36, 56, 33, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'E', 0),
(37, 59, 33, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'E', 0),
(38, 61, 34, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'E', 0),
(39, 62, 34, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'E', 0),
(41, 4, 34, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 0, 2, 2, 0, 90, 80, 80, 80, 'B', 3),
(42, 4, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 80, 80, 78, 'B', 3),
(43, 4, 38, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 90, 90, 78, 'A', 4),
(44, 4, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 80, 80, 78, 'B', 3),
(45, 4, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 80, 80, 78, 'B', 3),
(46, 4, 41, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 80, 80, 78, 'B', 3),
(47, 4, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 80, 80, 78, 'B', 3),
(48, 4, 43, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 90, 90, 90, 'A', 4),
(49, 34, 34, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0),
(50, 34, 37, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `matkul` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kategori` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smt` int(1) DEFAULT NULL,
  `semester` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`id_matkul`, `kode_matkul`, `matkul`, `sks`, `kategori`, `smt`, `semester`, `id_prodi`) VALUES
(1, 'SKPK101', 'Pendidikan Agama', 2, 'Wajib', 1, 'Ganjil', 2),
(2, 'SKKB102', 'Pengantar Teknologi Informasi', 2, 'Wajib', 1, 'Ganjil', 2),
(3, 'SKPK103', 'Pendidikan Kewarganegaraan', 2, 'Wajib', 1, 'Ganjil', 2),
(4, 'SKPK104', 'Bahasa Inggris 1', 2, 'Wajib', 1, 'Ganjil', 2),
(5, 'SKKK105', 'Fisika Dasar', 2, 'Wajib', 1, 'Ganjil', 2),
(6, 'SKKK106', 'Kalkulus', 2, 'Wajib', 1, 'Ganjil', 2),
(7, 'SKKB107', 'Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 2),
(8, 'SKPB108', 'Prak. Algoritma dan Pemrograman', 2, 'Wajib', 1, 'Ganjil', 2),
(9, 'SKKB109', 'Program Aplikasi', 3, 'Wajib', 1, 'Ganjil', 2),
(10, 'SKPB110', 'Statistik', 2, 'Wajib', 1, 'Ganjil', 2),
(11, 'SKPK211', 'Bahasa Inggris 2', 2, 'Wajib', 2, 'Genap', 2),
(12, 'SKKB212', 'PBO', 3, 'Wajib', 2, 'Genap', 2),
(13, 'SKPK213', 'Bahasa Indonesia', 2, 'Wajib', 2, 'Genap', 2),
(14, 'SKKK214', 'Matematika Terapan', 2, 'Wajib', 2, 'Genap', 2),
(15, 'SKKK215', 'Elektronika Dasar', 3, 'Wajib', 2, 'Genap', 2),
(16, 'SKPB216', 'Internet dan Web Site', 3, 'Wajib', 2, 'Genap', 2),
(17, 'SKKB217', 'Data Base', 3, 'Wajib', 2, 'Genap', 2),
(18, 'SKKB218', 'Aplikasi Terapan', 2, 'Wajib', 2, 'Genap', 2),
(19, 'SKKB319', 'Instalasi Komputer', 3, 'Wajib', 3, 'Ganjil', 2),
(20, 'SKKB320', 'Komunikasi Data', 2, 'Wajib', 3, 'Ganjil', 2),
(21, 'SKKB321', 'Sistem Operasi', 2, 'Wajib', 3, 'Ganjil', 2),
(22, 'SKKB322', 'Organisasi Komputer', 2, 'Wajib', 3, 'Ganjil', 2),
(23, 'SKKB323', 'Rekayasa Perangkat Lunak', 4, 'Wajib', 3, 'Ganjil', 2),
(24, 'SKKK324', 'Sistem Digital', 4, 'Wajib', 3, 'Ganjil', 2),
(25, 'SKKB325', 'Sistem Multimedia', 3, 'Wajib', 3, 'Ganjil', 2),
(26, 'SKKB426', 'Jaringan Komputer', 4, 'Wajib', 4, 'Genap', 2),
(27, 'SKKK427', 'Grafika Komputer', 3, 'Wajib', 4, 'Genap', 2),
(28, 'SKKB428', 'Sensor dan Transduser', 3, 'Wajib', 4, 'Genap', 2),
(29, 'SKPB429', 'Arsitektur Komputer', 2, 'Wajib', 4, 'Genap', 2),
(30, 'SKPK430', 'Kecakapan Antar Personal', 2, 'Wajib', 4, 'Genap', 2),
(31, 'SKKB431', 'Troubleshooting', 3, 'Wajib', 4, 'Genap', 2),
(32, 'SKKB432', 'Pemrograman Visual', 4, 'Wajib', 4, 'Genap', 2),
(33, 'SKKB533', 'Jaringan Nirkabel', 3, 'Wajib', 5, 'Ganjil', 2),
(34, 'SKKB534', 'Pheriferal dan Interface', 4, 'Wajib', 5, 'Ganjil', 2),
(35, 'SKKK535', 'Komputer Vision', 3, 'Wajib', 5, 'Ganjil', 2),
(36, 'SKKK536', 'Interaksi Manusia dan Komputer', 2, 'Wajib', 5, 'Ganjil', 2),
(37, 'SKKK537', 'Sistem Penunjang Keputusan', 3, 'Wajib', 5, 'Ganjil', 2),
(38, 'SKKB538', 'Mobile Programming', 3, 'Wajib', 5, 'Ganjil', 2),
(39, 'SKKB539', 'Mikroprocessor', 3, 'Wajib', 5, 'Ganjil', 2),
(40, 'SKKK640', 'Mikrokontroller', 3, 'Wajib', 6, 'Genap', 2),
(41, 'SKKK641', 'SIG', 3, 'Wajib', 6, 'Genap', 2),
(42, 'SKBB642', 'Etika Profesi', 2, 'Wajib', 6, 'Genap', 2),
(43, 'SKKK643', 'Metodologi Penelitian', 2, 'Wajib', 6, 'Genap', 2),
(44, 'SKKB644', 'Komunikasi Antar jaringan', 3, 'Wajib', 6, 'Genap', 2),
(45, 'SKPB645', 'Simulasi dan Pemodelan', 2, 'Wajib', 6, 'Genap', 2),
(46, 'SKKB646', 'Web Proramming', 3, 'Wajib', 6, 'Genap', 2),
(47, 'SKKK751', 'PLC', 4, 'Wajib', 7, 'Ganjil', 2),
(48, 'SKKB752', 'Keamanan Jaringan (Network Security)', 3, 'Wajib', 7, 'Ganjil', 2),
(49, 'SKKB753', 'Kewirausahaan', 2, 'Wajib', 7, 'Ganjil', 2),
(50, 'SKKK754', 'Sistem Waktu Nyata', 2, 'Wajib', 7, 'Ganjil', 2),
(51, 'SKPB755', 'KP', 2, 'Wajib', 7, 'Ganjil', 2),
(52, 'SKPB858', 'Skripsi', 6, 'Wajib', 8, 'Genap', 2),
(53, 'SKKK756', 'Logika Fuzzy', 3, 'Pilihan', 7, 'Ganjil', 2),
(54, 'SKKK757', 'Sistem Infrastruktur', 3, 'Pilihan', 7, 'Ganjil', 2),
(55, 'SKKB647', 'Cloud Computing', 3, 'Pilihan', 6, 'Genap', 2),
(56, 'SKKB648', 'Jaringan Virtual', 3, 'Pilihan', 6, 'Genap', 2),
(57, 'SKKB649', 'IT Audit', 3, 'Pilihan', 6, 'Genap', 2),
(58, 'SKKB650', 'Network Programming', 3, 'Pilihan', 6, 'Genap', 2),
(59, 'SIKB201', 'SISTEM BASIS DATA (T/PRAK)', 3, 'Wajib', 2, 'Genap', 1),
(60, 'SIKB402', 'ANALISIS DAN PERANCANGAN SI (T/PR)', 4, 'Wajib', 4, 'Genap', 1),
(61, 'SIKB403', 'MANAJEMEN SISTEM BASIS DATA (T/PR)', 3, 'Wajib', 4, 'Genap', 1),
(62, 'SIKB404', 'ANALISIS PROSES BISNIS', 2, 'Wajib', 4, 'Genap', 1),
(63, 'SIKB505', 'WEB PROGRAMMING (PR)', 3, 'Wajib', 5, 'Ganjil', 1),
(64, 'SIKB506', 'MODEL DAN SIMULASI', 2, 'Wajib', 5, 'Ganjil', 1),
(65, 'SIKB507', 'REKAYASA PERANGKAT LUNAK', 3, 'Wajib', 5, 'Ganjil', 1),
(66, 'SIKB508', 'KECERDASAN BUATAN (T/PR)', 3, 'Wajib', 5, 'Ganjil', 1),
(67, 'SIKB509', 'PEMROGRAMAN VISUAL (PRAK)', 3, 'Wajib', 2, 'Genap', 1),
(68, 'SIKB610', 'SISTEM PENDUKUNG KEPUTUSAN', 2, 'Wajib', 6, 'Genap', 1),
(69, 'SIKB611', 'PEMROGRAMAN VISUAL LANJUTAN (PR)', 3, 'Wajib', 6, 'Genap', 1),
(70, 'SIKB612', 'E-COMMERCE', 2, 'Wajib', 6, 'Genap', 1),
(71, 'SIKB613', 'MANAJEMEN PROYEK SI', 3, 'Wajib', 6, 'Genap', 1),
(72, 'SIKB614', 'KONSTRUKSI & PENGUJIAN PERANGKAT LUNAK (PR)', 3, 'Wajib', 6, 'Genap', 1),
(73, 'SIKB715', 'AUDIT SISTEM INFORMASI', 3, 'Wajib', 7, 'Ganjil', 1),
(74, 'SIKB716', 'SISTEM INFORMASI GEOGRAFIS (GIS)', 3, 'Wajib', 7, 'Ganjil', 1),
(75, 'SIKK101', 'PENGANTAR TEKNOLOGI INFORMASI', 3, 'Wajib', 1, 'Ganjil', 1),
(76, 'SIKK102', 'DASAR AKUNTANSI', 2, 'Wajib', 1, 'Ganjil', 1),
(77, 'SIKK103', 'PROGRAM APLIKASI', 2, 'Wajib', 1, 'Ganjil', 1),
(78, 'SIKK104', 'ALGORITMA DAN PEMROGRAMAN', 2, 'Wajib', 1, 'Ganjil', 1),
(79, 'SIKK105', 'PR. ALGORITMA DAN PEMROGRAMAN', 2, 'Wajib', 1, 'Ganjil', 1),
(80, 'SIKK106', 'KALKULUS', 2, 'Wajib', 1, 'Ganjil', 1),
(81, 'SIKK207', 'MATEMATIKA DISKRIT', 2, 'Wajib', 2, 'Genap', 1),
(82, 'SIKK208', 'KONSEP SISTEM INFORMASI', 3, 'Wajib', 2, 'Genap', 1),
(83, 'SIKK209', 'DESIGN GRAFIS (PRAK)', 2, 'Wajib', 2, 'Genap', 1),
(84, 'SIKK211', 'PROGRAM APLIKASI AKUNTANSI (PR)', 2, 'Wajib', 2, 'Genap', 1),
(85, 'SIKK212', 'MANAJEMEN UMUM', 2, 'Wajib', 2, 'Genap', 1),
(86, 'SIKK310', 'STRUKTUR DATA (T/PR)', 3, 'Wajib', 2, 'Genap', 1),
(87, 'SIKK313', 'SISTEM BERKAS/ ARSIP DAN AKSES', 3, 'Wajib', 3, 'Ganjil', 1),
(88, 'SIKK314', 'KOMUNIKASI DATA', 2, 'Wajib', 3, 'Ganjil', 1),
(89, 'SIKK315', 'SISTEM OPERASI', 3, 'Wajib', 3, 'Ganjil', 1),
(90, 'SIKK316', 'INTERAKSI MANUSIA DAN KOMPUTER', 2, 'Wajib', 3, 'Ganjil', 1),
(91, 'SIKK317', 'DESAIN WEB (PR)', 3, 'Wajib', 3, 'Ganjil', 1),
(92, 'SIKK318', 'PEMOGRAMAN BERORIENTASI OBJEK (PRAK)', 3, 'Wajib', 3, 'Ganjil', 1),
(93, 'SIKK319', 'PENGETAHUAN BISNIS', 2, 'Wajib', 3, 'Ganjil', 1),
(94, 'SIKK420', 'STATISTIK (T/PRAK)', 3, 'Wajib', 3, 'Ganjil', 1),
(95, 'SIKK421', 'SISTEM INFORMASI MANAJEMEN', 3, 'Wajib', 4, 'Genap', 1),
(96, 'SIKK422', 'JARINGAN KOMPUTER', 3, 'Wajib', 4, 'Genap', 1),
(97, 'SIKK523', 'MANAJEMEN PEMASARAN', 2, 'Wajib', 4, 'Genap', 1),
(98, 'SIKK524', 'MANAJEMEN PERSEDIAAN', 2, 'Wajib', 4, 'Genap', 1),
(99, 'SIKK525', 'TEKNIK RISET OPERASIONAL', 2, 'Wajib', 5, 'Ganjil', 1),
(100, 'SIKK726', 'TATA KELOLA TI', 3, 'Wajib', 5, 'Ganjil', 1),
(101, 'SIPB101', 'BAHASA INGGRIS 1', 2, 'Wajib', 1, 'Ganjil', 1),
(102, 'SIPB202', 'BAHASA INGGRIS 2', 2, 'Wajib', 2, 'Genap', 1),
(103, 'SIPB203', 'BAHASA INDONESIA', 2, 'Wajib', 1, 'Ganjil', 1),
(104, 'SIPB404', 'PERILAKU ORGANISASI', 2, 'Wajib', 2, 'Genap', 1),
(105, 'SIPB605', 'METODOLOGI PENELITIAN', 2, 'Wajib', 6, 'Genap', 1),
(106, 'SIPB706', 'ETIKA PROFESI', 2, 'Wajib', 7, 'Ganjil', 1),
(107, 'SIPB807', 'PENELITIAN (SKRIPSI)', 6, 'Wajib', 8, 'Genap', 1),
(108, 'SIKB617', 'MOBILE PROGRAMMING', 3, 'Wajib', 6, 'Genap', 1),
(109, 'SIKB618', 'DATA WAREHOUSE', 3, 'Wajib', 6, 'Genap', 1),
(110, 'SIKB619', 'ANALISIS DAN PERANCANGAN E-BISNIS', 3, 'Wajib', 6, 'Genap', 1),
(111, 'SIKB620', 'MANAJEMEN KUALITAS TI', 3, 'Wajib', 6, 'Genap', 1),
(112, 'SIKB621', 'ARSITEKTUR SI/TI PERUSAHAAN', 3, 'Wajib', 6, 'Genap', 1),
(113, 'SIKB722', 'TEKNOLOGI DAN TREN OPENSOURCE', 3, 'Wajib', 7, 'Ganjil', 1),
(114, 'SIKB723', 'DATA MINING', 3, 'Wajib', 7, 'Ganjil', 1),
(115, 'SIKB724', 'TEKNIK PERAMALAN (FORECASTING)', 3, 'Wajib', 7, 'Ganjil', 1),
(116, 'SIKB725', 'MANAJEMEN LAYANAN TI', 3, 'Wajib', 7, 'Ganjil', 1),
(117, 'SIKB726', 'KEAMANAN ASET INFORMASI', 3, 'Wajib', 7, 'Ganjil', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_mhs` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_prodi` int(2) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto_mhs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nim`, `nama_mhs`, `id_prodi`, `password`, `foto_mhs`, `id_kelas`) VALUES
(4, '18220463', 'ALDY SUHENDRANA', 1, '1234', 'foto2.jpg', 1),
(5, '18220363', 'ANDIKA RAMADANI', 2, '1234', 'foto1.jpg', NULL),
(6, '18220435', 'ANDINI UTAMI', 2, '1234', NULL, NULL),
(7, '18220436', 'ANDRE RAMADHANA MANURUNG', 2, '1234', NULL, NULL),
(8, '18220437', 'ANGGRAINI UTARI', 2, '1234', NULL, NULL),
(9, '18220519', 'AZRI SILMI', 2, '1234', NULL, NULL),
(10, '18220464', 'AZURAH WIDYA NINGSIH SILALAHI', 2, '1234', NULL, NULL),
(11, '18220451', 'BAGUS ANDIKA', 2, '1234', NULL, NULL),
(12, '18220452', 'BAMBANG PRAYOGI', 2, '1234', NULL, 6),
(13, '18220453', 'CHRISTIAN SARAGIH', 2, '1234', NULL, NULL),
(14, '18220438', 'CICI ZULIANINGSIH', 2, '1234', NULL, NULL),
(15, '18220454', 'DINDA ARYANTI', 2, '1234', NULL, NULL),
(16, '18220439', 'EVA TRI WAHYUNI', 2, '1234', NULL, NULL),
(17, '18220697', 'FADHULLAH IHZA QOSIM MARGOLANG', 2, '1234', NULL, NULL),
(18, '18220591', 'FIKRI ZAILMI', 2, '1234', NULL, NULL),
(19, '18220455', 'FITRI RAHAYU', 2, '1234', NULL, NULL),
(20, '18220440', 'GILANG NUGROHO SYAHPUTRA JAROD', 2, '1234', NULL, NULL),
(21, '18220442', 'JUAN VERON CHRISTIAN L. SIRAIT', 2, '1234', NULL, NULL),
(22, '18220617', 'KHAIRANI PUTRI MIRDA', 2, '1234', NULL, NULL),
(23, '18220443', 'LINDA', 2, '1234', NULL, NULL),
(24, '18220480', 'LIZA NATTASYA M', 2, '1234', NULL, NULL),
(25, '18220698', 'Mardalius', 2, '1234', NULL, NULL),
(26, '18220445', 'MANJA RENA AYU ANJANI', 2, '1234', NULL, NULL),
(27, '18220446', 'MAYRANI AZWANDA', 2, '1234', NULL, NULL),
(28, '18220034', 'NURSUCIKA HASANAH', 2, '1234', NULL, NULL),
(29, '18220460', 'RAHAYU UMRIA', 2, '1234', NULL, NULL),
(30, '18220456', 'RIDO AFLANI. S', 2, '1234', NULL, 6),
(31, '18220448', 'RIKA SUNDARI MANIK', 2, '1234', NULL, NULL),
(32, '18220444', 'RIZKY ADINDA PUTRI GINTING', 2, '1234', NULL, NULL),
(33, '18220450', 'ROSIVA YANTI SARUMPAET', 2, '1234', NULL, NULL),
(34, '18220457', 'SITI SARAH', 1, '1234', 'foto1.jpg', 1),
(35, '18220458', 'YUNI KARTIKA PANJAITAN', 1, '1234', NULL, NULL),
(36, '18220459', 'ZUBAI ABDILLAH HASIBUAN', 1, '1234', NULL, NULL),
(37, '18220495', 'ZULFIKAR ABDI', 1, '1234', NULL, NULL),
(38, '18220191', 'ABDI REZA SUSANTI', 1, '1234', NULL, NULL),
(39, '18220680', 'AHMAD SOFYAN', 1, '1234', NULL, NULL),
(40, '18220516', 'AMILIAWATI SITORUS', 1, '1234', NULL, NULL),
(41, '18220646', 'ANJAS YUDISTIRA', 1, '1234', NULL, NULL),
(42, '18220655', 'APRILIA UTAMI', 1, '1234', NULL, NULL),
(43, '18220677', 'CHIKA NADIA', 1, '1234', NULL, NULL),
(44, '18220650', 'DEDEK PUTRA HASIBUAN', 1, '1234', NULL, NULL),
(45, '18220647', 'DINDA MAI SYARO', 1, '1234', NULL, NULL),
(46, '18220645', 'DWIKI RAMADHAN', 1, '1234', NULL, NULL),
(47, '18220656', 'DYNA MONICA', 1, '1234', NULL, NULL),
(48, '18220661', 'FATRIA ANDIKA', 1, '1234', NULL, NULL),
(49, '18220681', 'FRANS ANDREAN HASIBUAN', 1, '1234', NULL, NULL),
(50, '18220608', 'IHSANUL FIKRI', 1, '1234', NULL, NULL),
(51, '18220654', 'INDAH AYU ANGGRAINI SARAGIH', 1, '1234', NULL, 1),
(52, '18220183', 'MARWAH AULIYAH SITORUS', 1, '1234', NULL, 1),
(53, '18220651', 'MHD. AFRIZAL SIXNU', 1, '1234', NULL, 1),
(54, '18220623', 'MIFTAH HASANAH SAMOSIR', 1, '1234', NULL, 1),
(55, '18220619', 'MIFTAH KURNIAWAN', 1, '1234', NULL, 1),
(56, '18220622', 'MORA ABDUPUTRA GULTOM', 1, '1234', NULL, 1),
(57, '18220663', 'MUHAMMAD RAHMADI LAKSONO', 1, '1234', NULL, 9),
(58, '18220662', 'MUHAMMAD RIZKI', 1, '1234', 'foto1.jpg', 1),
(59, '18220679', 'MUHAMMAD ROZI HERMAWAN', 1, '1234', NULL, 1),
(60, '18220682', 'MUHAMMAD SURYA BASKARA POHAN', 1, '1234', NULL, 9),
(61, '18220643', 'MUKHLIS', 1, '1234', NULL, 1),
(62, '18220648', 'NUR ARIZA', 1, '1234', NULL, 1),
(63, '18220658', 'NUR MADANI PUTRI SIREGAR', 1, '1234', NULL, 9),
(64, '18220620', 'NURIZZA SARAGIH', 3, '1234', NULL, NULL),
(65, '18220652', 'NURUL IKA PUSPITA SARI SUTRA', 3, '1234', NULL, NULL),
(66, '18220272', 'REZA AJIARDHANA MANURUNG', 3, '1234', NULL, NULL),
(67, '18220660', 'TRI ANANDA', 3, '1234', NULL, NULL),
(68, '18220649', 'TRIKA AYU INTAN SARI', 3, '1234', NULL, NULL),
(69, '18220644', 'VIRA FAHRANI', 3, '1234', NULL, NULL),
(70, '18220361', 'VIVI HAJLYA', 3, '1234', NULL, NULL),
(71, '18220676', 'WINDA PUTRI MARPAUNG', 3, '1234', NULL, NULL),
(72, '15220002', 'ARDIANSYAH MANGUNSONG', 3, '1234', NULL, NULL),
(73, '15220020', 'ASTUTI', 3, '1234', NULL, NULL),
(74, '15220027', 'CHAIRUN NISA', 3, '1234', NULL, NULL),
(75, '15220025', 'DANIEL MAULANA MANURUNG', 3, '1234', NULL, NULL),
(76, '15220018', 'EGI SUGANDA', 3, '1234', NULL, NULL),
(77, '15220001', 'FAISAL TANJUNG', 3, '1234', NULL, NULL),
(78, '15220013', 'FITRIANA TOWILA SITORUS', 3, '1234', NULL, NULL),
(79, '15220003', 'HUSNI TAMRIN LUBIS', 3, '1234', NULL, NULL),
(80, '15220016', 'MEISSY HANDAYANI', 3, '1234', NULL, NULL),
(81, '14221555', 'MUHAMMAD RIZKI', 3, '1234', NULL, NULL),
(82, '15220005', 'PUTRI DEWI RAMADHANTI', 3, '1234', NULL, NULL),
(83, '14221478', 'RAHMAT', 3, '1234', NULL, NULL),
(84, '15220022', 'RINAYANTI', 3, '1234', NULL, NULL),
(85, '15220019', 'SARTIKA LESTARI', 3, '1234', NULL, NULL),
(86, '15220017', 'SHAFITY YUNUS BR SITUMORANG', 3, '1234', NULL, NULL),
(87, '15220012', 'SISKA PUTRI UTAMI', 3, '1234', NULL, NULL),
(88, '15220014', 'SITI FATIMAH HASIBUAN', 3, '1234', NULL, NULL),
(89, '15220010', 'SITI INDAYANI', 3, '1234', NULL, NULL),
(90, '15220023', 'SUNDARI', 3, '1234', NULL, NULL),
(91, '15220008', 'SYAFRIDA', 3, '1234', NULL, NULL),
(92, '15220026', 'SYAFWAN AMRI', 3, '1234', NULL, NULL),
(93, '15220566', 'TIKA SARTIKA', 3, '1234', NULL, NULL),
(94, '15220021', 'TRIA WIRANTI', 3, '1234', NULL, NULL),
(95, '15220561', 'WAHYU KURNIA SANDI', 3, '1234', NULL, NULL),
(96, '15220028', 'WINDY YUNINGSIH', 3, '1234', NULL, NULL),
(97, '15220004', 'WIRA ARIESTY WARA SITORUS', 3, '1234', NULL, NULL),
(98, '15220011', 'YULI ASTIKA SARI', 3, '1234', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prodi`
--

CREATE TABLE `tbl_prodi` (
  `id_prodi` int(2) NOT NULL,
  `id_fakultas` int(2) DEFAULT NULL,
  `kode_prodi` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prodi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenjang` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `ka_prodi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_prodi`
--

INSERT INTO `tbl_prodi` (`id_prodi`, `id_fakultas`, `kode_prodi`, `prodi`, `jenjang`, `ka_prodi`) VALUES
(1, 1, 'SI', 'Sistem Informasi', 'S1', 'YORI APRIDONAL M, M.Kom.'),
(2, 1, 'SK', 'Sistem Komputer', 'S1', 'SRI REZKI MAULINA AZMI, M.Pd.'),
(3, 1, 'TI', 'Teknik Informatika', 'S1', 'SUCI ANDRIYANI, M.Kom.'),
(4, 1, 'MI', 'Manajemen Informatika', 'D3', 'EDI KURNIAWAN, M.Kom.'),
(6, 2, 'AK', 'Akuntansi', 'S1', 'TIKA CHRISTY, M.Kom.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(2) NOT NULL,
  `id_gedung` int(2) DEFAULT NULL,
  `ruangan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `id_gedung`, `ruangan`) VALUES
(1, 1, 'A1'),
(2, 1, 'A2'),
(3, 1, 'A3'),
(4, 1, 'A4'),
(5, 1, 'A5'),
(6, 1, 'A6'),
(7, 1, 'Lab A1'),
(8, 1, 'Lab A2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ta`
--

CREATE TABLE `tbl_ta` (
  `id_ta` int(4) NOT NULL,
  `ta` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `semester` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_ta`
--

INSERT INTO `tbl_ta` (`id_ta`, `ta`, `semester`, `status`) VALUES
(1, '2020/2021', 'Ganjil', 1),
(2, '2020/2021', 'Genap', 0),
(3, '2021/2022', 'Ganjil', 0),
(4, '2021/2022', 'Genap', 0),
(6, '2022/2023', 'Ganjil', 0),
(7, '2022/2023', 'Genap', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `foto`) VALUES
(1, 'Mardalius', 'admin', 'admin', 'foto.jpg'),
(2, 'Budi', 'budi', '1234', 'user2.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `tbl_gedung`
--
ALTER TABLE `tbl_gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tbl_krs`
--
ALTER TABLE `tbl_krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indeks untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indeks untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
  MODIFY `id_fakultas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_gedung`
--
ALTER TABLE `tbl_gedung`
  MODIFY `id_gedung` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_krs`
--
ALTER TABLE `tbl_krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `tbl_prodi`
--
ALTER TABLE `tbl_prodi`
  MODIFY `id_prodi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_ta`
--
ALTER TABLE `tbl_ta`
  MODIFY `id_ta` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
