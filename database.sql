-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 03:14 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invenioind`
--
DROP DATABASE IF EXISTS `invenioind`;
CREATE DATABASE IF NOT EXISTS `invenioind` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `invenioind`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('abhishek@gmail.com', 'qwerty'),
('subham@gmail.com', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `credit_id` bigint(16) NOT NULL,
  `aadhar_id` bigint(16) NOT NULL,
  `accountno` bigint(16) NOT NULL,
  `bankname` varchar(250) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`credit_id`, `aadhar_id`, `accountno`, `bankname`, `balance`) VALUES
(1, 549375896320, 123654987741, 'SBI', 5000253),
(2, 345678541203, 12365498752, 'HDFC', 789653),
(3, 123456521369, 2585236925679912, 'Kotak Mahindra', 123652),
(4, 852369256799, 852963741123, 'SBI', 7896523),
(5, 780320580021, 155236548523, 'SBBJ', 10000000),
(7, 741258501230, 1523698523692567997, 'ICICI', 45896300),
(8, 789320000213, 505055669931, 'OBC', 450000),
(9, 852258450236, 369852147, 'Axis', 520000),
(10, 120369456320, 8529633692580, 'SBI', 7800000),
(11, 123456521369, 5236987412, 'Axis', 27800000),
(12, 234567458796, 7729633692580, 'SBI', 712000),
(13, 876543996542, 5236785412, 'Axis', 70000),
(14, 987625551200, 12589637412, 'Adarsh Credit Co', 170000),
(15, 963625641032, 896303741123, 'SBI', 7890023);

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

DROP TABLE IF EXISTS `criminal`;
CREATE TABLE `criminal` (
  `criminal_id` bigint(16) NOT NULL,
  `aadhar_id` bigint(10) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(250) NOT NULL,
  `report` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`criminal_id`, `aadhar_id`, `date`, `place`, `report`) VALUES
(1, 549375896320, '2017-02-06', 'Pune', 'Shot a women.'),
(2, 345678541203, '2017-01-09', 'Nagpur', 'Caught stealing a Lamborgini Gallardo.'),
(3, 123456521369, '2017-02-06', 'Mumbai', 'Hit and run case.'),
(4, 345678541203, '2016-09-12', 'Gwalior', 'Dru0nk and drive case'),
(5, 789320000213, '0201-12-05', 'Jaipur', 'Shot two men'),
(7, 741258501230, '2014-05-03', 'Gwalior', 'Rape Case'),
(8, 780320580021, '2016-07-12', 'Ahemdabad', 'Caught Stealing Gold jewellery '),
(9, 852258450236, '2010-12-07', 'Chandigarh', 'Killed one policemen'),
(10, 120369456320, '2011-05-03', 'Nagpur', 'Illegal property case');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `aadhar_id` bigint(16) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` bigint(20) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`aadhar_id`, `name`, `dob`, `mobileno`, `city`, `state`) VALUES
(120368456123, 'Mahesh Dhakkar', '1988-09-07', 9658702000, 'Pune', 'Maharashtra'),
(120369456320, 'Vijay Nagdeote', '1985-09-07', 9658741230, 'Nagpur', 'Maharashtra'),
(123456521369, 'Pankaj Suthar', '1994-02-01', 2147483647, 'Udaipur', 'Rajasthan'),
(234567458796, 'Abhishek Gramastha', '1994-01-11', 7852301456, 'Nagpur', 'Maharashtra'),
(345678541203, 'Deepak Mishra', '1994-09-26', 8451203476, 'Gorakpur', 'Uttar Pradesh'),
(549375896320, 'Mohit Gupta', '1994-07-03', 8654120796, 'Gwalior', 'Uttar Pradesh'),
(741258501230, 'Digvijay Singh', '1992-08-30', 8233606025, 'Gwalior', 'Uttar Pradesh'),
(780320580021, 'Jaydeep Singh', '1992-12-31', 7812385598, 'Jaipur', 'Rajasthan'),
(789320000213, 'Surbhi Acharya', '1995-12-13', 7896321450, 'Udaipur', 'Rajasthan'),
(852258450236, 'Mohit Bhatiwal', '1994-05-02', 9789656566, 'Bhatinda', 'Punjab'),
(852369256799, 'Shubham Wanne', '1990-11-02', 7418529630, 'Shri Ganganagar', 'Rajasthan'),
(876543996542, 'Subham Gupta', '1994-05-10', 7895214623, 'Kolkata', 'West Bengal'),
(925895678941, 'Hetal Lalwani', '1994-09-16', 7456321258, 'Rajkot', 'Gujrat'),
(963625641032, 'Bhavika Luxkar', '1993-07-13', 7854217302, 'Pune', 'Maharashtra'),
(987625551200, 'Virendra Pawar', '1994-07-23', 9856217302, 'Gwalior', 'Uttar Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`criminal_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`aadhar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `credit_id` bigint(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8325;--
-- Database: `invenioire`
--
DROP DATABASE IF EXISTS `invenioire`;
CREATE DATABASE IF NOT EXISTS `invenioire` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `invenioire`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('jack@gmail.com', 'qwerty'),
('jones@gmail.com', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `credit_id` bigint(16) NOT NULL,
  `ppsn` bigint(16) NOT NULL,
  `accountno` bigint(16) NOT NULL,
  `bankname` varchar(250) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`credit_id`, `ppsn`, `accountno`, `bankname`, `balance`) VALUES
(1, 1236985, 770258963, 'Bank of Ireland', 7500),
(2, 4567899, 772584652, 'Bank of Ireland', 9862),
(3, 5863216, 1236547896, 'Ulster Bank', 74560),
(4, 7412585012300, 3216549870, 'Ulster Bank', 985555),
(5, 7412585012309, 778546920, 'Bank of Ireland', 90000),
(6, 8520369, 123654789, 'Ulster Bank', 78999),
(7, 9513685, 778523692567995, 'Bank of Ireland', 65222),
(8, 9513685, 123698547, 'Ulster Bank', 126000),
(9, 7412585012300, 7785236, 'Bank of Ireland', 25696),
(10, 1236985, 258963211, 'Ulster bank', 258963);

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

DROP TABLE IF EXISTS `criminal`;
CREATE TABLE `criminal` (
  `criminal_id` bigint(16) NOT NULL,
  `ppsn` bigint(16) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(250) NOT NULL,
  `report` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`criminal_id`, `ppsn`, `date`, `place`, `report`) VALUES
(7569, 9517530, '2016-12-31', 'UCB lane', 'Drunk and drive'),
(8004, 8520369, '2015-08-08', 'Dublin', 'Caught stealing jwellery'),
(9005, 5863216, '2015-02-08', 'Wolks', 'Murder case'),
(17854, 9517530, '2017-02-14', 'Galway', 'Shot 3 Police officers'),
(90001, 1236985, '2002-05-05', 'Cork', 'Attempt to Murder');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ppsn` bigint(16) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` int(10) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ppsn`, `name`, `dob`, `mobileno`, `city`, `state`) VALUES
(1236985, 'Mustafa Miaji', '1975-11-11', 4302589, 'Cork', 'Republic of Ireland'),
(4567899, 'Nick Wakes', '1995-05-09', 4425300, 'Carlow', 'Leinster'),
(5863216, 'Peter Wolks', '1996-02-16', 4452369, 'Belfast', 'Ulster'),
(7412585012300, 'Angelina Sleeps', '1995-07-09', 4402302, 'Kilkenny', 'Leinster'),
(7412585012309, 'Ammy jackson', '1993-10-09', 4452369, 'Derry', 'Ulster'),
(8520369, 'Alexendra Daddario', '1993-09-16', 4485203, 'Dundalk', 'Leinster'),
(9513685, 'Jhonny Walker', '1988-09-16', 4498745, 'Dublin', 'Republic of Ireland'),
(9517530, 'Tory Black', '1985-12-12', 4475395, 'Galway', 'Republic of Ireland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`criminal_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ppsn`);
--
-- Database: `invenious`
--
DROP DATABASE IF EXISTS `invenious`;
CREATE DATABASE IF NOT EXISTS `invenious` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `invenious`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`username`, `password`) VALUES
('luke@gmail.com', 'qwerty'),
('drake@gmail.com', 'qwerty');
-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit` (
  `credit_id` bigint(16) NOT NULL,
  `ssn` bigint(16) NOT NULL,
  `accountno` bigint(16) NOT NULL,
  `bankname` varchar(250) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`credit_id`, `ssn`, `accountno`, `bankname`, `balance`) VALUES
(2400195, 467812458, 6845475, 'TD Bank', 4500),
(2500145, 467152459, 6825478, 'JPMorgan Chase', 10000),
(2556145, 467812559, 1825418, 'BMO Harris Bank', 7825),
(4555145, 467812459, 7825475, 'Citizens Bank', 5280),
(6580145, 467812495, 9825475, 'KeyCorp', 3568);

-- --------------------------------------------------------

--
-- Table structure for table `criminal`
--

DROP TABLE IF EXISTS `criminal`;
CREATE TABLE `criminal` (
  `criminal_id` bigint(16) NOT NULL,
  `ssn` bigint(16) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(250) NOT NULL,
  `report` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminal`
--

INSERT INTO `criminal` (`criminal_id`, `ssn`, `date`, `place`, `report`) VALUES
(90016, 467812495, '2007-05-21', 'Fort Worth', 'Harassment'),
(90025, 467152459, '2001-05-20', 'El Paso', 'Child Abuse'),
(90045, 467812458, '2014-11-20', 'San Jose', 'Embezzlement'),
(98001, 467812559, '2001-08-09', 'Boston', 'Insurance Fraud');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `ssn` bigint(16) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ssn`, `name`, `dob`, `mobileno`, `city`, `state`) VALUES
(467152459, 'Bill Jobs', '1985-03-27', 2105552671, 'San Jose', 'California'),
(467812458, 'Mark Henry', '1987-02-15', 2049552671, 'San Antonio', 'Texas'),
(467812459, 'John Doe', '1995-02-01', 2055552671, 'New York', 'New York'),
(467812495, 'Jack Gates', '1997-05-26', 2055782671, 'Indianapolis', 'Indiana'),
(467812559, 'Peter Malan', '2000-06-02', 2058552671, 'Chicago', 'Illinois');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `criminal`
--
ALTER TABLE `criminal`
  ADD PRIMARY KEY (`criminal_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ssn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
