-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 juil. 2020 à 12:23
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `immolamanu`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id_rdv` int(11) NOT NULL AUTO_INCREMENT,
  `date_rdv` date NOT NULL,
  `id_house` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_time_spot` int(11) NOT NULL,
  PRIMARY KEY (`id_rdv`),
  KEY `appointment_biens_immobiliers_FK` (`id_house`),
  KEY `appointment_clients0_FK` (`id_client`),
  KEY `appointment_time_spot1_FK` (`id_time_spot`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `appointment`
--

INSERT INTO `appointment` (`id_rdv`, `date_rdv`, `id_house`, `id_client`, `id_time_spot`) VALUES
(1, '2020-07-23', 39, 2, 1),
(2, '2020-07-24', 38, 4, 3),
(3, '2020-07-23', 29, 3, 5),
(4, '2020-07-24', 23, 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `biens_immobiliers`
--

DROP TABLE IF EXISTS `biens_immobiliers`;
CREATE TABLE IF NOT EXISTS `biens_immobiliers` (
  `id_house` int(11) NOT NULL AUTO_INCREMENT,
  `name_house` varchar(50) NOT NULL,
  `codePostal_house` int(11) NOT NULL,
  `price_house` decimal(15,3) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id_house`),
  KEY `biens_immobiliers_type_house_FK` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `biens_immobiliers`
--

INSERT INTO `biens_immobiliers` (`id_house`, `name_house`, `codePostal_house`, `price_house`, `id_type`) VALUES
(21, 'T1 cerise', 76, '35000.000', 3),
(22, 'T2 pomme', 76, '45000.000', 3),
(23, 'T3 poire', 76, '25800.000', 3),
(24, 'T4 banane', 76, '49000.000', 3),
(25, 'M1 chene', 76, '150000.000', 1),
(26, 'M2 orme', 76, '160000.000', 1),
(27, 'M3 platane', 76, '170000.000', 1),
(28, 'M4 aulnes', 76, '250000.000', 1),
(29, 'M5 frene', 76, '110000.000', 1),
(30, 'M6 abricotier', 76, '350000.000', 1),
(31, 'M7 sapin', 76, '780000.000', 1),
(32, 'M8 chataigner', 76, '1220500.000', 1),
(33, 'A1 hugo', 76, '120000.000', 2),
(34, 'A2 fontaine', 76, '130000.000', 2),
(35, 'A3 racine', 76, '140000.000', 2),
(36, 'A4 corneille', 76, '150000.000', 2),
(37, 'A5 rousseau', 76, '110000.000', 2),
(38, 'A6 balzac', 76, '100000.000', 2),
(39, 'A7 zola', 76, '75000.000', 2),
(40, 'A8 picasso', 76, '65000.000', 2);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `lastname_client` varchar(50) NOT NULL,
  `firstname_client` varchar(50) NOT NULL,
  `birthday_client` date NOT NULL,
  `mail_client` varchar(50) NOT NULL,
  `pricemax_client` decimal(15,3) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id_client`),
  KEY `clients_type_house_FK` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `lastname_client`, `firstname_client`, `birthday_client`, `mail_client`, `pricemax_client`, `id_type`) VALUES
(1, 'cardan', 'pierre', '1980-07-14', 'pc@gmail.com', '180000.000', 1),
(2, 'beaumondo', 'paul', '1960-08-20', 'bp@gmail.com', '115000.000', 2),
(3, 'braile', 'jacques', '1990-02-12', 'bp@gmail.com', '40000.000', 3),
(4, 'bourdoneux', 'didier', '1975-12-23', 'bd@gmail.com', '250000.000', 1);

-- --------------------------------------------------------

--
-- Structure de la table `time_spot`
--

DROP TABLE IF EXISTS `time_spot`;
CREATE TABLE IF NOT EXISTS `time_spot` (
  `id_time_spot` int(11) NOT NULL AUTO_INCREMENT,
  `time_spot_start` time NOT NULL,
  `time_spot_end` time NOT NULL,
  PRIMARY KEY (`id_time_spot`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `time_spot`
--

INSERT INTO `time_spot` (`id_time_spot`, `time_spot_start`, `time_spot_end`) VALUES
(1, '09:00:00', '10:00:00'),
(2, '10:00:00', '11:00:00'),
(3, '11:00:00', '12:00:00'),
(4, '14:00:00', '15:00:00'),
(5, '15:00:00', '16:00:00'),
(6, '16:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `type_house`
--

DROP TABLE IF EXISTS `type_house`;
CREATE TABLE IF NOT EXISTS `type_house` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `type_houses` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_house`
--

INSERT INTO `type_house` (`id_type`, `type_houses`) VALUES
(1, 'Maison'),
(2, 'Appartement'),
(3, 'Terrain');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_biens_immobiliers_FK` FOREIGN KEY (`id_house`) REFERENCES `biens_immobiliers` (`id_house`),
  ADD CONSTRAINT `appointment_clients0_FK` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  ADD CONSTRAINT `appointment_time_spot1_FK` FOREIGN KEY (`id_time_spot`) REFERENCES `time_spot` (`id_time_spot`);

--
-- Contraintes pour la table `biens_immobiliers`
--
ALTER TABLE `biens_immobiliers`
  ADD CONSTRAINT `biens_immobiliers_type_house_FK` FOREIGN KEY (`id_type`) REFERENCES `type_house` (`id_type`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_type_house_FK` FOREIGN KEY (`id_type`) REFERENCES `type_house` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
