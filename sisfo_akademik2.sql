-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 10:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfo_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telepon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Meidias Abror', '089765242345', 'Bujang Tetap', '2020-05-10 05:55:41', '2020-05-16 14:03:07'),
(2, 'Anas Nursofyan', '081275790271', 'Senior Tetap', '2020-05-10 05:56:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'M-001', 'Al-Qur\'an', 'ganjil', 1, '2020-04-30 06:35:53', '0000-00-00 00:00:00'),
(2, 'M-002', 'K.Sholah', 'ganjil', 2, '2020-04-30 06:35:53', '0000-00-00 00:00:00'),
(3, 'S-001', 'K.Nawafil', 'ganjil', 2, '2020-05-01 07:08:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `materi_santri`
--

CREATE TABLE `materi_santri` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi_santri`
--

INSERT INTO `materi_santri` (`id`, `santri_id`, `materi_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 76, '2020-04-30 06:37:38', '2020-05-10 05:27:17'),
(2, 6, 2, 85, '2020-04-30 06:37:38', '0000-00-00 00:00:00'),
(3, 1, 1, 85, '2020-04-30 22:40:26', '2020-05-01 05:40:26'),
(5, 4, 2, 87, '2020-04-30 22:43:12', '2020-05-01 05:43:12'),
(7, 1, 3, 65, '2020-05-01 09:28:02', '2020-05-01 16:28:02'),
(8, 1, 2, 78, '2020-05-01 09:28:10', '2020-05-01 16:28:10'),
(9, 6, 3, 75, '2020-05-02 09:41:14', '2020-05-02 16:41:14'),
(10, 8, 2, 75, '2020-05-07 06:11:26', '0000-00-00 00:00:00'),
(11, 3, 1, 83, '2020-05-09 09:26:10', '2020-05-10 08:15:43'),
(13, 4, 1, 75, '2020-05-09 09:26:59', '2020-05-09 16:26:59'),
(14, 9, 1, 75, '2020-05-09 21:15:35', '2020-05-10 04:15:35'),
(16, 3, 2, 65, '2020-05-10 01:26:24', '2020-05-10 08:26:24'),
(17, 7, 1, 75, '2020-05-11 00:52:52', '2020-05-11 07:52:52'),
(18, 7, 2, 85, '2020-05-11 00:53:08', '2020-05-11 07:53:08'),
(19, 9, 3, 75, '2020-06-10 08:11:43', '2020-06-10 15:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_29_071242_create_santri_table', 1),
(4, '2020_05_26_070924_create_table_sumber_pemasukan', 2),
(5, '2020_06_09_101018_create_table_pengeluaran', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` int(11) NOT NULL,
  `sumber_id` int(10) UNSIGNED NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `sumber_id`, `nominal`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, 3, 250000, 'Uang Jamal', '2020-06-10 16:28:28', '2020-06-10 16:28:28'),
(4, 1, 275000, 'Uang Pambudi', '2020-06-10 19:26:12', '2020-06-10 19:26:12'),
(7, 1, 1250000, 'Ukhro Iqbal Sanuri dan Waldum', '2020-06-11 10:55:33', '2020-06-11 10:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `pengeluaran_id` int(11) UNSIGNED NOT NULL,
  `nominal` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `pengeluaran_id`, `nominal`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, 1, 100000, 'Beli sayur', NULL, NULL),
(4, 2, 1250000, 'Bapak Eko', '2020-06-10 10:16:36', '2020-06-10 10:16:36'),
(5, 2, 250000, 'Uang Bp Nuri', '2020-06-10 16:29:06', '2020-06-10 16:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `perizinan`
--

CREATE TABLE `perizinan` (
  `id` int(11) NOT NULL,
  `santri_id` int(11) NOT NULL,
  `keperluan` varchar(128) NOT NULL,
  `jenis_surat` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perizinan`
--

INSERT INTO `perizinan` (`id`, `santri_id`, `keperluan`, `jenis_surat`, `created_at`, `updated_at`) VALUES
(1, 4, 'Membeli Bahan Masakan', '1', '2020-06-10 08:09:11', '2020-06-10 08:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` char(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id`, `user_id`, `nama`, `gender`, `alamat`, `no_telp`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 0, 'Winda Athfal', 'P', 'Cilegon', '088813123012', NULL, '2020-04-29 00:35:35', '2020-04-29 00:35:35'),
(4, 0, 'Fara Aulia', 'P', 'Malang', '081233829623', NULL, '2020-04-29 00:35:47', '2020-04-29 00:35:47'),
(6, 2, 'Alsa Salsabila', 'P', 'Lamongan', '087765478099', NULL, '2020-04-29 22:55:28', '2020-04-29 22:55:28'),
(7, 4, 'Distra Adi', 'L', 'Palembang', '085754892364', NULL, '2020-04-30 01:39:22', '2020-04-30 01:39:22'),
(8, 5, 'Rio Febrian', 'L', 'Malang', '085754892364', NULL, '2020-05-01 10:49:07', '2020-05-01 10:49:07'),
(9, 6, 'Ricky Picks', 'L', 'Jakabaring', '089757646342', NULL, '2020-05-02 09:57:07', '2020-05-02 09:57:07'),
(10, 7, 'Nafis Athaya Shihab', 'P', 'Jakarta', '089875313129', NULL, '2020-05-11 01:04:46', '2020-05-11 01:05:44'),
(11, 15, 'Dewi Wahyuni', 'P', 'Malang', '085745154745', NULL, '2020-05-14 21:07:36', '2020-05-14 21:07:36'),
(909, 100, 'Mr. Ellis Nitzsche', 'P', '96545 May Manors Apt. 368\nChaunceyhaven, MD 54521', '(718) 327-1776', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(910, 100, 'Mr. Titus Roberts', 'P', '1094 Hammes Inlet Apt. 869\nReingerton, VA 23934', '(637) 769-4849', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(911, 100, 'Brett Grady PhD', 'P', '160 Dayna Garden Suite 322\nQuigleymouth, CT 09529-8372', '958-395-0316 x54048', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(912, 100, 'Mr. Maverick Shanahan', 'L', '3223 Grady Center\nNew Lucinda, IN 29707-4018', '363.672.7538', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(913, 100, 'Dr. Melyssa Barrows MD', 'P', '4295 Jimmy Field Apt. 138\nWhitestad, IN 97299-1049', '801.638.1153 x5599', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(914, 100, 'Miss Dessie Hill IV', 'L', '42807 Russel Trail\nWest Maceyton, CA 24302-5434', '730.945.8472 x523', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(915, 100, 'Howell Bahringer', 'L', '6007 Cordia Shores Apt. 736\nLake Corytown, MS 08696', '292-716-2984 x334', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(916, 100, 'Magdalen Streich', 'P', '41441 Franz Locks Suite 995\nNorth Juniuschester, NM 24085', '1-358-299-0883', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(917, 100, 'Tabitha Erdman', 'L', '80523 Caden Crossroad Apt. 447\nNew Ryan, SC 24313', '471-520-3806 x9287', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(918, 100, 'Abner Reinger', 'L', '30006 Jacobson Skyway Suite 721\nWest Christberg, OK 98545-0222', '+1.413.948.2299', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(919, 100, 'Santos Aufderhar I', 'P', '5184 Lessie Villages Suite 216\nThaddeusmouth, AK 43781-5680', '1-405-660-9905 x70703', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(920, 100, 'Doyle Veum', 'P', '6732 Jacobs Spur Suite 515\nHopeshire, AR 93882-5735', '(874) 465-0163', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(921, 100, 'Selena Lebsack', 'L', '32375 Royal Wall Suite 355\nEstelfort, IN 76709-7098', '1-798-720-9804', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(922, 100, 'Leonora Feil', 'L', '988 Cummerata Village\nSouth Dulce, MO 37260', '(621) 990-2671', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(923, 100, 'Garnet Rogahn IV', 'P', '72946 Ambrose Throughway\nWest Leora, KY 93993-0750', '1-551-446-8732 x14678', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(924, 100, 'Prof. Arianna White', 'P', '99761 Maryjane Cape\nSouth Shania, IL 68701', '1-989-593-7034 x041', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(925, 100, 'Mrs. Matilde Romaguera', 'L', '51100 Mills Keys Apt. 023\nNorth Dedric, MA 69891', '(476) 288-7324 x3443', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(926, 100, 'Dr. Zackery Hill MD', 'P', '6415 Kling Views\nColtenchester, DE 03274', '+1-887-512-4593', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(927, 100, 'Tevin Feest', 'P', '5503 Bridget Underpass Apt. 205\nLake Pete, DC 39788', '(515) 631-7136 x320', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(928, 100, 'Jordan Ernser DVM', 'L', '8016 Mable Turnpike\nRociobury, KS 73053-0056', '942.995.1997', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(929, 100, 'Cora Ledner DVM', 'P', '1317 Jay Meadows Suite 548\nNorth Lloydmouth, NC 13677', '1-908-626-5437 x9933', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(930, 100, 'Evalyn Connelly', 'P', '62166 Lindsey Vista Apt. 118\nEast Myriam, ND 02436-3353', '1-543-298-1256 x453', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(931, 100, 'Ottilie Ebert', 'P', '3647 VonRueden Points\nBechtelarville, IL 15685', '+12323626618', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(932, 100, 'Wilhelm Krajcik DVM', 'P', '379 Stanford Square\nWest April, MA 10840-7523', '1-310-798-3408 x161', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(933, 100, 'Prof. Haskell Murazik Sr.', 'L', '28534 Tiffany Way\nEast Coltenborough, AL 22567-5131', '814-886-5457 x63428', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(934, 100, 'Rocio Von', 'P', '804 Huels Islands Apt. 041\nJustuston, AL 51024', '401.492.0696', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(935, 100, 'Ulises Swaniawski', 'P', '660 Josephine Prairie\nJackymouth, DE 81376-6877', '+1 (354) 502-1621', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(936, 100, 'Ms. Sierra Schulist', 'P', '45926 Elias Shore Suite 034\nLake Omerfort, NC 18847-0510', '+1-319-589-6410', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(937, 100, 'Jarrett Maggio', 'P', '61590 Ryan Ports\nEast Tamiaborough, MD 12300-1237', '934.256.7697 x430', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(938, 100, 'Maximus Kihn Sr.', 'L', '8449 Leone Hill Suite 910\nHoegermouth, NM 65985', '1-917-358-5435 x37361', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(939, 100, 'Prof. Orin Herman Jr.', 'L', '59778 Toney Track\nNew Piper, ME 89945-1327', '1-250-415-3966 x24325', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(940, 100, 'Elizabeth Nader', 'P', '33962 Ransom Corners\nChaimstad, KS 15523-2886', '1-862-744-0344 x909', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(941, 100, 'Tressie Schuppe', 'P', '8996 Ryan Spring\nWest Jaime, IL 81391-4213', '805-722-9469', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(942, 100, 'Angeline Herzog', 'P', '53240 Ondricka Way\nLittelfurt, KY 25725-7429', '(590) 247-9095', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(943, 100, 'Gilda Kling', 'P', '702 Bins Field Apt. 129\nJohathanmouth, ID 03153-3981', '831.640.5956 x0595', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(944, 100, 'Dannie Walker', 'L', '530 Moore Mills Suite 318\nPatrickberg, VA 16592', '+1 (470) 906-1403', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(945, 100, 'Marcel Stehr', 'P', '723 VonRueden Drive\nWest Lavon, KY 88927-7170', '893.358.9547', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(946, 100, 'Tiffany Bins', 'L', '735 Dooley Flat\nWest Mayetown, KS 29368-1437', '1-463-477-4952 x4153', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(947, 100, 'Ms. Stephania Lindgren', 'P', '9106 Mante Parks Apt. 382\nLake Gageberg, FL 62580', '(492) 936-5841 x668', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(948, 100, 'Madge Hermann', 'L', '48082 Robert Trace\nNathanshire, VT 51214-1658', '228-440-7864', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(949, 100, 'Brisa Denesik', 'L', '32381 Adalberto Plains Suite 965\nSouth Billport, MD 92855-2107', '+18484633365', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(950, 100, 'Miss Adah Lehner', 'L', '8908 Martin Pass\nEast Hollisside, CA 89287-8431', '1-368-503-7168', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(951, 100, 'Dr. Rosalee Metz V', 'L', '1894 Yadira Ports\nNorth Leohaven, WY 67077-3459', '(217) 392-5874 x7603', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(952, 100, 'Mrs. Janis Dietrich IV', 'L', '74418 Gottlieb Shore\nLake Jadeside, MI 56422', '(524) 242-7002', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(953, 100, 'Sadie Mosciski', 'L', '7927 Jany Drive\nNorth Danielleport, WA 34764', '+1 (398) 262-2453', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(954, 100, 'Elijah O\'Reilly', 'P', '972 Monty Walk\nNew Garnettshire, WV 07707', '+1-347-499-7848', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(955, 100, 'King Nitzsche', 'L', '790 Margie Islands\nSkilesland, OH 89200-0817', '287-471-3981 x2708', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(956, 100, 'Dr. Theodore Keeling', 'L', '335 Eddie Estate\nEast Oscar, NV 77811-6381', '(248) 370-4724 x748', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(957, 100, 'Buck Schuster', 'P', '922 Hermiston Mountains Apt. 412\nSouth Noemi, CO 63418', '+15205306365', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(958, 100, 'Dock Streich Sr.', 'L', '986 Breitenberg Square\nKulasview, NM 81878', '(514) 596-6108 x002', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(959, 100, 'Jaylan Feil', 'P', '9320 Larue Corners\nEast Bradyville, WY 63919', '289-949-3657', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(960, 100, 'Prof. Judd Schuster', 'L', '574 Swift Loop\nJohnstonchester, HI 37323', '+12718500864', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(961, 100, 'Sibyl Terry', 'P', '769 Wyman Port Suite 709\nBaileyfort, OH 23135-0759', '230-656-9395 x666', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(962, 100, 'Sonya Botsford', 'L', '1315 Weber Corners Apt. 038\nJocelynmouth, TX 34391', '+1-998-346-8595', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(963, 100, 'Mrs. Fay Schneider Jr.', 'P', '298 McDermott Park\nPort Jedidiah, MI 57152', '737-603-8424', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(964, 100, 'Mrs. Lacey Crist', 'P', '2230 Abbey Island Suite 247\nLake Dorothy, NC 79869-5708', '1-642-661-6008 x0704', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(965, 100, 'Russel Schaden', 'L', '61990 Vilma Circle\nKundeville, NH 18975-6163', '1-537-365-0290 x9789', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(966, 100, 'Ms. Vivien Bashirian I', 'L', '7913 Angel Groves Suite 914\nEast Stefanietown, IN 65278-0544', '612-356-3997', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(967, 100, 'Cordell Mayer', 'L', '8786 Gleichner Glens\nFrancisville, KY 33309', '760-380-2959', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(968, 100, 'Reginald McCullough', 'P', '864 Prohaska Mall Apt. 781\nTurnerland, PA 50152-9513', '1-245-651-7747 x5778', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(969, 100, 'Gayle Steuber', 'L', '908 Keebler Mission\nGleasonstad, SD 35260', '318.544.4237', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(970, 100, 'Barton Cole', 'L', '8328 Price Square Suite 689\nLake Mellie, MD 49151', '(318) 552-0832 x6297', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(971, 100, 'Aurelio Bernhard', 'L', '308 Nolan Highway\nPort Camdenborough, VT 24968', '(667) 643-6443 x259', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(972, 100, 'Joany Keeling', 'P', '42354 Lincoln Turnpike Apt. 967\nStephanport, MO 22010', '(834) 370-7568', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(973, 100, 'Marlee Wuckert', 'P', '6930 Dashawn Vista\nPort Angela, MD 71983', '1-260-639-4251 x753', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(974, 100, 'Vivienne Funk DVM', 'L', '1140 Kaia Lodge\nNew Theochester, CO 24741', '1-863-553-9722', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(975, 100, 'Anjali Kertzmann Sr.', 'P', '164 Rempel Roads\nYostport, IA 93134', '+1-776-585-4608', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(976, 100, 'Mark Schuppe', 'P', '71189 Padberg Ramp Apt. 527\nFilomenaside, ND 04843-9578', '+18376134175', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(977, 100, 'Prof. Marlen Schowalter', 'L', '232 Merle Drive Apt. 927\nFloridabury, UT 86815', '628.744.3423', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(978, 100, 'Kayley Durgan DDS', 'P', '75892 Champlin Parks Apt. 809\nEmilestad, MS 88731', '834.351.0098 x80108', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(979, 100, 'Prof. Keenan Blick', 'L', '28455 Caleigh Bypass\nCollinsburgh, AZ 06924-7580', '1-838-348-7534 x367', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(980, 100, 'Talia White', 'L', '21879 Mohr Glens Suite 672\nPort Gerda, MI 16491-4800', '457.949.9456 x86365', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(981, 100, 'Meagan Simonis', 'P', '7105 Kaleb Courts\nSkylarmouth, NV 37088-5099', '1-521-424-4302 x75248', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(982, 100, 'Mariane King', 'P', '832 Karlie Parkways Suite 315\nCruickshankshire, NE 37421', '(295) 751-5775 x3881', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(983, 100, 'Mrs. Eunice Price II', 'P', '7380 Mayert Village\nNorth Lizzieville, AL 48472-6604', '+1 (957) 408-9854', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(984, 100, 'Prof. Susana Lebsack', 'L', '913 Reina Center\nNorth Davontown, FL 17282-3733', '747-553-4288', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(985, 100, 'Adelia Ledner', 'L', '403 Parisian Island\nPaigeland, KY 97507-8405', '782-315-7383 x00023', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(986, 100, 'Ethelyn Lind', 'L', '78178 Else Rapid Suite 282\nSouth Simeon, CO 74792', '795.261.3522 x72038', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(987, 100, 'Karlie Bogan', 'L', '5827 Miguel Divide\nLake Luna, AZ 73983-7341', '1-960-291-1098 x67064', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(988, 100, 'Madie Kling', 'L', '911 Kub Flat Suite 045\nLake Shaniefort, AZ 60470', '(580) 807-9431', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(989, 100, 'Roosevelt Kertzmann Sr.', 'L', '8936 Becker Glens Apt. 945\nEverardoborough, AL 37389-5671', '+1-606-699-1701', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(990, 100, 'Dr. Madalyn Thompson', 'L', '263 Hermann Garden\nSouth Susie, NY 54427', '721-638-7104', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(991, 100, 'Dorcas Borer', 'L', '82324 Champlin Drive Apt. 910\nNorth Destinyhaven, ID 52072-1474', '1-615-860-5786 x9600', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(992, 100, 'Sheila Treutel', 'L', '8553 Spencer Lock\nLake Arnaldofort, NY 02484', '(483) 578-6616 x76396', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(993, 100, 'Marisol Gerlach', 'P', '153 Kathryne Mountains Apt. 566\nSouth Garrison, CT 20300-4540', '+1 (361) 988-1083', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(994, 100, 'Ena Schimmel', 'L', '36392 Kaelyn Wells Suite 072\nSouth Cheyanneborough, SD 39602-7797', '442.243.6329 x2062', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(995, 100, 'Mr. Stephen Bernhard DVM', 'P', '637 Rosenbaum Courts\nLake Virginia, SC 63560-7586', '1-724-901-6617', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(996, 100, 'Dr. Elisabeth Weber DVM', 'L', '53767 Caroline Oval\nRathmouth, AL 39854-1891', '790.356.0317 x11608', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(997, 100, 'Willow Marquardt', 'P', '97455 Emma Light Suite 584\nEast Rickeyhaven, UT 29988-3405', '683.837.5726 x141', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(998, 100, 'Rosanna Stark', 'L', '76484 Keeling Shoals\nNew Brady, NY 14766-9365', '1-897-581-4804 x068', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(999, 100, 'Stella Hessel', 'L', '3831 Sammie Brook\nOtilialand, VT 84174', '+1-601-862-5631', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07'),
(1000, 100, 'Bethel McGlynn DVM', 'P', '2385 Madge Lodge Suite 392\nLake Nadialand, ME 50674', '809.751.8958 x46453', NULL, '2020-05-14 21:34:07', '2020-05-14 21:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `sumber`
--

CREATE TABLE `sumber` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_pemasukan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sumber`
--

INSERT INTO `sumber` (`id`, `nama_pemasukan`, `created_at`, `updated_at`) VALUES
(1, 'Ukhro CKM', '2020-06-10 06:19:37', '2020-06-10 06:19:37'),
(2, 'Uang Person', '2020-06-10 06:19:48', '2020-06-10 06:19:48'),
(3, 'Uang Makan Pondok', '2020-06-10 06:19:57', '2020-06-10 06:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `sumberpengeluaran`
--

CREATE TABLE `sumberpengeluaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_pengeluaran` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumberpengeluaran`
--

INSERT INTO `sumberpengeluaran` (`id`, `nama_pengeluaran`, `created_at`, `updated_at`) VALUES
(1, 'Belanja Masakan', '2020-06-10 17:08:17', NULL),
(2, 'Ukhro Guru', '2020-06-10 17:08:27', NULL),
(3, 'Bahan Bangunan', '2020-06-10 17:08:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Febrian', 'adirio205@gmail.com', NULL, '$2y$10$.76rBM9yX0XK.imbLu/JI.PMep3UsI2u0bSGhXdnNpwnIL0vG/bHi', 'Pj2leK3f0I4qkVesEneMotK3y2brWD6Zjekq2cVvULSX0DmwIpfD6FsMfvFY', '2020-04-29 19:51:20', '2020-04-29 19:51:20'),
(2, 'santri', 'Alsa Salsabila', 'alsone@gmail.com', NULL, '$2y$10$GMhIIbukKMv/9sbcpkJySO8d9lyeqV.6OFs/H5WElMwgh/zOkl2Gy', 'H6H74MCMrtKQc3HNkKEyYJrSHp0yRY1WyvBLtLbtcullg86HmZ7nnwGrY5lY', '2020-04-29 22:55:28', '2020-04-29 22:55:28'),
(4, 'santri', 'Distra Adi', 'febriandistra@gmail.com', NULL, '$2y$10$6uV/CbR5mDPP0vrMBSF2euJufX3qOr81efffJGJfBhbMt1itxK9qe', '2ssl1herXlSl4tySMIvCzVBb1JJweC4A4x1GOYnMFApOaFDQrsVfYsyRIFy3', '2020-04-30 01:39:22', '2020-04-30 01:39:22'),
(5, 'santri', 'Rio Febrian', 'anjaymabar@gmail.com', NULL, '$2y$10$X.Rsd6OjtIx1mXPkDkFDY.9GgvOaq/6pxPibszcchTlUwu4gczh62', 'EjwkbS6rlNQvgYf8TH43MEArVUxjfE1rbgzQbaZX0982XUYwf3YaWnD3ucpc', '2020-05-01 10:49:07', '2020-05-01 10:49:07'),
(6, 'santri', 'Ricky Picks', 'kojacks354@gmail.com', NULL, '$2y$10$s6CYXa5QA/n3w5dGYHmQ8e6VXYbo6D.8IzYuhZMtBxj6BzLRkhJV2', 'FdZFgS9LYkj9lVVaIWAl22HDpI6YYcsRuEM2SpTPkmwomrAo96vHfgFhuN9F', '2020-05-02 09:57:07', '2020-05-02 09:57:07'),
(7, 'santri', 'Nafis Athaya Shihab', 'nafisshihab91@gmail.com', NULL, '$2y$10$FF6BmUmprMfzqNs60I0v6eUJsjjremPt/LC1sOrz.QMb2lITXwQK2', 'pOV4yP3Vd06v60IPumHL3yYZcJVXTkvVk9dielaL9RwtleCkS6tr7muGgVT7', '2020-05-11 01:04:46', '2020-05-11 01:04:46'),
(15, 'santri', 'Dewi Wahyuni', 'dewadario@gmail.com', NULL, '$2y$10$Fnp3Zz0Pssq13pgmA4xCeOBtdiTx1ldUuMb4JbViaDFJ3acY9to5e', 'i4PKszbAnFsv7icvntCuiMbbeOH7YsJMIw89052bEj6Wkhn78GysTWRm6Saq', '2020-05-14 21:07:36', '2020-05-14 21:07:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi_santri`
--
ALTER TABLE `materi_santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sumber` (`sumber_id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sumberp` (`pengeluaran_id`);

--
-- Indexes for table `perizinan`
--
ALTER TABLE `perizinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumber`
--
ALTER TABLE `sumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumberpengeluaran`
--
ALTER TABLE `sumberpengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materi_santri`
--
ALTER TABLE `materi_santri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `perizinan`
--
ALTER TABLE `perizinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `sumber`
--
ALTER TABLE `sumber`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sumberpengeluaran`
--
ALTER TABLE `sumberpengeluaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD CONSTRAINT `fk_sumber` FOREIGN KEY (`sumber_id`) REFERENCES `sumber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `fk_sumberp` FOREIGN KEY (`pengeluaran_id`) REFERENCES `sumberpengeluaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
