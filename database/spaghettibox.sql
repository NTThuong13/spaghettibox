-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 06:34 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spaghettibox`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatvskh`
--

CREATE TABLE IF NOT EXISTS `chatvskh` (
  `id` int(10) unsigned NOT NULL,
  `TenKH` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `NoiDung` varchar(20000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitiettd`
--

CREATE TABLE IF NOT EXISTS `chitiettd` (
  `idChiTiietTD` int(10) unsigned NOT NULL,
  `Ten` varchar(100) DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL,
  `Chitietmonan` varchar(2000) DEFAULT NULL,
  `Gia` double DEFAULT NULL,
  `Ngay` date DEFAULT NULL,
  `idTD` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuahang`
--

CREATE TABLE IF NOT EXISTS `cuahang` (
  `idCH` int(10) unsigned NOT NULL,
  `TenCH` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SĐT` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thucdon`
--

CREATE TABLE IF NOT EXISTS `thucdon` (
  `idTD` int(10) unsigned NOT NULL,
  `TenTD` varchar(200) DEFAULT NULL,
  `AnhTD` varchar(100) DEFAULT NULL,
  `ChitietTD` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
  `idTT` int(10) unsigned NOT NULL,
  `TenTT` varchar(100) DEFAULT NULL,
  `AnhTT` varchar(100) DEFAULT NULL,
  `NgayTT` date DEFAULT NULL,
  `ChitietTT` varchar(20000) DEFAULT NULL,
  `idCH` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatvskh`
--
ALTER TABLE `chatvskh`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiettd`
--
ALTER TABLE `chitiettd`
 ADD PRIMARY KEY (`idChiTiietTD`), ADD KEY `idTD` (`idTD`), ADD KEY `idTD_2` (`idTD`), ADD KEY `idTD_3` (`idTD`);

--
-- Indexes for table `cuahang`
--
ALTER TABLE `cuahang`
 ADD PRIMARY KEY (`idCH`);

--
-- Indexes for table `thucdon`
--
ALTER TABLE `thucdon`
 ADD PRIMARY KEY (`idTD`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`idTT`), ADD KEY `idCH` (`idCH`), ADD KEY `idCH_2` (`idCH`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiettd`
--
ALTER TABLE `chitiettd`
ADD CONSTRAINT `chitiettd_ibfk_1` FOREIGN KEY (`idTD`) REFERENCES `thucdon` (`idTD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`idCH`) REFERENCES `cuahang` (`idCH`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
