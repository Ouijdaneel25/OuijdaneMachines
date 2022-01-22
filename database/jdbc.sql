-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 12 jan. 2022 à 21:31
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jdbc`
--

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `dateAchat` date NOT NULL,
  `prix` double NOT NULL,
  `idMarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `machine`
--

INSERT INTO `machine` (`id`, `reference`, `dateAchat`, `prix`, `idMarque`) VALUES
(24, 'redpp', '2022-01-04', 5684, 67),
(25, 'dsdq', '2022-01-14', 54564, 68),
(26, 'dsq', '2022-01-30', 546, 68),
(34, 'Machine', '2022-01-18', 1000000, 67),
(36, 'A12', '2022-01-09', 154, 67),
(37, 'emsi2', '2022-02-05', 15346, 68),
(39, 'emsi3', '2022-01-10', 4547, 67),
(40, 'ds', '2022-01-11', 45, 74),
(41, 'dd', '2022-01-20', 54, 74),
(42, 'sqs', '2022-01-27', 12, 73),
(43, 'Z4564', '2022-01-14', 5456, 72),
(44, 'emsi2', '2022-01-14', 45, 68),
(45, 'emsi3', '2022-01-14', 45, 68),
(46, 'Zyt', '2022-01-12', 124565, 73),
(47, 'redpp', '2022-01-18', 7887, 68),
(48, 'redpp', '2022-01-18', 7887, 68);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `libelle` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `code`, `libelle`) VALUES
(67, 'C7878', 'HP'),
(68, 'Z4564', 'DELL'),
(69, 'ZE47887', 'SAMSUNG'),
(72, 'ZZEZ', 'Oppo'),
(73, 'Marque5', 'HWAWI'),
(74, 'KNDKSD', 'Iphone');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`) VALUES
(1, 'ouijdane', 'Ouijdane', '123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk` (`idMarque`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `fk` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
