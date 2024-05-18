-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2024 pada 11.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(7, 'makanan'),
(8, 'minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia',
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`, `jumlah`) VALUES
(6, 8, 'matcha chi', 15000, 'ic6s9xygtpBOkFawPx5XlSa-6Tj0ATj0JhDRE9J2K_XZq5An.png', 'minuman matcha', 'tersedia', 0),
(7, 7, 'mochi dango', 200000, 't9Vnz01hyg5BbrcEU6jHorGOjRX8bedvP_Ao_5SMRr0KvABa.png', 'mochi dangoo', 'tersedia', 0),
(8, 7, 'sandwich lidah kucing', 13000, '4Uzf4giDClaooZ46HfuYtTVcOi51Ytk0_a5rzvygVmdilYN9.png', 'sandwich lidah kucing', 'tersedia', 0),
(9, 7, 'mie bakso chilli oil', 20000, '-_7aoZ7fqKvENA6mvrS6e7nY_fJaNm_ELCIVGxZE2ad9vCUs.jpg', 'perpaduan mie, bakso, dan chilli oil membuat cita rasa yang enak', 'tersedia', 0),
(10, 7, 'makaroni chilli oil', 15000, 'Zl5KOflJk5YQb__mMBDyce1Yu3s6d1FnXyCvQyM92qfbov_P.jpg', 'perpaduan macaroni dengan chilli oil', 'tersedia', 0),
(11, 7, 'seblak instan', 5000, 'woJ6N5ks78-1zjPWryXXwnplDuWrge5rPZdhX9LPIFrUFZyP.jpg', 'seblak instan', 'tersedia', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor_telepon` int(50) NOT NULL,
  `alamat` text NOT NULL,
  `cart` text NOT NULL,
  `status` enum('sudah di proses','belum di proses') NOT NULL DEFAULT 'belum di proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`tanggal`, `nama`, `nomor_telepon`, `alamat`, `cart`, `status`) VALUES
('2024-05-13', '', 0, '', 'a:1:{i:0;a:4:{s:2:\"id\";s:1:\"6\";s:4:\"nama\";s:6:\"matcha\";s:5:\"harga\";s:5:\"15000\";s:4:\"foto\";s:52:\"ic6s9xygtpBOkFawPx5XlSa-6Tj0ATj0JhDRE9J2K_XZq5An.png\";}}', 'belum di proses'),
('2024-05-13', '', 0, '', 'a:1:{i:0;a:4:{s:2:\"id\";s:1:\"6\";s:4:\"nama\";s:6:\"matcha\";s:5:\"harga\";s:5:\"15000\";s:4:\"foto\";s:52:\"ic6s9xygtpBOkFawPx5XlSa-6Tj0ATj0JhDRE9J2K_XZq5An.png\";}}', 'belum di proses'),
('2024-05-13', '', 0, '', 'a:2:{i:0;a:4:{s:2:\"id\";s:1:\"6\";s:4:\"nama\";s:6:\"matcha\";s:5:\"harga\";s:5:\"15000\";s:4:\"foto\";s:52:\"ic6s9xygtpBOkFawPx5XlSa-6Tj0ATj0JhDRE9J2K_XZq5An.png\";}i:1;a:4:{s:2:\"id\";s:1:\"8\";s:4:\"nama\";s:21:\"sandwich lidah kucing\";s:5:\"harga\";s:5:\"13000\";s:4:\"foto\";s:52:\"4Uzf4giDClaooZ46HfuYtTVcOi51Ytk0_a5rzvygVmdilYN9.png\";}}', 'belum di proses'),
('2024-05-14', '', 0, '', 'a:6:{i:0;a:5:{s:2:\"id\";s:1:\"6\";s:4:\"nama\";s:6:\"matcha\";s:5:\"harga\";s:5:\"15000\";s:4:\"foto\";s:52:\"ic6s9xygtpBOkFawPx5XlSa-6Tj0ATj0JhDRE9J2K_XZq5An.png\";s:17:\"ketersediaan_stok\";s:8:\"tersedia\";}i:1;a:4:{s:2:\"id\";s:1:\"7\";s:4:\"nama\";s:11:\"mochi dango\";s:5:\"harga\";s:6:\"200000\";s:4:\"foto\";s:52:\"t9Vnz01hyg5BbrcEU6jHorGOjRX8bedvP_Ao_5SMRr0KvABa.png\";}i:2;a:4:{s:2:\"id\";s:1:\"8\";s:4:\"nama\";s:21:\"sandwich lidah kucing\";s:5:\"harga\";s:5:\"13000\";s:4:\"foto\";s:52:\"4Uzf4giDClaooZ46HfuYtTVcOi51Ytk0_a5rzvygVmdilYN9.png\";}i:3;a:4:{s:2:\"id\";s:1:\"9\";s:4:\"nama\";s:20:\"mie bakso chilli oil\";s:5:\"harga\";s:5:\"20000\";s:4:\"foto\";s:52:\"-_7aoZ7fqKvENA6mvrS6e7nY_fJaNm_ELCIVGxZE2ad9vCUs.jpg\";}i:5;a:4:{s:2:\"id\";s:2:\"11\";s:4:\"nama\";s:13:\"seblak instan\";s:5:\"harga\";s:4:\"5000\";s:4:\"foto\";s:52:\"woJ6N5ks78-1zjPWryXXwnplDuWrge5rPZdhX9LPIFrUFZyP.jpg\";}i:8;a:5:{s:2:\"id\";s:1:\"8\";s:4:\"nama\";s:21:\"sandwich lidah kucing\";s:5:\"harga\";s:5:\"13000\";s:4:\"foto\";s:52:\"4Uzf4giDClaooZ46HfuYtTVcOi51Ytk0_a5rzvygVmdilYN9.png\";s:17:\"ketersediaan_stok\";s:8:\"tersedia\";}}', 'belum di proses'),
('2024-05-16', '', 0, '', 'a:2:{i:0;a:4:{s:2:\"id\";s:1:\"7\";s:4:\"nama\";s:11:\"mochi dango\";s:5:\"harga\";s:6:\"200000\";s:4:\"foto\";s:52:\"t9Vnz01hyg5BbrcEU6jHorGOjRX8bedvP_Ao_5SMRr0KvABa.png\";}i:1;a:5:{s:2:\"id\";s:2:\"10\";s:4:\"nama\";s:19:\"makaroni chilli oil\";s:5:\"harga\";s:5:\"15000\";s:4:\"foto\";s:52:\"Zl5KOflJk5YQb__mMBDyce1Yu3s6d1FnXyCvQyM92qfbov_P.jpg\";s:17:\"ketersediaan_stok\";s:8:\"tersedia\";}}', 'belum di proses'),
('2024-05-17', '', 0, '', 'a:1:{i:0;a:4:{s:2:\"id\";s:1:\"9\";s:4:\"nama\";s:20:\"mie bakso chilli oil\";s:5:\"harga\";s:5:\"20000\";s:4:\"foto\";s:52:\"-_7aoZ7fqKvENA6mvrS6e7nY_fJaNm_ELCIVGxZE2ad9vCUs.jpg\";}}', 'belum di proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$Exfrc4aI7tu0Zoq7MRkFMu6zwVMRbSZ63anHW6iHNl7aAwEjjvSwm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
