-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 09:46 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `songID` int(11) NOT NULL,
  `albumNameID` int(11) DEFAULT NULL,
  `artistName` varchar(16) DEFAULT NULL,
  `labelNameID` int(11) DEFAULT NULL,
  `genreNameID` int(11) DEFAULT NULL,
  `songName` varchar(40) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `contributingArtists` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`songID`, `albumNameID`, `artistName`, `labelNameID`, `genreNameID`, `songName`, `length`, `contributingArtists`) VALUES
(1, 1, 'Kanye West', 6, 1, 'Jesus Walks', 193, NULL),
(2, 1, 'Kanye West', 6, 1, 'All Falls Down', 223, 'Syleena Johnson'),
(3, 1, 'Kanye West', 6, 1, 'Slow Jamz', 316, 'Twista, Jamie Foxx'),
(4, 2, 'Kanye West', 6, 1, 'Touch the Sky', 237, 'Lupe Fiasco'),
(5, 2, 'Kanye West', 6, 1, 'Gold Digger', 208, 'Jamie Foxx'),
(6, 2, 'Kanye West', 6, 1, 'Drive Slow', 272, NULL),
(7, NULL, 'Kanye West', 6, 1, 'All Day', 311, 'TheophilusLondon, Allan Kingdom, Paul McCartney'),
(8, 3, 'Led Zeppelin', 1, 2, 'Dazed and Confused', 388, NULL),
(9, 3, 'Led Zeppelin', 1, 2, 'Communication Break Down', 150, NULL),
(10, 3, 'Led Zeppelin', 1, 2, 'Good Times Bad Times', 166, NULL),
(11, 4, 'Led Zeppelin', 1, 2, 'Whole lotta love', 334, NULL),
(12, 4, 'Led Zeppelin', 1, 2, 'Heartbreaker', 254, NULL),
(13, 4, 'Led Zeppelin', 1, 2, 'Moby Dick', 260, NULL),
(14, 5, 'Kendrick Lamar', 7, 1, 'M.A.A.D City', 350, 'MM Eiht'),
(15, 5, 'Kendrick Lamar', 7, 1, 'Swimming Pools', 313, NULL),
(16, 5, 'Kendrick Lamar', 7, 1, 'Money Trees', 386, 'Jayrock'),
(17, 6, 'Miles Davis', 2, 3, 'Miles Runs the Voodoo Down', 844, NULL),
(18, 6, 'Miles Davis', 3, 2, 'Pharaohs Dance', 1200, NULL),
(19, 6, 'Miles Davis', 2, 3, 'Spanish Keys', 1049, NULL),
(20, 7, 'Miles Davis', 2, 3, 'Bluing', 595, NULL),
(21, 7, 'Miles Davis', 2, 3, 'Blue Room', 168, NULL),
(22, 7, 'Miles Davis', 2, 3, 'Out of the Blue', 375, NULL),
(23, 8, 'Drake', 5, 1, 'Controlla', 245, NULL),
(24, 8, 'Drake', 5, 1, 'Hotline Bling', 267, NULL),
(25, 8, 'Drake', 5, 1, 'One Dance', 174, 'Wizkkid and Kyla'),
(26, 9, 'Britney Spears', 3, 4, 'Overprotective', 198, NULL),
(27, 9, 'Britney Spears', 3, 4, 'Anticipating', 196, NULL),
(28, 9, 'Britney Spears', 3, 4, 'Boys', 206, NULL),
(29, 10, 'Pink Floyd', 2, 2, 'Time', 413, NULL),
(30, 10, 'Pink Floyd', 2, 2, 'On The Run', 210, NULL),
(31, 10, 'Pink Floyd', 2, 2, 'Money', 390, NULL),
(32, 11, 'Daft Punk', 2, 5, 'One More Time', 320, NULL),
(33, 11, 'Daft Punk', 2, 5, 'Harder Better Faster Stronger', 225, NULL),
(34, 11, 'Daft Punk', 2, 5, 'Face to Face', 238, NULL),
(35, 12, 'Aphex Twin', 4, 5, 'To Cure a Weakling Child', 243, NULL),
(36, 12, 'Aphex Twin', 4, 5, 'Fingerbib', 228, NULL),
(37, 12, 'Aphex Twin', 4, 5, '4', 217, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`songID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
