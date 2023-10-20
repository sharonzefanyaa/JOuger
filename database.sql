-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:04 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jougerfin`
--

-- --------------------------------------------------------

--
-- Table structure for table `msapparel`
--

CREATE TABLE `msapparel` (
  `ApparelID` char(5) NOT NULL,
  `TypeID` char(5) NOT NULL,
  `ApparelName` varchar(30) NOT NULL,
  `ApparelPrice` int(10) NOT NULL,
  `ApparelStock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msapparel`
--

INSERT INTO `msapparel` (`ApparelID`, `TypeID`, `ApparelName`, `ApparelPrice`, `ApparelStock`) VALUES
('MA001', 'MT015', 'Merigold Vest', 12000, 5),
('MA002', 'MT002', 'Jordan M24', 60000, 1),
('MA003', 'MT011', 'Nikki Hiking', 410000, 3),
('MA004', 'MT007', 'JOJO Shirt', 50000, 5),
('MA005', 'MT013', 'Mario Tekauchi Top', 620000, 2),
('MA006', 'MT004', 'Victoria Sunset', 120000, 3),
('MA007', 'MT001', 'Molov Ost', 45000, 1),
('MA008', 'MT003', 'Light Gray Hoodie', 1040000, 15),
('MA009', 'MT009', 'Black Sweater', 520000, 65),
('MA010', 'MT013', 'Miguerro Top', 950000, 2),
('MA011', 'MT015', 'Augberine Mel', 250000, 8),
('MA012', 'MT011', 'Tsukuecchi Udan', 630000, 4),
('MA013', 'MT006', 'Makaka Jumper', 820000, 27),
('MA014', 'MT015', 'Mello Vest', 720000, 11),
('MA015', 'MT012', 'Marco Polo', 940000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `CustomerName` varchar(30) NOT NULL,
  `CustomerDOB` date NOT NULL,
  `CustomerAddress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerEmail`, `CustomerName`, `CustomerDOB`, `CustomerAddress`) VALUES
('MC001', 'JOseph@gmail.com', 'Joseph Oriander', '2002-11-12', 'Meulborne Street'),
('MC002', 'JOreign@gmail.com', 'Joreign Osmanthus', '2006-02-05', 'Haluborne Street'),
('MC003', 'JOmaine@gmail.com', 'Jomaine Oliver', '2004-01-13', 'Polomer Alley'),
('MC004', 'JOgielle@gmail.com', 'Jogiel Ogarne', '1995-02-19', 'Hansomiun Alley'),
('MC005', 'JOmane@gmail.com', 'Jomane Omiale', '1999-01-21', 'Cranium Street'),
('MC006', 'JOyuese@gmail.com', 'Joyuese Est', '2008-05-25', 'Avtomat Street'),
('MC007', 'JOse@gmail.com', 'Joje Susanto', '2003-01-01', 'Algreat Street'),
('MC008', 'JObaineph@gmail.com', 'Jobaine Obaka', '2002-10-22', 'Masaline Alley'),
('MC009', 'JOslime@gmail.com', 'Joslime Omuru', '2001-05-09', 'Lilinoa Street'),
('MC010', 'JOsque@gmail.com', 'Josque Oqueres', '2010-05-09', 'Lopia Street'),
('MC011', 'JOsline@gmail.com', 'Josline Orine', '2008-02-10', 'Krossi Alley'),
('MC012', 'JOquere@gmail.com', 'Joquere Oreine', '2003-10-09', 'Alhambra Street'),
('MC013', 'JOtiel@gmail.com', 'Jotiel Ortinel', '1999-11-12', 'Sevile Street'),
('MC014', 'JOppeine@gmail.com', 'JOppeine Oppane', '2001-11-29', 'Coldobra Alley'),
('MC015', 'SEtiawan@gmail.com', 'Setiawan Erwin', '2000-10-30', 'Qortuba Street');

-- --------------------------------------------------------

--
-- Table structure for table `msstaff`
--

CREATE TABLE `msstaff` (
  `StaffID` char(5) NOT NULL,
  `StaffName` varchar(30) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffAddress` varchar(30) NOT NULL,
  `StaffSalary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msstaff`
--

INSERT INTO `msstaff` (`StaffID`, `StaffName`, `StaffDOB`, `StaffAddress`, `StaffSalary`) VALUES
('MS001', 'Miles Edowes', '1999-04-23', 'Alloe Valley', 506921),
('MS002', 'Correna Canedo', '1992-01-02', 'Augberine Street', 704692),
('MS003', 'Adlai Grayshan', '1989-04-15', 'Chongyue Alley', 936830),
('MS004', 'Dael Beadell', '1991-02-16', 'Neille Alley', 697397),
('MS005', 'Shandy Tutchell', '1992-01-22', 'Massach Boulevard', 822571),
('MS006', 'Nancy Haythorne', '1998-04-25', 'Bahome Alley', 602758),
('MS007', 'Alphonso Soff', '1992-07-03', 'Mckenfield Street', 322203),
('MS008', 'Kalle Bulfit', '1992-12-12', 'Alloe Valley', 674369),
('MS009', 'Else Burras', '1999-01-15', 'Loving Street', 586643),
('MS010', 'Jeanine Eddins', '1969-01-02', 'Currdaine Alley', 392296),
('MS011', 'Gualterio Stebbings', '1995-01-23', 'Bing Street', 479874),
('MS012', 'Ethelred Fairhead', '1990-01-03', 'Efraine Alley', 599033),
('MS013', 'Arlette Van Brug', '1992-04-02', 'Avancoo Alley', 667343),
('MS014', 'Graehme Beney', '1999-02-02', 'Addion Valley', 676760),
('MS015', 'Eldon Garbar', '2002-03-19', 'Omnico Street', 744497),
('MS016', 'Lissi Huskinson', '1999-05-03', 'Huginson Street', 614078),
('MS017', 'Madeleine Sarl', '1992-01-01', 'Sarlgi Alley', 302293),
('MS018', 'Flossi Gorcke', '1991-05-02', 'Gorchin Street', 729992),
('MS019', 'Packston Bingell', '1987-02-03', 'Binggle Alley', 586254),
('MS020', 'Elbert Gurnee', '2000-07-04', 'Alloe Valley', 400600),
('MS021', 'Seward DAlessio', '2000-06-05', 'Deston Street', 862544),
('MS022', 'Deidre Getty', '2002-05-06', 'Alloe Valley', 308287),
('MS023', 'Noam Iggalden', '2003-11-07', 'Alden Street', 539868),
('MS024', 'Burr Izac', '2002-10-24', 'Avancoo Alley', 460822),
('MS025', 'Melisa Fearnall', '1999-04-30', 'Frenal Alley', 966797);

-- --------------------------------------------------------

--
-- Table structure for table `mstype`
--

CREATE TABLE `mstype` (
  `TypeID` char(5) NOT NULL,
  `TypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mstype`
--

INSERT INTO `mstype` (`TypeID`, `TypeName`) VALUES
('MT001', 'V-neck'),
('MT002', 'Shorts'),
('MT003', 'Hoodie'),
('MT004', 'Overall'),
('MT005', 'Jumpsuit'),
('MT006', 'Jumper'),
('MT007', 'Shirt'),
('MT008', 'Beater'),
('MT009', 'Sweater'),
('MT010', 'Cardigan'),
('MT011', 'Parka'),
('MT012', 'Polo'),
('MT013', 'Tank top'),
('MT015', 'Vest');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(5) NOT NULL,
  `ApparelID` char(5) NOT NULL,
  `Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionID`, `ApparelID`, `Quantity`) VALUES
('TH001', 'MA001', 2),
('TH001', 'MA010', 1),
('TH001', 'MA012', 1),
('TH002', 'MA002', 5),
('TH003', 'MA005', 1),
('TH004', 'MA002', 1),
('TH005', 'MA001', 1),
('TH005', 'MA002', 1),
('TH005', 'MA007', 2),
('TH006', 'MA001', 1),
('TH006', 'MA002', 1),
('TH007', 'MA001', 1),
('TH007', 'MA011', 1),
('TH008', 'MA003', 2),
('TH009', 'MA010', 1),
('TH010', 'MA009', 1),
('TH010', 'MA012', 1),
('TH011', 'MA002', 1),
('TH011', 'MA011', 1),
('TH012', 'MA012', 3),
('TH012', 'MA013', 2),
('TH013', 'MA006', 2),
('TH014', 'MA003', 2),
('TH015', 'MA002', 2),
('TH015', 'MA005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(5) NOT NULL,
  `StaffID` char(5) NOT NULL,
  `CustomerID` char(5) NOT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `StaffID`, `CustomerID`, `TransactionDate`) VALUES
('TH001', 'MS001', 'MC005', '2022-10-30'),
('TH002', 'MS005', 'MC005', '2022-10-02'),
('TH003', 'MS001', 'MC005', '2022-10-06'),
('TH004', 'MS001', 'MC002', '2022-10-18'),
('TH005', 'MS002', 'MC002', '2022-11-06'),
('TH006', 'MS003', 'MC002', '2022-10-06'),
('TH007', 'MS006', 'MC001', '2022-10-06'),
('TH008', 'MS008', 'MC005', '2022-10-04'),
('TH009', 'MS002', 'MC008', '2022-10-04'),
('TH010', 'MS002', 'MC002', '2022-11-01'),
('TH011', 'MS001', 'MC002', '2022-11-06'),
('TH012', 'MS003', 'MC006', '2022-11-07'),
('TH013', 'MS002', 'MC008', '2022-10-04'),
('TH014', 'MS008', 'MC010', '2022-11-01'),
('TH015', 'MS011', 'MC011', '2022-11-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msapparel`
--
ALTER TABLE `msapparel`
  ADD PRIMARY KEY (`ApparelID`),
  ADD KEY `TypeID` (`TypeID`);

--
-- Indexes for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `msstaff`
--
ALTER TABLE `msstaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `mstype`
--
ALTER TABLE `mstype`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`,`ApparelID`),
  ADD KEY `ApparelID` (`ApparelID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msapparel`
--
ALTER TABLE `msapparel`
  ADD CONSTRAINT `msapparel_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `mstype` (`TypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`ApparelID`) REFERENCES `msapparel` (`ApparelID`);

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `msstaff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactionheader_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
