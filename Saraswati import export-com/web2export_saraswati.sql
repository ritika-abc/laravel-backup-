-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 06:01 AM
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
-- Database: `web2export_saraswati`
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
(1, NULL, '', NULL, '', 'images/banners/banner1.jpg', NULL, NULL, '', 0, NULL, NULL, NULL, 0, '2019-10-11 12:11:15', '2019-10-24 12:32:05');

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
(1, 0, 0, 0, 0, NULL, 'Keyword in city', NULL, 'keyword-in-city', NULL, '<p>Being one of the trusted <strong>catname Wholesaler, Dealer and Suppliers in countryname</strong>, we are right here to serve bulk orders, as per the need of your residential or commercial projects. We are a call away to assist, as best as we can.</p>\r\n', '<p><strong>Krishna Marble Traders</strong> have started this journey to serve an extensive range of marble and granite slabs nationwide. With our efforts and aim in mind, we have secured positions among the top-notch <strong>manufacturers of catname in countryname</strong>. Our products are highly stable and come with a fine finish to give expected results to the customers.</p>\r\n\r\n<p>As one of the leading <strong>catname Manufacturers in countryname</strong>, we pay personalized attention to every unit, to meet the diverse demands of the customers. Our range is wide and has home and business uses. We are a quality-oriented company and use only high-grade material and modern machinery for cutting these marbles in the right shape and size.</p>\r\n', NULL, 'catname In countryname, catname Manufacturers Suppliers countryname', 'Get catname in countryname. A notable catname Manufacturers in countryname and catname Suppliers in countryname, Wholesaler Dealer - Krishna Marble Traders', 'catname In countryname, catname Manufacturers In countryname, catname Suppliers In countryname, Top catname Wholesaler In countryname, Best catname Dealer In countryname', 1, '2019-10-11 10:21:22', '2019-11-07 14:36:48'),
(2, 0, 0, 0, 0, NULL, 'Manufacturers Category', NULL, 'manufacturers-category', NULL, '<p>Being a trusted <strong>catname Manufacturer in India</strong>, we believe in attaining client satisfaction and work dedicatedly to attain the same only. For more information, speak freely with our experts. We&rsquo;d be glad to assist you.</p>\r\n', '<p>Back in <strong>1994</strong>, <strong>Krishna Marble Traders </strong>have begun this journey and become one of the trusted <strong>catname Manufacturers</strong> in Kishangarh, Rajasthan. We are well-aware of day-by-day rising demand for marble slabs to beautify the interior, therefore, engaged in serving the same only. We use modern machinery to give these slabs right design and dimension, as per the industry standards.<br />\r\n&nbsp;</p>\r\n\r\n<p>Being a leading <strong>manufacturer of catname</strong>, we are engaged in offering Marble and <a href=\"http://www.krishnamarbletraders.com/granite-slab-suppliers.html\" target=\"_blank\" title=\"Granite Slab\"><span style=\"color:#e74c3c\">Granite Slab</span></a> in residential as well as commercial areas for decoration and construction purposes. We have a highly talented and trained team to handle the work and design these slabs in different designs, patterns, sizes and other customizations, asked by customers.</p>\r\n', NULL, 'catname Manufacturers In Kishangarh Rajasthan India', 'Notable catname Manufacturers in Kishangarh India. Krishna Marble Traders a famed catname manufacturer in Rajasthan, offer products at best price', 'catname Manufacturers In Kishangarh, catname Manufacturer In India, Best Manufacturers Of catname in Rajasthan, Top catname Manufacturer', 1, '2019-10-11 10:25:05', '2019-11-07 14:28:48'),
(3, 0, 0, 0, 0, NULL, 'Suppliers Category', NULL, 'suppliers-category', NULL, '<p>Noted as a prominent <strong>catname Supplier</strong> in India, we also provide timely delivery and around-the-clock support. If you need our assistance to make the right choice, get in touch right away.</p>\r\n', '<p><strong>Krishna Marble Traders</strong> is one of the most determined <strong>catname Suppliers</strong> in Kishangarh, Rajasthan that you can have your 100% faith on for buying <a href=\"http://www.krishnamarbletraders.com/white-marble-slab-suppliers.html\" target=\"_blank\" title=\"marble slabs\"><span style=\"color:#e74c3c\">marble slabs</span></a> for construction and decoration purpose of your homes or offices. These are made as per the defined industry standards and are perfect for interiors.<br />\r\n&nbsp;</p>\r\n\r\n<p>Being a leading <strong>supplier of catname</strong>, we take customer demands seriously and offer our complete range accordingly. With years of experience in the industry, we understand clients and here to fulfil their requirements, as best as we can. Different designs, sizes, colours, patterns and dimensions or marble slabs available to suit customer demands.</p>\r\n', NULL, 'catname Suppliers In Kishangarh Delhi Kanpur Mumbai India', 'catname Suppliers in Kishangarh, India. Krishna Marble Traders, renowned catname Supplier in Rajasthan Delhi Kanpur Mumbai Chennai Pune Hyderabad Bikaner Jodhpur', 'catname Suppliers In Kishangarh, catname Supplier In India, Best catname Supplier In Rajasthan, catname Supplying Company In Delhi, Supplier Of catname In Kanpur, Suppliers Of catname In Mumbai', 1, '2019-10-11 10:26:18', '2019-11-07 14:27:33'),
(4, 0, 0, 0, 0, NULL, 'Wholesaler', NULL, 'wholesaler', NULL, '<p>Being the best <strong>Wholesale </strong><strong>catname Supplier </strong>in India, we provide paramount support and timely delivery to our customers. To place your order, dial our number or drop our enquiry directly from the website.</p>\r\n', '<p><strong>Krishna Marble Traders</strong> is not just a company but the one you can have your faith on for buying different types of marble slabs for your residential as well as commercial sectors. With rich industry experience in hands, we have come a long way and become a trusted <strong>catname Wholesaler</strong> in Kishangarh, Rajasthan.<br />\r\n&nbsp;</p>\r\n\r\n<p>We offer different designs, patterns, sizes, and dimensions of Marble Slabs and <a href=\"http://www.krishnamarbletraders.com/white-marble-tiles-wholesaler.html\" target=\"_blank\" title=\"White Marble Tiles\"><span style=\"color:#e74c3c\">White Marble Tiles</span></a> confidently because every unit gets carefully crafted at our in-house facility. We understand their need for decoration purposes and serve our range accordingly. With our products and industry experience, we try our best to attain 100% client satisfaction.</p>\r\n', NULL, 'catname Wholesaler In Kishangarh Ludiana Kolkata Nagpur India', 'catname Wholesaler in Kishangarh Rajasthan India. Krishna Marble Traders Is leading Wholesale catname supplier In Ludhiana Kerala Patna Indore Lucknow Gurgaon', 'catname Wholesaler In India, catname In Kishangarh, Best catname Wholesaler In Rajasthan, Trader Of catname In Ludhiana, Top Wholesaler Of catname In Kerala, Top catname Wholesaler Patna', 1, '2019-10-11 10:27:39', '2019-11-07 14:31:44'),
(5, 0, 0, 0, 0, NULL, 'Dealer', NULL, 'dealer', NULL, '<p>We are a prominent <strong>catname Dealer</strong> in India. To discuss all your demands, dial our number right away. Our customer spokespersons are highly experienced and would be glad to assist, as best as they can.</p>\r\n', '<p>Looking for a trusted <strong>catname Dealer</strong> in Kishangarh, Rajasthan? <strong>Krishna Marble Traders </strong>is the name to have your faith in. We have been in the industry since 1994 and become the name that has an extensive range of marble slabs for residential or commercial both the sectors. Our offered slabs are as per the defined industry standards to meet your customized requirements to the best.<br />\r\n&nbsp;</p>\r\n\r\n<p>We are here in the domain to cater to the customized requirements of different customers. So, if you are looking for customized <a href=\"http://www.krishnamarbletraders.com/katni-marble-slab-dealer.html\" target=\"_blank\" title=\"Katni Marble Slabs\"><span style=\"color:#e74c3c\">Katni Marble Slabs</span></a> for your home, hotel or commercial offices, we are the one you can contact. We can meet bulk orders of yours in the limited time possible without letting you down.</p>\r\n', NULL, 'catname Dealer In Kishangarh Rajasthan Delhi Mumbai India', 'catname Dealer in Kishangarh Rajasthan, India. Krishna Marble Traders Is leading catname Dealer Delhi Mumbai Gurgaon Allahabad Karnataka Bikaner', 'catname Dealer In India, catname Dealer In Kishangarh, Best catname Dealer In Rajasthan, Dealer Of catname In Delhi, Top Dealer Of catname In Mumbai, Top catname Dealer Gurgaon', 1, '2019-10-11 10:30:53', '2019-11-07 14:33:12');

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
(1, 0, 'testing', NULL, 'Enquiry For Contact Us', 'testing@gmail.com', NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delhi', 'hiiiiiiiiiii', NULL, NULL, NULL, '103.46.200.61', 'http://www.krishnamarbletraders.com/white-marble-slab-manufacturers.html', 'ajax', '2019-10-15 09:43:00', '2019-10-15 09:43:00'),
(2, 0, 'testing', NULL, 'Enquiry For Contact Us', 'testing@gmail.com', NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testing', 'testing', NULL, NULL, NULL, '160.202.36.44', 'http://www.krishnamarbletraders.com/white-marble-slab.html', 'ajax', '2019-11-09 14:51:40', '2019-11-09 14:51:40'),
(3, 0, 'Rais', NULL, 'Enquiry For Contact Us', 'raissheikh@gmail.com', NULL, '9079099135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kishangarh', '2000 sq. Feet', NULL, NULL, NULL, '157.47.149.244', 'http://www.krishnamarbletraders.com/katni-marble-slab.html', 'ajax', '2019-12-04 13:53:40', '2019-12-04 13:53:40'),
(4, 0, 'Rahul', NULL, 'Enquiry For Contact Us', 'krishnaquit@yahoo.com', NULL, '9252053460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fai sagar ajmer', '3000 sq. Feet white marble', NULL, NULL, NULL, '171.79.152.146', 'http://www.krishnamarbletraders.com/white-marble-slab.html', 'ajax', '2019-12-04 14:37:41', '2019-12-04 14:37:41'),
(5, 0, 'Rahul', NULL, 'Enquiry For Contact Us', 'krishnaquit@yahoo.com', NULL, '9252053460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fai sagar Ajmer', '3000 sq. Feet', NULL, NULL, NULL, '171.79.152.146', 'http://www.krishnamarbletraders.com/white-marble-slab.html', 'ajax', '2019-12-04 14:39:11', '2019-12-04 14:39:11'),
(6, 0, 'Test', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '12yebhhdbdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', 'Test', NULL, NULL, NULL, '106.210.41.229', 'http://www.krishnamarbletraders.com/contact-us.html', 'ajax', '2019-12-13 17:36:26', '2019-12-13 17:36:26'),
(7, 0, 'Test', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1234577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', 'Test', NULL, NULL, NULL, '106.210.41.229', 'http://www.krishnamarbletraders.com/contact-us.html', 'ajax', '2019-12-13 17:36:39', '2019-12-13 17:36:39'),
(8, 0, 'Test', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1234577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test', 'Test', NULL, NULL, NULL, '106.210.41.229', 'http://www.krishnamarbletraders.com/contact-us.html', 'ajax', '2019-12-13 17:36:41', '2019-12-13 17:36:41'),
(9, 0, 'Testinh', NULL, 'Enquiry For Contact Us', 'testing@gmail.com', NULL, '9876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Moti nagar', 'Testing', NULL, NULL, NULL, '106.210.41.229', 'http://www.krishnamarbletraders.com/contact-us.html', 'ajax', '2019-12-13 17:37:28', '2019-12-13 17:37:28'),
(10, 0, 'Deepak Sharma', NULL, 'Enquiry For Contact Us', 'kbsharma20@gmail.com', NULL, '+918005545785', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Makarana Road,, Near Ramgopal Marble', '2000 sq. Feet', NULL, NULL, NULL, '171.79.150.62', 'http://www.krishnamarbletraders.com/white-marble-slab.html', 'ajax', '2020-01-03 13:16:46', '2020-01-03 13:16:46'),
(11, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '77648643346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uttam Nagar', 'test message', NULL, NULL, NULL, '124.123.248.32', 'http://www.krishnamarbletraders.com/contact-us.html', 'ajax', '2020-01-11 14:54:56', '2020-01-11 14:54:56'),
(12, 0, 'Ritesh Verma', NULL, 'Enquiry For Contact Us', 'ritesh.webclickindia@gmail.com', NULL, '956234122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Uttam Nagar', 'test message', NULL, NULL, NULL, '124.123.248.32', 'http://www.krishnamarbletraders.com/white-marble-slab.html', 'ajax', '2020-01-11 14:56:40', '2020-01-11 14:56:40'),
(13, 0, 'Vamsi Nagari', NULL, 'Enquiry For Contact Us', 'krish2479@gmail.com', NULL, '07867485976', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'I need the Marble tiles and slabs around 25 numbers', NULL, NULL, NULL, '90.220.179.238', 'http://www.krishnamarbletraders.com/imported-marble-slab-in-jodhpur.html', 'ajax', '2020-01-23 19:23:37', '2020-01-23 19:23:37'),
(14, 0, 'Krishna', NULL, 'Enquiry For Contact Us', 'krishnapoorvi7@gmail.com', NULL, '8660453585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sira giddanahally', '800 sq feet this prise', NULL, NULL, NULL, '157.45.200.113', 'http://www.krishnamarbletraders.com/white-marble-tiles-in-andhra-pradesh.html', 'ajax', '2020-02-11 22:11:24', '2020-02-11 22:11:24'),
(15, 0, 'Krishna', NULL, 'Enquiry For Contact Us', 'krishnapoorvi7@gmail.com', NULL, '8660453585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sira giddanahally', '800 sq feet this prise', NULL, NULL, NULL, '157.45.200.113', 'http://www.krishnamarbletraders.com/white-marble-tiles-in-andhra-pradesh.html', 'ajax', '2020-02-11 22:11:25', '2020-02-11 22:11:25'),
(16, 0, 'sovanlal mukherjee', NULL, 'Enquiry For Contact Us', 'sovanlalmukherjee1988@gmail.com', NULL, '7980609728', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hooghly, west bengal', 'know about green marble price', NULL, NULL, NULL, '103.193.90.205', 'http://www.krishnamarbletraders.com/green-marble-slab-in-kolkata.html', 'ajax', '2020-03-05 11:45:53', '2020-03-05 11:45:53'),
(17, 0, 'Sanjay jaiswal', NULL, 'Enquiry For Contact Us', 'sanjayjaiswal36@gmail.com', NULL, '9897495290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '250 lakhi Bagh dehradun', 'I want 2*2 and 2*4 and 1*1 marble pice with lower price about 5000 sq feet', NULL, NULL, NULL, '106.223.187.215', 'http://www.krishnamarbletraders.com/white-marble-tiles-dealer.html', 'ajax', '2020-03-06 09:29:00', '2020-03-06 09:29:00'),
(18, 0, 'Tapanwita Saha', NULL, 'Enquiry For Contact Us', 'tushisaha@yahoo.co.in', NULL, '8981095764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolkata', 'Need pink marble slab for 25 sq.ft. area...or so', NULL, NULL, NULL, '42.110.145.182', 'http://www.krishnamarbletraders.com/pink-marble-slab-in-kolkata.html', 'ajax', '2020-06-26 23:52:53', '2020-06-26 23:52:53');

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

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `name`, `slug`, `description`, `image1`, `image2`, `image3`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `created`, `modified`) VALUES
(6, 2, 'Granite Slab 1', NULL, 'Granite Slab', 'img1-2granite-slab-1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:40:51', '2019-11-08 11:52:16'),
(7, 2, 'Granite Slab 2', NULL, 'Granite Slab Manufacturers', 'img1-2granite-slab-2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:41:16', '2019-11-08 11:52:35'),
(8, 2, 'Granite Slab 3', NULL, 'Granite Slab Suppliers', 'img1-2granite-slab-3.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:42:09', '2019-11-08 11:52:48'),
(9, 2, 'Granite Slab 4', NULL, 'Granite Slab In Kishangarh', 'img1-2granite-slab-4.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:42:49', '2019-11-08 11:57:39'),
(10, 2, 'Granite Slab 5', NULL, 'Granite Slab In India', 'img1-2granite-slab-5.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:43:23', '2019-11-08 11:53:34'),
(11, 6, 'White Marble Tiles 1', NULL, 'White Marble Tiles Manufacturers', 'img1-6white-marble-tiles-1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:50:58', '2019-11-08 11:54:09'),
(12, 6, 'White Marble Tiles 2', NULL, 'White Marble Tiles In India', 'img1-6white-marble-tiles-2.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:51:08', '2019-11-08 11:54:52'),
(13, 6, 'White Marble Tiles 3', NULL, 'White Marble Tiles In Kishangarh', 'img1-6white-marble-tiles-3.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:51:27', '2019-11-08 11:56:00'),
(14, 7, 'Imported Marble Slab 1', NULL, 'Imported Marble Slab Suppliers', 'img1-7imported-marble-slab-1.jpg', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2019-10-14 16:53:46', '2019-11-08 11:56:24');

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

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `name`, `link_title`, `slug`, `textoption`, `image`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_desc`, `remark`, `views`, `active`, `created`, `modified`) VALUES
(1, 'Why Choose Us For Saraswati Bio Trading ?', '', NULL, 1, '', NULL, '<p>We provide you the consultancy for getting ayurvedic drug manufacturing, sales and distribution licence, research and development of ayurvedic drugs, ayurvedic drug clinical studies and its international research paper publication.</p>\r\n', NULL, NULL, NULL, NULL, 0, 0, '2019-10-11 13:13:23', '2023-06-06 15:10:54'),
(2, 'State-Of-The-Art Infrastructure', '', NULL, 1, 'img-state-of-the-art-infrastructure.png', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2019-10-11 13:13:52', '2023-05-03 11:36:59'),
(3, 'Competitive Product Prices', '', NULL, 1, 'img-competitive-product-prices.png', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2019-10-11 13:15:24', '2023-05-03 11:37:05'),
(4, 'Experienced Professionals', '', NULL, 1, 'img-experienced-professionals.png', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2019-10-11 13:16:26', '2023-05-03 11:37:10'),
(5, 'Unbeatable Quality ', '', NULL, 1, 'img-unbeatable-quality.png', NULL, '', NULL, NULL, NULL, NULL, 0, 0, '2019-10-11 13:17:59', '2023-05-03 11:37:16');

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
(1, 0, 0, 'Market Place', NULL, 'market-place', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:17:06', '2019-10-12 13:17:18'),
(2, 1, 0, 'Rajasthan', NULL, 'rajasthan', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:17:28', '2019-10-12 13:17:31'),
(3, 1, 0, 'Ajmer', NULL, 'ajmer', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:18:43', '2019-10-12 13:18:49'),
(4, 1, 0, 'Alwar', NULL, 'alwar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:23:40', '2019-10-12 13:23:40'),
(5, 1, 0, 'Bhilwara', NULL, 'bhilwara', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:24:06', '2019-10-12 13:24:06'),
(6, 1, 0, 'Bikaner', NULL, 'bikaner', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:24:25', '2019-10-12 13:24:25'),
(7, 1, 0, 'Bundi', NULL, 'bundi', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:26:18', '2019-10-12 13:26:18'),
(8, 1, 0, 'Churu', NULL, 'churu', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:26:33', '2019-10-12 13:26:33'),
(9, 1, 0, 'Sri Ganganagar', NULL, 'sri-ganganagar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:28:06', '2019-10-12 13:28:06'),
(10, 1, 0, 'Jhunjhunu', NULL, 'jhunjhunu', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:29:18', '2019-10-12 13:29:18'),
(11, 1, 0, 'Nagore', NULL, 'nagore', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 13:29:46', '2019-10-12 13:29:46'),
(12, 1, 0, 'Sikar', NULL, 'sikar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:02:28', '2019-10-12 14:02:49'),
(13, 1, 0, 'Tonk', NULL, 'tonk', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:03:06', '2019-10-12 14:03:06'),
(14, 1, 0, 'Sawai Madhopur', NULL, 'sawai-madhopur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:03:32', '2019-10-12 14:03:32'),
(15, 1, 0, 'Beawar', NULL, 'beawar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:09:02', '2019-10-12 14:09:02'),
(16, 1, 0, 'Jodhpur', NULL, 'jodhpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:10:35', '2019-10-12 14:10:35'),
(17, 1, 0, 'Jaisalmer', NULL, 'jaisalmer', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:11:55', '2019-10-12 14:11:55'),
(18, 1, 0, 'Delhi', NULL, 'delhi', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:12:19', '2019-10-12 14:12:19'),
(19, 1, 0, 'Noida', NULL, 'noida', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:12:42', '2019-10-12 14:12:42'),
(20, 1, 0, 'Gurgaon', NULL, 'gurgaon', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:13:21', '2019-10-12 14:14:07'),
(21, 1, 0, 'Moradabad', NULL, 'moradabad', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:55:33', '2019-10-12 14:55:33'),
(22, 1, 0, 'Meerut', NULL, 'meerut', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:56:02', '2019-10-12 14:56:02'),
(23, 1, 0, 'Uttar Pradesh', NULL, 'uttar-pradesh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:56:28', '2019-10-12 14:56:28'),
(24, 1, 0, 'Agra', NULL, 'agra', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:56:47', '2019-10-12 14:56:47'),
(25, 1, 0, 'Aligarh', NULL, 'aligarh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:57:11', '2019-10-12 14:57:11'),
(26, 1, 0, 'Allahabad', NULL, 'allahabad', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:57:38', '2019-10-12 14:57:38'),
(27, 1, 0, 'Gorakhpur', NULL, 'gorakhpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:58:19', '2019-10-12 14:58:19'),
(28, 1, 0, 'Kanpur', NULL, 'kanpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 14:59:16', '2019-10-12 14:59:16'),
(29, 1, 0, 'Lucknow', NULL, 'lucknow', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:01:35', '2019-10-12 15:01:35'),
(30, 1, 0, 'Mathura', NULL, 'mathura', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:02:10', '2019-10-12 15:02:10'),
(31, 1, 0, 'Ghaziabad', NULL, 'ghaziabad', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:02:38', '2019-10-12 15:02:38'),
(32, 1, 0, 'Muzaffarnagar', NULL, 'muzaffarnagar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:03:24', '2019-10-12 15:03:24'),
(33, 1, 0, 'Haridwar', NULL, 'haridwar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:08:51', '2019-10-12 15:08:51'),
(34, 1, 0, 'Haryana', NULL, 'haryana', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:15:09', '2019-10-12 15:15:09'),
(35, 1, 0, 'Sonipat', NULL, 'sonipat', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:15:23', '2019-10-12 15:15:23'),
(36, 1, 0, 'Rohtak', NULL, 'rohtak', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:15:44', '2019-10-12 15:15:44'),
(37, 1, 0, 'Jind', NULL, 'jind', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:16:09', '2019-10-12 15:16:09'),
(38, 1, 0, 'Bhiwadi', NULL, 'bhiwadi', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:17:06', '2019-10-12 15:17:06'),
(39, 1, 0, 'Hisar', NULL, 'hisar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:17:22', '2019-10-12 15:17:22'),
(40, 1, 0, 'Jhajjar', NULL, 'jhajjar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:18:15', '2019-10-12 15:18:15'),
(41, 1, 0, 'Ambala', NULL, 'ambala', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:18:44', '2019-10-12 15:18:44'),
(42, 1, 0, 'Panipat', NULL, 'panipat', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:19:30', '2019-10-12 15:19:30'),
(43, 1, 0, 'Rewari', NULL, 'rewari', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:20:05', '2019-10-12 15:20:05'),
(44, 1, 0, 'Punjab', NULL, 'punjab', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:23:50', '2019-10-12 15:23:50'),
(45, 1, 0, 'Ludhiana', NULL, 'ludhiana', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:26:04', '2019-10-12 15:26:04'),
(46, 1, 0, 'Amritsar', NULL, 'amritsar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:26:54', '2019-10-12 15:26:54'),
(47, 1, 0, 'West Bengal', NULL, 'west-bengal', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:27:21', '2019-10-12 15:27:21'),
(48, 1, 0, 'Kolkata', NULL, 'kolkata', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:27:45', '2019-10-12 15:27:45'),
(49, 1, 0, 'Madhya Pradesh', NULL, 'madhya-pradesh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:28:08', '2019-10-12 15:28:08'),
(50, 1, 0, 'Indore', NULL, 'indore', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:30:20', '2019-10-12 15:30:20'),
(51, 1, 0, 'Chhatarpur', NULL, 'chhatarpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:30:49', '2019-10-12 15:30:49'),
(52, 1, 0, 'Chhindwara', NULL, 'chhindwara', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:31:24', '2019-10-12 15:31:24'),
(53, 1, 0, 'Morena', NULL, 'morena', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:31:42', '2019-10-12 15:31:42'),
(54, 1, 0, 'Neemuch', NULL, 'neemuch', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:32:04', '2019-10-12 15:32:04'),
(55, 1, 0, 'Telangana', NULL, 'telangana', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:32:17', '2019-10-12 15:32:40'),
(56, 1, 0, 'Hyderabad', NULL, 'hyderabad', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:33:33', '2019-10-12 15:33:33'),
(57, 1, 0, 'Secunderabad', NULL, 'secunderabad', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:33:56', '2019-10-12 15:33:56'),
(58, 1, 0, 'Maharashtra', NULL, 'maharashtra', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:34:59', '2019-10-12 15:34:59'),
(59, 1, 0, 'Jalgaon', NULL, 'jalgaon', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:35:28', '2019-10-12 15:35:28'),
(60, 1, 0, 'Mumbai', NULL, 'mumbai', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:36:40', '2019-10-12 15:36:40'),
(61, 1, 0, 'Nagpur', NULL, 'nagpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:39:36', '2019-10-12 15:39:36'),
(62, 1, 0, 'Pune', NULL, 'pune', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:40:17', '2019-10-12 15:40:17'),
(63, 1, 0, 'Bihar', NULL, 'bihar', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:46:10', '2019-10-12 15:46:10'),
(64, 1, 0, 'Bhagalpur', NULL, 'bhagalpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:46:33', '2019-10-12 15:46:33'),
(65, 1, 0, 'Darbhanga', NULL, 'darbhanga', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:49:40', '2019-10-12 15:49:40'),
(66, 1, 0, 'Gaya', NULL, 'gaya', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:49:56', '2019-10-12 15:49:56'),
(67, 1, 0, 'Muzaffarpur', NULL, 'muzaffarpur', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:50:11', '2019-10-12 15:50:11'),
(68, 1, 0, 'Patna', NULL, 'patna', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:50:40', '2019-10-12 15:50:40'),
(69, 1, 0, 'Purnia', NULL, 'purnia', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:51:12', '2019-10-12 15:51:12'),
(70, 1, 0, 'Saharsa', NULL, 'saharsa', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:51:34', '2019-10-12 15:51:34'),
(71, 1, 0, 'Gujarat', NULL, 'gujarat', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:51:52', '2019-10-12 15:51:52'),
(72, 1, 0, 'Andhra Pradesh', NULL, 'andhra-pradesh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:52:29', '2019-10-12 15:52:29'),
(73, 1, 0, 'Goa', NULL, 'goa', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, '2019-10-12 15:53:37', '2019-10-12 15:53:37'),
(74, 1, 0, 'Himachal Pradesh', NULL, 'himachal-pradesh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:54:52', '2019-10-12 15:54:52'),
(75, 1, 0, 'Jammu and Kashmir', NULL, 'jammu-and-kashmir', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:55:21', '2019-10-12 15:55:21'),
(76, 1, 0, 'Karnataka', NULL, 'karnataka', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:56:40', '2019-10-12 15:56:40'),
(77, 1, 0, 'Kerala', NULL, 'kerala', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:57:07', '2019-10-12 15:57:07'),
(78, 1, 0, 'Odisha', NULL, 'odisha', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:58:43', '2019-10-12 15:58:43'),
(79, 1, 0, 'Tamil Nadu', NULL, 'tamil-nadu', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 15:59:38', '2019-10-12 15:59:38'),
(80, 1, 0, 'Chennai', NULL, 'chennai', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 16:00:21', '2019-10-12 16:00:21'),
(81, 1, 0, 'Tripura', NULL, 'tripura', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 16:01:23', '2019-10-12 16:01:23'),
(82, 1, 0, 'Agartala', NULL, 'agartala', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 16:02:37', '2019-10-12 16:03:57'),
(83, 1, 0, 'Uttarakhand', NULL, 'uttarakhand', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 16:03:14', '2019-10-12 16:03:14'),
(84, 1, 0, 'Dosa', NULL, 'dosa', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-10-12 17:07:04', '2019-10-12 17:07:04'),
(85, 1, 0, 'Kishangarh', NULL, 'kishangarh', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-11-20 12:15:59', '2019-11-20 12:15:59');

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
(1, 3, 0, NULL, NULL, 'Our Services', NULL, 'our-services', '', NULL, '', '<p>We provide You Consultancy on different AYUSH Licencing, Ayurvedic Drug Manufacturing Licence, Ayurvedic Drug Development, Cosmetics Development, Clinical Trials, Dermatological Tests, Publishing the Studies of your Ayurvedic Pharma Products.</p>\r\n\r\n<p><strong>CONSULTATION SERVICES FOR</strong></p>\r\n\r\n<ul>\r\n	<li>Ayush Manufacturing Licencing.</li>\r\n	<li>Drug Development.</li>\r\n	<li>Cosmetic Development.</li>\r\n	<li>Clinical Study Of Your Drug.</li>\r\n	<li>&nbsp;Publication Of Clinical Studies.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', '', NULL, '', 'img-our-services.jpeg', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2019-10-11 09:56:11', '2023-05-26 07:22:12', 'Our Services', 'Our Services Manufacturers', 'Our Services Exporters', 'Our Services Suppliers', 'Our Services Exporters ', 'Our Services Exporters', 'Our Services Manufacturers', 'Our Services Manufacturers', 'Our Services Suppliers', 'Our Services Suppliers', 'Our Services in city', 'Our Services in city', 'Our Services'),
(10, 1, 0, NULL, NULL, 'ASHWANGANDHA VATI', NULL, 'ashwangandha-vati', '', NULL, '', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Ashwagandha</span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">&nbsp;is a well-known herb which plays a role as a diet and medicine both. It is a perfect energy booster having anti-ageing, antiaging and </span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">aphrodisiac </span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">properties. It strengthen intellectual power and a great anti-oxidant which refresh whole body and mind by removing toxins. It is a immunity booster, a great medicine for bronchitis, insomnia, anxiety, arthritis and nervous exhaustion and well known Indian Viagra. </span></span></li>\r\n</ul>\r\n', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">ASHWAGANDHA </span></span></span><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">vati ( tablet )</span></span></span><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">&nbsp;is a tablet of 500mg Ashwagandha extract obtained from Ashwagandha Roots only. Ashwagandha is described in Ayurvedic Texts that it great Immunity Booster, Rasayan, Energy booster and a well-known Aphrodisiac.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><em><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><em>Ashwagandha </em></span></span></em><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\">is also having antistress properties, antioxidant action, and antianxiety action. It acts as an immunomodulator, useful in chronic fatigue syndrome and helps in delaying ageing. It is a cognition enhancer and memory improving, </span></span><em><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><em>Ashwagandha can </em></span></span></em><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\">reduce blood sugar level. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Supports Resistance to Fatigue.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">It is Ayurvedic Aphrodisiac ( Vajikarak ) , Dietary Supplement for Male Sex Solution. </span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Take 1 Tablet 2 times per day with water or Hot Sweetened Milk.</span></span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:55.5500pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Tablet ( 500 mg Ashwagandha Root Extract )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 60 Tablets. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Aswagandha ( Widhania somnifera ) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Root Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 mg </strong></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Binders and Preservatives. </span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-ashwangandha-vati.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-02 13:58:19', '2023-05-03 13:11:44', 'ASHWANGANDHA VATI', 'ASHWANGANDHA VATI Manufacturers', 'ASHWANGANDHA VATI Exporters', 'ASHWANGANDHA VATI Suppliers', 'ASHWANGANDHA VATI Exporters ', 'ASHWANGANDHA VATI Exporters', 'ASHWANGANDHA VATI Manufacturers', 'ASHWANGANDHA VATI Manufacturers', 'ASHWANGANDHA VATI Suppliers', 'ASHWANGANDHA VATI Suppliers', 'ASHWANGANDHA VATI in city', 'ASHWANGANDHA VATI in city', 'ASHWANGANDHA VATI'),
(12, 1, 0, NULL, NULL, 'NEEM VATI ( Tablets )', NULL, 'neem-vati-tablets-', '', NULL, '', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">NEEM VATI ( Tablets ) is Ayurvedic Properitory Medicine . It contains 500 mg of NEEM Aquous Extract. NEEM is well described in Ayurvedic Texts as BLOOD PYURIFIER.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Neem</span></span></span></span><span style=\"font-size:12.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;(Azadirachta indica), has attracted worldwide prominence in recent years, owing to its wide range of medicinal properties.</span></span></span></span></li>\r\n</ul>\r\n', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Neem has been extensively used in Ayurveda, Unani and Homoeopathic medicine and has become a cynosure of modern medicine. Neem and its constituents have been demonstrated to exhibit immunomodulatory, anti-inflammatory, anti-hyperglycaemic, antiulcer, antimalarial, antifungal, antibacterial, antiviral, antioxidant, antimutagenic and anticarcinogenic properties. This review summarises the wide range of pharmacological activities of neem leaf.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Dietary Supplement. </span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Take 1 Tablet 2 times per day with water, or as directed by your qualified healthcare professional. </span></span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:55.5500pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Tablet ( 500 mg Neem Bark Extract )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 60 Tablets. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:12.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Neem</strong></span></span></span></span></strong><strong><span style=\"font-size:12.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;(Azadirachta indica)</strong></span></span></span></span></strong><strong><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\"><strong>&nbsp;Bark </strong></span></span></span></strong><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Extract 500 mg </strong></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Binders and Preservatives, Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-m-vati-tablets-.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-02 13:58:34', '2023-05-05 13:50:09', 'NEEM VATI ( Tablets )', 'NEEM VATI ( Tablets ) Manufacturers', 'NEEM VATI ( Tablets ) Exporters', 'NEEM VATI ( Tablets ) Suppliers', 'NEEM VATI ( Tablets ) Exporters ', 'NEEM VATI ( Tablets ) Exporters', 'NEEM VATI ( Tablets ) Manufacturers', 'NEEM VATI ( Tablets ) Manufacturers', 'NEEM VATI ( Tablets ) Suppliers', 'NEEM VATI ( Tablets ) Suppliers', 'NEEM VATI ( Tablets ) in city', 'NEEM VATI ( Tablets ) in city', 'NEEM VATI ( Tablets )'),
(13, 1, 0, NULL, NULL, 'SOFTOFRESH POWDER', NULL, 'softofresh-powder', '', NULL, '', '<p><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Softo-fresh powder </strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">is essentially an ayurvedic medicine for </span></span><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>constipation </strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">which stimulates bowel movements and offers instant relief from the pain and discomfort caused due to constipation.</span></span></span></span></span></p>\r\n', '<ol>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Harad -</strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;It is mild purgative.and laxative. </span></span></span></span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Behada. -</strong></span></span></strong>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">It</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;is </span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">laxatie</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;and </span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">purgative</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">.</span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Amla -</strong></span></span></strong>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">It</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;is DIGESTIVE and LAXATIVE</span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Isabgol. -</strong></span></span></strong>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">It</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;smoothens and increase intestinal movements.</span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Heeng. -</strong></span></span></strong>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">It</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;works as DIGESTIVE and LAXATIVE .</span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Pudina. -</strong></span></span></strong>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">It</span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;is having properties of DIGESTIVE, PURGATIVE, CARMINATIVE and</span></span></li>\r\n</ol>\r\n\r\n<p><strong>&nbsp;</strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">LAXATIVE </span></span></p>\r\n\r\n<ol start=\"7\">\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Sanaya leaves</strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;- It works as LAXATIVE and increase intestinal movements and secretions as well.</span></span></li>\r\n	<li><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Saindha namak</strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">&nbsp;- It is digestive. </span></span></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">2-3 grams Daily at Bed Time with Luke warm water.</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">In addition to taking the recommended dose of </span></span><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Softo-fresh</strong></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">, one should also incorporate certain dietary changes. These include increased intake of water, consumption of high-fiber foods and inclusion of probiotic foods in the diet. Regular exercise can also help improve the condition, to a great extent. </span></span></span></span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:48.1500pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 100 Grams </span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 100 Grams. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:17.85pt\"><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Harad - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terminalia chebula &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000 mg </strong></span></span></strong></span></span></span></p>\r\n\r\n			<p style=\"margin-left:17.85pt\"><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Behada. - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terminalia belerica &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000 mg </strong></span></span></strong></span></span></span></p>\r\n\r\n			<p style=\"margin-left:17.85pt\"><span style=\"font-size:12pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:&quot;Times New Roman&quot;\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Amla - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Emblica officinalis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000 mg </strong></span></span></strong></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Isabgol - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong>Plantago ovata</strong></span></span></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5000 mg &nbsp;</strong></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Heeng. - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Ferula asafoetida &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 mg </strong></span></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Pudina - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Mentha spicata &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 mg </strong></span></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Sanaya leaves - &nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Senna alexandrina &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 mg </strong></span></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><strong>Saindha namak &ndash; Rock Salt &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Powder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 mg</strong></span></span></strong><strong>&nbsp;&nbsp;</strong>&nbsp;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Preservatives and Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-softofresh-powder.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-02 13:58:41', '2023-05-03 13:12:02', 'SOFTOFRESH POWDER', 'SOFTOFRESH POWDER Manufacturers', 'SOFTOFRESH POWDER Exporters', 'SOFTOFRESH POWDER Suppliers', 'SOFTOFRESH POWDER Exporters ', 'SOFTOFRESH POWDER Exporters', 'SOFTOFRESH POWDER Manufacturers', 'SOFTOFRESH POWDER Manufacturers', 'SOFTOFRESH POWDER Suppliers', 'SOFTOFRESH POWDER Suppliers', 'SOFTOFRESH POWDER in city', 'SOFTOFRESH POWDER in city', 'SOFTOFRESH POWDER'),
(19, 1, 0, NULL, NULL, 'ZOINT PLUS CAPSULE', NULL, 'zoint-plus-capsule', '', NULL, '', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">ZOINT PLUS Capsule is a Combination of effective pain relieving Ayurvedic medicines Offers relief in joint pain: </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Key ingredients like </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Haldi</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- Anti inflammatory , anti-aging.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Shallaki</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#40464d\">Anti-asthmatic, Prevent Fibrosis, Managing Arthristis, Managing Diabetes</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Amala</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- Anti inflammatory , Anti-aging.</span></span></span></span></li>\r\n</ul>\r\n', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Kali</span></span></span>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">MaricH :- </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Anti inflammatory, swelling and provide relief from joint pain. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Haldi , Shallaki, Amala and Kali Marich</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;help relax muscles to reduce pain, stiffness, and body pains and have anti-inflammatory, pain-relieving actions. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Works on: Muscle sprain, Joint pain and swelling, Stiffness of joints. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">DOSE :- 1 to 2 CAPSULE Every Day.</span></span></span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:55.5500pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Capsule ( 500 mg )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 10 capsule . </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Haldi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Curcuma longa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;120 mg </strong></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Shallaki &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></strong><strong><em><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong><em>Boswellia serrata &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;180 mg</em></strong></span></span></span></span></em></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Amala &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Emblica officinalis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</strong></span></span></span></span></strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>xtract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;180 mg </strong></span></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Kali Marich &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></strong><strong><em><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong><em>Piper nigrum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20 mg</em></strong></span></span></span></span></em></strong><strong>&nbsp;&nbsp;</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Binders and Preservatives </span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-nt-plus-capsule.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-03 10:22:39', '2023-05-05 13:50:48', 'ZOINT PLUS CAPSULE', 'ZOINT PLUS CAPSULE Manufacturers', 'ZOINT PLUS CAPSULE Exporters', 'ZOINT PLUS CAPSULE Suppliers', 'ZOINT PLUS CAPSULE Exporters ', 'ZOINT PLUS CAPSULE Exporters', 'ZOINT PLUS CAPSULE Manufacturers', 'ZOINT PLUS CAPSULE Manufacturers', 'ZOINT PLUS CAPSULE Suppliers', 'ZOINT PLUS CAPSULE Suppliers', 'ZOINT PLUS CAPSULE in city', 'ZOINT PLUS CAPSULE in city', 'ZOINT PLUS CAPSULE'),
(20, 1, 0, NULL, NULL, 'ZOINT OIL', NULL, 'zoint-oil', '', NULL, '', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">ZOINT OIL Combination of effective pain relieving Ayurvedic medicines Offers relief in joint pain:&nbsp;</span></span></span><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Key ingredients. </span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>JYOTISHMATI</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- is </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">anti-arthritic, wound healing, hypolipidemic, and antioxidant. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>ATASI :</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">- is </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Antioxidant, Improving Bone Health. </span></span></span></li>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>AJWAIN</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- Helps in </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Arthritis Pain Relief, </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">swelling.</span></span></span></li>\r\n</ul>\r\n', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>KAPOOR</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;:- Relieves pain, Treats arthritis , </span></span></span><a href=\"https://www.healthline.com/symptom/muscle-twitch\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">muscle spasms</span></span></span></a><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">. </span></span></span></span></span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>KAPPAS:</strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">- Reduce inflammation and swelling and provide relief from joint pain, Relieves muscle pain: </span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Turpentine</span></span></span>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">oil</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">, </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">menthol</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">, </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">camphor</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;help relax muscles to reduce pain, stiffness, and body pains. </span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Ashwagandha</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">, </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Brahmi</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">, </span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Jatamansi</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">, included in this pack have anti-inflammatory, pain-relieving actions have soothing effect as all of them are nervine tonics and </span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Works on: Muscle sprain, Joint pain and swelling, Stiffness of joints, Lumbago, Gout, Osteoarthritis, Spondylosis.</span></span></span></li>\r\n</ul>\r\n', NULL, '', 'img-nt-oil.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-03 10:24:11', '2023-05-05 13:51:26', 'ZOINT OIL', 'ZOINT OIL Manufacturers', 'ZOINT OIL Exporters', 'ZOINT OIL Suppliers', 'ZOINT OIL Exporters ', 'ZOINT OIL Exporters', 'ZOINT OIL Manufacturers', 'ZOINT OIL Manufacturers', 'ZOINT OIL Suppliers', 'ZOINT OIL Suppliers', 'ZOINT OIL in city', 'ZOINT OIL in city', 'ZOINT OIL');
INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `name`, `product_code`, `slug`, `product_alt`, `product_order`, `home_description`, `short_description`, `description`, `costdescription`, `specification`, `image`, `home_image`, `image_title`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporters_title`, `exporters_image_title`, `manufacturers_title`, `manufacturers_image_title`, `suppliers_title`, `suppliers_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(21, 1, 0, NULL, NULL, 'MUSING CAPSULE', NULL, 'musing-capsule', '', NULL, '', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">MUSING CAPSULE is a proportionate combination of Ayurvedic Herbs like Kapikachchhu, Ashwagandha, Brahmi, Shankpushpi, Vacha and Tagar which are well known Nervine Tonic, Anti-stress, Intellect promoter and specifically helpfull in condition of insomnia i.e sleeplessness.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Key ingredients </span></span></span></span></li>\r\n</ul>\r\n', '<ul>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Kapikachchhu</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;:- It </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">plays a vital role in motivation, attention, memory, mood, relaxation, sexual desire, sleep</span></span></span></span><span style=\"font-size:11.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#4f585e\">&nbsp;acts as an aphrodisiac that increases sexual desire, performance and sets the mood. </span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Ashwagandha</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;:- It have </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\">antistress properties, antioxidant action, and antianxiety action. It acts as an immunomodulator, useful in chronic fatigue syndrome.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Brahmi</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;:- It helps in </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#231f20\">improving memory, reducing anxiety and promotes sleep.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Shankpushpi</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;:- It helps in </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#231f20\">improving memory, reducing anxiety and promotes sleep.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Vacha</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>:- It helps in </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#231f20\">improving memory, reducing anxiety and promotes sleep.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Tagar</strong></span></span></span></strong><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>&nbsp;:- It helps in </strong></span></span></span></strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#231f20\">improving memory, reducing anxiety and promotes sleep.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"background-color:#ffffff\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>DOSE :- 1-2 capsule at bedtime with warm water. </strong></span></span></span></strong></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:37.5pt; text-align:justify\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:55.5500pt; vertical-align:top; width:459.9500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Capsule ( 500 mg )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 30 capsule . </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:459.9500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>Kapikachchhu </strong></span></span></span></strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong>Mucuna pruriens </strong></span></span></span></span></strong><em><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 mg &nbsp;</em></span></span></span></span></em><strong>&nbsp;&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>ASHWAGANDHA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Withania somnifea &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 mg </strong></span></span></span></strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>BrahamI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Bacopa monnieri &nbsp;</strong></span></span></span></span></strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#202124\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;80 mg </span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><strong>SHANKHPUSHPI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></span></strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong>Convolvulus prostrates </strong></span></span></span></span></strong><strong><em><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong><em>Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;70 mg </em></strong></span></span></span></span></em></strong><strong>&nbsp;&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>VACHA &nbsp;</strong></span></span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\"><strong>Acorus calamus &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100 mg </strong></span></span></span></span></strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>TAGAR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></strong><strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#5f6368\"><strong>Valeriana wallichii</strong></span></span></span></span></strong><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#4d5156\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 mg </span></span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:459.9500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Preservatives, Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-musing-capsule.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 0, '2023-05-03 10:24:58', '2023-05-03 11:48:28', 'MUSING CAPSULE', 'MUSING CAPSULE Manufacturers', 'MUSING CAPSULE Exporters', 'MUSING CAPSULE Suppliers', 'MUSING CAPSULE Exporters ', 'MUSING CAPSULE Exporters', 'MUSING CAPSULE Manufacturers', 'MUSING CAPSULE Manufacturers', 'MUSING CAPSULE Suppliers', 'MUSING CAPSULE Suppliers', 'MUSING CAPSULE in city', 'MUSING CAPSULE in city', 'MUSING CAPSULE'),
(22, 1, 0, NULL, NULL, 'X - PLUS STRONG CAPSULE ', NULL, 'x-plus-strong-capsule', '', NULL, '', '<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">This Capsule</span></span></span>&nbsp;<span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">is made from those Herbs which are well described in Ayurveda to provides you activeness and energy in day today&rsquo;s life and beside that which provide </span></span></span><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\"><strong>Male Sex Solutions.</strong></span></span></span></strong>&nbsp;</span></span><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">The ingredients have been freshly plucked from the plats at their extreme potency level. Preserved gently and crushed softly to provide u the best properties of ingredients which allow you to keep energetic all the time and ready to perform. It contains </span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">ingredients provides you sex drive naturally, increase Libido Strength and time. No chemicals , no preservatives no artificial colour and flavour is used in it. </span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:48.1500pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Capsule ( 550 mg )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 30 capsule .</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">KAPIKACCHU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mucuna Pruriens. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">0 Mg </span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">ASHWAGANDHA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Withania somnifera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">AKARKARA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\">Anacyclus pyrethrum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">CHOTI ELAYACHI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Elettaria cardamomum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Extract</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">JAIPHAL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Myristica fragrans &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">SAFED MUSLI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Asparapus Adscendens &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">SALABH PANJA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#202124\">Dactylorhiza hatagirea </span></span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">50 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">SHANKHPUSHPI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Convolvulus pluricauli &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">25 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">BRAHMI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Centella asiatica &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">25 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">SHUNTHI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Zingiber officinale &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;25</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">&nbsp;Mg </span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">LONG &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Myristica fragrans &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">25 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">KALI MARICH &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Piper Nigrum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;25</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">&nbsp;Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">DALCHINI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cinnamomum zeylanicum EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20 Mg </span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">KESAR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Crocus sativus &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">extract &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5 Mg</span></span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Shilajeet &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ASPHALTUM PUNJABINUM &nbsp;&nbsp;EXTRACT &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50 mg &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span>&nbsp;</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:452.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Preservatives, Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-x-plus-strong-capsule.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-03 10:25:40', '2023-05-03 13:25:53', 'X - PLUS STRONG CAPSULE ', 'X - PLUS STRONG CAPSULE  Manufacturers', 'X - PLUS STRONG CAPSULE  Exporters', 'X - PLUS STRONG CAPSULE  Suppliers', 'X - PLUS STRONG CAPSULE  Exporters ', 'X - PLUS STRONG CAPSULE  Exporters', 'X - PLUS STRONG CAPSULE  Manufacturers', 'X - PLUS STRONG CAPSULE  Manufacturers', 'X - PLUS STRONG CAPSULE  Suppliers', 'X - PLUS STRONG CAPSULE  Suppliers', 'X - PLUS STRONG CAPSULE  in city', 'X - PLUS STRONG CAPSULE  in city', 'X - PLUS STRONG CAPSULE ');
INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `name`, `product_code`, `slug`, `product_alt`, `product_order`, `home_description`, `short_description`, `description`, `costdescription`, `specification`, `image`, `home_image`, `image_title`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporters_title`, `exporters_image_title`, `manufacturers_title`, `manufacturers_image_title`, `suppliers_title`, `suppliers_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(23, 1, 0, NULL, NULL, 'ARABIC GHAVA CHAAI ', NULL, 'arabic-ghava-chaai', '', NULL, '', '<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:10pt\"><span style=\"background-color:#f8f9fa\"><span style=\"font-family:&quot;Courier New&quot;\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">This is not just a tea but a way to connect Ayurveda and modern India. This tea is made from those Herbs which are well described in Ayurveda to provides you alertness, immunity and energy in day today&rsquo;s life and beside that which provide </span></span></span><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\"><strong>Male Sex Solutions.</strong></span></span></span></strong>&nbsp;</span></span></span></p>\r\n', '<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">The ingredients have been freshly plucked from the plats at there extreme potency level. Preserved gently and crushed softly to provide u the best properties of ingredients which allow you to keep energetic all the time and ready to perform. It contains </span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">Coffea arabica</span></span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">, Elettaria</span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">&nbsp;Cardamomum</span></span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">, Cinnamomum</span></span></span><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">&nbsp;zeylanicum,</span></span></span></span>&nbsp;<span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Piper Nigrum, </span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Zingiber officinale,</span></span></span></span>&nbsp;<span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Syzygium aromaticum</span></span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">,</span></span></span>&nbsp;<span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Mucuna Pruriens and </span></span></span><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Crocus sati</span></span></span></span><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">. All these ingredients will provide you sex drive naturally. No chemicals , no preservatives no artificial colour and flavour are used. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Boil 2gms of coarse powder in 200 ml of water and keep boiling it 2-4 Minutes. Mix some quantity of sugar according to your need and habits. After that filter it in a cup. Now take this tea sip-sip along with Dates ( Khajoor ) and prepare yourself for day to day exercise and performance with your beloved one. </span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\">&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:none; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"height:48.1500pt; vertical-align:top; width:456.6500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : one serving 2 grams from 200 ml water </span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 100 Grams, 250 Grams. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:5.3000pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">COFFEE </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.3000pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">Coffea arabica</span></span></span></span>&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\"height:5.3000pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.3000pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">400 mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">CHOTI ELAYACHI </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#5f6368\">Elettaria Cardamomum</span></span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">400 mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:4.7000pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">DALCHINI </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:4.7000pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Cinnamomum zeylanicum </span></span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:4.7000pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:4.7000pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">400 mg </span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">KALI MARICH </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Piper Nigrum </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.9000pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">200</span></span></span><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">&nbsp;mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:7.6500pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">ADRAK </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:7.6500pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Zingiber officinale </span></span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:7.6500pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:7.6500pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">300 mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:8.2500pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">LONG </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:8.2500pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Syzygium aromaticum</span></span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:8.2500pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:8.2500pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">295 mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:5.0000pt; vertical-align:top; width:126.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">KEASAR </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.0000pt; vertical-align:top; width:141.7500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#202124\">Crocus sativus</span></span></span></span>&nbsp;</span></span></p>\r\n			</td>\r\n			<td style=\"height:5.0000pt; vertical-align:top; width:99.2000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Coarse Powder </span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"height:5.0000pt; vertical-align:top; width:88.8500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:10.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">5 mg</span></span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\" style=\"height:24.6000pt; vertical-align:top; width:456.6500pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Preservatives, Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-arabic-ghava-chaai.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-03 10:26:52', '2023-05-03 11:49:10', 'ARABIC GHAVA CHAAI ', 'ARABIC GHAVA CHAAI  Manufacturers', 'ARABIC GHAVA CHAAI  Exporters', 'ARABIC GHAVA CHAAI  Suppliers', 'ARABIC GHAVA CHAAI  Exporters ', 'ARABIC GHAVA CHAAI  Exporters', 'ARABIC GHAVA CHAAI  Manufacturers', 'ARABIC GHAVA CHAAI  Manufacturers', 'ARABIC GHAVA CHAAI  Suppliers', 'ARABIC GHAVA CHAAI  Suppliers', 'ARABIC GHAVA CHAAI  in city', 'ARABIC GHAVA CHAAI  in city', 'ARABIC GHAVA CHAAI '),
(24, 1, 0, NULL, NULL, 'GILOYE GHANVATI ( TABLETS)', NULL, 'giloye-ghanvati-tablets', '', NULL, '', '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">GILOYE GHAN</span></span></span><span style=\"font-size:11.5000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">vati ( tablet )</span></span></span><span style=\"font-size:11.5000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp;is a tablet of 500 mg Giloye ( Tinospora cordifolia) extract obtained from Stem only</span></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:TimesNewRomanPSMT\">. Gloye ( Tinospora cordifolia ) is well described in Ayurvedic Texts and Recommended by AYUSH ministry of Govt. Of India that is great Immunity Booster, Rasayan (Adaptogen ), intellect promotors .</span></span></span></span></p>\r\n', '<ul>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:TimesNewRomanPSMT\">It also helps in developing good memory in kids. </span></span><em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\"><em>Tinospora cordifolia</em></span></span></span></span></em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">&nbsp;(Guduchi) is an important herb in folk and ayurvedic systems of medicine. This paper presents a critical review on chemical and biological properties of </span></span></span></span><em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\"><em>Tinospora cordifolia</em></span></span></span></span></em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">. </span></span></span></span><em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\"><em>Tinospora cordifolia</em></span></span></span></span></em><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">&nbsp;contain various chemical constituents belonging to different classes such as </span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">alkaloids</span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">, diterpenoid lactones, </span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">glycosides</span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">&nbsp;and </span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">steroids</span></span></span></span><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">. </span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:11.5000pt\"><span style=\"background-color:#ffffff\"><span style=\"font-family:open_sansregular\"><span style=\"color:#262626\">The most important biological properties reported are antioxidant, anti-diabetic, anti-inflammatory, anti-arthritic, anti-stress, hepatoprotective, immunomodulatory and anti-neoplastic activities. </span></span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Dietary Supplement. </span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Take 1 Tablet 2 times per day with water. </span></span></span></span></span></li>\r\n</ul>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:1.5000pt solid windowtext; font-family:&quot;Times New Roman&quot;; font-size:10pt; margin-left:6.7500pt; margin-right:6.7500pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:55.5500pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Supplement</strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>&nbsp;/ </strong></span></span></strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Dietary</strong></span></span></strong><strong>&nbsp;</strong><strong><span style=\"font-size:14.0000pt\"><span style=\"font-family:Calibri\"><strong>Facts</strong></span></span></strong><strong>&nbsp;</strong></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving Size : 1 Tablet ( 500 mg Giloye Stem Extract )</span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Serving per Container : 60 Tablets. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:21.0000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:11.5000pt\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Giloye ( Tinospora cordifolia) </span></span></span><strong><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\"><strong>Extract 500 mg </strong></span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:24.6000pt; vertical-align:top; width:436.5000pt\">\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Other ingredients :- Binders and Preservatives </span></span></span></span></p>\r\n\r\n			<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:Calibri\">Free From milk Soy, Egg and Wheat.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', NULL, '', 'img-giloye-ghanvati-tablets.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', '', 0, 1, 1, '2023-05-02 13:58:27', '2023-05-03 13:10:52', 'GILOYE GHANVATI ( TABLETS)', 'GILOYE GHANVATI ( TABLETS) Manufacturers', 'GILOYE GHANVATI ( TABLETS) Exporters', 'GILOYE GHANVATI ( TABLETS) Suppliers', 'GILOYE GHANVATI ( TABLETS) Exporters ', 'GILOYE GHANVATI ( TABLETS) Exporters', 'GILOYE GHANVATI ( TABLETS) Manufacturers', 'GILOYE GHANVATI ( TABLETS) Manufacturers', 'GILOYE GHANVATI ( TABLETS) Suppliers', 'GILOYE GHANVATI ( TABLETS) Suppliers', 'GILOYE GHANVATI ( TABLETS) in city', 'GILOYE GHANVATI ( TABLETS) in city', 'GILOYE GHANVATI ( TABLETS)');

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
(1, 'Â SARASWATI BIO TRADING ', 'saraswati-bio-trading-logo.png', 'raviraz@gmail.com', 'saraswatibiot@gmail.com', '1521 sector 7 urban Estate Kurukshetra Haryana 136118 haryana', '', '', '+917988499972', '', '+919896068887', '', '', NULL, '', '', '', 'We are manufacturer of Ayurvedic Medicines, herbal extracts  and nutraceutical from India , We are expert in this field and working since year 2004. ', '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, '2023-05-27 12:21:26');

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
(1, 0, 0, 'Home About', '', 'home-about', 'home-about.jpg', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#333333\">Saraswati bio trading established in 2014 have made a name for itself in the list of top suppliers of quality products and services provider in india. the company is located in kurukshetra, haryana and is one of the leading sellers of ayurvedic medicines and beauty products. saraswati bio trading is verified and listed in trade india&rsquo;s, india mart and exporters india. you may buy best quality products and service in bulk from us. we have team of learned professors / teachers , m.d ayurveda of ayush departments. we provide you the best consultancy for research &amp; development of your ayurvedic drugs and services for clinical studies. we provide you the best consultancy services for drug analysis ayurvedic drugs and further publishing the research paper of the study . we provide you the best consultancy services for getting an ayurvedic drug , sales and distribution licence all over india. we provide you the best consultancy services for getting who and gmp certificates from ayush ministry and cdsco. we are ayurvedic drugs manufacturer, distibuters and supplier too, licensed through ayush department of haryana ,. all the products that we supply to our clients are carefully sourced whether in terms of the raw material or finished products which are carefully tested and verified with the govt. approved protocols. we make sure that our products are produced in an ayush licence and gmp certified manufacturing unit with an input of time tested technical knowledge of ayurveda. we serve u the best.</span></span></span></span></span></span></p>\r\n', '', '', '', '', NULL, 0, 0, '2019-10-11 10:11:43', '2023-05-02 14:23:42'),
(2, 0, 0, 'Company Profile', '', 'company-profile', 'company-profile.jpg', '<p style=\"text-align:justify\">We are manufacturer of Ayurvedic Medicines, herbal extracts and nutraceutical from India , We are expert in this field and working since year 2004. We have a team of Ayurvedic Experts to develop an Ayurvedic Medicine and Cosmetics holding a degree of masters and PhD in Ayurveda.</p>\r\n', '', '', '', '', NULL, 0, 0, '2019-10-11 10:11:48', '2023-05-26 07:10:21'),
(3, 0, 0, 'Contact Us', '', 'contact-us', '', '', '', '', '', '', NULL, 0, 0, '2019-10-11 10:12:03', '2023-05-02 13:54:55'),
(4, 0, 0, 'Our Presence', '', 'our-presence', '', '', '', 'Krishna Marble Traders â€“ Market We Serve In | Indian Market', 'Market We Serve In, Indian Market, Indian Market, Domestic Presence, Market Presence, Marble Slab In India, Marble Tiles In Kishangarh', 'Krishna Marble Traders earn huge appreciation for offering superior quality of Marble slabs and tiles in different designs and sizes in India to its clients', NULL, 0, 0, '2019-10-11 10:12:07', '2019-11-07 14:15:24'),
(5, 0, 0, 'Catalog', '', 'catalog', 'catalog.jpg', '<p><strong>Krishna Marble Traders</strong> is one of the paramount <strong>White Marble Tiles Manufacturers In City</strong>. With years of industry experience in hands and support of highly trained, talented and experienced people, we&rsquo;ve been engaged in serving our vast range to interior decorators and constructors. Our offered marble slabs are truly alluring and will give a great look to your boring interior.</p>\r\n\r\n<p>Since quality is our forte, we never leave any stone unturned to maintain that. We enhance our work, quality, work ethics and client services with time, to attain 100% client satisfaction. We are the one you can contact to buy Granite Slab, White Marble Slab, Green Marble Slab, and <strong>Katni Marble Slab in City</strong>.</p>\r\n', '<p>So, what are you waiting for? If you need the right marble slabs as per your preferences and pocket, we are the one to contact. As one of the trusted <strong>Pink Marble Slab Suppliers</strong>, <strong>Wholesaler and Dealer in City</strong>, we&rsquo;d be glad to assist you. So, call now.&nbsp;</p>\r\n', 'White Marble Tiles Manufacturers In City, Granite Slab Suppliers', 'White Marble Tiles Manufacturers In City, Granite Slab Suppliers In City, White Marble Slab Dealer In City, Green Marble Slab Wholesaler In City, Katni Marble Slab In City, Pink Marble Slab In City', 'Leading White Marble Tiles Manufacturers in City, Granite Slab Suppliers in City, wholesaler and Dealer offer White, Green, Katni, Pink Marble Slab in City', NULL, 0, 0, '2019-10-11 10:12:11', '2019-11-07 14:37:32'),
(6, 0, 0, 'Sitemap', '', 'sitemap', '', '', '', 'White | Green | Katni | Pink Marble Slab Supplier In India', 'White Marble Slab, Green Marble Slab, Katni Marble Slab, Pink Marble Slab, Granite Slab, White Marble Tiles', 'We are known for offering quality range of White, Green, Katni, Pink Marble Slab, Granite Slab, White Marble Tiles as per market leading price', NULL, 0, 0, '2019-10-11 10:12:14', '2019-11-04 18:22:50'),
(7, 0, 0, 'Our Products', '', 'our-products', 'our-products.jpg', '', '', '', '', '', NULL, 0, 0, '2019-10-11 10:16:45', '2023-05-02 14:24:48'),
(8, 0, 0, 'Manufacturers Category', '', 'manufacturers-category', '', '', '', 'Manufacturer Of White | Green | Katni | Pink Marble Slab In India', 'White Marble Slab Manufacturer, Green Marble Slab Manufacturers, Katni Marble Slab Manufacturing, Manufacturer Of Pink Marble Slab', 'Krishna Marble Traders is the leading manufacturer Of White, Green, Katni, Pink Marble Slab in different sizes and design as per the client specifications at best price', NULL, 0, 0, '2019-10-11 10:50:18', '2019-11-07 14:16:03'),
(9, 0, 0, 'Suppliers Category', '', 'suppliers-category', '', '', '', 'Supplier Of Imported | Pink | Green | Katni | White Marble Slab', 'Imported Marble Slab Supplier, Pink Marble Slab Suppliers, Supplier Of Green Marble Slab, Suppliers Of Katni Marble Slab, White Marble Slab In India', 'Krishna Marble Traders is a reputed supplier based in India offer an exclusive collection of Imported, Pink, Green, Katni, White Marble Slab to its clients at best price', NULL, 0, 0, '2019-10-11 10:50:38', '2019-11-07 14:16:16'),
(10, 0, 0, 'Wholesaler', '', 'wholesaler', '', '', '', 'Wholesaler Of White Marble Tile | Granite Slab In Kishangarh India', 'White Marble Tile Wholesaler, Granite Slab Wholesaler, Wholesale Marble Slab Supplier, Imported Marble Slab, Pink Marble Slab', 'Krishna Marble Traders is a reliable wholesaler of White Marble Tile, Granite Slab in India to its clients at reasonable price. Contact us now to buy', NULL, 0, 0, '2019-10-11 10:51:24', '2019-11-07 14:16:28'),
(11, 0, 0, 'Dealer', '', 'dealer', '', '', '', 'Dealer Of Granite Slabs | Marble Slab | Marble Tiles In India', 'Dealer Of Granite Slabs, Marble Slab Dealer, Marble Tiles Dealer, Granite Slab, Imported Marble Slab', 'Krishna Marble Traders is a topmost Dealer based in India offer superior quality of Granite Slabs, Marble Slab, Marble Tiles to its clients at competitive price', NULL, 0, 0, '2019-10-11 10:51:52', '2019-11-07 14:16:42'),
(12, 0, 0, 'Search Products', '', 'search-products', '', '', '', 'Search Products', 'Search Products', 'Search Products', NULL, 0, 0, '2019-10-12 10:43:43', '2019-10-12 10:44:06');

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
(1, 'Facebook', '', NULL, 'fa fa-facebook', NULL, '', NULL, 0, 0, 0, '2019-10-11 12:36:19', '2019-11-08 09:40:39'),
(2, 'Twitter', '', NULL, 'fa fa-twitter', NULL, '', NULL, 0, 0, 0, '2019-10-11 12:36:38', '2019-11-08 09:40:41'),
(3, 'Youtube', '', NULL, 'fa fa-youtube', NULL, '', NULL, 0, 0, 0, '2019-10-11 12:37:20', '2019-11-08 09:40:45');

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
(1, 0, 'Amar', 'amar', '', NULL, NULL, NULL, NULL, NULL, '', '', 'We have a team of AYURVEDIC experts ,  holding degrees of Masters and PhD in Ayurveda , to develop an Ayurvedic medicine and cosmetics', '', NULL, NULL, NULL, 1, '2019-10-11 11:40:37', '2023-05-26 07:07:53'),
(2, 0, 'Puja', 'puja', '', NULL, NULL, NULL, NULL, NULL, '', '', 'We have a team of AYURVEDIC experts ,  holding degrees of Masters and PhD in Ayurveda , to develop an Ayurvedic medicine and cosmetics', '', NULL, NULL, NULL, 1, '2019-10-11 11:40:55', '2023-05-26 07:08:00');

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
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 'admin', 'e4b93d46b915b203d091339f83a1364196d4258f', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2023-06-06 15:10:33');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `homepagemenus`
--
ALTER TABLE `homepagemenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subdomains`
--
ALTER TABLE `subdomains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
