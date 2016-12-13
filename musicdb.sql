-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 06:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

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
  `currentLabel` int(11) DEFAULT NULL,
  `artisticName` varchar(16) DEFAULT NULL,
  `firstName` varchar(12) DEFAULT NULL,
  `lastName` varchar(12) DEFAULT NULL,
  `dob` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistID`, `currentLabel`, `artisticName`, `firstName`, `lastName`, `dob`) VALUES
(1, 0, 'Kanye West', 'Kanye', 'West', 'Jun-08-1977'),
(2, 0, 'Kendrick Lamar', 'Kendrick', 'Duckworth', 'Jun-17-1987'),
(3, 0, 'Miles Davis', 'Miles', 'Davis', 'May-26-1926'),
(4, 0, 'Britney Spears', 'Britney', 'Spears', 'Dec-02-1981'),
(5, 0, 'Aphex Twin', 'Richard', 'James', 'Aug-18-1971'),
(6, 0, 'Daft Punk', 'Thomas', 'Bangalter', 'Jan-03-1975'),
(7, 0, 'Daft Punk', 'Guy-Manuel', 'Homen-Christ', 'Feb-08-1974'),
(8, 0, 'Pink Floyd', 'David', 'Gilmour', 'Mar-06-1946'),
(9, 0, 'Pink Floyd', 'Roger', 'Waters', 'Sep-06-1943'),
(10, 0, 'Pink Floyd', 'Syd', 'Barrett', 'Jan-06-1946'),
(11, 0, 'Pink Floyd', 'Richard', 'Wright', 'Jul-28-1943'),
(12, 0, 'Pink Floyd', 'Nick', 'Mason', 'Jan-27-1944'),
(13, 0, 'Led Zeppelin', 'Robert', 'Plant', 'Aug-20-1948'),
(14, 0, 'Led Zeppelin', 'James', 'Patrick', 'Jan-09-1944'),
(15, 0, 'Led Zeppelin', 'John', 'Bonham', 'May-31-1948'),
(16, 0, 'Led Zeppelin', 'John', 'Baldwin', 'Jan-03-1946');

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
  `albumName` varchar(32) DEFAULT NULL,
  `artistName` varchar(16) DEFAULT NULL,
  `labelName` varchar(24) DEFAULT NULL,
  `genreName` varchar(12) DEFAULT NULL,
  `songName` varchar(40) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `contributingArtists` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`songID`, `albumName`, `artistName`, `labelName`, `genreName`, `songName`, `length`, `contributingArtists`) VALUES
(1, 'The College Dropout', 'Kanye West', 'GOOD Music', 'Hiphop', 'Jesus Walks', 193, NULL),
(2, 'The College Dropout', 'Kanye West', 'GOOD Music', 'Hiphop', 'All Falls Down', 223, 'Syleena Johnson'),
(3, 'The College Dropout', 'Kanye West', 'GOOD Music', 'Hiphop', 'Slow Jamz', 316, 'Twista, Jamie Foxx'),
(4, 'Late Registration', 'Kanye West', 'GOOD Music', 'Hiphop', 'Touch the Sky', 237, 'Lupe Fiasco'),
(5, 'Late Registration', 'Kanye West', 'GOOD Music', 'Hiphop', 'Gold Digger', 208, 'Jamie Foxx'),
(6, 'Late Registration', 'Kanye West', 'GOOD Music', 'Hiphop', 'Drive Slow', 272, NULL),
(7, NULL, 'Kanye West', 'GOOD Music', 'Hiphop', 'All Day', 311, 'TheophilusLondon, Allan Kingdom, Paul McCartney'),
(8, 'Led Zeppelin', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Dazed and Confused', 388, NULL),
(9, 'Led Zeppelin', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Communication Break Down', 150, NULL),
(10, 'Led Zeppelin', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Good Times Bad Times', 166, NULL),
(11, 'Led Zeppelin II', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Whole lotta love', 334, NULL),
(12, 'Led Zeppelin II', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Heartbreaker', 254, NULL),
(13, 'Led Zeppelin II', 'Led Zeppelin', 'Atlantic Records', 'Rock', 'Moby Dick', 260, NULL),
(14, 'Good Kid, M.A.A.D City', 'Kendrick Lamar', 'Top Dawg Entertainment', 'Hiphop', 'M.A.A.D City', 350, 'MM Eiht'),
(15, 'Good Kid, M.A.A.D City', 'Kendrick Lamar', 'Top Dawg Entertainment', 'Hiphop', 'Swimming Pools', 313, NULL),
(16, 'Good Kid, M.A.A.D City', 'Kendrick Lamar', 'Top Dawg Entertainment', 'Hiphop', 'Money Trees', 386, 'Jayrock'),
(17, 'Bitches Brew', 'Miles Davis', 'Columbia', 'Jazz', 'Miles Runs the Voodoo Down', 844, NULL),
(18, 'Bitches Brew', 'Miles Davis', 'Columbia', 'Jazz', 'Pharaohs Dance', 1200, NULL),
(19, 'Bitches Brew', 'Miles Davis', 'Columbia', 'Jazz', 'Spanish Keys', 1049, NULL),
(20, 'Blue Period', 'Miles Davis', 'Columbia', 'Jazz', 'Bluing', 595, NULL),
(21, 'Blue Period', 'Miles Davis', 'Columbia', 'Jazz', 'Blue Room', 168, NULL),
(22, 'Blue Period', 'Miles Davis', 'Columbia', 'Jazz', 'Out of the Blue', 375, NULL),
(23, 'Views', 'Drake', 'Cash Money Records', 'Hiphop', 'Controlla', 245, NULL),
(24, 'Views', 'Drake', 'Cash Money Records', 'Hiphop', 'Hotline Bling', 267, NULL),
(25, 'Views', 'Drake', 'Cash Money Records', 'Hiphop', 'One Dance', 174, 'Wizkkid and Kyla'),
(26, 'Britney', 'Britney Spears', 'RCA', 'Pop', 'Overprotective', 198, NULL),
(27, 'Britney', 'Britney Spears', 'RCA', 'Pop', 'Anticipating', 196, NULL),
(28, 'Britney', 'Britney Spears', 'RCA', 'Pop', 'Boys', 206, NULL),
(29, 'The Dark Side of The Moon', 'Pink Floyd', 'Columbia', 'Rock', 'Time', 413, NULL),
(30, 'The Dark Side of The Moon', 'Pink Floyd', 'Columbia', 'Rock', 'On The Run', 210, NULL),
(31, 'The Dark Side of The Moon', 'Pink Floyd', 'Columbia', 'Rock', 'Money', 390, NULL),
(32, 'Discovery', 'Daft Punk', 'Columbia', 'Electronic', 'One More Time', 320, NULL),
(33, 'Discovery', 'Daft Punk', 'Columbia', 'Electronic', 'Harder Better Faster Stronger', 225, NULL),
(34, 'Discovery', 'Daft Punk', 'Columbia', 'Electronic', 'Face to Face', 238, NULL),
(35, 'Richard D. James Album', 'Aphex Twin', 'Warp', 'Electronic', 'To Cure a Weakling Child', 243, NULL),
(36, 'Richard D. James Album', 'Aphex Twin', 'Warp', 'Electronic', 'Fingerbib', 228, NULL),
(37, 'Richard D. James Album', 'Aphex Twin', 'Warp', 'Electronic', '4', 217, NULL);

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
