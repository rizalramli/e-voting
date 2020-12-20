-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2020 pada 13.02
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

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
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `is_active`) VALUES
(1, 'rahasia', '$2y$10$JStRK2xbkGrfJKN.jaLgz.Nu82EahTf.5b3nhRzzTf4YITuGmA6gC', 1);

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
(1, 1, 'Budi dan Ani', '5fdf39923b6bc.jpg', 1, 1),
(2, 1, 'Joni dan Andi', '5fdf3a14622bc.png', 2, 1),
(3, 2, 'Kaka dan Uji', '5fdf3aaf47f77.jpg', 1, 1),
(4, 2, 'Andi dan Anton', '5fdf3ad400069.jpg', 2, 1),
(5, 2, 'Lala dan Leli', '5fdf3af3ab08b.png', 3, 1),
(6, 3, 'Mari dan Mery', '5fdf3b3d5775a.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `election`
--

CREATE TABLE `election` (
  `election_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL
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
(1, 'Partai 1', '5fdf3b8258517.png', 1),
(2, 'Partai 2', '5fdf3b8d3a7a9.png', 1),
(3, 'Partai 3', '5fdf3b96c5152.png', 1);

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
(1, '', 'rizkika.palindungan1@gmail.com', '', 0, 1),
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
(1, 1, 'Pemilihan BEM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1),
(2, 1, 'Pemilihan BLM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1),
(3, 1, 'Pemilihan DLM 2020', '2020-12-24', '2020-12-24 12:00:00', '2020-12-24 18:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_election`
--
DROP TABLE IF EXISTS `view_election`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_election`  AS  select `e`.`election_id` AS `election_id`,`vtr`.`voter_id` AS `voter_id`,`vtr`.`name` AS `name`,`vtr`.`email` AS `email`,`c`.`candidate_id` AS `candidate_id`,`vtg`.`voting_id` AS `voting_id` from (((`election` `e` join `voter` `vtr` on(`e`.`voter_id` = `vtr`.`voter_id`)) join `candidate` `c` on(`e`.`candidate_id` = `c`.`candidate_id`)) join `voting` `vtg` on(`c`.`voting_id` = `vtg`.`voting_id`)) order by `e`.`election_id` ;

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
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
