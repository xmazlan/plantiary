-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2022 at 12:00 PM
-- Server version: 10.6.5-MariaDB-log
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_plantiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `l1_provinces`
--

CREATE TABLE `l1_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `l1_provinces`
--

INSERT INTO `l1_provinces` (`id`, `name`) VALUES
('14', 'RIAU');

-- --------------------------------------------------------

--
-- Table structure for table `l2_regencies`
--

CREATE TABLE `l2_regencies` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `l2_regencies`
--

INSERT INTO `l2_regencies` (`id`, `province_id`, `name`) VALUES
('1404', '14', 'KABUPATEN PELALAWAN'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1471', '14', 'KOTA PEKANBARU');

-- --------------------------------------------------------

--
-- Table structure for table `l3_districts`
--

CREATE TABLE `l3_districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `l3_districts`
--

INSERT INTO `l3_districts` (`id`, `regency_id`, `name`) VALUES
('1404010', '1404', 'LANGGAM'),
('1404011', '1404', 'PANGKALAN KERINCI'),
('1404012', '1404', 'BANDAR SEIKIJANG'),
('1404020', '1404', 'PANGKALAN KURAS'),
('1404021', '1404', 'UKUI'),
('1404022', '1404', 'PANGKALAN LESUNG'),
('1404030', '1404', 'BUNUT'),
('1404031', '1404', 'PELALAWAN'),
('1404032', '1404', 'BANDAR PETALANGAN'),
('1404040', '1404', 'KUALA KAMPAR'),
('1404041', '1404', 'KERUMUTAN'),
('1404042', '1404', 'TELUK MERANTI'),
('1406010', '1406', 'KAMPAR KIRI'),
('1406011', '1406', 'KAMPAR KIRI HULU'),
('1406012', '1406', 'KAMPAR KIRI HILIR'),
('1406013', '1406', 'GUNUNG SAHILAN'),
('1406014', '1406', 'KAMPAR KIRI TENGAH'),
('1406020', '1406', 'XIII KOTO KAMPAR'),
('1406021', '1406', 'KOTO KAMPAR HULU'),
('1406030', '1406', 'KUOK'),
('1406031', '1406', 'SALO'),
('1406040', '1406', 'TAPUNG'),
('1406041', '1406', 'TAPUNG HULU'),
('1406042', '1406', 'TAPUNG HILIR'),
('1406050', '1406', 'BANGKINANG KOTA'),
('1406051', '1406', 'BANGKINANG'),
('1406060', '1406', 'KAMPAR'),
('1406061', '1406', 'KAMPA'),
('1406062', '1406', 'RUMBIO JAYA'),
('1406063', '1406', 'KAMPAR UTARA'),
('1406070', '1406', 'TAMBANG'),
('1406080', '1406', 'SIAK HULU'),
('1406081', '1406', 'PERHENTIAN RAJA'),
('1471010', '1471', 'TAMPAN'),
('1471011', '1471', 'PAYUNG SEKAKI'),
('1471020', '1471', 'BUKIT RAYA'),
('1471021', '1471', 'MARPOYAN DAMAI'),
('1471022', '1471', 'TENAYAN RAYA'),
('1471030', '1471', 'LIMAPULUH'),
('1471040', '1471', 'SAIL'),
('1471050', '1471', 'PEKANBARU KOTA'),
('1471060', '1471', 'SUKAJADI'),
('1471070', '1471', 'SENAPELAN'),
('1471080', '1471', 'RUMBAI'),
('1471081', '1471', 'RUMBAI PESISIR'),
('1404043', '1404', 'test 1');

-- --------------------------------------------------------

--
-- Table structure for table `l4_villages`
--

CREATE TABLE `l4_villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `l4_villages`
--

INSERT INTO `l4_villages` (`id`, `district_id`, `name`) VALUES
('1404010001', '1404010', 'SEGATI'),
('1404010002', '1404010', 'SOTOL'),
('1404010003', '1404010', 'TAMBAK'),
('1404010004', '1404010', 'LANGKAN'),
('1404010005', '1404010', 'PANGKALAN GONDAI'),
('1404010006', '1404010', 'PENARIKAN'),
('1404010007', '1404010', 'LANGGAM'),
('1404010008', '1404010', 'PADANG LUAS'),
('1404011001', '1404011', 'RANTAU BARU'),
('1404011002', '1404011', 'KUALA TERUSAN'),
('1404011003', '1404011', 'PANGKALAN KERINCI KOTA'),
('1404011005', '1404011', 'MEKAR JAYA'),
('1404011006', '1404011', 'MAKMUR'),
('1404011007', '1404011', 'PANGKALAN KERINCI BARAT'),
('1404011008', '1404011', 'PANGKALAN KERINCI TIMUR'),
('1404012001', '1404012', 'SIMPANG BERINGIN'),
('1404012002', '1404012', 'SEKIJANG'),
('1404012003', '1404012', 'LUBUK OGUNG'),
('1404012004', '1404012', 'MUDA SETIA'),
('1404012005', '1404012', 'KIYAP JAYA'),
('1404020019', '1404020', 'TANJUNG BERINGIN'),
('1404020020', '1404020', 'TALAU'),
('1404020021', '1404020', 'KESUMA'),
('1404020022', '1404020', 'BETUNG'),
('1404020023', '1404020', 'SOREK SATU'),
('1404020024', '1404020', 'SOREK DUA'),
('1404020025', '1404020', 'DUNDANGAN'),
('1404020026', '1404020', 'SURYA INDAH'),
('1404020027', '1404020', 'BERINGIN INDAH'),
('1404020028', '1404020', 'SIALANG INDAH'),
('1404020029', '1404020', 'TERANTANG MANUK'),
('1404020030', '1404020', 'PALAS'),
('1404020031', '1404020', 'HARAPAN JAYA'),
('1404020032', '1404020', 'MERANTI'),
('1404020033', '1404020', 'KEMANG'),
('1404020034', '1404020', 'BATANG KULIM'),
('1404020035', '1404020', 'SIDO MUKTI'),
('1404021001', '1404021', 'SILIKUAN HULU'),
('1404021002', '1404021', 'LUBUK KEMBANG SARI'),
('1404021003', '1404021', 'LUBUK KEMBANG BUNGA'),
('1404021004', '1404021', 'AIR HITAM'),
('1404021005', '1404021', 'KAMPUNG BARU'),
('1404021006', '1404021', 'UKUI SATU'),
('1404021007', '1404021', 'UKUI DUA'),
('1404021008', '1404021', 'BUKIT GAJAH'),
('1404021009', '1404021', 'BUKIT JAYA'),
('1404021010', '1404021', 'AIR EMAS'),
('1404021011', '1404021', 'TRI MULYA JAYA'),
('1404021012', '1404021', 'BAGAN LIMAU'),
('1404022001', '1404022', 'GENDUANG'),
('1404022002', '1404022', 'RAWANG SARI'),
('1404022003', '1404022', 'SARI MAKMUR'),
('1404022004', '1404022', 'MULIA SUBUR'),
('1404022005', '1404022', 'MAYANG SARI'),
('1404022006', '1404022', 'SARI MULYA'),
('1404022007', '1404022', 'DUSUN TUA'),
('1404022008', '1404022', 'PANGKALAN LESUNG'),
('1404022009', '1404022', 'TANJUNG KUYO'),
('1404022010', '1404022', 'PESAGUAN'),
('1404030005', '1404030', 'MERBAU'),
('1404030009', '1404030', 'PETANI'),
('1404030010', '1404030', 'PANGKALAN BUNUT'),
('1404030011', '1404030', 'LUBUK MAS'),
('1404030012', '1404030', 'BALAM MERAH'),
('1404030013', '1404030', 'BAGAN LAGUH'),
('1404030014', '1404030', 'SUNGAI BULUH'),
('1404030017', '1404030', 'LUBUK MANDIAN GAJAH'),
('1404030018', '1404030', 'KERIUNG'),
('1404030019', '1404030', 'SIALANG KAYU BATU'),
('1404031001', '1404031', 'SUNGAI ARA'),
('1404031002', '1404031', 'RANSANG'),
('1404031003', '1404031', 'KUALA TOLAM'),
('1404031004', '1404031', 'PELALAWAN'),
('1404031005', '1404031', 'TELAYAP'),
('1404031006', '1404031', 'BATANG NILO KECIL'),
('1404031007', '1404031', 'SERING'),
('1404031008', '1404031', 'DELIK'),
('1404031010', '1404031', 'LALANG KABUNG'),
('1404032001', '1404032', 'KUALA SEMUNDAM'),
('1404032002', '1404032', 'RAWANG EMPAT'),
('1404032003', '1404032', 'TAMBUN'),
('1404032004', '1404032', 'TERBANGIANG'),
('1404032005', '1404032', 'LUBUK TERAP'),
('1404032006', '1404032', 'ANGKASA'),
('1404032007', '1404032', 'SIALANG GODANG'),
('1404032008', '1404032', 'LUBUK RAJA'),
('1404032009', '1404032', 'LUBUK KERANJI TIMUR'),
('1404032010', '1404032', 'SIALANG BUNGKUK'),
('1404032011', '1404032', 'AIR TERJUN'),
('1404040012', '1404040', 'SERAPUNG'),
('1404040013', '1404040', 'TELUK'),
('1404040014', '1404040', 'TELUK DALAM'),
('1404040015', '1404040', 'SOKOI'),
('1404040016', '1404040', 'TANJUNG SUM'),
('1404040017', '1404040', 'SUNGAI SOLOK'),
('1404040018', '1404040', 'SUNGAI UPIH'),
('1404040019', '1404040', 'TELUK BERINGIN'),
('1404040020', '1404040', 'SUNGAI EMAS'),
('1404040021', '1404040', 'TELUK BAKAU'),
('1404041001', '1404041', 'BUKIT LEMBAH SUBUR'),
('1404041002', '1404041', 'BANJAR PANJANG'),
('1404041003', '1404041', 'KERUMUTAN'),
('1404041004', '1404041', 'BERINGIN MAKMUR'),
('1404041005', '1404041', 'PEMATANG TINGGI'),
('1404041006', '1404041', 'PANGKALAN TAMPOI'),
('1404041007', '1404041', 'PANGKALAN PANDUK'),
('1404041008', '1404041', 'TANJUNG AIR HITAM'),
('1404041009', '1404041', 'MAK TEDUH'),
('1404041010', '1404041', 'LIPAI BULAN'),
('1404042001', '1404042', 'KUALA PANDUK'),
('1404042002', '1404042', 'PETODAAN'),
('1404042003', '1404042', 'TELUK MERANTI'),
('1404042004', '1404042', 'PULAU MUDA'),
('1404042005', '1404042', 'PANGKALAN TERAP'),
('1404042006', '1404042', 'TELUK BINJAI'),
('1404042007', '1404042', 'GAMBUT MUTIARA'),
('1404042008', '1404042', 'LABUHAN BILIK'),
('1404042009', '1404042', 'SEGAMAI'),
('1406010006', '1406010', 'DOMO'),
('1406010014', '1406010', 'MUARA SELAYA'),
('1406010015', '1406010', 'IV KOTO SETINGKAI'),
('1406010016', '1406010', 'PADANG SAWAH'),
('1406010017', '1406010', 'KUNTU'),
('1406010018', '1406010', 'TELUK PAMAN'),
('1406010019', '1406010', 'LIPAT KAIN'),
('1406010020', '1406010', 'SUNGAI GERINGGING'),
('1406010021', '1406010', 'SUNGAI PAKU'),
('1406010034', '1406010', 'SUNGAI RAMBAI'),
('1406010035', '1406010', 'SUNGAI RAJA'),
('1406010036', '1406010', 'TANJUNG HARAPAN'),
('1406010037', '1406010', 'SUNGAI SARIK'),
('1406010040', '1406010', 'LIPAT KAIN UTARA'),
('1406010041', '1406010', 'LIPAT KAIN SELATAN'),
('1406010042', '1406010', 'KUNTU DARUSSALAM'),
('1406010043', '1406010', 'TANJUNG MAS'),
('1406010044', '1406010', 'SUNGAI LITI'),
('1406010045', '1406010', 'TELUK PAMAN TIMUR'),
('1406010046', '1406010', 'SUNGAI HARAPAN'),
('1406011001', '1406011', 'AUR KUNING'),
('1406011002', '1406011', 'TANJUNG BERINGIN'),
('1406011003', '1406011', 'BATU SANGGAN'),
('1406011004', '1406011', 'TANJUNG BELIT'),
('1406011005', '1406011', 'GEMA'),
('1406011006', '1406011', 'TANJUNG BELIT SELATAN'),
('1406011007', '1406011', 'KOTA LAMA'),
('1406011008', '1406011', 'LUDAI'),
('1406011009', '1406011', 'PANGKALAN KAPAS'),
('1406011010', '1406011', 'KEBUN TINGGI'),
('1406011011', '1406011', 'BATU SASAK'),
('1406011012', '1406011', 'TANJUNG KARANG'),
('1406011013', '1406011', 'GAJAH BERTALUT'),
('1406011014', '1406011', 'PANGKALAN SERAI'),
('1406011015', '1406011', 'DANAU SONTUL'),
('1406011016', '1406011', 'DERAS TAJAK'),
('1406011017', '1406011', 'TERUSAN'),
('1406011018', '1406011', 'SUNGAI SANTI'),
('1406011019', '1406011', 'TANJUNG PERMAI'),
('1406011020', '1406011', 'DUA SEPAKAT'),
('1406011021', '1406011', 'SUBAYANG JAYA'),
('1406011022', '1406011', 'BUKIT BETUNG'),
('1406011023', '1406011', 'LUBUK BIGAU'),
('1406011024', '1406011', 'MUARA BIO'),
('1406012001', '1406012', 'SUNGAI SIMPANG DUA'),
('1406012002', '1406012', 'SUNGAI PAGAR'),
('1406012003', '1406012', 'MENTULIK'),
('1406012004', '1406012', 'BANGUN SARI'),
('1406012005', '1406012', 'SUNGAI PETAI'),
('1406012006', '1406012', 'RANTAU KASIH'),
('1406012007', '1406012', 'SUNGAI BUNGA'),
('1406012008', '1406012', 'GADING PERMAI'),
('1406013001', '1406013', 'KEBUN DURIAN'),
('1406013002', '1406013', 'SUBARAK'),
('1406013003', '1406013', 'GUNUNG SAHILAN'),
('1406013004', '1406013', 'SUKA MAKMUR'),
('1406013005', '1406013', 'GUNUNG SARI'),
('1406013006', '1406013', 'MAKMUR SEJAHTERA'),
('1406013007', '1406013', 'SUNGAI LIPAI'),
('1406013008', '1406013', 'SAHILAN DARUSSALAM'),
('1406013009', '1406013', 'GUNUNG MULYA'),
('1406014001', '1406014', 'PENGHIDUPAN'),
('1406014002', '1406014', 'SIMALINYANG'),
('1406014003', '1406014', 'MAYANG PONGKAI'),
('1406014004', '1406014', 'LUBUK SAKAI'),
('1406014005', '1406014', 'BINA BARU'),
('1406014006', '1406014', 'HIDUP BARU'),
('1406014007', '1406014', 'KARYA BAKTI'),
('1406014008', '1406014', 'KOTO DAMAI'),
('1406014009', '1406014', 'UTAMA KARYA'),
('1406014010', '1406014', 'BUKIT SAKAI'),
('1406014011', '1406014', 'MEKAR JAYA'),
('1406020001', '1406020', 'BALUNG'),
('1406020002', '1406020', 'PULAU GADANG'),
('1406020003', '1406020', 'TANJUNG ALAI'),
('1406020004', '1406020', 'BATU BERSURAT'),
('1406020005', '1406020', 'KOTO TUO'),
('1406020006', '1406020', 'MUARA TAKUS'),
('1406020007', '1406020', 'GUNUNG BUNGSU'),
('1406020013', '1406020', 'KOTO MESJID'),
('1406020014', '1406020', 'LUBUK AGUNG'),
('1406020015', '1406020', 'RANAH SUNGKAI'),
('1406020016', '1406020', 'BINAMANG'),
('1406020017', '1406020', 'PONGKAI ISTIQAMAH'),
('1406020024', '1406020', 'KOTO TUO BARAT'),
('1406021001', '1406021', 'TANJUNG'),
('1406021002', '1406021', 'TABING'),
('1406021003', '1406021', 'PONGKAI'),
('1406021004', '1406021', 'GUNUNG MALELO'),
('1406021005', '1406021', 'SIBIRUANG'),
('1406021006', '1406021', 'BANDUR PICAK'),
('1406030002', '1406030', 'KUOK'),
('1406030003', '1406030', 'MERANGIN'),
('1406030004', '1406030', 'EMPAT BALAI'),
('1406030005', '1406030', 'PULAU JAMBU'),
('1406030008', '1406030', 'SILAM'),
('1406030009', '1406030', 'BUKIT MELINTANG'),
('1406030010', '1406030', 'LERENG'),
('1406030011', '1406030', 'PULAU TERAP'),
('1406030012', '1406030', 'BATU LANGKA KECIL'),
('1406031001', '1406031', 'SIABU'),
('1406031002', '1406031', 'GANTING'),
('1406031003', '1406031', 'SIPUNGGUK'),
('1406031004', '1406031', 'GANTING DAMAI'),
('1406031005', '1406031', 'SALO'),
('1406031006', '1406031', 'SALO TIMUR'),
('1406040002', '1406040', 'PETAPAHAN'),
('1406040003', '1406040', 'SEI LEMBU MAKMUR'),
('1406040004', '1406040', 'MUARA MAHAT BARU'),
('1406040005', '1406040', 'KINANTAN'),
('1406040006', '1406040', 'SIBUAK'),
('1406040007', '1406040', 'PANTAI CERMIN'),
('1406040008', '1406040', 'SEI PUTIH'),
('1406040009', '1406040', 'PAGARUYUNG'),
('1406040010', '1406040', 'AIR TERBIT'),
('1406040011', '1406040', 'PANCURAN GADING'),
('1406040012', '1406040', 'SARI GALUH'),
('1406040013', '1406040', 'TRI MANUNGGAL'),
('1406040014', '1406040', 'MUKTI SARI'),
('1406040015', '1406040', 'INDRAPURI'),
('1406040016', '1406040', 'GADING SARI'),
('1406040017', '1406040', 'TANJUNG SAWIT'),
('1406040018', '1406040', 'SUMBER MAKMUR'),
('1406040019', '1406040', 'PETAPAHAN JAYA'),
('1406040030', '1406040', 'PELAMBAIAN'),
('1406040031', '1406040', 'INDRA SAKTI'),
('1406040032', '1406040', 'SUNGAI AGUNG'),
('1406040033', '1406040', 'KARYA INDAH'),
('1406040034', '1406040', 'KIJANG REJO'),
('1406040035', '1406040', 'BENCAH KELUBI'),
('1406040036', '1406040', 'BATU GAJAH'),
('1406041001', '1406041', 'KASIKAN'),
('1406041002', '1406041', 'RIMBA BERINGIN'),
('1406041003', '1406041', 'SENAMA NENEK'),
('1406041004', '1406041', 'BUKIT KEMUNING'),
('1406041005', '1406041', 'DANAU LANCANG'),
('1406041006', '1406041', 'SUKA RAMAI'),
('1406041007', '1406041', 'KUSAU MAKMUR'),
('1406041008', '1406041', 'SUMBER SARI'),
('1406041014', '1406041', 'TALANG DANTO'),
('1406041015', '1406041', 'MUARA INTAN'),
('1406041016', '1406041', 'INTAN JAYA'),
('1406041017', '1406041', 'TANAH DATAR'),
('1406041018', '1406041', 'RIMBA MAKMUR'),
('1406041019', '1406041', 'RIMBA JAYA'),
('1406042001', '1406042', 'SEKIJANG'),
('1406042002', '1406042', 'TEBING LESTARI'),
('1406042003', '1406042', 'KIJANG JAYA'),
('1406042004', '1406042', 'TANAH TINGGI'),
('1406042005', '1406042', 'TAPUNG MAKMUR'),
('1406042006', '1406042', 'TAPUNG LESTARI'),
('1406042007', '1406042', 'KOTA GARO'),
('1406042008', '1406042', 'SUKA MAJU'),
('1406042009', '1406042', 'KOTA BARU'),
('1406042010', '1406042', 'KOTO BANGUN'),
('1406042011', '1406042', 'CINTA DAMAI'),
('1406042012', '1406042', 'BERINGIN LESTARI'),
('1406042013', '1406042', 'TANDAN SARI'),
('1406042015', '1406042', 'KIJANG MAKMUR'),
('1406042016', '1406042', 'KOTO AMAN'),
('1406042017', '1406042', 'GERBANG SARI'),
('1406050002', '1406050', 'LANGGINI'),
('1406050003', '1406050', 'BANGKINANG'),
('1406050013', '1406050', 'KUMANTAN'),
('1406050014', '1406050', 'RIDAN PERMAI'),
('1406051001', '1406051', 'PULAU LAWAS'),
('1406051002', '1406051', 'MUARA UWAI'),
('1406051003', '1406051', 'PULAU'),
('1406051004', '1406051', 'PASIR SIALANG'),
('1406051005', '1406051', 'BUKIT SEMBILAN'),
('1406051006', '1406051', 'LABOI JAYA'),
('1406051007', '1406051', 'SUKA MULYA'),
('1406051008', '1406051', 'BUKIT PAYUNG'),
('1406051009', '1406051', 'BINUANG'),
('1406060001', '1406060', 'BATU BELAH'),
('1406060002', '1406060', 'TANJUNG BERULAK'),
('1406060003', '1406060', 'AIR TIRIS'),
('1406060004', '1406060', 'RANAH'),
('1406060005', '1406060', 'PENYASAWAN'),
('1406060006', '1406060', 'RUMBIO'),
('1406060007', '1406060', 'PADANG MUTUNG'),
('1406060025', '1406060', 'SIMPANG KUBU'),
('1406060026', '1406060', 'TANJUNG RAMBUTAN'),
('1406060028', '1406060', 'PULAU JAMBU'),
('1406060029', '1406060', 'LIMAU MANIS'),
('1406060030', '1406060', 'NAUMBAI'),
('1406060031', '1406060', 'RANAH SINGKUANG'),
('1406060032', '1406060', 'PULAU TINGGI'),
('1406060033', '1406060', 'KOTO TIBUN'),
('1406060034', '1406060', 'BUKIT RANAH'),
('1406060035', '1406060', 'RANAH BARU'),
('1406060036', '1406060', 'PULAU SARAK'),
('1406061001', '1406061', 'PULAU RAMBAI'),
('1406061002', '1406061', 'KAMPAR'),
('1406061003', '1406061', 'KOTO PERAMBAHAN'),
('1406061004', '1406061', 'PULAU BIRANDANG'),
('1406061005', '1406061', 'SUNGAI PUTIH'),
('1406061006', '1406061', 'DELI MAKMUR'),
('1406061007', '1406061', 'SUNGAI TARAP'),
('1406061008', '1406061', 'TANJUNG BUNGO'),
('1406061009', '1406061', 'SAWAH BARU'),
('1406062001', '1406062', 'ALAM PANJANG'),
('1406062002', '1406062', 'PULAU PAYUNG'),
('1406062003', '1406062', 'TERATAK'),
('1406062004', '1406062', 'BUKIT KRATAI'),
('1406062005', '1406062', 'BATANG BATINDIH'),
('1406062006', '1406062', 'TAMBUSAI'),
('1406062007', '1406062', 'SIMPANG PETAI'),
('1406063001', '1406063', 'KAMPUNG PANJANG'),
('1406063002', '1406063', 'SAWAH'),
('1406063003', '1406063', 'KAYU ARO'),
('1406063004', '1406063', 'MUARA JALAI'),
('1406063005', '1406063', 'SUNGAI TONANG'),
('1406063006', '1406063', 'SUNGAI JALAU'),
('1406063007', '1406063', 'SENDAYAN'),
('1406063008', '1406063', 'NAGA BERALIH'),
('1406070001', '1406070', 'KUAPAN'),
('1406070002', '1406070', 'AUR SATI'),
('1406070003', '1406070', 'TAMBANG'),
('1406070004', '1406070', 'PADANG LUAS'),
('1406070005', '1406070', 'GOBAH'),
('1406070006', '1406070', 'TERANTANG'),
('1406070007', '1406070', 'RIMBA PANJANG'),
('1406070008', '1406070', 'KUALU'),
('1406070009', '1406070', 'TELUK KENIDAI'),
('1406070010', '1406070', 'PARIT BARU'),
('1406070011', '1406070', 'KEMANG INDAH'),
('1406070012', '1406070', 'SUNGAI PINANG'),
('1406070013', '1406070', 'KUALU NENAS'),
('1406070014', '1406070', 'TARAI BANGUN'),
('1406070015', '1406070', 'PALUNG RAYA'),
('1406070016', '1406070', 'PULAU PERMAI'),
('1406070017', '1406070', 'BALAM JAYA'),
('1406080004', '1406080', 'BULUH NIPIS'),
('1406080005', '1406080', 'PANGKALAN BARU'),
('1406080006', '1406080', 'BULUH CINA'),
('1406080007', '1406080', 'LUBUK SIAM'),
('1406080009', '1406080', 'TERATAK BULUH'),
('1406080010', '1406080', 'DESA BARU'),
('1406080011', '1406080', 'TANAH MERAH'),
('1406080012', '1406080', 'PANDAU JAYA'),
('1406080013', '1406080', 'PANGKALAN SERIK'),
('1406080014', '1406080', 'KEPAU JAYA'),
('1406080015', '1406080', 'TANJUNG BALAM'),
('1406080016', '1406080', 'KUBANG JAYA'),
('1406081001', '1406081', 'PANTAI RAJA'),
('1406081002', '1406081', 'SIALANG KUBANG'),
('1406081003', '1406081', 'HANG TUAH'),
('1406081008', '1406081', 'KAMPUNG PINANG'),
('1406081009', '1406081', 'LUBUK SAKAT'),
('1471010001', '1471010', 'SIMPANG BARU'),
('1471010005', '1471010', 'SIDOMULYO BARAT'),
('1471010007', '1471010', 'TUAH KARYA'),
('1471010008', '1471010', 'DELIMA'),
('1471010009', '1471010', 'TUAH MADANI'),
('1471010010', '1471010', 'SIALANG MUNGGU'),
('1471010011', '1471010', 'TOBEK GODANG'),
('1471010012', '1471010', 'BINA WIDYA'),
('1471010013', '1471010', 'AIR PUTIH'),
('1471011001', '1471011', 'LABUH BARU TIMUR'),
('1471011002', '1471011', 'TAMPAN'),
('1471011003', '1471011', 'AIR HITAM'),
('1471011004', '1471011', 'LABUH BARU BARAT'),
('1471011005', '1471011', 'BANDAR RAYA'),
('1471011006', '1471011', 'SUNGAI SIBAM'),
('1471011007', '1471011', 'TIRTA SIAK'),
('1471020001', '1471020', 'SIMPANG TIGA'),
('1471020004', '1471020', 'TENGKERANG SELATAN'),
('1471020007', '1471020', 'TENGKERANG UTARA'),
('1471020011', '1471020', 'TENGKERANG LABUAI'),
('1471020012', '1471020', 'AIR DINGIN'),
('1471021001', '1471021', 'TENGKERANG TENGAH'),
('1471021002', '1471021', 'TENGKERANG BARAT'),
('1471021003', '1471021', 'MAHARATU'),
('1471021004', '1471021', 'SIDOMULYO TIMUR'),
('1471021005', '1471021', 'WONOREJO'),
('1471021006', '1471021', 'PERHENTIAN MARPOYAN'),
('1471022001', '1471022', 'KULIM'),
('1471022002', '1471022', 'TENGKERANG TIMUR'),
('1471022003', '1471022', 'REJOSARI'),
('1471022004', '1471022', 'SAIL'),
('1471022005', '1471022', 'SIALANG RAMPAI'),
('1471022006', '1471022', 'PEBATUAN'),
('1471022007', '1471022', 'MENTANGOR'),
('1471022008', '1471022', 'PEMATANG KAPAU'),
('1471022009', '1471022', 'SIALANG SAKTI'),
('1471022010', '1471022', 'TUAH NEGERI'),
('1471022011', '1471022', 'MELEBUNG'),
('1471022012', '1471022', 'INDUSTRI TENAYAN'),
('1471022013', '1471022', 'BAMBU KUNING'),
('1471030001', '1471030', 'RINTIS'),
('1471030002', '1471030', 'SEKIP'),
('1471030003', '1471030', 'TANJUNG RHU'),
('1471030004', '1471030', 'PESISIR'),
('1471040001', '1471040', 'CINTA RAJA'),
('1471040002', '1471040', 'SUKA MAJU'),
('1471040003', '1471040', 'SUKA MULIA'),
('1471050001', '1471050', 'SIMPANG EMPAT'),
('1471050002', '1471050', 'SUMAHILANG'),
('1471050003', '1471050', 'TANAH DATAR'),
('1471050004', '1471050', 'KOTA BARU'),
('1471050005', '1471050', 'SUKARAMAI'),
('1471050006', '1471050', 'KOTA TINGGI'),
('1471060002', '1471060', 'JADIREJO'),
('1471060003', '1471060', 'KAMPUNG TENGAH'),
('1471060004', '1471060', 'KAMPUNG MELAYU'),
('1471060005', '1471060', 'KEDUNGSARI'),
('1471060006', '1471060', 'HARJOSARI'),
('1471060007', '1471060', 'SUKAJADI'),
('1471060008', '1471060', 'PULAU KARAM'),
('1471070001', '1471070', 'PADANG BULAN'),
('1471070002', '1471070', 'PADANG TERUBUK'),
('1471070003', '1471070', 'SAGO'),
('1471070004', '1471070', 'KAMPUNG DALAM'),
('1471070005', '1471070', 'KAMPUNG BANDAR'),
('1471070006', '1471070', 'KAMPUNG BARU'),
('1471080001', '1471080', 'UMBAN SARI'),
('1471080006', '1471080', 'RUMBAI BUKIT'),
('1471080007', '1471080', 'MUARA FAJAR'),
('1471080008', '1471080', 'PALAS'),
('1471080009', '1471080', 'SRI MERANTI'),
('1471080010', '1471080', 'AGROWISATA'),
('1471080011', '1471080', 'MAHARANI'),
('1471080012', '1471080', 'RANTAU PANJANG'),
('1471080013', '1471080', 'MUARA FAJAR BARAT'),
('1471081001', '1471081', 'MERANTI PANDAK'),
('1471081002', '1471081', 'LIMBUNGAN'),
('1471081003', '1471081', 'LEMBAH SARI'),
('1471081004', '1471081', 'LEMBAH DAMAI'),
('1471081005', '1471081', 'LIMBUNGAN BARU'),
('1471081006', '1471081', 'TEBING TINGGI OKURA'),
('1471081007', '1471081', 'SUNGAI AMBANG'),
('1471081008', '1471081', 'SUNGAI UKAI'),
('1404041011', '1404041', 'Taambah 1 desa di kerumutan'),
('1404040022', '1404040', 'Kelomang');

-- --------------------------------------------------------

--
-- Table structure for table `l5_list_of_street_names`
--

CREATE TABLE `l5_list_of_street_names` (
  `id` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `l5_list_of_street_names`
--

INSERT INTO `l5_list_of_street_names` (`id`, `village_id`, `name`) VALUES
('1404040012001', '1404040012', 'xxx'),
('1404040012002', '1404040012', 'jkljkl');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_05_083413_add_username_column_to_users_table', 1),
(7, '2022_02_05_092223_create_sessions_table', 1),
(8, '2022_02_05_093438_create_provinces_table', 1),
(9, '2022_02_05_093449_create_regencies_table', 1),
(10, '2022_02_05_093510_create_districts_table', 1),
(11, '2022_02_05_093523_create_villages_table', 1),
(27, '2022_02_06_180851_create_list_of_street_names_table', 2),
(28, '2022_02_06_185543_create_plant_names_table', 2),
(29, '2022_02_06_185855_create_plants_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_of_street_name_id` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant_name_id` bigint(20) UNSIGNED NOT NULL,
  `latitudes` decimal(8,6) NOT NULL,
  `longitudes` decimal(9,6) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_names`
--

CREATE TABLE `plant_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latin_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `common_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cIoRIU0DR3PSUnit79bfGnocZX3sNzvfkwLaJezq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQzNSTEY3U2NlemxUdzBMTEU2NGxZaGNYN0tVODc5RU4yRUFNRHRCeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvcGxhbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZnN2Z2EuMWszY1ZxMXViMnJMaWtDLmRScGlvc2ZPV0tUUWNMS041TTQ3MmtZZUdITE5MejIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGZzdmdhLjFrM2NWcTF1YjJyTGlrQy5kUnBpb3NmT1dLVFFjTEtONU00NzJrWWVHSExOTHoyIjt9', 1644219010),
('TW9A9WQ9ylShXmNpWRjL7XsmsDjs27R02DQQV3f8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYVB6a25teFZGR3pNNnFzMjN0Y1ZHYnFIeTZQTjlOMHR1VVNUemlCZSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwczovL3BsYW50aWFyeS5sb2NhbC9kYXNoYm9hcmQvcGxhbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZnN2Z2EuMWszY1ZxMXViMnJMaWtDLmRScGlvc2ZPV0tUUWNMS041TTQ3MmtZZUdITE5MejIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGZzdmdhLjFrM2NWcTF1YjJyTGlrQy5kUnBpb3NmT1dLVFFjTEtONU00NzJrWWVHSExOTHoyIjt9', 1644234601);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Mazlan', 'mazlan', 'mazlancreative@gmail.com', '2022-02-05 06:48:04', '$2y$10$fsvga.1k3cVq1ub2rLikC.dRpiosfOWKTQcLKN5M472kYeGHLNLz2', NULL, NULL, 'AuSSSPtN1r', NULL, 'profile-photos/uQypoGjWypKgFMrvTtHpl8Mn0S2EqqWyBI8Ho4v8.jpg', '2022-02-05 06:48:04', '2022-02-06 06:56:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `l1_provinces`
--
ALTER TABLE `l1_provinces`
  ADD KEY `l1_provinces_id_index` (`id`);

--
-- Indexes for table `l2_regencies`
--
ALTER TABLE `l2_regencies`
  ADD KEY `l2_regencies_province_id_foreign` (`province_id`),
  ADD KEY `l2_regencies_id_index` (`id`);

--
-- Indexes for table `l3_districts`
--
ALTER TABLE `l3_districts`
  ADD KEY `l3_districts_regency_id_foreign` (`regency_id`),
  ADD KEY `l3_districts_id_index` (`id`);

--
-- Indexes for table `l4_villages`
--
ALTER TABLE `l4_villages`
  ADD KEY `l4_villages_district_id_foreign` (`district_id`),
  ADD KEY `l4_villages_id_index` (`id`);

--
-- Indexes for table `l5_list_of_street_names`
--
ALTER TABLE `l5_list_of_street_names`
  ADD KEY `l5_list_of_street_names_village_id_foreign` (`village_id`),
  ADD KEY `l5_list_of_street_names_id_index` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plants_plant_code_unique` (`plant_code`),
  ADD KEY `plants_plant_name_id_foreign` (`plant_name_id`),
  ADD KEY `plants_list_of_street_name_id_foreign` (`list_of_street_name_id`);

--
-- Indexes for table `plant_names`
--
ALTER TABLE `plant_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plant_names_latin_name_unique` (`latin_name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plant_names`
--
ALTER TABLE `plant_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `l2_regencies`
--
ALTER TABLE `l2_regencies`
  ADD CONSTRAINT `l2_regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `l1_provinces` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `l3_districts`
--
ALTER TABLE `l3_districts`
  ADD CONSTRAINT `l3_districts_regency_id_foreign` FOREIGN KEY (`regency_id`) REFERENCES `l2_regencies` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `l4_villages`
--
ALTER TABLE `l4_villages`
  ADD CONSTRAINT `l4_villages_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `l3_districts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `l5_list_of_street_names`
--
ALTER TABLE `l5_list_of_street_names`
  ADD CONSTRAINT `l5_list_of_street_names_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `l4_villages` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `plants_list_of_street_name_id_foreign` FOREIGN KEY (`list_of_street_name_id`) REFERENCES `l5_list_of_street_names` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `plants_plant_name_id_foreign` FOREIGN KEY (`plant_name_id`) REFERENCES `plant_names` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
