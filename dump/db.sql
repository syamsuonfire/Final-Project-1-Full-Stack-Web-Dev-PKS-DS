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

-- membuang struktur untuk table laravel_kasir.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel laravel_kasir.failed_jobs: ~0 rows (lebih kurang)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(200) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.kategori: ~0 rows (lebih kurang)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
	(1, 'oli TMO'),
	(2, 'jasa service berkala 1000km');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel laravel_kasir.migrations: ~3 rows (lebih kurang)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel laravel_kasir.password_resets: ~0 rows (lebih kurang)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.tb_barang
CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_barang` varchar(200) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `jumlah_barang` varchar(200) NOT NULL,
  `harga_barang` varchar(200) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.tb_barang: ~1 rows (lebih kurang)
DELETE FROM `tb_barang`;
/*!40000 ALTER TABLE `tb_barang` DISABLE KEYS */;
INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `kategori_id`, `jumlah_barang`, `harga_barang`) VALUES
	('123', 'Telor', 1, '100', '2000'),
	('TEST', 'TEST', 1, '100', '20000');
/*!40000 ALTER TABLE `tb_barang` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.tb_kembalian
CREATE TABLE IF NOT EXISTS `tb_kembalian` (
  `id_kembalian` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi_kembalian` varchar(100) NOT NULL,
  `bayar` varchar(200) NOT NULL,
  `kembalian` varchar(100) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  PRIMARY KEY (`id_kembalian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.tb_kembalian: ~0 rows (lebih kurang)
DELETE FROM `tb_kembalian`;
/*!40000 ALTER TABLE `tb_kembalian` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_kembalian` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.tb_pasok
CREATE TABLE IF NOT EXISTS `tb_pasok` (
  `id_pasok` int(11) NOT NULL AUTO_INCREMENT,
  `barang_pasok_id` varchar(200) NOT NULL,
  `jumlah_pasok` varchar(200) NOT NULL,
  `nama_pemasok` varchar(200) NOT NULL,
  `tanggal_pasok` date NOT NULL,
  PRIMARY KEY (`id_pasok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.tb_pasok: ~0 rows (lebih kurang)
DELETE FROM `tb_pasok`;
/*!40000 ALTER TABLE `tb_pasok` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pasok` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.tb_sementara
CREATE TABLE IF NOT EXISTS `tb_sementara` (
  `id_sementara` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(200) NOT NULL,
  `barang_id` varchar(200) NOT NULL,
  `jumlah_beli` varchar(200) NOT NULL,
  `total_harga` varchar(200) NOT NULL,
  `pengguna_id` varchar(200) NOT NULL,
  `tanggal_beli` date NOT NULL,
  PRIMARY KEY (`id_sementara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.tb_sementara: ~0 rows (lebih kurang)
DELETE FROM `tb_sementara`;
/*!40000 ALTER TABLE `tb_sementara` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sementara` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.tb_transaksi
CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(200) NOT NULL,
  `barang_id` varchar(200) NOT NULL,
  `jumlah_beli` varchar(200) NOT NULL,
  `total_harga` varchar(200) NOT NULL,
  `pengguna_id` varchar(200) NOT NULL,
  `tanggal_beli` date NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel laravel_kasir.tb_transaksi: ~0 rows (lebih kurang)
DELETE FROM `tb_transaksi`;
/*!40000 ALTER TABLE `tb_transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_transaksi` ENABLE KEYS */;

-- membuang struktur untuk table laravel_kasir.users
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

-- Membuang data untuk tabel laravel_kasir.users: ~0 rows (lebih kurang)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
	(16, 'admin', 'admin@gmail.com', NULL, '$2y$10$oxgI7yiV0T85OTi9MKYljus5ApRi.MDGLI.PqmX8v.Om0IA8QZw3S', 'A', NULL, '2020-03-26 13:10:07', '2020-03-26 13:10:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- membuang struktur untuk trigger laravel_kasir.tg_pasok
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_pasok` AFTER INSERT ON `tb_pasok` FOR EACH ROW BEGIN
UPDATE tb_barang
SET jumlah_barang = jumlah_barang + NEW.jumlah_pasok
WHERE
id_barang = NEW.barang_pasok_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- membuang struktur untuk trigger laravel_kasir.tg_transaksi
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_transaksi` AFTER INSERT ON `tb_transaksi` FOR EACH ROW BEGIN
UPDATE tb_barang
SET jumlah_barang = jumlah_barang - NEW.jumlah_beli
WHERE
id_barang = NEW.barang_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
