-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 10:10 PM
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
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `trackCount` int(11) DEFAULT NULL,
  `releaseDate` char(11) DEFAULT NULL,
  `playtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumID`, `name`, `trackCount`, `releaseDate`, `playtime`) VALUES
(1, 'The College Dropout', 21, 'Feb-10-2014', 4573),
(2, 'Late Registration', 22, 'Aug-30-2005', 4226),
(3, 'Led Zeppelin', 9, 'Jan-12-1969', 2692),
(4, 'Led Zeppelin II', 9, 'Oct-22-1960', 2498),
(5, 'Good Kid M.A.A.D City', 12, 'Oct-22-1960', 2498),
(6, 'Bitches Brew', 6, 'Mar-30-1970', 5651),
(7, 'Blue Period', 3, 'Oct-05-1951', 1133),
(8, 'Views', 20, 'Apr-29-2016', 4875),
(9, 'Britney', 12, 'Nov-05-2001', 2376),
(10, 'The Dark Side of the Moon', 10, 'Mar-01-1973', 2569),
(11, 'Discovery', 14, 'Feb-26-2001', 3620),
(12, 'Richard D. James Album', 10, 'Nov-04-1996', 1971);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artistID` int(11) NOT NULL,
  `currentLabelID` int(11) DEFAULT NULL,
  `artisticName` varchar(16) DEFAULT NULL,
  `firstName` varchar(12) DEFAULT NULL,
  `lastName` varchar(12) DEFAULT NULL,
  `dob` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistID`, `currentLabelID`, `artisticName`, `firstName`, `lastName`, `dob`) VALUES
(1, 6, 'Kanye West', 'Kanye', 'West', 'Jun-08-1977'),
(2, 7, 'Kendrick Lamar', 'Kendrick', 'Duckworth', 'Jun-17-1987'),
(3, 2, 'Miles Davis', 'Miles', 'Davis', 'May-26-1926'),
(4, 3, 'Britney Spears', 'Britney', 'Spears', 'Dec-02-1981'),
(5, 4, 'Aphex Twin', 'Richard', 'James', 'Aug-18-1971'),
(6, 2, 'Daft Punk', 'Thomas', 'Bangalter', 'Jan-03-1975'),
(7, 2, 'Daft Punk', 'Guy-Manuel', 'Homen-Christ', 'Feb-08-1974'),
(8, 2, 'Pink Floyd', 'David', 'Gilmour', 'Mar-06-1946'),
(9, 2, 'Pink Floyd', 'Roger', 'Waters', 'Sep-06-1943'),
(10, 2, 'Pink Floyd', 'Syd', 'Barrett', 'Jan-06-1946'),
(11, 2, 'Pink Floyd', 'Richard', 'Wright', 'Jul-28-1943'),
(12, 2, 'Pink Floyd', 'Nick', 'Mason', 'Jan-27-1944'),
(13, 1, 'Led Zeppelin', 'Robert', 'Plant', 'Aug-20-1948'),
(14, 1, 'Led Zeppelin', 'James', 'Patrick', 'Jan-09-1944'),
(15, 1, 'Led Zeppelin', 'John', 'Bonham', 'May-31-1948'),
(16, 1, 'Led Zeppelin', 'John', 'Baldwin', 'Jan-03-1946');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreID` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreID`, `name`, `description`) VALUES
(1, 'HipHop', 'Stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.'),
(2, 'Rock', 'Centered on the electric guitar, usually as part of a rock group with electric bass guitar and drums.'),
(3, 'Jazz', 'Characterized by swing and blue notes, call and response vocals, polyrhythms and improvisation.'),
(4, 'Pop', 'Popular music that originated in its modern form in the Western world during the 1950s and 1960s'),
(5, 'Electronic', 'Produced for playback by disc jockeys (DJs) who create seamless selections of tracks, called a mix, by segueing from one recording to another');

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE `label` (
  `labelID` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `establishDate` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `label`
--

INSERT INTO `label` (`labelID`, `name`, `establishDate`) VALUES
(1, 'Atlantic Records', '1947'),
(2, 'Columbia', '1887'),
(3, 'RCA', '1919'),
(4, 'Warp', '1989'),
(5, '‘Cash Money Record', '1991'),
(6, 'GOOD Music', '2004'),
(7, 'Top Dawg Entertainment', '2004');

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
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreID`);

--
-- Indexes for table `label`
--
ALTER TABLE `label`
  ADD PRIMARY KEY (`labelID`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`songID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
