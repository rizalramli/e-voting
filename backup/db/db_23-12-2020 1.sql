-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2020 at 06:06 PM
-- Server version: 5.7.26-29-log
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbe68tbecdmtuw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` enum('Admin','KPU','Saksi') NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `role`, `is_active`) VALUES
(1, 'admin', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 'Admin', 1),
(2, 'kpu', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 'KPU', 1),
(3, 'saksi', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 'Saksi', 1);

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
(1, 1, 'Joshua Bonar - Muhammad Rizqullah Dany', '5fe01a540edcd.jpg', 1, 1),
(2, 1, 'Ramma Setyasuryantoro - Bagus Satya Wardana', '5fe01a8b633a8.png', 2, 1),
(3, 2, 'Donald Hamonangan Siregar', '5fe01c95969af.png', 1, 1),
(4, 2, 'Apriska Widiangela', '5fe01cad83f6c.png', 2, 1),
(5, 2, 'Muhamad Ridho', '5fe01ce02570c.png', 3, 1),
(6, 2, 'Fitrillah I. Hi. Subur', '5fe01d01906e0.png', 4, 1),
(7, 2, 'Fernanda Nadhif', '5fe01d9982a80.png', 1, 1),
(8, 2, 'Muhammad Ilham Mahrudin Zam-Zam', '5fe01dc15371b.png', 2, 1),
(9, 2, 'Avany Mahmudah', '5fe01dedf2c86.png', 3, 1),
(10, 2, 'Mario Febrianto Sukoto', '5fe01e006968b.png', 4, 1),
(11, 2, 'Rahadian Bino Wardanu', '5fe01e153ecae.png', 5, 1),
(12, 2, 'Anggito Bagas_Abimanyu', '5fe01e330740a.png', 6, 1),
(13, 2, 'Muhammad Chaikal Ichwanul Muslim', '5fe01e538e825.png', 7, 1),
(14, 2, 'Ali Mannagalli', '5fe01f2932131.png', 1, 0),
(15, 2, 'Deddy Kusuma Wardana', '5fe01f54de065.png', 1, 1),
(16, 2, 'Naufandiary Bachtiar Ramzy', '5fe01f641cf83.png', 2, 1),
(17, 2, 'Soegih Rasyad Sriwidyandiyo', '5fe01f8179526.png', 3, 1),
(18, 2, 'Eduardus Robert Arminto', '5fe01ffc025a6.png', 1, 1),
(19, 2, 'Azzahra Mazaya Khalisah', '5fe0200f883b9.png', 2, 1),
(20, 2, 'Fawwaz Muhammad Rafi', '5fe0203628838.png', 3, 1),
(21, 3, 'Wahyu Waullilamri Kurniawan', '5fe020b4b57ef.png', 1, 1),
(22, 3, 'Samuel Yobel Christian', '5fe020c7d63d9.png', 2, 1),
(23, 3, 'Bima Satriojati', '5fe0212a0495e.png', 1, 1),
(24, 3, 'Rahardian Satya Mandala Putra', '5fe0213a24e15.png', 2, 1),
(25, 3, 'Gunawan', '5fe0219128087.png', 1, 1),
(26, 2, 'Ali Mannagalli', '5fe1e6b903343.png', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `election_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `election_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`election_id`, `candidate_id`, `voter_id`, `attachment`, `create_at`, `election_status`) VALUES
(19, 3, 2, '5fe1def71afce.jpg', '2020-12-22 12:38:47', 1),
(20, 22, 2, '5fe1def71afce.jpg', '2020-12-22 12:39:04', 1),
(21, 1, 2, '5fe1def71afce.jpg', '2020-12-22 12:39:10', 1),
(22, 1, 3, '5fe1f1c5bd515.jpeg', '2020-12-22 13:17:14', 1),
(23, 3, 3, '5fe1f1c5bd515.jpeg', '2020-12-22 13:17:46', 1),
(24, 21, 3, '5fe1f1c5bd515.jpeg', '2020-12-22 13:18:10', 1),
(31, 21, 1, '5fe20805b0ce6.png', '2020-12-22 21:52:06', 1);

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
(2, 1, 3),
(3, 1, 4),
(4, 2, 2),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(8, 6, 1),
(9, 7, 2),
(10, 8, 2),
(11, 9, 2),
(12, 10, 2),
(13, 11, 2),
(14, 12, 2),
(15, 13, 2),
(16, 14, 3),
(20, 18, 4),
(21, 19, 4),
(22, 20, 4),
(23, 21, 1),
(24, 22, 1),
(25, 23, 2),
(26, 24, 2),
(27, 25, 3),
(28, 15, 3),
(29, 16, 3),
(30, 17, 3),
(31, 26, 3);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`party_id`, `name`, `photo`, `is_active`) VALUES
(1, 'Partai Demokrasi Antar Mahasiswa', '5fe0198c613be.jpg', 1),
(2, 'Partai Kesatuan Aspirasi Mahasiswa', '5fe019b272e5e.jpg', 1),
(3, 'Partai Kebangkitan Pergerakan Mahasiswa', '5fe019cb7e8d3.jpg', 1),
(4, 'Partai Muda Bersatu', '5fe019fe76b04.jpg', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_election`
-- (See below for the actual view)
--
CREATE TABLE `view_election` (
`election_id` int(11)
,`attachment` varchar(255)
,`create_at` timestamp
,`election_status` tinyint(1)
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
-- Stand-in structure for view `view_recapitulation_candidate_sah`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_candidate_sah` (
`election_id` int(11)
,`candidate_id` int(11)
,`election_sah` bigint(21)
,`voting_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recapitulation_candidate_tidak_sah`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_candidate_tidak_sah` (
`election_id` int(11)
,`candidate_id` int(11)
,`election_tidak_sah` bigint(21)
,`voting_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recapitulation_party`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_party` (
`election_id` int(11)
,`candidate_id` int(11)
,`voting_id` int(11)
,`member_id` int(11)
,`party_id` int(11)
,`party_name` varchar(255)
,`party_photo` varchar(255)
,`election_total` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recapitulation_party_sah`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_party_sah` (
`election_id` int(11)
,`candidate_id` int(11)
,`voting_id` int(11)
,`member_id` int(11)
,`party_id` int(11)
,`election_sah` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recapitulation_party_tidak_sah`
-- (See below for the actual view)
--
CREATE TABLE `view_recapitulation_party_tidak_sah` (
`election_id` int(11)
,`candidate_id` int(11)
,`voting_id` int(11)
,`member_id` int(11)
,`party_id` int(11)
,`election_tidak_sah` bigint(21)
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
  `attachment` varchar(255) NOT NULL,
  `send_status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`voter_id`, `name`, `email`, `password`, `attachment`, `send_status`, `is_active`) VALUES
(1, 'rizkika', 'rizkika.palindungan1@gmail.com', '$2y$10$ekZWHWDfYTyM0BYV.MKIO.9mmfkcZi5i5yZ3yFVqHaDkmnQxAIlfa', '5fe20805b0ce6.png', 1, 1),
(2, 'Gilar Andika Maulana', 'gilar.andika.maulana-2019@fh.unair.ac.id', '$2y$10$jKMF6lZs2Tz.1beORxT2meIr./SoiQohXAxkoRaw2MsPs6mH5z0om', '5fe1def71afce.jpg', 1, 1),
(3, 'Rizal Ramli', 'rizalramli993@gmail.com', '$2y$10$j71BVjvjPmeOthQMzjGHU.HlVpMcxujsmfsL58mq5T5dWrYLVZGse', '5fe1f1c5bd515.jpeg', 1, 1),
(4, '', 'rizkika.palindungan98@gmail.com', '$2y$10$XhKbiu1dfyvoudaUZnRLhOaGFRc68VxhqwExeAXRr49og7V/eC1AC', '', 1, 1);

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
(1, 1, 'Pemilihan BEM 2020', '2020-12-22', '2020-12-22 06:00:00', '2020-12-22 23:00:00', 1),
(2, 1, 'Pemilihan BLM 2020', '2020-12-22', '2020-12-22 06:00:00', '2020-12-22 23:00:00', 1),
(3, 1, 'Pemilihan DLM 2020', '2020-12-22', '2020-12-22 06:00:00', '2020-12-22 23:00:00', 1);

-- --------------------------------------------------------

--
-- Structure for view `view_election`
--
DROP TABLE IF EXISTS `view_election`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_election`  AS  select `e`.`election_id` AS `election_id`,`e`.`attachment` AS `attachment`,`e`.`create_at` AS `create_at`,`e`.`election_status` AS `election_status`,`vtr`.`voter_id` AS `voter_id`,`vtr`.`name` AS `name`,`vtr`.`email` AS `email`,`c`.`candidate_id` AS `candidate_id`,`vtg`.`voting_id` AS `voting_id` from (((`election` `e` join `voter` `vtr` on((`e`.`voter_id` = `vtr`.`voter_id`))) join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `voting` `vtg` on((`c`.`voting_id` = `vtg`.`voting_id`))) order by `e`.`election_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_member`
--
DROP TABLE IF EXISTS `view_member`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_member`  AS  select `m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,`p`.`name` AS `party_name`,`p`.`photo` AS `party_photo`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`c`.`name` AS `candidate_name`,`c`.`photo` AS `candidate_photo`,`c`.`number` AS `number`,`c`.`is_active` AS `is_active` from ((`member` `m` join `party` `p` on((`m`.`party_id` = `p`.`party_id`))) join `candidate` `c` on((`m`.`candidate_id` = `c`.`candidate_id`))) order by `c`.`number` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_candidate`
--
DROP TABLE IF EXISTS `view_recapitulation_candidate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_candidate`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`name` AS `candidate_name`,count(`c`.`candidate_id`) AS `election_total`,`v`.`voting_id` AS `voting_id` from ((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `voting` `v` on((`c`.`voting_id` = `v`.`voting_id`))) group by `c`.`candidate_id`,`v`.`voting_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_candidate_sah`
--
DROP TABLE IF EXISTS `view_recapitulation_candidate_sah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_candidate_sah`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,count(`c`.`candidate_id`) AS `election_sah`,`v`.`voting_id` AS `voting_id` from ((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `voting` `v` on((`c`.`voting_id` = `v`.`voting_id`))) where (`e`.`election_status` = 1) group by `c`.`candidate_id`,`v`.`voting_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_candidate_tidak_sah`
--
DROP TABLE IF EXISTS `view_recapitulation_candidate_tidak_sah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_candidate_tidak_sah`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,count(`c`.`candidate_id`) AS `election_tidak_sah`,`v`.`voting_id` AS `voting_id` from ((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `voting` `v` on((`c`.`voting_id` = `v`.`voting_id`))) where (`e`.`election_status` = 0) group by `c`.`candidate_id`,`v`.`voting_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_party`
--
DROP TABLE IF EXISTS `view_recapitulation_party`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_party`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,`p`.`name` AS `party_name`,`p`.`photo` AS `party_photo`,count(`p`.`party_id`) AS `election_total` from (((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `member` `m` on((`e`.`candidate_id` = `m`.`candidate_id`))) join `party` `p` on((`m`.`party_id` = `p`.`party_id`))) group by `p`.`party_id`,`c`.`voting_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_party_sah`
--
DROP TABLE IF EXISTS `view_recapitulation_party_sah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_party_sah`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,count(`p`.`party_id`) AS `election_sah` from (((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `member` `m` on((`e`.`candidate_id` = `m`.`candidate_id`))) join `party` `p` on((`m`.`party_id` = `p`.`party_id`))) where (`e`.`election_status` = 1) group by `p`.`party_id`,`c`.`voting_id` ;

-- --------------------------------------------------------

--
-- Structure for view `view_recapitulation_party_tidak_sah`
--
DROP TABLE IF EXISTS `view_recapitulation_party_tidak_sah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sqtgmrv5ucz9c`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_party_tidak_sah`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,count(`p`.`party_id`) AS `election_tidak_sah` from (((`election` `e` join `candidate` `c` on((`e`.`candidate_id` = `c`.`candidate_id`))) join `member` `m` on((`e`.`candidate_id` = `m`.`candidate_id`))) join `party` `p` on((`m`.`party_id` = `p`.`party_id`))) where (`e`.`election_status` = 0) group by `p`.`party_id`,`c`.`voting_id` ;

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `voting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
