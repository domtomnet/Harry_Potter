-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2019 at 08:04 PM
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
-- Table structure for table `HP_Fan_House`
--

CREATE TABLE `HP_Fan_House` (
  `ID MAISON` smallint(6) NOT NULL,
  `Maison` varchar(15) NOT NULL,
  `Fondateur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_House`
--

INSERT INTO `HP_Fan_House` (`ID MAISON`, `Maison`, `Fondateur`) VALUES
(1, 'Gryffondor', 'Godric Gryffondor'),
(2, 'Poufsouffle', 'Helga Poufsouffle'),
(3, 'Serdaigle', 'Rowena Serdaigle');

-- --------------------------------------------------------

--
-- Table structure for table `HP_Fan_Movies`
--

CREATE TABLE `HP_Fan_Movies` (
  `ID FILM` smallint(6) NOT NULL,
  `Nom Film` varchar(70) NOT NULL,
  `Année` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_Movies`
--

INSERT INTO `HP_Fan_Movies` (`ID FILM`, `Nom Film`, `Année`) VALUES
(1, 'Harry Potter à l’école des sorciers', 2001),
(2, 'Harry Potter et la Chambre des secrets', 2002),
(3, 'Harry Potter et le Prisonnier d\'Azkaban', 2004),
(4, 'Harry Potter et la Coupe de feu', 2005),
(5, 'Harry Potter et l\'Ordre du Phénix', 2007),
(6, 'Harry Potter et le Prince de sang-mêlé', 2009),
(7, 'Harry Potter et les Reliques de la Mort -1', 2010),
(8, 'Harry Potter et les Reliques de la Mort -2', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `HP_Fan_Names`
--

CREATE TABLE `HP_Fan_Names` (
  `ID` smallint(6) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prénom` varchar(25) NOT NULL,
  `Age` smallint(3) NOT NULL,
  `Maison` varchar(15) NOT NULL,
  `Film` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_Names`
--

INSERT INTO `HP_Fan_Names` (`ID`, `Nom`, `Prénom`, `Age`, `Maison`, `Film`) VALUES
(1, 'POTTER', 'Harry James', 11, 'Gryffondor', 'Harry Potter à l’école des sorciers'),
(2, 'DIGGORY', 'Cédric', 12, 'Poufsouffle', 'Harry Potter et le Prisonnier d\'Azkaban'),
(3, 'DEAUCLAIRE', 'Pénélope', 15, 'Serdaigle', 'Harry Potter à l’école des sorciers');

-- --------------------------------------------------------

--
-- Table structure for table `HP_Fan_Spells`
--

CREATE TABLE `HP_Fan_Spells` (
  `ID Sort` smallint(6) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HP_Fan_Spells`
--

INSERT INTO `HP_Fan_Spells` (`ID Sort`, `Nom`, `Description`, `Type`) VALUES
(1, 'Lumos', 'Illuminer au bout de sa baguette', 'Autorisé'),
(2, 'Endoloris', 'Faire très mal', 'Interdit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HP_Fan_House`
--
ALTER TABLE `HP_Fan_House`
  ADD PRIMARY KEY (`ID MAISON`);

--
-- Indexes for table `HP_Fan_Movies`
--
ALTER TABLE `HP_Fan_Movies`
  ADD PRIMARY KEY (`ID FILM`);

--
-- Indexes for table `HP_Fan_Names`
--
ALTER TABLE `HP_Fan_Names`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HP_Fan_Spells`
--
ALTER TABLE `HP_Fan_Spells`
  ADD PRIMARY KEY (`ID Sort`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HP_Fan_House`
--
ALTER TABLE `HP_Fan_House`
  MODIFY `ID MAISON` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `HP_Fan_Movies`
--
ALTER TABLE `HP_Fan_Movies`
  MODIFY `ID FILM` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `HP_Fan_Names`
--
ALTER TABLE `HP_Fan_Names`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `HP_Fan_Spells`
--
ALTER TABLE `HP_Fan_Spells`
  MODIFY `ID Sort` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `HP_Fan_Names`
--
ALTER TABLE `HP_Fan_Names`
  ADD CONSTRAINT `Film` FOREIGN KEY (`ID`) REFERENCES `HP_Fan_Movies` (`ID FILM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Maison` FOREIGN KEY (`ID`) REFERENCES `HP_Fan_House` (`ID MAISON`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
