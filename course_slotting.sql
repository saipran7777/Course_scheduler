-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 02:28 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `course_slotting`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `slot` text NOT NULL,
  `instructor` text NOT NULL,
  `type` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `year` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `roomno` text NOT NULL,
  `totcap` int(11) NOT NULL DEFAULT '60',
  `outcap` int(11) NOT NULL DEFAULT '10',
  `alloc_type` varchar(11) NOT NULL DEFAULT 'Random',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_id`, `course_name`, `slot`, `instructor`, `type`, `clash_sorted`, `time`, `year`, `batch`, `dept`, `roomno`, `totcap`, `outcap`, `alloc_type`) VALUES
(1, 'CE4940', 'Project I', 'XX', 'Manu Santhanam', 'Core', 0, '2018-03-27 19:36:43', '2014', 'Dual Degree', 'Infrastructure', '', 60, 10, 'Random'),
(2, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:52:30', '2014', 'Dual Degree', 'Infrastructure', '', 60, 10, 'Random'),
(3, 'CE6010', 'Construction Contracts & Specifications', 'A', 'Ramamurthy K', 'Core', 0, '2018-04-03 12:01:21', '2014', 'Dual Degree', 'Infrastructure', 'BSB 206', 60, 10, 'Random'),
(4, 'CE4941', 'Project I', 'XX', 'Manu Santhanam', 'Core', 0, '2018-04-03 04:44:52', '2014', 'Dual Degree', 'BTCM', '', 60, 10, 'Random'),
(5, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:52:45', '2014', 'Dual Degree', 'BTCM', '', 60, 10, 'Random'),
(6, 'CE4942', 'Project I', 'XX', 'Shiva Nagendra S M', 'Core', 0, '2018-04-03 04:45:23', '2014', 'Dual Degree', 'Environmental Engineering', '', 60, 10, 'Random'),
(7, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:52:58', '2014', 'Dual Degree', 'Environmental Engineering', '', 60, 10, 'Random'),
(8, 'CE5170', 'Physico-Chemical process for water and wastewater treatment', '', 'Mathavakumar S', 'Core', 0, '2018-04-03 12:08:42', '2014', 'Dual Degree', 'Environmental Engineering', 'ED', 60, 10, 'Random'),
(9, 'CE4943', 'Project I', 'XX', 'Thyagaraj T', 'Core', 0, '2018-04-03 04:45:45', '2014', 'Dual Degree', 'Geotechnical Engineering', '', 60, 10, 'Random'),
(10, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:53:10', '2014', 'Dual Degree', 'Geotechnical Engineering', '', 60, 10, 'Random'),
(11, 'CE5330', 'Advanced Foundation Engg.', 'B', 'Subhadeep Banerjee', 'Core', 0, '2018-04-03 12:02:11', '2014', 'Dual Degree', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(12, 'CE4944', 'Project I', 'XX', 'Shiva Nagendra S M', 'Core', 0, '2018-04-03 04:46:21', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(13, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:53:26', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(14, 'CE5450', 'Applied Hydraulic Engg', 'E', ' Murty B S', 'Core', 0, '2018-04-03 12:08:42', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 60, 10, 'Random'),
(15, 'CE5460', 'Ground Water Engg', 'G', 'Mohan S', 'Core', 0, '2018-04-03 12:08:42', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 60, 10, 'Random'),
(16, 'CE4945', 'Project I', 'XX', 'Amlan K Sengupta', 'Core', 0, '2018-04-03 04:46:42', '2014', 'Dual Degree', 'Structural Engineering', '', 60, 10, 'Random'),
(17, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:53:43', '2014', 'Dual Degree', 'Structural Engineering', '', 60, 10, 'Random'),
(18, 'CE5620', 'Structural Dynamics ', 'C', 'Nageswara Rao B', 'Core', 0, '2018-03-26 07:51:03', '2014', 'Dual Degree', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(19, 'CE4946', 'Project I', 'XX', 'Lelitha Devi', 'Core', 0, '2018-04-03 04:47:13', '2014', 'Dual Degree', 'Transportation Engineering', '', 60, 10, 'Random'),
(20, 'CE4950', 'VIVA VOCE', 'WW', 'Arul Jayachandran S', 'Core', 0, '2018-04-03 07:54:04', '2014', 'Dual Degree', 'Transportation Engineering', '', 60, 10, 'Random'),
(21, 'CE5831', 'Transportation Engineering Studio', 'S', 'Gitakrishnan Ramadurai', 'Core', 1, '2018-04-03 12:02:32', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(22, 'HSE3', 'Humanities Elective 3', 'D', '', 'Core', 0, '2018-03-19 05:53:56', '2015', 'B Tech', 'None', '', 60, 10, 'Random'),
(23, 'CE3350', 'Geotechnical Engineering', 'D', 'Rajagopal K', 'Core', 0, '2018-04-03 06:53:21', '2016', 'B Tech', 'None', 'BSB 203', 60, 10, 'Random'),
(24, 'CE3030', 'Water Resources Engineering', 'E', 'Balaji Narasimhan', 'Core', 0, '2018-04-03 07:24:12', '2016', 'B Tech', 'None', 'BSB 203', 60, 10, 'Random'),
(25, 'CE3060', 'Basic RC Design', 'C', 'Rupen Goswami', 'Core', 0, '2018-03-26 07:53:06', '2016', 'B Tech', 'None', 'BSB 202', 60, 10, 'Random'),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', 'P', 'Sachin S Gunthe', 'Core', 0, '2018-04-03 12:08:42', '2016', 'B Tech', 'None', 'ED', 60, 10, 'Random'),
(27, 'CE3410', 'Construction Material Lab', 'Q', 'Thyagaraj T', 'Core', 0, '2018-03-26 09:34:17', '2016', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(28, 'BT1010', 'Life Sciences', 'G', '', 'Core', 0, '2018-03-19 05:53:56', '2016', 'B Tech', 'None', '', 60, 10, 'Random'),
(29, 'CE2310', 'Mechanics of Materials', 'B', 'Arul Jayachandran S', 'Core', 0, '2018-03-26 07:53:52', '2017', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(30, 'CE3010', 'Transportation Engineering - 1', 'C', 'Atul Narayan S P', 'Core', 0, '2018-03-26 07:54:05', '2017', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(31, 'CE2040', 'Hydraulic Engineering ', 'D', 'Venu Chandra', 'Core', 0, '2018-03-26 11:01:01', '2017', 'B Tech', 'None', 'BSB 202', 60, 10, 'Random'),
(32, 'CE2080', 'Surveying', 'E', 'Ananthanarayanan K', 'Core', 0, '2018-04-03 07:23:53', '2017', 'B Tech', 'None', 'BSB 202', 60, 10, 'Random'),
(33, 'MAE', 'Maths Elective', 'A', '', 'Core', 0, '2018-03-19 05:53:57', '2017', 'B Tech', 'None', '', 60, 10, 'Random'),
(34, 'MA1010', 'Functions of Several Variables', 'B', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(35, 'PH1010', 'Physics I', 'D', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(36, 'PH1030', 'Physics Lab 1', '', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(37, 'CE1010', 'Introduction to Civil Engg', 'A', 'Subhadeep Banerjee', 'Core', 0, '2018-04-03 07:30:45', '2018', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(38, 'CS1100', 'Introduction to Programming', 'F', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(39, 'ME1120', 'Engg. Drawing', '', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(40, 'ID1200', 'Ecology and Environment', '', ' Murty B S', 'Core', 0, '2018-03-19 12:11:15', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(41, 'GN1101', 'Life Skills I', '', '', 'Core', 0, '2018-03-19 05:53:57', '2018', 'B Tech', 'None', '', 60, 10, 'Random'),
(42, 'CE6020#', 'Project', 'XX', 'Manu Santhanam', 'Core', 0, '2018-03-22 04:05:19', '2017', 'M Tech', 'BTCM', '', 60, 10, 'Random'),
(43, 'CE6290#', 'Project', 'XX', 'Shiva Nagendra S M', 'Core', 0, '2018-04-03 04:43:37', '2017', 'M Tech', 'Environmental Engineering', '', 60, 10, 'Random'),
(44, 'CE6430#', 'Project', 'T', 'Thyagaraj T', 'Core', 0, '2018-03-19 06:07:35', '2017', 'M Tech', 'Geotechnical Engineering', '', 60, 10, 'Random'),
(45, 'CE5430', 'GT Engg. Design Studio', 'P', 'Dodagoudar G R', 'Core', 0, '2018-04-03 12:02:11', '2017', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(46, 'CE6490#', 'Project', 'XX', 'Shiva Nagendra S M', 'Core', 0, '2018-04-03 04:43:55', '2017', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(47, 'CE6690#', 'Project', 'XX', 'Amlan K Sengupta', 'Core', 0, '2018-03-22 05:29:23', '2017', 'M Tech', 'Structural Engineering', '', 60, 10, 'Random'),
(48, 'CE6670', 'Structural Engineering Design Studio', 'P', 'Meher Prasad A', 'Core', 0, '2018-03-26 07:55:56', '2017', 'M Tech', 'Structural Engineering', 'STR', 60, 10, 'Random'),
(49, 'CE6930#', 'Project', 'XX', 'Lelitha Devi', 'Core', 0, '2018-04-03 04:44:28', '2017', 'M Tech', 'Transportation Engineering', '', 60, 10, 'Random'),
(50, 'CE5831', 'Transportation Engineering Studio', 'S', 'Gitakrishnan Ramadurai', 'Core', 1, '2018-04-03 12:02:32', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(51, 'CE6140#', 'Project', 'XX', 'Ramamurthy K', 'Core', 0, '2018-03-22 04:05:38', '2017', 'M Tech', 'UOP', '', 60, 10, 'Random'),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', 'D', 'Koshy Varghese', 'Core', 0, '2018-04-03 12:01:21', '2017', 'M Tech', 'UOP', 'BSB 206', 60, 10, 'Random'),
(53, 'CE5010', 'Modern Construction Materials', 'C', 'Ravindra Gettu', 'Core', 0, '2018-04-03 12:01:21', '2018', 'M Tech', 'BTCM', 'BSB 206', 60, 10, 'Random'),
(54, 'CE5110', 'Building Services', 'B', 'Ramamurthy K', 'Core', 0, '2018-04-03 12:01:21', '2018', 'M Tech', 'BTCM', 'BSB 206', 60, 10, 'Random'),
(55, 'CE6010', 'Construction Contracts & Specifications', 'A', 'Ramamurthy K', 'Core', 0, '2018-04-03 08:09:29', '2018', 'M Tech', 'BTCM', '', 60, 10, 'Random'),
(56, 'CE5020', 'Construction Planning and Control', 'G', 'Sivakumar Palaniappan', 'Core', 0, '2018-04-03 06:43:13', '2018', 'M Tech', 'BTCM', 'BSB 202', 60, 10, 'Random'),
(57, 'CE5070', 'Building Sciences Laboratory', 'P', 'Benny Raphael', 'Core', 0, '2018-04-03 12:01:21', '2018', 'M Tech', 'BTCM', 'BSB 206', 60, 10, 'Random'),
(58, 'CE5060', 'Industrial Seminar', 'YY', 'Ananthanarayanan K', 'Core', 0, '2018-03-22 04:06:31', '2018', 'M Tech', 'BTCM', '', 60, 10, 'Random'),
(59, 'CE5015', 'Environmental Monitoring and Data Analysis', '', '', 'Core', 0, '2018-04-03 12:08:42', '2018', 'M Tech', 'Environmental Engineering', 'ED', 60, 10, 'Random'),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', 'A', 'Ligy Philip', 'Core', 0, '2018-04-03 12:08:42', '2018', 'M Tech', 'Environmental Engineering', 'ED', 60, 10, 'Random'),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', 'B', 'Mathavakumar S', 'Core', 0, '2018-04-03 12:08:42', '2018', 'M Tech', 'Environmental Engineering', 'ED', 60, 10, 'Random'),
(62, 'CE5190', 'Environmental Monitoring Lab', 'Q', 'Sachin S Gunthe', 'Core', 0, '2018-03-26 11:14:49', '2018', 'M Tech', 'Environmental Engineering', '', 60, 10, 'Random'),
(63, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', 'C', '', 'Core', 0, '2018-03-22 14:04:09', '2018', 'M Tech', 'Environmental Engineering', '', 60, 10, 'Random'),
(64, 'CE5310', 'Advanced Soil Mechanics', 'A', 'Thyagaraj T', 'Core', 0, '2018-04-03 12:02:11', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(65, 'CE5330', 'Advanced Foundation Engg', 'B', 'Subhadeep Banerjee', 'Core', 0, '2018-04-03 12:02:11', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(66, 'CE5320', 'Soil Dynamics', 'C', 'Boominathan A', 'Core', 0, '2018-04-03 12:02:11', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(67, 'CE5421', 'Geotechnical Engg. Seminar', 'Q', 'Dali Naidu Arnepalli', 'Core', 0, '2018-04-03 12:02:11', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 60, 10, 'Random'),
(68, 'MAE1', 'Math Elective - MA5470: Numerical Analysis ', 'E', '', 'Core', 0, '2018-03-22 14:05:20', '2018', 'M Tech', 'Geotechnical Engineering', '', 60, 10, 'Random'),
(69, 'CE5450', 'Applied Hydraulic Engineering', 'E', ' Murty B S', 'Core', 0, '2018-03-26 11:18:18', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(70, 'CE5470', 'Surface Water Hydrology', 'G', 'Srinivasan K', 'Core', 0, '2018-03-26 11:17:39', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(71, 'CE5460', 'Ground Water Engineering', '', 'Mohan S', 'Core', 0, '2018-03-22 03:41:16', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(72, 'CE5490', 'Hydraulic Engineering Lab.', '', 'Soumendra Nath Kuiry', 'Core', 0, '2018-03-22 05:01:23', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(73, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', 'C', '', 'Core', 0, '2018-03-22 14:09:23', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', 'B', 'Raghukanth S T G', 'Core', 0, '2018-03-26 08:02:44', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(75, 'CE5620', 'Structural Dynamics                                    ', 'C', 'Nageswara Rao B', 'Core', 0, '2018-03-26 08:02:55', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(76, 'CE5630', 'Advanced Theory and Design of Concrete Structures            ', 'K', 'Apparao G', 'Core', 0, '2018-04-03 04:50:18', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(77, 'CE5740', 'Experimental Techniques                            ', 'Q', 'Alagusundaramoorthy P', 'Core', 0, '2018-03-26 08:03:22', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(78, 'MAE1', 'Math Elective -  MA5720: Numerical Analysis of Diff. Equations', 'D', '', 'Core', 0, '2018-03-22 14:05:12', '2018', 'M Tech', 'Structural Engineering', '', 60, 10, 'Random'),
(79, 'CE5810', 'Urban Transportation Planning', 'B', 'Karthik K Srinivasan', 'Core', 0, '2018-04-03 12:02:32', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(80, 'CE5530', 'Pavement Materials', 'A', 'Murali Krishnan J', 'Core', 0, '2018-04-03 12:02:32', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(81, 'CE5830', 'Traffic Engg & Management', 'F', 'Lelitha Devi', 'Core', 0, '2018-04-03 12:02:32', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(82, 'CE6810', 'Geometric Design of Highways', 'G', 'Sivanandan R', 'Core', 0, '2018-04-03 12:02:32', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(83, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', 'C', '', 'Core', 0, '2018-03-22 14:11:56', '2018', 'M Tech', 'Transportation Engineering', '', 60, 10, 'Random'),
(84, 'CE5020', 'Construction Planning & Control ', 'G', 'Sivakumar Palaniappan', 'Core', 0, '2018-04-03 12:04:02', '2018', 'M Tech', 'UOP', 'BSB 202', 60, 10, 'Random'),
(85, 'CE6010', 'Construction Contracts & Specifications ', 'A', 'Ramamurthy K', 'Core', 0, '2018-04-03 12:01:21', '2018', 'M Tech', 'UOP', 'BSB 206', 60, 10, 'Random'),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', 'R', 'Koshy Varghese', 'Core', 0, '2018-04-03 12:01:21', '2018', 'M Tech', 'UOP', 'BSB 206', 60, 10, 'Random'),
(88, 'CE5060', 'Industrial Seminar ', 'YY', 'Ananthanarayanan K', 'Core', 0, '2018-03-22 04:06:52', '2018', 'M Tech', 'UOP', '', 60, 10, 'Random'),
(89, 'CE3350', 'Geotechnical Engineering', 'D', 'Dali Naidu Arnepalli', 'Core', 0, '2018-04-03 06:54:06', '2016', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(90, 'CE2310', 'Mechanics of Materials', 'B', 'Alagappan P', 'Core', 0, '2018-03-26 08:06:27', '2017', 'B Tech', 'None', 'BSB 203', 60, 10, 'Random'),
(91, 'CE3060', 'Basic RC Design', 'C', 'Amlan K Sengupta', 'Core', 0, '2018-04-02 10:14:16', '2016', 'B Tech', 'None', 'BSB 203', 60, 10, 'Random'),
(92, 'CE3310', 'Advanced Structural Analysis', 'D', 'Saravanan U', 'Elective', 0, '2018-04-03 12:22:40', '', 'B Tech', '', 'STR 301', 60, 10, 'Random'),
(93, 'CE3320', 'Design of Steel Structural Systems', 'E', 'Sathish Kumar S R', 'Elective', 0, '2018-04-03 12:25:39', '', 'B Tech', '', 'STR 401', 60, 10, 'Random'),
(94, 'CE5650', 'Computing Skills', 'E', 'Dodagoudar G R', 'Elective', 0, '2018-04-03 12:02:11', '', '', '', 'BSB 123', 60, 10, 'Random'),
(95, 'CE4670', 'Case Studies in Structural Engg.', 'R', 'Meher Prasad A', 'Elective', 0, '2018-04-03 12:27:14', '', 'B Tech', '', 'BSB 204', 60, 10, 'Random'),
(96, 'CE6330', 'Rock Engineering', 'F', 'Vidya Bhushan Maji', 'Elective', 0, '2018-04-03 12:02:11', '', '', '', 'BSB 123', 60, 10, 'Random'),
(97, 'CE5331', 'Metro Systems and Engineering', 'G', 'Robinson R G', 'Elective', 0, '2018-03-26 08:15:05', '', '', '', 'BSB 203', 60, 10, 'Random'),
(98, 'ID6090', 'Composite Materials &amp; Manufacturing', 'G', 'Alagusundaramoorthy P', 'Elective', 0, '2018-03-26 09:36:25', '', '', '', 'STR 301', 60, 10, 'Random'),
(99, 'GN5001', 'Self-Awareness', 'Q', 'Devdas Menon', 'Elective', 0, '2018-04-03 06:55:02', '', '', '', 'VSH', 60, 10, 'CGPA'),
(100, 'CE7016', 'Nonlinear Analysis of Frame Structures', 'A', 'Rupen Goswami', 'Elective', 0, '2018-03-26 08:10:59', '', '', '', 'STR 301', 60, 10, 'Random'),
(103, 'CE6670', 'Structural Engineering Design Studio', 'P', 'Sathish Kumar S R', 'Core', 0, '2018-03-26 08:08:04', '2017', 'M Tech', 'Structural Engineering', 'STR', 60, 10, 'Random'),
(104, 'CE5710', 'Prestressed Concrete Design ', 'E', 'Devdas Menon', 'Elective', 0, '2018-03-26 08:12:38', '', '', '', 'STR 301', 60, 10, 'Random'),
(105, 'CE5720', 'Stability of Structures', 'F', 'Lakshmi Priya', 'Elective', 0, '2018-03-26 08:14:06', '', '', '', 'STR 301', 60, 10, 'Random'),
(107, 'CE5740', 'Experimental Techniques', 'Q', 'Nageswara Rao B', 'Core', 0, '2018-03-26 08:08:20', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 60, 10, 'Random'),
(108, 'CE4720', ' 	Computer Appls. in Traffic & Highway Engg', 'H', 'Gitakrishnan Ramadurai', 'Elective', 0, '2018-04-03 12:27:28', '', 'B Tech', '', 'BSB 237', 60, 10, 'Random'),
(110, 'CE5590', 'Pavement Management System', 'E', 'Veeraragavan A', 'Elective', 0, '2018-04-03 12:02:32', '', '', '', 'BSB 237', 60, 10, 'Random'),
(111, 'CE7017', ' 	Advanced Traffic Flow Theory ', 'M', 'Bhargava Rama Chilukuri', 'Elective', 0, '2018-03-26 10:51:38', '', '', '', 'BSB 231', 60, 10, 'Random'),
(112, 'CE5900', ' Intelligent Transportation Systems', 'C', 'Lelitha Devi', 'Elective', 0, '2018-04-03 05:07:01', '', '', '', 'BSB 231', 60, 10, 'Random'),
(113, 'CE5831', 'Transportation Engineering Studio', 'S', 'Atul Narayan S P', 'Core', 1, '2018-04-03 12:02:32', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(114, 'CE5831', 'Transportation Engineering Studio', 'S', 'Atul Narayan S P', 'Core', 1, '2018-04-03 12:02:32', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 60, 10, 'Random'),
(115, 'CE5910', 'Public Transportation', 'K', 'Sivanandan R', 'Elective', 0, '2018-04-03 12:02:32', '', '', '', 'BSB 237', 60, 10, 'Random'),
(116, 'CE5910', 'Public Transportation', 'K', 'Gitakrishnan Ramadurai', 'Elective', 0, '2018-04-03 12:02:32', '', '', '', 'BSB 237', 60, 10, 'Random'),
(117, '', 'Design and Analysis of Airfield Pavement', 'E', 'Murali Krishnan J', 'Elective', 0, '2018-04-03 05:04:02', '', '', '', 'BSB 231', 60, 10, 'Random'),
(118, 'CE5120', 'Maintenance and Rehabilitation of Constructed Facilities', 'E', 'Radhakrishna G Pillai', 'Elective', 0, '2018-04-03 12:01:21', '', '', '', 'BSB 206', 60, 10, 'Random'),
(119, 'CE6750', 'CAD in Civil Engineering', 'F', 'Benny Raphael', 'Elective', 0, '2018-04-03 12:01:21', '', '', '', 'BSB 206', 60, 10, 'Random'),
(120, 'CE5950', 'Characterization of Construction Materials', 'F', 'Manu Santhanam', 'Elective', 0, '2018-03-26 08:14:42', '', '', '', 'BSB 204', 60, 10, 'Random'),
(122, 'CE4180', 'Air Pollution Control and Solid Waste Management', 'F', 'Shiva Nagendra S M', 'Elective', 0, '2018-04-03 12:26:48', '', 'B Tech', '', 'ED', 60, 10, 'Random'),
(124, 'CE1010', 'Introduction to Civil Engg', 'A', 'Radhakrishna G Pillai', 'Core', 0, '2018-04-03 07:31:04', '2018', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(125, 'CE3410', 'Construction Material Lab', 'Q', 'Ramamurthy K', 'Core', 0, '2018-03-26 09:32:05', '2016', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(126, 'CE6999', 'Special Topics in Civil Engineering', 'XX', 'Ramamurthy K', 'Elective', 0, '2018-03-22 04:07:39', '', '', '', '', 60, 10, 'Random'),
(127, 'CE7999', 'Special Topics in Civil Engineering', 'XX', 'Ramamurthy K', 'Elective', 0, '2018-03-22 04:08:02', '', '', '', '', 60, 10, 'Random'),
(128, 'CE5870', 'Infrastructure Planning and Management', 'H', 'Ashwin Mahalingam', 'Elective', 0, '2018-03-26 08:16:05', '', '', '', 'BSB 231', 60, 10, 'Random'),
(130, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', 'D', '', 'Core', 0, '2018-03-22 14:27:26', '2018', 'M Tech', 'Geotechnical Engineering', '', 60, 10, 'Random'),
(131, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', 'D', '', 'Core', 0, '2018-03-22 14:27:26', '2018', 'M Tech', 'Environmental Engineering', '', 60, 10, 'Random'),
(132, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', 'D', '', 'Core', 0, '2018-03-22 14:27:26', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 60, 10, 'Random'),
(133, 'MAE1', 'Math. Elective - MA5720: Numerical Analysis of Diff. Equations', 'D', '', 'Core', 0, '2018-03-22 14:27:26', '2018', 'M Tech', 'Transportation Engineering', '', 60, 10, 'Random'),
(155, 'CE2040', 'Hydraulic Engineering', 'D', 'Soumendra Nath Kuiry', 'Core', 0, '2018-04-02 11:51:13', '2017', 'B Tech', 'None', 'BSB 231', 60, 10, 'Random'),
(156, 'CE3030', 'Water Resources Engineering', 'E', 'Sudheer K P', 'Core', 0, '2018-04-03 07:24:20', '2016', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(161, 'CE4902', 'UG - Research 2', 'XX', 'Ramamurthy K', 'Elective', 0, '2018-04-03 06:28:56', '', '', '', 'BSB 202', 60, 10, 'Random'),
(162, 'CE4901', 'UG - Research 1', 'XX', 'Ramamurthy K', 'Elective', 0, '2018-04-03 06:29:43', '', '', '', 'BSB 202', 60, 10, 'Random'),
(163, 'CE5130', 'Construction Quality and Safety Management', 'D', 'Sivakumar Palaniappan', 'Core', 0, '2018-04-03 12:01:21', '2017', 'M Tech', 'UOP', 'BSB 206', 60, 10, 'Random'),
(164, 'CE3410', '	Construction Material Lab', 'Q', 'Veeraragavan A', 'Core', 0, '2018-04-03 07:01:24', '2016', 'B Tech', 'None', 'BSB 204', 60, 10, 'Random'),
(165, 'MS5020', 'Organizational Behaviour ', 'D', 'Rupashree Baral', 'Core', 0, '2018-04-03 12:02:32', '2018', 'M Tech', 'UOP', 'BSB 237', 60, 10, 'Random'),
(166, 'CE 6021', 'Introduction to research (MS and Ph.D. students)', 'XX', 'Raghukanth S T G', 'Core', 0, '2018-04-03 11:02:57', '2018', 'Dual Degree', 'None', 'STR 301', 60, 10, 'Random');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE IF NOT EXISTS `curriculum` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `sem` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id`, `course_id`, `course_name`, `sem`, `batch`, `dept`) VALUES
(1, 'MA1010', 'Functions of Several Variables', '1', 'Btech', 'None'),
(2, 'PH1010', 'Physics. I', '1', 'Btech', 'None'),
(3, 'PH1030', 'Physics Lab.1', '1', 'Btech', 'None'),
(4, 'CE1010', 'Introduction to Civil Engg', '1', 'Btech', 'None'),
(5, 'CS1100', 'Introduction to Programming', '1', 'Btech', 'None'),
(6, 'ME1120', 'Engg. Drawing', '1', 'Btech', 'None'),
(7, 'GN1100', 'Life Skills', '1', 'Btech', 'None'),
(8, 'WS1010', 'Workshop I', '1', 'Btech', 'None'),
(9, 'MA1102', 'Series and Matrices', '2', 'Btech', 'None'),
(10, 'PH1020', 'Physics. II', '2', 'Btech', 'None'),
(11, 'AM1100', 'Engg. Mechanics', '2', 'Btech', 'None'),
(12, 'CY1001', 'Chemistry  I', '2', 'Btech', 'None'),
(13, 'CY1030', 'Chemistry Lab', '2', 'Btech', 'None'),
(14, 'CE2330', 'CE Materials and Construction', '2', 'Btech', 'None'),
(15, 'ID1200', 'Ecology and Environment', '2', 'Btech', 'None'),
(16, 'WS1020', 'Workshop I', '2', 'Btech', 'None'),
(17, '', 'Math. 3', '3', 'Btech', 'None'),
(18, 'CE2310', 'Mechanics of Materials', '3', 'Btech', 'None'),
(19, 'CE3010', 'Transportation Engineering - 1', '3', 'Btech', 'None'),
(20, 'CE2040', 'Hydraulic Engineering ', '3', 'Btech', 'None'),
(21, 'CE2080', 'Surveying', '3', 'Btech', 'None'),
(22, 'CE2020', 'Structural Analysis', '4', 'Btech', 'None'),
(23, 'CE2060', 'Geotechnical Engineering - 1', '4', 'Btech', 'None'),
(24, 'CE3020', 'Transportation Engineering - 2', '4', 'Btech', 'None'),
(25, 'CE3040', 'Environmental Engineering', '4', 'Btech', 'None'),
(26, '', 'Science Elective (Maths/Physics/Chemistry)', '4', 'Btech', 'None'),
(27, '', 'Humanities Elec. 1', '4', 'Btech', 'None'),
(28, 'BT1010', 'Life Sciences', '5', 'Btech', 'None'),
(29, 'CE3350', 'Geotechnical Engineering - 2', '5', 'Btech', 'None'),
(30, 'CE3030', 'Water Resources Engineering', '5', 'Btech', 'None'),
(31, 'CE3060', 'Basic RC Design', '5', 'Btech', 'None'),
(32, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '5', 'Btech', 'None'),
(33, 'CE3410', 'Construction Material Lab', '5', 'Btech', 'None'),
(34, 'CE3100', 'Structural Engg. Lab', '6', 'Btech', 'None'),
(35, 'CE3050', 'Basic Steel Design', '6', 'Btech', 'None'),
(36, 'CE4010', 'Construction Project Mgmt.', '6', 'Btech', 'None'),
(37, '', 'Humanities Elec. 2', '6', 'Btech', 'None'),
(38, '', 'Humanities Elec. 3', '7', 'Btech', 'None'),
(39, 'HS3050', 'Professional Ethics', '8', 'Btech', 'None'),
(40, 'HS3050', 'Professional Ethics', '8', 'Dual', 'None'),
(41, 'CE5010', 'Modern Construction Materials', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(42, 'CE5110', 'Building Services', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(43, 'CE6010', 'Construction Contracts & Specifications', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(44, 'CE5020', 'Construction Planning and Control', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(45, 'CE5060', 'Industrial Seminar', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(46, 'CE5070', 'Building Sciences Laboratory', '1', 'Mtech', 'Building Technology & Construction Mgmt'),
(47, 'CE5040', 'Construction Methods & Equipment', '2', 'Mtech', 'Building Technology & Construction Mgmt'),
(48, 'CE5100', 'Construction Software Lab', '2', 'Mtech', 'Building Technology & Construction Mgmt'),
(49, 'CE5090', 'Construction Materials Laboratory', '2', 'Mtech', 'Building Technology & Construction Mgmt'),
(50, 'CE5015', 'Environmental Monitoring and Data Analysis', '1', 'Mtech', 'Environmental Engineering'),
(51, 'CE5150', 'Environmental Chemistry and Microbiology', '1', 'Mtech', 'Environmental Engineering'),
(52, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '1', 'Mtech', 'Environmental Engineering'),
(53, 'CE5190', 'Environmental Monitoring Lab', '1', 'Mtech', 'Environmental Engineering'),
(54, 'CE5160', 'Biological Process Design for Wastewater Treatment', '2', 'Mtech', 'Environmental Engineering'),
(55, 'CE5180', 'Air Pollution and Control Engineering', '2', 'Mtech', 'Environmental Engineering'),
(56, 'CE5200', 'Environmental Microbiology and Engineering Lab', '2', 'Mtech', 'Environmental Engineering'),
(57, 'CE5220', 'Environmental Engineering Seminar', '2', 'Mtech', 'Environmental Engineering'),
(58, 'CE5310', 'Advanced Soil Mechanics', '1', 'Mtech', 'Geotechnical Engineering'),
(59, 'CE5330', 'Advanced Foundation Engg', '1', 'Mtech', 'Geotechnical Engineering'),
(60, 'CE5320', 'Soil Dynamics', '1', 'Mtech', 'Geotechnical Engineering'),
(61, 'CE5421', 'Geotechnical Engg. Seminar', '1', 'Mtech', 'Geotechnical Engineering'),
(62, 'CE5300', 'Applied Soil Mechanics', '2', 'Mtech', 'Geotechnical Engineering'),
(63, 'CE5340', 'FEM and Constitutive Modelling in Geomechanics', '2', 'Mtech', 'Geotechnical Engineering'),
(64, 'CE5410', 'Experimental Geotechnics', '2', 'Mtech', 'Geotechnical Engineering'),
(65, 'CE5430', 'GT Engg. Design Studio', '3', 'Mtech', 'Geotechnical Engineering'),
(66, 'CE5450', 'Applied Hydraulic Engineering', '1', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(67, 'CE5470', 'Surface Water Hydrology', '1', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(68, 'CE5460', 'Ground Water Engineering', '1', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(69, 'CE5490', 'Hydraulic Engineering Lab', '1', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(70, 'CE5480', 'Water Res. Planning & Mgmt.', '2', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(71, 'CE6013', 'River Engineering', '2', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(72, 'CE5520', 'Hyd. & Water Resources Engg. Seminar', '2', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(73, 'CE5500', 'Hydro-Informatics Lab.', '2', 'Mtech', 'Hydraulics & Water Resources Engineering'),
(74, 'CE6780', 'Advanced Mechanics of Structures', '1', 'Mtech', 'Structural Engineering'),
(75, 'CE5620', 'Structural Dynamics', '1', 'Mtech', 'Structural Engineering'),
(76, 'CE5630', 'Adv. Design of Concrete Structures', '1', 'Mtech', 'Structural Engineering'),
(77, 'CE5740', 'Experimental Techniques', '1', 'Mtech', 'Structural Engineering'),
(78, 'CE5610', 'Finite Element Analysis', '2', 'Mtech', 'Structural Engineering'),
(79, 'CE5660', 'Adv. Metal Structures', '2', 'Mtech', 'Structural Engineering'),
(80, 'CE6650', 'St. Engg. Seminar', '2', 'Mtech', 'Structural Engineering'),
(81, 'CE6670', 'St. Engg. Design Studio', '3', 'Mtech', 'Structural Engineering'),
(82, 'CE5810', 'Urban Transportation Planning', '1', 'Mtech', 'Transportation Engineering'),
(83, 'CE5530', 'Pavement Materials', '1', 'Mtech', 'Transportation Engineering'),
(84, 'CE5830', 'Traffic Engg & Management', '1', 'Mtech', 'Transportation Engineering'),
(85, 'CE6810', 'Geometric Design of Highways', '1', 'Mtech', 'Transportation Engineering'),
(86, 'CE5800', 'Pavement Analysis and Design', '2', 'Mtech', 'Transportation Engineering'),
(87, 'CE5840', 'Tr. Engg. Seminar', '2', 'Mtech', 'Transportation Engineering'),
(88, 'CE5850', 'Pavement Mat. and Eval. Lab', '2', 'Mtech', 'Transportation Engineering'),
(89, 'CE5831', 'Transp. Engg. Design Studio', '3', 'Mtech', 'Transportation Engineering'),
(90, 'CE5020', 'Construction Planning & Control', '1', 'Mtech', 'Construction Technology & Management-UoP'),
(91, 'CE6010', 'Construction Contracts & Specifications', '1', 'Mtech', 'Construction Technology & Management-UoP'),
(92, 'CE6050', 'Lean Construction Concepts Tools & Practices', '1', 'Mtech', 'Construction Technology & Management-UoP'),
(93, 'CE5040', 'Construction Methods & Equipment', '2', 'Mtech', 'Construction Technology & Management-UoP'),
(94, 'CE6030', 'Construction Economics & Finance', '2', 'Mtech', 'Construction Technology & Management-UoP'),
(95, 'CE5100', 'Construction Software Lab', '2', 'Mtech', 'Construction Technology & Management-UoP'),
(96, 'CE5130', 'Construction Quality and Safety Management', '3', 'Mtech', 'Construction Technology & Management-UoP'),
(97, 'CE5334', 'Global construction Engineering and Management', '3', 'Mtech', 'Construction Technology & Management-UoP');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_odd`
--

CREATE TABLE IF NOT EXISTS `curriculum_odd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `slot` text NOT NULL,
  `batch` text NOT NULL,
  `year` text NOT NULL,
  `dept` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `curriculum_odd`
--

INSERT INTO `curriculum_odd` (`id`, `course_id`, `course_name`, `slot`, `batch`, `year`, `dept`) VALUES
(1, 'CE4940', 'Project I', '', 'Dual Degree', '2014', 'Infrastructure'),
(2, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Infrastructure'),
(3, 'CE6010', 'Construction Contracts & Specifications', '', 'Dual Degree', '2014', 'Infrastructure'),
(4, 'CE4941', 'Project I', '', 'Dual Degree', '2014', 'BTCM'),
(5, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'BTCM'),
(6, 'CE4942', 'Project I', '', 'Dual Degree', '2014', 'Environmental Engineering'),
(7, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Environmental Engineering'),
(8, 'CE5170', 'Physico-Chemical process for water and wastewater treatment', '', 'Dual Degree', '2014', 'Environmental Engineering'),
(9, 'CE4943', 'Project I', '', 'Dual Degree', '2014', 'Geotechnical Engineering'),
(10, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Geotechnical Engineering'),
(11, 'CE5330', 'Advanced Foundation Engg.', '', 'Dual Degree', '2014', 'Geotechnical Engineering'),
(12, 'CE4944', 'Project I', '', 'Dual Degree', '2014', 'Hydraulics & Water Resources Engineering'),
(13, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Hydraulics & Water Resources Engineering'),
(14, 'CE5450', 'Applied Hydraulic Engg', '', 'Dual Degree', '2014', 'Hydraulics & Water Resources Engineering'),
(15, 'CE5460', 'Ground Water Engg', '', 'Dual Degree', '2014', 'Hydraulics & Water Resources Engineering'),
(16, 'CE4945', 'Project I', '', 'Dual Degree', '2014', 'Structural Engineering'),
(17, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Structural Engineering'),
(18, 'CE5620', 'Structural Dynamics ', '', 'Dual Degree', '2014', 'Structural Engineering'),
(19, 'CE4946', 'Project I', '', 'Dual Degree', '2014', 'Transportation Engineering'),
(20, 'CE4950', 'VIVA VOCE', '', 'Dual Degree', '2014', 'Transportation Engineering'),
(21, 'CE5831', 'Transportation Engineering Studio', '', 'Dual Degree', '2014', 'Transportation Engineering'),
(22, 'HSE3', 'Humanities Elective 3', 'D', 'B Tech', '2015', 'None'),
(23, 'CE3350', 'Geotechnical Engineering - 2', '', 'B Tech', '2016', 'None'),
(24, 'CE3030', 'Water Resources Engineering', '', 'B Tech', '2016', 'None'),
(25, 'CE3060', 'Basic RC Design', '', 'B Tech', '2016', 'None'),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '', 'B Tech', '2016', 'None'),
(27, 'CE3410', 'Construction Material Lab', '', 'B Tech', '2016', 'None'),
(28, 'BT1010', 'Life Sciences', 'G', 'B Tech', '2016', 'None'),
(29, 'CE2310', 'Mechanics of Materials', '', 'B Tech', '2017', 'None'),
(30, 'CE3010', 'Transportation Engineering - 1', '', 'B Tech', '2017', 'None'),
(31, 'CE2040', 'Hydraulic Engineering ', '', 'B Tech', '2017', 'None'),
(32, 'CE2080', 'Surveying', '', 'B Tech', '2017', 'None'),
(33, 'MAE', 'Maths Elective', 'A', 'B Tech', '2017', 'None'),
(34, 'MA1010', 'Functions of Several Variables', 'B', 'B Tech', '2018', 'None'),
(35, 'PH1010', 'Physics I', 'D', 'B Tech', '2018', 'None'),
(36, 'PH1030', 'Physics Lab 1', '', 'B Tech', '2018', 'None'),
(37, 'CE1010', 'Introduction to Civil Engg', 'A', 'B Tech', '2018', 'None'),
(38, 'CS1100', 'Introduction to Programming', 'F', 'B Tech', '2018', 'None'),
(39, 'ME1120', 'Engg. Drawing', '', 'B Tech', '2018', 'None'),
(40, 'ID1200', 'Ecology and Environment', '', 'B Tech', '2018', 'None'),
(41, 'GN1101', 'Life Skills I', '', 'B Tech', '2018', 'None'),
(42, 'CE6020#', 'Project', '', 'M Tech', '2017', 'BTCM'),
(43, 'CE6290#', 'Project', '', 'M Tech', '2017', 'Environmental Engineering'),
(44, 'CE6430#', 'Project', '', 'M Tech', '2017', 'Geotechnical Engineering'),
(45, 'CE5430', 'GT Engg. Design Studio', '', 'M Tech', '2017', 'Geotechnical Engineering'),
(46, 'CE6490#', 'Project', '', 'M Tech', '2017', 'Hydraulics & Water Resources Engineering'),
(47, 'CE6690#', 'Project', '', 'M Tech', '2017', 'Structural Engineering'),
(48, 'CE6670', 'St. Engg. Design Studio ', '', 'M Tech', '2017', 'Structural Engineering'),
(49, 'CE6930#', 'Project', '', 'M Tech', '2017', 'Transportation Engineering'),
(50, 'CE5831', 'Transp. Engg. Design Studio ', '', 'M Tech', '2017', 'Transportation Engineering'),
(51, 'CE6140#', 'Project', '', 'M Tech', '2017', 'UOP'),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', '', 'M Tech', '2017', 'UOP'),
(53, 'CE5010', 'Modern Construction Materials', '', 'M Tech', '2018', 'BTCM'),
(54, 'CE5110', 'Building Services', '', 'M Tech', '2018', 'BTCM'),
(55, 'CE6010', 'Construction Contracts & Specifications', '', 'M Tech', '2018', 'BTCM'),
(56, 'CE5020', 'Construction Planning and Control', '', 'M Tech', '2018', 'BTCM'),
(57, 'CE5070', 'Building Sciences Laboratory', '', 'M Tech', '2018', 'BTCM'),
(58, 'CE5060', 'Industrial Seminar', '', 'M Tech', '2018', 'BTCM'),
(59, 'CE5015', 'Environmental?Monitoring?and?Data?Analysis', '', 'M Tech', '2018', 'Environmental Engineering'),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', '', 'M Tech', '2018', 'Environmental Engineering'),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '', 'M Tech', '2018', 'Environmental Engineering'),
(62, 'CE5190', 'Environmental Monitoring Lab', '', 'M Tech', '2018', 'Environmental Engineering'),
(63, 'MAE1', 'Math. Elective', '', 'M Tech', '2018', 'Environmental Engineering'),
(64, 'CE5310', 'Advanced Soil Mechanics', '', 'M Tech', '2018', 'Geotechnical Engineering'),
(65, 'CE5330', 'Advanced Foundation Engg', '', 'M Tech', '2018', 'Geotechnical Engineering'),
(66, 'CE5320', 'Soil Dynamics', '', 'M Tech', '2018', 'Geotechnical Engineering'),
(67, 'CE5421', 'Geotechnical Engg. Seminar', '', 'M Tech', '2018', 'Geotechnical Engineering'),
(68, 'MAE1', 'Math. Elective', '', 'M Tech', '2018', 'Geotechnical Engineering'),
(69, 'CE5450', 'Applied Hydraulic Engineering', '', 'M Tech', '2018', 'Hydraulics & Water Resources Engineering'),
(70, 'CE5470', 'Surface Water Hydrology', '', 'M Tech', '2018', 'Hydraulics & Water Resources Engineering'),
(71, 'CE5460', 'Ground Water Engineering', '', 'M Tech', '2018', 'Hydraulics & Water Resources Engineering'),
(72, 'CE5490', 'Hydraulic Engineering Lab.', '', 'M Tech', '2018', 'Hydraulics & Water Resources Engineering'),
(73, 'MAE1', 'Math. Elective', '', 'M Tech', '2018', 'Hydraulics & Water Resources Engineering'),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', '', 'M Tech', '2018', 'Structural Engineering'),
(75, 'CE5620', 'Structural Dynamics                                    ', '', 'M Tech', '2018', 'Structural Engineering'),
(76, 'CE5630', 'Adv. Design of Concrete Structures            ', '', 'M Tech', '2018', 'Structural Engineering'),
(77, 'CE5740', 'Experimental Techniques                            ', '', 'M Tech', '2018', 'Structural Engineering'),
(78, 'MAE1', 'Math. Elective 1', '', 'M Tech', '2018', 'Structural Engineering'),
(79, 'CE5810', 'Urban Transportation Planning', '', 'M Tech', '2018', 'Transportation Engineering'),
(80, 'CE5530', 'Pavement Materials', '', 'M Tech', '2018', 'Transportation Engineering'),
(81, 'CE5830', 'Traffic Engg & Management', '', 'M Tech', '2018', 'Transportation Engineering'),
(82, 'CE6810', 'Geometric Design of Highways', '', 'M Tech', '2018', 'Transportation Engineering'),
(83, 'MAE1', 'Math. Elective', '', 'M Tech', '2018', 'Transportation Engineering'),
(84, 'CE5020 ', 'Construction Planning & Control ', '', 'M Tech', '2018', 'UOP'),
(85, 'CE6010', 'Construction Contracts & Specifications ', '', 'M Tech', '2018', 'UOP'),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', '', 'M Tech', '2018', 'UOP'),
(87, 'MS5020', 'Organizational Behaviour ', '', 'M Tech', '2018', 'UOP'),
(88, 'CE5060', 'Industrial Seminar ', '', 'M Tech', '2018', 'UOP');

-- --------------------------------------------------------

--
-- Table structure for table `curr_curriculum`
--

CREATE TABLE IF NOT EXISTS `curr_curriculum` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `sem` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE IF NOT EXISTS `dummy` (
  `id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `year` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `slot` text NOT NULL,
  `instructor` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `course_id`, `course_name`, `year`, `batch`, `dept`, `slot`, `instructor`, `clash_sorted`) VALUES
(1, 'CE4940', 'Project I', '2014', 'Dual Degree', 'Infrastructure', 'XX', 'Manu Santhanam', 0),
(2, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Infrastructure', 'WW', 'Arul Jayachandran S', 0),
(3, 'CE6010', 'Construction Contracts & Specifications', '2014', 'Dual Degree', 'Infrastructure', 'A', 'Ramamurthy K', 0),
(4, 'CE4941', 'Project I', '2014', 'Dual Degree', 'BTCM', 'XX', 'Manu Santhanam', 0),
(5, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'BTCM', 'WW', 'Arul Jayachandran S', 0),
(6, 'CE4942', 'Project I', '2014', 'Dual Degree', 'Environmental Engineering', 'XX', 'Shiva Nagendra S M', 0),
(7, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Environmental Engineering', 'WW', 'Arul Jayachandran S', 0),
(9, 'CE4943', 'Project I', '2014', 'Dual Degree', 'Geotechnical Engineering', 'XX', 'Thyagaraj T', 0),
(10, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Geotechnical Engineering', 'WW', 'Arul Jayachandran S', 0),
(11, 'CE5330', 'Advanced Foundation Engg.', '2014', 'Dual Degree', 'Geotechnical Engineering', 'B', 'Subhadeep Banerjee', 0),
(12, 'CE4944', 'Project I', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'XX', 'Shiva Nagendra S M', 0),
(13, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'WW', 'Arul Jayachandran S', 0),
(14, 'CE5450', 'Applied Hydraulic Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'E', ' Murty B S', 0),
(15, 'CE5460', 'Ground Water Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'G', 'Mohan S', 0),
(16, 'CE4945', 'Project I', '2014', 'Dual Degree', 'Structural Engineering', 'XX', 'Amlan K Sengupta', 0),
(17, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Structural Engineering', 'WW', 'Arul Jayachandran S', 0),
(18, 'CE5620', 'Structural Dynamics ', '2014', 'Dual Degree', 'Structural Engineering', 'C', 'Nageswara Rao B', 0),
(19, 'CE4946', 'Project I', '2014', 'Dual Degree', 'Transportation Engineering', 'XX', 'Lelitha Devi', 0),
(20, 'CE4950', 'VIVA VOCE', '2014', 'Dual Degree', 'Transportation Engineering', 'WW', 'Arul Jayachandran S', 0),
(21, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'S', 'Gitakrishnan Ramadurai', 1),
(22, 'HSE3', 'Humanities Elective 3', '2015', 'B Tech', 'None', 'D', '', 0),
(23, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'D', 'Rajagopal K', 0),
(24, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'E', 'Balaji Narasimhan', 0),
(25, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'C', 'Rupen Goswami', 0),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '2016', 'B Tech', 'None', 'P', 'Sachin S Gunthe', 0),
(27, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Thyagaraj T', 0),
(28, 'BT1010', 'Life Sciences', '2016', 'B Tech', 'None', 'G', '', 0),
(29, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'B', 'Arul Jayachandran S', 0),
(30, 'CE3010', 'Transportation Engineering - 1', '2017', 'B Tech', 'None', 'C', 'Atul Narayan S P', 0),
(31, 'CE2040', 'Hydraulic Engineering ', '2017', 'B Tech', 'None', 'D', 'Venu Chandra', 0),
(32, 'CE2080', 'Surveying', '2017', 'B Tech', 'None', 'E', 'Ananthanarayanan K', 0),
(33, 'MAE', 'Maths Elective', '2017', 'B Tech', 'None', 'A', '', 0),
(34, 'MA1010', 'Functions of Several Variables', '2018', 'B Tech', 'None', 'B', '', 0),
(35, 'PH1010', 'Physics I', '2018', 'B Tech', 'None', 'D', '', 0),
(37, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'A', 'Subhadeep Banerjee', 0),
(38, 'CS1100', 'Introduction to Programming', '2018', 'B Tech', 'None', 'F', '', 0),
(42, 'CE6020#', 'Project', '2017', 'M Tech', 'BTCM', 'XX', 'Manu Santhanam', 0),
(43, 'CE6290#', 'Project', '2017', 'M Tech', 'Environmental Engineering', 'XX', 'Shiva Nagendra S M', 0),
(44, 'CE6430#', 'Project', '2017', 'M Tech', 'Geotechnical Engineering', 'T', 'Thyagaraj T', 0),
(45, 'CE5430', 'GT Engg. Design Studio', '2017', 'M Tech', 'Geotechnical Engineering', 'P', 'Dodagoudar G R', 0),
(46, 'CE6490#', 'Project', '2017', 'M Tech', 'Hydraulics & Water Resources Engineering', 'XX', 'Shiva Nagendra S M', 0),
(47, 'CE6690#', 'Project', '2017', 'M Tech', 'Structural Engineering', 'XX', 'Amlan K Sengupta', 0),
(48, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'P', 'Meher Prasad A', 0),
(49, 'CE6930#', 'Project', '2017', 'M Tech', 'Transportation Engineering', 'XX', 'Lelitha Devi', 0),
(50, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'S', 'Gitakrishnan Ramadurai', 1),
(51, 'CE6140#', 'Project', '2017', 'M Tech', 'UOP', 'XX', 'Ramamurthy K', 0),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', '2017', 'M Tech', 'UOP', 'D', 'Koshy Varghese', 0),
(53, 'CE5010', 'Modern Construction Materials', '2018', 'M Tech', 'BTCM', 'C', 'Ravindra Gettu', 0),
(54, 'CE5110', 'Building Services', '2018', 'M Tech', 'BTCM', 'B', 'Ramamurthy K', 0),
(55, 'CE6010', 'Construction Contracts & Specifications', '2018', 'M Tech', 'BTCM', 'A', 'Ramamurthy K', 0),
(56, 'CE5020', 'Construction Planning and Control', '2018', 'M Tech', 'BTCM', 'G', 'Sivakumar Palaniappan', 0),
(57, 'CE5070', 'Building Sciences Laboratory', '2018', 'M Tech', 'BTCM', 'P', 'Benny Raphael', 0),
(58, 'CE5060', 'Industrial Seminar', '2018', 'M Tech', 'BTCM', 'YY', 'Ananthanarayanan K', 0),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', '2018', 'M Tech', 'Environmental Engineering', 'A', 'Ligy Philip', 0),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '2018', 'M Tech', 'Environmental Engineering', 'B', 'Mathavakumar S', 0),
(62, 'CE5190', 'Environmental Monitoring Lab', '2018', 'M Tech', 'Environmental Engineering', 'Q', 'Sachin S Gunthe', 0),
(63, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Environmental Engineering', 'C', '', 0),
(64, 'CE5310', 'Advanced Soil Mechanics', '2018', 'M Tech', 'Geotechnical Engineering', 'A', 'Thyagaraj T', 0),
(65, 'CE5330', 'Advanced Foundation Engg', '2018', 'M Tech', 'Geotechnical Engineering', 'B', 'Subhadeep Banerjee', 0),
(66, 'CE5320', 'Soil Dynamics', '2018', 'M Tech', 'Geotechnical Engineering', 'C', 'Boominathan A', 0),
(67, 'CE5421', 'Geotechnical Engg. Seminar', '2018', 'M Tech', 'Geotechnical Engineering', 'Q', 'Dali Naidu Arnepalli', 0),
(68, 'MAE1', 'Math Elective - MA5470: Numerical Analysis ', '2018', 'M Tech', 'Geotechnical Engineering', 'E', '', 0),
(69, 'CE5450', 'Applied Hydraulic Engineering', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'E', ' Murty B S', 0),
(70, 'CE5470', 'Surface Water Hydrology', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'G', 'Srinivasan K', 0),
(73, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'C', '', 0),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', '2018', 'M Tech', 'Structural Engineering', 'B', 'Raghukanth S T G', 0),
(75, 'CE5620', 'Structural Dynamics                                    ', '2018', 'M Tech', 'Structural Engineering', 'C', 'Nageswara Rao B', 0),
(76, 'CE5630', 'Advanced Theory and Design of Concrete Structures            ', '2018', 'M Tech', 'Structural Engineering', 'K', 'Apparao G', 0),
(77, 'CE5740', 'Experimental Techniques                            ', '2018', 'M Tech', 'Structural Engineering', 'Q', 'Alagusundaramoorthy P', 0),
(78, 'MAE1', 'Math Elective -  MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Structural Engineering', 'D', '', 0),
(79, 'CE5810', 'Urban Transportation Planning', '2018', 'M Tech', 'Transportation Engineering', 'B', 'Karthik K Srinivasan', 0),
(80, 'CE5530', 'Pavement Materials', '2018', 'M Tech', 'Transportation Engineering', 'A', 'Murali Krishnan J', 0),
(81, 'CE5830', 'Traffic Engg & Management', '2018', 'M Tech', 'Transportation Engineering', 'F', 'Lelitha Devi', 0),
(82, 'CE6810', 'Geometric Design of Highways', '2018', 'M Tech', 'Transportation Engineering', 'G', 'Sivanandan R', 0),
(83, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Transportation Engineering', 'C', '', 0),
(84, 'CE5020', 'Construction Planning & Control ', '2018', 'M Tech', 'UOP', 'G', 'Sivakumar Palaniappan', 0),
(85, 'CE6010', 'Construction Contracts & Specifications ', '2018', 'M Tech', 'UOP', 'A', 'Ramamurthy K', 0),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', '2018', 'M Tech', 'UOP', 'R', 'Koshy Varghese', 0),
(88, 'CE5060', 'Industrial Seminar ', '2018', 'M Tech', 'UOP', 'YY', 'Ananthanarayanan K', 0),
(89, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'D', 'Dali Naidu Arnepalli', 0),
(90, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'B', 'Alagappan P', 0),
(91, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'C', 'Amlan K Sengupta', 0),
(103, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'P', 'Sathish Kumar S R', 0),
(107, 'CE5740', 'Experimental Techniques', '2018', 'M Tech', 'Structural Engineering', 'Q', 'Nageswara Rao B', 0),
(113, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'S', 'Atul Narayan S P', 1),
(114, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'S', 'Atul Narayan S P', 1),
(124, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'A', 'Radhakrishna G Pillai', 0),
(125, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Ramamurthy K', 0),
(130, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Geotechnical Engineering', 'D', '', 0),
(131, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Environmental Engineering', 'D', '', 0),
(132, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'D', '', 0),
(133, 'MAE1', 'Math. Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Transportation Engineering', 'D', '', 0),
(155, 'CE2040', 'Hydraulic Engineering', '2017', 'B Tech', 'None', 'D', 'Soumendra Nath Kuiry', 0),
(156, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'E', 'Sudheer K P', 0),
(163, 'CE5130', 'Construction Quality and Safety Management', '2017', 'M Tech', 'UOP', 'D', 'Sivakumar Palaniappan', 0),
(164, 'CE3410', '	Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Veeraragavan A', 0),
(165, 'MS5020', 'Organizational Behaviour ', '2018', 'M Tech', 'UOP', 'D', 'Rupashree Baral', 0),
(166, 'CE 6021', 'Introduction to research (MS and Ph.D. students)', '2018', 'Dual Degree', 'None', 'XX', 'Raghukanth S T G', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dummy1`
--

CREATE TABLE IF NOT EXISTS `dummy1` (
  `id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `year` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `roomno` text NOT NULL,
  `slot` text NOT NULL,
  `slot1` text NOT NULL,
  `slot2` text NOT NULL,
  `instructor` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy1`
--

INSERT INTO `dummy1` (`id`, `course_id`, `course_name`, `year`, `batch`, `dept`, `roomno`, `slot`, `slot1`, `slot2`, `instructor`, `clash_sorted`) VALUES
(3, 'CE6010', 'Construction Contracts & Specifications', '2014', 'Dual Degree', 'Infrastructure', 'BSB 206', 'A', 'A', '', 'Ramamurthy K', 0),
(11, 'CE5330', 'Advanced Foundation Engg.', '2014', 'Dual Degree', 'Geotechnical Engineering', 'BSB 123', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(14, 'CE5450', 'Applied Hydraulic Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 'E', 'E', '', ' Murty B S', 0),
(15, 'CE5460', 'Ground Water Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 'G', 'G', '', 'Mohan S', 0),
(18, 'CE5620', 'Structural Dynamics ', '2014', 'Dual Degree', 'Structural Engineering', 'STR 301', 'C', 'C', '', 'Nageswara Rao B', 0),
(21, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(23, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'BSB 203', 'D', 'D', '', 'Rajagopal K', 0),
(24, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'BSB 203', 'E', 'E', '', 'Balaji Narasimhan', 0),
(25, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'BSB 202', 'C', 'C', '', 'Rupen Goswami', 0),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '2016', 'B Tech', 'None', 'ED', 'P', 'P', '', 'Sachin S Gunthe', 0),
(27, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Thyagaraj T', 0),
(29, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'BSB 204', 'B', 'B', '', 'Arul Jayachandran S', 0),
(30, 'CE3010', 'Transportation Engineering - 1', '2017', 'B Tech', 'None', 'BSB 204', 'C', 'C', '', 'Atul Narayan S P', 0),
(31, 'CE2040', 'Hydraulic Engineering ', '2017', 'B Tech', 'None', 'BSB 202', 'D', 'D', '', 'Venu Chandra', 0),
(32, 'CE2080', 'Surveying', '2017', 'B Tech', 'None', 'BSB 202', 'E', 'E', '', 'Ananthanarayanan K', 0),
(37, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'BSB 204', 'A', 'A', '', 'Subhadeep Banerjee', 0),
(44, 'CE6430#', 'Project', '2017', 'M Tech', 'Geotechnical Engineering', '', 'T', 'T', '', 'Thyagaraj T', 0),
(45, 'CE5430', 'GT Engg. Design Studio', '2017', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'P', 'P', '', 'Dodagoudar G R', 0),
(48, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'STR', 'P', 'P', '', 'Meher Prasad A', 0),
(50, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', '2017', 'M Tech', 'UOP', 'BSB 206', 'D', 'D', '', 'Koshy Varghese', 0),
(53, 'CE5010', 'Modern Construction Materials', '2018', 'M Tech', 'BTCM', 'BSB 206', 'C', 'C', '', 'Ravindra Gettu', 0),
(54, 'CE5110', 'Building Services', '2018', 'M Tech', 'BTCM', 'BSB 206', 'B', 'B', '', 'Ramamurthy K', 0),
(55, 'CE6010', 'Construction Contracts & Specifications', '2018', 'M Tech', 'BTCM', '', 'A', 'A', '', 'Ramamurthy K', 0),
(56, 'CE5020', 'Construction Planning and Control', '2018', 'M Tech', 'BTCM', 'BSB 202', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(57, 'CE5070', 'Building Sciences Laboratory', '2018', 'M Tech', 'BTCM', 'BSB 206', 'P', 'P', '', 'Benny Raphael', 0),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', '2018', 'M Tech', 'Environmental Engineering', 'ED', 'A', 'A', '', 'Ligy Philip', 0),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '2018', 'M Tech', 'Environmental Engineering', 'ED', 'B', 'B', '', 'Mathavakumar S', 0),
(62, 'CE5190', 'Environmental Monitoring Lab', '2018', 'M Tech', 'Environmental Engineering', '', 'Q', 'Q', '', 'Sachin S Gunthe', 0),
(64, 'CE5310', 'Advanced Soil Mechanics', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'A', 'A', '', 'Thyagaraj T', 0),
(65, 'CE5330', 'Advanced Foundation Engg', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(66, 'CE5320', 'Soil Dynamics', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'C', 'C', '', 'Boominathan A', 0),
(67, 'CE5421', 'Geotechnical Engg. Seminar', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'Q', 'Q', '', 'Dali Naidu Arnepalli', 0),
(69, 'CE5450', 'Applied Hydraulic Engineering', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 'E', 'E', '', ' Murty B S', 0),
(70, 'CE5470', 'Surface Water Hydrology', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', '', 'G', 'G', '', 'Srinivasan K', 0),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'B', 'B', '', 'Raghukanth S T G', 0),
(75, 'CE5620', 'Structural Dynamics                                    ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'C', 'C', '', 'Nageswara Rao B', 0),
(76, 'CE5630', 'Advanced Theory and Design of Concrete Structures            ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'K', 'R', 'T', 'Apparao G', 0),
(77, 'CE5740', 'Experimental Techniques                            ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'Q', 'Q', '', 'Alagusundaramoorthy P', 0),
(79, 'CE5810', 'Urban Transportation Planning', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'B', 'B', '', 'Karthik K Srinivasan', 0),
(80, 'CE5530', 'Pavement Materials', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'A', 'A', '', 'Murali Krishnan J', 0),
(81, 'CE5830', 'Traffic Engg & Management', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'F', 'F', '', 'Lelitha Devi', 0),
(82, 'CE6810', 'Geometric Design of Highways', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'G', 'G', '', 'Sivanandan R', 0),
(84, 'CE5020', 'Construction Planning & Control ', '2018', 'M Tech', 'UOP', 'BSB 202', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(85, 'CE6010', 'Construction Contracts & Specifications ', '2018', 'M Tech', 'UOP', 'BSB 206', 'A', 'A', '', 'Ramamurthy K', 0),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', '2018', 'M Tech', 'UOP', 'BSB 206', 'R', 'R', '', 'Koshy Varghese', 0),
(89, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'BSB 204', 'D', 'D', '', 'Dali Naidu Arnepalli', 0),
(90, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'BSB 203', 'B', 'B', '', 'Alagappan P', 0),
(91, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'BSB 203', 'C', 'C', '', 'Amlan K Sengupta', 0),
(92, 'CE3310', 'Advanced Structural Analysis', '', 'B Tech', '', 'STR 301', 'D', 'D', '', 'Saravanan U', 0),
(93, 'CE3320', 'Design of Steel Structural Systems', '', 'B Tech', '', 'STR 401', 'E', 'E', '', 'Sathish Kumar S R', 0),
(94, 'CE5650', 'Computing Skills', '', '', '', 'BSB 123', 'E', 'E', '', 'Dodagoudar G R', 0),
(95, 'CE4670', 'Case Studies in Structural Engg.', '', 'B Tech', '', 'BSB 204', 'R', 'R', '', 'Meher Prasad A', 0),
(96, 'CE6330', 'Rock Engineering', '', '', '', 'BSB 123', 'F', 'F', '', 'Vidya Bhushan Maji', 0),
(97, 'CE5331', 'Metro Systems and Engineering', '', '', '', 'BSB 203', 'G', 'G', '', 'Robinson R G', 0),
(98, 'ID6090', 'Composite Materials &amp; Manufacturing', '', '', '', 'STR 301', 'G', 'G', '', 'Alagusundaramoorthy P', 0),
(99, 'GN5001', 'Self-Awareness', '', '', '', 'VSH', 'Q', 'Q', '', 'Devdas Menon', 0),
(100, 'CE7016', 'Nonlinear Analysis of Frame Structures', '', '', '', 'STR 301', 'A', 'A', '', 'Rupen Goswami', 0),
(103, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'STR', 'P', 'P', '', 'Sathish Kumar S R', 0),
(104, 'CE5710', 'Prestressed Concrete Design ', '', '', '', 'STR 301', 'E', 'E', '', 'Devdas Menon', 0),
(105, 'CE5720', 'Stability of Structures', '', '', '', 'STR 301', 'F', 'F', '', 'Lakshmi Priya', 0),
(107, 'CE5740', 'Experimental Techniques', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'Q', 'Q', '', 'Nageswara Rao B', 0),
(108, 'CE4720', ' 	Computer Appls. in Traffic & Highway Engg', '', 'B Tech', '', 'BSB 237', 'H', 'P', 'Q', 'Gitakrishnan Ramadurai', 0),
(110, 'CE5590', 'Pavement Management System', '', '', '', 'BSB 237', 'E', 'E', '', 'Veeraragavan A', 0),
(111, 'CE7017', ' 	Advanced Traffic Flow Theory ', '', '', '', 'BSB 231', 'M', 'Q', 'P', 'Bhargava Rama Chilukuri', 0),
(112, 'CE5900', ' Intelligent Transportation Systems', '', '', '', 'BSB 231', 'C', 'C', '', 'Lelitha Devi', 0),
(113, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Atul Narayan S P', 1),
(114, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Atul Narayan S P', 1),
(115, 'CE5910', 'Public Transportation', '', '', '', 'BSB 237', 'K', 'R', 'T', 'Sivanandan R', 0),
(116, 'CE5910', 'Public Transportation', '', '', '', 'BSB 237', 'K', 'R', 'T', 'Gitakrishnan Ramadurai', 0),
(117, '', 'Design and Analysis of Airfield Pavement', '', '', '', 'BSB 231', 'E', 'E', '', 'Murali Krishnan J', 0),
(118, 'CE5120', 'Maintenance and Rehabilitation of Constructed Facilities', '', '', '', 'BSB 206', 'E', 'E', '', 'Radhakrishna G Pillai', 0),
(119, 'CE6750', 'CAD in Civil Engineering', '', '', '', 'BSB 206', 'F', 'F', '', 'Benny Raphael', 0),
(120, 'CE5950', 'Characterization of Construction Materials', '', '', '', 'BSB 204', 'F', 'F', '', 'Manu Santhanam', 0),
(122, 'CE4180', 'Air Pollution Control and Solid Waste Management', '', 'B Tech', '', 'ED', 'F', 'F', '', 'Shiva Nagendra S M', 0),
(124, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'BSB 204', 'A', 'A', '', 'Radhakrishna G Pillai', 0),
(125, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Ramamurthy K', 0),
(128, 'CE5870', 'Infrastructure Planning and Management', '', '', '', 'BSB 231', 'H', 'P', 'Q', 'Ashwin Mahalingam', 0),
(155, 'CE2040', 'Hydraulic Engineering', '2017', 'B Tech', 'None', 'BSB 231', 'D', 'D', '', 'Soumendra Nath Kuiry', 0),
(156, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'BSB 204', 'E', 'E', '', 'Sudheer K P', 0),
(163, 'CE5130', 'Construction Quality and Safety Management', '2017', 'M Tech', 'UOP', 'BSB 206', 'D', 'D', '', 'Sivakumar Palaniappan', 0),
(164, 'CE3410', '	Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Veeraragavan A', 0),
(165, 'MS5020', 'Organizational Behaviour ', '2018', 'M Tech', 'UOP', 'BSB 237', 'D', 'D', '', 'Rupashree Baral', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dummy2`
--

CREATE TABLE IF NOT EXISTS `dummy2` (
  `id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `year` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `roomno` text NOT NULL,
  `slot` text NOT NULL,
  `slot1` text NOT NULL,
  `slot2` text NOT NULL,
  `instructor` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy2`
--

INSERT INTO `dummy2` (`id`, `course_id`, `course_name`, `year`, `batch`, `dept`, `roomno`, `slot`, `slot1`, `slot2`, `instructor`, `clash_sorted`) VALUES
(3, 'CE6010', 'Construction Contracts & Specifications', '2014', 'Dual Degree', 'Infrastructure', 'BSB 206', 'A', 'A', '', 'Ramamurthy K', 0),
(11, 'CE5330', 'Advanced Foundation Engg.', '2014', 'Dual Degree', 'Geotechnical Engineering', 'BSB 123', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(14, 'CE5450', 'Applied Hydraulic Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 'E', 'E', '', ' Murty B S', 0),
(15, 'CE5460', 'Ground Water Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'ED', 'G', 'G', '', 'Mohan S', 0),
(18, 'CE5620', 'Structural Dynamics ', '2014', 'Dual Degree', 'Structural Engineering', 'STR 301', 'C', 'C', '', 'Nageswara Rao B', 0),
(21, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(23, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'BSB 203', 'D', 'D', '', 'Rajagopal K', 0),
(24, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'BSB 203', 'E', 'E', '', 'Balaji Narasimhan', 0),
(25, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'BSB 202', 'C', 'C', '', 'Rupen Goswami', 0),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '2016', 'B Tech', 'None', 'ED', 'P', 'P', '', 'Sachin S Gunthe', 0),
(27, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Thyagaraj T', 0),
(29, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'BSB 204', 'B', 'B', '', 'Arul Jayachandran S', 0),
(30, 'CE3010', 'Transportation Engineering - 1', '2017', 'B Tech', 'None', 'BSB 204', 'C', 'C', '', 'Atul Narayan S P', 0),
(31, 'CE2040', 'Hydraulic Engineering ', '2017', 'B Tech', 'None', 'BSB 202', 'D', 'D', '', 'Venu Chandra', 0),
(32, 'CE2080', 'Surveying', '2017', 'B Tech', 'None', 'BSB 202', 'E', 'E', '', 'Ananthanarayanan K', 0),
(37, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'BSB 204', 'A', 'A', '', 'Subhadeep Banerjee', 0),
(45, 'CE5430', 'GT Engg. Design Studio', '2017', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'P', 'P', '', 'Dodagoudar G R', 0),
(48, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'STR', 'P', 'P', '', 'Meher Prasad A', 0),
(50, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', '2017', 'M Tech', 'UOP', 'BSB 206', 'D', 'D', '', 'Koshy Varghese', 0),
(53, 'CE5010', 'Modern Construction Materials', '2018', 'M Tech', 'BTCM', 'BSB 206', 'C', 'C', '', 'Ravindra Gettu', 0),
(54, 'CE5110', 'Building Services', '2018', 'M Tech', 'BTCM', 'BSB 206', 'B', 'B', '', 'Ramamurthy K', 0),
(56, 'CE5020', 'Construction Planning and Control', '2018', 'M Tech', 'BTCM', 'BSB 202', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(57, 'CE5070', 'Building Sciences Laboratory', '2018', 'M Tech', 'BTCM', 'BSB 206', 'P', 'P', '', 'Benny Raphael', 0),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', '2018', 'M Tech', 'Environmental Engineering', 'ED', 'A', 'A', '', 'Ligy Philip', 0),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '2018', 'M Tech', 'Environmental Engineering', 'ED', 'B', 'B', '', 'Mathavakumar S', 0),
(64, 'CE5310', 'Advanced Soil Mechanics', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'A', 'A', '', 'Thyagaraj T', 0),
(65, 'CE5330', 'Advanced Foundation Engg', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(66, 'CE5320', 'Soil Dynamics', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'C', 'C', '', 'Boominathan A', 0),
(67, 'CE5421', 'Geotechnical Engg. Seminar', '2018', 'M Tech', 'Geotechnical Engineering', 'BSB 123', 'Q', 'Q', '', 'Dali Naidu Arnepalli', 0),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'B', 'B', '', 'Raghukanth S T G', 0),
(75, 'CE5620', 'Structural Dynamics                                    ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'C', 'C', '', 'Nageswara Rao B', 0),
(76, 'CE5630', 'Advanced Theory and Design of Concrete Structures            ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'K', 'R', 'T', 'Apparao G', 0),
(77, 'CE5740', 'Experimental Techniques                            ', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'Q', 'Q', '', 'Alagusundaramoorthy P', 0),
(79, 'CE5810', 'Urban Transportation Planning', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'B', 'B', '', 'Karthik K Srinivasan', 0),
(80, 'CE5530', 'Pavement Materials', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'A', 'A', '', 'Murali Krishnan J', 0),
(81, 'CE5830', 'Traffic Engg & Management', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'F', 'F', '', 'Lelitha Devi', 0),
(82, 'CE6810', 'Geometric Design of Highways', '2018', 'M Tech', 'Transportation Engineering', 'BSB 237', 'G', 'G', '', 'Sivanandan R', 0),
(84, 'CE5020', 'Construction Planning & Control ', '2018', 'M Tech', 'UOP', 'BSB 202', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(85, 'CE6010', 'Construction Contracts & Specifications ', '2018', 'M Tech', 'UOP', 'BSB 206', 'A', 'A', '', 'Ramamurthy K', 0),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', '2018', 'M Tech', 'UOP', 'BSB 206', 'R', 'R', '', 'Koshy Varghese', 0),
(89, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'BSB 204', 'D', 'D', '', 'Dali Naidu Arnepalli', 0),
(90, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'BSB 203', 'B', 'B', '', 'Alagappan P', 0),
(91, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'BSB 203', 'C', 'C', '', 'Amlan K Sengupta', 0),
(92, 'CE3310', 'Advanced Structural Analysis', '', 'B Tech', '', 'STR 301', 'D', 'D', '', 'Saravanan U', 0),
(93, 'CE3320', 'Design of Steel Structural Systems', '', 'B Tech', '', 'STR 401', 'E', 'E', '', 'Sathish Kumar S R', 0),
(94, 'CE5650', 'Computing Skills', '', '', '', 'BSB 123', 'E', 'E', '', 'Dodagoudar G R', 0),
(95, 'CE4670', 'Case Studies in Structural Engg.', '', 'B Tech', '', 'BSB 204', 'R', 'R', '', 'Meher Prasad A', 0),
(96, 'CE6330', 'Rock Engineering', '', '', '', 'BSB 123', 'F', 'F', '', 'Vidya Bhushan Maji', 0),
(97, 'CE5331', 'Metro Systems and Engineering', '', '', '', 'BSB 203', 'G', 'G', '', 'Robinson R G', 0),
(98, 'ID6090', 'Composite Materials &amp; Manufacturing', '', '', '', 'STR 301', 'G', 'G', '', 'Alagusundaramoorthy P', 0),
(99, 'GN5001', 'Self-Awareness', '', '', '', 'VSH', 'Q', 'Q', '', 'Devdas Menon', 0),
(100, 'CE7016', 'Nonlinear Analysis of Frame Structures', '', '', '', 'STR 301', 'A', 'A', '', 'Rupen Goswami', 0),
(103, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'STR', 'P', 'P', '', 'Sathish Kumar S R', 0),
(104, 'CE5710', 'Prestressed Concrete Design ', '', '', '', 'STR 301', 'E', 'E', '', 'Devdas Menon', 0),
(105, 'CE5720', 'Stability of Structures', '', '', '', 'STR 301', 'F', 'F', '', 'Lakshmi Priya', 0),
(107, 'CE5740', 'Experimental Techniques', '2018', 'M Tech', 'Structural Engineering', 'STR 301', 'Q', 'Q', '', 'Nageswara Rao B', 0),
(108, 'CE4720', ' 	Computer Appls. in Traffic & Highway Engg', '', 'B Tech', '', 'BSB 237', 'H', 'P', 'Q', 'Gitakrishnan Ramadurai', 0),
(110, 'CE5590', 'Pavement Management System', '', '', '', 'BSB 237', 'E', 'E', '', 'Veeraragavan A', 0),
(111, 'CE7017', ' 	Advanced Traffic Flow Theory ', '', '', '', 'BSB 231', 'M', 'Q', 'P', 'Bhargava Rama Chilukuri', 0),
(112, 'CE5900', ' Intelligent Transportation Systems', '', '', '', 'BSB 231', 'C', 'C', '', 'Lelitha Devi', 0),
(113, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Atul Narayan S P', 1),
(114, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'BSB 237', 'S', 'S', '', 'Atul Narayan S P', 1),
(115, 'CE5910', 'Public Transportation', '', '', '', 'BSB 237', 'K', 'R', 'T', 'Sivanandan R', 0),
(116, 'CE5910', 'Public Transportation', '', '', '', 'BSB 237', 'K', 'R', 'T', 'Gitakrishnan Ramadurai', 0),
(117, '', 'Design and Analysis of Airfield Pavement', '', '', '', 'BSB 231', 'E', 'E', '', 'Murali Krishnan J', 0),
(118, 'CE5120', 'Maintenance and Rehabilitation of Constructed Facilities', '', '', '', 'BSB 206', 'E', 'E', '', 'Radhakrishna G Pillai', 0),
(119, 'CE6750', 'CAD in Civil Engineering', '', '', '', 'BSB 206', 'F', 'F', '', 'Benny Raphael', 0),
(120, 'CE5950', 'Characterization of Construction Materials', '', '', '', 'BSB 204', 'F', 'F', '', 'Manu Santhanam', 0),
(122, 'CE4180', 'Air Pollution Control and Solid Waste Management', '', 'B Tech', '', 'ED', 'F', 'F', '', 'Shiva Nagendra S M', 0),
(124, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'BSB 204', 'A', 'A', '', 'Radhakrishna G Pillai', 0),
(125, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Ramamurthy K', 0),
(128, 'CE5870', 'Infrastructure Planning and Management', '', '', '', 'BSB 231', 'H', 'P', 'Q', 'Ashwin Mahalingam', 0),
(155, 'CE2040', 'Hydraulic Engineering', '2017', 'B Tech', 'None', 'BSB 231', 'D', 'D', '', 'Soumendra Nath Kuiry', 0),
(156, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'BSB 204', 'E', 'E', '', 'Sudheer K P', 0),
(163, 'CE5130', 'Construction Quality and Safety Management', '2017', 'M Tech', 'UOP', 'BSB 206', 'D', 'D', '', 'Sivakumar Palaniappan', 0),
(164, 'CE3410', '	Construction Material Lab', '2016', 'B Tech', 'None', 'BSB 204', 'Q', 'Q', '', 'Veeraragavan A', 0),
(165, 'MS5020', 'Organizational Behaviour ', '2018', 'M Tech', 'UOP', 'BSB 237', 'D', 'D', '', 'Rupashree Baral', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dummy11`
--

CREATE TABLE IF NOT EXISTS `dummy11` (
  `id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `year` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `slot` text NOT NULL,
  `slot1` text NOT NULL,
  `slot2` text NOT NULL,
  `instructor` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy11`
--

INSERT INTO `dummy11` (`id`, `course_id`, `course_name`, `year`, `batch`, `dept`, `slot`, `slot1`, `slot2`, `instructor`, `clash_sorted`) VALUES
(3, 'CE6010', 'Construction Contracts & Specifications', '2014', 'Dual Degree', 'Infrastructure', 'A', 'A', '', 'Ramamurthy K', 0),
(11, 'CE5330', 'Advanced Foundation Engg.', '2014', 'Dual Degree', 'Geotechnical Engineering', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(14, 'CE5450', 'Applied Hydraulic Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'E', 'E', '', ' Murty B S', 0),
(15, 'CE5460', 'Ground Water Engg', '2014', 'Dual Degree', 'Hydraulics & Water Resources Engineering', 'G', 'G', '', 'Mohan S', 0),
(18, 'CE5620', 'Structural Dynamics ', '2014', 'Dual Degree', 'Structural Engineering', 'C', 'C', '', 'Nageswara Rao B', 0),
(21, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(22, 'HSE3', 'Humanities Elective 3', '2015', 'B Tech', 'None', 'D', 'D', '', '', 0),
(23, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'D', 'D', '', 'Rajagopal K', 0),
(24, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'E', 'E', '', 'Balaji Narasimhan', 0),
(25, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'C', 'C', '', 'Rupen Goswami', 0),
(26, 'CE4030', 'Hydraulic & Environ. Engg. Lab', '2016', 'B Tech', 'None', 'P', 'P', '', 'Sachin S Gunthe', 0),
(27, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Q', '', 'Thyagaraj T', 0),
(28, 'BT1010', 'Life Sciences', '2016', 'B Tech', 'None', 'G', 'G', '', '', 0),
(29, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'B', 'B', '', 'Arul Jayachandran S', 0),
(30, 'CE3010', 'Transportation Engineering - 1', '2017', 'B Tech', 'None', 'C', 'C', '', 'Atul Narayan S P', 0),
(31, 'CE2040', 'Hydraulic Engineering ', '2017', 'B Tech', 'None', 'D', 'D', '', 'Venu Chandra', 0),
(32, 'CE2080', 'Surveying', '2017', 'B Tech', 'None', 'E', 'E', '', 'Ananthanarayanan K', 0),
(33, 'MAE', 'Maths Elective', '2017', 'B Tech', 'None', 'A', 'A', '', '', 0),
(34, 'MA1010', 'Functions of Several Variables', '2018', 'B Tech', 'None', 'B', 'B', '', '', 0),
(35, 'PH1010', 'Physics I', '2018', 'B Tech', 'None', 'D', 'D', '', '', 0),
(37, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'A', 'A', '', 'Subhadeep Banerjee', 0),
(38, 'CS1100', 'Introduction to Programming', '2018', 'B Tech', 'None', 'F', 'F', '', '', 0),
(44, 'CE6430#', 'Project', '2017', 'M Tech', 'Geotechnical Engineering', 'T', 'T', '', 'Thyagaraj T', 0),
(45, 'CE5430', 'GT Engg. Design Studio', '2017', 'M Tech', 'Geotechnical Engineering', 'P', 'P', '', 'Dodagoudar G R', 0),
(48, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'P', 'P', '', 'Meher Prasad A', 0),
(50, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'S', 'S', '', 'Gitakrishnan Ramadurai', 1),
(52, 'CE5130 ', 'Construction Quality and Safety Management ', '2017', 'M Tech', 'UOP', 'D', 'D', '', 'Koshy Varghese', 0),
(53, 'CE5010', 'Modern Construction Materials', '2018', 'M Tech', 'BTCM', 'C', 'C', '', 'Ravindra Gettu', 0),
(54, 'CE5110', 'Building Services', '2018', 'M Tech', 'BTCM', 'B', 'B', '', 'Ramamurthy K', 0),
(55, 'CE6010', 'Construction Contracts & Specifications', '2018', 'M Tech', 'BTCM', 'A', 'A', '', 'Ramamurthy K', 0),
(56, 'CE5020', 'Construction Planning and Control', '2018', 'M Tech', 'BTCM', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(57, 'CE5070', 'Building Sciences Laboratory', '2018', 'M Tech', 'BTCM', 'P', 'P', '', 'Benny Raphael', 0),
(60, 'CE5150', 'Environmental Chemistry and Microbiology', '2018', 'M Tech', 'Environmental Engineering', 'A', 'A', '', 'Ligy Philip', 0),
(61, 'CE5170', 'Physico-chemical Processes for Water & WW Treatment', '2018', 'M Tech', 'Environmental Engineering', 'B', 'B', '', 'Mathavakumar S', 0),
(62, 'CE5190', 'Environmental Monitoring Lab', '2018', 'M Tech', 'Environmental Engineering', 'Q', 'Q', '', 'Sachin S Gunthe', 0),
(63, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Environmental Engineering', 'C', 'C', '', '', 0),
(64, 'CE5310', 'Advanced Soil Mechanics', '2018', 'M Tech', 'Geotechnical Engineering', 'A', 'A', '', 'Thyagaraj T', 0),
(65, 'CE5330', 'Advanced Foundation Engg', '2018', 'M Tech', 'Geotechnical Engineering', 'B', 'B', '', 'Subhadeep Banerjee', 0),
(66, 'CE5320', 'Soil Dynamics', '2018', 'M Tech', 'Geotechnical Engineering', 'C', 'C', '', 'Boominathan A', 0),
(67, 'CE5421', 'Geotechnical Engg. Seminar', '2018', 'M Tech', 'Geotechnical Engineering', 'Q', 'Q', '', 'Dali Naidu Arnepalli', 0),
(68, 'MAE1', 'Math Elective - MA5470: Numerical Analysis ', '2018', 'M Tech', 'Geotechnical Engineering', 'E', 'E', '', '', 0),
(69, 'CE5450', 'Applied Hydraulic Engineering', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'E', 'E', '', ' Murty B S', 0),
(70, 'CE5470', 'Surface Water Hydrology', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'G', 'G', '', 'Srinivasan K', 0),
(73, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'C', 'C', '', '', 0),
(74, 'CE6780', 'Advanced Mechanics of Structures             ', '2018', 'M Tech', 'Structural Engineering', 'B', 'B', '', 'Raghukanth S T G', 0),
(75, 'CE5620', 'Structural Dynamics                                    ', '2018', 'M Tech', 'Structural Engineering', 'C', 'C', '', 'Nageswara Rao B', 0),
(76, 'CE5630', 'Advanced Theory and Design of Concrete Structures            ', '2018', 'M Tech', 'Structural Engineering', 'K', 'R', 'T', 'Apparao G', 0),
(77, 'CE5740', 'Experimental Techniques                            ', '2018', 'M Tech', 'Structural Engineering', 'Q', 'Q', '', 'Alagusundaramoorthy P', 0),
(78, 'MAE1', 'Math Elective -  MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Structural Engineering', 'D', 'D', '', '', 0),
(79, 'CE5810', 'Urban Transportation Planning', '2018', 'M Tech', 'Transportation Engineering', 'B', 'B', '', 'Karthik K Srinivasan', 0),
(80, 'CE5530', 'Pavement Materials', '2018', 'M Tech', 'Transportation Engineering', 'A', 'A', '', 'Murali Krishnan J', 0),
(81, 'CE5830', 'Traffic Engg & Management', '2018', 'M Tech', 'Transportation Engineering', 'F', 'F', '', 'Lelitha Devi', 0),
(82, 'CE6810', 'Geometric Design of Highways', '2018', 'M Tech', 'Transportation Engineering', 'G', 'G', '', 'Sivanandan R', 0),
(83, 'MAE1', 'Math Elective - MA5540- Probability and Statistics', '2018', 'M Tech', 'Transportation Engineering', 'C', 'C', '', '', 0),
(84, 'CE5020', 'Construction Planning & Control ', '2018', 'M Tech', 'UOP', 'G', 'G', '', 'Sivakumar Palaniappan', 0),
(85, 'CE6010', 'Construction Contracts & Specifications ', '2018', 'M Tech', 'UOP', 'A', 'A', '', 'Ramamurthy K', 0),
(86, 'CE6050', 'Lean Construction Concepts Tools & Practices', '2018', 'M Tech', 'UOP', 'R', 'R', '', 'Koshy Varghese', 0),
(89, 'CE3350', 'Geotechnical Engineering', '2016', 'B Tech', 'None', 'D', 'D', '', 'Dali Naidu Arnepalli', 0),
(90, 'CE2310', 'Mechanics of Materials', '2017', 'B Tech', 'None', 'B', 'B', '', 'Alagappan P', 0),
(91, 'CE3060', 'Basic RC Design', '2016', 'B Tech', 'None', 'C', 'C', '', 'Amlan K Sengupta', 0),
(103, 'CE6670', 'Structural Engineering Design Studio', '2017', 'M Tech', 'Structural Engineering', 'P', 'P', '', 'Sathish Kumar S R', 0),
(107, 'CE5740', 'Experimental Techniques', '2018', 'M Tech', 'Structural Engineering', 'Q', 'Q', '', 'Nageswara Rao B', 0),
(113, 'CE5831', 'Transportation Engineering Studio', '2014', 'Dual Degree', 'Transportation Engineering', 'S', 'S', '', 'Atul Narayan S P', 1),
(114, 'CE5831', 'Transportation Engineering Studio', '2017', 'M Tech', 'Transportation Engineering', 'S', 'S', '', 'Atul Narayan S P', 1),
(124, 'CE1010', 'Introduction to Civil Engg', '2018', 'B Tech', 'None', 'A', 'A', '', 'Radhakrishna G Pillai', 0),
(125, 'CE3410', 'Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Q', '', 'Ramamurthy K', 0),
(130, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Geotechnical Engineering', 'D', 'D', '', '', 0),
(131, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Environmental Engineering', 'D', 'D', '', '', 0),
(132, 'MAE1', 'Math Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Hydraulics & Water Resources Engineering', 'D', 'D', '', '', 0),
(133, 'MAE1', 'Math. Elective - MA5720: Numerical Analysis of Diff. Equations', '2018', 'M Tech', 'Transportation Engineering', 'D', 'D', '', '', 0),
(155, 'CE2040', 'Hydraulic Engineering', '2017', 'B Tech', 'None', 'D', 'D', '', 'Soumendra Nath Kuiry', 0),
(156, 'CE3030', 'Water Resources Engineering', '2016', 'B Tech', 'None', 'E', 'E', '', 'Sudheer K P', 0),
(163, 'CE5130', 'Construction Quality and Safety Management', '2017', 'M Tech', 'UOP', 'D', 'D', '', 'Sivakumar Palaniappan', 0),
(164, 'CE3410', '	Construction Material Lab', '2016', 'B Tech', 'None', 'Q', 'Q', '', 'Veeraragavan A', 0),
(165, 'MS5020', 'Organizational Behaviour ', '2018', 'M Tech', 'UOP', 'D', 'D', '', 'Rupashree Baral', 0);

-- --------------------------------------------------------

--
-- Table structure for table `electives`
--

CREATE TABLE IF NOT EXISTS `electives` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` text NOT NULL,
  `course_name` text NOT NULL,
  `sem` text NOT NULL,
  `batch` text NOT NULL,
  `dept` text NOT NULL,
  `slot` text NOT NULL,
  `instructor` text NOT NULL,
  `clash_sorted` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `desig` text NOT NULL,
  `email` text NOT NULL,
  `ldap` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `desig`, `email`, `ldap`) VALUES
(1, 'Alagappan P', 'AP', 'alagappan@iitm.ac.in', 'alagappan1'),
(2, 'Alagusundaramoorthy P', 'Prof', 'aspara0@iitm.ac.in', 'aspara01'),
(3, 'Amlan K Sengupta', 'Prof', 'amlan@iitm.ac.in', 'amlan1'),
(4, 'Ananthanarayanan K', 'Prof', 'kananth@iitm.ac.in', 'kananth1'),
(5, 'Apparao G', 'Prof', 'garao@iitm.ac.in', 'garao1'),
(6, 'Arul Jayachandran S', 'ASP', 'aruls@iitm.ac.in', 'aruls1'),
(7, 'Arun Menon', 'ASP', 'arunmenon@iitm.ac.in', 'arunmenon1'),
(8, 'Ashwin Mahalingam', 'ASP', 'mash@iitm.ac.in', 'mash1'),
(9, 'Atul Narayan S P', 'AP', 'atulnryn@iitm.ac.in', 'atulnryn1'),
(10, 'Balaji Narasimhan', 'ASP', 'nbalaji@iitm.ac.in', 'nbalaji1'),
(11, 'Benny Raphael', 'ASP', 'benny@iitm.ac.in', 'benny1'),
(12, 'Bhargava Rama Chilukuri', 'AP', 'bhargava@iitm.ac.in', 'bhargava1'),
(13, 'Boominathan A', 'Prof', 'boomi@iitm.ac.in', 'boomi1'),
(14, 'Dali Naidu Arnepalli', 'ASP', 'arnepalli@iitm.ac.in', 'arnepalli1'),
(15, 'Devdas Menon', 'Prof', 'dmenon@iitm.ac.in', 'dmenon1'),
(16, 'Dodagoudar G R', 'Prof', 'goudar@iitm.ac.in', 'goudar1'),
(17, 'Gandhi S R', 'Prof', 'srgandhi@iitm.ac.in', 'srgandhi1'),
(18, 'Gitakrishnan Ramadurai', 'ASP', 'gitakrishnan@iitm.ac.in', 'gitakrishnan1'),
(19, 'Indumathi M Nambi', 'ASP', 'indunambi@iitm.ac.in', 'indunambi1'),
(20, 'Karthik K Srinivasan', 'Prof', 'karthikks@iitm.ac.in', 'karthikks1'),
(21, 'Koshy Varghese', 'Prof', 'koshy@iitm.ac.in', 'koshy1'),
(22, 'Lakshmi Priya', 'AP', 'lakshmipriya@iitm.ac.in', 'lakshmipriya1'),
(23, 'Lelitha Devi', 'ASP', 'lelitha@iitm.ac.in', 'lelitha1'),
(24, 'Ligy Philip', 'Prof', 'ligy@iitm.ac.in', 'ligy1'),
(25, 'Manu Santhanam', 'Prof', 'manus@iitm.ac.in', 'manus1'),
(26, 'Mathavakumar S', 'ASP', 'mathav@iitm.ac.in', 'mathav1'),
(27, 'Meher Prasad A', 'Prof', 'prasadam@iitm.ac.in', 'prasadam1'),
(28, 'Mohan S', 'Prof', 'smohan@iitm.ac.in', 'smohan1'),
(29, 'Murali Krishnan J', 'ASP', 'jmk@iitm.ac.in', 'jmk1'),
(30, ' Murty B S', 'Prof', 'bsm@iitm.ac.in', 'bsm1'),
(31, 'Murty C V R', 'Prof', 'cvrm@iitm.ac.in', 'cvrm1'),
(32, 'Nageswara Rao B', 'Prof', 'bnrao@iitm.ac.in', 'bnrao1'),
(33, 'Radhakrishna G Pillai', 'ASP', 'pillai@iitm.ac.in', 'pillai1'),
(34, 'Raghukanth S T G', 'ASP', 'raghukanth@iitm.ac.in', 'raghukanth1'),
(35, 'Rajagopal K', 'Prof', 'gopalkr@iitm.ac.in', 'gopalkr1'),
(36, 'Ramamurthy K', 'Prof', 'vivek@iitm.ac.in', 'vivek1'),
(37, 'Ravindra Gettu', 'Prof', 'gettu@iitm.ac.in', 'gettu1'),
(38, 'Robinson R G', 'Prof', 'robinson@iitm.ac.in', 'robinson1'),
(39, 'Rupen Goswami', 'ASP', 'rg@iitm.ac.in', 'rg1'),
(40, 'Sachin S Gunthe', 'ASP', 's.gunthe@iitm.ac.in', 's.gunthe1'),
(41, 'Saravanan U', 'ASP', 'saran@iitm.ac.in', 'saran1'),
(42, 'Sathish Kumar S R', 'Prof', 'kim@iitm.ac.in', 'kim1'),
(43, 'Satyanarayana K N', 'Prof', 'satyakn@iitm.ac.in', 'satyakn1'),
(44, 'Shiva Nagendra S M', 'ASP', 'snagendra@iitm.ac.in', 'snagendra1'),
(45, 'Sivakumar Palaniappan', 'AP', 'sp@iitm.ac.in', 'sp1'),
(46, 'Sivanandan R', 'Prof', 'rsiva@iitm.ac.in', 'rsiva1'),
(47, 'Soumendra Nath Kuiry', 'AP', 'snkuiry@iitm.ac.in', 'snkuiry1'),
(48, 'Srinivasan K', 'Prof', 'ksrini@iitm.ac.in', 'ksrini1'),
(49, 'Subhadeep Banerjee', 'ASP', 'subhadeep@iitm.ac.in', 'subhadeep1'),
(50, 'Sudheer K P', 'Prof', 'sudheer@iitm.ac.in', 'sudheer1'),
(51, 'Thyagaraj T', 'ASP', 'ttraj@iitm.ac.in', 'ttraj1'),
(52, 'Veeraragavan A', 'Prof', 'av@iitm.ac.in', 'av1'),
(53, 'Venu Chandra', 'AP', 'vc@iitm.ac.in', 'vc1'),
(54, 'Vidya Bhushan Maji', 'ASP', 'vbmaji@iitm.ac.in', 'vbmaji1'),
(55, 'Praneeth', 'Student', 'ce14b016@smail.iitm.ac.in', 'ce14b016'),
(56, 'Rahul', 'Student', 'ce13b041@smail.iitm.ac.in', 'ce13b041');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`) VALUES
(2, 'BSB 202'),
(3, 'BSB 203'),
(4, 'BSB 204'),
(5, 'BSB 231'),
(7, 'VSH'),
(8, 'BSB 237'),
(10, 'BSB 206'),
(11, 'BSB 123'),
(12, 'ED'),
(13, 'STR 301'),
(14, 'STR 401');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE IF NOT EXISTS `slots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slot` text NOT NULL,
  `slot_id` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `slot`, `slot_id`) VALUES
(1, 'A', 'A'),
(2, 'B', 'B'),
(3, 'C', 'C'),
(4, 'D', 'D'),
(5, 'E', 'E'),
(6, 'F', 'F'),
(7, 'G', 'G'),
(8, 'H', 'PQ'),
(9, 'J', 'RS'),
(10, 'K', 'RT'),
(11, 'L', 'ST'),
(12, 'M', 'QP'),
(13, 'P', 'P'),
(14, 'Q', 'Q'),
(15, 'R', 'R'),
(16, 'S', 'S'),
(17, 'T', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `slot_clash`
--

CREATE TABLE IF NOT EXISTS `slot_clash` (
  `slot1` text NOT NULL,
  `slot2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot_clash`
--

INSERT INTO `slot_clash` (`slot1`, `slot2`) VALUES
('P', 'H'),
('P', 'M'),
('Q', 'M'),
('Q', 'H'),
('R', 'J'),
('R', 'K'),
('S', 'L'),
('S', 'J'),
('T', 'K'),
('T', 'L');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
