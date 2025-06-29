-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2025 pada 17.48
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `nomor_kamar` varchar(50) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `harga_kamar` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`nomor_kamar`, `tipe`, `harga_kamar`, `status`) VALUES
('A101', 'Standard', 350000.00, 'Tersedia'),
('A102', 'Standard', 350000.00, 'Maintenance'),
('A103', 'Standard', 350000.00, 'Tersedia'),
('A104', 'Standard', 350000.00, 'Tersedia'),
('A105', 'Standard', 350000.00, 'Reserved'),
('A106', 'Standard', 350000.00, 'Tersedia'),
('A107', 'Standard', 350000.00, 'Ditempati'),
('B201', 'Deluxe', 500000.00, 'Ditempati'),
('B202', 'Deluxe', 500000.00, 'Reserved'),
('B203', 'Deluxe', 500000.00, 'Ditempati'),
('B204', 'Deluxe', 500000.00, 'Reserved'),
('B205', 'Deluxe', 500000.00, 'Maintenance'),
('B206', 'Deluxe', 500000.00, 'Tersedia'),
('B207', 'Deluxe', 500000.00, 'Tersedia'),
('C301', 'Suite', 750000.00, 'Tersedia'),
('C302', 'Suite', 750000.00, 'Reserved'),
('C303', 'Suite', 750000.00, 'Ditempati'),
('C304', 'Suite', 750000.00, 'Reserved'),
('C305', 'Suite', 750000.00, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_login`
--

CREATE TABLE `log_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `akses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_login`
--

INSERT INTO `log_login` (`id`, `username`, `login_time`, `status`, `akses`) VALUES
(1, 'ilhamsholahuddin', '2025-06-22 03:59:04', 'sukses', 'Manager'),
(2, 'ilhamsholahuddin', '2025-06-22 03:59:08', 'sukses', 'Manager'),
(3, 'ilhamsholahuddin', '2025-06-22 04:00:07', 'gagal', 'Manager'),
(4, 'sintadewi', '2025-06-22 04:36:34', 'sukses', 'Housekeeper'),
(5, 'sintadewi', '2025-06-22 04:37:10', 'sukses', 'Housekeeper'),
(6, 'sintadewi', '2025-06-22 04:38:26', 'sukses', 'Housekeeper'),
(7, 'sintadewi', '2025-06-22 04:39:24', 'sukses', 'Housekeeper'),
(8, 'ilhamsholahuddin', '2025-06-22 15:04:08', 'sukses', 'Manager'),
(9, 'ilhamsholahuddin', '2025-06-22 16:10:12', 'sukses', 'Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `akses_sistem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nik`, `jenis_kelamin`, `alamat`, `no_tlp`, `email`, `jabatan`, `akses_sistem`) VALUES
('P000', 'UnitTest', '0000000000000', 'Laki-laki', 'testing', '088888888888', 'unittest@email.com', 'Manager', 'ya'),
('P001', 'Ilham Sholahuddin', '3201011234560001', 'Laki-laki', 'Tangerang', '085882566944', 'ilhamsholahuddin161@gmail.com', 'Manager', 'Ya'),
('P002', 'Bulan', '3671031708020002', 'Perempuan', 'Jakarta', '0851667822900', 'bulan@gmail.com', 'Receptionist', 'Ya'),
('P004', 'Lina Marlina', '3201041234560004', 'Perempuan', 'Yogyakarta', '081312345678', 'lina.marlina@email.com', 'Resepsionis', 'Ya'),
('P005', 'Fajar Pratama', '3201051234560005', 'Perempuan', 'Medan', '081365432100', 'fajar.pratama@email.com', 'Teknisi', 'Ya'),
('P006', 'Sinta Dewi', '3201061234560006', 'Perempuan', 'Semarang', '081278945612', 'sinta.dewi@email.com', 'Housekeeper', 'Ya'),
('P008', 'Tika Wulandari', '3201081234560008', 'Perempuan', 'Bali', '081288776655', 'tika.wulandari@email.com', 'Teknisi', 'Tidak'),
('P009', 'Manager', '231000000', 'Laki-Laki', 'Pamulang', '081882888888', 'manager@email.com', 'Manager', 'Ya'),
('P010', 'Resepsionis', '231011111111', 'Perempuan', 'Pamulang', '08588122222222', 'resepsionis@email.com', 'Receptionist', 'Ya'),
('P011', 'Housekeeper', '2310222222222', 'Laki-Laki', 'Viktor', '0813262576223', 'housekeeper@gmail.com', 'Housekeeper', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nomor_kamar` varchar(50) DEFAULT NULL,
  `id_tamu` int(11) DEFAULT NULL,
  `tanggal_check_in` date DEFAULT NULL,
  `tanggal_check_out` date DEFAULT NULL,
  `status_reservasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `nomor_kamar`, `id_tamu`, `tanggal_check_in`, `tanggal_check_out`, `status_reservasi`) VALUES
(1, 'A101', 1, '2025-06-25', '2025-06-28', 'Reserved'),
(2, 'A102', 2, '2025-06-26', '2025-06-29', 'Check-In'),
(3, 'C305', 3, '2025-06-20', '2025-06-22', 'Cancelled'),
(4, 'B202', 4, '2025-07-01', '2025-07-05', 'Cancelled'),
(5, 'C303', 5, '2025-06-27', '2025-06-30', 'Check-In'),
(6, 'B204', 9, '2025-06-29', '2025-06-30', 'Reserved');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_tlp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `email`, `no_tlp`, `alamat`) VALUES
(1, 'Andi Pratama', 'andi.pratama@gmail.com', '081234567890', 'Jl. Melati No. 12, Jakarta'),
(2, 'Rina Maharani', 'rina.maharani@yahoo.com', '082198765432', 'Jl. Kenanga No. 5, Bandung'),
(3, 'Budi Santoso', 'budi.santoso@outlook.com', '081377788899', 'Jl. Merpati No. 33, Surabaya'),
(4, 'Siti Aminah', 'sitiaminah@gmail.com', '082233445566', 'Jl. Anggrek No. 8, Yogyakarta'),
(5, 'Dewi Lestari', 'dewilestari@gmail.com', '081355577799', 'Jl. Mawar No. 22, Semarang'),
(6, 'Agus Saputra', 'agus.saputra@hotmail.com', '082144556677', 'Jl. Dahlia No. 18, Malang'),
(7, 'Linda Wahyuni', 'lindawahyuni@yahoo.co.id', '081299887766', 'Jl. Cendana No. 4, Depok'),
(8, 'Fajar Nugroho', 'fajarnugroho@gmail.com', '081311223344', 'Jl. Teratai No. 21, Bekasi'),
(9, 'Mega Putri', 'megaputri@gmail.com', '082155443322', 'Jl. Flamboyan No. 10, Tangerang'),
(10, 'Rama Wijaya', 'ramawijaya@gmail.com', '081366778899', 'Jl. Bougenville No. 9, Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_reservasi` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `pembayaran` varchar(50) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `status_transaksi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_reservasi`, `total`, `pembayaran`, `tanggal_transaksi`, `status_transaksi`) VALUES
(1, 2, 1050000.00, 'Tunai', '2025-06-22', 'Uang Muka'),
(3, 4, 2000000.00, 'Tunai', '2025-06-28', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usersistem`
--

CREATE TABLE `usersistem` (
  `id_user` int(11) NOT NULL,
  `id_pegawai` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `akses` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `usersistem`
--

INSERT INTO `usersistem` (`id_user`, `id_pegawai`, `username`, `password`, `nama_pegawai`, `akses`) VALUES
(3, 'P001', 'ilhamsholahuddin', 'd8ecb253d1e2d74814d0d142e3af4de190b1e3d56dc7346ab85314e079f66408', 'Ilham Sholahuddin', 'Manager'),
(5, 'P000', 'testing', 'b822f1cd2dcfc685b47e83e3980289fd5d8e3ff3a82def24d7d1d68bb272eb32', 'UnitTest', 'Manager'),
(6, 'P006', 'sintadewi', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Sinta Dewi', 'Housekeeper'),
(7, 'P009', 'manager', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Manager', 'Manager'),
(8, 'P010', 'resepsionis', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Resepsionis', 'Receptionist'),
(9, 'P011', 'housekeeper', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Housekeeper', 'Housekeeper');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`nomor_kamar`);

--
-- Indeks untuk tabel `log_login`
--
ALTER TABLE `log_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `nomor_kamar` (`nomor_kamar`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_reservasi` (`id_reservasi`);

--
-- Indeks untuk tabel `usersistem`
--
ALTER TABLE `usersistem`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_login`
--
ALTER TABLE `log_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `usersistem`
--
ALTER TABLE `usersistem`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`nomor_kamar`) REFERENCES `kamar` (`nomor_kamar`),
  ADD CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`id_tamu`) REFERENCES `tamu` (`id_tamu`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `reservasi` (`id_reservasi`);

--
-- Ketidakleluasaan untuk tabel `usersistem`
--
ALTER TABLE `usersistem`
  ADD CONSTRAINT `usersistem_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
