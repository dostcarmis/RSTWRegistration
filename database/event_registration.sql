-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 08, 2017 at 04:49 PM
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
(431, 'DOST57f726c2a1e1b4.10788037', 'ALLAN JAY', 'GUTIERRES', 'FAYTARON', '', '', 1, NULL, NULL, '', NULL, '', 1, 6, 5, '2016-10-07 05:48:39', '2016-10-07 05:48:39', '', '', '', '', 19, 5, 7, '');

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
  MODIFY `vis_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
