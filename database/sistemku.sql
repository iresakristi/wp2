-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sistemku.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id_cust` int(11) NOT NULL AUTO_INCREMENT,
  `nama_cust` varchar(50) NOT NULL,
  `jml_pesanan` int(11) NOT NULL DEFAULT '0',
  `nama_kripik` varchar(100) NOT NULL,
  `variant_kripik` varchar(30) NOT NULL,
  `total_harga` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cust`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemku.customer: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id_cust`, `nama_cust`, `jml_pesanan`, `nama_kripik`, `variant_kripik`, `total_harga`) VALUES
	(1, 'Revry', 20, 'Cabe Merah, Cabe Ijo', 'Kecil', 60000),
	(2, 'Bojan', 2, 'Original', 'Besar', 8000);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table sistemku.kripik
CREATE TABLE IF NOT EXISTS `kripik` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nama_kripik` varchar(50) NOT NULL,
  `harga` float NOT NULL DEFAULT '0',
  `qty` smallint(6) NOT NULL DEFAULT '0',
  `variant` varchar(30) NOT NULL,
  `jml_total` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemku.kripik: ~6 rows (approximately)
/*!40000 ALTER TABLE `kripik` DISABLE KEYS */;
INSERT INTO `kripik` (`id`, `nama_kripik`, `harga`, `qty`, `variant`, `jml_total`) VALUES
	(1, 'Keripik Cabe Merah', 3000, 33, 'Kecil', 99000),
	(2, 'Keripik Cabe Ijo', 3000, 32, 'Kecil', 96000),
	(3, 'Keripik Original', 3000, 33, 'Kecil', 99000),
	(4, 'Keripik Cabe Merah (Big)', 4000, 12, 'Besar', 48000),
	(5, 'Keripik Cabe Ijo (Big)', 4000, 14, 'Besar', 56000),
	(6, 'Keripik Original (Big)', 4000, 5, 'Besar', 20000);
/*!40000 ALTER TABLE `kripik` ENABLE KEYS */;

-- Dumping structure for table sistemku.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sistemku.user: ~1 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
	(1, 'admin', 'admin', '12345678', 'admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
