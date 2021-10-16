-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 11:21 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cph`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `no` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `state` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`no`, `firstname`, `lastname`, `birthdate`, `state`) VALUES
(10001, 'Anette', 'Larreau', '2018-04-09', 'WI'),
(10002, 'Micheal', 'Dolan', '2019-05-05', 'WI'),
(10003, 'Salena', 'Dimas', '2019-12-24', 'WI'),
(10004, 'Wendell', 'Thomas', '2019-09-24', 'WI'),
(10005, 'Terry', 'Smith', '2019-12-21', 'WI'),
(10006, 'Larry', 'Dimas', '2019-08-24', 'WI'),
(10007, 'Jim', 'Dimas', '2019-02-24', 'WI'),
(10008, 'Chris', 'Dimas', '2019-04-24', 'WI');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `no` int(11) NOT NULL,
  `memberlevel` varchar(11) NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `redeemedpoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`no`, `memberlevel`, `totalpoints`, `redeemedpoints`) VALUES
(10001, 'S', 5000, 2000),
(10002, 'S', 9000, 2000),
(10003, 'G', 5000, 10001000),
(10004, 'P', 7000, 2000),
(10005, 'P', 4000, 2000),
(10007, 'S', 5000, 2000),
(10008, 'G', 8000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `no` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `wing` varchar(100) NOT NULL,
  `roomView` varchar(100) NOT NULL,
  `roomType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`no`, `floor`, `wing`, `roomView`, `roomType`) VALUES
(201, 2, 'E', 'O', 'Standard'),
(202, 2, 'E', 'G', 'Standard'),
(221, 2, 'C', 'C', 'Deluxe'),
(241, 2, 'W', 'O', 'Luxury Suite'),
(243, 2, 'W', 'O', 'Luxury Suite');

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `roomsize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`name`, `description`, `roomsize`) VALUES
('Standard', '2 queen beds', 250),
('Deluxe', '1 king or 2 queen beds', 350),
('Luxury Suite', '2 king beds, 1 crib', 700);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `confirmation` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `guestno` int(11) NOT NULL,
  `creditcardno` varchar(100) NOT NULL,
  `roomtype` varchar(100) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`confirmation`, `checkin`, `checkout`, `status`, `guestno`, `creditcardno`, `roomtype`, `room`) VALUES
(100001, '2020-01-13', '2020-01-16', 'O', 10001, '89456158465135', 'Standard', 201),
(100002, '2020-01-06', '2020-04-08', 'C', 10001, '4854154653156', 'Standard', 0),
(10003, '2020-01-13', '2020-01-16', 'R', 10001, '484151684616', 'Deluxe', 221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
