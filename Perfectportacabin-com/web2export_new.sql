-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 06:04 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web2export_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showon_home` tinyint(4) DEFAULT NULL,
  `showon_catalog` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url_target` tinyint(4) DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `name`, `slug`, `short_description`, `description`, `image`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `active`, `created`, `modified`) VALUES
(1, NULL, 'Prefabricated Structures', NULL, '', '', 'img-alloy-coils.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-08-30 17:04:33', '2023-05-08 16:07:38'),
(2, NULL, 'Porta Cabins', NULL, '', '', 'img-pipe-flanges.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-08-30 17:04:53', '2023-05-08 16:07:51'),
(3, NULL, 'Control Room', NULL, '', '', 'img-round-bar.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-08-30 17:05:08', '2023-05-08 16:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `blog_order` int(11) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `posted_by` varchar(255) DEFAULT NULL,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `active` int(1) DEFAULT NULL,
  `blog_date` date DEFAULT NULL,
  `blog_day` varchar(255) DEFAULT NULL,
  `blog_month` varchar(255) DEFAULT NULL,
  `blog_year` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `name`, `slug`, `blog_order`, `image`, `short_description`, `description`, `posted_by`, `meta_title`, `meta_desc`, `meta_keyword`, `active`, `blog_date`, `blog_day`, `blog_month`, `blog_year`, `created`, `modified`) VALUES
(1, NULL, 'Blog 1', 'blog-1', 0, '', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', '<p style=\"text-align:justify\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\r\n', NULL, 'Blog 1', 'Blog 1', 'Blog 1', 0, NULL, NULL, NULL, NULL, '2019-08-31 16:21:28', '2019-09-09 14:09:22'),
(2, NULL, 'Blog 2', 'blog-2', 0, '', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', '<p style=\"text-align:justify\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\r\n', NULL, 'Blog 2', 'Blog 2', 'Blog 2', 0, NULL, NULL, NULL, NULL, '2019-08-31 16:21:52', '2019-09-05 16:29:41'),
(3, NULL, 'Blog 3', 'blog-3', 0, '', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', '<p style=\"text-align:justify\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>\r\n', NULL, 'Blog 3', 'Blog 3', 'Blog 3', 0, NULL, NULL, NULL, NULL, '2019-08-31 16:22:26', '2019-09-05 16:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `categories` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `location_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `layout_id`, `category_id`, `product_id`, `location_id`, `categories`, `name`, `location_title`, `slug`, `image`, `short_description`, `description`, `location_url`, `meta_title`, `meta_desc`, `meta_keyword`, `active`, `created`, `modified`) VALUES
(1, 0, 0, 0, 0, NULL, 'Our Presence', NULL, 'our-presence', NULL, '', '<p style=\"text-align:justify\">Jenish Metal &amp; Alloys Inc is relatively engaged in offering a wide range of Inconel 718 Round Bars, Circles, Pipes and Sheets etc. and has successfully earned the reputation among the best trader and supplier of <strong>catname in countryname</strong>. Our products are known for their high performance, tensile strength, durability, reliability and other features because we have sourced them from trusted brands and are available in endless configurations.</p>\r\n\r\n<p style=\"text-align:justify\">Our name is today noted among the paramount <strong>catname Trader in countryname</strong>. We are trained enough to handle supplying and exporting process so our clients will get the delivery of the product they have placed their order for. We bring you wide options to choose from, check out our website and make your selection accordingly.</p>\r\n\r\n<p style=\"text-align:justify\">Being one of the preeminent <strong>catname Exporters and Suppliers in countryname</strong>, we also take the responsibility for timely delivery to your doorstep. Moreover, our customer executives are here to provide support. Dial our number or drop us your requirements now for bulk orders.</p>\r\n', NULL, 'catname In countryname, catname Manufacturers Suppliers countryname', 'Get catname in countryname from catname Manufacturers in countryname and catname Suppliers in countryname, exporters - Jenish Metal & Alloys Inc.', 'catname In countryname, catname Manufacturers In countryname, catname Suppliers In countryname, Top catname In countryname, Best catname In countryname', 1, '2019-08-30 15:36:46', '2019-09-11 17:39:23'),
(2, 0, 0, 0, 0, NULL, 'Exporters Category', NULL, 'exporters-category', NULL, '', '<p style=\"text-align:justify\">Established in 2015, Jenish Metal &amp; Alloys Inc pioneers in bringing the excellent range to customers in different specifications at industry-leading prices. Our true dedication and commitment to customer satisfaction have earned our company credibility among the reliable <strong>catname Exporters </strong>based in Mumbai, Maharashtra.</p>\r\n\r\n<p style=\"text-align:justify\">We aim to provide the best quality along with timely delivery and round-the-clock-support, so our clients will never get any chance to complain. We follow all the export norms and meet them within a stipulated timeframe. We have a well-coordinated team and strong networks to speed up the exporting process.</p>\r\n\r\n<p style=\"text-align:justify\">As a prominent <strong>catname Exporter </strong>from India, we are here to provide our products to customers in different specifications. Drop your requirements, our experts would be glad to assist you in the best way possible.</p>\r\n', NULL, 'catname Exporters In India, Iran, Abu Dhabi, Qatar, Singapore, Israel, Brazil, Malaysia', 'catname Exporters in India. Jenish Metal & Alloys Inc. Is leading catname Exporter from Iran, Abu Dhabi, Qatar, UAE, Singapore, Israel, USA, Brazil, Malaysia', 'catname Exporters In India, catname Exporter In Iran, Best catname Exporter In Abu Dhabi, Exporter Of catname In Qatar, Exporters Of catname In UAE, Top catname Exporter In Singapore', 1, '2019-08-30 15:38:28', '2019-09-11 17:37:09'),
(3, 0, 0, 0, 0, NULL, 'Traders Category', NULL, 'traders-category', NULL, '', '<p style=\"text-align:justify\">Jenish Metal &amp; Alloys Inc is a leading <strong>catname Trader </strong>in Mumbai, Maharashtra. We have different types of products available for our customers to meet their demands as per their industry. Our products are best in the niche because we brought them to you from well-reputed companies, so you&rsquo;ll get to experience the loyalty of the brand.</p>\r\n\r\n<p style=\"text-align:justify\">We do understand every industry has its own demands and we put our best possible efforts to be sure that they will get what they have paid us for. We have a highly trained and experienced team and connections to meet the delivery deadlines without causing any inconvenience to customers.</p>\r\n\r\n<p style=\"text-align:justify\">In case you are looking forward to place your order with us, we are right here for you. As one of the trusted <strong>catname Traders </strong>in India, we guarantee proper packing of the product and timely delivery. So, send us your enquiry or call us now for more.</p>\r\n', NULL, 'catname Trader In Mumbai India, catname Traders', 'catname Trader in Mumbai, India. Jenish Metal & Alloys Inc., reputed catname Traders in Maharashtra India offer catname at best price', 'catname Trader In Mumbai, catname Traders In India, Best Trader Of catname In Maharashtra, Top catname Trader', 1, '2019-08-30 15:38:21', '2019-09-11 17:38:07'),
(4, 0, 0, 0, 0, NULL, 'Suppliers Category', NULL, 'suppliers-category', NULL, '', '<p style=\"text-align:justify\">Looking for one of the most determined <strong>catname Suppliers </strong>in Mumbai, Maharashtra? Come straight to us. Our excellence and experience have made it possible for us to cater to customized customer demands in the least time possible. Our products have a huge demand in different sectors for multifarious work, and we put our best efforts to meet that with our consistent supply.</p>\r\n\r\n<p style=\"text-align:justify\">As a leading <strong>catname Supplying Company</strong>, we take care of the safe packing, timely delivery and reliable customer support. We promise that our product will reach your doorstep without any delays in the safest packing possible. From Inconel 718 Round Bar, Titanium Grade 5 Round Bar, Alloy Steel Round Bar, S, S 304 Circle, S, S 304 Pipe, to S S 304 Sheet, we have a comprehensive range customized to customer demands and sourced from reliable companies.</p>\r\n\r\n<p style=\"text-align:justify\">Being a trusted <strong>catname Supplier </strong>in India, we also provide safe and timely transportation without any delays. Drop us your email or dial our number, our experts at Jenish Metal &amp; Alloys Inc would be happy to assist.</p>\r\n', NULL, 'catname Suppliers In Mumbai Delhi BangaloreÂ HyderabadÂ Pune India', 'catname Suppliers in Mumbai, India. Jenish Metal & Alloys Inc., renowned catname Supplier in Delhi BangaloreÂ HyderabadÂ Pune AhmedabadÂ Surat Chandigarh', 'catname Suppliers In Mumbai, catname Supplier In India, Best catname Supplier In Delhi, catname Supplying Company In Bangalore, Supplier Of catname In Hyderabad, Suppliers Of catname In Pune', 1, '2019-08-30 15:38:31', '2019-09-11 17:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rght` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iconcss` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) NOT NULL DEFAULT '0',
  `top_business_category` int(1) NOT NULL DEFAULT '0',
  `category_order` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) UNSIGNED NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `theme_id` int(11) DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `google_analytics` text COLLATE utf8_unicode_ci,
  `custom1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom4` text COLLATE utf8_unicode_ci,
  `custom5` text COLLATE utf8_unicode_ci,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `description` text,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `active` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `enquiry_for` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `form_appontment_date` varchar(255) DEFAULT NULL,
  `persons` int(11) DEFAULT NULL,
  `booking_date` varchar(255) DEFAULT NULL,
  `booking_time` varchar(255) DEFAULT NULL,
  `preferred_food` varchar(255) DEFAULT NULL,
  `occasion` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` text,
  `message` text,
  `subject` text,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `page_url` tinytext,
  `formrequest` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `category_id`, `name`, `company`, `enquiry_for`, `email`, `phone`, `mobile`, `gender`, `age`, `form_appontment_date`, `persons`, `booking_date`, `booking_time`, `preferred_food`, `occasion`, `country`, `address`, `message`, `subject`, `city`, `zip_code`, `ip_address`, `page_url`, `formrequest`, `created`, `modified`) VALUES
(1, 0, 'abhishek', NULL, 'Enquiry For Contact Us', 'abhishek@gmail.com', NULL, '151561515616561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfggcjdctyhkjyfyufvg', NULL, NULL, NULL, NULL, '111.119.219.49', 'http://www.jenishmetalalloysinc.in/', 'ajax', '2019-10-21 17:20:23', '2019-10-21 17:20:23'),
(2, 0, 'bhavesh', NULL, 'Enquiry For Contact Us', 'bhaveshsheth7801@gmail.com', NULL, '4754529495647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fyukfyhkghkuyj,ghjvguyhj', NULL, NULL, NULL, NULL, '111.119.219.49', 'http://www.jenishmetalalloysinc.in/', 'ajax', '2019-10-21 17:24:01', '2019-10-21 17:24:01'),
(3, 0, 'puneet jain', NULL, 'Enquiry For Contact Us', 'abhishek@gmail.com', NULL, '141456415614561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cxxjxfxktyjdtydfcyh', NULL, NULL, NULL, NULL, '111.119.219.49', 'http://www.jenishmetalalloysinc.in/', 'ajax', '2019-10-21 17:24:37', '2019-10-21 17:24:37'),
(4, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '09562341221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moti Nagar', 'Test contact message', NULL, NULL, NULL, '124.123.244.128', 'http://www.jenishmetalalloysinc.in/contact-us.html', 'ajax', '2020-01-25 17:33:45', '2020-01-25 17:33:45'),
(5, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '09562341221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ramesh Nagar', 'Test message', NULL, NULL, NULL, '124.123.244.128', 'http://www.jenishmetalalloysinc.in/surat/', 'ajax', '2020-01-25 17:36:31', '2020-01-25 17:36:31'),
(6, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '09562341231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moti Nagar', 'Test message from City page', NULL, NULL, NULL, '124.123.244.128', 'http://www.jenishmetalalloysinc.in/alloy-20-round-bar-in-surat.html', 'ajax', '2020-01-25 17:38:40', '2020-01-25 17:38:40'),
(7, 0, 'Jashmin Pastakia', NULL, 'Enquiry For Contact Us', 'jash_30@yahoo.com', NULL, '9979224911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Navsari,  Gujarat', 'SS BRIGHT ROD DIA 30mm X 3mt.\r\nAnd SS303 ROD', NULL, NULL, NULL, '157.32.225.111', 'http://www.jenishmetalalloysinc.in/vapi/', 'ajax', '2020-05-19 12:22:06', '2020-05-19 12:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showon_home` tinyint(4) DEFAULT NULL,
  `showon_catalog` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url_target` tinyint(4) DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepagemenus`
--

CREATE TABLE `homepagemenus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `menus_order` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `description` text,
  `short_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `iconcss` varchar(255) NOT NULL,
  `textoption` tinyint(4) DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_desc` text,
  `remark` text,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `name`, `link_title`, `slug`, `iconcss`, `textoption`, `image`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_desc`, `remark`, `views`, `active`, `created`, `modified`) VALUES
(1, 'Customer First', '', NULL, '', 1, 'img-our-mission.png', NULL, '<p style=\"text-align:justify\"> We give our customers high priority and encourage lasting relationships. We honor our commitments.</p>\r\n', NULL, NULL, NULL, NULL, 0, 0, '2019-08-30 16:54:48', '2023-05-08 16:15:39'),
(2, 'Business Success', '', NULL, '', 1, 'img-our-vision.png', NULL, '<p style=\"text-align:justify\">We strive to continuously improve and grow our businesses to the benefit of shareholders and ourselves.</p>\r\n', NULL, NULL, NULL, NULL, 0, 0, '2019-08-30 16:55:05', '2023-05-08 16:15:59'),
(3, 'Our Quality', '', NULL, '', 1, 'img-our-quality.png', NULL, '<p style=\"text-align:justify\">Quality is accorded top priority to ensure cost effective and timely supply to our Customers delight.</p>\r\n', NULL, NULL, NULL, NULL, 0, 0, '2019-08-30 16:55:13', '2023-05-08 16:16:17'),
(4, 'home enquiry', '', NULL, '', 1, 'img-home-enquiry.jpg', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2019-08-31 16:37:27', '2023-05-08 16:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitepageid` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `locationtype` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_type` int(2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `location_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `location_order` int(1) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `top_location` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `parent_id`, `locationtype`, `name`, `location_title`, `slug`, `catalog_type`, `image`, `short_description`, `description`, `location_url`, `meta_title`, `meta_desc`, `meta_keyword`, `location_order`, `active`, `top_location`, `created`, `modified`) VALUES
(1, 0, 0, 'Mumbai', NULL, 'mumbai', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-09-10 09:56:40', '2019-09-10 09:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_desc` text,
  `remark` text,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_desc` text,
  `remark` text,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showon_home` tinyint(4) DEFAULT NULL,
  `showon_catalog` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url_target` tinyint(4) DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productitems`
--

CREATE TABLE `productitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productphotos`
--

CREATE TABLE `productphotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` tinyint(4) DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url_target` tinyint(4) DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `pagetype_id` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT '0',
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_order` int(11) DEFAULT NULL,
  `home_description` text COLLATE utf8_unicode_ci,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `costdescription` text COLLATE utf8_unicode_ci,
  `specification` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_plates` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufactured_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `made_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `layout_id` int(4) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `hot_product` int(1) DEFAULT '0',
  `header_product` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `header_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporters_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporters_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suppliers_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitemap_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `name`, `product_code`, `slug`, `product_alt`, `product_order`, `home_description`, `short_description`, `description`, `costdescription`, `specification`, `image`, `home_image`, `image_title`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `header_product`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporters_title`, `exporters_image_title`, `manufacturers_title`, `manufacturers_image_title`, `suppliers_title`, `suppliers_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(1, 1, 0, NULL, NULL, 'Inconel 718 Round Bar', NULL, 'inconel-718-round-bar', '', NULL, '<p style=\"text-align:justify\">Explore the section and choose the best round bar as per the need of your application.</p>\r\n', '<p style=\"text-align:justify\"><strong>Inconel 718 Round Bar</strong> has a huge demand in several applications including Gas Turbine Engine Parts, Liquid Fuel Rocket Motor Components, Fasteners, Cryogenic Tanks, etc. Since they are made of Inconel 718, which is a nickel-chromium alloy, its rigidity gets assured. Jenish Metal &amp; Alloys Inc &ndash; one of the leading <u><strong>Inconel 718 Round Bar Suppliers in Mumbai, Maharashtra</strong></u> is the destination from where you can get endless configurations as per the need of your application.</p>\r\n', '<h2 style=\"text-align:justify\">Main Features Of Our Inconel 718 Round Bars:</h2>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong>Durable And Reliable</strong>: Inconel 718 Round Bar is made of high-grade materials which already has several properties and keeps the environmental damages away, which make them a durable and reliable choice for several applications.</li>\r\n	<li style=\"text-align:justify\"><strong>Resistant To High Impacts:</strong> Due to their chemical properties they can withstand high environmental impacts.</li>\r\n	<li style=\"text-align:justify\"><strong>Available In Different Customizations:</strong> These round bars have their use in making screws, valves, billets and fasteners, therefore, available in endless configurations to suit specific demands.</li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:justify\">Contact Us Now!</h3>\r\n\r\n<p style=\"text-align:justify\">In case you have any queries or looking forward to get our support, reach us right away. Being one of the trusted Stainless Steel Inconel 718 Round Bar Exporters and Trader in India, we take care of the timely delivery too. Get in touch now, to take the conversation ahead.</p>\r\n', NULL, '', 'img-inconel-718-round-bar.jpg', 'home-img-inconel-718-round-bar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Inconel 718 Round Bar Suppliers, 718 Inconel Rods Exporters India', 'Reputed Inconel 718 Round Bar Suppliers, Trader in Mumbai India and Exporters offers best quality of 718 Inconel Rods which can be use in various types of Industries.', 'Inconel 718 Round Bar Suppliers, Inconel 718 Round Bar Trader, Inconel 718 Round Bar Exporters, Stainless Steel Inconel 718 Round Bar', 0, 0, 1, 0, NULL, '2023-05-08 15:59:55', 'Inconel 718 Round Bar', 'Inconel 718 Round Bar Manufacturers', 'Inconel 718 Round Bar Exporters', 'Inconel 718 Round Bar Suppliers', 'Inconel 718 Round Bar Exporters ', 'Inconel 718 Round Bar Exporters', 'Inconel 718 Round Bar Manufacturers', 'Inconel 718 Round Bar Manufacturers', 'Inconel 718 Round Bar Suppliers', 'Inconel 718 Round Bar Suppliers', 'Inconel 718 Round Bar in city', 'Inconel 718 Round Bar in city', 'Inconel 718 Round Bar'),
(22, 1, 0, NULL, NULL, 'Labour Camp', NULL, 'labour-camp', '', NULL, '', '<p style=\"text-align:justify\">A labor camp, also known as a labor colony or forced labor camp, is a place where individuals are sent to perform forced labor under harsh conditions, often as a form of punishment or control. These camps have been used throughout history for various purposes, including political repression, social control, economic exploitation, and more.</p>\r\n', '<p>Labor camps have been associated with human rights abuses, as they often involve long hours of physically demanding work, inadequate living conditions, little or no pay, and limited freedom of movement. In many cases, individuals sent to labor camps are subjected to physical and psychological abuse, and their basic rights are often violated.</p>\r\n\r\n<p>Historically, labor camps have been used by totalitarian regimes, authoritarian governments, and colonial powers to suppress dissent, control populations, and extract cheap labor. One of the most infamous examples is the Soviet Gulag system, where millions of people were sent to labor camps under Joseph Stalin&#39;s rule. Similarly, Nazi Germany operated concentration camps that forced prisoners into forced labor, often under brutal conditions.</p>\r\n\r\n<p>The use of labor camps has drawn widespread criticism from human rights organizations and the international community due to the infringement of basic human rights and dignity. In modern times, efforts have been made to document and address these abuses, promote awareness, and advocate for the closure of such camps.</p>\r\n\r\n<p>It&#39;s important to note that discussions around labor camps are sensitive and can involve complex historical, political, and ethical considerations. If you have a specific question or topic related to labor camps that you&#39;d like to know more about, feel free to ask.</p>\r\n', NULL, '', 'img-labour-camp.jpg', 'home-img-labour-camp.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, 1, '2023-05-05 12:37:06', '2023-08-19 10:57:20', 'Labour Camp', 'Labour Camp Manufacturers', 'Labour Camp Exporters', 'Labour Camp Suppliers', 'Labour Camp Exporters ', 'Labour Camp Exporters', 'Labour Camp Manufacturers', 'Labour Camp Manufacturers', 'Labour Camp Suppliers', 'Labour Camp Suppliers', 'Labour Camp in city', 'Labour Camp in city', 'Labour Camp'),
(23, 1, 0, NULL, NULL, 'Prefabricated Structures', NULL, 'prefabricated-structures', '', NULL, '', '<p style=\"text-align:justify\">Prefabricated structures, also known as prefab buildings or modular constructions, are buildings or structures that are manufactured off-site in standardized sections or modules and then transported to the construction site for assembly. These structures are designed to streamline the construction process, reduce construction time, and improve efficiency compared to traditional on-site construction methods.</p>\r\n', '<p>Here are some key points about prefabricated structures:</p>\r\n\r\n<p>1. **Modular Construction:** Prefabricated structures are typically built using a modular approach. This involves constructing individual components or modules in a controlled factory environment. These modules can include walls, floors, ceilings, and even entire rooms. Once manufactured, the modules are transported to the construction site and assembled into a complete building.</p>\r\n\r\n<p>2. **Customization:** While prefabricated structures are based on standardized modules, they can still be customized to meet specific design and functional requirements. Various sizes, configurations, and finishes can be chosen to suit the intended purpose of the structure.</p>\r\n\r\n<p>3. **Advantages:**<br />\r\n&nbsp; &nbsp;- **Faster Construction:** Prefabricated structures are constructed in parallel with site preparation, which can significantly reduce the overall construction timeline.<br />\r\n&nbsp; &nbsp;- **Cost-Efficiency:** The controlled factory environment minimizes material waste and labor inefficiencies, leading to potential cost savings.<br />\r\n&nbsp; &nbsp;- **Quality Control:** Factory-based production allows for greater quality control as construction occurs in a controlled environment, minimizing the impact of weather and other external factors.<br />\r\n&nbsp; &nbsp;- **Reduced Site Disruption:** Prefabricated construction can reduce on-site disruption, noise, and environmental impact.<br />\r\n&nbsp; &nbsp;- **Flexibility:** These structures can be expanded, modified, or relocated more easily than traditional buildings.</p>\r\n\r\n<p>4. **Types of Prefabricated Structures:**<br />\r\n&nbsp; &nbsp;- **Modular Homes:** Complete homes or residential units that are manufactured in sections and assembled on-site.<br />\r\n&nbsp; &nbsp;- **Prefabricated Commercial Buildings:** Office buildings, retail spaces, schools, and other commercial structures can be prefabricated.<br />\r\n&nbsp; &nbsp;- **Prefabricated Industrial Buildings:** Factories, warehouses, and industrial facilities can also be constructed using prefabricated components.<br />\r\n&nbsp; &nbsp;- **Temporary Structures:** Prefabricated structures are often used for temporary purposes like disaster relief housing, event spaces, and construction site offices.</p>\r\n\r\n<p>5. **Challenges:**<br />\r\n&nbsp; &nbsp;- **Transportation:** Transporting large modules to the construction site can be challenging and may require careful logistical planning.<br />\r\n&nbsp; &nbsp;- **Design Limitations:** While customization is possible, prefabricated structures might have some design limitations compared to traditional construction methods.<br />\r\n&nbsp; &nbsp;- **Permitting and Regulations:** Local building codes and regulations may impact the feasibility and design of prefabricated structures.</p>\r\n\r\n<p>In recent years, advancements in technology and construction techniques have led to increased adoption of prefabricated structures in various industries. These structures offer a more efficient, cost-effective, and sustainable alternative to traditional construction methods.</p>\r\n', NULL, '', 'img-pre-engineered-buildings-peb.jpg', 'home-img-pre-engineered-buildings-peb.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, 1, '2023-05-05 12:37:15', '2023-08-19 10:39:36', 'Prefabricated Structures', 'Prefabricated Structures Manufacturers', 'Prefabricated Structures Exporters', 'Prefabricated Structures Suppliers', 'Prefabricated Structures Exporters ', 'Prefabricated Structures Exporters', 'Prefabricated Structures Manufacturers', 'Prefabricated Structures Manufacturers', 'Prefabricated Structures Suppliers', 'Prefabricated Structures Suppliers', 'Prefabricated Structures in city', 'Prefabricated Structures in city', 'Prefabricated Structures'),
(24, 1, 0, NULL, NULL, 'Pre Engineering Buildings', NULL, 'pre-engineering-buildings', '', NULL, '', '<p>Pre-engineered buildings (PEBs) are a type of prefabricated structure commonly used in industrial, commercial, and even some residential applications. These buildings are designed and fabricated off-site using advanced engineering and manufacturing techniques, and then they are assembled on-site. Pre-engineered buildings offer a range of benefits, including speed of construction, cost-effectiveness, and versatility.</p>\r\n', '<p>Here are some key features and advantages of pre-engineered buildings:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Custom Design:</strong> While pre-engineered buildings are based on standardized components and systems, they can still be customized to meet specific design and functional requirements. Manufacturers often offer a variety of options for building size, shape, layout, and aesthetics.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Efficient Design Process:</strong> Pre-engineered buildings have the advantage of being designed using computer-aided design (CAD) software, which ensures accuracy and precision in the design and manufacturing process.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Standardized Components:</strong> PEBs are made up of standardized structural components that are produced in a factory-controlled environment. These components include columns, rafters, beams, purlins, panels, and other building elements.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Fast Construction:</strong> The manufacturing process for PEB components occurs simultaneously with site preparation, allowing for rapid construction once the components are delivered. This results in shorter project timelines compared to traditional construction methods.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cost-Effective:</strong> PEBs often offer cost savings due to reduced labor, material waste, and construction time. The controlled factory environment also helps in minimizing errors and inefficiencies.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Durability and Strength:</strong> PEBs are designed to withstand the specific loads and environmental conditions of the location where they will be installed. They are engineered to be durable, strong, and able to meet various design criteria.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Versatility:</strong> Pre-engineered buildings can be used for a wide range of applications, including warehouses, factories, distribution centers, aircraft hangars, retail stores, offices, sports facilities, and more.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sustainability:</strong> The controlled manufacturing process of PEBs can contribute to sustainability by reducing waste and energy consumption. Additionally, some PEB systems can accommodate energy-efficient features like insulation and daylighting.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Easy Expansion:</strong> If future expansion is anticipated, pre-engineered buildings can be easily expanded by adding more modules or sections to the existing structure.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Less Site Disruption:</strong> The assembly process of PEBs is typically quicker and generates less noise and disruption compared to traditional construction methods.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>It&#39;s important to note that while pre-engineered buildings offer many advantages, they might not be suitable for all types of projects. Some complex or specialized structures may require other construction methods. Additionally, local building codes and regulations should be considered when planning and designing pre-engineered buildings to ensure compliance.</p>\r\n\r\n<p>Overall, pre-engineered buildings have gained popularity in the construction industry due to their efficiency, flexibility, and cost-effectiveness.</p>\r\n', NULL, '', 'img-pre-engineering-buildings.jpg', 'home-img-pre-engineering-buildings.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, 1, '2023-05-05 12:37:24', '2023-08-19 10:57:37', 'Pre Engineering Buildings', 'Pre Engineering Buildings Manufacturers', 'Pre Engineering Buildings Exporters', 'Pre Engineering Buildings Suppliers', 'Pre Engineering Buildings Exporters ', 'Pre Engineering Buildings Exporters', 'Pre Engineering Buildings Manufacturers', 'Pre Engineering Buildings Manufacturers', 'Pre Engineering Buildings Suppliers', 'Pre Engineering Buildings Suppliers', 'Pre Engineering Buildings in city', 'Pre Engineering Buildings in city', 'Pre Engineering Buildings'),
(25, 1, 0, NULL, NULL, 'Porta Cabin', NULL, 'porta-cabin', '', NULL, '', '<p>A porta cabin, also known as a portable cabin, prefab cabin, or container cabin, is a type of modular structure that is designed to be easily transported and installed in various locations. These cabins are typically used for temporary or semi-permanent purposes and provide convenient, portable spaces for a variety of applications. Here&#39;s an overview of porta cabins:</p>\r\n', '<p><strong>1. Design and Construction:</strong> Porta cabins are pre-fabricated structures that are manufactured in a controlled environment before being transported to their intended location. They can be designed in various sizes, configurations, and layouts to suit different requirements.</p>\r\n\r\n<p><strong>2. Portability:</strong> As the name suggests, the key feature of a porta cabin is its portability. These cabins are built to be easily transported using trucks, trailers, or other means of transportation. This mobility makes them suitable for use in remote areas, construction sites, events, and other locations where temporary facilities are needed.</p>\r\n\r\n<p><strong>3. Applications:</strong> Porta cabins find application in a wide range of settings, including:</p>\r\n\r\n<ul>\r\n	<li>Construction sites: Offices, restrooms, and storage facilities for construction workers.</li>\r\n	<li>Offices: Temporary office spaces for remote projects, construction site management, or events.</li>\r\n	<li>Accommodation: Temporary living quarters for workers, guard cabins, and housing for disaster relief efforts.</li>\r\n	<li>Retail: Temporary retail spaces or kiosks at events or in high-traffic areas.</li>\r\n	<li>Education: Portable classrooms, training centers, and school facilities.</li>\r\n	<li>Healthcare: Mobile clinics, first aid stations, and medical facilities in remote areas.</li>\r\n</ul>\r\n\r\n<p><strong>4. Features and Customization:</strong> Porta cabins can be customized to include various features such as windows, doors, electrical outlets, air conditioning, insulation, and interior furnishings. They can be equipped with basic amenities to create functional spaces.</p>\r\n\r\n<p><strong>5. Quick Installation:</strong> Porta cabins are designed for fast installation. Once transported to the site, they can be set up relatively quickly, which is advantageous for projects with tight timelines.</p>\r\n\r\n<p><strong>6. Durability:</strong> Porta cabins are built to be durable and able to withstand transportation and installation processes. They are often made from materials that are robust and weather-resistant.</p>\r\n\r\n<p><strong>7. Temporary or Semi-Permanent:</strong> While porta cabins are designed for temporary use, they can also serve as semi-permanent structures, especially when equipped with proper utilities and maintenance.</p>\r\n\r\n<p><strong>8. Cost-Effectiveness:</strong> Porta cabins are often more cost-effective compared to constructing traditional buildings, especially for short-term needs.</p>\r\n\r\n<p><strong>9. Regulatory Considerations:</strong> Depending on the jurisdiction and intended use, there might be specific regulations and codes to consider when using porta cabins. It&#39;s important to ensure compliance with local building and safety standards.</p>\r\n\r\n<p>Porta cabins offer a versatile solution for creating functional spaces in various settings where conventional construction might not be feasible or practical. They provide flexibility, convenience, and mobility for a wide range of applications.</p>\r\n', NULL, '', 'img-prefabricated-site-office.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:37:32', '2023-08-19 10:43:39', 'Porta Cabin', 'Porta Cabin Manufacturers', 'Porta Cabin Exporters', 'Porta Cabin Suppliers', 'Porta Cabin Exporters ', 'Porta Cabin Exporters', 'Porta Cabin Manufacturers', 'Porta Cabin Manufacturers', 'Porta Cabin Suppliers', 'Porta Cabin Suppliers', 'Porta Cabin in city', 'Porta Cabin in city', 'Porta Cabin'),
(26, 1, 0, NULL, NULL, 'Prefabricated Accomodation', NULL, 'prefabricated-accomodation', '', NULL, '', '<p>Prefabricated accommodation refers to pre-engineered and factory-built structures that are designed to provide temporary or semi-permanent housing solutions. These structures are constructed off-site and then transported to the desired location for installation. Prefabricated accommodation units are commonly used in various contexts, such as construction sites, disaster relief efforts, remote work camps, military bases, educational institutions, and housing for seasonal workers. Here are some key features and benefits of prefabricated accommodation:</p>\r\n', '<ol>\r\n	<li>\r\n	<p style=\"text-align:justify\">Speed of Construction: Prefabricated accommodation units are constructed in a controlled factory environment, allowing for efficient and simultaneous production of multiple units. This results in significantly faster construction timelines compared to traditional on-site construction methods. Once the units are transported to the site, they can be quickly assembled, reducing project completion time.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Customization: Prefabricated accommodation units offer a degree of customization to meet specific housing needs. The units can be designed in various sizes and configurations, allowing for flexibility in accommodating different occupancy requirements. Interior layouts can be tailored to include bedrooms, living areas, kitchens, bathrooms, and other amenities based on the intended use.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Portability and Reusability: Prefabricated accommodation units are designed to be easily transportable and relocatable. They can be disassembled, moved, and reassembled at different sites, offering flexibility and adaptability. This portability allows for reuse of the units in multiple projects or locations, providing long-term cost savings and sustainability benefits.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-prefabricated-accomodation.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:37:41', '2023-08-18 17:44:30', 'Prefabricated Accomodation', 'Prefabricated Accomodation Manufacturers', 'Prefabricated Accomodation Exporters', 'Prefabricated Accomodation Suppliers', 'Prefabricated Accomodation Exporters ', 'Prefabricated Accomodation Exporters', 'Prefabricated Accomodation Manufacturers', 'Prefabricated Accomodation Manufacturers', 'Prefabricated Accomodation Suppliers', 'Prefabricated Accomodation Suppliers', 'Prefabricated Accomodation in city', 'Prefabricated Accomodation in city', 'Prefabricated Accomodation'),
(27, 1, 0, NULL, NULL, 'Prefabricated Health Centre', NULL, 'prefabricated-health-centre', '', NULL, '', '<p>A prefabricated health center, also known as a modular health clinic or prefabricated medical facility, is a type of pre-engineered building that is designed and constructed off-site in a controlled environment and then transported to its intended location for assembly. These health centers are used to provide medical services in areas where access to healthcare might be limited, such as rural or remote regions, disaster-stricken areas, or during emergencies. Here&#39;s an overview of prefabricated health centers:</p>\r\n', '<p><strong>1. Design and Customization:</strong> Prefabricated health centers are designed to accommodate medical services, including examination rooms, waiting areas, administrative spaces, and basic medical facilities. They can be customized to meet the specific requirements of the healthcare provider and the local community&#39;s needs.</p>\r\n\r\n<p><strong>2. Quick Deployment:</strong> One of the main advantages of prefabricated health centers is their rapid deployment. These structures are manufactured off-site while site preparation is underway, allowing for quicker setup once they are transported to the location.</p>\r\n\r\n<p><strong>3. Mobility:</strong> While some prefabricated health centers are intended for semi-permanent use, others can be easily relocated if necessary. This mobility is particularly useful in response to changing healthcare demands or emergency situations.</p>\r\n\r\n<p><strong>4. Equipped for Medical Services:</strong> Prefabricated health centers can be equipped with the necessary medical equipment and amenities, including examination tables, medical supplies, sinks, bathrooms, waiting areas, and electrical and plumbing systems.</p>\r\n\r\n<p><strong>5. Energy Efficiency:</strong> Many prefabricated health centers are designed with energy-efficient features such as insulation, energy-efficient lighting, and HVAC systems to ensure a comfortable environment for both patients and medical staff.</p>\r\n\r\n<p><strong>6. Accessibility:</strong> These health centers can be designed to accommodate individuals with disabilities, ensuring that medical services are accessible to everyone.</p>\r\n\r\n<p><strong>7. Disaster Relief and Emergency Situations:</strong> Prefabricated health centers are often deployed during disaster relief efforts and emergency situations to provide medical care to affected populations. Their quick setup and mobility make them valuable assets in such scenarios.</p>\r\n\r\n<p><strong>8. Local Regulations and Codes:</strong> When planning and designing a prefabricated health center, it&#39;s essential to consider local building codes, regulations, and healthcare standards to ensure compliance with safety and quality standards.</p>\r\n\r\n<p><strong>9. Collaboration with Medical Professionals:</strong> Medical professionals and healthcare organizations should collaborate with experienced prefab building manufacturers to ensure that the design and layout of the health center meet medical requirements and best practices.</p>\r\n\r\n<p><strong>10. Maintenance and Longevity:</strong> Regular maintenance is crucial to ensure the longevity and functionality of the prefabricated health center. Depending on the intended use and duration, maintenance plans should be established.</p>\r\n\r\n<p>Prefabricated health centers play a significant role in extending healthcare services to underserved areas, responding to emergencies, and offering medical support where traditional brick-and-mortar facilities might not be feasible or timely. They provide a versatile and practical solution for delivering medical care in a variety of contexts.</p>\r\n', NULL, '', 'img-railway-shelters.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:37:50', '2023-08-19 10:44:38', 'Prefabricated Health Centre', 'Prefabricated Health Centre Manufacturers', 'Prefabricated Health Centre Exporters', 'Prefabricated Health Centre Suppliers', 'Prefabricated Health Centre Exporters ', 'Prefabricated Health Centre Exporters', 'Prefabricated Health Centre Manufacturers', 'Prefabricated Health Centre Manufacturers', 'Prefabricated Health Centre Suppliers', 'Prefabricated Health Centre Suppliers', 'Prefabricated Health Centre in city', 'Prefabricated Health Centre in city', 'Prefabricated Health Centre'),
(28, 1, 0, NULL, NULL, 'Prefabricated School', NULL, 'prefabricated-school', '', NULL, '', '<p>&nbsp;</p>\r\n\r\n<p>A prefabricated school, also known as a modular school or prefab school, is a type of educational facility that is designed and built off-site in factory-controlled conditions using pre-engineered components. Once constructed, these components are transported to the school site for assembly. Prefabricated schools offer a range of benefits, making them a practical solution for addressing various educational needs. Here&#39;s an overview of prefabricated schools:</p>\r\n', '<p><strong>1. Quick Construction:</strong> One of the primary advantages of prefabricated schools is their rapid construction timeline. Since many components are pre-engineered and manufactured off-site, the on-site assembly process is much quicker compared to traditional construction methods.</p>\r\n\r\n<p><strong>2. Flexibility and Customization:</strong> Prefabricated schools can be designed and customized to meet the specific educational needs of the institution. They can include classrooms, libraries, laboratories, administrative offices, auditoriums, and other facilities.</p>\r\n\r\n<p><strong>3. Temporary or Permanent Use:</strong> Prefabricated schools can serve as temporary solutions, such as during renovations or in response to emergencies, or they can be designed for semi-permanent or permanent use.</p>\r\n\r\n<p><strong>4. Energy Efficiency:</strong> Modern prefabricated schools can incorporate energy-efficient features, such as insulation, energy-efficient windows, HVAC systems, and LED lighting, to create a comfortable and environmentally friendly learning environment.</p>\r\n\r\n<p><strong>5. Cost-Effectiveness:</strong> Prefabricated schools often offer cost savings compared to traditional construction methods due to reduced construction time, efficient use of materials, and controlled manufacturing processes.</p>\r\n\r\n<p><strong>6. Quality Control:</strong> The factory-controlled manufacturing process ensures a high level of quality control, minimizing errors and inconsistencies often associated with on-site construction.</p>\r\n\r\n<p><strong>7. Technological Integration:</strong> Prefabricated schools can be designed to accommodate technology infrastructure, including wiring for data connectivity, audiovisual equipment, and interactive learning tools.</p>\r\n\r\n<p><strong>8. Safety and Compliance:</strong> Prefabricated school buildings are designed and constructed to meet relevant building codes, safety regulations, and educational standards.</p>\r\n\r\n<p><strong>9. Temporary Expansion or Relocation:</strong> Prefabricated schools are suitable for situations where temporary expansion or relocation is needed due to fluctuating enrollment, renovation projects, or other circumstances.</p>\r\n\r\n<p><strong>10. Community Engagement:</strong> Prefabricated schools can be designed with community engagement in mind, providing flexible spaces for events, meetings, and after-school activities.</p>\r\n\r\n<p><strong>11. Sustainability:</strong> Some prefabricated schools are designed to be environmentally sustainable, with features such as solar panels, rainwater harvesting systems, and sustainable building materials.</p>\r\n\r\n<p><strong>12. Collaboration with Educational Professionals:</strong> Educational professionals and school administrators should collaborate closely with prefab building manufacturers to ensure that the design and layout of the school meet the educational needs and standards of the institution.</p>\r\n\r\n<p>Prefabricated schools are an innovative solution to address educational infrastructure challenges and provide flexible, efficient, and functional learning environments. They can contribute to improved access to education and enhanced learning experiences for students.</p>\r\n', NULL, '', 'img-control-room.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:37:57', '2023-08-19 10:45:38', 'Prefabricated School', 'Prefabricated School Manufacturers', 'Prefabricated School Exporters', 'Prefabricated School Suppliers', 'Prefabricated School Exporters ', 'Prefabricated School Exporters', 'Prefabricated School Manufacturers', 'Prefabricated School Manufacturers', 'Prefabricated School Suppliers', 'Prefabricated School Suppliers', 'Prefabricated School in city', 'Prefabricated School in city', 'Prefabricated School'),
(29, 1, 0, NULL, NULL, 'Prefabricated Class Rooms', NULL, 'prefabricated-class-rooms', '', NULL, '', '<p>Prefabricated classrooms, often referred to as modular classrooms or prefab classrooms, are self-contained educational spaces that are constructed off-site and then transported to school campuses for assembly. These classrooms offer a flexible and efficient solution to accommodate the growing educational needs of schools, especially when rapid expansion is required. Here&#39;s an overview of prefabricated classrooms:</p>\r\n', '<p><strong>1. Quick Installation:</strong> Prefabricated classrooms are designed for rapid deployment. Since most of the construction occurs off-site, the on-site assembly process is significantly faster compared to traditional construction methods.</p>\r\n\r\n<p><strong>2. Temporary or Permanent Use:</strong> Prefabricated classrooms can be used as temporary solutions to address short-term enrollment spikes or as permanent additions to school campuses.</p>\r\n\r\n<p><strong>3. Customization:</strong> While prefabricated, these classrooms can be customized to meet specific educational requirements. They can include features such as whiteboards, desks, storage units, lighting, HVAC systems, and technology integration.</p>\r\n\r\n<p><strong>4. Energy Efficiency:</strong> Modern prefab classrooms can be designed with energy-efficient features, such as insulation, energy-efficient windows, efficient HVAC systems, and LED lighting, to provide a comfortable learning environment while minimizing energy consumption.</p>\r\n\r\n<p><strong>5. Flexibility:</strong> Prefabricated classrooms are designed to be flexible, allowing schools to easily adjust classroom space as enrollment changes or educational programs evolve.</p>\r\n\r\n<p><strong>6. Cost-Effective:</strong> Prefabricated classrooms often offer cost savings due to reduced construction time, efficient use of materials, and controlled manufacturing processes.</p>\r\n\r\n<p><strong>7. Quality Control:</strong> The construction of prefab classrooms occurs in a controlled factory environment, ensuring consistent quality and reduced variability compared to on-site construction.</p>\r\n\r\n<p><strong>8. Technological Integration:</strong> Prefabricated classrooms can be designed to accommodate modern educational technology, including audiovisual equipment, data connectivity, and interactive learning tools.</p>\r\n\r\n<p><strong>9. Compliance and Safety:</strong> Prefab classrooms are designed to meet local building codes, safety regulations, and educational standards, ensuring a safe and conducive learning environment.</p>\r\n\r\n<p><strong>10. Community Engagement:</strong> Prefabricated classrooms can provide flexible spaces for various school-related activities, including after-school programs, parent-teacher meetings, workshops, and more.</p>\r\n\r\n<p><strong>11. Collaboration with Educators:</strong> Working closely with educators and school administrators is essential to ensure that the design and layout of prefabricated classrooms align with the educational goals and needs of the school.</p>\r\n\r\n<p><strong>12. Sustainability:</strong> Some prefab classrooms can be designed with sustainable features such as solar panels, rainwater harvesting systems, and eco-friendly building materials.</p>\r\n\r\n<p>Prefabricated classrooms are a practical solution for schools facing issues such as overcrowding, renovation projects, or the need for flexible learning spaces. They offer a combination of speed, efficiency, and functionality, making them an attractive choice for educational institutions seeking to provide optimal learning environments for their students.</p>\r\n', NULL, '', 'img-prefabricated-class-rooms.jpg', 'home-img-prefabricated-class-rooms.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:38:05', '2023-08-19 10:57:59', 'Prefabricated Class Rooms', 'Prefabricated Class Rooms Manufacturers', 'Prefabricated Class Rooms Exporters', 'Prefabricated Class Rooms Suppliers', 'Prefabricated Class Rooms Exporters ', 'Prefabricated Class Rooms Exporters', 'Prefabricated Class Rooms Manufacturers', 'Prefabricated Class Rooms Manufacturers', 'Prefabricated Class Rooms Suppliers', 'Prefabricated Class Rooms Suppliers', 'Prefabricated Class Rooms in city', 'Prefabricated Class Rooms in city', 'Prefabricated Class Rooms'),
(30, 1, 0, NULL, NULL, 'Prefabricated Labour Camp', NULL, 'prefabricated-labour-camp', '', NULL, '', '<p>A prefabricated labor camp, also known as a modular labor accommodation or prefab worker housing, is a type of housing facility that is designed and constructed off-site using pre-engineered components and then transported to the intended location for assembly. These camps are commonly used to provide housing for temporary or migrant workers in industries such as construction, agriculture, mining, and other sectors where a large workforce is needed in remote or temporary locations. Here&#39;s an overview of prefabricated labor camps:</p>\r\n', '<p><strong>1. Rapid Deployment:</strong> One of the primary advantages of prefabricated labor camps is their quick deployment. The modular construction process allows for rapid assembly, which is crucial when accommodating a large workforce on short notice.</p>\r\n\r\n<p><strong>2. Cost-Effectiveness:</strong> Prefabricated labor camps often offer cost savings compared to traditional construction methods due to reduced construction time, efficient material usage, and controlled manufacturing processes.</p>\r\n\r\n<p><strong>3. Customization:</strong> While based on standardized designs, prefabricated labor camps can be customized to meet the specific needs of the workforce and the employer. Different configurations, layouts, and amenities can be included.</p>\r\n\r\n<p><strong>4. Basic Amenities:</strong> These camps can be equipped with basic amenities such as sleeping quarters, sanitation facilities (bathrooms and showers), dining areas, communal spaces, and storage areas.</p>\r\n\r\n<p><strong>5. Mobility:</strong> Prefabricated labor camps are designed to be transportable, making them suitable for use in different locations or for temporary projects that require moving the workforce.</p>\r\n\r\n<p><strong>6. Compliance and Safety:</strong> Labor camps must meet safety and health standards as per local regulations and labor laws. This includes ensuring proper ventilation, sanitation, fire safety, and security measures.</p>\r\n\r\n<p><strong>7. Infrastructure Integration:</strong> Prefabricated labor camps can be designed to accommodate infrastructure needs such as water, electricity, sewage, and waste management systems.</p>\r\n\r\n<p><strong>8. Quality Control:</strong> The controlled manufacturing environment of prefab labor camps ensures consistency in quality and construction standards, which can be challenging to achieve in traditional on-site construction.</p>\r\n\r\n<p><strong>9. Sustainability:</strong> Some prefab labor camps can incorporate sustainable features such as energy-efficient lighting, insulation, and rainwater harvesting systems.</p>\r\n\r\n<p><strong>10. Community Building:</strong> These camps can provide spaces for community activities, recreation, and social interaction among workers, fostering a sense of camaraderie.</p>\r\n\r\n<p><strong>11. Compliance with Labor Laws:</strong> It&#39;s important for employers to ensure that the accommodation provided in prefabricated labor camps complies with local labor laws and regulations, including living conditions, wages, and working hours.</p>\r\n\r\n<p><strong>12. Collaboration with Employers and Authorities:</strong> Close collaboration between employers, labor camp operators, and relevant authorities is essential to ensure that the labor camps meet legal requirements and provide acceptable living conditions for workers.</p>\r\n\r\n<p>Prefabricated labor camps play a role in providing suitable accommodation for temporary and migrant workers, ensuring their well-being and contributing to the smooth operation of various industries. Proper planning, design, and compliance with regulations are crucial to creating safe and humane living environments for the workforce.</p>\r\n', NULL, '', 'img-prefabricated-labour-camp.jpg', 'home-img-prefabricated-labour-camp.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:38:15', '2023-08-19 10:58:50', 'Prefabricated Labour Camp', 'Prefabricated Labour Camp Manufacturers', 'Prefabricated Labour Camp Exporters', 'Prefabricated Labour Camp Suppliers', 'Prefabricated Labour Camp Exporters ', 'Prefabricated Labour Camp Exporters', 'Prefabricated Labour Camp Manufacturers', 'Prefabricated Labour Camp Manufacturers', 'Prefabricated Labour Camp Suppliers', 'Prefabricated Labour Camp Suppliers', 'Prefabricated Labour Camp in city', 'Prefabricated Labour Camp in city', 'Prefabricated Labour Camp'),
(31, 1, 0, NULL, NULL, 'Industrial Sheds', NULL, 'industrial-sheds', '', NULL, '', 'Industrial sheds, also known as industrial buildings or warehouses, are large structures designed to accommodate various industrial activities, storage, manufacturing, or logistics operations. These buildings provide expansive and flexible spaces for a wide range of industrial purposes. Here are some key features and aspects of industrial sheds:', '<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Size and Layout: Industrial sheds are typically characterized by their large size and open floor plans. They offer vast interior spaces with high ceilings and minimal internal columns, allowing for efficient movement of goods, equipment, and machinery. The layout can be customized to meet specific operational needs, including office areas, loading docks, mezzanine floors, or specialized work zones.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Structural Design: Industrial sheds are constructed with sturdy and durable materials to withstand heavy loads and provide structural integrity. Steel is commonly used for its strength, versatility, and cost-effectiveness. The building design takes into consideration factors such as wind loads, snow loads, seismic considerations, and other local building codes and regulations.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Clear Span Space: Industrial sheds often feature clear span space, which means there are no internal columns or supports that obstruct the open area. This design allows for maximum flexibility in arranging equipment, storage racks, production lines, or other operational needs within the building. Clear span space provides unobstructed movement and optimal utilization of the available floor area.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-industrial-sheds.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:38:23', '2023-08-18 17:48:27', 'Industrial Sheds', 'Industrial Sheds Manufacturers', 'Industrial Sheds Exporters', 'Industrial Sheds Suppliers', 'Industrial Sheds Exporters ', 'Industrial Sheds Exporters', 'Industrial Sheds Manufacturers', 'Industrial Sheds Manufacturers', 'Industrial Sheds Suppliers', 'Industrial Sheds Suppliers', 'Industrial Sheds in city', 'Industrial Sheds in city', 'Industrial Sheds'),
(32, 1, 0, NULL, NULL, 'Prefabricated Site Office', NULL, 'prefabricated-site-office', '', NULL, '', '<p>A prefabricated site office, also known as a modular office or prefab construction office, is a pre-engineered and constructed office space that is designed to be quickly assembled on construction sites, remote locations, or temporary project sites. These offices provide a convenient and efficient solution for project management, administrative tasks, and coordination during construction or other activities. Here&#39;s an overview of prefabricated site offices:</p>\r\n', '<p><strong>1. Quick Installation:</strong> One of the main advantages of prefabricated site offices is their rapid installation. Since most of the construction occurs off-site, the on-site assembly process is significantly faster compared to traditional office construction.</p>\r\n\r\n<p><strong>2. Temporary Use:</strong> Prefabricated site offices are typically designed for temporary use during construction projects, events, or other short-term activities. They can be easily disassembled and moved to another location when needed.</p>\r\n\r\n<p><strong>3. Customization:</strong> While based on standardized designs, prefabricated site offices can be customized to meet specific project needs. They can include office spaces, meeting rooms, restrooms, storage areas, and even basic kitchen facilities.</p>\r\n\r\n<p><strong>4. Mobility:</strong> Prefabricated site offices are designed to be transportable, allowing them to be moved from one site to another as project demands change.</p>\r\n\r\n<p><strong>5. Connectivity and Infrastructure:</strong> These offices can be equipped with basic infrastructure, including electrical systems, data connectivity, HVAC systems, and lighting.</p>\r\n\r\n<p><strong>6. Cost-Effectiveness:</strong> Prefabricated site offices are often more cost-effective than building traditional office spaces on-site. Reduced construction time, controlled manufacturing, and efficient material usage contribute to cost savings.</p>\r\n\r\n<p><strong>7. Quality Control:</strong> The controlled factory environment ensures consistent quality and construction standards, leading to fewer errors and inconsistencies in the final product.</p>\r\n\r\n<p><strong>8. Flexibility:</strong> Prefab site offices can be expanded, modified, or repurposed to accommodate changing project needs.</p>\r\n\r\n<p><strong>9. Compliance and Safety:</strong> Prefabricated site offices must meet safety regulations and local building codes, ensuring a safe and comfortable working environment for personnel.</p>\r\n\r\n<p><strong>10. Technological Integration:</strong> Modern prefab site offices can be designed to accommodate technology requirements, including data connectivity, communication systems, and audiovisual equipment.</p>\r\n\r\n<p><strong>11. Sustainability:</strong> Some prefab site offices can incorporate sustainable features such as energy-efficient lighting, insulation, and eco-friendly building materials.</p>\r\n\r\n<p><strong>12. Collaboration with Project Management:</strong> Close collaboration between project managers, construction supervisors, and prefab building manufacturers ensures that the site office meets project needs and enhances workflow efficiency.</p>\r\n\r\n<p>Prefabricated site offices play a crucial role in providing functional workspace for project management, administration, and coordination during construction and other activities. They offer a balance between convenience, efficiency, and flexibility, making them a popular choice for temporary office needs.</p>\r\n', NULL, '', 'img-prefabricated-site-office.jpg', 'home-img-prefabricated-site-office.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:38:31', '2023-08-19 10:59:43', 'Prefabricated Site Office', 'Prefabricated Site Office Manufacturers', 'Prefabricated Site Office Exporters', 'Prefabricated Site Office Suppliers', 'Prefabricated Site Office Exporters ', 'Prefabricated Site Office Exporters', 'Prefabricated Site Office Manufacturers', 'Prefabricated Site Office Manufacturers', 'Prefabricated Site Office Suppliers', 'Prefabricated Site Office Suppliers', 'Prefabricated Site Office in city', 'Prefabricated Site Office in city', 'Prefabricated Site Office'),
(33, 1, 0, NULL, NULL, 'Rockwool Panel', NULL, 'rockwool-panel', '', NULL, '', 'Rockwool panels, also known as mineral wool panels, are building materials used for insulation and fire protection in construction projects. Rockwool is a type of mineral wool made from natural basalt rock and recycled steel slag. It is produced by melting the raw materials at high temperatures and then spinning the molten material into thin fibers.', '<p style=\"text-align: justify;\">Rockwool panels offer several benefits for building insulation:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Thermal insulation: Rockwool panels have excellent thermal insulation properties, effectively reducing heat transfer and improving energy efficiency. They help maintain comfortable indoor temperatures and reduce heating and cooling costs.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Fire resistance: Rockwool is non-combustible and has a high melting point, making it an effective fire-resistant material. Rockwool panels can withstand high temperatures and help prevent the spread of fire within a building.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Acoustic insulation: The dense structure of rockwool fibers makes it an effective sound-absorbing material. Rockwool panels can significantly reduce noise transmission, providing a quieter and more comfortable indoor environment.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Moisture resistance: Rockwool panels are resistant to moisture and can help control condensation within a building. They do not absorb water, preventing the growth of mold and mildew.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-rockwool-panel.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:38:39', '2023-08-18 17:46:22', 'Rockwool Panel', 'Rockwool Panel Manufacturers', 'Rockwool Panel Exporters', 'Rockwool Panel Suppliers', 'Rockwool Panel Exporters ', 'Rockwool Panel Exporters', 'Rockwool Panel Manufacturers', 'Rockwool Panel Manufacturers', 'Rockwool Panel Suppliers', 'Rockwool Panel Suppliers', 'Rockwool Panel in city', 'Rockwool Panel in city', 'Rockwool Panel');
INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `name`, `product_code`, `slug`, `product_alt`, `product_order`, `home_description`, `short_description`, `description`, `costdescription`, `specification`, `image`, `home_image`, `image_title`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `header_product`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporters_title`, `exporters_image_title`, `manufacturers_title`, `manufacturers_image_title`, `suppliers_title`, `suppliers_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(34, 1, 0, NULL, NULL, 'Prefabricated Shelter', NULL, 'prefabricated-shelter', '', NULL, '', 'A prefabricated shelter is a structure that is manufactured off-site in a factory or workshop and then transported to its intended location for assembly. It is designed to provide temporary or permanent housing solutions and can be quickly deployed in various settings, including disaster relief areas, refugee camps, construction sites, or remote locations.', '<p style=\"text-align: justify;\">Prefabricated shelters offer several advantages:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Speed of construction: Prefabricated shelters are built using modular components that are pre-manufactured and ready for assembly. This allows for rapid construction compared to traditional on-site construction methods. As a result, prefabricated shelters can be quickly deployed to provide housing or emergency relief in a short period of time.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Cost-effective: Prefabricated shelters are often more cost-effective than conventional construction. The manufacturing process allows for economies of scale and efficient use of materials. Additionally, the reduced construction time translates into cost savings on labor and site management.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Customization and flexibility: Prefabricated shelters can be customized to meet specific requirements and can be easily expanded or modified as needed. They offer flexibility in terms of design, layout, and functionality, allowing for versatile use in different contexts.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Quality control: Since prefabricated shelters are constructed in controlled factory environments, strict quality control measures can be implemented throughout the manufacturing process. This ensures consistency and high-quality standards in terms of materials, workmanship, and structural integrity.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-prefabricated-shelter.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:38:47', '2023-08-18 17:46:20', 'Prefabricated Shelter', 'Prefabricated Shelter Manufacturers', 'Prefabricated Shelter Exporters', 'Prefabricated Shelter Suppliers', 'Prefabricated Shelter Exporters ', 'Prefabricated Shelter Exporters', 'Prefabricated Shelter Manufacturers', 'Prefabricated Shelter Manufacturers', 'Prefabricated Shelter Suppliers', 'Prefabricated Shelter Suppliers', 'Prefabricated Shelter in city', 'Prefabricated Shelter in city', 'Prefabricated Shelter'),
(35, 1, 0, NULL, NULL, 'Roofing Solution', NULL, 'roofing-solution', '', NULL, '', 'Roofing solutions encompass a range of materials, techniques, and systems used to provide a protective covering for buildings. A well-designed and properly installed roof is essential for ensuring the structural integrity of a building and protecting it from the elements. Here are some common roofing solutions:', '<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Asphalt Shingles: Asphalt shingles are one of the most popular roofing materials due to their affordability, durability, and ease of installation. They are made of fiberglass or organic materials coated with asphalt and mineral granules. Asphalt shingles are available in various styles, colors, and textures, offering versatility in design.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Metal Roofing: Metal roofing includes materials like steel, aluminum, copper, or zinc alloys. Metal roofs are known for their longevity, weather resistance, and energy efficiency. They come in different profiles, such as standing seam panels or metal tiles, and offer excellent durability and fire resistance.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Clay or Concrete Tiles: Clay or concrete tiles are popular in Mediterranean and Spanish-style architecture. They are durable, long-lasting, and resistant to fire, rot, and insects. Clay tiles are known for their natural aesthetics, while concrete tiles offer a broader range of colors and styles.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Slate: Slate roofing is a high-end option known for its natural beauty, longevity, and fire resistance. It is made from natural stone, which is split into thin layers and installed as overlapping tiles. Slate roofs require professional installation due to their weight and specific installation techniques.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-roofing-solution.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:38:58', '2023-08-18 17:46:17', 'Roofing Solution', 'Roofing Solution Manufacturers', 'Roofing Solution Exporters', 'Roofing Solution Suppliers', 'Roofing Solution Exporters ', 'Roofing Solution Exporters', 'Roofing Solution Manufacturers', 'Roofing Solution Manufacturers', 'Roofing Solution Suppliers', 'Roofing Solution Suppliers', 'Roofing Solution in city', 'Roofing Solution in city', 'Roofing Solution'),
(36, 1, 0, NULL, NULL, 'Prefab Cottage', NULL, 'prefab-cottage', '', NULL, '', 'A prefab cottage, also known as a prefabricated cottage or modular cottage, is a type of housing that is manufactured off-site in a factory and then transported to the desired location for assembly. Prefab cottages offer a quicker and more efficient alternative to traditional on-site construction methods.', '<p style=\"text-align: justify;\">Here are some key features and benefits of prefab cottages:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Speed of construction: Prefab cottages are built using modular construction techniques, where the different components or modules are fabricated simultaneously in a controlled factory environment. This allows for faster construction compared to conventional on-site building methods. Once the modules are completed, they are transported to the site and assembled, reducing construction time significantly.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Design flexibility: Prefab cottages come in a variety of designs and layouts to suit different preferences and requirements. Manufacturers typically offer a range of customizable options, including floor plans, finishes, and interior fittings. This allows for personalization and customization of the cottage to meet specific needs.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Quality control: Prefabricated cottages undergo rigorous quality control processes during manufacturing. The controlled factory environment ensures that each module is built to high-quality standards, using precise measurements and techniques. This results in consistent craftsmanship and minimizes errors that can occur in traditional on-site construction.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Cost-effective: Prefab cottages can be cost-effective compared to conventional construction methods. The streamlined manufacturing process and efficient use of materials reduce waste and lower construction costs. Additionally, the reduced</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-prefab-cottage.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:39:08', '2023-08-18 17:48:34', 'Prefab Cottage', 'Prefab Cottage Manufacturers', 'Prefab Cottage Exporters', 'Prefab Cottage Suppliers', 'Prefab Cottage Exporters ', 'Prefab Cottage Exporters', 'Prefab Cottage Manufacturers', 'Prefab Cottage Manufacturers', 'Prefab Cottage Suppliers', 'Prefab Cottage Suppliers', 'Prefab Cottage in city', 'Prefab Cottage in city', 'Prefab Cottage'),
(37, 1, 0, NULL, NULL, 'LGSF', NULL, 'lgsf', '', NULL, '', 'LGSF stands for Light Gauge Steel Framing. It is a construction method that utilizes cold-formed steel sections for the structural framing of buildings. In LGSF, thin steel sheets are rolled into C or Z-shaped profiles and assembled to form the load-bearing framework of the structure.', '<p style=\"text-align: justify;\">Here are some key features and benefits of LGSF:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Strength and durability: Light gauge steel is a strong and durable material that can withstand various environmental conditions, including high winds and seismic activity. It provides structural stability and can support multi-story buildings.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Lightweight and efficient: Light gauge steel is lighter compared to traditional construction materials such as concrete or wood. This makes it easier to handle and transport, leading to faster construction times and reduced labor costs.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Precision and accuracy: LGSF components are fabricated off-site using computer-aided design (CAD) and manufacturing (CAM) technology. This ensures precision and accuracy in the production of steel frames, resulting in a higher quality and more consistent construction.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Design flexibility: LGSF allows for flexible design options. The steel frames can be easily customized to accommodate different architectural styles, layouts, and building requirements. This flexibility is particularly advantageous for complex or unique designs.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Sustainability: Light gauge steel is a recyclable material, making LGSF construction environmentally friendly. It reduces waste and energy consumption during manufacturing and can be recycled at the end of a building&#39;s life cycle.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Fire resistance: Light gauge steel has inherent fire-resistant properties. It does not contribute to the spread of fire, offering better fire protection compared to traditional construction materials.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Termite and pest resistance: Steel is not susceptible to termite or pest infestations, eliminating the need for chemical treatments and reducing maintenance costs associated with pest control.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-lgsf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-05 12:39:17', '2023-08-18 17:48:41', 'LGSF', 'LGSF Manufacturers', 'LGSF Exporters', 'LGSF Suppliers', 'LGSF Exporters ', 'LGSF Exporters', 'LGSF Manufacturers', 'LGSF Manufacturers', 'LGSF Suppliers', 'LGSF Suppliers', 'LGSF in city', 'LGSF in city', 'LGSF'),
(38, 1, 0, NULL, NULL, 'Prefabricad Health Centre', NULL, 'prefabricad-health-centre', '', NULL, '', '<p>A prefabricated health center, also known as a modular health center or portable clinic, is a pre-built medical facility that is manufactured off-site and then transported to its intended location for installation and immediate use. Prefabricated health centers offer a convenient and efficient solution for quickly establishing medical facilities in various settings, including rural areas, disaster-stricken regions, or temporary healthcare needs.</p>\r\n', '<p style=\"text-align:justify\">Here are some key features and benefits of prefabricated health centers:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align:justify\">Speed of construction: Prefabricated health centers are constructed in a controlled factory environment concurrently with site preparation. This parallel construction process significantly reduces construction time compared to traditional on-site construction. Once the modules are ready, they are transported to the site and assembled, allowing for rapid deployment and immediate medical services.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Flexibility and customization: Prefabricated health centers can be designed to meet specific healthcare requirements. The modular nature of these facilities allows for flexibility in layout, size, and functionality. They can be customized to include examination rooms, waiting areas, laboratories, pharmacies, administrative spaces, and other necessary medical facilities.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Quality control: Prefabricated health centers undergo rigorous quality control procedures during manufacturing. The controlled factory environment ensures that the modules are constructed to high-quality standards, using precise measurements and techniques. This ensures consistency, durability, and compliance with healthcare regulations and standards.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Mobility and reusability: Prefabricated health centers are designed to be easily transportable. They can be relocated to different sites as healthcare needs change or moved to areas requiring temporary medical facilities. This mobility and reusability feature makes them versatile and adaptable to various healthcare scenarios.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Technological integration: Prefabricated health centers can be equipped with the latest medical technologies and equipment, including electrical systems, HVAC systems, medical imaging devices, telemedicine capabilities, and data connectivity. This allows for the delivery of comprehensive and advanced medical services.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-prefabricad-health-centre.jpg', 'home-img-prefabricad-health-centre.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:39:25', '2023-08-19 10:58:21', 'Prefabricad Health Centre', 'Prefabricad Health Centre Manufacturers', 'Prefabricad Health Centre Exporters', 'Prefabricad Health Centre Suppliers', 'Prefabricad Health Centre Exporters ', 'Prefabricad Health Centre Exporters', 'Prefabricad Health Centre Manufacturers', 'Prefabricad Health Centre Manufacturers', 'Prefabricad Health Centre Suppliers', 'Prefabricad Health Centre Suppliers', 'Prefabricad Health Centre in city', 'Prefabricad Health Centre in city', 'Prefabricad Health Centre'),
(39, 1, 0, NULL, NULL, 'Prefabricad School', NULL, 'prefabricad-school', '', NULL, '', '<p>A prefabricated school, also known as a modular school or portable school, is a pre-built educational facility that is manufactured off-site and then transported to its intended location for installation and immediate use. Prefabricated schools offer a flexible and efficient solution for quickly establishing educational spaces in various settings, including temporary school needs, remote areas, or areas affected by natural disasters.</p>\r\n', '<p style=\"text-align:justify\">Here are some key features and benefits of prefabricated schools:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align:justify\">Speed of construction: Prefabricated schools can be constructed in a significantly shorter time compared to traditional on-site construction. The modules are manufactured off-site while the site preparation is underway, allowing for parallel construction. Once the modules are ready, they are transported to the site and assembled, enabling rapid deployment and immediate use as a school facility.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Flexibility and customization: Prefabricated schools can be designed to meet specific educational requirements. The modular nature of these facilities allows for flexibility in layout, size, and functionality. They can be customized to include classrooms, administrative offices, libraries, laboratories, restrooms, and other necessary facilities. The design can be tailored to suit different educational levels and teaching methods.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Quality control: Prefabricated schools undergo strict quality control procedures during manufacturing. The controlled factory environment ensures that the modules are constructed to high-quality standards, using precise measurements and techniques. This ensures durability, compliance with educational regulations, and a conducive learning environment.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\">Mobility and reusability: Prefabricated schools are designed to be easily transportable. They can be relocated to different sites as educational needs change or moved to areas requiring temporary educational facilities. This mobility and reusability feature makes them adaptable to changing demographics, emergency situations, or community development plans.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-prefabricad-school.jpg', 'home-img-prefabricad-school.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:39:32', '2023-08-19 10:59:11', 'Prefabricad School', 'Prefabricad School Manufacturers', 'Prefabricad School Exporters', 'Prefabricad School Suppliers', 'Prefabricad School Exporters ', 'Prefabricad School Exporters', 'Prefabricad School Manufacturers', 'Prefabricad School Manufacturers', 'Prefabricad School Suppliers', 'Prefabricad School Suppliers', 'Prefabricad School in city', 'Prefabricad School in city', 'Prefabricad School'),
(40, 1, 0, NULL, NULL, 'Standard Modular Solution', NULL, 'standard-modular-solution', '', NULL, '', 'A standard modular solution refers to a pre-designed and pre-engineered modular construction system that offers a set of standardized components and configurations for various building types. It provides a streamlined and efficient approach to constructing buildings by utilizing pre-fabricated modules that can be easily assembled and customized to meet specific requirements.', '<p style=\"text-align: justify;\">Here are some key features and benefits of standard modular solutions:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Pre-designed modules: Standard modular solutions typically come with a range of pre-designed modules, which are pre-fabricated off-site in a controlled factory environment. These modules can include rooms, partitions, walls, floors, and ceilings. They are manufactured to standardized dimensions, ensuring compatibility and ease of assembly.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Customization options: While the modules themselves are standardized, standard modular solutions still allow for customization. The modules can be combined, arranged, and configured in various ways to meet specific building requirements. This flexibility enables customization of floor plans, layouts, and functionality to suit different building types, such as offices, schools, healthcare facilities, or residential buildings.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Time and cost efficiency: Standard modular solutions offer significant time and cost savings compared to traditional construction methods. The modular components are fabricated simultaneously with site preparation, reducing overall construction time. The controlled factory environment ensures efficient use of materials and minimizes waste. Additionally, standardized components can be produced in larger quantities, leading to cost savings through economies of scale.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Quality control: Standard modular solutions undergo rigorous quality control processes during manufacturing. The factory environment allows for precision and accuracy in the construction of modules. Standardization also ensures consistency in quality across multiple projects. The controlled manufacturing process results in higher quality and reduced risks of errors or defects.</p>\r\n	</li>\r\n</ol>\r\n', NULL, '', 'img-standard-modular-solution.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-05 12:39:40', '2023-08-18 17:46:01', 'Standard Modular Solution', 'Standard Modular Solution Manufacturers', 'Standard Modular Solution Exporters', 'Standard Modular Solution Suppliers', 'Standard Modular Solution Exporters ', 'Standard Modular Solution Exporters', 'Standard Modular Solution Manufacturers', 'Standard Modular Solution Manufacturers', 'Standard Modular Solution Suppliers', 'Standard Modular Solution Suppliers', 'Standard Modular Solution in city', 'Standard Modular Solution in city', 'Standard Modular Solution'),
(41, 1, 0, NULL, NULL, 'Labour Colony', NULL, 'labour-colony', '', NULL, '', '<p>Labour colony prefabricated structures refer to the use of prefabricated building components in the construction of residential accommodations for labor colonies. As mentioned earlier, a labour colony is a residential area or community where workers live, often in proximity to their place of employment. Prefabricated structures, which are constructed off-site and then assembled on-site, can offer several advantages in the context of labour colonies.</p>', '\r\n\r\n<ol>\r\n	<li>\r\n	<p>Speed of Construction: Prefabricated structures can be manufactured simultaneously with site preparation, allowing for faster construction compared to traditional on-site building methods. This can be particularly beneficial when there is a need for quick deployment of housing for workers in labour colonies.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cost-effectiveness: Prefabrication can help reduce construction costs through optimized material usage, reduced waste, and streamlined manufacturing processes. This can make housing solutions more affordable and cost-effective for employers or project owners who are responsible for providing accommodations for their workforce.</p>\r\n	</li>\r\n	<li>\r\n	<p>Customization and Flexibility: Prefabricated structures can be designed and customized to meet the specific requirements of a labour colony. This includes considerations such as the number of units needed, layout configurations, amenities, and space optimization to accommodate a larger number of workers in a limited area.</p>\r\n	</li>\r\n	<li>\r\n	<p>Quality Control: Prefabricated components are manufactured under controlled conditions, allowing for better quality control compared to on-site construction. This can result in higher-quality buildings with consistent standards of construction.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mobility and Reusability: Prefabricated structures are often designed to be easily dismantled and relocated if needed. This flexibility can be advantageous in situations where labour colonies need to be established or adjusted in different locations over time. Additionally, the reusable nature of prefabricated components contributes to sustainability and reduced construction waste.</p>\r\n	</li>\r\n	<li>\r\n	<p>Amenities and Facilities: Prefabricated labour colony structures can be equipped with necessary amenities and facilities, such as common areas, dining facilities, recreational spaces, and basic utilities. These amenities are crucial for creating a supportive and comfortable living environment for workers.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Prefabricated structures in labour colonies should be designed with considerations for worker well-being, including proper ventilation, insulation, and access to basic services like water, electricity, and sanitation facilities. Compliance with local building codes, regulations, and safety standards is essential to ensure the safety and welfare of the workers residing in these structures.</p>\r\n\r\n<p>Overall, the use of prefabricated structures in labour colonies can provide efficient, cost-effective, and customizable housing solutions for workers, addressing the need for suitable accommodations in proximity to their workplace.</p>\r\n', NULL, '', 'img-labour-colony.jpg', 'home-img-labour-colony.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, 1, '2023-05-12 13:14:20', '2023-08-18 17:47:09', 'Labour Colony', 'Labour Colony Manufacturers', 'Labour Colony Exporters', 'Labour Colony Suppliers', 'Labour Colony Exporters ', 'Labour Colony Exporters', 'Labour Colony Manufacturers', 'Labour Colony Manufacturers', 'Labour Colony Suppliers', 'Labour Colony Suppliers', 'Labour Colony in city', 'Labour Colony in city', 'Labour Colony'),
(42, 1, 0, NULL, NULL, 'Site Offices', NULL, 'site-offices', '', NULL, '', '<p>Site offices are temporary administrative units or facilities set up at construction sites, industrial projects, or other work sites. They serve as the central hub for project management, coordination, and administrative activities related to the site. Site offices are typically established by the project owner, contractor, or construction management team to facilitate efficient operations and communication during the construction or development phase.</p>', '\r\n<p>The primary functions of site offices include:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Project Management: Site offices serve as a base for project managers, engineers, and other personnel involved in overseeing and coordinating the project. They provide a dedicated workspace where project plans, schedules, and documents can be managed and updated.</p>\r\n	</li>\r\n	<li>\r\n	<p>Administrative Support: Site offices handle various administrative tasks such as documentation, record-keeping, procurement, payroll, and personnel management. They serve as the point of contact for contractors, suppliers, and other stakeholders.</p>\r\n	</li>\r\n	<li>\r\n	<p>Communication and Coordination: Site offices are crucial for facilitating communication and coordination among project team members, contractors, and clients. Meetings, progress updates, and decision-making processes often take place at the site office.</p>\r\n	</li>\r\n	<li>\r\n	<p>Health and Safety: Site offices play a role in ensuring the implementation of health and safety measures at the work site. They may house safety officers and provide resources for conducting safety meetings, training sessions, and maintaining relevant documentation.</p>\r\n	</li>\r\n	<li>\r\n	<p>Storage and Equipment: Site offices may include storage facilities for equipment, tools, and construction materials required for the project. This helps keep essential resources readily accessible and secure.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Site offices can vary in size and complexity depending on the scale of the project. They may range from simple, portable structures or trailers to more permanent buildings equipped with offices, meeting rooms, restrooms, and other amenities.</p>\r\n\r\n<p>The location of the site office is usually chosen to provide easy access to the work site while minimizing disruption to ongoing construction activities. They are often positioned near the construction area or in a central location that allows efficient movement and supervision of the project.</p>\r\n\r\n<p>Overall, site offices serve as the administrative nerve center for construction and development projects, providing essential support and infrastructure for effective project management, communication, and coordination.</p>\r\n', NULL, '', 'img-site-offices.jpg', 'home-img-site-offices.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-12 13:14:29', '2023-08-18 17:46:31', 'Site Offices', 'Site Offices Manufacturers', 'Site Offices Exporters', 'Site Offices Suppliers', 'Site Offices Exporters ', 'Site Offices Exporters', 'Site Offices Manufacturers', 'Site Offices Manufacturers', 'Site Offices Suppliers', 'Site Offices Suppliers', 'Site Offices in city', 'Site Offices in city', 'Site Offices'),
(43, 1, 0, NULL, NULL, 'Double Storey', NULL, 'double-storey', '', NULL, '', '<p style=\"text-align: justify;\">Double-storey prefabricated structures refer to buildings or structures that are constructed using prefabricated components and are designed to have two levels or stories. Prefabrication involves manufacturing building elements off-site in a factory or production facility and then transporting them to the construction site for assembly.</p>', '\r\n\r\n<p style=\"text-align: justify;\">Prefabricated structures offer several advantages over traditional construction methods, including speed of construction, cost-effectiveness, and quality control. When it comes to double-storey prefabricated structures, these benefits are extended to multi-level buildings. Here are some key features and benefits of double-storey prefabricated structures:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Speed of Construction: Prefabricated components are manufactured in a controlled environment simultaneously with site preparation, resulting in faster construction times compared to traditional on-site building methods. The assembly of pre-made components is typically quicker and more efficient, leading to shorter overall construction periods.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Cost-effectiveness: Prefabrication allows for better cost control and reduced labor costs. The streamlined manufacturing process, optimized material usage, and reduced waste contribute to cost savings. Additionally, the shorter construction period can lead to minimized financing and operational costs.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Quality and Consistency: Prefabricated components are manufactured under strict quality control measures, ensuring consistent quality throughout the building. The controlled environment of the factory allows for precise construction and integration of various building elements, resulting in high-quality finished structures.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Design Flexibility: Double-storey prefabricated structures offer design flexibility, allowing for customization to meet specific requirements. There is a wide range of architectural designs, floor plans, and finishes available to suit different purposes and aesthetics.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Sustainability: Prefabricated construction often incorporates sustainable practices, such as efficient material usage, waste reduction, and energy-efficient design. The controlled manufacturing process allows for better waste management and recycling, contributing to environmental sustainability.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Structural Strength: Prefabricated structures are designed to meet stringent building codes and standards. The use of high-quality materials and advanced construction techniques ensures structural integrity and durability.</p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align: justify;\">Reduced Disruption: Prefabricated construction minimizes disruption to the surrounding environment and nearby communities. As most of the manufacturing and assembly work is done off-site, on-site disturbances, such as noise, dust, and traffic, are significantly reduced.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\">Double-storey prefabricated structures find applications in various sectors, including residential buildings, offices, schools, healthcare facilities, and commercial spaces. They offer a viable solution for projects requiring quick construction, cost control, and high-quality buildings.</p>\r\n\r\n<p style=\"text-align: justify;\">It&#39;s important to note that while prefabricated construction offers many advantages, proper planning, coordination, and adherence to local building regulations are essential to ensure successful implementation and optimal performance of double-storey prefabricated structures.</p>\r\n', NULL, '', 'img-double-storey.jpg', 'home-img-double-storey.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 0, 0, 1, '2023-05-12 13:14:38', '2023-08-18 17:46:29', 'Double Storey', 'Double Storey Manufacturers', 'Double Storey Exporters', 'Double Storey Suppliers', 'Double Storey Exporters ', 'Double Storey Exporters', 'Double Storey Manufacturers', 'Double Storey Manufacturers', 'Double Storey Suppliers', 'Double Storey Suppliers', 'Double Storey in city', 'Double Storey in city', 'Double Storey');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sitelogo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_contact` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `new_number` varchar(255) DEFAULT NULL,
  `toll_free_no` varchar(255) DEFAULT NULL,
  `mobile_no2` varchar(255) DEFAULT NULL,
  `mobile_no3` varchar(255) DEFAULT NULL,
  `header_text_title` varchar(255) DEFAULT NULL,
  `header_text` text,
  `footer_text_title` varchar(255) DEFAULT NULL,
  `footer_text` text,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `googleplus_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `pinterest_url` varchar(255) DEFAULT NULL,
  `viber_url` varchar(255) DEFAULT NULL,
  `vimeo_url` varchar(255) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `extra_js` text,
  `image_keyword` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `professionals` int(11) DEFAULT NULL,
  `patients` int(11) DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `machines` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `sitelogo`, `email`, `email_contact`, `address1`, `address2`, `address3`, `contact_number`, `mobile`, `new_number`, `toll_free_no`, `mobile_no2`, `mobile_no3`, `header_text_title`, `header_text`, `footer_text_title`, `footer_text`, `facebook_url`, `twitter_url`, `googleplus_url`, `instagram_url`, `linkedin_url`, `pinterest_url`, `viber_url`, `vimeo_url`, `googlemap`, `meta_title`, `meta_desc`, `meta_keyword`, `extra_js`, `image_keyword`, `google_analytics`, `professionals`, `patients`, `rooms`, `machines`, `created`, `modified`) VALUES
(1, 'Perfect Porta Cabin', 'perfect-porta-cabin-logo.png', 'perfectportacabin@gmail.com', '', 'Shop No. 8, 5R-4 Basement, Govind Bhawan, Opp. Surya Ortho Hospital, N.I.T Faridabad (Haryana)-121001', '', '', '+91-9873395386', '', '', '', '', NULL, '', '', 'Copyright Â© 2023 Perfect Porta Cabin | Website Designed & Promoted by Web2Export', 'At Perfect Porta Cabin we are engaged in manufacturing premium quality custom built Portable Cabins,Prefab Guard Huts, Prefab Resorts Huts, Site offices, Portable Toilets, Prefab Gyms and various kind of pre-fabricated structures. We strive to provide our customers with products that offer complete value for their money.', '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2023-05-29 17:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `sitepages`
--

CREATE TABLE `sitepages` (
  `id` int(11) NOT NULL,
  `layout_id` int(11) DEFAULT '0',
  `menu_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_desc` text,
  `remark` text,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitepages`
--

INSERT INTO `sitepages` (`id`, `layout_id`, `menu_id`, `name`, `link_title`, `slug`, `image`, `description`, `short_description`, `meta_title`, `meta_keyword`, `meta_desc`, `remark`, `views`, `active`, `created`, `modified`) VALUES
(1, 0, 0, 'Home About', '', 'home-about', 'home-about.jpg', '<p style=\"text-align:justify\">At Perfect Porta Cabin we are engaged in manufacturing premium quality custom built Portable Cabins,Prefab Guard Huts, Prefab Resorts Huts, Site offices, Portable Toilets, Prefab Gyms and various kind of pre-fabricated structures. We strive to provide our customers with products that offer complete value for their money.</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-25 16:15:22', '2023-05-08 16:11:30'),
(2, 0, 0, 'Company Profile', '', 'company-profile', 'company-profile.jpg', '<p style=\"text-align:justify\">At Perfect Porta Cabin we are engaged in manufacturing premium quality custom built Portable Cabins,Prefab Guard Huts, Prefab Resorts Huts, Site offices, Portable Toilets, Prefab Gyms and various kind of pre-fabricated structures. We strive to provide our customers with products that offer complete value for their money.</p>\r\n<p style=\"text-align:justify\">Perfect Porta Cabin is recognised as a leader in the secure Portable Cabin Manufacturer in India. We are committed to attaining the highest standards in all areas of our business. Our aim is to exceed your expectations not just the first time but every time; and in so doing, to build an enduring mutually beneficial partnership with you. All product ranges are designed and manufactured by Perfect Porta Cabin as high performance solutions to the needs and expectations of our diverse client and application base today, tomorrow and beyond</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-25 16:15:26', '2023-05-05 13:02:56'),
(3, 0, 0, 'Contact Us', '', 'contact-us', '', '', '<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n', '', '', '', NULL, 0, 0, '2019-06-25 16:15:30', '2023-05-05 12:41:02'),
(4, 0, 0, 'Sitemap', '', 'sitemap', '', '', '', '', '', '', NULL, 0, 0, '2019-06-25 16:15:35', '2023-05-05 12:41:13'),
(5, 0, 0, 'Our Presence', '', 'our-presence', '', '', '', 'Our Presence', 'Our Presence', 'Our Presence', NULL, 0, 0, '2019-06-25 16:15:48', '2019-06-28 13:12:10'),
(6, 0, 0, 'Catalog', '', 'catalog', 'catalog.jpg', '<p style=\"text-align:justify\">Since its inception in 2015, Jenish Metal &amp; Alloys Inc is driven by industry experts to give the best value for money by providing an extensive range to customers. Our product quality, consistent efforts and commitment to customer satisfaction has earned our company recognition among the best <strong>Stainless Steel Round Bar Suppliers in City</strong>. Our manufacturing facility and excellence made it possible for us to earn the faith of our clients on our products.</p>\r\n', '<p style=\"text-align:justify\">Our range is customized and is available in different configurations to meet diverse demands. Clients from different industries can contact us to buy <strong>SS Pipe, SS Sheets, SS Plates, SS Circle, Monel Round Bar to Nitronic Round Bar in City</strong>. We promise that our products are as per the industry guidelines and will give satisfactory results as expected.</p>\r\n\r\n<p style=\"text-align:justify\">As one of the prominent <strong>Alloy Steel Round Bar Exporters and Trader in City</strong>, we also specialize in providing timely delivery of bulk quantity to our customers. So, what are you waiting for? Talk to our experts, we&rsquo;d be happy assisting you to make the final selection.</p>\r\n', 'Stainless Steel Round Bar Suppliers In City, SS Pipe, SS Sheets Exporters', 'Stainless Steel Round Bar Suppliers In City, SS Pipe Trader In City, SS Sheets Exporters, SS Plates In City, Ss Circle In City, Monel Round Bar In City, Nitronic Round Bar In City, Alloy Steel Round Bar In City', 'Jenish Metal & Alloys Inc. is the best Stainless Steel Round Bar Suppliers in City, SS Pipe Trader in City, exporters offer SS Sheets, Plates, Circle', NULL, 0, 0, '2019-06-25 16:15:52', '2019-09-02 12:30:44'),
(7, 0, 0, 'Our Infrastructure', '', 'our-infrastructure', '', '<p>All our products are manufactured in a state-of-the-art facility equipped with all the latest machinery and powered by advanced technology. We believe in achieving absolute perfection before giving the product a thumbs-up for even quality testing. The quality auditors test it further against several parameters using various machines and ask for minor changes and then only the product is delivered to the clients. This stringent process allows us to deliver only premium quality products to our clients. Our 904L Stainless Steel Plate has become highly demanded in the market after going through the same process.</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-25 16:47:45', '2019-06-25 16:48:24'),
(8, 0, 0, 'Excellence From Experience', '', 'excellence-from-experience', '', '<p>We are operating in the market for over 25 years now and there&rsquo;s a certain expertise that a company gains over such a long time. Every product in our portfolio reflects this expertise from the superior finish to the extreme durability. It is not for nothing that our name is taken among the distinguished Hardox Plates Exporters and Suppliers in India. Witness the excellence by buying our products.</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-25 16:47:59', '2019-06-25 17:03:22'),
(9, 0, 0, 'Our Products', '', 'our-products', '', '<p style=\"text-align:justify\">At Perfect Porta Cabin we are engaged in manufacturing premium quality custom built Portable Cabins,Prefab Guard Huts, Prefab Resorts Huts, Site offices, Portable Toilets, Prefab Gyms and various kind of pre-fabricated structures. We strive to provide our customers with products that offer complete value for their money.</p>', '', '', '', '', NULL, 0, 0, '2019-06-25 17:03:36', '2023-05-05 13:04:10'),
(10, 0, 0, 'Exporters Category', '', 'exporters-category', '', '', '', 'Exporters Category', 'Exporters Category', 'Exporters Category', NULL, 0, 0, '2019-09-02 13:09:08', '2019-09-02 13:09:19'),
(11, 0, 0, 'Traders Category', '', 'traders-category', '', '', '', 'Traders Category', 'Traders Category', 'Traders Category', NULL, 0, 0, '2019-09-02 13:09:37', '2019-09-02 13:09:57'),
(12, 0, 0, 'Suppliers Category', '', 'suppliers-category', '', '', '', 'Suppliers Category', 'Suppliers Category', 'Suppliers Category', NULL, 0, 0, '2019-09-02 13:09:42', '2019-09-02 13:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `socialicons`
--

CREATE TABLE `socialicons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `iconcss` varchar(255) DEFAULT NULL,
  `iconcss2` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remark` text,
  `socialicon_order` int(4) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialicons`
--

INSERT INTO `socialicons` (`id`, `name`, `url`, `slug`, `iconcss`, `iconcss2`, `image`, `remark`, `socialicon_order`, `views`, `active`, `created`, `modified`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', NULL, 'fa-facebook', '', '', NULL, 0, 0, 1, '2019-08-31 16:55:14', '2019-08-31 16:58:40'),
(2, 'Twitter', 'https://twitter.com/', NULL, 'fa-twitter', '', '', NULL, 0, 0, 1, '2019-08-31 16:55:23', '2019-08-31 16:58:44'),
(3, 'Instagram', 'https://www.instagram.com/', NULL, 'fa-instagram', '', '', NULL, 0, 0, 1, '2019-08-31 16:55:36', '2019-08-31 16:58:49'),
(4, 'Pinterest', 'https://www.pinterest.com/', NULL, 'fa-pinterest-p', '', '', NULL, 0, 0, 1, '2019-08-31 16:55:47', '2019-08-31 16:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `subdomains`
--

CREATE TABLE `subdomains` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `categories` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `location_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `testimonial_type` tinyint(4) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `company1` varchar(255) DEFAULT NULL,
  `testimonial_rating` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial_type`, `name`, `slug`, `designation`, `company1`, `testimonial_rating`, `contact`, `course`, `college`, `company`, `image`, `short_description`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `active`, `created`, `modified`) VALUES
(1, 0, 'A Wahid', 'a-wahid', '', NULL, NULL, NULL, NULL, NULL, '', 'img-1567249371.png', '', 'This is one of the most best n believable company.. that serves great work at time... Awesome ', NULL, NULL, NULL, 0, '2019-08-30 17:00:40', '2023-05-12 13:36:05'),
(4, 0, 'Golaya Progrresive School', 'golaya-progrresive-school', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:36:15', '2023-05-12 13:39:44'),
(5, 0, 'Help age India', 'help-age-india', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:36:21', '2023-05-12 13:39:44'),
(6, 0, 'Angel Broking', 'angel-broking', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:36:28', '2023-05-12 13:39:51'),
(7, 0, 'Construction Catalysers', 'construction-catalysers', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:37:56', '2023-05-12 13:39:52'),
(8, 0, 'Suram Fashion', 'suram-fashion', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:14', '2023-05-12 13:40:21'),
(9, 0, 'Sundeep International', 'sundeep-international', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:21', '2023-05-12 13:40:23'),
(10, 0, 'Gail India LTD', 'gail-india-ltd', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:27', '2023-05-12 13:40:26'),
(11, 0, 'HPCL', 'hpcl', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:34', '2023-05-12 13:40:28'),
(12, 0, 'LDH Overseas', 'ldh-overseas', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:46', '2023-05-12 13:40:30'),
(13, 0, 'S.Kumar', 'skumar', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:38:51', '2023-05-12 13:40:33'),
(14, 0, 'Larsen & Toubro Ltd', 'larsen-toubro-ltd', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:03', '2023-05-12 13:40:34'),
(15, 0, 'MMTC Pamp India Pvt Ltd', 'mmtc-pamp-india-pvt-ltd', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:08', '2023-05-12 13:40:36'),
(16, 0, 'Havells India Ltd', 'havells-india-ltd', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:14', '2023-05-12 13:40:38'),
(17, 0, 'S.P. Singla Cons. Pvt. Ltd.', 'sp-singla-cons-pvt-ltd', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:20', '2023-05-12 13:40:41'),
(18, 0, 'Wings Cad', 'wings-cad', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:26', '2023-05-12 13:40:43'),
(19, 0, 'Krishna Building system', 'krishna-building-system', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, 1, '2023-05-12 13:39:32', '2023-05-12 13:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT '0',
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `first_name`, `last_name`, `company`, `email`, `phone`, `username`, `password`, `user_password`, `address`, `address2`, `city`, `state`, `country_id`, `zipcode`, `active`, `created`, `modified`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 'admin', 'e4b93d46b915b203d091339f83a1364196d4258f', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2023-08-19 10:37:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modified` (`modified`),
  ADD KEY `name_slug` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepagemenus`
--
ALTER TABLE `homepagemenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `productitems`
--
ALTER TABLE `productitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productphotos`
--
ALTER TABLE `productphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modified` (`modified`),
  ADD KEY `name_slug` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitepages`
--
ALTER TABLE `sitepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialicons`
--
ALTER TABLE `socialicons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdomains`
--
ALTER TABLE `subdomains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepagemenus`
--
ALTER TABLE `homepagemenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productitems`
--
ALTER TABLE `productitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productphotos`
--
ALTER TABLE `productphotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitepages`
--
ALTER TABLE `sitepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `socialicons`
--
ALTER TABLE `socialicons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
