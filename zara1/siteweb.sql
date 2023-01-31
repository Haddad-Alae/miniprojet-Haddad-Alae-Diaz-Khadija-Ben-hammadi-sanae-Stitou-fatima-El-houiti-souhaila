-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 jan. 2023 à 09:35
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `siteweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'alaehd', 'alaehd');

-- --------------------------------------------------------

--
-- Structure de la table `categori`
--

CREATE TABLE `categori` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `icone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categori`
--

INSERT INTO `categori` (`id`, `libelle`, `description`, `date`, `icone`) VALUES
(50, 'bijoux', 'bijoux de bon qualité', '2023-01-31 00:55:04', 'fa-solid fa-gem'),
(51, 'Maquillage', 'Maquillage pour fille', '2023-01-31 01:30:22', '');

-- --------------------------------------------------------

--
-- Structure de la table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `email` varchar(220) NOT NULL,
  `phone` bigint(18) NOT NULL,
  `adress` text NOT NULL,
  `pay` varchar(200) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `checkout`
--

INSERT INTO `checkout` (`id`, `nom`, `email`, `phone`, `adress`, `pay`, `id_client`) VALUES
(1, 'alaehaddad', 'alaehaddad205@gmail.com', 0, 'NNNNNNNNNN', 'cod', 43),
(2, 'alaehaddad', 'alaehaddad205@gmail.com', 0, 'nnnnnnnn', 'cod', 43),
(3, 'alaehaddad', 'alaehaddad205@gmail.com', 0, '???????', 'cod', 43),
(4, 'khadija', 'alaehaddad205@gmail.com', 0, 'tanger', 'cod', 62),
(5, 'alaehaddad', 'alaehaddad205@gmail.com', 0, 'MKKKKKKKK', 'cod', 43),
(6, 'alaehaddad', 'alaehaddad205@gmail.com', 0, 'kkkk', 'cod', 43),
(7, 'alaehaddad', 'alaehaddad205@gmail.com', 0, 'K/?NKNK', 'netbanking', 43);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `valide` int(11) NOT NULL DEFAULT 0,
  `date_creation` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id`, `id_client`, `total`, `valide`, `date_creation`) VALUES
(1, 57, '3066', 0, '2023-01-28 11:52:21'),
(17, 43, '3572', 0, '2023-01-30 19:38:10'),
(18, 43, '5661', 0, '2023-01-30 22:17:22'),
(19, 43, '1887', 0, '2023-01-30 22:49:57'),
(20, 43, '0', 0, '2023-01-31 00:40:34'),
(21, 43, '3774', 0, '2023-01-31 00:41:00'),
(22, 43, '0', 0, '2023-01-31 00:44:16');

-- --------------------------------------------------------

--
-- Structure de la table `line_command`
--

CREATE TABLE `line_command` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `line_command`
--

INSERT INTO `line_command` (`id`, `id_produit`, `id_command`, `prix`, `qty`, `total`) VALUES
(1, 55, 17, '188', 19, '3572'),
(2, 55, 17, '188', 19, '3572'),
(3, 55, 18, '1887', 3, '5661'),
(4, 55, 18, '1887', 3, '5661'),
(5, 55, 19, '1887', 1, '1887'),
(6, 55, 19, '1887', 1, '1887'),
(7, 55, 21, '1887', 2, '3774'),
(8, 55, 21, '1887', 2, '3774');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `discount` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `libelle`, `prix`, `discount`, `id_categorie`, `description`, `image`) VALUES
(55, '8 pièces Bracelet', '100', 0000000000, 6, '8 pièces Bracelet à perle', '3.jfif'),
(60, 'Anneau ', '70', 0000000000, 50, 'Anneau argent zircone cubique', '63d85a46e566d7.jfif'),
(61, 'Collier ', '100', 0000000000, 50, 'Collier à perles argent avec strass perle de culture', '63d85a74a2aab6.jfif'),
(62, '7 pièces Bracelet ', '120', 0000000000, 50, '7 pièces Bracelet avec strass', '63d85b88754a92.jfif'),
(63, '22 pièces Anneau ', '200', 0000000000, 50, '22 pièces Anneau à détail cœur à fausse perle', '63d85bb19e1df1.jfif'),
(64, ' Mascara ', '100', 0000000000, 51, ' Mascara volumisant extrême Max Impact', '63d86161d1ba966.jfif'),
(65, 'Blush mat léger ', '79', 0000000000, 51, 'Newly Reformulated - Blush mat léger -Blissful', '63d861b678d1955.jfif'),
(66, 'gloss ', '199', 0000000000, 51, 'SHEGLAM Set de gloss Love Dive So Smitten', '63d86212a5dac44.jfif'),
(67, 'gloss Love ', '299', 0000000000, 51, ' Set de gloss Love Dive So Smitten', '63d862c137c1433.jfif');

-- --------------------------------------------------------

--
-- Structure de la table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `discount` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sold`
--

INSERT INTO `sold` (`id`, `libelle`, `prix`, `discount`, `id_categorie`, `description`, `image`) VALUES
(7, 'Pendants d\'oreilles ', '70', 5, 50, 'Pendants d\'oreilles perle de culture argent', '63d85b1e8d5e75.jfif'),
(8, '2 pièces Collier ', '100', 8, 50, '2 pièces Collier à fausse perle à breloque ronde', '63d85b572e1424.jfif'),
(9, ' Fard à joues ', '99', 15, 51, 'Color Bloom Fard à joues liquide-Love Cake', '63d86308a941d22.jfif'),
(10, 'Poudre libre ', '99', 6, 51, 'Newly Reformulated - Poudre libre -Translucent', '63d8633ab761a11.jfif');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `date_creation`) VALUES
(43, 'alaehaddad', 'alaehd123', 2023),
(44, 'admin', 'admin123', 2023),
(45, 'alaehaddad', 'alaehd123', 2023),
(46, 'douae', 'douae123', 2023),
(49, 'alaehaddad', 'alaehd123', 2023),
(50, 'alaehaddad', 'alaehd123', 2023),
(63, 'khadija', 'khadija', 2023);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `line_command`
--
ALTER TABLE `line_command`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_command` (`id_command`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sold`
--
ALTER TABLE `sold`
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
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categori`
--
ALTER TABLE `categori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `line_command`
--
ALTER TABLE `line_command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `line_command`
--
ALTER TABLE `line_command`
  ADD CONSTRAINT `line_command_ibfk_1` FOREIGN KEY (`id_command`) REFERENCES `command` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `line_command_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
