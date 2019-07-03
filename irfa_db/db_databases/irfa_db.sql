-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 05:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irfa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `at_admin`
--

CREATE TABLE `at_admin` (
  `id_admin` char(20) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_admin`
--

INSERT INTO `at_admin` (`id_admin`, `username`, `password`) VALUES
('A001', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('A002', 'kobe', '2357e8fb9945f0a2039a7093422a3dee');

-- --------------------------------------------------------

--
-- Table structure for table `at_uset`
--

CREATE TABLE `at_uset` (
  `id_user` char(20) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `saldo` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `at_uset`
--

INSERT INTO `at_uset` (`id_user`, `username`, `password`, `saldo`) VALUES
('U001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 165562),
('U002', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 100275),
('U004', 'irfa', 'dc3b6e139835d14f19ff8f13cb613a1f', 291900),
('U005', 'kotakku', 'aa771d336c543e95c949af0b6b433388', 0);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(20) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  `code` varchar(35) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` int(25) NOT NULL,
  `harga_jual` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kategori`, `code`, `nama`, `harga`, `harga_jual`) VALUES
('B0001', 'Telkomsel', 'TSEL1', 'Telkomsel 1', 1860, 3360),
('B0002', 'Telkomsel', 'TSEL2', 'Telkomsel 2', 2835, 4335),
('B0003', 'Telkomsel', 'TSEL3', 'Telkomsel 3', 3900, 5400),
('B0004', 'Telkomsel', 'TSEL4', 'Telkomsel 4', 4875, 6375),
('B0005', 'Telkomsel', 'TSEL5', 'Telkomsel 5', 5325, 6825),
('B0006', 'Telkomsel', 'TSELPR10', 'Telkomsel 10 PROMO', 10050, 11550),
('B0007', 'Telkomsel', 'TSEL10', 'Telkomsel 10', 10200, 11700),
('B0008', 'Telkomsel', 'TSEL20', 'Telkomsel 20', 19950, 21450),
('B0009', 'Telkomsel', 'TSEL25', 'Telkomsel 25', 24725, 26225),
('B0010', 'Telkomsel', 'TSEL30', 'Telkomsel 30', 29625, 31125),
('B0011', 'Telkomsel', 'TSEL40', 'Telkomsel 40', 39425, 40925),
('B0012', 'Telkomsel', 'TSEL50', 'Telkomsel 50', 49150, 50650),
('B0013', 'Telkomsel', 'TSEL60', 'Telkomsel 60', 59150, 60650),
('B0014', 'Telkomsel', 'TSEL70', 'Telkomsel 70', 68980, 70480),
('B0015', 'Telkomsel', 'TSEL80', 'Telkomsel 80', 78825, 80325),
('B0016', 'Telkomsel', 'TSEL90', 'Telkomsel 90', 88660, 90160),
('B0017', 'Telkomsel', 'TSEL100', 'Telkomsel 100', 96825, 98325),
('B0018', 'Telkomsel', 'TSEL150', 'Telkomsel 150', 148125, 149625),
('B0019', 'Telkomsel', 'TSEL200', 'Telkomsel 200', 198725, 200225),
('B0020', 'Telkomsel', 'TSEL300', 'Telkomsel 300', 297575, 299075),
('B0021', 'Telkomsel', 'TSEL500', 'Telkomsel 500', 497075, 498575),
('B0022', 'Telkomsel', 'TSEL1000', 'Telkomsel 1000', 985025, 986525),
('B0023', 'Telkomsel SMS', 'TSMS1', 'Telkomsel SMS 1', 1525, 3025),
('B0024', 'Telkomsel SMS', 'TSMS5', 'Telkomsel SMS 5', 5125, 6625),
('B0025', 'Telkomsel Telepon', 'TPS5', 'Paket Telepon Telkomsel 5', 5725, 7225),
('B0026', 'Telkomsel Telepon', 'TPS10', 'Paket Telepon Telkomsel 10', 10525, 12025),
('B0027', 'Telkomsel Telepon', 'TPS20', 'Paket Telepon Telkomsel 20', 20175, 21675),
('B0028', 'Telkomsel Telepon', 'TPS25', 'Paket Telepon Telkomsel 25', 25225, 26725),
('B0029', 'Telkomsel Telepon', 'TPS50', 'Paket Telepon Telkomsel 50', 55075, 56575),
('B0030', 'Telkomsel Telepon', 'TPS100', 'Paket Telepon Telkomsel 100', 99375, 100875),
('B0031', 'Telkomsel Transfer', 'TPTSEL5', 'Telkomsel Transfer 5', 6550, 8050),
('B0032', 'Telkomsel Transfer', 'TPTSEL10', 'Telkomsel Transfer 10', 11250, 12750),
('B0033', 'Telkomsel Transfer', 'TPTSEL15', 'Telkomsel Transfer 15', 15950, 17450),
('B0034', 'Telkomsel Transfer', 'TPTSEL20', 'Telkomsel Transfer 20', 20800, 22300),
('B0035', 'Telkomsel Transfer', 'TPTSEL30', 'Telkomsel Transfer 30', 30200, 31700),
('B0036', 'Telkomsel Transfer', 'TPTSEL50', 'Telkomsel Transfer 50', 49090, 50590),
('B0037', 'Telkomsel Transfer', 'TPTSEL60', 'Telkomsel Transfer 60', 58445, 59945),
('B0038', 'Telkomsel Transfer', 'TPTSEL70', 'Telkomsel Transfer 70', 67855, 69355),
('B0039', 'Telkomsel Transfer', 'TPTSEL75', 'Telkomsel Transfer 75', 72685, 74185),
('B0040', 'Telkomsel Transfer', 'TPTSEL100', 'Telkomsel Transfer 100', 96090, 97590),
('B0041', 'Telkomsel Transfer', 'TPTSEL200', 'Telkomsel Transfer 200', 190100, 191600),
('B0042', 'Telkomsel Transfer', 'TPTSEL500', 'Telkomsel Transfer 500', 472300, 473800),
('B0043', 'Telkomsel Transfer', 'TPTSEL1000', 'Telkomsel Transfer 999', 951049, 952549),
('B0044', 'Telkomsel Data', 'TSD5', 'Telkomsel Data 5', 6025, 7525),
('B0045', 'Telkomsel Data', 'TSDPR10', 'Telkomsel Data 10 (Promo) ', 10100, 11600),
('B0046', 'Telkomsel Data', 'TSD10', 'Telkomsel Data 10', 10550, 12050),
('B0047', 'Telkomsel Data', 'TSDPR20', 'Telkomsel Data 20 (Promo) ', 20050, 21550),
('B0048', 'Telkomsel Data', 'TSD20', 'Telkomsel Data 20', 20275, 21775),
('B0049', 'Telkomsel Data', 'TSD25', 'Telkomsel Data 25', 25300, 26800),
('B0050', 'Telkomsel Data', 'TSDPR50', 'Telkomsel Data 50 (Promo)', 49000, 50500),
('B0051', 'Telkomsel Data', 'TSD50', 'Telkomsel Data 50', 49400, 50900),
('B0052', 'Telkomsel Data', 'TSDPR100', 'Telkomsel Data 100 (Promo)', 97000, 98500),
('B0053', 'Telkomsel Data', 'TSD100', 'Telkomsel Data 100', 97485, 98985),
('B0054', 'Telkomsel Data', 'TSD150', 'Telkomsel Data 150', 148700, 150200),
('B0055', 'Telkomsel Data', 'TSDPR200', 'Telkomsel Data 200 (Promo)', 196000, 197500),
('B0056', 'Telkomsel Data', 'TSD200', 'Telkomsel Data 200', 201500, 203000),
('B0057', 'Telkomsel Data', 'TSD300', 'Telkomsel Data 300', 297550, 299050),
('B0058', 'Telkomsel Data Bulk', 'TSDB1', 'Telkomsel Data Bulk All Zona 1GB', 39025, 40525),
('B0059', 'Telkomsel Data Bulk', 'TSDB2', 'Telkomsel Data Bulk All Zona 2GB', 80650, 82150),
('B0060', 'Telkomsel Data Bulk', 'TSDB8', 'Telkomsel Data Bulk All Zona 8GB', 98650, 100150),
('B0061', 'Telkomsel Data Bulk', 'TSDB12', 'Telkomsel Data Bulk All Zona 12GB', 109650, 111150),
('B0062', 'Telkomsel Data Bulk', 'TSDB10', 'Telkomsel Data Bulk All Zona 10GB', 132800, 134300),
('B0063', 'Telkomsel Data Bulk', 'TSDB25', 'Telkomsel Data Bulk All Zona 25GB', 177700, 179200),
('B0064', 'Telkomsel Data Bulk', 'TSDB35', 'Telkomsel Data Bulk All Zona 35GB', 184100, 185600),
('B0065', 'Telkomsel Data Bulk', 'TSDB23', 'Telkomsel Data Bulk All Zona 23GB', 222200, 223700),
('B0066', 'Telkomsel Data Flash', 'TDF100', 'Telkomsel Data Flash 100MB', 9800, 11300),
('B0067', 'Telkomsel Data Flash', 'TDF250', 'Telkomsel Data Flash 250MB', 10650, 12150),
('B0068', 'Telkomsel Data Flash', 'TDF500', 'Telkomsel Data Flash 500MB', 15250, 16750),
('B0069', 'Telkomsel Data Flash', 'TDF1', 'Telkomsel Data Flash 1GB', 20400, 21900),
('B0070', 'Telkomsel Data Flash', 'TDF2', 'Telkomsel Data Flash 2GB', 46500, 48000),
('B0071', 'Telkomsel Data Flash', 'TDF3', 'Telkomsel Data Flash 3GB', 60950, 62450),
('B0072', 'Telkomsel Data Flash', 'TDF4', 'Telkomsel Data Flash 4GB', 90550, 92050),
('B0073', 'Telkomsel Data Flash', 'TDF8', 'Telkomsel Data Flash 8GB', 162700, 164200),
('B0074', 'Telkomsel Data Mini', 'TSDM13', 'Telkomsel Data Mini 1GB 3Hr', 13050, 14550),
('B0075', 'Telkomsel Data Mini', 'TSDM23', 'Telkomsel Data Mini 2GB 3Hr', 16300, 17800),
('B0076', 'Telkomsel Data Mini', 'TSDM17', 'Telkomsel Data Mini 1GB 7Hr', 21300, 22800),
('B0077', 'Telkomsel Data Mini', 'TSDM53', 'Telkomsel Data Mini 5GB 3Hr', 29200, 30700),
('B0078', 'Telkomsel Data Mini', 'TSDM103', 'Telkomsel Data Mini 10GB 3Hr', 36700, 38200),
('B0079', 'Telkomsel Data Mini', 'TSDM27', 'Telkomsel Data Mini 2GB 7Hr', 36750, 38250),
('B0080', 'Telkomsel Data Mini', 'TSDM57', 'Telkomsel Data Mini 5GB 7Hr', 38400, 39900),
('B0081', 'Telkomsel Data Mini', 'TSDM37', 'Telkomsel Data Mini 3GB 7Hr', 41725, 43225),
('B0082', 'Telkomsel Data Mini', 'TSDM107', 'Telkomsel Data Mini 10GB 7Hr', 47500, 49000),
('B0083', 'Indosat', 'ISAT5', 'Indosat 5', 5975, 7475),
('B0084', 'Indosat', 'ISAT10', 'Indosat 10', 10975, 12475),
('B0085', 'Indosat', 'ISAT12', 'Indosat 12', 12125, 13625),
('B0086', 'Indosat', 'ISAT20', 'Indosat 20', 19975, 21475),
('B0087', 'Indosat', 'ISAT25', 'Indosat 25', 24600, 26100),
('B0088', 'Indosat', 'ISAT30', 'Indosat 30', 29625, 31125),
('B0089', 'Indosat', 'ISAT50', 'Indosat 50', 48925, 50425),
('B0090', 'Indosat', 'ISAT100', 'Indosat 100', 96900, 98400),
('B0091', 'Indosat', 'ISAT150', 'Indosat 150', 145025, 146525),
('B0092', 'Indosat', 'ISAT200', 'Indosat 200', 190025, 191525),
('B0093', 'Indosat', 'ISAT250', 'Indosat 250', 237025, 238525),
('B0094', 'Indosat', 'ISAT500', 'Indosat 500', 481075, 482575),
('B0095', 'Indosat', 'ISAT1000', 'Indosat 1000', 958025, 959525),
('B0096', 'Indosat SMS', 'ISMS5', 'Indosat SMS 5', 6285, 7785),
('B0097', 'Indosat SMS', 'ISMSB', 'Indosat SMS Bulanan', 10335, 11835),
('B0098', 'Indosat SMS', 'ISMS10', 'Indosat SMS 10', 11885, 13385),
('B0099', 'Indosat SMS', 'ISMS25', 'Indosat SMS 25', 28150, 29650),
('B0100', 'Indosat Telepon', 'INDTLP1', 'Paket Telepon Indosat 1', 4075, 5575),
('B0101', 'Indosat Telepon', 'INDTLP2', 'Paket Telepon Indosat 2', 14325, 15825),
('B0102', 'Indosat Telepon', 'INDTLP3', 'Paket Telepon Indosat 3', 25375, 26875),
('B0103', 'Indosat Telepon', 'INDTLP4', 'Paket Telepon Indosat 4', 25850, 27350),
('B0104', 'Indosat Telepon', 'INDTLP5', 'Paket Telepon Indosat 5', 50500, 52000),
('B0105', 'Indosat Transfer', 'TPI10', 'Indosat Transfer 10', 10650, 12150),
('B0106', 'Indosat Transfer', 'TPI20', 'Indosat Transfer 20', 19950, 21450),
('B0107', 'Indosat Transfer', 'TPI25', 'Indosat Transfer 25', 24350, 25850),
('B0108', 'Indosat Transfer', 'TPI50', 'Indosat Transfer 50', 47450, 48950),
('B0109', 'Indosat Transfer', 'TPI100', 'Indosat Transfer 100', 93775, 95275),
('B0110', 'Indosat Data', 'INFY3', 'Indosat Voucher Data Youtube 3hr', 6910, 8410),
('B0111', 'Indosat Data', 'INFY7', 'Indosat Voucher Data Youtube 7hr', 14300, 15800),
('B0112', 'Indosat Data', 'IDM1', 'Indosat Mini 1GB', 16700, 18200),
('B0113', 'Indosat Data', 'IDM2', 'Indosat Mini 2GB', 33450, 34950),
('B0114', 'Indosat Extra Kuota', 'IEX2', 'Indosat Paket Extra 2GB', 38310, 39810),
('B0115', 'Indosat Extra Kuota', 'IEX4', 'Indosat Paket Extra 4GB', 54420, 55920),
('B0116', 'Indosat Extra Kuota', 'IEX6', 'Indosat Paket Extra 6GB', 72350, 73850),
('B0117', 'Indosat Freedom', 'ISFM', 'Indosat Freedom M', 56150, 57650),
('B0118', 'Indosat Freedom', 'ISFL', 'Indosat Freedom L', 84800, 86300),
('B0119', 'Indosat Freedom', 'ISFXL', 'Indosat Freedom XL', 115650, 117150),
('B0120', 'Indosat Freedom', 'ISF2XL', 'Indosat Freedom XXL', 149900, 151400),
('B0121', 'Indosat Unlimited', 'IDU500', 'Indosat Unlimited + 500MB 3Hr', 6150, 7650),
('B0122', 'Indosat Unlimited', 'IDU17', 'Indosat Unlimited + 1GB 7Hr', 12150, 13650),
('B0123', 'Indosat Unlimited', 'IDU1', 'Indosat Unlimited + 1GB', 22400, 23900),
('B0124', 'Indosat Unlimited', 'IDU2', 'Indosat Unlimited + 2GB', 32900, 34400),
('B0125', 'Indosat Unlimited', 'IDU3', 'Indosat Unlimited + 3GB', 51285, 52785),
('B0126', 'Indosat Unlimited', 'IDU4', 'Indosat Unlimited + 4GB', 55300, 56800),
('B0127', 'Indosat Unlimited', 'IDU7', 'Indosat Unlimited + 7GB', 65400, 66900),
('B0128', 'Indosat Unlimited', 'IDU10', 'Indosat Unlimited + 10GB', 89575, 91075),
('B0129', 'Indosat Unlimited', 'IDU15', 'Indosat Unlimited + 15GB', 115150, 116650),
('B0130', 'Indosat Unlimited', 'IDU99', 'Indosat Unlimited + Jumbo', 153250, 154750),
('B0131', 'Indosat Yellow', 'IDYEL1', 'Indosat Yellow 1GB 1Hr', 2700, 4200),
('B0132', 'Indosat Yellow', 'IDYEL3', 'Indosat Yellow 1GB 3Hr', 3950, 5450),
('B0133', 'Indosat Yellow', 'IDYEL7', 'Indosat Yellow 1GB 7Hr', 9050, 10550),
('B0134', 'Indosat Yellow', 'IDYEL15', 'Indosat Yellow 1GB 15Hr', 12350, 13850),
('B0135', 'XL', 'XL5', 'XL 5', 5590, 7090),
('B0136', 'XL', 'XL10', 'XL 10', 10710, 12210),
('B0137', 'XL', 'XL15', 'XL 15', 14950, 16450),
('B0138', 'XL', 'XL25', 'XL 25', 24750, 26250),
('B0139', 'XL', 'XL30', 'XL 30', 29765, 31265),
('B0140', 'XL', 'XL50', 'XL 50', 49300, 50800),
('B0141', 'XL', 'XL100', 'XL 100', 98350, 99850),
('B0142', 'XL', 'XL150', 'XL 150', 148825, 150325),
('B0143', 'XL', 'XL200', 'XL 200', 197625, 199125),
('B0144', 'XL', 'XL300', 'XL 300', 297775, 299275),
('B0145', 'XL', 'XL500', 'XL 500', 498075, 499575),
('B0146', 'XL', 'XL1000', 'XL 1000', 994075, 995575),
('B0147', 'XL Roaming', 'XLTLPLN20', 'XL Telepon Luar Negeri 20', 8100, 9600),
('B0148', 'XL Roaming', 'XLTLPLN80', 'XL Telepon Luar Negeri 80', 22375, 23875),
('B0149', 'XL Roaming', 'XLTHU10', 'XL Umroh & Haji (TLP SMS) 10H', 143475, 144975),
('B0150', 'XL Roaming', 'XLTHU20', 'XL Umroh & Haji (TLP SMS) 20H', 172575, 174075),
('B0151', 'XL Roaming', 'XLTHU40', 'XL Umroh & Haji (TLP SMS) 40H', 192240, 193740),
('B0152', 'XL Roaming', 'XLIHU10', 'XL Umroh & Haji (DATA) 10H', 192240, 193740),
('B0153', 'XL Roaming', 'XLIHU20', 'XL Umroh & Haji (DATA) 20H', 240025, 241525),
('B0154', 'XL Roaming', 'XLCHU10', 'XL Umroh & Haji (KOMPLIT) 10H', 285725, 287225),
('B0155', 'XL Roaming', 'XLIHU40', 'XL Umroh & Haji (DATA) 40H', 365675, 367175),
('B0156', 'XL Roaming', 'XLCHU20', 'XL Umroh & Haji (KOMPLIT) 20H', 380390, 381890),
('B0157', 'XL Roaming', 'XLCHU40', 'XL Umroh & Haji (KOMPLIT) 40H', 524755, 526255),
('B0158', 'XL Telepon', 'XLTLP350', 'XL Paket Telepon 350 Menit 7 Hari', 13000, 14500),
('B0159', 'XL Telepon', 'XLTLP370', 'XL Paket Telepon 370 Menit 7 hari', 13025, 14525),
('B0160', 'XL Telepon', 'XLTLP150', 'Paket Telepon XL 150 Menit', 38850, 40350),
('B0161', 'XL Telepon', 'XLTLP250', 'Paket Telepon XL 250 Menit', 57625, 59125),
('B0162', 'XL Telepon', 'XLTLP325', 'Paket Telepon XL 325 Menit', 67900, 69400),
('B0163', 'XL Telepon', 'XLTLP300', 'Paket Telepon XL 300 Menit', 93450, 94950),
('B0164', 'XL Telepon', 'XLTLP530', 'Paket Telepon XL 500 Menit 30 Hari', 135000, 136500),
('B0165', 'XL Telepon', 'XLTLP590', 'Paket Telepon XL 500 Menit 90 Hari', 142550, 144050),
('B0166', 'XL Transfer', 'TPXL5', 'XL Transfer 5', 5925, 7425),
('B0167', 'XL Transfer', 'TPXL20', 'XL Transfer 20', 20450, 21950),
('B0168', 'XL Transfer', 'TPXL30', 'XL Transfer 30', 30175, 31675),
('B0169', 'XL Transfer', 'TPXL60', 'XL Transfer 60', 59875, 61375),
('B0170', 'XL Transfer', 'TPXL100', 'XL Transfer 100', 98450, 99950),
('B0171', 'XL Transfer', 'TPXL200', 'XL Transfer 200', 196500, 198000),
('B0172', 'XL Combo Xtra', 'XLCM', 'XL XTRA COMBO 5+5GB', 53700, 55200),
('B0173', 'XL Combo Xtra', 'XLCL', 'XL XTRA COMBO 10+10GB', 80800, 82300),
('B0174', 'XL Combo Xtra', 'XLCXL', 'XL XTRA COMBO 15+15GB', 116575, 118075),
('B0175', 'XL Combo Xtra', 'XLC2XL', 'XL XTRA COMBO 20+20GB', 160975, 162475),
('B0176', 'XL Combo Xtra', 'XLC3XL', 'XL XTRA COMBO 35+35GB', 211900, 213400),
('B0177', 'XL Data MIFI', 'XLMI10', 'XL Data GO IZI 10GB', 50700, 52200),
('B0178', 'XL Data MIFI', 'XLMI20', 'XL Data GO IZI 20GB', 99700, 101200),
('B0179', 'XL Data MIFI', 'XLMI30', 'XL Data GO IZI 30GB', 148950, 150450),
('B0180', 'XL Data MIFI', 'XLMI40', 'XL Data GO IZI 40GB', 197950, 199450),
('B0181', 'XL HotRod', 'XLHRM8', 'XL HotRod 800MB', 30500, 32000),
('B0182', 'XL HotRod', 'XLHRG15', 'XL HotRod 1.5GB', 47300, 48800),
('B0183', 'XL HotRod', 'XLHRG3', 'XL HotRod 3GB', 56050, 57550),
('B0184', 'XL HotRod', 'XLHRG6', 'XL HotRod 6GB', 92100, 93600),
('B0185', 'XL HotRod', 'XLHRG8', 'XL HotRod 8GB', 117600, 119100),
('B0186', 'XL HotRod', 'XLHRG12', 'XL HotRod 12GB', 165100, 166600),
('B0187', 'XL HotRod', 'XLHRG16', 'XL HotRod 16GB', 194100, 195600),
('B0188', 'Three', 'TRI1', 'Three 1', 1238, 2738),
('B0189', 'Three', 'TRI2', 'Three 2', 2312, 3812),
('B0190', 'Three', 'TRI3', 'Three 3', 3294, 4794),
('B0191', 'Three', 'TRI4', 'Three 4', 4339, 5839),
('B0192', 'Three', 'TRI5', 'Three 5', 5420, 6920),
('B0193', 'Three', 'TRI10', 'Three 10', 10325, 11825),
('B0194', 'Three', 'TRI15', 'Three 15', 14935, 16435),
('B0195', 'Three', 'TRI20', 'Three 20', 19575, 21075),
('B0196', 'Three', 'TRI25', 'Three 25', 24675, 26175),
('B0197', 'Three', 'TRI30', 'Three 30', 29235, 30735),
('B0198', 'Three', 'TRI40', 'Three 40', 39425, 40925),
('B0199', 'Three', 'TRI50', 'Three 50', 49025, 50525),
('B0200', 'Three', 'TRI75', 'Three 75', 73097, 74597),
('B0201', 'Three', 'TRI100', 'Three 100', 98225, 99725),
('B0202', 'Three', 'TRI300', 'Three 300', 299050, 300550),
('B0203', 'Three', 'TRI500', 'Three 500', 499050, 500550),
('B0204', 'Three Telepon', 'TRITLP5', 'Paket Telepon Three 5', 5725, 7225),
('B0205', 'Three Telepon', 'TRITLP15', 'Paket Telepon Three 15', 15825, 17325),
('B0206', 'Three Telepon', 'TRITLP30', 'Paket Telepon Three 30', 30525, 32025),
('B0207', 'Three Transfer', 'TPT5', 'Three Transfer 5', 5350, 6850),
('B0208', 'Three Transfer', 'TPT10', 'Three Transfer 10', 10075, 11575),
('B0209', 'Three Transfer', 'TPT20', 'Three Transfer 20', 19550, 21050),
('B0210', 'Three Transfer', 'TPT25', 'Three Transfer 25', 24450, 25950),
('B0211', 'Three Transfer', 'TPT30', 'Three Transfer 30', 28950, 30450),
('B0212', 'Three Transfer', 'TPT50', 'Three Transfer 50', 47900, 49400),
('B0213', 'Three Transfer', 'TPT100', 'Three Transfer 100', 96100, 97600),
('B0214', 'Three AON', 'AON2', 'Three AON 1GB', 21800, 23300),
('B0215', 'Three AON', 'AON6', 'Three AON 2GB', 34260, 35760),
('B0216', 'Three AON', 'AON9', 'Three AON 3GB', 48810, 50310),
('B0217', 'Three AON', 'AON22', 'Three AON 4GB', 58020, 59520),
('B0218', 'Three AON', 'AON25', 'Three AON 5GB', 71410, 72910),
('B0219', 'Three AON', 'AON38', 'Three AON 6GB', 78510, 80010),
('B0220', 'Three AON', 'AON44', 'Three AON 8GB', 104840, 106340),
('B0221', 'Three AON', 'AON50', 'Three AON 10GB', 124960, 126460),
('B0222', 'Three Cinta', 'TCT50', 'Three Cinta 50GB', 72925, 74425),
('B0223', 'Three Cinta', 'TCT70', 'Three Cinta 70GB', 99150, 100650),
('B0224', 'Three Data', 'TDBM1', 'Three Data Broadband Mini 1.5GB', 14500, 16000),
('B0225', 'Three Data', 'TDG1', 'Three Data 1GB', 21100, 22600),
('B0226', 'Three Data', 'TDBM3', 'Three Data Broadband Mini 3GB', 24750, 26250),
('B0227', 'Three Data', 'TDG2', 'Three Data 2GB', 33100, 34600),
('B0228', 'Three Data', 'TDN500', 'Three Data Netmax 500MB', 40900, 42400),
('B0229', 'Three Data', 'TDG3', 'Three Data 3GB', 47400, 48900),
('B0230', 'Three Data', 'TDG4', 'Three Data 4GB', 56900, 58400),
('B0231', 'Three Data', 'TDG5', 'Three Data 5GB', 68400, 69900),
('B0232', 'Three Data', 'TDN1', 'Three Data Netmax 2GB', 71050, 72550),
('B0233', 'Three Data', 'TDG6', 'Three Data 6GB', 75000, 76500),
('B0234', 'Three Data', 'TDG8', 'Three Data 8GB', 99550, 101050),
('B0235', 'Three Data', 'TDG10', 'Three Data 10GB', 119400, 120900),
('B0236', 'Three Extra Kuota', 'TDM8', 'Three Kuota++ 80MB', 5450, 6950),
('B0237', 'Three Extra Kuota', 'TDM3', 'Three Kuota++ 300MB', 10275, 11775),
('B0238', 'Three Extra Kuota', 'TDM65', 'Three Kuota++ 650MB', 20300, 21800),
('B0239', 'Three Extra Kuota', 'TDG125', 'Three Kuota++ 1.25GB', 32850, 34350),
('B0240', 'Three Extra Kuota', 'TDG425', 'Three Kuota++ 4.25GB', 82350, 83850),
('B0241', 'Three Get More', 'TGM6', 'Three Get More 2', 32100, 33600),
('B0242', 'Three Get More', 'TGM9', 'Three Get More 3', 37600, 39100),
('B0243', 'Three Get More', 'TGM25', 'Three Get More 5', 55800, 57300),
('B0244', 'Axis', 'AX5', 'Axis 5', 5575, 7075),
('B0245', 'Axis', 'AX10', 'Axis 10', 10845, 12345),
('B0246', 'Axis', 'AX15', 'Axis 15', 14975, 16475),
('B0247', 'Axis', 'AX25', 'Axis 25', 25070, 26570),
('B0248', 'Axis', 'AX30', 'Axis 30', 29765, 31265),
('B0249', 'Axis', 'AX50', 'Axis 50', 49275, 50775),
('B0250', 'Axis', 'AX100', 'Axis 100', 98325, 99825),
('B0251', 'Axis', 'AX200', 'Axis 200', 198475, 199975),
('B0252', 'Axis', 'AX300', 'Axis 300', 297575, 299075),
('B0253', 'Axis', 'AX500', 'Axis 500', 492625, 494125),
('B0254', 'Axis', 'AX1000', 'Axis 1000', 997400, 998900),
('B0255', 'Axis Transfer', 'TPA5', 'Axis Transfer 5', 5925, 7425),
('B0256', 'Axis Transfer', 'TPA10', 'Axis Transfer 10', 10786, 12286),
('B0257', 'Axis Transfer', 'TPA15', 'Axis Transfer 15', 15650, 17150),
('B0258', 'Axis Transfer', 'TPA20', 'Axis Transfer 20', 20450, 21950),
('B0259', 'Axis Transfer', 'TPA25', 'Axis Transfer 25', 25250, 26750),
('B0260', 'Axis Transfer', 'TPA30', 'Axis Transfer 30', 30175, 31675),
('B0261', 'Axis Transfer', 'TPA15', 'Axis Transfer 50', 50100, 51600),
('B0262', 'Axis Transfer', 'TPA60', 'Axis Transfer 60', 59850, 61350),
('B0263', 'Axis Transfer', 'TPA100', 'Axis Transfer 100', 98450, 99950),
('B0264', 'Axis Transfer', 'TPA200', 'Axis Transfer 200', 196500, 198000),
('B0265', 'Axis Transfer', 'TPA500', 'Axis Transfer 500', 489600, 491100),
('B0266', 'Axis Transfer', 'TPA1000', 'Axis Transfer 1000', 961100, 962600),
('B0267', 'Axis Bronet', 'AXT300', 'Axis Bronet 24H 300MB', 10350, 11850),
('B0268', 'Axis Bronet', 'AXB1', 'Axis Bronet 24H 1GB', 18000, 19500),
('B0269', 'Axis Bronet', 'AXB2', 'Axis Bronet 24H 2GB', 26400, 27900),
('B0270', 'Axis Bronet', 'AXB3', 'Axis Bronet 24H 3GB', 35250, 36750),
('B0271', 'Axis Bronet', 'AXB5', 'Axis Bronet 24H 5GB', 53375, 54875),
('B0272', 'Axis Bronet', 'AXB8', 'Axis Bronet 24H 8GB', 74275, 75775),
('B0273', 'Axis Bronet Owsem', 'AXBOW2', 'Axis Bronet Owsem 2GB', 20600, 22100),
('B0274', 'Axis Bronet Owsem', 'AXBOW4', 'Axis Bronet Owsem 4GB', 32600, 34100),
('B0275', 'Axis Bronet Owsem', 'AXBOW8', 'Axis Bronet Owsem 8GB', 52200, 53700),
('B0276', 'Axis Bronet Owsem', 'AXBOW12', 'Axis Bronet Owsem 12GB', 70850, 72350),
('B0277', 'Axis Internet KZL', 'AXKZL2', 'Axis KZL 2', 15750, 17250),
('B0278', 'Axis Internet KZL', 'AXKZL1', 'Axis KZL 1', 15750, 17250),
('B0279', 'Axis Internet KZL', 'AXKZL3', 'Axis KZL 3', 15750, 17250),
('B0280', 'Axis Internet KZL', 'AXKZL4', 'Axis KZL 4', 20750, 22250),
('B0281', 'Axis Voucher', 'AIGO1', 'Axis Voucher 1GB', 14000, 15500),
('B0282', 'Axis Voucher', 'AIGO2', 'Axis Voucher 2GB', 23880, 25380),
('B0283', 'Axis Voucher', 'AIGO4', 'Axis Voucher 2+2GB', 27950, 29450),
('B0284', 'Axis Voucher', 'AIGO3', 'Axis Voucher 3GB', 30920, 32420),
('B0285', 'Axis Voucher', 'AIGO5', 'Axis Voucher 5GB', 44650, 46150),
('B0286', 'Axis Voucher', 'AIGO10', 'Axis Voucher 5+5GB', 50150, 51650),
('B0287', 'Axis Voucher', 'AIGO16', 'Axis Voucher 8+8GB', 57200, 58700),
('B0288', 'Axis Voucher', 'AIGO8', 'Axis Voucher 8GB', 61670, 63170),
('B0289', 'Axis Voucher AIGO', 'AVAM1', 'Axis Voucher AIGO Mini 1GB', 9900, 11400),
('B0290', 'Axis Voucher AIGO', 'AVAM2', 'Axis Voucher AIGO Mini 2GB', 17050, 18550),
('B0291', 'Axis Voucher AIGO', 'OWAIGO2', 'Axis Voucher AIGO Owsem 2GB', 19600, 21100),
('B0292', 'Axis Voucher AIGO', 'AVAM3', 'Axis Voucher AIGO Mini 3GB', 21950, 23450),
('B0293', 'Axis Voucher AIGO', 'OWAIGO4', 'Axis Voucher AIGO Owsem 4GB', 31600, 33100),
('B0294', 'Axis Voucher AIGO', 'AVAM4', 'Axis Voucher AIGO Mini 5GB', 33250, 34750),
('B0295', 'Axis Voucher AIGO', 'OWAIGO8', 'Axis Voucher AIGO Owsem 8GB', 48600, 50100),
('B0296', 'Axis Voucher AIGO', 'OWAIGO12', 'Axis Voucher AIGO Owsem 12GB', 63600, 65100),
('B0297', 'SmartFren', 'SF5', 'SmartFren 5', 5115, 6615),
('B0298', 'SmartFren', 'SF10', 'SmartFren 10', 10175, 11675),
('B0299', 'SmartFren', 'SF20', 'SmartFren 20', 19975, 21475),
('B0300', 'SmartFren', 'SF25', 'SmartFren 25', 24775, 26275),
('B0301', 'SmartFren', 'SF30', 'SmartFren 30', 29675, 31175),
('B0302', 'SmartFren', 'SF50', 'SmartFren 50', 49675, 51175),
('B0303', 'SmartFren', 'SF60', 'SmartFren 60', 58775, 60275),
('B0304', 'SmartFren', 'SF75', 'SmartFren 75', 74525, 76025),
('B0305', 'SmartFren', 'SF100', 'SmartFren 100', 97250, 98750),
('B0306', 'SmartFren', 'SF150', 'SmartFren 150', 148950, 150450),
('B0307', 'SmartFren', 'SF200', 'SmartFren 200', 197800, 199300),
('B0308', 'SmartFren', 'SF300', 'SmartFren 300', 298025, 299525),
('B0309', 'SmartFren', 'SF500', 'SmartFren 500', 491025, 492525),
('B0310', 'SmartFren Data', 'SFMI10', 'Smartfren Data MIFI 10', 10700, 12200),
('B0311', 'SmartFren Data', 'SFMI20', 'Smartfren Data MIFI 20', 20700, 22200),
('B0312', 'SmartFren Data', 'SMD300', 'SmartFren Data 300MB', 21250, 22750),
('B0313', 'SmartFren Data', 'SFV30', 'Smartfren Volume Based 8GB', 27860, 29360),
('B0314', 'SmartFren Data', 'SFMI30', 'Smartfren Data MIFI 30', 30700, 32200),
('B0315', 'SmartFren Data', 'SMD600', 'SmartFren Data 600MB', 31100, 32600),
('B0316', 'SmartFren Data', 'SMD1', 'SmartFren Data 1GB', 50200, 51700),
('B0317', 'SmartFren Data', 'SFV60', 'Smartfren Volume Based 16GB', 53650, 55150),
('B0318', 'SmartFren Data', 'SMD2', 'SmartFren Data 2GB', 55600, 57100),
('B0319', 'SmartFren Data', 'SFMI60', 'Smartfren Data MIFI 60', 59700, 61200),
('B0320', 'SmartFren Data', 'SMD3', 'SmartFren Data 3GB', 71600, 73100),
('B0321', 'SmartFren Data', 'SMD5', 'SmartFren Data 5GB', 88900, 90400),
('B0322', 'SmartFren Data', 'SFMI100', 'Smartfren Data MIFI 100', 98700, 100200),
('B0323', 'SmartFren Data', 'SFV100', 'Smartfren Volume Based 30GB', 100310, 101810),
('B0324', 'SmartFren Data', 'SMD9', 'SmartFren Data 9GB', 136200, 137700),
('B0325', 'SmartFren Data', 'SFMI150', 'Smartfren Data MIFI 150', 143200, 144700),
('B0326', 'SmartFren Data', 'SFV150', 'Smartfren Volume Based 45GB', 150010, 151510),
('B0327', 'SmartFren Data', 'SFMI200', 'Smartfren Data MIFI 200', 198800, 200300),
('B0328', 'SmartFren Data', 'SMD14', 'SmartFren Data 14GB', 199600, 201100),
('B0329', 'SmartFren Data', 'SFV300', 'Smartfren Volume Based 60GB', 200450, 201950),
('B0330', 'PLN Token', 'PLN20', 'PLN Token 20', 20375, 21875),
('B0331', 'PLN Token', 'PLN50', 'PLN Token 50', 50232, 51732),
('B0332', 'PLN Token', 'PLN100', 'PLN Token 100', 100375, 101875),
('B0333', 'PLN Token', 'PLN200', 'PLN Token 200', 200375, 201875),
('B0334', 'PLN Token', 'PLN500', 'PLN Token 500', 500232, 501732),
('B0335', 'PLN Token', 'PLN1000', 'PLN Token 1000', 1000375, 1001875),
('B0336', 'Game Digicash', 'DCASH10', 'Digicash 10', 10450, 11950),
('B0337', 'Game Digicash', 'DCASH20', 'Digicash 20', 19650, 21150),
('B0338', 'Game Digicash', 'DCASH50', 'Digicash 50', 47450, 48950),
('B0339', 'Game Digicash', 'DCASH100', 'Digicash 100', 93650, 95150),
('B0340', 'Game Digicash', 'DCASH250', 'Digicash 250', 225350, 226850),
('B0341', 'Game Faveo', 'FAVEO10', 'Faveo 10', 10150, 11650),
('B0342', 'Game Faveo', 'FAVEO20', 'Faveo 20', 19150, 20650),
('B0343', 'Game Faveo', 'FAVEO50', 'Faveo 50', 46150, 47650),
('B0344', 'Game Faveo', 'FAVEO100', 'Faveo 100', 91150, 92650),
('B0345', 'Game Faveo', 'FAVE250', 'Faveo 250', 225600, 227100),
('B0346', 'Game Faveo', 'FAVE500', 'Faveo 500', 452100, 453600),
('B0347', 'Game Faveo', 'FAVE1000', 'Faveo 1000', 904100, 905600),
('B0348', 'Game GArena', 'GARENA10', 'GArena 10', 10150, 11650),
('B0349', 'Game GArena', 'GARENA20', 'GArena 20', 20100, 21600),
('B0350', 'Game GArena', 'GARENA50', 'GArena 50', 47150, 48650),
('B0351', 'Game GArena', 'GARENA100', 'GArena 100', 93150, 94650),
('B0352', 'Game Gemscool', 'GCOOL10', 'Gemscool 10', 9750, 11250),
('B0353', 'Game Gemscool', 'GCOOL20', 'Gemscool 20', 20050, 21550),
('B0354', 'Game Gemscool', 'GCOOL30', 'Gemscool 30', 29250, 30750),
('B0355', 'Game Gemscool', 'GCOOL50', 'Gemscool 50', 48150, 49650),
('B0356', 'Game Gemscool', 'GCOOL100', 'Gemscool 100', 95150, 96650),
('B0357', 'Game Gemscool', 'GCOOL200', 'Gemscool 200', 188600, 190100),
('B0358', 'Game Gemscool', 'GCOOL300', 'Gemscool 300', 282600, 284100),
('B0359', 'Game Lyto', 'LYTO10', 'Lyto Koin 2.5K', 10050, 11550),
('B0360', 'Game Lyto', 'LYTO20', 'Lyto Koin 5.5K', 19750, 21250),
('B0361', 'Game Lyto', 'LYTO35', 'Lyto Koin 10K', 34350, 35850),
('B0362', 'Game Lyto', 'LYTO65', 'Lyto Koin 20K', 63500, 65000),
('B0363', 'Game Lyto', 'LYTO175', 'Lyto Koin 57K', 170200, 171700),
('B0364', 'Game Lyto', 'LYTO500', 'Lyto Koin 163K', 485400, 486900),
('B0365', 'Game Megaxus', 'MGX10', 'Megaxus 10', 11200, 12700),
('B0366', 'Game Megaxus', 'MGX20', 'Megaxus 20', 22100, 23600),
('B0367', 'Game Megaxus', 'MGX50', 'Megaxus 50', 54600, 56100),
('B0368', 'Game Megaxus', 'MGX100', 'Megaxus 100', 108600, 110100),
('B0369', 'Game Megaxus', 'MGX200', 'Megaxus 200', 216300, 217800),
('B0370', 'Game Megaxus', 'MGX500', 'Megaxus 500', 541600, 543100),
('B0371', 'Game Mobile Legends', 'MBL17', 'Mobile Legends 17 Diamond', 5100, 6600),
('B0372', 'Game Mobile Legends', 'MBL19', 'Mobile Legends 19 Diamond', 5250, 6750),
('B0373', 'Game Mobile Legends', 'MBL33', 'Mobile Legends 33 Diamond', 10300, 11800),
('B0374', 'Game Mobile Legends', 'MBL36', 'Mobile Legends 36 Diamond', 11350, 12850),
('B0375', 'Game Mobile Legends', 'MBL50', 'Mobile Legends 50 Diamond', 13850, 15350),
('B0376', 'Game Mobile Legends', 'MBL66', 'Mobile Legends 66 Diamond', 19100, 20600),
('B0377', 'Game Mobile Legends', 'MBL74', 'Mobile Legends 74 Diamond', 20250, 21750),
('B0378', 'Game Mobile Legends', 'MBL83', 'Mobile Legends 83 Diamond', 22800, 24300),
('B0379', 'Game Mobile Legends', 'MBL110', 'Mobile Legends 110 Diamond', 29950, 31450),
('B0380', 'Game Mobile Legends', 'MBL184', 'Mobile Legends 184 Diamond', 49000, 50500),
('B0381', 'Game Mobile Legends', 'MBL220', 'Mobile Legends 220 Diamond', 60100, 61600),
('B0382', 'Game Mobile Legends', 'MBL275', 'Mobile Legends 275 Diamond', 75100, 76600),
('B0383', 'Game Mobile Legends', 'MBL366', 'Mobile Legends 366 Diamond', 105850, 107350),
('B0384', 'Game Mobile Legends', 'MBLS4', 'Mobile Legends Starlight + 4 Diamond', 146600, 148100),
('B0385', 'Game Mobile Legends', 'MBLS193', 'Mobile Legends Starlight + 193 Diamond', 193050, 194550),
('B0386', 'Game Mobile Legends', 'MBL758', 'Mobile Legends 758 Diamond', 194008, 195508),
('B0387', 'Game Mobile Legends', 'MBL966', 'Mobile Legends 966 Diamond', 247100, 248600),
('B0388', 'Game Mobile Legends', 'MBL1159', 'Mobile Legends 1159 Diamond', 290250, 291750),
('B0389', 'Game Mobile Legends', 'MBLS586', 'Mobile Legends Starlight + 586 Diamond', 292350, 293850),
('B0390', 'Game Mobile Legends', 'MBLS448', 'Mobile Legends Seasonal Starlight 93Hr + 448 D	', 473350, 474850),
('B0391', 'Game Mobile Legends', 'MBLS1411', 'Mobile Legends Starlight + 1411 Diamond', 484350, 485850),
('B0392', 'Game Mobile Legends', 'MBL2010', 'Mobile Legends 2010 Diamond', 484750, 486250),
('B0393', 'Game Mobile Legends', 'MBLS3426', 'Mobile Legends Starlight + 3426 Diamond', 970150, 971650),
('B0394', 'Game Mobile Legends', 'MBL4026', 'Mobile Legends 4026 Diamond', 970150, 971650),
('B0395', 'Game Mobile Legends', 'MBLS5408', 'Mobile Legends Starlight + 5408 Diamond', 1430100, 1431600),
('B0396', 'Game Netmarble', 'NETMAR10', 'Netmarble 10', 10350, 11850),
('B0397', 'Game Netmarble', 'NETMAR20', 'Netmarble 20', 19650, 21150),
('B0398', 'Game Netmarble', 'NETMAR50', 'Netmarble 50', 47150, 48650),
('B0399', 'Game Netmarble', 'NETMAR100', 'Netmarble 100', 92650, 94150),
('B0400', 'Game OLEH4U', 'O4U10', 'OLEH4U 10', 10150, 11650),
('B0401', 'Game OLEH4U', 'O4U20', 'OLEH4U 20', 19650, 21150),
('B0402', 'Game OLEH4U', 'O4U50', 'OLEH4U 50', 46150, 47650),
('B0403', 'Game OLEH4U', 'O4U100', 'OLEH4U 100', 91150, 92650),
('B0404', 'Game Orange Game', 'OGAME10', 'Orange Game 10', 10350, 11850),
('B0405', 'Game Orange Game', 'OGAME30', 'Orange Game 30', 28750, 30250),
('B0406', 'Game Orange Game', 'OGAME50', 'Orange Game 50', 47150, 48650),
('B0407', 'Game Orange Game', 'OGAME100', 'Orange Game 100', 93150, 94650),
('B0408', 'Game PUBG', 'PUBGM35', 'PUBG Mobile 35 UC', 7500, 9000),
('B0409', 'Game PUBG', 'PUBGM50', 'PUBG Mobile 50 UC', 12300, 13800),
('B0410', 'Game PUBG', 'PUBGM70', 'PUBG Mobile 70 UC', 14150, 15650),
('B0411', 'Game PUBG', 'PUBGM150', 'PUBG Mobile 150 UC', 30300, 31800),
('B0412', 'Game PUBG', 'PUBGM210', 'PUBG Mobile 210 UC', 40850, 42350),
('B0413', 'Game PUBG', 'PUBGM250', 'PUBG Mobile 250 UC', 52300, 53800),
('B0414', 'Game PUBG', 'PUBGM500', 'PUBG Mobile 500 UC', 102300, 103800),
('B0415', 'Game PUBG', 'PUBGM1250', 'PUBG Mobile 1250 UC', 252300, 253800),
('B0416', 'Game PUBG', 'PUBGM1750', 'PUBG Mobile 1750 UC', 332850, 334350),
('B0417', 'Game PUBG', 'PUBGM2500', 'PUBG Mobile 2500 UC', 502300, 503800),
('B0418', 'Game PUBG', 'PUBGM3500', 'PUBG Mobile 3500 UC', 664975, 666475),
('B0419', 'Game PUBG', 'PUBGM5000', 'PUBG Mobile 5000 UC', 1002298, 1003798),
('B0420', 'Game Qeon', 'QEON10', 'Qeon 10', 10450, 11950),
('B0421', 'Game Qeon', 'QEON30', 'Qeon 30', 28350, 29850),
('B0422', 'Game Qeon', 'QEON50', 'Qeon 50', 46650, 48150),
('B0423', 'Game Qeon', 'QEON100', 'Qeon 100', 92150, 93650),
('B0424', 'Game Qeon', 'QEON300', 'Qeon 300', 272100, 273600),
('B0425', 'Game Qeon', 'QEON500', 'Qeon 500', 451600, 453100),
('B0426', 'Game Qeon', 'QEON1000', 'Qeon 1000', 902100, 903600),
('B0427', 'Game Steam Wallet', 'STM8', 'Steam Wallet Code IDR 8', 10550, 12050),
('B0428', 'Game Steam Wallet', 'STM12', 'Steam Wallet Code IDR 12', 15700, 17200),
('B0429', 'Game Steam Wallet', 'STM45', 'Steam Wallet Code IDR 45', 55425, 56925),
('B0430', 'Game Steam Wallet', 'STM60', 'Steam Wallet Code IDR 60', 72825, 74325),
('B0431', 'Game Steam Wallet', 'STM90', 'Steam Wallet Code IDR 90', 107775, 109275),
('B0432', 'Game Steam Wallet', 'STM120', 'Steam Wallet Code IDR 120', 143430, 144930),
('B0433', 'Game Steam Wallet', 'STM250', 'Steam Wallet Code IDR 250', 297430, 298930),
('B0434', 'Game Steam Wallet', 'STM400', 'Steam Wallet Code IDR 400', 475015, 476515),
('B0435', 'Game Steam Wallet', 'STM600', 'Steam Wallet Code IDR 600', 714560, 716060),
('B0436', 'Game VTC Online', 'VTC10', 'VTC Online 10', 10250, 11750),
('B0437', 'Game VTC Online', 'VTC20', 'VTC Online 20', 19350, 20850),
('B0438', 'Game VTC Online', 'VTC30', 'VTC Online 30', 28450, 29950),
('B0439', 'Game VTC Online', 'VTC50', 'VTC Online 50', 46650, 48150),
('B0440', 'Game VTC Online', 'VTC100', 'VTC Online 100', 92150, 93650),
('B0441', 'Game Zynga', 'ZYNGA20', 'Zynga 20', 31150, 32650),
('B0442', 'Game Zynga', 'ZYNGA50', 'Zynga 50', 71350, 72850),
('B0443', 'Game Zynga', 'ZYNGA100', 'Zynga 100', 136400, 137900),
('B0444', 'Kode Voucher Google Play', 'GP20', 'Kode Voucher Google Play 20 Ribu', 22000, 23500),
('B0445', 'Kode Voucher Google Play', 'GP50', 'Kode Voucher Google Play 50 Ribu', 55000, 56500),
('B0446', 'Kode Voucher Google Play', 'GP100', 'Kode Voucher Google Play 100 Ribu', 110000, 111500),
('B0447', 'Kode Voucher Google Play', 'GP150', 'Kode Voucher Google Play 150 Ribu', 165000, 166500),
('B0448', 'Kode Voucher Google Play', 'GP300', 'Kode Voucher Google Play 300 Ribu', 330000, 331500),
('B0449', 'Kode Voucher Google Play', 'GP500', 'Kode Voucher Google Play 500 Ribu', 550000, 551500),
('B0450', 'Transportasi e-Toll', 'ETOLL25', 'e-Toll Mandiri 25', 26400, 27900),
('B0451', 'Transportasi e-Toll', 'ETOLL50', 'e-Toll Mandiri 50', 51400, 52900),
('B0452', 'Transportasi e-Toll', 'ETOLL100', 'e-Toll Mandiri 100', 101300, 102800),
('B0453', 'Transportasi e-Toll', 'ETOLL150', 'e-Toll Mandiri 150', 151630, 153130),
('B0454', 'Transportasi e-Toll', 'ETOLL200', 'e-Toll Mandiri 200', 201300, 202800),
('B0455', 'Transportasi e-Toll', 'ETOLL300', 'e-Toll Mandiri 300', 301425, 302925),
('B0456', 'Transportasi e-Toll', 'ETOLL500', 'e-Toll Mandiri 500', 501350, 502850),
('B0457', 'Transportasi e-Toll BNI', 'ETBNI10', 'e-Toll BNI 10', 11600, 13100),
('B0458', 'Transportasi e-Toll BNI', 'ETBNI20', 'e-Toll BNI 20', 21600, 23100),
('B0459', 'Transportasi e-Toll BNI', 'ETBNI50', 'e-Toll BNI 50', 51600, 53100),
('B0460', 'Transportasi e-Toll BNI', 'ETBNI100', 'e-Toll BNI 100', 101600, 103100),
('B0461', 'Transportasi e-Toll BNI', 'ETBNI250', 'e-Toll BNI 250', 251600, 253100),
('B0462', 'Transportasi e-Toll BNI', 'ETBNI500', 'e-Toll BNI 500', 501600, 503100),
('B0463', 'Transportasi Gojek', 'GOJEK1', 'GoPay 1', 1600, 3100),
('B0464', 'Transportasi Gojek', 'GOJEK2', 'GoPay 2', 2600, 4100),
('B0465', 'Transportasi Gojek', 'GOJEK3', 'GoPay 3', 3600, 5100),
('B0466', 'Transportasi Gojek', 'GOJEK4', 'GoPay 4', 4600, 6100),
('B0467', 'Transportasi Gojek', 'GOJEK5', 'GoPay 5', 5600, 7100),
('B0468', 'Transportasi Gojek', 'GOJEK6', 'GoPay 6', 6600, 8100),
('B0469', 'Transportasi Gojek', 'GOJEK7', 'GoPay 7', 7600, 9100),
('B0470', 'Transportasi Gojek', 'GOJEK8', 'GoPay 8', 8600, 10100),
('B0471', 'Transportasi Gojek', 'GOJEK9', 'GoPay 9', 9600, 11100),
('B0472', 'Transportasi Gojek', 'GOJEK10', 'GoPay 10', 10600, 12100),
('B0473', 'Transportasi Gojek', 'GPD10', 'GoPay Driver 10', 11100, 12600),
('B0474', 'Transportasi Gojek', 'GOJEK15', 'GoPay 15', 15600, 17100),
('B0475', 'Transportasi Gojek', 'GPD20', 'GoPay Driver 20', 20400, 21900),
('B0476', 'Transportasi Gojek', 'GOJEK20', 'GoPay 20', 20600, 22100),
('B0477', 'Transportasi Gojek', 'GPD25', 'GoPay Driver 25', 25600, 27100),
('B0478', 'Transportasi Gojek', 'GOJEK25', 'GoPay 25', 25600, 27100),
('B0479', 'Transportasi Gojek', 'GOJEK30', 'GoPay 30', 30600, 32100),
('B0480', 'Transportasi Gojek', 'GOJEK40', 'GoPay 40', 40600, 42100),
('B0481', 'Transportasi Gojek', 'GPD50', 'GoPay Driver 50', 50400, 51900),
('B0482', 'Transportasi Gojek', 'GOJEK50', 'GoPay 50', 50600, 52100),
('B0483', 'Transportasi Gojek', 'GPD75', 'GoPay Driver 75', 75400, 76900),
('B0484', 'Transportasi Gojek', 'GOJEK75', 'GoPay 75', 75600, 77100),
('B0485', 'Transportasi Gojek', 'GPD100', 'GoPay Driver 100', 100400, 101900),
('B0486', 'Transportasi Gojek', 'GOJEK100', 'GoPay 100', 100750, 102250),
('B0487', 'Transportasi Gojek', 'GPD150', 'GoPay Driver 150', 150400, 151900),
('B0488', 'Transportasi Gojek', 'GOJEK150', 'GoPay 150', 150800, 152300),
('B0489', 'Transportasi Gojek', 'GPD200', 'GoPay Driver 200', 200400, 201900),
('B0490', 'Transportasi Gojek', 'GOJEK200', 'GoPay 200', 201000, 202500),
('B0491', 'Transportasi Gojek', 'GPD300', 'GoPay Driver 300', 301100, 302600),
('B0492', 'Transportasi Grab', 'OVGRAB20', 'GrabOVO 20', 19995, 21495),
('B0493', 'Transportasi Grab', 'OVGRAB25', 'GrabOVO 25', 24995, 26495),
('B0494', 'Transportasi Grab', 'OVGRAB40', 'GrabOVO 40', 40550, 42050),
('B0495', 'Transportasi Grab', 'OVGRAB50', 'GrabOVO 50', 50550, 52050),
('B0496', 'Transportasi Grab', 'OVGRAB75', 'GrabOVO 75', 75550, 77050),
('B0497', 'Transportasi Grab', 'OVGRAB100', 'GrabOVO 100', 99995, 101495),
('B0498', 'Transportasi Grab', 'OVGRAB150', 'GrabOVO 150', 149995, 151495),
('B0499', 'Transportasi Grab', 'OVGRAB200', 'GrabOVO 200', 199995, 201495),
('B0500', 'Transportasi Grab', 'OVGRAB300', 'GrabOVO 300', 300650, 302150),
('B0501', 'Transportasi Grab', 'OVGRAB400', 'GrabOVO 400', 400650, 402150),
('B0502', 'Transportasi Grab', 'OVGRAB500', 'GrabOVO 500', 500000, 501500),
('B0503', 'Transportasi Grab', 'OVGRAB600', 'GrabOVO 600', 600800, 602300),
('B0504', 'Transportasi Grab', 'OVGRAB700', 'GrabOVO 700', 700800, 702300),
('B0505', 'Transportasi Grab', 'OVGRAB800', 'GrabOVO 800', 800800, 802300),
('B0506', 'Transportasi Grab', 'OVGRAB900', 'GrabOVO 900', 900800, 902300),
('B0507', 'Transportasi Grab', 'OVGRAB1000', 'GrabOVO 1000', 1000950, 1002450);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `nama_kategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Telkomsel'),
(2, 'Telkomsel Data'),
(3, 'Indosat'),
(4, 'Indosat Data'),
(5, 'Three'),
(6, 'Three data'),
(7, 'Axis'),
(8, 'Axis Data'),
(9, 'SmartFren'),
(10, 'SmartFren Data'),
(11, 'Bolt'),
(12, 'Bolt Data');

-- --------------------------------------------------------

--
-- Table structure for table `trx`
--

CREATE TABLE `trx` (
  `id_trx` char(20) NOT NULL,
  `id_user` char(20) NOT NULL,
  `tgl` varchar(225) NOT NULL,
  `saldo_masuk` int(35) NOT NULL,
  `saldo_keluar` int(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx`
--

INSERT INTO `trx` (`id_trx`, `id_user`, `tgl`, `saldo_masuk`, `saldo_keluar`) VALUES
('T001', 'U001', '22-05-2019', 100000, 0),
('T002', 'U001', '22-05-2019', 50000, 0),
('T003', 'U001', '', 100000, 0),
('T004', 'U001', '0', 0, 100000),
('T005', 'U002', '', 200000, 0),
('T006', 'U001', '26 - May - 2019', 2000, 0),
('T007', 'U002', '26 - May - 2019', 2000, 0),
('T008', 'U002', '26 - May - 2019', 10000, 0),
('T009', 'U001', '28 - May - 2019', 23000, 0),
('T010', 'U001', '31 - May - 2019', 7000, 0),
('T012', 'U004', '02 - Jun - 2019', 500000, 0),
('T013', 'U004', '02 - Jun - 2019', 100000, 0);

--
-- Triggers `trx`
--
DELIMITER $$
CREATE TRIGGER `saldo_user` AFTER INSERT ON `trx` FOR EACH ROW BEGIN
	UPDATE at_uset SET saldo = saldo + new.saldo_masuk - new.saldo_keluar WHERE id_user = new.id_user;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_barang`
--

CREATE TABLE `trx_barang` (
  `id_trx_barang` char(20) NOT NULL,
  `id_user` char(20) NOT NULL,
  `id_barang` char(20) NOT NULL,
  `tgl_trx` varchar(225) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `harga_trx_barang` int(25) NOT NULL,
  `Nomor` char(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_barang`
--

INSERT INTO `trx_barang` (`id_trx_barang`, `id_user`, `id_barang`, `tgl_trx`, `nama_barang`, `harga_trx_barang`, `Nomor`) VALUES
('T1', 'U001', 'B0007', '01 - Jun - 2019', 'Telkomsel 10', 11700, '089643232261'),
('T2', 'U001', 'B0188', '01 - Jun - 2019', 'Three 1', 2738, '089643232261'),
('T3', 'U002', 'B0201', '01 - Jun - 2019', 'Three 100', 99725, '089643232261'),
('T5', 'U004', 'B0187', '02 - Jun - 2019', 'XL HotRod 16GB', 195600, '089643232261'),
('T6', 'U004', 'B0006', '02 - Jun - 2019', 'Telkomsel 10 PROMO', 11550, '082199992233'),
('T7', 'U004', 'B0089', '02 - Jun - 2019', 'Indosat 50', 50425, '085891933566'),
('T8', 'U004', 'B0199', '05 - Jun - 2019', 'Three 50', 50525, '089643232261');

--
-- Triggers `trx_barang`
--
DELIMITER $$
CREATE TRIGGER `saldo_trx` AFTER INSERT ON `trx_barang` FOR EACH ROW BEGIN
	update at_uset set saldo = saldo - new.harga_trx_barang where id_user = new.id_user;
    END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `at_admin`
--
ALTER TABLE `at_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `at_uset`
--
ALTER TABLE `at_uset`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `trx`
--
ALTER TABLE `trx`
  ADD PRIMARY KEY (`id_trx`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `trx_barang`
--
ALTER TABLE `trx_barang`
  ADD PRIMARY KEY (`id_trx_barang`),
  ADD KEY `trx_barang_ibfk_1` (`id_user`),
  ADD KEY `trx_barang_ibfk_2` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trx`
--
ALTER TABLE `trx`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`id_user`) REFERENCES `at_uset` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `trx_barang`
--
ALTER TABLE `trx_barang`
  ADD CONSTRAINT `trx_barang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `at_uset` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `trx_barang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
