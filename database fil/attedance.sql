-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2024 at 02:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attedance`
--

-- --------------------------------------------------------

--
-- Table structure for table `ate`
--

CREATE TABLE `ate` (
  `id` int NOT NULL,
  `R/N` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ate`
--

INSERT INTO `ate` (`id`, `R/N`, `name`, `class`) VALUES
(1, 1, 'Abdriahiim faarah', 'FROM One');

-- --------------------------------------------------------

--
-- Table structure for table `attancecheck`
--

CREATE TABLE `attancecheck` (
  `id` int NOT NULL,
  `user id` varchar(100) NOT NULL,
  `attedance` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careate`
--

CREATE TABLE `careate` (
  `id` int NOT NULL,
  `className` varchar(100) NOT NULL,
  `Abrr` varchar(100) NOT NULL,
  `fee` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `careate`
--

INSERT INTO `careate` (`id`, `className`, `Abrr`, `fee`) VALUES
(1, 'A', 'Aa', 23),
(2, 'form2', 'two', 34),
(3, 'form1', 'on', 43);

-- --------------------------------------------------------

--
-- Table structure for table `clasess`
--

CREATE TABLE `clasess` (
  `id` int NOT NULL,
  `classes` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clasess`
--

INSERT INTO `clasess` (`id`, `classes`, `section`) VALUES
(1, 'form1', 'A'),
(2, 'form2', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `editclass`
--

CREATE TABLE `editclass` (
  `id` int NOT NULL,
  `className` varchar(100) NOT NULL,
  `Abrr` int NOT NULL,
  `fee` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kalaas`
--

CREATE TABLE `kalaas` (
  `id` int DEFAULT NULL,
  `className` varchar(100) NOT NULL,
  `Abrr` varchar(100) NOT NULL,
  `fee` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kalaas`
--

INSERT INTO `kalaas` (`id`, `className`, `Abrr`, `fee`) VALUES
(NULL, '1A', 'A', 23),
(NULL, 'form1', 'A', 23),
(NULL, 'form4', 'four4', 25),
(NULL, 'form1', 'A', 23),
(NULL, 'form4', 'four4', 25),
(NULL, 'form3', 'A', 23),
(NULL, 'form3', 'A', 23);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'ha', '123');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `ID` int NOT NULL,
  `section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`ID`, `section`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `className` varchar(100) NOT NULL,
  `Abrr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `className`, `Abrr`) VALUES
(1, 'A', 'a'),
(2, 'A', 'a'),
(3, 'B', 'A'),
(4, 'B', 'ba'),
(5, 'b', 'bb');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `mother` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` varchar(100) NOT NULL,
  `Age` int NOT NULL,
  `class` varchar(1000) NOT NULL,
  `Section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `mother`, `sex`, `Age`, `class`, `Section`) VALUES
(28, 'jjjjjjjjjjjjjjjjjjj', 'haalim shire yuusuf', 'A', 12, 'form2', 'A'),
(30, 'Abdirahmaan Aden Ali', 'haalim shire yuusuf', 'female', 123, 'form2', 'A'),
(31, 'faadumo Ali jabariil', 'xaaalimo Ali Adan', 'female', 12, 'form2', 'A'),
(32, 'faadumo Ali jabariil', 'xaaalimo Ali Adan', 'female', 12, 'form2', 'A'),
(33, 'faadumo Ali jabariil', 'aodihao', 'female', 90, 'form2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `xadirrs1`
--

CREATE TABLE `xadirrs1` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `attedance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `xadirrs1`
--

INSERT INTO `xadirrs1` (`id`, `name`, `class`, `section`, `attedance`) VALUES
(1, 'form one', 'A', 'B', 'Absent'),
(1, 'form2', 'A', 'B', 'present'),
(1, 'form2', 'A', 'B', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present'),
(1, 'farah', 'form4', 'A', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `xadirs`
--

CREATE TABLE `xadirs` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `secrion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `xadirs`
--

INSERT INTO `xadirs` (`id`, `name`, `class`, `secrion`) VALUES
(1, 'Abdirahman', 'FORM one', 'A'),
(2, 'mohamde Ali farah', 'form2', 'A'),
(3, 'jaamac cali Adan', 'Form two', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ate`
--
ALTER TABLE `ate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attancecheck`
--
ALTER TABLE `attancecheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careate`
--
ALTER TABLE `careate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clasess`
--
ALTER TABLE `clasess`
  ADD PRIMARY KEY (`section`);

--
-- Indexes for table `editclass`
--
ALTER TABLE `editclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ate`
--
ALTER TABLE `ate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attancecheck`
--
ALTER TABLE `attancecheck`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careate`
--
ALTER TABLE `careate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `editclass`
--
ALTER TABLE `editclass`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
