-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.14-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk estimasi_service
CREATE DATABASE IF NOT EXISTS `estimasi_service` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `estimasi_service`;

-- membuang struktur untuk table estimasi_service.estimasi
CREATE TABLE IF NOT EXISTS `estimasi` (
  `id_estimasi` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_kategori` int(11) NOT NULL,
  `customer` varchar(200) NOT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `pajak` bigint(20) DEFAULT NULL,
  `grand_total` bigint(20) NOT NULL,
  PRIMARY KEY (`id_estimasi`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel estimasi_service.estimasi: ~39 rows (lebih kurang)
DELETE FROM `estimasi`;
/*!40000 ALTER TABLE `estimasi` DISABLE KEYS */;
INSERT INTO `estimasi` (`id_estimasi`, `created_at`, `updated_at`, `id_kategori`, `customer`, `tanggal`, `subtotal`, `pajak`, `grand_total`) VALUES
	(10, '2020-12-06 15:44:22', '2020-12-06 15:44:22', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(11, '2020-12-06 15:44:53', '2020-12-06 15:44:53', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(12, '2020-12-06 15:45:38', '2020-12-06 15:45:38', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(13, '2020-12-06 15:55:29', '2020-12-06 15:55:29', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(14, '2020-12-06 15:55:59', '2020-12-06 15:55:59', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(15, '2020-12-06 15:56:22', '2020-12-06 15:56:22', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(16, '2020-12-06 16:07:11', '2020-12-06 16:07:11', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(17, '2020-12-06 16:07:52', '2020-12-06 16:07:52', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(18, '2020-12-06 16:08:41', '2020-12-06 16:08:41', 3, 'Firman', '12/10/2020', NULL, NULL, 600000),
	(19, '2020-12-06 16:12:31', '2020-12-06 16:12:31', 3, 'Budi', '12/09/2020', NULL, NULL, 10300000),
	(20, '2020-12-06 16:13:37', '2020-12-06 16:13:37', 3, 'Budi', '12/09/2020', NULL, NULL, 10300000),
	(21, '2020-12-06 16:13:57', '2020-12-06 16:13:57', 3, 'Budi', '12/09/2020', NULL, NULL, 10300000),
	(22, '2020-12-06 16:14:16', '2020-12-06 16:14:16', 3, 'Budi', '12/09/2020', NULL, NULL, 800000),
	(23, '2020-12-06 16:14:51', '2020-12-06 16:14:51', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(24, '2020-12-06 16:16:01', '2020-12-06 16:16:01', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(25, '2020-12-06 16:16:19', '2020-12-06 16:16:19', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(26, '2020-12-06 16:17:10', '2020-12-06 16:17:10', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(27, '2020-12-06 16:17:11', '2020-12-06 16:17:11', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(28, '2020-12-06 16:17:11', '2020-12-06 16:17:11', 3, 'Budi', '12/10/2020', NULL, NULL, 5300000),
	(29, '2020-12-06 16:24:44', '2020-12-06 16:24:44', 3, 'Margaret', '12/11/2020', NULL, NULL, 5300000),
	(30, '2020-12-06 16:27:16', '2020-12-06 16:27:16', 3, 'Margaret', '12/11/2020', NULL, NULL, 5300000),
	(31, '2020-12-06 16:27:49', '2020-12-06 16:27:49', 3, 'Badu', '12/11/2020', NULL, NULL, 5300000),
	(32, '2020-12-06 16:28:41', '2020-12-06 16:28:41', 3, 'Firman', '12/09/2020', NULL, NULL, 5300000),
	(33, '2020-12-06 16:28:41', '2020-12-06 16:28:41', 3, 'Firman', '12/09/2020', NULL, NULL, 5300000),
	(34, '2020-12-06 16:28:42', '2020-12-06 16:28:42', 3, 'Firman', '12/09/2020', NULL, NULL, 5300000),
	(35, '2020-12-06 16:35:54', '2020-12-06 16:35:54', 3, 'Margaret', '12/08/2020', NULL, NULL, 800000),
	(36, '2020-12-06 16:37:01', '2020-12-06 16:37:01', 3, 'Margaret', '12/08/2020', NULL, NULL, 800000),
	(37, '2020-12-06 16:38:23', '2020-12-06 16:38:23', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(38, '2020-12-06 16:41:32', '2020-12-06 16:41:32', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(39, '2020-12-06 16:42:34', '2020-12-06 16:42:34', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(40, '2020-12-06 16:42:35', '2020-12-06 16:42:35', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(41, '2020-12-06 16:42:35', '2020-12-06 16:42:35', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(42, '2020-12-06 16:43:02', '2020-12-06 16:43:02', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(43, '2020-12-06 16:43:19', '2020-12-06 16:43:19', 3, 'Budi', '12/10/2020', NULL, NULL, 800000),
	(44, '2020-12-22 15:53:29', '2020-12-22 15:53:29', 3, 'Margaret', '12/21/2020', NULL, NULL, 300000),
	(45, '2020-12-22 15:54:35', '2020-12-22 15:54:35', 3, 'Margaret', '12/21/2020', NULL, NULL, 300000),
	(46, '2020-12-22 15:56:37', '2020-12-22 15:56:37', 3, 'Bani', '12/21/2020', NULL, NULL, 300000),
	(47, '2020-12-22 16:00:15', '2020-12-22 16:00:15', 3, 'Gani', '12/18/2020', NULL, NULL, 400000),
	(48, '2020-12-22 16:02:10', '2020-12-22 16:02:10', 3, 'Meri', '12/25/2020', NULL, NULL, 5500000),
	(49, '2020-12-22 16:06:35', '2020-12-22 16:06:35', 3, 'Dodi', '12/15/2020', NULL, NULL, 400000),
	(50, '2020-12-30 15:38:14', '2020-12-30 15:38:14', 5, 'Fadli', '12/31/2020', NULL, NULL, 3000000),
	(51, '2020-12-30 15:40:29', '2020-12-30 15:40:29', 6, 'Arul', '12/31/2020', NULL, NULL, 5750000),
	(52, '2020-12-30 15:47:44', '2020-12-30 15:47:44', 4, 'Budi', '12/31/2020', NULL, NULL, 1000000),
	(53, '2020-12-30 15:49:59', '2020-12-30 15:49:59', 6, 'Satriyo', '12/31/2020', NULL, NULL, 7250000),
	(54, '2020-12-30 15:51:00', '2020-12-30 15:51:00', 6, 'Santi', '12/31/2020', NULL, NULL, 7250000);
/*!40000 ALTER TABLE `estimasi` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.estimasi_detail
CREATE TABLE IF NOT EXISTS `estimasi_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estimasi` int(11) DEFAULT NULL,
  `id_sparepart` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel estimasi_service.estimasi_detail: ~41 rows (lebih kurang)
DELETE FROM `estimasi_detail`;
/*!40000 ALTER TABLE `estimasi_detail` DISABLE KEYS */;
INSERT INTO `estimasi_detail` (`detail_id`, `id_estimasi`, `id_sparepart`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
	(1, 12, 127, 3, 300000, '2020-12-06 15:45:38', '2020-12-06 15:45:38'),
	(2, 13, 127, 3, 300000, '2020-12-06 15:55:29', '2020-12-06 15:55:29'),
	(3, 14, 127, 3, 300000, '2020-12-06 15:55:59', '2020-12-06 15:55:59'),
	(4, 15, 127, 3, 300000, '2020-12-06 15:56:22', '2020-12-06 15:56:22'),
	(5, 16, 127, 3, 300000, '2020-12-06 16:07:11', '2020-12-06 16:07:11'),
	(6, 17, 127, 3, 300000, '2020-12-06 16:07:52', '2020-12-06 16:07:52'),
	(7, 18, 127, 3, 300000, '2020-12-06 16:08:41', '2020-12-06 16:08:41'),
	(8, 19, 128, 2, 10000000, '2020-12-06 16:12:31', '2020-12-06 16:12:31'),
	(9, 20, 128, 2, 10000000, '2020-12-06 16:13:37', '2020-12-06 16:13:37'),
	(10, 21, 128, 2, 10000000, '2020-12-06 16:13:57', '2020-12-06 16:13:57'),
	(11, 22, 126, 1, 500000, '2020-12-06 16:14:16', '2020-12-06 16:14:16'),
	(12, 23, 128, 1, 5000000, '2020-12-06 16:14:51', '2020-12-06 16:14:51'),
	(13, 24, 128, 1, 5000000, '2020-12-06 16:16:01', '2020-12-06 16:16:01'),
	(14, 25, 128, 1, 5000000, '2020-12-06 16:16:19', '2020-12-06 16:16:19'),
	(15, 26, 128, 1, 5000000, '2020-12-06 16:17:10', '2020-12-06 16:17:10'),
	(16, 27, 128, 1, 5000000, '2020-12-06 16:17:11', '2020-12-06 16:17:11'),
	(17, 28, 128, 1, 5000000, '2020-12-06 16:17:11', '2020-12-06 16:17:11'),
	(18, 29, 128, 1, 5000000, '2020-12-06 16:24:44', '2020-12-06 16:24:44'),
	(19, 30, 128, 1, 5000000, '2020-12-06 16:27:16', '2020-12-06 16:27:16'),
	(20, 31, 128, 1, 5000000, '2020-12-06 16:27:49', '2020-12-06 16:27:49'),
	(21, 32, 128, 1, 5000000, '2020-12-06 16:28:41', '2020-12-06 16:28:41'),
	(22, 33, 128, 1, 5000000, '2020-12-06 16:28:41', '2020-12-06 16:28:41'),
	(23, 34, 128, 1, 5000000, '2020-12-06 16:28:42', '2020-12-06 16:28:42'),
	(24, 35, 126, 1, 500000, '2020-12-06 16:35:54', '2020-12-06 16:35:54'),
	(25, 36, 126, 1, 500000, '2020-12-06 16:37:01', '2020-12-06 16:37:01'),
	(26, 37, 126, 1, 500000, '2020-12-06 16:38:23', '2020-12-06 16:38:23'),
	(27, 38, 126, 1, 500000, '2020-12-06 16:41:32', '2020-12-06 16:41:32'),
	(28, 39, 126, 1, 500000, '2020-12-06 16:42:34', '2020-12-06 16:42:34'),
	(29, 40, 126, 1, 500000, '2020-12-06 16:42:35', '2020-12-06 16:42:35'),
	(30, 41, 126, 1, 500000, '2020-12-06 16:42:35', '2020-12-06 16:42:35'),
	(31, 42, 126, 1, 500000, '2020-12-06 16:43:02', '2020-12-06 16:43:02'),
	(32, 43, 126, 1, 500000, '2020-12-06 16:43:19', '2020-12-06 16:43:19'),
	(33, 47, 127, 1, 100000, '2020-12-22 16:00:15', '2020-12-22 16:00:15'),
	(34, 48, 127, 2, 200000, '2020-12-22 16:02:10', '2020-12-22 16:02:10'),
	(35, 48, 128, 1, 5000000, '2020-12-22 16:02:10', '2020-12-22 16:02:10'),
	(36, 49, 127, 1, 100000, '2020-12-22 16:06:35', '2020-12-22 16:06:35'),
	(37, 50, 127, 2, 2000000, '2020-12-30 15:38:14', '2020-12-30 15:38:14'),
	(38, 50, 129, 1, 500000, '2020-12-30 15:38:14', '2020-12-30 15:38:14'),
	(39, 51, 128, 1, 5000000, '2020-12-30 15:40:29', '2020-12-30 15:40:29'),
	(40, 52, 126, 1, 500000, '2020-12-30 15:47:44', '2020-12-30 15:47:44'),
	(41, 53, 127, 1, 1000000, '2020-12-30 15:49:59', '2020-12-30 15:49:59'),
	(42, 53, 128, 1, 5000000, '2020-12-30 15:49:59', '2020-12-30 15:49:59'),
	(43, 53, 129, 1, 500000, '2020-12-30 15:49:59', '2020-12-30 15:49:59'),
	(44, 54, 127, 1, 1000000, '2020-12-30 15:51:00', '2020-12-30 15:51:00'),
	(45, 54, 128, 1, 5000000, '2020-12-30 15:51:00', '2020-12-30 15:51:00'),
	(46, 54, 129, 1, 500000, '2020-12-30 15:51:00', '2020-12-30 15:51:00');
/*!40000 ALTER TABLE `estimasi_detail` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel estimasi_service.failed_jobs: ~0 rows (lebih kurang)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.jasa
CREATE TABLE IF NOT EXISTS `jasa` (
  `id_jasa` int(11) NOT NULL AUTO_INCREMENT,
  `jasa` varchar(200) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id_jasa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel estimasi_service.jasa: ~0 rows (lebih kurang)
DELETE FROM `jasa`;
/*!40000 ALTER TABLE `jasa` DISABLE KEYS */;
/*!40000 ALTER TABLE `jasa` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(200) NOT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel estimasi_service.kategori: ~3 rows (lebih kurang)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `kategori`, `biaya`, `durasi`) VALUES
	(3, 'Service Berkala 1000km Avanza', 300000, '2 Jam'),
	(4, 'Service Berkala 5000km Avanza', 500000, '3 Jam'),
	(5, 'Service Berkala 3000km Fortuner', 500000, '3 Jam'),
	(6, 'Service Berkala 5000km Fortuner', 750000, '4 Jam');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel estimasi_service.migrations: ~3 rows (lebih kurang)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel estimasi_service.password_resets: ~0 rows (lebih kurang)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.sparepart
CREATE TABLE IF NOT EXISTS `sparepart` (
  `id_sparepart` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `harga` bigint(20) NOT NULL,
  PRIMARY KEY (`id_sparepart`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel estimasi_service.sparepart: ~4 rows (lebih kurang)
DELETE FROM `sparepart`;
/*!40000 ALTER TABLE `sparepart` DISABLE KEYS */;
INSERT INTO `sparepart` (`id_sparepart`, `nama`, `harga`) VALUES
	(126, 'Filter Oli Avanza Matic', 500000),
	(127, 'Filter Oli Fortuner', 1000000),
	(128, 'Aki Mobil GS Astra', 5000000),
	(129, 'HeadLamp Fortuner', 500000);
/*!40000 ALTER TABLE `sparepart` ENABLE KEYS */;

-- membuang struktur untuk table estimasi_service.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('A','K') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel estimasi_service.users: ~0 rows (lebih kurang)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
	(16, 'admin', 'admin@gmail.com', NULL, '$2y$10$oxgI7yiV0T85OTi9MKYljus5ApRi.MDGLI.PqmX8v.Om0IA8QZw3S', 'A', NULL, '2020-03-26 13:10:07', '2020-03-26 13:10:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
