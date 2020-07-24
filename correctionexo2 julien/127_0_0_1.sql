-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 juil. 2020 à 14:02
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
-- Base de données :  `lamanusqlpartie2`
--
CREATE DATABASE IF NOT EXISTS `lamanusqlpartie2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lamanusqlpartie2`;

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_Name` varchar(50) NOT NULL,
  `book_Author_fName` varchar(50) NOT NULL,
  `book_Author_lName` varchar(50) NOT NULL,
  `id_Books_Styles` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Books_Books_Styles_FK` (`id_Books_Styles`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`id`, `book_Name`, `book_Author_fName`, `book_Author_lName`, `id_Books_Styles`) VALUES
(1, 'Lois', 'Tanner', 'Vulputate Posuere Consulting', 1),
(2, 'Neville', 'Torres', 'Ipsum Company', 2),
(3, 'Patrick', 'French', 'Integer Aliquam Adipiscing Limited', 4),
(4, 'Keefe', 'Lynch', 'Iaculis Lacus Pede LLC', 3),
(5, 'Levi', 'Valentine', 'Purus Maecenas Limited', 1),
(6, 'Erica', 'Hartman', 'Quisque Purus Sapien Institute', 3),
(7, 'Slade', 'Chen', 'Id LLP', 1),
(8, 'Alyssa', 'Rivas', 'Aliquam Consulting', 2),
(9, 'Delilah', 'Blake', 'Risus PC', 3),
(10, 'Hadassah', 'Barnett', 'Nec Consulting', 4),
(11, 'Chadwick', 'Ayala', 'Sed Associates', 3),
(12, 'Boris', 'Graves', 'Donec Foundation', 1),
(13, 'Linda', 'Hodge', 'Metus Foundation', 3),
(14, 'Sydney', 'Kirby', 'Neque Tellus Imperdiet Industries', 1),
(15, 'Hedley', 'Mccall', 'Aenean Eget Metus Institute', 3),
(16, 'Maile', 'Macias', 'Sed Inc.', 1),
(17, 'Quemby', 'Drake', 'Penatibus Associates', 1),
(18, 'Brody', 'Tyson', 'Ut Pharetra Sed Institute', 2),
(19, 'Mary', 'Baldwin', 'Et Euismod Et LLP', 4),
(20, 'Mannix', 'Holt', 'Vivamus Rhoncus LLC', 1),
(21, 'Aquila', 'Wiggins', 'Ultricies Corporation', 1),
(22, 'Byron', 'Alvarado', 'Mi Duis Associates', 2),
(23, 'Lev', 'Guthrie', 'Dictum Sapien Associates', 3),
(24, 'Keely', 'Hughes', 'Ac Sem Ltd', 1),
(25, 'Faith', 'Hawkins', 'Quam Corporation', 1),
(26, 'Kiona', 'Browning', 'Dolor Sit Foundation', 1),
(27, 'Hector', 'Kramer', 'Ullamcorper Eu Euismod PC', 2),
(28, 'Darius', 'Kline', 'Eget Ipsum Incorporated', 2),
(29, 'Caleb', 'Wood', 'Vivamus Euismod Urna Corp.', 3),
(30, 'Murphy', 'England', 'Donec Dignissim Magna Limited', 2),
(31, 'Neve', 'Ruiz', 'Malesuada Fames Inc.', 1),
(32, 'Charity', 'Peck', 'Aliquam Eros Turpis Ltd', 2),
(33, 'Liberty', 'Atkinson', 'Dictum Corp.', 4),
(34, 'Emerson', 'Koch', 'Lacinia Institute', 3),
(35, 'Stephanie', 'Berg', 'Dapibus Ltd', 3),
(36, 'Kessie', 'Velez', 'Morbi Metus Vivamus Limited', 3),
(37, 'Curran', 'Hinton', 'Suscipit Est Ac Consulting', 1),
(38, 'Brooke', 'Acevedo', 'Mauris Aliquam Eu Corporation', 4),
(39, 'Caesar', 'Keller', 'Euismod Industries', 3),
(40, 'Samuel', 'Higgins', 'Est Nunc Company', 1),
(41, 'Victor', 'Ferrell', 'Tempus Industries', 2),
(42, 'Ezra', 'Rogers', 'Sed Nunc Associates', 4),
(43, 'Lila', 'Bass', 'Primis In Associates', 3),
(44, 'Charles', 'Wagner', 'Proin Corporation', 2),
(45, 'Zena', 'Rogers', 'Mollis Lectus Pede Corp.', 4),
(46, 'Owen', 'Mullen', 'Enim Commodo Hendrerit Company', 2),
(47, 'Lenore', 'Byrd', 'Eget Mollis Lectus PC', 3),
(48, 'Azalia', 'Stanley', 'Phasellus Inc.', 2),
(49, 'Kelly', 'Cooper', 'Tortor Associates', 3),
(50, 'Stephen', 'Levy', 'Magnis Dis Foundation', 1),
(51, 'Portia', 'Phillips', 'Tempor Augue Company', 2),
(52, 'Leo', 'Carson', 'Magna Nam Ligula Incorporated', 3),
(53, 'Melanie', 'Martin', 'Vehicula Risus LLC', 3),
(54, 'Yeo', 'Munoz', 'Non Justo Proin Associates', 4),
(55, 'Jolie', 'Hunter', 'Lobortis Class Aptent Company', 1),
(56, 'Nasim', 'Bray', 'Imperdiet LLP', 2),
(57, 'Leo', 'Fuentes', 'Ultricies Ornare Corp.', 2),
(58, 'May', 'Barrera', 'Magnis Dis Parturient Incorporated', 2),
(59, 'Shay', 'Horne', 'Consectetuer Mauris Consulting', 4),
(60, 'India', 'Chandler', 'Aliquam Company', 4),
(61, 'Melissa', 'Bennett', 'Mi Felis LLP', 1),
(62, 'Olympia', 'Stanton', 'Eget Dictum Placerat Limited', 1),
(63, 'Denton', 'Rowland', 'Et Ltd', 4),
(64, 'Luke', 'Baxter', 'Ac Feugiat Non Consulting', 1),
(65, 'Nicole', 'Gilmore', 'Maecenas Malesuada Fringilla Company', 1),
(66, 'Shea', 'Rowe', 'Amet Risus Incorporated', 4),
(67, 'Eden', 'Butler', 'Dictum Associates', 4),
(68, 'Galvin', 'Bright', 'Pellentesque Eget Dictum Incorporated', 4),
(69, 'Chelsea', 'Sweet', 'Dictum Eu Eleifend Company', 4),
(70, 'Brendan', 'Hyde', 'Enim PC', 1);

-- --------------------------------------------------------

--
-- Structure de la table `books_styles`
--

DROP TABLE IF EXISTS `books_styles`;
CREATE TABLE IF NOT EXISTS `books_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_style` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `books_styles`
--

INSERT INTO `books_styles` (`id`, `book_style`) VALUES
(1, 'Horreur'),
(2, 'Science-Fiction'),
(3, 'Roman'),
(4, 'Jeunesse');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_fName` varchar(50) NOT NULL,
  `client_lName` varchar(50) NOT NULL,
  `id_Books_Styles` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Clients_Books_Styles_FK` (`id_Books_Styles`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `client_fName`, `client_lName`, `id_Books_Styles`) VALUES
(1, 'Cynthia', 'Fry', 1),
(2, 'Quyn', 'Dotson', 4),
(3, 'Tad', 'Richard', 2),
(4, 'Yvonne', 'Turner', 1),
(5, 'Guy', 'Gonzales', 1),
(6, 'Walter', 'Mueller', 4),
(7, 'Florence', 'Mcneil', 3),
(8, 'Martena', 'Griffith', 4),
(9, 'Myles', 'Cannon', 1),
(10, 'Leandra', 'Parks', 2),
(11, 'Eagan', 'Hood', 1),
(12, 'Sara', 'Reeves', 3),
(13, 'Felix', 'Pacheco', 4),
(14, 'Mikayla', 'Nieves', 1),
(15, 'Jada', 'Rodriguez', 3),
(16, 'Camilla', 'Wilson', 2),
(17, 'Geraldine', 'Fernandez', 3),
(18, 'Breanna', 'Mejia', 1),
(19, 'Reagan', 'Pruitt', 4),
(20, 'Cairo', 'Mosley', 4),
(21, 'Oren', 'Mcdonald', 2),
(22, 'Iona', 'Mccullough', 3),
(23, 'Guinevere', 'Pearson', 1),
(24, 'Malachi', 'Lane', 4),
(25, 'Theodore', 'Hess', 1);

-- --------------------------------------------------------

--
-- Structure de la table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `register_startDate` date NOT NULL,
  `register_endDate` date NOT NULL,
  `register_Returned` tinyint(4) NOT NULL,
  `id_Books` int(11) NOT NULL,
  `id_Clients` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `register_Books_FK` (`id_Books`),
  KEY `register_Clients0_FK` (`id_Clients`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `register`
--

INSERT INTO `register` (`id`, `register_startDate`, `register_endDate`, `register_Returned`, `id_Books`, `id_Clients`) VALUES
(1, '2019-08-22', '2019-11-03', 1, 70, 2),
(2, '2020-05-02', '2019-10-16', 1, 9, 8),
(3, '2019-10-26', '2020-05-30', 1, 55, 22),
(4, '2020-05-15', '2020-04-27', 1, 17, 4),
(5, '2020-07-13', '2020-04-21', 1, 33, 21),
(6, '2020-03-02', '2020-05-05', 1, 15, 2),
(7, '2019-11-30', '2020-05-07', 1, 14, 4),
(8, '2020-02-17', '2020-07-17', 1, 43, 10),
(9, '2020-06-24', '2019-10-07', 1, 21, 1),
(10, '2020-05-24', '2020-06-17', 1, 13, 3),
(11, '2020-03-18', '2020-02-08', 1, 38, 12),
(12, '2020-07-18', '2020-06-24', 1, 25, 15),
(13, '2019-09-22', '2019-08-01', 1, 4, 4),
(14, '2019-11-25', '2020-01-23', 1, 44, 11),
(15, '2019-09-04', '2019-07-26', 1, 11, 24),
(16, '2020-06-09', '2019-09-09', 1, 10, 16),
(17, '2019-09-25', '2019-10-15', 1, 1, 24),
(18, '2019-10-24', '2019-09-20', 1, 19, 15),
(19, '2020-06-07', '2019-08-15', 1, 51, 8),
(20, '2019-08-14', '2020-04-10', 1, 31, 14),
(21, '2020-02-21', '2019-07-31', 1, 45, 1),
(22, '2019-10-04', '2019-11-23', 1, 2, 24),
(23, '2019-08-10', '2020-01-30', 1, 36, 1),
(24, '2020-02-26', '2019-10-07', 1, 48, 2),
(25, '2020-05-06', '2020-02-08', 1, 22, 3),
(26, '2019-09-05', '2020-04-26', 1, 5, 15),
(27, '2020-06-16', '2020-09-25', 0, 40, 18),
(28, '2020-05-04', '2020-08-31', 0, 23, 20),
(29, '2020-07-16', '2020-08-18', 0, 31, 17),
(30, '2020-06-13', '2020-09-08', 0, 30, 1),
(31, '2020-06-05', '2020-09-21', 0, 17, 12),
(32, '2020-05-02', '2020-07-22', 0, 61, 19),
(33, '2020-05-25', '2020-07-22', 0, 49, 18),
(34, '2020-06-10', '2020-08-30', 0, 66, 17),
(35, '2020-05-27', '2020-09-02', 0, 18, 20),
(36, '2020-06-04', '2020-09-06', 0, 26, 6),
(37, '2020-05-14', '2020-09-10', 0, 26, 6),
(38, '2020-06-10', '2020-09-03', 0, 12, 4),
(39, '2020-05-16', '2020-08-09', 0, 19, 5),
(40, '2020-06-23', '2020-08-31', 0, 67, 21);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `Books_Books_Styles_FK` FOREIGN KEY (`id_Books_Styles`) REFERENCES `books_styles` (`id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `Clients_Books_Styles_FK` FOREIGN KEY (`id_Books_Styles`) REFERENCES `books_styles` (`id`);

--
-- Contraintes pour la table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_Books_FK` FOREIGN KEY (`id_Books`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `register_Clients0_FK` FOREIGN KEY (`id_Clients`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
