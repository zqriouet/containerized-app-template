-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2019 at 10:17 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_sh`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `prenom`, `nom`, `email`, `ville`, `password`) VALUES
(1, 'Flavie', 'Da costa', 'f.da.costa@example.com', 'Pomoy', 'b444ac06613fc8d63795be9ad0beaf55011936ac'),
(2, 'Valentin', 'Vespasien', 'valentin@example.com', 'Buvilly', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f'),
(3, 'Gustave', 'Collin', 'gust@example.com', 'Marseille', '3ebfa301dc59196f18593c45e519287a23297589'),
(4, 'Emilien', 'Camus', 'emilien@example.com', 'Toulouse', '1ff2b3704aede04eecb51e50ca698efd50a1379b'),
(5, 'Firmin', 'Marais', 'firmin.marais@example.com', 'Lyon', '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23'),
(6, 'Olivier', 'Riou', 'olive.de.lugagnac@example.com', 'Lugagnac', 'a66df261120b6c2311c6ef0b1bab4e583afcbcc0'),
(7, 'Lucas', 'Jung', 'lucas.jung@example.com', 'Coulgens', 'ea3243132d653b39025a944e70f3ecdf70ee3994'),
(8, 'Maurice', 'Huet', 'maurice.villemareuil@example.com', 'Villemareuil', 'd03f9d34194393019e6d12d7c942827ebd694443'),
(9, 'Manon', 'Durand', 'm.durand.s.e@example.com', 'Saint-Etienne', '53d525836cc96d089a5a4218b464fda532f7debe'),
(10, 'Joachim', 'Leon', 'joachim@example.com', 'Longwy-sur-le-Doubs', '168f4029f416ee06565f12e697dfc1534ae69d32'),
(11, 'Muriel', 'Dupuis', 'muriel@example.com', 'Paris', '100c4e57374fc998e57164d4c0453bd3a4876a58'),
(12, 'Christiane', 'Riou', 'chritianelesabrets@example.com', 'Les Abrets', '4ff1a33e188b7b86123d6e3be2722a23514a83b4'),
(13, 'Jacinthe', 'Langlois', 'jacinthe.langlois@example.com', 'Lagney', 'd804cd9cc0c42b0652bab002f67858ab803c40c6'),
(14, 'Amaury', 'Payet', 'amaury@example.com', 'Avermes', 'd79336a97da7d284c0fe15497d2fa944d1f2abb1'),
(15, 'Maris', 'Buisson', 'maris@example.com', 'Le Havre', '61bb70fa60368f069e62d601c357d203700ab2d2'),
(16, 'Fabrice', 'Foucher', 'fab.montlouis@example.com', 'Montlouis', '1fbefee9cfb86926757519357e077fd6a21aef0f'),
(17, 'Patrick', 'Saunier', 'patrick.saunier@example.com', 'Saligney', '08a25c0f270b29aeba650e6b2d1a9947a778c5da'),
(18, 'Emile', 'Ramos', 'emile@example.com', 'Arzay', 'cfc996a3aaac95f0fb508f46499dcb72b6d0abee'),
(19, 'Armel', 'Vigneron', 'armel.delain@example.com', 'Delain', 'bba019890aec72f6dd6b4e98513055cae61df098'),
(20, 'Arnaude', 'Vallee', 'armaude.vallee@example.com', 'Hostias', '57e5a4df68387d1d97210cf40c41104ce9256cf6');
COMMIT;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `date_achat` date NOT NULL,
  `reference` varchar(255) NOT NULL,
  `cache_prix_total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commandes`
--

INSERT INTO `commandes` (`id`, `client_id`, `date_achat`, `reference`, `cache_prix_total`) VALUES
(1, 20, '2019-01-01', '004214', 0),
(2, 3, '2019-01-03', '007120', 0),
(3, 11, '2019-01-04', '002957', 0),
(4, 6, '2019-01-07', '003425', 0),
(5, 17, '2019-01-08', '008255', 0),
(6, 7, '2019-01-09', '000996', 0),
(7, 2, '2019-01-10', '000214', 0),
(8, 7, '2019-01-11', '008084', 0),
(9, 12, '2019-01-11', '009773', 0),
(10, 16, '2019-01-13', '004616', 0),
(11, 4, '2019-01-14', '003757', 0),
(12, 9, '2019-01-15', '004939', 0),
(13, 14, '2019-01-16', '003421', 0),
(14, 6, '2019-01-16', '002286', 0),
(15, 3, '2019-01-17', '001167', 0),
(16, 15, '2019-01-18', '008974', 0),
(17, 9, '2019-01-19', '001369', 0),
(18, 17, '2019-01-20', '009924', 0),
(19, 3, '2019-01-21', '005510', 0),
(20, 17, '2019-01-22', '007778', 0),
(21, 17, '2019-01-23', '002359', 0),
(22, 15, '2019-01-25', '008459', 0),
(23, 4, '2019-01-27', '005217', 0),
(24, 12, '2019-01-29', '000706', 0),
(25, 9, '2019-02-01', '007879', 0),
(26, 8, '2019-02-02', '007277', 0),
(27, 11, '2019-02-02', '002745', 0),
(28, 11, '2019-02-03', '001893', 0),
(29, 20, '2019-02-04', '001230', 0),
(30, 10, '2019-02-05', '000469', 0),
(31, 7, '2019-02-05', '008653', 0),
(32, 3, '2019-02-06', '001858', 0),
(33, 14, '2019-02-07', '003330', 0),
(34, 2, '2019-02-08', '001074', 0),
(35, 5, '2019-02-08', '005379', 0),
(36, 16, '2019-02-09', '003672', 0),
(37, 10, '2019-02-09', '002220', 0),
(38, 19, '2019-02-10', '000086', 0),
(39, 8, '2019-02-11', '003770', 0),
(40, 2, '2019-02-12', '008590', 0),
(41, 2, '2019-02-12', '001639', 0),
(42, 4, '2019-02-13', '002426', 0),
(43, 13, '2019-02-14', '007209', 0),
(44, 13, '2019-02-15', '008768', 0),
(45, 7, '2019-02-16', '002213', 0),
(46, 12, '2019-02-17', '004759', 0),
(47, 19, '2019-02-18', '007155', 0),
(48, 2, '2019-02-19', '001496', 0);
COMMIT;

--
-- Table structure for table `commande_lignes`
--

DROP TABLE IF EXISTS `commande_lignes`;
CREATE TABLE IF NOT EXISTS `commande_lignes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `commande_id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL,
  `prix_unitaire` float UNSIGNED NOT NULL,
  `prix_total` float UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commande_lignes`
--

INSERT INTO `commande_lignes` (`id`, `commande_id`, `nom`, `quantite`, `prix_unitaire`, `prix_total`) VALUES
(1, 1, 'Produit 19', 3, 49.57, 0),
(2, 1, 'Produit 92', 4, 81.24, 0),
(3, 1, 'Produit 68', 2, 17.48, 0),
(4, 2, 'Produit 53', 4, 83.69, 0),
(5, 2, 'Produit 78', 6, 5.99, 0),
(6, 3, 'Produit D9', 7, 18.91, 0),
(7, 4, 'Produit A3', 8, 76.57, 0),
(8, 4, 'Produit BB', 10, 86.14, 0),
(9, 4, 'Produit 7C', 4, 80.96, 0),
(10, 4, 'Produit 78', 9, 26.4, 0),
(11, 4, 'Produit 07', 6, 9.13, 0),
(12, 5, 'Produit 00', 10, 86.45, 0),
(13, 5, 'Produit 7A', 2, 44.86, 0),
(14, 6, 'Produit E1', 9, 84.93, 0),
(15, 7, 'Produit D6', 2, 50.07, 0),
(16, 7, 'Produit BD', 7, 115.55, 0),
(17, 7, 'Produit D9', 3, 67.55, 0),
(18, 8, 'Produit 55', 9, 111.12, 0),
(19, 9, 'Produit C7', 10, 112.93, 0),
(20, 10, 'Produit 2A', 2, 111.31, 0),
(21, 10, 'Produit 07', 5, 97.75, 0),
(22, 10, 'Produit FC', 10, 34.8, 0),
(23, 10, 'Produit A6', 5, 0.76, 0),
(24, 11, 'Produit 4B', 5, 19.4, 0),
(25, 12, 'Produit 12', 1, 94.72, 0),
(26, 12, 'Produit 09', 7, 55.39, 0),
(27, 13, 'Produit EA', 2, 112.78, 0),
(28, 13, 'Produit CB', 6, 37.73, 0),
(29, 14, 'Produit A1', 7, 90.34, 0),
(30, 14, 'Produit 00', 6, 98.49, 0),
(31, 15, 'Produit 67', 9, 101.43, 0),
(32, 15, 'Produit 52', 8, 91.68, 0),
(33, 16, 'Produit 2E', 4, 34.1, 0),
(34, 17, 'Produit 36', 10, 15.48, 0),
(35, 17, 'Produit 67', 2, 95.08, 0),
(36, 17, 'Produit 4D', 5, 68.97, 0),
(37, 17, 'Produit 1D', 10, 59.6, 0),
(38, 18, 'Produit 4C', 6, 91.1, 0),
(39, 18, 'Produit 12', 8, 36.69, 0),
(40, 18, 'Produit 13', 6, 30.17, 0),
(41, 18, 'Produit 22', 1, 40.78, 0),
(42, 19, 'Produit CE', 8, 113.4, 0),
(43, 20, 'Produit DD', 6, 84.64, 0),
(44, 20, 'Produit C4', 5, 82.99, 0),
(45, 20, 'Produit 43', 6, 41.06, 0),
(46, 21, 'Produit F4', 5, 76.31, 0),
(47, 21, 'Produit FC', 7, 18.36, 0),
(48, 22, 'Produit 95', 3, 102.88, 0),
(49, 22, 'Produit E1', 7, 99.32, 0),
(50, 22, 'Produit 2D', 9, 67.95, 0),
(51, 22, 'Produit 6C', 7, 41.8, 0),
(52, 22, 'Produit 49', 4, 5.14, 0),
(53, 23, 'Produit 6D', 6, 20.32, 0),
(54, 23, 'Produit 8A', 9, 86.16, 0),
(55, 23, 'Produit EE', 10, 9.84, 0),
(56, 24, 'Produit B9', 1, 30.71, 0),
(57, 24, 'Produit C8', 4, 4.03, 0),
(58, 24, 'Produit E5', 4, 48.04, 0),
(59, 25, 'Produit 0F', 1, 108.12, 0),
(60, 25, 'Produit DD', 10, 36.47, 0),
(61, 26, 'Produit 67', 8, 98, 0),
(62, 27, 'Produit 41', 1, 20.58, 0),
(63, 27, 'Produit 54', 7, 48.89, 0),
(64, 28, 'Produit 65', 4, 62.73, 0),
(65, 28, 'Produit 93', 9, 46.97, 0),
(66, 29, 'Produit 9A', 2, 46.68, 0),
(67, 29, 'Produit D2', 9, 92.48, 0),
(68, 29, 'Produit 6D', 4, 82.35, 0),
(69, 30, 'Produit 20', 8, 14.3, 0),
(70, 31, 'Produit 3C', 8, 64.45, 0),
(71, 31, 'Produit 60', 6, 39.34, 0),
(72, 32, 'Produit 63', 7, 3.38, 0),
(73, 32, 'Produit 95', 8, 18.86, 0),
(74, 32, 'Produit 62', 6, 84.17, 0),
(75, 32, 'Produit DE', 5, 4.28, 0),
(76, 33, 'Produit D0', 9, 8.88, 0),
(77, 33, 'Produit D6', 9, 31.55, 0),
(78, 33, 'Produit C3', 7, 11.14, 0),
(79, 34, 'Produit 5E', 10, 81.02, 0),
(80, 35, 'Produit B2', 8, 11.71, 0),
(81, 36, 'Produit 3C', 10, 55.47, 0),
(82, 37, 'Produit 6F', 7, 2.24, 0),
(83, 37, 'Produit 16', 2, 84.8, 0),
(84, 38, 'Produit 1A', 6, 57.27, 0),
(85, 38, 'Produit 24', 7, 31.93, 0),
(86, 39, 'Produit DF', 6, 107.85, 0),
(87, 39, 'Produit 7F', 9, 83.44, 0),
(88, 40, 'Produit 6D', 6, 93.67, 0),
(89, 40, 'Produit 6B', 3, 98.04, 0),
(90, 41, 'Produit 8A', 5, 89.18, 0),
(91, 41, 'Produit 6D', 4, 31.78, 0),
(92, 42, 'Produit 1C', 6, 11.35, 0),
(93, 42, 'Produit 52', 8, 81.43, 0),
(94, 43, 'Produit B4', 10, 13.1, 0),
(95, 43, 'Produit FD', 8, 61.21, 0),
(96, 44, 'Produit 4A', 10, 26.72, 0),
(97, 44, 'Produit D4', 5, 70.01, 0),
(98, 44, 'Produit 9B', 6, 29.86, 0),
(99, 44, 'Produit BE', 3, 59.3, 0),
(100, 44, 'Produit 86', 4, 86.9, 0),
(101, 45, 'Produit F0', 3, 16.59, 0),
(102, 45, 'Produit 6A', 2, 62.25, 0),
(103, 45, 'Produit 85', 10, 21.48, 0),
(104, 45, 'Produit EF', 5, 40.65, 0),
(105, 46, 'Produit C4', 3, 18.81, 0),
(106, 46, 'Produit F9', 6, 92.09, 0),
(107, 46, 'Produit 05', 6, 44.02, 0),
(108, 46, 'Produit 3A', 8, 63.84, 0),
(109, 46, 'Produit 2E', 2, 67.15, 0),
(110, 47, 'Produit 6E', 6, 24.24, 0),
(111, 47, 'Produit F8', 6, 39.74, 0),
(112, 47, 'Produit A9', 10, 5.97, 0),
(113, 47, 'Produit 21', 2, 30.63, 0),
(114, 47, 'Produit 93', 7, 15.24, 0),
(115, 48, 'Produit E4', 9, 104.3, 0),
(116, 48, 'Produit 72', 5, 115.8, 0),
(117, 48, 'Produit DB', 7, 26.1, 0),
(118, 48, 'Produit DE', 9, 23.12, 0),
(119, 48, 'Produit 3D', 7, 37.26, 0),
(120, 48, 'Produit C5', 4, 116.97, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
