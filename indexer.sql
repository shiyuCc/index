-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-07-08 03:00:58
-- 服务器版本： 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `indexer`
--

-- --------------------------------------------------------

--
-- 表的结构 `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `files`
--

INSERT INTO `files` (`file_id`, `file_name`, `file_url`) VALUES
(1, '', 'http://cs465.free.fr/files/hw3b.html'),
(2, 'C:\\cs546\\fileBrowser\\sansong.html', ''),
(3, 'C:\\cs546\\fileBrowser\\taiwu.htm', ''),
(4, 'C:\\cs546\\fileBrowser\\yancheng\\33.html', ''),
(5, 'C:\\cs546\\index.html', ''),
(6, 'C:\\cs546\\lists.html', ''),
(7, 'C:\\cs546\\tables.html', '');

-- --------------------------------------------------------

--
-- 表的结构 `file_word`
--

CREATE TABLE IF NOT EXISTS `file_word` (
  `file_id` int(100) NOT NULL,
  `word_id` int(255) NOT NULL,
  `count` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `file_word`
--

INSERT INTO `file_word` (`file_id`, `word_id`, `count`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 8),
(1, 4, 1),
(1, 5, 1),
(1, 6, 7),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 6),
(1, 11, 1),
(1, 12, 3),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(1, 19, 2),
(1, 20, 1),
(1, 21, 1),
(1, 22, 1),
(1, 23, 1),
(1, 24, 2),
(1, 25, 1),
(1, 26, 5),
(1, 27, 1),
(1, 28, 1),
(1, 29, 1),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 1),
(1, 34, 1),
(1, 35, 1),
(1, 36, 1),
(1, 37, 1),
(1, 38, 1),
(1, 39, 1),
(1, 40, 1),
(1, 41, 1),
(1, 42, 1),
(1, 43, 1),
(1, 44, 1),
(1, 45, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 54, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 2),
(1, 58, 2),
(1, 59, 2),
(1, 60, 4),
(1, 61, 1),
(1, 62, 3),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 2),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 2),
(1, 74, 1),
(1, 75, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 8),
(1, 83, 1),
(1, 84, 1),
(1, 85, 3),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 1),
(1, 91, 1),
(1, 92, 1),
(1, 93, 1),
(1, 94, 1),
(1, 95, 1),
(1, 96, 1),
(1, 97, 1),
(1, 98, 1),
(1, 99, 1),
(1, 100, 1),
(1, 101, 2),
(1, 102, 1),
(1, 103, 1),
(1, 104, 1),
(1, 105, 1),
(1, 106, 1),
(1, 107, 1),
(1, 108, 1),
(1, 109, 1),
(1, 110, 1),
(1, 111, 1),
(1, 112, 1),
(1, 113, 1),
(1, 114, 15),
(1, 115, 1),
(1, 116, 2),
(1, 117, 2),
(1, 118, 7),
(1, 119, 1),
(1, 120, 1),
(1, 121, 2),
(1, 122, 1),
(1, 123, 1),
(1, 124, 1),
(1, 125, 1),
(1, 126, 1),
(1, 127, 1),
(1, 128, 1),
(1, 129, 1),
(1, 130, 1),
(1, 131, 1),
(1, 132, 1),
(1, 133, 1),
(1, 134, 3),
(1, 135, 1),
(1, 136, 1),
(1, 137, 1),
(1, 138, 1),
(1, 139, 1),
(1, 140, 3),
(1, 141, 1),
(2, 142, 1),
(2, 143, 1),
(2, 144, 1),
(3, 144, 1),
(3, 145, 1),
(3, 146, 1),
(3, 147, 1),
(3, 148, 1),
(4, 134, 1),
(4, 144, 1),
(4, 149, 1),
(4, 150, 1),
(5, 3, 1),
(5, 10, 4),
(5, 36, 1),
(5, 47, 1),
(5, 52, 1),
(5, 60, 3),
(5, 79, 3),
(5, 82, 1),
(5, 87, 2),
(5, 104, 1),
(5, 118, 3),
(5, 139, 1),
(5, 151, 2),
(5, 152, 1),
(5, 153, 1),
(5, 154, 1),
(5, 155, 1),
(5, 156, 1),
(5, 157, 1),
(5, 158, 1),
(5, 159, 3),
(5, 160, 1),
(5, 161, 1),
(5, 162, 4),
(5, 163, 1),
(5, 164, 1),
(5, 165, 1),
(5, 166, 1),
(5, 167, 1),
(5, 168, 1),
(5, 169, 1),
(5, 170, 1),
(5, 171, 1),
(5, 172, 1),
(5, 173, 1),
(5, 174, 1),
(5, 175, 1),
(5, 176, 1),
(5, 177, 1),
(5, 178, 1),
(5, 179, 1),
(5, 180, 1),
(6, 87, 2),
(6, 118, 2),
(6, 181, 1),
(6, 182, 1),
(6, 183, 1),
(6, 184, 1),
(6, 185, 1),
(6, 186, 1),
(6, 187, 1),
(6, 188, 1),
(6, 189, 1),
(6, 190, 1),
(7, 87, 2),
(7, 118, 2),
(7, 166, 1),
(7, 186, 1),
(7, 191, 1),
(7, 192, 1),
(7, 193, 1),
(7, 194, 1),
(7, 195, 1),
(7, 196, 1),
(7, 197, 1),
(7, 198, 1),
(7, 199, 1),
(7, 200, 1),
(7, 201, 1);

-- --------------------------------------------------------

--
-- 表的结构 `meta_info`
--

CREATE TABLE IF NOT EXISTS `meta_info` (
  `file_id` int(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `meta_info`
--

INSERT INTO `meta_info` (`file_id`, `type`, `content`) VALUES
(1, 'author', 'SGabarro'),
(1, 'description', 'This is a stupid page, but who cares'),
(1, 'generator', 'NOTEPAD'),
(1, 'keywords', 'test page, homework 3b, stupid, silly, PHP'),
(2, 'author', 'shiyu Chen'),
(2, 'keywords', 'test dir meta get'),
(5, 'author', 'CSYYY'),
(5, 'generator', 'sublime text2'),
(5, 'keywords', 'I am so hungry~~~~!!!!');

-- --------------------------------------------------------

--
-- 表的结构 `words`
--

CREATE TABLE IF NOT EXISTS `words` (
  `word_id` int(255) NOT NULL,
  `word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `words`
--

INSERT INTO `words` (`word_id`, `word`) VALUES
(1, '186k'),
(2, '18°'),
(3, 'a'),
(4, 'affection'),
(5, 'albert'),
(6, 'alicante'),
(7, 'all'),
(8, 'always'),
(9, 'an'),
(10, 'and'),
(11, 'another'),
(12, 'as'),
(13, 'aspects'),
(14, 'author'),
(15, 'average'),
(16, 'beaches'),
(17, 'beauty'),
(18, 'between'),
(19, 'by'),
(20, 'c'),
(21, 'can'),
(22, 'care'),
(23, 'centre'),
(24, 'choose'),
(25, 'cities'),
(26, 'city'),
(27, 'climate'),
(28, 'communication'),
(29, 'congress'),
(30, 'cuisine'),
(31, 'culture'),
(32, 'deeply'),
(33, 'do'),
(34, 'done'),
(35, 'doubt'),
(36, 'enjoy'),
(37, 'enrapturing'),
(38, 'exceptional'),
(39, 'exchange'),
(40, 'fair'),
(41, 'felt'),
(42, 'festivities'),
(43, 'find'),
(44, 'first'),
(45, 'for'),
(46, 'friendliest'),
(47, 'from'),
(48, 'fuster'),
(49, 'gabriel'),
(50, 'gardens'),
(51, 'gil'),
(52, 'go'),
(53, 'has'),
(54, 'help'),
(55, 'history'),
(56, 'homework'),
(57, 'if'),
(58, 'in'),
(59, 'information'),
(60, 'is'),
(61, 'it'),
(62, 'its'),
(63, 'joan'),
(64, 'juan'),
(65, 'just'),
(66, 'kind'),
(67, 'links'),
(68, 'live'),
(69, 'location'),
(70, 'looks'),
(71, 'love'),
(72, 'map'),
(73, 'mediterranean'),
(74, 'mildness'),
(75, 'mir&oacute'),
(76, 'monuments'),
(77, 'mountains'),
(78, 'museums'),
(79, 'my'),
(80, 'native'),
(81, 'nights'),
(82, 'of'),
(83, 'offices'),
(84, 'on'),
(85, 'one'),
(86, 'or'),
(87, 'page'),
(88, 'parks'),
(89, 'pervaded'),
(90, 'pierced'),
(91, 'playing'),
(92, 'premises'),
(93, 'privileged'),
(94, 'provides'),
(95, 'roams'),
(96, 'role'),
(97, 'round'),
(98, 's'),
(99, 'said'),
(100, 'savour'),
(101, 'sea'),
(102, 'seaport'),
(103, 'second'),
(104, 'shopping'),
(105, 'shown'),
(106, 'special'),
(107, 'sports'),
(108, 'stems'),
(109, 'streets'),
(110, 'take'),
(111, 'temperature'),
(112, 'test'),
(113, 'that'),
(114, 'the'),
(115, 'these'),
(116, 'this'),
(117, 'through'),
(118, 'to'),
(119, 'tourist'),
(120, 'trade'),
(121, 'trip'),
(122, 'two'),
(123, 'uninterruptedly'),
(124, 'valencian'),
(125, 'village'),
(126, 'virtual'),
(127, 'walk'),
(128, 'were'),
(129, 'what'),
(130, 'where'),
(131, 'wherever'),
(132, 'which'),
(133, 'will'),
(134, 'with'),
(135, 'without'),
(136, 'words'),
(137, 'would'),
(138, 'wrote'),
(139, 'year'),
(140, 'you'),
(141, '3'),
(142, 'bless'),
(143, 'god'),
(144, 'me'),
(145, 'give'),
(146, 'please'),
(147, 'tai'),
(148, 'wu'),
(149, 'good'),
(150, 'luck'),
(151, 'am'),
(152, 'came'),
(153, 'chen'),
(154, 'china'),
(155, 'computer'),
(156, 'd'),
(157, 'different'),
(158, 'favorite'),
(159, 'food'),
(160, 'free'),
(161, 'here'),
(162, 'i'),
(163, 'introduce'),
(164, 'last'),
(165, 'like'),
(166, 'lists'),
(167, 'major'),
(168, 'myself'),
(169, 'name'),
(170, 'now'),
(171, 'science'),
(172, 'seafood'),
(173, 'semester'),
(174, 'shiyu'),
(175, 'spicy'),
(176, 'student'),
(177, 'tables'),
(178, 'third'),
(179, 'travelling'),
(180, 'when'),
(181, 'beef'),
(182, 'broccoli'),
(183, 'cabbage'),
(184, 'chicken'),
(185, 'fish'),
(186, 'index'),
(187, 'lettuce'),
(188, 'meat'),
(189, 'table'),
(190, 'vegetable'),
(191, 'angeles'),
(192, 'boston'),
(193, 'dc'),
(194, 'east'),
(195, 'francisco'),
(196, 'los'),
(197, 'new'),
(198, 'san'),
(199, 'washington'),
(200, 'west'),
(201, 'york');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_word`
--
ALTER TABLE `file_word`
  ADD PRIMARY KEY (`file_id`,`word_id`);

--
-- Indexes for table `meta_info`
--
ALTER TABLE `meta_info`
  ADD PRIMARY KEY (`file_id`,`type`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`word_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
