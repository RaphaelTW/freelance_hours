-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/10/2024 às 01:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `freelance_hours`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_08_153501_create_projects_table', 1),
(5, '2024_10_08_175122_create_proposals_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ends_at` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  `tech_stack` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tech_stack`)),
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `ends_at`, `status`, `tech_stack`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'exercitationemnullaofficiisreprehenderitdolores', 'oi', '2024-10-13 08:02:45', 'open', '[\"javascript\",\"react\",\"vite\"]', 67, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(2, 'praesentiuminidporronulla', 'oi', '2024-10-13 07:01:04', 'open', '[\"nodejs\"]', 190, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(3, 'aliquiddoloremrecusandaequasaperiam', 'oi', '2024-10-11 07:31:07', 'closed', '[\"nodejs\"]', 169, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(4, 'deseruntdoloresdoloresveniamillo', 'oi', '2024-10-12 14:19:05', 'closed', '[\"nodejs\",\"nextjs\",\"vite\"]', 158, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(5, 'undeinciduntquisquamquamaperiam', 'oi', '2024-10-12 19:15:13', 'open', '[\"nextjs\",\"nodejs\",\"vite\",\"react\"]', 197, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(6, 'consecteturidrerumnequeex', 'oi', '2024-10-11 08:47:35', 'open', '[\"javascript\",\"nextjs\",\"nodejs\",\"vite\",\"react\"]', 180, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(7, 'perspiciatisillumculpavoluptasexercitationem', 'oi', '2024-10-13 01:26:06', 'open', '[\"react\",\"vite\",\"nodejs\"]', 116, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(8, 'quifugiatestquodvoluptas', 'oi', '2024-10-12 12:24:45', 'closed', '[\"vite\",\"react\",\"nextjs\"]', 198, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(9, 'porrovelnequeipsaet', 'oi', '2024-10-11 11:44:32', 'open', '[\"react\",\"nextjs\"]', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(10, 'occaecatinonfugarepudiandaerem', 'oi', '2024-10-12 03:10:06', 'closed', '[\"nodejs\",\"javascript\"]', 73, '2024-10-11 02:32:35', '2024-10-11 02:32:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `hours` smallint(5) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `proposals`
--

INSERT INTO `proposals` (`id`, `email`, `hours`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'heller.andrew@example.com', 72, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(2, 'ada80@example.com', 27, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(3, 'schimmel.jada@example.net', 35, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(4, 'river.weissnat@example.com', 83, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(5, 'schroeder.koby@example.com', 57, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(6, 'mante.vergie@example.com', 1, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(7, 'xgraham@example.net', 29, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(8, 'holly.conroy@example.org', 68, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(9, 'fhickle@example.org', 32, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(10, 'tmonahan@example.org', 66, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(11, 'adelle24@example.com', 47, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(12, 'runte.cordie@example.com', 29, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(13, 'larson.emie@example.net', 113, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(14, 'dluettgen@example.net', 98, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(15, 'drosenbaum@example.net', 96, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(16, 'garrick21@example.com', 53, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(17, 'maximillian.donnelly@example.com', 18, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(18, 'kylie.mitchell@example.org', 14, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(19, 'crooks.erich@example.org', 79, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(20, 'george.okeefe@example.com', 56, 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(21, 'alysha.ritchie@example.net', 88, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(22, 'nelda47@example.org', 25, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(23, 'george59@example.com', 7, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(24, 'seamus69@example.org', 1, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(25, 'annette.crona@example.org', 86, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(26, 'wilton28@example.com', 42, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(27, 'gveum@example.org', 80, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(28, 'dolly.grimes@example.com', 88, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(29, 'josephine90@example.com', 10, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(30, 'romaine.feeney@example.net', 99, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(31, 'marty48@example.net', 59, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(32, 'arlo.harvey@example.net', 50, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(33, 'rking@example.com', 89, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(34, 'shanahan.eugene@example.net', 81, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(35, 'lia59@example.com', 108, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(36, 'donnelly.rhea@example.com', 63, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(37, 'schneider.chance@example.org', 5, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(38, 'jett64@example.org', 9, 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(39, 'edna.hoppe@example.com', 23, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(40, 'christina55@example.net', 9, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(41, 'helmer.jacobi@example.org', 47, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(42, 'rubie.turcotte@example.org', 110, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(43, 'katelynn31@example.net', 34, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(44, 'mante.bernadette@example.com', 6, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(45, 'yfeeney@example.net', 36, 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(46, 'collier.jaunita@example.org', 96, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(47, 'cydney.muller@example.com', 39, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(48, 'kassulke.dorcas@example.org', 28, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(49, 'darrion09@example.org', 60, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(50, 'wskiles@example.org', 114, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(51, 'ada.gutmann@example.com', 60, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(52, 'lily36@example.com', 33, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(53, 'tbecker@example.net', 10, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(54, 'bcremin@example.com', 53, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(55, 'nikita.monahan@example.org', 102, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(56, 'kaleigh12@example.org', 38, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(57, 'feil.cary@example.net', 93, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(58, 'qwilliamson@example.com', 7, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(59, 'kling.jamey@example.net', 103, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(60, 'raynor.isaac@example.org', 82, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(61, 'elda89@example.org', 21, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(62, 'torphy.dave@example.com', 112, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(63, 'edwina.blick@example.com', 15, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(64, 'stanton.shemar@example.com', 79, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(65, 'sromaguera@example.net', 18, 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(66, 'hreichel@example.org', 11, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(67, 'steve72@example.com', 7, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(68, 'spowlowski@example.net', 10, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(69, 'anissa15@example.org', 45, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(70, 'stokes.janice@example.com', 32, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(71, 'mccullough.jazmin@example.com', 52, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(72, 'chloe.schinner@example.net', 94, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(73, 'abernathy.brandyn@example.org', 88, 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(74, 'pfannerstill.pamela@example.com', 79, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(75, 'lang.vilma@example.com', 52, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(76, 'kim11@example.com', 4, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(77, 'katrine82@example.org', 115, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(78, 'syble.dibbert@example.net', 91, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(79, 'steuber.marietta@example.com', 4, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(80, 'xzavier04@example.com', 21, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(81, 'jaltenwerth@example.com', 37, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(82, 'clemmie29@example.org', 58, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(83, 'tristian12@example.org', 61, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(84, 'imani.dicki@example.org', 91, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(85, 'okuneva.elmo@example.org', 22, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(86, 'reyes.block@example.net', 69, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(87, 'zulauf.helen@example.org', 23, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(88, 'huels.adeline@example.org', 12, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(89, 'kuvalis.shawna@example.net', 74, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(90, 'rebecca.king@example.org', 38, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(91, 'jane.gaylord@example.net', 2, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(92, 'kaci46@example.org', 33, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(93, 'victoria.pacocha@example.com', 1, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(94, 'gtremblay@example.net', 72, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(95, 'clementine80@example.org', 21, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(96, 'glover.reyna@example.com', 54, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(97, 'qbauch@example.net', 47, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(98, 'labadie.jovan@example.org', 117, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(99, 'hermann.kaylie@example.net', 47, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(100, 'zratke@example.com', 88, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(101, 'hjast@example.net', 108, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(102, 'jaydon92@example.com', 89, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(103, 'ciara.oconnell@example.net', 52, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(104, 'pabshire@example.net', 23, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(105, 'deshawn81@example.org', 12, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(106, 'mkris@example.com', 110, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(107, 'nthiel@example.com', 48, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(108, 'dan.zieme@example.net', 54, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(109, 'vmayer@example.com', 31, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(110, 'schiller.celia@example.net', 116, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(111, 'tpfeffer@example.org', 39, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(112, 'yswift@example.net', 86, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(113, 'gutmann.braulio@example.org', 25, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(114, 'hilbert.walker@example.com', 26, 6, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(115, 'viviane87@example.net', 118, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(116, 'stiedemann.nicolette@example.org', 79, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(117, 'bbosco@example.net', 5, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(118, 'rodrick73@example.com', 106, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(119, 'tfeeney@example.org', 44, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(120, 'layne20@example.org', 115, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(121, 'aboyle@example.org', 110, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(122, 'iwyman@example.org', 37, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(123, 'rosemarie.heller@example.net', 90, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(124, 'vkessler@example.net', 115, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(125, 'zion.connelly@example.org', 69, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(126, 'marshall.harber@example.com', 115, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(127, 'cbradtke@example.net', 43, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(128, 'desiree54@example.org', 51, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(129, 'melany74@example.net', 24, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(130, 'kpfannerstill@example.net', 4, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(131, 'cruickshank.ezra@example.com', 110, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(132, 'peyton.emmerich@example.net', 110, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(133, 'pagac.loren@example.net', 2, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(134, 'ramon.bednar@example.net', 92, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(135, 'casper69@example.net', 51, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(136, 'tgleason@example.com', 119, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(137, 'kiehn.gail@example.net', 19, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(138, 'labernathy@example.org', 115, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(139, 'emmie25@example.org', 101, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(140, 'brenda61@example.com', 30, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(141, 'wilkinson.henderson@example.com', 51, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(142, 'pjacobson@example.org', 89, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(143, 'rodrigo.huels@example.net', 104, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(144, 'cturcotte@example.com', 119, 7, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(145, 'egutkowski@example.net', 10, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(146, 'ryan.melvina@example.org', 96, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(147, 'micaela.feest@example.com', 90, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(148, 'dach.santina@example.net', 71, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(149, 'hickle.brant@example.net', 50, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(150, 'lauriane40@example.org', 13, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(151, 'annetta.swift@example.org', 28, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(152, 'johnston.maud@example.net', 17, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(153, 'selina.osinski@example.org', 18, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(154, 'jovan60@example.com', 119, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(155, 'janis.brakus@example.net', 33, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(156, 'cormier.libbie@example.com', 44, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(157, 'evan40@example.com', 60, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(158, 'wabbott@example.com', 30, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(159, 'kitty.mccullough@example.com', 68, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(160, 'leonard07@example.org', 67, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(161, 'toy.isaac@example.com', 99, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(162, 'ellen31@example.net', 6, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(163, 'mrempel@example.com', 75, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(164, 'qjakubowski@example.com', 55, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(165, 'kassulke.jillian@example.net', 80, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(166, 'bryce83@example.net', 115, 8, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(167, 'bernhard.sophie@example.net', 53, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(168, 'rsatterfield@example.net', 15, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(169, 'dante26@example.org', 68, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(170, 'era.mann@example.org', 39, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(171, 'madaline.dickens@example.net', 72, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(172, 'hblick@example.com', 15, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(173, 'bridgette99@example.org', 85, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(174, 'koss.meghan@example.com', 94, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(175, 'maegan.kirlin@example.org', 103, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(176, 'lolita37@example.net', 69, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(177, 'yasmeen95@example.com', 63, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(178, 'cassandra64@example.org', 12, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(179, 'adell.weimann@example.net', 74, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(180, 'makayla.kuvalis@example.org', 34, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(181, 'gdickens@example.net', 64, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(182, 'larson.yasmin@example.net', 1, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(183, 'fsimonis@example.com', 90, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(184, 'mary34@example.org', 80, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(185, 'kunde.kacey@example.com', 109, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(186, 'jbednar@example.com', 59, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(187, 'cierra66@example.com', 62, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(188, 'ikemmer@example.org', 71, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(189, 'lexus22@example.org', 22, 9, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(190, 'runte.meggie@example.net', 15, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(191, 'miller02@example.com', 16, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(192, 'maximus.haag@example.com', 51, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(193, 'kristopher37@example.com', 99, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(194, 'jeremie.okon@example.net', 54, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(195, 'jameson69@example.org', 69, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(196, 'reva.windler@example.net', 72, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(197, 'guy49@example.com', 72, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(198, 'belle41@example.org', 22, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(199, 'iherman@example.com', 23, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(200, 'jordy03@example.net', 113, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(201, 'solon05@example.com', 7, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(202, 'ray.ratke@example.org', 20, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(203, 'turcotte.leopoldo@example.net', 43, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(204, 'sophia77@example.com', 79, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(205, 'sebastian.hoppe@example.com', 83, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(206, 'finn84@example.net', 90, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(207, 'giovani.bogan@example.net', 40, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(208, 'ena.gutkowski@example.org', 102, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(209, 'wondricka@example.com', 63, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(210, 'eleanore.harvey@example.org', 112, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(211, 'tod78@example.com', 30, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(212, 'fgleichner@example.net', 41, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(213, 'sschultz@example.org', 30, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(214, 'hwalker@example.org', 50, 10, '2024-10-11 02:32:35', '2024-10-11 02:32:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WatjY3Dp61yqpddwWXgViBJgFZK6kQuUbNDJoH70', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjRYVmlzYWFqc3J0YjAzSVNzNEJEUjltcUpFVUVxWUh3R1dpelZLbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1728603214);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Robin Fay IV', 'ipfannerstill@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(2, 'Barney Kozey', 'morgan04@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(3, 'Amani McKenzie', 'dheller@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(4, 'Maximilian Crist', 'chanel66@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(5, 'Deshaun Gorczany', 'dherman@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(6, 'Hertha Tremblay', 'glenda.quitzon@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(7, 'Willis Toy', 'xander22@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(8, 'Susan Fadel', 'volkman.aron@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(9, 'Christiana Little Sr.', 'hbeatty@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(10, 'Friedrich Mayer', 'lemke.julie@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(11, 'Sophia Ziemann', 'yrohan@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(12, 'Lyric Abshire', 'gladys.carroll@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(13, 'Lowell Schowalter', 'mateo25@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(14, 'Colt Stanton', 'tremayne.batz@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(15, 'Woodrow Emard', 'melisa94@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(16, 'Jaren Mayert II', 'gibson.judd@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(17, 'Dominic Breitenberg', 'kassulke.carmela@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(18, 'Dr. Enola Emard II', 'zieme.glenna@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(19, 'Emmanuelle Kovacek MD', 'kemmer.abagail@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(20, 'Shany Gerlach', 'gerda.mertz@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(21, 'Timmy Frami', 'bartell.edythe@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(22, 'Delta Schulist', 'vanessa.simonis@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(23, 'Mr. Claude Wisoky III', 'garnett.romaguera@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(24, 'Santiago Kling', 'vschaefer@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(25, 'Prof. Helmer Crona', 'pheaney@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(26, 'Clementine Dooley', 'jewell.hand@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(27, 'Vaughn Funk', 'miguel.stehr@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(28, 'Miss Alison Braun PhD', 'darryl70@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(29, 'Dr. Bart Witting', 'rmckenzie@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(30, 'Natasha Bahringer', 'heather.tillman@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(31, 'Matteo Howell', 'clotilde.crona@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(32, 'Jessie Daugherty', 'chet.douglas@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(33, 'Adrain O\'Hara', 'tbarrows@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(34, 'Ezequiel Marquardt', 'rauer@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(35, 'Glenna Langosh', 'kasandra96@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(36, 'Prof. Rae VonRueden Jr.', 'kabernathy@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(37, 'Katherine Hahn', 'anjali20@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(38, 'Kristian Lubowitz DVM', 'magdalena36@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(39, 'Breanne Jenkins', 'quitzon.dan@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(40, 'Miss Una Williamson', 'kip.gottlieb@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(41, 'Osborne Christiansen', 'randi.heaney@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(42, 'Ed Hilpert', 'oraynor@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(43, 'Wendy Doyle', 'conor.okuneva@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(44, 'Verlie Ziemann', 'flossie89@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(45, 'Daphne Breitenberg', 'lebsack.dominique@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(46, 'Dr. Skye Zulauf', 'kkertzmann@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(47, 'Antwan Swaniawski', 'iboyer@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(48, 'Dr. Elena Conn IV', 'yasmine65@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(49, 'Ms. Harmony Haley', 'mclaughlin.carson@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(50, 'Payton Gaylord', 'fadel.sigurd@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(51, 'Eldora Bashirian', 'queenie46@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(52, 'Gregory Schuppe', 'devon.koepp@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(53, 'Dalton Pagac', 'koch.harold@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(54, 'Sylvia Botsford', 'rmurazik@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(55, 'Mrs. Tyra Jones', 'thansen@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(56, 'Christina Kutch', 'zlindgren@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(57, 'Johnathon Haag', 'tristian46@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(58, 'Shayne Breitenberg DVM', 'bell87@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(59, 'Amari Nikolaus DDS', 'cicero57@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(60, 'Prof. Monte Vandervort', 'spencer.lavinia@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(61, 'Fay Cruickshank', 'laurianne.streich@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(62, 'Chase Greenfelder V', 'sienna46@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(63, 'Ashlynn Ferry', 'edwardo.rath@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(64, 'Dayton Steuber', 'lempi80@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(65, 'Electa Bradtke', 'feichmann@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(66, 'Cary Quitzon', 'petra.rau@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(67, 'Janet Leffler', 'gcummerata@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(68, 'Mr. Adalberto Rolfson I', 'legros.rosario@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(69, 'Ms. Era Jones', 'little.audra@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(70, 'Mr. Hoyt Gerlach III', 'igaylord@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(71, 'Yadira Cummerata', 'judge.weissnat@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(72, 'Stephen Davis V', 'luther.rau@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(73, 'Dr. Elody Cassin V', 'mdaniel@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(74, 'Ozella Schiller', 'wuckert.jessika@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(75, 'Dr. Josianne Mertz V', 'blake.larkin@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(76, 'Collin Kuhn', 'maybelle.upton@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(77, 'Payton Gerlach', 'lukas.swift@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(78, 'Fernando Luettgen', 'rosemary.parisian@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(79, 'Martina Reinger', 'collins.dwight@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(80, 'Adrien Batz', 'conn.pierre@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(81, 'Joel Towne', 'esporer@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(82, 'Mr. Jaden Howe', 'kirsten79@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(83, 'Mr. Maynard Wisozk DVM', 'reichel.woodrow@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(84, 'Delmer Schuster', 'bernhard.arno@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(85, 'Rosalind Gleichner', 'ines76@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(86, 'Alexie Bechtelar', 'barton.gunnar@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(87, 'Keven Grimes', 'dixie96@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(88, 'Dr. Elmore Kunze Sr.', 'vfriesen@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(89, 'Terence Kuhlman', 'cremin.elyssa@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(90, 'Mrs. Hallie Kreiger IV', 'jerde.demario@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(91, 'Dr. Tremayne Wilkinson MD', 'ubarrows@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(92, 'Elwin DuBuque Sr.', 'heidenreich.owen@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(93, 'Sharon Hamill', 'shields.ernie@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(94, 'Cyrus Paucek', 'anderson.frieda@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(95, 'Miss Madalyn Mohr MD', 'katelynn66@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(96, 'Assunta McDermott', 'sabryna19@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(97, 'Brain Macejkovic DDS', 'tgraham@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(98, 'Kacie Schoen', 'noah.reinger@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(99, 'Annamarie Lemke', 'kgrimes@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(100, 'Alta Mraz', 'mackenzie.little@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(101, 'Eileen Schinner', 'lavon20@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(102, 'Mr. Frank Abernathy DDS', 'zboncak.ayana@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(103, 'Miss Jessyca Wilderman', 'keshawn.stamm@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(104, 'Ida Predovic', 'kling.marielle@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(105, 'Hosea Gerlach III', 'zoila.gusikowski@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(106, 'Everette Turcotte', 'leopold55@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(107, 'Aliza Conn', 'eloy46@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(108, 'Mr. Tyrel Erdman IV', 'deborah.kohler@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(109, 'Willow Huels', 'luettgen.emelie@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(110, 'Prof. Donny Marks Sr.', 'millie.oreilly@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(111, 'Frank Hamill', 'clemmie.bauch@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(112, 'Mallory Cronin', 'jakubowski.myrtie@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(113, 'Paxton Upton Jr.', 'cole.matteo@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(114, 'Prof. Mauricio Blanda', 'claudie56@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(115, 'Abigale Senger', 'haag.penelope@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(116, 'Ayla Murazik', 'guillermo.wiegand@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(117, 'Miss Jade Thompson', 'grimes.celia@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(118, 'Rowena Fisher', 'frankie.rogahn@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(119, 'Jameson Dickinson', 'brett.schaefer@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(120, 'Alyce Rodriguez', 'rosie09@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(121, 'Sonny Kuvalis', 'ferne.conroy@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(122, 'Shane Watsica', 'keeling.dana@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(123, 'Rickie Weissnat', 'qcarroll@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(124, 'Dina Gottlieb', 'zeichmann@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(125, 'Chadrick Denesik', 'botsford.minerva@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(126, 'Robyn Kozey', 'beer.gerda@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(127, 'Prof. Narciso Paucek II', 'halvorson.chance@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(128, 'Jerel Lubowitz', 'thompson.fabian@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(129, 'Jermaine Wintheiser II', 'rebeca06@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(130, 'Devin Daugherty', 'botsford.clifford@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(131, 'Miss Amely Schroeder IV', 'juston48@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(132, 'Santa Hirthe', 'emard.lamar@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(133, 'Anika Bergstrom', 'furman47@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(134, 'Dr. Colten Cruickshank', 'gottlieb.laurianne@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(135, 'Chelsey Kilback', 'cole.nelle@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(136, 'Dr. Chaz Ondricka DVM', 'ewell.bernier@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(137, 'Miss Mariela Hoeger', 'dnitzsche@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(138, 'Newton Auer', 'bernhard.misty@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(139, 'Talia Kutch', 'franecki.treva@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(140, 'Verda Ward', 'hulda07@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(141, 'Cameron Runolfsson', 'rico45@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(142, 'Shirley McGlynn', 'violet.reichel@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(143, 'Bridget Beer DVM', 'sgrant@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(144, 'Carolina Schuster', 'brakus.maye@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(145, 'Isai Goodwin II', 'mrussel@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(146, 'Jameson Schroeder', 'swisozk@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(147, 'Gail Jerde', 'jimmy47@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(148, 'Roscoe Nolan DDS', 'kelly66@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(149, 'Dr. Eleonore Weissnat', 'kamryn.hyatt@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(150, 'Nichole Predovic', 'davin.bosco@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(151, 'Kameron Reichel', 'ona86@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(152, 'Laurence Hills II', 'powlowski.palma@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(153, 'Asa Windler MD', 'ilarkin@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(154, 'Kristofer Gerhold', 'kozey.yasmin@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(155, 'Noemi Jaskolski', 'daniel.vella@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(156, 'Tyler Fadel', 'carmela.casper@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(157, 'Ronaldo Jerde', 'lamont.rohan@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(158, 'Dusty Kunde', 'rozella75@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(159, 'Dr. Nadia Hagenes', 'evolkman@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(160, 'Golden Adams', 'kianna.kemmer@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(161, 'Jennie Corkery', 'enoch58@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(162, 'Warren Jacobs III', 'hauck.keith@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(163, 'Mrs. Lia Greenholt MD', 'jacinto97@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(164, 'Miss Annalise Douglas PhD', 'wade48@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(165, 'Mack Hane', 'ferry.emmy@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(166, 'Prof. George Bogan DDS', 'michaela.oberbrunner@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(167, 'Dr. Donna Rutherford', 'bertram.friesen@example.org', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(168, 'Dr. Zora Bayer', 'weissnat.germaine@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(169, 'Howard Dicki', 'rice.genesis@example.org', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(170, 'Mrs. Salma Abernathy', 'deven88@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(171, 'Adelbert Nienow', 'tbode@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(172, 'Andy Boehm', 'breitenberg.sally@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(173, 'Prof. Milford Simonis', 'addie31@example.org', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(174, 'Ali Rath', 'adelia.torp@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(175, 'Emerson Dickens', 'clotilde.bartoletti@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:34', '2024-10-11 02:32:34'),
(176, 'Greg Harvey', 'trantow.mariana@example.net', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(177, 'Jarret Murphy', 'samara.huel@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(178, 'Gabriella Morissette', 'felicita69@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(179, 'Kaelyn Gottlieb Sr.', 'kweber@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(180, 'Dr. Don Rodriguez Sr.', 'rhoda.muller@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(181, 'Sonny Blick IV', 'alana.roob@example.org', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(182, 'Ardith Rodriguez', 'moen.reinhold@example.net', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(183, 'Brenna Bahringer', 'marion.goldner@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(184, 'Sabina Walker', 'jude12@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(185, 'Mrs. Hallie Grant II', 'dayana.kuhic@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(186, 'Aurelia Orn DDS', 'gianni25@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(187, 'Ernestina Kiehn', 'darby43@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(188, 'Monroe Dietrich', 'cmorissette@example.org', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(189, 'Dewitt VonRueden V', 'xbuckridge@example.com', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(190, 'Prof. Porter Bruen II', 'davon03@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(191, 'Amiya Schuppe', 'rcummings@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(192, 'Ms. Alvena Harvey', 'abednar@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(193, 'Mauricio Reynolds', 'marcellus.wolf@example.net', 'https://avatar.ran.liara.run/public', 1, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(194, 'Waino Reichel', 'dgutkowski@example.com', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(195, 'Adolfo Prohaska', 'yjacobs@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(196, 'Dominic Parker', 'gutmann.kristian@example.com', 'https://avatar.ran.liara.run/public', 3, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(197, 'Jettie Prosacco', 'langworth.janice@example.com', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(198, 'Precious Collins', 'laura01@example.net', 'https://avatar.ran.liara.run/public', 2, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(199, 'Gus Harris', 'oharvey@example.com', 'https://avatar.ran.liara.run/public', 4, '2024-10-11 02:32:35', '2024-10-11 02:32:35'),
(200, 'Nicholas Weber', 'anna.skiles@example.net', 'https://avatar.ran.liara.run/public', 5, '2024-10-11 02:32:35', '2024-10-11 02:32:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_created_by_foreign` (`created_by`);

--
-- Índices de tabela `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proposals_project_id_foreign` (`project_id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Restrições para tabelas `proposals`
--
ALTER TABLE `proposals`
  ADD CONSTRAINT `proposals_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
