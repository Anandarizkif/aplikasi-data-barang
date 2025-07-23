/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - barang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`barang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `barang`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(10) NOT NULL,
  `stok_barang` int(3) NOT NULL,
  `harga_pokok` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barang` */

insert  into `barang`(`kd_barang`,`nama_barang`,`jenis_barang`,`stok_barang`,`harga_pokok`,`harga_jual`) values 
('K0001','Aki USA','Aki',10,1400000,1500000),
('K0002','Aki INCU','Aki',10,1450000,1550000),
('K0003','Aki FB','Aki',15,1300000,1400000),
('K0004','Ban Dalem GT','BanDalem',20,450000,550000),
('K0005','Ban Dalem BT','BanDalem',20,500000,600000);

/*Table structure for table `distributor` */

DROP TABLE IF EXISTS `distributor`;

CREATE TABLE `distributor` (
  `kd_distributor` varchar(10) NOT NULL,
  `nama_distributor` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `distributor` */

insert  into `distributor`(`kd_distributor`,`nama_distributor`,`alamat`,`telepon`) values 
('D0001','P.Mamay','Jln.Gedebage','081221536393'),
('D0002','P.Toni','Jln.Batujajar','082115835914'),
('D0003','P.Dedi','Jln.Ciparay','0821298344460');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `login` */

insert  into `login`(`nama`,`username`,`password`) values 
('Ananda Rizki F','admin','admin');

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `kd_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`kd_pelanggan`,`nama_pelanggan`,`jenis_kelamin`,`alamat`) values 
('PL0001','adi','L','adfddr'),
('PL0002','p.Mamay','L','Jln.Batujajar');

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `kd_pretransaksi` varchar(10) NOT NULL,
  `kd_transaksi` varchar(10) NOT NULL,
  `kd_pelanggan` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `penjualan` */

insert  into `penjualan`(`kd_pretransaksi`,`kd_transaksi`,`kd_pelanggan`,`kd_barang`,`jumlah`,`sub_total`) values 
('PS0001','TR0001','PL0001','K0001',5,672675),
('PS0002','TR0001','PL0001','K0001',2,269070),
('PS0003','TR0002','PL0001','K0001',3,4500000),
('PS0004','TR0003','PL0002','K0001',4,6000000),
('PS0005','TR0004','PL0002','K0004',4,2200000);

/*Table structure for table `penjualan2` */

DROP TABLE IF EXISTS `penjualan2`;

CREATE TABLE `penjualan2` (
  `kd_transaksi` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `total` int(50) NOT NULL,
  `tanggal_beli` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `penjualan2` */

insert  into `penjualan2`(`kd_transaksi`,`nama_pelanggan`,`total`,`tanggal_beli`) values 
('TR0001','adi',269070,'2025-07-17 00:50:05'),
('TR0002','adi',4500000,'2025-07-17 01:05:40'),
('TR0003','p.Mamay',4500000,'2025-07-17 13:09:07'),
('TR0004','p.Mamay',2200000,'2025-07-17 14:12:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
