-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6415
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sales.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sale_id` int(50) NOT NULL DEFAULT 0,
  `product_id` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_mail` varchar(50) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_price` decimal(20,2) NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sales.sales: ~5 rows (approximately)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `sale_id`, `product_id`, `customer_name`, `customer_mail`, `product_name`, `product_price`, `sale_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, '1', 'Reto Fanzen', 'reto.fanzen@no-reply.rexx-systems.com', 'Refactoring: Improving the Design of Existing Code', 49.99, '2019-04-02 08:05:12', 'Y', '2022-02-16 18:23:06', '2022-02-16 18:23:06', NULL),
	(2, 2, '2', 'Reto Fanzen', 'reto.fanzen@no-reply.rexx-systems.com', 'Clean Architecture: A Craftsman\'s Guide to Softwar', 24.99, '2019-05-01 11:07:18', 'Y', '2022-02-16 18:23:06', '2022-02-16 18:23:06', NULL),
	(3, 3, '2', 'Leandro Bußmann', 'leandro.bussmann@no-reply.rexx-systems.com', 'Clean Architecture: A Craftsman\'s Guide to Softwar', 19.99, '2019-05-06 14:26:14', 'Y', '2022-02-16 18:23:06', '2022-02-16 18:23:06', NULL),
	(4, 4, '1', 'Hans Schäfer', 'hans.schaefer@no-reply.rexx-systems.com', 'Refactoring: Improving the Design of Existing Code', 37.98, '2019-06-07 11:38:39', 'Y', '2022-02-16 18:23:06', '2022-02-16 18:23:06', NULL),
	(5, 5, '1', 'Mia Wyss', 'mia.wyss@no-reply.rexx-systems.com', 'Refactoring: Improving the Design of Existing Code', 37.98, '2019-07-01 15:01:13', 'Y', '2022-02-16 18:23:07', '2022-02-16 18:23:07', NULL),
	(6, 6, '2', 'Mia Wyss', 'mia.wyss@no-reply.rexx-systems.com', 'Clean Architecture: A Craftsman\'s Guide to Softwar', 19.99, '2019-08-07 19:08:56', 'Y', '2022-02-16 18:23:07', '2022-02-16 18:23:07', NULL),
	(7, 1, '1', 'Reto Fanzen', 'reto.fanzen@no-reply.rexx-systems.com', 'Refactoring: Improving the Design of Existing Code', 49.99, '2019-04-02 08:05:12', 'Y', '2022-02-16 18:40:02', '2022-02-16 18:40:02', NULL);

-- Dumping structure for table sales.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_type` int(5) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `api_token` varchar(250) NOT NULL DEFAULT '',
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sales.users: ~0 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `password`, `api_token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 'admin', 'admin@sales.com', 'admin@sales.com', '', 'Y', '2022-02-05 17:09:04', '2022-02-16 17:46:19', NULL),
	(2, 1, 'sales', 'sales@sales.com', 'sales@sales.com', '4237343645161631466028706', 'Y', '2022-02-05 17:09:04', '2022-02-16 17:56:41', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
