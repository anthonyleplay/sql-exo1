-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 23 juil. 2020 à 13:55
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
-- Base de données :  `bibliothequelamanu`
--

-- --------------------------------------------------------

--
-- Structure de la table `book_list`
--

DROP TABLE IF EXISTS `book_list`;
CREATE TABLE IF NOT EXISTS `book_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_book_list` varchar(50) NOT NULL,
  `firstname_author_book_list` varchar(50) NOT NULL,
  `lastname_author_book_list` varchar(50) NOT NULL,
  `id_book_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_list_book_type_FK` (`id_book_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `book_list`
--

INSERT INTO `book_list` (`id`, `title_book_list`, `firstname_author_book_list`, `lastname_author_book_list`, `id_book_type`) VALUES
(1, 'Orgueil et Préjugés', 'Jane', 'Austen', 3),
(2, 'Cyrano de Bergerac ', 'Edmond', 'Rostand ', 3),
(3, 'Le petit prince', 'Antoine', 'De Saint Exupery', 4),
(4, 'Harry Potter à l\'école des sorciers', 'J. K.', 'Rowling', 4),
(5, 'La cabane magique', 'Mary', 'Pope Osborne', 4),
(6, 'Le roi Arthur', 'Michael', 'Morpurgo', 4),
(7, 'La Planète des singes', 'Pierre', 'Boulle', 2),
(8, 'La Stratégie Ender', 'Orson', 'Scott Card', 2),
(9, 'Métro 2033', 'Dmitri', 'Gloukhovski', 2),
(10, 'ça', 'Stephen', 'King', 1),
(11, 'Shining', 'Stephen', 'King', 1);

-- --------------------------------------------------------

--
-- Structure de la table `book_type`
--

DROP TABLE IF EXISTS `book_type`;
CREATE TABLE IF NOT EXISTS `book_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `book_type`
--

INSERT INTO `book_type` (`id`, `book_type`) VALUES
(1, 'Horreur'),
(2, 'Science Fiction'),
(3, 'Roman'),
(4, 'Jeunesse');

-- --------------------------------------------------------

--
-- Structure de la table `guest`
--

DROP TABLE IF EXISTS `guest`;
CREATE TABLE IF NOT EXISTS `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_guest` varchar(50) NOT NULL,
  `lastname_guest` varchar(50) NOT NULL,
  `birthday_guest` date NOT NULL,
  `mail_guest` varchar(50) NOT NULL,
  `id_book_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guest_book_type_FK` (`id_book_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `guest`
--

INSERT INTO `guest` (`id`, `firstname_guest`, `lastname_guest`, `birthday_guest`, `mail_guest`, `id_book_type`) VALUES
(1, 'elisa', 'labas', '2000-07-14', 'al@gmail.com', 3),
(2, 'cedric', 'patouch', '1990-05-12', 'cp@gmail.com', 1),
(3, 'leo', 'dupont', '2008-07-04', 'ld@gmail.com', 4),
(4, 'antoine', 'villard', '1980-03-24', 'av@gmail.com', 2),
(5, 'philippe', 'boncoeur', '1970-10-21', 'pb@gmail.com', 2),
(6, 'guillaume', 'dubois', '1984-02-17', 'gd@gmail.com', 4),
(7, 'jean', 'valley', '1960-02-10', 'jv@gmail.com', 3);

-- --------------------------------------------------------

--
-- Structure de la table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date_start` date NOT NULL,
  `Date_end` date NOT NULL,
  `id_guest` int(11) NOT NULL,
  `id_book_list` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `register_guest_FK` (`id_guest`),
  KEY `register_book_list0_FK` (`id_book_list`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `register`
--

INSERT INTO `register` (`id`, `Date_start`, `Date_end`, `id_guest`, `id_book_list`) VALUES
(1, '2020-07-14', '2020-07-31', 3, 3),
(2, '2020-07-06', '2020-07-31', 5, 11),
(3, '2020-06-16', '2020-09-30', 4, 2),
(4, '2020-06-16', '2020-08-13', 7, 7),
(5, '2020-07-01', '2020-07-22', 6, 6),
(6, '2020-07-01', '2020-07-21', 1, 2),
(7, '2020-06-08', '2020-08-19', 3, 6),
(8, '2020-06-29', '2020-07-14', 7, 11),
(9, '2020-02-02', '2020-04-30', 6, 3),
(10, '2020-02-17', '2020-05-26', 1, 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book_list`
--
ALTER TABLE `book_list`
  ADD CONSTRAINT `book_list_book_type_FK` FOREIGN KEY (`id_book_type`) REFERENCES `book_type` (`id`);

--
-- Contraintes pour la table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `guest_book_type_FK` FOREIGN KEY (`id_book_type`) REFERENCES `book_type` (`id`);

--
-- Contraintes pour la table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_book_list0_FK` FOREIGN KEY (`id_book_list`) REFERENCES `book_list` (`id`),
  ADD CONSTRAINT `register_guest_FK` FOREIGN KEY (`id_guest`) REFERENCES `guest` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
