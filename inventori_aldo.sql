-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 10.33
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
-- Database: `inventori_aldo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(1, 'K001', 'Baju'),
(2, 'K002', 'Sepatu'),
(3, 'K003', 'Tas'),
(5, 'K004', 'jam tangan'),
(6, 'K005', 'Celana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `min_stock` int(11) DEFAULT 5,
  `price` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'P001', 'Nike', 100, 48, 350000, '8c986500e26f1e3e097bd82723d7dad7.jpg', '2026-05-11 05:41:45', NULL),
(2, 2, 'P002', 'Adidas', 108, 89, 250000, '7d31e7b70e0b464d29c1d3758c9ad181.webp', '2026-05-20 04:15:49', NULL),
(3, 1, 'P003', 'Puma', 98, 50, 250000, 'cc074caa2b1a8bf4ae87c36a39e0c494.jpg', '2026-05-20 05:58:45', NULL),
(4, 1, 'P004', 'Uniqlo', 100, 90, 150000, '3b40138ee43170ea34bde757e368c49a.jpg', '2026-05-20 06:46:08', NULL),
(101, 2, 'P005', 'Timberland', 55, 20, 1500000, 'd616ab65e0f1bea09011e337b8004d71.jpg', '2026-05-21 04:30:26', NULL),
(102, 2, 'P006', 'Nike', 40, 30, 900000, '0cd5945e85afe21ac10686f267db27bf.jpg', '2026-05-21 04:32:54', NULL),
(103, 2, 'P007', 'Puma', 50, 45, 850000, '72a76a988af873b0b8a1d19401c76a86.jpg', '2026-05-21 04:36:49', NULL),
(104, 2, 'P008', 'Jordan', 0, 50, 500000, '6b7a1fce063d388d191e9ce6736525c3.jpg', '2026-05-21 04:38:46', NULL),
(105, 3, 'P009', 'Eiger', 45, 30, 500000, 'cd4c7e8b08ba41af693ac62ea9876a87.jpg', '2026-05-21 04:41:15', NULL),
(106, 3, 'P010', 'herschel', 30, 45, 350000, '0925670543dc6c483f061f030d0ba7d2.jpg', '2026-05-21 04:47:34', NULL),
(107, 3, 'P011', 'Holigaans', 30, 25, 150000, '699002442d451d6f2d2e18e7d2f0d2b5.jpg', '2026-05-21 04:50:58', NULL),
(108, 3, 'P012', 'Smith', 35, 45, 350000, '6b5c025bdfd7c89bd128bf8a7120ff34.jpg', '2026-05-21 05:05:17', NULL),
(109, 5, 'P013', 'Rolex', 20, 35, 1700000, 'db4ec56f58e81492c6eb4cde7f334f38.jpg', '2026-05-21 05:07:33', NULL),
(110, 5, 'P014', 'Casio', 40, 35, 370000, 'a73139160d1ba197a08eac0cd8b0d845.jpg', '2026-05-21 05:12:33', NULL),
(111, 5, 'P015', 'Seiko', 35, 40, 950000, '1f4e927639c4769c73d19a6719d09763.jpg', '2026-05-21 05:16:39', NULL),
(112, 5, 'P016', 'Fossil', 45, 35, 2500000, '95fc09bf2849ecc679c1d4a30a7636f4.jpg', '2026-05-21 05:19:38', NULL),
(113, 6, 'P017', 'Jens', 59, 35, 250000, '6658c2edf199f0604e4c677d2023bfd5.jpg', '2026-05-21 05:23:18', NULL),
(114, 6, 'P018', 'Cardinal', 45, 30, 150000, 'e73d4e6240b301892e07b9db0222a843.jpg', '2026-05-21 05:24:58', NULL),
(115, 6, 'P019', 'Nevada', 75, 45, 250000, 'f8da7b13931287632e611f711dad402f.jpg', '2026-05-21 05:32:54', NULL),
(116, 6, 'P020', 'Wrangler', 40, 20, 350000, '5653fa866718c9abd9d1feb5f6acbb87.jpg', '2026-05-21 05:34:27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 1, 'ADD', 25, 5000, 5025, '5e4w4st', '2026-05-14 06:03:55', 0),
(2, 1, 'ADD', 20, 5025, 5045, 'baik', '2026-05-14 06:15:25', 1),
(3, 1, 'REDUCE', 10, 5045, 5035, 'baik', '2026-05-14 07:03:25', 1),
(4, 1, 'REDUCE', 5030, 5035, 5, 'ilang', '2026-05-14 07:05:19', 1),
(5, 1, 'REDUCE', 5, 5, 0, 'kurang menarik bagi pelanggan', '2026-05-19 07:51:09', 1),
(6, 1, 'ADD', 60, 150, 210, 'dihina hina saya tetap diam', '2026-05-20 04:38:07', 1),
(7, 1, 'REDUCE', 5, 210, 205, 'kurang baik', '2026-05-20 04:47:50', 1),
(8, 1, 'REDUCE', 119, 205, 86, 'kurang menarik', '2026-05-20 05:02:59', 1),
(9, 2, 'REDUCE', 10, 118, 108, '', '2026-05-21 05:10:18', 1),
(10, 101, 'ADD', 20, 35, 55, '', '2026-05-27 04:02:26', 1),
(11, 113, 'ADD', 34, 25, 59, 'baik', '2026-05-27 04:03:55', 1),
(12, 103, 'ADD', 25, 25, 50, 'memuaskan', '2026-05-27 04:04:42', 1),
(13, 115, 'ADD', 40, 35, 75, 'menarik', '2026-05-27 04:06:15', 1),
(14, 104, 'REDUCE', 35, 35, 0, 'kurang baik', '2026-05-27 04:07:49', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'Aldo Tunjung s', 'aldotunjungs@gmail.com', '$2y$10$fGUuUXOBC8/0Ke4JVmI1..9LfM243NwbLcm2uBLnpEBBCw5RpplDi', 'admin', 1, '2026-05-13 07:04:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kad` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
