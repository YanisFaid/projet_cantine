-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 24 avr. 2023 à 14:14
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_cantine`
--

-- --------------------------------------------------------

--
-- Structure de la table `3eme`
--

DROP TABLE IF EXISTS `3eme`;
CREATE TABLE IF NOT EXISTS `3eme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `3eme`
--

INSERT INTO `3eme` (`id`, `identifiant`, `nom`, `sexe`, `password`, `description`, `mail`) VALUES
(1, 'JDEGENERES', 'DEGENERES', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(2, 'TMIRANDA', 'MIRANDA', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(3, 'KJOVOVICH', 'JOVOVICH', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(4, 'NSTALLONE', 'STALLONE', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(5, 'RKILMER', 'KILMER', 'F', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(6, 'PGOLDBERG', 'GOLDBERG', 'F', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(7, 'JBARRYMORE', 'BARRYMORE', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(8, 'ACRONYN', 'CRONYN', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(9, 'NHOPKINS', 'HOPKINS', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(10, 'GPHOENIX', 'PHOENIX', 'F', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(11, 'CHUNT', 'HUNT', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(12, 'MTEMPLE', 'TEMPLE', 'F', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(13, 'PPINKETT', 'PINKETT', 'F', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(14, 'FKILMER', 'KILMER', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr'),
(15, 'DHARRIS', 'HARRIS', 'M', 'f4c71ef0a5104b070f391e1f9efd64efa1893e24', 'élève', 'mailélève@bussy.fr');

-- --------------------------------------------------------

--
-- Structure de la table `4eme`
--

DROP TABLE IF EXISTS `4eme`;
CREATE TABLE IF NOT EXISTS `4eme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `4eme`
--

INSERT INTO `4eme` (`id`, `identifiant`, `nom`, `sexe`, `password`, `description`, `mail`) VALUES
(1, 'KBLOOM', 'BLOOM', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(2, 'RCRAWFORD', 'CRAWFORD', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(3, 'JMCQUEEN', 'MCQUEEN', 'F', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(4, 'WHOFFMAN', 'HOFFMAN', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(5, 'AWAYNE', 'WAYNE', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(6, 'SPECK', 'PECK', 'F', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(7, 'SSOBIESKI', 'SOBIESKI', 'F', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(8, 'THACKMAN', 'HACKMAN', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(9, 'MPECK', 'PECK', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(10, 'JDEAN', 'DEAN', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(11, 'BDUKAKIS', 'DUKAKIS', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(12, 'VBOLGER', 'BOLGER', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(13, 'GBRODY', 'BRODY', 'F', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr'),
(14, 'JCAGE', 'CAGE', 'M', '607a2d3cd21d22ee322d0144fead05156a7d068f', 'élève', 'mailélève@bussy.fr');

-- --------------------------------------------------------

--
-- Structure de la table `5eme`
--

DROP TABLE IF EXISTS `5eme`;
CREATE TABLE IF NOT EXISTS `5eme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `5eme`
--

INSERT INTO `5eme` (`id`, `identifiant`, `nom`, `sexe`, `password`, `description`, `mail`) VALUES
(1, 'ZCAGE', 'CAGE', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(2, 'KBERRY', 'BERRY', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(3, 'UWOOD', 'WOOD', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(4, 'VBERGEN', 'BERGEN', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(5, 'COLIVIER', 'OLIVIER', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(6, 'FCOSTNER', 'COSTNER', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(7, 'HVOIGHT', 'VOIGHT', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(8, 'DTORN', 'TORN', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(9, 'BFAWCETT', 'FAWCETT', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(10, 'LTRACY', 'TRACY', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(11, 'KPALTROW', 'PALTROW', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(12, 'EMARX', 'MARX', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(13, 'SKILMER', 'KILMER', 'F', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr'),
(14, 'CSTREEP', 'STREEP', 'M', 'de72aba5795928ef8323fdf0f4d726ba8af180cf', 'élève', 'mailélève@bussy.fr');

-- --------------------------------------------------------

--
-- Structure de la table `6eme`
--

DROP TABLE IF EXISTS `6eme`;
CREATE TABLE IF NOT EXISTS `6eme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `6eme`
--

INSERT INTO `6eme` (`id`, `identifiant`, `nom`, `sexe`, `password`, `description`, `mail`) VALUES
(1, 'csidney', 'sidney', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(2, 'yfaid', 'faid', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'yfaid@cantinebussy.fr'),
(3, 'egilbert', '', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(4, 'eleve', 'ok', 'F', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(5, 'PGUINESS', 'GUINESS', 'F', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(6, 'NWAHLBERG', 'WAHLBERG', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(7, 'ECHASE', 'CHASE', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(8, 'JDAVIS', 'DAVIS', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(9, 'JLOLLOBRIGIDA', 'LOLLOBRIGIDA', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(10, 'BNICHOLSON', 'NICHOLSON', 'F', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(11, 'GMOSTEL', 'MOSTEL', 'F', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(12, 'MJOHANSSON', 'JOHANSSON', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(13, 'JSWANK', 'SWANK', 'M', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr'),
(14, 'CGABLE', 'GABLE', 'F', 'eed0667e18013e66bbe0c522875d881d299285b2', 'élève', 'mailélève@bussy.fr');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desciption` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `identifiant`, `password`, `desciption`) VALUES
(1, 'admin', '689b9e6ce97104484cf5da1ac58ecb957287c1b2', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `cantine`
--

DROP TABLE IF EXISTS `cantine`;
CREATE TABLE IF NOT EXISTS `cantine` (
  `matricule` int NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date_resa` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_suppr` date NOT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `cantine`
--

INSERT INTO `cantine` (`matricule`, `identifiant`, `date_resa`, `date_inscription`, `date_suppr`) VALUES
(1, 'yfaid', '2023-02-28', '2023-01-11 08:56:30', '2023-02-22'),
(25, 'yfaid', '2023-02-23', '2023-02-22 16:13:47', '0000-00-00'),
(26, 'yfaid', '2023-02-24', '2023-02-22 16:13:51', '0000-00-00'),
(27, 'yfaid', '2023-02-25', '2023-02-22 16:13:56', '2023-02-23'),
(28, 'yfaid', '2023-02-26', '2023-02-23 11:56:57', '2023-02-23'),
(29, 'yfaid', '2023-03-08', '2023-03-06 07:58:01', '2023-03-06'),
(30, 'yfaid', '2023-03-08', '2023-03-06 08:06:59', '0000-00-00'),
(31, 'yfaid', '2023-03-09', '2023-03-06 08:07:02', '0000-00-00'),
(32, 'yfaid', '2023-03-24', '2023-03-06 08:07:07', '2023-03-10'),
(33, 'yfaid', '2023-03-23', '2023-03-06 08:07:14', '0000-00-00'),
(34, 'yfaid', '2023-03-26', '2023-03-06 09:20:18', '0000-00-00'),
(35, 'yfaid', '2023-03-31', '2023-03-06 09:21:41', '0000-00-00'),
(36, 'yfaid', '2023-03-29', '2023-03-06 09:49:28', '2023-03-06'),
(48, 'yfaid', '2023-03-23', '2023-03-10 12:52:54', '2023-03-10'),
(49, 'yfaid', '2023-03-10', '2023-03-10 13:30:32', '0000-00-00'),
(50, 'yfaid', '2023-03-11', '2023-03-10 13:30:42', '0000-00-00'),
(51, 'yfaid', '2023-03-12', '2023-03-10 13:32:08', '0000-00-00'),
(52, 'yfaid', '2023-03-13', '2023-03-10 13:32:12', '0000-00-00'),
(53, 'yfaid', '2023-03-14', '2023-03-10 13:32:17', '0000-00-00'),
(54, 'yfaid', '2023-03-15', '2023-03-10 13:32:25', '0000-00-00'),
(55, 'yfaid', '', '2023-03-10 13:46:47', '0000-00-00'),
(56, 'yfaid', '2023-04-02', '2023-03-28 12:11:29', '0000-00-00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
