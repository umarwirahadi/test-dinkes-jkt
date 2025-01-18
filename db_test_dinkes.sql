/*
 Navicat Premium Dump SQL

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 110502 (11.5.2-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : db_test_dinkes

 Target Server Type    : MariaDB
 Target Server Version : 110502 (11.5.2-MariaDB)
 File Encoding         : 65001

 Date: 18/01/2025 09:30:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (7, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (8, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (10, '2025_01_16_164112_create_rumahsakits_table', 1);
INSERT INTO `migrations` VALUES (11, '2025_01_16_170211_create_transaksi_satu_sehats_table', 1);
INSERT INTO `migrations` VALUES (12, '2025_01_16_170241_create_status_koneksis_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for rumahsakit
-- ----------------------------
DROP TABLE IF EXISTS `rumahsakit`;
CREATE TABLE `rumahsakit`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `organisasi_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_rs` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rs` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kelas_rs` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_kab` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rumahsakit
-- ----------------------------
INSERT INTO `rumahsakit` VALUES (1, '1000266408', '3172746', 'RS Khusus Daerah Duren Sawit', 'rsjiwadurensawit.developer@dto.kemkes.go.id', 'A', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (2, '1000266501', '3172024', 'RS Umum Daerah Budhi Asih', 'rsudbudhiasih.developer@dto.kemkes.go.id', 'B', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (3, '1000266173', '3173700', 'RS Umum Daerah Cempaka Putih', 'rsudcempakaputih.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (4, '1000266422', '3174074', 'RS Umum Daerah Cengkareng', 'rsudcengkareng.developer@dto.kemkes.go.id', 'B', 'Jakarta Barat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (5, '1000265662', '3175414', 'RS Umum Daerah Cilincing', 'rsudcilincing.developer@dto.kemkes.go.id', 'C', 'Jakarta Utara', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (6, '1000266068', '3172771', 'RS Umum Daerah Cipayung', 'rsudcipayung.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (7, '1000266056', '3172762', 'RS Umum Daerah Ciracas', 'rsudciracas.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (8, '1000265789', '3171792', 'RS Umum Daerah Jagakarsa', 'rsudjagakarsa.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (9, '1000265698', '3171800', 'RS Umum Daerah Jati Padang', 'rsudjatipadang.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (10, '1000266018', '3173701', 'RS Umum Daerah Johar Baru', 'rsudjoharbaru.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (11, '1000265777', '3174518', 'RS Umum Daerah Kalideres', 'rsudkecamatankalideres.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (12, '1000266329', '3171801', 'RS Umum Daerah Kebayoran Baru', 'rsudkebayoranbaru.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (13, '1000266070', '3171803', 'RS Umum Daerah Kebayoran Lama', 'rsudkebayoranlama.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (14, '1000265480', '3173699', 'RS Umum Daerah Kemayoran', 'rsudkemayoran.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (15, '1000265430', '3174517', 'RS Umum Daerah Kembangan', 'rsudkembangan.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (16, '1000265715', '3101002', 'RS Umum Daerah Kepulauan Seribu', 'rsudkepulauanseribu.developer@dto.kemkes.go.id', 'D', 'Kepulauan Seribu', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (17, '1000266197', '3175016', 'RS Umum Daerah Koja', 'rsudkoja.developer@dto.kemkes.go.id', 'B', 'Jakarta Utara', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (18, '1000265791', '3172761', 'RS Umum Daerah Kramat Jati', 'rsudkramatjati.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (19, '1000266020', '3171793', 'RS Umum Daerah Mampang Prapatan', 'rsudmampangprapatan.developer@dto.kemkes.go.id', 'D', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (20, '1000265478', '3174523', 'RS Umum Daerah Matraman', 'rsudmatraman.developer@dto.kemkes.go.id', 'D', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (21, '1000265985', '3175413', 'RS Umum Daerah Pademangan', 'rsudpademangan.developer@dto.kemkes.go.id', 'D', 'Jakarta Utara', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (22, '1000265404', '3171795', 'RS Umum Daerah Pasar Minggu', 'rsudpasarminggu.developer@dto.kemkes.go.id', 'B', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (23, '1000265428', '3172126', 'RS Umum Daerah Pasar Rebo', 'rsudpasarrebo.developer@dto.kemkes.go.id', 'B', 'Jakarta Timur', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (24, '1000265600', '3171791', 'RS Umum Daerah Pesanggrahan', 'rsudpesanggrahan.developer@dto.kemkes.go.id', 'C', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (25, '1000266159', '3173698', 'RS Umum Daerah Sawah Besar', 'rsudsawahbesar.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (26, '1000266317', '3174525', 'RS Umum Daerah Taman Sari', 'rsudtamansari.developer@dto.kemkes.go.id', 'D', 'Jakarta Barat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (27, '1000266214', '3173705', 'RS Umum Daerah Tanah Abang', 'rsudtanahabang.developer@dto.kemkes.go.id', 'D', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (28, '1000266484', '3175416', 'RS Umum Daerah Tanjung Priok', 'rsudtanjungpriok.developer@dto.kemkes.go.id', 'D', 'Jakarta Utara', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (29, '1000266525', '3173521', 'RS Umum Daerah Tarakan', 'rsudtarakanjakarta.developer@dto.kemkes.go.id', 'A', 'Jakarta Pusat', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (30, '1000265351', '3171790', 'RS Umum Daerah Tebet', 'rsudtebet.developer@dto.kemkes.go.id', 'C', 'Jakarta Selatan', '2025-01-18 00:49:45', '2025-01-18 00:51:14');
INSERT INTO `rumahsakit` VALUES (31, '1000265806', '3175412', 'RS Umum Daerah Tugu Koja', 'rsudtugukoja.developer@dto.kemkes.go.id', 'C', 'Jakarta Utara', '2025-01-18 00:49:45', '2025-01-18 00:51:14');

-- ----------------------------
-- Table structure for status_koneksi
-- ----------------------------
DROP TABLE IF EXISTS `status_koneksi`;
CREATE TABLE `status_koneksi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `organisasi_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status_koneksi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Terkoneksi',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_koneksi
-- ----------------------------
INSERT INTO `status_koneksi` VALUES (1, '1000265715', 'RS UMUM DAERAH KEPULAUAN SERIBU', 'Kab. Adm. Kep. Seribu, DKI Jakarta', 'Pulau Pramuka Rt.001 RW.004', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (2, '1000255966', 'RS ANAK DAN BUNDA HARAPAN KITA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Let.Jend. S Parman Kav. 87 Slipi Jakbar', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (3, '1000269503', 'RS GIGI DAN MULUT FKG UNIVERSITAS TRISAKTI', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Kyai Tapa No. 260 Grogol Jakarta Barat', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (4, '1000276245', 'RS IBU DAN ANAK METRO HOSPITALS KEBON JERUK', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Duri Raya No. 22 Duri Kepa Jakbar', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (5, '1000255954', 'RS JANTUNG DAN PEMBULUH DARAH HARAPAN KITA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. S. Parman Kav 87, Slipi', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (6, '1000256049', 'RS JIWA DR. SOEHARTO HEERDJAN', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Prof.Dr.Latumeten No. 1 Jakarta Barat', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (7, '1000256099', 'RS KANKER DHARMAIS', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. S Parman Kav.84-86 Slipi Jakarta Barat', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (8, '1000269486', 'RS KHUSUS MATA JAKARTA EYE CENTER KEDOYA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Terusan Arjuna Utara No.1, Kedoya Sel., Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11520', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (9, '1000278310', 'RS PONDOK INDAH PURI INDAH', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Puri Indah Raya,Blok S-2,Kel.Kembangan Selatan,Jakbar', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (10, '1000267402', 'RS UKRIDA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Arjuna Utara No. 6 Kel. Duri Kepa Kec. Kebon Jeruk', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (11, '1000277342', 'RS UMUM  ROYAL TARUMA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Daan Mogot No.34,Jakarta Barat', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (12, '1000277055', 'RS UMUM ANGGREK MAS', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Anggrek No. 2B rt.009/02 Kelapa Dua Kebon Jeruk', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (13, '1000284228', 'RS UMUM CINTA KASIH TZU CHI', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'JL. KAMAL RAYA OUTER RING ROAD CENGKARENG', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (14, '1000265430', 'RS UMUM DAERAH  KEMBANGAN', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Topaz Raya Blok F 2 No. 3 Rt.15 Rw. 07, Kelurahan Meruya Utara,  Kecamatan Kembangan, Jakarta Barat 11620', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (15, '1000266422', 'RS UMUM DAERAH CENGKARENG', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl.Kamal Raya Bumi Cengkareng Indah Cengkareng Timur', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (16, '1000265777', 'RS UMUM DAERAH KALIDERES', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Bedugul Blok NA, RT.008 RW.012, Perumahan Daan Mogot Baru, Kelurahan Kalideres, Kecamatan Kalideres, Kota Jakarta Barat, Provinsi DKI JakartaKode Pos: 11840', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (17, '1000272512', 'RS UMUM DR ABDUL RADJAK CENGKARENG', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Daan mogot KM. 17. Komplek Imperial Business Center Blok A No.1-10 Kel. Kalideres Kec. Kalideres', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (18, '1000269759', 'RS UMUM GRHA KEDOYA', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jln. Panjang Arteri No. 26 Kedoya Utara, kebon Jeruk', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (19, '1000277902', 'RS UMUM HERMINA DAAN MOGOT', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Kintamani Raya No. 2, Komp. Perumahan Daan Mogot Baru', 'terkoneksi', '2025-01-18 00:49:46', '2025-01-18 00:49:46');
INSERT INTO `status_koneksi` VALUES (20, '1000269838', 'RS UMUM MITRA KELUARGA KALIDERES', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'JL PETA SELATAN NO 1 RT/RW 007/011 KEL KALIDERES KEC KALIDERES JAKARTA BARAT', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (21, '1000255136', 'RS UMUM PELNI PETAMBURAN', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl.Aipda KS Tubun No. 92-94, Desa/Kelurahan Slipi, Kec Palmerah, Kota Adm. Jakarta Barat, Provinsi DKI Jakarta Kode Pos  11410', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (22, '1000279144', 'RS UMUM SILOAM HOSPITALS KEBON JERUK', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Perjuangan Raya Kav.8 Jakarta Barat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (23, '1000284670', 'RS UMUM SUMBER WARAS', 'Kota Adm. Jakarta Barat, DKI Jakarta', 'Jl. Kyai Tapa No.1 Grogol Jakbar', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (24, '1000280507', 'RS GIGI DAN MULUT FKG UNIV. INDONESIA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Salemba Raya No. 4 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (25, '1000281628', 'RS ISLAM JAKARTA CEMPAKA PUTIH', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Cempaka Putih Tengah I / 1 Jakarta Pusat - Indonesia', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (26, '1000269905', 'RS KHUSUS IBU ANAK BUNDA JAKARTA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Teuku Cik Ditiro No. 28 Menteng', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (27, '1000274560', 'RS KHUSUS JEC @MENTENG', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Teuku Cik Ditiro No.46 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (28, '1000273932', 'RS KHUSUS THT BEDAH KL PROKLAMASI', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Proklamasi No. 43, Menteng - Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (29, '1000275693', 'RS KHUSUS THT PROF NIZAR', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Kesehatan No. 9 Jakpus', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (30, '1000277603', 'RS MENTENG MITRA AFIA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Kalipasir No.9 Kel. Kebon Sirih, Kec. Menteng, Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (31, '1000285882', 'RS PRIMAYA PGI CIKINI', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Raden Saleh No. 40 Jakpus', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (32, '1000272706', 'RS SILOAM AGORA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Letjend Suprapto No.1', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (33, '1000264723', 'RS UMUM AL DR. MINTOHARJO', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Bendungan Hilir No.17, RT.4/RW.3, Bendungan. Hilir, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10210', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (34, '1000283779', 'RS UMUM BUDI KEMULIAAN', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Budi Kemuliaan No.25 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (35, '1000269137', 'RS UMUM BUNDA JAKARTA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Teuku Cik Ditiro No. 21 Menteng', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (36, '1000266173', 'RS UMUM DAERAH CEMPAKA PUTIH', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl.Rawasari Selatan No1', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (37, '1000266214', 'RS UMUM DAERAH TANAH ABANG', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. KH. Mas Mansyur No. 30 Kel. Kebon Kacang Kec. Tanah Abang, Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (38, '1000266525', 'RS UMUM DAERAH TARAKAN', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Kyai Caringin no. 7 RT 11 / RW 04, Cideng, Kec. Gambir', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (39, '1000284084', 'RS UMUM DR. ABDUL RADJAK SALEMBA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Salemba Tengah 24-28, Paseban, Senen, Jakarta Pusat, DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (40, '1000278401', 'RS UMUM HERMINA KEMAYORAN', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Selangit Blok B.10 Kav No.4 Kel. Gunung Sahari Selatan Kec. Kemayoran', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (41, '1000275033', 'RS UMUM HUSADA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Raya Mangga Besar No.137/139 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (42, '1000283377', 'RS UMUM KRAMAT 128', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Kramat Raya No.128,Jakpus', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (43, '1000279936', 'RS UMUM MITRA KEMAYORAN', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. HBR Motik Rt 013 Rw 006 Kel. Kebon Kosong Kec. Kemayoran  Jakarta Pusat 10630', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (44, '1000273865', 'RS UMUM MURNI TEGUH SUDIRMAN JAKARTA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Jend. Sudirman No. 86', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (45, '1000264462', 'RS UMUM PAD GATOT SOEBROTO', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Dr. Abdul  Rahman Saleh No. 24  Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (46, '1000255253', 'RS UMUM PERTAMINA JAYA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. A. Yani No. 2 By Pass Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (47, '1000283236', 'RS UMUM PRIMAYA EVASARI HOSPITAL', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Rawamangun No. 47, Rawasari, Cempaka Putih, Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (48, '1000285650', 'RS UMUM SINT CAROLUS', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Salemba Raya No.41 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (49, '1000269084', 'RS UMUM YARSI', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Letjen Suprapto Kelurahan Cempaka Putih Timur Kecamatan Cempaka Putih Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (50, '1000284486', 'RS UMUM YPK MANDIRI', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Gereja Theresia No. 22 Menteng Jakpus', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (51, '1000264644', 'RSGM LADOKGI R.E MARTADINATA', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Farmasi No.1, Bendungan Hilir, Tanah Abang, Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (52, '1000255942', 'RSUPN DR. CIPTO MANGUNKUSUMO', 'Kota Adm. Jakarta Pusat, DKI Jakarta', 'Jl. Diponegoro 71 Jakarta Pusat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (53, '1000269644', 'RS BEDAH SILOAM ASRI', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Duren Tiga Raya No. 20, Duren Tiga, Pancoran', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (54, '1000272744', 'RS BRAWIJAYA SAHARJO', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Dr. Saharjo No.199, RT.1/RW.1, Tebet Bar., Kec. Tebet, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12810', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (55, '1000284515', 'RS GIGI DAN MULUT UNIV. PROF. MOESTOPO', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Bintaro Permai Raya No 3 Jaksel', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (56, '1000275667', 'RS IBU DAN ANAK BRAWIJAYA DURENTIGA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Duren Tiga Raya No.5 Pancoran Jaksel', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (57, '1000269436', 'RS IBU DAN ANAK JWCC ASIH', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Panglima Polim III no.34 Melawai Kebayoran Baru', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (58, '1000271063', 'RS KHUSUS BEDAH HALIMUN', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Halimun No.9, Guntur Setiabudi, Desa/Kelurahan Guntur, Kec.Setiabudi, Kota Adm. Jakarta Selatan, Provinsi DKI Jakarta,Kode Pos: 12980', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (59, '1000278487', 'RS KHUSUS IBU DAN ANAK BRAWIJAYA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl..Taman Brawijaya No.1 Kel. Cepete Utara Kec. Kebayoran Baru', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (60, '1000270588', 'RS KHUSUS KANKER MRCCC SILOAM SEMANGGI', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Garnisun No. 2 - 3, RT 003, RW 004, Kel. Karet Semanggi, Kec. Setiabudi, Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (61, '1000280882', 'RS MUHAMMADIYAH TAMAN PURING', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Gandaria 1 No.20, RT.1/RW.2, Kramat Pela, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12130', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (62, '1000284307', 'RS ORTHOPEDI SIAGA RAYA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Siaga Raya Kav.4-8, Pejaten Barat, Pasar Minggu, Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (63, '1000284632', 'RS UMUM AGUNG', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Sultan Agung No.67 RT 1/ RW 8, Kelurahan Ps Manggis, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12970', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (64, '1000264682', 'RS UMUM AL CILANDAK', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Raya Cilandak KKO Cilandak Timur, Pasar Minggu Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (65, '1000283341', 'RS UMUM ANDHIKA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Warung Sila No. 8, RT.06/RW.04, Gudang Baru Ciganjur, Jagakarsa Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (66, '1000265789', 'RS UMUM DAERAH JAGAKARSA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Moh. Kahfi  I No.27A, Kecamatan Jagakarsa Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (67, '1000265698', 'RS UMUM DAERAH JATI PADANG', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Raya Ragunan No. 16 dan 17, Kelurahan Pasar Minggu, Kecamatan Pasar Minggu, Kota Administrasi Jakarta Selatan, Provinsi DKI Jakarta. Kode pos 12520', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (68, '1000266329', 'RS UMUM DAERAH KEBAYORAN BARU', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Abdul Majid No 28, Kelurahan Cipete Utara, Kecamatan Kebayoran Baru, Kota Administrasi Jakarta S', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (69, '1000265404', 'RS UMUM DAERAH PASAR MINGGU', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'JL. TB. SIMATUPANG NO. 1 KELURAHAN RAGUNAN, KECAMATAN PASAR MINGGU - JAKARTA SELATAN', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (70, '1000265600', 'RS UMUM DAERAH PESANGGRAHAN', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jalan Cenek I no. 1 Pesanggrahan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (71, '1000265351', 'RS UMUM DAERAH TEBET', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Prof. Dr. Soepomo, SH. No. 54, Tebet, Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (72, '1000284395', 'RS UMUM JAKARTA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Garnisun No. 1, Jl. Jend. Sudirman', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (73, '1000278645', 'RS UMUM JAKARTA MEDICAL CENTER (JMC)', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Buncit Raya No.15, Kalibata, Pancoran', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (74, '1000279417', 'RS UMUM KARTINI', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Ciledug Raya No.94-96 Cipulir, Keabayoran Lama', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (75, '1000270241', 'RS UMUM MAYAPADA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jalan Lebak Bulus I. Kav. 29', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (76, '1000275083', 'RS UMUM MEDISTRA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Jendral Gatot Subroto Kav  59Kelurahan  Kuningan Timur,  Kecamatan  SetiabudiJakarta SelatanDKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (77, '1000279924', 'RS UMUM PONDOK INDAH', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Metro Duta Kav. UE Pondok  Indah,Jaksel', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (78, '1000255083', 'RS UMUM PUSAT PERTAMINA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Kyai Maja No.43 Kebayoran Baru,Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (79, '1000267464', 'RS UMUM SILOAM MAMPANG', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Mampang Prpt. Raya No.16, RW.5, Duren Tiga, Kec. Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12760', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (80, '1000271465', 'RS UMUM SILOAM TB SIMATUPANG', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. RA Kartini No. 8 Cilandak', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (81, '1000283133', 'RS UMUM TEBET', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Letjen MT Haryono kav 13 Jakarta Selatan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (82, '1000273827', 'RS UMUM ZAHIRAH', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Sirsak No.21 RT/RW 009/001, Jagakarsa, Jakarta Selatan, DKI JAKARTA, 12620', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (83, '1000270772', 'RS YADIKA KEBAYORAN LAMA', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. Ciputat Raya No. 5', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (84, '1000255899', 'RSUP FATMAWATI', 'Kota Adm. Jakarta Selatan, DKI Jakarta', 'Jl. RS Fatmawati Cilandak,Jaksel', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (85, '1000265014', 'RS ANGKATAN UDARA DR. ESNAWAN ANTARIKSA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Merpati No. 2 Halim Perdana Kusuma, Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (86, '1000278475', 'RS EMC PULOMAS', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Pulomas Barat VI No. 20.', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (87, '1000264931', 'RS GIGI DAN MULUT ANGKATAN UDARA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl.Puntodewo 1 Dirgantara 2, Halim Perdanakusuma', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (88, '1000271453', 'RS IBU DAN ANAK RESTI MULYA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Pahlawan Komarudin no. 05 penggilingan - Cakung', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (89, '1000270174', 'RS IBU DAN ANAK SAMMARIE BASRA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Basuki Rachmat No. 31 Pondok Bambu, Kota Administrasi Jakarta Timur, Provinsi DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (90, '1000279780', 'RS IBU DAN ANAK SAYYIDAH', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Taman malaka Selatan No.6 Pondok Kelapa, Jaktim', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (91, '1000281018', 'RS ISLAM JAKARTA PONDOK KOPI', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Pondok Kopi Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (92, '1000269979', 'RS JANTUNG JAKARTA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Matraman Raya No. 23, RT 002 RW 001, Jakarta Timur, DKI Jakarta. 13140', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (93, '1000281630', 'RS JIWA ISLAM KLENDER', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Bunga Rampai X, Perumnas Klender , Malaka Jaya Kecamatan Duren Sawit Kota Administrasi Jakarta Timur, Provinsi DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (94, '1000255851', 'RS KETERGANTUNGAN OBAT', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Lapangan Tembak No 75 Kelurahan Cibubur Kecamatan  Ciracas Jakarta Timur 13720', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (95, '1000284137', 'RS KHUSUS BEDAH RAWAMANGUN', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Balai Pustaka Raya No. 29 - 31, Rawamangun', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (96, '1000266408', 'RS KHUSUS DAERAH DUREN SAWIT', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Duren Sawit Baru Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (97, '1000256166', 'RS PUSAT OTAK NASIONAL PROF DR. DR. MAHAR MARDJONO', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. MT Haryono Kav. 11 Kel. Cawang Kec. Kramat Jati', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (98, '1000264606', 'RS PUSDIKKES', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Bogor Km. 20, Kramat Jati, Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (99, '1000264266', 'RS TK. II M. RIDWAN MEURAKSA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Taman Mini I RT 004 / RW 02 Kel. Pinangranti Kec. Makasar', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (100, '1000264436', 'RS TK. IV CIJANTUNG', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Mahoni No. 1 Cijantung II Rt 005/004  Pasar Rebo Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (101, '1000280648', 'RS UMUM ADHYAKSA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Hankam No. 60 Ceger Cipayung', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (102, '1000269046', 'RS UMUM ALIA HOSPITAL', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Pahlawan Revolusi No. 100 Pondok Bamabu', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (103, '1000275813', 'RS UMUM ANTAM MEDIKA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Pemuda Raya No. 1A, Kelurahan Jatinegara Kaum, Kecamatan Pulo Gadung, Kota Jakarta Timur, Provinsi DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (104, '1000255485', 'RS UMUM BHAYANGKARA TK. I R.SAID SUKANTO', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Bogor Kramat Jati,Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (105, '1000266501', 'RS UMUM DAERAH BUDHI ASIH', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Dewi Sartika, Cawang III/ 200,Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (106, '1000266068', 'RS UMUM DAERAH CIPAYUNG', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Mini III RT 004 RW 003 Kelurahan Bambu Apus, Kecamatan CipayungKota Jakarta TimurDKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (107, '1000265791', 'RS UMUM DAERAH KRAMAT JATI', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jln. Raya Inpres No. 48', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (108, '1000265478', 'RS UMUM DAERAH MATRAMAN', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Kebon kelapa raya no. 29 kel. Utan kayu selatan kec. Matraman', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (109, '1000265428', 'RS UMUM DAERAH PASAR REBO', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. TB Simatupang No.30', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (110, '1000270021', 'RS UMUM HAJI JAKARTA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Pondok Gede', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (111, '1000278396', 'RS UMUM HARAPAN BUNDA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Bogor Km.22 No.44 Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (112, '1000285090', 'RS UMUM HARUM', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Tarum Barat, Kalimalang', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (113, '1000273877', 'RS UMUM HERMINA JATINEGARA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Jatinegara Barat 126, Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (114, '1000277287', 'RS UMUM MEDIROS', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Perintis Kemerdekaan  Kav.149 Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (115, '1000280557', 'RS UMUM PENGAYOMAN CIPINANG', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Bekasi Timur 170 B, Jaktim', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (116, '1000277550', 'RS UMUM PREMIER JATINEGARA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Jatinegara Timur No.85-87,Jaktim', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (117, '1000279015', 'RS UMUM RESTU KASIH', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Raya Bogor KM 19 No. 3A Kramat Jati', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (118, '1000285844', 'RS UMUM UNIVERSITAS KRISTEN INDONESIA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. May.Jen Soetoyo No.2 Kel.Cawang,Kec. Kramat jati, Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (119, '1000284113', 'RS UMUM YADIKA', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Pahlawan Revolusi No.47 Pondok Bambu Jaktim', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (120, '1000256130', 'RSUP PERSAHABATAN', 'Kota Adm. Jakarta Timur, DKI Jakarta', 'Jl. Persahabatan Raya No. 1, Jakarta Timur', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (121, '1000276764', 'RS IBU DAN ANAK FAMILY', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Pluit Mas I Blok A No 2A - 5A Pejagalan Penjaringan Jakarta Utara', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (122, '1000271477', 'RS IBU DAN ANAK GRAND FAMILY', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Pantai Indah Selatan I Komp. Elang Laut Boulevard Kav. I No. 1 Penjaringan Jakarta Utara', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (123, '1000285636', 'RS IBU DAN ANAK ST. YUSUF', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Ganggeng Raya No. 9 Kel. Sungai Bambu Tanjung Priok', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (124, '1000283937', 'RS ISLAM JAKARTA SUKAPURA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Tipar Cakung No.5, Kelurahan Sukapura, Kecamatan Cilincing, Kota Jakarta Utara, Provinsi Daerah Khusus Ibukota Jakarta 14140', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (125, '1000255904', 'RS PENYAKIT INFEKSI PROF. DR. SULIANTI SAROSO', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Sunter Permai Raya No. 2, Rt 02/Rw 12, Papanggo, Kec. Tanjung Priok, Jakarta Utara, DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (126, '1000255150', 'RS UMUM  PELABUHAN TANJUNG PRIOK', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Kramat Jaya Tg Priok Jakut', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (127, '1000282622', 'RS UMUM  SATYA NEGARA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Agung Utara Raya No. 1 Jakut', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (128, '1000285569', 'RS UMUM AKADEMIK ATMA JAYA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Pluit Raya Jakarta Utara No. 02', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (129, '1000265985', 'RS UMUM DAERAH  PADEMANGAN', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Budi Mulia Raya No.2 Pademangan Barat', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (130, '1000266484', 'RS UMUM DAERAH  TANJUNG PRIOK', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Bugis No. 03 Kel. Kebon Bawang Kec. Tanjung Priok', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (131, '1000265662', 'RS UMUM DAERAH CILINCING', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Madya Kebantenan Nomor 4, Semper Timur, Cilincing', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (132, '1000266197', 'RS UMUM DAERAH KOJA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Deli No.4 Tanjung Priok,Jakut', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (133, '1000265806', 'RS UMUM DAERAH TUGU KOJA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Walang Permai No 39, RT.008 RW.012, Kel. Tugu Utara, Kec. Koja, Kota Administrasi Jakarta Utara, DKI Jakarta', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (134, '1000277419', 'RS UMUM DUTA INDAH', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Teluk Gong Raya No. 12 Kel. Pejagalan Kec. Penjaringan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (135, '1000268690', 'RS UMUM FIRDAUS', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Komp. Bea Cukai Jl. Siak J5/14', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (136, '1000278463', 'RS UMUM MITRA KELUARGA KELAPA GADING', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Bukit Gading Raya Kav.2', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (137, '1000276099', 'RS UMUM PANTAI INDAH KAPUK', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Pantai Indah Utara 3 Pantai Indah Kapuk, Kapuk Muara, Penjaringan', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (138, '1000276116', 'RS UMUM PEKERJA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Raya Cakung Cilincing RT 001 RW 002 Kel. Sukapura Kec. Cilincing Jakarta Utara', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (139, '1000273815', 'RS UMUM PORT MEDICAL CENTER', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Enggano No. 10 Tanjung Priok, Jakarta Utara', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (140, '1000275461', 'RS UMUM PURI MEDIKA', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Sungai Bambu 5A Tanjung Priok', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (141, '1000284096', 'RS UMUM ROYAL PROGRESS', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Danau Sunter Utara, Sunter Paradise I', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');
INSERT INTO `status_koneksi` VALUES (142, '1000279431', 'RS UMUM SUKMUL', 'Kota Adm. Jakarta Utara, DKI Jakarta', 'Jl. Tawes No.18-20 Tanjung Priuk  Jakarta Utara 14310', 'terkoneksi', '2025-01-18 00:49:47', '2025-01-18 00:49:47');

-- ----------------------------
-- Table structure for transaksi_satu_sehat
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_satu_sehat`;
CREATE TABLE `transaksi_satu_sehat`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `organisasi_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pengiriman_data` int(11) NOT NULL DEFAULT 0,
  `tanggal_transaksi` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi_satu_sehat
-- ----------------------------
INSERT INTO `transaksi_satu_sehat` VALUES (1, '1000265715', 'RS UMUM DAERAH KEPULAUAN SERIBU', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (2, '1000255966', 'RS ANAK DAN BUNDA HARAPAN KITA', 12, '2024-05-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (3, '1000269503', 'RS GIGI DAN MULUT FKG UNIVERSITAS TRISAKTI', 15, '2024-05-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (4, '1000276245', 'RS IBU DAN ANAK METRO HOSPITALS KEBON JERUK', 33, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (5, '1000255954', 'RS JANTUNG DAN PEMBULUH DARAH HARAPAN KITA', 34, '2024-04-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (6, '1000256049', 'RS JIWA DR. SOEHARTO HEERDJAN', 24, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (7, '1000256099', 'RS KANKER DHARMAIS', 27, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (8, '1000269486', 'RS KHUSUS MATA JAKARTA EYE CENTER KEDOYA', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (9, '1000278310', 'RS PONDOK INDAH PURI INDAH', 12, '2024-05-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (10, '1000267402', 'RS UKRIDA', 52, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (11, '1000277342', 'RS UMUM  ROYAL TARUMA', 42, '2024-04-28', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (12, '1000277055', 'RS UMUM ANGGREK MAS', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (13, '1000284228', 'RS UMUM CINTA KASIH TZU CHI', 12, '2024-05-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (14, '1000265430', 'RS UMUM DAERAH  KEMBANGAN', 52, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (15, '1000266422', 'RS UMUM DAERAH CENGKARENG', 42, '2024-04-28', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (16, '1000265777', 'RS UMUM DAERAH KALIDERES', 6, '2024-04-03', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (17, '1000272512', 'RS UMUM DR ABDUL RADJAK CENGKARENG', 34, '2024-05-17', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (18, '1000269759', 'RS UMUM GRHA KEDOYA', 15, '2024-05-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (19, '1000277902', 'RS UMUM HERMINA DAAN MOGOT', 33, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (20, '1000269838', 'RS UMUM MITRA KELUARGA KALIDERES', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (21, '1000255136', 'RS UMUM PELNI PETAMBURAN', 76, '2024-04-25', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (22, '1000279144', 'RS UMUM SILOAM HOSPITALS KEBON JERUK', 42, '2024-04-28', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (23, '1000284670', 'RS UMUM SUMBER WARAS', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (24, '1000280507', 'RS GIGI DAN MULUT FKG UNIV. INDONESIA', 34, '2024-05-17', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (25, '1000281628', 'RS ISLAM JAKARTA CEMPAKA PUTIH', 15, '2024-05-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (26, '1000269905', 'RS KHUSUS IBU ANAK BUNDA JAKARTA', 33, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (27, '1000274560', 'RS KHUSUS JEC @MENTENG', 34, '2024-04-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (28, '1000273932', 'RS KHUSUS THT BEDAH KL PROKLAMASI', 24, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (29, '1000275693', 'RS KHUSUS THT PROF NIZAR', 15, '2024-05-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (30, '1000277603', 'RS MENTENG MITRA AFIA', 42, '2024-04-28', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (31, '1000285882', 'RS PRIMAYA PGI CIKINI', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (32, '1000272706', 'RS SILOAM AGORA', 12, '2024-05-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (33, '1000264723', 'RS UMUM AL DR. MINTOHARJO', 52, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (34, '1000283779', 'RS UMUM BUDI KEMULIAAN', 42, '2024-04-28', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (35, '1000269137', 'RS UMUM BUNDA JAKARTA', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (36, '1000266173', 'RS UMUM DAERAH CEMPAKA PUTIH', 12, '2024-05-12', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (37, '1000266214', 'RS UMUM DAERAH TANAH ABANG', 33, '2024-04-24', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (38, '1000266525', 'RS UMUM DAERAH TARAKAN', 32, '2024-04-30', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (39, '1000284084', 'RS UMUM DR. ABDUL RADJAK SALEMBA', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (40, '1000283341', 'RS UMUM ANDHIKA', 75, '2024-05-10', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (41, '1000265789', 'RS UMUM DAERAH JAGAKARSA', 76, '2024-04-25', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (42, '1000265698', 'RS UMUM DAERAH JATI PADANG', 27, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (43, '1000266329', 'RS UMUM DAERAH KEBAYORAN BARU', 33, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (44, '1000265404', 'RS UMUM DAERAH PASAR MINGGU', 6, '2024-04-03', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (45, '1000265600', 'RS UMUM DAERAH PESANGGRAHAN', 33, '2024-04-23', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (46, '1000265351', 'RS UMUM DAERAH TEBET', 34, '2024-05-17', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (47, '1000284395', 'RS UMUM JAKARTA', 33, '2024-04-24', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (48, '1000278645', 'RS UMUM JAKARTA MEDICAL CENTER (JMC)', 27, '2024-04-22', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (49, '1000279417', 'RS UMUM KARTINI', 14, '2024-05-01', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (50, '1000275083', 'RS UMUM MEDISTRA', 2, '2024-05-14', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (51, '1000283133', 'RS UMUM TEBET', 75, '2024-05-10', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (52, '1000273827', 'RS UMUM ZAHIRAH', 24, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (53, '1000280648', 'RS UMUM ADHYAKSA', 52, '2024-04-19', '2025-01-18 00:49:47', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (54, '1000266501', 'RS UMUM DAERAH BUDHI ASIH', 42, '2024-04-28', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (55, '1000266068', 'RS UMUM DAERAH CIPAYUNG', 6, '2024-04-03', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (56, '1000265791', 'RS UMUM DAERAH KRAMAT JATI', 33, '2024-04-23', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (57, '1000265478', 'RS UMUM DAERAH MATRAMAN', 34, '2024-05-17', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (58, '1000265428', 'RS UMUM DAERAH PASAR REBO', 33, '2024-04-24', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (59, '1000265985', 'RS UMUM DAERAH  PADEMANGAN', 32, '2024-04-30', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (60, '1000266484', 'RS UMUM DAERAH  TANJUNG PRIOK', 34, '2024-04-21', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (61, '1000265662', 'RS UMUM DAERAH CILINCING', 34, '2024-04-12', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (62, '1000266197', 'RS UMUM DAERAH KOJA', 12, '2024-05-12', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (63, '1000265806', 'RS UMUM DAERAH TUGU KOJA', 33, '2024-04-24', '2025-01-18 00:49:48', '2025-01-18 00:51:15');
INSERT INTO `transaksi_satu_sehat` VALUES (64, '1000277419', 'RS UMUM DUTA INDAH', 27, '2024-04-22', '2025-01-18 00:49:48', '2025-01-18 00:51:16');
INSERT INTO `transaksi_satu_sehat` VALUES (65, '1000268690', 'RS UMUM FIRDAUS', 33, '2024-04-22', '2025-01-18 00:49:48', '2025-01-18 00:51:16');
INSERT INTO `transaksi_satu_sehat` VALUES (66, '1000278463', 'RS UMUM MITRA KELUARGA KELAPA GADING', 2, '2024-05-14', '2025-01-18 00:49:48', '2025-01-18 00:51:16');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
