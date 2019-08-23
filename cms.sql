-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 08:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(20) NOT NULL DEFAULT '0',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `check_up`
--

CREATE TABLE IF NOT EXISTS `check_up` (
  `p_id` int(20) NOT NULL,
  `appoint_id` int(20) NOT NULL,
  `doc_id` int(20) NOT NULL,
  `chk_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_up`
--

INSERT INTO `check_up` (`p_id`, `appoint_id`, `doc_id`, `chk_date`) VALUES
(18, 11, 124, '2011-11-20'),
(18, 12, 125, '2018-12-08'),
(18, 13, 128, '2015-09-10'),
(19, 21, 129, '2018-12-05'),
(19, 22, 125, '2018-12-30'),
(20, 31, 124, '2012-12-10'),
(20, 32, 124, '2012-12-22'),
(20, 33, 131, '2012-12-22'),
(21, 41, 123, '2019-01-02'),
(22, 51, 126, '2019-01-05'),
(22, 52, 7894, '2019-01-20'),
(23, 61, 12, '2019-02-01'),
(23, 72, 129, '2019-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `deptid` int(10) NOT NULL DEFAULT '0',
  `deptname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptid`, `deptname`) VALUES
(101, 'Cardiology'),
(102, 'Dermatology'),
(103, 'ENT'),
(104, 'Ophthalmology');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disid` int(10) NOT NULL,
  `disname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disid`, `disname`) VALUES
(1103, 'Ear Problem'),
(1106, 'Eye Problem'),
(1101, 'Heart Problem'),
(1104, 'Nose Problem'),
(1102, 'Skin Problem'),
(1105, 'Throat Problem');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `did` int(20) NOT NULL,
  `dfname` varchar(20) DEFAULT NULL,
  `dmname` varchar(20) DEFAULT NULL,
  `dlname` varchar(20) DEFAULT NULL,
  `dph` varchar(13) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `fees` int(10) DEFAULT NULL,
  `dept_id` int(20) NOT NULL,
  `diss_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `dfname`, `dmname`, `dlname`, `dph`, `gender`, `fees`, `dept_id`, `diss_id`) VALUES
(12, 'Raju', '', 'Mallah', '2333213156', 'Male', 1200, 102, 1102),
(123, 'Amit', 'Kumar', 'Dhar', '46571212', 'male', 500, 103, 1103),
(124, 'Mahadev', '', 'Kirtonia', '54657888', 'male', 550, 103, 1104),
(125, 'Binod', NULL, 'Dutta', '873645', 'Male', 600, 103, 1105),
(126, 'Bhupendra', 'Nath', 'Mahanta', '7635489', '', 1000, 101, 1101),
(128, 'Danjit', 'Sen', 'Chakraborty', '34567891', 'Male', 300, 102, 1102),
(129, 'Sangita', NULL, 'Bhowmik', '234435465', 'Female', 3000, 104, 1106),
(131, 'Shena', NULL, 'Mondol', '123456', 'Female', 600, 102, 1102),
(7894, 'Harbajan', '', 'Singh', '789-254-3562', 'Male', 1000, 104, 1106);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
`pid` int(20) NOT NULL,
  `pfname` varchar(20) DEFAULT NULL,
  `pmname` varchar(20) DEFAULT NULL,
  `plname` varchar(20) DEFAULT NULL,
  `pph` varchar(13) DEFAULT NULL,
  `gen` varchar(20) NOT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pfname`, `pmname`, `plname`, `pph`, `gen`, `dob`, `city`) VALUES
(18, 'Anurag', 'Kumar', 'Narayan', '1234567890', 'Male', '2000-12-01', 'Nogaonv'),
(19, 'Rajdeep', '', 'Knowar', '8986124529', 'Male', '1994-04-21', 'Tinsukia'),
(20, 'Sahani', '', 'Khatoon', '9876543975', 'Female', '1989-12-03', 'Nalbari'),
(21, 'Sandeep', 'Kumar', 'Gogoi', '7896238209', 'Male', '1995-02-01', 'Sivsagar'),
(22, 'Susmita', '', 'Boro', '7576814541', 'Female', '1996-07-21', 'Guwahati'),
(23, 'Bonani', '', 'Dutta', '8976139835', 'Female', '1995-04-30', 'Dibrugarh');

-- --------------------------------------------------------

--
-- Table structure for table `pat_has_dis`
--

CREATE TABLE IF NOT EXISTS `pat_has_dis` (
  `pat_id` int(20) NOT NULL,
  `dise_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pat_has_dis`
--

INSERT INTO `pat_has_dis` (`pat_id`, `dise_id`) VALUES
(22, 1101),
(20, 1102),
(23, 1102),
(21, 1103),
(18, 1104),
(20, 1104),
(18, 1105),
(19, 1105),
(19, 1106),
(22, 1106),
(23, 1106);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`aid`), ADD UNIQUE KEY `aid` (`aid`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `check_up`
--
ALTER TABLE `check_up`
 ADD PRIMARY KEY (`p_id`,`appoint_id`), ADD KEY `fk_docid` (`doc_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`deptid`), ADD UNIQUE KEY `deptid` (`deptid`), ADD UNIQUE KEY `deptname` (`deptname`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
 ADD PRIMARY KEY (`disid`), ADD UNIQUE KEY `disid` (`disid`), ADD UNIQUE KEY `disname` (`disname`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`did`), ADD UNIQUE KEY `dph` (`dph`), ADD KEY `fk_docto` (`dept_id`), ADD KEY `fk_doctor` (`diss_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `pph` (`pph`);

--
-- Indexes for table `pat_has_dis`
--
ALTER TABLE `pat_has_dis`
 ADD PRIMARY KEY (`pat_id`,`dise_id`), ADD KEY `fk_dis` (`dise_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
MODIFY `pid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `check_up`
--
ALTER TABLE `check_up`
ADD CONSTRAINT `fk_docid` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`did`),
ADD CONSTRAINT `fk_pat` FOREIGN KEY (`p_id`) REFERENCES `patient` (`pid`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
ADD CONSTRAINT `fk_docto` FOREIGN KEY (`dept_id`) REFERENCES `department` (`deptid`),
ADD CONSTRAINT `fk_doctor` FOREIGN KEY (`diss_id`) REFERENCES `disease` (`disid`);

--
-- Constraints for table `pat_has_dis`
--
ALTER TABLE `pat_has_dis`
ADD CONSTRAINT `fk_dis` FOREIGN KEY (`dise_id`) REFERENCES `disease` (`disid`),
ADD CONSTRAINT `fk_patient` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
