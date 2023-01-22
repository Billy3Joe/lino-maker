-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 juil. 2022 à 13:32
-- Version du serveur : 10.4.10-MariaDB
-- Version de PHP : 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lino_makers`
--

-- --------------------------------------------------------

--
-- Structure de la table `levels`
--

DROP TABLE IF EXISTS `levels`;
CREATE TABLE IF NOT EXISTS `levels` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `level1` int(11) NOT NULL,
  `level2` int(11) NOT NULL,
  `level3` int(11) NOT NULL,
  `level4` int(11) NOT NULL,
  `level5` int(11) NOT NULL,
  PRIMARY KEY (`id_level`),
  KEY `fk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `statistiques`
--

DROP TABLE IF EXISTS `statistiques`;
CREATE TABLE IF NOT EXISTS `statistiques` (
  `id_stats` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `highscore` int(11) NOT NULL,
  PRIMARY KEY (`id_stats`),
  KEY `foreign_key` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(36, 'admin', 'billykamze3@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `statistiques`
--
ALTER TABLE `statistiques`
  ADD CONSTRAINT `fk` FOREIGN KEY (`id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
