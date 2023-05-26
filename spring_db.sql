-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 26 mai 2023 à 11:36
-- Version du serveur :  5.7.36
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `spring_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` bigint(20) NOT NULL AUTO_INCREMENT,
  `description_cat` varchar(255) DEFAULT NULL,
  `nom_cat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `description_cat`, `nom_cat`) VALUES
(1, 'Les PCs', 'PC'),
(2, 'Les imprimantes', 'Imprimante'),
(3, NULL, 'console de jeux'),
(4, NULL, 'xccxxxc777'),
(5, NULL, 'console de jeux'),
(6, NULL, 'gggsgd');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_creation` datetime(6) DEFAULT NULL,
  `nom_produit` varchar(255) DEFAULT NULL,
  `prix_produit` double DEFAULT NULL,
  `categorie_id_cat` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `FKsu6ikhfh3e1shoow8pb5v2yie` (`categorie_id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `date_creation`, `nom_produit`, `prix_produit`, `categorie_id_cat`) VALUES
(2, '2023-04-18 12:46:51.354000', 'PC Dell', 2200.5, 1),
(3, '2023-04-18 12:47:39.455000', 'PC Asus', 1500.5, 2),
(4, '2023-04-18 00:00:00.000000', 'Imprimante Epson123', 800, 2),
(5, '2023-04-21 10:36:32.000000', 'Iphone 7 plus', 50, 2),
(6, '2023-05-23 00:00:00.000000', 'iphone 10', 500, 2),
(7, '2023-05-09 00:00:00.000000', 'djsjdkf', 7889, 2),
(8, '2023-05-10 00:00:00.000000', 'ystddu', 500, 1),
(9, '2023-05-24 00:00:00.000000', 'tata', 7895, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FKsu6ikhfh3e1shoow8pb5v2yie` FOREIGN KEY (`categorie_id_cat`) REFERENCES `categorie` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
