-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2019 at 12:44 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HP_Fan`
--

-- --------------------------------------------------------

--
-- Table structure for table `HP_Fan_Name`
--

CREATE TABLE `HP_Fan_Name` (
  `ID` smallint(60) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prénom` varchar(25) NOT NULL,
  `Age` smallint(6) NOT NULL,
  `1er Film d'apparition` varchar(70) NOT NULL,
  `Maison` enum('Gryffondor','Poufsouffle','Serdaigle') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_Name`
--

INSERT INTO `HP_Fan_Name` (`ID`, `Nom`, `Prénom`, `Age`, `1er Film d'apparition`, `Maison`) VALUES
(1, 'POTTER', 'Harry James', 11, 'Harry POTTER à l\'école des Sorciers', 'Gryffondor'),
(2, 'DIGGORY', 'Cédric', 13, 'Harry POTTER et le Prisonnier d\'Azkaban', 'Poufsouffle'),
(3, 'DEAUCLAIRE', 'Pénélope', 15, 'Harry POTTER à l\'école des Sorciers\r\n\r\n', 'Serdaigle');

-- --------------------------------------------------------
--
-- Table structure for table `HP_Fan_House`
--

CREATE TABLE `HP_Fan_House` (
  `Séquence` smallint(6) NOT NULL,
  `Maison` varchar(30) NOT NULL,
  `Fondateur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_House`
--

INSERT INTO `HP_Fan_House` (`Séquence`, `Maison`, `Fondateur`) VALUES
(1, 'Gryffondor', 'Godric Gryffondor'),
(2, 'Poufsouffle', 'Helga Poufsouffle'),
(3, 'Serdaigle', 'Rowena Serdaigle'),
(4, 'Serpentard', 'Salazar Serpentard');

-- --------------------------------------------------------

--
-- Table structure for table `HP_Fan_Movies`
--

CREATE TABLE `HP_Fan_Movies` (
  `ID` smallint(6) NOT NULL,
  `Nom Du Film` varchar(70) NOT NULL,
  `Année` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Liste des Films Harry POTTER';

--
-- Dumping data for table `HP_Fan_Movies`
--

INSERT INTO `HP_Fan_Movies` (`ID`, `Nom Du Film`, `Année`) VALUES
(1, 'Harry Potter à l’école des Sorciers', 2001),
(2, 'Harry Potter et la Chambre des secrets', 2002),
(3, 'Harry Potter et le Prisonnier d\'Azkaban ', 2004),
(4, 'Harry Potter et la Coupe de feu', 2005),
(5, 'Harry Potter et l\'Ordre du Phénix	', 2007),
(6, 'Harry Potter et le Prince de sang-mêlé', 2009),
(7, 'arry Potter et les Reliques de la Mort - 1ère partie', 2010),
(8, 'arry Potter et les Reliques de la Mort - 2ème partie', 2011);

-- --------------------------------------------------------


--
-- Table structure for table `HP_Fan_Spells`
--

CREATE TABLE `HP_Fan_Spells` (
  `Numéro` smallint(6) NOT NULL,
  `Nom du Sort` varchar(30) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_Spells`
--

INSERT INTO `HP_Fan_Spells` (`Numéro`, `Nom du Sort`, `Description`, `Type`) VALUES
(1, 'Lumos', 'Illuminé au bout de sa baguette', 'Autorisé'),
(2, 'Endoloris', 'Faire très mal', 'Interdit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HP_Fan_House`
--
ALTER TABLE `HP_Fan_House`
  ADD PRIMARY KEY (`Séquence`);

--
-- Indexes for table `HP_Fan_Movies`
--
ALTER TABLE `HP_Fan_Movies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HP_Fan_Name`
--
ALTER TABLE `HP_Fan_Name`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HP_Fan_Spells`
--
ALTER TABLE `HP_Fan_Spells`
  ADD PRIMARY KEY (`Numéro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
