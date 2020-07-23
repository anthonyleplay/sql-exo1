-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 23 juil. 2020 à 09:52
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
-- Base de données :  `ecoleprimairelamanu`
--

-- --------------------------------------------------------

--
-- Structure de la table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE IF NOT EXISTS `classroom` (
  `id_classroom` int(11) NOT NULL AUTO_INCREMENT,
  `name_classroom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_classroom`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classroom`
--

INSERT INTO `classroom` (`id_classroom`, `name_classroom`) VALUES
(1, 'CP'),
(2, 'CE1'),
(3, 'CE2'),
(4, 'CM1'),
(5, 'CM2');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `value_note` int(11) NOT NULL,
  `id_studiant` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL,
  PRIMARY KEY (`id_note`),
  KEY `note_studiant_FK` (`id_studiant`),
  KEY `note_subject0_FK` (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id_note`, `value_note`, `id_studiant`, `id_subject`) VALUES
(1, 12, 4, 9),
(2, 14, 4, 8),
(3, 16, 4, 10),
(43, 12, 2, 11),
(44, 19, 2, 7),
(45, 13, 7, 6),
(46, 2, 7, 10),
(47, 7, 7, 6),
(48, 20, 7, 7),
(49, 18, 11, 11),
(50, 17, 11, 8),
(51, 18, 13, 11),
(52, 5, 13, 6),
(53, 14, 14, 10),
(54, 14, 14, 7),
(55, 15, 9, 9),
(56, 12, 9, 8),
(57, 10, 8, 11),
(58, 9, 8, 6),
(59, 16, 1, 10),
(60, 10, 1, 7),
(61, 13, 3, 7),
(62, 4, 3, 10),
(63, 15, 5, 11),
(64, 17, 5, 7),
(65, 20, 12, 11),
(66, 12, 12, 8),
(67, 15, 10, 6),
(68, 16, 10, 6),
(69, 16, 15, 10),
(70, 15, 15, 10),
(71, 14, 15, 7),
(72, 16, 6, 8),
(73, 18, 6, 10),
(74, 12, 6, 9),
(75, 10, 6, 6),
(76, 12, 16, 9),
(77, 15, 16, 8),
(78, 12, 16, 11),
(79, 16, 16, 11),
(80, 12, 9, 6),
(81, 16, 9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `studiant`
--

DROP TABLE IF EXISTS `studiant`;
CREATE TABLE IF NOT EXISTS `studiant` (
  `id_studiant` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_studiant` varchar(50) NOT NULL,
  `lastname_studiant` varchar(50) NOT NULL,
  `id_classroom` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  PRIMARY KEY (`id_studiant`),
  KEY `studiant_classroom_FK` (`id_classroom`),
  KEY `studiant_teacher0_FK` (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `studiant`
--

INSERT INTO `studiant` (`id_studiant`, `firstname_studiant`, `lastname_studiant`, `id_classroom`, `id_teacher`) VALUES
(1, 'Leo', 'Dubois', 2, 2),
(2, 'Aude', 'Vessel', 2, 3),
(3, 'Lucky', 'Luck', 2, 1),
(4, 'Aerith', 'Tumeur', 2, 4),
(5, 'Manu', 'Macaron', 3, 2),
(6, 'Sarah', 'Crosh', 3, 3),
(7, 'Axel', 'Air', 3, 1),
(8, 'Justin', 'Doigt', 3, 4),
(9, 'John', 'Deuf', 4, 2),
(10, 'Odile', 'Croc', 4, 3),
(11, 'Ella', 'Stick', 4, 1),
(12, 'Marco', 'Polo', 4, 4),
(13, 'François', 'Pignon', 5, 2),
(14, 'Jean', 'Nemar', 5, 3),
(15, 'Pascal', 'Obistro', 1, 1),
(16, 'Tati', 'flette', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id_subject` int(11) NOT NULL AUTO_INCREMENT,
  `name_subject` varchar(50) NOT NULL,
  PRIMARY KEY (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `subject`
--

INSERT INTO `subject` (`id_subject`, `name_subject`) VALUES
(6, 'Math'),
(7, 'Sport'),
(8, 'Français'),
(9, 'Anglais'),
(10, 'Histoire'),
(11, 'Geographie');

-- --------------------------------------------------------

--
-- Structure de la table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id_teacher` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_teacher` varchar(50) NOT NULL,
  `lastname_teacher` varchar(50) NOT NULL,
  `mail_teacher` varchar(50) NOT NULL,
  `id_classroom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_teacher`),
  KEY `teacher_classroom_FK` (`id_classroom`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `firstname_teacher`, `lastname_teacher`, `mail_teacher`, `id_classroom`) VALUES
(1, 'jean', 'Gabon', '', 2),
(2, 'Amélie', 'Purain', '', 3),
(3, 'Celine', 'Pion', '', 4),
(4, 'Jean-paul', 'Trouve', '', 5);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_studiant_FK` FOREIGN KEY (`id_studiant`) REFERENCES `studiant` (`id_studiant`),
  ADD CONSTRAINT `note_subject0_FK` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id_subject`);

--
-- Contraintes pour la table `studiant`
--
ALTER TABLE `studiant`
  ADD CONSTRAINT `studiant_classroom_FK` FOREIGN KEY (`id_classroom`) REFERENCES `classroom` (`id_classroom`),
  ADD CONSTRAINT `studiant_teacher0_FK` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`);

--
-- Contraintes pour la table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_classroom_FK` FOREIGN KEY (`id_classroom`) REFERENCES `classroom` (`id_classroom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
