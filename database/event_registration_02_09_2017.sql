-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2017 at 09:42 AM
-- Server version: 5.7.16-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `er_barcodes`
--

CREATE TABLE `er_barcodes` (
  `barcode_id` bigint(20) UNSIGNED NOT NULL,
  `barcode_code` varchar(255) DEFAULT '',
  `barcode_created` datetime DEFAULT NULL,
  `barcode_created_by` varchar(255) DEFAULT '',
  `barcode_lastmodified` datetime DEFAULT NULL,
  `barcode_lastmodified_by` varchar(255) DEFAULT '',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_civilstatus`
--

CREATE TABLE `er_civilstatus` (
  `civil_id` bigint(20) UNSIGNED NOT NULL,
  `civil_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_civilstatus`
--

INSERT INTO `er_civilstatus` (`civil_id`, `civil_name`, `created_at`, `updated_at`) VALUES
(5, 'Single', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Married', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Widowed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Separated', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_classifications`
--

CREATE TABLE `er_classifications` (
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_classifications`
--

INSERT INTO `er_classifications` (`class_id`, `class_name`, `created_at`, `updated_at`) VALUES
(5, 'Student/Academe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Business/Entrepreneur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Government Employee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Private Organization', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Homemakers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Media', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_counters`
--

CREATE TABLE `er_counters` (
  `counter_id` bigint(20) UNSIGNED NOT NULL,
  `counter_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `counter_created` datetime DEFAULT NULL,
  `counter_created_by` varchar(255) DEFAULT '',
  `counter_lastmodified` datetime DEFAULT NULL,
  `counter_lastmodified_by` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_counters`
--

INSERT INTO `er_counters` (`counter_id`, `counter_name`, `created_at`, `updated_at`, `counter_created`, `counter_created_by`, `counter_lastmodified`, `counter_lastmodified_by`) VALUES
(1, 'Parallel I', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, ''),
(2, 'Parallel II', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, ''),
(3, 'Parallel III', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `er_counter_visitors`
--

CREATE TABLE `er_counter_visitors` (
  `counterv_id` bigint(20) UNSIGNED NOT NULL,
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `counterv_created` datetime DEFAULT NULL,
  `counterv_created_by` varchar(255) DEFAULT '',
  `counterv_lastmodified` datetime DEFAULT NULL,
  `counterv_lastmodified_by` varchar(255) DEFAULT '',
  `counter_id` bigint(20) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_events`
--

CREATE TABLE `er_events` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `event_title` varchar(255) DEFAULT '',
  `event_desc` text,
  `event_from` date DEFAULT NULL,
  `event_to` date DEFAULT NULL,
  `event_image` varchar(255) DEFAULT '',
  `event_file` varchar(255) DEFAULT '',
  `event_active` int(10) UNSIGNED DEFAULT '0',
  `event_created` datetime DEFAULT NULL,
  `event_created_by` varchar(255) DEFAULT '',
  `event_lastmodified` datetime DEFAULT NULL,
  `event_lastmodified_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_events`
--

INSERT INTO `er_events` (`event_id`, `event_title`, `event_desc`, `event_from`, `event_to`, `event_image`, `event_file`, `event_active`, `event_created`, `event_created_by`, `event_lastmodified`, `event_lastmodified_by`, `created_at`, `updated_at`) VALUES
(3, 'Rice Invention Contests & Exhibits 2015', 'Philippines: A Science Nation Innovating and Inventing for Global Competitiveness', '2015-10-27', '2015-10-29', 'rice-bhzrgoa-20170206_140158.jpg', '', NULL, NULL, '', NULL, '', '2015-10-26 16:47:08', '2017-02-08 08:27:30'),
(4, 'National Science and Technology Week 2016', 'Juan Science One Nation', '2015-10-15', '2015-10-17', 'juanscienceonenation-kncdyme-20170208_162108.png', '', NULL, NULL, '', NULL, '', '2015-10-26 16:51:23', '2017-02-08 08:21:08'),
(5, 'Niño Jesus Exhibit : Science And Math Fair 2016', 'Science And Math Fair 2016', '2016-02-22', '2016-02-24', 'scimath-obajlex-20170206_140050.jpg', '', NULL, NULL, '', NULL, '', '2016-02-23 11:00:50', '2017-02-06 06:00:50'),
(6, 'Sipag Fiesta 2016', 'Strategic Industry S&T Programs For Agri-Aqua Growth. Best of 2010 - 2016', '2016-03-01', '2016-03-04', 'sipagfiesta-wtgdrzu-20170208_162448.png', '', NULL, NULL, '', NULL, '', '2016-10-05 07:12:07', '2017-02-08 08:26:32'),
(7, 'Technology Trasfer & Investment Forum 2016', 'Technology Trasfer & Investment Forum 2016', '2016-10-06', '2016-10-07', 'techtransfer-eejslxo-20170208_162238.png', '', NULL, NULL, '', NULL, '', '2017-02-06 02:32:14', '2017-02-08 08:23:17'),
(8, 'Science For The People 2017', '', '2017-02-20', '2017-02-20', 'REG2-wztjmzw-20170208_162153.jpg', '', 1, NULL, '', NULL, '', '2017-02-08 08:21:53', '2017-02-08 08:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `er_event_evaluations`
--

CREATE TABLE `er_event_evaluations` (
  `eval_id` bigint(20) UNSIGNED NOT NULL,
  `eval_firsttime` tinyint(1) UNSIGNED DEFAULT '1',
  `eval_interest` bigint(20) UNSIGNED DEFAULT '1',
  `eval_interest_others` varchar(255) DEFAULT '',
  `eval_rating_1` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_2` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_3` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_4` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_5` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_6` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_7` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_rating_overall` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_created` datetime DEFAULT NULL,
  `eval_created_by` varchar(255) DEFAULT '',
  `eval_lastmodified` datetime DEFAULT NULL,
  `eval_lastmodified_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `eval_ref_7` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_9` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_1` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_2` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_3` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_4` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_5` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_6` tinyint(1) UNSIGNED DEFAULT '0',
  `eval_ref_8` tinyint(1) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `eval_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_event_visitors`
--

CREATE TABLE `er_event_visitors` (
  `evis_id` bigint(20) UNSIGNED NOT NULL,
  `evis_created` datetime DEFAULT NULL,
  `evis_created_by` varchar(255) DEFAULT '',
  `evis_lastmodified` datetime DEFAULT NULL,
  `evis_lastmodified_by` varchar(255) DEFAULT '',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_genders`
--

CREATE TABLE `er_genders` (
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `gender_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_genders`
--

INSERT INTO `er_genders` (`gender_id`, `gender_name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Female', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_rates`
--

CREATE TABLE `er_rates` (
  `rate_id` bigint(20) UNSIGNED NOT NULL,
  `rate_name` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_rates`
--

INSERT INTO `er_rates` (`rate_id`, `rate_name`) VALUES
(1, 'Very Dissatisfied'),
(2, 'Dissatisfied'),
(3, 'Neither Satisfied Nor Dissatisfied'),
(4, 'Satisfied'),
(5, 'Very Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `er_referers`
--

CREATE TABLE `er_referers` (
  `referers_id` bigint(20) UNSIGNED NOT NULL,
  `referers_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_regions`
--

CREATE TABLE `er_regions` (
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `region_name` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_regions`
--

INSERT INTO `er_regions` (`region_id`, `region_name`, `created_at`, `updated_at`) VALUES
(1, 'NCR - National Capital Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CAR - Cordillera Administrative Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Region I - Ilocos Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Region II - Cagayan Valley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Region III - Central Luzon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Region IV-A - CALABARZON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Region IV-B - MIMAROPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Region V - Bicol Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Region VI - Western Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Region VII - Central Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Region VIII - Eastern Visayas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Region IX - Zamboanga Peninsula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Region X - Northern Mindanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Region XI - Davao Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Region XII - SOCCSKSARGEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Caraga Region', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'ARMM - Autonomous Region of Muslim Mindanao', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_sites`
--

CREATE TABLE `er_sites` (
  `site_id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_sites`
--

INSERT INTO `er_sites` (`site_id`, `site_name`) VALUES
(1, 'Session I'),
(2, 'Session II'),
(3, 'Session III');

-- --------------------------------------------------------

--
-- Table structure for table `er_site_visitors`
--

CREATE TABLE `er_site_visitors` (
  `sv_id` bigint(20) UNSIGNED NOT NULL,
  `site_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_usergroups`
--

CREATE TABLE `er_usergroups` (
  `ug_id` bigint(20) UNSIGNED NOT NULL,
  `ug_name` varchar(255) DEFAULT '',
  `ug_lastmodified` datetime DEFAULT NULL,
  `ug_lastmodified_by` varchar(255) DEFAULT '',
  `ug_created` datetime DEFAULT NULL,
  `ug_created_by` varchar(255) DEFAULT '',
  `ug_is_admin` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_usergroups`
--

INSERT INTO `er_usergroups` (`ug_id`, `ug_name`, `ug_lastmodified`, `ug_lastmodified_by`, `ug_created`, `ug_created_by`, `ug_is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Administrators', '2016-10-05 17:27:30', NULL, '2016-10-05 17:27:30', NULL, 1, '2016-10-05 09:27:30', '2016-10-05 09:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `er_usergroup_rights`
--

CREATE TABLE `er_usergroup_rights` (
  `ugr_id` bigint(20) UNSIGNED NOT NULL,
  `ugr_view` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_add` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_edit` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_delete` tinyint(1) UNSIGNED DEFAULT '0',
  `ugr_approve` tinyint(1) UNSIGNED DEFAULT '0',
  `ur_id` bigint(20) UNSIGNED DEFAULT '0',
  `ug_id` bigint(20) UNSIGNED DEFAULT '0',
  `ugr_lastmodified` datetime DEFAULT NULL,
  `ugr_lastmodified_by` varchar(255) DEFAULT '',
  `ugr_created` datetime DEFAULT NULL,
  `ugr_created_by` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `er_userrights`
--

CREATE TABLE `er_userrights` (
  `ur_id` bigint(20) UNSIGNED NOT NULL,
  `ur_name` varchar(255) DEFAULT '',
  `ur_lastmodified` datetime DEFAULT NULL,
  `ur_lastmodified_by` varchar(255) DEFAULT '',
  `ur_created` datetime DEFAULT NULL,
  `ur_created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_userrights`
--

INSERT INTO `er_userrights` (`ur_id`, `ur_name`, `ur_lastmodified`, `ur_lastmodified_by`, `ur_created`, `ur_created_by`, `created_at`, `updated_at`) VALUES
(19, 'Users', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'UserGroups', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Events', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Visitors', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Evaluations', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `er_users`
--

CREATE TABLE `er_users` (
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `u_code` varchar(255) DEFAULT '',
  `u_fname` varchar(255) DEFAULT '',
  `u_mname` varchar(255) DEFAULT '',
  `u_lname` varchar(255) DEFAULT '',
  `u_email` varchar(255) DEFAULT '',
  `u_gsm` varchar(255) DEFAULT '',
  `u_username` varchar(255) DEFAULT '',
  `u_password` varchar(255) DEFAULT '',
  `u_enabled` tinyint(1) UNSIGNED DEFAULT '1',
  `u_last_loggedin` datetime DEFAULT NULL,
  `u_listname` varchar(255) DEFAULT '',
  `u_created` datetime DEFAULT NULL,
  `u_created_by` varchar(255) DEFAULT '',
  `u_lastmodified` datetime DEFAULT NULL,
  `u_lastmodified_by` varchar(255) DEFAULT '',
  `ug_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_users`
--

INSERT INTO `er_users` (`u_id`, `u_code`, `u_fname`, `u_mname`, `u_lname`, `u_email`, `u_gsm`, `u_username`, `u_password`, `u_enabled`, `u_last_loggedin`, `u_listname`, `u_created`, `u_created_by`, `u_lastmodified`, `u_lastmodified_by`, `ug_id`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, '', 'Admin', 'Is', 'Treytor', 'glenn@devlinslab.com', '+639159528333', 'admin', '$2y$10$Jldxi8Hsuq9PYfpNAE6cd.WjE3fWDB.XkbME1HxQpuTuUTU7TgtBy', 1, NULL, '', '2016-10-05 17:30:14', NULL, '2017-02-03 15:41:24', NULL, 1, '2016-10-05 09:30:14', '2017-02-06 06:42:10', 'OlHOn1iign66VrbATWNL98UNcUn0kEKBxTdoePmmfb7NPbSTU33Mg6xl1szX');

-- --------------------------------------------------------

--
-- Table structure for table `er_visitors`
--

CREATE TABLE `er_visitors` (
  `vis_id` bigint(20) UNSIGNED NOT NULL,
  `vis_code` varchar(255) DEFAULT '',
  `vis_fname` varchar(255) DEFAULT '',
  `vis_mname` varchar(255) DEFAULT '',
  `vis_lname` varchar(255) DEFAULT '',
  `vis_email` varchar(255) DEFAULT '',
  `vis_gsm` varchar(255) DEFAULT '',
  `vis_enabled` tinyint(1) UNSIGNED DEFAULT '1',
  `vis_last_loggedin` datetime DEFAULT NULL,
  `vis_created` datetime DEFAULT NULL,
  `vis_created_by` varchar(255) DEFAULT '',
  `vis_lastmodified` datetime DEFAULT NULL,
  `vis_lastmodified_by` varchar(255) DEFAULT '',
  `gender_id` bigint(20) UNSIGNED DEFAULT '1',
  `region_id` bigint(20) UNSIGNED DEFAULT '0',
  `civil_id` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `vis_barangay` varchar(255) DEFAULT '',
  `vis_municipality` varchar(255) DEFAULT '',
  `vis_province` varchar(255) DEFAULT '',
  `vis_address` varchar(255) DEFAULT '',
  `vis_age` int(10) UNSIGNED DEFAULT '0',
  `class_id` bigint(20) UNSIGNED DEFAULT '0',
  `event_id` bigint(20) UNSIGNED DEFAULT '0',
  `vis_company` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `er_visitors`
--

INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(1, 'DOST57f5d722f17484.96620863', 'Philip', '', 'Soliven', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 04:46:27', '2016-10-06 04:46:27', '', '', '', '', 1, 11, 7, 'Cargill Philippines Incorporated'),
(2, 'DOST57f5dd516cc111.47503676', 'Maria Cecilia', '', 'De Chavez', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:12:49', '2016-10-06 05:12:49', '', '', '', '', 1, 11, 7, 'Cargill Philippines Incorporated'),
(3, 'DOST57f5dd9a3f9a16.41897520', 'Joey', '', 'Leviste', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:14:02', '2016-10-06 05:14:02', '', '', '', '', 1, 11, 7, 'AG&P'),
(4, 'DOST57f5ddd846aaa3.28148395', 'Noel', '', 'Nocon', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:15:04', '2016-10-06 05:15:04', '', '', '', '', 1, 11, 7, 'Safety & Environment AG&P'),
(5, 'DOST57f5de1367f0f1.90412461', 'Oscar', '', 'Talag', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:16:03', '2016-10-06 05:16:03', '', '', '', '', 1, 11, 7, 'JG Summit Petrochemical Corporation'),
(6, 'DOST57f5de4c20efe8.71190135', 'Estela', '', 'Balbago', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:17:00', '2016-10-06 05:17:00', '', '', '', '', 1, 11, 7, 'DMCI Power Corporation'),
(7, 'DOST57f5de7a7f3d42.62824585', 'Ramon', '', 'Araneta', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:17:46', '2016-10-06 05:17:46', '', '', '', '', 1, 11, 7, 'First Gen Corporation'),
(8, 'DOST57f5de920ce2c6.60409316', 'Manuel', '', 'Lizardo', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:18:10', '2016-10-06 05:18:10', '', '', '', '', 1, 11, 7, 'First Philippine Industrial Park'),
(9, 'DOST57f5deae15df45.43480828', 'Jimmy', '', 'Tan', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:18:38', '2016-10-06 05:18:38', '', '', '', '', 1, 11, 7, 'Sencar Industrial Corporation'),
(10, 'DOST57f5dedb8c23d9.80483178', 'Jeffrey', '', 'Tan', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:19:23', '2016-10-06 05:19:23', '', '', '', '', 1, 11, 7, 'Unibag Manufacturing Corporation'),
(11, 'DOST57f5def386b7a2.96492277', 'David', '', 'Carman', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:19:47', '2016-10-06 05:19:47', '', '', '', '', 1, 11, 7, 'HMR Philippines'),
(12, 'DOST57f5df36422914.42788091', 'Love', '', 'Viyar', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:20:54', '2016-10-06 05:20:54', '', '', '', '', 1, 11, 7, 'HMR Philippines'),
(13, 'DOST57f5df54da4372.30494251', 'Jerry', '', 'Montejo', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:21:24', '2016-10-06 05:21:24', '', '', '', '', 1, 11, 7, 'Card SME Bank'),
(14, 'DOST57f5df66892623.18289246', 'Mario', '', 'Amparo', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:21:42', '2016-10-06 05:21:42', '', '', '', '', 1, 11, 7, 'Amparo\'s Trading'),
(15, 'DOST57f5dfe6625590.90038225', 'Louisville', '', 'Onate', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:23:50', '2016-10-06 05:23:50', '', '', '', '', 1, 11, 7, 'Colorsteel Corporation'),
(16, 'DOST57f5e0085b8314.70334687', 'Mario', '', 'Magtibay', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:24:24', '2016-10-06 05:24:24', '', '', '', '', 1, 11, 7, 'ECOP Batangas'),
(17, 'DOST57f5e0293e0fe7.31577317', 'Anne', '', 'Orozco-Ramirez', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:24:57', '2016-10-06 05:24:57', '', '', '', '', 1, 11, 7, 'FilAm Chamber of Commerce of Silicon Valley'),
(18, 'DOST57f5e046ba78b6.20406296', 'Yolanda', '', 'Stern', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:25:26', '2016-10-06 05:25:26', '', '', '', '', 1, 11, 7, 'One World Institute'),
(19, 'DOST57f5e05fa55582.03031108', 'Alain', '', 'Pascua', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:25:51', '2016-10-06 05:25:51', '', '', '', '', 1, 7, 7, 'DepEd'),
(20, 'DOST57f5e072007487.47928920', 'Clint', '', 'Hassan', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:26:10', '2016-10-06 05:26:10', '', '', '', '', 1, 7, 7, 'DA-ICT'),
(21, 'DOST57f5e09f2622c7.07283192', 'Crisanto', '', 'Gualberto', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:26:55', '2016-10-06 05:26:55', '', '', '', '', 1, 11, 7, 'Kota Kaluarga'),
(22, 'DOST57f5e0b5f08210.05936715', 'Francis', '', 'Laurel', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:27:18', '2016-10-06 05:27:18', '', '', '', '', 1, 8, 7, 'Toyota Batangas City'),
(23, 'DOST57f5e0cda6cea5.39281502', 'Dan', '', 'Lachica', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:27:41', '2016-10-06 05:27:41', '', '', '', '', 11, 11, 7, 'SEIPI'),
(24, 'DOST57f5e0ef319d54.67716544', 'Carlo', '', 'Mendoza', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:28:15', '2016-10-06 05:28:15', '', '', '', '', 1, 11, 7, 'PCCI Batangas'),
(25, 'DOST57f5e11a08c230.78887978', 'Nina', '', 'Mangio', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:28:58', '2016-10-06 05:28:58', '', '', '', '', 1, 11, 7, 'PCCI SME Committee'),
(26, 'DOST57f5e132dddf76.87877496', 'Eduardo', '', 'Nicolas', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:29:22', '2016-10-06 05:29:22', '', '', '', '', 1, 8, 7, 'ECOP South Luzon, Toyota Motor Philippines'),
(27, 'DOST57f5e14ed9fbe5.99909617', 'Jose Roland', '', 'Moya', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:29:50', '2016-10-06 05:29:50', '', '', '', '', 1, 11, 7, 'ECOP'),
(28, 'DOST57f5e16cad8c69.85133232', 'Julie', '', 'Miteria', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:30:20', '2016-10-06 05:30:20', '', '', '', '', 1, 11, 7, 'ECOP In Business Committee'),
(29, 'DOST57f5e188dd6d42.60987891', 'Moje', '', 'Ramos', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:30:48', '2016-10-06 05:30:48', '', '', '', '', 1, 11, 7, 'ECOP In Business Committee'),
(30, 'DOST57f5e19c9f1162.97976112', 'Melvin', '', 'Carlos', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:31:08', '2016-10-06 05:31:08', '', '', '', '', 1, 7, 7, 'PCAARRD'),
(31, 'DOST57f5e1c20e2186.98478155', 'Jejomar', '', 'Carlos', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:31:46', '2016-10-06 05:31:46', '', '', '', '', 1, 7, 7, 'PCIERRD'),
(32, 'DOST57f5e1d8b416d6.25226008', 'Julius', '', 'Guinto', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:32:08', '2016-10-06 05:32:08', '', '', '', '', 1, 7, 7, 'PCIERRD'),
(33, 'DOST57f5e1f22131e9.60840216', 'Catherine', '', 'Miranda', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:32:34', '2016-10-06 05:32:34', '', '', '', '', 1, 7, 7, 'PCIERRD'),
(34, 'DOST57f5e203dff1e2.45649927', 'Anthony', '', 'Dela Cruz', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:32:51', '2016-10-06 05:32:51', '', '', '', '', 1, 7, 7, 'PCIERRD'),
(35, 'DOST57f5e2241bd2d9.66699739', 'Virgilia', '', 'Arellano', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:33:24', '2016-10-06 05:33:24', '', '', '', '', 1, 7, 7, 'DA IV-A (STIARC)'),
(36, 'DOST57f5e257728423.46717538', 'Fortunato', 'T', 'De La Pena', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:34:15', '2016-10-06 05:34:15', '', '', '', '', 1, 7, 7, 'Department of Science and Technology'),
(37, 'DOST57f5e28d9a1477.39571422', 'Emmanuel', 'S', 'Galvez', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:35:09', '2016-10-06 05:35:09', '', '', '', '', 1, 7, 7, 'Department of Science and Technology'),
(38, 'DOST57f5e352d14ef3.11863001', 'Evelyn', 'C', 'Madlangbayan', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:38:26', '2016-10-06 05:38:26', '', '', '', '', 1, 5, 7, 'Bauan Technical High School'),
(39, 'DOST57f5e39ece3538.14448964', 'Aileen', 'I', 'Fayusal', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:39:42', '2016-10-06 05:39:42', '', '', '', '', 1, 5, 7, 'Sta. Teresa College'),
(40, 'DOST57f5e41536ace9.84568641', 'Anna Maria', 'O', 'Cueto', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:41:41', '2016-10-06 05:41:41', '', '', '', '', 1, 5, 7, 'Batangas National High School'),
(41, 'DOST57f5e43368ba55.36029912', 'Teresita', 'C', 'Magpantay', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:42:11', '2016-10-06 05:42:11', '', '', '', '', 1, 5, 7, 'Banaba West National High School'),
(42, 'DOST57f5e44ce05359.09053883', 'Anabelle', 'D', 'Hernandez', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:42:36', '2016-10-06 05:42:36', '', '', '', '', 1, 5, 7, 'Tinga Sorosoro National High School'),
(43, 'DOST57f5e46ab609e3.55982669', 'Richel', '', 'Duran', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:43:06', '2016-10-06 05:43:06', '', '', '', '', 1, 5, 7, 'Lyceum of the Philippines University - Batangas'),
(44, 'DOST57f5e4b62edcf3.75078852', 'Sherlyn', 'S', 'Tolentino', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:44:22', '2016-10-06 05:44:22', '', '', '', '', 1, 5, 7, 'Sta. Rita National High School'),
(45, 'DOST57f5e4d590c124.15867247', 'Leny', '', 'Mendoza', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 6, '2016-10-06 05:44:53', '2016-10-06 05:44:53', '', '', '', '', 1, 5, 7, 'Balete National High School'),
(46, 'DOST57f5e511c8ee66.99301321', 'Arianne', '', 'Pahayahay', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:45:53', '2016-10-06 05:45:53', '', '', '', '', 1, 5, 7, 'Princeton Science School'),
(47, 'DOST57f5e54d0f7569.80542021', 'Jennelyn', 'C', 'Corral', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:46:53', '2016-10-06 05:46:53', '', '', '', '', 1, 5, 7, 'Golden Gate Colleges'),
(48, 'DOST57f5e575951bc0.05561722', 'Rebecca', 'R', 'Pagcaliwagan', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:47:33', '2016-10-06 05:47:33', '', '', '', '', 1, 5, 7, 'NAVERA'),
(49, 'DOST57f5e58aeb8e28.71679347', 'Razelle', '', 'Ferrer', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:47:54', '2016-10-06 05:47:54', '', '', '', '', 1, 5, 7, 'University of Batangas'),
(50, 'DOST57f5e5a889ee89.24231627', 'Maxima Gregoria', '', 'Lucero', '', '', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 05:48:24', '2016-10-06 05:48:24', '', '', '', '', 1, 5, 7, 'San Pascual National High School'),
(51, 'DOST57f5e7f5ef6cd0.01782932', 'Renato', '', 'Almeda', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 05:58:13', '2016-10-06 05:58:13', '', '', '', '', 1, 11, 7, 'ECOP CALABARZON, VP-Yazaki Torres'),
(52, 'DOST57f63314d5a593.55570174', 'Janice', 'F', 'Berris', '', '999', 1, NULL, NULL, '', NULL, '', 2, 6, 5, '2016-10-06 11:18:44', '2016-10-06 11:18:44', '', '', '', '', 33, 5, 7, 'DOST'),
(53, 'DOST57f6dca6b61087.90128176', 'ROSALIBONE', 'BOR', 'RONQUILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:23:22', '2016-10-06 23:24:12', '', '', '', '', 38, 5, 7, ''),
(54, 'DOST57f6dc9beaf484.31257506', 'Antonette', 'Tegon', 'Geron', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:23:23', '2016-10-06 23:23:23', '', '', '', '', 37, 5, 7, ''),
(55, 'DOST57f6dd09139054.22797088', 'SHARMAINE', 'ILAGAN', 'BRILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:25:21', '2016-10-06 23:25:21', '', '', '', '', 32, 5, 7, ''),
(56, 'DOST57f6de0f137cc1.56355496', 'Kaye Ann', 'Piano', 'Macatangay', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:32:51', '2016-10-06 23:32:51', '', '', '', '', 14, 5, 7, ''),
(57, 'DOST57f6deca0f16f7.93937894', 'REBECCA', 'REYES', 'PAGCALIWAGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:33:04', '2016-10-06 23:33:04', '', '', '', '', 52, 7, 7, ''),
(58, 'DOST57f6df691a7794.85964964', 'IAN DWIGHT ', 'DIONA', 'DAJOYAG', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:34:53', '2016-10-06 23:34:53', '', '', '', '', 13, 5, 7, ''),
(59, 'DOST57f6df84ca9264.71860004', 'JESUSA JOY', 'BRIONES', 'ROCETA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:35:35', '2016-10-06 23:35:35', '', '', '', '', 17, 7, 7, ''),
(60, 'DOST57f6e01a51f843.53536413', 'ELDRIDGE JOY', 'MANALO', 'DALISAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:38:01', '2016-10-06 23:38:01', '', '', '', '', 15, 5, 7, ''),
(61, 'DOST57f6dff8b75d04.75184360', 'ERMA', 'B.', 'QUINAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:38:38', '2016-10-06 23:38:38', '', '', '', '', 50, 5, 7, ''),
(62, 'DOST57f6e080026527.35696041', 'ROI KARLO', 'VALENCIA', 'SINCHI', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:40:56', '2016-10-06 23:40:56', '', '', '', '', 13, 5, 7, ''),
(63, 'DOST57f6df8b13c975.54257083', 'ROSEMARIE', 'MACATANGAY', 'GUTIERREZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:41:51', '2016-10-06 23:41:51', '', '', '', '', 47, 5, 7, ''),
(64, 'DOST57f6e0f9280081.46418928', 'JULSID RAYE', 'MACATANGAY', 'GONZALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:42:05', '2016-10-06 23:42:05', '', '', '', '', 12, 5, 7, ''),
(65, 'DOST57f6e10cab6d38.29582189', 'RED CHESTER', 'CASTILLO', 'MACARAIG', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:43:18', '2016-10-06 23:43:18', '', '', '', '', 12, 5, 7, ''),
(66, 'DOST57f6e17ea08d34.43971945', 'BON JOSHUA', 'BECHAYDA', 'DRIZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:44:00', '2016-10-06 23:44:00', '', '', '', '', 15, 5, 7, ''),
(67, 'DOST57f6e1aa069fe8.73297514', 'JONEL', 'M', 'MENDOZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:44:18', '2016-10-06 23:44:18', '', '', '', '', 14, 5, 7, ''),
(68, 'DOST57f6e198f1e1a5.66604325', 'RANIEL', 'CAREAL', 'MACATANGCAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-06 23:44:26', '2016-10-06 23:45:32', '', '', '', '', 13, 5, 7, ''),
(69, 'DOST57f6e205de8ad7.80253008', 'STEFANO ABELARDO', 'PEREZ', 'CHUA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:46:17', '2016-10-06 23:46:17', '', '', '', '', 14, 5, 7, ''),
(70, 'DOST57f6e234760f61.46380871', 'AERON KIEL', 'ANDAL', 'LACSAMANA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:46:47', '2016-10-06 23:46:47', '', '', '', '', 14, 5, 7, ''),
(71, 'DOST57f6e2400edcd5.41616953', 'ISRAEL', 'BESA', 'CUEVAS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:47:31', '2016-10-06 23:47:31', '', '', '', '', 14, 5, 7, ''),
(72, 'DOST57f6e294f2adf1.57946394', 'JAKE VINCENT', 'BACAL', 'ROBLES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:48:08', '2016-10-06 23:48:08', '', '', '', '', 14, 5, 7, ''),
(73, 'DOST57f6e288becfc7.42186008', 'NORAINE JEM', 'MARQUEZ', 'PUNZALAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:48:11', '2016-10-06 23:48:11', '', '', '', '', 15, 5, 7, ''),
(74, 'DOST57f6e2a96e3f35.31100498', 'KYLA', 'VILLENA', 'GUINHAWA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:48:40', '2016-10-06 23:48:40', '', '', '', '', 14, 5, 7, ''),
(75, 'DOST57f6e2ec0b8cb2.36006273', 'RAZEL', 'MANALO', 'FERRER', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:49:46', '2016-10-06 23:49:46', '', '', '', '', 34, 5, 7, ''),
(76, 'DOST57f6e2fe293170.63487371', 'JETHRO PAULO', 'DE TORRES', 'DIPASUPIL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:50:18', '2016-10-06 23:50:18', '', '', '', '', 15, 5, 7, ''),
(77, 'DOST57f6e3137e7e61.88064269', 'ROILAN BOGIE', 'MONTEJO', 'ALVAREZ III', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:50:37', '2016-10-06 23:50:37', '', '', '', '', 19, 5, 7, ''),
(78, 'DOST57f6e348656b51.99181422', 'LUCILLE', 'D', 'EVANGELISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:51:33', '2016-10-06 23:51:33', '', '', '', '', 34, 5, 7, ''),
(79, 'DOST57f6e348656b51.99181422', 'LUCILLE', 'D', 'EVANGELISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:51:33', '2016-10-06 23:51:33', '', '', '', '', 34, 5, 7, ''),
(80, 'DOST57f6e37dd23b25.40236998', 'ROMEL', 'UMALI', 'BRIONES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:52:40', '2016-10-06 23:52:40', '', '', '', '', 32, 5, 7, ''),
(81, 'DOST57f6e39b79c359.41280057', 'ANNA MARIA', 'OCAMPO', 'CUETO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:52:57', '2016-10-06 23:52:57', '', '', '', '', 48, 5, 7, ''),
(82, 'DOST57f6e3c5596586.14954765', 'ELEONOR', 'ESTOLANO', 'SEPILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-06 23:53:25', '2016-10-06 23:53:25', '', '', '', '', 55, 5, 7, ''),
(83, 'DOST57f6e3e4878765.32777319', 'HANNAH ', 'BICOL', 'LARGADO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:54:05', '2016-10-06 23:54:05', '', '', '', '', 15, 5, 7, ''),
(84, 'DOST57f6e427a64925.73149959', 'RUSTY', 'LOPEZ', 'PARUNGAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:55:13', '2016-10-06 23:55:13', '', '', '', '', 25, 7, 7, ''),
(85, 'DOST57f6e41b550479.11029386', 'PAUL', 'PANGANIBAN', 'ARNIGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:55:13', '2016-10-06 23:55:13', '', '', '', '', 14, 5, 7, ''),
(86, 'DOST57f6e427a64925.73149959', 'RUSTY', 'LOPEZ', 'PARUNGAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:55:14', '2016-10-06 23:55:14', '', '', '', '', 25, 7, 7, ''),
(87, 'DOST57f6e41b550479.11029386', 'PAUL', 'PANGANIBAN', 'ARNIGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:55:14', '2016-10-06 23:55:14', '', '', '', '', 14, 5, 7, ''),
(88, 'DOST57f6e4576b6384.96317273', 'ANDREA MICHELLE', 'SERRANO', 'DE CASTRO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:56:43', '2016-10-06 23:56:43', '', '', '', '', 16, 5, 7, ''),
(89, 'DOST57f6e48cb8c476.96834093', 'ARVIN JOHN', 'KALAW', 'FELONIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:56:43', '2016-10-06 23:56:43', '', '', '', '', 15, 5, 7, ''),
(90, 'DOST57f6e4b9b35758.27525088', 'RIEN VIEN', 'ABREA', 'DELA ROSA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:57:27', '2016-10-06 23:57:27', '', '', '', '', 15, 5, 7, ''),
(91, 'DOST57f6e4bcee9fb2.57863375', 'CLARISSE', 'FALAME', 'FAJARITO', 'FAJARITO', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:58:04', '2016-10-06 23:58:04', '', '', '', '', 15, 5, 7, ''),
(92, 'DOST57f6e4f1907dd3.25878257', 'PHILIP', 'PARAS', 'CLAUS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:58:39', '2016-10-06 23:58:39', '', '', '', '', 14, 5, 7, ''),
(93, 'DOST57f6e52f9e9728.23142612', 'KIM JUSTINE', 'ABARQUEZ', 'ATAJAR', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:59:26', '2016-10-06 23:59:26', '', '', '', '', 14, 5, 7, ''),
(94, 'DOST57f6e50e8c2a16.65982491', 'ELOIZA JEAN', 'DE ROXAS', 'FAJARITO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-06 23:59:37', '2016-10-06 23:59:37', '', '', '', '', 15, 5, 7, ''),
(95, 'DOST57f6e550dcee41.66427522', 'IAN JEROME', 'CALALVAN', 'GUNAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:00:14', '2016-10-07 00:00:14', '', '', '', '', 14, 5, 7, ''),
(96, 'DOST57f6e56c4626e4.07068121', 'ALTHEA MERLIN', 'TARCELO', 'ASI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:00:48', '2016-10-07 00:00:48', '', '', '', '', 13, 5, 7, ''),
(97, 'DOST57f6e588e02331.34420753', 'ANGELO', 'PAGLINAWAN', 'ALCONGA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:00:57', '2016-10-07 00:00:57', '', '', '', '', 14, 5, 7, ''),
(98, 'DOST57f6e5abeceac6.03226029', 'MARC ALDWIN', 'DOTE', 'FAMILARA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:01:35', '2016-10-07 00:01:35', '', '', '', '', 14, 5, 7, ''),
(99, 'DOST57f6e5b946c435.61295833', 'JULLIENE MAE', 'ARELLANO', 'CANDAVA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:01:56', '2016-10-07 00:01:56', '', '', '', '', 14, 5, 7, ''),
(100, 'DOST57f6e5e1c87fe5.58224778', 'RON PATRICK', 'ADIA', 'CATAPANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:02:24', '2016-10-07 00:02:24', '', '', '', '', 16, 5, 7, ''),
(101, 'DOST57f6e5fa644b48.71632071', 'DEINELLA FAITH', '.BICOL', 'ABU', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:02:46', '2016-10-07 00:02:46', '', '', '', '', 14, 5, 7, ''),
(102, 'DOST57f6e6054a6325.49859594', 'AEROLLE', 'TARCELO', 'SANA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:03:03', '2016-10-07 00:03:03', '', '', '', '', 14, 5, 7, ''),
(103, 'DOST57f6e63833c074.27783319', 'JONA', 'CALZADO', 'GUNIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:03:41', '2016-10-07 00:03:41', '', '', '', '', 15, 5, 7, ''),
(104, 'DOST57f6e6836162c2.17607291', 'DANA GAIL', 'MANALO', 'RIVERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:04:51', '2016-10-07 00:04:51', '', '', '', '', 16, 5, 7, ''),
(105, 'DOST57f6e66af07ef7.98363376', 'NICO ANJELO', 'PANGANIBAN', 'GUCE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:05:02', '2016-10-07 00:05:02', '', '', '', '', 15, 5, 7, ''),
(106, 'DOST57f6e65cc69195.86762651', 'RUFINA', 'LASALA', 'SALVADOR', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 7, '2016-10-07 00:05:48', '2016-10-07 00:05:48', '', '', '', '', 61, 6, 7, ''),
(107, 'DOST57f6e6c7bd6143.29076958', 'MICHAIAH ALEXANDRIA', 'CASTILLO', 'ESGUERRA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:06:09', '2016-10-07 00:06:09', '', '', '', '', 15, 5, 7, ''),
(108, 'DOST57f6e6d3b62e15.39175854', 'VOUGHN RAYNIEL', 'LONTOC', 'MARTINEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:06:32', '2016-10-07 00:06:32', '', '', '', '', 15, 5, 7, ''),
(109, 'DOST57f6e6de3a9431.66442505', 'LUZVIMINDA', 'SISCAR', 'BONSOL', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:06:37', '2016-10-07 00:06:37', '', '', '', '', 65, 6, 7, ''),
(110, 'DOST57f6e71a1516d9.40958186', 'EVELYN', 'CUNAG', 'MADLANGBAYAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:07:28', '2016-10-07 00:07:28', '', '', '', '', 33, 5, 7, ''),
(111, 'DOST57f6e72860e2a7.72705558', 'LEMUEL', 'COLIFLORES', 'CASTILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:07:44', '2016-10-07 00:07:44', '', '', '', '', 16, 5, 7, ''),
(112, 'DOST57f6e70e602b69.22095099', 'EPIFANIA ', 'CALDERON', 'DE CASTRO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:07:47', '2016-10-07 00:07:47', '', '', '', '', 44, 6, 7, ''),
(113, 'DOST57f6e770d34cb7.77489988', 'HANNAH', 'SANDOVAL', 'GEDUCOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:08:52', '2016-10-07 00:08:52', '', '', '', '', 14, 5, 7, ''),
(114, 'DOST57f6e76541d109.47116513', 'RONDEL', 'BONGAO', 'LANDICHO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:08:52', '2016-10-07 00:08:52', '', '', '', '', 18, 5, 7, ''),
(115, 'DOST57f6e759874924.20976152', 'REY ', 'MAMIIT', 'JOLONGBAYAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:09:14', '2016-10-07 00:09:14', '', '', '', '', 42, 5, 7, ''),
(116, 'DOST57f6e7abe286b3.74133266', 'JOY', 'NARZOLES', 'REYES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:10:19', '2016-10-07 00:10:19', '', '', '', '', 31, 5, 7, ''),
(117, 'DOST57f6e7d1d97ef2.32450769', 'ALJOHN', 'MAGAHIS', 'CAPOY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:10:31', '2016-10-07 00:10:31', '', '', '', '', 18, 5, 7, ''),
(118, 'DOST57f6e7cca2f3a9.03011878', 'MICHAELA SHAWNAEMAR', 'ASIS', 'DIMAANO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:10:42', '2016-10-07 00:10:42', '', '', '', '', 15, 5, 7, ''),
(119, 'DOST57f6e7ed229be5.50364180', 'AILEEN', 'INGENTE', 'FAYUSAL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:11:23', '2016-10-07 00:11:23', '', '', '', '', 38, 5, 7, ''),
(120, 'DOST57f6e8116cf075.90213884', 'MARIA LOURDES', 'VELASCO', 'BALANSAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:11:40', '2016-10-07 00:11:40', '', '', '', '', 43, 5, 7, ''),
(121, 'DOST57f6e8216803a6.25529113', 'KRISTIN CAMILLE', 'DAGLE', 'DINGLAVAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:12:08', '2016-10-07 00:12:08', '', '', '', '', 14, 5, 7, ''),
(122, 'DOST57f6e82cdca296.23283211', 'JOHN DALE', 'ABRENICA', 'CARINGAL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:12:25', '2016-10-07 00:12:25', '', '', '', '', 13, 5, 7, ''),
(123, 'DOST57f6e854be4615.39954569', 'ALLAN', 'BAASIS', 'DE VILLA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:12:43', '2016-10-07 00:12:43', '', '', '', '', 36, 5, 7, ''),
(124, 'DOST57f6e874d3a7b8.47799549', 'RAMIL', 'BISCO', 'ROSALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:13:23', '2016-10-07 00:13:23', '', '', '', '', 14, 5, 7, ''),
(125, 'DOST57f6e86aecf2c6.68098680', 'LEXIE MOIRA', 'MENDANO', 'CORDOVA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:13:25', '2016-10-07 00:13:25', '', '', '', '', 13, 5, 7, ''),
(126, 'DOST57f6e892748423.17465413', 'SHIRLEY ', 'GUTIERREZ', 'CABRERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:13:47', '2016-10-07 00:13:47', '', '', '', '', 39, 5, 7, ''),
(127, 'DOST57f6e8a6431731.14005749', 'EMERSON', 'ROSALES', 'FURTO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:14:36', '2016-10-07 00:14:36', '', '', '', '', 15, 5, 7, ''),
(128, 'DOST57f6e8c60d1ce5.90391081', 'JONILYN', 'BEREDO', 'ABAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:14:49', '2016-10-07 00:14:49', '', '', '', '', 34, 5, 7, ''),
(129, 'DOST57f6e8db1b0db5.40772357', 'VILMA', 'PEREZ', 'LONTOC', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:15:12', '2016-10-07 00:15:12', '', '', '', '', 48, 8, 7, ''),
(130, 'DOST57f6e8ed916af0.45213622', 'ANDREI JOSE', 'TORRES', 'LEONOR', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:15:34', '2016-10-07 00:15:34', '', '', '', '', 15, 5, 7, ''),
(131, 'DOST57f6e93140ee67.58022074', 'EDERLINA', 'ACOB', 'ABALOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:16:33', '2016-10-07 00:16:33', '', '', '', '', 54, 8, 7, ''),
(132, 'DOST57f6e927afda55.07902004', 'ARIANNE SHAINNE', 'CRUZAT', 'HERRERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:16:45', '2016-10-07 00:16:45', '', '', '', '', 15, 5, 7, ''),
(133, 'DOST57f6e927afda55.07902004', 'ARIANNE SHAINNE', 'CRUZAT', 'HERRERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:16:45', '2016-10-07 00:16:45', '', '', '', '', 15, 5, 7, ''),
(134, 'DOST57f6e921361599.25507725', 'LOVELY JOY', 'FAJILAGMAGO', 'ESTEBA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:16:46', '2016-10-07 00:16:46', '', '', '', '', 16, 5, 7, ''),
(135, 'DOST57f6e927afda55.07902004', 'ARIANNE SHAINNE', 'CRUZAT', 'HERRERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:16:46', '2016-10-07 00:16:46', '', '', '', '', 15, 5, 7, ''),
(136, 'DOST57f6e973ac87c0.04701318', 'TRIGELYN', 'ALVAR', 'ACLAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:17:42', '2016-10-07 00:17:42', '', '', '', '', 16, 5, 7, ''),
(137, 'DOST57f6e98085b872.10800086', 'FLORENCIA', 'DUENAS', 'CUETO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:17:50', '2016-10-07 00:17:50', '', '', '', '', 56, 8, 7, ''),
(138, 'DOST57f6e9952706d0.41578380', 'PRINCESS', 'MAGBOO', 'EVANGELISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:18:12', '2016-10-07 00:18:12', '', '', '', '', 16, 5, 7, ''),
(139, 'DOST57f6e9a77cd312.55931373', 'JOHN PAUL', 'LEDESMA', 'MARASIGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:18:36', '2016-10-07 00:18:36', '', '', '', '', 15, 5, 7, ''),
(140, 'DOST57f6e9c4763574.20206623', 'ISABELO', 'OCAMPO', 'BRIONES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:18:53', '2016-10-07 00:21:58', '', '', '', '', 40, 8, 7, ''),
(141, 'DOST57f6e9e89908c7.20756977', 'CELINE', 'PIADO', 'AMERICA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:19:31', '2016-10-07 00:19:31', '', '', '', '', 15, 5, 7, ''),
(142, 'DOST57f6e9e11fbb17.31135380', 'MARIA EDRHEA', 'MACARAIG', 'ATIENZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:19:34', '2016-10-07 00:19:34', '', '', '', '', 13, 5, 7, ''),
(143, 'DOST57f6ea09e850a0.56153159', 'RIOVOLT VAUGHNDER', 'DE CASTRO', 'JOSOL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:20:29', '2016-10-07 00:20:29', '', '', '', '', 15, 5, 7, ''),
(144, 'DOST57f6ea170f9996.57158345', 'MERWIN', 'CASTILLO', 'MERQUITA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:20:47', '2016-10-07 00:20:47', '', '', '', '', 15, 5, 7, ''),
(145, 'DOST57f6ea2eb2e575.72092340', 'SANDRO CARLO', 'BAGSIT', 'TABLIZO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:20:57', '2016-10-07 00:20:57', '', '', '', '', 16, 5, 7, ''),
(146, 'DOST57f6ea6e33e600.19270761', 'MA. EDRHEA', 'MACARAIG', 'ATIENZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:22:17', '2016-10-07 00:22:17', '', '', '', '', 13, 5, 7, ''),
(147, 'DOST57f6ea791d4f85.62277030', 'DONABEL', 'DISPEDA', 'CASTILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:22:18', '2016-10-07 00:22:18', '', '', '', '', 15, 5, 7, ''),
(148, 'DOST57f6eabda49df0.43483815', 'JANINE', 'SORIANO', 'CABALLERO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:23:05', '2016-10-07 00:23:05', '', '', '', '', 16, 5, 7, ''),
(149, 'DOST57f6eac86a3086.60819383', 'NINEVETCH', '...', 'CAPERINA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:23:14', '2016-10-07 00:23:14', '', '', '', '', 52, 11, 7, ''),
(150, 'DOST57f6ead7a2c474.43142433', 'JAMILLAH MAY', 'REYES', 'DIESTRO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:23:36', '2016-10-07 00:23:36', '', '', '', '', 14, 5, 7, ''),
(151, 'DOST57f6eb026f4b99.86116135', 'MAEVELYN', 'NARCISO', 'GARCIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:26:32', '2016-10-07 00:26:32', '', '', '', '', 15, 5, 7, ''),
(152, 'DOST57f6eb1820f7f8.34076724', 'SAMUEL', '...', 'CAPERINA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:26:33', '2016-10-07 00:26:33', '', '', '', '', 57, 5, 7, ''),
(153, 'DOST57f6eb026f4b99.86116135', 'MAEVELYN', 'NARCISO', 'GARCIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:26:33', '2016-10-07 00:26:33', '', '', '', '', 15, 5, 7, ''),
(154, 'DOST57f6eb026f4b99.86116135', 'MAEVELYN', 'NARCISO', 'GARCIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:26:33', '2016-10-07 00:26:33', '', '', '', '', 15, 5, 7, ''),
(155, 'DOST57f6ebb83d6f85.08961122', 'VERLA EUNICE', 'JAMITO', 'ABAS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:27:28', '2016-10-07 00:27:28', '', '', '', '', 15, 5, 7, ''),
(156, 'DOST57f6ebc25c4e30.19019380', 'MARK RONALD', 'CALANDRIA', 'MAGBOO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:27:47', '2016-10-07 00:27:47', '', '', '', '', 15, 5, 7, ''),
(157, 'DOST57f6ebc0ce1626.65761359', 'JO MIEL', 'CASIHAN', 'AUSTRIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:28:28', '2016-10-07 00:28:28', '', '', '', '', 14, 5, 7, ''),
(158, 'DOST57f6ec1398c856.19350597', 'JHON EVIS', 'MERLUZA', 'SERRANO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:28:45', '2016-10-07 00:32:02', '', '', '', '', 15, 5, 7, ''),
(159, 'DOST57f6ec17ae7826.43249226', 'JEMMARIE', 'PEREZ', 'ASI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:28:59', '2016-10-07 00:28:59', '', '', '', '', 15, 5, 7, ''),
(160, 'DOST57f6ec36083fe3.50102043', 'JERLENE', 'FAELDAN', 'TOLENTINO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:29:32', '2016-10-07 00:29:32', '', '', '', '', 30, 5, 7, ''),
(161, 'DOST57f6ec5760d080.88588400', 'CYRA', 'DE OCAMPO', 'ESCALONA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:29:49', '2016-10-07 00:29:49', '', '', '', '', 14, 5, 7, ''),
(162, 'DOST57f6ec5f056054.35277640', 'JAN PATRICK', 'ARELLANO', 'BUENO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:30:17', '2016-10-07 00:30:17', '', '', '', '', 15, 5, 7, ''),
(163, 'DOST57f6ec6ee75cc9.93506993', 'YUAN CARLOS', 'ILAGAN ', 'DORINGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:30:42', '2016-10-07 00:30:42', '', '', '', '', 15, 5, 7, ''),
(164, 'DOST57f6ec963f8718.84431714', 'CHRISTIAN', 'CAMALIG', 'ITURRALDE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:31:01', '2016-10-07 00:31:01', '', '', '', '', 12, 5, 7, ''),
(165, 'DOST57f6ecb404f830.20918918', 'MAURINE', 'CABUNYAG', 'GENEROSO ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:31:24', '2016-10-07 00:31:24', '', '', '', '', 15, 5, 7, ''),
(166, 'DOST57f6ecbd2b4118.93455750', 'LORETA', 'LAT', 'FROYALDE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:31:49', '2016-10-07 00:31:49', '', '', '', '', 32, 5, 7, ''),
(167, 'DOST57f6ecde2867a7.32019552', 'BENCH', 'PERAAN', 'LANUZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:32:22', '2016-10-07 00:32:22', '', '', '', '', 15, 5, 7, ''),
(168, 'DOST57f6ed1d00ecc1.05452793', 'JAY LORENZ', 'NABONG', 'ARANZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:33:04', '2016-10-07 00:33:04', '', '', '', '', 13, 5, 7, ''),
(169, 'DOST57f6ed204feae7.36422469', 'LADIELYN', 'ALDAY', 'DUCAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:33:28', '2016-10-07 00:33:28', '', '', '', '', 30, 5, 7, ''),
(170, 'DOST57f6ed228e3225.26544521', 'NEIL JEFFERSON', 'LACERNA ', 'MARASIGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:33:30', '2016-10-07 00:33:30', '', '', '', '', 15, 5, 7, ''),
(171, 'DOST57f6ed58a636e2.62566085', 'ALYSSA VIEN', 'SUAREZ', 'BORROMEO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:33:59', '2016-10-07 00:33:59', '', '', '', '', 13, 5, 7, ''),
(172, 'DOST57f6ed5bd60af1.03733590', 'LHEANE', 'ATIENZA', 'ROMANO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:34:28', '2016-10-07 00:34:28', '', '', '', '', 15, 5, 7, ''),
(173, 'DOST57f6ed84ab5029.38633615', 'REY EDWARD', 'VALES', 'SOLICITO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:34:53', '2016-10-07 00:34:53', '', '', '', '', 21, 5, 7, ''),
(174, 'DOST57f6ed8dd74846.89571407', 'REYNAN', 'GARCIA', 'MACATANGAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:34:56', '2016-10-07 00:34:56', '', '', '', '', 15, 5, 7, ''),
(175, 'DOST57f6edc72591e3.26680029', 'IRISH JOY', 'VILLA', 'BANLASAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:35:47', '2016-10-07 00:35:47', '', '', '', '', 12, 5, 7, ''),
(176, 'DOST57f6edc65a23e9.09880638', 'JOHN REYMART', 'CARPIO', 'HERNANDEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:36:06', '2016-10-07 00:36:06', '', '', '', '', 21, 5, 7, ''),
(177, 'DOST57f6edf6456a07.22988098', 'SUSANA', 'MARANAN', 'PEREZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:36:37', '2016-10-07 00:36:37', '', '', '', '', 50, 5, 7, ''),
(178, 'DOST57f6ee13318bd1.42895001', 'JAY NICKSON', 'TENORIO', 'TABING', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:37:12', '2016-10-07 00:37:12', '', '', '', '', 26, 5, 7, ''),
(179, 'DOST57f6ee29180d30.05694418', 'KATHLEEN', 'LIT', 'ARGUELLES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:37:29', '2016-10-07 00:37:29', '', '', '', '', 13, 5, 7, ''),
(180, 'DOST57f6ee5cbd4448.75926403', 'LANCE JACOB', 'GOMEZ', 'MARTIJA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:38:26', '2016-10-07 00:38:26', '', '', '', '', 15, 5, 7, ''),
(181, 'DOST57f6ee59833ce5.99083201', 'FRANCIS ', 'ATIENZA', 'MALABANAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:38:31', '2016-10-07 00:38:31', '', '', '', '', 28, 5, 7, ''),
(182, 'DOST57f6ee980b0c00.65531544', 'RALPH WILSON', 'CALVARIDO', 'AGUILAR', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:39:19', '2016-10-07 00:39:19', '', '', '', '', 15, 5, 7, ''),
(183, 'DOST57f6ee9e7e8d64.50476578', 'ALVIN', 'AGUJO', 'GUEVARRA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:39:31', '2016-10-07 00:39:31', '', '', '', '', 28, 5, 7, ''),
(184, 'DOST57f6eed1e8ec68.11612951', 'JHON CEDRICK', 'CANTAL', 'SUAREZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:40:13', '2016-10-07 00:40:13', '', '', '', '', 14, 5, 7, ''),
(185, 'DOST57f6eed6a77273.77312536', 'SHERRYL', 'MALABANAN', 'GEVANA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:40:29', '2016-10-07 00:40:29', '', '', '', '', 35, 5, 7, ''),
(186, 'DOST57f6ed95efdfc5.67169737', 'VERONICA', 'ORDONIA', 'SINOHIN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:40:43', '2016-10-07 00:40:43', '', '', '', '', 63, 5, 7, ''),
(187, 'DOST57f6ef03097e22.00665222', 'CHRISTINE', 'MAGDALENA', 'COMIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:41:01', '2016-10-07 00:41:01', '', '', '', '', 15, 5, 7, ''),
(188, 'DOST57f6ef17a0b9c1.70279828', 'BRYAN CHRISTIAN', 'MAGNO', 'BRIONES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:41:31', '2016-10-07 00:41:31', '', '', '', '', 31, 5, 7, ''),
(189, 'DOST57f6ef0c55ba36.99857077', 'CARMELITA', 'MARERO', 'MOJICA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:41:33', '2016-10-07 00:41:33', '', '', '', '', 57, 7, 7, ''),
(190, 'DOST57f6ef30e3f059.99001452', 'PRINCESS ALYSSA', 'PEREZ', 'PLOTADO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:41:52', '2016-10-07 00:41:52', '', '', '', '', 13, 5, 7, ''),
(191, 'DOST57f6ef41b76b40.70428666', 'FAMELA', '...', 'BONSOL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:42:27', '2016-10-07 00:42:27', '', '', '', '', 40, 5, 7, ''),
(192, 'DOST57f6ef5084e145.43510612', 'ERMALINE ', 'CASUPANAN', 'CARANDANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:42:37', '2016-10-07 00:42:37', '', '', '', '', 46, 5, 7, ''),
(193, 'DOST57f6ef6943c5c4.82849012', 'LAUREANO', 'BOBOT', 'LANOSIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:42:56', '2016-10-07 00:42:56', '', '', '', '', 57, 5, 7, ''),
(194, 'DOST57f6ef7503c8d2.42795125', 'MICHAEL', '...', 'PAUNLAGI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:43:12', '2016-10-07 00:43:12', '', '', '', '', 27, 5, 7, ''),
(195, 'DOST57f6ef9fa1d026.25521002', 'GIAN BERNADETTE', 'PROTACIO', 'PINZON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:43:51', '2016-10-07 00:43:51', '', '', '', '', 14, 5, 7, ''),
(196, 'DOST57f6efa4ec6658.67138114', 'ARVIN', '...', 'DAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 00:43:53', '2016-10-07 00:43:53', '', '', '', '', 45, 7, 7, ''),
(197, 'DOST57f6efac97a954.20098920', 'ISIDRO', 'REYES', 'MORALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:44:00', '2016-10-07 00:44:00', '', '', '', '', 50, 5, 7, ''),
(198, 'DOST57f6efe287ef55.47100592', 'ZALDY', 'DE OCAMPO', 'MARANA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:44:49', '2016-10-07 00:44:49', '', '', '', '', 38, 5, 7, ''),
(199, 'DOST57f6efd05df2d5.44537156', 'NOEL', 'CARINGAL', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 00:45:00', '2016-10-07 00:45:00', '', '', '', '', 48, 7, 7, ''),
(200, 'DOST57f6efd05df2d5.44537156', 'NOEL', 'CARINGAL', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 00:45:00', '2016-10-07 00:45:00', '', '', '', '', 48, 7, 7, ''),
(201, 'DOST57f6efec9398f8.67643355', 'JAY ANGELO', 'VILLA', 'FAJARDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:45:00', '2016-10-07 00:45:00', '', '', '', '', 13, 5, 7, ''),
(202, 'DOST57f6f0178c8813.83711478', 'FLORITA', 'FLORETA', 'CARANDANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:45:42', '2016-10-07 00:45:42', '', '', '', '', 45, 5, 7, ''),
(203, 'DOST57f6f0209af1a0.76872677', 'JESTER JAY', 'MAGSINO', 'CRUZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:45:56', '2016-10-07 00:45:56', '', '', '', '', 14, 5, 7, ''),
(204, 'DOST57f6f059263901.28541545', 'BELINDA LUCILLE', 'BAUTISTA', 'COSTALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:46:52', '2016-10-07 00:46:52', '', '', '', '', 45, 5, 7, ''),
(205, 'DOST57f6f05f5a0f03.01415715', 'JOHN LOYD', 'YLAGAN', 'BAGSIT', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:47:27', '2016-10-07 00:47:27', '', '', '', '', 13, 5, 7, ''),
(206, 'DOST57f6f093dfa738.54934890', 'DANIEL DAVE', 'JOSE', 'BATAYO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:47:45', '2016-10-07 00:47:45', '', '', '', '', 25, 5, 7, ''),
(207, 'DOST57f6f0cdf38e43.97275510', 'AILENE', 'MEDALLON', 'FLORECE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:48:42', '2016-10-07 00:48:42', '', '', '', '', 31, 5, 7, ''),
(208, 'DOST57f6f0d0174b57.52481059', 'CHAN TYRONE', 'DE CASTRO', 'HERNANDEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:49:12', '2016-10-07 00:49:12', '', '', '', '', 13, 5, 7, ''),
(209, 'DOST57f6f101c21d80.83104676', 'JOSE ELMO', 'HERNANDEZ', 'AZORES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:49:32', '2016-10-07 00:49:32', '', '', '', '', 26, 5, 7, ''),
(210, 'DOST57f6f141848c49.55933555', 'MITCHIKO', 'DELIZO', 'CLARETE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:50:42', '2016-10-07 00:50:42', '', '', '', '', 19, 5, 7, ''),
(211, 'DOST57f6f14d015066.37142396', 'LORCELIE', '...', 'TACLAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:51:28', '2016-10-07 00:51:28', '', '', '', '', 20, 5, 7, ''),
(212, 'DOST57f6f17edffdd5.51705855', 'SHAIRA MAE', 'JORDAN', 'DE JOYA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:51:37', '2016-10-07 00:51:37', '', '', '', '', 19, 5, 7, ''),
(213, 'DOST57f6f19278f854.20644215', 'ROY EPHRAIM', 'MONTESEVEN', 'UMPAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:52:29', '2016-10-07 00:52:29', '', '', '', '', 26, 5, 7, ''),
(214, 'DOST57f6f1af326b70.29378565', 'RHODA LYN', 'HABLA', 'RAMOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 7, 5, '2016-10-07 00:52:36', '2016-10-07 00:52:36', '', '', '', '', 23, 7, 7, ''),
(215, 'DOST57f6f1bfcd4e62.23633168', 'ELOISA', 'BAGUE', 'BARTE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:52:51', '2016-10-07 00:52:51', '', '', '', '', 14, 5, 7, ''),
(216, 'DOST57f6f1d4ddb4c6.76294130', 'JAN MICHAEL', 'Y', 'ESCUADRA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:53:21', '2016-10-07 00:53:21', '', '', '', '', 23, 5, 7, ''),
(217, 'DOST57f6f1f0c916e0.47668508', 'JURY', 'CORPORAL', 'TABARANGAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 7, 5, '2016-10-07 00:53:35', '2016-10-07 00:53:35', '', '', '', '', 23, 7, 7, ''),
(218, 'DOST57f6f205311376.40292269', 'TIEN', 'JUMANTOC', 'CASTRO ', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 00:54:05', '2016-10-07 00:54:05', '', '', '', '', 23, 5, 7, ''),
(219, 'DOST57f6f1fb4c5a56.63238441', 'KIMBERLY', 'CARINGAL', 'COLIAT', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:54:16', '2016-10-07 00:54:16', '', '', '', '', 14, 5, 7, ''),
(220, 'DOST57f6f227dfbcd6.09519359', 'SUSAN', 'LAGAT', 'SAMATCA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:54:32', '2016-10-07 00:54:32', '', '', '', '', 66, 5, 7, ''),
(221, 'DOST57f6f2388b7e16.10028381', 'TEDDY', 'MORALES', 'CAMBOSA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:55:23', '2016-10-07 00:55:23', '', '', '', '', 19, 11, 7, ''),
(222, 'DOST57f6f26458f486.71970640', 'JUAN', 'MARILOM', 'PARDUCHO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:55:29', '2016-10-07 00:55:29', '', '', '', '', 53, 5, 7, ''),
(223, 'DOST57f6f25437a980.76939020', 'ALBERT', 'DELA CRUZ', 'BAGUI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:55:39', '2016-10-07 00:55:39', '', '', '', '', 14, 5, 7, ''),
(224, 'DOST57f6f27c7d6d91.44393467', 'MICHELLE YUONNE', 'ONG ', 'CLERIGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:56:19', '2016-10-07 00:56:19', '', '', '', '', 19, 11, 7, ''),
(225, 'DOST57f6f2926739d4.43531866', 'OSI', 'XX', 'MANICAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:56:28', '2016-10-07 00:56:28', '', '', '', '', 56, 5, 7, ''),
(226, 'DOST57f6f2a8107ec1.87948465', 'NERISSA', 'BANUAL', 'MAGBUHOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:56:47', '2016-10-07 00:56:47', '', '', '', '', 24, 5, 7, ''),
(227, 'DOST57f6f2cd8cfa47.59866349', 'OLIVIA', 'PAUNLAGUI', 'DAMASCO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:57:11', '2016-10-07 00:57:11', '', '', '', '', 58, 5, 7, ''),
(228, 'DOST57f6f2ba7fce63.94203742', 'ANTHONY HILMER', 'SANGALANG ', 'MEDRANO', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 00:57:30', '2016-10-07 00:57:30', '', '', '', '', 41, 5, 7, ''),
(229, 'DOST57f6f3052897f4.45826040', 'BOY', 'ANDAN', 'SANTOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:58:11', '2016-10-07 00:58:11', '', '', '', '', 61, 5, 7, ''),
(230, 'DOST57f6f2f58fb600.08458000', 'FERNANDO', 'ESPERANZA', 'ABLAZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:58:22', '2016-10-07 00:58:22', '', '', '', '', 55, 7, 7, ''),
(231, 'DOST57f6f2fd57df78.89750116', 'JIPCY MAURRIS', 'NANASCA', 'NARVAEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 00:58:33', '2016-10-07 00:58:33', '', '', '', '', 33, 5, 7, ''),
(232, 'DOST57f6f3377b2a10.47220836', 'JONATHAN', 'CERIA', 'DESCALSOTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:58:54', '2016-10-07 00:58:54', '', '', '', '', 32, 5, 7, ''),
(233, 'DOST57f6f33b6436c3.58908059', 'CHRISTIAN MIGUEL', 'CARPIO', 'FAMA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:59:18', '2016-10-07 00:59:18', '', '', '', '', 19, 5, 7, ''),
(234, 'DOST57f6f3485e41d7.51466796', 'HAZEL MAY', 'ALICPALA', 'SATADO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:59:29', '2016-10-07 00:59:29', '', '', '', '', 22, 5, 7, ''),
(235, 'DOST57f6f3631be586.42869972', 'DARELL', 'AUSTRIA', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 00:59:45', '2016-10-07 00:59:45', '', '', '', '', 26, 5, 7, ''),
(236, 'DOST57f6f3680fb842.84767033', 'ALEX GYRAN', 'ASUNCION', 'CO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:00:07', '2016-10-07 01:00:07', '', '', '', '', 19, 5, 7, ''),
(237, 'DOST57f6f38d0cf192.34041912', 'ELGIE', 'GUINUCUD', 'GUIUO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:00:43', '2016-10-07 01:00:43', '', '', '', '', 54, 5, 7, ''),
(238, 'DOST57f6f39a294ad9.94315211', 'MELINDA FAYE', 'CAYABYAB', 'HILARIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:00:51', '2016-10-07 01:00:51', '', '', '', '', 20, 5, 7, ''),
(239, 'DOST57f6f39fd75761.02707131', 'REINE ERIN', 'ESEO', 'DE CHAVEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:01:02', '2016-10-07 01:01:02', '', '', '', '', 14, 5, 7, ''),
(240, 'DOST57f6f3e0952041.82949625', 'RICARDO VI', 'CULLA', 'MANALO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:01:48', '2016-10-07 01:01:48', '', '', '', '', 15, 5, 7, ''),
(241, 'DOST57f6f3da3fd599.77397807', 'RYAN', 'SAPIN', 'ABADILLOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:01:57', '2016-10-07 01:01:57', '', '', '', '', 37, 5, 7, ''),
(242, 'DOST57f6f3e09366a9.98345883', 'DR. VIOLETO', 'NARIDO', 'CORONACION', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:02:22', '2016-10-07 01:02:22', '', '', '', '', 42, 5, 7, ''),
(243, 'DOST57f6f412500f59.73830163', 'BRENDICE', 'CELO', 'FURTO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:02:36', '2016-10-07 01:02:36', '', '', '', '', 21, 5, 7, ''),
(244, 'DOST57f6f4196a0156.83376207', 'EFREN', 'DEAN', 'VILLAVERDE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:02:59', '2016-10-07 01:02:59', '', '', '', '', 43, 5, 7, ''),
(245, 'DOST57f6f4245a48e8.04161569', 'CALVIN', 'MENDOZA', 'BONDE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:03:08', '2016-10-07 01:03:08', '', '', '', '', 22, 5, 7, ''),
(246, 'DOST57f6f446d86cf5.62558694', 'MARK LOUIE', 'LACERNA', 'ALCALA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:03:28', '2016-10-07 01:03:28', '', '', '', '', 19, 5, 7, ''),
(247, 'DOST57f6f44e09ea32.41017507', 'JOEREY BOY', 'ABING', 'REYES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:04:05', '2016-10-07 01:04:05', '', '', '', '', 39, 5, 7, ''),
(248, 'DOST57f6f46bc0d192.75063953', 'NIKKO', 'REYES', 'OROZO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:04:16', '2016-10-07 01:04:16', '', '', '', '', 20, 5, 7, ''),
(249, 'DOST57f6f472114243.58884116', 'GLADYS', 'CABISCUELAS', 'DINAYA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:04:16', '2016-10-07 01:04:16', '', '', '', '', 22, 5, 7, ''),
(250, 'DOST57f6f487387976.92853949', 'MIRA', 'OROZCO', 'REYES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:04:58', '2016-10-07 01:04:58', '', '', '', '', 37, 5, 7, ''),
(251, 'DOST57f6f4a0f0d584.09587875', 'CHEYENNE', 'RODRIGUEZ', 'MARQUESES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:05:08', '2016-10-07 01:05:08', '', '', '', '', 21, 5, 7, ''),
(252, 'DOST57f6f4b5d54362.09718246', 'RONALD ALLAN', 'SALOAN', 'PASTRANA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:05:36', '2016-10-07 01:05:36', '', '', '', '', 20, 5, 7, ''),
(253, 'DOST57f6f4da937294.64617154', 'CAMILLE', 'CUETO', 'DRIZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:06:00', '2016-10-07 01:06:00', '', '', '', '', 19, 5, 7, ''),
(254, 'DOST57f6f4bbe637d7.59128019', 'MA. ROSALIE', 'CARADA', 'CARIDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:06:23', '2016-10-07 01:06:23', '', '', '', '', 38, 5, 7, ''),
(255, 'DOST57f6f50a3e2a96.48388134', 'SHIELA', 'MAGADIA', 'FESTIJO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:06:41', '2016-10-07 01:06:41', '', '', '', '', 20, 5, 7, '');
INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(256, 'DOST57f6f4f47f9557.15237271', 'KARLO JONES', 'PERETE', 'ALGONZO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:06:55', '2016-10-07 01:06:55', '', '', '', '', 21, 5, 7, ''),
(257, 'DOST57f6f510513111.12955625', 'IRENE', 'HERNANDEZ', 'BAGON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:07:18', '2016-10-07 01:07:18', '', '', '', '', 37, 5, 7, ''),
(258, 'DOST57f6f535c9c2c4.56253071', 'MAUREEN JOYCE', 'GRANTOZA', 'ILAGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:07:42', '2016-10-07 01:07:42', '', '', '', '', 21, 5, 7, ''),
(259, 'DOST57f6f543860e65.74828336', 'RENZ', 'BROFAR', 'CORIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:07:54', '2016-10-07 01:07:54', '', '', '', '', 20, 5, 7, ''),
(260, 'DOST57f6f548e16fb1.67809861', 'CATALINO ', 'CONSTANTINO', 'DEL MUNDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:08:21', '2016-10-07 01:08:21', '', '', '', '', 43, 11, 7, ''),
(261, 'DOST57f6f56e1a54b2.71155595', 'KENN DAREEN', 'VALDELLON', 'OCAMPO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:08:32', '2016-10-07 01:08:32', '', '', '', '', 20, 5, 7, ''),
(262, 'DOST57f6f59df2bc12.67992128', 'MAE', 'DELENIANA', 'VIRTUS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:09:08', '2016-10-07 01:09:08', '', '', '', '', 20, 5, 7, ''),
(263, 'DOST57f6f5902e7785.23328115', 'JOYCE', 'ROMABIO', 'MASILANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:09:19', '2016-10-07 01:09:19', '', '', '', '', 21, 5, 7, ''),
(264, 'DOST57f6f5902e7785.23328115', 'JOYCE', 'ROMABIO', 'MASILANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:09:19', '2016-10-07 01:09:19', '', '', '', '', 21, 5, 7, ''),
(265, 'DOST57f6f5873dea77.69002281', 'MARJORIE', 'MENDOZA', 'BARREDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 01:09:34', '2016-10-07 01:09:34', '', '', '', '', 16, 5, 7, ''),
(266, 'DOST57f6f5c5de5987.47095508', 'JEZRA MIKAELA ANGELA', 'JONSON', 'BALEROS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:09:54', '2016-10-07 01:09:54', '', '', '', '', 19, 5, 7, ''),
(267, 'DOST57f6f5d64f0fd8.24276831', 'TRISTAN JOHN', 'HALILI', 'PAMATMAT', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:10:20', '2016-10-07 01:10:20', '', '', '', '', 21, 5, 7, ''),
(268, 'DOST57f6f5f6bf96b8.26471937', 'REXROD', 'LAT', 'KALAW', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:10:37', '2016-10-07 01:10:37', '', '', '', '', 19, 5, 7, ''),
(269, 'DOST57f6f5d64f3345.74350987', 'JAMES ADRIAN', 'GUTIERREZ', 'PANGANIBAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:10:47', '2016-10-07 01:10:47', '', '', '', '', 17, 5, 7, ''),
(270, 'DOST57f6f5d64f3345.74350987', 'JAMES ADRIAN', 'GUTIERREZ', 'PANGANIBAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:10:47', '2016-10-07 01:10:47', '', '', '', '', 17, 5, 7, ''),
(271, 'DOST57f6f6219a8445.64961632', 'KARLA MAE', 'ABE', 'MENDOZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:11:21', '2016-10-07 01:11:21', '', '', '', '', 19, 5, 7, ''),
(272, 'DOST57f6f62199fa70.66789178', 'RIO', 'DEDALA', 'PORCA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:11:31', '2016-10-07 01:11:31', '', '', '', '', 19, 5, 7, ''),
(273, 'DOST57f6f619ce8450.22926343', 'MIKE JOSHUA', 'TAJALE', 'RAVAGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:11:37', '2016-10-07 01:11:37', '', '', '', '', 16, 5, 7, ''),
(274, 'DOST57f6f654004c71.74987428', 'MA FILIPINAS', 'VICERAL', 'DELOS REYES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:12:28', '2016-10-07 01:12:28', '', '', '', '', 49, 7, 7, ''),
(275, 'DOST57f6f65e93f963.86666498', 'JONNEL', 'KATIGBAK', 'PABICO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:12:39', '2016-10-07 01:12:39', '', '', '', '', 45, 5, 7, ''),
(276, 'DOST57f6f64b8a4614.90479750', 'JAYNE ROUMELLE', 'BELEN', 'ELARNO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:12:50', '2016-10-07 01:12:50', '', '', '', '', 18, 5, 7, ''),
(277, 'DOST57f6f69cb879d9.28847151', 'REYNIBEL', 'FIDER', 'CAPULONG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:13:30', '2016-10-07 01:13:30', '', '', '', '', 48, 7, 7, ''),
(278, 'DOST57f6f69cb78317.97652306', 'SHADDAIEL', 'PACUBAS', 'REY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:13:48', '2016-10-07 01:13:48', '', '', '', '', 20, 5, 7, ''),
(279, 'DOST57f6f6a0062405.87288422', 'LORN', 'DE CASTRO', 'ZABANAL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:13:49', '2016-10-07 01:13:49', '', '', '', '', 18, 5, 7, ''),
(280, 'DOST57f6f528b04e33.66136610', 'noel', ' ', 'nocon', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:13:49', '2016-10-07 01:13:49', '', '', '', '', 0, 5, 7, ''),
(281, 'DOST57f6f6d006d474.42501648', 'FLORENCE', 'BANAIRA', 'BINAS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:14:20', '2016-10-07 01:14:20', '', '', '', '', 40, 7, 7, ''),
(282, 'DOST57f6f6d23ab149.58932808', 'EMIL', 'CASTILLO', 'ALCANTARA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:14:35', '2016-10-07 01:14:35', '', '', '', '', 39, 5, 7, ''),
(283, 'DOST57f6f6f6eefb23.11799165', 'ANGELO', 'MARTICIO', 'ARANZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:15:07', '2016-10-07 01:15:07', '', '', '', '', 19, 5, 7, ''),
(284, 'DOST57f6f702d06d25.49521611', 'NELY', 'PEREZ', 'PEREZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:15:35', '2016-10-07 01:15:35', '', '', '', '', 60, 7, 7, ''),
(285, 'DOST57f6f708ce59b0.47174142', 'LEANDRO', 'ADA', 'DALHA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:15:46', '2016-10-07 01:15:46', '', '', '', '', 38, 5, 7, ''),
(286, 'DOST57f6f74c69a1f9.76807456', 'JOSEPH', 'OBERO', 'DEL ROSARIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:16:27', '2016-10-07 01:16:27', '', '', '', '', 20, 5, 7, ''),
(287, 'DOST57f6f74569fa59.69090137', 'ISMAEL', 'MATIBAG ', 'ARADA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 01:16:34', '2016-10-07 01:16:34', '', '', '', '', 54, 5, 7, ''),
(288, 'DOST57f6f7540c6d46.24476513', 'SUSANA', 'VALDEZ', 'LASCIERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:16:40', '2016-10-07 01:16:40', '', '', '', '', 55, 7, 7, ''),
(289, 'DOST57f6f7833926b1.42058851', 'MA. XENA', 'LAPUZ', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:17:29', '2016-10-07 01:17:29', '', '', '', '', 19, 5, 7, ''),
(290, 'DOST57f6f78bb5e9c1.91651177', 'ALBERT', 'ASTRERO', 'SERQUINA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:17:37', '2016-10-07 01:17:37', '', '', '', '', 34, 7, 7, ''),
(291, 'DOST57f6f778cb33d8.79437279', 'NESTOR', 'PALLIT', 'VELAZQUEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 01:17:49', '2016-10-07 01:17:49', '', '', '', '', 45, 11, 7, ''),
(292, 'DOST57f6f7c7f3f281.17862370', 'LEONARDO', 'APRESTO', 'VENANCIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:18:34', '2016-10-07 01:18:34', '', '', '', '', 20, 5, 7, ''),
(293, 'DOST57f6f7d242c752.05710095', 'ABEL', 'GONZALES', 'MALIJAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 01:18:49', '2016-10-07 01:18:49', '', '', '', '', 36, 7, 7, ''),
(294, 'DOST57f6f7c07b8740.68970564', 'AMELIA', 'MAILOM ', 'MIRANDA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:19:00', '2016-10-07 01:19:00', '', '', '', '', 52, 7, 7, ''),
(295, 'DOST57f6f803740f15.08097487', 'JOANNA CAMILLE', 'SORIANO', 'TUSI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:19:43', '2016-10-07 01:19:43', '', '', '', '', 22, 5, 7, ''),
(296, 'DOST57f6f806365e44.62332450', 'ROSALINDA', 'MALDIA', 'PIAMONTE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:19:52', '2016-10-07 01:19:52', '', '', '', '', 56, 7, 7, ''),
(297, 'DOST57f6f81563a3b4.05938394', 'SIMON', 'XXX', 'SOTACIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 01:19:54', '2016-10-07 01:19:54', '', '', '', '', 40, 8, 7, ''),
(298, 'DOST57f6f8468b4056.70434901', 'CARMINA', 'DE MESA', 'PAILAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:20:43', '2016-10-07 01:20:43', '', '', '', '', 19, 5, 7, ''),
(299, 'DOST57f6f83b182a16.39009287', 'KIM AHYEZA', 'MACUHA', 'MAGNO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:20:46', '2016-10-07 01:20:46', '', '', '', '', 16, 5, 7, ''),
(300, 'DOST57f6f8597bc834.50055570', 'PAUL WARREN', 'BERNARDINO', 'DULLER', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:20:56', '2016-10-07 01:20:56', '', '', '', '', 20, 5, 7, ''),
(302, 'DOST57f6f870006264.70666730', 'IVAN LLOYD', 'CORO', 'DUNTON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:21:54', '2016-10-07 01:21:54', '', '', '', '', 15, 5, 7, ''),
(303, 'DOST57f6f928d02297.71926530', 'JETHRO ', 'XX', 'BALASICOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:25:15', '2016-10-07 01:25:15', '', '', '', '', 34, 5, 7, ''),
(304, 'DOST57f6f9aca0ce43.88815063', 'EJ', 'XX', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:26:32', '2016-10-07 01:26:32', '', '', '', '', 21, 5, 7, ''),
(305, 'DOST57f6f9dc851762.54267939', 'PEDRO GIL', 'XX', 'RODRIGUEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:27:36', '2016-10-07 01:27:36', '', '', '', '', 35, 7, 7, ''),
(306, 'DOST57f6fa3122fe51.37361339', 'ALICE', 'XX', 'MAILOM', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:28:49', '2016-10-07 01:28:49', '', '', '', '', 45, 7, 7, ''),
(307, 'DOST57f6fa6385a276.63416480', 'SIMPLICIA', 'XX', 'MACARAIG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:29:36', '2016-10-07 01:29:36', '', '', '', '', 45, 7, 7, ''),
(308, 'DOST57f6fb26db3275.25188523', 'JHANNE ERICA', 'PANOPIO', 'PESIGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:33:04', '2016-10-07 01:33:04', '', '', '', '', 19, 5, 7, ''),
(309, 'DOST57f6fb26db5e97.06227297', 'VINCENT JOHN', 'M', 'TUMLOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 01:33:17', '2016-10-07 02:08:28', '', '', '', '', 32, 7, 7, ''),
(310, 'DOST57f6fb69ceeef0.27511069', 'GLYDEL MAE', 'DELGADO', 'DAVID', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:33:53', '2016-10-07 01:33:53', '', '', '', '', 20, 5, 7, ''),
(311, 'DOST57f6fb8d278d78.07394116', 'CRISSIE', 'R', 'GUDA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:35:39', '2016-10-07 01:35:39', '', '', '', '', 15, 8, 7, ''),
(312, 'DOST57f6fc12a56f20.35857682', 'EDWARD', 'O', 'KING', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 01:37:24', '2016-10-07 01:37:24', '', '', '', '', 24, 8, 7, ''),
(313, 'DOST57f6fc5c6b9d07.53784873', 'ROBERTO', 'CATUBIG', 'LAPUTAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:38:07', '2016-10-07 01:38:07', '', '', '', '', 38, 7, 7, ''),
(314, 'DOST57f6fc8ec16609.80102587', 'VERNON', 'ESPANOL', 'AVILA', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 01:39:56', '2016-10-07 01:39:56', '', '', '', '', 36, 5, 7, ''),
(315, 'DOST57f6fcc5c49df2.91922069', 'AMELIA', 'MOLINA', 'NATIVIDAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:39:59', '2016-10-07 01:39:59', '', '', '', '', 52, 5, 7, ''),
(316, 'DOST57f6fd12d6cc77.69004446', 'MILDRED', 'LACERNA', 'CEPILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:41:06', '2016-10-07 01:41:06', '', '', '', '', 56, 7, 7, ''),
(317, 'DOST57f6fd1047f3d1.12337464', 'MARISSA', 'CARRASCO', 'ARGENTE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:41:40', '2016-10-07 01:41:40', '', '', '', '', 54, 7, 7, ''),
(318, 'DOST57f6fd56606971.91943845', 'DYANARA', 'SAULOG', 'VILLANUEVA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:42:11', '2016-10-07 01:42:11', '', '', '', '', 21, 5, 7, ''),
(319, 'DOST57f6fd8f095240.75673592', 'MARLONE', 'SALAZAR', 'MANICDAO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:43:10', '2016-10-07 01:43:10', '', '', '', '', 23, 5, 7, ''),
(320, 'DOST57f6fd7fdf5195.11500352', 'LILIA', 'G', 'BAYABOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:43:36', '2016-10-07 01:43:36', '', '', '', '', 62, 7, 7, ''),
(321, 'DOST57f6fdbfb441c1.09403055', 'JULIE ANN', 'XX', 'ESCOBER', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:43:56', '2016-10-07 01:43:56', '', '', '', '', 21, 5, 7, ''),
(322, 'DOST57f6fdf0103897.12621381', 'KIM GENESIS', 'BISA', 'MALIGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:44:41', '2016-10-07 01:44:41', '', '', '', '', 21, 5, 7, ''),
(323, 'DOST57f6fdf3a8b116.67495349', 'LUCY', 'ALINSUNURIN', 'LASTIMOSA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:45:26', '2016-10-07 01:45:26', '', '', '', '', 48, 7, 7, ''),
(324, 'DOST57f6fe26eb1a17.91309139', 'JAN MATTHEW', 'ALVAREZ', 'BUENAVENTURA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:45:38', '2016-10-07 01:45:38', '', '', '', '', 22, 5, 7, ''),
(325, 'DOST57f6fe56a24db7.85086629', 'EMILIA', 'REYES', 'MALALUAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:46:41', '2016-10-07 01:46:41', '', '', '', '', 47, 5, 7, ''),
(326, 'DOST57f6fe67384987.26598109', 'REJ', 'EDLAGAN', 'AVERION', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:46:47', '2016-10-07 01:46:47', '', '', '', '', 20, 5, 7, ''),
(327, 'DOST57f6fea7b99f29.57947560', 'FE', 'R', 'OLAVE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:48:08', '2016-10-07 01:48:08', '', '', '', '', 48, 7, 7, ''),
(328, 'DOST57f6fef6ea4035.33266449', 'FERNAN', 'ARELLANO', 'LOPEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:49:26', '2016-10-07 01:49:26', '', '', '', '', 56, 8, 7, ''),
(329, 'DOST57f6feff0a1777.96302454', 'NILO', 'BARICASAG', 'ANDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:49:40', '2016-10-07 01:49:40', '', '', '', '', 47, 7, 7, ''),
(330, 'DOST57f6ff400ca428.13224524', 'TERESA', 'TAN', 'CO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:50:25', '2016-10-07 01:50:25', '', '', '', '', 34, 8, 7, ''),
(331, 'DOST57f6ff772dd669.66829006', 'HANNA', 'CHUA', 'URLANES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:51:22', '2016-10-07 01:51:22', '', '', '', '', 23, 8, 7, ''),
(332, 'DOST57f6ff6dcf3696.39934861', 'ROXANNE', 'ABEIGAS', 'RAMIREZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:51:44', '2016-10-07 01:51:44', '', '', '', '', 18, 5, 7, ''),
(333, 'DOST57f6ffadc81d38.29355697', 'GUINTOR', 'XX', 'TAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:52:11', '2016-10-07 01:52:11', '', '', '', '', 23, 8, 7, ''),
(334, 'DOST57f6ffe0d32112.45374907', 'FRANCIS', 'XX', 'TAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:53:08', '2016-10-07 01:53:08', '', '', '', '', 24, 8, 7, ''),
(335, 'DOST57f7001e2c8312.12425901', 'RUBEN', 'JAVIER', 'CARPIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:54:15', '2016-10-07 01:54:15', '', '', '', '', 45, 8, 7, ''),
(336, 'DOST57f70018c29bd3.38864679', 'MARLON', 'ARGONCILLO', 'BAUTISTA', 'NN', 'NN', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 01:54:42', '2016-10-07 01:54:42', '', '', '', '', 36, 5, 7, ''),
(337, 'DOST57f700651c4d81.57769657', 'FRANCISCO', 'MAGNAYE', 'CANATUON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:55:16', '2016-10-07 01:55:16', '', '', '', '', 56, 8, 7, ''),
(338, 'DOST57f70096dbf744.75859791', 'VER IAN ', 'JAVIER', 'VICTORIO', 'M', 'M', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:57:15', '2016-10-07 01:57:15', '', '', '', '', 34, 7, 7, ''),
(339, 'DOST57f700d96c6ff7.20588396', 'MA ALMIRA', 'CERDENA', 'SILVA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:57:21', '2016-10-07 01:57:21', '', '', '', '', 33, 6, 7, ''),
(340, 'DOST57f7011ece4fc4.17134069', 'JERIC', 'DAMAYO', 'DIZON', 'N', 'N', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 01:58:46', '2016-10-07 01:58:46', '', '', '', '', 21, 5, 7, ''),
(341, 'DOST57f70131790298.41107079', 'ED', 'P', 'FAJARDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 01:58:53', '2016-10-07 01:58:53', '', '', '', '', 56, 8, 7, ''),
(342, 'DOST57f7017fc3e648.70773380', 'KATHERINE GRACE', 'MATIAG', 'GARCIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:00:08', '2016-10-07 02:00:08', '', '', '', '', 23, 7, 7, ''),
(343, 'DOST57f701831001e4.59813195', 'JUAN PAULO', 'DAGOY', 'JURADA', 'Mm', 'M', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:00:35', '2016-10-07 02:00:35', '', '', '', '', 24, 5, 7, ''),
(344, 'DOST57f70176c4da45.10399816', 'SCOTT', 'M', 'COUNTRYMAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 02:01:53', '2016-10-07 02:01:53', '', '', '', '', 48, 8, 7, ''),
(345, 'DOST57f701e7ad2a62.96484309', 'BEVYBELLE', 'BALLESTEROS', 'BITERANTA', 'N', 'N', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:02:05', '2016-10-07 02:02:05', '', '', '', '', 20, 5, 7, ''),
(346, 'DOST57f701f3d53fe1.06218517', 'ROSALINA', 'VILLAMAYOR', 'BUNAL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:02:33', '2016-10-07 02:02:33', '', '', '', '', 57, 5, 7, ''),
(347, 'DOST57f70253a87783.99810567', 'JOANNA MARIE', 'DIAZ', 'PAGNE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:03:32', '2016-10-07 02:03:32', '', '', '', '', 35, 5, 7, ''),
(348, 'DOST57f70239795129.92575414', 'CZARNNY MAE', 'ENSO', 'APATAN', 'B', 'B', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:03:42', '2016-10-07 02:03:42', '', '', '', '', 20, 5, 7, ''),
(349, 'DOST57f7024552ee97.45692538', 'JAMES VIVIANO', 'GARCIA', 'GONZALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 02:03:42', '2016-10-07 02:03:42', '', '', '', '', 20, 5, 7, ''),
(350, 'DOST57f7028c624a07.05681088', 'CRISPINA', 'REYES', 'LEGASPI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:04:27', '2016-10-07 02:04:27', '', '', '', '', 58, 5, 7, ''),
(351, 'DOST57f7029f05cf90.23477685', 'ROY', 'CHOPITEA', 'ANDRADA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:05:20', '2016-10-07 02:05:20', '', '', '', '', 51, 5, 7, ''),
(352, 'DOST57f702c7386525.64288637', 'HANNAH JOY', 'JOLOAN', 'FABELLA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:05:33', '2016-10-07 02:05:33', '', '', '', '', 25, 5, 7, ''),
(353, 'DOST57f703072ee1d5.50810690', 'CHARLOTTE', 'HERNANDEZ', 'TERBIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:06:29', '2016-10-07 02:06:29', '', '', '', '', 39, 5, 7, ''),
(354, 'DOST57f70341f12751.83412118', 'CARLOS', 'T', 'MORALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:07:21', '2016-10-07 02:07:21', '', '', '', '', 54, 5, 7, ''),
(355, 'DOST57f7031e235e61.99150913', 'MAGDA', 'PINTOR', 'MANAIG', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 02:07:21', '2016-10-07 02:07:21', '', '', '', '', 52, 7, 7, ''),
(356, 'DOST57f70337740748.56213690', 'LADYLOVE MAY', 'BUGNOS', 'BAURILE', 'M', 'M', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 02:07:56', '2016-10-07 02:07:56', '', '', '', '', 22, 7, 7, ''),
(357, 'DOST57f703740f26f0.79043846', 'JENINA ROSA', 'PARAISO', 'LLANES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:08:16', '2016-10-07 02:08:16', '', '', '', '', 20, 5, 7, ''),
(358, 'DOST57f703ad353b51.95908465', 'CLARRISE', 'OLARIO', 'CASTILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:09:12', '2016-10-07 02:09:12', '', '', '', '', 20, 5, 7, ''),
(359, 'DOST57f703dd41f386.78986731', 'JOREFE', 'B', 'VELASQUEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:10:09', '2016-10-07 02:10:09', '', '', '', '', 20, 5, 7, ''),
(360, 'DOST57f7044dbc78a4.05888690', 'CORNELIO', 'L', 'CALIGDONG', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:11:54', '2016-10-07 02:11:54', '', '', '', '', 30, 5, 7, ''),
(361, 'DOST57f70485992622.67257696', 'ASHEIL JOY', 'REDONA', 'COREA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:12:48', '2016-10-07 02:12:48', '', '', '', '', 24, 8, 7, ''),
(362, 'DOST57f704b8cd8c24.39084382', 'MARIO', 'ACSINA', 'MAGTIBAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:13:42', '2016-10-07 02:13:42', '', '', '', '', 49, 8, 7, ''),
(363, 'DOST57f704ec5164b3.26010179', 'JESSICA MARA', 'MACARAIG', 'MAGTIBAY', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:14:36', '2016-10-07 02:14:36', '', '', '', '', 23, 8, 7, ''),
(364, 'DOST57f7053fc2ae28.92247519', 'JAKE', 'XX', 'MACALALAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:15:59', '2016-10-07 02:15:59', '', '', '', '', 23, 8, 7, ''),
(365, 'DOST57f705756e25d2.41960012', 'JAYSON', 'XX', 'CASTILLO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:16:47', '2016-10-07 02:16:47', '', '', '', '', 27, 8, 7, ''),
(366, 'DOST57f7077742e075.49568581', 'MHELDA GRACE', 'LEYMA', 'LEYMA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:26:08', '2016-10-07 02:26:08', '', '', '', '', 35, 7, 7, ''),
(367, 'DOST57f707d96c0f59.05719642', 'MARIBEL', 'ORBILLO', 'SIMARA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:27:14', '2016-10-07 02:27:14', '', '', '', '', 32, 7, 7, ''),
(368, 'DOST57f7082616e172.16810789', 'LYKA', 'MATIBAG', 'ENDOZO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:28:19', '2016-10-07 02:28:19', '', '', '', '', 20, 5, 7, ''),
(369, 'DOST57f708a384eb38.57891953', 'NELSON JR', 'JUGUETA', 'AMAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:31:05', '2016-10-07 02:31:05', '', '', '', '', 30, 7, 7, ''),
(370, 'DOST57f7090b924666.70576806', 'LUIS', 'G', 'BANUA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:32:07', '2016-10-07 02:32:07', '', '', '', '', 40, 7, 7, ''),
(371, 'DOST57f709553a9359.24394648', 'ERIC', 'PANOPIO', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:34:12', '2016-10-07 02:34:12', '', '', '', '', 44, 7, 7, ''),
(372, 'DOST57f709bf2e1703.62157819', 'JOMAR', 'CASTILLO', 'ALBANIA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:35:09', '2016-10-07 02:35:09', '', '', '', '', 37, 7, 7, ''),
(373, 'DOST57f70a00090751.83921900', 'SAMUEL NOEL', 'ADILLO', 'OCAMPO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:37:53', '2016-10-07 02:37:53', '', '', '', '', 43, 7, 7, ''),
(374, 'DOST57f70ab7e868f8.58872756', 'ROMMEL', 'AGBAY', 'MAGNAYE', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:39:29', '2016-10-07 02:39:29', '', '', '', '', 60, 11, 7, ''),
(375, 'DOST57f70b07b6f269.20729209', 'ELI', 'M', 'ABANTO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:40:42', '2016-10-07 02:40:42', '', '', '', '', 69, 8, 7, ''),
(376, 'DOST57f70afd6a29d5.13482147', 'JUENALD', 'M', 'RAYOS', 'G', 'M', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 02:41:29', '2016-10-07 02:41:29', '', '', '', '', 32, 8, 7, ''),
(377, 'DOST57f70b883259f8.39349366', 'JULIA', 'DALISAY', 'PARENA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:42:50', '2016-10-07 02:42:50', '', '', '', '', 54, 6, 7, ''),
(378, 'DOST57f70be1465977.04316397', 'PRECY', 'XX', 'FLORES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:47:00', '2016-10-07 02:47:00', '', '', '', '', 45, 7, 7, ''),
(379, 'DOST57f70ce9b0a936.36628679', 'JUN', 'XX', 'ANDO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:49:25', '2016-10-07 02:49:25', '', '', '', '', 56, 7, 7, ''),
(380, 'DOST57f70d98820188.67294915', 'MICHELLE', 'PARANI', 'PARANI', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:51:36', '2016-10-07 02:51:36', '', '', '', '', 34, 7, 7, ''),
(381, 'DOST57f70de2030a81.59261399', 'JODI BELINA', 'A', 'BEJER', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:52:55', '2016-10-07 02:52:55', '', '', '', '', 56, 5, 7, ''),
(382, 'DOST57f70e2f1a7671.87714535', 'REALIZA', 'M', 'MAME', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:53:55', '2016-10-07 02:53:55', '', '', '', '', 57, 5, 7, ''),
(383, 'DOST57f70e68079241.89289992', 'RACQUIEL', 'G', 'AGUBA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:55:17', '2016-10-07 02:55:17', '', '', '', '', 56, 5, 7, ''),
(384, 'DOST57f70eb09d9372.34840792', 'BASSANIO', 'CHAVEZ', 'TORIO', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 02:56:18', '2016-10-07 02:56:18', '', '', '', '', 57, 7, 7, ''),
(385, 'DOST57f70eed609c85.53356819', 'PRECIOUS', 'R', 'MONEDERA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:57:13', '2016-10-07 02:57:13', '', '', '', '', 35, 7, 7, ''),
(386, 'DOST57f70ed498f554.19011154', 'ANDREA', 'JUNSAY', 'CABONITA', '', '', 1, NULL, NULL, '', NULL, '', 1, 16, 5, '2016-10-07 02:57:48', '2016-10-07 02:57:48', '', '', '', '', 56, 7, 7, ''),
(387, 'DOST57f70f241329e6.39411860', 'GERARD', 'B', 'REMO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:58:14', '2016-10-07 02:58:14', '', '', '', '', 45, 5, 7, ''),
(388, 'DOST57f70f241329e6.39411860', 'GERARD', 'B', 'REMO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:58:14', '2016-10-07 02:58:14', '', '', '', '', 45, 5, 7, ''),
(389, 'DOST57f70f241329e6.39411860', 'GERARD', 'B', 'REMO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 02:58:14', '2016-10-07 02:58:14', '', '', '', '', 45, 5, 7, ''),
(390, 'DOST57f70f21dfba79.22123402', 'Nancy', 'L', 'Charcos', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 02:58:48', '2016-10-07 02:58:48', '', '', '', '', 62, 5, 7, ''),
(391, 'DOST57f70f61586e88.89668151', 'AISA', 'ALVAREZ', 'MIJENO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 02:59:09', '2016-10-07 02:59:09', '', '', '', '', 31, 5, 7, ''),
(392, 'DOST57f70f8113e265.70146345', 'MICHELLE TVONNE', 'ONG', 'CLERIGO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:00:11', '2016-10-07 03:00:11', '', '', '', '', 19, 5, 7, ''),
(393, 'DOST57f70fb0d88067.63287301', 'NORAIDA', 'MABBANLAC', 'MORADA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 7, '2016-10-07 03:05:57', '2016-10-07 03:05:57', '', '', '', '', 35, 8, 7, ''),
(394, 'DOST57f711380181b8.30783414', 'JIMMY', 'QUIZON', 'MORADA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:07:07', '2016-10-07 03:07:07', '', '', '', '', 56, 8, 7, ''),
(395, 'DOST57f711200eba58.36972900', 'CAEZAR', 'CAEZAR', 'CUAREZMA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:07:56', '2016-10-07 03:07:56', '', '', '', '', 48, 7, 7, ''),
(396, 'DOST57f711ae1fc158.92365605', 'LUCILLE', 'A', 'ABAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 03:09:18', '2016-10-07 03:09:18', '', '', '', '', 35, 7, 7, ''),
(397, 'DOST57f7120c4b17c8.23359799', 'RONEL', 'S', 'PANGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:10:30', '2016-10-07 03:10:30', '', '', '', '', 45, 5, 7, ''),
(398, 'DOST57f7120d7affc9.97522264', 'WENCY', 'H', 'CARMELO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:11:30', '2016-10-07 03:11:30', '', '', '', '', 40, 5, 7, ''),
(399, 'DOST57f71247604138.94230500', 'RAUL', 'D', 'CASTANEDA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:11:38', '2016-10-07 03:11:38', '', '', '', '', 45, 7, 7, ''),
(400, 'DOST57f712d88ee3b1.75785175', 'ERIC', 'S', 'ESPANO', '', '0', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:14:33', '2016-10-07 03:14:33', '', '', '', '', 0, 5, 7, ''),
(401, 'DOST57f7129480d017.99877431', 'RONALDO', 'C', 'MAANO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:14:37', '2016-10-07 03:14:37', '', '', '', '', 35, 5, 7, ''),
(402, 'DOST57f7133ce269a6.71320174', 'HANNAH CAMILLE', 'R', 'DEZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:15:51', '2016-10-07 03:15:51', '', '', '', '', 25, 5, 7, ''),
(403, 'DOST57f7135c2a1937.40833875', 'GLEN', 'H', 'TAMPIS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:16:10', '2016-10-07 03:16:10', '', '', '', '', 17, 5, 7, ''),
(404, 'DOST57f713d93568d3.12175483', 'PROCESO', 'H', 'MANGUIAT', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:18:19', '2016-10-07 03:18:19', '', '', '', '', 61, 5, 7, ''),
(405, 'DOST57f7142dea5888.44675999', 'MARIA ALMA', 'B', 'SANCHEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:19:46', '2016-10-07 03:19:46', '', '', '', '', 26, 5, 7, ''),
(406, 'DOST57f713ebb91094.92867649', 'ROBERT', 'A', 'NATIVIDAD', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:19:59', '2016-10-07 03:19:59', '', '', '', '', 0, 7, 7, ''),
(407, 'DOST57f71472b50552.16115808', 'PRIMITIVO JOSE', 'A', 'SANTOS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 03:24:02', '2016-10-07 03:24:02', '', '', '', '', 37, 5, 7, ''),
(408, 'DOST57f715c3520240.17997388', 'JOEL', 'NECESARIO', 'DE CASTRO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 03:26:55', '2016-10-07 03:26:55', '', '', '', '', 28, 5, 7, ''),
(409, 'DOST57f71e20ea3e29.51195027', 'JJ PAUL ERICKSON', 'SOLIS', 'VIERNES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 6, '2016-10-07 04:02:45', '2016-10-07 04:02:45', '', '', '', '', 27, 6, 7, ''),
(410, 'DOST57f71ed71c6790.62112738', 'MARTIN CEDRIC', 'ENCARNACION', 'AGUILAR', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 04:05:31', '2016-10-07 04:05:31', '', '', '', '', 20, 6, 7, ''),
(411, 'DOST57f7234dd9d224.68128523', 'AILENE', 'GOMEZ', 'BATHAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 04:24:17', '2016-10-07 04:24:17', '', '', '', '', 17, 5, 7, ''),
(412, 'DOST57f7235a8da762.29268491', 'LORENZ ANDREA', '-', 'LEGION', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 04:25:14', '2016-10-07 04:25:14', '', '', '', '', 19, 5, 7, ''),
(413, 'DOST57f72397a5b7f3.03776754', 'JIZELLE ANNE', 'PUNZALAN', 'SANCHEZ', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 04:25:24', '2016-10-07 04:25:24', '', '', '', '', 20, 5, 7, ''),
(414, 'DOST57f723df0b5918.57355415', 'KARREN MAE', 'HERMIDA', 'CABIAS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 04:26:32', '2016-10-07 04:26:32', '', '', '', '', 17, 5, 7, ''),
(415, 'DOST57f729cd858152.79318025', 'EBENG', 'JAVIER', 'CARANDANG', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 6, '2016-10-07 04:53:32', '2016-10-07 04:53:32', '', '', '', '', 54, 5, 7, ''),
(416, 'DOST57f72d9eb8d144.25461881', 'GEE JAY', 'CREENCIA', 'BARTOLOME', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 05:09:01', '2016-10-07 05:09:01', '', '', '', '', 23, 5, 7, ''),
(417, 'DOST57f72e358a21a6.19761824', 'MARIA MAY', 'MACALINTAL', 'ROSALES', '', '', 1, NULL, NULL, '', NULL, '', 1, 1, 5, '2016-10-07 05:11:02', '2016-10-07 05:11:02', '', '', '', '', 17, 5, 7, ''),
(418, 'DOST57f7337c06cd78.47222484', 'SHARALYN', 'CASTILLO', 'EBREO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:33:44', '2016-10-07 05:33:44', '', '', '', '', 20, 5, 7, ''),
(419, 'DOST57f733d1a97198.00397287', 'ANGELICA', 'MEDRANO', 'BAUTISTA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:34:48', '2016-10-07 05:34:48', '', '', '', '', 19, 5, 7, ''),
(420, 'DOST57f7340c519957.38012991', 'RYAN AUSTIN', 'GUITERING', 'GANDA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:35:40', '2016-10-07 05:35:40', '', '', '', '', 22, 5, 7, ''),
(421, 'DOST57f7343ff1e759.68258047', 'ARNIE MAE', 'MARASIGAN', 'BAES', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:36:26', '2016-10-07 05:36:26', '', '', '', '', 19, 5, 7, ''),
(422, 'DOST57f7346e956834.52032412', 'MA ANGELICA', 'ENCONADO', 'CUADRA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:37:13', '2016-10-07 05:37:13', '', '', '', '', 19, 5, 7, ''),
(423, 'DOST57f7349fc8ff26.41502469', 'ALYSSA MAE', 'CANARIAS', 'PESIGAN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:38:18', '2016-10-07 05:38:18', '', '', '', '', 19, 5, 7, ''),
(424, 'DOST57f734dd63ce10.37315371', 'CHRISTMARIE', 'DE CASTRO', 'FRANCISCO', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:39:06', '2016-10-07 05:39:06', '', '', '', '', 19, 5, 7, ''),
(425, 'DOST57f7350fb64c63.69254400', 'ANDRE JOYCE', 'XX', 'LUMANGLAS', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:40:03', '2016-10-07 05:40:03', '', '', '', '', 19, 5, 7, ''),
(426, 'DOST57f7354b900b05.14466477', 'KENNETH', 'BAUTISTA', 'MENDOZA', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:40:55', '2016-10-07 05:40:55', '', '', '', '', 19, 5, 7, ''),
(427, 'DOST57f735aa954844.88552848', 'JULIENNE BENJAMINE', 'FALSADO', 'DELEN', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:43:27', '2016-10-07 05:43:27', '', '', '', '', 20, 5, 7, ''),
(428, 'DOST57f7361cec7c74.06634780', 'ALAIZA MAE', 'MENDOZA', 'UMANDAP', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:44:20', '2016-10-07 05:44:20', '', '', '', '', 19, 5, 7, ''),
(429, 'DOST57f73647353149.45811000', 'DIANNE YSPHER', 'HERNANDEZ', 'HABAL', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:45:04', '2016-10-07 05:45:04', '', '', '', '', 20, 5, 7, ''),
(431, 'DOST57f726c2a1e1b4.10788037', 'ALLAN JAY', 'GUTIERRES', 'FAYTARON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:48:39', '2016-10-07 05:48:39', '', '', '', '', 19, 5, 7, ''),
(433, 'NONE56d61e40549ca1.29274134', 'john', 'Guevarra', 'calibo', '', '09363313254', 1, '2016-03-02 06:57:04', '2016-03-02 06:57:04', '', '2016-03-02 06:57:04', '', 1, 1, 5, '2016-03-01 22:57:04', '2016-03-01 22:57:04', '', '', '', '', 1, 5, 6, ''),
(434, 'NONE56d62c5de5d4d6.61807763', 'Ma Cecile', 'Baldoza', 'Zamora', '', '09178810378', 1, '2016-03-02 07:57:17', '2016-03-02 07:57:17', '', '2016-03-02 07:57:17', '', 2, 6, 6, '2016-03-01 23:57:17', '2016-03-01 23:57:17', '', '', '', '', 55, 7, 6, 'DOST-FPRDI'),
(435, 'NONE56d62dd7e24554.13705099', 'jerson', 'cuatro', 'arinque', '', '09304836287', 1, '2016-03-02 08:03:35', '2016-03-02 08:03:35', '', '2016-03-02 08:03:35', '', 1, 1, 5, '2016-03-02 00:03:35', '2016-03-02 00:03:35', '', '', '', '', 19, 5, 6, 'PUP'),
(436, 'NONE56d62dd7eb0f15.71203833', 'jerson', 'cuatro', 'arinque', '', '09304836287', 1, '2016-03-02 08:03:35', '2016-03-02 08:03:35', '', '2016-03-02 08:03:35', '', 1, 1, 5, '2016-03-02 00:03:35', '2016-03-02 00:03:35', '', '', '', '', 19, 5, 6, 'PUP'),
(437, 'NONE56d62e058d5838.05942309', 'SHEILA MAY', 'VELASQUEZ', 'SEPE', '', '09098072306', 1, '2016-03-02 08:04:21', '2016-03-02 08:04:21', '', '2016-03-02 08:04:21', '', 2, 6, 5, '2016-03-02 00:04:21', '2016-03-02 00:04:21', '', '', '', '', 19, 5, 6, 'Polytechnic university of the philippines sto.tomas branch'),
(438, 'NONE56d62e0f2ffe85.17688447', 'mark henry', 'fajardo', 'amante', '', '09752258156', 1, '2016-03-02 08:04:31', '2016-03-02 08:04:31', '', '2016-03-02 08:04:31', '', 1, 6, 5, '2016-03-02 00:04:31', '2016-03-02 00:04:31', '', '', '', '', 19, 5, 6, 'PUP'),
(439, 'NONE56d62e503b5967.26224352', 'ferdie', 'waje', 'lacap', '', '+639483434493', 1, '2016-03-02 08:05:36', '2016-03-02 08:05:36', '', '2016-03-02 08:05:36', '', 1, 6, 5, '2016-03-02 00:05:36', '2016-03-02 00:05:36', '', '', '', '', 19, 5, 6, 'pup'),
(440, 'NONE56d62e59843ad9.61350096', 'Genevieve', 'Servidad', 'Albaira', '', '09209571403', 1, '2016-03-02 08:05:45', '2016-03-02 08:05:45', '', '2016-03-02 08:05:45', '', 2, 6, 5, '2016-03-02 00:05:45', '2016-03-02 00:05:45', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines'),
(441, 'NONE56d62e8ab91506.56276009', 'Israel II', 'Banca', 'Matunan', '', '09198403262', 1, '2016-03-02 08:06:34', '2016-03-02 08:06:34', '', '2016-03-02 08:06:34', '', 1, 6, 5, '2016-03-02 00:06:34', '2016-03-02 00:06:34', '', '', '', '', 19, 5, 6, 'PUP'),
(442, 'NONE56d62eaecc2492.53773256', 'Noana Faith', 'Macaraig', 'Gitgano', '', '09361218131', 1, '2016-03-02 08:07:10', '2016-03-02 08:07:10', '', '2016-03-02 08:07:10', '', 2, 6, 5, '2016-03-02 00:07:10', '2016-03-02 00:07:10', '', '', '', '', 19, 5, 6, 'Polytechnic University of the Philippines Sto. Tomas, Batangas'),
(443, 'NONE56d62f2d164418.58340580', 'Maria Nikka', 'Suniega', 'Katigbak', '', '09774109710', 1, '2016-03-02 08:09:17', '2016-03-02 08:09:17', '', '2016-03-02 08:09:17', '', 2, 6, 5, '2016-03-02 00:09:17', '2016-03-02 00:09:17', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines Sto. Tomas, Batangas'),
(444, 'NONE56d62f74bc4ed4.09546518', 'John Paulo', 'Ludovice', 'De Jesus', '', '09484979105', 1, '2016-03-02 08:10:28', '2016-03-02 08:10:28', '', '2016-03-02 08:10:28', '', 1, 6, 5, '2016-03-02 00:10:28', '2016-03-02 00:10:28', '', '', '', '', 19, 5, 6, 'PUP'),
(445, 'NONE56d62f7aada4b9.78994371', 'Sittie Ainah', 'Macud', 'Mama', '', '09460370223', 1, '2016-03-02 08:10:34', '2016-03-02 08:10:34', '', '2016-03-02 08:10:34', '', 2, 6, 5, '2016-03-02 00:10:34', '2016-03-02 00:10:34', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines Sto. Tomas, Batangas'),
(446, 'NONE56d62fd1854a55.82273657', 'Angelica', 'Pulido', 'Melanio', '', '09477001230', 1, '2016-03-02 08:12:01', '2016-03-02 08:12:01', '', '2016-03-02 08:12:01', '', 2, 6, 5, '2016-03-02 00:12:01', '2016-03-02 00:12:01', '', '', '', '', 19, 5, 6, 'Polytechnic University of the Philippines'),
(447, 'NONE56d62fd9cdd096.73026808', 'Camille', 'Castillo', 'Mirasol', '', '09295801354', 1, '2016-03-02 08:12:09', '2016-03-02 08:12:09', '', '2016-03-02 08:12:09', '', 2, 6, 5, '2016-03-02 00:12:09', '2016-03-02 00:12:09', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines Sto. Tomas, Batangas'),
(448, 'NONE56d63013a84e57.42605850', 'Jerald', 'Avancena', 'Melarpis', '', '09104118823', 1, '2016-03-02 08:13:07', '2016-03-02 08:13:07', '', '2016-03-02 08:13:07', '', 1, 6, 5, '2016-03-02 00:13:07', '2016-03-02 00:13:07', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines Sto. Tomas'),
(449, 'NONE56d63030bead32.42580411', 'Glaisa', 'Hernandez', 'Mangubat', '', '09076045089', 1, '2016-03-02 08:13:36', '2016-03-02 08:13:36', '', '2016-03-02 08:13:36', '', 2, 6, 5, '2016-03-02 00:13:36', '2016-03-02 00:13:36', '', '', '', '', 18, 5, 6, 'PUP Sto. Tomas'),
(450, 'NONE56d6304684b840.84258105', 'Micah Angel', 'Arenal', 'Revelar', '', '09066678726', 1, '2016-03-02 08:13:58', '2016-03-02 08:13:58', '', '2016-03-02 08:13:58', '', 2, 6, 5, '2016-03-02 00:13:58', '2016-03-02 00:13:58', '', '', '', '', 20, 5, 6, ''),
(451, 'NONE56d6308deab746.45529543', 'Xean Thrizzxia Angeli', 'Perez', 'Mendoza', '', '09069065291', 1, '2016-03-02 08:15:09', '2016-03-02 08:15:09', '', '2016-03-02 08:15:09', '', 2, 6, 5, '2016-03-02 00:15:09', '2016-03-02 00:15:09', '', '', '', '', 19, 5, 6, 'PUP - Sto.tomas'),
(452, 'NONE56d630ad6175d0.71564942', 'Myra', 'Marquez', 'Caguimbal', '', '09092109875', 1, '2016-03-02 08:15:41', '2016-03-02 08:15:41', '', '2016-03-02 08:15:41', '', 2, 6, 5, '2016-03-02 00:15:41', '2016-03-02 00:15:41', '', '', '', '', 20, 5, 6, 'PUP'),
(453, 'NONE56d630e101e885.56171444', 'April', 'Dimayuga', 'De Leon', '', '09092976976', 1, '2016-03-02 08:16:33', '2016-03-02 08:16:33', '', '2016-03-02 08:16:33', '', 2, 6, 5, '2016-03-02 00:16:33', '2016-03-02 00:16:33', '', '', '', '', 19, 5, 6, 'PUP Sto. Tomas'),
(454, 'NONE56d630f8ed1cf6.83182152', 'heidy', 'alcantara', 'gonzales', '', '09109497627', 1, '2016-03-02 08:16:56', '2016-03-02 08:16:56', '', '2016-03-02 08:16:56', '', 2, 6, 5, '2016-03-02 00:16:56', '2016-03-02 00:16:56', '', '', '', '', 19, 5, 6, 'PUP-STB'),
(455, 'NONE56d6312dbd7200.93982953', 'lyka', 'gersalia', 'mirabite', '', '09262803114', 1, '2016-03-02 08:17:49', '2016-03-02 08:17:49', '', '2016-03-02 08:17:49', '', 2, 6, 5, '2016-03-02 00:17:49', '2016-03-02 00:17:49', '', '', '', '', 19, 5, 6, 'pup-sto tomas'),
(456, 'NONE56d63147808b30.48655567', 'Julie', 'Sandoval', 'Malacad', '', '09123059118', 1, '2016-03-02 08:18:15', '2016-03-02 08:18:15', '', '2016-03-02 08:18:15', '', 2, 6, 5, '2016-03-02 00:18:15', '2016-03-02 00:18:15', '', '', '', '', 19, 5, 6, 'PUP'),
(457, 'NONE56d63199c28f34.11039774', 'Jeanine', 'Panghulan', 'Caraan', '', '09099189096', 1, '2016-03-02 08:19:37', '2016-03-02 08:19:37', '', '2016-03-02 08:19:37', '', 2, 6, 5, '2016-03-02 00:19:37', '2016-03-02 00:19:37', '', '', '', '', 20, 5, 6, 'Polytechnic University of the Philippines- Sto. Tomas Campus'),
(458, 'NONE56d631fb0451d4.67488324', 'kyle', 'mallare', 'madriaga', '', '09098845769', 1, '2016-03-02 08:21:15', '2016-03-02 08:21:15', '', '2016-03-02 08:21:15', '', 1, 5, 5, '2016-03-02 00:21:15', '2016-03-02 00:21:15', '', '', '', '', 16, 5, 6, ''),
(459, 'NONE56d6327da74456.05295778', 'champagne mae', 'espina', 'trawon', '', '09090102299', 1, '2016-03-02 08:23:25', '2016-03-02 08:23:25', '', '2016-03-02 08:23:25', '', 2, 13, 5, '2016-03-02 00:23:25', '2016-03-02 00:23:25', '', '', '', '', 16, 5, 6, 'school'),
(460, 'NONE56d6329a716150.38470406', 'anthea loren', 'pelonio', 'guerra', '', '09097615096', 1, '2016-03-02 08:23:54', '2016-03-02 08:23:54', '', '2016-03-02 08:23:54', '', 2, 13, 5, '2016-03-02 00:23:54', '2016-03-02 00:23:54', '', '', '', '', 17, 5, 6, 'school'),
(461, 'NONE56d632b57e0b68.83111914', 'Kate Joy', 'Janovas', 'Bodanio', '', '09122757665', 1, '2016-03-02 08:24:21', '2016-03-02 08:24:21', '', '2016-03-02 08:24:21', '', 2, 13, 5, '2016-03-02 00:24:21', '2016-03-02 00:24:21', '', '', '', '', 17, 5, 6, 'School'),
(462, 'NONE56d632e7705c15.62969879', 'John-Celle Mae', 'Mag-aso', 'Layug', '', '09097615096', 1, '2016-03-02 08:25:11', '2016-03-02 08:25:11', '', '2016-03-02 08:25:11', '', 2, 13, 5, '2016-03-02 00:25:11', '2016-03-02 00:25:11', '', '', '', '', 17, 5, 6, 'School'),
(463, 'NONE56d632f3131701.56861383', 'gracella', 'carsido', 'pole', '', '09305925394', 1, '2016-03-02 08:25:23', '2016-03-02 08:25:23', '', '2016-03-02 08:25:23', '', 2, 11, 5, '2016-03-02 00:25:23', '2016-03-02 00:25:23', '', '', '', '', 19, 5, 6, 'school'),
(464, 'NONE56d63335915b28.38956777', 'Shweet Nee', 'Devibar', 'Aray', '', '09098850003', 1, '2016-03-02 08:26:29', '2016-03-02 08:26:29', '', '2016-03-02 08:26:29', '', 2, 13, 5, '2016-03-02 00:26:29', '2016-03-02 00:26:29', '', '', '', '', 17, 5, 6, 'school'),
(465, 'NONE56d63358ae0952.69568769', 'Cristin', 'Tacdoro', 'Talabon', '', '0912375115', 1, '2016-03-02 08:27:04', '2016-03-02 08:27:04', '', '2016-03-02 08:27:04', '', 2, 9, 5, '2016-03-02 00:27:04', '2016-03-02 00:27:04', '', '', '', '', 17, 5, 6, 'School'),
(466, 'NONE56d63370c061a9.13334950', 'errol john', 'capa', 'cacho', '', '09480210060', 1, '2016-03-02 08:27:28', '2016-03-02 08:27:28', '', '2016-03-02 08:27:28', '', 1, 5, 5, '2016-03-02 00:27:28', '2016-03-02 00:27:28', '', '', '', '', 17, 5, 6, 'school'),
(467, 'NONE56d633cbe03686.65847008', 'elvira', 'florentino', 'cantomayor', '', '09354748642', 1, '2016-03-02 08:28:59', '2016-03-02 08:28:59', '', '2016-03-02 08:28:59', '', 2, 13, 5, '2016-03-02 00:28:59', '2016-03-02 00:28:59', '', '', '', '', 17, 5, 6, 'school'),
(468, 'NONE56d633d12205d4.55177631', 'Melanie', '', 'Gorgonia', '', '09096275929', 1, '2016-03-02 08:29:05', '2016-03-02 08:29:05', '', '2016-03-02 08:29:05', '', 2, 1, 5, '2016-03-02 00:29:05', '2016-03-02 00:29:05', '', '', '', '', 18, 5, 6, ''),
(469, 'NONE56d63421e40ee4.75970307', 'Lorraine', 'Barquilla', 'Lagamayo', '', '09972164145', 1, '2016-03-02 08:30:25', '2016-03-02 08:30:25', '', '2016-03-02 08:30:25', '', 2, 6, 5, '2016-03-02 00:30:25', '2016-03-02 00:30:25', '', '', '', '', 19, 5, 6, 'PUP-STB'),
(470, 'NONE56d6342a827915.21056852', 'Janice', 'Gillacone', 'Laurente', '', '09307183369', 1, '2016-03-02 08:30:34', '2016-03-02 08:30:34', '', '2016-03-02 08:30:34', '', 2, 11, 5, '2016-03-02 00:30:34', '2016-03-02 00:30:34', '', '', '', '', 17, 5, 6, 'School'),
(471, 'NONE56d63471dcdb99.17142812', 'Ma. Rhedem', 'Mindanao', 'Austria', '', '09129879748', 1, '2016-03-02 08:31:45', '2016-03-02 08:31:45', '', '2016-03-02 08:31:45', '', 2, 6, 5, '2016-03-02 00:31:45', '2016-03-02 00:31:45', '', '', '', '', 19, 5, 6, 'PUP STO. TOMAS'),
(472, 'NONE56d634767d3955.81578042', 'Gracezhiel', 'Pusag', 'Rosita', '', '09352928480', 1, '2016-03-02 08:31:50', '2016-03-02 08:31:50', '', '2016-03-02 08:31:50', '', 2, 6, 5, '2016-03-02 00:31:50', '2016-03-02 00:31:50', '', '', '', '', 19, 5, 6, 'PUP-STB'),
(473, 'NONE56d634c1d69480.68243946', 'nicole marie', 'barrato', 'pulmones', '', '09354326042', 1, '2016-03-02 08:33:05', '2016-03-02 08:33:05', '', '2016-03-02 08:33:05', '', 2, 6, 5, '2016-03-02 00:33:05', '2016-03-02 00:33:05', '', '', '', '', 20, 5, 6, 'PUP-STB'),
(474, 'NONE56d635141a9953.75961284', 'dianne', 'Aruelo', 'Peralta', '', '09107904221', 1, '2016-03-02 08:34:28', '2016-03-02 08:34:28', '', '2016-03-02 08:34:28', '', 2, 3, 5, '2016-03-02 00:34:28', '2016-03-02 00:34:28', '', '', '', '', 25, 7, 6, 'DMMMSU'),
(475, 'NONE56d6356770fa40.38021136', 'Jemverick', 'Eugenio', 'Asis', '', '09068715641', 1, '2016-03-02 08:35:51', '2016-03-02 08:35:51', '', '2016-03-02 08:35:51', '', 1, 6, 5, '2016-03-02 00:35:51', '2016-03-02 00:35:51', '', '', '', '', 20, 5, 6, 'PUP-Sto Tomas'),
(476, 'NONE56d6360613fc25.58186338', 'Fritz Dustin', 'Mazo', 'Fiedalan', '', '09369718088', 1, '2016-03-02 08:38:30', '2016-03-02 08:38:30', '', '2016-03-02 08:38:30', '', 1, 7, 5, '2016-03-02 00:38:30', '2016-03-02 00:38:30', '', '', '', '', 22, 5, 6, 'Mindoro State College of Agriculture and Technology-Bongabong Campus'),
(477, 'NONE56d63634597692.28980190', 'frelyn', 'valdez', 'corpuz', '', '09064440095', 1, '2016-03-02 08:39:16', '2016-03-02 08:39:16', '', '2016-03-02 08:39:16', '', 2, 6, 5, '2016-03-02 00:39:16', '2016-03-02 00:39:16', '', '', '', '', 24, 11, 6, 'uplb'),
(478, 'NONE56d63670738732.42985405', 'Rosel', 'Morales', 'Jungay', '', '09129302547', 1, '2016-03-02 08:40:16', '2016-03-02 08:40:16', '', '2016-03-02 08:40:16', '', 2, 7, 5, '2016-03-02 00:40:16', '2016-03-02 00:40:16', '', '', '', '', 21, 5, 6, 'Mindoro State College of Agriculture and Technology'),
(479, 'NONE56d636a7707432.08258653', 'joan', 'narzoles', 'gasang', '', '09300011008', 1, '2016-03-02 08:41:11', '2016-03-02 08:41:11', '', '2016-03-02 08:41:11', '', 2, 7, 5, '2016-03-02 00:41:11', '2016-03-02 00:41:11', '', '', '', '', 24, 5, 6, 'MinSCAT'),
(480, 'NONE56d636bd293ba8.69740320', 'Daniela Mae', 'Plata', 'delos Santos', '', '09263443147', 1, '2016-03-02 08:41:33', '2016-03-02 08:41:33', '', '2016-03-02 08:41:33', '', 2, 7, 5, '2016-03-02 00:41:33', '2016-03-02 00:41:33', '', '', '', '', 19, 5, 6, 'Mindoro State College of Agriculture and Technology-Bongabong Campus'),
(481, 'NONE56d63706aa0002.66274033', 'Gillie', 'Francisco', 'Ogbac', '', '09300319418', 1, '2016-03-02 08:42:46', '2016-03-02 08:42:46', '', '2016-03-02 08:42:46', '', 2, 7, 5, '2016-03-02 00:42:46', '2016-03-02 00:42:46', '', '', '', '', 23, 5, 6, 'Mindoro State College Of Agriculture and Technology-Bongabong Campus'),
(482, 'NONE56d6373d425410.24515866', 'Angelica', 'Aporo', 'Gili', '', '09467521593', 1, '2016-03-02 08:43:41', '2016-03-02 08:43:41', '', '2016-03-02 08:43:41', '', 2, 7, 5, '2016-03-02 00:43:41', '2016-03-02 00:43:41', '', '', '', '', 19, 5, 6, 'Mindoro State College of Agriculture and Technology- Bongabong Campus'),
(483, 'NONE56d6377d5cac52.98114973', 'Jezelden Kizeah', 'Villota', 'Jardiolin', '', '09487534677', 1, '2016-03-02 08:44:45', '2016-03-02 08:44:45', '', '2016-03-02 08:44:45', '', 2, 7, 5, '2016-03-02 00:44:45', '2016-03-02 00:44:45', '', '', '', '', 20, 5, 6, 'Mindoro State College of Agriculture and Technology'),
(484, 'NONE56d637b4ef7834.34557541', 'Marimar', 'Gunay', 'Abrigo', '', '09070447645', 1, '2016-03-02 08:45:40', '2016-03-02 08:45:40', '', '2016-03-02 08:45:40', '', 2, 7, 5, '2016-03-02 00:45:40', '2016-03-02 00:45:40', '', '', '', '', 19, 5, 6, 'Mindoro State College Of Agriculture and Technology Bongabong Campus'),
(485, 'NONE56d639dc643e96.82644130', 'renato', 'c.', 'diocton', '', '09183800833', 1, '2016-03-02 08:54:52', '2016-03-02 08:54:52', '', '2016-03-02 08:54:52', '', 1, 1, 5, '2016-03-02 00:54:52', '2016-03-02 00:54:52', '', '', '', '', 54, 11, 6, 'samar state university'),
(486, 'NONE56d63b093e7395.84153208', 'crispina ', 'malana', 'muan', '', '09228292598', 1, '2016-03-02 08:59:53', '2016-03-02 08:59:53', '', '2016-03-02 08:59:53', '', 2, 1, 6, '2016-03-02 00:59:53', '2016-03-02 00:59:53', '', '', '', '', 54, 7, 6, 'laguna lake Dev. Authority'),
(487, 'NONE56d63b1de5a611.80565162', 'Marilou', 'Bayubay', 'Mosqueda', '', '09988420661', 1, '2016-03-02 09:00:13', '2016-03-02 09:00:13', '', '2016-03-02 09:00:13', '', 2, 6, 6, '2016-03-02 01:00:13', '2016-03-02 01:00:13', '', '', '', '', 49, 5, 6, 'BFAR-4A'),
(488, 'NONE56d63cfe5acc26.93149408', 'KENT', 'NAYON', 'ARTUGUE', '', '09463828832', 1, '2016-03-02 09:08:14', '2016-03-02 09:08:14', '', '2016-03-02 09:08:14', '', 1, 13, 5, '2016-03-02 01:08:14', '2016-03-02 01:08:14', '', '', '', '', 19, 5, 6, ''),
(489, 'NONE56d63d1f8dca01.12942446', 'jesmar', 'hernaiz', 'curiba', '', '09066247765', 1, '2016-03-02 09:08:47', '2016-03-02 09:08:47', '', '2016-03-02 09:08:47', '', 1, 13, 5, '2016-03-02 01:08:47', '2016-03-02 01:08:47', '', '', '', '', 17, 5, 6, 'De La Salle Araneta University'),
(490, 'NONE56d63d2d797817.09688522', 'michael', 'asi', 'porto', '', '09128909119', 1, '2016-03-02 09:09:01', '2016-03-02 09:09:01', '', '2016-03-02 09:09:01', '', 1, 6, 5, '2016-03-02 01:09:01', '2016-03-02 01:09:01', '', '', '', '', 17, 5, 6, ''),
(491, 'NONE56d63d65f3e179.93366526', 'JERREMIE', 'MAGNAYE', 'TORRES', '', '09480210063', 1, '2016-03-02 09:09:58', '2016-03-02 09:09:58', '', '2016-03-02 09:09:58', '', 1, 5, 5, '2016-03-02 01:09:58', '2016-03-02 01:09:58', '', '', '', '', 17, 5, 6, 'De La Salle Araneta University');
INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(492, 'NONE56d63e0147db93.59364602', 'darlene', 'asprec', 'deles', '', '09163309384', 1, '2016-03-02 09:12:33', '2016-03-02 09:12:33', '', '2016-03-02 09:12:33', '', 2, 6, 5, '2016-03-02 01:12:33', '2016-03-02 01:12:33', '', '', '', '', 20, 5, 6, 'Polytechnic university of the philippines sto tomas branch'),
(493, 'NONE56d63e128b4922.82839581', 'Johanna', 'Rubio', 'Decena', '', '09367865678', 1, '2016-03-02 09:12:50', '2016-03-02 09:12:50', '', '2016-03-02 09:12:50', '', 2, 6, 5, '2016-03-02 01:12:50', '2016-03-02 01:12:50', '', '', '', '', 21, 5, 6, 'Polytechnic University of the Philippines- Sto. Tomas, Batangas'),
(494, 'NONE56d6400f7abc44.74696857', 'May', 'Tabuyog', 'Andrada', '', '09309865359', 1, '2016-03-02 09:21:19', '2016-03-02 09:21:19', '', '2016-03-02 09:21:19', '', 2, 9, 5, '2016-03-02 01:21:19', '2016-03-02 01:21:19', '', '', '', '', 17, 5, 6, ''),
(495, 'NONE56d640a3940510.06443445', 'ma. tyrine lipset', 'castillo', 'capina', '', '09208577278', 1, '2016-03-02 09:23:47', '2016-03-02 09:23:47', '', '2016-03-02 09:23:47', '', 2, 6, 5, '2016-03-02 01:23:47', '2016-03-02 01:23:47', '', '', '', '', 33, 7, 6, 'deped'),
(496, 'NONE56d640aab49e77.39240547', 'aldrin', 'enriquez', 'hernandez', '', '09077525377', 1, '2016-03-02 09:23:54', '2016-03-02 09:23:54', '', '2016-03-02 09:23:54', '', 1, 6, 5, '2016-03-02 01:23:54', '2016-03-02 01:23:54', '', '', '', '', 27, 11, 6, 'deped - san pablo city'),
(497, 'NONE56d641242de2a9.88080491', 'irene', 'hermosilla', 'roa', '', '09096219440', 1, '2016-03-02 09:25:56', '2016-03-02 09:25:56', '', '2016-03-02 09:25:56', '', 2, 1, 5, '2016-03-02 01:25:56', '2016-03-02 01:25:56', '', '', '', '', 18, 5, 6, ''),
(498, 'NONE56d64151ef0521.23528314', 'GLADEMER', 'PETRAS', 'AMONCIO', '', '09477237953', 1, '2016-03-02 09:26:41', '2016-03-02 09:26:41', '', '2016-03-02 09:26:41', '', 1, 13, 5, '2016-03-02 01:26:41', '2016-03-02 01:26:41', '', '', '', '', 19, 5, 6, 'DLSAU'),
(499, 'NONE56d6416892c7d6.66123996', 'joseph ', 'panergo', 'simpao', '', '09480131372', 1, '2016-03-02 09:27:04', '2016-03-02 09:27:04', '', '2016-03-02 09:27:04', '', 1, 1, 5, '2016-03-02 01:27:04', '2016-03-02 01:27:04', '', '', '', '', 17, 5, 6, ''),
(500, 'NONE56d6419e52aa60.38539318', 'jay mark', 'glam', 'delfin', '', '09090891404', 1, '2016-03-02 09:27:58', '2016-03-02 09:27:58', '', '2016-03-02 09:27:58', '', 1, 1, 5, '2016-03-02 01:27:58', '2016-03-02 01:27:58', '', '', '', '', 18, 5, 6, ''),
(501, 'NONE56d641c5e28f47.90737512', 'KEM BRYL', 'MAHUSAY', 'FAMOSO', '', '09357032896', 1, '2016-03-02 09:28:37', '2016-03-02 09:28:37', '', '2016-03-02 09:28:37', '', 1, 9, 5, '2016-03-02 01:28:37', '2016-03-02 01:28:37', '', '', '', '', 18, 5, 6, 'DLSAU'),
(502, 'NONE56d641dbf35d71.12647937', 'kent christian', 'balungay', 'mundo', '', '094890130936', 1, '2016-03-02 09:29:00', '2016-03-02 09:29:00', '', '2016-03-02 09:29:00', '', 1, 1, 5, '2016-03-02 01:29:00', '2016-03-02 01:29:00', '', '', '', '', 17, 5, 6, ''),
(503, 'NONE56d641fe913590.32359166', 'KERBY', 'ESPULGAR', 'LADUA', '', '09090040757', 1, '2016-03-02 09:29:34', '2016-03-02 09:29:34', '', '2016-03-02 09:29:34', '', 1, 15, 5, '2016-03-02 01:29:34', '2016-03-02 01:29:34', '', '', '', '', 17, 5, 6, 'DLSAU'),
(504, 'NONE56d642cc819232.36356319', 'Pia Adeleen ', 'Sumadsad', 'Feliciano', '', '', 1, '2016-03-02 09:33:00', '2016-03-02 09:33:00', '', '2016-03-02 09:33:00', '', 2, 6, 5, '2016-03-02 01:33:00', '2016-03-02 01:33:00', '', '', '', '', 14, 5, 6, 'San Bartolome National Highschool'),
(505, 'NONE56d6431e185988.58442759', 'marycris', 'guiriba', 'dimasapit', '', '', 1, '2016-03-02 09:34:22', '2016-03-02 09:34:22', '', '2016-03-02 09:34:22', '', 2, 6, 5, '2016-03-02 01:34:22', '2016-03-02 01:34:22', '', '', '', '', 13, 5, 6, 'sn bartolome national high school'),
(506, 'NONE56d64327f20d93.94383061', 'chen chen', 'flores', 'galac', '', '09073957024', 1, '2016-03-02 09:34:32', '2016-03-02 09:34:32', '', '2016-03-02 09:34:32', '', 2, 6, 5, '2016-03-02 01:34:32', '2016-03-02 01:34:32', '', '', '', '', 13, 5, 6, 'san bartolome n'),
(507, 'NONE56d6436ee495d2.37245782', 'marishiel', '', 'arbulante', '', '', 1, '2016-03-02 09:35:42', '2016-03-02 09:35:42', '', '2016-03-02 09:35:42', '', 2, 6, 5, '2016-03-02 01:35:42', '2016-03-02 01:35:42', '', '', '', '', 13, 5, 6, ''),
(508, 'NONE56d643d35f9385.44793188', 'bhea ', 'tolentino', 'carro', '', '09085250226', 1, '2016-03-02 09:37:23', '2016-03-02 09:37:23', '', '2016-03-02 09:37:23', '', 2, 6, 5, '2016-03-02 01:37:23', '2016-03-02 01:37:23', '', '', '', '', 13, 5, 6, 'san bartolome national high school'),
(509, 'NONE56d643f7d99245.31613040', 'maryjoyce', '', 'aguel', '', '', 1, '2016-03-02 09:37:59', '2016-03-02 09:37:59', '', '2016-03-02 09:37:59', '', 2, 1, 5, '2016-03-02 01:37:59', '2016-03-02 01:37:59', '', '', '', '', 13, 5, 6, 'san bartolome national highschool'),
(510, 'NONE56d647fe64d8f9.16951713', 'Borromeo', 'B.', 'Motin', '', '09289333260', 1, '2016-03-02 09:55:10', '2016-03-02 09:55:10', '', '2016-03-02 09:55:10', '', 1, 7, 6, '2016-03-02 01:55:10', '2016-03-02 01:55:10', '', '', '', '', 48, 7, 6, 'Romblon State University'),
(511, 'NONE56d64cfca0d818.75353428', 'julie fearl ', 'gapol', 'doping', '', '09090040573', 1, '2016-03-02 10:16:28', '2016-03-02 10:16:28', '', '2016-03-02 10:16:28', '', 2, 1, 5, '2016-03-02 02:16:28', '2016-03-02 02:16:28', '', '', '', '', 17, 5, 6, ''),
(512, 'NONE56d64d317082f9.60341709', 'shayne', 'llarenas', 'cabriana', '', '09303910554', 1, '2016-03-02 10:17:21', '2016-03-02 10:17:21', '', '2016-03-02 10:17:21', '', 2, 11, 5, '2016-03-02 02:17:21', '2016-03-02 02:17:21', '', '', '', '', 17, 5, 6, ''),
(513, 'NONE56d64d739eb206.52250909', 'mark joseph', 'apostol', 'esteban', '', '09466027322', 1, '2016-03-02 10:18:27', '2016-03-02 10:18:27', '', '2016-03-02 10:18:27', '', 1, 5, 5, '2016-03-02 02:18:27', '2016-03-02 02:18:27', '', '', '', '', 27, 7, 6, 'DA-RFO III'),
(514, 'NONE56d64dc4d13582.55636744', 'gonzales', 'pagaduan', 'gonzales', '', '09126921780', 1, '2016-03-02 10:19:48', '2016-03-02 10:19:48', '', '2016-03-02 10:19:48', '', 1, 5, 6, '2016-03-02 02:19:48', '2016-03-02 02:19:48', '', '', '', '', 37, 7, 6, 'da-rfo3'),
(515, 'NONE56d651f12f4645.92015652', 'noel', 'camila', 'ibias', '', '09998696448', 1, '2016-03-02 10:37:37', '2016-03-02 10:37:37', '', '2016-03-02 10:37:37', '', 1, 1, 5, '2016-03-02 02:37:37', '2016-03-02 02:37:37', '', '', '', '', 37, 5, 6, 'maxicare'),
(516, 'NONE56d6526b56f784.62249601', 'noel', 'camila', 'ibias', '', '09998696448', 1, '2016-03-02 10:39:39', '2016-03-02 10:39:39', '', '2016-03-02 10:39:39', '', 1, 1, 5, '2016-03-02 02:39:39', '2016-03-02 02:39:39', '', '', '', '', 37, 6, 6, 'maxicare'),
(517, 'NONE56d65292efdf44.50516534', 'Elizabeth', 'Pacinos', 'Zaratar', '', '09127190674', 1, '2016-03-02 10:40:18', '2016-03-02 10:40:18', '', '2016-03-02 10:40:18', '', 2, 6, 5, '2016-03-02 02:40:18', '2016-03-02 02:40:18', '', '', '', '', 20, 5, 6, 'PUP STB'),
(518, 'NONE56d653357b59c3.31246449', 'Adela', 'Serrano', 'Torres', '', '09189192834', 1, '2016-03-02 10:43:01', '2016-03-02 10:43:01', '', '2016-03-02 10:43:01', '', 2, 6, 6, '2016-03-02 02:43:01', '2016-03-02 02:43:01', '', '', '', '', 57, 7, 6, 'FPRDI,DOST'),
(519, 'NONE56d6560cb50eb2.48050705', 'justine', 'labsan', 'educado', '', '09105316657', 1, '2016-03-02 10:55:08', '2016-03-02 10:55:08', '', '2016-03-02 10:55:08', '', 1, 6, 5, '2016-03-02 02:55:08', '2016-03-02 02:55:08', '', '', '', '', 13, 6, 6, ''),
(520, 'NONE56d6564ad9a2a5.92557998', 'topher', 'fernandez', 'lastimosa', '', '09183738123', 1, '2016-03-02 10:56:10', '2016-03-02 10:56:10', '', '2016-03-02 10:56:10', '', 1, 6, 5, '2016-03-02 02:56:10', '2016-03-02 02:56:10', '', '', '', '', 13, 5, 6, ''),
(521, 'NONE56d656ff1c55a5.07108555', 'ken majesty', 'paredes', 'genayas', '', '', 1, '2016-03-02 10:59:11', '2016-03-02 10:59:11', '', '2016-03-02 10:59:11', '', 2, 6, 5, '2016-03-02 02:59:11', '2016-03-02 02:59:11', '', '', '', '', 13, 5, 6, ''),
(522, 'NONE56d6571b7784b0.60788006', 'beabianca', 'n', 'nequinto', '', '', 1, '2016-03-02 10:59:39', '2016-03-02 10:59:39', '', '2016-03-02 10:59:39', '', 2, 1, 5, '2016-03-02 02:59:39', '2016-03-02 02:59:39', '', '', '', '', 13, 5, 6, ''),
(523, 'NONE56d6573d0bdbd0.04312466', 'grace', 'priolo', 'areno', '', '', 1, '2016-03-02 11:00:13', '2016-03-02 11:00:13', '', '2016-03-02 11:00:13', '', 2, 6, 5, '2016-03-02 03:00:13', '2016-03-02 03:00:13', '', '', '', '', 13, 5, 6, ''),
(524, 'NONE56d6576c43d3c6.22060278', 'ryza', 'alvarez', 'estioko', '', '', 1, '2016-03-02 11:01:00', '2016-03-02 11:01:00', '', '2016-03-02 11:01:00', '', 2, 1, 5, '2016-03-02 03:01:00', '2016-03-02 03:01:00', '', '', '', '', 13, 5, 6, ''),
(525, 'NONE56d6576d5b4904.30969499', 'catherine', 'arma', 'zonio', '', '', 1, '2016-03-02 11:01:01', '2016-03-02 11:01:01', '', '2016-03-02 11:01:01', '', 2, 6, 5, '2016-03-02 03:01:01', '2016-03-02 03:01:01', '', '', '', '', 13, 5, 6, ''),
(526, 'NONE56d657efd236b3.12236772', 'felicity', 'ty', 'yadao', '', '09753901587', 1, '2016-03-02 11:03:11', '2016-03-02 11:03:11', '', '2016-03-02 11:03:11', '', 2, 6, 5, '2016-03-02 03:03:11', '2016-03-02 03:03:11', '', '', '', '', 12, 5, 6, ''),
(527, 'NONE56d6580e1345e7.47423201', 'brench', 'jamie', 'salvante', '', '09087276717', 1, '2016-03-02 11:03:42', '2016-03-02 11:03:42', '', '2016-03-02 11:03:42', '', 1, 6, 5, '2016-03-02 03:03:42', '2016-03-02 03:03:42', '', '', '', '', 13, 5, 6, ''),
(528, 'NONE56d65842c6a760.07147202', 'Greg Isaac', 'Bedania', 'Arida', '', '09275462905', 1, '2016-03-02 11:04:34', '2016-03-02 11:04:34', '', '2016-03-02 11:04:34', '', 1, 6, 5, '2016-03-02 03:04:34', '2016-03-02 03:04:34', '', '', '', '', 12, 5, 6, ''),
(529, 'NONE56d65843b21520.76865671', 'cristine', 'danlag', 'guape', '', '09460700911', 1, '2016-03-02 11:04:35', '2016-03-02 11:04:35', '', '2016-03-02 11:04:35', '', 2, 6, 5, '2016-03-02 03:04:35', '2016-03-02 03:04:35', '', '', '', '', 13, 5, 6, ''),
(530, 'NONE56d658705acd87.11155374', 'shaira mae', 'garcia', 'apacionado', '', '09298156189', 1, '2016-03-02 11:05:20', '2016-03-02 11:05:20', '', '2016-03-02 11:05:20', '', 2, 6, 5, '2016-03-02 03:05:20', '2016-03-02 03:05:20', '', '', '', '', 12, 5, 6, ''),
(531, 'NONE56d658817cc168.81848641', 'chrisitian', 'ramirez', 'cosep', '', '09067146127', 1, '2016-03-02 11:05:37', '2016-03-02 11:05:37', '', '2016-03-02 11:05:37', '', 1, 6, 5, '2016-03-02 03:05:37', '2016-03-02 03:05:37', '', '', '', '', 13, 5, 6, ''),
(532, 'NONE56d65897cd20a2.55012787', 'mary joy', 'getalada', 'benigay', '', '09984342488', 1, '2016-03-02 11:05:59', '2016-03-02 11:05:59', '', '2016-03-02 11:05:59', '', 2, 6, 5, '2016-03-02 03:05:59', '2016-03-02 03:05:59', '', '', '', '', 13, 5, 6, ''),
(533, 'NONE56d658b7ab3ea3.56427376', 'Mark Lorenz', 'Alcantara', 'Evangelista', '', '', 1, '2016-03-02 11:06:31', '2016-03-02 11:06:31', '', '2016-03-02 11:06:31', '', 1, 1, 5, '2016-03-02 03:06:31', '2016-03-02 03:06:31', '', '', '', '', 13, 5, 6, ''),
(534, 'NONE56d658e0cf9c75.32462192', 'Jeremy', 'Tedlos', 'Bautista', '', '09084086456', 1, '2016-03-02 11:07:12', '2016-03-02 11:07:12', '', '2016-03-02 11:07:12', '', 1, 6, 5, '2016-03-02 03:07:12', '2016-03-02 03:07:12', '', '', '', '', 13, 5, 6, ''),
(535, 'NONE56d658e1cd5cb4.81844394', 'bianca mae ', 'abad ', 'manalo', '', '09071531990', 1, '2016-03-02 11:07:13', '2016-03-02 11:07:13', '', '2016-03-02 11:07:13', '', 2, 6, 5, '2016-03-02 03:07:13', '2016-03-02 03:07:13', '', '', '', '', 13, 5, 6, ''),
(536, 'NONE56d6590ddd8a14.90086095', 'john rey', 'guardiano', 'salvilla', '', '09351568781', 1, '2016-03-02 11:07:57', '2016-03-02 11:07:57', '', '2016-03-02 11:07:57', '', 1, 6, 5, '2016-03-02 03:07:57', '2016-03-02 03:07:57', '', '', '', '', 13, 5, 6, ''),
(537, 'NONE56d6592607a3a6.76543833', 'andrea nicole', 'lumogdang', 'duran', '', '09258481660', 1, '2016-03-02 11:08:22', '2016-03-02 11:08:22', '', '2016-03-02 11:08:22', '', 2, 6, 5, '2016-03-02 03:08:22', '2016-03-02 03:08:22', '', '', '', '', 12, 5, 6, ''),
(538, 'NONE56d6593554ce99.46603587', 'john paul', 'b', 'rebagay', '', '09486613786', 1, '2016-03-02 11:08:37', '2016-03-02 11:08:37', '', '2016-03-02 11:08:37', '', 1, 6, 5, '2016-03-02 03:08:37', '2016-03-02 03:08:37', '', '', '', '', 14, 5, 6, ''),
(539, 'NONE56d65955352a59.92988162', 'david bryan', 'tuiza', 'abino', '', '', 1, '2016-03-02 11:09:09', '2016-03-02 11:09:09', '', '2016-03-02 11:09:09', '', 1, 6, 5, '2016-03-02 03:09:09', '2016-03-02 03:09:09', '', '', '', '', 13, 5, 6, ''),
(540, 'NONE56d6595cb01930.12460030', 'michaela', 'perez', 'espiritu', '', '09354469971', 1, '2016-03-02 11:09:16', '2016-03-02 11:09:16', '', '2016-03-02 11:09:16', '', 2, 6, 5, '2016-03-02 03:09:16', '2016-03-02 03:09:16', '', '', '', '', 13, 5, 6, ''),
(541, 'NONE56d65a048512e3.65506963', 'jenedie', 'siago', 'bulgan', '', '', 1, '2016-03-02 11:12:04', '2016-03-02 11:12:04', '', '2016-03-02 11:12:04', '', 2, 1, 5, '2016-03-02 03:12:04', '2016-03-02 03:12:04', '', '', '', '', 12, 5, 6, ''),
(542, 'NONE56d65a45add599.32827887', 'liza mae', 'estrella', 'devilla', '', '', 1, '2016-03-02 11:13:09', '2016-03-02 11:13:09', '', '2016-03-02 11:13:09', '', 2, 6, 5, '2016-03-02 03:13:09', '2016-03-02 03:13:09', '', '', '', '', 13, 5, 6, ''),
(543, 'NONE56d65a7633c034.07551734', 'Renante', 'Alcantara', 'Dumaraos', '', '02963768064', 1, '2016-03-02 11:13:58', '2016-03-02 11:13:58', '', '2016-03-02 11:13:58', '', 1, 6, 6, '2016-03-02 03:13:58', '2016-03-02 03:13:58', '', '', '', '', 45, 8, 6, 'SEARCA'),
(544, 'NONE56d65ab87f5c85.35867038', 'Julie', 'Garin', 'Ventenilla', '', '09321595281', 1, '2016-03-02 11:15:04', '2016-03-02 11:15:04', '', '2016-03-02 11:15:04', '', 2, 1, 5, '2016-03-02 03:15:04', '2016-03-02 03:15:04', '', '', '', '', 48, 8, 6, 'SEARCA'),
(545, 'NONE56d65b07017e81.35481662', 'KYLE YZZABELLE', 'MANILAG', 'PASCUAL', '', '09999333981', 1, '2016-03-02 11:16:23', '2016-03-02 11:16:23', '', '2016-03-02 11:16:23', '', 2, 1, 5, '2016-03-02 03:16:23', '2016-03-02 03:16:23', '', '', '', '', 12, 5, 6, ''),
(546, 'NONE56d65b214e6633.56647889', 'allysa', 'r', 'paner', '', '09367601800', 1, '2016-03-02 11:16:49', '2016-03-02 11:16:49', '', '2016-03-02 11:16:49', '', 2, 1, 5, '2016-03-02 03:16:49', '2016-03-02 03:16:49', '', '', '', '', 13, 5, 6, ''),
(547, 'NONE56d65b4d8c1534.57007807', 'mekhaila', 'santonia', 'eusebio', '', '09216167951', 1, '2016-03-02 11:17:33', '2016-03-02 11:17:33', '', '2016-03-02 11:17:33', '', 2, 1, 5, '2016-03-02 03:17:33', '2016-03-02 03:17:33', '', '', '', '', 13, 5, 6, ''),
(548, 'NONE56d65b7866cf77.98681747', 'joannah cristy', 'lachica', 'handa', '', '09197340077', 1, '2016-03-02 11:18:16', '2016-03-02 11:18:16', '', '2016-03-02 11:18:16', '', 2, 1, 5, '2016-03-02 03:18:16', '2016-03-02 03:18:16', '', '', '', '', 13, 5, 6, ''),
(549, 'NONE56d66593ac5ce8.89448713', 'ARLEIA', 'LEANO', 'AGUSTIN', '', '09266767527', 1, '2016-03-02 12:01:23', '2016-03-02 12:01:23', '', '2016-03-02 12:01:23', '', 2, 6, 5, '2016-03-02 04:01:23', '2016-03-02 04:01:23', '', '', '', '', 19, 5, 6, ''),
(550, 'NONE56d66594d80de1.39455275', 'ARLEIA', 'LEANO', 'AGUSTIN', '', '09266767527', 1, '2016-03-02 12:01:24', '2016-03-02 12:01:24', '', '2016-03-02 12:01:24', '', 2, 6, 5, '2016-03-02 04:01:24', '2016-03-02 04:01:24', '', '', '', '', 19, 5, 6, ''),
(551, 'NONE56d665955769e6.99755572', 'ARLEIA', 'LEANO', 'AGUSTIN', '', '09266767527', 1, '2016-03-02 12:01:25', '2016-03-02 12:01:25', '', '2016-03-02 12:01:25', '', 2, 6, 5, '2016-03-02 04:01:25', '2016-03-02 04:01:25', '', '', '', '', 19, 5, 6, ''),
(552, 'NONE56d66595e93906.50584393', 'ARLEIA', 'LEANO', 'AGUSTIN', '', '09266767527', 1, '2016-03-02 12:01:25', '2016-03-02 12:01:25', '', '2016-03-02 12:01:25', '', 2, 6, 5, '2016-03-02 04:01:25', '2016-03-02 04:01:25', '', '', '', '', 19, 5, 6, ''),
(553, 'NONE56d665c23b3345.00942271', 'ikue', '', 'nakamura', '', '09053862216', 1, '2016-03-02 12:02:10', '2016-03-02 12:02:10', '', '2016-03-02 12:02:10', '', 2, 6, 5, '2016-03-02 04:02:10', '2016-03-02 04:02:10', '', '', '', '', 22, 5, 6, ''),
(554, 'NONE56d66b19cfaf26.46510013', 'edna', 'alcasid', 'aguilar', '', '09178468812', 1, '2016-03-02 12:24:57', '2016-03-02 12:24:57', '', '2016-03-02 12:24:57', '', 2, 6, 5, '2016-03-02 04:24:57', '2016-03-02 04:24:57', '', '', '', '', 56, 5, 6, 'uplb'),
(555, 'NONE56d66bb42825e3.37853450', 'JHON MIVHAEL ', 'CEBALLO', 'CASTRO', '', '09434054626', 1, '2016-03-02 12:27:32', '2016-03-02 12:27:32', '', '2016-03-02 12:27:32', '', 1, 6, 5, '2016-03-02 04:27:32', '2016-03-02 04:27:32', '', '', '', '', 22, 5, 6, 'UPLB'),
(556, 'NONE56d66c4b4ad7a2.90928511', 'apple joyce', 'f', 'rabosa', '', '09161023230', 1, '2016-03-02 12:30:03', '2016-03-02 12:30:03', '', '2016-03-02 12:30:03', '', 2, 1, 5, '2016-03-02 04:30:03', '2016-03-02 04:30:03', '', '', '', '', 18, 5, 6, ''),
(557, 'NONE56d66c7b22f699.47868893', 'justiniano', 'de Guzman', 'Gil', '', '09176427398', 1, '2016-03-02 12:30:51', '2016-03-02 12:30:51', '', '2016-03-02 12:30:51', '', 1, 6, 6, '2016-03-02 04:30:51', '2016-03-02 04:30:51', '', '', '', '', 59, 5, 6, 'Laguna State Polytechnic University Los Banos'),
(558, 'NONE56d66c8119d621.38496148', 'belen', '', 'quirog', '', '09324191759', 1, '2016-03-02 12:30:57', '2016-03-02 12:30:57', '', '2016-03-02 12:30:57', '', 2, 1, 5, '2016-03-02 04:30:57', '2016-03-02 04:30:57', '', '', '', '', 21, 5, 6, ''),
(559, 'NONE56d66cc6dc6a76.55863085', 'jaylmarvin', 'marquez', 'nova', '', '09072306479', 1, '2016-03-02 12:32:06', '2016-03-02 12:32:06', '', '2016-03-02 12:32:06', '', 1, 1, 5, '2016-03-02 04:32:06', '2016-03-02 04:32:06', '', '', '', '', 19, 5, 6, 'lspu'),
(560, 'NONE56d66ccfdead37.06099950', 'Ralf Ronel', 'Dejumo', 'Ayes', '', '', 1, '2016-03-02 12:32:15', '2016-03-02 12:32:15', '', '2016-03-02 12:32:15', '', 1, 6, 5, '2016-03-02 04:32:15', '2016-03-02 04:32:15', '', '', '', '', 22, 5, 6, 'LSPU-LB'),
(561, 'NONE56d66cf4e86ee8.60874771', 'gladys', 'p', 'delos reyes', '', '09489338720', 1, '2016-03-02 12:32:52', '2016-03-02 12:32:52', '', '2016-03-02 12:32:52', '', 2, 1, 5, '2016-03-02 04:32:52', '2016-03-02 04:32:52', '', '', '', '', 20, 5, 6, 'lspu'),
(562, 'NONE56d6713e9c3b56.56855809', 'Amabelle', 'Aquino', 'Pector', '', '639155149482', 1, '2016-03-02 12:51:10', '2016-03-02 12:51:10', '', '2016-03-02 12:51:10', '', 2, 6, 5, '2016-03-02 04:51:10', '2016-03-02 04:51:10', '', '', '', '', 24, 5, 6, 'UPLB'),
(563, 'NONE56d673b7ba4913.22590216', 'CHARLENE', 'BAUTISTA', 'ARKAINA', '', '09778136682', 1, '2016-03-02 13:01:43', '2016-03-02 13:01:43', '', '2016-03-02 13:01:43', '', 2, 6, 5, '2016-03-02 05:01:43', '2016-03-02 05:01:43', '', '', '', '', 21, 7, 6, 'UPLB'),
(564, 'NONE56d67a3560ad75.73266463', 'ALTHON', 'BATOON', 'CASTRO', '', '09266053345', 1, '2016-03-02 13:29:25', '2016-03-02 13:29:25', '', '2016-03-02 13:29:25', '', 1, 6, 5, '2016-03-02 05:29:25', '2016-03-02 05:29:25', '', '', '', '', 35, 7, 6, 'FPRDI'),
(565, 'NONE56d67a8a70cae2.42078106', 'Jim Leandro', 'Pil', 'Cano', '', '09985622349', 1, '2016-03-02 13:30:50', '2016-03-02 13:30:50', '', '2016-03-02 13:30:50', '', 1, 6, 5, '2016-03-02 05:30:50', '2016-03-02 05:30:50', '', '', '', '', 27, 11, 6, 'Young Professionals for Agricultural Development Philippines (YPARD Philippines)'),
(566, 'NONE56d67ab0dc6a33.49677854', 'joel', 'pablo', 'mari', '', '09152781956', 1, '2016-03-02 13:31:28', '2016-03-02 13:31:28', '', '2016-03-02 13:31:28', '', 1, 6, 6, '2016-03-02 05:31:28', '2016-03-02 05:31:28', '', '', '', '', 59, 5, 6, 'fprdi'),
(567, 'NONE56d67afc886d61.02374585', 'mark shane', 'magcaling', 'labrador', '', '', 1, '2016-03-02 13:32:44', '2016-03-02 13:32:44', '', '2016-03-02 13:32:44', '', 1, 6, 5, '2016-03-02 05:32:44', '2016-03-02 05:32:44', '', '', '', '', 14, 5, 6, 'kapayapaan national high school'),
(568, 'NONE56d67b0f2fc051.82933596', 'renz quinones', 'sornet', 'quinones', '', '', 1, '2016-03-02 13:33:03', '2016-03-02 13:33:03', '', '2016-03-02 13:33:03', '', 1, 1, 5, '2016-03-02 05:33:03', '2016-03-02 05:33:03', '', '', '', '', 14, 5, 6, ''),
(569, 'NONE56d67f6e4fb362.72314282', 'Anita', 'Alcalde', 'Decena', '', '09422553910', 1, '2016-03-02 13:51:42', '2016-03-02 13:51:42', '', '2016-03-02 13:51:42', '', 2, 6, 5, '2016-03-02 05:51:42', '2016-03-02 05:51:42', '', '', '', '', 60, 7, 6, 'DOST-FPRDI'),
(570, 'NONE56d67f8128a319.09563775', 'norma ', 'kalaw', 'torreta', '', '', 1, '2016-03-02 13:52:01', '2016-03-02 13:52:01', '', '2016-03-02 13:52:01', '', 2, 6, 5, '2016-03-02 05:52:01', '2016-03-02 05:52:01', '', '', '', '', 64, 7, 6, 'forest products research and development institute'),
(571, 'NONE56d68030ce4b83.39685713', 'jonalyn', 'avila', 'quising', '', '09756403196', 1, '2016-03-02 13:54:56', '2016-03-02 13:54:56', '', '2016-03-02 13:54:56', '', 2, 6, 5, '2016-03-02 05:54:56', '2016-03-02 05:54:56', '', '', '', '', 18, 5, 6, 'lspu lb'),
(572, 'NONE56d6811d1db239.42371724', 'CARL ANTHONY', 'ORDANES', 'LANTICAN', '', '09154673624', 1, '2016-03-02 13:58:53', '2016-03-02 13:58:53', '', '2016-03-02 13:58:53', '', 1, 6, 5, '2016-03-02 05:58:53', '2016-03-02 05:58:53', '', '', '', '', 27, 7, 6, 'DOST-FPRDI'),
(573, 'NONE56d6816135d6b0.37238253', 'Monina Cheska ', 'Loteria', 'Castro', '', '09278455244', 1, '2016-03-02 14:00:01', '2016-03-02 14:00:01', '', '2016-03-02 14:00:01', '', 2, 6, 5, '2016-03-02 06:00:01', '2016-03-02 06:00:01', '', '', '', '', 25, 7, 6, 'DOST-FPRDI'),
(574, 'NONE56d681949cbce1.50042168', 'Maybell Mariella', 'Aguilar', 'Amador', '', '09285002004', 1, '2016-03-02 14:00:52', '2016-03-02 14:00:52', '', '2016-03-02 14:00:52', '', 2, 6, 5, '2016-03-02 06:00:52', '2016-03-02 06:00:52', '', '', '', '', 27, 7, 6, 'DOST-FPRDI'),
(575, 'NONE56d6819c7db651.87981091', 'Maylin', 'Magpantay', 'Punzalan', '', '09212274777', 1, '2016-03-02 14:01:00', '2016-03-02 14:01:00', '', '2016-03-02 14:01:00', '', 2, 6, 5, '2016-03-02 06:01:00', '2016-03-02 06:01:00', '', '', '', '', 31, 7, 6, 'DOST-FPRDI'),
(576, 'NONE56d681d1e9f1c9.51506708', 'Cecille', 'Almazan', 'Moldez', '', '09064559968', 1, '2016-03-02 14:01:53', '2016-03-02 14:01:53', '', '2016-03-02 14:01:53', '', 2, 6, 6, '2016-03-02 06:01:53', '2016-03-02 06:01:53', '', '', '', '', 29, 7, 6, 'DOST-FPRDI'),
(577, 'NONE56d68636334565.50352702', 'Oliver', 'Obnias', 'Silvestre', '', '09276280084', 1, '2016-03-02 14:20:38', '2016-03-02 14:20:38', '', '2016-03-02 14:20:38', '', 1, 6, 6, '2016-03-02 06:20:38', '2016-03-02 06:20:38', '', '', '', '', 38, 7, 6, 'Crop Science Cluster - Institute of Plant Breeding'),
(578, 'NONE56d6864c5468b5.94874620', 'paulo jerome', 'martin', 'lopez', '', '09057446872', 1, '2016-03-02 14:21:00', '2016-03-02 14:21:00', '', '2016-03-02 14:21:00', '', 1, 6, 5, '2016-03-02 06:21:00', '2016-03-02 06:21:00', '', '', '', '', 22, 11, 6, 'ipb uplb'),
(579, 'NONE56d689d9207468.16547674', 'julius cezar', 'cangao', 'otamias', '', '', 1, '2016-03-02 14:36:09', '2016-03-02 14:36:09', '', '2016-03-02 14:36:09', '', 1, 1, 5, '2016-03-02 06:36:09', '2016-03-02 06:36:09', '', '', '', '', 21, 5, 6, 'school'),
(580, 'NONE56d68a01539269.82149503', 'alpha betto i legaspi', 'iriola', 'legaspi', '', '09061289017', 1, '2016-03-02 14:36:49', '2016-03-02 14:36:49', '', '2016-03-02 14:36:49', '', 1, 1, 5, '2016-03-02 06:36:49', '2016-03-02 06:36:49', '', '', '', '', 20, 5, 6, ''),
(581, 'NONE56d68a518e3ab4.27869093', 'JOHN RYAN', 'MOLINYAWE', 'GELI', '', '09491867012', 1, '2016-03-02 14:38:09', '2016-03-02 14:38:09', '', '2016-03-02 14:38:09', '', 1, 6, 5, '2016-03-02 06:38:09', '2016-03-02 06:38:09', '', '', '', '', 14, 5, 6, ''),
(582, 'NONE56d68aba51cdd4.42863161', 'joey ', 'lalap', 'urrete', '', '09269368852', 1, '2016-03-02 14:39:54', '2016-03-02 14:39:54', '', '2016-03-02 14:39:54', '', 1, 1, 5, '2016-03-02 06:39:54', '2016-03-02 06:39:54', '', '', '', '', 20, 5, 6, 'lspu'),
(583, 'NONE56d68bdd509894.78364617', 'Jorge Gil', 'Carino', 'Angeles', '', '09176309137', 1, '2016-03-02 14:44:45', '2016-03-02 14:44:45', '', '2016-03-02 14:44:45', '', 1, 6, 5, '2016-03-02 06:44:45', '2016-03-02 06:44:45', '', '', '', '', 40, 5, 6, 'Philippine Genome Center - Agriculture, UP Los Banos'),
(584, 'NONE56d68c36b049e3.14795113', 'Sarahme', 'Bondoc', 'Esteban', '', '09279744855', 1, '2016-03-02 14:46:14', '2016-03-02 14:46:14', '', '2016-03-02 14:46:14', '', 2, 6, 6, '2016-03-02 06:46:14', '2016-03-02 06:46:14', '', '', '', '', 42, 7, 6, 'FPRDI'),
(585, 'NONE56d68cc173b7d5.00531695', 'Dwight', 'Agpoon', 'Eusebio', '', '09192557271', 1, '2016-03-02 14:48:33', '2016-03-02 14:48:33', '', '2016-03-02 14:48:33', '', 1, 6, 6, '2016-03-02 06:48:33', '2016-03-02 06:48:33', '', '', '', '', 59, 7, 6, 'FPRDI'),
(586, 'NONE56d68cd671bfc7.71932463', 'Grecelda', 'Alvero', 'Eusebio', '', '09193784297', 1, '2016-03-02 14:48:54', '2016-03-02 14:48:54', '', '2016-03-02 14:48:54', '', 2, 6, 6, '2016-03-02 06:48:54', '2016-03-02 06:48:54', '', '', '', '', 60, 7, 6, 'FPRDI-DOST'),
(587, 'NONE56d697cd735681.15463525', 'Freddie', 'Manendeg', 'Ordinario', '', '09073839181', 1, '2016-03-02 15:35:41', '2016-03-02 15:35:41', '', '2016-03-02 15:35:41', '', 1, 6, 6, '2016-03-02 07:35:41', '2016-03-02 07:35:41', '', '', '', '', 47, 7, 6, 'FPRDI'),
(588, 'NONE56d699b0c193d2.22847227', 'JOSEPH VILLIMORE', 'DIEZ', 'GERONIMO', '', '09355047560', 1, '2016-03-02 15:43:44', '2016-03-02 15:43:44', '', '2016-03-02 15:43:44', '', 1, 6, 5, '2016-03-02 07:43:44', '2016-03-02 07:43:44', '', '', '', '', 23, 7, 6, 'Laguna State Polytechnic University - Los Banos Campus'),
(589, 'NONE56d69ab8598607.35486733', 'jerome', 'esportuno', 'telig', '', '09362379831', 1, '2016-03-02 15:48:08', '2016-03-02 15:48:08', '', '2016-03-02 15:48:08', '', 1, 6, 5, '2016-03-02 07:48:08', '2016-03-02 07:48:08', '', '', '', '', 21, 5, 6, 'lspu'),
(590, 'NONE56d69af6c9e5e8.63480762', 'JOANNE', 'GALANG', 'TRINOS', '', '09351061954', 1, '2016-03-02 15:49:10', '2016-03-02 15:49:10', '', '2016-03-02 15:49:10', '', 2, 6, 5, '2016-03-02 07:49:10', '2016-03-02 07:49:10', '', '', '', '', 17, 5, 6, 'LAGUNA STATE POLYTECHNIC UNIVERSITY'),
(591, 'NONE56d69b196b21c2.40542915', 'john paul', 'Bataller', 'Aguilar', '', '09071375880', 1, '2016-03-02 15:49:45', '2016-03-02 15:49:45', '', '2016-03-02 15:49:45', '', 1, 6, 5, '2016-03-02 07:49:45', '2016-03-02 07:49:45', '', '', '', '', 18, 5, 6, 'Laguna State Polytechnic University'),
(592, 'NONE56d69b3a1b6895.30440927', 'LEONORA', 'BAYLON', 'MISOLAS', '', '09264853901', 1, '2016-03-02 15:50:18', '2016-03-02 15:50:18', '', '2016-03-02 15:50:18', '', 2, 6, 5, '2016-03-02 07:50:18', '2016-03-02 07:50:18', '', '', '', '', 17, 5, 6, 'Laguna State Polytechnic University'),
(593, 'NONE56d69b52dac019.78439258', 'layca', 'dela luna', 'penamante', '', '09263073541', 1, '2016-03-02 15:50:42', '2016-03-02 15:50:42', '', '2016-03-02 15:50:42', '', 2, 6, 5, '2016-03-02 07:50:42', '2016-03-02 07:50:42', '', '', '', '', 17, 5, 6, 'LSPU'),
(594, 'NONE56d69b7762f491.52893177', 'johnrey', 'dingco', 'palconit', '', '09053944606', 1, '2016-03-02 15:51:19', '2016-03-02 15:51:19', '', '2016-03-02 15:51:19', '', 1, 6, 5, '2016-03-02 07:51:19', '2016-03-02 07:51:19', '', '', '', '', 17, 5, 6, 'LSPU-LB'),
(595, 'NONE56d69b914fd739.45824020', 'Leo', 'Molina', 'Omilig', '', '09353292852', 1, '2016-03-02 15:51:45', '2016-03-02 15:51:45', '', '2016-03-02 15:51:45', '', 1, 6, 5, '2016-03-02 07:51:45', '2016-03-02 07:51:45', '', '', '', '', 19, 5, 6, 'LSPU LB'),
(596, 'NONE56d69be61096d9.07739631', 'NICANOR NEIL ', 'POLICARPIO', 'LEDESMA', '', '09367840106', 1, '2016-03-02 15:53:10', '2016-03-02 15:53:10', '', '2016-03-02 15:53:10', '', 1, 6, 5, '2016-03-02 07:53:10', '2016-03-02 07:53:10', '', '', '', '', 18, 5, 6, 'SCHOOL'),
(597, 'NONE56d69c1a8bf0c7.19862913', 'RAIZA', 'DANCEL', 'GONZALES', '', '09231082609', 1, '2016-03-02 15:54:02', '2016-03-02 15:54:02', '', '2016-03-02 15:54:02', '', 2, 1, 5, '2016-03-02 07:54:02', '2016-03-02 07:54:02', '', '', '', '', 21, 5, 6, 'UP MARINE SCIENCE INSTITUTE'),
(598, 'NONE56d69c1aaf2817.09281520', 'RAIZA', 'DANCEL', 'GONZALES', '', '09231082609', 1, '2016-03-02 15:54:02', '2016-03-02 15:54:02', '', '2016-03-02 15:54:02', '', 2, 1, 5, '2016-03-02 07:54:02', '2016-03-02 07:54:02', '', '', '', '', 21, 5, 6, 'UP MARINE SCIENCE INSTITUTE'),
(599, 'NONE56d69c50dfcd31.30057280', 'RAIZA', 'DANCEL', 'GONZALES', '', '09231082609', 1, '2016-03-02 15:54:56', '2016-03-02 15:54:56', '', '2016-03-02 15:54:56', '', 2, 1, 5, '2016-03-02 07:54:56', '2016-03-02 07:54:56', '', '', '', '', 21, 5, 6, 'UP MARINE SCIENCE INSTITUTE'),
(600, 'NONE56d6a4b9dcaab3.75959274', 'Kien', 'jimenez', 'papagayo', '', '09991768856', 1, '2016-03-02 16:30:49', '2016-03-02 16:30:49', '', '2016-03-02 16:30:49', '', 1, 6, 5, '2016-03-02 08:30:49', '2016-03-02 08:30:49', '', '', '', '', 14, 5, 6, 'Los banos national high school (poblacion)'),
(601, 'NONE56d6a52653cf45.04001030', 'Erica', 'Jimenez', 'Papagayo', '', '09991768856', 1, '2016-03-02 16:32:38', '2016-03-02 16:32:38', '', '2016-03-02 16:32:38', '', 2, 6, 5, '2016-03-02 08:32:38', '2016-03-02 08:32:38', '', '', '', '', 15, 5, 6, 'los banos national high school (poblacion)'),
(602, 'NONE56d6a6046fd380.62326455', 'Erica Mae', 'M', 'Pajares', '', '', 1, '2016-03-02 16:36:20', '2016-03-02 16:36:20', '', '2016-03-02 16:36:20', '', 2, 6, 5, '2016-03-02 08:36:20', '2016-03-02 08:36:20', '', '', '', '', 13, 5, 6, 'LBNHS Poblacion'),
(603, 'NONE56d6a63ec2f289.70010898', 'EUNICE', '', 'DE LUNA', '', '', 1, '2016-03-02 16:37:18', '2016-03-02 16:37:18', '', '2016-03-02 16:37:18', '', 2, 6, 5, '2016-03-02 08:37:18', '2016-03-02 08:37:18', '', '', '', '', 13, 5, 6, 'LBNHS POBLACION'),
(604, 'NONE56d6a648e870d9.61704814', 'Nicola Heart', 'B', 'Sigua', '', '', 1, '2016-03-02 16:37:28', '2016-03-02 16:37:28', '', '2016-03-02 16:37:28', '', 2, 6, 5, '2016-03-02 08:37:28', '2016-03-02 08:37:28', '', '', '', '', 13, 5, 6, 'Los Banos National High School (Poblacion)'),
(605, 'NONE56d6a64919a2d0.06889729', 'Nicola Heart', 'B', 'Sigua', '', '', 1, '2016-03-02 16:37:29', '2016-03-02 16:37:29', '', '2016-03-02 16:37:29', '', 2, 6, 5, '2016-03-02 08:37:29', '2016-03-02 08:37:29', '', '', '', '', 13, 5, 6, 'Los Banos National High School (Poblacion)'),
(606, 'NONE56d6a669916016.44237408', 'CRISTEL LYN', '', 'MADRIAGA', '', '', 1, '2016-03-02 16:38:01', '2016-03-02 16:38:01', '', '2016-03-02 16:38:01', '', 2, 6, 5, '2016-03-02 08:38:01', '2016-03-02 08:38:01', '', '', '', '', 13, 5, 6, 'LBNHS POBLACION'),
(607, 'NONE56d6a6abf0b945.37337382', 'JESSA MARIE', '', 'NUNEZ', '', '', 1, '2016-03-02 16:39:07', '2016-03-02 16:39:07', '', '2016-03-02 16:39:07', '', 2, 6, 5, '2016-03-02 08:39:07', '2016-03-02 08:39:07', '', '', '', '', 13, 5, 6, 'LBNHS POBLACION'),
(608, 'NONE56d6a6d2a3ba17.65771964', 'CASANDRA', '', 'MALABANAN', '', '', 1, '2016-03-02 16:39:46', '2016-03-02 16:39:46', '', '2016-03-02 16:39:46', '', 2, 6, 5, '2016-03-02 08:39:46', '2016-03-02 08:39:46', '', '', '', '', 12, 5, 6, 'LBNHS POBLACION'),
(609, 'NONE56d6a6f193fcc9.78328108', 'Reizlyn', 'A', 'Bellas', '', '', 1, '2016-03-02 16:40:17', '2016-03-02 16:40:17', '', '2016-03-02 16:40:17', '', 2, 6, 5, '2016-03-02 08:40:17', '2016-03-02 08:40:17', '', '', '', '', 13, 5, 6, 'Los Banos National High School (Poblacion)'),
(610, 'NONE56d6a6fc39ff10.43057253', 'PRECIOUS', '', 'EUSEBIO', '', '', 1, '2016-03-02 16:40:28', '2016-03-02 16:40:28', '', '2016-03-02 16:40:28', '', 2, 6, 5, '2016-03-02 08:40:28', '2016-03-02 08:40:28', '', '', '', '', 13, 5, 6, 'LBNHS POBLACION'),
(611, 'NONE56d6a73e94bdd9.51528868', 'EMALYN', 'C', 'BOLADO', '', '', 1, '2016-03-02 16:41:34', '2016-03-02 16:41:34', '', '2016-03-02 16:41:34', '', 2, 6, 6, '2016-03-02 08:41:34', '2016-03-02 08:41:34', '', '', '', '', 42, 8, 6, 'UPLBFI'),
(612, 'NONE56d6a74d3e8846.73253057', 'May Ann', '', 'Florentino', '', '09165963738', 1, '2016-03-02 16:41:49', '2016-03-02 16:41:49', '', '2016-03-02 16:41:49', '', 2, 6, 5, '2016-03-02 08:41:49', '2016-03-02 08:41:49', '', '', '', '', 13, 5, 6, 'Los Banos National High School (Poblacion)'),
(613, 'NONE56d6a7a848b271.93717416', 'Axel', '', 'Dumlao', '', '09335046060', 1, '2016-03-02 16:43:20', '2016-03-02 16:43:20', '', '2016-03-02 16:43:20', '', 2, 6, 5, '2016-03-02 08:43:20', '2016-03-02 08:43:20', '', '', '', '', 13, 5, 6, 'Los Banos National High School (Poblacion)'),
(614, 'NONE56d7867a2ea283.83138158', 'Joni Mae', 'De Guzman', 'Gonzaga', '', '09163406891', 1, '2016-03-03 08:34:02', '2016-03-03 08:34:02', '', '2016-03-03 08:34:02', '', 2, 1, 5, '2016-03-03 00:34:02', '2016-03-03 00:34:02', '', '', '', '', 24, 7, 6, 'DOST-PCIEERD'),
(615, 'NONE56d78773b56114.09765984', 'Joshua', 'Adefuin', 'Ogoy', '', '09073471575', 1, '2016-03-03 08:38:11', '2016-03-03 08:38:11', '', '2016-03-03 08:38:11', '', 1, 6, 5, '2016-03-03 00:38:11', '2016-03-03 00:38:11', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(616, 'NONE56d7878b58aaa1.27963912', 'VON VINCENT ', 'O.', 'VISTA', '', '09972257507', 1, '2016-03-03 08:38:35', '2016-03-03 08:38:35', '', '2016-03-03 08:38:35', '', 1, 6, 5, '2016-03-03 00:38:35', '2016-03-03 00:38:35', '', '', '', '', 14, 5, 6, 'PEDRO GUEVARA MEMORIAL NATIONAL HIGH SCHOOL'),
(617, 'NONE56d787c14e3a88.01492473', 'MA. SOPPHIA ELLEINA', 'C.', 'BRISUENO', '', 'NA', 1, '2016-03-03 08:39:29', '2016-03-03 08:39:29', '', '2016-03-03 08:39:29', '', 2, 6, 5, '2016-03-03 00:39:29', '2016-03-03 00:39:29', '', '', '', '', 15, 5, 6, 'PGMNHS'),
(618, 'NONE56d787ed8723a2.46824782', 'John Renz', 'Conde', 'Oliveros', '', '09122673889', 1, '2016-03-03 08:40:13', '2016-03-03 08:40:13', '', '2016-03-03 08:40:13', '', 1, 6, 5, '2016-03-03 00:40:13', '2016-03-03 00:40:13', '', '', '', '', 14, 5, 6, 'Pedro Guevara National High School'),
(619, 'NONE56d78802399369.26257769', 'ALLETH GABRIEL', 'RAMIREZ', 'DUPAYA', '', '09293923844', 1, '2016-03-03 08:40:34', '2016-03-03 08:40:34', '', '2016-03-03 08:40:34', '', 1, 6, 5, '2016-03-03 00:40:34', '2016-03-03 00:40:34', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(620, 'NONE56d78802b496a0.51976903', 'ALLETH GABRIEL', 'RAMIREZ', 'DUPAYA', '', '09293923844', 1, '2016-03-03 08:40:34', '2016-03-03 08:40:34', '', '2016-03-03 08:40:34', '', 1, 6, 5, '2016-03-03 00:40:34', '2016-03-03 00:40:34', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(621, 'NONE56d78803544690.22283523', 'ALLETH GABRIEL', 'RAMIREZ', 'DUPAYA', '', '09293923844', 1, '2016-03-03 08:40:35', '2016-03-03 08:40:35', '', '2016-03-03 08:40:35', '', 1, 6, 5, '2016-03-03 00:40:35', '2016-03-03 00:40:35', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(622, 'NONE56d788438b92e7.29494884', 'Paul', 'Bautista', 'Batilo', '', '09364591557', 1, '2016-03-03 08:41:39', '2016-03-03 08:41:39', '', '2016-03-03 08:41:39', '', 1, 6, 5, '2016-03-03 00:41:39', '2016-03-03 00:41:39', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(623, 'NONE56d7884ede6b39.77374174', 'Ma. Robelyn', 'Eleria', 'Acoba', '', '09985528535', 1, '2016-03-03 08:41:50', '2016-03-03 08:41:50', '', '2016-03-03 08:41:50', '', 2, 6, 5, '2016-03-03 00:41:50', '2016-03-03 00:41:50', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(624, 'NONE56d78895c77c24.43070685', 'amanda therese', 'jose', 'alcazar', '', '09165392777', 1, '2016-03-03 08:43:01', '2016-03-03 08:43:01', '', '2016-03-03 08:43:01', '', 2, 6, 7, '2016-03-03 00:43:01', '2016-03-03 00:43:01', '', '', '', '', 15, 5, 6, 'Pedro GUevara Memorial NAtional High School'),
(625, 'NONE56d78895eda8e0.14188512', 'amanda therese', 'jose', 'alcazar', '', '09165392777', 1, '2016-03-03 08:43:02', '2016-03-03 08:43:02', '', '2016-03-03 08:43:02', '', 2, 6, 7, '2016-03-03 00:43:02', '2016-03-03 00:43:02', '', '', '', '', 15, 5, 6, 'Pedro GUevara Memorial NAtional High School'),
(626, 'NONE56d788ab98ddb9.22608635', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:23', '2016-03-03 08:43:23', '', '2016-03-03 08:43:23', '', 1, 6, 5, '2016-03-03 00:43:23', '2016-03-03 00:43:23', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(627, 'NONE56d788ab9b25d6.80325653', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:23', '2016-03-03 08:43:23', '', '2016-03-03 08:43:23', '', 1, 6, 5, '2016-03-03 00:43:23', '2016-03-03 00:43:23', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(628, 'NONE56d788aca1ffd5.55119281', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:24', '2016-03-03 08:43:24', '', '2016-03-03 08:43:24', '', 1, 6, 5, '2016-03-03 00:43:24', '2016-03-03 00:43:24', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(629, 'NONE56d788aca39409.23041368', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:24', '2016-03-03 08:43:24', '', '2016-03-03 08:43:24', '', 1, 6, 5, '2016-03-03 00:43:24', '2016-03-03 00:43:24', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(630, 'NONE56d788acdc4718.45631237', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:24', '2016-03-03 08:43:24', '', '2016-03-03 08:43:24', '', 1, 6, 5, '2016-03-03 00:43:24', '2016-03-03 00:43:24', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(631, 'NONE56d788acebb986.04166953', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(632, 'NONE56d788ad080539.08708061', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(633, 'NONE56d788ad13f8b6.70570976', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(634, 'NONE56d788ad1c65e4.51676067', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(635, 'NONE56d788ad1c7828.70521839', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(636, 'NONE56d788ad177522.27844088', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(637, 'NONE56d788ad2a4d22.21157480', 'Godwin', 'Larona', 'Monzon', '', '09258692002', 1, '2016-03-03 08:43:25', '2016-03-03 08:43:25', '', '2016-03-03 08:43:25', '', 1, 6, 5, '2016-03-03 00:43:25', '2016-03-03 00:43:25', '', '', '', '', 14, 5, 6, 'PGMNHS'),
(638, 'NONE56d788eadb1fb8.76320520', 'Jan Louis', 'Toledo', 'Ramirez', '', '09367138860', 1, '2016-03-03 08:44:26', '2016-03-03 08:44:26', '', '2016-03-03 08:44:26', '', 1, 6, 5, '2016-03-03 00:44:26', '2016-03-03 00:44:26', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(639, 'NONE56d788f14b7fe5.95133183', 'John Patrick', 'Maghirang', 'Paril', '', '09491756469', 1, '2016-03-03 08:44:33', '2016-03-03 08:44:33', '', '2016-03-03 08:44:33', '', 1, 6, 5, '2016-03-03 00:44:33', '2016-03-03 00:44:33', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High Schoola'),
(640, 'NONE56d78a2101f4f4.74404546', 'Trisha Mae', 'Valiente', 'Revolteado', '', '09176921831', 1, '2016-03-03 08:49:37', '2016-03-03 08:49:37', '', '2016-03-03 08:49:37', '', 2, 6, 8, '2016-03-03 00:49:37', '2016-03-03 00:49:37', '', '', '', '', 14, 5, 6, 'Apple Inc.'),
(641, 'NONE56d78a6ef0abf9.75511003', 'rowena', 'dela cruz', 'valencia', '', '09074478707', 1, '2016-03-03 08:50:55', '2016-03-03 08:50:55', '', '2016-03-03 08:50:55', '', 2, 1, 6, '2016-03-03 00:50:55', '2016-03-03 00:50:55', '', '', '', '', 38, 5, 6, ''),
(642, 'NONE56d78ab9076b00.23927241', 'Arlene', 'Garcia', 'Torres', '', '09155007860', 1, '2016-03-03 08:52:09', '2016-03-03 08:52:09', '', '2016-03-03 08:52:09', '', 2, 6, 6, '2016-03-03 00:52:09', '2016-03-03 00:52:09', '', '', '', '', 54, 7, 6, 'DOST-FPRDI'),
(643, 'NONE56d78ab966b1b5.49730781', 'Arlene', 'Garcia', 'Torres', '', '09155007860', 1, '2016-03-03 08:52:09', '2016-03-03 08:52:09', '', '2016-03-03 08:52:09', '', 2, 6, 6, '2016-03-03 00:52:09', '2016-03-03 00:52:09', '', '', '', '', 54, 7, 6, 'DOST-FPRDI'),
(644, 'NONE56d78b20b70ac3.66861094', 'josephine', 'plantilla', 'carandang', '', '', 1, '2016-03-03 08:53:52', '2016-03-03 08:53:52', '', '2016-03-03 08:53:52', '', 2, 6, 6, '2016-03-03 00:53:52', '2016-03-03 00:53:52', '', '', '', '', 64, 7, 6, 'FPRDI'),
(645, 'NONE56d78b2c319956.96878690', 'kathleen', 'suazo', 'bueno', '', '09097561427', 1, '2016-03-03 08:54:04', '2016-03-03 08:54:04', '', '2016-03-03 08:54:04', '', 2, 1, 5, '2016-03-03 00:54:04', '2016-03-03 00:54:04', '', '', '', '', 15, 5, 6, ''),
(646, 'NONE56d78b4bb01581.02511426', 'lyza jane', 'nieva', 'halayahay', '', '09983953322', 1, '2016-03-03 08:54:35', '2016-03-03 08:54:35', '', '2016-03-03 08:54:35', '', 2, 1, 5, '2016-03-03 00:54:35', '2016-03-03 00:54:35', '', '', '', '', 14, 5, 6, ''),
(647, 'NONE56d78b7ad07a71.68483500', 'KAREN', 'AMBROCIO', 'CORONADO', '', '09069081897', 1, '2016-03-03 08:55:22', '2016-03-03 08:55:22', '', '2016-03-03 08:55:22', '', 2, 1, 5, '2016-03-03 00:55:22', '2016-03-03 00:55:22', '', '', '', '', 14, 5, 6, ''),
(648, 'NONE56d78c09cf2e70.35182879', 'RONELIA', 'OBILLO', 'LALAP', '', '', 1, '2016-03-03 08:57:45', '2016-03-03 08:57:45', '', '2016-03-03 08:57:45', '', 2, 6, 6, '2016-03-03 00:57:45', '2016-03-03 00:57:45', '', '', '', '', 43, 7, 6, 'FPRDI'),
(649, 'NONE56d78d22b63991.76137697', 'wenceslao ', 'villamin', 'oliveros', '', '09071662637', 1, '2016-03-03 09:02:26', '2016-03-03 09:02:26', '', '2016-03-03 09:02:26', '', 1, 6, 5, '2016-03-03 01:02:26', '2016-03-03 01:02:26', '', '', '', '', 47, 7, 6, 'deped'),
(650, 'NONE56d78d33363e92.27366916', 'mark john ', 'toscano', 'visitacion', '', '09107417071', 1, '2016-03-03 09:02:43', '2016-03-03 09:02:43', '', '2016-03-03 09:02:43', '', 1, 6, 5, '2016-03-03 01:02:43', '2016-03-03 01:02:43', '', '', '', '', 15, 5, 6, ''),
(651, 'NONE56d78d732aca06.44335336', 'joshua', 'camarite', 'dela cruz', '', '09296664585', 1, '2016-03-03 09:03:47', '2016-03-03 09:03:47', '', '2016-03-03 09:03:47', '', 1, 6, 5, '2016-03-03 01:03:47', '2016-03-03 01:03:47', '', '', '', '', 14, 5, 6, ''),
(652, 'NONE56d78d7b452bd8.48881699', 'alexie ', 'germedia', 'gabot', '', '09984189079', 1, '2016-03-03 09:03:55', '2016-03-03 09:03:55', '', '2016-03-03 09:03:55', '', 2, 6, 5, '2016-03-03 01:03:55', '2016-03-03 01:03:55', '', '', '', '', 16, 5, 6, ''),
(653, 'NONE56d78dbf13d600.66110833', 'gesrelle', 'dilao', 'torres', '', '', 1, '2016-03-03 09:05:03', '2016-03-03 09:05:03', '', '2016-03-03 09:05:03', '', 2, 6, 5, '2016-03-03 01:05:03', '2016-03-03 01:05:03', '', '', '', '', 15, 5, 6, ''),
(654, 'NONE56d78dc5d49be9.55877230', 'ruth', 'arroyo', 'juarez', '', '09094515724', 1, '2016-03-03 09:05:09', '2016-03-03 09:05:09', '', '2016-03-03 09:05:09', '', 2, 6, 5, '2016-03-03 01:05:09', '2016-03-03 01:05:09', '', '', '', '', 15, 5, 6, ''),
(655, 'NONE56d7901d94ae34.88121681', 'virginia', 'durante', 'ompad', '', '09307003118', 1, '2016-03-03 09:15:09', '2016-03-03 09:15:09', '', '2016-03-03 09:15:09', '', 2, 1, 5, '2016-03-03 01:15:09', '2016-03-03 01:15:09', '', '', '', '', 30, 7, 6, 'PhilRice'),
(656, 'NONE56d7901e51dcb9.26787404', 'virginia', 'durante', 'ompad', '', '09307003118', 1, '2016-03-03 09:15:10', '2016-03-03 09:15:10', '', '2016-03-03 09:15:10', '', 2, 1, 5, '2016-03-03 01:15:10', '2016-03-03 01:15:10', '', '', '', '', 30, 7, 6, 'PhilRice'),
(657, 'NONE56d7917f1127e8.28238253', 'Jose Simeon Francisco ', 'Jara', 'Montes', '', '09258406574', 1, '2016-03-03 09:21:03', '2016-03-03 09:21:03', '', '2016-03-03 09:21:03', '', 1, 1, 5, '2016-03-03 01:21:03', '2016-03-03 01:21:03', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(658, 'NONE56d791bd98d6b3.69415667', 'Danie Drew', 'Ciolo', 'Batacan', '', '09273414859', 1, '2016-03-03 09:22:05', '2016-03-03 09:22:05', '', '2016-03-03 09:22:05', '', 2, 1, 5, '2016-03-03 01:22:05', '2016-03-03 01:22:05', '', '', '', '', 14, 5, 6, 'Laguna Science National High School'),
(659, 'NONE56d791ce0bc362.60695456', 'nouwen', 'rico', 'hamto', '', '09158984669', 1, '2016-03-03 09:22:22', '2016-03-03 09:22:22', '', '2016-03-03 09:22:22', '', 1, 1, 5, '2016-03-03 01:22:22', '2016-03-03 01:22:22', '', '', '', '', 15, 5, 6, ''),
(660, 'NONE56d791ff391f48.11987639', 'Hannah Joy', 'Lopez', 'Labitoria', '', '', 1, '2016-03-03 09:23:11', '2016-03-03 09:23:11', '', '2016-03-03 09:23:11', '', 2, 1, 5, '2016-03-03 01:23:11', '2016-03-03 01:23:11', '', '', '', '', 14, 5, 6, 'Laguna Science National High School'),
(661, 'NONE56d7921bd642b8.44005685', 'Rica Beatrice ', 'Lanuang', 'Wagan', '', '09157518192', 1, '2016-03-03 09:23:39', '2016-03-03 09:23:39', '', '2016-03-03 09:23:39', '', 2, 1, 5, '2016-03-03 01:23:39', '2016-03-03 01:23:39', '', '', '', '', 14, 5, 6, 'laguna science highschool'),
(662, 'NONE56d7926e2f4d11.49682572', 'Michael', 'Bontor', 'Lim Suan', '', '09173666196', 1, '2016-03-03 09:25:02', '2016-03-03 09:25:02', '', '2016-03-03 09:25:02', '', 1, 6, 5, '2016-03-03 01:25:02', '2016-03-03 01:25:02', '', '', '', '', 15, 5, 6, ''),
(663, 'NONE56d79279519609.01459699', 'lovely kaytte', 'lupo', 'de claro', '', '09158202557', 1, '2016-03-03 09:25:13', '2016-03-03 09:25:13', '', '2016-03-03 09:25:13', '', 2, 6, 5, '2016-03-03 01:25:13', '2016-03-03 01:25:13', '', '', '', '', 15, 5, 6, 'laguna science national high school'),
(664, 'NONE56d792b37ebf07.91032471', 'Peter Joseph', 'Penalosa', 'Gellado', '', '09470095219', 1, '2016-03-03 09:26:11', '2016-03-03 09:26:11', '', '2016-03-03 09:26:11', '', 1, 6, 5, '2016-03-03 01:26:11', '2016-03-03 01:26:11', '', '', '', '', 15, 5, 6, ''),
(665, 'NONE56d792c6057740.01601797', 'tricia anne', 'capuno', 'husenia', '', '09185748606', 1, '2016-03-03 09:26:30', '2016-03-03 09:26:30', '', '2016-03-03 09:26:30', '', 2, 6, 5, '2016-03-03 01:26:30', '2016-03-03 01:26:30', '', '', '', '', 15, 5, 6, 'laguna science national high school'),
(666, 'NONE56d792e6598d59.16484475', 'kyle', 'quibal', 'victoria', '', '09436811942', 1, '2016-03-03 09:27:02', '2016-03-03 09:27:02', '', '2016-03-03 09:27:02', '', 2, 6, 5, '2016-03-03 01:27:02', '2016-03-03 01:27:02', '', '', '', '', 14, 5, 6, 'laguna science national highschool'),
(667, 'NONE56d793170bcef9.05861422', 'Clark Hannah', 'Hizon', 'Baloncio', '', '09069121437', 1, '2016-03-03 09:27:51', '2016-03-03 09:27:51', '', '2016-03-03 09:27:51', '', 2, 6, 5, '2016-03-03 01:27:51', '2016-03-03 01:27:51', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(668, 'NONE56d7933aeb9e81.84499861', 'audel', 'victoria', 'mosteiro', '', '09054080096', 1, '2016-03-03 09:28:26', '2016-03-03 09:28:26', '', '2016-03-03 09:28:26', '', 1, 6, 6, '2016-03-03 01:28:26', '2016-03-03 01:28:26', '', '', '', '', 45, 7, 6, 'fprdi'),
(669, 'NONE56d79381b76435.58204749', 'dan zamirre', 'baylon', 'ramirez', '', '09081694842', 1, '2016-03-03 09:29:37', '2016-03-03 09:29:37', '', '2016-03-03 09:29:37', '', 1, 6, 5, '2016-03-03 01:29:37', '2016-03-03 01:29:37', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(670, 'NONE56d793876a2740.68529685', 'Gloria Therese', 'Deauna', 'Eusebio', '', '09066023047', 1, '2016-03-03 09:29:43', '2016-03-03 09:29:43', '', '2016-03-03 09:29:43', '', 2, 6, 5, '2016-03-03 01:29:43', '2016-03-03 01:29:43', '', '', '', '', 15, 5, 6, 'Los Banos National High School'),
(671, 'NONE56d793dbba35a5.09979002', 'Erika Mae', 'Verano', 'Marmol', '', '09354600386', 1, '2016-03-03 09:31:07', '2016-03-03 09:31:07', '', '2016-03-03 09:31:07', '', 2, 6, 5, '2016-03-03 01:31:07', '2016-03-03 01:31:07', '', '', '', '', 15, 5, 6, 'Los Banos National Highschool'),
(672, 'NONE56d793ea0c7800.71772581', 'Dickon', 'Delos Reyes', 'Salazar', '', '09952584110', 1, '2016-03-03 09:31:22', '2016-03-03 09:31:22', '', '2016-03-03 09:31:22', '', 1, 6, 5, '2016-03-03 01:31:22', '2016-03-03 01:31:22', '', '', '', '', 14, 5, 6, 'LBNHS-BM'),
(673, 'NONE56d7941a9846d0.13998507', 'Michaela', 'Galsim', 'Horcajo', '', '09105115165', 1, '2016-03-03 09:32:10', '2016-03-03 09:32:10', '', '2016-03-03 09:32:10', '', 2, 6, 5, '2016-03-03 01:32:10', '2016-03-03 01:32:10', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(674, 'NONE56d794236d1cc2.57005130', 'Yvanne', 'Dela Cruz', 'Borgonia', '', '09294621312', 1, '2016-03-03 09:32:19', '2016-03-03 09:32:19', '', '2016-03-03 09:32:19', '', 1, 6, 5, '2016-03-03 01:32:19', '2016-03-03 01:32:19', '', '', '', '', 15, 5, 6, 'Los Banos National High School, BM'),
(675, 'NONE56d7948d21f5a0.26864466', 'Princess Regine', 'Mercado', 'Sicat', '', '09351578478', 1, '2016-03-03 09:34:05', '2016-03-03 09:34:05', '', '2016-03-03 09:34:05', '', 2, 6, 5, '2016-03-03 01:34:05', '2016-03-03 01:34:05', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(676, 'NONE56d794ba227aa1.28352653', 'Yvonne', 'Mundin', 'Bandong', '', '', 1, '2016-03-03 09:34:50', '2016-03-03 09:34:50', '', '2016-03-03 09:34:50', '', 2, 1, 5, '2016-03-03 01:34:50', '2016-03-03 01:34:50', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(677, 'NONE56d794da847692.68371963', 'Carl Ak', 'Del Rosario', 'Santos', '', '09951302636', 1, '2016-03-03 09:35:22', '2016-03-03 09:35:22', '', '2016-03-03 09:35:22', '', 1, 6, 5, '2016-03-03 01:35:22', '2016-03-03 01:35:22', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(678, 'NONE56d79505e33202.86420829', 'JOANNA MARIE ', 'DIAZ', 'PAGNE', '', '09988876731', 1, '2016-03-03 09:36:05', '2016-03-03 09:36:05', '', '2016-03-03 09:36:05', '', 2, 6, 6, '2016-03-03 01:36:05', '2016-03-03 01:36:05', '', '', '', '', 34, 5, 6, 'LSPU-LOS BANOS CAMPUS');
INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(679, 'NONE56d79526f22847.73474463', 'Zyrill Renzo', 'Canoy', 'Penaflor', '', '09072825214', 1, '2016-03-03 09:36:39', '2016-03-03 09:36:39', '', '2016-03-03 09:36:39', '', 1, 6, 5, '2016-03-03 01:36:39', '2016-03-03 01:36:39', '', '', '', '', 14, 5, 6, 'LBNHS-BM'),
(680, 'NONE56d7955f785a24.96650158', 'Jhustine Jeune', 'Guevarra', 'Opena', '', '09055950378', 1, '2016-03-03 09:37:35', '2016-03-03 09:37:35', '', '2016-03-03 09:37:35', '', 1, 6, 5, '2016-03-03 01:37:35', '2016-03-03 01:37:35', '', '', '', '', 15, 5, 6, 'LBNHS BM'),
(681, 'NONE56d7956f8d4933.25972028', 'Stephen', 'Garin', 'Martinez', '', '09070787337', 1, '2016-03-03 09:37:51', '2016-03-03 09:37:51', '', '2016-03-03 09:37:51', '', 1, 6, 5, '2016-03-03 01:37:51', '2016-03-03 01:37:51', '', '', '', '', 16, 5, 6, 'LBNHS-BM'),
(682, 'NONE56d7959be7f3d5.30558401', 'PRINCESS', '', 'FERNANDEZ', '', '09199606370', 1, '2016-03-03 09:38:35', '2016-03-03 09:38:35', '', '2016-03-03 09:38:35', '', 2, 6, 5, '2016-03-03 01:38:35', '2016-03-03 01:38:35', '', '', '', '', 15, 5, 6, 'LBNHS BM'),
(683, 'NONE56d795a0652194.55958006', 'Jose Emmanuel', 'Ustaris', 'Ortega', '', '09997386837', 1, '2016-03-03 09:38:40', '2016-03-03 09:38:40', '', '2016-03-03 09:38:40', '', 1, 1, 5, '2016-03-03 01:38:40', '2016-03-03 01:38:40', '', '', '', '', 16, 5, 6, ''),
(684, 'NONE56d795e00ad830.08361883', 'SHAN RYKEL', 'UNERA', 'LAIT', '', '09202774510', 1, '2016-03-03 09:39:44', '2016-03-03 09:39:44', '', '2016-03-03 09:39:44', '', 1, 6, 5, '2016-03-03 01:39:44', '2016-03-03 01:39:44', '', '', '', '', 14, 5, 6, 'LBNHS BM'),
(685, 'NONE56d796164fef75.86831353', 'Allen ', 'Nevalga', 'Malabayabas', '', '', 1, '2016-03-03 09:40:38', '2016-03-03 09:40:38', '', '2016-03-03 09:40:38', '', 1, 6, 5, '2016-03-03 01:40:38', '2016-03-03 01:40:38', '', '', '', '', 15, 5, 6, 'LBNHS-BM'),
(686, 'NONE56d796a317c449.00318330', 'GARAY', 'LULO', 'GARAY', '', '', 1, '2016-03-03 09:42:59', '2016-03-03 09:42:59', '', '2016-03-03 09:42:59', '', 2, 1, 5, '2016-03-03 01:42:59', '2016-03-03 01:42:59', '', '', '', '', 59, 7, 6, 'FOREST PRODUCTS RESEARCH AND DEVELOPMENT INSTITUTE'),
(687, 'NONE56d796b19e6419.29354342', 'Rowena', 'Escobin', 'Ramos', '', '09159655278', 1, '2016-03-03 09:43:13', '2016-03-03 09:43:13', '', '2016-03-03 09:43:13', '', 2, 6, 6, '2016-03-03 01:43:13', '2016-03-03 01:43:13', '', '', '', '', 35, 7, 6, 'DOST-FPRDI'),
(688, 'NONE56d79724341809.31636953', 'Elaida Merlene', 'Delos Reyes', 'Del Mundo', '', '09951662625', 1, '2016-03-03 09:45:08', '2016-03-03 09:45:08', '', '2016-03-03 09:45:08', '', 2, 6, 5, '2016-03-03 01:45:08', '2016-03-03 01:45:08', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(689, 'NONE56d79728ae5f55.95464159', 'chesca', 'pajutan', 'Lavadia', '', '09773829485', 1, '2016-03-03 09:45:12', '2016-03-03 09:45:12', '', '2016-03-03 09:45:12', '', 2, 6, 5, '2016-03-03 01:45:12', '2016-03-03 01:45:12', '', '', '', '', 15, 5, 6, ''),
(690, 'NONE56d7977a56b207.36137889', 'Theressa Joyce', 'N/A', 'Belarmino', '', '09174068279', 1, '2016-03-03 09:46:34', '2016-03-03 09:46:34', '', '2016-03-03 09:46:34', '', 2, 6, 5, '2016-03-03 01:46:34', '2016-03-03 01:46:34', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(691, 'NONE56d7978356ac62.42644901', 'Laurisse Antonette', 'Veridiano', 'Osuna', '', '09083531514', 1, '2016-03-03 09:46:43', '2016-03-03 09:46:43', '', '2016-03-03 09:46:43', '', 2, 6, 5, '2016-03-03 01:46:43', '2016-03-03 01:46:43', '', '', '', '', 14, 5, 6, 'Laguna Science National Highschool'),
(692, 'NONE56d797c077fbd5.34056551', 'Glenn Morihei', 'Azana', 'Arieta', '', '09973903834', 1, '2016-03-03 09:47:44', '2016-03-03 09:47:44', '', '2016-03-03 09:47:44', '', 1, 1, 5, '2016-03-03 01:47:44', '2016-03-03 01:47:44', '', '', '', '', 15, 5, 6, ''),
(693, 'NONE56d797dce43ef1.50026903', 'JOn Richard', 'Adona', 'Palupit', '', '09065310962', 1, '2016-03-03 09:48:12', '2016-03-03 09:48:12', '', '2016-03-03 09:48:12', '', 1, 6, 5, '2016-03-03 01:48:12', '2016-03-03 01:48:12', '', '', '', '', 15, 5, 6, 'Laguna Science Nationa\' High School'),
(694, 'NONE56d798343849e0.85167703', 'allenie', 'monteverde', 'de castro', '', '09063739835', 1, '2016-03-03 09:49:40', '2016-03-03 09:49:40', '', '2016-03-03 09:49:40', '', 2, 6, 5, '2016-03-03 01:49:40', '2016-03-03 01:49:40', '', '', '', '', 14, 5, 6, ''),
(695, 'NONE56d7983fd3c0d6.27924392', 'Frances Isabela', 'Portugal', 'De Leon', '', '09175967660', 1, '2016-03-03 09:49:51', '2016-03-03 09:49:51', '', '2016-03-03 09:49:51', '', 2, 6, 5, '2016-03-03 01:49:51', '2016-03-03 01:49:51', '', '', '', '', 14, 5, 6, 'Laguna Science National High School'),
(696, 'NONE56d798631074a8.15373030', 'maxine anne', 'san jose', 'Ello', '', '09169229733', 1, '2016-03-03 09:50:27', '2016-03-03 09:50:27', '', '2016-03-03 09:50:27', '', 2, 6, 5, '2016-03-03 01:50:27', '2016-03-03 01:50:27', '', '', '', '', 13, 5, 6, ''),
(697, 'NONE56d7988ad35f50.66405569', 'Karissa Louise', 'Sigari Motajadded', 'Avendano', '', '09151002431', 1, '2016-03-03 09:51:06', '2016-03-03 09:51:06', '', '2016-03-03 09:51:06', '', 2, 6, 5, '2016-03-03 01:51:06', '2016-03-03 01:51:06', '', '', '', '', 14, 5, 6, 'Laguna Science National High school'),
(698, 'NONE56d798ef2632c5.25473678', 'princess', 'quijada', 'manalo', '', '09168906532', 1, '2016-03-03 09:52:47', '2016-03-03 09:52:47', '', '2016-03-03 09:52:47', '', 2, 1, 5, '2016-03-03 01:52:47', '2016-03-03 01:52:47', '', '', '', '', 15, 5, 6, ''),
(699, 'NONE56d799689ad014.71640147', 'Grace Rowena', 'Blanco', 'Bisana', '', '09178252195', 1, '2016-03-03 09:54:48', '2016-03-03 09:54:48', '', '2016-03-03 09:54:48', '', 2, 6, 6, '2016-03-03 01:54:48', '2016-03-03 01:54:48', '', '', '', '', 35, 7, 6, 'FPRDI-DOST'),
(700, 'NONE56d799cd8bbb81.91021379', 'Rebecca', 'Bato', 'Lapuz', '', '09162278241', 1, '2016-03-03 09:56:29', '2016-03-03 09:56:29', '', '2016-03-03 09:56:29', '', 2, 6, 6, '2016-03-03 01:56:29', '2016-03-03 01:56:29', '', '', '', '', 44, 7, 6, 'FPRDI'),
(701, 'NONE56d799dcd7ece0.31762017', 'carlito', 'cenido', 'benidicto', '', ' 09752999712', 1, '2016-03-03 09:56:44', '2016-03-03 09:56:44', '', '2016-03-03 09:56:44', '', 1, 1, 5, '2016-03-03 01:56:44', '2016-03-03 01:56:44', '', '', '', '', 50, 5, 6, 'LGU '),
(702, 'NONE56d79a0e3b5ef3.30342073', 'John Jefferson', 'Abao', 'Collera', '', '09178094440', 1, '2016-03-03 09:57:34', '2016-03-03 09:57:34', '', '2016-03-03 09:57:34', '', 1, 6, 5, '2016-03-03 01:57:34', '2016-03-03 01:57:34', '', '', '', '', 23, 7, 6, 'FPRDI-DOST'),
(703, 'NONE56d79ae39fc516.76563228', 'kelly', 'fernandez', 'reyes', '', '09051769178', 1, '2016-03-03 10:01:07', '2016-03-03 10:01:07', '', '2016-03-03 10:01:07', '', 2, 1, 5, '2016-03-03 02:01:07', '2016-03-03 02:01:07', '', '', '', '', 17, 5, 6, 'school'),
(704, 'NONE56d79afa92c051.86910629', 'jan', '', 'angeles', '', '09758314556', 1, '2016-03-03 10:01:30', '2016-03-03 10:01:30', '', '2016-03-03 10:01:30', '', 2, 1, 5, '2016-03-03 02:01:30', '2016-03-03 02:01:30', '', '', '', '', 16, 5, 6, 'los banos national high school poblacion'),
(705, 'NONE56d79b242f3db1.69808217', 'john danielle jerymie', 'r', 'roberts', '', '09758698100', 1, '2016-03-03 10:02:12', '2016-03-03 10:02:12', '', '2016-03-03 10:02:12', '', 1, 1, 5, '2016-03-03 02:02:12', '2016-03-03 02:02:12', '', '', '', '', 16, 5, 6, ''),
(706, 'NONE56d79b37a8fb07.65594607', 'paula', 'austin', 'nual', '', '', 1, '2016-03-03 10:02:31', '2016-03-03 10:02:31', '', '2016-03-03 10:02:31', '', 2, 1, 5, '2016-03-03 02:02:31', '2016-03-03 02:02:31', '', '', '', '', 15, 5, 6, ''),
(707, 'NONE56d79b79953c03.72989248', 'giselle', 'duran', 'andrade', '', '09101275509', 1, '2016-03-03 10:03:37', '2016-03-03 10:03:37', '', '2016-03-03 10:03:37', '', 2, 1, 5, '2016-03-03 02:03:37', '2016-03-03 02:03:37', '', '', '', '', 17, 5, 6, ''),
(708, 'NONE56d79bd1431112.99585273', 'Angelito', 'Hernandez', 'Bisquera, Jr', '', '09058906757', 1, '2016-03-03 10:05:05', '2016-03-03 10:05:05', '', '2016-03-03 10:05:05', '', 1, 5, 5, '2016-03-03 02:05:05', '2016-03-03 02:05:05', '', '', '', '', 20, 5, 6, 'UPLB'),
(709, 'NONE56d79bda33eaf4.36833554', 'Rafael Christian', 'Ramores', 'Danga', '', '09998134491', 1, '2016-03-03 10:05:14', '2016-03-03 10:05:14', '', '2016-03-03 10:05:14', '', 1, 6, 5, '2016-03-03 02:05:14', '2016-03-03 02:05:14', '', '', '', '', 18, 5, 6, 'UPLB'),
(710, 'NONE56d79c09c9fd65.84780546', 'Anton Joshua', 'Dela Cruz', 'del Rosario', '', '09167345827', 1, '2016-03-03 10:06:01', '2016-03-03 10:06:01', '', '2016-03-03 10:06:01', '', 1, 6, 5, '2016-03-03 02:06:01', '2016-03-03 02:06:01', '', '', '', '', 19, 5, 6, 'CFNR-UPLB'),
(711, 'NONE56d79ce9b11b89.82635737', 'marie joanna', 'oca', 'palacpac', '', '09480849042', 1, '2016-03-03 10:09:45', '2016-03-03 10:09:45', '', '2016-03-03 10:09:45', '', 2, 1, 5, '2016-03-03 02:09:45', '2016-03-03 02:09:45', '', '', '', '', 15, 5, 6, ''),
(712, 'NONE56d79cfd4e9789.20256128', 'glaiza', 'lina', 'ustari', '', '09355088423', 1, '2016-03-03 10:10:05', '2016-03-03 10:10:05', '', '2016-03-03 10:10:05', '', 2, 1, 6, '2016-03-03 02:10:05', '2016-03-03 02:10:05', '', '', '', '', 15, 5, 6, ''),
(713, 'NONE56d79d1779f244.08331969', 'josephine', 'aprosta', 'diaz', '', '09125036507', 1, '2016-03-03 10:10:31', '2016-03-03 10:10:31', '', '2016-03-03 10:10:31', '', 2, 1, 5, '2016-03-03 02:10:31', '2016-03-03 02:10:31', '', '', '', '', 14, 5, 6, ''),
(714, 'NONE56d79d2a7ac2d3.40594269', 'loraine angelique', 'recario', 'jianoran', '', '', 1, '2016-03-03 10:10:50', '2016-03-03 10:10:50', '', '2016-03-03 10:10:50', '', 2, 1, 5, '2016-03-03 02:10:50', '2016-03-03 02:10:50', '', '', '', '', 15, 5, 6, ''),
(715, 'NONE56d79d610caa77.98727082', 'chuckallyzer', 'desingano', 'micosa', '', '09129290021', 1, '2016-03-03 10:11:45', '2016-03-03 10:11:45', '', '2016-03-03 10:11:45', '', 1, 1, 5, '2016-03-03 02:11:45', '2016-03-03 02:11:45', '', '', '', '', 14, 5, 6, ''),
(716, 'NONE56d79d6a427289.53020012', 'manuel', 'ojera', 'pua', '', '09094344509', 1, '2016-03-03 10:11:54', '2016-03-03 10:11:54', '', '2016-03-03 10:11:54', '', 1, 6, 5, '2016-03-03 02:11:54', '2016-03-03 02:11:54', '', '', '', '', 15, 5, 6, ''),
(717, 'NONE56d79daabe31e4.25867596', 'emmanuel', 'p', 'natarte', '', '', 1, '2016-03-03 10:12:58', '2016-03-03 10:12:58', '', '2016-03-03 10:12:58', '', 1, 1, 5, '2016-03-03 02:12:58', '2016-03-03 02:12:58', '', '', '', '', 16, 5, 6, 'LBCNHS'),
(718, 'NONE56d79dbb9432f0.66873124', 'janden', 'mercado', 'marino ', '', '', 1, '2016-03-03 10:13:15', '2016-03-03 10:13:15', '', '2016-03-03 10:13:15', '', 1, 1, 5, '2016-03-03 02:13:15', '2016-03-03 02:13:15', '', '', '', '', 17, 5, 6, ''),
(719, 'NONE56d79dfe041b00.32745917', 'Ignace Jan Noel', 'Buenaobra', 'Toque', '', '09065263523', 1, '2016-03-03 10:14:22', '2016-03-03 10:14:22', '', '2016-03-03 10:14:22', '', 1, 6, 5, '2016-03-03 02:14:22', '2016-03-03 02:14:22', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(720, 'NONE56d79e2aa6a5f8.18526579', 'Timothy Ian', 'Ramirez', 'Hipona', '', '09067911533', 1, '2016-03-03 10:15:06', '2016-03-03 10:15:06', '', '2016-03-03 10:15:06', '', 1, 6, 5, '2016-03-03 02:15:06', '2016-03-03 02:15:06', '', '', '', '', 15, 5, 6, 'Los Banos National High School (Poblacion)'),
(721, 'NONE56d79e4ee321d1.83776869', 'Rensie ', 'Escares', 'Escoses', '', '09069425986', 1, '2016-03-03 10:15:42', '2016-03-03 10:15:42', '', '2016-03-03 10:15:42', '', 1, 1, 5, '2016-03-03 02:15:42', '2016-03-03 02:15:42', '', '', '', '', 15, 5, 6, 'Laguna Science National High School'),
(722, 'NONE56d79e831f06e0.28932918', 'Mike Darren', 'Maquidato', 'Quilay', '', '09058972017', 1, '2016-03-03 10:16:35', '2016-03-03 10:16:35', '', '2016-03-03 10:16:35', '', 1, 6, 5, '2016-03-03 02:16:35', '2016-03-03 02:16:35', '', '', '', '', 17, 5, 6, 'Los Banos National High School (Poblacion)'),
(723, 'NONE56d79ea8e35710.85102107', 'Aries', 'Alvarez', 'Valencia', '', '09363658299', 1, '2016-03-03 10:17:12', '2016-03-03 10:17:12', '', '2016-03-03 10:17:12', '', 1, 6, 6, '2016-03-03 02:17:12', '2016-03-03 02:17:12', '', '', '', '', 31, 7, 6, 'DepEd(ALS Bay District), Bay, Laguna'),
(724, 'NONE56d79ebed966d0.32477146', 'Jonel John', 'Roaya', 'Daculong', '', '09056891735', 1, '2016-03-03 10:17:34', '2016-03-03 10:17:34', '', '2016-03-03 10:17:34', '', 1, 6, 5, '2016-03-03 02:17:34', '2016-03-03 02:17:34', '', '', '', '', 17, 5, 6, 'Los Banos National High School (Poblacion)'),
(725, 'NONE56d79f4ee1ff64.02485585', 'Angelita', 'enciso', 'nocon', '', '09399685560', 1, '2016-03-03 10:19:58', '2016-03-03 10:19:58', '', '2016-03-03 10:19:58', '', 2, 6, 6, '2016-03-03 02:19:58', '2016-03-03 02:19:58', '', '', '', '', 55, 7, 6, 'PUP sto. tomas'),
(726, 'NONE56d79fb8bb86d9.02976193', 'Jhanylla', 'N.', 'Marasigan', '', '09058980576', 1, '2016-03-03 10:21:44', '2016-03-03 10:21:44', '', '2016-03-03 10:21:44', '', 2, 6, 5, '2016-03-03 02:21:44', '2016-03-03 02:21:44', '', '', '', '', 13, 5, 6, 'N/A'),
(727, 'NONE56d79fc878dd76.57593725', 'Desiree Marzele', 'Barias', 'Deriquito', '', '09085905988', 1, '2016-03-03 10:22:00', '2016-03-03 10:22:00', '', '2016-03-03 10:22:00', '', 2, 6, 5, '2016-03-03 02:22:00', '2016-03-03 02:22:00', '', '', '', '', 13, 5, 6, 'N/A'),
(728, 'NONE56d79feb6ba0a6.98571207', 'Fatima Patricia', 'C.', 'Murphy', '', '09059331621', 1, '2016-03-03 10:22:35', '2016-03-03 10:22:35', '', '2016-03-03 10:22:35', '', 2, 6, 5, '2016-03-03 02:22:35', '2016-03-03 02:22:35', '', '', '', '', 13, 5, 6, ''),
(729, 'NONE56d7a000edc050.87459025', 'Shekinah', 'C. ', 'Suelto', '', '09399263617', 1, '2016-03-03 10:22:57', '2016-03-03 10:22:57', '', '2016-03-03 10:22:57', '', 2, 6, 5, '2016-03-03 02:22:57', '2016-03-03 02:22:57', '', '', '', '', 13, 5, 6, 'N/A'),
(730, 'NONE56d7a00fa109e3.86628619', 'joshua', 'hamili', 'magbanua', '', '', 1, '2016-03-03 10:23:11', '2016-03-03 10:23:11', '', '2016-03-03 10:23:11', '', 1, 6, 5, '2016-03-03 02:23:11', '2016-03-03 02:23:11', '', '', '', '', 16, 5, 6, ''),
(731, 'NONE56d7a0b5b0f474.70329054', 'ROSITA', 'SANGRE', 'EMERGO', '', '09294261617', 1, '2016-03-03 10:25:57', '2016-03-03 10:25:57', '', '2016-03-03 10:25:57', '', 2, 1, 5, '2016-03-03 02:25:57', '2016-03-03 02:25:57', '', '', '', '', 51, 7, 6, 'Los banos national hs- Poblacion'),
(732, 'NONE56d7a0c0923425.48086290', 'MARIA LOURDES ', 'ODETH', 'ANGELES', '', '', 1, '2016-03-03 10:26:08', '2016-03-03 10:26:08', '', '2016-03-03 10:26:08', '', 2, 6, 6, '2016-03-03 02:26:08', '2016-03-03 02:26:08', '', '', '', '', 46, 7, 6, 'dep ed LBCNHS'),
(733, 'NONE56d7a121a0b0a2.91146985', 'GRACE', 'RIVERA', 'MEDINA', '', '09051830205', 1, '2016-03-03 10:27:45', '2016-03-03 10:27:45', '', '2016-03-03 10:27:45', '', 2, 6, 5, '2016-03-03 02:27:45', '2016-03-03 02:27:45', '', '', '', '', 15, 5, 6, 'PGMNHS'),
(734, 'NONE56d7a15794ccc9.66599914', 'cristina', 'banasihan', 'santos', '', '09396426309', 1, '2016-03-03 10:28:39', '2016-03-03 10:28:39', '', '2016-03-03 10:28:39', '', 2, 6, 6, '2016-03-03 02:28:39', '2016-03-03 02:28:39', '', '', '', '', 51, 7, 6, 'dep-ed lbnhs'),
(735, 'NONE56d7a194379370.43853827', 'Blanquita', 'Reyes', 'Pantoja', '', '09202446130', 1, '2016-03-03 10:29:40', '2016-03-03 10:29:40', '', '2016-03-03 10:29:40', '', 2, 6, 6, '2016-03-03 02:29:40', '2016-03-03 02:29:40', '', '', '', '', 57, 5, 6, 'UPLB'),
(736, 'NONE56d7a1d7830c65.88917049', 'Cherie Rose', 'Valencia', 'Pelagio', '', '09215659363', 1, '2016-03-03 10:30:47', '2016-03-03 10:30:47', '', '2016-03-03 10:30:47', '', 2, 6, 5, '2016-03-03 02:30:47', '2016-03-03 02:30:47', '', '', '', '', 14, 5, 6, 'Laguna Science National Highschool'),
(737, 'NONE56d7a21d58bea9.36378252', 'Dianne Rei', 'Villareal', 'Tiongco', '', '09228054103', 1, '2016-03-03 10:31:57', '2016-03-03 10:31:57', '', '2016-03-03 10:31:57', '', 2, 6, 5, '2016-03-03 02:31:57', '2016-03-03 02:31:57', '', '', '', '', 14, 5, 6, 'Laguna Science National High School'),
(738, 'NONE56d7a27d249721.79561645', 'Juan Carlos', 'Sueno', 'Marquez', '', '09997744901', 1, '2016-03-03 10:33:33', '2016-03-03 10:33:33', '', '2016-03-03 10:33:33', '', 1, 6, 5, '2016-03-03 02:33:33', '2016-03-03 02:33:33', '', '', '', '', 13, 5, 6, ''),
(739, 'NONE56d7a283c03898.71386149', 'Angela Lei Anne A. Castillo', 'Aparejado', 'Castillo', '', '', 1, '2016-03-03 10:33:39', '2016-03-03 10:33:39', '', '2016-03-03 10:33:39', '', 2, 6, 5, '2016-03-03 02:33:39', '2016-03-03 02:33:39', '', '', '', '', 14, 5, 6, ''),
(740, 'NONE56d7a34b98b9b0.02933902', 'nikko', 'tarroza', 'labarete', '', '', 1, '2016-03-03 10:36:59', '2016-03-03 10:36:59', '', '2016-03-03 10:36:59', '', 1, 6, 5, '2016-03-03 02:36:59', '2016-03-03 02:36:59', '', '', '', '', 14, 5, 6, ''),
(741, 'NONE56d7a37278bfe8.02069349', 'jimwel ', 'tatad', 'lofamia', '', '', 1, '2016-03-03 10:37:38', '2016-03-03 10:37:38', '', '2016-03-03 10:37:38', '', 1, 1, 5, '2016-03-03 02:37:38', '2016-03-03 02:37:38', '', '', '', '', 15, 5, 6, ''),
(742, 'NONE56d7a408156842.76091602', 'joshua', 'soriano', 'ochoa', '', '', 1, '2016-03-03 10:40:08', '2016-03-03 10:40:08', '', '2016-03-03 10:40:08', '', 1, 6, 5, '2016-03-03 02:40:08', '2016-03-03 02:40:08', '', '', '', '', 15, 5, 6, ''),
(743, 'NONE56d7a63ea4e8b2.38298187', 'johnry', 'sumague', 'maloles', '', '09494793531', 1, '2016-03-03 10:49:34', '2016-03-03 10:49:34', '', '2016-03-03 10:49:34', '', 1, 6, 5, '2016-03-03 02:49:34', '2016-03-03 02:49:34', '', '', '', '', 27, 7, 6, 'BIOTECH-UPLB'),
(744, 'NONE56d7a67f416326.74129768', 'evelyn', 'escano', 'carale', '', '09192762379', 1, '2016-03-03 10:50:39', '2016-03-03 10:50:39', '', '2016-03-03 10:50:39', '', 2, 6, 5, '2016-03-03 02:50:39', '2016-03-03 02:50:39', '', '', '', '', 63, 7, 6, 'biotech-up los banos'),
(745, 'NONE56d7a6d322c8e5.62276375', 'armando', 'badana', 'esteban', '', '09296631111', 1, '2016-03-03 10:52:03', '2016-03-03 10:52:03', '', '2016-03-03 10:52:03', '', 1, 6, 6, '2016-03-03 02:52:03', '2016-03-03 02:52:03', '', '', '', '', 37, 11, 6, 'mdrrm los banos'),
(746, 'NONE56d7a6f3988dd5.23826934', 'Fredilino B. Parabuac', 'Bautista', 'Parabuac', '', '0905 704 8600', 1, '2016-03-03 10:52:35', '2016-03-03 10:52:35', '', '2016-03-03 10:52:35', '', 1, 6, 6, '2016-03-03 02:52:35', '2016-03-03 02:52:35', '', '', '', '', 40, 7, 6, 'MDRRMO/BRGY. Councilor'),
(747, 'NONE56d7a74e082003.90193444', 'sharon', 'israel', 'celino', '', '09369106225', 1, '2016-03-03 10:54:06', '2016-03-03 10:54:06', '', '2016-03-03 10:54:06', '', 2, 4, 6, '2016-03-03 02:54:06', '2016-03-03 02:54:06', '', '', '', '', 32, 7, 6, 'BFAR Regional Office 02'),
(748, 'NONE56d7a79e295328.60729700', 'Alessandra Nicole', 'Laman', 'Morado', '', '09175862051', 1, '2016-03-03 10:55:26', '2016-03-03 10:55:26', '', '2016-03-03 10:55:26', '', 2, 1, 5, '2016-03-03 02:55:26', '2016-03-03 02:55:26', '', '', '', '', 18, 5, 6, ''),
(749, 'NONE56d7a7c00e99b7.12396760', 'Pauline aNgela', 'Portugal', 'Reyes', '', '09356934118', 1, '2016-03-03 10:56:00', '2016-03-03 10:56:00', '', '2016-03-03 10:56:00', '', 2, 6, 5, '2016-03-03 02:56:00', '2016-03-03 02:56:00', '', '', '', '', 18, 5, 6, 'uplb'),
(750, 'NONE56d7a860de5c05.20174821', 'lance justine', 'maquidato', 'quilay', '', '09067086251', 1, '2016-03-03 10:58:40', '2016-03-03 10:58:40', '', '2016-03-03 10:58:40', '', 1, 6, 5, '2016-03-03 02:58:40', '2016-03-03 02:58:40', '', '', '', '', 15, 5, 6, 'lbnhs- poblacion'),
(751, 'NONE56d7a89e144981.05383003', 'rhea rosel', 'dejumo', 'ayes', '', '', 1, '2016-03-03 10:59:42', '2016-03-03 10:59:42', '', '2016-03-03 10:59:42', '', 2, 6, 5, '2016-03-03 02:59:42', '2016-03-03 02:59:42', '', '', '', '', 14, 5, 6, 'LBNHS POB'),
(752, 'NONE56d7aa0824b3b1.89337764', 'ALYANNA PAMELA', 'RAMOS', 'MARASIGAN', '', '09431288911', 1, '2016-03-03 11:05:44', '2016-03-03 11:05:44', '', '2016-03-03 11:05:44', '', 2, 6, 5, '2016-03-03 03:05:44', '2016-03-03 03:05:44', '', '', '', '', 14, 5, 6, ''),
(753, 'NONE56d7ae37c3d5b8.81509127', 'JAIE', '', 'RAMIREZ', '', '', 1, '2016-03-03 11:23:35', '2016-03-03 11:23:35', '', '2016-03-03 11:23:35', '', 1, 6, 5, '2016-03-03 03:23:35', '2016-03-03 03:23:35', '', '', '', '', 13, 5, 6, ''),
(754, 'NONE56d7af6e2d6ce5.39839236', 'ernest george', 'terrenal', 'lauzon', '', 'n/a', 1, '2016-03-03 11:28:46', '2016-03-03 11:28:46', '', '2016-03-03 11:28:46', '', 1, 6, 5, '2016-03-03 03:28:46', '2016-03-03 03:28:46', '', '', '', '', 13, 5, 6, ''),
(755, 'NONE56d7af8c8e8986.69424640', 'DARYL SEBASTIAN', 'D.R.', 'FRANCILEDO', '', '09365098102', 1, '2016-03-03 11:29:16', '2016-03-03 11:29:16', '', '2016-03-03 11:29:16', '', 1, 6, 5, '2016-03-03 03:29:16', '2016-03-03 03:29:16', '', '', '', '', 13, 5, 6, 'KNHS'),
(756, 'NONE56d7af8cd6bc78.05499177', 'DARYL SEBASTIAN', 'D.R.', 'FRANCILEDO', '', '09365098102', 1, '2016-03-03 11:29:16', '2016-03-03 11:29:16', '', '2016-03-03 11:29:16', '', 1, 6, 5, '2016-03-03 03:29:16', '2016-03-03 03:29:16', '', '', '', '', 13, 5, 6, 'KNHS'),
(757, 'NONE56d7b0a4938114.67285821', 'Airies Jaye', 'Arellano', 'Palermo', '', '', 1, '2016-03-03 11:33:56', '2016-03-03 11:33:56', '', '2016-03-03 11:33:56', '', 1, 6, 5, '2016-03-03 03:33:56', '2016-03-03 03:33:56', '', '', '', '', 0, 5, 6, 's'),
(758, 'NONE56d7b154d36a76.60613851', 'florencio jr.', 'abellano', 'tredente', '', '09052126035', 1, '2016-03-03 11:36:52', '2016-03-03 11:36:52', '', '2016-03-03 11:36:52', '', 1, 6, 6, '2016-03-03 03:36:52', '2016-03-03 03:36:52', '', '', '', '', 57, 11, 6, ''),
(759, 'NONE56d7b274bfa409.37388697', 'MADRIGAL', 'ROCELLO', 'MADRIGAL', '', '09178299544', 1, '2016-03-03 11:41:40', '2016-03-03 11:41:40', '', '2016-03-03 11:41:40', '', 1, 6, 5, '2016-03-03 03:41:40', '2016-03-03 03:41:40', '', '', '', '', 34, 7, 6, 'DOST-PCAARRD'),
(760, 'NONE56d7b4858401a6.84462059', 'Rene Franchesca', 'Aranilla', 'Pilar', '', '09062198520', 1, '2016-03-03 11:50:29', '2016-03-03 11:50:29', '', '2016-03-03 11:50:29', '', 2, 6, 5, '2016-03-03 03:50:29', '2016-03-03 03:50:29', '', '', '', '', 14, 5, 6, 'Pedro Guevara Memorial National High School'),
(761, 'NONE56d7b4c949fc26.93258769', 'RHOCEL', 'BUMANLAG', 'SERAPION', '', '09757368247', 1, '2016-03-03 11:51:37', '2016-03-03 11:51:37', '', '2016-03-03 11:51:37', '', 2, 6, 5, '2016-03-03 03:51:37', '2016-03-03 03:51:37', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(762, 'NONE56d7b4c996c4c8.43920178', 'RHOCEL', 'BUMANLAG', 'SERAPION', '', '09757368247', 1, '2016-03-03 11:51:37', '2016-03-03 11:51:37', '', '2016-03-03 11:51:37', '', 2, 6, 5, '2016-03-03 03:51:37', '2016-03-03 03:51:37', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(763, 'NONE56d7b4d55a3925.70981969', 'Patricia Maris', 'Acibar', 'Polintan', '', '09351473998', 1, '2016-03-03 11:51:49', '2016-03-03 11:51:49', '', '2016-03-03 11:51:49', '', 2, 6, 5, '2016-03-03 03:51:49', '2016-03-03 03:51:49', '', '', '', '', 14, 5, 6, 'Pedro Guevara Memorial National High School'),
(764, 'NONE56d7b4d561d540.65619364', 'Patricia Maris', 'Acibar', 'Polintan', '', '09351473998', 1, '2016-03-03 11:51:49', '2016-03-03 11:51:49', '', '2016-03-03 11:51:49', '', 2, 6, 5, '2016-03-03 03:51:49', '2016-03-03 03:51:49', '', '', '', '', 14, 5, 6, 'Pedro Guevara Memorial National High School'),
(765, 'NONE56d7b570a99694.17811799', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:24', '2016-03-03 11:54:24', '', '2016-03-03 11:54:24', '', 1, 1, 5, '2016-03-03 03:54:24', '2016-03-03 03:54:24', '', '', '', '', 15, 5, 6, '565'),
(766, 'NONE56d7b570a8e752.97214268', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:24', '2016-03-03 11:54:24', '', '2016-03-03 11:54:24', '', 1, 1, 5, '2016-03-03 03:54:24', '2016-03-03 03:54:24', '', '', '', '', 15, 5, 6, '565'),
(767, 'NONE56d7b570eb3f31.20043241', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:24', '2016-03-03 11:54:24', '', '2016-03-03 11:54:24', '', 1, 1, 5, '2016-03-03 03:54:24', '2016-03-03 03:54:24', '', '', '', '', 15, 5, 6, '565'),
(768, 'NONE56d7b571456f78.51141507', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:25', '2016-03-03 11:54:25', '', '2016-03-03 11:54:25', '', 1, 1, 5, '2016-03-03 03:54:25', '2016-03-03 03:54:25', '', '', '', '', 15, 5, 6, '565'),
(769, 'NONE56d7b5716ad8f3.63055986', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:25', '2016-03-03 11:54:25', '', '2016-03-03 11:54:25', '', 1, 1, 5, '2016-03-03 03:54:25', '2016-03-03 03:54:25', '', '', '', '', 15, 5, 6, '565'),
(770, 'NONE56d7b571b78de8.00643817', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:25', '2016-03-03 11:54:25', '', '2016-03-03 11:54:25', '', 1, 1, 5, '2016-03-03 03:54:25', '2016-03-03 03:54:25', '', '', '', '', 15, 5, 6, '565'),
(771, 'NONE56d7b571d08291.49896148', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:25', '2016-03-03 11:54:25', '', '2016-03-03 11:54:25', '', 1, 1, 5, '2016-03-03 03:54:25', '2016-03-03 03:54:25', '', '', '', '', 15, 5, 6, '565'),
(772, 'NONE56d7b571e4b958.42979639', 'john patrick', 'maghirang', 'paril', '', '09264437491', 1, '2016-03-03 11:54:25', '2016-03-03 11:54:25', '', '2016-03-03 11:54:25', '', 1, 1, 5, '2016-03-03 03:54:25', '2016-03-03 03:54:25', '', '', '', '', 15, 5, 6, '565'),
(773, 'NONE56d7b5fe3cb047.85308320', 'julia lorence', 'San Luis', 'cabello', '', '', 1, '2016-03-03 11:56:46', '2016-03-03 11:56:46', '', '2016-03-03 11:56:46', '', 2, 1, 5, '2016-03-03 03:56:46', '2016-03-03 03:56:46', '', '', '', '', 15, 5, 6, ''),
(774, 'NONE56d7b62f166ce9.93213991', 'Czarina', 'Mondelo', 'Arandid', '', '09479809194', 1, '2016-03-03 11:57:35', '2016-03-03 11:57:35', '', '2016-03-03 11:57:35', '', 2, 6, 5, '2016-03-03 03:57:35', '2016-03-03 03:57:35', '', '', '', '', 14, 5, 6, 'Pedro Guevara Memorial National High Sch'),
(775, 'NONE56d7b80aa795d9.44594887', 'mabel', 'alluring', 'gonzalo', '', '09064998781', 1, '2016-03-03 12:05:30', '2016-03-03 12:05:30', '', '2016-03-03 12:05:30', '', 1, 6, 5, '2016-03-03 04:05:30', '2016-03-03 04:05:30', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(776, 'NONE56d7b8212dc578.00946500', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:53', '2016-03-03 12:05:53', '', '2016-03-03 12:05:53', '', 2, 6, 5, '2016-03-03 04:05:53', '2016-03-03 04:05:53', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(777, 'NONE56d7b8212f8c99.38822058', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:53', '2016-03-03 12:05:53', '', '2016-03-03 12:05:53', '', 2, 6, 5, '2016-03-03 04:05:53', '2016-03-03 04:05:53', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(778, 'NONE56d7b8213042e3.43481834', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:53', '2016-03-03 12:05:53', '', '2016-03-03 12:05:53', '', 2, 6, 5, '2016-03-03 04:05:53', '2016-03-03 04:05:53', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(779, 'NONE56d7b8223ba7d3.69083265', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:54', '2016-03-03 12:05:54', '', '2016-03-03 12:05:54', '', 2, 6, 5, '2016-03-03 04:05:54', '2016-03-03 04:05:54', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(780, 'NONE56d7b822417ba1.79980356', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:54', '2016-03-03 12:05:54', '', '2016-03-03 12:05:54', '', 2, 6, 5, '2016-03-03 04:05:54', '2016-03-03 04:05:54', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(781, 'NONE56d7b82245e894.52296176', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:54', '2016-03-03 12:05:54', '', '2016-03-03 12:05:54', '', 2, 6, 5, '2016-03-03 04:05:54', '2016-03-03 04:05:54', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(782, 'NONE56d7b82263ac64.41455687', 'janine', 'consignado', 'aguilar', '', '09352653423', 1, '2016-03-03 12:05:54', '2016-03-03 12:05:54', '', '2016-03-03 12:05:54', '', 2, 6, 5, '2016-03-03 04:05:54', '2016-03-03 04:05:54', '', '', '', '', 15, 5, 6, 'pedro Guevara Memorial Natonal High School'),
(783, 'NONE56d7b83ad2e643.94598912', 'Marghani', 'Salmeron', 'Jakiran', '', '09287044589', 1, '2016-03-03 12:06:18', '2016-03-03 12:06:18', '', '2016-03-03 12:06:18', '', 1, 1, 5, '2016-03-03 04:06:18', '2016-03-03 04:06:18', '', '', '', '', 15, 5, 6, ''),
(784, 'NONE56d7b87434fab9.81621464', 'Precious', 'Bargo', 'David', '', '09996781609', 1, '2016-03-03 12:07:16', '2016-03-03 12:07:16', '', '2016-03-03 12:07:16', '', 2, 6, 5, '2016-03-03 04:07:16', '2016-03-03 04:07:16', '', '', '', '', 14, 5, 6, 'Pedro Guevara Memorial National High School'),
(785, 'NONE56d7b89ae25a85.32189006', 'Rissany', 'Cupon', 'Ramos', '', '09067165773', 1, '2016-03-03 12:07:54', '2016-03-03 12:07:54', '', '2016-03-03 12:07:54', '', 2, 6, 5, '2016-03-03 04:07:54', '2016-03-03 04:07:54', '', '', '', '', 15, 5, 6, 'PGMNHS'),
(786, 'NONE56d7b8b9bfecf3.46365939', 'Louise', 'Sarmiento', 'Demegillo', '', '09213167951', 1, '2016-03-03 12:08:25', '2016-03-03 12:08:25', '', '2016-03-03 12:08:25', '', 2, 6, 5, '2016-03-03 04:08:25', '2016-03-03 04:08:25', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(787, 'NONE56d7b8e9607df8.26025287', 'Keenah', 'Samson', 'Salvador', '', '09363311203', 1, '2016-03-03 12:09:13', '2016-03-03 12:09:13', '', '2016-03-03 12:09:13', '', 2, 6, 5, '2016-03-03 04:09:13', '2016-03-03 04:09:13', '', '', '', '', 14, 5, 6, 'pgmnhs'),
(788, 'NONE56d7b8fc53c1f6.34424616', 'Carmela Erin', 'Estrella', 'Elazegui', '', '09198997537', 1, '2016-03-03 12:09:32', '2016-03-03 12:09:32', '', '2016-03-03 12:09:32', '', 2, 6, 5, '2016-03-03 04:09:32', '2016-03-03 04:09:32', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(789, 'NONE56d7b9446d3029.79893818', 'Jaagen Girbaud', 'Lamis', 'Elca', '', '09283152566', 1, '2016-03-03 12:10:44', '2016-03-03 12:10:44', '', '2016-03-03 12:10:44', '', 2, 6, 5, '2016-03-03 04:10:44', '2016-03-03 04:10:44', '', '', '', '', 15, 5, 6, ''),
(790, 'NONE56d7ba21e854a5.43878067', 'Roldan Joseph', 'Mesina', 'Perez', '', '09159399600', 1, '2016-03-03 12:14:25', '2016-03-03 12:14:25', '', '2016-03-03 12:14:25', '', 1, 6, 5, '2016-03-03 04:14:25', '2016-03-03 04:14:25', '', '', '', '', 15, 5, 6, ''),
(791, 'NONE56d7baae615f85.16508963', 'zavieer ace', 'idian', 'javier', '', '093954811830', 1, '2016-03-03 12:16:46', '2016-03-03 12:16:46', '', '2016-03-03 12:16:46', '', 1, 1, 7, '2016-03-03 04:16:46', '2016-03-03 04:16:46', '', '', '', '', 15, 5, 6, 'Pedro Guevara Memorial National High School'),
(792, 'NONE56d7bcd474bf59.58025285', 'kclyn', 'bulahan', 'sazon', '', '09303240903', 1, '2016-03-03 12:25:56', '2016-03-03 12:25:56', '', '2016-03-03 12:25:56', '', 2, 1, 5, '2016-03-03 04:25:56', '2016-03-03 04:25:56', '', '', '', '', 14, 5, 6, ''),
(793, 'NONE56d7bcd47b82c3.14273118', 'kclyn', 'bulahan', 'sazon', '', '09303240903', 1, '2016-03-03 12:25:56', '2016-03-03 12:25:56', '', '2016-03-03 12:25:56', '', 2, 1, 5, '2016-03-03 04:25:56', '2016-03-03 04:25:56', '', '', '', '', 14, 5, 6, ''),
(794, 'NONE56d7bcd57cdaf6.88079558', 'kclyn', 'bulahan', 'sazon', '', '09303240903', 1, '2016-03-03 12:25:57', '2016-03-03 12:25:57', '', '2016-03-03 12:25:57', '', 2, 1, 5, '2016-03-03 04:25:57', '2016-03-03 04:25:57', '', '', '', '', 14, 5, 6, ''),
(795, 'NONE56d7bcd57e7450.37160342', 'kclyn', 'bulahan', 'sazon', '', '09303240903', 1, '2016-03-03 12:25:57', '2016-03-03 12:25:57', '', '2016-03-03 12:25:57', '', 2, 1, 5, '2016-03-03 04:25:57', '2016-03-03 04:25:57', '', '', '', '', 14, 5, 6, ''),
(796, 'NONE56d7cccb35e409.93850222', 'Cristhel Mae', 'Mamaril', 'Dayag', '', '09169411425', 1, '2016-03-03 13:34:03', '2016-03-03 13:34:03', '', '2016-03-03 13:34:03', '', 2, 6, 5, '2016-03-03 05:34:03', '2016-03-03 05:34:03', '', '', '', '', 15, 5, 6, 'los banos national highschool'),
(797, 'NONE56d7ccda414625.82810376', 'Issa', 'Rico', 'Banasihan', '', '09392421274', 1, '2016-03-03 13:34:18', '2016-03-03 13:34:18', '', '2016-03-03 13:34:18', '', 2, 6, 5, '2016-03-03 05:34:18', '2016-03-03 05:34:18', '', '', '', '', 15, 5, 6, ''),
(798, 'NONE56d7cd04256402.70065647', 'Virna Angelu', 'Ativo', 'Lim', '', '09471711903', 1, '2016-03-03 13:35:00', '2016-03-03 13:35:00', '', '2016-03-03 13:35:00', '', 2, 6, 5, '2016-03-03 05:35:00', '2016-03-03 05:35:00', '', '', '', '', 15, 5, 6, 'lbnhs'),
(799, 'NONE56d7cd12c45380.68177074', 'Alinea', 'Pelegrina', 'Baraquio', '', '09214843052', 1, '2016-03-03 13:35:14', '2016-03-03 13:35:14', '', '2016-03-03 13:35:14', '', 2, 6, 5, '2016-03-03 05:35:14', '2016-03-03 05:35:14', '', '', '', '', 15, 5, 6, ''),
(800, 'NONE56d7cd564d0b41.11153264', 'Jella', 'Coronel', 'Nacario', '', '09352367671', 1, '2016-03-03 13:36:22', '2016-03-03 13:36:22', '', '2016-03-03 13:36:22', '', 2, 6, 5, '2016-03-03 05:36:22', '2016-03-03 05:36:22', '', '', '', '', 15, 5, 6, 'LBNHS'),
(801, 'NONE56d7cd5bad9454.68091870', 'Judd Vincent', 'Angeles', 'Clemente', '', '09159736741', 1, '2016-03-03 13:36:27', '2016-03-03 13:36:27', '', '2016-03-03 13:36:27', '', 1, 6, 5, '2016-03-03 05:36:27', '2016-03-03 05:36:27', '', '', '', '', 15, 5, 6, 'Los Banos National high School'),
(802, 'NONE56d7cda707ab08.36803490', 'Allan', 'Punzalan', 'Mandapat', '', '09364051813', 1, '2016-03-03 13:37:43', '2016-03-03 13:37:43', '', '2016-03-03 13:37:43', '', 1, 6, 5, '2016-03-03 05:37:43', '2016-03-03 05:37:43', '', '', '', '', 16, 5, 6, 'LBNHS'),
(803, 'NONE56d7cdd7f24508.67449352', 'Bianca Marie', 'Ilagan', 'Pingad', '', '09175969020', 1, '2016-03-03 13:38:32', '2016-03-03 13:38:32', '', '2016-03-03 13:38:32', '', 2, 6, 5, '2016-03-03 05:38:32', '2016-03-03 05:38:32', '', '', '', '', 14, 5, 6, 'Los Banos National Highschool'),
(804, 'NONE56d7ce24d19b86.91595851', 'Gellene', 'Navela', 'Toledo', '', '09358658598', 1, '2016-03-03 13:39:48', '2016-03-03 13:39:48', '', '2016-03-03 13:39:48', '', 2, 6, 5, '2016-03-03 05:39:48', '2016-03-03 05:39:48', '', '', '', '', 14, 5, 6, 'Los banos National Highschool'),
(805, 'NONE56d7cf69244237.12005293', 'aira may', 'aguilar', 'barit', '', '09363580045', 1, '2016-03-03 13:45:13', '2016-03-03 13:45:13', '', '2016-03-03 13:45:13', '', 2, 1, 5, '2016-03-03 05:45:13', '2016-03-03 05:45:13', '', '', '', '', 15, 5, 6, 'nicolas l galvez memorial national high school'),
(806, 'NONE56d7cf698050b9.77373208', 'aira may', 'aguilar', 'barit', '', '09363580045', 1, '2016-03-03 13:45:13', '2016-03-03 13:45:13', '', '2016-03-03 13:45:13', '', 2, 1, 5, '2016-03-03 05:45:13', '2016-03-03 05:45:13', '', '', '', '', 15, 5, 6, 'nicolas l galvez memorial national high school'),
(807, 'NONE56d7cf8d7fd363.97170273', 'erra', 'landicho', 'toribio', '', '09481170314', 1, '2016-03-03 13:45:49', '2016-03-03 13:45:49', '', '2016-03-03 13:45:49', '', 1, 6, 5, '2016-03-03 05:45:49', '2016-03-03 05:45:49', '', '', '', '', 15, 5, 6, 'nlgmnhs'),
(808, 'NONE56d7cfbb522ef5.63532407', 'aldrin', 'racelis', 'mendoza', '', '09351635859', 1, '2016-03-03 13:46:35', '2016-03-03 13:46:35', '', '2016-03-03 13:46:35', '', 1, 6, 5, '2016-03-03 05:46:35', '2016-03-03 05:46:35', '', '', '', '', 16, 5, 6, 'nlgmnhs'),
(809, 'NONE56d7cff981aaa9.92489352', 'jhonmark', 'ambrosio', 'collado', '', '09107659287', 1, '2016-03-03 13:47:37', '2016-03-03 13:47:37', '', '2016-03-03 13:47:37', '', 1, 1, 5, '2016-03-03 05:47:37', '2016-03-03 05:47:37', '', '', '', '', 15, 5, 6, 'nlgmnhs'),
(810, 'NONE56d7d004a8cb02.43390074', 'matt zedrick', 'natanauan', 'constantino', '', '09192138077', 1, '2016-03-03 13:47:48', '2016-03-03 13:47:48', '', '2016-03-03 13:47:48', '', 1, 1, 5, '2016-03-03 05:47:48', '2016-03-03 05:47:48', '', '', '', '', 16, 5, 6, 'nlgmnhs'),
(811, 'NONE56d7d01917d3c8.25011875', 'jhon stewell', 'quintos', 'bonifacio', '', '09219988980', 1, '2016-03-03 13:48:09', '2016-03-03 13:48:09', '', '2016-03-03 13:48:09', '', 1, 1, 5, '2016-03-03 05:48:09', '2016-03-03 05:48:09', '', '', '', '', 15, 5, 6, 'nlgmnhs'),
(812, 'NONE56d7d02d64c5f2.01335222', 'john art', '', 'aldemita', '', '09156379410', 1, '2016-03-03 13:48:29', '2016-03-03 13:48:29', '', '2016-03-03 13:48:29', '', 1, 1, 5, '2016-03-03 05:48:29', '2016-03-03 05:48:29', '', '', '', '', 16, 5, 6, ''),
(813, 'NONE56d7d02d87e010.22260840', 'john art', '', 'aldemita', '', '09156379410', 1, '2016-03-03 13:48:29', '2016-03-03 13:48:29', '', '2016-03-03 13:48:29', '', 1, 1, 5, '2016-03-03 05:48:29', '2016-03-03 05:48:29', '', '', '', '', 16, 5, 6, ''),
(814, 'NONE56d7d085c65175.18047598', 'jesus neil', 'orolfo', 'garcia', '', '09265295237', 1, '2016-03-03 13:49:57', '2016-03-03 13:49:57', '', '2016-03-03 13:49:57', '', 1, 6, 5, '2016-03-03 05:49:57', '2016-03-03 05:49:57', '', '', '', '', 16, 5, 6, 'NLGMNHS bay laguna'),
(815, 'NONE56d7d5d06f87e7.57530943', '         edwin', 'm', 'ceriilo jr', '', '09197043742', 1, '2016-03-03 14:12:32', '2016-03-03 14:12:32', '', '2016-03-03 14:12:32', '', 1, 1, 5, '2016-03-03 06:12:32', '2016-03-03 06:12:32', '', '', '', '', 15, 5, 6, ''),
(816, 'NONE56d7d5e61286d5.70617862', 'ROBERT ', 'IMBUTIN', 'BORINAGA', '', '09394481701', 1, '2016-03-03 14:12:54', '2016-03-03 14:12:54', '', '2016-03-03 14:12:54', '', 1, 6, 5, '2016-03-03 06:12:54', '2016-03-03 06:12:54', '', '', '', '', 16, 5, 6, ''),
(817, 'NONE56d7d607cd3aa5.63771546', 'NORIEL', 'ARCILLAS', 'MASARAP', '', '09077189691', 1, '2016-03-03 14:13:27', '2016-03-03 14:13:27', '', '2016-03-03 14:13:27', '', 1, 6, 5, '2016-03-03 06:13:27', '2016-03-03 06:13:27', '', '', '', '', 18, 5, 6, ''),
(818, 'NONE56d7d63269fee1.86149855', 'TRIXIE HAZEL JOY', 'PUCYUTAN', 'MAGBALANA', '', '09177673871', 1, '2016-03-03 14:14:10', '2016-03-03 14:14:10', '', '2016-03-03 14:14:10', '', 2, 1, 5, '2016-03-03 06:14:10', '2016-03-03 06:14:10', '', '', '', '', 14, 5, 6, ''),
(819, 'NONE56d7d648941f47.03381497', 'AUBREY', 'CRUZ', 'CATAYENA', '', '09056356255', 1, '2016-03-03 14:14:32', '2016-03-03 14:14:32', '', '2016-03-03 14:14:32', '', 2, 6, 5, '2016-03-03 06:14:32', '2016-03-03 06:14:32', '', '', '', '', 15, 5, 6, ''),
(820, 'NONE56d7d6884eb5d7.36347573', 'MA.SHAINA', 'ORBILLO', 'NANO', '', '09482847060', 1, '2016-03-03 14:15:36', '2016-03-03 14:15:36', '', '2016-03-03 14:15:36', '', 2, 6, 5, '2016-03-03 06:15:36', '2016-03-03 06:15:36', '', '', '', '', 15, 5, 6, ''),
(821, 'NONE56d7d688862dc4.47434289', 'MA.SHAINA', 'ORBILLO', 'NANO', '', '09482847060', 1, '2016-03-03 14:15:36', '2016-03-03 14:15:36', '', '2016-03-03 14:15:36', '', 2, 6, 5, '2016-03-03 06:15:36', '2016-03-03 06:15:36', '', '', '', '', 15, 5, 6, ''),
(822, 'NONE56d7d6e1a0b552.84407185', 'JAIMIE', 'AQUINO', 'ESGUERRA', '', '09293200653', 1, '2016-03-03 14:17:05', '2016-03-03 14:17:05', '', '2016-03-03 14:17:05', '', 2, 6, 5, '2016-03-03 06:17:05', '2016-03-03 06:17:05', '', '', '', '', 15, 5, 6, ''),
(823, 'NONE56d7d722a85715.79931256', 'MELVINCENT', 'BASAN', 'CASULLA', '', '09268698818', 1, '2016-03-03 14:18:10', '2016-03-03 14:18:10', '', '2016-03-03 14:18:10', '', 1, 6, 5, '2016-03-03 06:18:10', '2016-03-03 06:18:10', '', '', '', '', 17, 5, 6, 'NLGMNHS'),
(824, 'NONE56d7d74b7dede4.13196946', 'HENRYJAMES', 'AMATORIO', 'TENORIO', '', '09063593279', 1, '2016-03-03 14:18:51', '2016-03-03 14:18:51', '', '2016-03-03 14:18:51', '', 1, 1, 5, '2016-03-03 06:18:51', '2016-03-03 06:18:51', '', '', '', '', 15, 5, 6, 'IRRI'),
(825, 'NONE56d7d786632392.33842957', 'CARLOS', 'EMOTIN', 'CORPORAL', '', '09481172838', 1, '2016-03-03 14:19:50', '2016-03-03 14:19:50', '', '2016-03-03 14:19:50', '', 1, 6, 5, '2016-03-03 06:19:50', '2016-03-03 06:19:50', '', '', '', '', 16, 5, 6, 'NLGMNHS'),
(826, 'NONE56d7d7a4d2f8b2.51554254', 'JAMES', 'D', 'BATITIS', '', '09497004581', 1, '2016-03-03 14:20:20', '2016-03-03 14:20:20', '', '2016-03-03 14:20:20', '', 1, 1, 5, '2016-03-03 06:20:20', '2016-03-03 06:20:20', '', '', '', '', 16, 5, 6, 'NLGMNHS'),
(827, 'NONE56d7d7fd4bf9d5.42458362', 'TRINIDAD', 'DONDON', 'JONJON', '', '', 1, '2016-03-03 14:21:49', '2016-03-03 14:21:49', '', '2016-03-03 14:21:49', '', 1, 6, 5, '2016-03-03 06:21:49', '2016-03-03 06:21:49', '', '', '', '', 16, 5, 6, ''),
(828, 'NONE56d7d83f84cbd1.71660406', 'MICAELA', 'RIGINE', 'PAMULAKLAKIN', '', '09070815340', 1, '2016-03-03 14:22:55', '2016-03-03 14:22:55', '', '2016-03-03 14:22:55', '', 2, 5, 5, '2016-03-03 06:22:55', '2016-03-03 06:22:55', '', '', '', '', 16, 5, 6, ''),
(829, 'NONE56d7d97f15d3e2.06019945', 'KIM CARLA', 'SANCHEZ', 'FERNANDO', '', 'NONE', 1, '2016-03-03 14:28:15', '2016-03-03 14:28:15', '', '2016-03-03 14:28:15', '', 2, 6, 5, '2016-03-03 06:28:15', '2016-03-03 06:28:15', '', '', '', '', 15, 5, 6, ''),
(830, 'NONE56d7d991c07584.28041196', 'DANICA JEAN', 'BARRERA', 'SAMBAT', '', '09481169744', 1, '2016-03-03 14:28:33', '2016-03-03 14:28:33', '', '2016-03-03 14:28:33', '', 2, 6, 5, '2016-03-03 06:28:33', '2016-03-03 06:28:33', '', '', '', '', 15, 5, 6, ''),
(831, 'NONE56d7da6ad80814.32191957', 'BABY LIZA', 'TADEO', 'GUACHE', '', '09471732461', 1, '2016-03-03 14:32:10', '2016-03-03 14:32:10', '', '2016-03-03 14:32:10', '', 2, 1, 5, '2016-03-03 06:32:10', '2016-03-03 06:32:10', '', '', '', '', 17, 5, 6, ''),
(832, 'NONE56d7da8525c835.26616942', 'DOMANTAY ', 'JENNY ROSE', 'HERRERA', '', '09067562451', 1, '2016-03-03 14:32:37', '2016-03-03 14:32:37', '', '2016-03-03 14:32:37', '', 2, 1, 5, '2016-03-03 06:32:37', '2016-03-03 06:32:37', '', '', '', '', 16, 5, 6, '(SCHOOL) NLGMNHS'),
(833, 'NONE56d7db1b82c657.59323058', 'MICAELA', 'L.', 'QUINTOS', '', '09483708665', 1, '2016-03-03 14:35:07', '2016-03-03 14:35:07', '', '2016-03-03 14:35:07', '', 2, 1, 5, '2016-03-03 06:35:07', '2016-03-03 06:35:07', '', '', '', '', 15, 5, 6, ''),
(834, 'NONE56d7db264c44e1.55747427', 'WILMA', 'F', 'ETOMAY', '', '09094761628', 1, '2016-03-03 14:35:18', '2016-03-03 14:35:18', '', '2016-03-03 14:35:18', '', 2, 6, 5, '2016-03-03 06:35:18', '2016-03-03 06:35:18', '', '', '', '', 17, 5, 6, ''),
(835, 'NONE56d7dc408787e6.62298582', 'MARIA CRISTINA', 'TORNO', 'PASCUAL', '', '09498434148', 1, '2016-03-03 14:40:00', '2016-03-03 14:40:00', '', '2016-03-03 14:40:00', '', 2, 6, 5, '2016-03-03 06:40:00', '2016-03-03 06:40:00', '', '', '', '', 27, 7, 6, 'KAPAYAPAAN NATIONAL HIGH SCHOOL'),
(836, 'NONE56d7dc60216b24.86180967', 'Miriam', 'Ubina', 'Mabborang', '', '09352765843', 1, '2016-03-03 14:40:32', '2016-03-03 14:40:32', '', '2016-03-03 14:40:32', '', 2, 6, 5, '2016-03-03 06:40:32', '2016-03-03 06:40:32', '', '', '', '', 22, 7, 6, 'Kapayapaan Natiomal HighSchool'),
(837, 'NONE56d7df2b445638.24050154', 'janice', 'g', 'eala', '', '09266811839', 1, '2016-03-03 14:52:27', '2016-03-03 14:52:27', '', '2016-03-03 14:52:27', '', 2, 1, 5, '2016-03-03 06:52:27', '2016-03-03 06:52:27', '', '', '', '', 33, 5, 6, 'GE '),
(838, 'NONE56d7df47f28851.46330589', 'RAYMOND', 'MOSTRALES ', 'SANTOS', '', '09088654307', 1, '2016-03-03 14:52:56', '2016-03-03 14:52:56', '', '2016-03-03 14:52:56', '', 1, 1, 5, '2016-03-03 06:52:56', '2016-03-03 06:52:56', '', '', '', '', 39, 6, 6, 'THE BELLEVUE MANILA'),
(839, 'NONE56d7df74ac9e50.89697618', 'janice', 'g', 'eala', '', '09266811839', 1, '2016-03-03 14:53:40', '2016-03-03 14:53:40', '', '2016-03-03 14:53:40', '', 2, 1, 5, '2016-03-03 06:53:40', '2016-03-03 06:53:40', '', '', '', '', 33, 8, 6, 'GE money'),
(840, 'NONE56d7e63c05bcd8.04639399', 'MILES IRVIN ', 'JOSEPH', 'SHUCK', '', '09126474340', 1, '2016-03-03 15:22:36', '2016-03-03 15:22:36', '', '2016-03-03 15:22:36', '', 1, 1, 5, '2016-03-03 07:22:36', '2016-03-03 07:22:36', '', '', '', '', 24, 5, 6, ''),
(841, 'NONE56d7e63c5dcf09.22883110', 'MILES IRVIN ', 'JOSEPH', 'SHUCK', '', '09126474340', 1, '2016-03-03 15:22:36', '2016-03-03 15:22:36', '', '2016-03-03 15:22:36', '', 1, 1, 5, '2016-03-03 07:22:36', '2016-03-03 07:22:36', '', '', '', '', 24, 5, 6, ''),
(842, 'NONE56d7e65003c765.79276883', 'roebert', 'cabasares', 'satorre', '', '09773379566', 1, '2016-03-03 15:22:56', '2016-03-03 15:22:56', '', '2016-03-03 15:22:56', '', 1, 14, 5, '2016-03-03 07:22:56', '2016-03-03 07:22:56', '', '', '', '', 28, 7, 6, 'SMAARRDEC/University of Southeastern Philippines'),
(843, 'NONE56d7e686a545a7.55022294', 'MILES', 'JOSEPH', 'SHUCK', '', '09126474340', 1, '2016-03-03 15:23:50', '2016-03-03 15:23:50', '', '2016-03-03 15:23:50', '', 1, 14, 5, '2016-03-03 07:23:50', '2016-03-03 07:23:50', '', '', '', '', 25, 7, 6, 'USEP-SMAARRDEC'),
(844, 'NONE56d8de042d54a7.41153330', 'oswald curtis ', 'aggabao', 'malabug', '', '09054362060', 1, '2016-03-04 08:59:48', '2016-03-04 08:59:48', '', '2016-03-04 08:59:48', '', 1, 1, 5, '2016-03-04 00:59:48', '2016-03-04 00:59:48', '', '', '', '', 11, 5, 6, 'lbces'),
(845, 'NONE56d8de0e66eb36.22814091', 'Elias Juan', 'Eliseo', 'Casano', '', '', 1, '2016-03-04 08:59:58', '2016-03-04 08:59:58', '', '2016-03-04 08:59:58', '', 1, 6, 5, '2016-03-04 00:59:58', '2016-03-04 00:59:58', '', '', '', '', 11, 5, 6, 'Los Banos Central Elementary School'),
(846, 'NONE56d8e05281c026.16136840', 'jomer', 'regonay', 'terrenal', '', '', 1, '2016-03-04 09:09:38', '2016-03-04 09:09:38', '', '2016-03-04 09:09:38', '', 1, 1, 5, '2016-03-04 01:09:38', '2016-03-04 01:09:38', '', '', '', '', 16, 5, 6, 'los banos national high school'),
(847, 'NONE56d8e053905416.68702968', 'jomer', 'regonay', 'terrenal', '', '', 1, '2016-03-04 09:09:39', '2016-03-04 09:09:39', '', '2016-03-04 09:09:39', '', 1, 1, 5, '2016-03-04 01:09:39', '2016-03-04 01:09:39', '', '', '', '', 16, 5, 6, 'los banos national high school'),
(848, 'NONE56d8e053ada5e4.38615580', 'jomer', 'regonay', 'terrenal', '', '', 1, '2016-03-04 09:09:39', '2016-03-04 09:09:39', '', '2016-03-04 09:09:39', '', 1, 1, 5, '2016-03-04 01:09:39', '2016-03-04 01:09:39', '', '', '', '', 16, 5, 6, 'los banos national high school'),
(849, 'NONE56d8e053e4cff6.47111231', 'jomer', 'regonay', 'terrenal', '', '', 1, '2016-03-04 09:09:40', '2016-03-04 09:09:40', '', '2016-03-04 09:09:40', '', 1, 1, 5, '2016-03-04 01:09:40', '2016-03-04 01:09:40', '', '', '', '', 16, 5, 6, 'los banos national high school'),
(850, 'NONE56d8e05e2248c3.11876167', 'Cephia Noreen', 'Castillo', 'Gonzaga', '', '09061152413', 1, '2016-03-04 09:09:50', '2016-03-04 09:09:50', '', '2016-03-04 09:09:50', '', 2, 6, 5, '2016-03-04 01:09:50', '2016-03-04 01:09:50', '', '', '', '', 15, 5, 6, 'Los Banos National High School'),
(851, 'NONE56d8e098d8f970.46460023', 'Michelle', 'Tamban', 'Nanit', '', '09496081433', 1, '2016-03-04 09:10:48', '2016-03-04 09:10:48', '', '2016-03-04 09:10:48', '', 2, 6, 5, '2016-03-04 01:10:48', '2016-03-04 01:10:48', '', '', '', '', 16, 5, 6, 'Los Banos National High School'),
(852, 'NONE56d8e0d8670f41.23968748', 'Ma. Teresa Paula', 'Isleta', 'Delminguez', '', '09154272849', 1, '2016-03-04 09:11:52', '2016-03-04 09:11:52', '', '2016-03-04 09:11:52', '', 2, 6, 5, '2016-03-04 01:11:52', '2016-03-04 01:11:52', '', '', '', '', 16, 5, 6, 'Los Banos National High School'),
(853, 'NONE56d8e14d158f43.30449999', 'ma. danna', 'cadapan', 'maloles', '', '09395765359', 1, '2016-03-04 09:13:49', '2016-03-04 09:13:49', '', '2016-03-04 09:13:49', '', 2, 1, 5, '2016-03-04 01:13:49', '2016-03-04 01:13:49', '', '', '', '', 16, 5, 6, 'los banos national high school batong malake'),
(854, 'NONE56d8e28b39e654.81544032', 'Joseph Aaron', 'Macandili', 'Larona', '', '', 1, '2016-03-04 09:19:07', '2016-03-04 09:19:07', '', '2016-03-04 09:19:07', '', 1, 1, 5, '2016-03-04 01:19:07', '2016-03-04 01:19:07', '', '', '', '', 16, 5, 6, ''),
(855, 'NONE56d8e294eaaee4.09065580', 'Michael Jay Kennedy', 'Salazar', 'Camaso', '', '09193330595', 1, '2016-03-04 09:19:16', '2016-03-04 09:19:16', '', '2016-03-04 09:19:16', '', 1, 6, 5, '2016-03-04 01:19:16', '2016-03-04 01:19:16', '', '', '', '', 16, 5, 6, 'LBNHS'),
(856, 'NONE56d8e31c8ba659.31952846', 'janella nicole', 'pedrosa', 'honora', '', '09093191965', 1, '2016-03-04 09:21:32', '2016-03-04 09:21:32', '', '2016-03-04 09:21:32', '', 2, 6, 5, '2016-03-04 01:21:32', '2016-03-04 01:21:32', '', '', '', '', 11, 6, 6, 'lbces'),
(857, 'NONE56d8e384f01307.84064359', 'ronel dizon', 'R', 'dizon', '', '09179350716', 1, '2016-03-04 09:23:16', '2016-03-04 09:23:16', '', '2016-03-04 09:23:16', '', 1, 1, 5, '2016-03-04 01:23:16', '2016-03-04 01:23:16', '', '', '', '', 13, 5, 6, ''),
(858, 'NONE56d8e3b8bc21d3.95444735', 'princess diane ', 't.', 'abuyog', '', '09216824325', 1, '2016-03-04 09:24:08', '2016-03-04 09:24:08', '', '2016-03-04 09:24:08', '', 2, 6, 5, '2016-03-04 01:24:08', '2016-03-04 01:24:08', '', '', '', '', 11, 5, 6, 'los banos central elementary'),
(859, 'NONE56d8e41163a984.25802002', 'MICHAEL HANS', 'GONZALES', 'MAGBOJOS', '', 'FEHWVA', 1, '2016-03-04 09:25:37', '2016-03-04 09:25:37', '', '2016-03-04 09:25:37', '', 1, 6, 5, '2016-03-04 01:25:37', '2016-03-04 01:25:37', '', '', '', '', 10, 5, 6, ''),
(860, 'NONE56d8e4539e0859.40542013', 'allen stephen', 'delfino', 'natividad', '', '09173354434', 1, '2016-03-04 09:26:43', '2016-03-04 09:26:43', '', '2016-03-04 09:26:43', '', 1, 6, 5, '2016-03-04 01:26:43', '2016-03-04 01:26:43', '', '', '', '', 12, 5, 6, ''),
(861, 'NONE56d8e4aa484b35.05404959', 'john', 'rex', 'arjona', '', '09183455025', 1, '2016-03-04 09:28:10', '2016-03-04 09:28:10', '', '2016-03-04 09:28:10', '', 1, 6, 5, '2016-03-04 01:28:10', '2016-03-04 01:28:10', '', '', '', '', 12, 5, 6, '6'),
(862, 'NONE56d8e4b093b673.71855052', 'amier christian', 'baniqued', 'limbaco', '', '09078278390', 1, '2016-03-04 09:28:16', '2016-03-04 09:28:16', '', '2016-03-04 09:28:16', '', 1, 6, 5, '2016-03-04 01:28:16', '2016-03-04 01:28:16', '', '', '', '', 12, 5, 6, ''),
(863, 'NONE56d8e4ef1a3212.17796799', 'Allen Ace', 'Torres', 'Llagas', '', '09274750744', 1, '2016-03-04 09:29:19', '2016-03-04 09:29:19', '', '2016-03-04 09:29:19', '', 1, 6, 5, '2016-03-04 01:29:19', '2016-03-04 01:29:19', '', '', '', '', 13, 5, 6, '6');
INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(864, 'NONE56d8e5203ac350.26200255', 'David', 'Sangcap', 'Aquino', '', '09997209550', 1, '2016-03-04 09:30:08', '2016-03-04 09:30:08', '', '2016-03-04 09:30:08', '', 1, 1, 5, '2016-03-04 01:30:08', '2016-03-04 01:30:08', '', '', '', '', 12, 5, 6, ''),
(865, 'NONE56d8e52a6c6967.76364246', 'jewel lei anne', 'galang', 'cruz', '', '09238430704', 1, '2016-03-04 09:30:18', '2016-03-04 09:30:18', '', '2016-03-04 09:30:18', '', 2, 1, 5, '2016-03-04 01:30:18', '2016-03-04 01:30:18', '', '', '', '', 11, 5, 6, ''),
(866, 'NONE56d8e52a71f472.17488431', 'jewel lei anne', 'galang', 'cruz', '', '09238430704', 1, '2016-03-04 09:30:18', '2016-03-04 09:30:18', '', '2016-03-04 09:30:18', '', 2, 1, 5, '2016-03-04 01:30:18', '2016-03-04 01:30:18', '', '', '', '', 11, 5, 6, ''),
(867, 'NONE56d8e5768be0c6.18424979', 'pauline anne ', 'gragasin', 'del rosario', '', '09064892381', 1, '2016-03-04 09:31:34', '2016-03-04 09:31:34', '', '2016-03-04 09:31:34', '', 2, 1, 5, '2016-03-04 01:31:34', '2016-03-04 01:31:34', '', '', '', '', 11, 5, 6, ''),
(868, 'NONE56d8e5b08c9182.12047334', 'denise ienne', 'macatangay', 'ingco', '', '09276547310', 1, '2016-03-04 09:32:32', '2016-03-04 09:32:32', '', '2016-03-04 09:32:32', '', 2, 1, 5, '2016-03-04 01:32:32', '2016-03-04 01:32:32', '', '', '', '', 11, 5, 6, ''),
(869, 'NONE56d8e5e0ca6a70.07735870', 'maryelle lourdes', 'maningas', 'larasi', '', '09272791022', 1, '2016-03-04 09:33:20', '2016-03-04 09:33:20', '', '2016-03-04 09:33:20', '', 2, 6, 5, '2016-03-04 01:33:20', '2016-03-04 01:33:20', '', '', '', '', 11, 5, 6, ''),
(870, 'NONE56d8e646055833.09146927', 'ice ', 'malayba', 'padua', '', '', 1, '2016-03-04 09:35:02', '2016-03-04 09:35:02', '', '2016-03-04 09:35:02', '', 1, 1, 5, '2016-03-04 01:35:02', '2016-03-04 01:35:02', '', '', '', '', 12, 5, 6, ''),
(871, 'NONE56d8e667f3f6a9.95018507', 'ma.theresa', 'baldwin', 'eusebio', '', '09395938961', 1, '2016-03-04 09:35:36', '2016-03-04 09:35:36', '', '2016-03-04 09:35:36', '', 2, 6, 5, '2016-03-04 01:35:36', '2016-03-04 01:35:36', '', '', '', '', 10, 5, 6, ''),
(872, 'NONE56d8e6b65b75f9.72313556', 'edmund', 'espiritu', 'velasco', '', '09069180694', 1, '2016-03-04 09:36:54', '2016-03-04 09:36:54', '', '2016-03-04 09:36:54', '', 1, 6, 5, '2016-03-04 01:36:54', '2016-03-04 01:36:54', '', '', '', '', 15, 5, 6, ''),
(873, 'NONE56d8e6c093df81.23472753', 'jhanna rose', 'bernardo', 'lutap', '', '09997318267', 1, '2016-03-04 09:37:04', '2016-03-04 09:37:04', '', '2016-03-04 09:37:04', '', 2, 6, 5, '2016-03-04 01:37:04', '2016-03-04 01:37:04', '', '', '', '', 10, 5, 6, ''),
(874, 'NONE56d8e7cf1d8999.35433531', 'jhanna rose', 'bernrdo', 'lutap', '', '09997318267', 1, '2016-03-04 09:41:35', '2016-03-04 09:41:35', '', '2016-03-04 09:41:35', '', 2, 1, 5, '2016-03-04 01:41:35', '2016-03-04 01:41:35', '', '', '', '', 10, 5, 6, 'LBCES'),
(875, 'NONE56d8e812772be0.66876931', 'ALLYZA', 'DEJUMO', 'BERNARDO', '', '09109451456', 1, '2016-03-04 09:42:42', '2016-03-04 09:42:42', '', '2016-03-04 09:42:42', '', 1, 1, 5, '2016-03-04 01:42:42', '2016-03-04 01:42:42', '', '', '', '', 11, 5, 6, 'LBCES'),
(876, 'NONE56d8e84b6cdf55.05885608', 'krizia', 'rodriguez', 'buena', '', '09073097011', 1, '2016-03-04 09:43:39', '2016-03-04 09:43:39', '', '2016-03-04 09:43:39', '', 2, 6, 5, '2016-03-04 01:43:39', '2016-03-04 01:43:39', '', '', '', '', 11, 5, 6, 'lbces'),
(877, 'NONE56d8e88fcf5360.17275246', 'ROSELYN', 'BARDENAS', 'DEMONTANO', '', '09268008640', 1, '2016-03-04 09:44:47', '2016-03-04 09:44:47', '', '2016-03-04 09:44:47', '', 2, 6, 5, '2016-03-04 01:44:47', '2016-03-04 01:44:47', '', '', '', '', 13, 5, 6, 'LBNHS POBLACION'),
(878, 'NONE56d8e8c67f6769.41501515', 'aldrin ', 'bando', 'bondad', '', '09363313511', 1, '2016-03-04 09:45:42', '2016-03-04 09:45:42', '', '2016-03-04 09:45:42', '', 1, 6, 5, '2016-03-04 01:45:42', '2016-03-04 01:45:42', '', '', '', '', 10, 5, 6, 'lbces'),
(879, 'NONE56d8e8e6df9048.06290833', 'EMMAUELLE LEE', '', 'DEMONTANO', '', '', 1, '2016-03-04 09:46:14', '2016-03-04 09:46:14', '', '2016-03-04 09:46:14', '', 2, 6, 5, '2016-03-04 01:46:14', '2016-03-04 01:46:14', '', '', '', '', 10, 5, 6, 'LBCES'),
(880, 'NONE56d8e90bcd8f63.75752871', 'anthonette', 'bagui', 'trinos', '', '', 1, '2016-03-04 09:46:51', '2016-03-04 09:46:51', '', '2016-03-04 09:46:51', '', 2, 6, 5, '2016-03-04 01:46:51', '2016-03-04 01:46:51', '', '', '', '', 12, 5, 6, 'fmsn'),
(881, 'NONE56d8e95666b9a5.26543476', 'dominic', 'navarez', 'vargas', '', '', 1, '2016-03-04 09:48:06', '2016-03-04 09:48:06', '', '2016-03-04 09:48:06', '', 1, 6, 5, '2016-03-04 01:48:06', '2016-03-04 01:48:06', '', '', '', '', 11, 5, 6, ''),
(882, 'NONE56d8e956b6a960.56672132', 'dominic', 'navarez', 'vargas', '', '', 1, '2016-03-04 09:48:06', '2016-03-04 09:48:06', '', '2016-03-04 09:48:06', '', 1, 6, 5, '2016-03-04 01:48:06', '2016-03-04 01:48:06', '', '', '', '', 11, 5, 6, ''),
(883, 'NONE56d8e96c1bf990.32574413', 'LEANDRO', 'VILLARIN', 'DESINGANO', '', '', 1, '2016-03-04 09:48:28', '2016-03-04 09:48:28', '', '2016-03-04 09:48:28', '', 1, 6, 5, '2016-03-04 01:48:28', '2016-03-04 01:48:28', '', '', '', '', 10, 5, 6, 'LBCES'),
(884, 'NONE56d8e9b0219029.14814570', 'juliana jerneth', 'marcelo', 'ramos', '', '09156290916', 1, '2016-03-04 09:49:36', '2016-03-04 09:49:36', '', '2016-03-04 09:49:36', '', 2, 6, 5, '2016-03-04 01:49:36', '2016-03-04 01:49:36', '', '', '', '', 11, 5, 6, 'los banos central elementary school'),
(885, 'NONE56d8e9b0799509.87393645', 'juliana jerneth', 'marcelo', 'ramos', '', '09156290916', 1, '2016-03-04 09:49:36', '2016-03-04 09:49:36', '', '2016-03-04 09:49:36', '', 2, 6, 5, '2016-03-04 01:49:36', '2016-03-04 01:49:36', '', '', '', '', 11, 5, 6, 'los banos central elementary school'),
(886, 'NONE56d8e9b347e741.85028560', 'CHRYSLER', 'CORTUGERA', 'MARANAN', '', '', 1, '2016-03-04 09:49:39', '2016-03-04 09:49:39', '', '2016-03-04 09:49:39', '', 1, 6, 5, '2016-03-04 01:49:39', '2016-03-04 01:49:39', '', '', '', '', 11, 5, 6, 'LBCES'),
(887, 'NONE56d8ea5579aa42.45934286', 'margaret gianne ', 'belano', 'amparo', '', '09292842812', 1, '2016-03-04 09:52:21', '2016-03-04 09:52:21', '', '2016-03-04 09:52:21', '', 2, 6, 5, '2016-03-04 01:52:21', '2016-03-04 01:52:21', '', '', '', '', 10, 5, 6, 'los banos central school'),
(888, 'NONE56d8eae0dbe3c1.92471303', 'AISEYIAH', 'ELLAINE', 'CANLAS', '', '091093355063', 1, '2016-03-04 09:54:40', '2016-03-04 09:54:40', '', '2016-03-04 09:54:40', '', 2, 6, 5, '2016-03-04 01:54:40', '2016-03-04 01:54:40', '', '', '', '', 10, 5, 6, 'LOS BANOS CENTRAL ELEMENTARY SCHOOL'),
(889, 'NONE56d8eae1732664.30628579', 'AISEYIAH', 'ELLAINE', 'CANLAS', '', '091093355063', 1, '2016-03-04 09:54:41', '2016-03-04 09:54:41', '', '2016-03-04 09:54:41', '', 2, 6, 5, '2016-03-04 01:54:41', '2016-03-04 01:54:41', '', '', '', '', 10, 5, 6, 'LOS BANOS CENTRAL ELEMENTARY SCHOOL'),
(890, 'NONE56d8eb39cb0989.69384835', 'Patrice Noan ', 'Reginaldo', 'rosales', '', '09354644519', 1, '2016-03-04 09:56:09', '2016-03-04 09:56:09', '', '2016-03-04 09:56:09', '', 2, 6, 5, '2016-03-04 01:56:09', '2016-03-04 01:56:09', '', '', '', '', 12, 5, 6, ''),
(891, 'NONE56d8eb435d26e1.77160392', 'LORREYH', 'PABALATE', 'PARAISO', '', '09169079130', 1, '2016-03-04 09:56:19', '2016-03-04 09:56:19', '', '2016-03-04 09:56:19', '', 2, 6, 5, '2016-03-04 01:56:19', '2016-03-04 01:56:19', '', '', '', '', 12, 5, 6, 'LBCES'),
(892, 'NONE56d8eb75b8ce23.96164818', 'rianne allyson', 'angeles', 'gavilan', '', '09156103413', 1, '2016-03-04 09:57:09', '2016-03-04 09:57:09', '', '2016-03-04 09:57:09', '', 2, 6, 5, '2016-03-04 01:57:09', '2016-03-04 01:57:09', '', '', '', '', 11, 5, 6, ''),
(893, 'NONE56d8eb99251f83.42560069', 'LUIS ANTONOI', 'TEROL', 'CATELO', '', '09320855981', 1, '2016-03-04 09:57:45', '2016-03-04 09:57:45', '', '2016-03-04 09:57:45', '', 1, 6, 5, '2016-03-04 01:57:45', '2016-03-04 01:57:45', '', '', '', '', 11, 5, 6, 'LBCES'),
(894, 'NONE56d8ebc52a1614.54912001', 'angelica', 'jalotjot', 'reyes', '', '09367090317', 1, '2016-03-04 09:58:29', '2016-03-04 09:58:29', '', '2016-03-04 09:58:29', '', 2, 6, 5, '2016-03-04 01:58:29', '2016-03-04 01:58:29', '', '', '', '', 12, 5, 6, ''),
(895, 'NONE56d8ebf7a74678.28576192', 'dianne', 'dimasuay', 'cosinas', '', '09207059453', 1, '2016-03-04 09:59:19', '2016-03-04 09:59:19', '', '2016-03-04 09:59:19', '', 2, 6, 5, '2016-03-04 01:59:19', '2016-03-04 01:59:19', '', '', '', '', 11, 5, 6, ''),
(896, 'NONE56d8ebfe736d02.02036543', 'anne jeline', '', 'pascua', '', '09219752817', 1, '2016-03-04 09:59:26', '2016-03-04 09:59:26', '', '2016-03-04 09:59:26', '', 2, 6, 5, '2016-03-04 01:59:26', '2016-03-04 01:59:26', '', '', '', '', 12, 5, 6, ''),
(897, 'NONE56d8ec3240fbc3.57326751', 'carl', 'jason', 'guda', '', '0916185365759532', 1, '2016-03-04 10:00:18', '2016-03-04 10:00:18', '', '2016-03-04 10:00:18', '', 1, 6, 5, '2016-03-04 02:00:18', '2016-03-04 02:00:18', '', '', '', '', 12, 5, 6, ''),
(898, 'NONE56d8ec83137457.38798227', 'mark', 'phillip', 'quintana', '', '050505048', 1, '2016-03-04 10:01:39', '2016-03-04 10:01:39', '', '2016-03-04 10:01:39', '', 1, 6, 5, '2016-03-04 02:01:39', '2016-03-04 02:01:39', '', '', '', '', 10, 5, 6, ''),
(899, 'NONE56d8ecc554cfa9.90986600', 'nicole', 'Medina', 'servidad', '', '', 1, '2016-03-04 10:02:45', '2016-03-04 10:02:45', '', '2016-03-04 10:02:45', '', 2, 6, 5, '2016-03-04 02:02:45', '2016-03-04 02:02:45', '', '', '', '', 16, 5, 6, 'los banos national highschool'),
(900, 'NONE56d8ecd17af351.07380942', 'Mary Joy', 'Rin', 'Milanes', '', '09185477345', 1, '2016-03-04 10:02:57', '2016-03-04 10:02:57', '', '2016-03-04 10:02:57', '', 2, 6, 5, '2016-03-04 02:02:57', '2016-03-04 02:02:57', '', '', '', '', 16, 5, 6, 'LBNHS Poblacion'),
(901, 'NONE56d8ed1d5edbc8.49419371', 'hazel', 'catindig', 'austria', '', '', 1, '2016-03-04 10:04:13', '2016-03-04 10:04:13', '', '2016-03-04 10:04:13', '', 2, 6, 5, '2016-03-04 02:04:13', '2016-03-04 02:04:13', '', '', '', '', 16, 5, 6, 'LO BANOS NATIONAL HIGH SCHOOL POBLACION'),
(902, 'NONE56d8ed4db00b55.11725034', 'jomelyn', 'contegino', 'velasquez', '', '09351097315', 1, '2016-03-04 10:05:01', '2016-03-04 10:05:01', '', '2016-03-04 10:05:01', '', 2, 6, 5, '2016-03-04 02:05:01', '2016-03-04 02:05:01', '', '', '', '', 15, 5, 6, ''),
(903, 'NONE56d8ed52683f72.76909679', 'MARY SHEANNE', 'SUBIA', 'RAFOLS', '', '', 1, '2016-03-04 10:05:06', '2016-03-04 10:05:06', '', '2016-03-04 10:05:06', '', 2, 6, 5, '2016-03-04 02:05:06', '2016-03-04 02:05:06', '', '', '', '', 16, 5, 6, 'LOS BANOS NATIONAL HIGH SCHOOL POBLACION'),
(904, 'NONE56d8eea8bd2406.28499035', 'Julian', 'Medel', 'Calibo', '', '09272204161', 1, '2016-03-04 10:10:48', '2016-03-04 10:10:48', '', '2016-03-04 10:10:48', '', 1, 6, 5, '2016-03-04 02:10:48', '2016-03-04 02:10:48', '', '', '', '', 26, 11, 6, 'UPLB'),
(905, 'NONE56d8f1a8b34255.73354022', 'MARIA ISABELA', 'QUIZON', 'SAMIA', '', '', 1, '2016-03-04 10:23:36', '2016-03-04 10:23:36', '', '2016-03-04 10:23:36', '', 2, 1, 5, '2016-03-04 02:23:36', '2016-03-04 02:23:36', '', '', '', '', 8, 5, 6, 'CBBA'),
(906, 'NONE56d8f1e400c691.54159999', 'THEA JORYL', 'VILLEGAS', 'PARAO', '', '09984962414', 1, '2016-03-04 10:24:36', '2016-03-04 10:24:36', '', '2016-03-04 10:24:36', '', 2, 1, 5, '2016-03-04 02:24:36', '2016-03-04 02:24:36', '', '', '', '', 14, 5, 6, ''),
(907, 'NONE56d8f272b26727.76958872', 'ELIZABETH', 'CODERIAS', 'FERRERAS', '', '09222947882', 1, '2016-03-04 10:26:58', '2016-03-04 10:26:58', '', '2016-03-04 10:26:58', '', 2, 1, 5, '2016-03-04 02:26:58', '2016-03-04 02:26:58', '', '', '', '', 14, 5, 6, ''),
(908, 'NONE56d8f290e366c1.76468664', 'VINCENT', 'CODERIAS', 'FERRERAS', '', '', 1, '2016-03-04 10:27:28', '2016-03-04 10:27:28', '', '2016-03-04 10:27:28', '', 1, 1, 5, '2016-03-04 02:27:28', '2016-03-04 02:27:28', '', '', '', '', 8, 5, 6, ''),
(909, 'NONE56d8f2b75d31d7.78969200', 'KEMUEL', 'GREFAL', 'DOGANDO', '', '', 1, '2016-03-04 10:28:07', '2016-03-04 10:28:07', '', '2016-03-04 10:28:07', '', 1, 1, 5, '2016-03-04 02:28:07', '2016-03-04 02:28:07', '', '', '', '', 11, 5, 6, ''),
(910, 'NONE56d8f2ebd8c402.92671725', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:28:59', '2016-03-04 10:28:59', '', '2016-03-04 10:28:59', '', 1, 1, 5, '2016-03-04 02:28:59', '2016-03-04 02:28:59', '', '', '', '', 13, 5, 6, ''),
(911, 'NONE56d8f2ec09c764.46524682', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:29:00', '2016-03-04 10:29:00', '', '2016-03-04 10:29:00', '', 1, 1, 5, '2016-03-04 02:29:00', '2016-03-04 02:29:00', '', '', '', '', 13, 5, 6, ''),
(912, 'NONE56d8f2ec365d87.35728727', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:29:00', '2016-03-04 10:29:00', '', '2016-03-04 10:29:00', '', 1, 1, 5, '2016-03-04 02:29:00', '2016-03-04 02:29:00', '', '', '', '', 13, 5, 6, ''),
(913, 'NONE56d8f2ec497533.89516506', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:29:00', '2016-03-04 10:29:00', '', '2016-03-04 10:29:00', '', 1, 1, 5, '2016-03-04 02:29:00', '2016-03-04 02:29:00', '', '', '', '', 13, 5, 6, ''),
(914, 'NONE56d8f2ed3a9711.92717895', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:29:01', '2016-03-04 10:29:01', '', '2016-03-04 10:29:01', '', 1, 1, 5, '2016-03-04 02:29:01', '2016-03-04 02:29:01', '', '', '', '', 13, 5, 6, ''),
(915, 'NONE56d8f2ed393cc3.28247882', 'LORENCE', 'C.', 'GARCIA', '', '', 1, '2016-03-04 10:29:01', '2016-03-04 10:29:01', '', '2016-03-04 10:29:01', '', 1, 1, 5, '2016-03-04 02:29:01', '2016-03-04 02:29:01', '', '', '', '', 13, 5, 6, ''),
(916, 'NONE56d8f34c162555.51928182', 'ANGELICA', 'BRURAL', 'DUTADO', '', '', 1, '2016-03-04 10:30:36', '2016-03-04 10:30:36', '', '2016-03-04 10:30:36', '', 2, 1, 5, '2016-03-04 02:30:36', '2016-03-04 02:30:36', '', '', '', '', 11, 5, 6, ''),
(917, 'NONE56d8f34c18f7b5.20370580', 'ANGELICA', 'BRURAL', 'DUTADO', '', '', 1, '2016-03-04 10:30:36', '2016-03-04 10:30:36', '', '2016-03-04 10:30:36', '', 2, 1, 5, '2016-03-04 02:30:36', '2016-03-04 02:30:36', '', '', '', '', 11, 5, 6, ''),
(918, 'NONE56d8f34c1e57f3.52113690', 'ANGELICA', 'BRURAL', 'DUTADO', '', '', 1, '2016-03-04 10:30:36', '2016-03-04 10:30:36', '', '2016-03-04 10:30:36', '', 2, 1, 5, '2016-03-04 02:30:36', '2016-03-04 02:30:36', '', '', '', '', 11, 5, 6, ''),
(919, 'NONE56d8f3a2ecc645.24409208', 'HAZEL', 'JUBILO', 'RAMOS', '', '09286365', 1, '2016-03-04 10:32:02', '2016-03-04 10:32:02', '', '2016-03-04 10:32:02', '', 2, 1, 5, '2016-03-04 02:32:02', '2016-03-04 02:32:02', '', '', '', '', 9, 5, 6, ''),
(920, 'NONE56d8f3c9401ae4.80231819', 'HAZEL', 'JUBILO', 'RAMOS', '', '', 1, '2016-03-04 10:32:41', '2016-03-04 10:32:41', '', '2016-03-04 10:32:41', '', 2, 1, 5, '2016-03-04 02:32:41', '2016-03-04 02:32:41', '', '', '', '', 9, 5, 6, ''),
(921, 'NONE56d8f4221a5157.85122838', 'ETHAN', 'VILLEGAS', 'BORLAGDAN', '', '', 1, '2016-03-04 10:34:10', '2016-03-04 10:34:10', '', '2016-03-04 10:34:10', '', 1, 1, 5, '2016-03-04 02:34:10', '2016-03-04 02:34:10', '', '', '', '', 9, 5, 6, ''),
(922, 'NONE56d8f6eac8b762.06188590', 'ANGEL SAM', 'MILLARES', 'JUCAR', '', '09223932823', 1, '2016-03-04 10:46:02', '2016-03-04 10:46:02', '', '2016-03-04 10:46:02', '', 1, 1, 5, '2016-03-04 02:46:02', '2016-03-04 02:46:02', '', '', '', '', 10, 5, 6, ''),
(923, 'NONE56d8f82bed4bb1.25114625', 'patricia', 'jean', 'Logatoc', '', '09053490196', 1, '2016-03-04 10:51:24', '2016-03-04 10:51:24', '', '2016-03-04 10:51:24', '', 2, 10, 5, '2016-03-04 02:51:24', '2016-03-04 02:51:24', '', '', '', '', 16, 11, 6, ''),
(924, 'NONE56d8f95c718ee9.85458393', 'ramiel ', 'gardose', 'delfin', '', '', 1, '2016-03-04 10:56:28', '2016-03-04 10:56:28', '', '2016-03-04 10:56:28', '', 1, 6, 5, '2016-03-04 02:56:28', '2016-03-04 02:56:28', '', '', '', '', 11, 11, 6, ''),
(925, 'NONE56d8fa2b7d8d76.97937816', 'khennidy', 'ken', 'evangelista', '', '', 1, '2016-03-04 10:59:55', '2016-03-04 10:59:55', '', '2016-03-04 10:59:55', '', 1, 1, 5, '2016-03-04 02:59:55', '2016-03-04 02:59:55', '', '', '', '', 200, 5, 6, ''),
(926, 'NONE56d8fa48bbc734.61383741', 'khennidy', 'ken', 'evangelista', '', '', 1, '2016-03-04 11:00:24', '2016-03-04 11:00:24', '', '2016-03-04 11:00:24', '', 1, 1, 5, '2016-03-04 03:00:24', '2016-03-04 03:00:24', '', '', '', '', 12, 5, 6, ''),
(927, 'NONE56d8fbe74b2125.56819470', 'FRANCIS', 'PEREZ', 'CANGAO', '', '09184387959', 1, '2016-03-04 11:07:19', '2016-03-04 11:07:19', '', '2016-03-04 11:07:19', '', 1, 6, 5, '2016-03-04 03:07:19', '2016-03-04 03:07:19', '', '', '', '', 16, 11, 6, ''),
(928, 'NONE56d90f74539d41.90568699', 'casandra', 'perilla', 'malabanan', '', '09394263153', 1, '2016-03-04 12:30:44', '2016-03-04 12:30:44', '', '2016-03-04 12:30:44', '', 2, 6, 5, '2016-03-04 04:30:44', '2016-03-04 04:30:44', '', '', '', '', 12, 5, 6, 'lbcnhs'),
(929, 'NONE56d90f9f628210.79591841', 'ERICA MAE', 'MENDOZA', 'PARALES', '', '', 1, '2016-03-04 12:31:27', '2016-03-04 12:31:27', '', '2016-03-04 12:31:27', '', 2, 6, 5, '2016-03-04 04:31:27', '2016-03-04 04:31:27', '', '', '', '', 13, 5, 6, ''),
(930, 'NONE56d91023d73f26.40324274', 'desingnao', 'azicate', 'jean paula', '', '09472088516', 1, '2016-03-04 12:33:39', '2016-03-04 12:33:39', '', '2016-03-04 12:33:39', '', 2, 1, 5, '2016-03-04 04:33:39', '2016-03-04 04:33:39', '', '', '', '', 15, 5, 6, 'school'),
(931, 'NONE56d9102510e2a5.79491796', 'MIRASOLL', 'PANGANIBAN', 'CAMACHO', '', '09183731605', 1, '2016-03-04 12:33:41', '2016-03-04 12:33:41', '', '2016-03-04 12:33:41', '', 2, 6, 5, '2016-03-04 04:33:41', '2016-03-04 04:33:41', '', '', '', '', 14, 5, 6, 'COMMUNITY NATIONAL HIGH SCHOOL'),
(932, 'NONE56d91025941d53.17833104', 'MIRASOLL', 'PANGANIBAN', 'CAMACHO', '', '09183731605', 1, '2016-03-04 12:33:41', '2016-03-04 12:33:41', '', '2016-03-04 12:33:41', '', 2, 6, 5, '2016-03-04 04:33:41', '2016-03-04 04:33:41', '', '', '', '', 14, 5, 6, 'COMMUNITY NATIONAL HIGH SCHOOL'),
(933, 'NONE56d910a86b7389.83443979', 'hainah mei', 'capunpon', 'bautista', '', '09307285506', 1, '2016-03-04 12:35:52', '2016-03-04 12:35:52', '', '2016-03-04 12:35:52', '', 2, 6, 5, '2016-03-04 04:35:52', '2016-03-04 04:35:52', '', '', '', '', 14, 5, 6, 'los banos national high school (poblacion)'),
(934, 'NONE56d910ac9a3150.57344450', 'ANGELYN', 'CASIRACAN', 'CARPIO', '', '09108290408', 1, '2016-03-04 12:35:56', '2016-03-04 12:35:56', '', '2016-03-04 12:35:56', '', 2, 6, 5, '2016-03-04 04:35:56', '2016-03-04 04:35:56', '', '', '', '', 14, 5, 6, 'SCHOOL'),
(935, 'NONE56d910acd770e8.37520784', 'ANGELYN', 'CASIRACAN', 'CARPIO', '', '09108290408', 1, '2016-03-04 12:35:56', '2016-03-04 12:35:56', '', '2016-03-04 12:35:56', '', 2, 6, 5, '2016-03-04 04:35:56', '2016-03-04 04:35:56', '', '', '', '', 14, 5, 6, 'SCHOOL'),
(936, 'NONE56d912a296d608.51209881', 'MICHAEL', 'MANITO', 'LALAP', '', '09178678141', 1, '2016-03-04 12:44:18', '2016-03-04 12:44:18', '', '2016-03-04 12:44:18', '', 1, 6, 6, '2016-03-04 04:44:18', '2016-03-04 04:44:18', '', '', '', '', 40, 8, 6, 'acb'),
(937, 'NONE56d9159bc3e7d0.35566089', 'Mariel Josh', 'Dolom', 'Tiongson', '', '09158978837', 1, '2016-03-04 12:56:59', '2016-03-04 12:56:59', '', '2016-03-04 12:56:59', '', 2, 1, 5, '2016-03-04 04:56:59', '2016-03-04 04:56:59', '', '', '', '', 21, 5, 6, 'UPLB'),
(938, 'NONE56d9159d2bc116.00745585', 'Mariel Josh', 'Dolom', 'Tiongson', '', '09158978837', 1, '2016-03-04 12:57:01', '2016-03-04 12:57:01', '', '2016-03-04 12:57:01', '', 2, 1, 5, '2016-03-04 04:57:01', '2016-03-04 04:57:01', '', '', '', '', 21, 5, 6, 'UPLB'),
(939, 'NONE56d915e9aef795.63788047', 'Christian June', 'Salcedo', 'Reyes', '', '09359431531', 1, '2016-03-04 12:58:17', '2016-03-04 12:58:17', '', '2016-03-04 12:58:17', '', 1, 4, 5, '2016-03-04 04:58:17', '2016-03-04 04:58:17', '', '', '', '', 19, 5, 6, ''),
(940, 'NONE56d9169c770634.24071928', 'JONALYN MAE', 'DULAY', 'BORAGAY', '', '09075627699', 1, '2016-03-04 13:01:16', '2016-03-04 13:01:16', '', '2016-03-04 13:01:16', '', 2, 1, 5, '2016-03-04 05:01:16', '2016-03-04 05:01:16', '', '', '', '', 13, 5, 6, ''),
(941, 'NONE56d916d74cacc7.53123362', 'JEZZALYN', 'ACLAN', 'AGAPAY', '', '09093648191', 1, '2016-03-04 13:02:15', '2016-03-04 13:02:15', '', '2016-03-04 13:02:15', '', 2, 1, 5, '2016-03-04 05:02:15', '2016-03-04 05:02:15', '', '', '', '', 13, 5, 6, ''),
(942, 'NONE56d91717dffcb8.59137409', 'MARICEL', 'PALERACIO', 'BRAGAIS', '', '09097559257', 1, '2016-03-04 13:03:19', '2016-03-04 13:03:19', '', '2016-03-04 13:03:19', '', 2, 1, 5, '2016-03-04 05:03:19', '2016-03-04 05:03:19', '', '', '', '', 14, 5, 6, ''),
(943, 'NONE56d91725360c87.44752064', 'Pamela Nicole', 'I', 'Villanueva', '', '09368175723', 1, '2016-03-04 13:03:33', '2016-03-04 13:03:33', '', '2016-03-04 13:03:33', '', 2, 14, 5, '2016-03-04 05:03:33', '2016-03-04 05:03:33', '', '', '', '', 12, 5, 6, 'Los Banos Community National School Poblacion'),
(944, 'NONE56d91bd475ba62.72495684', 'Jonathan', 'De Castro', 'Austria', '', '09268793931', 1, '2016-03-04 13:23:32', '2016-03-04 13:23:32', '', '2016-03-04 13:23:32', '', 1, 6, 5, '2016-03-04 05:23:32', '2016-03-04 05:23:32', '', '', '', '', 22, 8, 6, 'UPLB Foundation, Inc.'),
(945, 'NONE56d91bece1a3d6.61755064', 'GREGORIO', 'CAMELLO', 'ARIENE', '', '09179685098', 1, '2016-03-04 13:23:56', '2016-03-04 13:23:56', '', '2016-03-04 13:23:56', '', 1, 1, 6, '2016-03-04 05:23:56', '2016-03-04 05:23:56', '', '', '', '', 29, 8, 6, 'uplbfi'),
(946, 'NONE56d91c342c06b6.56742185', 'Abegail', 'Villas', 'Gillado', '', '09161620421', 1, '2016-03-04 13:25:08', '2016-03-04 13:25:08', '', '2016-03-04 13:25:08', '', 2, 6, 5, '2016-03-04 05:25:08', '2016-03-04 05:25:08', '', '', '', '', 22, 8, 6, 'UPLBFI'),
(947, 'NONE56d91c43402165.28056432', 'Jonalyn', 'Magadia', 'Sandro', '', '09264939942', 1, '2016-03-04 13:25:23', '2016-03-04 13:25:23', '', '2016-03-04 13:25:23', '', 2, 6, 5, '2016-03-04 05:25:23', '2016-03-04 05:25:23', '', '', '', '', 24, 8, 6, 'UPLB Foundation, Inc.'),
(948, '07529', 'Chaira Faye', 'Litong', 'Ferran', '', '09066737557', 1, '2016-02-23 10:14:48', '2016-02-23 10:14:48', '', '2016-02-23 10:14:48', '', 2, 6, 5, '2016-02-23 02:14:48', '2016-02-23 02:14:48', '', '', '', '', 20, 7, 5, 'DOST IV-A'),
(949, '07521', 'Quimby Mari', 'Rimas', 'Genota', '', '0', 1, '2016-02-23 10:15:19', '2016-02-23 10:15:19', '', '2016-02-23 10:15:19', '', 2, 6, 5, '2016-02-23 02:15:19', '2016-02-23 02:15:19', '', '', '', '', 22, 7, 5, 'dost'),
(950, '07507', 'Draven', 'C', 'Flores', '', 'a', 1, '2016-02-23 10:59:44', '2016-02-23 10:59:44', '', '2016-02-23 10:59:44', '', 1, 6, 5, '2016-02-23 02:59:44', '2016-02-23 02:59:44', '', '', '', '', 9, 5, 5, 'a'),
(951, '07512', 'Jeslie francheska', '', 'Chua', '', '', 1, '2016-02-23 11:09:52', '2016-02-23 11:09:52', '', '2016-02-23 11:09:52', '', 2, 6, 5, '2016-02-23 03:09:52', '2016-02-23 03:09:52', '', '', '', '', 8, 5, 5, ''),
(952, '07503', 'Beatrix Ezhil', '', 'Fernandez', '', '', 1, '2016-02-23 11:14:43', '2016-02-23 11:14:43', '', '2016-02-23 11:14:43', '', 2, 6, 5, '2016-02-23 03:14:43', '2016-02-23 03:14:43', '', '', '', '', 4, 5, 5, ''),
(953, '07510', 'Gwen', '', 'Garcia', '', '', 1, '2016-02-23 11:15:38', '2016-02-23 11:15:38', '', '2016-02-23 11:15:38', '', 2, 6, 5, '2016-02-23 03:15:38', '2016-02-23 03:15:38', '', '', '', '', 3, 5, 5, ''),
(954, '07509', 'Axle jon Aeros', '', 'Alcantara', '', '', 1, '2016-02-23 11:17:18', '2016-02-23 11:17:18', '', '2016-02-23 11:17:18', '', 2, 6, 5, '2016-02-23 03:17:18', '2016-02-23 03:17:18', '', '', '', '', 4, 5, 5, ''),
(955, '07514', 'Clemencia ', '', 'Mendoza', '', '', 1, '2016-02-23 11:18:16', '2016-02-23 11:18:16', '', '2016-02-23 11:18:16', '', 2, 6, 5, '2016-02-23 03:18:16', '2016-02-23 03:18:16', '', '', '', '', 40, 9, 5, ''),
(956, '07506', 'John Nathaniel', '', 'Abrigo', '', '', 1, '2016-02-23 11:25:47', '2016-02-23 11:25:47', '', '2016-02-23 11:25:47', '', 1, 6, 5, '2016-02-23 03:25:47', '2016-02-23 03:25:47', '', '', '', '', 10, 5, 5, ''),
(957, '07504', 'Precious Roshayne', 'T.', 'Ong', '', '', 1, '2016-02-23 11:25:53', '2016-02-23 11:25:53', '', '2016-02-23 11:25:53', '', 2, 6, 5, '2016-02-23 03:25:53', '2016-02-23 03:25:53', '', '', '', '', 10, 5, 5, ''),
(958, '07505', 'Jero <iguel', '', 'Bonilla', '', '', 1, '2016-02-23 11:26:57', '2016-02-23 11:26:57', '', '2016-02-23 11:26:57', '', 1, 6, 5, '2016-02-23 03:26:57', '2016-02-23 03:26:57', '', '', '', '', 11, 5, 5, ''),
(959, '07531', 'John Gerard', '', 'Tolentino', '', '', 1, '2016-02-23 11:27:59', '2016-02-23 11:27:59', '', '2016-02-23 11:27:59', '', 1, 6, 5, '2016-02-23 03:27:59', '2016-02-23 03:27:59', '', '', '', '', 4, 5, 5, ''),
(960, '07515', 'Denise', '', 'Dulman', '', '', 1, '2016-02-23 11:28:42', '2016-02-23 11:28:42', '', '2016-02-23 11:28:42', '', 2, 6, 5, '2016-02-23 03:28:42', '2016-02-23 03:28:42', '', '', '', '', 10, 5, 5, ''),
(961, '07543', 'Urielle', '', 'Dulman', '', '', 1, '2016-02-23 11:37:18', '2016-02-23 11:37:18', '', '2016-02-23 11:37:18', '', 2, 6, 5, '2016-02-23 03:37:18', '2016-02-23 03:37:18', '', '', '', '', 12, 5, 5, ''),
(962, '07533', 'Iya Lorin', '', 'Bondad', '', '', 1, '2016-02-23 11:38:09', '2016-02-23 11:38:09', '', '2016-02-23 11:38:09', '', 2, 6, 5, '2016-02-23 03:38:09', '2016-02-23 03:38:09', '', '', '', '', 11, 5, 5, ''),
(963, '07542', 'John Bernard', '', 'Gatchalan', '', '', 1, '2016-02-23 11:38:45', '2016-02-23 11:38:45', '', '2016-02-23 11:38:45', '', 1, 6, 5, '2016-02-23 03:38:45', '2016-02-23 03:38:45', '', '', '', '', 11, 5, 5, ''),
(964, '07524', 'Amiel', '', 'Enobio', '', '', 1, '2016-02-23 11:40:36', '2016-02-23 11:40:36', '', '2016-02-23 11:40:36', '', 1, 6, 5, '2016-02-23 03:40:36', '2016-02-23 03:40:36', '', '', '', '', 12, 5, 5, ''),
(965, '07523', 'Guile', '', 'Minimirito', '', '', 1, '2016-02-23 11:42:17', '2016-02-23 11:42:17', '', '2016-02-23 11:42:17', '', 1, 6, 5, '2016-02-23 03:42:17', '2016-02-23 03:42:17', '', '', '', '', 16, 5, 5, ''),
(966, '07526', 'Ericson', '', 'Amante', '', '', 1, '2016-02-23 11:43:39', '2016-02-23 11:43:39', '', '2016-02-23 11:43:39', '', 1, 6, 5, '2016-02-23 03:43:39', '2016-02-23 03:43:39', '', '', '', '', 21, 5, 5, ''),
(967, '07536', 'Yvan', 'R', 'Taberna', '', '1', 1, '2016-02-23 11:44:16', '2016-02-23 11:44:16', '', '2016-02-23 11:44:16', '', 1, 6, 5, '2016-02-23 03:44:16', '2016-02-23 03:44:16', '', '', '', '', 14, 5, 5, 'qqq'),
(968, '07508', 'John Joshua ', 'g', 'Garcia', '', '1', 1, '2016-02-23 12:07:38', '2016-02-23 12:07:38', '', '2016-02-23 12:07:38', '', 1, 6, 5, '2016-02-23 04:07:38', '2016-02-23 04:07:38', '', '', '', '', 10, 5, 5, 'q'),
(969, '07513', 'Raiden bernard', 'B', 'Bayacal', '', '1`', 1, '2016-02-23 12:08:26', '2016-02-23 12:08:26', '', '2016-02-23 12:08:26', '', 1, 6, 5, '2016-02-23 04:08:26', '2016-02-23 04:08:26', '', '', '', '', 10, 5, 5, 'q'),
(970, '07534', 'Julius', 'M ', 'Lazona', '', '1', 1, '2016-02-23 12:09:01', '2016-02-23 12:09:01', '', '2016-02-23 12:09:01', '', 1, 6, 5, '2016-02-23 04:09:01', '2016-02-23 04:09:01', '', '', '', '', 10, 5, 5, ''),
(971, '07544', 'Hayden ', 'E', 'Punzalan', '', '1', 1, '2016-02-23 12:09:49', '2016-02-23 12:09:49', '', '2016-02-23 12:09:49', '', 2, 6, 5, '2016-02-23 04:09:49', '2016-02-23 04:09:49', '', '', '', '', 7, 5, 5, '1'),
(972, '07546', 'Mae', 'R', 'Carenciano', '', '1', 1, '2016-02-23 12:13:24', '2016-02-23 12:13:24', '', '2016-02-23 12:13:24', '', 2, 6, 5, '2016-02-23 04:13:24', '2016-02-23 04:13:24', '', '', '', '', 12, 5, 5, ''),
(973, '07525', 'Jea MAe', 'W', 'Cabanillas', '', '1', 1, '2016-02-23 12:15:37', '2016-02-23 12:15:37', '', '2016-02-23 12:15:37', '', 2, 6, 5, '2016-02-23 04:15:37', '2016-02-23 04:15:37', '', '', '', '', 13, 5, 5, 'q'),
(974, '07535', 'Ayrah', 'Bukid', 'Alvero', '', '', 1, '2016-02-23 12:16:25', '2016-02-23 12:16:25', '', '2016-02-23 12:16:25', '', 2, 6, 5, '2016-02-23 04:16:25', '2016-02-23 04:16:25', '', '', '', '', 13, 5, 5, ''),
(975, '07530', 'Lyan', 'F', 'Reyes', '', '1', 1, '2016-02-23 12:16:38', '2016-02-23 12:16:38', '', '2016-02-23 12:16:38', '', 1, 6, 5, '2016-02-23 04:16:38', '2016-02-23 04:16:38', '', '', '', '', 9, 5, 5, 'q'),
(976, '07527', 'Jamaica', 'C', 'Alvero', '', '', 1, '2016-02-23 12:17:21', '2016-02-23 12:17:21', '', '2016-02-23 12:17:21', '', 2, 6, 5, '2016-02-23 04:17:21', '2016-02-23 04:17:21', '', '', '', '', 11, 5, 5, ''),
(977, '07537', 'Mariene Thea', 'Sevilla', 'Dimaunahan', '', '1', 1, '2016-02-23 12:17:58', '2016-02-23 12:17:58', '', '2016-02-23 12:17:58', '', 2, 6, 5, '2016-02-23 04:17:58', '2016-02-23 04:17:58', '', '', '', '', 9, 5, 5, 'q'),
(978, '07547', 'Chanille POcholo', 'G', 'Dela Paz', '', '1', 1, '2016-02-23 12:19:01', '2016-02-23 12:19:01', '', '2016-02-23 12:19:01', '', 1, 6, 5, '2016-02-23 04:19:01', '2016-02-23 04:19:01', '', '', '', '', 12, 5, 5, 'a'),
(979, '07545', 'Reynelio', 'D', 'Salvador', '', '', 1, '2016-02-23 12:25:34', '2016-02-23 12:25:34', '', '2016-02-23 12:25:34', '', 1, 6, 5, '2016-02-23 04:25:34', '2016-02-23 04:25:34', '', '', '', '', 11, 5, 5, ''),
(980, '07550', 'Rolan', 'B', 'Ang', '', '1', 1, '2016-02-23 12:43:17', '2016-02-23 12:43:17', '', '2016-02-23 12:43:17', '', 1, 6, 5, '2016-02-23 04:43:17', '2016-02-23 04:43:17', '', '', '', '', 10, 5, 5, 'q'),
(981, '374540', 'Joaquin', 'J', 'Bita ', '', '', 1, '2016-02-23 12:50:25', '2016-02-23 12:50:25', '', '2016-02-23 12:50:25', '', 1, 1, 5, '2016-02-23 04:50:25', '2016-02-23 04:50:25', '', '', '', '', 11, 5, 5, ''),
(982, '07502', 'analyn', 'a', 'aalarcon', '', 'a', 1, '2016-02-23 12:52:42', '2016-02-23 12:52:42', '', '2016-02-23 12:52:42', '', 1, 6, 5, '2016-02-23 04:52:42', '2016-02-23 04:52:42', '', '', '', '', 12, 5, 5, 'a'),
(983, '07538', 'Erwin ', 'p', 'Pujanes', '', '1', 1, '2016-02-23 13:05:10', '2016-02-23 13:05:10', '', '2016-02-23 13:05:10', '', 1, 6, 5, '2016-02-23 05:05:10', '2016-02-23 05:05:10', '', '', '', '', 42, 5, 5, 'Red Cross'),
(984, '07528', 'Antonino', 'D', 'De Leon', '', '1', 1, '2016-02-23 13:22:19', '2016-02-23 13:22:19', '', '2016-02-23 13:22:19', '', 1, 6, 5, '2016-02-23 05:22:19', '2016-02-23 05:22:19', '', '', '', '', 9, 5, 5, 'a'),
(985, '07520', 'Ivan', 'I', 'Ilao', '', '1', 1, '2016-02-23 13:23:37', '2016-02-23 13:23:37', '', '2016-02-23 13:23:37', '', 1, 6, 5, '2016-02-23 05:23:37', '2016-02-23 05:23:37', '', '', '', '', 9, 5, 5, 'Nino Jesus Montessori School'),
(986, '07522', 'Mikka', 'G', 'Favorito', '', '1', 1, '2016-02-23 13:30:24', '2016-02-23 13:30:24', '', '2016-02-23 13:30:24', '', 2, 6, 5, '2016-02-23 05:30:24', '2016-02-23 05:30:24', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(987, '07516', 'John Andrei', '', 'Uranga', '', '', 1, '2016-02-23 13:31:14', '2016-02-23 13:31:14', '', '2016-02-23 13:31:14', '', 1, 6, 5, '2016-02-23 05:31:14', '2016-02-23 05:31:14', '', '', '', '', 12, 5, 5, ''),
(988, '07548', 'REN', 'A', 'Tubay', '', '1', 1, '2016-02-23 13:31:40', '2016-02-23 13:31:40', '', '2016-02-23 13:31:40', '', 1, 6, 5, '2016-02-23 05:31:40', '2016-02-23 05:31:40', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(989, '07518', 'Gerald ', '', 'Pelismino', '', '', 1, '2016-02-23 13:32:07', '2016-02-23 13:32:07', '', '2016-02-23 13:32:07', '', 1, 6, 5, '2016-02-23 05:32:07', '2016-02-23 05:32:07', '', '', '', '', 11, 5, 5, ''),
(990, '07511', 'Ralph', '', 'Gahon', '', '', 1, '2016-02-23 13:33:19', '2016-02-23 13:33:19', '', '2016-02-23 13:33:19', '', 1, 6, 5, '2016-02-23 05:33:19', '2016-02-23 05:33:19', '', '', '', '', 10, 5, 5, ''),
(991, '07549', 'Aicelle', 'A', 'Avecilla', '', '1', 1, '2016-02-23 13:33:39', '2016-02-23 13:33:39', '', '2016-02-23 13:33:39', '', 2, 6, 5, '2016-02-23 05:33:39', '2016-02-23 05:33:39', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(992, '07539', 'Romarc', '', 'Dimaandal', '', '', 1, '2016-02-23 13:33:55', '2016-02-23 13:33:55', '', '2016-02-23 13:33:55', '', 1, 6, 5, '2016-02-23 05:33:55', '2016-02-23 05:33:55', '', '', '', '', 11, 5, 5, ''),
(993, '07517', 'Gracie', 'R', 'Lanting', '', '1', 1, '2016-02-23 13:34:30', '2016-02-23 13:34:30', '', '2016-02-23 13:34:30', '', 2, 6, 5, '2016-02-23 05:34:30', '2016-02-23 05:34:30', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(994, '07541', 'Jedryc', '', 'Romero', '', '', 1, '2016-02-23 13:34:36', '2016-02-23 13:34:36', '', '2016-02-23 13:34:36', '', 1, 6, 5, '2016-02-23 05:34:36', '2016-02-23 05:34:36', '', '', '', '', 11, 5, 5, ''),
(995, '07532', 'Franchesca', 'A', 'Sabino', '', '1', 1, '2016-02-23 13:35:46', '2016-02-23 13:35:46', '', '2016-02-23 13:35:46', '', 2, 6, 5, '2016-02-23 05:35:46', '2016-02-23 05:35:46', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(996, '07721', 'Leana ', '', 'Infante', '', '', 1, '2016-02-23 13:37:19', '2016-02-23 13:37:19', '', '2016-02-23 13:37:19', '', 2, 6, 5, '2016-02-23 05:37:19', '2016-02-23 05:37:19', '', '', '', '', 12, 5, 5, ''),
(997, '07729', 'Clyde', '', 'Reyes', '', '', 1, '2016-02-23 13:39:56', '2016-02-23 13:39:56', '', '2016-02-23 13:39:56', '', 2, 6, 5, '2016-02-23 05:39:56', '2016-02-23 05:39:56', '', '', '', '', 8, 5, 5, ''),
(998, '07726', 'Miyesha', '', 'Fontanilla', '', '', 1, '2016-02-23 13:43:42', '2016-02-23 13:43:42', '', '2016-02-23 13:43:42', '', 2, 6, 5, '2016-02-23 05:43:42', '2016-02-23 05:43:42', '', '', '', '', 9, 5, 5, ''),
(999, '07722', 'Cerafin', '', 'Ki,utaw', '', '', 1, '2016-02-23 13:45:16', '2016-02-23 13:45:16', '', '2016-02-23 13:45:16', '', 1, 6, 5, '2016-02-23 05:45:16', '2016-02-23 05:45:16', '', '', '', '', 6, 5, 5, ''),
(1000, '07728', 'Zan Eros', '', 'Policarpio', '', '', 1, '2016-02-23 13:48:26', '2016-02-23 13:48:26', '', '2016-02-23 13:48:26', '', 1, 6, 5, '2016-02-23 05:48:26', '2016-02-23 05:48:26', '', '', '', '', 11, 5, 5, ''),
(1001, '07725', 'Alwyn', 'A', 'Eleazar', '', '1', 1, '2016-02-23 14:03:24', '2016-02-23 14:03:24', '', '2016-02-23 14:03:24', '', 1, 6, 5, '2016-02-23 06:03:24', '2016-02-23 06:03:24', '', '', '', '', 14, 5, 5, 'Nino Jesus'),
(1002, '07727', 'Shzean Vashti', 'L', 'Garcia', '', '1', 1, '2016-02-23 14:04:27', '2016-02-23 14:04:27', '', '2016-02-23 14:04:27', '', 1, 6, 5, '2016-02-23 06:04:27', '2016-02-23 06:04:27', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1003, '07724', 'Jaella', 'B ', 'Cabilles', '', '1', 1, '2016-02-23 14:10:58', '2016-02-23 14:10:58', '', '2016-02-23 14:10:58', '', 2, 6, 5, '2016-02-23 06:10:58', '2016-02-23 06:10:58', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1004, '07723', 'Seth ', 'E', 'Avancado', '', '1', 1, '2016-02-23 14:13:45', '2016-02-23 14:13:45', '', '2016-02-23 14:13:45', '', 1, 6, 5, '2016-02-23 06:13:45', '2016-02-23 06:13:45', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1005, '07731', 'Charles ', 'R. ', 'Asio', '', '1', 1, '2016-02-23 14:14:48', '2016-02-23 14:14:48', '', '2016-02-23 14:14:48', '', 1, 6, 5, '2016-02-23 06:14:48', '2016-02-23 06:14:48', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1006, '07740', 'Princess ', 'G', 'Andal', '', '1', 1, '2016-02-23 14:15:31', '2016-02-23 14:15:31', '', '2016-02-23 14:15:31', '', 2, 6, 5, '2016-02-23 06:15:31', '2016-02-23 06:15:31', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1007, '07778', 'John', 'D', 'Salavador', '', '1', 1, '2016-02-23 14:16:29', '2016-02-23 14:16:29', '', '2016-02-23 14:16:29', '', 1, 6, 5, '2016-02-23 06:16:29', '2016-02-23 06:16:29', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1008, '07757', 'Nicolas', 'MIso', 'Avancado', '', '1', 1, '2016-02-23 14:17:25', '2016-02-23 14:17:25', '', '2016-02-23 14:17:25', '', 1, 6, 5, '2016-02-23 06:17:25', '2016-02-23 06:17:25', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1009, '07767', 'Nikko ', 'M', 'Caasi', '', '1', 1, '2016-02-23 14:18:09', '2016-02-23 14:18:09', '', '2016-02-23 14:18:09', '', 1, 6, 5, '2016-02-23 06:18:09', '2016-02-23 06:18:09', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1010, '07756', 'Gabriel ', 'B', 'Ortega', '', '1', 1, '2016-02-23 14:18:50', '2016-02-23 14:18:50', '', '2016-02-23 14:18:50', '', 1, 6, 5, '2016-02-23 06:18:50', '2016-02-23 06:18:50', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1011, '07747', 'Djiin ', 'V', 'Baclaan', '', '1', 1, '2016-02-23 14:19:35', '2016-02-23 14:19:35', '', '2016-02-23 14:19:35', '', 1, 6, 5, '2016-02-23 06:19:35', '2016-02-23 06:19:35', '', '', '', '', 6, 5, 5, 'Nino Jesus'),
(1012, '07760', 'Jonathan', 'M', 'Sabarias', '', '1', 1, '2016-02-23 14:20:24', '2016-02-23 14:20:24', '', '2016-02-23 14:20:24', '', 1, 6, 5, '2016-02-23 06:20:24', '2016-02-23 06:20:24', '', '', '', '', 6, 5, 5, 'Nino Jesus'),
(1013, '07770', 'Ava', 'Q', 'Suspena', '', '1', 1, '2016-02-23 14:21:01', '2016-02-23 14:21:01', '', '2016-02-23 14:21:01', '', 2, 6, 5, '2016-02-23 06:21:01', '2016-02-23 06:21:01', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1014, '07780', 'Kate', 'D', 'Guevarra', '', '1', 1, '2016-02-23 14:21:44', '2016-02-23 14:21:44', '', '2016-02-23 14:21:44', '', 2, 6, 5, '2016-02-23 06:21:44', '2016-02-23 06:21:44', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1015, '07777', 'Cassandra ', 'B', 'Ocampo', '', '1', 1, '2016-02-23 14:22:53', '2016-02-23 14:22:53', '', '2016-02-23 14:22:53', '', 2, 6, 5, '2016-02-23 06:22:53', '2016-02-23 06:22:53', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1016, '07746', 'Claire ', 'P', 'Rivera', '', '1', 1, '2016-02-23 14:23:37', '2016-02-23 14:23:37', '', '2016-02-23 14:23:37', '', 2, 6, 5, '2016-02-23 06:23:37', '2016-02-23 06:23:37', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1017, '07759', 'Martina ', 'S', 'Doria', '', '1', 1, '2016-02-23 14:24:21', '2016-02-23 14:24:21', '', '2016-02-23 14:24:21', '', 2, 6, 5, '2016-02-23 06:24:21', '2016-02-23 06:24:21', '', '', '', '', 6, 5, 5, 'Nino Jesus'),
(1018, '07750', 'Francesca ', 'B', 'Dimaculangan', '', '1', 1, '2016-02-23 14:25:11', '2016-02-23 14:25:11', '', '2016-02-23 14:25:11', '', 2, 6, 5, '2016-02-23 06:25:11', '2016-02-23 06:25:11', '', '', '', '', 6, 5, 5, 'NINO JESUS'),
(1019, '07779', 'Jodie', 'G', 'Barleta', '', '1', 1, '2016-02-23 14:26:05', '2016-02-23 14:26:05', '', '2016-02-23 14:26:05', '', 2, 6, 5, '2016-02-23 06:26:05', '2016-02-23 06:26:05', '', '', '', '', 6, 5, 5, 'Nino Jesus'),
(1020, '07769', 'Chloe ', 'D ', 'Gaurano', '', '1', 1, '2016-02-23 14:27:51', '2016-02-23 14:27:51', '', '2016-02-23 14:27:51', '', 2, 6, 5, '2016-02-23 06:27:51', '2016-02-23 06:27:51', '', '', '', '', 6, 5, 5, 'nino Jesus'),
(1021, '07776', 'James', 'C', 'Porciuncula', '', '1', 1, '2016-02-23 14:28:52', '2016-02-23 14:28:52', '', '2016-02-23 14:28:52', '', 1, 6, 5, '2016-02-23 06:28:52', '2016-02-23 06:28:52', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1022, '07732', 'Atom', 'B ', 'Ano', '', '1', 1, '2016-02-23 14:31:53', '2016-02-23 14:31:53', '', '2016-02-23 14:31:53', '', 1, 6, 5, '2016-02-23 06:31:53', '2016-02-23 06:31:53', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1023, '07733', 'Jarele', 'E', 'Rasonable', '', '1', 1, '2016-02-23 14:32:33', '2016-02-23 14:32:33', '', '2016-02-23 14:32:33', '', 1, 6, 5, '2016-02-23 06:32:33', '2016-02-23 06:32:33', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1024, '07783', 'Eliele', 'R. ', 'De Villa', '', '1', 1, '2016-02-23 14:33:23', '2016-02-23 14:33:23', '', '2016-02-23 14:33:23', '', 1, 6, 5, '2016-02-23 06:33:23', '2016-02-23 06:33:23', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1025, '07786', 'Aaron ', 'S', 'Fernandez', '', '1', 1, '2016-02-23 14:33:58', '2016-02-23 14:33:58', '', '2016-02-23 14:33:58', '', 1, 6, 5, '2016-02-23 06:33:58', '2016-02-23 06:33:58', '', '', '', '', 6, 5, 5, 'Nino Jesusq'),
(1026, '07796', 'David ', 'D', 'Ton', '', '1', 1, '2016-02-23 14:34:50', '2016-02-23 14:34:50', '', '2016-02-23 14:34:50', '', 1, 6, 5, '2016-02-23 06:34:50', '2016-02-23 06:34:50', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1027, '07745', 'Gabriel', 'Marco', 'Pilares', '', '', 1, '2016-02-23 14:37:21', '2016-02-23 14:37:21', '', '2016-02-23 14:37:21', '', 1, 6, 5, '2016-02-23 06:37:21', '2016-02-23 06:37:21', '', '', '', '', 7, 5, 5, 'Nino Jesus'),
(1028, '07790', 'Jamaica', 'R', 'Albero', '', '1', 1, '2016-02-23 14:47:37', '2016-02-23 14:47:37', '', '2016-02-23 14:47:37', '', 2, 6, 5, '2016-02-23 06:47:37', '2016-02-23 06:47:37', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1029, '07800', 'Paulyn', 'B', 'Amante', '', '1', 1, '2016-02-23 14:48:29', '2016-02-23 14:48:29', '', '2016-02-23 14:48:29', '', 2, 6, 5, '2016-02-23 06:48:29', '2016-02-23 06:48:29', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1030, '07789', 'Russel', 'A', 'Salvador', '', '1', 1, '2016-02-23 14:53:41', '2016-02-23 14:53:41', '', '2016-02-23 14:53:41', '', 1, 6, 5, '2016-02-23 06:53:41', '2016-02-23 06:53:41', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1031, '7799', 'Nikko', 'L', 'Casi', '', '1', 1, '2016-02-23 14:54:16', '2016-02-23 14:54:16', '', '2016-02-23 14:54:16', '', 1, 6, 5, '2016-02-23 06:54:16', '2016-02-23 06:54:16', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1032, '07809', 'Princess', 'B', 'Andal', '', '1', 1, '2016-02-23 14:57:34', '2016-02-23 14:57:34', '', '2016-02-23 14:57:34', '', 2, 6, 5, '2016-02-23 06:57:34', '2016-02-23 06:57:34', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1033, '07819', 'Paul', 'B', 'Amante', '', '1', 1, '2016-02-23 15:03:05', '2016-02-23 15:03:05', '', '2016-02-23 15:03:05', '', 2, 6, 5, '2016-02-23 07:03:05', '2016-02-23 07:03:05', '', '', '', '', 10, 5, 5, 'Nino jesus'),
(1034, '07829', 'Jamaica', '', 'alvero', '', '', 1, '2016-02-23 15:03:43', '2016-02-23 15:03:43', '', '2016-02-23 15:03:43', '', 2, 6, 5, '2016-02-23 07:03:43', '2016-02-23 07:03:43', '', '', '', '', 12, 5, 5, ''),
(1035, '07839', 'Euhanna', 'C', 'Alvaran', '', '1', 1, '2016-02-23 15:04:08', '2016-02-23 15:04:08', '', '2016-02-23 15:04:08', '', 2, 5, 5, '2016-02-23 07:04:08', '2016-02-23 07:04:08', '', '', '', '', 11, 5, 5, 'Nino jesus'),
(1036, '07787', 'Johanna', '', 'Beltran', '', '', 1, '2016-02-23 15:04:37', '2016-02-23 15:04:37', '', '2016-02-23 15:04:37', '', 2, 6, 5, '2016-02-23 07:04:37', '2016-02-23 07:04:37', '', '', '', '', 10, 5, 5, ''),
(1037, '07807', 'Paulyn ', '', 'Amante', '', '', 1, '2016-02-23 15:08:34', '2016-02-23 15:08:34', '', '2016-02-23 15:08:34', '', 2, 6, 5, '2016-02-23 07:08:34', '2016-02-23 07:08:34', '', '', '', '', 11, 5, 5, ''),
(1038, '07797', 'Atom', '', 'Miyano', '', '', 1, '2016-02-23 15:10:18', '2016-02-23 15:10:18', '', '2016-02-23 15:10:18', '', 1, 6, 5, '2016-02-23 07:10:18', '2016-02-23 07:10:18', '', '', '', '', 8, 5, 5, ''),
(1039, '07794', 'Russel ', '', 'Salvador', '', '', 1, '2016-02-23 15:16:01', '2016-02-23 15:16:01', '', '2016-02-23 15:16:01', '', 1, 1, 5, '2016-02-23 07:16:01', '2016-02-23 07:16:01', '', '', '', '', 8, 5, 5, ''),
(1040, '07788', 'Rochelle', 'Lat', 'Cruz', '', '09261173535', 1, '2016-02-24 10:17:49', '2016-02-24 10:17:49', '', '2016-02-24 10:17:49', '', 2, 6, 5, '2016-02-24 02:17:49', '2016-02-24 02:17:49', '', '', '', '', 21, 7, 5, 'DOST IV-A'),
(1041, '07820', 'Chaira Faye', 'Litong', 'Ferran', '', '09066737557', 1, '2016-02-24 10:19:15', '2016-02-24 10:19:15', '', '2016-02-24 10:19:15', '', 2, 6, 5, '2016-02-24 02:19:15', '2016-02-24 02:19:15', '', '', '', '', 20, 7, 5, ''),
(1042, '07840', 'Zan Eros ', '', 'Policarpio', '', '', 1, '2016-02-24 10:36:42', '2016-02-24 10:36:42', '', '2016-02-24 10:36:42', '', 1, 6, 5, '2016-02-24 02:36:42', '2016-02-24 02:36:42', '', '', '', '', 11, 5, 5, ''),
(1043, '07830', 'John Angelo', '', 'Singuay', '', '', 1, '2016-02-24 10:37:25', '2016-02-24 10:37:25', '', '2016-02-24 10:37:25', '', 1, 6, 5, '2016-02-24 02:37:25', '2016-02-24 02:37:25', '', '', '', '', 13, 5, 5, ''),
(1044, '07836', 'John Joshua', '', 'Garcia', '', '', 1, '2016-02-24 10:37:53', '2016-02-24 10:37:53', '', '2016-02-24 10:37:53', '', 1, 6, 5, '2016-02-24 02:37:53', '2016-02-24 02:37:53', '', '', '', '', 12, 5, 5, ''),
(1045, '07785', 'Francis', '', 'Ligay', '', '', 1, '2016-02-24 10:38:20', '2016-02-24 10:38:20', '', '2016-02-24 10:38:20', '', 1, 6, 5, '2016-02-24 02:38:20', '2016-02-24 02:38:20', '', '', '', '', 11, 5, 5, ''),
(1046, '07791', 'Nikko', '', 'Caasid', '', '', 1, '2016-02-24 10:39:43', '2016-02-24 10:39:43', '', '2016-02-24 10:39:43', '', 1, 6, 5, '2016-02-24 02:39:43', '2016-02-24 02:39:43', '', '', '', '', 9, 5, 5, ''),
(1047, '07781', 'Rayden', '', 'Bayacal', '', '', 1, '2016-02-24 10:40:19', '2016-02-24 10:40:19', '', '2016-02-24 10:40:19', '', 1, 6, 5, '2016-02-24 02:40:19', '2016-02-24 02:40:19', '', '', '', '', 9, 5, 5, ''),
(1048, '07765', 'Ronin', '', 'Bayacal', '', '', 1, '2016-02-24 10:40:46', '2016-02-24 10:40:46', '', '2016-02-24 10:40:46', '', 1, 6, 5, '2016-02-24 02:40:46', '2016-02-24 02:40:46', '', '', '', '', 11, 5, 5, ''),
(1049, '07817', 'Anrey', '', 'Cauyan', '', '', 1, '2016-02-24 10:41:22', '2016-02-24 10:41:22', '', '2016-02-24 10:41:22', '', 1, 6, 5, '2016-02-24 02:41:22', '2016-02-24 02:41:22', '', '', '', '', 12, 5, 5, ''),
(1050, '07821', 'Erna', '', 'Gusi', '', '', 1, '2016-02-24 10:56:20', '2016-02-24 10:56:20', '', '2016-02-24 10:56:20', '', 2, 6, 5, '2016-02-24 02:56:20', '2016-02-24 02:56:20', '', '', '', '', 32, 5, 5, ''),
(1051, '07755', 'Giselle', '', 'Bispe', '', '', 1, '2016-02-24 10:57:01', '2016-02-24 10:57:01', '', '2016-02-24 10:57:01', '', 2, 6, 5, '2016-02-24 02:57:01', '2016-02-24 02:57:01', '', '', '', '', 10, 5, 5, ''),
(1052, '07828', 'Rachelle', '', 'Esmillo', '', '', 1, '2016-02-24 10:57:27', '2016-02-24 10:57:27', '', '2016-02-24 10:57:27', '', 1, 6, 5, '2016-02-24 02:57:27', '2016-02-24 02:57:27', '', '', '', '', 12, 5, 5, ''),
(1053, '07831', 'Nino Jerome', 'R', 'Fernandez', '', '', 1, '2016-02-24 10:57:46', '2016-02-24 10:57:46', '', '2016-02-24 10:57:46', '', 1, 6, 5, '2016-02-24 02:57:46', '2016-02-24 02:57:46', '', '', '', '', 12, 5, 5, 'San Antonio II Elementary School'),
(1054, '07814', 'Janna', '', 'Marasigan', '', '', 1, '2016-02-24 10:57:54', '2016-02-24 10:57:54', '', '2016-02-24 10:57:54', '', 2, 6, 5, '2016-02-24 02:57:54', '2016-02-24 02:57:54', '', '', '', '', 10, 5, 5, ''),
(1055, '07818', 'Ashley', '', 'Calalag', '', '', 1, '2016-02-24 10:58:19', '2016-02-24 10:58:19', '', '2016-02-24 10:58:19', '', 2, 6, 5, '2016-02-24 02:58:19', '2016-02-24 02:58:19', '', '', '', '', 10, 5, 5, ''),
(1056, '07763', 'Sharalyn', '', 'De La Cruz', '', '', 1, '2016-02-24 10:58:44', '2016-02-24 10:58:44', '', '2016-02-24 10:58:44', '', 2, 6, 5, '2016-02-24 02:58:44', '2016-02-24 02:58:44', '', '', '', '', 11, 5, 5, ''),
(1057, '07773', 'Francis Lorenz', '', 'Benjamin', '', '', 1, '2016-02-24 10:58:54', '2016-02-24 10:58:54', '', '2016-02-24 10:58:54', '', 1, 6, 5, '2016-02-24 02:58:54', '2016-02-24 02:58:54', '', '', '', '', 11, 5, 5, ''),
(1058, '07838', 'Denise Chloe', '', 'Almario', '', '', 1, '2016-02-24 10:59:20', '2016-02-24 10:59:20', '', '2016-02-24 10:59:20', '', 2, 6, 5, '2016-02-24 02:59:20', '2016-02-24 02:59:20', '', '', '', '', 11, 5, 5, ''),
(1059, '07802', 'Jorie May', '', 'Bueno', '', '', 1, '2016-02-24 10:59:22', '2016-02-24 10:59:22', '', '2016-02-24 10:59:22', '', 2, 6, 5, '2016-02-24 02:59:22', '2016-02-24 02:59:22', '', '', '', '', 12, 5, 5, ''),
(1060, '07804', 'Leslyn', '', 'Briones', '', '', 1, '2016-02-24 10:59:56', '2016-02-24 10:59:56', '', '2016-02-24 10:59:56', '', 2, 6, 5, '2016-02-24 02:59:56', '2016-02-24 02:59:56', '', '', '', '', 12, 5, 5, ''),
(1061, '07808', 'Lance', '', 'Victoria', '', '', 1, '2016-02-24 11:00:41', '2016-02-24 11:00:41', '', '2016-02-24 11:00:41', '', 1, 6, 5, '2016-02-24 03:00:41', '2016-02-24 03:00:41', '', '', '', '', 15, 5, 5, ''),
(1062, '07798', 'Jonalyn', '', 'Calingasan', '', '', 1, '2016-02-24 11:02:41', '2016-02-24 11:02:41', '', '2016-02-24 11:02:41', '', 2, 6, 5, '2016-02-24 03:02:41', '2016-02-24 03:02:41', '', '', '', '', 30, 5, 5, ''),
(1063, '07824', 'Janabell', '', 'Ilagan', '', '', 1, '2016-02-24 11:03:21', '2016-02-24 11:03:21', '', '2016-02-24 11:03:21', '', 2, 6, 5, '2016-02-24 03:03:21', '2016-02-24 03:03:21', '', '', '', '', 10, 5, 5, ''),
(1064, '07782', 'Bea Marie', '', 'Calderon', '', '', 1, '2016-02-24 11:03:49', '2016-02-24 11:03:49', '', '2016-02-24 11:03:49', '', 2, 6, 5, '2016-02-24 03:03:49', '2016-02-24 03:03:49', '', '', '', '', 12, 5, 5, ''),
(1065, '07742', 'Shamel', '', 'Coma', '', '', 1, '2016-02-24 11:04:15', '2016-02-24 11:04:15', '', '2016-02-24 11:04:15', '', 2, 6, 5, '2016-02-24 03:04:15', '2016-02-24 03:04:15', '', '', '', '', 12, 5, 5, ''),
(1066, '07801', 'Jaone', 'C.', 'Enrile', '', '', 1, '2016-02-24 11:04:32', '2016-02-24 11:04:32', '', '2016-02-24 11:04:32', '', 2, 6, 5, '2016-02-24 03:04:32', '2016-02-24 03:04:32', '', '', '', '', 10, 5, 5, 'San Antiono Elementary School'),
(1067, '07811', 'Mary Jean Jewell', 'A.', 'Vasquez', '', '', 1, '2016-02-24 11:07:05', '2016-02-24 11:07:05', '', '2016-02-24 11:07:05', '', 2, 6, 5, '2016-02-24 03:07:05', '2016-02-24 03:07:05', '', '', '', '', 12, 5, 5, 'San Antonio Elementary School'),
(1068, '07784', 'Lynniel Andre', '', 'Segggggg', '', '', 1, '2016-02-24 11:08:00', '2016-02-24 11:08:00', '', '2016-02-24 11:08:00', '', 1, 6, 5, '2016-02-24 03:08:00', '2016-02-24 03:08:00', '', '', '', '', 12, 5, 5, ''),
(1069, '07832', 'Albert Brylle', '', 'Fernandez', '', '', 1, '2016-02-24 11:08:45', '2016-02-24 11:08:45', '', '2016-02-24 11:08:45', '', 1, 6, 5, '2016-02-24 03:08:45', '2016-02-24 03:08:45', '', '', '', '', 12, 5, 5, ''),
(1070, '07752', 'Russel', '', 'Dulay', '', '', 1, '2016-02-24 11:09:25', '2016-02-24 11:09:25', '', '2016-02-24 11:09:25', '', 1, 6, 5, '2016-02-24 03:09:25', '2016-02-24 03:09:25', '', '', '', '', 12, 5, 5, ''),
(1071, '07812', 'Alecsandra', '', 'Amante', '', '', 1, '2016-02-24 11:09:53', '2016-02-24 11:09:53', '', '2016-02-24 11:09:53', '', 1, 6, 5, '2016-02-24 03:09:53', '2016-02-24 03:09:53', '', '', '', '', 10, 5, 5, ''),
(1072, '07762', 'King Harold', 'V.', 'Cortez', '', '', 1, '2016-02-24 11:10:00', '2016-02-24 11:10:00', '', '2016-02-24 11:10:00', '', 1, 6, 5, '2016-02-24 03:10:00', '2016-02-24 03:10:00', '', '', '', '', 12, 5, 5, 'San Antonio Elementary School'),
(1073, '07822', 'Pauline', '', 'Capon', '', '', 1, '2016-02-24 11:10:14', '2016-02-24 11:10:14', '', '2016-02-24 11:10:14', '', 1, 6, 5, '2016-02-24 03:10:14', '2016-02-24 03:10:14', '', '', '', '', 13, 5, 5, ''),
(1074, '07835', 'China', '', 'Dela Pena', '', '', 1, '2016-02-24 11:10:40', '2016-02-24 11:10:40', '', '2016-02-24 11:10:40', '', 1, 6, 5, '2016-02-24 03:10:40', '2016-02-24 03:10:40', '', '', '', '', 12, 5, 5, '');
INSERT INTO `er_visitors` (`vis_id`, `vis_code`, `vis_fname`, `vis_mname`, `vis_lname`, `vis_email`, `vis_gsm`, `vis_enabled`, `vis_last_loggedin`, `vis_created`, `vis_created_by`, `vis_lastmodified`, `vis_lastmodified_by`, `gender_id`, `region_id`, `civil_id`, `created_at`, `updated_at`, `vis_barangay`, `vis_municipality`, `vis_province`, `vis_address`, `vis_age`, `class_id`, `event_id`, `vis_company`) VALUES
(1075, '07772', 'Jerwin', 'M.', 'Ternorio', '', '', 1, '2016-02-24 11:10:56', '2016-02-24 11:10:56', '', '2016-02-24 11:10:56', '', 1, 6, 5, '2016-02-24 03:10:56', '2016-02-24 03:10:56', '', '', '', '', 11, 5, 5, 'San Antonio Elementary School'),
(1076, '07825', 'Jay ar', '', 'Manere', '', '', 1, '2016-02-24 11:11:11', '2016-02-24 11:11:11', '', '2016-02-24 11:11:11', '', 1, 6, 5, '2016-02-24 03:11:11', '2016-02-24 03:11:11', '', '', '', '', 13, 5, 5, ''),
(1077, '07751', 'Lourdes', '', 'Fernandez', '', '', 1, '2016-02-24 11:11:37', '2016-02-24 11:11:37', '', '2016-02-24 11:11:37', '', 1, 6, 5, '2016-02-24 03:11:37', '2016-02-24 03:11:37', '', '', '', '', 12, 5, 5, ''),
(1078, '07775', 'Julius Miguel', '', 'Resonable', '', '', 1, '2016-02-24 11:14:46', '2016-02-24 11:14:46', '', '2016-02-24 11:14:46', '', 1, 6, 5, '2016-02-24 03:14:46', '2016-02-24 03:14:46', '', '', '', '', 10, 5, 5, ''),
(1079, '07744', 'Lyan', '', 'Reyes', '', '', 1, '2016-02-24 11:18:21', '2016-02-24 11:18:21', '', '2016-02-24 11:18:21', '', 1, 6, 5, '2016-02-24 03:18:21', '2016-02-24 03:18:21', '', '', '', '', 9, 5, 5, ''),
(1080, '07761', 'Jhonel Ivan', 'I.', 'Cortez', '', '', 1, '2016-02-24 11:22:08', '2016-02-24 11:22:08', '', '2016-02-24 11:22:08', '', 1, 6, 5, '2016-02-24 03:22:08', '2016-02-24 03:22:08', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1081, '07803', 'Jcel Miguel', '', 'Alinea', '', '', 1, '2016-02-24 11:29:56', '2016-02-24 11:29:56', '', '2016-02-24 11:29:56', '', 1, 6, 5, '2016-02-24 03:29:56', '2016-02-24 03:29:56', '', '', '', '', 13, 5, 5, ''),
(1082, '07557', 'Jhonel Ivan', '', 'Cortez', '', '', 1, '2016-02-24 11:30:29', '2016-02-24 11:30:29', '', '2016-02-24 11:30:29', '', 1, 6, 5, '2016-02-24 03:30:29', '2016-02-24 03:30:29', '', '', '', '', 9, 5, 5, ''),
(1083, '07793', 'Gian Marcus', '', 'Mendoza', '', '', 1, '2016-02-24 11:31:01', '2016-02-24 11:31:01', '', '2016-02-24 11:31:01', '', 1, 6, 5, '2016-02-24 03:31:01', '2016-02-24 03:31:01', '', '', '', '', 12, 5, 5, ''),
(1084, '07552', 'Lyan', '', 'Reyes', '', '', 1, '2016-02-24 11:32:21', '2016-02-24 11:32:21', '', '2016-02-24 11:32:21', '', 1, 6, 5, '2016-02-24 03:32:21', '2016-02-24 03:32:21', '', '', '', '', 9, 5, 5, ''),
(1085, '07569', 'Rowland', '', 'Ang', '', '', 1, '2016-02-24 11:38:56', '2016-02-24 11:38:56', '', '2016-02-24 11:38:56', '', 1, 6, 5, '2016-02-24 03:38:56', '2016-02-24 03:38:56', '', '', '', '', 10, 5, 5, ''),
(1086, '07602', 'Dailyn', '', 'Preconcillo', '', '', 1, '2016-02-24 11:50:00', '2016-02-24 11:50:00', '', '2016-02-24 11:50:00', '', 2, 6, 5, '2016-02-24 03:50:00', '2016-02-24 03:50:00', '', '', '', '', 11, 5, 5, ''),
(1087, '07610', 'Rency', '', 'Kalaw', '', '', 1, '2016-02-24 11:50:36', '2016-02-24 11:50:36', '', '2016-02-24 11:50:36', '', 2, 6, 5, '2016-02-24 03:50:36', '2016-02-24 03:50:36', '', '', '', '', 11, 5, 5, ''),
(1088, '07603', 'Jenny', '', 'Chavez', '', '', 1, '2016-02-24 11:51:10', '2016-02-24 11:51:10', '', '2016-02-24 11:51:10', '', 2, 6, 5, '2016-02-24 03:51:10', '2016-02-24 03:51:10', '', '', '', '', 11, 5, 5, 'San Miguel'),
(1089, '07601', 'Ramela', '', 'Malabanan', '', '', 1, '2016-02-24 11:54:26', '2016-02-24 11:54:26', '', '2016-02-24 11:54:26', '', 2, 6, 5, '2016-02-24 03:54:26', '2016-02-24 03:54:26', '', '', '', '', 12, 5, 5, 'San Miguel Elem School'),
(1090, '07609', 'Michaela', '', 'Hernandez', '', '', 1, '2016-02-24 11:55:07', '2016-02-24 11:55:07', '', '2016-02-24 11:55:07', '', 2, 6, 5, '2016-02-24 03:55:07', '2016-02-24 03:55:07', '', '', '', '', 11, 5, 5, 'San Miguel Elem School'),
(1091, '07606', 'Jamaica', '', 'Alvero', '', '', 1, '2016-02-24 11:55:46', '2016-02-24 11:55:46', '', '2016-02-24 11:55:46', '', 2, 6, 5, '2016-02-24 03:55:46', '2016-02-24 03:55:46', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1092, '07607', 'Hannah', '', 'Alvaran', '', '', 1, '2016-02-24 11:56:18', '2016-02-24 11:56:18', '', '2016-02-24 11:56:18', '', 2, 6, 5, '2016-02-24 03:56:18', '2016-02-24 03:56:18', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1093, '07579', 'Frances <aya', '', 'Beltran', '', '', 1, '2016-02-24 11:56:55', '2016-02-24 11:56:55', '', '2016-02-24 11:56:55', '', 2, 6, 5, '2016-02-24 03:56:55', '2016-02-24 03:56:55', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1094, '07608', 'Kristel Anne', '', 'Esconde', '', '', 1, '2016-02-24 11:57:40', '2016-02-24 11:57:40', '', '2016-02-24 11:57:40', '', 2, 6, 5, '2016-02-24 03:57:40', '2016-02-24 03:57:40', '', '', '', '', 12, 5, 5, 'San Miguel Elem School'),
(1095, '07570', 'Janice', '', 'Betients', '', '', 1, '2016-02-24 11:57:45', '2016-02-24 11:57:45', '', '2016-02-24 11:57:45', '', 2, 6, 5, '2016-02-24 03:57:45', '2016-02-24 03:57:45', '', '', '', '', 12, 5, 5, ''),
(1096, '07605', 'Nicole', '', 'De Luna', '', '', 1, '2016-02-24 11:58:17', '2016-02-24 11:58:17', '', '2016-02-24 11:58:17', '', 2, 6, 5, '2016-02-24 03:58:17', '2016-02-24 03:58:17', '', '', '', '', 11, 5, 5, 'San Miguel Elem School'),
(1097, '07580', 'Karryl', '', 'Canillada', '', '', 1, '2016-02-24 11:58:26', '2016-02-24 11:58:26', '', '2016-02-24 11:58:26', '', 2, 6, 5, '2016-02-24 03:58:26', '2016-02-24 03:58:26', '', '', '', '', 11, 5, 5, ''),
(1098, '07568', 'Christine', '', 'Jesmundo', '', '', 1, '2016-02-24 11:58:59', '2016-02-24 11:58:59', '', '2016-02-24 11:58:59', '', 2, 6, 5, '2016-02-24 03:58:59', '2016-02-24 03:58:59', '', '', '', '', 11, 5, 5, 'San Miguel Elem School'),
(1099, '07578', 'Cristel Joy', '', 'Exconde', '', '', 1, '2016-02-24 11:59:06', '2016-02-24 11:59:06', '', '2016-02-24 11:59:06', '', 2, 6, 5, '2016-02-24 03:59:06', '2016-02-24 03:59:06', '', '', '', '', 12, 5, 5, ''),
(1100, '07567', 'Axel', '', 'Morris', '', '', 1, '2016-02-24 11:59:43', '2016-02-24 11:59:43', '', '2016-02-24 11:59:43', '', 1, 6, 5, '2016-02-24 03:59:43', '2016-02-24 03:59:43', '', '', '', '', 11, 5, 5, 'SAn Gabriel Elem School'),
(1101, '07834', 'John Laurence', '', 'Calingasan', '', '', 1, '2016-02-24 11:59:49', '2016-02-24 11:59:49', '', '2016-02-24 11:59:49', '', 1, 6, 5, '2016-02-24 03:59:49', '2016-02-24 03:59:49', '', '', '', '', 12, 5, 5, ''),
(1102, '07758', 'Gabriel', 'Rosales', 'Gonzales', '', '', 1, '2016-02-24 12:00:37', '2016-02-24 12:00:37', '', '2016-02-24 12:00:37', '', 1, 6, 5, '2016-02-24 04:00:37', '2016-02-24 04:00:37', '', '', '', '', 12, 5, 5, 'SAn Miguel ES'),
(1103, '07555', 'Royce Atom', '', 'Villeno', '', '', 1, '2016-02-24 12:03:20', '2016-02-24 12:03:20', '', '2016-02-24 12:03:20', '', 1, 6, 5, '2016-02-24 04:03:20', '2016-02-24 04:03:20', '', '', '', '', 8, 5, 5, 'Nino Jesus'),
(1104, '07774', 'Glaiza', '', 'Heponia', '', '', 1, '2016-02-24 12:07:24', '2016-02-24 12:07:24', '', '2016-02-24 12:07:24', '', 2, 6, 5, '2016-02-24 04:07:24', '2016-02-24 04:07:24', '', '', '', '', 11, 5, 5, 'San Miguel ES'),
(1105, '07743', 'Nicole', '', 'De Luna', '', '', 1, '2016-02-24 12:09:18', '2016-02-24 12:09:18', '', '2016-02-24 12:09:18', '', 2, 6, 5, '2016-02-24 04:09:18', '2016-02-24 04:09:18', '', '', '', '', 11, 5, 5, 'San Miguel ES'),
(1106, '07553', 'Ara', '', 'Marabe', '', '', 1, '2016-02-24 12:12:34', '2016-02-24 12:12:34', '', '2016-02-24 12:12:34', '', 2, 6, 5, '2016-02-24 04:12:34', '2016-02-24 04:12:34', '', '', '', '', 12, 5, 5, 'San Antonio ES'),
(1107, '07805', 'King Harold', '', 'Cortez', '', '', 1, '2016-02-24 12:13:22', '2016-02-24 12:13:22', '', '2016-02-24 12:13:22', '', 1, 6, 5, '2016-02-24 04:13:22', '2016-02-24 04:13:22', '', '', '', '', 12, 5, 5, 'San Antonio ES'),
(1108, '07706', 'Julius', '', 'Resonable', '', '', 1, '2016-02-24 12:15:14', '2016-02-24 12:15:14', '', '2016-02-24 12:15:14', '', 1, 6, 5, '2016-02-24 04:15:14', '2016-02-24 04:15:14', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1109, '07617', 'Mariene Thea', '', 'Dimaunahan', '', '', 1, '2016-02-24 12:16:04', '2016-02-24 12:16:04', '', '2016-02-24 12:16:04', '', 2, 6, 5, '2016-02-24 04:16:04', '2016-02-24 04:16:04', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1110, '07616', 'Seth', '', 'Avansado', '', '', 1, '2016-02-24 12:16:39', '2016-02-24 12:16:39', '', '2016-02-24 12:16:39', '', 1, 6, 5, '2016-02-24 04:16:39', '2016-02-24 04:16:39', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1111, '07615', 'Hanna Shane', '', 'Umali', '', '', 1, '2016-02-24 12:17:51', '2016-02-24 12:17:51', '', '2016-02-24 12:17:51', '', 2, 6, 5, '2016-02-24 04:17:51', '2016-02-24 04:17:51', '', '', '', '', 11, 5, 5, 'San miguel ES'),
(1112, '07614', 'Garreth', '', 'Bicomong', '', '', 1, '2016-02-24 12:18:03', '2016-02-24 12:18:03', '', '2016-02-24 12:18:03', '', 1, 6, 5, '2016-02-24 04:18:03', '2016-02-24 04:18:03', '', '', '', '', 10, 5, 5, 'San  Miguel ES'),
(1113, '07618', 'Nikka Jane', '', 'Favorito', '', '', 1, '2016-02-24 12:19:24', '2016-02-24 12:19:24', '', '2016-02-24 12:19:24', '', 2, 6, 5, '2016-02-24 04:19:24', '2016-02-24 04:19:24', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1114, '07619', 'Jhonel Ivan', '', 'Cortez', '', '', 1, '2016-02-24 12:21:38', '2016-02-24 12:21:38', '', '2016-02-24 12:21:38', '', 1, 6, 5, '2016-02-24 04:21:38', '2016-02-24 04:21:38', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1115, '07620', 'Alwyn', '', 'Eleazar', '', '', 1, '2016-02-24 12:22:31', '2016-02-24 12:22:31', '', '2016-02-24 12:22:31', '', 1, 7, 5, '2016-02-24 04:22:31', '2016-02-24 04:22:31', '', '', '', '', 14, 5, 5, 'Nino Jesus'),
(1116, '07641', 'James benedict', '', 'Panargaya', '', '', 1, '2016-02-24 12:26:54', '2016-02-24 12:26:54', '', '2016-02-24 12:26:54', '', 1, 6, 5, '2016-02-24 04:26:54', '2016-02-24 04:26:54', '', '', '', '', 10, 5, 5, 'San Miguel ES'),
(1117, '07649', 'Russel Clarence', '', 'Rubio', '', '', 1, '2016-02-24 12:31:03', '2016-02-24 12:31:03', '', '2016-02-24 12:31:03', '', 1, 6, 5, '2016-02-24 04:31:03', '2016-02-24 04:31:03', '', '', '', '', 12, 5, 5, 'San Antonio ES'),
(1118, '07650', 'Jude Noah', '', 'Alcantara', '', '', 1, '2016-02-24 12:31:40', '2016-02-24 12:31:40', '', '2016-02-24 12:31:40', '', 1, 6, 5, '2016-02-24 04:31:40', '2016-02-24 04:31:40', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1119, '07642', 'Ara', '', 'Marabe', '', '', 1, '2016-02-24 12:31:40', '2016-02-24 12:31:40', '', '2016-02-24 12:31:40', '', 2, 6, 5, '2016-02-24 04:31:40', '2016-02-24 04:31:40', '', '', '', '', 12, 5, 5, 'San Antonio ES'),
(1120, '07644', 'Rhan Herbert', '', 'Glorioso', '', '', 1, '2016-02-24 12:38:39', '2016-02-24 12:38:39', '', '2016-02-24 12:38:39', '', 1, 6, 5, '2016-02-24 04:38:39', '2016-02-24 04:38:39', '', '', '', '', 11, 5, 5, ''),
(1121, '07709', 'Deidre Charise', '', 'Almario', '', '', 1, '2016-02-24 12:39:17', '2016-02-24 12:39:17', '', '2016-02-24 12:39:17', '', 2, 6, 5, '2016-02-24 04:39:17', '2016-02-24 04:39:17', '', '', '', '', 10, 5, 5, 'San Antonio ES'),
(1122, '07749', 'Michelle', '', 'Esmillo', '', '', 1, '2016-02-24 12:40:08', '2016-02-24 12:40:08', '', '2016-02-24 12:40:08', '', 2, 6, 5, '2016-02-24 04:40:08', '2016-02-24 04:40:08', '', '', '', '', 12, 5, 5, 'San Antonio ES'),
(1123, '07643', 'Ayrah', '', 'Alvero', '', '', 1, '2016-02-24 12:45:25', '2016-02-24 12:45:25', '', '2016-02-24 12:45:25', '', 2, 6, 5, '2016-02-24 04:45:25', '2016-02-24 04:45:25', '', '', '', '', 13, 5, 5, 'Nino Jesus'),
(1124, '07766', 'Aliah', '', 'Venzon', '', '', 1, '2016-02-24 12:46:49', '2016-02-24 12:46:49', '', '2016-02-24 12:46:49', '', 2, 6, 5, '2016-02-24 04:46:49', '2016-02-24 04:46:49', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(1125, '07645', 'Geran', '', 'Felismino', '', '', 1, '2016-02-24 12:47:42', '2016-02-24 12:47:42', '', '2016-02-24 12:47:42', '', 1, 6, 5, '2016-02-24 04:47:42', '2016-02-24 04:47:42', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1126, '07577', 'Jan Bianca', '', 'Oranga', '', '', 1, '2016-02-24 12:56:20', '2016-02-24 12:56:20', '', '2016-02-24 12:56:20', '', 2, 6, 5, '2016-02-24 04:56:20', '2016-02-24 04:56:20', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1127, '07768', 'John Loui', '', 'Umali', '', '', 1, '2016-02-24 12:57:13', '2016-02-24 12:57:13', '', '2016-02-24 12:57:13', '', 1, 6, 5, '2016-02-24 04:57:13', '2016-02-24 04:57:13', '', '', '', '', 15, 5, 5, 'Nino Jesus'),
(1128, '07593', 'Iverson', '', 'Javier', '', '', 1, '2016-02-24 13:00:59', '2016-02-24 13:00:59', '', '2016-02-24 13:00:59', '', 1, 6, 5, '2016-02-24 05:00:59', '2016-02-24 05:00:59', '', '', '', '', 14, 5, 5, 'Nino Jesus'),
(1129, '07646', 'Cee Jay', '', 'Atienza', '', '', 1, '2016-02-24 13:08:10', '2016-02-24 13:08:10', '', '2016-02-24 13:08:10', '', 1, 6, 5, '2016-02-24 05:08:10', '2016-02-24 05:08:10', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(1130, '07748', 'John Franz', '', 'Belen', '', '', 1, '2016-02-24 13:30:41', '2016-02-24 13:30:41', '', '2016-02-24 13:30:41', '', 1, 6, 5, '2016-02-24 05:30:41', '2016-02-24 05:30:41', '', '', '', '', 11, 5, 5, 'Don Enrique Bautista ES'),
(1131, '07647', 'Rhenx', '', 'Mechel', '', '', 1, '2016-02-24 13:30:51', '2016-02-24 13:30:51', '', '2016-02-24 13:30:51', '', 1, 6, 5, '2016-02-24 05:30:51', '2016-02-24 05:30:51', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1132, '07813', 'Bren Carl', '', 'Laluan', '', '', 1, '2016-02-24 13:31:20', '2016-02-24 13:31:20', '', '2016-02-24 13:31:20', '', 1, 6, 5, '2016-02-24 05:31:20', '2016-02-24 05:31:20', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1133, '07566', 'Saara Eunice', '', 'Dela Pena', '', '', 1, '2016-02-24 13:31:37', '2016-02-24 13:31:37', '', '2016-02-24 13:31:37', '', 2, 6, 5, '2016-02-24 05:31:37', '2016-02-24 05:31:37', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1134, '07576', 'Shaina', '', 'Herrera', '', '', 1, '2016-02-24 13:31:50', '2016-02-24 13:31:50', '', '2016-02-24 13:31:50', '', 2, 6, 5, '2016-02-24 05:31:50', '2016-02-24 05:31:50', '', '', '', '', 12, 5, 5, 'Don Enrique ES'),
(1135, '07565', 'Clarisse', '', 'Mercado', '', '', 1, '2016-02-24 13:32:27', '2016-02-24 13:32:27', '', '2016-02-24 13:32:27', '', 2, 6, 5, '2016-02-24 05:32:27', '2016-02-24 05:32:27', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1136, '07575', 'Micah Irish', '', 'De Alday', '', '', 1, '2016-02-24 13:32:45', '2016-02-24 13:32:45', '', '2016-02-24 13:32:45', '', 2, 6, 5, '2016-02-24 05:32:45', '2016-02-24 05:32:45', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1137, '07574', 'Keylord', '', 'De Mesa', '', '', 1, '2016-02-24 13:33:02', '2016-02-24 13:33:02', '', '2016-02-24 13:33:02', '', 1, 6, 5, '2016-02-24 05:33:02', '2016-02-24 05:33:02', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1138, '07564', 'Justin', '', 'Bondan', '', '', 1, '2016-02-24 13:33:15', '2016-02-24 13:33:15', '', '2016-02-24 13:33:15', '', 1, 6, 5, '2016-02-24 05:33:15', '2016-02-24 05:33:15', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1139, '07573', 'Nancy', '', 'Binas-o', '', '', 1, '2016-02-24 13:34:44', '2016-02-24 13:34:44', '', '2016-02-24 13:34:44', '', 2, 6, 5, '2016-02-24 05:34:44', '2016-02-24 05:34:44', '', '', '', '', 42, 5, 5, 'Don Enrique ES'),
(1140, '07563', 'Rica ', '', 'Priscilla', '', '', 1, '2016-02-24 13:35:54', '2016-02-24 13:35:54', '', '2016-02-24 13:35:54', '', 2, 6, 5, '2016-02-24 05:35:54', '2016-02-24 05:35:54', '', '', '', '', 33, 5, 5, 'Don Enrique ES'),
(1141, '07571', 'Lycs', '', 'Penetrante', '', '', 1, '2016-02-24 13:47:11', '2016-02-24 13:47:11', '', '2016-02-24 13:47:11', '', 2, 6, 5, '2016-02-24 05:47:11', '2016-02-24 05:47:11', '', '', '', '', 11, 5, 5, 'Don Enrique'),
(1142, '07705', 'Jenny', '', 'Cipres', '', '', 1, '2016-02-24 13:47:16', '2016-02-24 13:47:16', '', '2016-02-24 13:47:16', '', 2, 6, 5, '2016-02-24 05:47:16', '2016-02-24 05:47:16', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1143, '07816', 'Lyca', '', 'Velasco', '', '', 1, '2016-02-24 13:47:45', '2016-02-24 13:47:45', '', '2016-02-24 13:47:45', '', 2, 6, 5, '2016-02-24 05:47:45', '2016-02-24 05:47:45', '', '', '', '', 11, 5, 5, 'Don Enrique'),
(1144, '07792', 'Shane', '', 'Mandigma', '', '', 1, '2016-02-24 13:47:55', '2016-02-24 13:47:55', '', '2016-02-24 13:47:55', '', 2, 6, 5, '2016-02-24 05:47:55', '2016-02-24 05:47:55', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1145, '07826', 'Crystal', '', 'Gapunan', '', '', 1, '2016-02-24 13:48:31', '2016-02-24 13:48:31', '', '2016-02-24 13:48:31', '', 2, 6, 5, '2016-02-24 05:48:31', '2016-02-24 05:48:31', '', '', '', '', 11, 5, 5, 'Don Enrique'),
(1146, '07764', 'Christian Kyle', '', 'Ciudadano', '', '', 1, '2016-02-24 13:48:35', '2016-02-24 13:48:35', '', '2016-02-24 13:48:35', '', 1, 6, 5, '2016-02-24 05:48:35', '2016-02-24 05:48:35', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1147, '07810', 'Kim Mary Nicole', '', 'Banayo', '', '', 1, '2016-02-24 13:49:03', '2016-02-24 13:49:03', '', '2016-02-24 13:49:03', '', 2, 6, 5, '2016-02-24 05:49:03', '2016-02-24 05:49:03', '', '', '', '', 11, 5, 5, 'Don Enrique'),
(1148, '07754', 'Terence', '', 'Enrico', '', '', 1, '2016-02-24 13:49:07', '2016-02-24 13:49:07', '', '2016-02-24 13:49:07', '', 1, 6, 5, '2016-02-24 05:49:07', '2016-02-24 05:49:07', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1149, '07833', 'Leidy Roy', '', 'Lagrama', '', '', 1, '2016-02-24 13:49:35', '2016-02-24 13:49:35', '', '2016-02-24 13:49:35', '', 1, 6, 5, '2016-02-24 05:49:35', '2016-02-24 05:49:35', '', '', '', '', 10, 5, 5, 'Don Enrique'),
(1150, '07734', 'Sheena', '', 'Herrera', '', '', 1, '2016-02-24 13:49:43', '2016-02-24 13:49:43', '', '2016-02-24 13:49:43', '', 2, 6, 5, '2016-02-24 05:49:43', '2016-02-24 05:49:43', '', '', '', '', 12, 5, 5, 'Don Enrique ES'),
(1151, '07735', 'Chiefer', '', 'Delos Santos', '', '', 1, '2016-02-24 13:50:11', '2016-02-24 13:50:11', '', '2016-02-24 13:50:11', '', 1, 6, 5, '2016-02-24 05:50:11', '2016-02-24 05:50:11', '', '', '', '', 11, 5, 5, 'Don Enrique'),
(1152, '07599', 'Sheila Marie', '', 'Banaag', '', '', 1, '2016-02-24 14:03:10', '2016-02-24 14:03:10', '', '2016-02-24 14:03:10', '', 2, 6, 5, '2016-02-24 06:03:10', '2016-02-24 06:03:10', '', '', '', '', 11, 5, 5, 'DEPES'),
(1153, '07707', 'Maria Ella', '', 'Binegarda', '', '', 1, '2016-02-24 14:03:44', '2016-02-24 14:03:44', '', '2016-02-24 14:03:44', '', 2, 6, 5, '2016-02-24 06:03:44', '2016-02-24 06:03:44', '', '', '', '', 10, 5, 5, 'DEPES'),
(1154, '07561', 'Jean Simon', '', 'Dorola', '', '', 1, '2016-02-24 14:04:05', '2016-02-24 14:04:05', '', '2016-02-24 14:04:05', '', 1, 6, 5, '2016-02-24 06:04:05', '2016-02-24 06:04:05', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1155, '07708', 'Allysa', '', 'Lanip', '', '', 1, '2016-02-24 14:04:12', '2016-02-24 14:04:12', '', '2016-02-24 14:04:12', '', 2, 6, 5, '2016-02-24 06:04:12', '2016-02-24 06:04:12', '', '', '', '', 11, 5, 5, 'DEBES'),
(1156, '07736', 'Detroit', '', 'Infanta', '', '', 1, '2016-02-24 14:04:47', '2016-02-24 14:04:47', '', '2016-02-24 14:04:47', '', 1, 6, 5, '2016-02-24 06:04:47', '2016-02-24 06:04:47', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1157, '07741', 'Sachi', '', 'Vispo', '', '', 1, '2016-02-24 14:04:54', '2016-02-24 14:04:54', '', '2016-02-24 14:04:54', '', 2, 6, 5, '2016-02-24 06:04:54', '2016-02-24 06:04:54', '', '', '', '', 10, 5, 5, 'DEBES'),
(1158, '07592', 'Alex', '', 'Princel', '', '', 1, '2016-02-24 14:05:18', '2016-02-24 14:05:18', '', '2016-02-24 14:05:18', '', 1, 6, 5, '2016-02-24 06:05:18', '2016-02-24 06:05:18', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1159, '07771', 'Princess', '', 'Audije', '', '', 1, '2016-02-24 14:05:29', '2016-02-24 14:05:29', '', '2016-02-24 14:05:29', '', 2, 6, 5, '2016-02-24 06:05:29', '2016-02-24 06:05:29', '', '', '', '', 11, 5, 5, 'DEBES'),
(1160, '07554', 'Jasmine', '', 'Sabalo', '', '', 1, '2016-02-24 14:05:56', '2016-02-24 14:05:56', '', '2016-02-24 14:05:56', '', 2, 6, 5, '2016-02-24 06:05:56', '2016-02-24 06:05:56', '', '', '', '', 11, 5, 5, 'DEBES'),
(1161, '07739', 'Danmer John', '', 'Brucal', '', '', 1, '2016-02-24 14:06:05', '2016-02-24 14:06:05', '', '2016-02-24 14:06:05', '', 1, 6, 5, '2016-02-24 06:06:05', '2016-02-24 06:06:05', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1162, '07597', 'Ashley', '', 'Bautista', '', '', 1, '2016-02-24 14:06:23', '2016-02-24 14:06:23', '', '2016-02-24 14:06:23', '', 2, 6, 5, '2016-02-24 06:06:23', '2016-02-24 06:06:23', '', '', '', '', 11, 5, 5, 'DEBES'),
(1163, '07648', 'John Luis', '', 'Pinana', '', '', 1, '2016-02-24 14:16:01', '2016-02-24 14:16:01', '', '2016-02-24 14:16:01', '', 1, 6, 5, '2016-02-24 06:16:01', '2016-02-24 06:16:01', '', '', '', '', 12, 5, 5, 'Don Enrique ES'),
(1164, '07737', 'John Michael', '', 'Marco', '', '', 1, '2016-02-24 14:16:10', '2016-02-24 14:16:10', '', '2016-02-24 14:16:10', '', 1, 6, 5, '2016-02-24 06:16:10', '2016-02-24 06:16:10', '', '', '', '', 10, 5, 5, 'DEBES'),
(1165, '07738', 'Abdullah', '', 'Dumuhaw', '', '', 1, '2016-02-24 14:16:41', '2016-02-24 14:16:41', '', '2016-02-24 14:16:41', '', 1, 6, 5, '2016-02-24 06:16:41', '2016-02-24 06:16:41', '', '', '', '', 12, 5, 5, 'Don Enrique ES'),
(1166, '07815', 'Kenneth', '', 'Macatangay', '', '', 1, '2016-02-24 14:16:56', '2016-02-24 14:16:56', '', '2016-02-24 14:16:56', '', 1, 6, 5, '2016-02-24 06:16:56', '2016-02-24 06:16:56', '', '', '', '', 11, 5, 5, 'DEBES'),
(1167, '07823', 'Melinda', '', 'Gonzales', '', '', 1, '2016-02-24 14:17:08', '2016-02-24 14:17:08', '', '2016-02-24 14:17:08', '', 2, 6, 5, '2016-02-24 06:17:08', '2016-02-24 06:17:08', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1168, '07753', 'Mikhaela', '', 'Dela Pena', '', '', 1, '2016-02-24 14:17:41', '2016-02-24 14:17:41', '', '2016-02-24 14:17:41', '', 2, 6, 5, '2016-02-24 06:17:41', '2016-02-24 06:17:41', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1169, '07595', 'Kriscelle Anne', '', 'Maron', '', '', 1, '2016-02-24 14:17:49', '2016-02-24 14:17:49', '', '2016-02-24 14:17:49', '', 1, 6, 5, '2016-02-24 06:17:49', '2016-02-24 06:17:49', '', '', '', '', 11, 5, 5, 'DEBES'),
(1170, '07594', 'Karen', '', 'De Vera', '', '', 1, '2016-02-24 14:18:17', '2016-02-24 14:18:17', '', '2016-02-24 14:18:17', '', 2, 6, 5, '2016-02-24 06:18:17', '2016-02-24 06:18:17', '', '', '', '', 10, 5, 5, 'DEBES'),
(1171, '07827', 'Ladie', '', 'Guia', '', '', 1, '2016-02-24 14:18:18', '2016-02-24 14:18:18', '', '2016-02-24 14:18:18', '', 2, 6, 5, '2016-02-24 06:18:18', '2016-02-24 06:18:18', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1172, '07560', 'Shann Andrienne', '', 'Tagle', '', '', 1, '2016-02-24 14:18:52', '2016-02-24 14:18:52', '', '2016-02-24 14:18:52', '', 1, 6, 5, '2016-02-24 06:18:52', '2016-02-24 06:18:52', '', '', '', '', 13, 5, 5, 'Don Enrique ES'),
(1173, '07600', 'Llana', '', 'Alimagno', '', '', 1, '2016-02-24 14:18:53', '2016-02-24 14:18:53', '', '2016-02-24 14:18:53', '', 2, 6, 5, '2016-02-24 06:18:53', '2016-02-24 06:18:53', '', '', '', '', 11, 5, 5, 'DEBES'),
(1174, '07661', 'Rance', '', 'Gapunay', '', '', 1, '2016-02-24 14:28:41', '2016-02-24 14:28:41', '', '2016-02-24 14:28:41', '', 1, 6, 5, '2016-02-24 06:28:41', '2016-02-24 06:28:41', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1175, '07662', 'Carl Harrison', '', 'Chavez', '', '', 1, '2016-02-24 14:29:26', '2016-02-24 14:29:26', '', '2016-02-24 14:29:26', '', 1, 6, 5, '2016-02-24 06:29:26', '2016-02-24 06:29:26', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1176, '07670', 'Shen Andrew', '', 'Agarao', '', '', 1, '2016-02-24 14:30:00', '2016-02-24 14:30:00', '', '2016-02-24 14:30:00', '', 1, 6, 5, '2016-02-24 06:30:00', '2016-02-24 06:30:00', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1177, '07669', 'Vench', '', 'Redoncillo', '', '', 1, '2016-02-24 14:30:41', '2016-02-24 14:30:41', '', '2016-02-24 14:30:41', '', 1, 6, 5, '2016-02-24 06:30:41', '2016-02-24 06:30:41', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1178, '07665', 'Larence', '', 'Achero', '', '', 1, '2016-02-24 14:31:17', '2016-02-24 14:31:17', '', '2016-02-24 14:31:17', '', 1, 6, 5, '2016-02-24 06:31:17', '2016-02-24 06:31:17', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1179, '07668', 'Ailyn Red', '', 'Manalo', '', '', 1, '2016-02-24 14:31:50', '2016-02-24 14:31:50', '', '2016-02-24 14:31:50', '', 2, 6, 5, '2016-02-24 06:31:50', '2016-02-24 06:31:50', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1180, '07664', 'John Michael', '', 'Estio', '', '', 1, '2016-02-24 14:32:19', '2016-02-24 14:32:19', '', '2016-02-24 14:32:19', '', 1, 6, 5, '2016-02-24 06:32:19', '2016-02-24 06:32:19', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1181, '07667', 'Angel', '', 'Domingo', '', '', 1, '2016-02-24 14:32:49', '2016-02-24 14:32:49', '', '2016-02-24 14:32:49', '', 2, 6, 5, '2016-02-24 06:32:49', '2016-02-24 06:32:49', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1182, '07666', 'Sheena Mae', '', 'Puyat', '', '', 1, '2016-02-24 14:33:23', '2016-02-24 14:33:23', '', '2016-02-24 14:33:23', '', 2, 6, 5, '2016-02-24 06:33:23', '2016-02-24 06:33:23', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1183, '07651', 'Jana Rishia', '', 'Aguila', '', '', 1, '2016-02-24 14:33:52', '2016-02-24 14:33:52', '', '2016-02-24 14:33:52', '', 2, 6, 5, '2016-02-24 06:33:52', '2016-02-24 06:33:52', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1184, '07663', 'Shen', '', 'Avanzado', '', '', 1, '2016-02-24 14:40:19', '2016-02-24 14:40:19', '', '2016-02-24 14:40:19', '', 1, 6, 5, '2016-02-24 06:40:19', '2016-02-24 06:40:19', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1185, '07652', 'Justin Gan', '', 'Vizkocho', '', '', 1, '2016-02-24 14:43:57', '2016-02-24 14:43:57', '', '2016-02-24 14:43:57', '', 1, 6, 5, '2016-02-24 06:43:57', '2016-02-24 06:43:57', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1186, '07653', 'Shanr', '', 'Sisi', '', '', 1, '2016-02-24 14:44:41', '2016-02-24 14:44:41', '', '2016-02-24 14:44:41', '', 1, 6, 5, '2016-02-24 06:44:41', '2016-02-24 06:44:41', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1187, '07655', 'Jacay', '', 'Barela', '', '', 1, '2016-02-24 14:44:50', '2016-02-24 14:44:50', '', '2016-02-24 14:44:50', '', 2, 6, 5, '2016-02-24 06:44:50', '2016-02-24 06:44:50', '', '', '', '', 13, 5, 5, 'DEBES'),
(1188, '07656', 'Ivee Nicole', '', 'Alcantara', '', '', 1, '2016-02-24 14:45:12', '2016-02-24 14:45:12', '', '2016-02-24 14:45:12', '', 2, 6, 5, '2016-02-24 06:45:12', '2016-02-24 06:45:12', '', '', '', '', 10, 5, 5, 'Don Enrique ES'),
(1189, '07654', 'Misaki', '', 'Dugan', '', '', 1, '2016-02-24 14:45:25', '2016-02-24 14:45:25', '', '2016-02-24 14:45:25', '', 2, 6, 5, '2016-02-24 06:45:25', '2016-02-24 06:45:25', '', '', '', '', 11, 5, 5, 'DEBES'),
(1190, '07657', 'Portia', '', 'Redondo', '', '', 1, '2016-02-24 14:45:56', '2016-02-24 14:45:56', '', '2016-02-24 14:45:56', '', 2, 6, 5, '2016-02-24 06:45:56', '2016-02-24 06:45:56', '', '', '', '', 11, 5, 5, 'DEBES'),
(1191, '07559', 'Rezel ', '', 'Masbate', '', '', 1, '2016-02-24 14:45:57', '2016-02-24 14:45:57', '', '2016-02-24 14:45:57', '', 2, 6, 5, '2016-02-24 06:45:57', '2016-02-24 06:45:57', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1192, '07704', 'Coleen', '', 'Furio', '', '', 1, '2016-02-24 14:46:23', '2016-02-24 14:46:23', '', '2016-02-24 14:46:23', '', 2, 6, 5, '2016-02-24 06:46:23', '2016-02-24 06:46:23', '', '', '', '', 11, 5, 5, 'DEBES'),
(1193, '07658', 'John Michael', '', 'Gapunay', '', '', 1, '2016-02-24 14:46:34', '2016-02-24 14:46:34', '', '2016-02-24 14:46:34', '', 1, 6, 5, '2016-02-24 06:46:34', '2016-02-24 06:46:34', '', '', '', '', 14, 5, 5, 'Don Enrique ES'),
(1194, '07659', 'Patrick', '', 'Bool', '', '', 1, '2016-02-24 14:46:50', '2016-02-24 14:46:50', '', '2016-02-24 14:46:50', '', 1, 6, 5, '2016-02-24 06:46:50', '2016-02-24 06:46:50', '', '', '', '', 11, 5, 5, 'DEBES'),
(1195, '07660', 'Jerrel', '', 'Jose', '', '', 1, '2016-02-24 14:47:05', '2016-02-24 14:47:05', '', '2016-02-24 14:47:05', '', 1, 6, 5, '2016-02-24 06:47:05', '2016-02-24 06:47:05', '', '', '', '', 11, 5, 5, 'Don Enrique ES'),
(1196, '07591', 'John Ray', '', 'Bote', '', '', 1, '2016-02-24 14:47:30', '2016-02-24 14:47:30', '', '2016-02-24 14:47:30', '', 1, 6, 5, '2016-02-24 06:47:30', '2016-02-24 06:47:30', '', '', '', '', 10, 5, 5, 'DEBES'),
(1197, '07710', 'Gian', '', 'Marcos', '', '', 1, '2016-02-24 14:49:55', '2016-02-24 14:49:55', '', '2016-02-24 14:49:55', '', 1, 6, 5, '2016-02-24 06:49:55', '2016-02-24 06:49:55', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(1198, '07680', 'Mikki Joy', '', 'Castillo', '', '', 1, '2016-02-24 15:10:36', '2016-02-24 15:10:36', '', '2016-02-24 15:10:36', '', 2, 6, 5, '2016-02-24 07:10:36', '2016-02-24 07:10:36', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1199, '07671', 'Chantei', '', 'Cortez', '', '', 1, '2016-02-24 15:13:19', '2016-02-24 15:13:19', '', '2016-02-24 15:13:19', '', 2, 6, 5, '2016-02-24 07:13:19', '2016-02-24 07:13:19', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(1200, '07672', 'Michael Ryan', '', 'Sorezo', '', '', 1, '2016-02-24 15:14:29', '2016-02-24 15:14:29', '', '2016-02-24 15:14:29', '', 1, 6, 5, '2016-02-24 07:14:29', '2016-02-24 07:14:29', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1201, '07678', 'Matthew', '', 'Eleazar', '', '', 1, '2016-02-24 15:17:18', '2016-02-24 15:17:18', '', '2016-02-24 15:17:18', '', 1, 6, 5, '2016-02-24 07:17:18', '2016-02-24 07:17:18', '', '', '', '', 14, 5, 5, 'Nino Jesus'),
(1202, '07679', 'Mary Grace', '', 'Olivero', '', '', 1, '2016-02-24 15:19:13', '2016-02-24 15:19:13', '', '2016-02-24 15:19:13', '', 2, 6, 5, '2016-02-24 07:19:13', '2016-02-24 07:19:13', '', '', '', '', 22, 5, 5, 'Nino Jesus'),
(1203, '07675', 'Mary Rose', '', 'Viirey', '', '', 1, '2016-02-24 15:19:56', '2016-02-24 15:19:56', '', '2016-02-24 15:19:56', '', 2, 6, 5, '2016-02-24 07:19:56', '2016-02-24 07:19:56', '', '', '', '', 22, 5, 5, 'Nino Jesus'),
(1204, '07676', 'Ana Carla', '', 'Mesa', '', '', 1, '2016-02-24 15:23:31', '2016-02-24 15:23:31', '', '2016-02-24 15:23:31', '', 2, 6, 5, '2016-02-24 07:23:31', '2016-02-24 07:23:31', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1205, '07677', 'Jayvee', '', 'Bonilla', '', '', 1, '2016-02-24 15:30:23', '2016-02-24 15:30:23', '', '2016-02-24 15:30:23', '', 2, 6, 5, '2016-02-24 07:30:23', '2016-02-24 07:30:23', '', '', '', '', 27, 5, 5, 'Nino Jesus'),
(1206, '07596', 'Iona', '', 'Diones', '', '', 1, '2016-02-24 15:31:08', '2016-02-24 15:31:08', '', '2016-02-24 15:31:08', '', 2, 6, 5, '2016-02-24 07:31:08', '2016-02-24 07:31:08', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1207, '07686', 'May Anthonette', '', 'Guerra', '', '', 1, '2016-02-24 15:33:58', '2016-02-24 15:33:58', '', '2016-02-24 15:33:58', '', 2, 6, 5, '2016-02-24 07:33:58', '2016-02-24 07:33:58', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1208, '07685', 'Aljessa', '', 'Dumaboc', '', '', 1, '2016-02-24 15:34:28', '2016-02-24 15:34:28', '', '2016-02-24 15:34:28', '', 2, 6, 5, '2016-02-24 07:34:28', '2016-02-24 07:34:28', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1209, '07720', 'Paula', '', 'Alcantara', '', '', 1, '2016-02-24 15:36:52', '2016-02-24 15:36:52', '', '2016-02-24 15:36:52', '', 2, 6, 5, '2016-02-24 07:36:52', '2016-02-24 07:36:52', '', '', '', '', 14, 5, 5, 'Nino Jesus'),
(1210, '07714', 'Jea Mae', '', 'Cabanillas', '', '', 1, '2016-02-24 15:37:33', '2016-02-24 15:37:33', '', '2016-02-24 15:37:33', '', 2, 6, 5, '2016-02-24 07:37:33', '2016-02-24 07:37:33', '', '', '', '', 13, 5, 5, 'Nino Jesus'),
(1211, '07718', 'Euann', '', 'Magtibay', '', '', 1, '2016-02-24 15:38:21', '2016-02-24 15:38:21', '', '2016-02-24 15:38:21', '', 1, 6, 5, '2016-02-24 07:38:21', '2016-02-24 07:38:21', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1212, '07719', 'Jacob', '', 'San Jose', '', '', 1, '2016-02-24 15:39:07', '2016-02-24 15:39:07', '', '2016-02-24 15:39:07', '', 1, 6, 5, '2016-02-24 07:39:07', '2016-02-24 07:39:07', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1213, '07717', 'Mariah', '', 'Ramos', '', '', 1, '2016-02-24 15:47:42', '2016-02-24 15:47:42', '', '2016-02-24 15:47:42', '', 2, 6, 5, '2016-02-24 07:47:42', '2016-02-24 07:47:42', '', '', '', '', 12, 5, 5, 'Nino Jesus'),
(1214, '07716', 'Charmaine', '', 'Eleazar', '', '', 1, '2016-02-24 15:49:27', '2016-02-24 15:49:27', '', '2016-02-24 15:49:27', '', 2, 6, 5, '2016-02-24 07:49:27', '2016-02-24 07:49:27', '', '', '', '', 32, 9, 5, 'n/a'),
(1215, '07690', 'Charles', '', 'Asiong', '', '', 1, '2016-02-24 15:54:04', '2016-02-24 15:54:04', '', '2016-02-24 15:54:04', '', 1, 6, 5, '2016-02-24 07:54:04', '2016-02-24 07:54:04', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1216, '07715', 'Jet Ray', '', 'Cabanilla', '', '', 1, '2016-02-24 15:55:17', '2016-02-24 15:55:17', '', '2016-02-24 15:55:17', '', 1, 6, 5, '2016-02-24 07:55:17', '2016-02-24 07:55:17', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1217, '07684', 'Kurl Ivan', '', 'Ilaw', '', '', 1, '2016-02-24 15:57:19', '2016-02-24 15:57:19', '', '2016-02-24 15:57:19', '', 1, 6, 5, '2016-02-24 07:57:19', '2016-02-24 07:57:19', '', '', '', '', 9, 5, 5, 'Nino Jesus'),
(1218, '07712', 'Paulyn', '', 'Amante', '', '', 1, '2016-02-24 15:57:47', '2016-02-24 15:57:47', '', '2016-02-24 15:57:47', '', 2, 6, 5, '2016-02-24 07:57:47', '2016-02-24 07:57:47', '', '', '', '', 10, 5, 5, 'Nino Jesus'),
(1219, '07693', 'Jam', '', 'Villeno', '', '', 1, '2016-02-24 15:59:26', '2016-02-24 15:59:26', '', '2016-02-24 15:59:26', '', 2, 6, 5, '2016-02-24 07:59:26', '2016-02-24 07:59:26', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1220, '07691', 'Janille', '', 'Villeno', '', '', 1, '2016-02-24 16:00:10', '2016-02-24 16:00:10', '', '2016-02-24 16:00:10', '', 2, 6, 5, '2016-02-24 08:00:10', '2016-02-24 08:00:10', '', '', '', '', 21, 5, 5, 'Nino Jesus'),
(1221, '07681', 'Cristina', '', 'Egamin', '', '', 1, '2016-02-24 16:00:50', '2016-02-24 16:00:50', '', '2016-02-24 16:00:50', '', 2, 6, 5, '2016-02-24 08:00:50', '2016-02-24 08:00:50', '', '', '', '', 45, 5, 5, 'Nino Jesus'),
(1222, '07702', 'Thelma', '', 'Oranga', '', '', 1, '2016-02-24 16:01:30', '2016-02-24 16:01:30', '', '2016-02-24 16:01:30', '', 2, 6, 5, '2016-02-24 08:01:30', '2016-02-24 08:01:30', '', '', '', '', 37, 5, 5, 'Nino Jesus'),
(1223, '07713', 'Joko Ymmanuel', '', 'Comia', '', '', 1, '2016-02-24 16:02:02', '2016-02-24 16:02:02', '', '2016-02-24 16:02:02', '', 1, 6, 5, '2016-02-24 08:02:02', '2016-02-24 08:02:02', '', '', '', '', 11, 5, 5, 'Nino Jesus'),
(1224, '07700', 'Mylah', '', 'Escarez', '', '', 1, '2016-02-24 16:05:52', '2016-02-24 16:05:52', '', '2016-02-24 16:05:52', '', 2, 6, 5, '2016-02-24 08:05:52', '2016-02-24 08:05:52', '', '', '', '', 39, 9, 5, 'n/a');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_evaluations`
-- (See below for the actual view)
--
CREATE TABLE `vw_evaluations` (
`eval_id` bigint(20) unsigned
,`eval_firsttime` tinyint(1) unsigned
,`eval_interest` bigint(20) unsigned
,`eval_interest_others` varchar(255)
,`eval_rating_1` tinyint(1) unsigned
,`eval_rating_2` tinyint(1) unsigned
,`eval_rating_3` tinyint(1) unsigned
,`eval_rating_4` tinyint(1) unsigned
,`eval_rating_5` tinyint(1) unsigned
,`eval_rating_6` tinyint(1) unsigned
,`eval_rating_7` tinyint(1) unsigned
,`eval_rating_overall` tinyint(1) unsigned
,`eval_created` datetime
,`eval_created_by` varchar(255)
,`eval_lastmodified` datetime
,`eval_lastmodified_by` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
,`eval_ref_1` tinyint(1) unsigned
,`eval_ref_2` tinyint(1) unsigned
,`eval_ref_3` tinyint(1) unsigned
,`eval_ref_4` tinyint(1) unsigned
,`eval_ref_5` tinyint(1) unsigned
,`eval_ref_6` tinyint(1) unsigned
,`eval_ref_7` tinyint(1) unsigned
,`eval_ref_8` tinyint(1) unsigned
,`eval_ref_9` tinyint(1) unsigned
,`vis_id` bigint(20) unsigned
,`event_id` bigint(20) unsigned
,`eval_file` varchar(255)
,`eval_eval_firsttime_label` varchar(3)
,`eval_ref_1_label` varchar(5)
,`eval_ref_2_label` varchar(2)
,`eval_ref_3_label` varchar(9)
,`eval_ref_4_label` varchar(8)
,`eval_ref_5_label` varchar(6)
,`eval_ref_6_label` varchar(6)
,`eval_ref_7_label` varchar(10)
,`eval_ref_8_label` varchar(8)
,`eval_ref_9_label` char(0)
,`eval_rating_overall_name` varchar(255)
,`vis_code` varchar(255)
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`gender_name` varchar(255)
,`region_name` varchar(255)
,`civil_name` varchar(255)
,`class_id` bigint(20) unsigned
,`class_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_registrants`
-- (See below for the actual view)
--
CREATE TABLE `vw_registrants` (
`vis_count` bigint(21)
,`event_id` bigint(20) unsigned
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_site_visitors`
-- (See below for the actual view)
--
CREATE TABLE `vw_site_visitors` (
`site_id` bigint(20) unsigned
,`vis_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`site_name` varchar(255)
,`vis_code` varchar(255)
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_name` text
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`vis_company` varchar(255)
,`event_id` bigint(20) unsigned
,`class_id` bigint(20) unsigned
,`gender_name` varchar(255)
,`region_name` varchar(255)
,`civil_name` varchar(255)
,`class_name` varchar(255)
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_usergroup_rights`
-- (See below for the actual view)
--
CREATE TABLE `vw_usergroup_rights` (
`ugr_id` bigint(20) unsigned
,`ugr_view` tinyint(1) unsigned
,`ugr_add` tinyint(1) unsigned
,`ugr_edit` tinyint(1) unsigned
,`ugr_delete` tinyint(1) unsigned
,`ugr_approve` tinyint(1) unsigned
,`ur_id` bigint(20) unsigned
,`ug_id` bigint(20) unsigned
,`ugr_lastmodified` datetime
,`ugr_created` datetime
,`ugr_lastmodified_by` varchar(255)
,`ugr_created_by` varchar(255)
,`ug_name` varchar(255)
,`ur_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_users`
-- (See below for the actual view)
--
CREATE TABLE `vw_users` (
`u_id` bigint(20) unsigned
,`u_code` varchar(255)
,`u_fname` varchar(255)
,`u_mname` varchar(255)
,`u_lname` varchar(255)
,`u_email` varchar(255)
,`u_gsm` varchar(255)
,`u_username` varchar(255)
,`u_password` varchar(255)
,`u_enabled` tinyint(1) unsigned
,`u_last_loggedin` datetime
,`u_listname` varchar(255)
,`u_created` datetime
,`u_created_by` varchar(255)
,`u_lastmodified` datetime
,`u_lastmodified_by` varchar(255)
,`ug_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`remember_token` varchar(100)
,`u_name` text
,`ug_name` varchar(255)
,`ug_lastmodified` datetime
,`ug_lastmodified_by` varchar(255)
,`ug_created` datetime
,`ug_created_by` varchar(255)
,`ug_is_admin` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_visitors`
-- (See below for the actual view)
--
CREATE TABLE `vw_visitors` (
`vis_id` bigint(20) unsigned
,`vis_code` varchar(255)
,`vis_fname` varchar(255)
,`vis_mname` varchar(255)
,`vis_lname` varchar(255)
,`vis_name` text
,`vis_email` varchar(255)
,`vis_gsm` varchar(255)
,`vis_enabled` tinyint(1) unsigned
,`vis_last_loggedin` datetime
,`vis_created` datetime
,`vis_created_by` varchar(255)
,`vis_lastmodified` datetime
,`vis_lastmodified_by` varchar(255)
,`gender_id` bigint(20) unsigned
,`region_id` bigint(20) unsigned
,`civil_id` bigint(20) unsigned
,`vis_barangay` varchar(255)
,`vis_municipality` varchar(255)
,`vis_province` varchar(255)
,`vis_address` varchar(255)
,`vis_age` int(10) unsigned
,`vis_company` varchar(255)
,`event_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
,`class_id` bigint(20) unsigned
,`gender_name` varchar(255)
,`region_name` varchar(255)
,`civil_name` varchar(255)
,`class_name` varchar(255)
,`event_title` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_evaluations`
--
DROP TABLE IF EXISTS `vw_evaluations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_evaluations`  AS  select `er_event_evaluations`.`eval_id` AS `eval_id`,`er_event_evaluations`.`eval_firsttime` AS `eval_firsttime`,`er_event_evaluations`.`eval_interest` AS `eval_interest`,`er_event_evaluations`.`eval_interest_others` AS `eval_interest_others`,`er_event_evaluations`.`eval_rating_1` AS `eval_rating_1`,`er_event_evaluations`.`eval_rating_2` AS `eval_rating_2`,`er_event_evaluations`.`eval_rating_3` AS `eval_rating_3`,`er_event_evaluations`.`eval_rating_4` AS `eval_rating_4`,`er_event_evaluations`.`eval_rating_5` AS `eval_rating_5`,`er_event_evaluations`.`eval_rating_6` AS `eval_rating_6`,`er_event_evaluations`.`eval_rating_7` AS `eval_rating_7`,`er_event_evaluations`.`eval_rating_overall` AS `eval_rating_overall`,`er_event_evaluations`.`eval_created` AS `eval_created`,`er_event_evaluations`.`eval_created_by` AS `eval_created_by`,`er_event_evaluations`.`eval_lastmodified` AS `eval_lastmodified`,`er_event_evaluations`.`eval_lastmodified_by` AS `eval_lastmodified_by`,`er_event_evaluations`.`created_at` AS `created_at`,`er_event_evaluations`.`updated_at` AS `updated_at`,`er_event_evaluations`.`eval_ref_1` AS `eval_ref_1`,`er_event_evaluations`.`eval_ref_2` AS `eval_ref_2`,`er_event_evaluations`.`eval_ref_3` AS `eval_ref_3`,`er_event_evaluations`.`eval_ref_4` AS `eval_ref_4`,`er_event_evaluations`.`eval_ref_5` AS `eval_ref_5`,`er_event_evaluations`.`eval_ref_6` AS `eval_ref_6`,`er_event_evaluations`.`eval_ref_7` AS `eval_ref_7`,`er_event_evaluations`.`eval_ref_8` AS `eval_ref_8`,`er_event_evaluations`.`eval_ref_9` AS `eval_ref_9`,`er_event_evaluations`.`vis_id` AS `vis_id`,`er_event_evaluations`.`event_id` AS `event_id`,`er_event_evaluations`.`eval_file` AS `eval_file`,if((`er_event_evaluations`.`eval_firsttime` = 1),'Yes','No') AS `eval_eval_firsttime_label`,if((`er_event_evaluations`.`eval_ref_1` = 1),'Radio','') AS `eval_ref_1_label`,if((`er_event_evaluations`.`eval_ref_2` = 1),'TV','') AS `eval_ref_2_label`,if((`er_event_evaluations`.`eval_ref_3` = 1),'Newspaper','') AS `eval_ref_3_label`,if((`er_event_evaluations`.`eval_ref_4` = 1),'Internet','') AS `eval_ref_4_label`,if((`er_event_evaluations`.`eval_ref_5` = 1),'School','') AS `eval_ref_5_label`,if((`er_event_evaluations`.`eval_ref_6` = 1),'Office','') AS `eval_ref_6_label`,if((`er_event_evaluations`.`eval_ref_7` = 1),'Invitation','') AS `eval_ref_7_label`,if((`er_event_evaluations`.`eval_ref_8` = 1),'Referral','') AS `eval_ref_8_label`,if((`er_event_evaluations`.`eval_ref_9` = 1),'','') AS `eval_ref_9_label`,`er_rates`.`rate_name` AS `eval_rating_overall_name`,`vw_visitors`.`vis_code` AS `vis_code`,`vw_visitors`.`vis_fname` AS `vis_fname`,`vw_visitors`.`vis_mname` AS `vis_mname`,`vw_visitors`.`vis_lname` AS `vis_lname`,`vw_visitors`.`vis_email` AS `vis_email`,`vw_visitors`.`vis_gsm` AS `vis_gsm`,`vw_visitors`.`vis_enabled` AS `vis_enabled`,`vw_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`,`vw_visitors`.`vis_created` AS `vis_created`,`vw_visitors`.`vis_created_by` AS `vis_created_by`,`vw_visitors`.`vis_lastmodified` AS `vis_lastmodified`,`vw_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`,`vw_visitors`.`gender_id` AS `gender_id`,`vw_visitors`.`region_id` AS `region_id`,`vw_visitors`.`civil_id` AS `civil_id`,`vw_visitors`.`vis_barangay` AS `vis_barangay`,`vw_visitors`.`vis_municipality` AS `vis_municipality`,`vw_visitors`.`vis_province` AS `vis_province`,`vw_visitors`.`vis_address` AS `vis_address`,`vw_visitors`.`vis_age` AS `vis_age`,`vw_visitors`.`gender_name` AS `gender_name`,`vw_visitors`.`region_name` AS `region_name`,`vw_visitors`.`civil_name` AS `civil_name`,`vw_visitors`.`class_id` AS `class_id`,`vw_visitors`.`class_name` AS `class_name` from ((`er_event_evaluations` left join `er_rates` on((`er_event_evaluations`.`eval_rating_overall` = `er_rates`.`rate_id`))) left join `vw_visitors` on((`er_event_evaluations`.`vis_id` = `vw_visitors`.`vis_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_registrants`
--
DROP TABLE IF EXISTS `vw_registrants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_registrants`  AS  select count(`vw_visitors`.`vis_id`) AS `vis_count`,`vw_visitors`.`event_id` AS `event_id`,`vw_visitors`.`event_title` AS `event_title` from `vw_visitors` group by `vw_visitors`.`event_id`,`vw_visitors`.`event_title` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_site_visitors`
--
DROP TABLE IF EXISTS `vw_site_visitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_site_visitors`  AS  select `er_site_visitors`.`site_id` AS `site_id`,`er_site_visitors`.`vis_id` AS `vis_id`,`er_site_visitors`.`created_at` AS `created_at`,`er_site_visitors`.`updated_at` AS `updated_at`,`er_sites`.`site_name` AS `site_name`,`vw_visitors`.`vis_code` AS `vis_code`,`vw_visitors`.`vis_fname` AS `vis_fname`,`vw_visitors`.`vis_mname` AS `vis_mname`,`vw_visitors`.`vis_lname` AS `vis_lname`,`vw_visitors`.`vis_name` AS `vis_name`,`vw_visitors`.`vis_email` AS `vis_email`,`vw_visitors`.`vis_gsm` AS `vis_gsm`,`vw_visitors`.`vis_enabled` AS `vis_enabled`,`vw_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`,`vw_visitors`.`vis_created` AS `vis_created`,`vw_visitors`.`vis_created_by` AS `vis_created_by`,`vw_visitors`.`vis_lastmodified` AS `vis_lastmodified`,`vw_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`,`vw_visitors`.`gender_id` AS `gender_id`,`vw_visitors`.`region_id` AS `region_id`,`vw_visitors`.`civil_id` AS `civil_id`,`vw_visitors`.`vis_barangay` AS `vis_barangay`,`vw_visitors`.`vis_municipality` AS `vis_municipality`,`vw_visitors`.`vis_province` AS `vis_province`,`vw_visitors`.`vis_address` AS `vis_address`,`vw_visitors`.`vis_age` AS `vis_age`,`vw_visitors`.`vis_company` AS `vis_company`,`vw_visitors`.`event_id` AS `event_id`,`vw_visitors`.`class_id` AS `class_id`,`vw_visitors`.`gender_name` AS `gender_name`,`vw_visitors`.`region_name` AS `region_name`,`vw_visitors`.`civil_name` AS `civil_name`,`vw_visitors`.`class_name` AS `class_name`,`vw_visitors`.`event_title` AS `event_title` from ((`er_site_visitors` left join `er_sites` on((`er_site_visitors`.`site_id` = `er_sites`.`site_id`))) left join `vw_visitors` on((`er_site_visitors`.`vis_id` = `vw_visitors`.`vis_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_usergroup_rights`
--
DROP TABLE IF EXISTS `vw_usergroup_rights`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_usergroup_rights`  AS  select `er_usergroup_rights`.`ugr_id` AS `ugr_id`,`er_usergroup_rights`.`ugr_view` AS `ugr_view`,`er_usergroup_rights`.`ugr_add` AS `ugr_add`,`er_usergroup_rights`.`ugr_edit` AS `ugr_edit`,`er_usergroup_rights`.`ugr_delete` AS `ugr_delete`,`er_usergroup_rights`.`ugr_approve` AS `ugr_approve`,`er_usergroup_rights`.`ur_id` AS `ur_id`,`er_usergroup_rights`.`ug_id` AS `ug_id`,`er_usergroup_rights`.`ugr_lastmodified` AS `ugr_lastmodified`,`er_usergroup_rights`.`ugr_created` AS `ugr_created`,`er_usergroup_rights`.`ugr_lastmodified_by` AS `ugr_lastmodified_by`,`er_usergroup_rights`.`ugr_created_by` AS `ugr_created_by`,`er_usergroups`.`ug_name` AS `ug_name`,`er_userrights`.`ur_name` AS `ur_name` from ((`er_usergroup_rights` left join `er_usergroups` on((`er_usergroup_rights`.`ug_id` = `er_usergroups`.`ug_id`))) left join `er_userrights` on((`er_usergroup_rights`.`ur_id` = `er_userrights`.`ur_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_users`
--
DROP TABLE IF EXISTS `vw_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_users`  AS  select `er_users`.`u_id` AS `u_id`,`er_users`.`u_code` AS `u_code`,`er_users`.`u_fname` AS `u_fname`,`er_users`.`u_mname` AS `u_mname`,`er_users`.`u_lname` AS `u_lname`,`er_users`.`u_email` AS `u_email`,`er_users`.`u_gsm` AS `u_gsm`,`er_users`.`u_username` AS `u_username`,`er_users`.`u_password` AS `u_password`,`er_users`.`u_enabled` AS `u_enabled`,`er_users`.`u_last_loggedin` AS `u_last_loggedin`,`er_users`.`u_listname` AS `u_listname`,`er_users`.`u_created` AS `u_created`,`er_users`.`u_created_by` AS `u_created_by`,`er_users`.`u_lastmodified` AS `u_lastmodified`,`er_users`.`u_lastmodified_by` AS `u_lastmodified_by`,`er_users`.`ug_id` AS `ug_id`,`er_users`.`created_at` AS `created_at`,`er_users`.`updated_at` AS `updated_at`,`er_users`.`remember_token` AS `remember_token`,concat(`er_users`.`u_fname`,convert(convert(if((char_length(`er_users`.`u_fname`) > 0),' ','') using latin1) using utf8),`er_users`.`u_mname`,convert(convert(if((char_length(`er_users`.`u_mname`) > 0),' ','') using latin1) using utf8),`er_users`.`u_lname`) AS `u_name`,`er_usergroups`.`ug_name` AS `ug_name`,`er_usergroups`.`ug_lastmodified` AS `ug_lastmodified`,`er_usergroups`.`ug_lastmodified_by` AS `ug_lastmodified_by`,`er_usergroups`.`ug_created` AS `ug_created`,`er_usergroups`.`ug_created_by` AS `ug_created_by`,`er_usergroups`.`ug_is_admin` AS `ug_is_admin` from (`er_users` left join `er_usergroups` on((`er_users`.`ug_id` = `er_usergroups`.`ug_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_visitors`
--
DROP TABLE IF EXISTS `vw_visitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_visitors`  AS  select `er_visitors`.`vis_id` AS `vis_id`,`er_visitors`.`vis_code` AS `vis_code`,`er_visitors`.`vis_fname` AS `vis_fname`,`er_visitors`.`vis_mname` AS `vis_mname`,`er_visitors`.`vis_lname` AS `vis_lname`,concat(`er_visitors`.`vis_fname`,convert(convert(if((char_length(`er_visitors`.`vis_fname`) > 0),' ','') using latin1) using utf8),`er_visitors`.`vis_mname`,convert(convert(if((char_length(`er_visitors`.`vis_mname`) > 0),' ','') using latin1) using utf8),`er_visitors`.`vis_lname`) AS `vis_name`,`er_visitors`.`vis_email` AS `vis_email`,`er_visitors`.`vis_gsm` AS `vis_gsm`,`er_visitors`.`vis_enabled` AS `vis_enabled`,`er_visitors`.`vis_last_loggedin` AS `vis_last_loggedin`,`er_visitors`.`vis_created` AS `vis_created`,`er_visitors`.`vis_created_by` AS `vis_created_by`,`er_visitors`.`vis_lastmodified` AS `vis_lastmodified`,`er_visitors`.`vis_lastmodified_by` AS `vis_lastmodified_by`,`er_visitors`.`gender_id` AS `gender_id`,`er_visitors`.`region_id` AS `region_id`,`er_visitors`.`civil_id` AS `civil_id`,`er_visitors`.`vis_barangay` AS `vis_barangay`,`er_visitors`.`vis_municipality` AS `vis_municipality`,`er_visitors`.`vis_province` AS `vis_province`,`er_visitors`.`vis_address` AS `vis_address`,`er_visitors`.`vis_age` AS `vis_age`,`er_visitors`.`vis_company` AS `vis_company`,`er_visitors`.`event_id` AS `event_id`,`er_visitors`.`created_at` AS `created_at`,`er_visitors`.`updated_at` AS `updated_at`,`er_visitors`.`class_id` AS `class_id`,`er_genders`.`gender_name` AS `gender_name`,`er_regions`.`region_name` AS `region_name`,`er_civilstatus`.`civil_name` AS `civil_name`,`er_classifications`.`class_name` AS `class_name`,`er_events`.`event_title` AS `event_title` from (((((`er_visitors` left join `er_genders` on((`er_visitors`.`gender_id` = `er_genders`.`gender_id`))) left join `er_regions` on((`er_visitors`.`region_id` = `er_regions`.`region_id`))) left join `er_civilstatus` on((`er_visitors`.`civil_id` = `er_civilstatus`.`civil_id`))) left join `er_classifications` on((`er_visitors`.`class_id` = `er_classifications`.`class_id`))) left join `er_events` on((`er_visitors`.`event_id` = `er_events`.`event_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `er_barcodes`
--
ALTER TABLE `er_barcodes`
  ADD PRIMARY KEY (`barcode_id`);

--
-- Indexes for table `er_civilstatus`
--
ALTER TABLE `er_civilstatus`
  ADD PRIMARY KEY (`civil_id`);

--
-- Indexes for table `er_classifications`
--
ALTER TABLE `er_classifications`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `er_counters`
--
ALTER TABLE `er_counters`
  ADD PRIMARY KEY (`counter_id`),
  ADD UNIQUE KEY `counter_id_UNIQUE` (`counter_id`);

--
-- Indexes for table `er_counter_visitors`
--
ALTER TABLE `er_counter_visitors`
  ADD PRIMARY KEY (`counterv_id`),
  ADD UNIQUE KEY `counter_vis_id_UNIQUE` (`counterv_id`);

--
-- Indexes for table `er_events`
--
ALTER TABLE `er_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `er_event_evaluations`
--
ALTER TABLE `er_event_evaluations`
  ADD PRIMARY KEY (`eval_id`);

--
-- Indexes for table `er_event_visitors`
--
ALTER TABLE `er_event_visitors`
  ADD PRIMARY KEY (`evis_id`);

--
-- Indexes for table `er_genders`
--
ALTER TABLE `er_genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `er_rates`
--
ALTER TABLE `er_rates`
  ADD PRIMARY KEY (`rate_id`),
  ADD UNIQUE KEY `rate_id_UNIQUE` (`rate_id`);

--
-- Indexes for table `er_referers`
--
ALTER TABLE `er_referers`
  ADD PRIMARY KEY (`referers_id`);

--
-- Indexes for table `er_regions`
--
ALTER TABLE `er_regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `er_sites`
--
ALTER TABLE `er_sites`
  ADD PRIMARY KEY (`site_id`),
  ADD UNIQUE KEY `ses_is_UNIQUE` (`site_id`);

--
-- Indexes for table `er_site_visitors`
--
ALTER TABLE `er_site_visitors`
  ADD PRIMARY KEY (`sv_id`),
  ADD UNIQUE KEY `sv_id_UNIQUE` (`sv_id`);

--
-- Indexes for table `er_usergroups`
--
ALTER TABLE `er_usergroups`
  ADD PRIMARY KEY (`ug_id`);

--
-- Indexes for table `er_usergroup_rights`
--
ALTER TABLE `er_usergroup_rights`
  ADD PRIMARY KEY (`ugr_id`);

--
-- Indexes for table `er_userrights`
--
ALTER TABLE `er_userrights`
  ADD PRIMARY KEY (`ur_id`);

--
-- Indexes for table `er_users`
--
ALTER TABLE `er_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `er_visitors`
--
ALTER TABLE `er_visitors`
  ADD PRIMARY KEY (`vis_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `er_barcodes`
--
ALTER TABLE `er_barcodes`
  MODIFY `barcode_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_civilstatus`
--
ALTER TABLE `er_civilstatus`
  MODIFY `civil_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `er_classifications`
--
ALTER TABLE `er_classifications`
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `er_counters`
--
ALTER TABLE `er_counters`
  MODIFY `counter_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `er_counter_visitors`
--
ALTER TABLE `er_counter_visitors`
  MODIFY `counterv_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_events`
--
ALTER TABLE `er_events`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `er_event_evaluations`
--
ALTER TABLE `er_event_evaluations`
  MODIFY `eval_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_event_visitors`
--
ALTER TABLE `er_event_visitors`
  MODIFY `evis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_genders`
--
ALTER TABLE `er_genders`
  MODIFY `gender_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `er_rates`
--
ALTER TABLE `er_rates`
  MODIFY `rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `er_referers`
--
ALTER TABLE `er_referers`
  MODIFY `referers_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_regions`
--
ALTER TABLE `er_regions`
  MODIFY `region_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `er_sites`
--
ALTER TABLE `er_sites`
  MODIFY `site_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `er_site_visitors`
--
ALTER TABLE `er_site_visitors`
  MODIFY `sv_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_usergroups`
--
ALTER TABLE `er_usergroups`
  MODIFY `ug_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `er_usergroup_rights`
--
ALTER TABLE `er_usergroup_rights`
  MODIFY `ugr_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `er_userrights`
--
ALTER TABLE `er_userrights`
  MODIFY `ur_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `er_users`
--
ALTER TABLE `er_users`
  MODIFY `u_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `er_visitors`
--
ALTER TABLE `er_visitors`
  MODIFY `vis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1225;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
