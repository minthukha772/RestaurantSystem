-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 11:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzarestaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_Id` int(11) NOT NULL,
  `Employee_Name` varchar(255) NOT NULL,
  `Employee_Password` varchar(255) NOT NULL,
  `Employee_Gender` varchar(255) NOT NULL,
  `Employee_Dob` date NOT NULL,
  `Employee_Hdate` date NOT NULL,
  `Employee_Position` varchar(255) NOT NULL,
  `Employee_Address` varchar(255) NOT NULL,
  `Employee_Ph` varchar(255) NOT NULL,
  `Employee_Salary` double(200,3) NOT NULL,
  `Employee_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_Id`, `Employee_Name`, `Employee_Password`, `Employee_Gender`, `Employee_Dob`, `Employee_Hdate`, `Employee_Position`, `Employee_Address`, `Employee_Ph`, `Employee_Salary`, `Employee_Type`) VALUES
(1, 'Aung Aung', '1234', 'Male', '1976-04-21', '2020-08-02', 'Manager', 'Tamwe', '097931237688', 2000000.000, 'Admin'),
(2, 'Thu Zar', '1234567', 'Female', '1995-09-03', '2019-09-17', 'Cashier', 'Yankin', '09799609380', 200000.000, 'User'),
(3, 'Zaw Zaw', '', 'Male', '1998-09-01', '2020-09-01', 'Waiter', 'Hlaing', '0978567843', 120000.000, 'null'),
(4, 'Zaw Min', '', 'Male', '1992-09-03', '2018-04-11', 'Waiter Leader', 'Yadanar Street,Bahan', '0978430213', 200000.000, 'null'),
(5, 'Aung Zaw', '', 'Male', '1993-09-15', '2020-01-01', 'Waiter', '15 St,Lanmadaw', '097823456', 120000.000, 'null'),
(6, 'Kyaw Swar', '', 'Male', '1997-09-02', '2020-05-06', 'Waiter', '12 St,Latha', '097654321', 120000.000, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `floor1`
--

CREATE TABLE `floor1` (
  `Table_Id` int(11) NOT NULL,
  `Table_Status` varchar(255) NOT NULL,
  `Entry_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor1`
--

INSERT INTO `floor1` (`Table_Id`, `Table_Status`, `Entry_Date`) VALUES
(1, 'Booked', '0000-00-00'),
(2, 'Booked', '0000-00-00'),
(3, 'Booked', '0000-00-00'),
(4, 'UnBooked', '0000-00-00'),
(5, 'UnBooked', '0000-00-00'),
(6, 'UnBooked', '0000-00-00'),
(7, 'UnBooked', '0000-00-00'),
(8, 'UnBooked', '0000-00-00'),
(9, 'UnBooked', '0000-00-00'),
(10, 'UnBooked', '0000-00-00'),
(11, 'UnBooked', '0000-00-00'),
(12, 'UnBooked', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Food_Id` int(11) NOT NULL,
  `Food_Name` varchar(255) NOT NULL,
  `Food_Price` double(200,3) NOT NULL,
  `Food_Quantity` int(11) NOT NULL,
  `Food_Category` varchar(255) NOT NULL,
  `Food_Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Food_Id`, `Food_Name`, `Food_Price`, `Food_Quantity`, `Food_Category`, `Food_Description`) VALUES
(1, 'Chicken Pizza', 20000.000, 100, 'Food', 'tasty'),
(2, 'Cola', 1000.000, 200, 'Drink', 'fesh'),
(3, 'Spata noodle', 6000.000, 100, 'Food', 'very good'),
(4, 'ice cream', 2000.000, 50, 'desserts', 'sweet'),
(5, 'fried noodle', 3000.000, 100, 'Food', 'Spicy '),
(6, 'Beef Pizza', 20000.000, 100, 'food', 'spicy and delicious'),
(7, 'Pizza Maru', 9500.000, 120, 'Food', 'Italian style'),
(8, 'Nt Halal Pizza', 12550.000, 50, 'Food', 'Chcicken taste'),
(9, 'Strawberry ice cream', 2500.000, 30, 'Desserts', 'very tasty'),
(10, 'Milk', 1500.000, 200, 'Drink', 'a little sweet');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `Order_ID` int(11) NOT NULL,
  `Order_Type` varchar(255) NOT NULL,
  `Order_Total` double(200,3) NOT NULL,
  `Entry_Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`Order_ID`, `Order_Type`, `Order_Total`, `Entry_Date`) VALUES
(1, 'Table', 20000.000, '0000-00-00'),
(2, 'Table', 46000.000, '2020-08-25'),
(3, 'Table', 88000.000, '2020-08-25'),
(4, 'Table', 20000.000, '2020-08-25'),
(5, 'Table', 20000.000, '2020-08-25'),
(6, 'Table', 4000.000, '2020-08-25'),
(7, 'Table', 40000.000, '2020-08-25'),
(8, 'Table', 68000.000, '2020-08-26'),
(9, 'Table', 48000.000, '2020-08-28'),
(10, 'Table', 200000.000, '2020-08-28'),
(11, 'Table', 20000.000, '2020-08-29'),
(12, 'Table', 42000.000, '2020-09-03'),
(13, 'Table', 6000.000, '2020-09-04'),
(14, 'Table', 12000.000, '2020-09-04'),
(15, 'Table', 43000.000, '2020-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Id` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Table_Id` int(11) NOT NULL,
  `Food_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Sub_Total` double(200,3) NOT NULL,
  `Selldate` date NOT NULL,
  `Entrydate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Id`, `Order_ID`, `Table_Id`, `Food_Id`, `Quantity`, `Sub_Total`, `Selldate`, `Entrydate`) VALUES
(1, 4, 1, 1, 1, 20000.000, '2020-08-25', '2020-08-25'),
(2, 5, 4, 1, 1, 20000.000, '2020-08-25', '2020-08-25'),
(3, 6, 1, 2, 2, 4000.000, '2020-08-25', '2020-08-25'),
(4, 7, 2, 1, 2, 40000.000, '2020-08-25', '2020-08-25'),
(5, 8, 3, 1, 3, 60000.000, '2020-08-26', '2020-08-26'),
(6, 8, 3, 2, 4, 8000.000, '2020-08-26', '2020-08-26'),
(7, 9, 2, 1, 2, 40000.000, '2020-08-28', '2020-08-28'),
(8, 9, 2, 2, 4, 8000.000, '2020-08-28', '2020-08-28'),
(9, 10, 2, 1, 10, 200000.000, '2020-08-28', '2020-08-28'),
(10, 11, 3, 1, 1, 20000.000, '2020-08-29', '2020-08-29'),
(11, 12, 2, 1, 2, 40000.000, '2020-09-03', '2020-09-03'),
(12, 12, 2, 4, 1, 2000.000, '2020-09-03', '2020-09-03'),
(13, 13, 2, 2, 3, 6000.000, '2020-09-04', '2020-09-04'),
(14, 14, 3, 4, 3, 6000.000, '2020-09-04', '2020-09-04'),
(15, 14, 3, 2, 3, 6000.000, '2020-09-04', '2020-09-04'),
(16, 15, 4, 1, 2, 40000.000, '2020-09-05', '2020-09-05'),
(17, 15, 4, 2, 3, 3000.000, '2020-09-05', '2020-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `temptable`
--

CREATE TABLE `temptable` (
  `Id` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Food_ID` int(11) NOT NULL,
  `Food_Name` varchar(255) NOT NULL,
  `Order_Quantity` int(11) NOT NULL,
  `Order_Type` varchar(255) NOT NULL,
  `Order_Table` int(11) NOT NULL,
  `Order_Totalprice` double(200,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temptable`
--

INSERT INTO `temptable` (`Id`, `Order_ID`, `Food_ID`, `Food_Name`, `Order_Quantity`, `Order_Type`, `Order_Table`, `Order_Totalprice`) VALUES
(85, 2, 1, 'Chicken Pizza', 2, 'Table', 1, 40000.000),
(86, 2, 2, 'Cola', 3, 'Table', 1, 6000.000),
(87, 3, 1, 'Chicken Pizza', 4, 'Table', 2, 80000.000),
(88, 3, 2, 'Cola', 4, 'Table', 2, 8000.000),
(89, 4, 1, 'Chicken Pizza', 1, 'Table', 1, 20000.000),
(90, 5, 1, 'Chicken Pizza', 1, 'Table', 4, 20000.000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_Id`);

--
-- Indexes for table `floor1`
--
ALTER TABLE `floor1`
  ADD PRIMARY KEY (`Table_Id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Food_Id`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `con` (`Order_ID`),
  ADD KEY `con1` (`Table_Id`),
  ADD KEY `con2` (`Food_Id`);

--
-- Indexes for table `temptable`
--
ALTER TABLE `temptable`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `floor1`
--
ALTER TABLE `floor1`
  MODIFY `Table_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `Food_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `temptable`
--
ALTER TABLE `temptable`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `con2` FOREIGN KEY (`Food_Id`) REFERENCES `food` (`Food_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
