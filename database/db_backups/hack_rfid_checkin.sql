-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2012 at 11:49 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hack_rfid_checkin`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE IF NOT EXISTS `app_users` (
  `FB_ID` varchar(100) NOT NULL,
  `accesToken` varchar(200) NOT NULL,
  `LastCheckin` datetime DEFAULT NULL,
  PRIMARY KEY (`FB_ID`),
  UNIQUE KEY `acces token_UNIQUE` (`accesToken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`FB_ID`, `accesToken`, `LastCheckin`) VALUES
('1236128', 'AAACOahlvPXUBAGGZAHJkJj65u0DZBLepcTBef73iO2GX6zM2WXIm3fw3GOCM4j3XcQiRoyr0KnZCqn2XPp7h5UOEQubOhoZD', NULL),
('531587817', 'AAACOahlvPXUBAH1ina47HSv4i3KEmA2FDTobRNcTLh4ZCpG6blqtSJvBb3Qo8xiP41lLOjEixEreKZCssu36ybv8PCQcgZD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `characteristic`
--

CREATE TABLE IF NOT EXISTS `characteristic` (
  `CheckInID` int(11) NOT NULL,
  `Characteristic` varchar(250) NOT NULL,
  `Category` varchar(45) NOT NULL,
  PRIMARY KEY (`CheckInID`,`Characteristic`),
  KEY `fk_CheckIn` (`CheckInID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characteristic`
--

INSERT INTO `characteristic` (`CheckInID`, `Characteristic`, `Category`) VALUES
(55, 'Age', '20'),
(54, 'Age', '20'),
(54, 'Occupation', 'Student'),
(54, 'TV Show', 'How I Met Your Mother'),
(52, 'testing', 'Visit Reason'),
(53, 'Meeting new people', 'Visit Reason'),
(51, 'Peter is fat', 'Help'),
(48, 'Who knows some good Flash keyboard plugins?', 'Help'),
(49, 'Test ', 'Help'),
(50, 'CALVIN IS A BOGANNN!!!!', 'Help'),
(47, 'test checkin', 'Visit Reason'),
(48, 'Would a virtual keyboard be better as a method to answer questions?', 'Help'),
(46, 'Meetmee API', 'Visit Reason'),
(45, 'mark b and mark j', 'Visit Reason'),
(32, '2 Player TEAMS EVENT this SUNDAY at Swan Districts - Steel Blue Oval %5 per person Buy In Rego 12pm Start 1pm C U There! reply stop to opt out', 'Help'),
(33, 'JAVA, PHP, C#, JavaScript, C++', 'Visit Reason'),
(44, 'mark b and mark j meeting', 'Visit Reason'),
(43, 'Urban Informatics, interaction design, arduino', 'Visit Reason'),
(42, 'I am here', 'Visit Reason'),
(39, 'APL Free Poker Tournament Every Wednesday  Fuse Bar Hotel Northbridge Cnr Lake & Brisbane St 6PM Rego B There! reply stop to opt out', 'Help'),
(41, 'test test mark', 'Visit Reason'),
(55, 'Occupation', 'Student'),
(55, 'TV Show', 'How I Met Your Mother'),
(56, 'Age', '20'),
(56, 'Occupation', 'Student'),
(56, 'TV Show', 'How I Met Your Mother'),
(57, 'Age', '20'),
(57, 'Occupation', 'Student'),
(57, 'TV Show', 'How I Met Your Mother'),
(58, '20', 'Age'),
(58, 'Software Engineer', 'Occupation'),
(59, 'How I Met Your Mother', 'TV Show'),
(59, 'Friends', 'TV Show'),
(59, 'Blink 182', 'Band'),
(60, 'Test', 'Help'),
(61, '20', 'Age'),
(61, 'Software Engineer', 'Occupation'),
(62, 'How I Met Your Mother', 'TV Show'),
(62, 'Friends', 'TV Show'),
(62, 'Blink 182', 'Band'),
(63, '20', 'Age'),
(63, 'Software Engineer', 'Occupation'),
(64, 'How I Met Your Mother', 'TV Show'),
(64, 'Friends', 'TV Show'),
(64, 'Blink 182', 'Band'),
(65, '20', 'Age'),
(65, 'Software Engineer', 'Occupation'),
(66, 'How I Met Your Mother', 'TV Show'),
(66, 'Friends', 'TV Show'),
(66, 'Blink 182', 'Band'),
(67, '20', 'Age'),
(67, 'Software Engineer', 'Occupation'),
(68, 'How I Met Your Mother', 'TV Show'),
(68, 'Friends', 'TV Show'),
(68, 'Blink 182', 'Band'),
(69, '20', 'Age'),
(69, 'Software Engineer', 'Occupation'),
(70, 'How I Met Your Mother', 'TV Show'),
(70, 'Friends', 'TV Show'),
(70, 'Blink 182', 'Band'),
(71, '20', 'Age'),
(71, 'Software Engineer', 'Occupation'),
(72, 'How I Met Your Mother', 'TV Show'),
(72, 'Friends', 'TV Show'),
(72, 'Blink 182', 'Band'),
(73, 'Cricket', 'Interests'),
(73, 'Mark', 'Name'),
(73, 'Lots', 'Share'),
(73, 'Noh', 'Doing'),
(73, 'nah', 'Anything'),
(74, 'Cricket', 'Interests'),
(74, 'Mark Jones', 'Name'),
(74, 'PHP Knowledge', 'Share'),
(74, 'TOR', 'Doing'),
(74, 'Uni', 'Anything'),
(75, 'Hanging', 'Interests'),
(75, 'Mark Jones', 'Name'),
(75, 'Checkin System Knowledge', 'Share'),
(75, 'Meeting with Mark', 'Doing'),
(75, 'Blah', 'Anything'),
(76, 'Hanging', 'Interests'),
(76, 'Mark Jones', 'Name'),
(76, 'asdfasdfasdf', 'Share'),
(76, 'asdfadsf', 'Doing'),
(76, 'adsfadsfaf', 'Anything'),
(77, 'idontknow', 'StatusMessage'),
(78, 'idontknow', 'StatusMessage'),
(81, 'ThisismyfirstcheckinthroughProcessing', 'StatusMessage'),
(82, 'This', 'StatusMessage'),
(83, 'This is my first checkin through Processing', 'StatusMessage'),
(84, 'This is my first checkin through Processing v2', 'StatusMessage'),
(85, 'This is my first checkin through Processing v2', 'statusmessage'),
(86, 'This is my first checkin through Processing v2', 'statusmessage'),
(89, 'idontknow', 'statusmessage'),
(90, 'idontknow', 'statusmessage'),
(91, 'This is my first checkin through Processing v2', 'statusmessage'),
(92, 'This is my first checkin through Processing v2', 'statusmessage'),
(93, 'This is my first checkin through Processing v2', 'statusmessage'),
(94, 'This is my first checkin through Processing v2', 'statusmessage'),
(93, 'I have checked in at window bay 2', 'statusmessage'),
(95, 'I have checked in at window bay 2', 'statusmessage'),
(96, 'I have checked in at window bay 2', 'statusmessage'),
(97, 'I have checked in at window bay 3', 'statusmessage'),
(98, 'I have checked in at window bay 3', 'statusmessage'),
(99, 'I have checked in at window bay 4', 'statusmessage'),
(100, 'Alessandro is at Windowbay 3', 'statusmessage'),
(102, 'Alessandro is at Windowbay 3', 'statusmessage'),
(102, 'I am in window bay 3', 'statusmessage'),
(102, 'I am in window bay 2', 'statusmessage'),
(101, 'I am in window bay 2', 'statusmessage'),
(101, 'I am in window bay 1', 'statusmessage'),
(101, 'I am in window bay 10000', 'statusmessage'),
(103, 'I am in window bay 10000', 'statusmessage'),
(104, 'I am in window bay 2222', 'statusmessage'),
(105, 'I am in window bay 1212', 'statusmessage'),
(106, 'I am in window bay 1213', 'statusmessage'),
(107, 'I am in window bay 1213', 'statusmessage'),
(108, 'I am in window bay 1213', 'statusmessage'),
(109, 'I am in window bay 1213', 'statusmessage'),
(110, 'I am in window bay 1213', 'statusmessage'),
(111, 'I am in window bay 1213', 'statusmessage'),
(112, 'I am in window bay 1213', 'statusmessage'),
(113, 'I am in window bay 1213', 'statusmessage'),
(114, 'I am in window bay 1213', 'statusmessage'),
(115, 'I am in window bay 1213', 'statusmessage'),
(115, 'kliytvtq', 'statusmessage'),
(115, '234redsx', 'statusmessage'),
(115, 'gh', 'statusmessage'),
(115, 'uybnm', 'statusmessage'),
(115, 'werty', 'statusmessage'),
(116, 'hgfd', 'statusmessage'),
(117, 'frtyu', 'statusmessage'),
(118, 'ooooooo', 'statusmessage'),
(119, 'iiiiiiiii', 'statusmessage'),
(120, 'tttttttt', 'statusmessage'),
(121, 'uuuuuu', 'statusmessage'),
(122, 'anynomousboyyyyyyy', 'statusmessage'),
(123, 'uytg', 'statusmessage'),
(124, 'yyyyyyy', 'statusmessage'),
(125, '444444', 'statusmessage'),
(115, 'lllllll', 'statusmessage'),
(115, 'xsaqqqqqqqqwe', 'statusmessage'),
(115, 'zzssdd  :) hello!!!!!', 'statusmessage'),
(124, 'aaaaaaasssssssss', 'statusmessage'),
(126, 'wwwwwwwww', 'statusmessage'),
(127, 'rrrrrrrrrr', 'statusmessage'),
(128, 'wesdxc', 'statusmessage'),
(129, 'wertyiop', 'statusmessage'),
(130, 'zzzzzzzz', 'statusmessage'),
(131, 'zzzzzzzxxxxxccccc', 'statusmessage'),
(132, 'max is checked in:)', 'statusmessage');

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE IF NOT EXISTS `check_in` (
  `CheckInID` int(11) NOT NULL AUTO_INCREMENT,
  `MainLocation` varchar(255) NOT NULL,
  `SubLocation` varchar(45) DEFAULT NULL,
  `Check_In_Time` datetime NOT NULL,
  `Check_Out_Time` datetime DEFAULT NULL,
  `Method` varchar(45) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `DontDisturb` bit(1) DEFAULT b'0',
  KEY `fk_CheckIn` (`CheckInID`),
  KEY `fk_Tag` (`CheckInID`),
  KEY `fk_Person` (`PersonID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `check_in`
--

INSERT INTO `check_in` (`CheckInID`, `MainLocation`, `SubLocation`, `Check_In_Time`, `Check_Out_Time`, `Method`, `PersonID`, `DontDisturb`) VALUES
(45, '', 'Bay 1', '2011-10-16 10:29:06', '2011-10-16 10:42:58', 'Mobile Website Checkin', 34, b'0'),
(32, '', NULL, '2011-08-27 12:02:25', NULL, 'SMS', 25, b'0'),
(33, '', 'Bay 1', '2011-09-21 16:05:01', '2011-09-21 19:17:47', 'Mobile Website Checkin', 26, b'0'),
(44, '', 'Bay 1', '2011-10-16 10:24:10', '2011-10-16 10:28:42', 'Mobile Website Checkin', 33, b'0'),
(43, '', 'Bay 7', '2011-10-14 14:48:27', NULL, 'Mobile Website Checkin', 32, b'0'),
(42, '', 'Bay 2', '2011-10-07 18:07:30', NULL, 'Mobile Website Checkin', 31, b'0'),
(39, '', NULL, '2011-10-05 14:06:16', NULL, 'SMS', 25, b'0'),
(41, '', 'Bay 4', '2011-10-07 17:26:03', '2011-10-07 17:26:57', 'Mobile Website Checkin', 30, b'0'),
(46, '', 'Bay 1', '2011-10-16 10:40:15', '2011-10-16 12:19:07', 'Mobile Website Checkin', 35, b'0'),
(47, '', 'Bay 5', '2011-10-16 10:43:29', NULL, 'Mobile Website Checkin', 36, b'0'),
(48, '', NULL, '2011-10-16 11:32:19', NULL, 'SMS', 24, b'0'),
(49, '', NULL, '2011-10-28 17:07:18', NULL, 'SMS', 37, b'0'),
(50, '', NULL, '2011-11-02 13:24:45', NULL, 'SMS', 38, b'0'),
(51, '', NULL, '2011-11-02 13:24:47', NULL, 'SMS', 39, b'0'),
(63, '', NULL, '2011-11-14 11:32:19', NULL, 'Swipe Card', 43, b'0'),
(60, '', NULL, '2011-11-14 21:35:47', NULL, 'Mobile Website Checkin', 24, b'0'),
(61, '', NULL, '2011-11-14 11:32:19', NULL, 'Swipe Card', 43, b'0'),
(80, '', NULL, '2012-01-23 10:25:12', NULL, 'RFID', 55, b'0'),
(79, '', NULL, '2012-01-23 10:25:08', NULL, 'RFID', 55, b'0'),
(78, '', NULL, '2012-01-23 10:24:56', NULL, 'RFID', 55, b'0'),
(77, '', NULL, '2012-01-23 10:07:11', NULL, 'RFID', 55, b'0'),
(76, '', NULL, '2012-01-20 15:23:34', NULL, 'Swipe Card', 54, b'0'),
(72, '', NULL, '2011-12-09 09:05:00', NULL, 'Facebook', 44, b'0'),
(75, '', NULL, '2012-01-19 17:26:43', NULL, 'Swipe Card', 54, b'0'),
(71, '', NULL, '2011-12-09 09:17:19', '2011-12-09 09:18:56', 'Swipe Card', 43, b'0'),
(81, '', NULL, '2012-01-23 10:28:32', NULL, 'RFID', 56, b'0'),
(82, '', NULL, '2012-01-23 10:29:02', NULL, 'RFID', 55, b'0'),
(83, '', NULL, '2012-01-23 10:37:34', NULL, 'RFID', 56, b'0'),
(84, '', NULL, '2012-01-23 10:40:04', NULL, 'RFID', 56, b'0'),
(85, '', NULL, '2012-01-23 10:42:27', NULL, 'RFID', 56, b'1'),
(86, '', NULL, '2012-01-23 10:42:55', NULL, 'RFID', 55, b'0'),
(87, '', NULL, '2012-01-23 10:43:35', NULL, 'RFID', 55, b'0'),
(88, '', NULL, '2012-01-24 09:00:05', NULL, 'RFID', 55, b'0'),
(89, '', NULL, '2012-01-24 09:01:44', NULL, 'RFID', 55, b'0'),
(90, '', NULL, '2012-01-24 09:02:24', NULL, 'RFID', 55, b'0'),
(91, '', NULL, '2012-01-24 09:03:26', NULL, 'RFID', 56, b'1'),
(92, '', 'windowbay1', '2012-01-24 09:05:12', NULL, 'RFID', 56, b'1'),
(93, '', 'windowbay1', '2012-01-25 09:54:32', NULL, 'RFID', 56, b'1'),
(94, '', 'windowbay1', '2012-01-25 09:54:37', NULL, 'RFID', 56, b'1'),
(95, '', 'windowbay2', '2012-01-25 15:20:48', NULL, 'RFID', 57, b'1'),
(96, '', 'windowbay2', '2012-01-25 15:21:38', NULL, 'RFID', 57, b'1'),
(97, '', 'windowbay2', '2012-01-25 15:22:21', NULL, 'RFID', 57, b'1'),
(98, '', 'windowbay6', '2012-01-25 15:22:54', NULL, 'RFID', 57, b'1'),
(99, '', 'windowbay4', '2012-01-25 15:26:15', NULL, 'RFID', 57, b'1'),
(100, '', 'windowbay3', '2012-01-25 15:27:54', NULL, 'RFID', 57, b'1'),
(101, '', NULL, '2012-01-26 09:29:57', NULL, 'RFID', 55, b'0'),
(102, '', 'windowbay3', '2012-01-26 14:04:53', NULL, 'RFID', 57, b'1'),
(103, '', 'windowbay1', '2012-01-26 15:50:59', NULL, 'RFID', 58, b'0'),
(104, '', 'windowbay1', '2012-01-26 15:51:43', NULL, 'RFID', 59, b'0'),
(105, '', 'windowbay1', '2012-01-26 15:55:16', NULL, 'RFID', 60, b'0'),
(106, '', 'windowbay1', '2012-01-26 15:55:48', NULL, 'RFID', 60, b'0'),
(107, '', 'windowbay1', '2012-01-26 15:56:13', NULL, 'RFID', 60, b'0'),
(108, '', 'nowhere', '2012-01-26 16:33:16', NULL, 'RFID', 60, b'0'),
(109, '', 'auditorium', '2012-01-26 16:33:31', NULL, 'RFID', 60, b'0'),
(110, '', 'lab2', '2012-01-26 16:33:59', NULL, 'RFID', 60, b'0'),
(111, '', 'windowbay1', '2012-01-26 16:39:14', NULL, 'RFID', 60, b'0'),
(112, '', 'windowbay3', '2012-01-27 16:24:17', NULL, 'RFID', 60, b'0'),
(113, '', 'windowbay1', '2012-01-27 16:24:30', NULL, 'RFID', 60, b'0'),
(114, '', 'auditorium', '2012-01-30 12:06:04', NULL, 'RFID', 60, b'0'),
(115, '', 'lab2', '2012-01-31 08:34:05', NULL, 'RFID', 60, b'0'),
(116, '', 'windowbay5', '2012-01-31 14:33:43', NULL, 'RFID', 61, b'0'),
(117, '', 'windowbay6', '2012-01-31 14:34:35', NULL, 'RFID', 61, b'0'),
(118, '', 'windowbay5', '2012-01-31 14:35:11', NULL, 'RFID', 61, b'0'),
(119, '', 'windowbay6', '2012-01-31 14:38:27', NULL, 'RFID', 61, b'0'),
(120, '', 'nowhere', '2012-01-31 14:39:07', NULL, 'RFID', 61, b'0'),
(121, '', 'coffeekiosk', '2012-01-31 14:39:44', NULL, 'RFID', 62, b'0'),
(122, '', 'windowbay5', '2012-01-31 14:41:34', NULL, 'RFID', 63, b'0'),
(123, '', 'windowbay5', '2012-01-31 14:41:57', NULL, 'RFID', 63, b'0'),
(124, '', 'windowbay5', '2012-01-31 14:42:35', NULL, 'RFID', 64, b'0'),
(125, '', 'windowbay4', '2012-01-31 14:46:43', NULL, 'RFID', 64, b'0'),
(126, '', 'windowbay7', '2012-01-31 16:44:42', NULL, 'RFID', 65, b'0'),
(127, '', 'windowbay5', '2012-01-31 16:45:07', NULL, 'RFID', 65, b'0'),
(128, '', 'auditorium', '2012-01-31 17:03:36', NULL, 'RFID', 66, b'0'),
(129, '', 'windowbay5', '2012-01-31 17:04:46', NULL, 'RFID', 66, b'0'),
(130, '', 'windowbay5', '2012-01-31 17:05:21', NULL, 'RFID', 67, b'0'),
(131, '', 'lab1', '2012-01-31 17:06:04', NULL, 'RFID', 66, b'0'),
(132, '', 'windowbay10', '2012-01-31 17:36:54', NULL, 'RFID', 68, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `edge_users`
--

CREATE TABLE IF NOT EXISTS `edge_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `edge_users`
--

INSERT INTO `edge_users` (`ID`, `username`, `password`, `firstname`, `lastname`, `email`) VALUES
(2, 'markbil', 'Mark', 'Mark', 'Bilandzic', 'mabil@web.de'),
(8, 'Mark', 'Mark', 'test', 'test', ''),
(24, 'Monkey', 'Pink', 'Magic', 'Monnkkey', 'qwery@loop.com'),
(28, 'Jim', 'frodo', 'Jeremiah', 'Down', 'www@sss.com'),
(29, 'Hal', 'dave', 'Hal', '2000', 'hal@2001.space.com'),
(30, 'DirkGently', 'douglas', 'Dirk', 'Gently', ''),
(31, 'LadyGaga', 'pokerface', 'Lady', 'Gaga', 'crazy@gaga.com'),
(32, 'darkknight', 'batman', '', '', ''),
(33, 'Kendone', 'colours', '', '', ''),
(34, 'tiger', 'eyeofthetiger', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `expertise_table`
--

CREATE TABLE IF NOT EXISTS `expertise_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `edge_users_id` int(11) NOT NULL,
  `expertise` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `expertise_table`
--

INSERT INTO `expertise_table` (`ID`, `edge_users_id`, `expertise`) VALUES
(1, 24, 'basketball'),
(2, 24, 'criquet'),
(3, 24, 'criquet'),
(4, 28, 'soccer'),
(5, 28, 'networking'),
(6, 28, 'shopping'),
(7, 24, 'talking to people'),
(8, 28, 'Sleeping'),
(9, 28, 'Pink Hair');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Feedback` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `identification_media`
--

CREATE TABLE IF NOT EXISTS `identification_media` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThirdPartyID` varchar(45) NOT NULL,
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `identification_media`
--

INSERT INTO `identification_media` (`ID`, `ThirdPartyID`, `Type`) VALUES
(1, '55555', 1),
(3, '22222222', 1),
(4, '11111', 1),
(5, '2222222111111', 1),
(6, '55555', 1),
(7, '777777777', 1),
(8, '777777777', 1),
(9, '333333333', 1),
(10, '333333333', 1),
(11, '333333333', 1),
(12, '333333333', 1),
(13, '333333333', 1),
(14, '333333333', 1),
(15, '77777777777', 1),
(16, '99999999999', 1),
(17, '99999999999', 1),
(18, '99999999999', 1),
(19, '99999999999', 1),
(20, '2020202012', 1),
(21, '2020202012', 1),
(22, '2020202012', 1),
(23, '2020202012', 1),
(24, '2020202012', 1),
(25, '2020202012', 1),
(26, '2020202012', 1),
(27, '213123122', 1),
(28, '312435325', 1),
(29, '05408543', 1),
(31, '2222234555', 1),
(32, '34348', 1),
(33, '123456', 1),
(34, '2001', 1),
(35, '05408544', 1),
(36, '05408545', 1),
(37, '05408546', 1),
(38, '05408547', 1),
(39, '05408548', 1);

-- --------------------------------------------------------

--
-- Table structure for table `identification_media_type`
--

CREATE TABLE IF NOT EXISTS `identification_media_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `identification_media_type`
--

INSERT INTO `identification_media_type` (`ID`, `Name`, `Description`) VALUES
(1, 'RFID', 'Radio Frequency Identification Tag');

-- --------------------------------------------------------

--
-- Table structure for table `interest_table`
--

CREATE TABLE IF NOT EXISTS `interest_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `edge_users_id` int(11) NOT NULL,
  `interest` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `interest_table`
--

INSERT INTO `interest_table` (`ID`, `edge_users_id`, `interest`) VALUES
(1, 24, 'Arduino'),
(2, 24, 'Graphic Design'),
(3, 24, 'Photography'),
(4, 24, 'Pottery'),
(5, 24, 'Android Development'),
(6, 24, 'Apple'),
(7, 28, 'Arduino'),
(8, 28, 'iphone development'),
(9, 28, 'Photography'),
(10, 28, 'User Interface Design'),
(11, 28, 'Drinking'),
(12, 24, 'Eating'),
(13, 0, 'Arduino'),
(14, 0, 'Interaction Design'),
(15, 0, 'Photography'),
(16, 0, 'Dental Technology'),
(17, 0, 'Dental Technology'),
(18, 0, 'iphone development'),
(19, 0, 'Photography'),
(20, 0, 'Brasilian cooking'),
(21, 0, 'Italian cooking'),
(22, 0, 'Japanese cooking'),
(23, 0, 'Multitouch'),
(24, 0, 'cooking'),
(25, 0, 'croatian radio'),
(26, 0, 'jogging'),
(27, 0, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `edge_users_id` int(11) NOT NULL,
  `identification_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`ID`, `edge_users_id`, `identification_id`) VALUES
(1, 24, 29),
(2, 25, 30),
(3, 26, 31),
(4, 27, 32),
(5, 28, 33),
(6, 29, 34),
(7, 30, 35),
(8, 31, 36),
(9, 32, 37),
(10, 33, 38),
(11, 34, 39);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`ID`, `Name`, `Description`) VALUES
(1, 'RFID Checkin System', 'Develop a system whereby Edge Users can check into the centre using an RFID tag.'),
(2, 'I Do Not Like It', 'I want that one that one and that One'),
(3, 'Mouse Trap', 'Reinvent a mouse trap\r\nMonster Trucks - yeah Monster Trucks'),
(5, 'Smegel', 'A floating blue line'),
(6, 'Lily', 'Eats Cheese\r\nSings and dances'),
(7, 'Angus', 'Eating hamburgers\r\nTraining Blobs'),
(8, 'The Big Bazooka', 'A giant gun that likes to blow up and automatically fires'),
(9, 'Fly in the ointment', 'Take a fly for a ride in the Big Red Car with headgear'),
(10, 'Electric Glasses', 'Create glasses that can  turn on and off'),
(11, 'Balloon Fountain', 'Create a fountain made out of ballons'),
(12, 'Jumping Beans', 'Have a bean jump on a flea'),
(13, 'Bubbles', 'Bouncing Bubbles'),
(14, '3D Printer', 'Make a 3D Printer');

-- --------------------------------------------------------

--
-- Table structure for table `projects_edge_users`
--

CREATE TABLE IF NOT EXISTS `projects_edge_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `edge_users_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `projects_edge_users`
--

INSERT INTO `projects_edge_users` (`ID`, `edge_users_id`, `project_id`) VALUES
(1, 24, 2),
(2, 28, 2),
(3, 24, 3),
(4, 2, 24),
(7, 2, 7),
(16, 29, 7),
(17, 8, 7),
(18, 8, 3),
(20, 29, 2),
(21, 2, 1),
(22, 29, 1),
(23, 30, 2),
(24, 2, 9),
(25, 24, 9),
(29, 8, 10),
(30, 24, 10),
(31, 28, 7),
(32, 30, 7),
(33, 28, 10),
(34, 24, 11),
(36, 31, 11),
(37, 8, 11),
(41, 24, 12),
(42, 28, 12),
(43, 29, 12),
(45, 30, 6),
(46, 28, 6),
(47, 31, 6),
(48, 24, 13),
(49, 30, 13);

-- --------------------------------------------------------

--
-- Table structure for table `questions_table`
--

CREATE TABLE IF NOT EXISTS `questions_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `edge_users_id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `questions_table`
--

INSERT INTO `questions_table` (`ID`, `edge_users_id`, `question`) VALUES
(1, 24, 'who can hellp me with photoshp'),
(2, 28, 'who can help me with android???'),
(3, 24, 'who can help me with ipho'),
(4, 28, 'Joking'),
(5, 24, 'Sci Fi Movies'),
(6, 28, 'Soldering');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
