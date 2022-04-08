-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 09:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `author_name`) VALUES
(1, 'Doug Maciaszek'),
(2, 'Fonsie Durrell'),
(3, 'Clotilda Barreau'),
(4, 'Kort Vassbender'),
(5, 'Thedrick Yerill'),
(6, 'Anne-corinne Shoorbrooke'),
(7, 'Aldric Aldham'),
(8, 'Bird Stannering'),
(9, 'Odie McKeran'),
(10, 'Coralie Dyment'),
(11, 'Fielding Pikett'),
(12, 'Amelie Jacketts'),
(13, 'Mari Luckwell'),
(14, 'Caryl Kleinhaus'),
(15, 'Alaster Danby'),
(16, 'Brinn Bryers'),
(17, 'Garnette Eingerfield'),
(18, 'Brewster Bowton'),
(19, 'Ches Abbey'),
(20, 'Wilhelmina Gavrielly'),
(21, 'Jordan Ormiston'),
(22, 'Fulvia Howman'),
(23, 'Aldus Vicioso'),
(24, 'Emelina Bruck'),
(25, 'Dennison Vernon'),
(26, 'Westley Whapples'),
(27, 'Donavon Parratt'),
(28, 'Alyce Higbin'),
(29, 'Pattie Raffles'),
(30, 'Brenda Scedall'),
(31, 'Napoleon Tournay'),
(32, 'Arlan Boddam'),
(33, 'Alphonso Catlin'),
(34, 'Linea Higgonet'),
(35, 'Gordy Swinford'),
(36, 'Thorsten Lackham'),
(37, 'Vikki Whitchurch'),
(38, 'Jocelin Bilbery'),
(39, 'Rakel Lewty'),
(40, 'Arly Crewdson'),
(41, 'Archy Hutcheson'),
(42, 'Sharlene Seeler'),
(43, 'Kirbie Boddie'),
(44, 'Tad Ingamells'),
(45, 'Thorn Tapin'),
(46, 'Pen Autie'),
(47, 'Tiertza Hucks'),
(48, 'Bondon Ivanusyev'),
(49, 'Gayla Mattes'),
(50, 'Abrahan Will'),
(53, 'Rizal Cerdas'),
(54, 'Clarence Ho'),
(55, 'Author_Demo');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `no_of_copies` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `no_of_copies`, `title`, `author_id`, `publisher_id`) VALUES
(2770535, 10, 'Herald\'s Darkness', 34, 9),
(4254943, 4, 'Moon of the Western Sun', 11, 2),
(8076431, 6, 'Wizard and Vengeance', 16, 7),
(13701337, 5, 'Wizard and Vengeance', 6, 2),
(13852333, 5, 'The Ebony Demon', 39, 3),
(34168473, 10, 'Evil Vengeance', 42, 6),
(40869501, 9, 'Sword', 24, 2),
(47443316, 6, 'Goddess\'s Fate', 30, 1),
(48060070, 2, 'Master\'s Pride', 10, 7),
(55973854, 8, 'The Aradeni Magic', 25, 10),
(62198856, 2, 'Bane\'s Realm', 47, 10),
(62437524, 6, 'and Ruby', 49, 6),
(63399937, 8, 'Hero of the Bright Dragon', 35, 2),
(63544676, 8, 'Vevrindon\'s Circle', 18, 9),
(66440222, 7, 'Sun', 40, 7),
(68068752, 5, 'The Ebony Demon', 14, 9),
(79021430, 8, 'Twilight Discord', 10, 7),
(96610845, 1, 'The Merirgir Seed', 36, 9),
(104103339, 3, 'Winter\'s Chaos', 18, 6),
(127798641, 9, 'Mistress\'s Power', 38, 3),
(138795635, 4, 'Evil Vengeance', 10, 2),
(153175193, 6, 'The Earth Scourge', 17, 3),
(163829279, 10, 'Evil Vengeance', 6, 3),
(172914847, 9, 'Demon Darkness', 38, 1),
(174794686, 5, 'The Iggwyn Fortress', 33, 1),
(177477703, 5, 'Wizard and Vengeance', 15, 1),
(229671062, 9, 'Herald', 43, 1),
(229713938, 4, 'Bane\'s Realm', 47, 5),
(267477408, 5, 'The Sunset Child', 43, 8),
(274899581, 9, 'and Heart', 4, 5),
(275965262, 8, 'Sun', 31, 10),
(278038012, 2, 'and Fortress', 20, 8),
(286739293, 5, 'Secret', 40, 3),
(310590034, 1, 'Child of Illusion', 44, 2),
(328244031, 4, 'Evil Seed of Denurgir', 40, 5),
(335555119, 4, 'The Eninome Hunter', 5, 8),
(345940566, 3, 'and Heart', 32, 4),
(348567276, 4, 'The Iggwyn Fortress', 28, 7),
(348852849, 6, 'Wizard and Vengeance', 16, 2),
(387399070, 9, 'Moon', 24, 10),
(389757260, 2, 'The Iggwyn Fortress', 29, 8),
(390332566, 3, 'Mage', 6, 3),
(397185485, 3, 'King of the Ebony Maiden', 22, 3),
(402548758, 8, 'The Jindis Children', 5, 6),
(410002332, 3, 'The Iggwyn Fortress', 13, 4),
(422055404, 5, 'The Jindis Children', 38, 2),
(433488523, 7, 'Hero and Mists', 33, 9),
(438824977, 1, 'Desert of the Iron Maiden', 19, 8),
(470119334, 1, 'The Western Child', 37, 4),
(471337980, 3, 'Herald', 31, 4),
(497577673, 6, 'Mage of Empire', 41, 8),
(511922153, 5, 'Evil Vengeance', 31, 1),
(520096082, 10, 'Herald\'s Darkness', 4, 5),
(523315962, 9, 'The Iggwyn Fortress', 21, 9),
(544560604, 7, 'Demon Darkness', 9, 8),
(552328137, 2, 'The Third Heart', 34, 1),
(591967705, 10, 'Demon Darkness', 28, 1),
(595569967, 2, 'The Western Child', 12, 1),
(625600468, 1, 'Master\'s Pride', 11, 3),
(627645357, 10, 'Mage', 49, 8),
(639948442, 3, 'Hidden Hunter of Dalisssan', 13, 4),
(640656431, 9, 'Child of Illusion', 11, 2),
(671762472, 6, 'The Sunset Child', 17, 6),
(674837536, 9, 'Wizard and Vengeance', 49, 10),
(679719197, 6, 'The Mydiar Seed', 14, 10),
(693743137, 3, 'The Earth Scourge', 26, 3),
(694382141, 5, 'and Heart', 5, 2),
(696679163, 1, 'The Ebony Demon', 49, 5),
(699592740, 6, 'Goddess of the Evil Child', 4, 1),
(722872601, 1, 'Hidden Hunter of Dalisssan', 30, 9),
(723113896, 6, 'Herald', 20, 6),
(734015093, 7, 'Sword', 18, 1),
(737735080, 9, 'Winter and Glory', 19, 2),
(741663419, 7, 'Mage', 2, 2),
(749544297, 7, 'Winter\'s Chaos', 15, 1),
(756209746, 9, 'The Mydiar Seed', 35, 7),
(760691089, 4, 'Twilight Discord', 23, 7),
(764015098, 9, 'Curse', 39, 2),
(766861431, 3, 'Twilight Discord', 11, 7),
(768179409, 9, 'The Merirgir Seed', 13, 7),
(777618886, 4, 'Child of the Lost Dragon', 48, 2),
(786857868, 3, 'Winter and Glory', 37, 7),
(796116773, 8, 'The Emerald Crown', 48, 2),
(799633253, 7, 'The Garden and the Curse', 4, 8),
(806351648, 2, 'The Aradeni Magic', 23, 4),
(827969005, 4, 'and Fortress', 31, 9),
(834085694, 9, 'The Ebony Demon', 46, 3),
(840628402, 1, 'King of the Ebony Maiden', 21, 6),
(855740960, 9, 'The Lodiar God', 15, 4),
(862989667, 6, 'Desert of the Iron Maiden', 6, 6),
(873179065, 5, 'The Emerald Crown', 50, 3),
(876807079, 3, 'Hero and Fate', 32, 7),
(952445185, 6, 'Winter\'s Chaos', 29, 2),
(959643046, 6, 'Vevrindon\'s Circle', 6, 8),
(964247095, 5, 'Demon Darkness', 14, 1),
(974136201, 7, 'Ebony Light', 40, 1),
(983008187, 10, 'and Fortress', 46, 5),
(983719052, 8, 'and Ruby', 35, 2),
(987099556, 3, 'and Fortress', 11, 6),
(988301168, 2, 'Pocong SS3', 53, 11),
(988301169, 1, 'Java Spring Tutorial', 54, 11),
(988301170, 2, 'Book_Demo', 55, 13);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `card_no` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`card_no`, `address`, `name`, `phone`, `password`, `role`, `username`) VALUES
(1, 'admin_01', 'admin_01', 'admin_01', '$2a$10$f6OzJ203pu2Ai.tTBOqz3uOeObF6d1HRksXDMlKGlsmLlUcEQZ.P2', 'LIBRARIAN', 'admin_01'),
(2, 'borrower_01', 'borrower_01', 'borrower_01', '$2a$10$XD74JbPdoiNUuBbL6SxMeukzSczqmzTuS61eFRRzqn8kmmwTgf8ei', 'BORROWER', 'borrower_01'),
(3, 'borrower_02', 'borrower_02', '081234124', '$2a$10$OrKufHTrDueymxM2aoHWsu7vT5DXmbO8jNLlX10QmtkL4koS.6v2W', 'BORROWER', 'borrower_02'),
(14, 'borrower_03', 'borrower_03', '0812341234', '$2a$10$b5bF6ab9m9NiaX2//VK3KO8rIeEyAxDzCwbriMF5RiZdtSURlQzci', 'BORROWER', 'borrower_03'),
(15, 'borrower_04', 'borrower_04', '0812341234', '$2a$10$sDfg3No2GQ8UviUUNLXYs.IRN6Ik3VxOeBAG2MNPFVY046DNYk/CO', 'BORROWER', 'borrower_04'),
(16, 'Address Demo', 'borrower_demo', '0812341234', '$2a$10$TgoZ9hUOsEK80DJdNciCf.gowD1BCtiaDFLjWaOhqMnbh.Y.JyQyu', 'BORROWER', 'borrower_demo');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loansid` int(11) NOT NULL,
  `date_out` date NOT NULL,
  `due_data` date NOT NULL,
  `bookid` int(11) NOT NULL,
  `card_no` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loansid`, `date_out`, `due_data`, `bookid`, `card_no`, `status`) VALUES
(7, '2022-04-07', '2022-04-14', 2770535, 2, 'borrowed'),
(8, '2022-04-07', '2022-04-14', 2770535, 2, 'borrowed'),
(9, '2022-04-07', '2022-04-30', 4254943, 2, 'borrowed'),
(10, '2022-04-07', '2020-02-07', 4254943, 2, 'returned'),
(11, '2022-04-07', '2022-04-14', 4254943, 2, 'borrowed'),
(12, '2022-04-08', '2022-04-14', 47443316, 3, 'borrowed'),
(13, '2022-04-08', '2022-04-15', 988301169, 14, 'returned'),
(14, '2022-04-08', '2022-04-15', 988301169, 16, 'returned'),
(15, '2022-04-08', '2022-04-22', 988301170, 16, 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `address`, `name`, `phone`) VALUES
(1, '06721 Golf View Street', 'Frami, O\'Hara and Strosin', '+625685870754'),
(2, '8912 Coolidge Point', 'Zboncak, Runolfsdottir and Auer', '+622004125867'),
(3, '3766 Parkside Alley', 'Block and Sons', '+623814839134'),
(4, '3 Clyde Gallagher Point', 'Considine-Mertz', '+626299669308'),
(5, '20 Eagle Crest Trail', 'White, Will and Schultz', '+625807542839'),
(6, '845 Messerschmidt Street', 'Gottlieb Group', '+629786604170'),
(7, '7 Dennis Parkway', 'Rice-Wiegand', '+627837426523'),
(8, '40689 Bultman Court', 'Green and Sons', '+622743381633'),
(9, '42444 Katie Circle', 'Senger and Sons', '+625003605528'),
(10, '03 Londonderry Crossing', 'Treutel LLC', '+627604808423'),
(11, 'PublisherAddress', 'Gramedia Publishing', '0812341234'),
(13, 'Address PublisherNameDemo', 'Publisher_Demo', '0812341234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `FKfjixh2vym2cvfj3ufxj91jem7` (`author_id`),
  ADD KEY `FK1eujqvebj0cej9mcivv49grwi` (`publisher_id`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`card_no`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loansid`),
  ADD KEY `FK5d3dhfpvi2lxyqdk8mgyaxwgx` (`card_no`),
  ADD KEY `FKnv3gl9rmjninp5vq9ww50x9bw` (`bookid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988301171;

--
-- AUTO_INCREMENT for table `borrower`
--
ALTER TABLE `borrower`
  MODIFY `card_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK1eujqvebj0cej9mcivv49grwi` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisherid`),
  ADD CONSTRAINT `FKfjixh2vym2cvfj3ufxj91jem7` FOREIGN KEY (`author_id`) REFERENCES `authors` (`authorid`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `FK5d3dhfpvi2lxyqdk8mgyaxwgx` FOREIGN KEY (`card_no`) REFERENCES `borrower` (`card_no`),
  ADD CONSTRAINT `FKnv3gl9rmjninp5vq9ww50x9bw` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
