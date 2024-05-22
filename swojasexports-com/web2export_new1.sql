-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 05:54 AM
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
-- Database: `web2export_new1`
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

INSERT INTO `banners` (`id`, `category_id`, `name`, `slug`, `description`, `image`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `active`, `created`, `modified`) VALUES
(2, NULL, 'banner1', NULL, '', 'img-banner1.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-10-25 11:41:48', '2023-05-14 17:58:27'),
(4, NULL, 'banner2', NULL, '', 'img-banner2.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-10-25 14:10:10', '2023-05-14 17:58:40');

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
(1, 0, 0, 0, 0, NULL, 'Our Presence', NULL, 'our-presence', NULL, '<p style=\"text-align:justify\">Being one of the leading <strong>catname Manufacturers in countryname</strong>, we design and fabricate replicas of antique furniture that matches your taste and fits your budget. We have masters of the trade to design every piece with precision to attain maximum client satisfaction. We blend our experience and expertise to create masterpieces that give users value for their money.<br />\r\n<br />\r\nOur focus on quality has won us the fame among the best <strong>catname Exporters and Suppliers in countryname</strong>. You can explore all the beautiful options available on our website and ask for customizations, as per your preferences via call or website enquiry form.</p>\r\n', '<p style=\"text-align:justify\">Furniture has an important role in making or breaking the appearance of your ambience, therefore, it has to be classy yet cost-effective. At Shivam Exports, we understand the demand for antique and exquisite furniture pieces and engaged in manufacturing and supplying <strong>catname in countryname</strong>. We create experiences for our customers, as per their residential or commercial needs.<br />\r\n&nbsp;</p>\r\n', NULL, 'catname In countryname, catname Manufacturers Suppliers countryname', 'Buy catname in countryname from catname Manufacturers in countryname, catname Suppliers in countryname, exporters - Shivam Exports', 'catname In countryname, catname Manufacturers In countryname, catname Suppliers In countryname, Top catname Exporters, Best catname In countryname', 1, '2019-06-24 09:35:09', '2019-10-28 15:52:25'),
(2, 0, 0, 0, 0, NULL, 'Manufacturers Category', NULL, 'manufacturers-category', NULL, '<p style=\"text-align:justify\">We are backed by advanced technologies and high-grade raw components to manufacture furniture carefully. As a leading <strong>catname Manufacturing</strong> Company, we have highly trained and talented craftsman to hear your specific demands and turn them into a beautiful reality. We create perfect designs to fit your interior the best.<br />\r\n<br />\r\nBeing a prominent <strong>catname Manufacturer</strong> in India, we have an exclusive and custom-made collection for you to choose from. Send us your enquiry or call now to discuss your requirements and get a unique masterpiece for your home or office.</p>\r\n', '<p style=\"text-align:justify\">At Shivam Exports, we have furniture manufacturing experts to create beautiful designs that add an extra edge to your interior. Our outstanding range, competitive prices and round-the-clock customer support are a few of many reasons, we are considered as the best among the top <strong>catname Manufacturers in Jodhpur, Rajasthan</strong>.<br />\r\n&nbsp;</p>\r\n', NULL, 'catname Manufacturers In Jodhpur Rajasthan India', 'catname Manufacturers in Jodhpur India. Shivam Exports a famed catname manufacturer in Rajasthan, offer their products in modern style', 'catname Manufacturers In Jodhpur, catname Manufacturer In India, Best Manufacturers Of catname In Rajasthan, Top catname Manufacturer', 1, '2019-06-24 09:35:28', '2019-10-28 16:04:22'),
(3, 0, 0, 0, 0, NULL, 'Exporters Category', NULL, 'exporters-category', NULL, '<p style=\"text-align:justify\">We have a team to hear customer demands and meet them within a promised timeframe. Our experts hear your requirements and deliver products as expected. We follow all the necessary export regulations to make the product delivered to your doorways without any delays. We value our customers and their requirements and put our best to meet that.<br />\r\n<br />\r\nBeing a noted <strong>catname Exporter</strong> based in Jodhpur, Rajasthan, we provide prompt delivery and paramount customer support. Drop us your enquiry or dial our number to have a one-to-one conversation with our experts.</p>\r\n', '<p style=\"text-align:justify\">Looking for one of the reliable <strong>catname Exporters</strong> from India? Shivam Exports is the name that should be on your list. We have an outstanding range of furniture manufactured at our in-house facility to export it worldwide. We design every unit at our in-house facility and pack it carefully to prevent any damage during transit.<br />\r\n&nbsp;</p>\r\n', NULL, 'catname Exporters In India Australia France Canada Dubai Thailand', 'catname Exporters in India. Shivam Exports Is leading catname Exporter from Australia France Canada Dubai Thailand New Zealand Germany California Denmark Turkey', 'catname Exporters In India, catname Exporter From Australia, Best catname Exporter In France, Top Exporters Of catname In Canada, Thailand catname Exporter', 1, '2019-08-27 14:17:54', '2019-10-28 16:03:22'),
(4, 0, 0, 0, 0, NULL, 'Suppliers Category', NULL, 'suppliers-category', NULL, '<p style=\"text-align:justify\">As a prominent <strong>catname Supplying</strong> Company, we bring you elegant designs with dimensional accuracy at competitive market prices. Our offered range is known for its quality, beautiful designs and lasting performance. We have a team to pay attention to the quality and other things, so you will receive flawless products at the end.<br />\r\n<br />\r\nBeing a leading <strong>catname Supplier</strong> in India, we promise timely transportation of the product to your doorstep. Send us your enquiry or email us to get our instant customer support. Our spokespersons would be glad to assist you.</p>\r\n', '<p style=\"text-align:justify\">Shivam Exports is one of the trusted <strong>catname Suppliers</strong> in Jodhpur, Rajasthan. We deal with a vast range of furniture that can add life to your dull and boring interior. All our products are carefully designed to give the desired shape and luxurious feel to the final product. These offered products are also manufactured at our in-house facility and get inspected by clients under strict supervision.<br />\r\n&nbsp;</p>\r\n', NULL, 'catname Suppliers In Jodhpur Rajasthan Delhi Bangalore India', 'Shivam Exports is top catname Suppliers in Jodhpur India. Best catname Supplier in Rajasthan Delhi Bangalore Gujarat', 'catname Suppliers In Jodhpur, catname Supplier In India, Best catname Supplier In Delhi, catname Supplying Company In Bangalore, Supplier Of catname In Rajasthan, Suppliers Of catname In Gujarat', 1, '2019-08-27 14:22:10', '2019-10-28 16:04:40');

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
(1, 0, 'Kerri Martin', NULL, 'Enquiry For Contact Us', 'martinshow@gmail.com', NULL, '5033806300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 Mill St. N/A', NULL, NULL, NULL, NULL, '167.114.100.160', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2019-12-24 14:59:52', '2019-12-24 14:59:52'),
(2, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '956234122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uttam Nagar', 'test message', NULL, NULL, NULL, '124.123.230.185', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2020-01-10 15:42:50', '2020-01-10 15:42:50'),
(3, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '956234122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moti Nagar', 'test message Recycled Furniture', NULL, NULL, NULL, '124.123.230.185', 'https://www.shivamexports.com/recycled-furniture.html', 'ajax', '2020-01-10 15:43:22', '2020-01-10 15:43:22'),
(4, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '956234122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ramesh Nagar', 'Test home page message', NULL, NULL, NULL, '124.123.230.185', 'https://www.shivamexports.com/', 'ajax', '2020-01-10 15:43:52', '2020-01-10 15:43:52'),
(5, 0, 'Barry Cunningham', NULL, 'Enquiry For Contact Us', 'Strasbog.inc@gmail.com', NULL, '8798392034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1207 Par La Ville Road', 'I would like to place an order with you and have it shipped out to me. Before placing my order with you, I would like to know if I can make payment manually with credit card because that is the only way I am setup to make payment for now without any delay. Also, I don\'t place online orders, thus, can i E-mail my order then you can give me a quote here?? Let me know if this can be worked out so i could get back to you with the list of items i am interested in purchasing.\r\n\r\nWarm Regards\r\nBarry', NULL, NULL, NULL, '129.56.82.135', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2020-01-11 13:57:21', '2020-01-11 13:57:21'),
(6, 0, 'Express Renders', NULL, 'Enquiry For Contact Us', 'info@expressrenders.com', NULL, '7472494320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6303 Owensmouth Ave, 10th floor Woodland Hills CA 91367, United States', 'List your Products or Services on our Directory at for Free\r\n\r\nExpress Renders is offering you a free listing on our directory for a chance to be indexed, seen and findable to new potential clients.\r\n\r\nAdd your information to our site and youâ€™ll be live within a few days.\r\n\r\nExpress Renders has been created to support our small business clients and offer an online business directory to businesses and individuals in the real estate world, from furnishings to contractors and brokers.\r\n\r\nPlease go to:  https://www.expressrenders.com/directory/ and click on Add Listing', NULL, NULL, NULL, '122.174.171.216', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2020-01-25 14:19:42', '2020-01-25 14:19:42'),
(7, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:31:35', '2020-03-04 12:31:35'),
(8, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:33:14', '2020-03-04 12:33:14'),
(9, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:33:26', '2020-03-04 12:33:26'),
(10, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:33:30', '2020-03-04 12:33:30'),
(11, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:35:04', '2020-03-04 12:35:04'),
(12, 0, 'Pankaj chandugade', NULL, 'Enquiry For Contact Us', 'pchandugade25@gmail.com', NULL, '8208993548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pune', 'Inquiry for wooden handicrafts', NULL, NULL, NULL, '49.35.4.107', 'https://www.shivamexports.com/wooden-handicraft.html', 'ajax', '2020-03-04 12:35:48', '2020-03-04 12:35:48'),
(13, 0, 'Mayank jain', NULL, 'Enquiry For Contact Us', 'mayankjirawala@gmail.com', NULL, '9106303237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sangariya fata, Sangariya pal link road', 'Prekshit Packaging                     Bobb self adhesive tapes at bottom rates..', NULL, NULL, NULL, '157.38.28.183', 'https://www.shivamexports.com/', 'ajax', '2020-03-11 17:31:20', '2020-03-11 17:31:20'),
(14, 0, 'wasif', NULL, 'Enquiry For Contact Us', 'wasif@orcrafts.com', NULL, '8801677039751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55/2, Mohammadpur dhaka.', 'Dear Sir\r\n\r\nHope you are doing really great. This is wasif hossain from www.orcrafts.com. I am from Bangladesh and I am connected with handicraft business couple of years. See I\'m quite sure you are not the right person to talk about this or I\'m confused i guess. Basically I\'m running business here with thousands of craftsmen. Since Bangladesh is an underdeveloped country and most of the people are poor here so you can assume the situation of those women who\'s husband is killed by tiger or natural widow or divorced or single mother and they are our worker.Doing some research and I came to know you people are buying diversified jute products from Bangladesh. So I thought there could be a possibility to work with your company or you can direct me for the best.\r\n\r\nAs I am leading couple of different women organization/individual/small medium enterprise so we have very enriched product line covered by terracotta,metal,cotton ,jamdani,crochet,jute and many other recycle product. I beleive i\'ll be able to give you competative rate and quality.\r\n\r\nPLZ have a look to our website. I hope you will like it.\r\n\r\nHelp us if you are capable.\r\n\r\nThanks\r\nWasif\r\nwasif@orcrafts.com\r\ncell : 8801677039751\r\nwhatsapp : 8801913152319', NULL, NULL, NULL, '103.91.144.68', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2020-04-17 04:04:50', '2020-04-17 04:04:50'),
(15, 0, 'Shivam', NULL, 'Enquiry For Contact Us', 'ui@er.co', NULL, '4544544677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vcvc', 'Hi', NULL, NULL, NULL, '59.98.239.163', 'https://www.shivamexports.com/', 'ajax', '2020-04-25 02:32:02', '2020-04-25 02:32:02'),
(16, 0, 'Shivam', NULL, 'Enquiry For Contact Us', 'ui@er.co', NULL, '4544544677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vcvc', 'Hi', NULL, NULL, NULL, '59.98.239.163', 'https://www.shivamexports.com/', 'ajax', '2020-04-25 02:32:03', '2020-04-25 02:32:03'),
(17, 0, 'Shivam', NULL, 'Enquiry For Contact Us', 'ui@er.co', NULL, '4544544677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vcvc', 'Hi', NULL, NULL, NULL, '59.98.239.163', 'https://www.shivamexports.com/', 'ajax', '2020-04-25 02:32:04', '2020-04-25 02:32:04'),
(18, 0, 'Krishna Kumar', NULL, 'Enquiry For Contact Us', 'uniquecraftshouse@gmail.com', NULL, '07568005123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MH. NO. 10/01 SHOP NO.10 SWARN PATH, MADHYAM MARG, MANSAROVAR', 'Hello sir\r\n   We are the leading company of wooden handicrafts. We are the manufacturer of all handicrafts products.  We also do customized work. If you Any requirement of related products so also contact on our WhatsApp number or mail for more information.\r\n\r\nThanks & Regard \r\nUNIQUE CRAFTS HOUSE\r\nJaipur, Rajasthan, \r\nIndia\r\nMobile No. 7568005123\r\nMail. uniquecraftshouse@gmail.com', NULL, NULL, NULL, '1.39.215.93', 'https://www.shivamexports.com/contact-us.html', 'ajax', '2020-06-25 14:08:02', '2020-06-25 14:08:02');

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
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `name`, `slug`, `description`, `image`, `image2`, `image3`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `created`, `modified`) VALUES
(1, 5, 'industrial', NULL, '', 'img1-5industrial.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 10:56:34', '2019-12-24 11:06:41'),
(2, 5, 'Industrial Furniture', NULL, NULL, 'img1-5industrial-furniture.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:21:25', '2019-12-24 11:21:25'),
(3, 2, 'Antique Furniture', NULL, NULL, 'img1-2antique-furniture.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:24:56', '2019-12-24 11:24:56'),
(4, 2, 'Antique Furniture1', NULL, NULL, 'img1-2antique-furniture1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:26:33', '2019-12-24 11:26:33'),
(5, 5, 'Industrial Furniture1', NULL, NULL, 'img1-5industrial-furniture1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:29:11', '2019-12-24 11:29:11'),
(6, 5, 'Industrial Furniture2', NULL, NULL, 'img1-5industrial-furniture2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:29:26', '2019-12-24 11:29:26'),
(7, 5, 'Industrial Furniture3', NULL, NULL, 'img1-5industrial-furniture3.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:29:38', '2019-12-24 11:29:38'),
(8, 10, 'Book Shelf', NULL, NULL, 'img1-10book-shelf.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:30:24', '2019-12-24 11:30:24'),
(9, 10, 'Book Shelf1', NULL, NULL, 'img1-10book-shelf1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:30:51', '2019-12-24 11:30:51'),
(10, 10, 'Book Shelf2', NULL, NULL, 'img1-10book-shelf2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:31:09', '2019-12-24 11:31:09'),
(11, 12, 'Wooden Antique Items', NULL, NULL, 'img1-12wooden-antique-items.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:32:22', '2019-12-24 11:32:22'),
(12, 2, 'Antique Furniture2', NULL, NULL, 'img1-2antique-furniture2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:32:55', '2019-12-24 11:32:55'),
(14, 10, 'Book Shelf3', NULL, NULL, 'img1-10book-shelf3.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:33:47', '2019-12-24 11:33:47'),
(16, 12, 'Wooden Antique Items1', NULL, NULL, 'img1-12wooden-antique-items1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:34:52', '2019-12-24 11:34:52'),
(17, 3, 'Recycled Furniture', NULL, NULL, 'img1-3recycled-furniture.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:36:39', '2019-12-24 11:36:39'),
(18, 3, 'Recycled Furniture1', NULL, NULL, 'img1-3recycled-furniture1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:36:54', '2019-12-24 11:36:54'),
(19, 9, 'Wooden Table/ Console1', NULL, NULL, 'img1-9wooden-table-console1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:37:23', '2019-12-24 11:37:23'),
(20, 4, 'Iron Furniture', NULL, NULL, 'img1-4iron-furniture.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:37:47', '2019-12-24 11:37:47'),
(21, 11, 'Wooden Handicraft', NULL, NULL, 'img1-11wooden-handicraft.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:38:27', '2019-12-24 11:38:27'),
(22, 9, 'Wooden Table/ Console', NULL, NULL, 'img1-9wooden-table-console.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:38:54', '2019-12-24 11:38:54'),
(23, 4, 'Iron Furniture1', NULL, NULL, 'img1-4iron-furniture1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:39:26', '2019-12-24 11:39:26'),
(24, 9, 'Wooden Table/ Console3', NULL, NULL, 'img1-9wooden-table-console3.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:39:54', '2019-12-24 11:39:54'),
(25, 4, 'Iron Furniture2', NULL, NULL, 'img1-4iron-furniture2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:40:26', '2019-12-24 11:40:26'),
(26, 12, 'Wooden Antique Items2', NULL, NULL, 'img1-12wooden-antique-items2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:40:58', '2019-12-24 11:40:58'),
(27, 12, 'Wooden Antique Items4', NULL, NULL, 'img1-12wooden-antique-items4.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:41:22', '2019-12-24 11:41:22'),
(28, 9, 'Wooden Table/ Console4', NULL, NULL, 'img1-9wooden-table-console4.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:41:52', '2019-12-24 11:41:52'),
(29, 12, 'Wooden Antique Items5', NULL, NULL, 'img1-12wooden-antique-items5.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:42:27', '2019-12-24 11:42:27'),
(31, 10, 'Book Shelf5', NULL, NULL, 'img1-10book-shelf5.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-24 11:43:33', '2019-12-24 11:43:33'),
(32, 12, 'Wooden Antique Items 6', NULL, NULL, 'img1-12wooden-antique-items-6.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-27 12:19:23', '2019-12-27 12:19:23'),
(33, 12, 'Wooden Antique Items 7', NULL, NULL, 'img1-12wooden-antique-items-7.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-12-27 12:20:00', '2019-12-27 12:20:00');

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
(1, 0, 0, 'India', NULL, 'india', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-10 12:21:30', '2019-10-25 12:17:09'),
(2, 0, 0, 'New Delhi', NULL, 'new-delhi', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-10 12:21:56', '2019-10-25 12:17:21');

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

INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `name`, `product_code`, `slug`, `product_alt`, `product_order`, `home_description`, `short_description`, `description`, `costdescription`, `specification`, `image`, `home_image`, `image_title`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporters_title`, `exporters_image_title`, `manufacturers_title`, `manufacturers_image_title`, `suppliers_title`, `suppliers_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(1, 1, 0, NULL, NULL, 'Fruits And Vegetables', NULL, 'fruits-and-vegetables', '', NULL, '', '<p style=\"text-align:justify\">Fruits and vegetables are both essential components of a healthy diet. They provide a wide range of nutrients, including vitamins, minerals, fiber, and antioxidants, which are important for overall health and well-being. While fruits and vegetables are distinct categories of plant-based foods, they complement each other in terms of nutritional value and offer various benefits when consumed together.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about fruits and vegetables:</p>\r\n\r\n<p style=\"text-align:justify\">1. Nutritional Value: Fruits and vegetables are nutrient-dense foods that offer a host of health benefits. Fruits are generally rich in vitamins, particularly vitamin C and vitamin A, while vegetables provide a broader range of vitamins and minerals, including potassium, magnesium, and folate. Both fruits and vegetables contain dietary fiber, which aids in digestion and helps maintain a healthy digestive system.</p>\r\n', '<p style=\"text-align:justify\">2. Antioxidants: Both fruits and vegetables are excellent sources of antioxidants, which help protect the body against cellular damage caused by free radicals. Antioxidants, such as vitamin C, vitamin E, and various phytochemicals, are more abundant in colorful fruits and vegetables. They play a vital role in reducing the risk of chronic diseases, including heart disease, cancer, and neurodegenerative disorders.</p>\r\n\r\n<p style=\"text-align:justify\">3. Fiber Content: Both fruits and vegetables are high in dietary fiber, which is important for digestive health and helps regulate blood sugar levels. Fiber also contributes to a feeling of fullness, aiding in weight management. Fruits and vegetables with edible skins or peels, such as apples, pears, and cucumbers, are particularly rich in fiber.</p>\r\n\r\n<p style=\"text-align:justify\">4. Disease Prevention: The consumption of a wide variety of fruits and vegetables has been linked to a lower risk of chronic diseases. Regular intake of these plant-based foods is associated with a reduced risk of heart disease, stroke, certain types of cancer, and age-related macular degeneration. The combination of their nutrient content, antioxidants, and fiber contributes to these protective effects.</p>\r\n\r\n<p style=\"text-align:justify\">5. Culinary Uses: Fruits and vegetables offer a multitude of culinary possibilities. They can be enjoyed raw as snacks or added to salads, smoothies, or yogurt. They can be cooked through methods such as steaming, roasting, saut&eacute;ing, or grilling, and used in various recipes including soups, stir-fries, casseroles, and side dishes. Their versatility allows for endless combinations and flavors.</p>\r\n\r\n<p style=\"text-align:justify\">6. Seasonality: Both fruits and vegetables have seasons of peak freshness and availability. Consuming them when they are in season ensures better flavor, nutritional content, and often lower prices. It is beneficial to explore local farmers&#39; markets or community-supported agriculture (CSA) programs to access a wide variety of seasonal fruits and vegetables.</p>\r\n\r\n<p style=\"text-align:justify\">To maximize the nutritional benefits, it is recommended to consume a variety of fruits and vegetables in different colors, as this ensures a broader range of nutrients and antioxidants. Aim to incorporate them into your daily meals and snacks, and consider experimenting with new recipes and combinations to enjoy the diverse flavors and health benefits they offer.</p>\r\n', NULL, '', 'img-fruits-and-vegetables.jpg', 'home-img-fruits-and-vegetables.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1182, '', '', '', 0, 1, 0, '2019-10-25 10:49:23', '2023-05-14 18:39:22', 'Fruits And Vegetables', 'Fruits And Vegetables Manufacturers', 'Fruits And Vegetables Exporters', 'Fruits And Vegetables Suppliers', 'Fruits And Vegetables Exporters ', 'Fruits And Vegetables Exporters', 'Fruits And Vegetables Manufacturers', 'Fruits And Vegetables Manufacturers', 'Fruits And Vegetables Suppliers', 'Fruits And Vegetables Suppliers', 'Fruits And Vegetables in city', 'Fruits And Vegetables in city', 'Fruits And Vegetables'),
(14, 1, 1, NULL, NULL, 'Fresh Pomegranate', NULL, 'fresh-pomegranate', '', NULL, '', '<p style=\"text-align:justify\">Fresh pomegranates are a delicious and nutritious fruit. They are known for their vibrant red color and unique flavor. Pomegranates are native to the Middle East and have been cultivated for thousands of years.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about fresh pomegranates:</p>\r\n\r\n<p style=\"text-align:justify\">1. Appearance: Fresh pomegranates are round-shaped fruits, about the size of an apple or slightly larger. They have a thick, leathery skin that ranges in color from deep red to reddish-brown. The inside of the fruit is filled with juicy red arils, which are the edible seeds surrounded by a translucent, juicy pulp.</p>\r\n', '<p style=\"text-align:justify\">2. Taste: Pomegranates have a sweet and tangy flavor. The arils are juicy and burst with a slightly tart taste, while the pulp surrounding the seeds adds a hint of sweetness. The flavor can vary depending on the variety and ripeness of the fruit.</p>\r\n\r\n<p style=\"text-align:justify\">3. Nutritional Value: Pomegranates are packed with nutrients and are considered a superfood. They are an excellent source of vitamins C and K and provide a good amount of fiber. Pomegranates are also rich in antioxidants, particularly punicalagins and anthocyanins, which have been associated with various health benefits.</p>\r\n\r\n<p style=\"text-align:justify\">4. Health Benefits: Consuming fresh pomegranates may offer several health benefits. The antioxidants in pomegranates help combat inflammation and oxidative stress, which can contribute to chronic diseases. They are also believed to support heart health, improve digestion, boost the immune system, and promote healthy skin.</p>\r\n\r\n<p style=\"text-align:justify\">5. Culinary Uses: Pomegranates can be enjoyed in various ways. The most common method is to eat the arils as a snack or add them to salads, yogurt, or desserts for a burst of flavor and texture. Pomegranate juice is another popular option and can be used in cocktails, smoothies, or as a base for sauces and dressings. The juice can also be reduced to create a thick syrup called &quot;pomegranate molasses,&quot; which is used in Middle Eastern and Mediterranean cuisines.</p>\r\n\r\n<p style=\"text-align:justify\">6. Selecting and Storing: When choosing a fresh pomegranate, look for fruits that feel heavy for their size and have a bright, unblemished skin. They should also make a metallic sound when tapped. Pomegranates can be stored at room temperature for about a week or refrigerated for up to two weeks. Once opened, the arils can be refrigerated in an airtight container for up to five days.</p>\r\n\r\n<p style=\"text-align:justify\">Remember to handle fresh pomegranates with care, as the juice can stain clothing and surfaces. To extract the arils, cut off the crown end of the fruit, score the skin into sections, and gently break it apart to release the seeds.</p>\r\n\r\n<p style=\"text-align:justify\">Enjoy the refreshing and nutritious taste of fresh pomegranates!</p>\r\n', NULL, '', 'img-fresh-pomegranate.jpg', 'home-img-fresh-pomegranate.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 356, '', '', '', 0, 1, 0, '2023-05-14 18:23:17', '2023-05-14 18:31:55', 'Fresh Pomegranate', 'Fresh Pomegranate Manufacturers', 'Fresh Pomegranate Exporters', 'Fresh Pomegranate Suppliers', 'Fresh Pomegranate Exporters ', 'Fresh Pomegranate Exporters', 'Fresh Pomegranate Manufacturers', 'Fresh Pomegranate Manufacturers', 'Fresh Pomegranate Suppliers', 'Fresh Pomegranate Suppliers', 'Fresh Pomegranate in city', 'Fresh Pomegranate in city', 'Fresh Pomegranate'),
(15, 1, 15, NULL, NULL, 'Grapes', NULL, 'grapes', '', NULL, '', '<p style=\"text-align:justify\">Grapes are small, round fruits that grow in clusters on vines. They are one of the oldest cultivated fruits and have been enjoyed for thousands of years. Grapes come in various colors, including green, red, black, and purple, and each variety has its own unique flavor profile.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about grapes:</p>\r\n\r\n<p style=\"text-align:justify\">1. Appearance: Grapes are typically small to medium-sized fruits that grow in clusters. The color of grapes can range from green to red, black, or purple, depending on the variety. Each grape has a thin skin that is either smooth or slightly textured. Inside, grapes contain one to four seeds, although some seedless varieties are also available.</p>\r\n', '<p style=\"text-align:justify\">2. Taste: The taste of grapes varies depending on the variety. Green grapes tend to be crisp and slightly tart, while red and black grapes are sweeter and juicier. The flavor profile can range from tangy and refreshing to rich and sweet. Grapes also have a pleasant, refreshing texture.</p>\r\n\r\n<p style=\"text-align:justify\">3. Nutritional Value: Grapes are a nutritious fruit that provides several health benefits. They are a good source of vitamins C and K and contain antioxidants, such as resveratrol and flavonoids, which have been linked to heart health and may offer protective effects against certain types of cancer. Grapes also provide fiber and are low in calories.</p>\r\n\r\n<p style=\"text-align:justify\">4. Health Benefits: Consuming grapes as part of a balanced diet can have various health benefits. The antioxidants found in grapes help reduce inflammation and oxidative stress in the body. They may also support cardiovascular health, promote healthy blood pressure levels, and contribute to cognitive function. Additionally, grapes contain compounds that may have anti-aging and anti-inflammatory effects.</p>\r\n\r\n<p style=\"text-align:justify\">5. Culinary Uses: Grapes are a versatile fruit that can be enjoyed in different ways. They are commonly eaten fresh as a snack or added to fruit salads. Grapes can also be used in cooking and baking, incorporated into desserts, or paired with cheese and crackers for a flavorful combination. Grape juice and wine are popular beverages made from grapes, and raisins are dried grapes often used in baking and cooking.</p>\r\n\r\n<p style=\"text-align:justify\">6. Selecting and Storing: When selecting grapes, look for plump, firm fruits that are firmly attached to the stem. The color of the grapes should be vibrant and consistent. Avoid grapes that have wrinkled or damaged skin. Store grapes in the refrigerator to keep them fresh. They can be kept in a plastic bag or airtight container for up to a week.</p>\r\n\r\n<p style=\"text-align:justify\">Grapes are not only delicious but also provide numerous health benefits. Whether enjoyed on their own, in salads, or in various culinary creations, grapes are a versatile fruit that can add flavor and nutrition to your diet.</p>\r\n', NULL, '', 'img-grapes.jpg', 'home-img-grapes.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1148, '', '', '', 0, 1, 0, '2023-05-14 18:23:35', '2023-05-14 18:33:40', 'Grapes', 'Grapes Manufacturers', 'Grapes Exporters', 'Grapes Suppliers', 'Grapes Exporters ', 'Grapes Exporters', 'Grapes Manufacturers', 'Grapes Manufacturers', 'Grapes Suppliers', 'Grapes Suppliers', 'Grapes in city', 'Grapes in city', 'Grapes'),
(16, 1, 1, NULL, NULL, 'Onion', NULL, 'onion', '', NULL, '', '<p style=\"text-align:justify\">Onions are a widely used vegetable that belong to the Allium family, which also includes garlic, leeks, and chives. They have been cultivated for thousands of years and are known for their pungent flavor and distinct aroma. Onions come in various types, sizes, and colors, and they are used in a wide range of culinary dishes around the world.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about onions:</p>\r\n\r\n<p style=\"text-align:justify\">1. Appearance: Onions have a round or bulbous shape with multiple layers of papery skin. The outer skin color can range from yellow and white to red and purple, depending on the variety. Inside, the onion has crisp, juicy layers that are typically white or yellow, but some varieties may have red or purple flesh.</p>\r\n', '<p style=\"text-align:justify\">2. Taste and Aroma: Onions have a sharp, pungent flavor that can vary in intensity depending on the type and cooking method. Raw onions are known for their strong taste and can range from mildly sweet to intensely spicy. When cooked, onions mellow and develop a sweeter flavor. The aroma of onions is distinctive and can add depth and richness to dishes.</p>\r\n\r\n<p style=\"text-align:justify\">3. Culinary Uses: Onions are a staple ingredient in many cuisines worldwide. They are incredibly versatile and can be used in a variety of ways. Onions can be chopped, sliced, or minced and used in salads, salsas, soups, stews, stir-fries, curries, and various other savory dishes. They can be caramelized, saut&eacute;ed, grilled, or roasted to enhance their sweetness and flavor.</p>\r\n\r\n<p style=\"text-align:justify\">4. Nutritional Value: Onions are low in calories and rich in nutrients. They are a good source of vitamin C, vitamin B6, and dietary fiber. Onions also contain antioxidants, such as quercetin, which have been associated with various health benefits. Additionally, they provide small amounts of minerals like potassium and folate.</p>\r\n\r\n<p style=\"text-align:justify\">5. Health Benefits: Onions offer several potential health benefits. The antioxidants found in onions may help reduce inflammation, support heart health, and protect against certain chronic conditions. They may also have antimicrobial properties and contribute to digestive health. However, it&#39;s important to note that the specific health benefits may vary depending on the individual and overall diet.</p>\r\n\r\n<p style=\"text-align:justify\">6. Selecting and Storing: When selecting onions, choose ones that are firm and have dry, papery skins. Avoid onions that have soft spots, sprouting, or signs of mold. Store onions in a cool, dry, and well-ventilated place, away from direct sunlight. Whole onions can last for several weeks to a few months, while cut onions should be used within a few days.</p>\r\n\r\n<p style=\"text-align:justify\">Onions are a versatile and flavorful vegetable that can enhance the taste of many dishes. Whether used as a base for cooking or as a garnish, onions add depth and complexity to culinary creations while offering potential health benefits.</p>\r\n', NULL, '', 'img-onion.jpg', 'home-img-onion.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 354, '', '', '', 0, 1, 0, '2023-05-14 18:23:49', '2023-05-14 18:35:05', 'Onion', 'Onion Manufacturers', 'Onion Exporters', 'Onion Suppliers', 'Onion Exporters ', 'Onion Exporters', 'Onion Manufacturers', 'Onion Manufacturers', 'Onion Suppliers', 'Onion Suppliers', 'Onion in city', 'Onion in city', 'Onion'),
(17, 1, 1, NULL, NULL, ' Fruits', NULL, 'fruits', '', NULL, '', '<p style=\"text-align:justify\">Fruits are a diverse group of edible plant products that are typically sweet or sometimes sour in taste. They are known for their vibrant colors, various flavors, and nutritional benefits. Fruits are an essential part of a balanced diet and provide a wide range of vitamins, minerals, fiber, and antioxidants.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about fruits:</p>\r\n\r\n<p style=\"text-align:justify\">1. Types and Varieties: Fruits come in numerous types and varieties, each with its own unique characteristics. Common fruits include apples, bananas, oranges, strawberries, grapes, watermelons, pineapples, mangoes, peaches, pears, and many more. Fruits can be categorized into different groups, such as citrus fruits, berries, tropical fruits, stone fruits, and pome fruits.</p>\r\n', '<p style=\"text-align:justify\">2. Nutritional Value: Fruits are nutrient-dense and offer a wealth of health benefits. They are rich in essential vitamins, including vitamin C, vitamin A, and folate. Fruits also provide minerals like potassium, magnesium, and calcium. Additionally, fruits ar</p>\r\n\r\n<p style=\"text-align:justify\">e a good source of dietary fiber, which aids in digestion and promotes satiety. Different fruits have varying nutrient profiles, so it&#39;s beneficial to consume a variety of fruits to obtain a broad spectrum of nutrients.</p>\r\n\r\n<p style=\"text-align:justify\">3. Health Benefits: Regular consumption of fruits is associated with numerous health benefits. Their high content of vitamins, minerals, and antioxidants supports overall well-being and helps maintain a healthy immune system. Fruits are also rich in dietary fiber, which promotes healthy digestion, regulates blood sugar levels, and may lower the risk of certain chronic diseases, such as heart disease and type 2 diabetes.</p>\r\n\r\n<p style=\"text-align:justify\">4. Culinary Uses: Fruits are incredibly versatile and can be enjoyed in various ways. They can be eaten fresh as a snack, added to smoothies, blended into juices, or used as toppings for breakfast cereals, yogurt, or desserts. Fruits are also commonly used in baking, making jams and jellies, and creating flavorful sauces and salsas.</p>\r\n\r\n<p style=\"text-align:justify\">5. Selecting and Storing: When selecting fruits, consider their ripeness, color, and texture. Look for fruits that are firm, with vibrant colors and a pleasant aroma. Avoid fruits that are bruised, damaged, or overly soft. The storage requirements vary depending on the fruit. Some fruits, like berries and grapes, are best stored in the refrigerator, while others, like bananas and apples, can be kept at room temperature.</p>\r\n\r\n<p style=\"text-align:justify\">6. Seasonality: Fruits have different seasons of peak freshness and availability throughout the year. Some fruits are available year-round, while others have specific harvest times. Choosing fruits that are in season ensures optimal flavor and quality. Additionally, buying local and seasonal fruits often supports local farmers and reduces the environmental impact associated with long-distance transportation.</p>\r\n\r\n<p style=\"text-align:justify\">Incorporating a variety of fruits into your diet provides a delicious way to enhance your nutrition and overall well-being. Whether enjoyed on their own or used in culinary creations, fruits offer a natural and refreshing source of essential nutrients and contribute to a healthy lifestyle.</p>\r\n', NULL, '', 'img-fruits.jpg', 'home-img-fruits.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 561, '', '', '', 0, 1, 0, '2023-05-14 18:23:59', '2023-05-14 18:37:06', ' Fruits', ' Fruits Manufacturers', ' Fruits Exporters', ' Fruits Suppliers', ' Fruits Exporters ', ' Fruits Exporters', ' Fruits Manufacturers', ' Fruits Manufacturers', ' Fruits Suppliers', ' Fruits Suppliers', ' Fruits in city', ' Fruits in city', ' Fruits'),
(18, 1, 1, NULL, NULL, 'Vegetables', NULL, 'vegetables', '', NULL, '', '<p style=\"text-align:justify\">Vegetables are edible plants that are typically consumed for their nutritional value and savory flavors. They are an essential part of a healthy diet and provide a wide range of vitamins, minerals, fiber, and other beneficial compounds. Vegetables come in various shapes, sizes, and colors, and they can be enjoyed in numerous culinary preparations.</p>\r\n\r\n<p style=\"text-align:justify\">Here are some key points about vegetables:</p>\r\n\r\n<p style=\"text-align:justify\">1. Types and Varieties: Vegetables encompass a wide range of plant-based foods. Common types of vegetables include leafy greens (such as spinach, kale, and lettuce), cruciferous vegetables (such as broccoli, cauliflower, and cabbage), root vegetables (such as carrots, potatoes, and beets), nightshade vegetables (such as tomatoes, peppers, and eggplants), and many others like peas, corn, onions, and mushrooms. Each vegetable has its own unique nutritional profile and flavor.</p>\r\n', '<p style=\"text-align:justify\">2. Nutritional Value: Vegetables are packed with essential nutrients that are vital for good health. They are excellent sources of vitamins, including vitamin C, vitamin A, vitamin K, and several B vitamins. Vegetables also provide minerals like potassium, magnesium, and folate. Additionally, they are low in calories and rich in dietary fiber, which aids in digestion and promotes satiety.</p>\r\n\r\n<p style=\"text-align:justify\">3. Health Benefits: Regular consumption of vegetables is associated with numerous health benefits. Their nutrient density and high fiber content support overall well-being and help maintain a healthy weight. Vegetables are rich in antioxidants, which help protect against cellular damage and reduce the risk of chronic diseases, including heart disease, certain types of cancer, and age-related macular degeneration. Different vegetables offer specific health benefits due to their unique nutrient profiles.</p>\r\n\r\n<p style=\"text-align:justify\">4. Culinary Uses: Vegetables can be enjoyed in various ways, both cooked and raw. They can be steamed, boiled, roasted, grilled, stir-fried, or eaten raw in salads and as snacks. Vegetables can be used as main ingredients in dishes or as flavorful additions to soups, stews, stir-fries, pasta, and casseroles. They can also be blended into smoothies or juiced to create refreshing beverages.</p>\r\n\r\n<p style=\"text-align:justify\">5. Selecting and Storing: When selecting vegetables, look for ones that are fresh, firm, and free from blemishes or signs of decay. The color and texture should be vibrant and appealing. Different vegetables have specific storage requirements. Leafy greens, for example, are best stored in the refrigerator, while root vegetables can be kept in a cool, dark place. It&#39;s advisable to consume vegetables as soon as possible to retain their freshness and nutritional value.</p>\r\n\r\n<p style=\"text-align:justify\">6. Seasonality: Vegetables have different seasons of peak freshness and availability. Eating vegetables that are in season often means they are at their best quality, flavor, and nutritional content. Additionally, buying local and seasonal vegetables supports local farmers and reduces the environmental impact associated with long-distance transportation.</p>\r\n\r\n<p style=\"text-align:justify\">Incorporating a variety of vegetables into your diet is crucial for overall health and well-being. Their nutritional richness and versatility make them an essential component of balanced meals. By exploring different vegetables and culinary techniques, you can enjoy their flavors and harness their numerous health benefits.</p>\r\n', NULL, '', 'img-vegetables.jpg', 'home-img-vegetables.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 665, '', '', '', 0, 1, 0, '2023-05-14 18:24:15', '2023-05-14 18:38:23', 'Vegetables', 'Vegetables Manufacturers', 'Vegetables Exporters', 'Vegetables Suppliers', 'Vegetables Exporters ', 'Vegetables Exporters', 'Vegetables Manufacturers', 'Vegetables Manufacturers', 'Vegetables Suppliers', 'Vegetables Suppliers', 'Vegetables in city', 'Vegetables in city', 'Vegetables');

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
(1, 'Swojas Exports', 'swojas-exports-logo.png', 'swojasexports@yahoo.In', '', 'Plot No 9, Kranti Nagar , Nampur Road, Satana, Maharashtra, India', '', '', '+91-9890481729', '', '', '', '', NULL, '', '', '', 'The quality approved assortment of vegetables that we offer has helped us set up a large customer base in different areas including food businesses. our company is offering Fresh Vegetables and Fresh Fruits in the market. fresh fruits exporters from India like Pomegranate, Grapes, Mangoes,  Onions, Green Chilies, Lemons, and Green and organic fresh vegetables exporters from India.', '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2023-05-14 18:16:39');

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
(1, 0, 0, 'Home About', '', 'home-about', '', '<p style=\"text-align:justify\">All our Fresh Vegetables and Fresh Fruits are developed in clean conditions and are handpicked. They are naturally developed without the utilization of any destructive pesticides and synthetic concoctions. These Fresh Vegetables and Fresh Fruits are pressed in a quality bundling material so they remain crisp for an extensive period. What&rsquo;s more Fresh Vegetables and Fresh Fruits are accessible in modified bundling and at moderate rates. Our wide assortment of Fresh Vegetables and Fresh Fruits is developed in controlled conditions by utilizing cutting-edge innovation and innocuous composts. Moreover, our Fresh Vegetables and Fresh Fruits can be benefited from the market driving costs by the customers.</p>\r\n\r\n<p style=\"text-align:justify\">We offer an extraordinary incentive with our items and administrations. Presenting imaginative thoughts in sourcing and trading, we have figured out how to improve speed, productivity, and on-time conveyance. Every one of our tasks is bolstered by a skilled, dedicated human asset. With a solid accentuation on consumer loyalty, we have been putting world-class items at the most focused costs. We are reliably moving in the direction of engaging our representatives with brilliant abilities and presenting them with the most recent innovation.</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-24 09:25:33', '2023-05-14 15:50:19'),
(2, 0, 0, 'Company Profile', '', 'company-profile', 'company-profile.jpeg', '<p style=\"text-align:justify\">Swojas Exports is one of India&#39;s Leading Fresh Vegetables and Fruits Exporters. We are the main Exporter of the Fresh Vegetables and Fresh Fruits. We significantly bargain in Vegetables like, Fresh Drumstick, Fresh Lemon, Fresh Red Onion and so on. Swojas Exports is a fresh fruits supplier from India also importing &amp; exporting (India), seizing the opportunity, began our business journey in the aquaculture business line as an exporter and wholesaler of fresh fruits and vegetable exporters from India. The quality approved assortment of vegetables that we offer has helped us set up a large customer base in different areas including food businesses. our company is offering Fresh Vegetables and Fresh Fruits in the market. fresh fruits exporters from India like Pomegranate, Grapes, Mangoes, &nbsp;Onions, Green Chilies, Lemons, and Green and organic fresh vegetables exporters from India.</p>\r\n\r\n<p style=\"text-align:justify\">All our Fresh Vegetables and Fresh Fruits are developed in clean conditions and are handpicked. They are naturally developed without the utilization of any destructive pesticides and synthetic concoctions. These Fresh Vegetables and Fresh Fruits are pressed in a quality bundling material so they remain crisp for an extensive period. What&rsquo;s more Fresh Vegetables and Fresh Fruits are accessible in modified bundling and at moderate rates. Our wide assortment of Fresh Vegetables and Fresh Fruits is developed in controlled conditions by utilizing cutting-edge innovation and innocuous composts. Moreover, our Fresh Vegetables and Fresh Fruits can be benefited from the market driving costs by the customers.</p>\r\n\r\n<p style=\"text-align:justify\">We offer an extraordinary incentive with our items and administrations. Presenting imaginative thoughts in sourcing and trading, we have figured out how to improve speed, productivity, and on-time conveyance. Every one of our tasks is bolstered by a skilled, dedicated human asset. With a solid accentuation on consumer loyalty, we have been putting world-class items at the most focused costs. We are reliably moving in the direction of engaging our representatives with brilliant abilities and presenting them with the most recent innovation.<br />\r\n&nbsp;</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-06-24 09:27:19', '2023-05-14 15:52:51'),
(3, 0, 0, 'Contact Us', '', 'contact-us', '', '', '', '', '', '', NULL, 0, 0, '2019-06-24 09:32:32', '2023-05-14 15:53:10'),
(4, 0, 0, 'Our Presence', '', 'our-presence', '', '', '', 'Our Presence', 'Our Presence', 'Our Presence', NULL, 0, 0, '2019-06-24 09:34:06', '2019-10-09 11:55:13'),
(5, 0, 0, 'Catalog', '', 'catalog', '', '<p style=\"text-align:justify\">Shivam Exports is the name that should be on your speed dial to buy beautiful furniture range. Today, we have our name renowned among the <strong><a href=\"https://www.shivamexports.com/location_slug/furniture.html\" title=\"best Furniture Manufacturers in countryname\">best Furniture Manufacturers in countryname</a></strong>. We have antique furniture items and wooden handicrafts made at our in-house facility to add life to your home or office interior. We offer classy pieces that personify your taste and fit your budget.<br />\r\nOver the years, we have come a long way and become a reliable source from where you can buy Wooden Handicraft Items, <strong>Wooden Antique Cabinet and Wood Table in countryname</strong>. These are precisely designed by our experts by using the right material and method, which increase their look and feel. Moreover, our quality auditors check their quality, so clients will get no chance to complain.<br />\r\nBeing one of the <strong>leading Book Shelf Exporters and Suppliers in countryname</strong>, we also promise that the item will reach your doorstep without any delays. Send us your enquiry or dial our number to get our support now.</p>\r\n', '', 'Furniture Manufacturers In countryname, Wooden Handicraft Items Suppliers', 'Furniture Manufacturers In countryname, Wooden Handicraft Items Suppliers In countryname, Wooden Antique Cabinet Exporters, Wood Table In countryname, Book Shelf In countryname', 'Furniture Manufacturers in countryname. Shivam Exports is noted Wooden Handicraft Items suppliers in countryname, exporters offer Antique Cabinet, Table, Book Shelf', NULL, 0, 0, '2019-06-24 09:36:10', '2019-12-27 12:25:01'),
(6, 0, 0, 'Exporters Category', '', 'exporters-category', '', '', '', 'Exporters Category', 'Exporters Category', 'Exporters Category', NULL, 0, 0, '2019-10-09 10:42:43', '2019-10-25 16:40:13'),
(7, 0, 0, 'Sitemap', '', 'sitemap', '', '', '', 'Sitemap', 'Sitemap', 'Sitemap', NULL, 0, 0, '2019-10-25 16:35:50', '2023-05-14 15:53:19'),
(8, 0, 0, 'Manufacturers Category', '', 'manufacturers-category', '', '', '', 'Manufacturers Category', 'Manufacturers Category', 'Manufacturers Category', NULL, 0, 0, '2019-10-25 16:40:40', '2019-10-25 16:40:49'),
(9, 0, 0, 'Suppliers Category', '', 'suppliers-category', '', '', '', 'Suppliers Category', 'Suppliers Category', 'Suppliers Category', NULL, 0, 0, '2019-10-25 16:41:37', '2019-10-25 16:41:49');

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
(1, 'Facebook', 'https://www.facebook.com', NULL, 'fa fa-facebook', '', '', NULL, 0, 0, 1, '2019-10-25 14:43:41', '2019-11-05 15:16:29'),
(2, 'Instagram', 'https://www.instagram.com', NULL, 'fa fa-instagram', 'fa fa-instagram', '', NULL, 0, 0, 1, '2019-11-05 15:17:24', '2019-11-05 15:18:06');

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
(1, 0, 'Sara', 'sara', '', NULL, NULL, NULL, NULL, NULL, '', 'img-1571984094.jpg', 'Best place for antique furniture. Special thanks to their team for understanding our demands and delivering us exceptional solutions, we were expecting.', 'Best place for antique furniture. Special thanks to their team for understanding our demands and delivering us exceptional solutions, we were expecting.', NULL, NULL, NULL, 1, '2019-10-25 11:44:54', '2019-10-25 11:44:56'),
(2, 0, 'Janvi', 'janvi', '', NULL, NULL, NULL, NULL, NULL, '', 'img-1571984113.jpg', 'Great products, best quality and pocket-friendly prices. We had the best we have ever imagined. Would recommend their name to all.', 'Great products, best quality and pocket-friendly prices. We had the best we have ever imagined. Would recommend their name to all.', NULL, NULL, NULL, 1, '2019-10-25 11:45:13', '2019-10-25 11:45:15'),
(3, 0, 'Sanjana', 'sanjana', '', NULL, NULL, NULL, NULL, NULL, '', 'img-1571984135.jpg', 'They have truly impressive collections and a very professional team. Highly recommended to all who are looking for beautiful furniture for their hotels or homes.', 'They have truly impressive collections and a very professional team. Highly recommended to all who are looking for beautiful furniture for their hotels or homes.', NULL, NULL, NULL, 1, '2019-10-25 11:45:35', '2019-10-25 11:48:48');

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
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 'admin', 'e4b93d46b915b203d091339f83a1364196d4258f', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2023-05-14 21:07:59');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `homepagemenus`
--
ALTER TABLE `homepagemenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitepages`
--
ALTER TABLE `sitepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `socialicons`
--
ALTER TABLE `socialicons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
