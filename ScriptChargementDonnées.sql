-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 jan. 2022 à 22:37
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `pseudo` varchar(50) NOT NULL,
  `mdp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pseudo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`pseudo`, `mdp`) VALUES
('tata', '$2y$10$3fkAAbcE0atXUTTJ2LBYA.iHahKQbk2Grl4wGdf61IbBXEhCC0AS2');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_Article` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) DEFAULT NULL,
  `contenu` varchar(2048) DEFAULT NULL,
  `moment` date DEFAULT NULL,
  PRIMARY KEY (`id_Article`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_Article`, `titre`, `contenu`, `moment`) VALUES
(34, 'AS Saint-Etienne : Bernardoni et Thioub (Angers) en approche,', 'L\'AS Saint-Etienne est sur le point d\'obtenir les prÃªts jusqu\'Ã  la fin de deux joueurs d\'Angers : le gardien Paul Bernardoni et l\'attaquant Sada Tioub. Celui de Jean-Philippe Mateta (Crystal Palace) est, quant Ã  lui, espÃ©rÃ© d\'ici Ã  la fin de la semaine.', '2022-01-04'),
(33, 'Pas de jauges proportionnelles pour l\'instant dans les stades en France', 'Face au Covid-19, le ministÃ¨re des Sports a affirmÃ© ce mardi que l\'instauration de jauges proportionnelles dans les enceintes sportives en France ne serait envisagÃ©e qu\'Ã  Â« la faveur d\'une Ã©volution positive de la situation sanitaire Â».', '2022-01-04'),
(32, 'COVID', 'MalgrÃ© les propos du ministre de la SantÃ© Olivier VÃ©ran, qui avait parlÃ© d\'une Â« usine Ã  gaz Â», dimanche, pour justifier le refus du principe de proportionnalitÃ©, les opposants aux jauges fixes avaient encore quelques espoirs dans l\'amendement du dÃ©putÃ© Sacha HouliÃ© (La RÃ©publique En Marche), votÃ© le 29 dÃ©cembre en commission des lois afin de rÃ©tablir le principe de proportionnalitÃ© dans le Â« projet de loi renforÃ§ant les outils de gestion de la crise sanitaire et modifiant le code de la santÃ© publique Â». ', '2022-01-04'),
(35, 'NÃ®mes : Pascal Plancque mis Ã  pied, Nicolas UsaÃ¯ pressenti pour lui succÃ©der', 'MÃ©content des rÃ©sultats de NÃ®mes en Ligue 2 cette saison, le prÃ©sident Rani Assaf a dÃ©cidÃ© la mise Ã  pied de Pascal Plancque. Nicolas UsaÃ¯ devrait le remplacer.', '2022-01-04'),
(36, 'Kylian MbappÃ© (PSG), 23 ans et 201 buts en professionnel', 'Le Paris-SG s\'est qualifiÃ© (4-0) pour les huitiÃ¨mes de finale de la Coupe de France, lundi, aux dÃ©pens de Vannes (N2). Kylian MbappÃ© s\'est une nouvelle fois illustrÃ© en inscrivant un triplÃ©, et affiche dÃ©sormais 150 buts avec le PSG, 201 en tout en professionnel.Pour son premier match de l\'annÃ©e, Kylian MbappÃ© a inscrit un triplÃ© et largement participÃ© Ã  la victoire du PSG contre Vannes, lundi soir (4-0) en Coupe de France. Le champion du monde a ainsi marquÃ© son 150e but avec son club actuel et le 201e de sa carriÃ¨re en professionnel. Auteur de 51 buts en 2021, MbappÃ© devra donc prolonger et rÃ©aliser une aussi bonne annÃ©e en 2022 s\'il veut espÃ©rer rattraper le recordman du club, Edinson Cavani (200).', '2022-01-04'),
(37, 'INTERPELLATION D\'UN HOMME QUI MENAÃ‡AIT DE TUER UN DÃ‰PUTÃ‰ SUR UN FORUM DE DISCUSSION', 'INFO BFMTV - PlacÃ© en garde Ã  vue, l\'individu est inconnu de la police et des services de renseignement.\r\nUne personne qui menaÃ§ait de tuer un dÃ©putÃ© a Ã©tÃ© interpellÃ©e ce lundi matin, a appris BFMTV. L\'homme placÃ© en garde Ã  vue est nÃ© en 2002 et est inconnu de la police et des services de renseignement', '2022-01-04'),
(38, 'Lâ€™heure des Pros : lâ€™erreur de CNews, Pascal Praud rÃ©voltÃ©, â€œ Câ€™est une honte ! â€', 'Pascal Praud a fait son retour aux commandes de Lâ€™heure des pros ce lundi 3 janvier 2022 sur CNews aprÃ¨s avoir confiÃ© durant toute une semaine les rÃªnes Ã  Julien Pasquet. DÃ¨s 9 heures, il a Ã©tirÃ© le sommaire de la matinÃ©e avant dâ€™accueillir ses invitÃ©s.', '2022-01-04'),
(39, 'Face Ã  lâ€™info : Charlotte dâ€™Ornellas coupÃ©e, Christine Kelly Ã©nervÃ©e, CNews battue BFMTV ?', 'AprÃ¨s deux semaines de repos, Christine Kelly a repris les commandes de Face Ã  lâ€™info le lundi 3 janvier 2022. Lâ€™Ã©mission, qui a Ã©tÃ© prÃ©sentÃ©e par ClÃ©lie Mathias et Thomas Lequertier durant les fÃªtes de fin dâ€™annÃ©e, a Ã©tÃ© Ã©tendue Ã  lâ€™antenne de CNews Ã  partir de 19 heures.', '2022-01-04'),
(40, 'CNews : choc pour Eric Zemmour, Pascal Praud explose avec Charlotte dâ€™Ornellas, Sonia Mabrouk dÃ©fensiveâ€¦ une annÃ©e 2021 sous tension', 'En lâ€™espace de deux ans et grÃ¢ce Ã  un changement de ligne Ã©ditoriale, CNews a vu son audience augmenter, dÃ©passant parfois dÃ©sormais BFMTV, sa principale concurrente. Le canal 16 de la TNT peut compter sur des programmes forts comme Face Ã  lâ€™info , Lâ€™heure des pros ou encore Midi News . Retour sur cinq moments forts entre septembre et dÃ©cembre 2021 sur CNews.', '2022-01-04'),
(41, 'Audiences annuelles 2021 : TF1 leader en hausse, F2 au top rÃ©duit l\'Ã©cart, records historiques pour CNews et RMC Story', 'Retour des grands Ã©vÃ©nements sportifs et des divertissements. AprÃ¨s une annÃ©e 2020, perturbÃ©e par les confinements, le report des tournages des Ã©missions et des fictions, et l\'effondrement du marchÃ© publicitaire, le fonctionnement de la tÃ©lÃ© a Ã©tÃ© bien moins altÃ©rÃ© en 2021. La levÃ©e partielle des restrictions s\'est cependant accompagnÃ©e d\'une baisse mÃ©canique de la durÃ©e d\'Ã©coute de la tÃ©lÃ©vision, au plus haut l\'annÃ©e prÃ©cÃ©dente selon MÃ©diamÃ©trie.', '2022-01-04'),
(42, 'Audiences: TF1 et France 2 en tÃªte en2021, CNews bondit en un an', 'La premiÃ¨re chaÃ®ne a enregistrÃ© 70 des 100 meilleures audiences en 2021, notamment la plus forte d\'entre elles: le huitiÃ¨me de finale de l\'Euro de football France-Suisse le 28 juin, qui a rÃ©uni 16,4 millions de tÃ©lÃ©spectateurs.', '2022-01-04');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id_Commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(50) DEFAULT NULL,
  `contenu` varchar(500) DEFAULT NULL,
  `moment` date DEFAULT NULL,
  `id_ART` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Commentaire`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_Commentaire`, `auteur`, `contenu`, `moment`, `id_ART`) VALUES
(73, 'Arthur ', 'Je ne suis vraiment pas d&#39;accord avec son point de vue.. ', '2022-01-04', 33),
(72, 'Bastien', 'Totalement en accord avec cet article d&#39;une grande qualitÃ© !! ', '2022-01-04', 34);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
