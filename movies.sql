-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 02 déc. 2019 à 08:32
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_movie` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `id_movie`, `name`, `body`, `created_at`, `updated_at`) VALUES
(1, '1', 'name test', 'content test', '2019-11-29 07:38:09', '2019-11-29 07:38:09'),
(2, '7', 'thomas', 'trés bon film', '2019-11-29 07:46:38', '2019-11-29 07:46:38'),
(3, '7', 'Sam', 'Very good movie', '2019-11-29 07:56:55', '2019-11-29 07:56:55'),
(4, '7', 'Tom', 'I like quentin tarantino', '2019-11-29 08:38:43', '2019-11-29 08:38:43'),
(5, '7', 'New test', 'new comment', '2019-11-29 08:42:58', '2019-11-29 08:42:58'),
(6, '7', 'test', 'test', '2019-11-29 08:44:48', '2019-11-29 08:44:48'),
(7, '2', 'Thoms', 'Awesome movie', '2019-11-29 09:02:54', '2019-11-29 09:02:54');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_28_091312_create_movies_table', 1),
(4, '2019_11_29_080004_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `created_at`, `updated_at`, `title`, `description`, `image`) VALUES
(1, '2019-11-28 12:07:46', '2019-11-28 14:08:59', 'Avengers', 'Thanos ayant anéanti la moitié de l\'univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel.', 'https://images-na.ssl-images-amazon.com/images/I/81eKg7lCeYL._SY450_.jpg'),
(2, '2019-11-28 12:07:46', '2019-11-28 12:07:46', 'Django Unchained', 'Un ancien esclave s\'associe avec un chasseur de primes d\'origine allemande qui l\'a libéré : il accepte de traquer avec lui des criminels', 'http://fr.web.img6.acsta.net/c_215_290/medias/nmedia/18/90/08/59/20366454.jpg'),
(4, '2019-11-28 12:06:01', '2019-11-28 12:06:33', 'Ready player one Update', 'En 2045, le monde est au bord du chaos. Les êtres humains se réfugient dans l\'OASIS, univers virtuel mis au point par le brillant et excentrique James Halliday. Avant de disparaître, celui-ci a décidé de léguer son immense fortune à quiconque découvrira l\'oeuf de Pâques numérique qu\'il a pris soin de dissimuler dans l\'OASIS. L\'appât du gain provoque une compétition planétaire.', 'https://images-eu.ssl-images-amazon.com/images/I/51HalpiSqgL.jpg'),
(5, '2019-11-28 13:36:56', '2019-11-28 13:36:56', 'Snatch', 'Franky vient de voler un énorme diamant qu\'il doit livrer à Avi, un mafieux new-yorkais. En chemin, il fait escale à Londres où il se laisse convaincre par Boris de parier sur un combat de boxe clandestin. Il ignore, bien sûr, qu\'il s\'agit d\'un coup monté avec Vinny et Sol, afin de le délester de son magnifique caillou. Turkish et Tommy, eux, ont un problème avec leur boxeur, un gitan complètement fêlé qui refuse de se coucher au quatrième round comme prévu.', 'http://images.affiches-et-posters.com//albums/3/3050/affiche-film-snatch-865.jpg'),
(6, '2019-11-28 13:39:00', '2019-11-29 06:40:11', 'Usual suspect', 'Interrogé par la police à la suite de l\'explosion criminelle d\'un cargo, Verbal Kint se met à table : avec quatre autres gangsters, il s\'est vu imposer une mission périlleuse par Keyser Söze, un malfrat craint de tous mais que personne ne connaît. Qui est ce mystérieux commanditaire ? Existe-t-il vraiment ? Bryan Singer nous entraîne dans les méandres d\'un scénario éblouissant, multipliant les fausses pistes jusqu\'au dénouement final.', 'https://is3-ssl.mzstatic.com/image/thumb/Video128/v4/2b/40/3d/2b403d40-2765-0d7f-64b5-f307de95e407/pr_source.jpg/268x0w.jpg'),
(7, '2019-11-28 15:35:20', '2019-11-28 15:35:20', 'Kill Bill', 'Au cours d\'une cérémonie de mariage en plein désert, un commando fait irruption dans la chapelle et tire sur les convives. Laissée pour morte, la Mariée enceinte retrouve ses esprits après un coma de quatre ans. Celle qui a auparavant exercé les fonctions de tueuse à gages au sein du Détachement International des Vipères Assassines n\'a alors plus qu\'une seule idée en tête : venger la mort de ses proches en éliminant tous les membres de l\'organisation criminelle.', 'http://fr.web.img3.acsta.net/c_215_290/medias/nmedia/18/35/13/44/18364816.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
