-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Des 2020 pada 10.45
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` enum('Admin','KPU','Saksi') NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `role`, `is_active`) VALUES
(1, 'rahasia', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 'Admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `candidate`
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
-- Dumping data untuk tabel `candidate`
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
(14, 2, 'Ali Mannagalli', '5fe01f2932131.png', 1, 1),
(15, 2, 'Deddy Kusuma Wardana', '5fe01f54de065.png', 2, 1),
(16, 2, 'Naufandiary Bachtiar Ramzy', '5fe01f641cf83.png', 3, 1),
(17, 2, 'Soegih Rasyad Sriwidyandiyo', '5fe01f8179526.png', 4, 1),
(18, 2, 'Eduardus Robert Arminto', '5fe01ffc025a6.png', 1, 1),
(19, 2, 'Azzahra Mazaya Khalisah', '5fe0200f883b9.png', 2, 1),
(20, 2, 'Fawwaz Muhammad Rafi', '5fe0203628838.png', 3, 1),
(21, 3, 'Wahyu Waullilamri Kurniawan', '5fe020b4b57ef.png', 1, 1),
(22, 3, 'Samuel Yobel Christian', '5fe020c7d63d9.png', 2, 1),
(23, 3, 'Bima Satriojati', '5fe0212a0495e.png', 1, 1),
(24, 3, 'Rahardian Satya Mandala Putra', '5fe0213a24e15.png', 2, 1),
(25, 3, 'Gunawan', '5fe0219128087.png', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `election`
--

CREATE TABLE `election` (
  `election_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `election_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `party_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
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
(17, 15, 3),
(18, 16, 3),
(19, 17, 3),
(20, 18, 4),
(21, 19, 4),
(22, 20, 4),
(23, 21, 1),
(24, 22, 1),
(25, 23, 2),
(26, 24, 2),
(27, 25, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `party`
--

CREATE TABLE `party` (
  `party_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `party`
--

INSERT INTO `party` (`party_id`, `name`, `photo`, `is_active`) VALUES
(1, 'Partai Demokrasi Antar Mahasiswa', '5fe0198c613be.jpg', 1),
(2, 'Partai Kesatuan Aspirasi Mahasiswa', '5fe019b272e5e.jpg', 1),
(3, 'Partai Kebangkitan Pergerakan Mahasiswa', '5fe019cb7e8d3.jpg', 1),
(4, 'Partai Muda Bersatu', '5fe019fe76b04.jpg', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_election`
-- (Lihat di bawah untuk tampilan aktual)
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
-- Stand-in struktur untuk tampilan `view_member`
-- (Lihat di bawah untuk tampilan aktual)
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
-- Stand-in struktur untuk tampilan `view_recapitulation_candidate`
-- (Lihat di bawah untuk tampilan aktual)
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
-- Stand-in struktur untuk tampilan `view_recapitulation_party`
-- (Lihat di bawah untuk tampilan aktual)
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
-- Struktur dari tabel `voter`
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
-- Dumping data untuk tabel `voter`
--

INSERT INTO `voter` (`voter_id`, `name`, `email`, `password`, `send_status`, `is_active`) VALUES
(1, 'rizkika', 'rizkika.palindungan1@gmail.com', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 0, 1),
(2, '', 'rizkika.palindungan98@gmail.com', '', 0, 1),
(3, '', 'rizalramli993@gmail.com', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `voting`
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
-- Dumping data untuk tabel `voting`
--

INSERT INTO `voting` (`voting_id`, `admin_id`, `name`, `date`, `start`, `end`, `is_active`) VALUES
(1, 1, 'Pemilihan BEM 2020', '2020-12-21', '2020-12-21 06:00:00', '2020-12-21 23:00:00', 1),
(2, 1, 'Pemilihan BLM 2020', '2020-12-21', '2020-12-21 06:00:00', '2020-12-21 23:00:00', 1),
(3, 1, 'Pemilihan DLM 2020', '2020-12-21', '2020-12-21 06:00:00', '2020-12-21 23:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_election`
--
DROP TABLE IF EXISTS `view_election`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_election`  AS  select `e`.`election_id` AS `election_id`,`vtr`.`voter_id` AS `voter_id`,`vtr`.`name` AS `name`,`vtr`.`email` AS `email`,`c`.`candidate_id` AS `candidate_id`,`vtg`.`voting_id` AS `voting_id` from (((`election` `e` join `voter` `vtr` on(`e`.`voter_id` = `vtr`.`voter_id`)) join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `voting` `vtg` on(`c`.`voting_id` = `vtg`.`voting_id`)) order by `e`.`election_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_member`
--
DROP TABLE IF EXISTS `view_member`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_member`  AS  select `m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,`p`.`name` AS `party_name`,`p`.`photo` AS `party_photo`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`c`.`name` AS `candidate_name`,`c`.`photo` AS `candidate_photo`,`c`.`number` AS `number`,`c`.`is_active` AS `is_active` from ((`member` `m` join `party` `p` on(`m`.`party_id` = `p`.`party_id`)) join `candidate` `c` on(`m`.`candidate_id` = `c`.`candidate_id`)) order by `c`.`number` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_recapitulation_candidate`
--
DROP TABLE IF EXISTS `view_recapitulation_candidate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_candidate`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`name` AS `candidate_name`,count(`c`.`candidate_id`) AS `election_total`,`v`.`voting_id` AS `voting_id` from ((`election` `e` join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `voting` `v` on(`c`.`voting_id` = `v`.`voting_id`)) group by `c`.`candidate_id`,`v`.`voting_id` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_recapitulation_party`
--
DROP TABLE IF EXISTS `view_recapitulation_party`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recapitulation_party`  AS  select `e`.`election_id` AS `election_id`,`c`.`candidate_id` AS `candidate_id`,`c`.`voting_id` AS `voting_id`,`m`.`member_id` AS `member_id`,`p`.`party_id` AS `party_id`,`p`.`name` AS `party_name`,`p`.`photo` AS `party_photo`,count(`p`.`party_id`) AS `election_total` from (((`election` `e` join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `member` `m` on(`e`.`candidate_id` = `m`.`candidate_id`)) join `party` `p` on(`m`.`party_id` = `p`.`party_id`)) group by `p`.`party_id`,`c`.`voting_id` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indeks untuk tabel `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`election_id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indeks untuk tabel `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indeks untuk tabel `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`voter_id`);

--
-- Indeks untuk tabel `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`voting_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `voter`
--
ALTER TABLE `voter`
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `voting`
--
ALTER TABLE `voting`
  MODIFY `voting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
