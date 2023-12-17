-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 04 déc. 2023 à 19:37
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `qtestock` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `imageart` varchar(255) NOT NULL,
  `scategorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `designation`, `marque`, `reference`, `qtestock`, `prix`, `imageart`, `scategorieID`, `created_at`, `updated_at`) VALUES
(2, 'Pringles Chips Pringles ORG 40gr', 'Pringles', 'Chips', '10', '11', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658751504/images/chips.jpg.jpg', 25, NULL, NULL),
(3, 'Al Jazira Huile de grignons d\'olive', 'Al Jazira', 'Huilejs', '25', '0', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658751537/images/huilealjazeera.jpg.jpg', 26, NULL, NULL),
(4, 'Al Jazira Huile de grignons d\'olive', 'Al Jazira', 'Huilejs', '100', '29.5', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658751537/images/huilealjazeera.jpg.jpg', 26, NULL, NULL),
(5, 'Delice EAU MINERALE 1.5 L', 'Delice', 'eauxmin', '50', '2.3', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754189/images/eausabrine.jpg.jpg', 24, NULL, NULL),
(6, 'Delice Punch Orange 1,5L', 'Delice', 'delpush', '25', '2.9', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754135/images/deliceorange.jpg.jpg', 24, NULL, NULL),
(7, 'El Manar Lot de 3 Thon entier Extra - A l\'huile d\'olive', 'Elmanar', 'thon', '100', '3.8', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755235/images/fnarThon.jpg.jpg', 25, NULL, NULL),
(8, 'Delice D�li\'O Menthe - 25Cl', 'Delice', 'delio', '50', '1.2', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754036/images/delicedelio.jpg.jpg', 24, NULL, NULL),
(9, 'Infinix Smart 5 - 6.6\" - 3 Go - 64 Go - Quetzal Cyan', 'Infinix', 'Infinix', '5', '3500', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754656/images/infinix2.jpg.jpg', 35, NULL, NULL),
(10, 'Samsung Galaxy A02 s - 6.5\" - 4Go - 64Go - Noir', 'Samsung', 'GalaxyA02', '4', '2560', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754339/images/samsungGalaxy1.jpg.jpg', 34, NULL, NULL),
(11, 'Tecno Spark 6 - 6.8\" - 4 Go - 128 Go', 'TecnoOC', 'TecnoOC', '14', '650', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755208/images/tecno.jpg.jpg', 30, NULL, NULL),
(12, 'Tecno Pop 4 - 6\"- 2Go - 32Go', 'Tecno', 'Tecno4', '10', '222', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755185/images/tecno1.jpg.jpg', 30, NULL, NULL),
(13, 'Nokia 1.4 - 6.52\" - 2 Go - 32 Go - Charcoal', '\r\nNokia', 'Nokia1', '5', '320', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754923/images/nokia.jpg.jpg', 30, NULL, NULL),
(14, 'XIAOMI Redmi 9 - 6.53\" - 4 Go - 64 Go', 'Xioami', 'redmi9', '10', '850', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658750695/images/xioami.jpg.jpg', 30, NULL, NULL),
(15, 'Logicom La Tab Link 71 - 7\"- 16GB', 'Logicom', 'Tablog\r\n', '5', '420', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755151/images/tab.jpg.jpg', 30, NULL, NULL),
(16, 'Lenovo Tab M7 7.0 - 16GB', 'Lenouv', 'Lenoouv1', '5', '2580', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754720/images/lenov21.jpg.jpg', 31, NULL, NULL),
(17, 'Huawei Tablette - MatePad T', 'Huawei', 'Huawi1', '10', '420', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754627/images/hwawi1.jpg.jpg', 32, NULL, NULL),
(18, 'Huawei MatePad T - 10', 'Huawei', 'Huawei10', '5', '1200', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754588/images/hw.jpg.jpg', 32, NULL, NULL),
(19, 'Hp PC Portable - 13.3\" - Intel Core™ i5-7200U', 'Hp', 'HP1', '5', '2900', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754499/images/HP1.jpg.jpg', 31, NULL, NULL),
(20, 'Lenovo PC Portable ThinkBook - i3 10è Gén-4Go-1To-Gris', 'lenov1', 'lenov1', '5', '1880', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754720/images/lenov21.jpg.jpg', 31, NULL, NULL),
(21, 'Lenovo PC Portable IP330/4000 DualCore/4Go/1To', 'Lenovo', 'Lenov22', '4', '1450', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754854/images/lenov23.jpg.jpg', 31, NULL, NULL),
(22, 'DELL PC Inspiron 5570', 'DELL', 'Dell5570', '5', '2200', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754060/images/dell.jpg.jpg', 31, NULL, NULL),
(23, 'Versus Pc portable V-Book - 2 Go', 'Versus', 'VersusVBOO', '12', '1650', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755316/images/versus2.jpg.jpg', 31, NULL, NULL),
(24, 'Hp Pc portable I3 11è G�n 8Go', 'Hp', 'HPI3', '5', '1330', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754533/images/hp10.jpg.jpg', 31, NULL, NULL),
(25, 'Pc Montage - Core 2 DUO - 4Go - 320Go', 'DELL', 'DELL2C', '5', '1280', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754060/images/dell.jpg.jpg', 31, NULL, NULL),
(26, 'Samsung T�l�viseur 43\" - Flat Smart Full HD TV', 'Samsung', 'Samsung5300', '5', '1980', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755102/images/tele1.jpg.jpg', 35, NULL, NULL),
(27, 'Condor Smart 43SD520 Android v9.0', 'Condor', 'condor1', '5', '1800', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658751608/images/condor1.jpg.jpg', 35, NULL, NULL),
(28, 'Telefunken T�l�viseur Smart - 43\" ANDROID', 'Telefunken ', 'Telefunken10', '50', '880', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658593291/images/about-bg.jpg.jpg', 35, NULL, NULL),
(29, 'Telefunken TV 43\" - E20 - LED - Full HD', 'Telefunken', 'E20', '10', '1280', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754162/images/f1.jpg.jpg', 35, NULL, NULL),
(30, 'LG TV LG 4K Smart UHD UN73 de 43 pouces', 'LG', 'LG120', '5', '1900', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754881/images/lg.jpg.jpg', 35, NULL, NULL),
(31, 'Samsung Tv - 43\" Full HD Smart N5300', 'Samsung ', 'UA43N5300', '10', '2500', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755290/images/s1.jpg.jpg', 35, NULL, NULL),
(32, 'Samsung TV Crystal UHD 50 pouces', 'Samsung', 'TU7100', '5', '2180', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755263/images/crystal1.jpg.jpg', 35, NULL, NULL),
(33, 'Samsung Curved TV 65 4K UHD', 'Samsung', 'curved1', '2', '4500', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658753996/images/curved.jpg.jpg', 35, NULL, NULL),
(34, 'Samsung Téléviseur 55\" LED ULTRA HD 4K Smart tv', 'Samsung', 'Sams55', '10', '2100', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755069/images/hd2.jpg.jpg', 35, NULL, NULL),
(35, 'Samsung Smart 4K TV UHD - 65\"', 'Samsung', 'RU7100', '10', '4200', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658755035/images/k4.jpg.jpg', 35, NULL, NULL),
(36, 'XIAOMI Caméra de sécurité XIAOMI Home 360', 'XIAOMI', 'Home 360', '40', '350', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658751572/images/cam.jpg.jpg', 36, NULL, NULL),
(37, 'Sandisk Flash Disque', 'Sandisk', 'flash1', '40', '19', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754288/images/flash1.jpg.jpg', 32, NULL, '2023-11-28 12:31:24'),
(38, 'Iron Gym Barre fixe d�montable', 'Iron Gym', 'Gym1', '', '69', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658754379/images/gym.jpg.jpg', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomcategorie` varchar(20) NOT NULL,
  `imagecategorie` varchar(255) NOT NULL DEFAULT '/img/default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nomcategorie`, `imagecategorie`, `created_at`, `updated_at`) VALUES
(2, '�lectroniques', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749242/images/lenouv.jpg.jpg', NULL, NULL),
(3, 'T�l�phone & Tablette', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749354/images/Telephones-tablettes.jpg.jpg', NULL, NULL),
(4, 'Informatique', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749154/images/Informatique.jpg.jpg', NULL, NULL),
(5, 'Mode', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658747406/images/Mode-HommeJ.jpg.jpg', NULL, NULL),
(6, 'Articles de sport', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749202/images/sport4.jpg.jpg', NULL, NULL),
(7, 'Sant� & Beaut�', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749261/images/Sante-beaute.jpg.jpg', NULL, NULL),
(8, 'Superette', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658749330/images/Superettes.jpg.jpg', NULL, NULL),
(9, 'jeux vidéos', 'http://res.cloudinary.com/iset-sfax/image/upload/v1658593524/images/jeuxvideo.jpg.jpg', NULL, NULL),
(10, 'categorie 1', 'cccc', '2023-11-14 20:21:26', '2023-11-14 20:21:26'),
(11, 'categorie1', 'bbb', '2023-11-14 20:28:58', '2023-11-14 20:28:58'),
(12, 'ez f,ef', 'feff', '2023-11-14 20:29:39', '2023-11-14 20:29:39');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_10_081159_create_categories_table', 1),
(6, '2023_10_17_084248_create_scategories_table', 1),
(7, '2023_10_24_081055_create_articles_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scategories`
--

CREATE TABLE `scategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomscategorie` varchar(255) NOT NULL,
  `imagescategorie` varchar(255) NOT NULL,
  `categorieID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `scategories`
--

INSERT INTO `scategories` (`id`, `nomscategorie`, `imagescategorie`, `categorieID`, `created_at`, `updated_at`) VALUES
(1, 'Mode Homme', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/modehomme.png?alt=media&token=6c74b4e9-9e55-43fd-9869-90ec8a916a0b', 5, NULL, NULL),
(2, 'Mode Femme', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Mode-femme.png?alt=media&token=a1b79f4b-c013-4d0f-b319-b25a932862e9', 5, NULL, NULL),
(3, 'Mode Enfant', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Mode-enfant.png?alt=media&token=c8bd818b-a650-4a23-8bf3-3f304b563593', 5, NULL, NULL),
(4, 'Mode Bébé', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Mode-bebe.png?alt=media&token=a15c6524-f6a3-4e5d-8e49-4e61987386a0', 5, NULL, NULL),
(5, 'Montres', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Montre.png?alt=media&token=34c2c701-1356-4ec1-aa8d-d371fd9807aa', 5, NULL, NULL),
(6, 'Bagagerie', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Bagagerie.png?alt=media&token=30dc9865-cbe3-4a4a-8472-1daef4064bbe', 6, NULL, NULL),
(7, 'Running', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/sport1.jpg?alt=media&token=f4ce0501-49c5-4d27-8f83-e9d7b5117528', 6, NULL, NULL),
(8, 'loisirs en plein air', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/sport3.jpg?alt=media&token=9a91f6f3-4f3e-4ab6-a9d5-5007a204fbfd', 6, NULL, NULL),
(9, 'Sport de raquette', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/gym3.jpg?alt=media&token=055b0f4a-cec7-4aad-a3b8-67a035c45416', 6, NULL, NULL),
(10, 'Sport & Fitness', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/gym3.jpg?alt=media&token=055b0f4a-cec7-4aad-a3b8-67a035c45416', 6, NULL, NULL),
(11, 'Maquillage', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Maquillage.jpg?alt=media&token=c6d55d48-3a7e-4196-9097-dae3b0323888', 7, NULL, NULL),
(12, 'Parfum Homme', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/ParfumH.jpg?alt=media&token=3a48b836-3e85-4236-b3cf-ac8707867621', 7, NULL, NULL),
(13, 'Parfum Femme', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/ParfumF.jpg?alt=media&token=28591a72-be72-4a90-8537-faffaf0c8507', 7, NULL, NULL),
(14, 'Hygiene & santé', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Hygieneetsante.jpg?alt=media&token=71cb9d09-a703-4e5c-9c51-caf11293bfb2', 7, NULL, NULL),
(15, 'Equipement Medicaux', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Equipement-medicaux.jpg?alt=media&token=23520efe-7306-4e10-a2c7-43cf4b73e73b', 7, NULL, NULL),
(16, 'Massage', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/massage.jpg?alt=media&token=22bdae7a-17b5-4239-b46a-1539a24db748', 7, NULL, NULL),
(17, 'Vitamines', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Vitamines.jpg?alt=media&token=faeffd48-719d-4e8c-92f5-2836191cddb1', 7, NULL, NULL),
(18, 'Pharmacerie', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Pharmacerie.jpg?alt=media&token=e159f6d1-a24e-4fd7-afbf-2657884a7c59', 7, NULL, NULL),
(19, 'Bébé', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/B%C3%A9b%C3%A9.jpg?alt=media&token=550839b2-e114-4668-8045-9a96d2e185ae', 7, NULL, NULL),
(20, 'Lessives', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Lessive-M.png?alt=media&token=e29d5741-7b82-4ee5-9acb-5f55f6da14c6', 8, NULL, NULL),
(21, 'Desinfectants', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Desinfectants.png?alt=media&token=848a030b-159d-49db-ae12-668c3a348686', 8, NULL, NULL),
(22, 'Sucré & Salé', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/healthy-m.png?alt=media&token=4ea7c9a4-a619-44ac-b415-b832ea488c39', 8, NULL, NULL),
(23, 'Boissons', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Boissons.png?alt=media&token=082e9cef-62f9-4c3a-a75d-88930545d425', 8, NULL, NULL),
(24, 'Petit Dejeuner', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Petit-Dejeuner.png?alt=media&token=b9ef4466-95ae-4b9a-b36b-e2125c95acc6', 8, NULL, NULL),
(25, 'Conserves', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Aliments-En-Conserve-M.png?alt=media&token=5a1fc48a-0e91-4216-8d6d-4a77c46e1525', 8, NULL, NULL),
(26, 'Cuisson', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/cuisson.png?alt=media&token=ab83c113-f6a5-45d0-a8b3-e3bd039e8289', 8, NULL, NULL),
(27, 'Nettoyage', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/nettoyage.png?alt=media&token=412a5649-8638-422d-b7dd-842a6c5fece1', 8, NULL, NULL),
(28, 'Papiers & plastiques', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Papiers-et-plastiques-M.png?alt=media&token=97873f54-1348-4b14-a607-f8fde80fef83', 8, NULL, NULL),
(29, 'Condiments & Sauces', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Condiments-%26-Sauces-M.png?alt=media&token=fa71d098-f032-40e5-a002-3a5a6b58dffc', 8, NULL, NULL),
(30, 'Smartphones', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/A12.jpg?alt=media&token=06ab0e7d-1499-4446-bc0b-28fe7559f443', 3, NULL, NULL),
(31, 'Portable', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Basique.jpg?alt=media&token=ff9939ff-d699-4ab5-beef-c7fc951c3852', 3, NULL, NULL),
(32, 'Bureautique & accessoires', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/bureautique.jpg?alt=media&token=519d43e7-6fe3-435a-925a-932d99ee7098', 3, NULL, NULL),
(33, 'Electrom�nager et Meubles', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/MacBooks.jpg?alt=media&token=e1ab85b5-066a-4d74-a56b-b8375162879c', 2, NULL, NULL),
(34, 'Smart-TV', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Smarttv3.png?alt=media&token=2bda7dcb-8c26-44ee-a6d6-f724ed06e09f', 2, NULL, NULL),
(35, 'TV & SmartTV', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/Grandtv.jpg?alt=media&token=981ba18a-5c77-432d-bc9d-012737d4c61b', 2, NULL, NULL),
(36, 'High Tech', 'https://firebasestorage.googleapis.com/v0/b/gestcom-4a752.appspot.com/o/MacBooks.jpg?alt=media&token=e1ab85b5-066a-4d74-a56b-b8375162879c', 2, NULL, NULL),
(51, 'hhhhhhhhhhh', 'imageimageimageimage', 2, '2023-10-24 19:16:32', '2023-10-24 19:16:32');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_scategorieid_foreign` (`scategorieID`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_nomcategorie_unique` (`nomcategorie`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `scategories`
--
ALTER TABLE `scategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scategories_categorieid_foreign` (`categorieID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `scategories`
--
ALTER TABLE `scategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_scategorieid_foreign` FOREIGN KEY (`scategorieID`) REFERENCES `scategories` (`id`);

--
-- Contraintes pour la table `scategories`
--
ALTER TABLE `scategories`
  ADD CONSTRAINT `scategories_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
