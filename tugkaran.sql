-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 02:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugkaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `ab_id` int(122) NOT NULL,
  `content` longtext NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`ab_id`, `content`, `remark`) VALUES
(1, 'Our mission is to provide independent restaurants and local chains with outstanding online ordering services and the ability to use their websites to communicate effectively and effortlessly with their customers. \n\nOur menus and services empower those who use them by effortlessly making the Internet an enjoyable tool for better service. Our goal is to be the Tugkaran Online Food Ordering and Reservation wowing our customers with innovation and service.', 'mission'),
(2, 'The Tugkaran is one of the exceptional Filipino cuisine that is being located at Purok Calube, Aurora Zamboanga del Sur. Because of their services and accommodation the Tugkaran restaurant continually serving for more and more costumers.  The Tugkaran restaurant is serving in town for almost two years, it is being establish since September 2015 and they currently having eight restaurant hostesses. It is owned and managed by Mrs. Eunice Jomuad Arandid.', 'history'),
(3, 'We are building a restaurant  that creates value by listening to the market and responding to its needs. A restaurant  that creates value by listening to one another and supporting one another, a place where we work together to nurture one another in order to grow and become great at what we do. Our menus and services become the leading edge in our field. We are seen as the team that leads the pack, creating interest and excitement with every new release. Our customers prize their relationship with us as we are the ones who take care of them, who get the job done.', 'vision');

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `a_id` int(122) NOT NULL,
  `r_id` int(122) NOT NULL,
  `food_id` int(122) NOT NULL,
  `food_qty` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`a_id`, `r_id`, `food_id`, `food_qty`) VALUES
(1, 1, 6, 5),
(2, 1, 7, 1),
(3, 1, 13, 1),
(4, 1, 15, 1),
(5, 1, 14, 1),
(6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barangay_delivery`
--

CREATE TABLE `barangay_delivery` (
  `bd_id` int(122) NOT NULL,
  `barangay` text NOT NULL,
  `deliv_charge` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangay_delivery`
--

INSERT INTO `barangay_delivery` (`bd_id`, `barangay`, `deliv_charge`) VALUES
(1, 'Kahayagan East', 50),
(2, 'Commonwealth', 40),
(3, 'La Victoria', 30),
(4, 'Libertad', 30),
(6, 'Poblacion', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(122) NOT NULL,
  `cu_id` int(122) NOT NULL,
  `food_id` int(122) NOT NULL,
  `cart_qty` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(122) NOT NULL,
  `cat_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Main Dish'),
(2, 'Dessert'),
(6, 'Coolers');

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `cater_id` int(122) NOT NULL,
  `event_name` text NOT NULL,
  `price` int(122) NOT NULL,
  `PMin` int(122) NOT NULL,
  `PMax` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`cater_id`, `event_name`, `price`, `PMin`, `PMax`) VALUES
(1, 'Bday', 130, 50, 60),
(2, 'debut', 150, 60, 100),
(3, 'Anniversary', 120, 70, 100),
(6, 'Graduation', 150, 50, 100),
(7, 'Qwerty', 250, 30, 50);

-- --------------------------------------------------------

--
-- Table structure for table `catering_details`
--

CREATE TABLE `catering_details` (
  `cater_detail_id` int(122) NOT NULL,
  `cater_id` int(122) NOT NULL,
  `food_id` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_details`
--

INSERT INTO `catering_details` (`cater_detail_id`, `cater_id`, `food_id`) VALUES
(10, 1, 2),
(11, 1, 6),
(12, 1, 7),
(13, 1, 1),
(18, 2, 2),
(19, 2, 7),
(20, 2, 1),
(21, 3, 2),
(22, 3, 7),
(23, 3, 1),
(37, 6, 2),
(38, 6, 6),
(39, 6, 7),
(40, 6, 1),
(41, 6, 13),
(42, 6, 14),
(43, 7, 6),
(44, 7, 7),
(45, 7, 1),
(46, 7, 13),
(47, 7, 14);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(122) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `content`) VALUES
(1, 'For more information on Tugkaran Restaurant and other related services please send your email at tugkaran@gmail.com or directly call at 0915- 295- 0739 | 0946- 981- 0267');

-- --------------------------------------------------------

--
-- Table structure for table `custom_r`
--

CREATE TABLE `custom_r` (
  `custom_r_id` int(122) NOT NULL,
  `r_id` int(122) NOT NULL,
  `food_id` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_r`
--

INSERT INTO `custom_r` (`custom_r_id`, `r_id`, `food_id`) VALUES
(1, 1, '6'),
(2, 1, '7'),
(3, 1, '1'),
(4, 1, '13');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_detail`
--

CREATE TABLE `delivery_detail` (
  `dd_id` int(122) NOT NULL,
  `bd_id` int(122) NOT NULL,
  `house_street` varchar(122) NOT NULL,
  `order_id` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_detail`
--

INSERT INTO `delivery_detail` (`dd_id`, `bd_id`, `house_street`, `order_id`) VALUES
(1, 1, 'sds', 5),
(2, 2, 'San Francisco', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dis_senior`
--

CREATE TABLE `dis_senior` (
  `dis_id` int(122) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dis_senior`
--

INSERT INTO `dis_senior` (`dis_id`, `discount`) VALUES
(1, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `downpayment`
--

CREATE TABLE `downpayment` (
  `d_id` int(122) NOT NULL,
  `d_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downpayment`
--

INSERT INTO `downpayment` (`d_id`, `d_price`) VALUES
(1, 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `food_id` int(100) NOT NULL,
  `catid` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `food_name` varchar(122) NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`food_id`, `catid`, `type_id`, `food_name`, `price`, `photo`, `descrip`) VALUES
(1, 2, 3, 'Yema Cake', 190.4, 'Yema-Cake-Recipe.jpg', 'Sweet'),
(6, 1, 7, 'Crispy Pancit', 145.6, 'FB_IMG_1550840752704.jpg', 'colorful'),
(7, 1, 8, 'Shrimp Guisado', 145.6, 'FB_IMG_1550840351385.jpg', 'shrimp'),
(13, 2, 9, 'Leche Flan', 201.6, 'frag2.png', 'sweets'),
(14, 6, 10, 'Blue Lemonade', 72.8, 'frag1.png', 'cool'),
(15, 1, 7, 'Qwerty', 339.36, 'jen2.jpg', 'Description x.');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `order_id` int(122) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_type` text NOT NULL,
  `curr_order_date` date NOT NULL,
  `order_time` varchar(12) NOT NULL,
  `order_date` date NOT NULL,
  `order_amount` varchar(122) NOT NULL,
  `payment_mode` text NOT NULL,
  `order_type` varchar(122) NOT NULL,
  `status` text NOT NULL,
  `order_num` varchar(12) NOT NULL,
  `invoice_num` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`order_id`, `user_id`, `customer_type`, `curr_order_date`, `order_time`, `order_date`, `order_amount`, `payment_mode`, `order_type`, `status`, `order_num`, `invoice_num`) VALUES
(1, 0, 'senior', '2020-04-04', '', '0000-00-00', '488', '', 'walk in', 'approve', '', ''),
(2, 0, 'junior', '2020-04-04', '', '0000-00-00', '492.8', '', 'walk in', 'approve', '', ''),
(3, 0, 'senior', '2020-04-04', '01:30 PM', '2020-04-16', '801.92', 'Cash', 'dinein', 'approve', '', '534909'),
(4, 4, 'junior', '2020-06-02', '01:00 AM', '2020-06-25', '190.4', 'Cash', 'pickup', 'pending', '', '735143'),
(5, 10, 'junior', '2020-06-07', '09:00 AM', '2020-06-25', '542.8', 'Cash', 'delivery', 'pending', '', '595667'),
(6, 4, 'junior', '2021-01-22', '01:00 AM', '2021-01-22', '3243.2', 'Cash', 'delivery', 'approve', '', '480872');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_details`
--

CREATE TABLE `food_order_details` (
  `fod_id` int(122) NOT NULL,
  `order_id` int(122) NOT NULL,
  `food_id` int(122) NOT NULL,
  `food_qty` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order_details`
--

INSERT INTO `food_order_details` (`fod_id`, `order_id`, `food_id`, `food_qty`) VALUES
(1, 1, 1, 1),
(2, 1, 6, 1),
(3, 1, 7, 1),
(4, 1, 13, 1),
(5, 2, 7, 1),
(6, 2, 13, 1),
(7, 2, 6, 1),
(8, 3, 7, 1),
(9, 3, 13, 1),
(11, 3, 14, 9),
(12, 4, 1, 1),
(13, 5, 6, 1),
(14, 5, 7, 1),
(15, 5, 13, 1),
(21, 6, 7, 4),
(22, 6, 13, 13);

-- --------------------------------------------------------

--
-- Table structure for table `food_order_details_2`
--

CREATE TABLE `food_order_details_2` (
  `fod_2` int(122) NOT NULL,
  `order_id` int(122) NOT NULL,
  `food_id` int(122) NOT NULL,
  `food_qty` int(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order_details_2`
--

INSERT INTO `food_order_details_2` (`fod_2`, `order_id`, `food_id`, `food_qty`) VALUES
(11, 5, 6, 1),
(12, 5, 7, 1),
(13, 5, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `type_id` int(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_type`
--

INSERT INTO `food_type` (`type_id`, `cat_id`, `type_name`) VALUES
(3, 2, 'Cake'),
(5, 5, 'Special Coolers'),
(6, 5, 'Drinks'),
(7, 1, 'Veggies & Pasta'),
(8, 1, 'Sea Foods'),
(9, 2, 'Sweets'),
(10, 6, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `pick_up_details`
--

CREATE TABLE `pick_up_details` (
  `pud_id` int(122) NOT NULL,
  `p_to_pick` text NOT NULL,
  `contact` varchar(12) NOT NULL,
  `order_id` int(12) NOT NULL,
  `type` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pick_up_details`
--

INSERT INTO `pick_up_details` (`pud_id`, `p_to_pick`, `contact`, `order_id`, `type`) VALUES
(1, 'Qert', 'ddsds', 3, 'dinein');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(122) NOT NULL,
  `cater_id` int(11) NOT NULL,
  `cu_id` int(122) NOT NULL,
  `cu_first` text NOT NULL,
  `cu_last` text NOT NULL,
  `cu_add` varchar(122) NOT NULL,
  `cu_mail` varchar(122) NOT NULL,
  `cu_phone` varchar(122) NOT NULL,
  `r_date_from` date NOT NULL,
  `r_date_to` date NOT NULL,
  `mode_of_payment` varchar(122) NOT NULL,
  `date_reserved` date NOT NULL,
  `total_visitor` varchar(122) NOT NULL,
  `payable` decimal(10,0) NOT NULL,
  `balance` decimal(10,0) NOT NULL,
  `downpayment` int(122) NOT NULL,
  `add_ons_ment` float NOT NULL,
  `adOn_mis` text NOT NULL,
  `r_status` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `cater_id`, `cu_id`, `cu_first`, `cu_last`, `cu_add`, `cu_mail`, `cu_phone`, `r_date_from`, `r_date_to`, `mode_of_payment`, `date_reserved`, `total_visitor`, `payable`, `balance`, `downpayment`, `add_ons_ment`, `adOn_mis`, `r_status`) VALUES
(1, 1, 4, 'Joemy', 'Flores', 'Kahayagan East, Aurora, Zamboanga del sur', 'jayflores@gmail.com', '09122911792', '2020-04-15', '2020-04-30', 'Pera Padala', '2020-04-04', '50', '6500', '6500', 0, 1677.76, 'unpaid', 'cancel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(122) NOT NULL,
  `picture` varchar(122) NOT NULL,
  `Name` text NOT NULL,
  `contact` varchar(122) NOT NULL,
  `username` varchar(122) NOT NULL,
  `passsword` varchar(122) NOT NULL,
  `position` text NOT NULL,
  `date_created` date NOT NULL,
  `status` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `picture`, `Name`, `contact`, `username`, `passsword`, `position`, `date_created`, `status`) VALUES
(1, '', 'Eunice Jomuad Arandid', '09469810267', 'jayflores139@gmail.com', '$2y$10$BCRc4WPAe1XY1vHcIgA0S.s.wI5wpz3xhBT4qljcTf4jIhpoVtada', 'administrator', '2019-02-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(122) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `address` varchar(112) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `dateadded` date NOT NULL,
  `email` varchar(122) NOT NULL,
  `username` varchar(122) NOT NULL,
  `password` varchar(122) NOT NULL,
  `token` varchar(122) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `address`, `contact`, `dateadded`, `email`, `username`, `password`, `token`) VALUES
(1, 'Kate', 'Alivio', 'F', 'AZDS', '09469843408', '2019-02-22', 'alivio@gmail.com', 'kate', '$2y$10$rzGfMoQ7SBkKz2Jc.qLzhORCGdCzmlQU7j/T.ktdrEZOkpQco/Tse', ''),
(2, 'acel', 'hilo', 'F', 'AZDS', '09469843408', '2019-02-22', 'hilo@gmail.com', 'acel', '$2y$10$aavUqjtUwzwbv9hz9l7JzebyiGgpx4HoxdzCV2Xpno4Ql321m5Dl6', ''),
(3, 'sdf', 'sdf', 'M', 'sdfds', 'sdfsd', '2019-02-22', 'dsf@sdsd.sd', 'wewe', '$2y$10$rAyv48NweWk1FrYWioo9kOdtRTB3NYJ9vjInCM8.yf6vwYWOxd1d.', ''),
(4, 'Joemy', 'Flores', 'M', 'Kahayagan East, Aurora, Zamboanga del sur', '09122911792', '2019-02-22', 'jayflores@gmail.com', 'username', '$2y$10$ZpClrWTWIPgnvAQakvJAz.OOHDYi/TF.cB98ybOnChuDY0xm.2HGe', ''),
(5, 'JV', 'Aamir', 'F', 'AZDS', '09888886655', '2019-02-22', 'charlenealivio@gmail.com', 'JV', '$2y$10$cZXseJCpU218tOD0KlBb2OFvlxXVK8bWSYkeAi839dhmH9jJmRydi', ''),
(6, 'john', 'michael', 'F', 'sagrada, tambulig, ZDS', '09303306789', '2019-02-22', 'johncel@gmail.com', 'johncel', '$2y$10$H/sfLdjUJNag3Zv8f1TiWuZd95MQwz.6kJPpy7uKkfmO1n5l8o85m', ''),
(7, 'JV', 'Aamir', 'M', 'AZDS', '09469843408', '2019-02-23', 'likliksamuya@gmail.com', 'vj', '$2y$10$cJiTCN7yKPn5SjmRnhKYEOdw1Cv8H/ux.pAflQOWVMR3Wcylv7saq', ''),
(8, 'Bruce', 'Wayne', 'M', 'Bliss, Aurora Zamboanga Del Sur', '09999999999', '2019-02-23', 'Bruce@gmail.com', 'Bruce', '$2y$10$Px1rrA/wX8myNiXQ1DO4BO7iPzOGT2NGG6apNN5rMcMhfgP6iCN3C', ''),
(9, 'rwsdfsd', 'fdfdfdf', 'M', 'fdfdfd', 'dfdfd', '2019-02-24', 'espirituwil45@gmail.com', 'dfdfd', '$2y$10$5Q1kFvryuFidmZQ8bDEuT.Se7ytjb3CLQ4VWcmWKcXKPX9.AxXVXi', ''),
(10, 'Joemy', 'Flores', 'M', 'Kahayagan East, Aurora, Zamboanga del Sur', '09122911792', '2020-06-07', 'jayflores139@gmail.com', 'username123', '$2y$10$iZ6XphcZbaSuf9RrOBxrZeWZ9/jOGJ23Jgpx6JUkfUIkwM0nY5If6', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_f`
--

CREATE TABLE `user_f` (
  `ID` int(122) NOT NULL,
  `username` varchar(122) NOT NULL,
  `password` varchar(122) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_f`
--

INSERT INTO `user_f` (`ID`, `username`, `password`) VALUES
(1, 'username', 'password'),
(2, 'jiejohneroy', 'eea75ccv86axcppd093321aacm'),
(3, '09505557827', 'joemy@)'),
(4, 'asd', 'asdas'),
(5, '09971572720', 'narutolorenzh8inata1234567890'),
(6, '09971572720', 'narutolorenzhinata1234567890'),
(7, 'janlorenz_lapuz123@yahoo.com', 'narutolorenzhinata1234567890'),
(8, 'janlorenz_lapuz123@yahoo.com', 'narutolorenzhinata1234567890'),
(9, 'janlorenz_lapuz123@yahoo.com', 'narutolorenzhinata1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`ab_id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `barangay_delivery`
--
ALTER TABLE `barangay_delivery`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`cater_id`);

--
-- Indexes for table `catering_details`
--
ALTER TABLE `catering_details`
  ADD PRIMARY KEY (`cater_detail_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `custom_r`
--
ALTER TABLE `custom_r`
  ADD PRIMARY KEY (`custom_r_id`);

--
-- Indexes for table `delivery_detail`
--
ALTER TABLE `delivery_detail`
  ADD PRIMARY KEY (`dd_id`);

--
-- Indexes for table `dis_senior`
--
ALTER TABLE `dis_senior`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `downpayment`
--
ALTER TABLE `downpayment`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `food_order_details`
--
ALTER TABLE `food_order_details`
  ADD PRIMARY KEY (`fod_id`);

--
-- Indexes for table `food_order_details_2`
--
ALTER TABLE `food_order_details_2`
  ADD PRIMARY KEY (`fod_2`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `pick_up_details`
--
ALTER TABLE `pick_up_details`
  ADD PRIMARY KEY (`pud_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_f`
--
ALTER TABLE `user_f`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `ab_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `a_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `barangay_delivery`
--
ALTER TABLE `barangay_delivery`
  MODIFY `bd_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(122) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `cater_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catering_details`
--
ALTER TABLE `catering_details`
  MODIFY `cater_detail_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_r`
--
ALTER TABLE `custom_r`
  MODIFY `custom_r_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_detail`
--
ALTER TABLE `delivery_detail`
  MODIFY `dd_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dis_senior`
--
ALTER TABLE `dis_senior`
  MODIFY `dis_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downpayment`
--
ALTER TABLE `downpayment`
  MODIFY `d_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `food_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `order_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_order_details`
--
ALTER TABLE `food_order_details`
  MODIFY `fod_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `food_order_details_2`
--
ALTER TABLE `food_order_details_2`
  MODIFY `fod_2` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pick_up_details`
--
ALTER TABLE `pick_up_details`
  MODIFY `pud_id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_f`
--
ALTER TABLE `user_f`
  MODIFY `ID` int(122) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
