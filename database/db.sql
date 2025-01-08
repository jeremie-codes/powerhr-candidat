-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for hr_core
DROP DATABASE IF EXISTS `hr_core`;
CREATE DATABASE IF NOT EXISTS `hr_core` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hr_core`;

-- Dumping structure for table hr_core.account_ratings
DROP TABLE IF EXISTS `account_ratings`;
CREATE TABLE IF NOT EXISTS `account_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rating` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.account_ratings: ~0 rows (approximately)

-- Dumping structure for table hr_core.candidates
DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `SkillSet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HighestQualificationHeld` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `School` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExperienceDetails` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidates_user_id_unique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.candidates: ~2 rows (approximately)
INSERT INTO `candidates` (`id`, `SkillSet`, `HighestQualificationHeld`, `School`, `ExperienceDetails`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(4, NULL, NULL, NULL, NULL, 65, '2024-12-23 14:17:22', '2024-12-23 14:17:22', NULL),
	(5, NULL, NULL, NULL, NULL, 66, '2024-12-23 15:39:24', '2024-12-23 15:39:24', NULL),
	(6, NULL, NULL, NULL, NULL, 67, '2024-12-23 15:58:02', '2024-12-23 15:58:02', NULL),
	(7, NULL, NULL, NULL, NULL, 68, '2024-12-24 03:55:50', '2024-12-24 03:55:50', NULL),
	(8, NULL, NULL, NULL, NULL, 69, '2025-01-07 07:09:21', '2025-01-07 07:09:21', NULL),
	(9, NULL, NULL, NULL, NULL, 70, '2025-01-07 07:45:27', '2025-01-07 07:45:27', NULL);

-- Dumping structure for table hr_core.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.categories: ~10 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'ut', 'nulla-autem-et-hic-facere-commodi-dolore', 'Velit sed quisquam ut provident saepe dolorem consequatur.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(2, 'atque', 'ut-et-error-quas-est-eligendi-quo', 'Sequi et iusto sint officiis.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(3, 'quibusdam', 'aut-quisquam-ab-impedit-et-eligendi', 'Aliquid rerum omnis at et rerum accusamus qui dolores.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(4, 'est', 'id-dolores-illo-dolorum-porro-sapiente-dolorem', 'Cupiditate quasi quae molestias.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(5, 'labore', 'odio-quis-ut-sunt-quibusdam-facere-qui', 'Sint ut qui autem animi.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(6, 'aut', 'modi-non-aut-neque-numquam', 'Consequatur suscipit reprehenderit error est.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(7, 'quisquam', 'fugit-voluptas-est-neque-qui', 'Aut consequuntur qui recusandae eius.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(8, 'voluptatem', 'labore-voluptatem-at-molestias-autem-animi-dolor-neque', 'Iusto laboriosam rerum quibusdam at aut voluptatum quos.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(9, 'quibusdam', 'qui-quam-libero-eius-quis', 'Et placeat omnis in debitis et.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(10, 'quis', 'possimus-repellat-doloremque-vitae-eius-et-ipsum-et', 'Repellat quia eos inventore cumque.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL);

-- Dumping structure for table hr_core.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.clients: ~10 rows (approximately)
INSERT INTO `clients` (`id`, `user_id`, `name`, `adress`, `activity`, `phone`, `logo`, `contact_name`, `contact_phone`, `contact_email`, `website`, `description`, `city`, `country`, `created_at`, `updated_at`) VALUES
	(1, 55, 'Keebler Ltd', '455 West View Suite 005\nMohrborough, AL 72965-7853', 'beatae', '+1-425-988-2793', 'https://via.placeholder.com/200x200.png/00ccee?text=business+Faker+et', 'Jayne Schmitt', '1-585-724-6605', 'haylie31@example.com', 'http://www.wolf.org/pariatur-inventore-quo-cum-omnis-cupiditate-maiores-alias-illum', 'Itaque deleniti vel enim.', 'Pipershire', 'Tunisia', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(2, 57, 'Gibson LLC', '96337 Brekke Trace\nArnaldotown, KY 65902-9470', 'perferendis', '(434) 917-1091', 'https://via.placeholder.com/200x200.png/001177?text=business+Faker+mollitia', 'Dr. Vinnie Kihn DDS', '+1-314-577-3577', 'zackary32@example.net', 'https://goldner.com/quo-adipisci-magnam-harum-voluptas-nulla-cumque-neque.html', 'Nemo autem saepe itaque fugiat.', 'Paucekland', 'Pitcairn Islands', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(3, 55, 'Schmitt-Dach', '4336 Marks Lakes\nFranciscafort, ME 31305-0248', 'voluptatum', '(469) 892-0025', 'https://via.placeholder.com/200x200.png/007733?text=business+Faker+vitae', 'Prof. Modesto Balistreri Jr.', '737.259.0219', 'dewitt92@example.org', 'http://www.christiansen.com/impedit-corporis-amet-harum-sunt', 'Perspiciatis rerum rerum quis ut consequatur cumque.', 'Aramouth', 'New Zealand', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(4, 57, 'Purdy and Sons', '571 Sydnie Throughway\nWest Danial, NE 56237', 'rerum', '1-540-847-1263', 'https://via.placeholder.com/200x200.png/00aadd?text=business+Faker+voluptate', 'Clement Corkery', '+1 (518) 281-3041', 'wkuvalis@example.org', 'https://www.kassulke.org/exercitationem-reprehenderit-architecto-reprehenderit', 'Enim non numquam voluptas et.', 'West Amiyachester', 'Palau', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(5, 57, 'Emmerich-Lueilwitz', '51591 Stoltenberg Burgs\nWest Raymundostad, NV 97080', 'maxime', '+1.820.329.6476', 'https://via.placeholder.com/200x200.png/00ddcc?text=business+Faker+nesciunt', 'Ms. Alvina Dickinson Jr.', '+1-551-445-2234', 'paris.vandervort@example.org', 'https://www.keeling.net/non-adipisci-ipsam-vitae-voluptates', 'Nisi ducimus repudiandae reiciendis optio.', 'Verlieton', 'Iraq', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(6, 54, 'Boehm-Haag', '7393 Marks Pine Apt. 192\nEmoryberg, CA 02363-7440', 'eos', '+1-912-336-6729', 'https://via.placeholder.com/200x200.png/002288?text=business+Faker+ea', 'Demetris Gislason', '+1-520-209-5188', 'jaren83@example.org', 'http://www.frami.org/', 'Asperiores dolores quod nemo sunt et quis.', 'Lake Jodie', 'Namibia', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(7, 57, 'Stehr-Kerluke', '71695 Casandra Wall Suite 191\nKirlinchester, ME 70018-8765', 'modi', '+1.610.625.2326', 'https://via.placeholder.com/200x200.png/00dd55?text=business+Faker+quidem', 'Fernando Lynch', '+1 (804) 846-6260', 'tmonahan@example.com', 'http://www.moore.com/', 'Aut enim sed est eos qui quas ipsam voluptatem.', 'Port Moniquebury', 'Tokelau', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(8, 57, 'Doyle, Crist and Funk', '407 Miles Lodge Apt. 256\nLake Jomouth, VT 92648-1727', 'tenetur', '951-590-3754', 'https://via.placeholder.com/200x200.png/0055aa?text=business+Faker+tempore', 'Pattie Will', '(667) 517-2734', 'jschmeler@example.net', 'https://www.hahn.com/dolorem-esse-veritatis-sapiente-quisquam', 'Nemo vero deleniti eos sed labore.', 'Lake Frieda', 'El Salvador', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(9, 56, 'Davis Group', '57298 Murazik Garden Apt. 202\nNorth Sanford, MD 83748-6084', 'aliquid', '+1-380-550-9048', 'https://via.placeholder.com/200x200.png/00bb88?text=business+Faker+minus', 'Mrs. Lavonne Kiehn', '+1.650.587.5804', 'halie.rowe@example.org', 'https://bradtke.com/voluptatem-necessitatibus-rerum-quos-perspiciatis.html', 'Ut maxime et modi mollitia et consequuntur dolorum ut.', 'Cronatown', 'Taiwan', '2024-12-20 14:57:28', '2024-12-20 14:57:28'),
	(10, 57, 'Runolfsson Inc', '9154 Blick Gardens Apt. 461\nErickafort, NY 57958', 'velit', '301-715-9812', 'https://via.placeholder.com/200x200.png/00ffbb?text=business+Faker+voluptatum', 'Alexys Weissnat MD', '+1-332-439-8683', 'francis.daugherty@example.org', 'http://oberbrunner.info/reiciendis-maxime-sit-quas-est-fugit', 'In alias eum ut possimus veniam minima.', 'North Pauline', 'Argentina', '2024-12-20 14:57:28', '2024-12-20 14:57:28');

-- Dumping structure for table hr_core.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table hr_core.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int NOT NULL,
  `place` int NOT NULL DEFAULT '1',
  `matricule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT '0',
  `is_open` tinyint(1) NOT NULL DEFAULT '0',
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_until` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_matricule_unique` (`matricule`),
  KEY `jobs_user_id_foreign` (`user_id`),
  CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.jobs: ~10 rows (approximately)
INSERT INTO `jobs` (`id`, `user_id`, `category_id`, `title`, `description`, `salary`, `place`, `matricule`, `location`, `duration`, `work_type`, `contract_type`, `is_current`, `is_open`, `skills`, `available_until`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 54, 1, 'Railroad Conductors', 'Illo est quis et autem veritatis tenetur debitis voluptatum. Voluptatibus commodi vel soluta.\n\nSuscipit commodi non aliquam ut veritatis id officiis. Qui eos laboriosam soluta similique consectetur animi ullam. Repellat autem magni et animi optio.\n\nBeatae fugiat odio laboriosam porro. Nam cupiditate nihil iure aliquam laudantium quaerat autem. Quas voluptatem possimus omnis excepturi aut. Molestiae illum corporis fugit recusandae.', 125861, 1, 'JOB-0095', 'Dejahbury', '1 year', 'Hybrid', 'Contract', 1, 0, 'cumque,temporibus,maiores,amet,sint', '2025-03-20', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(2, 54, 2, 'Philosophy and Religion Teacher', 'Libero consequatur nulla dolores exercitationem quos possimus. Et minus iste sed quis culpa veritatis. Doloremque consectetur reiciendis minus vel repudiandae iusto atque. Vitae necessitatibus velit ducimus ut sed voluptate rerum.\n\nVoluptatibus eos eaque perspiciatis impedit. Aut molestias repellendus officia. Est cum sint est repellat id officia voluptatem sapiente. Incidunt culpa dignissimos quasi quia. Nisi quas illo minus exercitationem dolores.\n\nQuo quia est asperiores velit deserunt tempore. Nulla vel quia aut. Voluptatum magnam velit sequi officiis sapiente ipsum est.', 147263, 1, 'JOB-5430', 'East Luraton', '3 months', 'Hybrid', 'Part-time', 1, 0, 'eum,dolore,totam,vel,et', '2025-05-25', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(3, 53, 3, 'Council', 'Dolores et et quibusdam impedit itaque. Expedita temporibus repellendus sint. Est neque perspiciatis harum ut magnam repellat nemo.\n\nExercitationem placeat enim id voluptatibus culpa iusto itaque. Quis ex tempore iste autem in tempora aliquam. Ut ut voluptatem recusandae.\n\nPerferendis eveniet est eaque quia aperiam et et. Quos sed qui sit excepturi voluptas quos amet. Nihil impedit velit impedit corrupti provident distinctio. Harum culpa nostrum non officia.', 34011, 1, 'JOB-0850', 'East Francisco', '2 years', 'Remote', 'Part-time', 0, 0, 'consequatur,neque,sed,perspiciatis,ex', '2025-02-01', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(4, 57, 4, 'Archivist', 'Aut fuga earum magni aliquid accusantium. Neque et doloribus reiciendis fugit dolorem optio dolorum. Porro omnis qui aut nemo sed. Omnis quas odio unde.\n\nFugit quasi distinctio sequi maiores non velit. Omnis blanditiis in cupiditate quaerat pariatur. Optio quis eum veritatis natus aperiam. Nulla eum consequatur vero fugit tempore et cumque.\n\nQui ratione velit placeat ipsum voluptas. Expedita alias error impedit. Facere neque sit aspernatur quae odit. Ut nihil incidunt velit a.', 55773, 1, 'JOB-8346', 'Port Alvahaven', '1 year', 'Remote', 'Contract', 1, 1, 'sit,eius,ut,aut,adipisci', '2025-04-21', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(5, 54, 5, 'Prepress Technician', 'Quia dolor aut id. Aut aliquid aperiam quia ratione aut deleniti magnam. At rerum odio ratione architecto quia. Deserunt sit sequi laboriosam in qui ut.\n\nNon et dolores vero quis eum adipisci voluptas eveniet. Ut asperiores sit nulla quis molestias voluptas. Eligendi ipsam natus commodi. Sed et et nulla perferendis tempore maxime enim. Et dolor a rerum ut.\n\nDignissimos nesciunt iste dolore nesciunt in. Iusto aut quia eligendi aliquid. Adipisci sed sit cum hic blanditiis quasi recusandae sint. Dolor numquam saepe consequatur et repellendus nesciunt.', 149208, 1, 'JOB-0614', 'Coralieshire', '3 months', 'On-site', 'Part-time', 1, 1, 'possimus,temporibus,quia,labore,perferendis', '2025-03-23', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(6, 56, 6, 'Geoscientists', 'Sed dolorem molestias consequatur cupiditate repellendus nesciunt ratione. Iure ex aspernatur quibusdam et dolorem soluta. Ipsam ut dicta perspiciatis et omnis. Maxime cupiditate deleniti ea magni corrupti et cumque.\n\nA sit sapiente eligendi et quia. Voluptates velit quis repudiandae deleniti eligendi laboriosam alias.\n\nSint aspernatur voluptates est sit ut. Temporibus id ex esse fuga suscipit. Repellendus asperiores magnam aliquid. Qui itaque cum tempora.', 37817, 1, 'JOB-0856', 'North Vanhaven', '2 years', 'Hybrid', 'Full-time', 1, 0, 'facere,qui,qui,voluptas,facere', '2025-02-09', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(7, 53, 7, 'Tax Preparer', 'Ut amet quibusdam rerum accusantium iure vero amet. Ea id eos sit quae. Eius voluptatem inventore tenetur deleniti nemo dignissimos rerum. Nobis blanditiis doloremque aut.\n\nQuisquam dolores dolorum ad tenetur aut eos sunt ut. Porro velit aut vel consequatur quia reprehenderit beatae. Ea aspernatur ratione iure.\n\nIn debitis voluptate soluta delectus amet. Rerum ea animi est provident ut. Quaerat itaque qui vero et.', 69832, 1, 'JOB-9451', 'Lunamouth', '1 year', 'Hybrid', 'Part-time', 0, 0, 'ea,minima,distinctio,aut,itaque', '2025-01-17', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(8, 56, 8, 'Singer', 'Amet porro labore voluptatibus ut. Ut reprehenderit culpa qui est consequatur. Dicta molestiae culpa quia mollitia. Quia earum inventore quas eum repellat qui vel.\n\nSit rerum voluptatum pariatur vitae quos culpa earum. Qui facere est voluptatem natus quas modi. Consequatur sunt distinctio provident qui maxime iusto provident. Natus magnam accusantium dolores.\n\nVoluptatem voluptatem sit doloribus et rem rerum dolores natus. Assumenda nemo eligendi totam rerum consequatur veniam maxime quis. Adipisci voluptas quam similique ab officiis dignissimos neque mollitia. Non unde nihil vitae tempora sed dolores perferendis. Architecto iure animi deserunt debitis.', 148058, 1, 'JOB-5309', 'Kreigerton', '1 year', 'Hybrid', 'Contract', 0, 1, 'est,explicabo,earum,ut,enim', '2025-05-31', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(9, 57, 9, 'Brickmason', 'Sit vel nihil dolores velit et. Dolorum molestias ullam sed totam dicta. Vero qui dolores qui dolores pariatur.\n\nReiciendis sint id eos molestias reprehenderit perferendis. Quod accusantium odio aut et iusto veritatis. Vero odio quis qui in corporis asperiores.\n\nVel nemo soluta dolore quas. Consequatur neque ipsa sit ex ullam eaque. Porro dolorum aperiam quod est sint dolorum.', 52533, 1, 'JOB-0166', 'Horaceshire', '6 months', 'On-site', 'Full-time', 0, 1, 'velit,porro,soluta,corrupti,aut', '2025-05-29', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(10, 57, 10, 'Stationary Engineer', 'Rerum totam atque unde ex veniam et. Tenetur molestias ea voluptas ut recusandae. Perspiciatis eum consequuntur provident nostrum nam. Id maxime voluptates nulla ut hic perferendis.\n\nSit laboriosam at error facilis ab et. Quia non voluptatem harum aut expedita quidem. Ad magni quis et non beatae et. Sed libero expedita porro.\n\nEa aliquid voluptatem rerum eum praesentium fugiat. Ad porro at et nihil eum rerum quos. Voluptatibus non quo cumque dolorem. Ad similique incidunt omnis.', 41339, 1, 'JOB-9409', 'East Claire', '2 years', 'Remote', 'Full-time', 0, 1, 'numquam,est,voluptatibus,labore,praesentium', '2025-03-14', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL);

-- Dumping structure for table hr_core.job_users
DROP TABLE IF EXISTS `job_users`;
CREATE TABLE IF NOT EXISTS `job_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `job_id` bigint unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `matricule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_approved_at` datetime DEFAULT NULL,
  `user_approved_at` datetime DEFAULT NULL,
  `client_rejected_at` datetime DEFAULT NULL,
  `user_rejected_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.job_users: ~0 rows (approximately)

-- Dumping structure for table hr_core.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.migrations: ~24 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2020_05_21_100000_create_teams_table', 1),
	(7, '2020_05_21_200000_create_team_user_table', 1),
	(8, '2020_05_21_300000_create_team_invitations_table', 1),
	(9, '2023_12_18_060842_create_sessions_table', 1),
	(10, '2024_12_04_085056_create_permission_tables', 1),
	(11, '2024_12_04_085108_create_ratings_table', 1),
	(12, '2024_12_05_001455_create_categories_table', 1),
	(13, '2024_12_05_071026_create_clients_table', 1),
	(14, '2024_12_05_074541_create_profiles_table', 1),
	(15, '2024_12_05_093921_create_personnes_table', 1),
	(16, '2024_12_05_114434_add_softdeletes_to_users_table', 1),
	(17, '2024_12_05_122927_create_jobs_table', 1),
	(18, '2024_12_05_141937_add_user_to_users_table', 1),
	(19, '2024_12_05_183202_add_place_to_users_table', 1),
	(20, '2024_12_05_184719_create_skills_table', 1),
	(21, '2024_12_06_104500_create_job_users_table', 1),
	(22, '2024_12_07_083322_create_account_ratings_table', 1),
	(23, '2024_12_14_093700_create_prospects_table', 1),
	(24, '2024_12_15_001701_create_views_table', 1),
	(27, '2024_12_23_144209_create_candidates_table', 2);

-- Dumping structure for table hr_core.model_has_permissions
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table hr_core.model_has_roles
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.model_has_roles: ~47 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 11),
	(1, 'App\\Models\\User', 12),
	(2, 'App\\Models\\User', 13),
	(2, 'App\\Models\\User', 14),
	(2, 'App\\Models\\User', 15),
	(2, 'App\\Models\\User', 16),
	(2, 'App\\Models\\User', 17),
	(2, 'App\\Models\\User', 18),
	(2, 'App\\Models\\User', 19),
	(2, 'App\\Models\\User', 20),
	(2, 'App\\Models\\User', 21),
	(2, 'App\\Models\\User', 22),
	(2, 'App\\Models\\User', 23),
	(2, 'App\\Models\\User', 24),
	(2, 'App\\Models\\User', 25),
	(2, 'App\\Models\\User', 26),
	(2, 'App\\Models\\User', 27),
	(2, 'App\\Models\\User', 28),
	(2, 'App\\Models\\User', 29),
	(2, 'App\\Models\\User', 30),
	(2, 'App\\Models\\User', 31),
	(2, 'App\\Models\\User', 32),
	(3, 'App\\Models\\User', 33),
	(3, 'App\\Models\\User', 34),
	(3, 'App\\Models\\User', 35),
	(3, 'App\\Models\\User', 36),
	(3, 'App\\Models\\User', 37),
	(3, 'App\\Models\\User', 38),
	(3, 'App\\Models\\User', 39),
	(3, 'App\\Models\\User', 40),
	(3, 'App\\Models\\User', 41),
	(3, 'App\\Models\\User', 42),
	(3, 'App\\Models\\User', 43),
	(3, 'App\\Models\\User', 44),
	(3, 'App\\Models\\User', 45),
	(3, 'App\\Models\\User', 46),
	(3, 'App\\Models\\User', 47),
	(3, 'App\\Models\\User', 48),
	(3, 'App\\Models\\User', 49),
	(3, 'App\\Models\\User', 50),
	(3, 'App\\Models\\User', 51),
	(3, 'App\\Models\\User', 52),
	(5, 'App\\Models\\User', 53),
	(5, 'App\\Models\\User', 54),
	(5, 'App\\Models\\User', 55),
	(5, 'App\\Models\\User', 56),
	(5, 'App\\Models\\User', 57),
	(2, 'App\\Models\\User', 65),
	(2, 'App\\Models\\User', 66),
	(2, 'App\\Models\\User', 67),
	(2, 'App\\Models\\User', 68),
	(2, 'App\\Models\\User', 69),
	(2, 'App\\Models\\User', 70);

-- Dumping structure for table hr_core.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table hr_core.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.permissions: ~0 rows (approximately)

-- Dumping structure for table hr_core.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table hr_core.personnes
DROP TABLE IF EXISTS `personnes`;
CREATE TABLE IF NOT EXISTS `personnes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `matricule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postNom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateNaissance` date NOT NULL,
  `sexe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codePostal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personnes_matricule_unique` (`matricule`),
  KEY `personnes_user_id_foreign` (`user_id`),
  CONSTRAINT `personnes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.personnes: ~41 rows (approximately)
INSERT INTO `personnes` (`id`, `user_id`, `matricule`, `nom`, `postNom`, `prenom`, `dateNaissance`, `sexe`, `nationalite`, `adresse`, `codePostal`, `ville`, `telephone`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 16, '488299508', 'Roberts', 'Jacobi', 'Willie', '2007-02-25', 'female', 'Chile', '8120 Itzel Knoll Apt. 807\nEffertzbury, IL 25133', '60666', 'New Adahland', '+1-603-663-0902', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(2, 14, '142814116', 'Willms', 'Murray', 'Muriel', '2006-07-07', 'male', 'Niue', '1697 Lesch Dam\nLake Tyson, MI 75751', '04444', 'Bernierport', '1-651-936-0561', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(3, 10, '158152767', 'Murphy', 'Ratke', 'Junius', '1982-04-18', 'male', 'Croatia', '14848 Colleen Greens\nFeeneytown, WV 33789', '81289', 'Luzbury', '1-915-531-8982', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(4, 35, '683116034', 'Hane', 'Stroman', 'Anastasia', '1972-01-15', 'female', 'Yemen', '291 Selmer Tunnel\nLake Bretborough, SD 22000', '93000', 'New Giuseppe', '818-773-5183', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(5, 54, '132070596', 'Lebsack', 'Blanda', 'Yvette', '1989-04-23', 'female', 'New Caledonia', '75839 Weimann Wells Apt. 042\nLake Viva, TN 50143-6816', '44370', 'New Harveyhaven', '+17164900368', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(6, 9, '213260007', 'Howell', 'Langosh', 'Alfred', '1971-06-22', 'male', 'Brunei Darussalam', '93547 Christiansen Shores\nKacimouth, WI 54094', '91302', 'West Charles', '854.927.7647', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(7, 11, '584962456', 'Gerhold', 'Gleichner', 'Whitney', '1981-06-18', 'male', 'Angola', '8679 Katlyn Manors Suite 259\nEarlmouth, CT 29904-9082', '48858-2557', 'Rafaelatown', '1-302-856-8574', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(8, 13, '053422938', 'Cronin', 'Lebsack', 'Eduardo', '2011-10-24', 'male', 'Czech Republic', '91843 Amaya Road\nConsidinechester, CO 95498', '21333', 'Schoenmouth', '218.439.5113', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(9, 32, '183717012', 'Jast', 'Krajcik', 'Claudie', '2004-12-05', 'female', 'Lithuania', '597 Bashirian Overpass\nWest Jackeline, NV 76988-1983', '45267-9245', 'East Nathanial', '847.997.8570', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(10, 47, '762020840', 'Walker', 'Will', 'Judge', '1978-10-01', 'male', 'Luxembourg', '962 Dare Meadows Apt. 030\nPort Jeffreyburgh, SC 08001', '66679-1070', 'Ziemannmouth', '+1-640-916-4935', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(11, 56, '261307897', 'Feeney', 'Jakubowski', 'Kathlyn', '2023-10-03', 'male', 'Andorra', '7579 Coty Turnpike Suite 060\nPort Florinefort, NC 84146-7755', '59798-6213', 'Robertofort', '+19562870163', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(12, 39, '473074108', 'Reynolds', 'Homenick', 'Johnnie', '1998-05-27', 'female', 'Sao Tome and Principe', '89761 Parker Mission\nJessicaton, UT 08595-9542', '06679-3266', 'South Tyreseview', '1-520-840-4807', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(13, 29, '428520203', 'Boehm', 'Treutel', 'Alexander', '1988-01-05', 'male', 'Bolivia', '10408 Savannah Port\nPort Nasirberg, DE 07308', '40277', 'Malvinaton', '+1-786-746-8368', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(14, 46, '622438005', 'Halvorson', 'Heaney', 'Lew', '2013-09-09', 'female', 'Iceland', '97310 Gerald Hollow Suite 390\nBahringerchester, ID 50083-9666', '17713-3562', 'Kalechester', '620.398.2132', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(15, 42, '271857478', 'Schoen', 'Zemlak', 'Anna', '2020-03-24', 'male', 'Sudan', '43465 Ruthie Overpass Apt. 424\nStewarttown, FL 68112-9537', '01848', 'Lake Zulabury', '678.874.7868', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(16, 18, '826643158', 'Parisian', 'Prohaska', 'Janie', '2011-09-24', 'male', 'Iceland', '7599 Jaylan Manor\nMayershire, NC 35022-7308', '72758-8827', 'Aishaside', '989-378-8871', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(17, 49, '575252296', 'Wilkinson', 'McDermott', 'Elody', '1995-12-17', 'female', 'Bahamas', '37247 Asa Locks\nOlsonburgh, KY 75607', '42985', 'Salliemouth', '318.364.2395', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(18, 1, '199701405', 'Baumbach', 'Bechtelar', 'Wyman', '1996-07-18', 'male', 'Algeria', '3886 Trace Loaf\nMosciskiside, MN 50180', '23340', 'Lenorefort', '+1-341-617-1360', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(19, 14, '146600628', 'Abshire', 'Senger', 'Rowland', '1987-04-12', 'female', 'Turkmenistan', '675 Emory Pass Suite 082\nSwaniawskiberg, FL 83352-9391', '02199-4189', 'Alanisfort', '1-646-666-4002', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(20, 3, '076973211', 'Renner', 'Smitham', 'Emanuel', '1990-05-04', 'female', 'Madagascar', '623 Natasha Wall Suite 722\nNew Cletusmouth, CO 47511-9215', '88346', 'Port Leslie', '406-499-5616', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(21, 19, '718201575', 'Rice', 'Simonis', 'Garret', '2009-04-24', 'male', 'Iran', '5055 Boehm Mountains Apt. 718\nRyleyland, VT 04710', '06220-3086', 'New Laurencestad', '279-605-9828', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(22, 21, '969985869', 'Rempel', 'Bogan', 'Damaris', '1978-10-23', 'female', 'Micronesia', '190 Donnelly Mount\nUnachester, KY 28779', '83640-1415', 'East Jaleel', '1-820-502-7407', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(23, 48, '702308000', 'Miller', 'Gaylord', 'Nels', '1988-07-09', 'male', 'Micronesia', '20462 Mathew Harbors Apt. 316\nNorth Simeon, CT 97491', '60585', 'Juniuschester', '985.440.6195', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(24, 8, '340769727', 'Wyman', 'Berge', 'Lucious', '2021-11-23', 'male', 'Singapore', '9749 Lubowitz Ridges Suite 872\nKohlerport, KY 38323', '39882', 'Port Tristian', '+18205368873', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(25, 1, '056919209', 'Murray', 'Lakin', 'Yvonne', '1983-02-22', 'female', 'China', '856 Ziemann Stream\nEliberg, NE 56288-7450', '21737-3105', 'West Al', '1-432-424-9645', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(26, 2, '120828387', 'Anderson', 'O\'Keefe', 'Angel', '1987-06-22', 'male', 'Timor-Leste', '740 Hartmann Light\nCollierburgh, IN 58342', '40433-3246', 'East Wade', '276-846-0813', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(27, 37, '486810734', 'Gerlach', 'Schmeler', 'Linnie', '2002-09-17', 'female', 'Nigeria', '2278 Brianne Highway Suite 029\nLarsonchester, DE 80572-3843', '10670-2188', 'Schultztown', '+18508821901', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(28, 36, '984619642', 'Welch', 'Quitzon', 'Avis', '1979-05-26', 'female', 'Vietnam', '48425 Levi Port\nNorth Anahi, RI 39549-5056', '81516-6263', 'North Leopold', '1-283-925-3035', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(29, 2, '170063401', 'Moen', 'Herzog', 'Liam', '2006-12-04', 'male', 'Lithuania', '51940 Stanton Parkways Apt. 167\nNew Dockborough, NE 33014', '60444-7323', 'Baumbachmouth', '1-989-892-1878', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(30, 51, '297208546', 'Kautzer', 'Rogahn', 'Savion', '1999-02-04', 'male', 'Montenegro', '692 Fern Corners Apt. 886\nWest Norenemouth, WI 27538', '78298', 'Aidanville', '341.839.9660', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(31, 44, '208657138', 'Heathcote', 'Beahan', 'Kamron', '2024-09-22', 'male', 'Hong Kong', '38006 Donnie Stravenue\nSusannaside, DE 22855-6151', '93248', 'West Torrey', '(248) 248-8447', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(32, 29, '659354522', 'Carter', 'Padberg', 'Karelle', '1975-06-12', 'female', 'Ghana', '108 Eldon Lodge\nSouth Lempitown, MN 91910', '13512', 'Angelicaport', '1-501-268-3318', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(33, 17, '610056344', 'Lesch', 'Shanahan', 'Alexys', '1971-07-10', 'male', 'United States Virgin Islands', '4673 Stiedemann Mount Suite 284\nMurlchester, NM 28354', '22692-1385', 'Zulaufburgh', '(828) 849-3507', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(34, 56, '470540489', 'Hoppe', 'Hills', 'Parker', '1989-02-12', 'female', 'Mayotte', '9247 Kassulke Mills\nAlanfort, DE 64995', '98370-5292', 'West Kyler', '1-662-736-4593', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(35, 4, '906806648', 'Treutel', 'Cole', 'Vesta', '2012-01-03', 'female', 'Nigeria', '8891 Swift Fort Suite 188\nGuyville, ND 36065', '79002', 'Layneville', '+1.754.453.3590', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(36, 14, '199921079', 'Walker', 'Walter', 'Leanne', '2000-01-04', 'male', 'Germany', '16723 Jaron Route\nYolandamouth, FL 17253', '61440', 'Lake Jeanne', '+1-364-616-6088', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(37, 10, '260426460', 'Ziemann', 'Klocko', 'Retta', '1980-01-16', 'female', 'Malaysia', '950 Lakin Club Suite 133\nKesslerland, WY 87700-0818', '00423-2047', 'North Lurlinemouth', '(662) 523-6944', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(38, 44, '002045193', 'Kozey', 'Funk', 'Amalia', '1995-01-25', 'female', 'Nigeria', '488 Ruth Landing Suite 509\nPort Elifort, CO 88731', '76799-9701', 'Dickinsonland', '689.721.6366', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(39, 52, '039948968', 'Stanton', 'Kuvalis', 'Haleigh', '2023-09-15', 'male', 'Kazakhstan', '8442 Gennaro Cape Apt. 610\nMadgeberg, SD 57390', '77366', 'Jeremiestad', '321.747.4448', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(40, 56, '285787349', 'Lowe', 'Walker', 'Eulalia', '1991-02-13', 'male', 'Bulgaria', '8492 Kautzer Oval Suite 960\nSouth Roxanne, ID 98560', '11776', 'Port Ledaton', '+1.801.697.0535', '2024-12-20 14:57:27', '2024-12-20 14:57:27', NULL),
	(42, 65, 'OFR2688', '', '', '', '2007-02-25', '', '', '', '', '', '', '2024-12-23 14:17:22', '2024-12-23 14:17:22', NULL),
	(43, 66, 'OFR8913', '', '', '', '2007-02-25', '', '', '', '', '', '', '2024-12-23 15:39:24', '2024-12-23 15:39:24', NULL),
	(44, 67, 'OFR8429', '', '', '', '2007-02-25', '', '', '', '', '', '', '2024-12-23 15:58:02', '2024-12-23 15:58:02', NULL),
	(45, 68, 'OFR8714', '', '', '', '2007-02-25', '', '', '', '', '', '', '2024-12-24 03:55:50', '2024-12-24 03:55:50', NULL),
	(46, 69, 'OFR1151', 'Monga', 'Nsenga', 'Jonathan', '2007-02-25', '', '', '', '', '', '0996980422', '2025-01-07 07:09:21', '2025-01-07 07:09:21', NULL),
	(47, 70, 'OFR4060', '', '', '', '2007-02-25', '', '', '', '', '', '', '2025-01-07 07:45:27', '2025-01-07 07:45:27', NULL);

-- Dumping structure for table hr_core.profiles
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_foreign` (`user_id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.profiles: ~41 rows (approximately)
INSERT INTO `profiles` (`id`, `user_id`, `title`, `location`, `is_available`, `website`, `linkedin`, `twitter`, `github`, `bio`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 16, 'Compensation and Benefits Manager', 'Okunevachester', 1, 'http://www.runte.net/', 'https://willms.com/quae-incidunt-vitae-explicabo-qui-mollitia-saepe-atque.html', 'http://torphy.com/quia-corrupti-in-blanditiis-corrupti-molestias', 'http://www.graham.com/quis-fuga-rerum-sapiente-cum-excepturi-nisi-placeat-qui', 'Qui enim vitae nemo. Esse earum impedit provident ad omnis commodi quo. Dicta quis in qui alias provident. Architecto quasi iste magnam quas in est.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(2, 10, 'Motor Vehicle Operator', 'Estherport', 0, 'http://torp.com/aut-aut-vel-et-fugiat-eligendi', 'http://www.durgan.com/', 'https://www.jacobi.com/optio-enim-unde-ut-commodi-odio-velit', 'http://daniel.com/quo-ipsa-atque-voluptatem-et-ducimus-in.html', 'Aut aspernatur velit veniam aut est quas voluptatem. Quis modi et totam. Dolore numquam debitis ducimus ut. Ut et sed velit minus qui maxime.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(3, 48, 'Agricultural Technician', 'Port Freddy', 1, 'https://littel.org/atque-asperiores-quibusdam-eius-alias-est-impedit-quibusdam-minus.html', 'https://www.boyle.com/repudiandae-natus-est-dolor-aperiam-natus-dolorem-laboriosam-et', 'http://www.green.biz/voluptatem-nobis-expedita-et-veritatis-officia', 'http://vandervort.com/reprehenderit-ex-mollitia-minus-voluptas', 'Atque amet ab officiis iste. Odit atque velit eveniet aut. Ut cupiditate inventore reiciendis eos accusamus qui laborum.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(4, 15, 'Heat Treating Equipment Operator', 'West Ava', 0, 'https://www.padberg.com/debitis-est-similique-non-eaque', 'http://www.feest.com/qui-illum-quam-sunt-delectus.html', 'http://klein.com/laborum-assumenda-aut-voluptatem-aliquid', 'http://www.grimes.com/ipsa-dolores-dolorum-explicabo-et', 'Deserunt sit porro vel doloremque suscipit totam provident. Vel hic ut inventore molestiae. Quidem rem aliquam ut assumenda. Et facilis et recusandae asperiores nulla ipsam.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(5, 28, 'Orthodontist', 'Lelamouth', 0, 'http://rau.net/', 'http://www.block.com/', 'http://tremblay.com/sit-dolor-architecto-voluptatibus-dolor-ullam', 'http://bogisich.com/aut-non-harum-placeat-laboriosam-hic-perspiciatis', 'Repellendus non amet excepturi fuga omnis qui. Rerum dolor saepe quis autem non occaecati optio possimus. Eum aliquid quis magnam sunt.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(6, 37, 'Optical Instrument Assembler', 'Thurmanside', 0, 'https://www.fisher.net/corrupti-eligendi-dolorem-ut-dolor', 'http://bogan.info/harum-et-illo-cumque-sit.html', 'http://www.gerhold.com/est-et-similique-quisquam-non', 'http://bayer.com/est-a-quia-est-officiis-et-dolorum-blanditiis', 'Expedita molestiae rem omnis eligendi magni. Sit ipsam iusto accusamus magni non non. Aliquid quo omnis aut dolorem sapiente repellat quis. Dolores enim unde aut corporis ab omnis fuga.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(7, 44, 'Meat Packer', 'South Keithview', 1, 'https://www.champlin.com/rem-iste-sequi-aut-error-illum-est-corrupti', 'http://bernier.net/repellendus-molestiae-distinctio-corrupti-consequuntur-voluptatem-repellendus-in.html', 'http://king.com/qui-saepe-culpa-voluptatem-occaecati', 'http://ferry.info/laudantium-rerum-rem-ut-quo', 'Velit corporis voluptates neque porro molestiae laudantium sint repellat. Voluptatem nobis aliquid ut eius explicabo facilis. Modi qui facilis veritatis est pariatur.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(8, 4, 'Fast Food Cook', 'East Clairville', 0, 'http://www.quigley.com/rem-quia-quidem-quo-eos-dolorum-iure', 'http://robel.com/dolores-officiis-qui-sunt-autem-maxime-porro', 'http://www.king.com/repellat-laboriosam-quod-omnis-nesciunt', 'http://towne.com/', 'Et ut possimus fugit doloremque magni minus. Quos dicta enim et reiciendis perspiciatis eum quidem. Dolorem quis id dolor voluptates. Libero minus dolor consequatur totam. Consectetur necessitatibus asperiores voluptate rerum minus est est.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(9, 21, 'Baker', 'Schuppehaven', 0, 'http://corkery.org/beatae-eum-mollitia-ex-autem-et-sunt', 'https://heaney.com/assumenda-debitis-saepe-ducimus-perferendis-et-autem.html', 'http://www.stanton.biz/ea-consequuntur-odit-repellat-et', 'http://www.ratke.com/', 'Reiciendis aut ipsa quia sed consequatur quia consequuntur. Optio natus dolor qui officia et odit. Dolorem rerum quod sunt minima. Ratione maxime aspernatur itaque nulla ullam.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(10, 5, 'Milling Machine Operator', 'East Lucindastad', 1, 'http://www.waelchi.com/molestiae-omnis-mollitia-quia-molestiae', 'http://skiles.com/est-nesciunt-error-aliquid-doloribus-tempora-laboriosam', 'http://anderson.net/ratione-dolorum-omnis-veniam-labore-ut-ut', 'http://www.auer.com/', 'Earum doloremque facere placeat dignissimos tenetur cum. Officia maiores provident itaque quae. Minima possimus veniam sunt voluptatibus recusandae dolore ipsam. Enim ut maxime qui explicabo.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(11, 57, 'Historian', 'North Columbustown', 0, 'http://kuhic.com/', 'http://www.homenick.net/quia-reiciendis-commodi-ut-rem-sed-pariatur-et', 'http://armstrong.com/itaque-ut-doloremque-beatae-ea-dolor-molestiae', 'http://www.brekke.biz/dolorum-numquam-a-corrupti-consequatur', 'Possimus aut cum quia delectus id eligendi. Repellendus quia dignissimos repellendus architecto et et consequatur. Officia magni odit quos deserunt molestiae.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(12, 49, 'Material Moving Worker', 'Port Rogerton', 0, 'https://graham.org/qui-a-earum-nobis-qui.html', 'http://ankunding.com/inventore-magni-eveniet-blanditiis-vel', 'http://www.hickle.com/fuga-veritatis-quam-asperiores-soluta-earum', 'http://www.yundt.com/', 'Omnis maiores non quam ut. Eos ipsa illo fugiat qui. Tempora consequuntur itaque nihil qui autem quidem.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(13, 20, 'Protective Service Worker', 'West Odabury', 1, 'http://www.ward.info/rerum-soluta-impedit-totam-iste-dignissimos-eveniet', 'http://rempel.org/ipsa-mollitia-id-error-modi-voluptas-quidem-eaque-deleniti.html', 'https://www.lebsack.org/sed-rerum-labore-magnam-non-et-ex-a', 'http://www.willms.biz/est-quae-qui-asperiores-qui', 'Recusandae deleniti qui nemo ea fuga voluptatem. Ratione similique eum voluptatem quia eligendi. Dolores non soluta unde harum corrupti minus at fugit.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(14, 25, 'Drywall Ceiling Tile Installer', 'Herbertstad', 0, 'http://www.murphy.com/', 'http://mitchell.com/neque-ad-officiis-quibusdam-id-velit.html', 'https://www.boyer.com/animi-ratione-id-qui-explicabo', 'http://www.waters.com/molestias-quasi-odio-asperiores-id.html', 'Accusamus quibusdam est nulla assumenda. Non animi enim nam magnam. Sit fugiat dolorem ducimus officiis nihil nobis.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(15, 22, 'Rail Yard Engineer', 'East Orphaberg', 0, 'https://conroy.com/architecto-ut-et-distinctio.html', 'https://runte.com/saepe-veritatis-dolorem-voluptatum-voluptatem-minima-porro-aspernatur.html', 'http://www.spinka.com/debitis-eum-eius-quam', 'http://kihn.info/qui-tempora-corrupti-iste-rerum-vero.html', 'Aut tempore facilis quae eos illo et ut expedita. Nisi explicabo nihil reprehenderit velit. Mollitia nihil consequatur voluptatem velit voluptas fugiat.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(16, 47, 'Captain', 'Lake Imogene', 1, 'http://www.reichert.biz/aliquam-reprehenderit-animi-harum-voluptatem-illo.html', 'http://www.wyman.com/reiciendis-quo-nam-voluptas-exercitationem', 'http://www.dietrich.com/quam-veniam-et-et', 'http://spinka.com/fugiat-exercitationem-et-dolores-commodi-voluptatem', 'Quibusdam non eos repudiandae labore adipisci distinctio. Accusamus est incidunt quam esse quo. Aut ab iure amet corrupti quo est esse omnis. Natus officiis facilis sed dolores qui ipsam enim.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(17, 20, 'Education Teacher', 'Margarettachester', 1, 'https://prosacco.com/eveniet-sit-minus-unde-deserunt-aut-occaecati-tempora-quia.html', 'http://www.mcdermott.com/', 'http://kunze.org/quia-et-similique-ea-id-perspiciatis.html', 'http://towne.info/aut-sunt-voluptatem-mollitia-velit-quas-eaque-minima', 'Blanditiis non autem accusantium eaque in labore omnis dolores. Nostrum iure exercitationem est non sunt et aliquid tempore. Occaecati nostrum voluptatem iusto qui voluptatem tempora consequatur maiores. Et quasi rerum nemo.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(18, 18, 'Psychology Teacher', 'Lake Dustyview', 0, 'http://bogan.com/dolor-sapiente-nam-consequuntur-animi-sed.html', 'http://www.turcotte.com/', 'https://wintheiser.com/esse-iure-dolor-et-consequatur-ipsa-autem-neque-harum.html', 'http://www.bruen.biz/optio-sequi-necessitatibus-vitae', 'Provident velit cumque sint ipsam sint vitae sit. Ut voluptas accusantium alias quia quia. Optio magnam aspernatur voluptatum illo error et ullam.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(19, 17, 'Astronomer', 'Gerardview', 1, 'http://turcotte.com/animi-sed-libero-facilis-itaque-molestiae-hic-dicta-itaque', 'http://larson.com/ut-quis-laboriosam-ducimus-maxime-ut', 'http://www.kunde.biz/', 'http://schmeler.net/nam-nihil-non-eveniet-minus-sit-cum-quia-veritatis', 'Sed cumque quo illo sed animi. Nam ut nam dolor odit ea saepe voluptatum. Vel rerum est debitis deleniti mollitia. Et officia quidem quas qui molestiae aperiam voluptatum.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(20, 48, 'Library Worker', 'Watsicaburgh', 0, 'http://www.barrows.com/culpa-aut-voluptatem-mollitia-et-minima', 'https://www.batz.com/et-commodi-perspiciatis-quasi-est-cum', 'http://www.marks.net/', 'http://johnson.info/libero-enim-ut-culpa-est-excepturi', 'Ducimus aut nulla sit libero qui sit. Ut amet quia nulla rerum. Animi aliquam reiciendis quod labore architecto et. Accusantium est atque eum eligendi voluptatem ut molestiae.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(21, 3, 'Motor Vehicle Inspector', 'Pagacmouth', 0, 'http://www.mertz.com/est-eaque-dolorem-dolorem-reprehenderit-temporibus.html', 'http://www.hamill.com/eligendi-ex-inventore-quis-beatae-consequatur', 'http://mclaughlin.net/nulla-possimus-laborum-est.html', 'http://www.russel.info/ipsum-pariatur-impedit-tempore-incidunt-quae-animi-impedit', 'Natus sunt alias harum et molestias incidunt maiores. Qui non ipsum enim eveniet quia. Qui magnam eveniet dolorem tenetur.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(22, 38, 'Computer Support Specialist', 'South Bulahstad', 1, 'http://www.cronin.info/vitae-eius-dolores-dolore-ut-ducimus-voluptatem', 'http://www.mraz.biz/rerum-neque-culpa-omnis-ducimus-et.html', 'https://www.sanford.com/et-voluptas-consequatur-omnis-consequatur-nihil', 'https://www.rowe.com/harum-ut-ex-sapiente', 'Perspiciatis similique expedita quia. Tempore perferendis voluptatibus esse adipisci impedit qui fuga. Fugiat necessitatibus eaque quasi magni et.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(23, 34, 'Telemarketer', 'New Sydnie', 0, 'http://www.jacobs.biz/rem-quam-harum-culpa-maxime.html', 'http://tremblay.net/ab-in-et-quia-vero-perferendis-perspiciatis', 'http://www.hilpert.com/', 'http://frami.com/', 'Eaque commodi consequatur nisi fugit voluptatem doloremque eligendi. Quia accusamus vel illo aperiam porro esse id. Omnis eos est velit enim in. Qui voluptas similique praesentium velit cupiditate.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(24, 50, 'Sales Engineer', 'Lake Feliciaview', 1, 'http://www.jenkins.com/autem-occaecati-deleniti-quia-dolore-architecto-sunt.html', 'http://www.borer.com/numquam-dolorem-atque-omnis-consequatur-consequatur-aperiam-blanditiis', 'http://ruecker.com/eius-repellendus-omnis-sit-sit-quis-voluptates-maiores', 'http://stanton.org/', 'Animi minus facilis magnam explicabo in et voluptas maxime. Ut cumque et architecto eius debitis cum laborum et. Hic eligendi blanditiis explicabo sit itaque facilis minima.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(25, 55, 'Fiberglass Laminator and Fabricator', 'Hackettside', 0, 'http://www.conn.org/sed-quis-incidunt-praesentium-modi', 'http://bergnaum.com/temporibus-eum-non-neque-enim-possimus', 'http://www.grimes.com/', 'http://rippin.com/voluptatum-nihil-distinctio-minus-consequatur-et-sit', 'Nisi unde ipsa quos sed quo sint. Omnis reiciendis reprehenderit omnis quasi. Architecto suscipit et corrupti rerum beatae soluta explicabo. Culpa consequatur dolore unde autem voluptas neque.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(26, 42, 'Podiatrist', 'Lake Vincentland', 1, 'http://www.gulgowski.info/omnis-ratione-cumque-minima-itaque', 'http://kunze.com/occaecati-in-suscipit-ducimus-id-non-eaque-quibusdam-et', 'http://casper.net/', 'http://rosenbaum.info/ut-ea-a-et.html', 'Iure amet rem voluptatibus qui ut libero. Architecto nisi quam ex consequuntur impedit. Magni dolor pariatur praesentium eum neque enim et voluptates. Eum qui nesciunt officia dicta ratione excepturi ut.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(27, 26, 'Production Planning', 'Port Monroeville', 0, 'http://www.oconnell.info/non-tempore-sit-repellat-in-ut', 'http://ziemann.info/atque-magnam-quam-eius-ut-laboriosam-vel', 'http://www.simonis.com/quaerat-vel-nobis-similique-vel-placeat-reprehenderit-sed-reiciendis', 'http://www.jaskolski.com/recusandae-aut-occaecati-dolorem-numquam-qui-sed', 'Quasi non blanditiis natus error quidem ea soluta. Dolores similique et distinctio dolores hic. Dolorem praesentium non enim exercitationem.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(28, 20, 'Medical Appliance Technician', 'West Shayna', 1, 'http://wisoky.com/molestiae-labore-ea-qui', 'http://www.crona.org/quisquam-natus-est-beatae-beatae.html', 'http://conroy.org/', 'http://www.beatty.info/quae-quo-voluptas-dolorem-reiciendis-cumque', 'Maiores laboriosam voluptatem enim nostrum. Reiciendis recusandae voluptate veniam perspiciatis consequatur cupiditate necessitatibus. Illum qui expedita aut ab minus rerum fugit fugiat. Aut quia aut ducimus itaque architecto consequatur ratione.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(29, 27, 'Silversmith', 'Chayachester', 0, 'http://ondricka.com/culpa-officia-aut-labore-et-voluptatem', 'https://witting.biz/eius-alias-fugiat-consequatur-fugit.html', 'http://www.oberbrunner.com/aut-qui-incidunt-id-debitis-in-repellat-omnis-optio.html', 'http://kunze.com/provident-aut-voluptates-quia-ab-consequatur-recusandae', 'Quia voluptate quia qui magnam. Sit vel autem eligendi deserunt. Dignissimos ratione corrupti adipisci tempore incidunt aliquid esse. Et deserunt quia accusamus aut.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(30, 28, 'Fiber Product Cutting Machine Operator', 'New Sandrabury', 0, 'http://www.schimmel.com/', 'http://www.armstrong.biz/', 'http://www.kuvalis.com/molestiae-sed-voluptas-quam-accusamus-repudiandae', 'https://haley.com/aut-et-ipsam-velit-veniam.html', 'Perspiciatis velit adipisci animi atque aperiam autem doloribus nemo. Qui quo maiores ut consequatur et quae. Non soluta nobis placeat velit. Et eos atque dolor voluptas quasi id ut.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(31, 39, 'Hunter and Trapper', 'East Leonor', 0, 'http://cormier.net/eligendi-necessitatibus-et-facilis-aliquid-ex-quod-ducimus.html', 'http://www.reinger.com/sed-perspiciatis-dolores-suscipit-ipsa-sequi.html', 'http://corkery.com/maxime-veniam-dolorum-ipsam-sit', 'https://www.denesik.net/et-culpa-accusamus-illo-vel', 'Ut perferendis cum et voluptas temporibus architecto dolor. Dignissimos accusamus qui rerum et. Rerum dolor at quidem saepe enim.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(32, 14, 'Animal Scientist', 'Murrayshire', 1, 'http://www.kemmer.org/accusantium-inventore-earum-earum-quis-ipsam-commodi-est.html', 'https://adams.biz/amet-dicta-magni-ipsa-sit-quibusdam.html', 'http://kozey.biz/molestiae-distinctio-incidunt-sint-quis-necessitatibus-architecto-dolor-vero', 'http://rath.com/eos-asperiores-cumque-sed-temporibus-ut', 'Voluptatem dicta hic nobis et vitae. Consectetur incidunt omnis quis quos aut minima dignissimos numquam. Id enim fuga suscipit in eos.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(33, 4, 'Petroleum Pump System Operator', 'East Ursulaland', 0, 'http://www.waters.net/', 'http://konopelski.com/', 'http://goodwin.com/ex-quod-eligendi-quam-quae-et-corrupti-cupiditate.html', 'https://www.torp.com/ipsum-vitae-sint-tenetur-consequatur-et-ut-et', 'Aperiam quia quaerat rerum. Ducimus inventore possimus fugit molestiae ad et. Cum natus praesentium ipsam laudantium.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(34, 52, 'Nursing Instructor', 'West Lamonttown', 1, 'http://upton.com/', 'http://white.com/quia-quibusdam-quo-sunt-qui-eum-ea.html', 'https://christiansen.biz/perspiciatis-quaerat-facilis-eos-ut-a-ducimus.html', 'http://www.mayert.info/', 'Unde sunt neque ab temporibus. Rerum rerum dolorem excepturi voluptatem. Officia voluptates in et quis similique et. Qui culpa repellat repudiandae occaecati modi.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(35, 34, 'Diesel Engine Specialist', 'Guillermoport', 0, 'http://www.rosenbaum.org/', 'http://www.fadel.com/et-fugiat-velit-quis', 'https://quitzon.info/hic-omnis-suscipit-accusantium-a-eveniet-qui-saepe.html', 'https://armstrong.org/corrupti-et-facilis-beatae-et.html', 'Tenetur deleniti aut aut ut nesciunt aspernatur doloremque sit. Blanditiis cumque voluptatum sed quia praesentium alias. Est autem consequatur autem porro consequatur commodi.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(36, 27, 'Singer', 'Brekkechester', 0, 'http://www.ankunding.com/', 'http://tremblay.org/sunt-enim-esse-deserunt-dolorem-omnis-deleniti-ut-eum.html', 'https://okeefe.com/dignissimos-ab-deserunt-ut.html', 'https://altenwerth.net/architecto-repellat-qui-quidem-dolor.html', 'Nobis at voluptatem excepturi voluptatem at sit ratione quos. Dolorem aut ducimus mollitia. Atque facilis necessitatibus sint culpa dolore sint.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(37, 52, 'Electronic Engineering Technician', 'North Sadie', 1, 'http://www.bogan.com/', 'http://pacocha.com/', 'http://auer.org/pariatur-inventore-voluptatum-quae-tempora-est-accusamus', 'http://www.mueller.biz/', 'Aut minima praesentium ut et sed. Modi odio eius aut velit.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(38, 40, 'Clinical Laboratory Technician', 'Port Moshe', 1, 'http://vonrueden.com/omnis-qui-quam-ea-asperiores-quis-et-cupiditate', 'http://grant.net/deleniti-perspiciatis-autem-aut-delectus.html', 'http://www.bruen.org/atque-consequatur-fugiat-quibusdam-debitis', 'http://www.hermann.info/vitae-voluptas-mollitia-nihil-aut-iusto.html', 'Perferendis ut sint quod quia eum inventore voluptas itaque. Aut neque quia ea incidunt reiciendis ipsa qui. Et libero occaecati praesentium debitis numquam placeat placeat. Rerum sed totam voluptatem quod. Sit sit sequi ipsam nam.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(39, 12, 'Receptionist and Information Clerk', 'North Gerard', 0, 'http://www.langosh.com/accusamus-eos-accusantium-est', 'http://jast.com/impedit-labore-est-id-veniam-sit.html', 'http://hane.com/aperiam-esse-est-cupiditate-nesciunt', 'http://www.crooks.com/', 'Quam in et nesciunt quis reiciendis quia nobis. Expedita voluptatibus deserunt est fuga. Magnam eligendi vero repellendus nam maiores.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(40, 50, 'Sewing Machine Operator', 'Rachelview', 0, 'https://www.gorczany.net/optio-placeat-accusantium-molestiae-voluptas-qui-aperiam-ab', 'https://www.legros.com/molestias-similique-dolores-vero-et-quam-amet-explicabo-sit', 'http://breitenberg.com/', 'http://mosciski.info/blanditiis-voluptatum-non-laboriosam-aliquid-quo-harum-vel-quia', 'Inventore quia enim autem sunt suscipit nesciunt cumque aperiam. Officia ipsum soluta perferendis praesentium ut. Ut ex cum accusamus in animi. Odit odit quas nihil tempore quasi ex nisi.', '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(41, 65, '', '', 0, '', '', '', '', '', '2024-12-23 14:17:22', '2024-12-23 14:17:22', NULL),
	(42, 66, '', '', 1, '', '', '', '', '', '2024-12-23 15:39:24', '2024-12-23 15:39:24', NULL),
	(43, 67, '', '', 1, '', '', '', '', '', '2024-12-23 15:58:02', '2024-12-23 15:58:02', NULL),
	(44, 68, '', '', 1, '', '', '', '', '', '2024-12-24 03:55:50', '2024-12-24 03:55:50', NULL),
	(45, 69, '', '', 1, '', '', '', '', '', '2025-01-07 07:09:21', '2025-01-07 07:09:21', NULL),
	(46, 70, '', '', 1, '', '', '', '', '', '2025-01-07 07:45:27', '2025-01-07 07:45:27', NULL);

-- Dumping structure for table hr_core.prospects
DROP TABLE IF EXISTS `prospects`;
CREATE TABLE IF NOT EXISTS `prospects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `matricule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `readen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prospects_matricule_unique` (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.prospects: ~80 rows (approximately)
INSERT INTO `prospects` (`id`, `matricule`, `name`, `email`, `phone`, `subject`, `message`, `readen`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'x)N7lwk@Oc', 'Taylor Parisian', 'rmarquardt@example.net', '+13023225882', 'Medical Equipment Preparer', 'Modi earum in excepturi similique facilis tenetur consectetur doloremque. Numquam ipsa est cumque doloremque quaerat sunt architecto. Alias sint odio maxime veniam. Cumque praesentium veniam blanditiis totam suscipit quas dicta.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(2, 'qxT8r_&Xlu', 'Dr. Horace Buckridge III', 'baby.paucek@example.net', '+1-458-578-7758', 'Social Science Research Assistant', 'Error officiis et animi atque ullam. Magnam accusantium eaque quia enim. Distinctio expedita commodi laborum voluptas qui. Inventore soluta et quis exercitationem.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(3, '\\_j4=>!mfZ', 'Rosalia Lehner DDS', 'dborer@example.org', '628-588-9981', 'Elementary School Teacher', 'Est qui aperiam quos quia ut dolorem. Quo at dignissimos quia dolores. Saepe sed et nostrum qui. Voluptates ducimus deleniti itaque aperiam et dolorem. Dicta aut in qui modi. Qui aperiam harum enim molestias quia. Ducimus delectus ullam quas aut. Exercitationem sint rerum est esse rem.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(4, 'g2E0W+83qH', 'Leopold Ledner', 'millie.hermann@example.com', '+1.256.323.1342', 'Healthcare', 'Delectus consequuntur itaque doloremque voluptatem voluptas. Consectetur quia perferendis rerum quidem quo. Totam ea fugit et sunt. Enim qui sit et autem asperiores esse asperiores. Quisquam at fuga magnam rerum temporibus.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(5, '"odvRB,rzq', 'Krystel Kshlerin', 'borer.boris@example.org', '+12815595630', 'Wellhead Pumper', 'Fugit aut in odit quia ut. Molestiae dolorum iste dolorem odit. Consequuntur est officia nisi quo et. Qui laudantium quis repellendus sed. Sed consequuntur et non et.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(6, 'w-t"OFN>P\'', 'Daryl Muller', 'domenica07@example.org', '1-786-692-7028', 'Typesetting Machine Operator', 'Molestiae quas et id soluta. Necessitatibus dolorem deleniti tempora qui quam debitis sunt. Deleniti asperiores est ipsam nesciunt. Dignissimos tempora voluptatem id velit fugiat iure aut.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(7, '!%#2016"53', 'Mr. Ramiro Orn', 'tanya.langosh@example.com', '+1-443-462-2283', 'Radiologic Technologist', 'Temporibus labore et dignissimos et molestiae consequatur aliquam. Iste aspernatur atque incidunt. Rerum et iure facilis iste.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(8, 'l@o!(oX#k~', 'Talia Hand DVM', 'emmerich.dominic@example.net', '+1.234.931.0810', 'Motorcycle Mechanic', 'Odio alias error autem. Facere porro quam illum quia. Qui sit iure occaecati veritatis aut. Maiores qui sed autem. Earum ea quam iure voluptatum tenetur non ut. Blanditiis natus architecto rem facere atque.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(9, 'Z!LUc3?h<}', 'Marc Gleichner', 'walker.jayde@example.org', '252-806-1624', 'Precision Pattern and Die Caster', 'Et atque ex est optio. Placeat praesentium tempora qui. Voluptatum non doloribus non debitis quisquam hic. Est eveniet fugit tempora et sit.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(10, '<#[?{\'g;^V', 'Prof. Elfrieda Murphy', 'ohara.isabella@example.org', '(843) 503-1611', 'Chemistry Teacher', 'Voluptas facere et labore maiores. Ab aut labore optio adipisci. Et inventore dolorum nostrum nihil explicabo vero aut. Minima mollitia officiis aut modi et velit. Ab doloremque suscipit asperiores laborum eius. Dicta accusantium voluptatibus vel officia. Dolorum id qui consectetur et.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(11, '*`~BU%`.}]', 'Mrs. Antonetta Thompson III', 'quitzon.dillan@example.com', '1-251-422-7512', 'Art Teacher', 'Ipsam accusamus molestiae possimus debitis ab deserunt dolor soluta. Nisi consequuntur perspiciatis cupiditate aut consectetur. Quidem error quas dolor dolorum tenetur nam. Nisi aut et asperiores beatae culpa. Neque quia maiores quas vero. Autem animi magnam enim sunt rerum quae omnis.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(12, 'OR&6t$3o8|', 'Hans Nikolaus Jr.', 'twaelchi@example.com', '(631) 778-5684', 'Central Office', 'Explicabo ullam assumenda quo magni illum. Assumenda itaque pariatur voluptates unde illum qui. Eius molestiae magni impedit deleniti ratione sed. Repudiandae dolore sint veritatis voluptatibus sed voluptatibus. Dolores sed non quia quis libero expedita ab.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(13, 'yz3Gt~cpUw', 'Miss Natasha Muller Jr.', 'lehner.melissa@example.com', '(832) 316-4782', 'Cutting Machine Operator', 'Dolorem facere quo quasi vero quis enim. Minima modi tempora autem facilis est architecto fugiat. Iste laudantium harum nesciunt rerum ut et sed qui. Laboriosam perferendis laborum qui quasi quibusdam. Et accusamus qui ut distinctio.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(14, 'n2,[#<US$D', 'Ms. Zula Ryan', 'prosacco.blanche@example.com', '949.320.3745', 'Agricultural Crop Farm Manager', 'Harum aperiam corporis consectetur aspernatur totam ducimus. Aut qui dicta blanditiis. Quaerat harum inventore dolore qui dolorem. Praesentium error sed quidem. Qui fuga quam est. Repellendus quia fugiat consequatur asperiores neque aliquid. Similique doloremque autem officia.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(15, 'Y=F+/0ilU4', 'Velda Haley', 'tklein@example.com', '+1.339.587.2109', 'Answering Service', 'Nam non animi est porro et commodi. Ut unde qui et eos. Quia esse omnis quo. Et nam ducimus fuga ut adipisci tempora. Vel est omnis amet dolorem perspiciatis alias. Fugit atque est quos. Aut rem quidem molestias ut nostrum et.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(16, '9)d:Oko"Gc', 'Noemy Kreiger', 'lenny.deckow@example.com', '(325) 421-9569', 'Geologist', 'Aut tempore est aperiam iure. Quibusdam delectus excepturi modi nisi eligendi fuga molestiae. Dicta non suscipit dolores neque sed. Vitae ipsam facilis voluptas placeat qui labore sint.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(17, 'G{kUIe|t@|', 'Lucas Davis', 'spowlowski@example.org', '620.845.3046', 'Licensing Examiner and Inspector', 'Excepturi excepturi sequi earum consequatur ea in labore est. Aut nulla voluptatum omnis est doloribus et. Sit molestiae consequatur omnis quia ex. Inventore non vel doloremque nam illum rerum minima. Labore a aut in quas eum. Ex eum voluptas consectetur cupiditate et. Optio deserunt a ipsa qui.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(18, 'bP"uIvR/)d', 'Deshawn Little', 'norene.schinner@example.com', '1-341-923-1816', 'Electrician', 'Consequatur placeat eius aspernatur tenetur. Earum eaque corporis sequi est ut consequatur aliquid. Dolorem fugiat dolores a praesentium corporis. Est adipisci nostrum distinctio recusandae id culpa aut minima.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(19, 'tTEl^%Y[#;', 'Dr. Percival Funk', 'goconnell@example.org', '+19592170889', 'Board Of Directors', 'Impedit sunt eaque pariatur est illum labore deserunt. Corrupti nobis blanditiis ad ipsum sit officia dolorem. Numquam qui id laborum est odio vel. Quos id aut est ipsum illum veniam.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(20, ':"xx(.JcL6', 'Lorna Kuhic', 'bertrand.mcdermott@example.org', '+1-269-359-7228', 'Atmospheric and Space Scientist', 'Atque omnis rem explicabo maxime delectus. Soluta voluptas exercitationem voluptatem. Nihil laborum nemo a et velit eaque modi. Perferendis quia rerum odio omnis veniam voluptatem. Tempora voluptatibus magnam accusantium inventore eos occaecati distinctio.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(21, 'S%VXRArz(S', 'Aniyah Heller', 'szulauf@example.net', '+1.971.639.4126', 'Cutting Machine Operator', 'A quo quam quo magnam. Repellat nemo temporibus quasi unde accusantium eveniet explicabo. Consequatur aut quis dolores aut qui. Velit neque minus et iure.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(22, 'iic$E!]gt0', 'Valentine Hudson', 'maribel.wilkinson@example.net', '272.828.9246', 'Occupational Therapist Assistant', 'Aliquam dolorem molestias suscipit ut magni ex. Hic error ut natus eum. Dolorum sit dolorum sit possimus repellat. Ea sequi dicta quia ut nihil. Veritatis non impedit voluptas molestias. Quia possimus magnam blanditiis odit. Corporis eligendi vitae qui et voluptatem et. Qui consequatur est nisi.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(23, 'a.JIU2\\p9&', 'Aida Wiza', 'parisian.filiberto@example.net', '+16083302116', 'Telephone Station Installer and Repairer', 'Provident ipsam fugiat enim laborum quidem consequatur. Et laborum facere ut quod omnis. Cum nam porro aut eligendi dolor expedita adipisci. Autem dolores praesentium nihil architecto consequatur sed. Ea pariatur at commodi. Ea illo dolores rerum labore error sit. Deleniti ipsam ut aut velit nam.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(24, 'd47n):>&@>', 'Miss Iva Bogan', 'cassie.sawayn@example.com', '+14193444805', 'Copy Writer', 'Sint voluptatum cumque eius rem. Omnis sed sit ut iure quia. Deleniti ipsam fugit temporibus. Similique tempore error necessitatibus accusantium dignissimos iste. Est recusandae et et. Enim voluptatem cumque distinctio sit dolorem. Id dolor quo reiciendis non ea aut.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(25, '/+rTEOuW2p', 'Mrs. Trisha Wiegand I', 'clark.ferry@example.net', '(530) 283-0292', 'Media and Communication Worker', 'Qui rerum porro accusantium aliquam beatae sed. Quo consequatur et eveniet veritatis dolores. Sed pariatur modi officia iste consequatur. In quae occaecati temporibus aut. Voluptatem perspiciatis sit vel aut enim. Voluptatem quos tempora sit sit voluptas error.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(26, 'E./!5"Gxk%', 'Derek Walsh', 'francesca54@example.net', '228-904-8398', 'Speech-Language Pathologist', 'Iusto id dolores ut incidunt eveniet omnis quia numquam. Assumenda sunt quis eum consectetur quas unde maiores. Et sit est eius occaecati. Odit est assumenda porro impedit minus exercitationem explicabo.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(27, '7^}rfLtIpA', 'Anabelle Tremblay II', 'theodore00@example.org', '+1-475-935-1724', 'Credit Checker', 'Neque et exercitationem est. Et blanditiis et vitae quisquam pariatur. Voluptates excepturi ut ea nostrum voluptatem aut voluptatem omnis. Quas cum eum nam sunt velit. Et eos aut expedita qui impedit quos.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(28, 'Ol1hA,!NN(', 'Miss Odie Breitenberg', 'erice@example.net', '256-940-8412', 'Paperhanger', 'Dolor sapiente nostrum magni error numquam aut voluptates. Necessitatibus consequatur minima tempore harum rerum a et. Vitae laborum aspernatur at deserunt inventore consequatur. A quibusdam vero et asperiores consequuntur velit ut.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(29, 'tnBJ/nB?&o', 'Joseph Crona', 'priscilla.dibbert@example.com', '+1-504-619-6872', 'Marriage and Family Therapist', 'Aut sed officia soluta praesentium non eos. Eligendi saepe labore earum rerum est nam neque. Inventore ea laborum incidunt ducimus exercitationem eaque.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(30, '*VrM(ks|@h', 'Gia Jakubowski', 'tturner@example.org', '(361) 743-6244', 'Fish Game Warden', 'Commodi est quas exercitationem impedit deserunt et cumque. Et amet nemo qui nihil est et et. Doloribus amet eius eius quisquam non vitae et. Natus quo dolore sit sed.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(31, 'yQz=`3~DEl', 'Edyth Johnson Jr.', 'jonas74@example.net', '650-972-1750', 'Tire Builder', 'Fugiat perferendis ex et ut at consequatur. Voluptatem placeat qui quia temporibus sapiente et. Fuga similique beatae voluptate pariatur et optio doloribus.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(32, '^]R?MDa\'Qm', 'Kay Bogisich DDS', 'hmayert@example.net', '1-916-507-2919', 'Professional Photographer', 'Sed voluptatibus nihil est odit possimus beatae. Ut nulla excepturi ipsum dolorem ut velit. Reprehenderit quae sint animi neque assumenda in nisi.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(33, '/l]G$`7,-4', 'Ms. Barbara West', 'albina08@example.org', '(734) 894-5095', 'Freight Inspector', 'Eaque minima harum voluptatibus ad enim occaecati molestiae. Ut sint delectus illum quae. Doloremque eaque in ea dolores vel eos incidunt non. Sunt iste quisquam quia architecto. Sint eius qui nam nisi aut.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(34, 'y`n3}U,]xR', 'Prof. Antonina Terry', 'aurelie93@example.net', '1-534-808-9164', 'Molding Machine Operator', 'Rerum tenetur dolores atque officiis ut eaque nesciunt magnam. Voluptate veritatis blanditiis voluptas deleniti sit tempore sapiente tenetur. Qui sed temporibus quis enim molestias quo. Quas cumque aut non qui quas. Cupiditate ea quis est ea explicabo unde. Cumque eaque sit sint voluptatibus quis.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(35, 'e7k6)}xa+[', 'Jack Lakin', 'schroeder.alexa@example.org', '386.804.6639', 'Bartender Helper', 'Et ut assumenda culpa ipsa voluptatum est. Consequatur tenetur laboriosam vitae earum repellat sed corporis. Officia in ut est quae fugit. Quia dolores qui rerum suscipit quis tempore error totam. Deserunt mollitia dolore non vel voluptatem id aperiam.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(36, 'b_z<b,,:}V', 'Lenna Mertz Jr.', 'vklein@example.org', '786-275-5258', 'Jewelry Model OR Mold Makers', 'Ut deleniti recusandae inventore et veniam. Ut ducimus laborum vel aliquid distinctio. Et tempora et enim amet debitis sed aut. Error quis odit qui dignissimos ipsum delectus doloremque reiciendis.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(37, 'q7*M<S5WL)', 'Frankie Kilback', 'nelle88@example.net', '626-792-8979', 'Camera Operator', 'Dolor atque impedit voluptas quas voluptatibus officia sit. Sed id cupiditate itaque facilis. Corrupti placeat doloribus non quia. Non molestiae voluptatem necessitatibus dolor voluptate voluptate fugiat.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(38, 'h\'}vcZb8AC', 'Cathrine Jacobs I', 'kutch.raymundo@example.org', '+1-272-565-3108', 'Embossing Machine Operator', 'Occaecati nostrum et aspernatur sapiente cum aut. Accusantium non neque harum non corrupti accusantium ea. Dolor quia veniam quia accusantium veritatis aut. Maxime et nam quam consequatur quis consequatur. Magnam eveniet incidunt aliquid tempore.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(39, 'h5}[z3}$P_', 'Prof. Rashawn Hodkiewicz III', 'clangworth@example.net', '+1 (551) 885-5879', 'Budget Analyst', 'Voluptatibus dolores ipsam sunt ut debitis ut earum eligendi. Suscipit rerum voluptates dolores dolorem. Necessitatibus nisi temporibus eligendi consequatur. Minima eius quasi dolore aut.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(40, '5|bFDaqw".', 'Gaylord Rempel DVM', 'ykuvalis@example.com', '951-348-7715', 'Loan Officer', 'Fuga eligendi sed vel eum voluptatem facere. Id velit blanditiis ullam non. Ut ea asperiores distinctio officia. Voluptatibus facere sit fugiat sunt ut. Aliquam eum pariatur aut corrupti nemo animi. Sed laborum quia aliquid ratione.', 0, NULL, '2024-12-20 14:55:34', '2024-12-20 14:55:34', NULL),
	(41, 'Z7"`=LS,XX', 'Haven Hirthe I', 'edward08@example.org', '+1-470-475-7102', 'Life Science Technician', 'Exercitationem ea sed cupiditate. Ex ipsum voluptatem occaecati impedit dolores. Cumque tempore nam voluptatem veritatis atque. Doloribus amet consectetur voluptatem occaecati molestiae.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(42, 'H$-q@o{rol', 'Claire Braun', 'brath@example.com', '1-559-449-4431', 'Extruding and Drawing Machine Operator', 'Fugiat mollitia nemo praesentium minima. Placeat repellendus et dignissimos. Necessitatibus eum fugiat debitis provident et. Nostrum ducimus non vel non exercitationem. Quae libero earum et qui nam ipsam.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(43, 'M42TH#K&1Y', 'Prof. Linnea Torphy DVM', 'linwood78@example.net', '971.631.0892', 'Computer Security Specialist', 'Placeat qui aut et. Quibusdam sed excepturi facilis quas quia voluptas. Aliquam dolorum similique ea vitae consequatur cum voluptates ullam. In necessitatibus facere adipisci consequatur eligendi sed aut.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(44, 'l0o3hC#v4>', 'Queenie Gislason', 'feest.elliot@example.net', '+1-781-965-5585', 'Personal Home Care Aide', 'Eius soluta officia veritatis dolores asperiores. Cupiditate saepe aperiam sit ex earum ex. Sit nemo non distinctio dignissimos.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(45, 'jb`"tSv-9e', 'Hardy Rodriguez', 'hprosacco@example.net', '715-367-1958', 'Paper Goods Machine Operator', 'Reiciendis ut velit quia error eius delectus. Rerum odio deleniti magnam fugit blanditiis. Reiciendis veritatis aut consequuntur nemo iure. Excepturi dolorum vitae fugit rerum ea nobis.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(46, '|~Matw-DJ]', 'Maverick Torp', 'juliet75@example.com', '564.605.2556', 'Insurance Sales Agent', 'Eveniet esse aut et tempora sit adipisci. Eius ea nesciunt est maiores sunt ratione voluptates aliquid. Maiores quis perferendis officia aperiam commodi quia atque.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(47, 'Eid70WyNb#', 'Jerald Medhurst', 'jakob.conn@example.net', '1-678-623-0353', 'Social Worker', 'Quaerat molestiae qui reiciendis et qui. Dicta similique explicabo facilis facere aut quia. Veritatis ea nihil exercitationem qui maxime quo quidem.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(48, '{8Tt8SCd![', 'Izaiah Hoppe', 'ahickle@example.org', '+12602185323', 'Medical Appliance Technician', 'Ab ex labore perspiciatis est. Dolores autem cumque et illum. Minus fugit ut enim aliquid molestiae voluptate sequi. Totam dicta voluptatem possimus. Totam repellendus et qui. At vel id nihil fugiat a unde officia.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(49, 'di}e~\\}1KH', 'Clementina Altenwerth', 'elyse.leannon@example.org', '+1-870-389-2061', 'Creative Writer', 'Eligendi ipsa ut eaque quasi quo tempora qui. Corrupti ab ut deserunt. Hic officia doloribus fuga assumenda. Quia sint quo non voluptates itaque deleniti. Autem unde ut dolorem qui. Impedit enim alias corrupti magnam. Dicta minus vel et rerum. Doloribus ullam rerum voluptates earum qui quis odit.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(50, 'f)@BE8lx{;', 'Jazmyne O\'Reilly', 'sschultz@example.com', '+1-505-952-3572', 'Mine Cutting Machine Operator', 'Explicabo qui veniam sed rem. Odio magni aliquam sint magnam ut incidunt repellat. Necessitatibus dicta explicabo harum occaecati eum. Rerum ut ut dolorem delectus ut aut.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(51, 'Qj*yBTdLLL', 'Jodie Hahn', 'strosin.mack@example.com', '1-463-819-6392', 'Airline Pilot OR Copilot OR Flight Engineer', 'Quia omnis exercitationem sed et illo. Alias rerum totam laudantium beatae qui repellendus quod. Est vel repellendus id beatae molestias nulla facilis. Ut perspiciatis vel qui.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(52, 'bM|f%E]l4D', 'Kristin Halvorson', 'virgil.maggio@example.org', '+1-430-848-5702', 'Food Science Technician', 'Qui debitis eius dolor dolorem et illo cum. Rerum nihil sit repellendus. Non sed et odit quidem. Enim dolore ullam laudantium qui reprehenderit.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(53, '}h)uY_j7DK', 'Prof. Florencio Bartoletti', 'murray.michael@example.org', '737-978-8977', 'Precision Dyer', 'Repellendus et tenetur quos nam qui commodi eos. Rerum deleniti vel error accusamus quibusdam dolore labore. Dolore aspernatur eveniet sequi deleniti qui. Aperiam dolorem iusto omnis sit non voluptas.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(54, 'zXp%/E3;ym', 'Meagan Christiansen', 'ybuckridge@example.net', '+1 (832) 451-3446', 'Database Manager', 'Voluptas possimus eaque dolorem debitis incidunt minima. Dolorum quas cupiditate in perspiciatis voluptatem nam quidem quo. Quos illo neque velit ut rerum. Modi velit exercitationem placeat quos. Voluptas mollitia et atque voluptates ut et excepturi perspiciatis.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(55, 'WUSO\\|9n_9', 'Cicero Ward Jr.', 'roderick21@example.net', '901.931.7092', 'Order Filler', 'Corrupti sunt ipsum vel maiores. Consectetur earum occaecati doloremque est optio quisquam repellat voluptatum. Fuga fugiat est odio aperiam voluptatem eum.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(56, 'e|6M*!2x:*', 'Miss Annabel Koelpin', 'zdickinson@example.com', '+14702510070', 'Buffing and Polishing Operator', 'Aperiam doloribus qui consequuntur voluptatum repellat et. Eos harum dolor ut vel maxime laudantium amet. Nemo inventore minus tenetur.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(57, '3-/*9E=T+^', 'Hester Stokes', 'orunolfsson@example.net', '747.346.9281', 'Driver-Sales Worker', 'Eaque nostrum est quas ex. Tempore quaerat dolor non et laborum rerum porro eos. Reiciendis veniam ut non. Quae est consequuntur cum deleniti officia et esse. Voluptatibus eos sunt molestiae officia veritatis dolorem earum. Autem labore omnis cumque excepturi cumque et. Distinctio quo quo soluta.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(58, 'Z5&l#N[9))', 'Dr. Will Ryan PhD', 'rwalker@example.org', '+1-913-981-0066', 'Computer Security Specialist', 'Nostrum expedita velit quia reprehenderit illo cumque sequi aut. Aperiam eum vel adipisci fugiat ut maiores et. Officiis esse similique incidunt illo est est qui facere. Accusantium at consequatur soluta maiores nesciunt magni. Ratione odit dolorem aut libero ut illum eius.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(59, '1E1$F3NnBr', 'Watson Dicki', 'gavin.flatley@example.net', '+1.407.852.8444', 'Conveyor Operator', 'Laudantium voluptatem voluptatibus molestias dolor. Reiciendis non esse officiis beatae. Exercitationem earum assumenda eum architecto expedita.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(60, 'isK;lh{q02', 'Amelia Heathcote', 'oconnell.kelsi@example.com', '726-362-8023', 'Industrial Machinery Mechanic', 'Sed reiciendis nobis nesciunt a. Occaecati quia non nisi et dolorem. Repellendus atque distinctio consequatur ratione amet maiores provident.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(61, '?,YW.of!UT', 'Camila Steuber', 'therese12@example.net', '+1.423.826.0199', 'Radiation Therapist', 'Nisi facere natus quia est odio exercitationem eos. Velit doloribus et voluptatem modi. Velit mollitia quas temporibus. Necessitatibus et asperiores asperiores quam minus labore. Nulla magni vero impedit expedita repudiandae voluptatem et error.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(62, '"WaUQ\\ipbL', 'Rolando Kassulke', 'flesch@example.net', '484-912-9095', 'Shoe Machine Operators', 'Debitis laboriosam consectetur accusantium quis dolorem nobis. In optio labore deleniti aut quia voluptates. Qui qui tenetur rerum unde ea quidem facere id.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(63, '4]HT#]o?DT', 'Mr. Rodger Lang MD', 'oran88@example.org', '1-802-288-2796', 'Computer Security Specialist', 'Accusantium sed ab nostrum aut ea molestiae occaecati. Quae aliquid illum ut vero. Dignissimos voluptatem reprehenderit voluptatem nihil. Voluptates in nostrum quasi deserunt et saepe. Sapiente asperiores harum enim et minus. Molestiae reprehenderit quae sed.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(64, ':,/6\'|z1-z', 'Wiley Lubowitz DDS', 'carroll62@example.net', '843.978.7991', 'Petroleum Engineer', 'Ut qui et molestias ut excepturi sed. Dicta praesentium quae sint non. Dolorem non voluptatem aut assumenda quam aut. Quod ratione sunt quasi iusto consectetur. Tempora nisi officia consequuntur consectetur cumque non itaque. Eos consequatur eum laboriosam velit. Sed qui omnis in.', 0, NULL, '2024-12-20 14:57:28', '2024-12-20 14:57:28', NULL),
	(65, ',Y-I@U=OL8', 'Anya Little', 'estrosin@example.net', '+1.484.678.7924', 'Rotary Drill Operator', 'Sit minus quod blanditiis quo. Et enim voluptas quisquam quia qui. Repellendus dolores molestiae maxime molestiae. Magni eum voluptatum nihil minima consectetur et.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(66, 'DfZ4T"~r@S', 'Norris Ruecker III', 'jennyfer41@example.org', '938.459.3006', 'Director Of Business Development', 'Odit aut animi excepturi architecto voluptatibus eos. Numquam non cupiditate et cum officia harum cupiditate. Libero repudiandae est et commodi ut. Non natus et rem velit doloremque iure impedit.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(67, 'UZnWY\\6~Zj', 'Jonas Wiza', 'vbahringer@example.net', '386-622-1905', 'Sales Engineer', 'Eos perferendis sint consequatur qui. Est non ratione laudantium voluptas praesentium temporibus. Non nisi inventore quisquam vel. Facere totam sint atque assumenda vel accusantium nisi atque.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(68, ',pd34gVJVO', 'Dustin Ratke IV', 'cordia.parker@example.net', '831-635-0808', 'Psychiatric Aide', 'Dolor molestiae corporis ipsum ipsam possimus nobis et. Est omnis aut molestiae odio dolore error atque. Non saepe veritatis aut quo. Sunt excepturi dolores ea at itaque natus. Aut praesentium qui perspiciatis porro. Omnis aliquam quos pariatur dolorum labore.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(69, '5tK^jJLa+g', 'Meta Rath', 'umoen@example.com', '+1 (917) 383-2595', 'Medical Equipment Preparer', 'Impedit veritatis rem cumque temporibus perspiciatis. Aut ea necessitatibus ut sint. Qui ut vero soluta deleniti quod labore. Eligendi quis non ut ut similique. Et quidem placeat architecto id reprehenderit.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(70, '0+=FEMwg,~', 'Brannon Boyer', 'stacey.hartmann@example.com', '+1.828.387.1263', 'Forest and Conservation Technician', 'Magnam perferendis animi qui molestiae illo veniam perferendis veritatis. Sint accusamus enim tempore ea quam impedit vero. Provident nam aperiam magni sit.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(71, 'ysvc?Qv0,(', 'Esmeralda Wyman', 'pfannerstill.tyrique@example.org', '+1.239.691.5584', 'Pastry Chef', 'Necessitatibus veniam incidunt ut qui voluptatem. Officiis doloribus voluptate et consequatur. Non nisi amet eos expedita. Minus optio voluptas itaque molestiae distinctio quam vel excepturi. Eius qui placeat molestiae aut.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(72, '7S#8TM(hDS', 'Nicholaus Kassulke', 'russell47@example.com', '1-928-661-5600', 'Floor Layer', 'Ut voluptates eveniet et occaecati et adipisci consequatur. Voluptatem est dolorem labore et sit placeat. Ullam libero sunt eum reiciendis aut commodi velit aut. Porro illo maiores reiciendis ad ea. Et soluta odio qui culpa eius reprehenderit doloribus.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(73, 'Zp93,%_k%g', 'Kobe Christiansen', 'xgrimes@example.com', '1-406-563-3668', 'Communication Equipment Repairer', 'Sit temporibus voluptatem eius ea ut. Voluptate rerum et veritatis explicabo omnis maxime autem omnis. Voluptatem hic sit optio libero architecto. Aliquid dolor ipsa vel commodi alias. Ea qui quidem nulla deleniti. Aperiam magni velit fugit neque quod.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(74, 'Htk:FjfW|O', 'Prof. Alvis Hansen', 'phahn@example.com', '724-940-2770', 'Funeral Attendant', 'Eos dolorum itaque sunt quos quia inventore ea. Sed ipsa pariatur et ipsum temporibus magnam consequatur numquam. Dolore nostrum sequi est expedita laborum. Reprehenderit dolore numquam fugiat eos vel ipsa.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(75, '=-1uCwHUG#', 'Prof. Mozelle Kulas MD', 'neoma.krajcik@example.com', '+1-325-663-7477', 'Millwright', 'Sapiente explicabo omnis architecto quis consequuntur accusantium velit necessitatibus. Est nam ut voluptate et alias. Sapiente dolore quia et. Asperiores beatae dolorum non.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(76, 'oC[,fwdq(K', 'Fermin Lemke', 'landen64@example.net', '1-775-229-0817', 'Private Household Cook', 'Explicabo ut et est id. Fuga perspiciatis praesentium qui laborum. Incidunt dolor quasi repudiandae ex nisi voluptate fugit sed. Quis itaque nesciunt qui et ut sed. Voluptatem ad ullam sit hic enim soluta. Et voluptate non voluptas quam.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(77, '/r_1rt0FKV', 'Elmo Donnelly', 'serenity21@example.org', '+1-720-416-8732', 'Heating and Air Conditioning Mechanic', 'Facilis ad delectus hic. Modi odio explicabo ratione voluptas. Voluptate omnis pariatur officiis facilis molestiae. Libero ut sunt omnis totam neque repudiandae blanditiis.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(78, '6l7Y{/1}eo', 'Glen Rutherford', 'cummings.kailey@example.com', '+1.678.840.5412', 'Clinical Psychologist', 'Accusamus dolore quia amet debitis velit vero. Et qui corrupti quae voluptatem quia. Ratione et harum cumque perferendis accusantium praesentium. Similique expedita non dolorum expedita tempora itaque natus.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(79, 'ogv5{$:kqN', 'Justina Balistreri', 'clemens62@example.net', '+1-540-666-4297', 'Epidemiologist', 'Ad modi velit asperiores eaque eos omnis. Natus iste harum a laudantium dolorum autem. Maxime tenetur provident veniam officia est qui. Et officiis impedit quibusdam.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL),
	(80, 'SY/YbbGLTS', 'Tianna Senger', 'sjakubowski@example.com', '234.319.1122', 'Farm Labor Contractor', 'Rerum repudiandae quaerat dolore cupiditate et. Temporibus natus quaerat enim aut. Aut cupiditate sapiente ut officia.', 0, NULL, '2024-12-20 14:57:29', '2024-12-20 14:57:29', NULL);

-- Dumping structure for table hr_core.ratings
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rating` double NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `reviewrateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewrateable_id` bigint unsigned NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_reviewrateable_type_reviewrateable_id_index` (`reviewrateable_type`,`reviewrateable_id`),
  KEY `ratings_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.ratings: ~0 rows (approximately)

-- Dumping structure for table hr_core.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.roles: ~5 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'web', '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(2, 'candidate', 'web', '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(3, 'employee', 'web', '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(4, 'supervisor', 'web', '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(5, 'customer', 'web', '2024-12-20 14:57:26', '2024-12-20 14:57:26');

-- Dumping structure for table hr_core.role_has_permissions
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.role_has_permissions: ~0 rows (approximately)

-- Dumping structure for table hr_core.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.sessions: ~3 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('nyTr3gPSNYg8w2B2ws1yBKHi5nSxtIPWISjMNIHS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlFucXJ2NXNHRlNJYjdXNWxGVFZ3T0NJWEhYUzN0ZHZWaENhT21RSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1736252073),
	('rDQSqavzYqNFCxue3Vt9UwzZ0FstW50L5xD3m75L', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieW0wSEFQU0dqWWl0VnZzeThPcjFBcXB3eEdXaU1oTkFDNWFaMUxWcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736264635);

-- Dumping structure for table hr_core.skills
DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.skills: ~0 rows (approximately)

-- Dumping structure for table hr_core.teams
DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.teams: ~3 rows (approximately)
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
	(1, 58, 'Jonathan\'s Team', 1, '2024-12-23 11:56:50', '2024-12-23 11:56:50'),
	(7, 65, 'Maishapay\'s Team', 1, '2024-12-23 14:17:22', '2024-12-23 14:17:22'),
	(8, 66, 'Maishapay\'s Team', 1, '2024-12-23 15:39:24', '2024-12-23 15:39:24'),
	(9, 67, 'Jonathan\'s Team', 1, '2024-12-23 15:58:02', '2024-12-23 15:58:02'),
	(10, 68, 'Jonathan\'s Team', 1, '2024-12-24 03:55:50', '2024-12-24 03:55:50'),
	(11, 69, 'Jonathan\'s Team', 1, '2025-01-07 07:09:21', '2025-01-07 07:09:21'),
	(12, 70, 'Jonathan\'s Team', 1, '2025-01-07 07:45:27', '2025-01-07 07:45:27');

-- Dumping structure for table hr_core.team_invitations
DROP TABLE IF EXISTS `team_invitations`;
CREATE TABLE IF NOT EXISTS `team_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.team_invitations: ~0 rows (approximately)

-- Dumping structure for table hr_core.team_user
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE IF NOT EXISTS `team_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.team_user: ~0 rows (approximately)

-- Dumping structure for table hr_core.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.users: ~60 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Miss Tiffany Rohan DVM', 'gislason.arch@example.org', '2024-12-20 14:57:26', '$2y$12$rGGJ/e6G./1r3tcDONWDNOZyd8WlDSl3a6aZ9MhhQGkN1O30hJpvW', NULL, NULL, NULL, 'o6oPuIqDWOArjzVQ26EbGXeScHBNhv8R0pCoFDonzJjIqWv3ozAqEYP8ttJL', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:58:54'),
	(2, 'Deven Ledner', 'larkin.claudia@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QDqLLHVUqK', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(3, 'Lillie Sipes', 'zpollich@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7CM4F7imSZ', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(4, 'Lemuel Yundt II', 'rbahringer@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'eqwvc2wlON', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(5, 'Maxime Braun', 'olga.rice@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WZRjPjPzfW', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(6, 'Cedrick Brekke', 'tolson@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vfXPZbXHKN', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(7, 'Prof. Moises Stanton Jr.', 'noel.berge@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4NImrmPlaH', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(8, 'Ms. Marjorie Zieme', 'feil.elton@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dWCLrazDNI', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(9, 'Gwendolyn Sanford', 'jo42@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'c9D2v9Fng6', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(10, 'Leland Keebler', 'rolfson.jayson@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dzBG7f3Oa7', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(11, 'Dr. Bailee Sipes', 'ashly.dibbert@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xDB6BTlSWE', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(12, 'Mr. Estevan Gorczany Jr.', 'kaylee46@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'd9DamuGZyr', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(13, 'Mr. Ruben Grady DVM', 'ima01@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dMEZokmdgy', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(14, 'Delmer Metz', 'ressie61@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gsRKg3c2ag', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(15, 'Janae Kiehn MD', 'adelle87@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'kCut18fzTz', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(16, 'Dr. Enola Skiles', 'mueller.mellie@example.net', '2024-12-20 14:57:26', '$2y$12$iWBkdnMWYmPFsycTLFj1b.RQbAisCntagU2sTj/y6U1w0i/M5TUK2', NULL, NULL, NULL, 'pfPTTS2M5BCthLu68VnaL4LPIgOJY3U3jaqtEKD0p41eIlJMbKqHCgJH0yeU', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 15:19:15'),
	(17, 'Therese Green', 'ciara.murphy@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JZb9YE1jUL', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(18, 'Sarah Schroeder MD', 'dare.eldridge@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MB2Bx7gNwb', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(19, 'Mrs. Lavonne Crist', 'jaylon44@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ayNgG3EQTh', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(20, 'Angie Gulgowski MD', 'keegan.bernier@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'apqX9K1WMl', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(21, 'Mr. Monty Murazik III', 'xleffler@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1I1IVUe2O8', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(22, 'Eliza Metz V', 'jamil95@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RkTVh4CM50', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(23, 'Prof. Abraham Brown', 'hoeger.jeffry@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PaLk8YBY3k', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(24, 'Efren Bartoletti', 'kertzmann.amari@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0nzDoKQjfb', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(25, 'Hannah Hirthe', 'maryjane.bartoletti@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qbdZkr0Dmo', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(26, 'Giovanna Wolff', 'walsh.annabell@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5WZpe8nLtN', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(27, 'Norbert Franecki', 'herman.henry@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NKOIwP8ftK', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(28, 'Percival Greenholt', 'jose.beatty@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'h0WqzCtv2v', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(29, 'Charley Powlowski', 'marquardt.vilma@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'C1cULBS4Gf', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(30, 'Giuseppe Grady', 'eschroeder@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'f9s7It9rXD', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(31, 'Kolby Mertz Sr.', 'geovanni.rutherford@example.net', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8wVlmFgGQo', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(32, 'Payton Orn III', 'lilla.bauch@example.org', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EkqdUVsZpP', NULL, NULL, NULL, '2024-12-20 14:57:26', '2024-12-20 14:57:26'),
	(33, 'Chelsea Gusikowski', 'torp.chelsey@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0QcHoA6I9x', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(34, 'Gerald Hills', 'edison93@example.com', '2024-12-20 14:57:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mLJDaMYDOR', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(35, 'Dr. Lindsey Kshlerin Jr.', 'hoconnell@example.com', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'c05p6i6MEc', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(36, 'Tania Metz Sr.', 'rbartoletti@example.com', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '92GLKLnd2Q', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(37, 'Dr. Destin Kuhlman Sr.', 'altenwerth.rogers@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'sM1bwwsKCQ', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(38, 'Wanda Stokes', 'tcronin@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Lx9yC7yGxR', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(39, 'Mr. Isac Armstrong PhD', 'huels.magdalena@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qU82xHfFzH', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(40, 'Miss Golda Flatley PhD', 'cristopher76@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dAVQuwrXI3', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(41, 'Ruby Kiehn', 'conroy.howell@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gQFel8JCIy', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(42, 'Dustin Reynolds', 'christ28@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4l8y4bhFXC', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(43, 'Evans Jacobi', 'agutmann@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DcHioJi1Y4', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(44, 'Rasheed Greenfelder', 'tremblay.dessie@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dSAovXW73y', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(45, 'Callie Greenfelder', 'hickle.everardo@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cHmuJaq9wX', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(46, 'Mr. Jesse Gerhold V', 'cordie.abshire@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Zc2ALabfva', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(47, 'Chance Bins', 'luella75@example.com', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LqcXfyZXBj', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(48, 'Prof. Pedro Schumm PhD', 'altenwerth.enola@example.com', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5EGVb4AXqY', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(49, 'Jimmie Hudson DVM', 'zosinski@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XN94QXD3s5', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(50, 'Lisa Runolfsdottir', 'howell.lionel@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'v34ngkTs3w', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(51, 'Mekhi Wisoky', 'kuvalis.leola@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'WufzUOEGwN', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(52, 'Mrs. Charity Jakubowski II', 'enader@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'QhankU5Van', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(53, 'Eli Becker', 'ddickinson@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'B0hlBKzWkl', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(54, 'Frederik Emard', 'nwill@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EdtQ1Ez76r', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(55, 'Miss Shaylee Gislason', 'mking@example.org', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GZiVdd73Cl', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(56, 'Rocio Parker', 'palma27@example.com', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VEfM4hERsV', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(57, 'Nicholas DuBuque I', 'ywiza@example.net', '2024-12-20 14:57:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'j1IiKcUUhu', NULL, NULL, NULL, '2024-12-20 14:57:27', '2024-12-20 14:57:27'),
	(58, 'Jonathan Monga', 'jmonga98@gmail.com', NULL, '$2y$12$DYm2E2GNDbEx5cu.xTcnyOBl0duE5T/7jeQKzEZUIA.5Dk8JorIxa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-23 11:56:50', '2024-12-23 11:56:50'),
	(65, 'Maishapay', 'contact@maishapay.net', NULL, '$2y$12$2w0SaKUOczRzxAnRi6CYre3cfyV693cGRFkW5sT5QXRF3Vp.Tip4u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-23 14:17:22', '2024-12-23 14:17:22'),
	(66, 'Maishapay', 'contact@maishapay.org', NULL, '$2y$12$ukILRB0UTCHqEnrRiCio0Of5TrDlypljvrFHgls.knZG20o2QqY2y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-23 15:39:24', '2024-12-23 15:39:24'),
	(67, 'Jonathan Monga', 'maishapay@online.com', NULL, '$2y$12$l18dmKqEruIlrdOim27jSOb2V0K8xFl49SWxd4Rq9pJtsrcNxygS6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-23 15:58:02', '2024-12-23 15:58:02'),
	(68, 'Jonathan Monga', 'admin@themesdesign.com', NULL, '$2y$12$J2aQAciR6HUo3eQaQBOZSOp8RUz/gtTGTMOSmc2VxtbjHb8Zj9J9O', NULL, NULL, NULL, 'zpI1Y4fTNYyOMZtVF1JnbqijUuxNwzpq23jJFGqO5j1VWLW5LTZOL8cPSgHx', NULL, NULL, NULL, '2024-12-24 03:55:49', '2024-12-24 03:55:49'),
	(69, 'Jonathan Monga', 'jmonga98@gmail.in', NULL, '$2y$12$6Qcct8jQ1DzLi69tZy1Lg.biA5nnIEyHnMw7x4frfo6LgWw4fl2HS', NULL, NULL, NULL, 'h2tVEuwJAJ3Com8jgOuMyn3GFMvvac7po6U3oW4VQaZEZSj4N7deRvKJwqMa', NULL, NULL, NULL, '2025-01-07 07:09:21', '2025-01-07 07:09:21'),
	(70, 'Jonathan Monga', 'contact@maishapay.io', NULL, '$2y$12$O6R9bPP7YZvu1p2chqUPEOekPOh82TWa/BZU/5LiwI/tkbqOFt7DK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-07 07:45:27', '2025-01-07 07:45:27');

-- Dumping structure for table hr_core.views
DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint unsigned NOT NULL,
  `visitor` text COLLATE utf8mb4_unicode_ci,
  `collection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hr_core.views: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
