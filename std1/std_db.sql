-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 11:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `reg_date`) VALUES
(1, 100, 'Ingenious Developer1', 'Ingenious Developer1', 'Male', 'Sri Lanka1', '111-111-1245', 'admin@gmail.com', 'uploads/20170923124105.jpg', '2018-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_index` bigint(11) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

CREATE TABLE `class_room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `name`, `student_count`) VALUES
(29, 'Class 1', 15),
(30, 'Class 2', 25),
(31, 'Class 3', 55);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `create_by` bigint(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_category`
--

CREATE TABLE `event_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_category_type`
--

CREATE TABLE `event_category_type` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`) VALUES
(8, 'Mid Exam');

-- --------------------------------------------------------

--
-- Table structure for table `exam_range_grade`
--

CREATE TABLE `exam_range_grade` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `mark_range` varchar(255) NOT NULL,
  `_from` int(11) NOT NULL,
  `_to` int(11) NOT NULL,
  `mark_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_range_grade`
--

INSERT INTO `exam_range_grade` (`id`, `grade_id`, `mark_range`, `_from`, `_to`, `mark_grade`) VALUES
(82, 18, '35-45', 35, 45, 'E'),
(83, 18, '46-55', 46, 55, 'D'),
(84, 18, '56-65', 56, 65, 'C'),
(85, 18, '66-75', 66, 75, 'B'),
(86, 18, '76-100', 76, 100, 'A'),
(87, 19, '35-55', 35, 55, 'E'),
(88, 19, '56-65', 56, 65, 'D'),
(89, 19, '66-75', 66, 75, 'C'),
(90, 19, '76-85', 76, 85, 'B'),
(91, 19, '86-100', 86, 100, 'A'),
(92, 20, '35-45', 35, 45, 'E'),
(93, 20, '46-55', 46, 55, 'D'),
(94, 20, '56-68', 56, 68, 'C'),
(95, 20, '68-78', 68, 78, 'B'),
(96, 20, '79-100', 79, 100, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `exam_timetable`
--

CREATE TABLE `exam_timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_timetable`
--

INSERT INTO `exam_timetable` (`id`, `grade_id`, `exam_id`, `day`, `subject_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(2, 18, 8, 'Monday', 27, 29, 9.00, 10.00),
(3, 18, 8, 'Tuesday', 28, 29, 9.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `hall_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `hall_charge`) VALUES
(18, 'Grade 1', 1500.00, 15),
(19, 'Grade 2', 2500.00, 20),
(20, 'Grade 3', 5000.00, 35);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_notifications`
--

CREATE TABLE `main_notifications` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `main_notifications`
--

INSERT INTO `main_notifications` (`id`, `notification_id`, `_status`, `year`, `month`, `date`, `_isread`) VALUES
(4, 4, 'Payments', 2023, 'October', '2023-10-29', 0),
(5, 5, 'Payments', 2023, 'October', '2023-10-29', 0),
(6, 6, 'Payments', 2023, 'October', '2023-10-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `my_friends`
--

CREATE TABLE `my_friends` (
  `id` int(11) NOT NULL,
  `my_index` bigint(11) NOT NULL,
  `friend_index` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `my_type` varchar(255) NOT NULL,
  `friend_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_history`
--

CREATE TABLE `notification_history` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_chat`
--

CREATE TABLE `online_chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_index` bigint(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `index_number` varchar(255) NOT NULL,
  `my_son_index` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `index_number`, `my_son_index`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `reg_date`, `reg_year`, `reg_month`, `_status`) VALUES
(18, 'G-1', 1, 'Student1 Father', 'Student1-Father-1', 'Male', 'City', '455-454-4545', 'Student1Father1@gmail.com', 'uploads/20231029101429.jpg', '0000-00-00', '2023-10-29', 2023, 'October', ''),
(19, 'G-2', 2, 'Student2 Father', 'Student2Father-2', 'Male', 'City 2', '545-455-7845', 'Student2Father2@gmail.com', 'uploads/20231029102014.jpg', '0000-00-00', '2023-10-29', 2023, 'October', ''),
(20, 'G-3', 3, 'Student3 Father3', 'Student3Father-3', 'Male', 'City 3', '541-641-1623', 'Student3Father3@gmail.com', 'uploads/20231029102255.jpg', '0000-00-00', '2023-10-29', 2023, 'October', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_notifications`
--

CREATE TABLE `payment_notifications` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_notifications`
--

INSERT INTO `payment_notifications` (`id`, `index_number`, `year`, `month`, `date`, `_status`) VALUES
(4, 1, 2023, 'October', '2023-10-29', 1),
(5, 2, 2023, 'October', '2023-10-29', 1),
(6, 3, 2023, 'October', '2023-10-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `paid` double(11,2) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petty_cash`
--

INSERT INTO `petty_cash` (`id`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `paid`, `received_type`, `_status`) VALUES
(4, 100, 100, 2023, 'October', '2023-10-29', '10:36:13', 1350.00, 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_history`
--

CREATE TABLE `petty_cash_history` (
  `id` int(11) NOT NULL,
  `_desc` varchar(255) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_paid` double(11,2) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petty_cash_history`
--

INSERT INTO `petty_cash_history` (`id`, `_desc`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `amount`, `total_paid`, `invoice_number`, `received_type`, `_status`) VALUES
(4, 'Exam Entry Fees', 100, 100, 2023, 'October', '2023-10-29', '10:36:13', 350.00, 1350.00, 4, 'Admin', 'Active'),
(5, 'Petty Fees', 100, 100, 2023, 'October', '2023-10-29', '10:36:13', 1000.00, 1350.00, 4, 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `_status` varchar(255) NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `_status`, `reg_year`, `reg_month`, `reg_date`) VALUES
(26, 1, 'Student1', 'Student1-1', 'Male', 'City', '455-454-4545', 'Student1@gmail.com', 'uploads/20231029101428.jpeg', '0000-00-00', '', 2023, 'October', '2023-10-29'),
(27, 2, 'Student2', 'Student2-2', 'Male', 'City 2', '545-566-5415', 'Student2@gmail.com', 'uploads/20231029102013.jpeg', '0000-00-00', '', 2023, 'October', '2023-10-29'),
(28, 3, 'Student3', 'Student3-3', 'Male', 'City 3', '879-451-4512', 'Student3@gmail.com', 'uploads/20231029102254.jpeg', '0000-00-00', '', 2023, 'October', '2023-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(6, 1, '2023-10-29', 'October', 2023, '10:33:22', 'intime', 'Present'),
(7, 2, '2023-10-29', 'October', 2023, '10:33:28', 'intime', 'Present'),
(8, 3, '2023-10-29', 'October', 2023, '10:33:32', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `index_number`, `grade_id`, `year`) VALUES
(103, 2, 19, 2023),
(104, 3, 20, 2023),
(108, 1, 19, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `student_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `index_number`, `year`, `month`, `date`, `paid`, `_status`, `student_status`) VALUES
(252, 2, 2023, 'October', '2023-10-29', 2500.00, 'Admission Fee', ''),
(253, 2, 2023, 'October', '2023-10-29', 7400.00, 'Monthly Fee1', ''),
(254, 3, 2023, 'October', '2023-10-29', 5000.00, 'Admission Fee', ''),
(255, 3, 2023, 'October', '2023-10-29', 3100.00, 'Monthly Fee1', ''),
(256, 1, 2023, 'October', '2023-10-29', 5000.00, 'Monthly Fee', ''),
(257, 3, 2023, 'October', '2023-10-29', 3000.00, 'Monthly Fee', ''),
(258, 3, 2023, 'October', '2023-10-29', 3000.00, 'Monthly Fee', ''),
(259, 2, 2023, 'October', '2023-10-29', 7300.00, 'Monthly Fee', ''),
(260, 3, 2023, 'October', '2023-10-29', 3000.00, 'Monthly Fee', ''),
(261, 3, 2023, 'October', '2023-10-29', 6500.00, 'Monthly Fee', ''),
(262, 1, 2023, 'October', '2023-10-29', 2500.00, 'Admission Fee', ''),
(263, 1, 2023, 'October', '2023-10-29', 7400.00, 'Monthly Fee1', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_history`
--

CREATE TABLE `student_payment_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `index_number`, `grade_id`, `subject_id`, `teacher_id`, `subject_fee`, `subtotal`, `_status`, `month`, `year`, `date`, `invoice_number`) VALUES
(634, 2, 19, 27, 21, 2000.00, 2000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 1),
(635, 2, 19, 28, 21, 2500.00, 2500.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 1),
(636, 2, 19, 29, 21, 2800.00, 2800.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 1),
(637, 3, 20, 27, 22, 3000.00, 3000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 254),
(638, 1, 18, 27, 20, 1500.00, 1500.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 255),
(639, 1, 18, 28, 20, 1700.00, 1700.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 255),
(640, 1, 18, 29, 20, 1800.00, 1800.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 255),
(641, 3, 20, 27, 22, 3000.00, 3000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 256),
(642, 3, 20, 27, 22, 3000.00, 3000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 257),
(643, 2, 19, 27, 21, 2000.00, 2000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 258),
(644, 2, 19, 28, 21, 2500.00, 2500.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 258),
(645, 2, 19, 29, 21, 2800.00, 2800.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 258),
(646, 3, 20, 27, 22, 3000.00, 3000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 259),
(647, 3, 20, 27, 22, 3000.00, 3000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 260),
(648, 3, 20, 29, 22, 3500.00, 3500.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 260),
(649, 1, 19, 27, 21, 2000.00, 2000.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 262),
(650, 1, 19, 28, 21, 2500.00, 2500.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 262),
(651, 1, 19, 29, 21, 2800.00, 2800.00, 'Monthly Fee', 'October', 2023, '2023-10-29', 262);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `reg_month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `index_number`, `_status`, `sr_id`, `year`, `reg_month`) VALUES
(252, 2, '', 52, 2023, ''),
(253, 2, '', 53, 2023, ''),
(254, 2, '', 54, 2023, ''),
(256, 3, '', 55, 2023, ''),
(257, 3, '', 56, 2023, ''),
(264, 1, '', 52, 2023, ''),
(265, 1, '', 53, 2023, ''),
(266, 1, '', 54, 2023, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(27, 'English'),
(28, 'Urdu'),
(29, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

CREATE TABLE `subject_routing` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(49, 18, 27, 20, 1500.00),
(50, 18, 28, 20, 1700.00),
(51, 18, 29, 20, 1800.00),
(52, 19, 27, 21, 2000.00),
(53, 19, 28, 21, 2500.00),
(54, 19, 29, 21, 2800.00),
(55, 20, 27, 22, 3000.00),
(56, 20, 29, 22, 3500.00),
(57, 20, 28, 22, 3800.00);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `index_number`, `reg_date`) VALUES
(20, 'Teacher 1', 'Teacher1-1234', 'Male', 'Latifabad', '304-857-9548', 'Teacher1@gmail.com', 'uploads/20231029094659.jpeg', 1234, '2023-10-29'),
(21, 'Teacher 2', 'Teacher2-12345', 'Male', 'Latifabad 2', '304-854-8796', 'Teacher2@gmail.com', 'uploads/20231029095454.jpeg', 12345, '2023-10-29'),
(22, 'Teacher 3', 'Teacher3-123456', 'Male', 'Latifabad 3', '315-151-5584', 'Teacher3@gmail.com', 'uploads/20231029095543.jpeg', 123456, '2023-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(3, 1234, '2023-10-29', 'October', 2023, '10:33:36', 'intime', 'Present'),
(4, 12345, '2023-10-29', 'October', 2023, '10:33:41', 'intime', 'Present'),
(5, 123456, '2023-10-29', 'October', 2023, '10:33:44', 'intime', 'Present'),
(6, 123456, '2023-10-29', 'October', 2023, '10:33:49', 'outtime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_history`
--

CREATE TABLE `teacher_salary_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `student_count` int(11) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `grade_id`, `day`, `subject_id`, `teacher_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(88, 18, 'Monday', 27, 20, 29, 9.00, 10.00),
(89, 19, 'Monday', 28, 21, 29, 10.00, 11.00),
(90, 20, 'Monday', 29, 22, 29, 11.00, 12.00),
(92, 18, 'Tuesday', 29, 20, 30, 9.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(29, 'admin@gmail.com', '12345', 'Admin'),
(84, 'Teacher1@gmail.com', '12345', 'Teacher'),
(85, 'Teacher2@gmail.com', '12345', 'Teacher'),
(86, 'Teacher3@gmail.com', '12345', 'Teacher'),
(87, 'Student1@gmail.com', '12345', 'Student'),
(88, 'Student1Father1@gmail.com', '12345', 'Parents'),
(89, 'Student2@gmail.com', '12345', 'Student'),
(90, 'Student2Father2@gmail.com', '12345', 'Parents'),
(91, 'Student3@gmail.com', '12345', 'Student'),
(92, 'Student3Father3@gmail.com', '12345', 'Parents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_category_type`
--
ALTER TABLE `event_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_notifications`
--
ALTER TABLE `main_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_friends`
--
ALTER TABLE `my_friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_history`
--
ALTER TABLE `notification_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_chat`
--
ALTER TABLE `online_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_category`
--
ALTER TABLE `event_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_category_type`
--
ALTER TABLE `event_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `exam_timetable`
--
ALTER TABLE `exam_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `group_message`
--
ALTER TABLE `group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_notifications`
--
ALTER TABLE `main_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `my_friends`
--
ALTER TABLE `my_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification_history`
--
ALTER TABLE `notification_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_chat`
--
ALTER TABLE `online_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_notifications`
--
ALTER TABLE `payment_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `student_payment_history`
--
ALTER TABLE `student_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
