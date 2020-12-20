-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 05:37 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `is_active`) VALUES
(1, 'rahasia', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `voting_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `number` tinyint(3) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `voting_id`, `name`, `photo`, `number`, `is_active`) VALUES
(1, 1, 'Budi dan Ani', '5fdf39923b6bc.jpg', 1, 1),
(2, 1, 'Joni dan Andi', '5fdf3a14622bc.png', 2, 1),
(3, 2, 'Kaka dan Uji', '5fdf3aaf47f77.jpg', 1, 1),
(4, 2, 'Andi dan Anton', '5fdf3ad400069.jpg', 2, 1),
(5, 2, 'Lala dan Leli', '5fdf3af3ab08b.png', 3, 1),
(6, 3, 'Mari dan Mery', '5fdf3b3d5775a.jpg', 1, 1),
(7, 1, 'kandida 3333', '5fdf50026615e.png', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `election_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`election_id`, `candidate_id`, `voter_id`) VALUES
(1, 3, 1),
(2, 1, 1),
(3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `party_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `candidate_id`, `party_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 5, 2),
(6, 6, 3),
(7, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`party_id`, `name`, `photo`, `is_active`) VALUES
(1, 'Partai 1', '5fdf3b8258517.png', 1),
(2, 'Partai 2', '5fdf3b8d3a7a9.png', 1),
(3, 'Partai 3', '5fdf3b96c5152.png', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_election`
-- (See below for the actual view)
--
CREATE TABLE `view_election` (
`election_id` int(11)
,`voter_id` int(11)
,`name` varchar(255)
,`email` varchar(50)
,`candidate_id` int(11)
,`voting_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_member`
-- (See below for the actual view)
--
CREATE TABLE `view_member` (
`member_id` int(11)
,`party_id` int(11)
,`party_name` varchar(255)
,`party_photo` varchar(255)
,`candidate_id` int(11)
,`voting_id` int(11)
,`candidate_name` varchar(255)
,`candidate_photo` varchar(255)
,`number` tinyint(3)
,`is_active` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recapitulation_candidate`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_candidate` (
`election_id` int(11)
,`candidate_id` int(11)
,`candidate_name` varchar(255)
,`election_total` bigint(21)
,`voting_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `voter_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `send_status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`voter_id`, `name`, `email`, `password`, `send_status`, `is_active`) VALUES
(1, 's', 'rizkika.palindungan1@gmail.com', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 0, 1),
(2, '', 'rizkika.palindungan98@gmail.com', '', 0, 1),
(3, '', 'rizalramli993@gmail.com', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `voting_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`voting_id`, `admin_id`, `name`, `date`, `start`, `end`, `is_active`) VALUES
(1, 1, 'Pemilihan BEM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1),
(2, 1, 'Pemilihan BLM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1),
(3, 1, 'Pemilihan DLM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1);

-- --------------------------------------------------------

--
-- Structure for view `view_election`
--
DROP TABLE IF EXISTS `view_election`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_election`  AS  select `e`.`election_id` AS `election_id`,`vtr`.`voter_id` AS `voter_id`,`vtr`.`name` AS `name`,`vtr`.`email` AS `email`,`c`.`candidate_id` AS `candidate_id`,`vtg`.`voting_id` AS `voting_id` from (((`election` `e` join `voter` `vtr` on(`e`.`voter_id` = `vtr`.`voter_id`)) join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `voting` `vtg` on(`c`.`voting_id` = `vtg`.`voting_id`)) order by `e`.`election_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_member`
--
DROP TABLE IF EXISTS `view_member`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_member`  AS  select `m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,`p`.`name` AS `party_name`,`p`.`photo` AS `party_photo`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`c`.`name` AS `candidate_name`,`c`.`photo` AS `candidate_photo`,`c`.`number` AS `number`,`c`.`is_active` AS `is_active` from ((`member` `m` join `party` `p` on(`m`.`party_id` = `p`.`party_id`)) join `candidate` `c` on(`m`.`candidate_id` = `c`.`candidate_id`)) order by `c`.`number` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_candidate`
--
DROP TABLE IF EXISTS `view_recapitulation_candidate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_candidate`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`name` AS `candidate_name`,count(`c`.`candidate_id`) AS `election_total`,`v`.`voting_id` AS `voting_id` from ((`election` `e` join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `voting` `v` on(`c`.`voting_id` = `v`.`voting_id`)) group by `c`.`candidate_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`election_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`voter_id`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`voting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `voting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
