-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2020 at 06:33 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
