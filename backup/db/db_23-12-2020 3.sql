-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2020 at 07:52 PM
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
(1, 'adminfh1', '$2y$10$p3K3e51EJVYqr8Wtph9qU.JFZ82Fs00JPJIDZ4D4m1kuzXgY6iauO', 'Admin', 1),
(2, 'kpufh1', '$2y$10$ylfb3ekV.I2EFKqvcCuoZ.UB2Okv5SB2q8Q3IDVt75TQ/UHGn8kzi', 'KPU', 1),
(3, 'saksifh1', '$2y$10$rteK4zlKfDL5Z2duMqv4y.D5EVQNgpZ0zAy2LA9NWRppitRwrmqS2', 'Saksi', 1),
(4, 'saksifh2', '$2y$10$J6ySfu2ybSp5wfKajF.5x.2t3cWgbj18u06P0Mw9iYj5YPiqWz1eu', 'Saksi', 1),
(5, 'saksifh3', '$2y$10$vmzD2JWMZTmkJ4TA9PwkkeYMKE2qTAdPGzS.3C8DeGIZnzpDqUXyi', 'Saksi', 1),
(6, 'saksifh4', '$2y$10$VHHBGijxoyI8RTM35xeewupXDM9GCEokkJSJTYjUc7vHLBzP4qhPa', 'Saksi', 1),
(7, 'saksifh5', '$2y$10$T/5FYX9KCPgzvVCwmssYkuSDoVnKKvqaXlUtGr4/xL/q67LWqInP6', 'Saksi', 1);

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
(1, '', 'rendy.aditya.wahono-2014@fh.unair.ac.id', '', '', 0, 1),
(2, '', 'dhaniswara.setya.pratama-2014@fh.unair.ac.id', '', '', 0, 1),
(3, '', 'renzy.firnendya.prilihandini-2014@fh.unair.ac.id', '', '', 0, 1),
(4, '', 'darryl.maulana.junior-2014@fh.unair.ac.id', '', '', 0, 1),
(5, '', 'arum.fitrah.purboningrum-2014@fh.unair.ac.id', '', '', 0, 1),
(6, '', 'wahyu.arie.setiawan-2014@fh.unair.ac.id', '', '', 0, 1),
(7, '', 'insan.maulana.furqon-2014@fh.unair.ac.id', '', '', 0, 1),
(8, '', 'satriagung.caesar.wijaya-2014@fh.unair.ac.id', '', '', 0, 1),
(9, '', 'farid.nur.rasyidi-2014@fh.unair.ac.id', '', '', 0, 1),
(10, '', 'samuel.partogi.m-2014@fh.unair.ac.id', '', '', 0, 1),
(11, '', 'suherman.saputra-2014@fh.unair.ac.id', '', '', 0, 1),
(12, '', 'luis.indarjaya-2014@fh.unair.ac.id', '', '', 0, 1),
(13, '', 'ivandita.satrio.h-2014@fh.unair.ac.id', '', '', 0, 1),
(14, '', 'rizky.akhmad.harhary-2015@fh.unair.ac.id', '', '', 0, 1),
(15, '', 'm.rusdiyansah-2015@fh.unair.ac.id', '', '', 0, 1),
(16, '', 'muchammad.rais.izzaturrachman-2015@fh.unair.ac.id', '', '', 0, 1),
(17, '', 'ari.riski.harianto-2015@fh.unair.ac.id', '', '', 0, 1),
(18, '', 'rahmat.harawan-2015@fh.unair.ac.id', '', '', 0, 1),
(19, '', 'grandnanda.revy.pratama-2015@fh.unair.ac.id', '', '', 0, 1),
(20, '', 'widiananto.nanda.prasetya-2015@fh.unair.ac.id', '', '', 0, 1),
(21, '', 'adyarga.satria.akbari-2015@fh.unair.ac.id', '', '', 0, 1),
(22, '', 'ahmad.hadi.wijaya-2015@fh.unair.ac.id', '', '', 0, 1),
(23, '', 'dewa.bagus.bagas-2015@fh.unair.ac.id', '', '', 0, 1),
(24, '', 'arviana.madella-2015@fh.unair.ac.id', '', '', 0, 1),
(25, '', 'nanda.lanang.s.y-2015@fh.unair.ac.id', '', '', 0, 1),
(26, '', 'tri.setyowati-2015@fh.unair.ac.id', '', '', 0, 1),
(27, '', 'bayu.fajar.satria-2015@fh.unair.ac.id', '', '', 0, 1),
(28, '', 'muhamad.reza.adjie-2015@fh.unair.ac.id', '', '', 0, 1),
(29, '', 'dewi.aisyah-2016@fh.unair.ac.id', '', '', 0, 1),
(30, '', 'nurul.al.fiani-2016@fh.unair.ac.id', '', '', 0, 1),
(31, '', 'vena.safira.adelita-2016@fh.unair.ac.id', '', '', 0, 1),
(32, '', 'wafa.yusdheaputra-2016@fh.unair.ac.id', '', '', 0, 1),
(33, '', 'riefani.rachman.fitrahamdy-2016@fh.unair.ac.id', '', '', 0, 1),
(34, '', 'putera.wahyu.reswara-2016@fh.unair.ac.id', '', '', 0, 1),
(35, '', 'viky.albaihaki.ahmad-2016@fh.unair.ac.id', '', '', 0, 1),
(36, '', 'rizky.hanan.atmapradipta-2016@fh.unair.ac.id', '', '', 0, 1),
(37, '', 'yanuar.ika.safitri-2016@fh.unair.ac.id', '', '', 0, 1),
(38, '', 'alya.cahya.hapsari-2016@fh.unair.ac.id', '', '', 0, 1),
(39, '', 'bagus.ramadhan-2016@fh.unair.ac.id', '', '', 0, 1),
(40, '', 'claudio.aditya-2016@fh.unair.ac.id', '', '', 0, 1),
(41, '', 'ulfa.septian.dika-2016@fh.unair.ac.id', '', '', 0, 1),
(42, '', 'joko.kuncoro.adi-2016@fh.unair.ac.id', '', '', 0, 1),
(43, '', 'ananda.chrismond.e.p-2016@fh.unair.ac.id', '', '', 0, 1),
(44, '', 'galih.nicky.roby-2016@fh.unair.ac.id', '', '', 0, 1),
(45, '', 'asiefa.nur.haenza-2016@fh.unair.ac.id', '', '', 0, 1),
(46, '', 'renardi.alif.adianto-2016@fh.unair.ac.id', '', '', 0, 1),
(47, '', 'rizky.aditya.f-2016@fh.unair.ac.id', '', '', 0, 1),
(48, '', 'intan.letitia.nanda-2016@fh.unair.ac.id', '', '', 0, 1),
(49, '', 'nazhiif.imaaman-2016@fh.unair.ac.id', '', '', 0, 1),
(50, '', 'bagus.eka.sasmita-2016@fh.unair.ac.id', '', '', 0, 1),
(51, '', 'muhammad.rafie.firmansyah-2016@fh.unair.ac.id', '', '', 0, 1),
(52, '', 'irza.maulana-2016@fh.unair.ac.id', '', '', 0, 1),
(53, '', 'zerra.aisyah.yudipratiwi-2016@fh.unair.ac.id', '', '', 0, 1),
(54, '', 'muhammad.zata.mahardika-2016@fh.unair.ac.id', '', '', 0, 1),
(55, '', 'muhammad.fikri.kurniawan-2016@fh.unair.ac.id', '', '', 0, 1),
(56, '', 'shella.aqmadea.eshafia-2016@fh.unair.ac.id', '', '', 0, 1),
(57, '', 'abdul.wahid.rizky-2016@fh.unair.ac.id', '', '', 0, 1),
(58, '', 'ahmad.boma.gusnara-2016@fh.unair.ac.id', '', '', 0, 1),
(59, '', 'm.farakhan.maghriby.abdullah-2016@fh.unair.ac.id', '', '', 0, 1),
(60, '', 'kresna.aji.priyambodo-2016@fh.unair.ac.id', '', '', 0, 1),
(61, '', 'ramandhika.muhammad-2016@fh.unair.ac.id', '', '', 0, 1),
(62, '', 'moch.arif.bayu-2017@fh.unair.ac.id', '', '', 0, 1),
(63, '', 'elok.fauzia.dwi-2017@fh.unair.ac.id', '', '', 0, 1),
(64, '', 'fauziah.ardina.putri-2017@fh.unair.ac.id', '', '', 0, 1),
(65, '', 'mumtazul.muhaamin-2017@fh.unair.ac.id', '', '', 0, 1),
(66, '', 'terry.christy.prasetya-2017@fh.unair.ac.id', '', '', 0, 1),
(67, '', 'annisa.nurul.husna-2017@fh.unair.ac.id', '', '', 0, 1),
(68, '', 'arfie.rachman.widiatama-2017@fh.unair.ac.id', '', '', 0, 1),
(69, '', 'evans.al.faridzi-2017@fh.unair.ac.id', '', '', 0, 1),
(70, '', 'annisa.puspitadelia-2017@fh.unair.ac.id', '', '', 0, 1),
(71, '', 'saut.parsaulian.hutagalung-2017@fh.unair.ac.id', '', '', 0, 1),
(72, '', 'rafif.asyraf-2017@fh.unair.ac.id', '', '', 0, 1),
(73, '', 'dimas.aditya.pranawa-2017@fh.unair.ac.id', '', '', 0, 1),
(74, '', 'fida.aifiya.chusna-2017@fh.unair.ac.id', '', '', 0, 1),
(75, '', 'annisa.gista.elfaza-2017@fh.unair.ac.id', '', '', 0, 1),
(76, '', 'aditya.dwiki.hernanda-2017@fh.unair.ac.id', '', '', 0, 1),
(77, '', 'athaya.ulya.azzahra-2017@fh.unair.ac.id', '', '', 0, 1),
(78, '', 'putri.kinanthi.dhayaning-2017@fh.unair.ac.id', '', '', 0, 1),
(79, '', 'dinda.bhawika.w.p-2017@fh.unair.ac.id', '', '', 0, 1),
(80, '', 'adiyatma.yusuf.satoto-2017@fh.unair.ac.id', '', '', 0, 1),
(81, '', 'veronica.cynthia.wibowo-2017@fh.unair.ac.id', '', '', 0, 1),
(82, '', 'nadila.manda.sari-2017@fh.unair.ac.id', '', '', 0, 1),
(83, '', 'ismi.aulia.wahyudi-2017@fh.unair.ac.id', '', '', 0, 1),
(84, '', 'nur.afni-2017@fh.unair.ac.id', '', '', 0, 1),
(85, '', 'hafidh.fawwaidz-2017@fh.unair.ac.id', '', '', 0, 1),
(86, '', 'elvita.mustika.putri-2017@fh.unair.ac.id', '', '', 0, 1),
(87, '', 'claravia.adhyne-2017@fh.unair.ac.id', '', '', 0, 1),
(88, '', 'edwin.wira.adikusuma-2017@fh.unair.ac.id', '', '', 0, 1),
(89, '', 'nur.syamsi.tajriyani-2017@fh.unair.ac.id', '', '', 0, 1),
(90, '', 'vincentius.sutanto-2017@fh.unair.ac.id', '', '', 0, 1),
(91, '', 'yuni.indri.astina-2017@fh.unair.ac.id', '', '', 0, 1),
(92, '', 'ajeng.nur.fadila-2017@fh.unair.ac.id', '', '', 0, 1),
(93, '', 'luh.made.khristianti-2017@fh.unair.ac.id', '', '', 0, 1),
(94, '', 'mustika.nugraheni-2017@fh.unair.ac.id', '', '', 0, 1),
(95, '', 'sabrina.kurnia.pradani-2017@fh.unair.ac.id', '', '', 0, 1),
(96, '', 'agatha.geraldine-2017@fh.unair.ac.id', '', '', 0, 1),
(97, '', 'i.wayan.widiastina-2017@fh.unair.ac.id', '', '', 0, 1),
(98, '', 'nadya.tita.lazuardi-2017@fh.unair.ac.id', '', '', 0, 1),
(99, '', 'nisriinaa.yurin.octavia-2017@fh.unair.ac.id', '', '', 0, 1),
(100, '', 'muhammad.ammar.havizh-2017@fh.unair.ac.id', '', '', 0, 1),
(101, '', 'adelia.zavira-2017@fh.unair.ac.id', '', '', 0, 1),
(102, '', 'muhtina.tria.novianti-2017@fh.unair.ac.id', '', '', 0, 1),
(103, '', 'claudia.saymindo.emanuella-2017@fh.unair.ac.id', '', '', 0, 1),
(104, '', 'patricya.wedha.hutapea-2017@fh.unair.ac.id', '', '', 0, 1),
(105, '', 'muhammad.fahrur.rozi-2017@fh.unair.ac.id', '', '', 0, 1),
(106, '', 'annisaul.izzah-2017@fh.unair.ac.id', '', '', 0, 1),
(107, '', 'alip.pamungkas.raharjo-2017@fh.unair.ac.id', '', '', 0, 1),
(108, '', 'siska.nawati-2017@fh.unair.ac.id', '', '', 0, 1),
(109, '', 'maria.one.oktavia-2017@fh.unair.ac.id', '', '', 0, 1),
(110, '', 'eka.putri.fadhila-2017@fh.unair.ac.id', '', '', 0, 1),
(111, '', 'arifah.khoirunisa-2017@fh.unair.ac.id', '', '', 0, 1),
(112, '', 'berliana.ayu.kusumawardani-2017@fh.unair.ac.id', '', '', 0, 1),
(113, '', 'dita.tri.lembayung-2017@fh.unair.ac.id', '', '', 0, 1),
(114, '', 'herdian.putranto.adi-2017@fh.unair.ac.id', '', '', 0, 1),
(115, '', 'alma.putri.dhiafira-2017@fh.unair.ac.id', '', '', 0, 1),
(116, '', 'nabilla.virnanda.lobo-2017@fh.unair.ac.id', '', '', 0, 1),
(117, '', 'arsasti.satya.pradyta-2017@fh.unair.ac.id', '', '', 0, 1),
(118, '', 'jade.aurora.kencana-2017@fh.unair.ac.id', '', '', 0, 1),
(119, '', 'nova.aulia.ghaizani-2017@fh.unair.ac.id', '', '', 0, 1),
(120, '', 'erviana.setianingrum-2017@fh.unair.ac.id', '', '', 0, 1),
(121, '', 'hannah.tiara.delia-2017@fh.unair.ac.id', '', '', 0, 1),
(122, '', 'catur.noviantoris.yusuf-2017@fh.unair.ac.id', '', '', 0, 1),
(123, '', 'ramadhan.henrison.hasibuan-2017@fh.unair.ac.id', '', '', 0, 1),
(124, '', 'fikri.haichal-2017@fh.unair.ac.id', '', '', 0, 1),
(125, '', 'adelia.rizky.windyaka-2017@fh.unair.ac.id', '', '', 0, 1),
(126, '', 'muliana-2017@fh.unair.ac.id', '', '', 0, 1),
(127, '', 'angelia.dwi.oktavia-2017@fh.unair.ac.id', '', '', 0, 1),
(128, '', 'aushofi.zuhrotul.ulya-2017@fh.unair.ac.id', '', '', 0, 1),
(129, '', 'wardah.qurni.nabilah-2017@fh.unair.ac.id', '', '', 0, 1),
(130, '', 'sinthya.yuningrit.raharjo-2017@fh.unair.ac.id', '', '', 0, 1),
(131, '', 'dina.aprilia-2017@fh.unair.ac.id', '', '', 0, 1),
(132, '', 'vicky.yuliana.saputri-2017@fh.unair.ac.id', '', '', 0, 1),
(133, '', 'adinda.huriyah.nabilah-2017@fh.unair.ac.id', '', '', 0, 1),
(134, '', 'antiek.firdausi.putri-2017@fh.unair.ac.id', '', '', 0, 1),
(135, '', 'cita.ayu.alfioni-2017@fh.unair.ac.id', '', '', 0, 1),
(136, '', 'safina.zidni.hasna-2017@fh.unair.ac.id', '', '', 0, 1),
(137, '', 'hasna.imani.haryutama-2017@fh.unair.ac.id', '', '', 0, 1),
(138, '', 'wahyu.aliansa-2017@fh.unair.ac.id', '', '', 0, 1),
(139, '', 'munaddhimatus.silmi-2017@fh.unair.ac.id', '', '', 0, 1),
(140, '', 'auly.nahdyan.mafaza-2017@fh.unair.ac.id', '', '', 0, 1),
(141, '', 'cindy.cendhani-2017@fh.unair.ac.id', '', '', 0, 1),
(142, '', 'achmad.rizaldi.umam-2017@fh.unair.ac.id', '', '', 0, 1),
(143, '', 'mohamad.haikal.fikri-2017@fh.unair.ac.id', '', '', 0, 1),
(144, '', 'arvrin.desylvia.octavrianas-2017@fh.unair.ac.id', '', '', 0, 1),
(145, '', 'atiqoh.farhah.maulani-2017@fh.unair.ac.id', '', '', 0, 1),
(146, '', 'sinto-2017@fh.unair.ac.id', '', '', 0, 1),
(147, '', 'rachel.natalia.ateng-2017@fh.unair.ac.id', '', '', 0, 1),
(148, '', 'angga.akbar.pramudianto-2017@fh.unair.ac.id', '', '', 0, 1),
(149, '', 'sabrina.damayanti-2017@fh.unair.ac.id', '', '', 0, 1),
(150, '', 'georgius.ivan.budihardja-2017@fh.unair.ac.id', '', '', 0, 1),
(151, '', 'risma.fitri.amalina-2017@fh.unair.ac.id', '', '', 0, 1),
(152, '', 'melly.moraito.trianita-2017@fh.unair.ac.id', '', '', 0, 1),
(153, '', 'nafila.nitya.prasiddha-2017@fh.unair.ac.id', '', '', 0, 1),
(154, '', 'alde.erfajrin.syabana-2017@fh.unair.ac.id', '', '', 0, 1),
(155, '', 'mahfyra.alsabella.hamyda-2017@fh.unair.ac.id', '', '', 0, 1),
(156, '', 'azhari.maulana.noegroho-2017@fh.unair.ac.id', '', '', 0, 1),
(157, '', 'danial.akta.futaki-2017@fh.unair.ac.id', '', '', 0, 1),
(158, '', 'abita.aiko.miyata-2017@fh.unair.ac.id', '', '', 0, 1),
(159, '', 'daniel.marihot.tambunan-2017@fh.unair.ac.id', '', '', 0, 1),
(160, '', 'hana.dewi.putri-2017@fh.unair.ac.id', '', '', 0, 1),
(161, '', 'ken.bagus.setya-2017@fh.unair.ac.id', '', '', 0, 1),
(162, '', 'm.rizky.fadhlullah-2017@fh.unair.ac.id', '', '', 0, 1),
(163, '', 'fariez.luhur.prihastama-2017@fh.unair.ac.id', '', '', 0, 1),
(164, '', 'fadli.hakim.arisyi-2017@fh.unair.ac.id', '', '', 0, 1),
(165, '', 'kartika.budiarti-2017@fh.unair.ac.id', '', '', 0, 1),
(166, '', 'zaiematuzzahra.munasib-2017@fh.unair.ac.id', '', '', 0, 1),
(167, '', 'gracia.ravina.moselle-2017@fh.unair.ac.id', '', '', 0, 1),
(168, '', 'm.krisna.rio.pradana-2017@fh.unair.ac.id', '', '', 0, 1),
(169, '', 'trechsna.ali.ramadhani-2017@fh.unair.ac.id', '', '', 0, 1),
(170, '', 'musa.khonifan-2017@fh.unair.ac.id', '', '', 0, 1),
(171, '', 'rheza.satya.wibowo-2017@fh.unair.ac.id', '', '', 0, 1),
(172, '', 'mohammad.taufik-2017@fh.unair.ac.id', '', '', 0, 1),
(173, '', 'muhammad.harits.anwar-2017@fh.unair.ac.id', '', '', 0, 1),
(174, '', 'adnan.usman.yasin-2017@fh.unair.ac.id', '', '', 0, 1),
(175, '', 'annida.aqiila.putri-2017@fh.unair.ac.id', '', '', 0, 1),
(176, '', 'fachrian.ilham.fauzi-2017@fh.unair.ac.id', '', '', 0, 1),
(177, '', 'afif.fathin.muhtadi-2017@fh.unair.ac.id', '', '', 0, 1),
(178, '', 'dhimas.elham.maulana-2017@fh.unair.ac.id', '', '', 0, 1),
(179, '', 'ika.syafitri-2017@fh.unair.ac.id', '', '', 0, 1),
(180, '', 'cornelia.olivia.lumowa-2017@fh.unair.ac.id', '', '', 0, 1),
(181, '', 'okky.daru.mubarok-2017@fh.unair.ac.id', '', '', 0, 1),
(182, '', 'vanya.oryza.safira-2017@fh.unair.ac.id', '', '', 0, 1),
(183, '', 'talitha.belvarini.can-2017@fh.unair.ac.id', '', '', 0, 1),
(184, '', 'bisma.krishna.hernanda-2017@fh.unair.ac.id', '', '', 0, 1),
(185, '', 'sugeng.andrean-2017@fh.unair.ac.id', '', '', 0, 1),
(186, '', 'cahya.agmelya.sayu-2017@fh.unair.ac.id', '', '', 0, 1),
(187, '', 'rizky.fernanda-2017@fh.unair.ac.id', '', '', 0, 1),
(188, '', 'dimas.eriangga.putranto-2017@fh.unair.ac.id', '', '', 0, 1),
(189, '', 'karina.ardelia.nanda-2017@fh.unair.ac.id', '', '', 0, 1),
(190, '', 'salsabila.yuharnita-2017@fh.unair.ac.id', '', '', 0, 1),
(191, '', 'debrita.yanieta.santoso-2017@fh.unair.ac.id', '', '', 0, 1),
(192, '', 'amira.hasna.nabila-2017@fh.unair.ac.id', '', '', 0, 1),
(193, '', 'nalini.widyantoro-2017@fh.unair.ac.id', '', '', 0, 1),
(194, '', 'nadya.farahdiba.noviandri-2017@fh.unair.ac.id', '', '', 0, 1),
(195, '', 'rohman.hidayad-2017@fh.unair.ac.id', '', '', 0, 1),
(196, '', 'nabila.safira.augusta-2017@fh.unair.ac.id', '', '', 0, 1),
(197, '', 'irene.angelita.rugian-2017@fh.unair.ac.id', '', '', 0, 1),
(198, '', 'haras.christy.monica-2017@fh.unair.ac.id', '', '', 0, 1),
(199, '', 'izzah.khalif.raihan-2017@fh.unair.ac.id', '', '', 0, 1),
(200, '', 'muhammad.firstano.taqwim-2017@fh.unair.ac.id', '', '', 0, 1),
(201, '', 'adelia.putri.marina-2017@fh.unair.ac.id', '', '', 0, 1),
(202, '', 'christin.lauren.natasya-2017@fh.unair.ac.id', '', '', 0, 1),
(203, '', 'khalid.ibnu.nazar-2017@fh.unair.ac.id', '', '', 0, 1),
(204, '', 'reza.fachry.kesuma-2017@fh.unair.ac.id', '', '', 0, 1),
(205, '', 'desy.ramadhani.pratini-2017@fh.unair.ac.id', '', '', 0, 1),
(206, '', 'yuniatri.fara.rahmania-2017@fh.unair.ac.id', '', '', 0, 1),
(207, '', 'ranesya.maharani.alkemsky-2017@fh.unair.ac.id', '', '', 0, 1),
(208, '', 'rizky.hadiwidjayanti-2017@fh.unair.ac.id', '', '', 0, 1),
(209, '', 'fikri.chan.permana-2017@fh.unair.ac.id', '', '', 0, 1),
(210, '', 'david.parlinggoman.sinaga-2017@fh.unair.ac.id', '', '', 0, 1),
(211, '', 'novita.cahyani.harjono-2017@fh.unair.ac.id', '', '', 0, 1),
(212, '', 'yudistia.tedy.firmansyah-2017@fh.unair.ac.id', '', '', 0, 1),
(213, '', 'ghozi.naufal.qois-2017@fh.unair.ac.id', '', '', 0, 1),
(214, '', 'achmad.fariz.gunawan-2017@fh.unair.ac.id', '', '', 0, 1),
(215, '', 'komari.aldiansyah-2017@fh.unair.ac.id', '', '', 0, 1),
(216, '', 'enrico.benedictus.silangen-2017@fh.unair.ac.id', '', '', 0, 1),
(217, '', 'melati.ayu.pusparani-2017@fh.unair.ac.id', '', '', 0, 1),
(218, '', 'guntur.aris.prabowo-2017@fh.unair.ac.id', '', '', 0, 1),
(219, '', 'andika.dian.tetuko-2017@fh.unair.ac.id', '', '', 0, 1),
(220, '', 'syahril.gunawan-2017@fh.unair.ac.id', '', '', 0, 1),
(221, '', 'muhammad.rizki.suwanto-2017@fh.unair.ac.id', '', '', 0, 1),
(222, '', 'sultan.herlambang.yoga-2017@fh.unair.ac.id', '', '', 0, 1),
(223, '', 'hervina.intya.afanda-2017@fh.unair.ac.id', '', '', 0, 1),
(224, '', 'can.rizal.sabili-2017@fh.unair.ac.id', '', '', 0, 1),
(225, '', 'cahya.ekky.desta-2017@fh.unair.ac.id', '', '', 0, 1),
(226, '', 'himas.ivan.ar-2017@fh.unair.ac.id', '', '', 0, 1),
(227, '', 'audi.naura.dhaneswara-2017@fh.unair.ac.id', '', '', 0, 1),
(228, '', 'della.safira.radi-2017@fh.unair.ac.id', '', '', 0, 1),
(229, '', 'mentari.ananda.suharto-2017@fh.unair.ac.id', '', '', 0, 1),
(230, '', 'dimas.hikari.achmad-2017@fh.unair.ac.id', '', '', 0, 1),
(231, '', 'vikran.fasyadhiyaksa.putra-2017@fh.unair.ac.id', '', '', 0, 1),
(232, '', 'fildza.mahira-2017@fh.unair.ac.id', '', '', 0, 1),
(233, '', 'duhita.pramesi.tyaskinasih-2017@fh.unair.ac.id', '', '', 0, 1),
(234, '', 'adinda.setyaning.utami-2017@fh.unair.ac.id', '', '', 0, 1),
(235, '', 'evan.samuel.grigorius-2017@fh.unair.ac.id', '', '', 0, 1),
(236, '', 'shafinaz.rania.rachmat-2017@fh.unair.ac.id', '', '', 0, 1),
(237, '', 'ramadhan.aufar.lazarus-2017@fh.unair.ac.id', '', '', 0, 1),
(238, '', 'andrean.gregorius.pandapotan-2017@fh.unair.ac.id', '', '', 0, 1),
(239, '', 'annisa.amalia.rahmadianti-2017@fh.unair.ac.id', '', '', 0, 1),
(240, '', 'salsabila.laili.zahra-2017@fh.unair.ac.id', '', '', 0, 1),
(241, '', 'indah.permatasari.kosuma-2017@fh.unair.ac.id', '', '', 0, 1),
(242, '', 'salsabilla.ofia-2017@fh.unair.ac.id', '', '', 0, 1),
(243, '', 'silvia.divi.salsabillah-2017@fh.unair.ac.id', '', '', 0, 1),
(244, '', 'abiyyu.hilmi.pradana-2017@fh.unair.ac.id', '', '', 0, 1),
(245, '', 'sylvana.aninditha.maharany-2017@fh.unair.ac.id', '', '', 0, 1),
(246, '', 'mohamad.nur.kholiq-2017@fh.unair.ac.id', '', '', 0, 1),
(247, '', 'yunanda.husnul.pratami-2017@fh.unair.ac.id', '', '', 0, 1),
(248, '', 'fakhruddin.alghiffari-2017@fh.unair.ac.id', '', '', 0, 1),
(249, '', 'ananda.cindy-2017@fh.unair.ac.id', '', '', 0, 1),
(250, '', 'syahnaz-2017@fh.unair.ac.id', '', '', 0, 1),
(251, '', 'dimas.erlando.ramadhany-2017@fh.unair.ac.id', '', '', 0, 1),
(252, '', 'dafiq.nuansa.arifano-2017@fh.unair.ac.id', '', '', 0, 1),
(253, '', 'enudio.aprilian.utoyo-2017@fh.unair.ac.id', '', '', 0, 1),
(254, '', 'julienna.hartono-2017@fh.unair.ac.id', '', '', 0, 1),
(255, '', 'muhammad.maulana.zaki-2017@fh.unair.ac.id', '', '', 0, 1),
(256, '', 'kartika.prabawati-2017@fh.unair.ac.id', '', '', 0, 1),
(257, '', 'mohammad.alif.ramadhani-2017@fh.unair.ac.id', '', '', 0, 1),
(258, '', 'taris.luthfansyah-2017@fh.unair.ac.id', '', '', 0, 1),
(259, '', 'lavinia.aviera-2017@fh.unair.ac.id', '', '', 0, 1),
(260, '', 'noviannisa.luthfi.pribadini-2017@fh.unair.ac.id', '', '', 0, 1),
(261, '', 'alvian.dharmawan-2017@fh.unair.ac.id', '', '', 0, 1),
(262, '', 'muhammad.fardi.sofari-2017@fh.unair.ac.id', '', '', 0, 1),
(263, '', 'desdiar.zahnas.romauda-2017@fh.unair.ac.id', '', '', 0, 1),
(264, '', 'ahmad.zaky.mubarok-2017@fh.unair.ac.id', '', '', 0, 1),
(265, '', 'julianda.rosyadi-2017@fh.unair.ac.id', '', '', 0, 1),
(266, '', 'priyo.arief.wicaksono-2017@fh.unair.ac.id', '', '', 0, 1),
(267, '', 'rajamartirka-2017@fh.unair.ac.id', '', '', 0, 1),
(268, '', 'satrio.budi.suroso-2017@fh.unair.ac.id', '', '', 0, 1),
(269, '', 'aldo.rahmandana-2017@fh.unair.ac.id', '', '', 0, 1),
(270, '', 'gerald.vivaldi.wardhana-2017@fh.unair.ac.id', '', '', 0, 1),
(271, '', 'zulfa.zahara.imtiyaz-2017@fh.unair.ac.id', '', '', 0, 1),
(272, '', 'i.putu.setya.agung-2017@fh.unair.ac.id', '', '', 0, 1),
(273, '', 'akbar.rizky.pratama-2017@fh.unair.ac.id', '', '', 0, 1),
(274, '', 'nabillah.fitria.nugraha-2017@fh.unair.ac.id', '', '', 0, 1),
(275, '', 'lisa.nadya.afifah-2017@fh.unair.ac.id', '', '', 0, 1),
(276, '', 'rafinsyah.adhimulya.himawan-2017@fh.unair.ac.id', '', '', 0, 1),
(277, '', 'dhimam.zidny.siradj-2017@fh.unair.ac.id', '', '', 0, 1),
(278, '', 'nabila.sara.faninza-2017@fh.unair.ac.id', '', '', 0, 1),
(279, '', 'qowi.dzulfarhad-2017@fh.unair.ac.id', '', '', 0, 1),
(280, '', 'royan.dawud.hadji-2017@fh.unair.ac.id', '', '', 0, 1),
(281, '', 'andika.prakoso.marsekal-2017@fh.unair.ac.id', '', '', 0, 1),
(282, '', 'mohammad.diska.prananda-2017@fh.unair.ac.id', '', '', 0, 1),
(283, '', 'belinda.dwi.tamara-2017@fh.unair.ac.id', '', '', 0, 1),
(284, '', 'farah.diba-2017@fh.unair.ac.id', '', '', 0, 1),
(285, '', 'aries.saifullah-2017@fh.unair.ac.id', '', '', 0, 1),
(286, '', 'rida.aristawati-2017@fh.unair.ac.id', '', '', 0, 1),
(287, '', 'salsabila.yasmin-2017@fh.unair.ac.id', '', '', 0, 1),
(288, '', 'desya.annisa.anandita-2017@fh.unair.ac.id', '', '', 0, 1),
(289, '', 'cut.sara.devariza-2017@fh.unair.ac.id', '', '', 0, 1),
(290, '', 'irfan.marzuqi.ridla-2017@fh.unair.ac.id', '', '', 0, 1),
(291, '', 'nabilla.fitra.larasati-2017@fh.unair.ac.id', '', '', 0, 1),
(292, '', 'alicia.juanita-2017@fh.unair.ac.id', '', '', 0, 1),
(293, '', 'valerieo.ezra.hutagalung-2017@fh.unair.ac.id', '', '', 0, 1),
(294, '', 'septya.yuriko.kaeng-2017@fh.unair.ac.id', '', '', 0, 1),
(295, '', 'muhammad.risky.oktavian-2017@fh.unair.ac.id', '', '', 0, 1),
(296, '', 'rizaldi.tri.pamungkas-2017@fh.unair.ac.id', '', '', 0, 1),
(297, '', 'salsabila.annisa.nursaputri-2017@fh.unair.ac.id', '', '', 0, 1),
(298, '', 'kristophorus.gerin.noven-2017@fh.unair.ac.id', '', '', 0, 1),
(299, '', 'adia.misqa.imtiyaz-2017@fh.unair.ac.id', '', '', 0, 1),
(300, '', 'rachmadifa.alin-2017@fh.unair.ac.id', '', '', 0, 1),
(301, '', 'faizin.achmad.sumhudi-2017@fh.unair.ac.id', '', '', 0, 1),
(302, '', 'rebecca.mariana.angelina-2017@fh.unair.ac.id', '', '', 0, 1),
(303, '', 'agung.jaya.kusuma-2017@fh.unair.ac.id', '', '', 0, 1),
(304, '', 'nabila.maraya.farenia-2017@fh.unair.ac.id', '', '', 0, 1),
(305, '', 'zhafira.zeta-2017@fh.unair.ac.id', '', '', 0, 1),
(306, '', 'fariz.seiff-2017@fh.unair.ac.id', '', '', 0, 1),
(307, '', 'ainaya.nadine-2017@fh.unair.ac.id', '', '', 0, 1),
(308, '', 'rinzana.nuranggraeni-2017@fh.unair.ac.id', '', '', 0, 1),
(309, '', 'thesalonica.inta-2017@fh.unair.ac.id', '', '', 0, 1),
(310, '', 'anneta.cornelia.budianto-2018@fh.unair.ac.id', '', '', 0, 1),
(311, '', 'maria.clarisa.talia-2018@fh.unair.ac.id', '', '', 0, 1),
(312, '', 'zulfa.karin.sampurna-2018@fh.unair.ac.id', '', '', 0, 1),
(313, '', 'shafira.monica.hartono-2018@fh.unair.ac.id', '', '', 0, 1),
(314, '', 'rasya.elvetta.tsany-2018@fh.unair.ac.id', '', '', 0, 1),
(315, '', 'renhard.ananda.aditama-2018@fh.unair.ac.id', '', '', 0, 1),
(316, '', 'firnanda.arifatul.cahyani-2018@fh.unair.ac.id', '', '', 0, 1),
(317, '', 'sabrina.in.wati-2018@fh.unair.ac.id', '', '', 0, 1),
(318, '', 'qonaaha.noor.maajid-2018@fh.unair.ac.id', '', '', 0, 1),
(319, '', 'bagus.satya.wardana-2018@fh.unair.ac.id', '', '', 0, 1),
(320, '', 'kurnia.fajar.suryani-2018@fh.unair.ac.id', '', '', 0, 1),
(321, '', 'noering.ratu.fatheha-2018@fh.unair.ac.id', '', '', 0, 1),
(322, '', 'lucky.diamond.tuansa-2018@fh.unair.ac.id', '', '', 0, 1),
(323, '', 'faza.nurul.masyita-2018@fh.unair.ac.id', '', '', 0, 1),
(324, '', 'dinda.ajeng.puspanita-2018@fh.unair.ac.id', '', '', 0, 1),
(325, '', 'farhan.adin.nugroho-2018@fh.unair.ac.id', '', '', 0, 1),
(326, '', 'annisaa.azzahra-2018@fh.unair.ac.id', '', '', 0, 1),
(327, '', 'nadilla.mayang.chahyani-2018@fh.unair.ac.id', '', '', 0, 1),
(328, '', 'arivigo.pranata-2018@fh.unair.ac.id', '', '', 0, 1),
(329, '', 'intan.apriyanti.mansur-2018@fh.unair.ac.id', '', '', 0, 1),
(330, '', 'muhammad.rizqullah.dany-2018@fh.unair.ac.id', '', '', 0, 1),
(331, '', 'fauzan.akhmad.dzaki-2018@fh.unair.ac.id', '', '', 0, 1),
(332, '', 'm.fadhil.idqi-2018@fh.unair.ac.id', '', '', 0, 1),
(333, '', 'erlangga.yudha.prasetya-2018@fh.unair.ac.id', '', '', 0, 1),
(334, '', 'sonia-2018@fh.unair.ac.id', '', '', 0, 1),
(335, '', 'nadya.eka.amalia-2018@fh.unair.ac.id', '', '', 0, 1),
(336, '', 'fitrizki.dwi.nanda-2018@fh.unair.ac.id', '', '', 0, 1),
(337, '', 'adriel.timothy.herdito-2018@fh.unair.ac.id', '', '', 0, 1),
(338, '', 'moch.rachmat.prawira-2018@fh.unair.ac.id', '', '', 0, 1),
(339, '', 'rifqi.ihyaul.haq-2018@fh.unair.ac.id', '', '', 0, 1),
(340, '', 'sindhu.dwi.admojo-2018@fh.unair.ac.id', '', '', 0, 1),
(341, '', 'muhammad.ilham.mahrudin-2018@fh.unair.ac.id', '', '', 0, 1),
(342, '', 'inas.syadza.wafikhoh-2018@fh.unair.ac.id', '', '', 0, 1),
(343, '', 'made.sinta.syaharani-2018@fh.unair.ac.id', '', '', 0, 1),
(344, '', 'fahriza.nadiastari-2018@fh.unair.ac.id', '', '', 0, 1),
(345, '', 'evan.joshel.tumanggor-2018@fh.unair.ac.id', '', '', 0, 1),
(346, '', 'dionisius.surya.ernawan-2018@fh.unair.ac.id', '', '', 0, 1),
(347, '', 'dimas.wibisono-2018@fh.unair.ac.id', '', '', 0, 1),
(348, '', 'farani.nazwa.chairunisa-2018@fh.unair.ac.id', '', '', 0, 1),
(349, '', 'sanjaya.daffa.ramadhan-2018@fh.unair.ac.id', '', '', 0, 1),
(350, '', 'zalfa.attiyah.faradiba-2018@fh.unair.ac.id', '', '', 0, 1),
(351, '', 'angga.yuristian-2018@fh.unair.ac.id', '', '', 0, 1),
(352, '', 'samuel.triston-2018@fh.unair.ac.id', '', '', 0, 1),
(353, '', 'sigmawati.widyaningrum-2018@fh.unair.ac.id', '', '', 0, 1),
(354, '', 'inez.nurina.adzani-2018@fh.unair.ac.id', '', '', 0, 1),
(355, '', 'luckysia.hendyansyah-2018@fh.unair.ac.id', '', '', 0, 1),
(356, '', 'gunawan-2018@fh.unair.ac.id', '', '', 0, 1),
(357, '', 'amelia.ayu.nurvita-2018@fh.unair.ac.id', '', '', 0, 1),
(358, '', 'nabiil.ikbaar.maulana-2018@fh.unair.ac.id', '', '', 0, 1),
(359, '', 'katherine.abidea.salim-2018@fh.unair.ac.id', '', '', 0, 1),
(360, '', 'kinan.kalam.khalifa-2018@fh.unair.ac.id', '', '', 0, 1),
(361, '', 'noor.eva.rahma-2018@fh.unair.ac.id', '', '', 0, 1),
(362, '', 'viena.andhani.riswari-2018@fh.unair.ac.id', '', '', 0, 1),
(363, '', 'naufandiary.bachtiar.ramzy-2018@fh.unair.ac.id', '', '', 0, 1),
(364, '', 'ezra.tambunan-2018@fh.unair.ac.id', '', '', 0, 1),
(365, '', 'inas.audah-2018@fh.unair.ac.id', '', '', 0, 1),
(366, '', 'amirah.zalfa.arindya-2018@fh.unair.ac.id', '', '', 0, 1),
(367, '', 'yosua.putra.iskandar-2018@fh.unair.ac.id', '', '', 0, 1),
(368, '', 'helmy.sujiarto.haryo-2018@fh.unair.ac.id', '', '', 0, 1),
(369, '', 'nadhilah.alifia.maharani-2018@fh.unair.ac.id', '', '', 0, 1),
(370, '', 'ramma.setyasuryantoro-2018@fh.unair.ac.id', '', '', 0, 1),
(371, '', 'ardan.ardian.syah-2018@fh.unair.ac.id', '', '', 0, 1),
(372, '', 'christopher.wongsonegoro-2018@fh.unair.ac.id', '', '', 0, 1),
(373, '', 'reza.utami.wahono-2018@fh.unair.ac.id', '', '', 0, 1),
(374, '', 'cahaya.putri.arieza-2018@fh.unair.ac.id', '', '', 0, 1),
(375, '', 'wahdianan.al.bary-2018@fh.unair.ac.id', '', '', 0, 1),
(376, '', 'felice.natania.safira-2018@fh.unair.ac.id', '', '', 0, 1),
(377, '', 'sirih.zubaidah.takliminatun-2018@fh.unair.ac.id', '', '', 0, 1),
(378, '', 'andika.risqi.vansyah-2018@fh.unair.ac.id', '', '', 0, 1),
(379, '', 'gisca.nur.assyafira-2018@fh.unair.ac.id', '', '', 0, 1),
(380, '', 'nouratama.anugerah.nandyani-2018@fh.unair.ac.id', '', '', 0, 1),
(381, '', 'delfira.rachmawati-2018@fh.unair.ac.id', '', '', 0, 1),
(382, '', 'nabila.aulia.rizki-2018@fh.unair.ac.id', '', '', 0, 1),
(383, '', 'nola.alfiona.kumala-2018@fh.unair.ac.id', '', '', 0, 1),
(384, '', 'khoirunnisa.putri.harnika-2018@fh.unair.ac.id', '', '', 0, 1),
(385, '', 'ervina.dita.harnika-2018@fh.unair.ac.id', '', '', 0, 1),
(386, '', 'millenia.jihan.febriana-2018@fh.unair.ac.id', '', '', 0, 1),
(387, '', 'virda.wildan.syah-2018@fh.unair.ac.id', '', '', 0, 1),
(388, '', 'muchamad.bagus.gatri-2018@fh.unair.ac.id', '', '', 0, 1),
(389, '', 'bayu.andre.ariotomo-2018@fh.unair.ac.id', '', '', 0, 1),
(390, '', 'indah.novianti-2018@fh.unair.ac.id', '', '', 0, 1),
(391, '', 'hasan-2018@fh.unair.ac.id', '', '', 0, 1),
(392, '', 'vini.alifia.widiati-2018@fh.unair.ac.id', '', '', 0, 1),
(393, '', 'joshua.bonar-2018@fh.unair.ac.id', '', '', 0, 1),
(394, '', 'kamilia.mumtazza.putri-2018@fh.unair.ac.id', '', '', 0, 1),
(395, '', 'yanuar.suryadini-2018@fh.unair.ac.id', '', '', 0, 1),
(396, '', 'soegih.rasyad.sriwidyandiyo-2018@fh.unair.ac.id', '', '', 0, 1),
(397, '', 'cresentia.zakia.ramdani-2018@fh.unair.ac.id', '', '', 0, 1),
(398, '', 'rofadan.mina.arsyada-2018@fh.unair.ac.id', '', '', 0, 1),
(399, '', 'yohanes.rafael.samosir-2018@fh.unair.ac.id', '', '', 0, 1),
(400, '', 'thabita.kurnia.putri-2018@fh.unair.ac.id', '', '', 0, 1),
(401, '', 'aldika.cahya.naren-2018@fh.unair.ac.id', '', '', 0, 1),
(402, '', 'arinni.dewi.ambarningrum-2018@fh.unair.ac.id', '', '', 0, 1),
(403, '', 'igfara.yustika.sintadewi-2018@fh.unair.ac.id', '', '', 0, 1),
(404, '', 'aulia.dwi.ramadhanti-2018@fh.unair.ac.id', '', '', 0, 1),
(405, '', 'dinda.putri.laksinta-2018@fh.unair.ac.id', '', '', 0, 1),
(406, '', 'marsa.maghfirah.zahrah-2018@fh.unair.ac.id', '', '', 0, 1),
(407, '', 'mahesa.panji.suropati-2018@fh.unair.ac.id', '', '', 0, 1),
(408, '', 'nadia.kamilah.malfadeskya-2018@fh.unair.ac.id', '', '', 0, 1),
(409, '', 'rizal.kurniawan-2018@fh.unair.ac.id', '', '', 0, 1),
(410, '', 'muhammad.rifky.vizzardhy-2018@fh.unair.ac.id', '', '', 0, 1),
(411, '', 'muhammad.naufalurridho.f-2018@fh.unair.ac.id', '', '', 0, 1),
(412, '', 'daniel.glori.dias-2018@fh.unair.ac.id', '', '', 0, 1),
(413, '', 'afina.luthfi.tsaniya-2018@fh.unair.ac.id', '', '', 0, 1),
(414, '', 'dio.arsylan.ade-2018@fh.unair.ac.id', '', '', 0, 1),
(415, '', 'swesty.medhilia.puteri-2018@fh.unair.ac.id', '', '', 0, 1),
(416, '', 'resita.kesumawardani-2018@fh.unair.ac.id', '', '', 0, 1),
(417, '', 'jasmine.putri.sabillah-2018@fh.unair.ac.id', '', '', 0, 1),
(418, '', 'ida.nur.azizah-2018@fh.unair.ac.id', '', '', 0, 1),
(419, '', 'jihan.nahdah.rachmahdani-2018@fh.unair.ac.id', '', '', 0, 1),
(420, '', 'hatfina.amajida-2018@fh.unair.ac.id', '', '', 0, 1),
(421, '', 'putra.ahnaf.faadihilah-2018@fh.unair.ac.id', '', '', 0, 1),
(422, '', 'farah.tania.nurulizzaty-2018@fh.unair.ac.id', '', '', 0, 1),
(423, '', 'avan.oktabrian.buchori-2018@fh.unair.ac.id', '', '', 0, 1),
(424, '', 'mochammad.geraldieanan-2018@fh.unair.ac.id', '', '', 0, 1),
(425, '', 'fernanda.nadhif-2018@fh.unair.ac.id', '', '', 0, 1),
(426, '', 'moh.maulana.dafa-2018@fh.unair.ac.id', '', '', 0, 1),
(427, '', 'syafirah.khansa.aribah-2018@fh.unair.ac.id', '', '', 0, 1),
(428, '', 'raissa.putri.rafin-2018@fh.unair.ac.id', '', '', 0, 1),
(429, '', 'puteri.ayu.lestari-2018@fh.unair.ac.id', '', '', 0, 1),
(430, '', 'andi.achmad.putranto-2018@fh.unair.ac.id', '', '', 0, 1),
(431, '', 'dhinda.norlita.febriola-2018@fh.unair.ac.id', '', '', 0, 1),
(432, '', 'arief.cholid.garamah-2018@fh.unair.ac.id', '', '', 0, 1),
(433, '', 'auliya.cistaraja.javier-2018@fh.unair.ac.id', '', '', 0, 1),
(434, '', 'christian.kenny.gunawan-2018@fh.unair.ac.id', '', '', 0, 1),
(435, '', 'enditianto.abimanyu-2018@fh.unair.ac.id', '', '', 0, 1),
(436, '', 'adam.wildan.mubarak-2018@fh.unair.ac.id', '', '', 0, 1),
(437, '', 'trischa.galuh.krishnasanti-2018@fh.unair.ac.id', '', '', 0, 1),
(438, '', 'mayang.hatika-2018@fh.unair.ac.id', '', '', 0, 1),
(439, '', 'normandyarsa.rahman-2018@fh.unair.ac.id', '', '', 0, 1),
(440, '', 'samuel.calvin.hasiando-2018@fh.unair.ac.id', '', '', 0, 1),
(441, '', 'rizky.ihza.priatmaja-2018@fh.unair.ac.id', '', '', 0, 1),
(442, '', 'aszahra.sri.nugraheni-2018@fh.unair.ac.id', '', '', 0, 1),
(443, '', 'hafidah.nur.epsteinnia-2018@fh.unair.ac.id', '', '', 0, 1),
(444, '', 'quinta.nabila.xeonita-2018@fh.unair.ac.id', '', '', 0, 1),
(445, '', 'nabilah.khansa.aribah-2018@fh.unair.ac.id', '', '', 0, 1),
(446, '', 'rahmat.dwi.agafi-2018@fh.unair.ac.id', '', '', 0, 1),
(447, '', 'dimas.tri.sunu-2018@fh.unair.ac.id', '', '', 0, 1),
(448, '', 'ahmad.dhandy.kurnia-2018@fh.unair.ac.id', '', '', 0, 1),
(449, '', 'felia.ramadhanty.waluyo-2018@fh.unair.ac.id', '', '', 0, 1),
(450, '', 'ardhiani.chrisnia.nugraheni-2018@fh.unair.ac.id', '', '', 0, 1),
(451, '', 'rafly.rachmananda.daffani-2018@fh.unair.ac.id', '', '', 0, 1),
(452, '', 'raquel.millenia.ramadhan-2018@fh.unair.ac.id', '', '', 0, 1),
(453, '', 'nur.ichsan.wira-2018@fh.unair.ac.id', '', '', 0, 1),
(454, '', 'rafi.adiyatma.wibawa-2018@fh.unair.ac.id', '', '', 0, 1),
(455, '', 'shafira.putri.kusumaningayu-2018@fh.unair.ac.id', '', '', 0, 1),
(456, '', 'muhammad.arungga.bastarsyah-2018@fh.unair.ac.id', '', '', 0, 1),
(457, '', 'annisa.regita.cahyani-2018@fh.unair.ac.id', '', '', 0, 1),
(458, '', 'ardhana.christian.noventri-2018@fh.unair.ac.id', '', '', 0, 1),
(459, '', 'gede.dimas.bayu-2018@fh.unair.ac.id', '', '', 0, 1),
(460, '', 'dina.amini-2018@fh.unair.ac.id', '', '', 0, 1),
(461, '', 'namira.alina.izan-2018@fh.unair.ac.id', '', '', 0, 1),
(462, '', 'bima.angela-2018@fh.unair.ac.id', '', '', 0, 1),
(463, '', 'istikhomah-2018@fh.unair.ac.id', '', '', 0, 1),
(464, '', 'alfinda.putri.nur-2018@fh.unair.ac.id', '', '', 0, 1),
(465, '', 'revy.danuartha-2018@fh.unair.ac.id', '', '', 0, 1),
(466, '', 'sinta.ratvitia.herlisah-2018@fh.unair.ac.id', '', '', 0, 1),
(467, '', 'kadek.anda.gangga-2018@fh.unair.ac.id', '', '', 0, 1),
(468, '', 'bryan.axel.susanto-2018@fh.unair.ac.id', '', '', 0, 1),
(469, '', 'viga.qonita.ulinuha-2018@fh.unair.ac.id', '', '', 0, 1),
(470, '', 'm.rahmandio.novan.pratama-2018@fh.unair.ac.id', '', '', 0, 1),
(471, '', 'sherin.nadya-2018@fh.unair.ac.id', '', '', 0, 1),
(472, '', 'patricia.inge.felany-2018@fh.unair.ac.id', '', '', 0, 1),
(473, '', 'muhammad.ramzy.subakti-2018@fh.unair.ac.id', '', '', 0, 1),
(474, '', 'retno.hadiningtyas-2018@fh.unair.ac.id', '', '', 0, 1),
(475, '', 'maverick.gilang.pranyoto-2018@fh.unair.ac.id', '', '', 0, 1),
(476, '', 'nabiyla.nadhir-2018@fh.unair.ac.id', '', '', 0, 1),
(477, '', 'athalia.salsabila.ramadhani-2018@fh.unair.ac.id', '', '', 0, 1),
(478, '', 'nataya.afa.ghaziya-2018@fh.unair.ac.id', '', '', 0, 1),
(479, '', 'dinda.pranata.tri-2018@fh.unair.ac.id', '', '', 0, 1),
(480, '', 'farid.fan.siddik-2018@fh.unair.ac.id', '', '', 0, 1),
(481, '', 'alifiana.tanasya.widiyanti-2018@fh.unair.ac.id', '', '', 0, 1),
(482, '', 'wahyu.waullilamri.kurniawan-2018@fh.unair.ac.id', '', '', 0, 1),
(483, '', 'nur.indah.apriani-2018@fh.unair.ac.id', '', '', 0, 1),
(484, '', 'hamdani.ilham-2018@fh.unair.ac.id', '', '', 0, 1),
(485, '', 'fikri.akbar-2018@fh.unair.ac.id', '', '', 0, 1),
(486, '', 'dia.aisa.amelda-2018@fh.unair.ac.id', '', '', 0, 1),
(487, '', 'tazkia.nanini-2018@fh.unair.ac.id', '', '', 0, 1),
(488, '', 'astrid.aurelia.windiputri-2018@fh.unair.ac.id', '', '', 0, 1),
(489, '', 'gd.arya.prameswara-2018@fh.unair.ac.id', '', '', 0, 1),
(490, '', 'donald.hamonangan.siregar-2018@fh.unair.ac.id', '', '', 0, 1),
(491, '', 'alfin.ramadhani.maulana-2018@fh.unair.ac.id', '', '', 0, 1),
(492, '', 'john.roberto.sampe-2018@fh.unair.ac.id', '', '', 0, 1),
(493, '', 'kensita.aurora.hartono-2018@fh.unair.ac.id', '', '', 0, 1),
(494, '', 'yoshe.agatha.patricia-2018@fh.unair.ac.id', '', '', 0, 1),
(495, '', 'anggia.rettrisunz.p.i.m.panjaitan-2018@fh.unair.ac', '', '', 0, 1),
(496, '', 'ganesha.amrina.wijaya-2018@fh.unair.ac.id', '', '', 0, 1),
(497, '', 'yolanda.hosana-2018@fh.unair.ac.id', '', '', 0, 1),
(498, '', 'josi.edward.lakburlawal-2018@fh.unair.ac.id', '', '', 0, 1),
(499, '', 'aditya.beriyan.gusti-2018@fh.unair.ac.id', '', '', 0, 1),
(500, '', 'alya.azalia.permata-2018@fh.unair.ac.id', '', '', 0, 1),
(501, '', 'bima.satriojati-2018@fh.unair.ac.id', '', '', 0, 1),
(502, '', 'hasbi.ilman.maulana-2018@fh.unair.ac.id', '', '', 0, 1),
(503, '', 'muhammad.hafidz.rafiansyah-2018@fh.unair.ac.id', '', '', 0, 1),
(504, '', 'steven.jonathan.suhardi-2018@fh.unair.ac.id', '', '', 0, 1),
(505, '', 'kurnia.widianto-2018@fh.unair.ac.id', '', '', 0, 1),
(506, '', 'pamus.sukma.yudana-2018@fh.unair.ac.id', '', '', 0, 1),
(507, '', 'dzaka.ananda.hidayat-2018@fh.unair.ac.id', '', '', 0, 1),
(508, '', 'antonio.armando.ramadhani-2018@fh.unair.ac.id', '', '', 0, 1),
(509, '', 'aldi.nakita.firdaus-2018@fh.unair.ac.id', '', '', 0, 1),
(510, '', 'khofifah.nura.adila-2018@fh.unair.ac.id', '', '', 0, 1),
(511, '', 'givana.adhytia.firananda-2018@fh.unair.ac.id', '', '', 0, 1),
(512, '', 'raden.maheswira.rifki-2018@fh.unair.ac.id', '', '', 0, 1),
(513, '', 'rheynena.suryo.brahmandari-2018@fh.unair.ac.id', '', '', 0, 1),
(514, '', 'adila.yulistia-2018@fh.unair.ac.id', '', '', 0, 1),
(515, '', 'raissa.farahani.ramadhan-2018@fh.unair.ac.id', '', '', 0, 1),
(516, '', 'nydia.anamika-2018@fh.unair.ac.id', '', '', 0, 1),
(517, '', 'nandani.bayu.prasanti-2018@fh.unair.ac.id', '', '', 0, 1),
(518, '', 'abdullah.haikal.muhammad-2018@fh.unair.ac.id', '', '', 0, 1),
(519, '', 'farah.fadhila.amany-2018@fh.unair.ac.id', '', '', 0, 1),
(520, '', 'dwiky.maulana.akbar-2018@fh.unair.ac.id', '', '', 0, 1),
(521, '', 'tia.de.sangkai-2018@fh.unair.ac.id', '', '', 0, 1),
(522, '', 'simon.kharisma.jonathan-2018@fh.unair.ac.id', '', '', 0, 1),
(523, '', 'nadya.hasya.fadlih-2018@fh.unair.ac.id', '', '', 0, 1),
(524, '', 'iddo.noor.ramadhan-2018@fh.unair.ac.id', '', '', 0, 1),
(525, '', 'muhamad.zikri.ebrahimi-2018@fh.unair.ac.id', '', '', 0, 1),
(526, '', 'alvin.limy-2018@fh.unair.ac.id', '', '', 0, 1),
(527, '', 'dita.elvia.kusuma-2018@fh.unair.ac.id', '', '', 0, 1),
(528, '', 'umi.masnur.adniyah-2018@fh.unair.ac.id', '', '', 0, 1),
(529, '', 'nisrina.rahma.berlianna-2018@fh.unair.ac.id', '', '', 0, 1),
(530, '', 'nadiva.aura.aisyah-2018@fh.unair.ac.id', '', '', 0, 1),
(531, '', 'claudette.adelia-2018@fh.unair.ac.id', '', '', 0, 1),
(532, '', 'diajeng.woro.andini-2018@fh.unair.ac.id', '', '', 0, 1),
(533, '', 'dinta.febriawanti-2018@fh.unair.ac.id', '', '', 0, 1),
(534, '', 'deddy.kusuma.wardana-2018@fh.unair.ac.id', '', '', 0, 1),
(535, '', 'dhea.selfiana.putri-2018@fh.unair.ac.id', '', '', 0, 1),
(536, '', 'nanda.dwi.ivanka-2018@fh.unair.ac.id', '', '', 0, 1),
(537, '', 'ayu.sasmita-2018@fh.unair.ac.id', '', '', 0, 1),
(538, '', 'urai.ainun.nafis-2018@fh.unair.ac.id', '', '', 0, 1),
(539, '', 'zati.rizqi.muhammad-2018@fh.unair.ac.id', '', '', 0, 1),
(540, '', 'vira.ayu.aprilia-2018@fh.unair.ac.id', '', '', 0, 1),
(541, '', 'nanda.alif.prasedella-2018@fh.unair.ac.id', '', '', 0, 1),
(542, '', 'anggi.audina.ayu-2018@fh.unair.ac.id', '', '', 0, 1),
(543, '', 'muhammad.djat.kusumaningrat-2018@fh.unair.ac.id', '', '', 0, 1),
(544, '', 'arinie.erlita.cholis-2018@fh.unair.ac.id', '', '', 0, 1),
(545, '', 'asmanada.khairrunnissa.wibowo-2018@fh.unair.ac.id', '', '', 0, 1),
(546, '', 'hilda.rizma.amalia-2018@fh.unair.ac.id', '', '', 0, 1),
(547, '', 'rosi.ambaretha-2018@fh.unair.ac.id', '', '', 0, 1),
(548, '', 'dyah.tantri.lingga-2018@fh.unair.ac.id', '', '', 0, 1),
(549, '', 'melenia.fitri.nur-2018@fh.unair.ac.id', '', '', 0, 1),
(550, '', 'baiq.elma.purnamawadita-2019@fh.unair.ac.id', '', '', 0, 1),
(551, '', 'rahajeng.dzakiyya.ikbar-2019@fh.unair.ac.id', '', '', 0, 1),
(552, '', 'yohanes.adryan.lamury-2019@fh.unair.ac.id', '', '', 0, 1),
(553, '', 'yuarini.dini.hidayah-2019@fh.unair.ac.id', '', '', 0, 1),
(554, '', 'nenes.renata-2019@fh.unair.ac.id', '', '', 0, 1),
(555, '', 'suci.maharani-2019@fh.unair.ac.id', '', '', 0, 1),
(556, '', 'nur.endah.puspitasari-2019@fh.unair.ac.id', '', '', 0, 1),
(557, '', 'avika.inta.nurfadila-2019@fh.unair.ac.id', '', '', 0, 1),
(558, '', 'feri.kurniawan-2019@fh.unair.ac.id', '', '', 0, 1),
(559, '', 'elsa.ardhilia.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(560, '', 'tiara.astri.nordianti-2019@fh.unair.ac.id', '', '', 0, 1),
(561, '', 'intan.amalia.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(562, '', 'isyraf.rizqi.athaillah-2019@fh.unair.ac.id', '', '', 0, 1),
(563, '', 'fera.firnanda-2019@fh.unair.ac.id', '', '', 0, 1),
(564, '', 'nindy.ramenda.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(565, '', 'adimas.kembarari.mukti-2019@fh.unair.ac.id', '', '', 0, 1),
(566, '', 'adelya.iskak.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(567, '', 'muhamad.yovi-2019@fh.unair.ac.id', '', '', 0, 1),
(568, '', 'pamela.putri.koraag-2019@fh.unair.ac.id', '', '', 0, 1),
(569, '', 'dian.alodia.diva-2019@fh.unair.ac.id', '', '', 0, 1),
(570, '', 'sheilla.aurell.zhafirah-2019@fh.unair.ac.id', '', '', 0, 1),
(571, '', 'seftiyani.rizka.suatan-2019@fh.unair.ac.id', '', '', 0, 1),
(572, '', 'jennifer.moniq.sutanto-2019@fh.unair.ac.id', '', '', 0, 1),
(573, '', 'siti.nurul.fadhilla-2019@fh.unair.ac.id', '', '', 0, 1),
(574, '', 'fransiska.yulia.rahmadtika-2019@fh.unair.ac.id', '', '', 0, 1),
(575, '', 'ursula.paramitha.ramadini-2019@fh.unair.ac.id', '', '', 0, 1),
(576, '', 'iqbal.umar.effendi-2019@fh.unair.ac.id', '', '', 0, 1),
(577, '', 'dio.faizal.lobby-2019@fh.unair.ac.id', '', '', 0, 1),
(578, '', 'khansa.kamilah.mahdiyani-2019@fh.unair.ac.id', '', '', 0, 1),
(579, '', 'selvia.ananda.tri-2019@fh.unair.ac.id', '', '', 0, 1),
(580, '', 'lucke.putri.anjani-2019@fh.unair.ac.id', '', '', 0, 1),
(581, '', 'zanuba.rachmawati.utomo-2019@fh.unair.ac.id', '', '', 0, 1),
(582, '', 'fanni.amara.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(583, '', 'st.maryam.syafarina-2019@fh.unair.ac.id', '', '', 0, 1),
(584, '', 'venska.salsabila.labaika-2019@fh.unair.ac.id', '', '', 0, 1),
(585, '', 'laras.dwi.oktavia-2019@fh.unair.ac.id', '', '', 0, 1),
(586, '', 'dimas.arya.wiratamma-2019@fh.unair.ac.id', '', '', 0, 1),
(587, '', 'zenith.ikhsan.ariqi-2019@fh.unair.ac.id', '', '', 0, 1),
(588, '', 'mirani.sucisia.dewi-2019@fh.unair.ac.id', '', '', 0, 1),
(589, '', 'jimly.ashiddiqy-2019@fh.unair.ac.id', '', '', 0, 1),
(590, '', 'nabila.jasmine.ardyanto-2019@fh.unair.ac.id', '', '', 0, 1),
(591, '', 'delvino.aldy.djiwandono-2019@fh.unair.ac.id', '', '', 0, 1),
(592, '', 'firanti.rohadatul.aisy-2019@fh.unair.ac.id', '', '', 0, 1),
(593, '', 'fithrotul.ainiah-2019@fh.unair.ac.id', '', '', 0, 1),
(594, '', 'azzahra.nabila.nurfirdaus-2019@fh.unair.ac.id', '', '', 0, 1),
(595, '', 'm.adib.akmal.hamdi-2019@fh.unair.ac.id', '', '', 0, 1),
(596, '', 'dean.rizqullah.risdaryanto-2019@fh.unair.ac.id', '', '', 0, 1),
(597, '', 'alfi.sarifah.malau-2019@fh.unair.ac.id', '', '', 0, 1),
(598, '', 'muhammad.haikal.ghiffari-2019@fh.unair.ac.id', '', '', 0, 1),
(599, '', 'felicia.tanalina.ylma-2019@fh.unair.ac.id', '', '', 0, 1),
(600, '', 'laila.maghfira.andaretna-2019@fh.unair.ac.id', '', '', 0, 1),
(601, '', 'ardani.raihan.utomo-2019@fh.unair.ac.id', '', '', 0, 1),
(602, '', 'jalu.adinata-2019@fh.unair.ac.id', '', '', 0, 1),
(603, '', 'rateh.kusumaningseh-2019@fh.unair.ac.id', '', '', 0, 1),
(604, '', 'nurul.zavira-2019@fh.unair.ac.id', '', '', 0, 1),
(605, '', 'eghilia.heavy.mourita-2019@fh.unair.ac.id', '', '', 0, 1),
(606, '', 'yulia.wulansari-2019@fh.unair.ac.id', '', '', 0, 1),
(607, '', 'kirana.pandu.larashatie-2019@fh.unair.ac.id', '', '', 0, 1),
(608, '', 'moch.fakhrul.hadjid-2019@fh.unair.ac.id', '', '', 0, 1),
(609, '', 'nadila.azzahra.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(610, '', 'sayyidah.annuril.laily-2019@fh.unair.ac.id', '', '', 0, 1),
(611, '', 'avany.mahmudah-2019@fh.unair.ac.id', '', '', 0, 1),
(612, '', 'tessa.ardhia.maheswari-2019@fh.unair.ac.id', '', '', 0, 1),
(613, '', 'cindy.tatia.amallia-2019@fh.unair.ac.id', '', '', 0, 1),
(614, '', 'zefanya.julietha.lalopua-2019@fh.unair.ac.id', '', '', 0, 1),
(615, '', 'anna.maria.herpuspaningtyas-2019@fh.unair.ac.id', '', '', 0, 1),
(616, '', 'tahnia-2019@fh.unair.ac.id', '', '', 0, 1),
(617, '', 'lailatul.komaria-2019@fh.unair.ac.id', '', '', 0, 1),
(618, '', 'anessa.nurfadilla.subagio-2019@fh.unair.ac.id', '', '', 0, 1),
(619, '', 'ali.mannagalli-2019@fh.unair.ac.id', '', '', 0, 1),
(620, '', 'gilar.andika.maulana-2019@fh.unair.ac.id', '', '', 0, 1),
(621, '', 'zulfitrah-2019@fh.unair.ac.id', '', '', 0, 1),
(622, '', 'safirila.asri.wijayati-2019@fh.unair.ac.id', '', '', 0, 1),
(623, '', 'ariel.ciptadi.darmawan-2019@fh.unair.ac.id', '', '', 0, 1),
(624, '', 'ridho.budaya.septarianto-2019@fh.unair.ac.id', '', '', 0, 1),
(625, '', 'alifya.syifa.argya-2019@fh.unair.ac.id', '', '', 0, 1),
(626, '', 'humaditya.pradigta.abdi-2019@fh.unair.ac.id', '', '', 0, 1),
(627, '', 'muhammad.faisal.hilmi-2019@fh.unair.ac.id', '', '', 0, 1),
(628, '', 'alfian.ardiansyah-2019@fh.unair.ac.id', '', '', 0, 1),
(629, '', 'rucha.abe.yuliniar-2019@fh.unair.ac.id', '', '', 0, 1),
(630, '', 'devana.oktari-2019@fh.unair.ac.id', '', '', 0, 1),
(631, '', 'i.gede.dharma.mahen-2019@fh.unair.ac.id', '', '', 0, 1),
(632, '', 'lisa.dwi.andini-2019@fh.unair.ac.id', '', '', 0, 1),
(633, '', 'atiyyah.fitriyah-2019@fh.unair.ac.id', '', '', 0, 1),
(634, '', 'gusti.aditya.mahesa-2019@fh.unair.ac.id', '', '', 0, 1),
(635, '', 'mohammad.miroj.ardyansyah-2019@fh.unair.ac.id', '', '', 0, 1),
(636, '', 'saddam.alwan.sakti-2019@fh.unair.ac.id', '', '', 0, 1),
(637, '', 'adnan.kashogi-2019@fh.unair.ac.id', '', '', 0, 1),
(638, '', 'regi.leonardus.nathanael-2019@fh.unair.ac.id', '', '', 0, 1),
(639, '', 'talia.alfirna.maulida-2019@fh.unair.ac.id', '', '', 0, 1),
(640, '', 'viranissa.afa.adira-2019@fh.unair.ac.id', '', '', 0, 1),
(641, '', 'saffana.azzahra-2019@fh.unair.ac.id', '', '', 0, 1),
(642, '', 'hanna.rosyidah-2019@fh.unair.ac.id', '', '', 0, 1),
(643, '', 'gaby.mallinda.nena-2019@fh.unair.ac.id', '', '', 0, 1),
(644, '', 'wella.mareta.nanda-2019@fh.unair.ac.id', '', '', 0, 1),
(645, '', 'alrizka.putra.kusuma-2019@fh.unair.ac.id', '', '', 0, 1),
(646, '', 'ivan.maulana.pratama-2019@fh.unair.ac.id', '', '', 0, 1),
(647, '', 'aurel.muhammad.abdi-2019@fh.unair.ac.id', '', '', 0, 1),
(648, '', 'rachma.firdayanti-2019@fh.unair.ac.id', '', '', 0, 1),
(649, '', 'ghea.aurellia-2019@fh.unair.ac.id', '', '', 0, 1),
(650, '', 'rizky.maulana.hakim-2019@fh.unair.ac.id', '', '', 0, 1),
(651, '', 'balqis.nabilah.yeni-2019@fh.unair.ac.id', '', '', 0, 1),
(652, '', 'monika.reswara.kartika-2019@fh.unair.ac.id', '', '', 0, 1),
(653, '', 'boby.brillian.ilham-2019@fh.unair.ac.id', '', '', 0, 1),
(654, '', 'alviani.mutiara.sari-2019@fh.unair.ac.id', '', '', 0, 1),
(655, '', 'alya.ariani.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(656, '', 'arlitasya.ramadhani.sutanto-2019@fh.unair.ac.id', '', '', 0, 1),
(657, '', 'wirayati.nurjana.pangulu-2019@fh.unair.ac.id', '', '', 0, 1),
(658, '', 'muhammad.okhikhul.islam-2019@fh.unair.ac.id', '', '', 0, 1),
(659, '', 'saddam.saragih-2019@fh.unair.ac.id', '', '', 0, 1),
(660, '', 'galih.chan.dewi-2019@fh.unair.ac.id', '', '', 0, 1),
(661, '', 'ardhan.bismamukti.mashury-2019@fh.unair.ac.id', '', '', 0, 1),
(662, '', 'muhammad.falah.dawanis-2019@fh.unair.ac.id', '', '', 0, 1),
(663, '', 'jazilah.astiti-2019@fh.unair.ac.id', '', '', 0, 1),
(664, '', 'mazaya.aumy.khairana-2019@fh.unair.ac.id', '', '', 0, 1),
(665, '', 'bisma.ainul.yakin-2019@fh.unair.ac.id', '', '', 0, 1),
(666, '', 'robertus.derivio.sartono-2019@fh.unair.ac.id', '', '', 0, 1),
(667, '', 'aldiansyah.pratama-2019@fh.unair.ac.id', '', '', 0, 1),
(668, '', 'bayu.satya.ndharma-2019@fh.unair.ac.id', '', '', 0, 1),
(669, '', 'james.faizal.budiono-2019@fh.unair.ac.id', '', '', 0, 1),
(670, '', 'betsy.prajna.paramita-2019@fh.unair.ac.id', '', '', 0, 1),
(671, '', 'santika.devani.zabitha-2019@fh.unair.ac.id', '', '', 0, 1),
(672, '', 'juan.safero.rianda-2019@fh.unair.ac.id', '', '', 0, 1),
(673, '', 'gabriella.ma.monica-2019@fh.unair.ac.id', '', '', 0, 1),
(674, '', 'adna.farras.sahasika-2019@fh.unair.ac.id', '', '', 0, 1),
(675, '', 'novania.aulia.rahma-2019@fh.unair.ac.id', '', '', 0, 1),
(676, '', 'muhammad.wildan.kahfi-2019@fh.unair.ac.id', '', '', 0, 1),
(677, '', 'helena.amadea.loudia-2019@fh.unair.ac.id', '', '', 0, 1),
(678, '', 'dea.safira.setiono-2019@fh.unair.ac.id', '', '', 0, 1),
(679, '', 'zaizafun.lathifah-2019@fh.unair.ac.id', '', '', 0, 1),
(680, '', 'irana.alya.raihanah-2019@fh.unair.ac.id', '', '', 0, 1),
(681, '', 'hilmy.rumi.rahman-2019@fh.unair.ac.id', '', '', 0, 1),
(682, '', 'liza.nurhalizah-2019@fh.unair.ac.id', '', '', 0, 1),
(683, '', 'laurentius.kevin.christian-2019@fh.unair.ac.id', '', '', 0, 1),
(684, '', 'theo.jornada.natanael-2019@fh.unair.ac.id', '', '', 0, 1),
(685, '', 'muhammad.yulian.rizki-2019@fh.unair.ac.id', '', '', 0, 1),
(686, '', 'rayfa.camelia.parameswari-2019@fh.unair.ac.id', '', '', 0, 1),
(687, '', 'shafa.salsabilla.agrijustitia-2019@fh.unair.ac.id', '', '', 0, 1),
(688, '', 'ika.putri.rahayu-2019@fh.unair.ac.id', '', '', 0, 1),
(689, '', 'nunung.widiyanti-2019@fh.unair.ac.id', '', '', 0, 1),
(690, '', 'zulfan.hendika.ardi-2019@fh.unair.ac.id', '', '', 0, 1),
(691, '', 'cantika.anugerahanani-2019@fh.unair.ac.id', '', '', 0, 1),
(692, '', 'azmil.muftakhor-2019@fh.unair.ac.id', '', '', 0, 1),
(693, '', 'udiyani.afira.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(694, '', 'aji.setyo.mukti-2019@fh.unair.ac.id', '', '', 0, 1),
(695, '', 'mohamad.renaldi-2019@fh.unair.ac.id', '', '', 0, 1),
(696, '', 'hidayatul.sabrina-2019@fh.unair.ac.id', '', '', 0, 1),
(697, '', 'andini.mei.cahya-2019@fh.unair.ac.id', '', '', 0, 1),
(698, '', 'fikkrie.firman.ardiansyah-2019@fh.unair.ac.id', '', '', 0, 1),
(699, '', 'muhammad.rafi.satya-2019@fh.unair.ac.id', '', '', 0, 1),
(700, '', 'iqlimma.afa.eylisa-2019@fh.unair.ac.id', '', '', 0, 1),
(701, '', 'pradnya.wicaksana-2019@fh.unair.ac.id', '', '', 0, 1),
(702, '', 'joshua.giorgio.chan-2019@fh.unair.ac.id', '', '', 0, 1),
(703, '', 'alex.wijaya-2019@fh.unair.ac.id', '', '', 0, 1),
(704, '', 'syahrul.ramadhan-2019@fh.unair.ac.id', '', '', 0, 1),
(705, '', 'putu.sandhya.wiradharma-2019@fh.unair.ac.id', '', '', 0, 1),
(706, '', 'rahadyan.fajar.harris-2019@fh.unair.ac.id', '', '', 0, 1),
(707, '', 'intan.rivinia.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(708, '', 'surya.harya.nugraha-2019@fh.unair.ac.id', '', '', 0, 1),
(709, '', 'bagus.nugroho-2019@fh.unair.ac.id', '', '', 0, 1),
(710, '', 'priscilla.mathilda.hanami-2019@fh.unair.ac.id', '', '', 0, 1),
(711, '', 'muhammad.fariz.adhyaksa-2019@fh.unair.ac.id', '', '', 0, 1),
(712, '', 'thessarca.az.zahra-2019@fh.unair.ac.id', '', '', 0, 1),
(713, '', 'axel.cross-2019@fh.unair.ac.id', '', '', 0, 1),
(714, '', 'hamdan.alif.darmawan-2019@fh.unair.ac.id', '', '', 0, 1),
(715, '', 'michael.christian.budianto-2019@fh.unair.ac.id', '', '', 0, 1),
(716, '', 'anissa.mitasyasqia-2019@fh.unair.ac.id', '', '', 0, 1),
(717, '', 'anita.maharani.tanusaputri-2019@fh.unair.ac.id', '', '', 0, 1),
(718, '', 'rahardian.satya.mandala-2019@fh.unair.ac.id', '', '', 0, 1),
(719, '', 'dinda.ayu.ramadhani-2019@fh.unair.ac.id', '', '', 0, 1),
(720, '', 'dinda.chomariyah.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(721, '', 'indira.fe.winadine-2019@fh.unair.ac.id', '', '', 0, 1),
(722, '', 'agfar.achwandy-2019@fh.unair.ac.id', '', '', 0, 1),
(723, '', 'i.gusti.ngurah.anantha-2019@fh.unair.ac.id', '', '', 0, 1),
(724, '', 'faizal.dwi.hanada-2019@fh.unair.ac.id', '', '', 0, 1),
(725, '', 'rayhan.adhi.pradana-2019@fh.unair.ac.id', '', '', 0, 1),
(726, '', 'desak.ayu.gangga-2019@fh.unair.ac.id', '', '', 0, 1),
(727, '', 'evander-2019@fh.unair.ac.id', '', '', 0, 1),
(728, '', 'azalia.devina.tiffara-2019@fh.unair.ac.id', '', '', 0, 1),
(729, '', 'muhammad.yusuf.sufandy-2019@fh.unair.ac.id', '', '', 0, 1),
(730, '', 'putri.athaya.hen-2019@fh.unair.ac.id', '', '', 0, 1),
(731, '', 'stefania.arshanty.felicia-2019@fh.unair.ac.id', '', '', 0, 1),
(732, '', 'amira.fadia.taquela-2019@fh.unair.ac.id', '', '', 0, 1),
(733, '', 'muhammad.aqil.kamaluddin-2019@fh.unair.ac.id', '', '', 0, 1),
(734, '', 'muhammad.aufa.zaidan-2019@fh.unair.ac.id', '', '', 0, 1),
(735, '', 'nurasyifah.khoirala-2019@fh.unair.ac.id', '', '', 0, 1),
(736, '', 'fadhila.dheanisa-2019@fh.unair.ac.id', '', '', 0, 1),
(737, '', 'mochammad.rifqi.anam-2019@fh.unair.ac.id', '', '', 0, 1),
(738, '', 'amanda.deta.agustinita-2019@fh.unair.ac.id', '', '', 0, 1),
(739, '', 'durratul.hikmah.benga-2019@fh.unair.ac.id', '', '', 0, 1),
(740, '', 'anggraelito.rahmanda.putra-2019@fh.unair.ac.id', '', '', 0, 1),
(741, '', 'sintia.na.dianis-2019@fh.unair.ac.id', '', '', 0, 1),
(742, '', 'sabrina.permata.sari-2019@fh.unair.ac.id', '', '', 0, 1),
(743, '', 'athyra.elmilla.nur-2019@fh.unair.ac.id', '', '', 0, 1),
(744, '', 'hilmy.asis.syafruddin-2019@fh.unair.ac.id', '', '', 0, 1),
(745, '', 'muhamad.agev.dzulfikar-2019@fh.unair.ac.id', '', '', 0, 1),
(746, '', 'faya.maritza.dahayu-2019@fh.unair.ac.id', '', '', 0, 1),
(747, '', 'qanita.indira.justine-2019@fh.unair.ac.id', '', '', 0, 1),
(748, '', 'dinda.ayu.alfiana-2019@fh.unair.ac.id', '', '', 0, 1),
(749, '', 'muhammad.alfariez.dyas-2019@fh.unair.ac.id', '', '', 0, 1),
(750, '', 'angeline.kolopaking-2019@fh.unair.ac.id', '', '', 0, 1),
(751, '', 'thania.ayu.viasmaary-2019@fh.unair.ac.id', '', '', 0, 1),
(752, '', 'wanda.farda.wahdini-2019@fh.unair.ac.id', '', '', 0, 1),
(753, '', 'muhammad.reza.awan-2019@fh.unair.ac.id', '', '', 0, 1),
(754, '', 'stefanus.bagas.adi-2019@fh.unair.ac.id', '', '', 0, 1);
INSERT INTO `voter` (`voter_id`, `name`, `email`, `password`, `attachment`, `send_status`, `is_active`) VALUES
(755, '', 'krisna.mukti.adi-2019@fh.unair.ac.id', '', '', 0, 1),
(756, '', 'rafika.izzatur.rahman-2019@fh.unair.ac.id', '', '', 0, 1),
(757, '', 'viena.yustia.adriani-2019@fh.unair.ac.id', '', '', 0, 1),
(758, '', 'celfilia.devi.ayuningtyas-2019@fh.unair.ac.id', '', '', 0, 1),
(759, '', 'patricia.yessy.davina-2019@fh.unair.ac.id', '', '', 0, 1),
(760, '', 'muhammad.rafli.rifki-2019@fh.unair.ac.id', '', '', 0, 1),
(761, '', 'bernard.nicholas.singarimbun-2019@fh.unair.ac.id', '', '', 0, 1),
(762, '', 'nadhil.putra.fadianto-2019@fh.unair.ac.id', '', '', 0, 1),
(763, '', 'nada.sophia-2019@fh.unair.ac.id', '', '', 0, 1),
(764, '', 'rafli.fathurrahman-2019@fh.unair.ac.id', '', '', 0, 1),
(765, '', 'muhammad.nabil.barasyid-2019@fh.unair.ac.id', '', '', 0, 1),
(766, '', 'yusa.rahman.sanjani-2019@fh.unair.ac.id', '', '', 0, 1),
(767, '', 'mario.febrianto.sukoto-2019@fh.unair.ac.id', '', '', 0, 1),
(768, '', 'latifatur.rokhmah.adhami-2019@fh.unair.ac.id', '', '', 0, 1),
(769, '', 'amiliya.handayani-2019@fh.unair.ac.id', '', '', 0, 1),
(770, '', 'rahadian.bino.wardanu-2019@fh.unair.ac.id', '', '', 0, 1),
(771, '', 'samuel.yobel.christian-2019@fh.unair.ac.id', '', '', 0, 1),
(772, '', 'raymond.jonathan-2019@fh.unair.ac.id', '', '', 0, 1),
(773, '', 'raditya.puji.wicaksana-2019@fh.unair.ac.id', '', '', 0, 1),
(774, '', 'harven.filippo.taufik-2019@fh.unair.ac.id', '', '', 0, 1),
(775, '', 'aulia.nabila.rachman-2019@fh.unair.ac.id', '', '', 0, 1),
(776, '', 'maria.mardhotillah.masleham-2019@fh.unair.ac.id', '', '', 0, 1),
(777, '', 'naya.aulia.zulfa-2019@fh.unair.ac.id', '', '', 0, 1),
(778, '', 'monza.riviero.harissa-2019@fh.unair.ac.id', '', '', 0, 1),
(779, '', 'albertus.redy.gunadi-2019@fh.unair.ac.id', '', '', 0, 1),
(780, '', 'muhammad.almer.putera-2019@fh.unair.ac.id', '', '', 0, 1),
(781, '', 'esperanza.antonia.fransiska-2019@fh.unair.ac.id', '', '', 0, 1),
(782, '', 'ariel.emilio.susilo-2019@fh.unair.ac.id', '', '', 0, 1),
(783, '', 'muhamad.ridho-2019@fh.unair.ac.id', '', '', 0, 1),
(784, '', 'jesslyn.ephanie-2019@fh.unair.ac.id', '', '', 0, 1),
(785, '', 'mohamad.ramdhani.satriawan-2019@fh.unair.ac.id', '', '', 0, 1),
(786, '', 'kresna.murti.aron-2019@fh.unair.ac.id', '', '', 0, 1),
(787, '', 'kevinanda.putra.imantaka-2019@fh.unair.ac.id', '', '', 0, 1),
(788, '', 'istianah-2019@fh.unair.ac.id', '', '', 0, 1),
(789, '', 'muhammad.rioviano-2019@fh.unair.ac.id', '', '', 0, 1),
(790, '', 'terra.afandaniarto-2019@fh.unair.ac.id', '', '', 0, 1),
(791, '', 'annisa.aqielah.harris-2019@fh.unair.ac.id', '', '', 0, 1),
(792, '', 'rayyan.bawazir-2019@fh.unair.ac.id', '', '', 0, 1),
(793, '', 'ellysa.qatrunnada-2019@fh.unair.ac.id', '', '', 0, 1),
(794, '', 'dara.legitayu-2019@fh.unair.ac.id', '', '', 0, 1),
(795, '', 'apriska.widiangela-2019@fh.unair.ac.id', '', '', 0, 1),
(796, '', 'maximilianus.putra.in-2019@fh.unair.ac.id', '', '', 0, 1),
(797, '', 'vina.rahmadhani-2019@fh.unair.ac.id', '', '', 0, 1),
(798, '', 'nanda.alifia.widyadhana-2019@fh.unair.ac.id', '', '', 0, 1),
(799, '', 'alfina.azzarah.bella-2019@fh.unair.ac.id', '', '', 0, 1),
(800, '', 'dwi.alfira.erisca-2019@fh.unair.ac.id', '', '', 0, 1),
(801, '', 'yesenia.kalila.aji-2019@fh.unair.ac.id', '', '', 0, 1),
(802, '', 'desi.fitri.rahayu-2019@fh.unair.ac.id', '', '', 0, 1),
(803, '', 'sellyana.narita.ratih-2019@fh.unair.ac.id', '', '', 0, 1),
(804, '', 'fajar.dwi.ramadhany-2019@fh.unair.ac.id', '', '', 0, 1),
(805, '', 'kurnia.damayanti-2019@fh.unair.ac.id', '', '', 0, 1),
(806, '', 'gerry.arthadi-2019@fh.unair.ac.id', '', '', 0, 1),
(807, '', 'nakita.millenia.putri-2019@fh.unair.ac.id', '', '', 0, 1),
(808, '', 'azzahra.mazaya.khalisah-2020@fh.unair.ac.id', '', '', 0, 1),
(809, '', 'justisia.aura.najwa-2020@fh.unair.ac.id', '', '', 0, 1),
(810, '', 'alexander.dharma.kusuma-2020@fh.unair.ac.id', '', '', 0, 1),
(811, '', 'nicolas.rafael.kreshna-2020@fh.unair.ac.id', '', '', 0, 1),
(812, '', 'adila.nur.fitri-2020@fh.unair.ac.id', '', '', 0, 1),
(813, '', 'gillbert.rayhan-2020@fh.unair.ac.id', '', '', 0, 1),
(814, '', 'marzyadiva.camila.mashudi-2020@fh.unair.ac.id', '', '', 0, 1),
(815, '', 'diva.kelfinta.rayyan-2020@fh.unair.ac.id', '', '', 0, 1),
(816, '', 'raina.atha.syahida-2020@fh.unair.ac.id', '', '', 0, 1),
(817, '', 'cynthia.rosalina-2020@fh.unair.ac.id', '', '', 0, 1),
(818, '', 'erlen.kusuma.emilia-2020@fh.unair.ac.id', '', '', 0, 1),
(819, '', 'dian.rizki.retno-2020@fh.unair.ac.id', '', '', 0, 1),
(820, '', 'sarah.fitriani.widodo-2020@fh.unair.ac.id', '', '', 0, 1),
(821, '', 'mitha.nur.aini-2020@fh.unair.ac.id', '', '', 0, 1),
(822, '', 'fitrillah.i.hi.subur-2020@fh.unair.ac.id', '', '', 0, 1),
(823, '', 'tazkia.sahria.aulia-2020@fh.unair.ac.id', '', '', 0, 1),
(824, '', 'annida.fadilla.fikri-2020@fh.unair.ac.id', '', '', 0, 1),
(825, '', 'elita.kumalasari-2020@fh.unair.ac.id', '', '', 0, 1),
(826, '', 'felicia.angela.prasetyo-2020@fh.unair.ac.id', '', '', 0, 1),
(827, '', 'talita.diva.jacinda-2020@fh.unair.ac.id', '', '', 0, 1),
(828, '', 'hilvia.faradika.sasmi-2020@fh.unair.ac.id', '', '', 0, 1),
(829, '', 'putri.fahrani.fatah-2020@fh.unair.ac.id', '', '', 0, 1),
(830, '', 'abetalita.can.tri-2020@fh.unair.ac.id', '', '', 0, 1),
(831, '', 'ananda.mustika.prameswari-2020@fh.unair.ac.id', '', '', 0, 1),
(832, '', 'marwa.wardatul.chamro-2020@fh.unair.ac.id', '', '', 0, 1),
(833, '', 'zulfa.nabila.qonita-2020@fh.unair.ac.id', '', '', 0, 1),
(834, '', 'emeralda.calista.azaria-2020@fh.unair.ac.id', '', '', 0, 1),
(835, '', 'fransisca.ella.tri-2020@fh.unair.ac.id', '', '', 0, 1),
(836, '', 'arya.alfiansyah-2020@fh.unair.ac.id', '', '', 0, 1),
(837, '', 'firda.mauliyana-2020@fh.unair.ac.id', '', '', 0, 1),
(838, '', 'sari.asih.sejati-2020@fh.unair.ac.id', '', '', 0, 1),
(839, '', 'putu.angelika.berlyanta-2020@fh.unair.ac.id', '', '', 0, 1),
(840, '', 'muhammad.ichsan.sani-2020@fh.unair.ac.id', '', '', 0, 1),
(841, '', 'ahmad.ajaya.abdi-2020@fh.unair.ac.id', '', '', 0, 1),
(842, '', 'jonathan.brillian.santoso-2020@fh.unair.ac.id', '', '', 0, 1),
(843, '', 'muhammad.dafa.bayu-2020@fh.unair.ac.id', '', '', 0, 1),
(844, '', 'bagus.raditya.parakitri-2020@fh.unair.ac.id', '', '', 0, 1),
(845, '', 'inni.maratus.soleha-2020@fh.unair.ac.id', '', '', 0, 1),
(846, '', 'herpandu.hadiwibowo-2020@fh.unair.ac.id', '', '', 0, 1),
(847, '', 'arya.raditya.tjahjono-2020@fh.unair.ac.id', '', '', 0, 1),
(848, '', 'jean.arya.putra-2020@fh.unair.ac.id', '', '', 0, 1),
(849, '', 'gisela.keyla.mathea-2020@fh.unair.ac.id', '', '', 0, 1),
(850, '', 'auralia.rizki.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(851, '', 'muhammad.ihsan.kamil-2020@fh.unair.ac.id', '', '', 0, 1),
(852, '', 'm.bimo.prakoso-2020@fh.unair.ac.id', '', '', 0, 1),
(853, '', 'melva.emely.laurentius-2020@fh.unair.ac.id', '', '', 0, 1),
(854, '', 'muhammad.khalifiar.daffa-2020@fh.unair.ac.id', '', '', 0, 1),
(855, '', 'bagas.defriatmoko-2020@fh.unair.ac.id', '', '', 0, 1),
(856, '', 'vian.maulana-2020@fh.unair.ac.id', '', '', 0, 1),
(857, '', 'nadhira.afa.mediarti-2020@fh.unair.ac.id', '', '', 0, 1),
(858, '', 'muhammad.rizky.rinaldi-2020@fh.unair.ac.id', '', '', 0, 1),
(859, '', 'arnetalia.ardhiya.azzahro-2020@fh.unair.ac.id', '', '', 0, 1),
(860, '', 'daniel.giovanni.pandapotan-2020@fh.unair.ac.id', '', '', 0, 1),
(861, '', 'priyanka.marsha.almeyra-2020@fh.unair.ac.id', '', '', 0, 1),
(862, '', 'shafira.rachma.thalya-2020@fh.unair.ac.id', '', '', 0, 1),
(863, '', 'farhan.pramoda.adhyasta-2020@fh.unair.ac.id', '', '', 0, 1),
(864, '', 'nugra.alayya.wahab-2020@fh.unair.ac.id', '', '', 0, 1),
(865, '', 'nabil.arijala.survito-2020@fh.unair.ac.id', '', '', 0, 1),
(866, '', 'salsabila.florean.callista-2020@fh.unair.ac.id', '', '', 0, 1),
(867, '', 'filbert.jonathan-2020@fh.unair.ac.id', '', '', 0, 1),
(868, '', 'mochamad.bintang.maulana-2020@fh.unair.ac.id', '', '', 0, 1),
(869, '', 'ivan.ferdinand.alifi-2020@fh.unair.ac.id', '', '', 0, 1),
(870, '', 'fhaizal.paun.adji-2020@fh.unair.ac.id', '', '', 0, 1),
(871, '', 'kania.maharani-2020@fh.unair.ac.id', '', '', 0, 1),
(872, '', 'alexius.samuel.sitanggang-2020@fh.unair.ac.id', '', '', 0, 1),
(873, '', 'kirani.bararah-2020@fh.unair.ac.id', '', '', 0, 1),
(874, '', 'virly.diva.sophia-2020@fh.unair.ac.id', '', '', 0, 1),
(875, '', 'rindang.syafaat-2020@fh.unair.ac.id', '', '', 0, 1),
(876, '', 'ladecia.safa.alika-2020@fh.unair.ac.id', '', '', 0, 1),
(877, '', 'savina.aleena.nureen-2020@fh.unair.ac.id', '', '', 0, 1),
(878, '', 'nizar.naren.danu-2020@fh.unair.ac.id', '', '', 0, 1),
(879, '', 'divani.dichita.khalish-2020@fh.unair.ac.id', '', '', 0, 1),
(880, '', 'audrey.putri.ramadhani-2020@fh.unair.ac.id', '', '', 0, 1),
(881, '', 'ayesha.putri.maharani-2020@fh.unair.ac.id', '', '', 0, 1),
(882, '', 'muhammad.cyril.setiawan-2020@fh.unair.ac.id', '', '', 0, 1),
(883, '', 'tasya.syafira.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(884, '', 'muhammad.alif.fahrizal-2020@fh.unair.ac.id', '', '', 0, 1),
(885, '', 'nabilah.nurmasitha-2020@fh.unair.ac.id', '', '', 0, 1),
(886, '', 'maulana.beryl.amrullah-2020@fh.unair.ac.id', '', '', 0, 1),
(887, '', 'aditya.yusuf.rizyaldi-2020@fh.unair.ac.id', '', '', 0, 1),
(888, '', 'raditya.rahagi.giovedi-2020@fh.unair.ac.id', '', '', 0, 1),
(889, '', 'althof.bakiel.anra-2020@fh.unair.ac.id', '', '', 0, 1),
(890, '', 'fairuz.nasywa.dien-2020@fh.unair.ac.id', '', '', 0, 1),
(891, '', 'nurmalika.syamsani.husnatullah-2020@fh.unair.ac.id', '', '', 0, 1),
(892, '', 'shabrina.ramadhani.sugianto-2020@fh.unair.ac.id', '', '', 0, 1),
(893, '', 'fatimah.farhania-2020@fh.unair.ac.id', '', '', 0, 1),
(894, '', 'evanadya.izzah.nurrahma-2020@fh.unair.ac.id', '', '', 0, 1),
(895, '', 'fifta.alviani.annas-2020@fh.unair.ac.id', '', '', 0, 1),
(896, '', 'felix.timothy-2020@fh.unair.ac.id', '', '', 0, 1),
(897, '', 'gammazaki.wahyudi-2020@fh.unair.ac.id', '', '', 0, 1),
(898, '', 'salwa.putri.hermawan-2020@fh.unair.ac.id', '', '', 0, 1),
(899, '', 'alya.dwiputri.raniah-2020@fh.unair.ac.id', '', '', 0, 1),
(900, '', 'mikayla.darmawan-2020@fh.unair.ac.id', '', '', 0, 1),
(901, '', 'amrullah.ulul.albab-2020@fh.unair.ac.id', '', '', 0, 1),
(902, '', 'dimas.brahmana.senapati-2020@fh.unair.ac.id', '', '', 0, 1),
(903, '', 'kevin.garin.wardhana-2020@fh.unair.ac.id', '', '', 0, 1),
(904, '', 'alif.firdausi.iansyah-2020@fh.unair.ac.id', '', '', 0, 1),
(905, '', 'syarif.ibrahim.robbany-2020@fh.unair.ac.id', '', '', 0, 1),
(906, '', 'ramtina.achmad.solaiman-2020@fh.unair.ac.id', '', '', 0, 1),
(907, '', 'nathania.oktaviarini-2020@fh.unair.ac.id', '', '', 0, 1),
(908, '', 'nandira.ayu.nur-2020@fh.unair.ac.id', '', '', 0, 1),
(909, '', 'adinda.putri.sabrina-2020@fh.unair.ac.id', '', '', 0, 1),
(910, '', 'dhamar.jagad.gautama-2020@fh.unair.ac.id', '', '', 0, 1),
(911, '', 'justisia.syahbani.alkahfi-2020@fh.unair.ac.id', '', '', 0, 1),
(912, '', 'afifah.nuraini-2020@fh.unair.ac.id', '', '', 0, 1),
(913, '', 'poppy.hairunnisa-2020@fh.unair.ac.id', '', '', 0, 1),
(914, '', 'angeline.ene.santoso-2020@fh.unair.ac.id', '', '', 0, 1),
(915, '', 'dinar.laksmi.murti-2020@fh.unair.ac.id', '', '', 0, 1),
(916, '', 'daariin.khaalishah-2020@fh.unair.ac.id', '', '', 0, 1),
(917, '', 'muftihatun.nurul.jannah-2020@fh.unair.ac.id', '', '', 0, 1),
(918, '', 'natasha.caecilia.lisanggraeni-2020@fh.unair.ac.id', '', '', 0, 1),
(919, '', 'maulana.rahmadi.surya-2020@fh.unair.ac.id', '', '', 0, 1),
(920, '', 'amilah.fadhlina-2020@fh.unair.ac.id', '', '', 0, 1),
(921, '', 'bhisma.dewanata-2020@fh.unair.ac.id', '', '', 0, 1),
(922, '', 'rifky.miftahul.achmad-2020@fh.unair.ac.id', '', '', 0, 1),
(923, '', 'triangga.satria.wicaksana-2020@fh.unair.ac.id', '', '', 0, 1),
(924, '', 'aflah.alwy.imas-2020@fh.unair.ac.id', '', '', 0, 1),
(925, '', 'ardo.alkautsar-2020@fh.unair.ac.id', '', '', 0, 1),
(926, '', 'shania.vivi.armylia-2020@fh.unair.ac.id', '', '', 0, 1),
(927, '', 'haikal.abrar-2020@fh.unair.ac.id', '', '', 0, 1),
(928, '', 'muhammad.chaikal.ichwanul-2020@fh.unair.ac.id', '', '', 0, 1),
(929, '', 'andreas.ane.de-2020@fh.unair.ac.id', '', '', 0, 1),
(930, '', 'madu.sekar.tanjung-2020@fh.unair.ac.id', '', '', 0, 1),
(931, '', 'indri.adelia.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(932, '', 'dinda.wardhani.ianto-2020@fh.unair.ac.id', '', '', 0, 1),
(933, '', 'ali.muhammad.rafsanjani-2020@fh.unair.ac.id', '', '', 0, 1),
(934, '', 'chaterina.deliananda.yusriza-2020@fh.unair.ac.id', '', '', 0, 1),
(935, '', 'tri.hanani-2020@fh.unair.ac.id', '', '', 0, 1),
(936, '', 'ahmad.ishom.khalimi-2020@fh.unair.ac.id', '', '', 0, 1),
(937, '', 'diana.wulan.ningrum-2020@fh.unair.ac.id', '', '', 0, 1),
(938, '', 'rismarcel.aurel.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(939, '', 'diah.ayu.wulandari-2020@fh.unair.ac.id', '', '', 0, 1),
(940, '', 'shelsa.widya.suarista-2020@fh.unair.ac.id', '', '', 0, 1),
(941, '', 'thifal.anjani-2020@fh.unair.ac.id', '', '', 0, 1),
(942, '', 'ragil.ade.dwi-2020@fh.unair.ac.id', '', '', 0, 1),
(943, '', 'shinta.laura.federova-2020@fh.unair.ac.id', '', '', 0, 1),
(944, '', 'aulia.rahma.sari-2020@fh.unair.ac.id', '', '', 0, 1),
(945, '', 'kharisma.putri.wardani-2020@fh.unair.ac.id', '', '', 0, 1),
(946, '', 'vida.octrikasari.erianto-2020@fh.unair.ac.id', '', '', 0, 1),
(947, '', 'istifahani.nuril.fatiha-2020@fh.unair.ac.id', '', '', 0, 1),
(948, '', 'can.aditya.kurniawan-2020@fh.unair.ac.id', '', '', 0, 1),
(949, '', 'diaz.ilyasa.in-2020@fh.unair.ac.id', '', '', 0, 1),
(950, '', 'sherlina.devina-2020@fh.unair.ac.id', '', '', 0, 1),
(951, '', 'maullana.tegar.bagaskara-2020@fh.unair.ac.id', '', '', 0, 1),
(952, '', 'michelle.adela.handoko-2020@fh.unair.ac.id', '', '', 0, 1),
(953, '', 'hapsari.prisca.sugianto-2020@fh.unair.ac.id', '', '', 0, 1),
(954, '', 'muhammad.syaifulloh-2020@fh.unair.ac.id', '', '', 0, 1),
(955, '', 'nadia.balqis.azzahra-2020@fh.unair.ac.id', '', '', 0, 1),
(956, '', 'hio.rangga.prakosa-2020@fh.unair.ac.id', '', '', 0, 1),
(957, '', 'safira.aulia.pramudita-2020@fh.unair.ac.id', '', '', 0, 1),
(958, '', 'alicia.afa.azzahra-2020@fh.unair.ac.id', '', '', 0, 1),
(959, '', 'kornelia.tiovanni-2020@fh.unair.ac.id', '', '', 0, 1),
(960, '', 'daveyan.athiyyah.bambang-2020@fh.unair.ac.id', '', '', 0, 1),
(961, '', 'elang.bagas.darmawan-2020@fh.unair.ac.id', '', '', 0, 1),
(962, '', 'emmanuella.hotasi.jedidiah-2020@fh.unair.ac.id', '', '', 0, 1),
(963, '', 'daffa.deta.prawira-2020@fh.unair.ac.id', '', '', 0, 1),
(964, '', 'davina.jasmine.reisha-2020@fh.unair.ac.id', '', '', 0, 1),
(965, '', 'jobel.eron.simorangkir-2020@fh.unair.ac.id', '', '', 0, 1),
(966, '', 'adhitya.rasyid.nugroho-2020@fh.unair.ac.id', '', '', 0, 1),
(967, '', 'amirah.putri.sasikirana-2020@fh.unair.ac.id', '', '', 0, 1),
(968, '', 'dewi.yugi.arti-2020@fh.unair.ac.id', '', '', 0, 1),
(969, '', 'satrio.budhi.aristo-2020@fh.unair.ac.id', '', '', 0, 1),
(970, '', 'yustisia.tri.esthi-2020@fh.unair.ac.id', '', '', 0, 1),
(971, '', 'aisyah.nathania.harnindhita-2020@fh.unair.ac.id', '', '', 0, 1),
(972, '', 'rizky.fadhil.raivan-2020@fh.unair.ac.id', '', '', 0, 1),
(973, '', 'kalila.nashwa.ludmila-2020@fh.unair.ac.id', '', '', 0, 1),
(974, '', 'devinia.cahya.pranisarinda-2020@fh.unair.ac.id', '', '', 0, 1),
(975, '', 'dzaky.haidar.mumtaz-2020@fh.unair.ac.id', '', '', 0, 1),
(976, '', 'anggito.bagas.abimanyu-2020@fh.unair.ac.id', '', '', 0, 1),
(977, '', 'moch.ali.fikri-2020@fh.unair.ac.id', '', '', 0, 1),
(978, '', 'pradita.riz.priyanti-2020@fh.unair.ac.id', '', '', 0, 1),
(979, '', 'helen.golden-2020@fh.unair.ac.id', '', '', 0, 1),
(980, '', 'samuel.andersen.baladika-2020@fh.unair.ac.id', '', '', 0, 1),
(981, '', 'alexander-2020@fh.unair.ac.id', '', '', 0, 1),
(982, '', 'erika.rahmawati-2020@fh.unair.ac.id', '', '', 0, 1),
(983, '', 'kukuh.ari.firmansyah-2020@fh.unair.ac.id', '', '', 0, 1),
(984, '', 'saidah.basham-2020@fh.unair.ac.id', '', '', 0, 1),
(985, '', 'danu.kristian.a.widodo-2020@fh.unair.ac.id', '', '', 0, 1),
(986, '', 'muhammad.pandu.mulya-2020@fh.unair.ac.id', '', '', 0, 1),
(987, '', 'muhamad.raffi.maulana-2020@fh.unair.ac.id', '', '', 0, 1),
(988, '', 'anasthasia.thania.wibisono-2020@fh.unair.ac.id', '', '', 0, 1),
(989, '', 'diva.salasa.anastasia-2020@fh.unair.ac.id', '', '', 0, 1),
(990, '', 'gabrielle.darda.wisnu-2020@fh.unair.ac.id', '', '', 0, 1),
(991, '', 'hisyam.fadhlirrahman-2020@fh.unair.ac.id', '', '', 0, 1),
(992, '', 'alyssa.febyana.maharani-2020@fh.unair.ac.id', '', '', 0, 1),
(993, '', 'ratu.jagad.qoriatul-2020@fh.unair.ac.id', '', '', 0, 1),
(994, '', 'cindy.puuja.devi-2020@fh.unair.ac.id', '', '', 0, 1),
(995, '', 'julya.putri.setyawan-2020@fh.unair.ac.id', '', '', 0, 1),
(996, '', 'safira.inayah.in-2020@fh.unair.ac.id', '', '', 0, 1),
(997, '', 'eduardus.robert.arminanto-2020@fh.unair.ac.id', '', '', 0, 1),
(998, '', 'syelma.vinita.anjanie-2020@fh.unair.ac.id', '', '', 0, 1),
(999, '', 'tessana.pridia.paramitha-2020@fh.unair.ac.id', '', '', 0, 1),
(1000, '', 'farah.qatifa.elzahra-2020@fh.unair.ac.id', '', '', 0, 1),
(1001, '', 'ivana.zahra.robby-2020@fh.unair.ac.id', '', '', 0, 1),
(1002, '', 'alifia.nuril.bais-2020@fh.unair.ac.id', '', '', 0, 1),
(1003, '', 'alfina.anam.damayanti-2020@fh.unair.ac.id', '', '', 0, 1),
(1004, '', 'regina.resentia-2020@fh.unair.ac.id', '', '', 0, 1),
(1005, '', 'putri.kirana-2020@fh.unair.ac.id', '', '', 0, 1),
(1006, '', 'dita.putri.valerin-2020@fh.unair.ac.id', '', '', 0, 1),
(1007, '', 'rahmadani.rahman-2020@fh.unair.ac.id', '', '', 0, 1),
(1008, '', 'ahmad.devano.denan-2020@fh.unair.ac.id', '', '', 0, 1),
(1009, '', 'gracia.naomi.eirene-2020@fh.unair.ac.id', '', '', 0, 1),
(1010, '', 'berlianityaputri.ramadhanty.choirunnisa-2020@fh.un', '', '', 0, 1),
(1011, '', 'imam.adhi.wibowo-2020@fh.unair.ac.id', '', '', 0, 1),
(1012, '', 'danish.putra.dandi-2020@fh.unair.ac.id', '', '', 0, 1),
(1013, '', 'kresna.jaya.wicaksana-2020@fh.unair.ac.id', '', '', 0, 1),
(1014, '', 'muhammad.fahmi.syahril-2020@fh.unair.ac.id', '', '', 0, 1),
(1015, '', 'dorothy.ranteallo-2020@fh.unair.ac.id', '', '', 0, 1),
(1016, '', 'princetta.nadja.braka-2020@fh.unair.ac.id', '', '', 0, 1),
(1017, '', 'radzan.galih-2020@fh.unair.ac.id', '', '', 0, 1),
(1018, '', 'fathurizky.febrian-2020@fh.unair.ac.id', '', '', 0, 1),
(1019, '', 'nabillah.nur.azizah-2020@fh.unair.ac.id', '', '', 0, 1),
(1020, '', 'akhmad.bayu.putranto-2020@fh.unair.ac.id', '', '', 0, 1),
(1021, '', 'anik.setyawati-2020@fh.unair.ac.id', '', '', 0, 1),
(1022, '', 'afga.samudera.erlangga-2020@fh.unair.ac.id', '', '', 0, 1),
(1023, '', 'darryl.evan.brouwer-2020@fh.unair.ac.id', '', '', 0, 1),
(1024, '', 'alvin.juliansyah.putra-2020@fh.unair.ac.id', '', '', 0, 1),
(1025, '', 'nabilatul.alimah.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(1026, '', 'widya.novalita.khofifah-2020@fh.unair.ac.id', '', '', 0, 1),
(1027, '', 'heksa.archie.putra-2020@fh.unair.ac.id', '', '', 0, 1),
(1028, '', 'pamungkas.ridaningjati-2020@fh.unair.ac.id', '', '', 0, 1),
(1029, '', 'dian.nastika.kusretnaning-2020@fh.unair.ac.id', '', '', 0, 1),
(1030, '', 'adinda.salsabilla-2020@fh.unair.ac.id', '', '', 0, 1),
(1031, '', 'devita-2020@fh.unair.ac.id', '', '', 0, 1),
(1032, '', 'alya.fitriani-2020@fh.unair.ac.id', '', '', 0, 1),
(1033, '', 'iqbal.fauzurrahman-2020@fh.unair.ac.id', '', '', 0, 1),
(1034, '', 'adhisty.radhita.vasya-2020@fh.unair.ac.id', '', '', 0, 1),
(1035, '', 'shabrina.syuuraida-2020@fh.unair.ac.id', '', '', 0, 1),
(1036, '', 'fakhira.dyna.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(1037, '', 'muhammad.daffa.dzakiyya-2020@fh.unair.ac.id', '', '', 0, 1),
(1038, '', 'naura.tsurayya.hasnaa-2020@fh.unair.ac.id', '', '', 0, 1),
(1039, '', 'azhalea.dafa.ranggadena-2020@fh.unair.ac.id', '', '', 0, 1),
(1040, '', 'kevin.hartono-2020@fh.unair.ac.id', '', '', 0, 1),
(1041, '', 'laksmana.noor.alluvian-2020@fh.unair.ac.id', '', '', 0, 1),
(1042, '', 'krisna.angela-2020@fh.unair.ac.id', '', '', 0, 1),
(1043, '', 'nisfa.salsadillah-2020@fh.unair.ac.id', '', '', 0, 1),
(1044, '', 'yahya.arif.sutisna-2020@fh.unair.ac.id', '', '', 0, 1),
(1045, '', 'aryana.cahya.dewi-2020@fh.unair.ac.id', '', '', 0, 1),
(1046, '', 'puspita.dwi.anggraenny-2020@fh.unair.ac.id', '', '', 0, 1),
(1047, '', 'bintang.audia.adikshamosa-2020@fh.unair.ac.id', '', '', 0, 1),
(1048, '', 'muafasaid.ramadhan-2020@fh.unair.ac.id', '', '', 0, 1),
(1049, '', 'muhammad.farrel.evan-2020@fh.unair.ac.id', '', '', 0, 1),
(1050, '', 'malika.syaifina.al-2020@fh.unair.ac.id', '', '', 0, 1),
(1051, '', 'berliansyah.zaka.ardhitya-2020@fh.unair.ac.id', '', '', 0, 1),
(1052, '', 'pratama.alifiandi.martio-2020@fh.unair.ac.id', '', '', 0, 1),
(1053, '', 'naufaldi.noor.hilmiansyah-2020@fh.unair.ac.id', '', '', 0, 1),
(1054, '', 'aditya.nur.rizki-2020@fh.unair.ac.id', '', '', 0, 1),
(1055, '', 'arihta.tumanggor-2020@fh.unair.ac.id', '', '', 0, 1),
(1056, '', 'muhammad.ilman.nur-2020@fh.unair.ac.id', '', '', 0, 1),
(1057, '', 'mezaluna.erga.azzahra-2020@fh.unair.ac.id', '', '', 0, 1),
(1058, '', 'ola.mehira.sampoerna-2020@fh.unair.ac.id', '', '', 0, 1),
(1059, '', 'faustina.aida.madela-2020@fh.unair.ac.id', '', '', 0, 1),
(1060, '', 'bintang.ramadhani.widyainsani-2020@fh.unair.ac.id', '', '', 0, 1),
(1061, '', 'muhammad.habibur.rochman-2020@fh.unair.ac.id', '', '', 0, 1),
(1062, '', 'tanaya.anindhita.vala-2020@fh.unair.ac.id', '', '', 0, 1),
(1063, '', 'noer.alya.indriani-2020@fh.unair.ac.id', '', '', 0, 1),
(1064, '', 'annisa.hadyta.wibisono-2020@fh.unair.ac.id', '', '', 0, 1),
(1065, '', 'sagita.dewi.indriana-2020@fh.unair.ac.id', '', '', 0, 1),
(1066, '', 'gospel.bulo.pasulu-2020@fh.unair.ac.id', '', '', 0, 1),
(1067, '', 'renatha.fidela.ramadhani-2020@fh.unair.ac.id', '', '', 0, 1),
(1068, '', 'regina.aura.firdana-2020@fh.unair.ac.id', '', '', 0, 1),
(1069, '', 'zea.alya.najmi-2020@fh.unair.ac.id', '', '', 0, 1),
(1070, '', 'shoobihah.almaas.taqiyyah-2020@fh.unair.ac.id', '', '', 0, 1),
(1071, '', 'nathasya.debora.situmorang-2020@fh.unair.ac.id', '', '', 0, 1),
(1072, '', 'humaira.putri.syahrani-2020@fh.unair.ac.id', '', '', 0, 1),
(1073, '', 'nadina.aubrey.aleysa-2020@fh.unair.ac.id', '', '', 0, 1),
(1074, '', 'surya.wibawa.abimanyu-2020@fh.unair.ac.id', '', '', 0, 1),
(1075, '', 'dhaifan.ardianta.putra-2020@fh.unair.ac.id', '', '', 0, 1),
(1076, '', 'muhammad.akbar.maulana-2020@fh.unair.ac.id', '', '', 0, 1),
(1077, '', 'rexa.dewangga-2020@fh.unair.ac.id', '', '', 0, 1),
(1078, '', 'mokhammad.adis-2020@fh.unair.ac.id', '', '', 0, 1),
(1079, '', 'lola.lolita-2020@fh.unair.ac.id', '', '', 0, 1),
(1080, '', 'syarifah.fatimahtazzuhrah.rukhsal-2020@fh.unair.ac', '', '', 0, 1),
(1081, '', 'saadia.rizkian.nur-2020@fh.unair.ac.id', '', '', 0, 1),
(1082, '', 'alfi.salsabila.putri-2020@fh.unair.ac.id', '', '', 0, 1),
(1083, '', 'muh.rafli.dwi-2020@fh.unair.ac.id', '', '', 0, 1),
(1084, '', 'talitha.marsha.amelinda-2020@fh.unair.ac.id', '', '', 0, 1),
(1085, '', 'rr.fernanda.tasya-2020@fh.unair.ac.id', '', '', 0, 1),
(1086, '', 'fawwaz.muhammad.raafi-2020@fh.unair.ac.id', '', '', 0, 1),
(1087, '', 'muhamad.andhika.rahman-2020@fh.unair.ac.id', '', '', 0, 1),
(1088, '', 'tasia.alya-2020@fh.unair.ac.id', '', '', 0, 1),
(1089, '', 'angeline.regita.nathalia-2020@fh.unair.ac.id', '', '', 0, 1),
(1090, '', 'ahmad.fathi-2020@fh.unair.ac.id', '', '', 0, 1),
(1091, '', 'diqa.qothrunnadaa.amanda-2020@fh.unair.ac.id', '', '', 0, 1),
(1092, 'saksifh5', 'rizkika.palindungan1@gmail.com', '$2y$10$T/5FYX9KCPgzvVCwmssYkuSDoVnKKvqaXlUtGr4/xL/q67LWqInP6', '', 1, 1),
(1093, '', 'rizkika.palindungan98@gmail.com', '', '', 0, 1),
(1094, '', 'rizalramli993@gmail.com', '', '', 0, 1);

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
(1, 1, 'Pemilihan BEM 2020', '2020-12-23', '2020-12-23 07:00:00', '2020-12-23 16:00:00', 1),
(2, 1, 'Pemilihan BLM 2020', '2020-12-23', '2020-12-23 07:00:00', '2020-12-23 16:00:00', 1),
(3, 1, 'Pemilihan DLM 2020', '2020-12-23', '2020-12-23 07:00:00', '2020-12-23 16:00:00', 1);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `voter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1095;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `voting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
