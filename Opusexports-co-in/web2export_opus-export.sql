-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2024 at 06:06 AM
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
-- Database: `web2export_opus-export`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `name`, `description`, `image`, `page_url`, `priority`, `active`, `created`, `modified`) VALUES
(1, NULL, 'Welcome To Opus Exports', '', 'img-welcome-to-opus-exports.jpg', '', 0, 0, '2020-04-06 09:46:20', '2023-05-11 12:00:21'),
(2, NULL, 'Leather Jacket', '', 'img-leather-jacket.jpg', '', 0, 0, '2020-04-06 09:47:02', '2023-05-11 12:02:25'),
(3, NULL, ' Leather Shoes', '', 'img-plant-growth-promoter-and-regulator-manufacturer.jpg', '', 0, 0, '2020-04-06 09:47:37', '2023-05-11 12:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `blog_day` varchar(255) DEFAULT NULL,
  `blog_month` varchar(255) DEFAULT NULL,
  `blog_year` varchar(255) DEFAULT NULL,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `detail_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_schema` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `category_id`, `product_id`, `location_id`, `name`, `catalog_title`, `slug`, `image`, `short_description`, `description`, `detail_description`, `meta_title`, `meta_desc`, `meta_keyword`, `meta_schema`, `active`, `created`, `modified`) VALUES
(1, 0, NULL, NULL, 'Our Presence', NULL, 'our-presence', NULL, NULL, '<p style=\"text-align:justify\">Opus Exports Work has laid down its footprint in the industry &nbsp;and since then we are striving to serve our products globally as one of the acclaimed manufacturers of <strong>catname</strong><strong> in countryname</strong>. We are committed to serving the utmost quality products under one roof at the most sensible price. We strive to design and manufacture products that suit the need of our clients globally.</p>\r\n\r\n<p style=\"text-align:justify\">Based in Kanpur, Uttar Pradesh we have enough resources, technology, and manpower to match the ever-changing demands of the market. We have the best team of engineers, supervisors, production managers, quality inspectors, etc., who hold great experience, which makes us capable of handling situations arise in manufacturing. Being one of the renowned <strong>catname Exporters in countryname</strong>, we check the quality on several parameters to ensure its performance.</p>\r\n\r\n<p style=\"text-align:justify\">We are leading the market as one of the top-notch <strong>catname Exporters and Manufacturers in countryname</strong> and working to the satisfaction of our customers. Moreover, we provide doorstep delivery, after-sale support and competitive market prices. You can connect with us via phone or mail.</p>\r\n', '', 'catname Exporters in countryname | catname  in countryname', 'Find reliable catname manufacturers in countryname offering superior quality and exquisite designs. We are renowned exporters of catname, delivering style and durability. Browse our collection today!\"', 'catname in countryname, catname in Manufacturers countryname, catname in exporters countryname, catname, Pure catname in countryname', NULL, 1, '2020-04-07 01:53:35', '2023-06-27 10:24:00'),
(2, 0, NULL, NULL, 'Manufactures Category', NULL, 'manufactures-category', NULL, NULL, '', '', '', '', '', NULL, 0, '2020-04-07 01:53:58', '2023-08-29 11:27:09'),
(3, 0, NULL, NULL, 'Suppliers Category', NULL, 'suppliers-category', NULL, NULL, '', '', '', '', '', NULL, 0, '2020-04-07 01:54:16', '2023-08-29 11:27:21'),
(4, 0, NULL, NULL, 'Exporters Category', NULL, 'exporters-category', NULL, NULL, '', '', '', '', '', NULL, 0, '2020-04-07 01:54:50', '2023-08-29 11:27:37');

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
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `enquiry_for` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `message` text,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `country` text,
  `page_url` tinytext,
  `formrequest` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `product_id`, `name`, `company`, `enquiry_for`, `email`, `phone`, `mobile`, `message`, `address`, `city`, `country`, `page_url`, `formrequest`, `ip_address`, `created`, `modified`) VALUES
(1, 0, 'anzar', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '12346567890', 'test', 'delhi', NULL, NULL, 'http://www.volkschem.com/plant-growth-promoter.html', 'ajax', '124.123.205.236', '2020-06-02 17:28:26', '2020-06-02 17:28:26'),
(2, 0, 'anzar', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1234567890', 'test', 'delhi', NULL, NULL, 'http://www.volkschem.com/plant-growth-promoter.html', 'ajax', '124.123.205.236', '2020-06-02 17:29:25', '2020-06-02 17:29:25'),
(3, 0, 'anzar', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1234567890', 'test', 'delhi', NULL, NULL, 'http://www.volkschem.com/contact-us.html', 'ajax', '124.123.205.236', '2020-06-02 18:10:49', '2020-06-02 18:10:49'),
(4, 0, 'anzar', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1236547890', 'test', 'delhi', NULL, NULL, 'http://www.volkschem.com/plant-growth-promoter.html', 'ajax', '124.123.205.236', '2020-06-02 18:11:25', '2020-06-02 18:11:25'),
(5, 0, 'anzar', NULL, 'Enquiry For Contact Us', 'test@gmail.com', NULL, '1236547890', 'test', 'delhi', NULL, NULL, 'http://www.volkschem.com/plant-growth-promoter.html', 'ajax', '124.123.205.236', '2020-06-02 18:13:27', '2020-06-02 18:13:27'),
(6, 0, 'Mr. Daniel Kojo Asareh', NULL, 'Enquiry For Contact Us', 'danielkojoasareh71@gmail.com', NULL, '+233506146072', 'Dear Manufacturers/Supplier,\r\n\r\nPlease can you advise me with the details of your company products as I have the interest to present your company to the Ghana Government for the ongoing year 2020 Public Tender Supply Contract Projects.\r\n\r\nKindly furnish us with your company brochure or company product specification details, if possible your selling prices for international bids.\r\nGet back to me for more details.\r\n\r\nAwaiting for your soonest response.\r\n\r\nYours Faithfully,\r\nMr. Daniel Kojo Asareh\r\nChief Operations Officer(COO)\r\nTel:  +233506146072\r\ndanielkojoasarehgh42@gmail.com\r\nLocation: Taifa, Accra, Ghana.', 'Taifa, Accra, Ghana.', NULL, NULL, 'http://www.volkschem.com/contact-us.html', 'ajax', '41.204.44.234', '2020-06-08 23:02:39', '2020-06-08 23:02:39'),
(7, 0, 'R D SRIDHAR BABU', NULL, 'Enquiry For Contact Us', 'rdsridharbabu@gmail.com', NULL, '9886333043', 'Dear sir please send me products brochure and price list sir please send me sir\r\nWith regards\r\nAnnadaatha Agro Kendra\r\n194 Ramavills road\r\nK R mohlla\r\nMysore 570024\r\nGSTNO 29AEDPL0143E1ZX', NULL, NULL, NULL, 'http://www.volkschem.com/', 'ajax', '157.49.210.154', '2020-06-10 08:26:09', '2020-06-10 08:26:09'),
(8, 0, 'Agim  Kurti', NULL, 'Enquiry For Contact Us', 'agroarmando@hotmail.com', NULL, '0355682077764', 'We are Agroarmando from Albania. We are a trading company in Albania.We are interested to buy from your company. Here are some products we are interested : in Water Soluble Fertilizer and Micronutrient Fertilizer.Please contact us if you are interested to co with us.\r\nKind Regards', 'Fushe Kruje  ALBANIA', NULL, NULL, 'http://www.volkschem.com/contact-us.html', 'ajax', '84.20.78.7', '2020-06-18 16:02:52', '2020-06-18 16:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `id` int(11) UNSIGNED NOT NULL,
  `pagetype_id` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT '0',
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `footer_product` int(11) DEFAULT NULL,
  `inner_product` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcum_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcum_title1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_description` text COLLATE utf8_unicode_ci,
  `feature_text` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_description` text COLLATE utf8_unicode_ci,
  `short_description` text COLLATE utf8_unicode_ci,
  `inner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `costdescription` text COLLATE utf8_unicode_ci,
  `specification` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `seo_status` int(1) DEFAULT '0',
  `product_order` int(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `header_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporter_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitemap_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
(1, NULL, 'Product 1', NULL, NULL, 'img-product-1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:10:53', '2023-05-10 17:48:59'),
(2, NULL, 'Hy-Max', NULL, NULL, 'img-hy-max.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:11:39', '2020-05-19 11:11:39'),
(3, NULL, 'Royal', NULL, NULL, 'img-royal.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:12:10', '2020-05-19 11:12:10'),
(4, NULL, 'Volzol', NULL, NULL, 'img-volzol.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:12:44', '2020-05-19 11:12:44'),
(5, NULL, 'Lambada Gold', NULL, NULL, 'img-lambada-gold.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:13:22', '2020-05-19 11:13:22'),
(6, NULL, 'Metree Win', NULL, NULL, 'img-metree-win.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-05-19 11:13:57', '2020-05-19 11:13:57'),
(7, 1, 'gallery1', NULL, NULL, 'img-1gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:11:06', '2020-06-06 10:11:06'),
(8, 1, 'gallery2', NULL, NULL, 'img-1gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:12:49', '2020-06-06 10:12:49'),
(9, 1, 'gallery3', NULL, NULL, 'img-1gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:14:22', '2020-06-06 10:14:22'),
(10, 1, 'gallery4', NULL, NULL, 'img-1gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:15:55', '2020-06-06 10:15:55'),
(11, 1, 'gallery5', NULL, NULL, 'img-1gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:16:32', '2020-06-06 10:16:32'),
(12, 1, 'gallery6', NULL, NULL, 'img-1gallery6.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:17:59', '2020-06-06 10:17:59'),
(13, 1, 'gallery7', NULL, NULL, 'img-1gallery7.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:19:00', '2020-06-06 10:19:00'),
(14, 1, 'gallery8', NULL, NULL, 'img-1gallery8.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:20:36', '2020-06-06 10:20:36'),
(15, 1, 'gallery9', NULL, NULL, 'img-1gallery9.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:21:25', '2020-06-06 10:21:25'),
(16, 1, 'gallery10', NULL, NULL, 'img-1gallery10.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:22:21', '2020-06-06 10:22:21'),
(17, 1, 'gallery11', NULL, NULL, 'img-1gallery11.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:23:22', '2020-06-06 10:23:22'),
(18, 1, 'gallery12', NULL, NULL, 'img-1gallery12.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:24:07', '2020-06-06 10:24:07'),
(19, 1, 'gallery13', NULL, NULL, 'img-1gallery13.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:24:52', '2020-06-06 10:24:52'),
(20, 1, 'gallery14', NULL, NULL, 'img-1gallery14.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:25:39', '2020-06-06 10:25:39'),
(21, 2, 'gallery1', NULL, NULL, 'img-2gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:33:06', '2020-06-06 10:33:06'),
(22, 2, 'gallery2', NULL, NULL, 'img-2gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:34:49', '2020-06-06 10:34:49'),
(23, 2, 'gallery3', NULL, NULL, 'img-2gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:35:54', '2020-06-06 10:35:54'),
(24, 2, 'gallery4', NULL, NULL, 'img-2gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:36:41', '2020-06-06 10:36:41'),
(25, 2, 'gallery5', NULL, NULL, 'img-2gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:37:32', '2020-06-06 10:37:32'),
(26, 7, 'gallery1', NULL, NULL, 'img-7gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:39:45', '2020-06-06 10:39:45'),
(27, 7, 'gallery2', NULL, NULL, 'img-7gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:40:31', '2020-06-06 10:40:31'),
(29, 4, 'gallery1', NULL, NULL, 'img-4gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:42:49', '2020-06-06 10:42:49'),
(31, 4, 'gallery3', NULL, NULL, 'img-4gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:44:11', '2020-06-06 10:44:11'),
(32, 4, 'gallery4', NULL, NULL, 'img-4gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:44:56', '2020-06-06 10:44:56'),
(33, 4, 'gallery5', NULL, NULL, 'img-4gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:45:41', '2020-06-06 10:45:41'),
(34, 5, 'gallery1', NULL, NULL, 'img-5gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:47:52', '2020-06-06 10:47:52'),
(35, 9, 'gallery1', NULL, NULL, 'img-9gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 10:58:21', '2020-06-06 10:58:21'),
(36, 10, 'gallery1', NULL, NULL, 'img-10gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:00:08', '2020-06-06 11:00:08'),
(37, 10, 'gallery2', NULL, NULL, 'img-10gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:01:08', '2020-06-06 11:01:08'),
(38, 10, 'gallery3', NULL, NULL, 'img-10gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:01:49', '2020-06-06 11:01:49'),
(39, 10, 'gallery4', NULL, NULL, 'img-10gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:02:36', '2020-06-06 11:02:36'),
(40, 10, 'gallery5', NULL, NULL, 'img-10gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:03:47', '2020-06-06 11:03:47'),
(41, 10, 'gallery6', NULL, NULL, 'img-10gallery6.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:04:55', '2020-06-06 11:04:55'),
(42, 10, 'gallery7', NULL, NULL, 'img-10gallery7.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:05:53', '2020-06-06 11:05:53'),
(43, 11, 'gallery1', NULL, NULL, 'img-11gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:08:01', '2020-06-06 11:08:01'),
(44, 11, 'gallery2', NULL, NULL, 'img-11gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:08:42', '2020-06-06 11:08:42'),
(45, 11, 'gallery3', NULL, NULL, 'img-11gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:09:22', '2020-06-06 11:09:22'),
(46, 11, 'gallery4', NULL, NULL, 'img-11gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:10:06', '2020-06-06 11:10:06'),
(47, 11, 'gallery5', NULL, NULL, 'img-11gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:11:06', '2020-06-06 11:11:06'),
(48, 6, 'gallery1', NULL, NULL, 'img-6gallery1.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:13:43', '2020-06-06 11:13:43'),
(49, 6, 'gallery2', NULL, NULL, 'img-6gallery2.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:14:41', '2020-06-06 11:14:41'),
(50, 6, 'gallery3', NULL, NULL, 'img-6gallery3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:15:17', '2020-06-06 11:15:17'),
(51, 6, 'gallery4', NULL, NULL, 'img-6gallery4.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:16:31', '2020-06-06 11:16:31'),
(52, 6, 'gallery5', NULL, NULL, 'img-6gallery5.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:17:15', '2020-06-06 11:17:15'),
(53, 6, 'gallery6', NULL, NULL, 'img-6gallery6.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:17:52', '2020-06-06 11:17:52'),
(54, 6, 'gallery7', NULL, NULL, 'img-6gallery7.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:18:49', '2020-06-06 11:18:49'),
(55, 6, 'gallery8', NULL, NULL, 'img-6gallery8.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:19:31', '2020-06-06 11:19:31'),
(56, 6, 'gallery9', NULL, NULL, 'img-6gallery9.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:20:41', '2020-06-06 11:20:41'),
(57, 6, 'gallery10', NULL, NULL, 'img-6gallery10.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:21:16', '2020-06-06 11:21:16'),
(58, 6, 'gallery11', NULL, NULL, 'img-6gallery11.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:21:53', '2020-06-06 11:21:53'),
(59, 6, 'gallery12', NULL, NULL, 'img-6gallery12.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:23:02', '2020-06-06 11:23:02'),
(60, 6, 'gallery13', NULL, NULL, 'img-6gallery13.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:23:59', '2020-06-06 11:23:59'),
(61, 6, 'gallery14', NULL, NULL, 'img-6gallery14.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:24:32', '2020-06-06 11:24:32'),
(62, 6, 'gallery15', NULL, NULL, 'img-6gallery15.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:26:07', '2020-06-06 11:26:07'),
(63, 6, 'gallery16', NULL, NULL, 'img-6gallery16.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:26:48', '2020-06-06 11:26:48'),
(64, 6, 'gallery17', NULL, NULL, 'img-6gallery17.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:27:22', '2020-06-06 11:27:22'),
(65, 6, 'gallery18', NULL, NULL, 'img-6gallery18.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:27:59', '2020-06-06 11:27:59'),
(66, 6, 'gallery19', NULL, NULL, 'img-6gallery19.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:28:42', '2020-06-06 11:28:42'),
(67, 6, 'gallery20', NULL, NULL, 'img-6gallery20.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:29:31', '2020-06-06 11:29:31'),
(68, 6, 'gallery21', NULL, NULL, 'img-6gallery21.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 11:30:16', '2020-06-06 11:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(11) NOT NULL,
  `home_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `icon_css` varchar(255) DEFAULT NULL,
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
  `active` tinyint(4) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `locationtype` int(11) DEFAULT NULL,
  `name` varchar(34) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `location_url` varchar(255) DEFAULT NULL,
  `catalog_type` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `location_order` varchar(255) DEFAULT NULL,
  `top_location` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locationtype`, `name`, `slug`, `image`, `location_title`, `short_description`, `description`, `location_url`, `catalog_type`, `meta_title`, `meta_desc`, `meta_keyword`, `location_order`, `top_location`, `active`, `created`, `modified`, `parent_id`) VALUES
(1, NULL, 'Australia', 'australia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-01-25 06:12:44', '2020-02-06 16:17:08', 0),
(4, NULL, 'New Zealand', 'new-zealand', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:18:54', '2020-02-06 16:18:54', 0),
(5, NULL, 'Canada', 'canada', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:19:15', '2020-02-06 16:19:15', 0),
(6, NULL, 'USA', 'usa', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:19:31', '2020-02-06 16:19:31', 0),
(7, NULL, 'England', 'england', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:19:46', '2020-02-06 16:19:46', 0),
(8, NULL, 'Wales', 'wales', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:19:59', '2020-02-06 16:19:59', 0),
(9, NULL, 'Scotland', 'scotland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:20:16', '2020-02-06 16:20:16', 0),
(10, NULL, 'Northern Ireland', 'northern-ireland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:20:32', '2020-02-06 16:20:32', 0),
(11, NULL, 'Ireland', 'ireland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:20:45', '2020-02-06 16:20:45', 0),
(12, NULL, 'United Kingdom', 'united-kingdom', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:21:03', '2020-02-06 16:21:03', 0),
(13, NULL, 'Germany', 'germany', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:21:19', '2020-02-06 16:21:19', 0),
(14, NULL, 'France', 'france', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:21:32', '2020-02-06 16:21:32', 0),
(15, NULL, 'Sweden', 'sweden', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:21:46', '2020-02-06 16:21:46', 0),
(16, NULL, 'Poland', 'poland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:22:09', '2020-02-06 16:22:09', 0),
(17, NULL, 'Switzerland', 'switzerland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:22:24', '2020-02-06 16:22:24', 0),
(18, NULL, 'Italy', 'italy', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:22:37', '2020-02-06 16:22:37', 0),
(19, NULL, 'Spain', 'spain', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:22:51', '2020-02-06 16:22:51', 0),
(20, NULL, 'Czechia', 'czechia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:23:14', '2020-02-06 16:23:14', 0),
(21, NULL, 'South Africa', 'south-africa', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:23:37', '2020-02-06 16:23:37', 0),
(22, NULL, 'India', 'india', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:24:10', '2020-02-06 16:24:10', 0),
(24, NULL, 'New Delhi', 'new-delhi', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:24:44', '2020-02-06 16:24:44', 0),
(25, NULL, 'Mumbai', 'mumbai', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:24:57', '2020-02-06 16:24:57', 0),
(26, NULL, 'Kolkata', 'kolkata', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:25:19', '2020-02-06 16:25:19', 0),
(27, NULL, 'Chennai', 'chennai', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:26:54', '2020-02-06 16:26:54', 0),
(28, NULL, 'Agra', 'agra', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:27:15', '2020-02-06 16:27:15', 0),
(29, NULL, 'Ludhiana', 'ludhiana', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:27:29', '2020-02-06 16:27:29', 0),
(30, NULL, 'Melbourne', 'melbourne', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:28:19', '2020-02-06 16:28:19', 0),
(31, NULL, 'Sydney', 'sydney', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:28:33', '2020-02-06 16:28:33', 0),
(32, NULL, 'Perth', 'perth', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:28:49', '2020-02-06 16:28:49', 0),
(33, NULL, 'Brisbane', 'brisbane', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:29:06', '2020-02-06 16:29:06', 0),
(34, NULL, 'Adelaide', 'adelaide', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:29:20', '2020-02-06 16:29:20', 0),
(35, NULL, 'Tasmania', 'tasmania', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:29:36', '2020-02-06 16:29:36', 0),
(36, NULL, 'New South Wales', 'new-south-wales', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:29:52', '2020-02-06 16:29:52', 0),
(37, NULL, 'Victoria', 'victoria', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:30:17', '2020-02-06 16:30:17', 0),
(38, NULL, 'Western Australia', 'western-australia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:30:33', '2020-02-06 16:30:33', 0),
(39, NULL, 'New York', 'new-york', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:30:50', '2020-02-06 16:30:50', 0),
(40, NULL, 'Chicago', 'chicago', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:31:06', '2020-02-06 16:31:06', 0),
(41, NULL, 'Toronto', 'toronto', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:31:26', '2020-02-06 16:31:26', 0),
(42, NULL, 'London', 'london', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:32:05', '2020-02-06 16:32:05', 0),
(43, NULL, 'Berlin', 'berlin', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:32:33', '2020-02-06 16:32:33', 0),
(44, NULL, 'Frankfurt', 'frankfurt', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:32:55', '2020-02-06 16:32:55', 0),
(45, NULL, 'Brussels', 'brussels', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:33:17', '2020-02-06 16:33:17', 0),
(46, NULL, 'Belgium', 'belgium', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:33:35', '2020-02-06 16:33:35', 0),
(47, NULL, 'Paris', 'paris', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:33:51', '2020-02-06 16:33:51', 0),
(48, NULL, 'Netherlands', 'netherlands', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:34:12', '2020-02-06 16:34:12', 0),
(49, NULL, 'Austria', 'austria', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:34:31', '2020-02-06 16:34:31', 0),
(50, NULL, 'Norway', 'norway', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:34:55', '2020-02-06 16:34:55', 0),
(51, NULL, 'Denmark', 'denmark', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:35:11', '2020-02-06 16:35:11', 0),
(52, NULL, 'Finland', 'finland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:35:37', '2020-02-06 16:35:37', 0),
(53, NULL, 'Hungary', 'hungary', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:35:52', '2020-02-06 16:35:52', 0),
(54, NULL, 'Luxembourg', 'luxembourg', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:36:12', '2020-02-06 16:36:12', 0),
(55, NULL, 'Israel', 'israel', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:36:25', '2020-02-06 16:36:25', 0),
(56, NULL, 'Dubai', 'dubai', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:36:40', '2020-02-06 16:36:40', 0),
(57, NULL, 'Qatar', 'qatar', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:36:54', '2020-02-06 16:36:54', 0),
(58, NULL, 'Saudi Arabia', 'saudi-arabia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:37:14', '2020-02-06 16:37:14', 0),
(59, NULL, 'Malaysia', 'malaysia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:37:29', '2020-02-06 16:37:29', 0),
(60, NULL, 'China', 'china', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:37:42', '2020-02-06 16:37:42', 0),
(61, NULL, 'Hong Kong', 'hong-kong', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:37:56', '2020-02-06 16:37:56', 0),
(62, NULL, 'Singapore', 'singapore', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:38:12', '2020-02-06 16:38:12', 0),
(63, NULL, 'Vietnam', 'vietnam', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:38:28', '2020-02-06 16:38:28', 0),
(64, NULL, 'Japan', 'japan', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:38:42', '2020-02-06 16:38:42', 0),
(65, NULL, 'South Korea', 'south-korea', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:38:56', '2020-02-06 16:38:56', 0),
(66, NULL, 'Taiwan', 'taiwan', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:39:16', '2020-02-06 16:39:16', 0),
(67, NULL, 'Philippines', 'philippines', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:39:34', '2020-02-06 16:39:34', 0),
(68, NULL, 'Thailand', 'thailand', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:39:50', '2020-02-06 16:39:50', 0),
(69, NULL, 'Russia', 'russia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:40:05', '2020-02-06 16:40:05', 0),
(70, NULL, 'Auckland', 'auckland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:40:21', '2020-02-06 16:40:21', 0),
(71, NULL, 'Christchurch', 'christchurch', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:40:43', '2020-02-06 16:40:43', 0),
(72, NULL, 'Wellington', 'wellington', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:41:02', '2020-02-06 16:41:02', 0),
(73, NULL, 'Tauranga', 'tauranga', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:41:22', '2020-02-06 16:41:22', 0),
(74, NULL, 'Texas', 'texas', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:41:37', '2020-02-06 16:41:37', 0),
(75, NULL, 'Dunedin', 'dunedin', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:42:02', '2020-02-06 16:42:02', 0),
(76, NULL, 'Napier', 'napier', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:42:17', '2020-02-06 16:42:17', 0),
(77, NULL, 'Hobart', 'hobart', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:44:50', '2020-02-06 16:44:50', 0),
(78, NULL, 'Birmingham', 'birmingham', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:45:35', '2020-02-06 16:45:35', 0),
(79, NULL, 'Lebanon', 'lebanon', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:45:49', '2020-02-06 16:45:49', 0),
(80, NULL, 'Kuwait', 'kuwait', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:49:57', '2020-02-06 16:49:57', 0),
(81, NULL, 'Morocco', 'morocco', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:50:13', '2020-02-06 16:50:13', 0),
(82, NULL, 'Portugal', 'portugal', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:50:27', '2020-02-06 16:50:27', 0),
(83, NULL, 'Brazil', 'brazil', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:51:34', '2020-02-06 16:51:34', 0),
(84, NULL, 'Los Angeles', 'los-angeles', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:52:35', '2020-02-06 16:52:35', 0),
(85, NULL, 'Bristol', 'bristol', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:53:00', '2020-02-06 16:53:00', 0),
(86, NULL, 'Glasgow', 'glasgow', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:53:16', '2020-02-06 16:53:16', 0),
(87, NULL, 'Southampton', 'southampton', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:53:46', '2020-02-06 16:53:46', 0),
(88, NULL, 'Indonesia', 'indonesia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:54:01', '2020-02-06 16:54:01', 0),
(89, NULL, 'Vancouver', 'vancouver', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:54:15', '2020-02-06 16:54:15', 0),
(90, NULL, 'Calgary', 'calgary', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:54:39', '2020-02-06 16:54:39', 0),
(91, NULL, 'Darwin', 'darwin', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:55:09', '2020-02-06 16:55:09', 0),
(92, NULL, 'Cairns', 'cairns', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:55:33', '2020-02-06 16:55:33', 0),
(93, NULL, 'Queensland', 'queensland', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:55:49', '2020-02-06 16:55:49', 0),
(94, NULL, 'South Australia', 'south-australia', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:56:07', '2020-02-06 16:56:07', 0),
(95, NULL, 'Durban', 'durban', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:56:24', '2020-02-06 16:56:24', 0),
(96, NULL, 'Cape Town', 'cape-town', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:56:53', '2020-02-06 16:56:53', 0),
(97, NULL, 'Dublin', 'dublin', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:57:06', '2020-02-06 16:57:06', 0),
(98, NULL, 'Warsaw', 'warsaw', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:57:32', '2020-02-06 16:57:32', 0),
(99, NULL, 'Madrid', 'madrid', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:57:52', '2020-02-06 16:57:52', 0),
(100, NULL, 'Kuala Lumpur', 'kuala-lumpur', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-06 16:58:27', '2020-02-06 16:58:27', 0),
(101, NULL, 'Cologne', 'cologne', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-19 17:43:43', '2020-02-19 17:43:43', 0),
(102, NULL, 'Seoul', 'seoul', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', NULL, 1, '2020-02-19 17:44:39', '2020-02-19 17:44:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `locationsx`
--

CREATE TABLE `locationsx` (
  `id` int(11) NOT NULL,
  `locationtype` int(11) DEFAULT NULL,
  `name` varchar(34) DEFAULT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `catalog_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `location_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `location_order` varchar(255) DEFAULT NULL,
  `top_location` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locationsx`
--

INSERT INTO `locationsx` (`id`, `locationtype`, `name`, `location_title`, `catalog_type`, `image`, `short_description`, `slug`, `description`, `location_url`, `meta_title`, `meta_keyword`, `meta_desc`, `location_order`, `top_location`, `active`, `created`, `modified`, `parent_id`) VALUES
(1, NULL, 'Gujarat', NULL, NULL, '', NULL, 'gujarat', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-07 09:48:07', '2020-04-08 18:16:38', 0),
(2, NULL, 'Ahmedabad', NULL, NULL, '', NULL, 'ahmedabad', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-07 09:48:24', '2020-04-08 18:16:55', 1),
(3, NULL, 'Rajkot', NULL, NULL, '', NULL, 'rajkot', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-07 09:56:22', '2020-04-08 18:17:39', 1),
(4, NULL, 'Vadodara', NULL, NULL, '', NULL, 'vadodara', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:18:32', '2020-04-08 18:18:32', 1),
(5, NULL, 'Surat', NULL, NULL, '', NULL, 'surat', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:19:25', '2020-04-08 18:19:25', 1),
(6, NULL, 'West Bengal', NULL, NULL, '', NULL, 'west-bengal', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:25:38', '2020-04-08 18:25:38', 0),
(7, NULL, 'Kolkata', NULL, NULL, '', NULL, 'kolkata', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:26:03', '2020-04-08 18:26:03', 6),
(8, NULL, 'Kharagpur', NULL, NULL, '', NULL, 'kharagpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:29:10', '2020-04-08 18:29:10', 6),
(9, NULL, 'Durgapur', NULL, NULL, '', NULL, 'durgapur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:30:42', '2020-04-08 18:30:42', 6),
(10, NULL, 'Bardhaman', NULL, NULL, '', NULL, 'bardhaman', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:32:12', '2020-04-08 18:32:12', 6),
(11, NULL, 'Siliguri', NULL, NULL, '', NULL, 'siliguri', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:33:01', '2020-04-08 18:33:01', 6),
(12, NULL, 'Bihar', NULL, NULL, '', NULL, 'bihar', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:34:31', '2020-04-08 18:34:31', 0),
(13, NULL, 'Patna', NULL, NULL, '', NULL, 'patna', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:35:08', '2020-04-08 18:35:08', 12),
(14, NULL, 'Bhagalpur', NULL, NULL, '', NULL, 'bhagalpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:36:12', '2020-04-08 18:36:12', 12),
(15, NULL, 'Muzaffarpur', NULL, NULL, '', NULL, 'muzaffarpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:37:08', '2020-04-08 18:37:08', 12),
(16, NULL, 'Purnia', NULL, NULL, '', NULL, 'purnia', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:38:01', '2020-04-08 18:38:01', 12),
(17, NULL, 'Jharkhand', NULL, NULL, '', NULL, 'jharkhand', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:40:15', '2020-04-08 18:40:15', 0),
(18, NULL, 'Ranchi', NULL, NULL, '', NULL, 'ranchi', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:40:53', '2020-04-08 18:40:53', 17),
(19, NULL, 'Odisha', NULL, NULL, '', NULL, 'odisha', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:42:29', '2020-04-08 18:42:29', 0),
(20, NULL, 'Rourkela', NULL, NULL, '', NULL, 'rourkela', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:42:54', '2020-04-08 18:42:54', 19),
(21, NULL, 'Bhubaneswar', NULL, NULL, '', NULL, 'bhubaneswar', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:44:22', '2020-04-08 18:44:22', 19),
(22, NULL, 'Balasore', NULL, NULL, '', NULL, 'balasore', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:45:17', '2020-04-08 18:45:17', 19),
(23, NULL, 'Uttar Pradesh', NULL, NULL, '', NULL, 'uttar-pradesh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:46:00', '2020-04-08 18:46:00', 0),
(24, NULL, 'Lucknow', NULL, NULL, '', NULL, 'lucknow', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:46:31', '2020-04-08 18:46:31', 23),
(25, NULL, 'Agra', NULL, NULL, '', NULL, 'agra', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:47:08', '2020-04-08 18:47:08', 23),
(26, NULL, 'Aligarh', NULL, NULL, '', NULL, 'aligarh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:47:41', '2020-04-08 18:47:41', 23),
(27, NULL, 'Varanasi', NULL, NULL, '', NULL, 'varanasi', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:49:00', '2020-04-08 18:49:00', 23),
(28, NULL, 'Kanpur', NULL, NULL, '', NULL, 'kanpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:50:30', '2020-04-08 18:50:30', 23),
(29, NULL, 'Bareilly', NULL, NULL, '', NULL, 'bareilly', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:51:23', '2020-04-08 18:51:23', 23),
(30, NULL, 'Gorakhpur', NULL, NULL, '', NULL, 'gorakhpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:53:08', '2020-04-08 18:53:08', 23),
(31, NULL, 'Madhya Pradesh', NULL, NULL, '', NULL, 'madhya-pradesh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:53:41', '2020-04-08 18:54:40', 0),
(32, NULL, 'Indore', NULL, NULL, '', NULL, 'indore', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:54:02', '2020-04-08 18:54:02', 31),
(33, NULL, 'Bhopal', NULL, NULL, '', NULL, 'bhopal', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:55:37', '2020-04-08 18:55:37', 31),
(34, NULL, 'Jabalpur', NULL, NULL, '', NULL, 'jabalpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 18:56:22', '2020-04-08 18:56:22', 31),
(35, NULL, 'Hoshangabad', NULL, NULL, '', NULL, 'hoshangabad', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:07:01', '2020-04-08 19:07:01', 31),
(36, NULL, 'Gwalior', NULL, NULL, '', NULL, 'gwalior', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:10:01', '2020-04-08 19:10:01', 31),
(37, NULL, 'Ratlam', NULL, NULL, '', NULL, 'ratlam', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:13:35', '2020-04-08 19:13:35', 31),
(38, NULL, 'Chhattisgarh', NULL, NULL, '', NULL, 'chhattisgarh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:14:23', '2020-04-08 19:14:23', 0),
(39, NULL, 'Raipur', NULL, NULL, '', NULL, 'raipur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:14:42', '2020-04-08 19:14:42', 38),
(40, NULL, 'Maharashtra', NULL, NULL, '', NULL, 'maharashtra', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:15:56', '2020-04-08 19:15:56', 0),
(41, NULL, 'Nashik', NULL, NULL, '', NULL, 'nashik', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:16:30', '2020-04-08 19:16:30', 40),
(42, NULL, 'Dhule', NULL, NULL, '', NULL, 'dhule', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:17:21', '2020-04-08 19:17:21', 40),
(43, NULL, 'Jalgaon', NULL, NULL, '', NULL, 'jalgaon', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:18:33', '2020-04-08 19:18:33', 40),
(44, NULL, 'Jalna', NULL, NULL, '', NULL, 'jalna', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:25:08', '2020-04-08 19:25:08', 40),
(45, NULL, 'Pune', NULL, NULL, '', NULL, 'pune', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:26:28', '2020-04-08 19:26:28', 40),
(46, NULL, 'Andhra Pradesh', NULL, NULL, '', NULL, 'andhra-pradesh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:27:03', '2020-04-08 19:27:03', 0),
(47, NULL, 'Amaravati', NULL, NULL, '', NULL, 'amaravati', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:27:31', '2020-04-08 19:27:31', 46),
(48, NULL, 'Akola', NULL, NULL, '', NULL, 'akola', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:28:08', '2020-04-08 19:28:08', 40),
(49, NULL, 'Wardha', NULL, NULL, '', NULL, 'wardha', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:28:56', '2020-04-08 19:28:56', 40),
(50, NULL, 'Nagpur', NULL, NULL, '', NULL, 'nagpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:30:44', '2020-04-08 19:30:44', 40),
(51, NULL, 'Nanded', NULL, NULL, '', NULL, 'nanded', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:31:33', '2020-04-08 19:31:33', 40),
(52, NULL, 'Latur', NULL, NULL, '', NULL, 'latur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:32:12', '2020-04-08 19:32:12', 40),
(53, NULL, 'Solapur', NULL, NULL, '', NULL, 'solapur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:32:52', '2020-04-08 19:32:52', 40),
(54, NULL, 'Sangli', NULL, NULL, '', NULL, 'sangli', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:33:28', '2020-04-08 19:33:28', 40),
(55, NULL, 'Satara', NULL, NULL, '', NULL, 'satara', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:35:11', '2020-04-08 19:35:11', 40),
(56, NULL, 'Kolhapur', NULL, NULL, '', NULL, 'kolhapur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:35:49', '2020-04-08 19:35:49', 40),
(57, NULL, 'Aurangabad', NULL, NULL, '', NULL, 'aurangabad', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:36:24', '2020-04-08 19:36:24', 40),
(58, NULL, 'Ahmednagar', NULL, NULL, '', NULL, 'ahmednagar', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:37:34', '2020-04-08 19:37:34', 40),
(59, NULL, 'Goa', NULL, NULL, '', NULL, 'goa', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:38:07', '2020-04-08 19:38:07', 0),
(60, NULL, 'Panaji', NULL, NULL, '', NULL, 'panaji', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:38:30', '2020-04-08 19:38:30', 59),
(61, NULL, 'Rajasthan', NULL, NULL, '', NULL, 'rajasthan', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:47:08', '2020-04-08 19:47:08', 0),
(62, NULL, 'Bikaner', NULL, NULL, '', NULL, 'bikaner', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:47:39', '2020-04-08 19:47:39', 61),
(63, NULL, 'Jodhpur', NULL, NULL, '', NULL, 'jodhpur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:49:12', '2020-04-08 19:49:12', 61),
(64, NULL, 'Jaipur', NULL, NULL, '', NULL, 'jaipur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:50:42', '2020-04-08 19:50:42', 61),
(65, NULL, 'Punjab', NULL, NULL, '', NULL, 'punjab', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:52:01', '2020-04-08 19:52:01', 0),
(66, NULL, 'Chandigarh', NULL, NULL, '', NULL, 'chandigarh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:52:33', '2020-04-08 19:52:33', 65),
(67, NULL, 'Haryana', NULL, NULL, '', NULL, 'haryana', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:53:34', '2020-04-08 19:53:34', 0),
(68, NULL, 'Hisar', NULL, NULL, '', NULL, 'hisar', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:53:55', '2020-04-08 19:53:55', 67),
(69, NULL, 'Sirsa', NULL, NULL, '', NULL, 'sirsa', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:54:43', '2020-04-08 19:54:43', 67),
(70, NULL, 'Uttarakhand', NULL, NULL, '', NULL, 'uttarakhand', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:55:45', '2020-04-08 19:55:45', 0),
(71, NULL, 'Dehradun', NULL, NULL, '', NULL, 'dehradun', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 19:56:07', '2020-04-08 19:56:07', 70),
(72, NULL, 'Himachal Pradesh', NULL, NULL, '', NULL, 'himachal-pradesh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:42:22', '2020-04-08 21:42:22', 0),
(73, NULL, 'Shimla', NULL, NULL, '', NULL, 'shimla', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:43:06', '2020-04-08 21:43:06', 72),
(74, NULL, 'Srinagar', NULL, NULL, '', NULL, 'srinagar', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:44:27', '2020-04-08 21:44:27', 0),
(75, NULL, 'Tamil Nadu', NULL, NULL, '', NULL, 'tamil-nadu', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:45:45', '2020-04-08 21:45:45', 0),
(76, NULL, 'Chennai', NULL, NULL, '', NULL, 'chennai', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:47:15', '2020-04-08 21:47:15', 75),
(77, NULL, 'Tirunelveli', NULL, NULL, '', NULL, 'tirunelveli', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:48:14', '2020-04-08 21:48:14', 75),
(78, NULL, 'Hosur', NULL, NULL, '', NULL, 'hosur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:49:27', '2020-04-08 21:49:27', 75),
(79, NULL, 'Madurai', NULL, NULL, '', NULL, 'madurai', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:50:56', '2020-04-08 21:50:56', 75),
(80, NULL, 'Erode', NULL, NULL, '', NULL, 'erode', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:52:07', '2020-04-08 21:52:07', 75),
(81, NULL, 'Coimbatore', NULL, NULL, '', NULL, 'coimbatore', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:54:00', '2020-04-08 21:54:00', 75),
(82, NULL, 'Puducherry', NULL, NULL, '', NULL, 'puducherry', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:55:37', '2020-04-08 21:55:37', 75),
(83, NULL, 'Tiruchirappalli', NULL, NULL, '', NULL, 'tiruchirappalli', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:57:30', '2020-04-08 21:57:30', 75),
(84, NULL, 'Kerala', NULL, NULL, '', NULL, 'kerala', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-08 21:59:53', '2020-04-08 21:59:53', 0),
(85, NULL, 'Kollam', NULL, NULL, '', NULL, 'kollam', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:16:38', '2020-04-09 17:16:38', 84),
(86, NULL, 'Karnataka', NULL, NULL, '', NULL, 'karnataka', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:18:21', '2020-04-09 17:18:21', 0),
(87, NULL, 'Bengaluru', NULL, NULL, '', NULL, 'bengaluru', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:18:44', '2020-04-09 17:18:44', 86),
(88, NULL, 'Mysuru', NULL, NULL, '', NULL, 'mysuru', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:19:39', '2020-04-09 17:19:39', 86),
(89, NULL, 'Udupi', NULL, NULL, '', NULL, 'udupi', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:21:03', '2020-04-09 17:21:03', 86),
(90, NULL, 'Hubli', NULL, NULL, '', NULL, 'hubli', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:24:50', '2020-04-09 17:24:50', 86),
(91, NULL, 'Gulbarga', NULL, NULL, '', NULL, 'gulbarga', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:25:42', '2020-04-09 17:25:42', 86),
(92, NULL, 'Telangana', NULL, NULL, '', NULL, 'telangana', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:26:54', '2020-04-09 17:26:54', 0),
(93, NULL, 'Hyderabad', NULL, NULL, '', NULL, 'hyderabad', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:27:26', '2020-04-09 17:27:26', 92),
(94, NULL, 'Visakhapatnam', NULL, NULL, '', NULL, 'visakhapatnam', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:29:49', '2020-04-09 17:29:49', 46),
(95, NULL, 'Anantapur', NULL, NULL, '', NULL, 'anantapur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:32:24', '2020-04-09 17:32:24', 46),
(96, NULL, 'Nellore', NULL, NULL, '', NULL, 'nellore', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:33:09', '2020-04-09 17:33:09', 46),
(97, NULL, 'Tirupati', NULL, NULL, '', NULL, 'tirupati', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:34:05', '2020-04-09 17:34:05', 46),
(98, NULL, 'Warangal', NULL, NULL, '', NULL, 'warangal', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:35:35', '2020-04-09 17:35:35', 92),
(99, NULL, 'Assam', NULL, NULL, '', NULL, 'assam', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:37:07', '2020-04-09 17:37:07', 0),
(100, NULL, 'Guwahati', NULL, NULL, '', NULL, 'guwahati', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:37:41', '2020-04-09 17:37:41', 99),
(101, NULL, 'Nagaon', NULL, NULL, '', NULL, 'nagaon', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:38:38', '2020-04-09 17:38:38', 99),
(102, NULL, 'Darjeeling', NULL, NULL, '', NULL, 'darjeeling', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:40:50', '2020-04-09 17:40:50', 6),
(103, NULL, 'Dibrugarh ', NULL, NULL, '', NULL, 'dibrugarh', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:43:04', '2020-04-09 17:43:04', 99),
(104, NULL, 'Manipur', NULL, NULL, '', NULL, 'manipur', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:43:50', '2020-04-09 17:43:50', 0),
(105, NULL, 'Imphal', NULL, NULL, '', NULL, 'imphal', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:44:23', '2020-04-09 17:44:23', 104),
(106, NULL, 'Meghalaya', NULL, NULL, '', NULL, 'meghalaya', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:46:12', '2020-04-09 17:46:12', 0),
(107, NULL, 'Shillong', NULL, NULL, '', NULL, 'shillong', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:46:43', '2020-04-09 17:46:43', 106),
(108, NULL, 'Tripura', NULL, NULL, '', NULL, 'tripura', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:53:37', '2020-04-09 17:53:37', 0),
(109, NULL, 'Agartala', NULL, NULL, '', NULL, 'agartala', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:54:10', '2020-04-09 17:54:10', 108),
(110, NULL, 'Aizawl', NULL, NULL, '', NULL, 'aizawl', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:56:05', '2020-04-09 17:56:05', 0),
(111, NULL, 'Delhi', NULL, NULL, '', NULL, 'delhi', '', NULL, NULL, NULL, NULL, '', NULL, 1, '2020-04-09 17:57:36', '2020-04-09 17:57:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagelayouts`
--

CREATE TABLE `pagelayouts` (
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
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productfacilities`
--

CREATE TABLE `productfacilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `gallery_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `product_order` int(11) DEFAULT NULL,
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
-- Dumping data for table `productfacilities`
--

INSERT INTO `productfacilities` (`id`, `product_id`, `gallery_type`, `priority`, `product_order`, `name`, `slug`, `description`, `image`, `image2`, `image3`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `created`, `modified`) VALUES
(2, 1, 'Hospital Pics', 0, 1, 'Super potasium humate 98% shiny flacks', NULL, '<p><strong>Doses:-</strong>&nbsp;15 gm/15 ltr water, 250-300 gm/acre</p>\r\n\r\n<p><strong>Application:-&nbsp;</strong>spray, drinching, soil application</p>\r\n\r\n<p><strong>Usage:-</strong>&nbsp;seeding time, plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong>&nbsp;cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1super-potasium-humate-98-shiny-flacks.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 14:49:01', '2020-06-13 10:36:30'),
(3, 1, 'Plant Growth Promoter', 0, 2, 'Super Potasium Humate 98% Crystal', NULL, '<p><strong>Doses:- </strong>15 gm/15 ltr water, 250-300 gm/acre</p>\r\n\r\n<p><strong>Application:-</strong> spray, drinching, soil application</p>\r\n\r\n<p><strong>Usage:-</strong> seeding time, plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1super-potasium-humate-98-crystal.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:34:11', '2020-06-13 10:37:01'),
(4, 1, 'Hospital Pics', 0, 3, 'Organic seaweed extract flacks', NULL, '<p><strong>Doses:- </strong>15 gm/15 ltr water, 250-300 gm/acre</p>\r\n\r\n<p><strong>Application:-</strong> spray, drinching, soil application</p>\r\n\r\n<p><strong>Usage:-</strong> seeding time, plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1organic-seaweed-extract-flacks.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:42:08', '2020-06-13 10:37:25'),
(5, 1, 'Hospital Pics', 0, 4, 'Amino acid soya base', NULL, '<p><strong>Available:-</strong>50%, 70%, 85%</p>\r\n\r\n<p><strong>Doses:- </strong>15 gm/15 ltr water, 250-300 gm/acre</p>\r\n\r\n<p><strong>Application:- </strong>spray, drinching</p>\r\n\r\n<p><strong>Usage:-</strong> seeding time, plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1amino-acid-soya-base.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:42:56', '2020-06-13 10:37:56'),
(6, 1, 'Hospital Pics', 0, 5, 'Fulvic acid 50%, 80%', NULL, '<p><strong>Doses:-</strong> 15 gm/15 ltr water, 250-300 gm/acre</p>\r\n\r\n<p><strong>Application:- </strong>spray, drinching, soil application</p>\r\n\r\n<p><strong>Usage:-</strong> seeding time, plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1fulvic-acid-50-80.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:43:30', '2020-06-13 10:39:43'),
(7, 1, 'Hospital Pics', 0, 6, 'Humic acid 12% + amino acid 5% + fulvic 5% + seaweed 3%', NULL, '<p><strong>Doses:- </strong>30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-12-amino-acid-5-fulvic-5-seaweed-3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:44:03', '2020-06-13 10:40:08'),
(8, 1, 'Hospital Pics', 0, 7, 'Humic acid 12% + amino acid 5% + fulvic 5%', NULL, '<p><strong>Doses:-</strong> 30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-12-amino-acid-5-fulvic-5.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:44:29', '2020-06-13 10:40:34'),
(9, 1, 'Hospital Pics', 0, 8, 'Humic acid 3%', NULL, '<p><strong>Doses:- </strong>60ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-3.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:44:49', '2020-06-13 10:40:57'),
(10, 1, 'Hospital Pics', 0, 9, 'Humic acid 6%', NULL, '<p><strong>Doses:- </strong>45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-6.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:45:26', '2020-06-13 10:41:22'),
(11, 1, 'Hospital Pics', 0, 10, 'Humic acid 12%', NULL, '<p><strong>Doses:-</strong> 30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:- </strong>spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-12.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:45:48', '2020-06-13 10:41:43'),
(12, 1, 'Hospital Pics', 0, 11, 'Humic acid 18%', NULL, '<p><strong>Doses:- </strong>30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:- </strong>spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1humic-acid-18.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:46:36', '2020-06-13 10:42:10'),
(13, 1, 'Hospital Pics', 0, 12, 'Amino acid 20% + seaweed 6%', NULL, '<p><strong>Doses:- </strong>30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1amino-acid-20-seaweed-6.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:47:00', '2020-06-13 10:42:42'),
(14, 1, 'Hospital Pics', 0, 13, 'Amino acid 23%', NULL, '<p><strong>Doses:- </strong>30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1amino-acid-23.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:47:22', '2020-06-13 10:43:14'),
(15, 1, 'Hospital Pics', 0, 14, 'Liquid sulphure 20%', NULL, '<p><strong>Doses:- </strong>60ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:- </strong>spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise, sulphur can not be mixed with insecticides. So it is better to use it separately. It can be sprayed as per condition of crops.</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Helpful for nitrogen metabolism.</li>\r\n	<li>Provides one type of nutrient to plants.</li>\r\n	<li>Life plus is, great fungicide</li>\r\n	<li>Destroy kathiri</li>\r\n	<li>Life plus is fourth numbered main micronutrient after best npk, which is helpful to obviate yellow stains of crop</li>\r\n	<li>More environment-friendly</li>\r\n	<li>Get healthy food</li>\r\n	<li>Very safe for a user</li>\r\n	<li>Less soil pollution</li>\r\n	<li>Less water pollution</li>\r\n</ul>\r\n', 'img-1liquid-sulphure-20.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:47:44', '2020-06-13 10:43:38'),
(16, 1, 'Hospital Pics', 0, 15, 'Liquid sulphure 15%', NULL, '<p><strong>Doses:- </strong>75ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise, sulphur can not be mixed with insecticides. So it is better to use it separately. It can be sprayed as per condition of crops.</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Helpful for nitrogen metabolism.</li>\r\n	<li>Provides one type of nutrient to plants.</li>\r\n	<li>Life plus is, great fungicide</li>\r\n	<li>Destroy kathiri</li>\r\n	<li>Life plus is fourth numbered main micronutrient after best npk, which is helpful to obviate yellow stains of crop</li>\r\n	<li>More environment-friendly</li>\r\n	<li>Get healthy food</li>\r\n	<li>Very safe for a user</li>\r\n	<li>Less soil pollution</li>\r\n	<li>Less water pollution</li>\r\n</ul>\r\n', 'img-1liquid-sulphure-15.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:48:18', '2020-06-13 10:44:12'),
(17, 1, 'Hospital Pics', 0, 16, 'Bio zyme liquid', NULL, '<p><strong>Doses:- </strong>45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the plant size</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by</li>\r\n	<li>Improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-1bio-zyme-liquid.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 15:48:39', '2020-06-13 10:44:31'),
(18, 2, 'Hospital Pics', 0, 1, 'Nitrobenzen 20% + amino acid 9%', NULL, '<p><strong>Doses:- </strong>30-45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2nitrobenzen-20-amino-acid-9.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:02:15', '2020-06-13 10:45:16'),
(19, 2, 'Hospital Pics', 0, 2, 'Nitrobenzen 20%', NULL, '<p><strong>Doses:- </strong>30-45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:- </strong>spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2nitrobenzen-20.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:02:41', '2020-06-13 10:45:38'),
(20, 2, 'Hospital Pics', 0, 3, 'Nitrobenzen 35%', NULL, '<p><strong>Doses:- </strong>30-45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2nitrobenzen-35.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:03:04', '2020-06-13 10:45:58'),
(21, 2, 'Hospital Pics', 0, 4, 'Bio stimulant & growth promoter', NULL, '<p><strong>Doses:- </strong>30-45ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2bio-stimulant-growth-promoter.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:03:27', '2020-06-13 10:46:21'),
(22, 2, 'Hospital Pics', 0, 5, 'Nitrobenzen 50% + amino acid 20%', NULL, '<p><strong>Doses:-</strong> 15ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2nitrobenzen-50-amino-acid-20.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:03:51', '2020-06-13 10:46:41'),
(23, 2, 'Hospital Pics', 0, 6, 'Nitrobenzen 40% + amino acid 15%', NULL, '<p><strong>Doses:-</strong> 20ml/15 ltr water</p>\r\n\r\n<p><strong>Application:- </strong>spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay after fertigation,plant growth stage ,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Regulate the plant size</li>\r\n	<li>Control the plant size and make the balance of growth and flowering</li>\r\n	<li>Increase the plant branches</li>\r\n	<li>Improves root development</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>Improves the plant protection capacity and make plant healthy</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n	<li>Helps in rapid &amp; healthy growth of crops</li>\r\n	<li>Increase root respiration &amp; formation, thickens, enlarges &amp; blesses the leaf growth</li>\r\n	<li>Promoting the development of shoots &amp; roots stimulants cell division, there by improve the fruit size</li>\r\n	<li>Increases quantity and quality of yield</li>\r\n</ul>\r\n', 'img-2nitrobenzen-40-amino-acid-15.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:04:13', '2020-06-13 10:46:58'),
(24, 3, 'Hospital Pics', 0, 1, 'Flowering stimulant', NULL, '<p><strong>Doses:-</strong> 10ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:-</strong> spay at flowering stage, after flowering, and last stage of plant,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka),</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the no of flowers on plant</li>\r\n	<li>Increase the size of flowers and fruits</li>\r\n	<li>Enhancing the quantity of flowering</li>\r\n	<li>Stop the dropping of flowers</li>\r\n	<li>Increase the no of branches</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>More productivity through increasing quality flowering</li>\r\n	<li>Improves the flower quality in shining, size, and colour</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-3flowering-stimulant.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:15:02', '2020-06-13 10:48:14'),
(25, 3, 'Hospital Pics', 0, 2, 'Flowering stimulant & growth promoter', NULL, '<p><strong>Doses:-</strong> 30ml/15 ltr water</p>\r\n\r\n<p><strong>Application:-</strong> spray</p>\r\n\r\n<p><strong>Usage:- </strong>spay at flowering stage, after flowering, and last stage of plant,&nbsp; for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka),</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Increase the no of flowers on plant</li>\r\n	<li>Increase the size of flowers and fruits</li>\r\n	<li>Enhancing the quantity of flowering</li>\r\n	<li>Stop the dropping of flowers</li>\r\n	<li>Increase the no of branches</li>\r\n	<li>Improves the plants quality</li>\r\n	<li>More productivity through increasing quality flowering</li>\r\n	<li>Improves the flower quality in shining, size, and colour</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-3flowering-stimulant-growth-promoter.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:16:52', '2020-06-13 10:48:34'),
(26, 7, 'Hospital Pics', 0, 1, 'Neem coated zyme granual', NULL, '<p><strong>Doses:-</strong> 5 kg/per acre</p>\r\n\r\n<p><strong>Application:-</strong> soil conditioner</p>\r\n\r\n<p><strong>Usage:-</strong> spread in soil with mix with other fertilizer or alone at time of plant transpalant and for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, paddy, wheate, maize( makka),sugarcan,&nbsp; all vegetables and fruits, soyabean, and all other crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Root development and high growth</li>\r\n	<li>Its improves the fertility and water retension capacity of soil</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Release nutrients in plant rhizosphere thus stimulate growth of beneficial micro organisms</li>\r\n	<li>Improved fertilizer usage efficiency</li>\r\n	<li>Improved crop quality</li>\r\n	<li>Improved soil quality and make it soft</li>\r\n	<li>Improve the plant quality and giving high growth</li>\r\n	<li>Increased resistance to environment stress and pests.</li>\r\n	<li>Compatible with fertilizer and pesticides</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-7neem-coated-zyme-granual.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:19:46', '2020-06-13 10:54:42'),
(27, 7, 'Hospital Pics', 0, 2, 'Zyme granual', NULL, '<p><strong>Doses:-</strong> 10 kg/per acre</p>\r\n\r\n<p><strong>Application:- </strong>soil conditioner</p>\r\n\r\n<p><strong>Usage:- </strong>spread in soil with mix with other fertilizer or alone at time of plant transpalant and for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, paddy, wheate, maize( makka),sugarcan,&nbsp; all vegetables and fruits, soyabean, and all other crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Root development and high growth</li>\r\n	<li>Its improves the fertility and water retension capacity of soil</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Improved fertilizer usage efficiency</li>\r\n	<li>Improved crop quality</li>\r\n	<li>Improved soil quality and make it soft</li>\r\n	<li>Improve the plant quality and giving high growth</li>\r\n	<li>Increased resistance to environment stress and pests.</li>\r\n	<li>Compatible with fertilizer and pesticides</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-7zyme-granual.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:20:13', '2020-06-13 10:55:00'),
(28, 7, 'Hospital Pics', 0, 3, 'Humic amino shiny ball', NULL, '<p><strong>Doses:-</strong> 2.5 kg/per acre</p>\r\n\r\n<p><strong>Application:-</strong> soil conditioner</p>\r\n\r\n<p><strong>Usage:- </strong>spread in soil with mix with other fertilizer or alone at time of plant transpalant and for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, paddy, wheate, maize( makka),sugarcan,&nbsp; all vegetables and fruits, soyabean, and all other crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Root development and high growth</li>\r\n	<li>Its improves the fertility and water retension capacity of soil</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Improved fertilizer usage efficiency</li>\r\n	<li>Improved crop quality</li>\r\n	<li>Improved soil quality and make it soft</li>\r\n	<li>Improve the plant quality and giving high growth</li>\r\n	<li>Increased resistance to environment stress and pests.</li>\r\n	<li>Compatible with fertilizer and pesticides</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-7humic-amino-shiny-ball.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:20:30', '2020-06-13 10:55:21'),
(29, 7, 'Hospital Pics', 0, 4, 'Organic granual', NULL, '<p><strong>Doses:- </strong>2 kg/per acre</p>\r\n\r\n<p><strong>Application:-</strong> soil conditioner</p>\r\n\r\n<p><strong>Usage:-</strong> spread in soil with mix with other fertilizer or alone at time of plant transpalant and for better result use 15/20 days interval in one crop in twise</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, paddy, wheate, maize( makka),sugarcan,&nbsp; all vegetables and fruits, soyabean, and all other crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Root development and high growth</li>\r\n	<li>Its improves the fertility and water retension capacity of soil</li>\r\n	<li>Provide nutritional support to plant at critical stages of growth and enhance quality</li>\r\n	<li>Improved fertilizer usage efficiency</li>\r\n	<li>Improved crop quality</li>\r\n	<li>Improved soil quality and make it soft</li>\r\n	<li>Improve the plant quality and giving high growth</li>\r\n	<li>Increased resistance to environment stress and pests.</li>\r\n	<li>Compatible with fertilizer and pesticides</li>\r\n	<li>Eco-friendly and non-toxic</li>\r\n</ul>\r\n', 'img-7organic-granual.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:20:53', '2020-06-13 10:55:42'),
(30, 4, 'Hospital Pics', 0, 1, 'Thrips and mites control', NULL, '<p><strong>Doses:- </strong>20 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:- </strong>spray,</p>\r\n\r\n<p><strong>Usage:- </strong>at time of pest and insect attack</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>High concentration of plant alkloids and wild essential oil with necessary plant growth regulator</li>\r\n	<li>Fly over controls all types of insects like thrips, mites,</li>\r\n	<li>It also contains plant growth stimulator hence after spray plant develop its diseases resistance power</li>\r\n	<li>It will clear all types of curling on any leafs within 48 hours</li>\r\n</ul>\r\n', 'img-4thrips-and-mites-control.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:25:17', '2020-06-13 10:57:36'),
(31, 4, 'Hospital Pics', 0, 2, 'All sucking pest', NULL, '<p><strong>Doses:-</strong> 20 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:- </strong>spray,</p>\r\n\r\n<p><strong>Usage:-</strong> at time of pest and insect attack</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>High concentration of plant alkloids and wild essential oil with necessary plant growth regulator</li>\r\n	<li>Fly over controls all types of insects like thrips, mites, white fly, aphid, jassid</li>\r\n	<li>It also contains plant growth stimulator hence after spray plant develop its diseases resistance power</li>\r\n	<li>It will clear all types of curling on any leafs within 48 hours</li>\r\n</ul>\r\n', 'img-4all-sucking-pest.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:25:39', '2020-06-13 10:57:57'),
(32, 4, 'Hospital Pics', 0, 3, 'Organic pesticides neem base', NULL, '<p><strong>Doses:- </strong>30 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:- </strong>spray,</p>\r\n\r\n<p><strong>Usage:-</strong> at time of pest and insect attack</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>High concentration of plant alkloids and wild essential oil with necessary plant growth regulator</li>\r\n	<li>Fly over controls all types of insects like white fly, aphid, mealy bug</li>\r\n	<li>It also contains plant growth stimulator hence after spray plant develop its diseases resistance power</li>\r\n	<li>It will clear all types of curling on any leafs within 48 hours</li>\r\n</ul>\r\n', 'img-4organic-pesticides-neem-base.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:25:57', '2020-06-13 10:58:16'),
(33, 4, 'Hospital Pics', 0, 4, 'Bio fungicides', NULL, '<p><strong>Doses:- </strong>30 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:- </strong>spray,</p>\r\n\r\n<p><strong>Usage:- </strong>any time but not mix with pesticides, fungicides, herbicides, pgr</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<p>Control all type of fungus, leaf spot, die back</p>\r\n', 'img-4bio-fungicides.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:26:22', '2020-06-13 10:58:47'),
(34, 4, 'Hospital Pics', 0, 5, 'Bronopol liquid and powder', NULL, '<p><strong>Doses:- </strong>30 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:-</strong> spray,</p>\r\n\r\n<p><strong>Usage:- </strong>any time but not mix with pesticides, fungicides, herbicides, pgr</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<p>Control all type of bacterial diseases, black arm control, leaf blight</p>\r\n', 'img-4bronopol-liquid-and-powder.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:26:42', '2020-06-13 10:59:13'),
(35, 5, 'Hospital Pics', 0, 1, 'Bio larvicide', NULL, '<p><strong>Doses:- </strong>20 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:- </strong>spray,</p>\r\n\r\n<p><strong>Usage:- </strong>any time if larva and other insect</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<p>To control all types of larva, army worm, boll worm, root worm, pink ball warm and heliothis, spodoptera etc.</p>\r\n', 'img-5bio-larvicide.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:33:38', '2020-06-13 10:59:54'),
(36, 5, 'Hospital Pics', 0, 2, 'Bio larvicide', NULL, '<p><strong>Doses:- </strong>5 ml/15 ltr water,</p>\r\n\r\n<p><strong>Application:-</strong> spray,</p>\r\n\r\n<p><strong>Usage:-</strong> any time if larva and other insect</p>\r\n\r\n<p><strong>Crop recommanded:-</strong>brinjal, &nbsp;cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<p>To control all types of larva, army worm, boll worm, root worm, pink ball warm and heliothis, spodoptera etc.</p>\r\n', 'img-5bio-larvicide.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:33:58', '2020-06-13 11:00:14'),
(38, 9, 'Hospital Pics', 0, 1, 'SILICON  BASE SPREADER', NULL, '<p><strong>DOSES:</strong>- 5 ML/15 LTR WATER,<br />\r\n<br />\r\n<strong>APPLICATION:-</strong> SPRAY,<br />\r\n<br />\r\n<strong>USAGE:-</strong> MIXING WITH PESTICIDES, HERBICDES, FUNGICIDES, PGR AND OTHER TONIC WHEN SPRAY ON PLANT<br />\r\nCROP RECOMMANDED:- COTTON, ALL VEGETABLES,FRUITS, FLOWER, PULSES, SOYABEAN PADDY, WHEATE, MAIZE( MAKKA), SUGARCAN, AND ALL CROP<br />\r\n<br />\r\n<strong>BENEFITE:-</strong></p>\r\n\r\n<ul>\r\n	<li>Allows quick and effective distribution</li>\r\n	<li>Reduces the requirement of pesticides and fungicides</li>\r\n	<li>Promotes spray volume reduction</li>\r\n	<li>Promotes rapid uptake of agrochemicals (rainfastness)</li>\r\n	<li>Non-Ionic &amp; Non-Toxic</li>\r\n	<li>Increase water retention capacity</li>\r\n	<li>Promote rapid uptake of agrochemicals</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'img-9silicon-base-spreader.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:38:14', '2020-06-13 11:00:55'),
(40, 10, 'Hospital Pics', 0, 2, 'Npk 20:20:20', NULL, '<p><strong>Content and specification:- </strong>nitrogen 20 %,&nbsp; p2o5 20 %, k2o 20 %,&nbsp; nacl&nbsp; 0.5%, moisture 0.5%</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:-</strong> blue</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:-</strong> by spray 4-5 gm per ltr and by drip 1-2 kg per acre</p>\r\n\r\n<p><strong>Solubility:-</strong> 100%</p>\r\n\r\n<p><strong>Benefit:-</strong> helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10npk-202020.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:41:44', '2020-06-13 11:02:28');
INSERT INTO `productfacilities` (`id`, `product_id`, `gallery_type`, `priority`, `product_order`, `name`, `slug`, `description`, `image`, `image2`, `image3`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `created`, `modified`) VALUES
(41, 10, 'Hospital Pics', 0, 3, 'Calcium nitrate', NULL, '<p><strong>Content and specification:-</strong> nitrogen 15%,&nbsp; calcium (ca) 19%,&nbsp; nitrate nitrogen 14.5%,</p>\r\n\r\n<p><strong>Usage:- </strong>in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:- </strong>white granual</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p>Dose by spray 3-5 gm per ltr and by drip 2-3 kg per acre</p>\r\n\r\n<p><strong>Solubility:-</strong> 100%</p>\r\n\r\n<p><strong>Benefit:-</strong> helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10calcium-nitrate.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:42:24', '2020-06-13 11:02:50'),
(42, 10, 'Hospital Pics', 0, 4, 'Npk 13:00:45:', NULL, '<p><strong>Content and specification:- </strong>nitrogen 13 %,&nbsp; p2o5 0 %, k2o 45 %,&nbsp; moisture 0.5%</p>\r\n\r\n<p><strong>Usage:- </strong>in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:- </strong>white</p>\r\n\r\n<p><strong>Application:- </strong>spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:- </strong>by spray 7-10&nbsp; gm per ltr and by drip 4-5 kg per acre</p>\r\n\r\n<p><strong>Solubility:- </strong>100%</p>\r\n\r\n<p><strong>Benefit:- </strong>helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10npk-130045.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:45:18', '2020-06-13 11:03:12'),
(43, 10, 'Hospital Pics', 0, 5, 'Mkp 00:52:34', NULL, '<p><strong>Content and specification:-</strong> nitrogen 00 %,&nbsp; p2o5 52 %, k2o 34 %,&nbsp; moisture 0.5%</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:- </strong>white</p>\r\n\r\n<p><strong>Application:- </strong>spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:-</strong> by spray 5-6&nbsp; gm per ltr and by drip 3-4 kg per acre</p>\r\n\r\n<p><strong>Solubility:-</strong> 100%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Benefit:- </strong>helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10mkp-005234.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:45:46', '2020-06-13 11:03:33'),
(44, 10, 'Hospital Pics', 0, 6, 'Map 12:61:00', NULL, '<p><strong>Content and specification:- </strong>nitrogen 12 %, &nbsp;p2o5 61 %, k2o 00 %, nacl 0.5%&nbsp; moisture 0.5%</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:- </strong>white</p>\r\n\r\n<p><strong>Application:- </strong>spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:- </strong>by spray 5-6&nbsp; gm per ltr and by drip 3-4&nbsp; kg per acre</p>\r\n\r\n<p><strong>Solubility:- </strong>100%</p>\r\n\r\n<p><strong>Benefit:- </strong>helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10map-126100.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:46:10', '2020-06-13 11:03:56'),
(45, 10, 'Hospital Pics', 0, 7, 'Sop 00:00:50 (sulphate of potas)', NULL, '<p><strong>Content and specification:- </strong>nitrogen 00 %,&nbsp; p2o5 00 %, k2o 50 %,&nbsp; moisture 0.5%</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:-</strong> white</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:-</strong> by spray 8-12&nbsp; gm per ltr and by drip 6-7 kg per acre</p>\r\n\r\n<p><strong>Solubility:-</strong> 100%</p>\r\n\r\n<p><strong>Benefit:- </strong>helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10sop-000050-sulphate-of-potas.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:46:35', '2020-06-13 11:04:13'),
(46, 10, 'Hospital Pics', 0, 8, 'Npk 13:40:13', NULL, '<p><strong>Content and specification:- </strong>nitrogen 13 %,&nbsp; p2o5 40 %, k2o 13 %,&nbsp; moisture 0.5%</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Color:- </strong>white</p>\r\n\r\n<p><strong>Application:- </strong>spray, drip irrigation</p>\r\n\r\n<p><strong>Dose:- </strong>by spray 7-10 gm per ltr and by drip 6-7 kg per acre</p>\r\n\r\n<p><strong>Solubility:-</strong> 100%</p>\r\n\r\n<p><strong>Benefit:- </strong>helps in rapid &amp; healthy growth of crops, recovers nutritional deficiencies in short time, helps early &amp; uniform flowering, prevents flower &amp; fruit drop, increases resistance against disease, hence reduce cost of pesticides, ultimately results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n', 'img-10npk-134013.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:46:57', '2020-06-13 11:04:28'),
(47, 11, 'Hospital Pics', 0, 2, 'Ferrous(iron)Â  12% edata', NULL, '<p><strong>Doses:- </strong>2-3 gm/1 ltr</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Better absorption of nourishing elements either placed near root zone or applied as foliar spray</li>\r\n	<li>Provides healthy growth to plant and maximum yield to crop.</li>\r\n	<li>Increment in crop yield by 15-20%</li>\r\n	<li>Sustainablity of crops due to consistent availability of all essential growth nutrients</li>\r\n	<li>Speedy growth of crops</li>\r\n	<li>Helpful to enhance the immunity system of crop</li>\r\n	<li>Lower consumption of water for crop irrigation</li>\r\n	<li>It prevents drainage of water</li>\r\n	<li>Reduces weed problem farming expenses</li>\r\n</ul>\r\n', 'img-11ferrousiron-12-edata.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:58:39', '2020-06-13 11:06:19'),
(48, 11, 'Hospital Pics', 0, 3, 'Magnesium sulphate 6% edata', NULL, '<p><strong>Doses:- </strong>2-3 gm/1 ltr</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Better absorption of nourishing elements either placed near root zone or applied as foliar spray</li>\r\n	<li>Provides healthy growth to plant and maximum yield to crop.</li>\r\n	<li>Increment in crop yield by 15-20%</li>\r\n	<li>Sustainablity of crops due to consistent availability of all essential growth nutrients</li>\r\n	<li>Speedy growth of crops</li>\r\n	<li>Helpful to enhance the immunity system of crop</li>\r\n	<li>Lower consumption of water for crop irrigation</li>\r\n	<li>It prevents drainage of water</li>\r\n	<li>Reduces weed problem farming expenses</li>\r\n</ul>\r\n', 'img-11magnesium-sulphate-6-edata.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:58:56', '2020-06-13 11:06:35'),
(49, 11, 'Hospital Pics', 0, 4, 'Zinc 12% edata', NULL, '<p><strong>Doses:- </strong>2-3 gm/1 ltr</p>\r\n\r\n<p><strong>Application:- </strong>spray, drip irrigation</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Better absorption of nourishing elements either placed near root zone or applied as foliar spray</li>\r\n	<li>Provides healthy growth to plant and maximum yield to crop.</li>\r\n	<li>Increment in crop yield by 15-20%</li>\r\n	<li>Sustainablity of crops due to consistent availability of all essential growth nutrients</li>\r\n	<li>Speedy growth of crops</li>\r\n	<li>Helpful to enhance the immunity system of crop</li>\r\n	<li>Lower consumption of water for crop irrigation</li>\r\n	<li>It prevents drainage of water</li>\r\n	<li>Reduces weed problem farming expenses</li>\r\n</ul>\r\n', 'img-11zinc-12-edata.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:59:14', '2020-06-13 11:06:53'),
(50, 11, 'Hospital Pics', 0, 5, 'Copper sulphate 12% edata', NULL, '<p><strong>Doses:- </strong>2-3 gm/1 ltr</p>\r\n\r\n<p><strong>Application:-</strong> spray, drip irrigation</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by spray or drip irrigation</p>\r\n\r\n<p><strong>Crop recommanded:- </strong>cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Control fungus on grapes, melons, and other berries</li>\r\n	<li>As a non-agricultural herbicide, is it used to control invasive aquatic plants and the roots of plants situated near water pipes</li>\r\n	<li>Is used in horticulture to prevent damping off in seedlings</li>\r\n</ul>\r\n', 'img-11copper-sulphate-12-edata.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:59:34', '2020-06-13 11:07:09'),
(51, 11, 'Hospital Pics', 0, 6, 'Mix micronutrient', NULL, '<p><strong>Doses:-</strong> 20 kg/acre</p>\r\n\r\n<p><strong>Application:- </strong>soil application</p>\r\n\r\n<p><strong>Usage:-</strong> in agriculture by soil</p>\r\n\r\n<p><strong>Crop recommanded:-</strong> cotton, all vegetables,fruits, flower, pulses, soyabean paddy, wheate, maize( makka), sugarcan, and all crop</p>\r\n\r\n<p><strong>Benefite:-</strong></p>\r\n\r\n<ul>\r\n	<li>Offers supply of important five essential micronutrients together in optimum does to crops</li>\r\n	<li>Helps to prevent mix crop deficiencies in different forms occurred gradually at different growth stages of crops and thus prevents loss of yield that may occur due to these mix crop deficiencies.</li>\r\n	<li>Chelated with advance chelating agent ca and thus assures fast absorption of all individual micro elements in to plants.</li>\r\n	<li>Mix micro nutrients fertilizer products have a neutral ph and are low in both salt index and impurities</li>\r\n	<li>Micronutrients along with the available phosphorus and potassium to be taken up at the critical early stages of growth to maximize yield potential</li>\r\n	<li>This rapid uptake at critical growth stages promotes plant health and increased yield potential.</li>\r\n	<li>It can be applied for critical early stages of growth.</li>\r\n</ul>\r\n', 'img-11mix-micronutrient.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 16:59:58', '2020-06-13 11:07:30'),
(52, 6, 'Hospital Pics', 0, 1, 'Acetamiprid 20% sp', NULL, '<p><strong>Dosage: </strong>50 to 100 gm/acre</p>\r\n\r\n<p>Due to identical translaminar properties of adeen-20 it reaches every part of the plants and controls even hidden pest. Adeen-20 is highly effective in controlling growth of ahip, jassid thrips and white fly. Adeen-20 belongs to neonicotinoid chemical group, hence it is effective over long duration.</p>\r\n\r\n<p><strong>Packing :- </strong>500 gm, 100 gm, 250 gm, 250 gm, 500 gm</p>\r\n', 'img-6acetamiprid-20-sp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:07:53', '2020-06-13 11:08:17'),
(53, 6, 'Hospital Pics', 0, 2, 'Buprofezin 25% sc', NULL, '<p><strong>Dosage:</strong> 2 to 2.5 ml /1 ltr</p>\r\n\r\n<p>Buprowin (buprofezin 25% sc) is a broad spectrum insecticide of thiadiazine group, which acts by controlling the growth rate of insect. It controls sucking insects in paddy fields, cotton, tea, cucumber, tomato, citrus and oilseeds etc and other crops for brown plant hopper, green plant hopper, other hoppers. It is to be used in accordance with climatic condition and approval of local authorities. Buprowin is a broad spectrum insecticide of thiadiazine group, which acts by controlling the growth rate of insect. It controls sucking insects in paddy fields, cotton, tea, cucumber, tomato, citrus and oilseeds etc.</p>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6buprofezin-25-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:08:14', '2020-06-13 11:08:37'),
(54, 6, 'Hospital Pics', 0, 3, 'Emamectin benzoate 1.9% ec', NULL, '<p><strong>Dosage: </strong>1.33 ml/ 1 ltr</p>\r\n\r\n<p>This product is insecticide and acaricide with low toxicity, no poiiution, no residue, widepest control spectrum, has high efficacy of bio-insecticide , suitable for vegetable of the mustard family.</p>\r\n\r\n<p>Its action mechanism is to intensify the effect of neurotransmitter, such as, glutamate and amino butyric acid, make the latter lose function and disturb neurotransmission, after contacting the chemical quickly stop</p>\r\n\r\n<p>Chancelor emamectin benzoate 1.9% ec</p>\r\n\r\n<p><strong>Packing:- </strong>50 ml, 100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6emamectin-benzoate-19-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:08:42', '2020-06-13 11:08:56'),
(55, 6, 'Hospital Pics', 0, 4, 'Emamectine benzoate 5% sg', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<p>Emamectin benzoate 5%&nbsp;sg. An insecticide of biological origin used to control lepidopteran pests, with stomach action. The product is most effective when ingested by larvae. The affected larva gets paralysed, stops feeding shortly thereafter and and is killed within 2-4 days.</p>\r\n\r\n<p><strong>Packing:- </strong>10 gm, 100 gm, 250 gm, 500 gm</p>\r\n', 'img-6emamectine-benzoate-5-sg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:09:03', '2020-06-13 11:12:12'),
(56, 6, 'Hospital Pics', 0, 6, 'Cartap hydrochloride 4% gr', NULL, '<p><strong>Dosage:</strong> 5 to 10 kg/acre</p>\r\n\r\n<p>Carbo-4g is a broad spectrum systematic insecticides with contact and stomach action. Insect discontinue feeding and die due to starvation. It is used to control of chewing and sucking insect at almost all the stage of development on many crop including rice, maize, potato, cabbage and other vegetables, soybean, peanuts, sunflower, sugarneet, wheat, pearl barley, pome fruits, stone fruits, citrus fruit, vines, chestnuts, ginger, tea, cotton, and sugarcane. It is to be used in accordance with climatic condition and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:-</strong>1 kg, 5 kg</p>\r\n', 'img-6cartap-hydrochloride-4-gr.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:09:18', '2020-06-13 12:48:53'),
(57, 6, 'Hospital Pics', 0, 7, 'Chlorpyriphose 20% ec', NULL, '<p><strong>Dosage:- </strong>2 to 2.5 ml/1 ltr</p>\r\n\r\n<p>Chlorwin (chlorpyriphos 20&deg;/o ec) insecticides. These insecticides are approved for pre and post construction termite control and also used to control coleoptra, dipteral, homopetra and lepidoptera in soil and foliage in crops like rice, cotton, oilseeds, pulses, vegetables, etc. Offered insecticides have accurate ph value, longer shelf life and safe &amp; effective usage. These chlorwin (chlorpyriphos 20&deg;/o ec) insecticides are packed in air tight packing to retain their longer shelf life.</p>\r\n\r\n<p><strong>Packing:-</strong> 100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6chlorpyriphose-20-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:09:34', '2020-06-13 11:15:34'),
(58, 6, 'Hospital Pics', 0, 8, 'Chlorpyriphose 50% ec', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<p>Is an insecticide that cures pink boll, spotted boll worms, american boll worms, aphids, jassids, thrips &amp; white fly detailed description spine 505 (chlorpyriphos 50%) is an insecticide that cures pinkboll worms, spotted boll worms, american boll worms &amp; sucking insects like aphids, jassid, th rips, whiteflies on various crops viz cotton, ornamentals, citrus, pear, apple, peach, apricoat, grapes etc. It should be used in accordance with climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:-</strong> 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6chlorpyriphose-50-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:09:54', '2020-06-13 11:16:03'),
(59, 6, 'Hospital Pics', 0, 9, 'Cypermethrin 25% ec', NULL, '<p><strong>Dosage:</strong> 2 to 2.5 ml per 1 ltr</p>\r\n\r\n<p>Cypewin is a non systemic, contact and stomach controls bollworms, borers, and diamond black moth etc of various crops like, cotton detailed description cypewin (cypermethrin 25% ec) is a non systemic, contact and stomach emulsifiable concentrate formulation based on cypermethrin techenical 2so/ow/w ec and controls bollworms, borers, and diamond black moth etc of various crops like, cotton, wheat, oilseeds, sugarcane, vegetables, coffee, caeca, paddy etc in accordance with climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:-</strong> 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6cypermethrin-25-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:10:14', '2020-06-13 11:16:25'),
(60, 6, 'Hospital Pics', 0, 10, 'Chlorpyriphose 50% + cypermethrin 5% ec', NULL, '<p><strong>Dosage:</strong> 2.3 to 3 ml per 1 ltr</p>\r\n\r\n<p>Combo-505 is an insecticide that cures pink boll, spotted boll worms, american boll worms, aphids, jassids, thrips &amp; white fly detailed description spine 505 (chlorpyriphos 50% + cypermethrin 5% ec) is an insecticide that cures pinkboll worms, spotted boll worms, american boll worms &amp; sucking insects like aphids, jassid, th rips, whiteflies on various crops viz cotton, ornamentals, citrus, pear, apple, peach, apricoat, grapes etc. It should be used in accordance with climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:-</strong> 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6chlorpyriphose-50-cypermethrin-5-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:10:29', '2020-06-13 11:16:54'),
(61, 6, 'Hospital Pics', 0, 11, 'Diafenthiuron 50% wp', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Diron is an insecticide, acaricide, miticide, effective against phytophagous mites and other sucking pests like aphids; whiteflies; spidermites; diamondback moth; thrips; jassids.</li>\r\n	<li>Can be used in crops like cotton; fruit trees; ornamentals; soybeans.</li>\r\n	<li>It is a broad spectrum, contact and stomach action with some ovicidal activity, acts by inhibiting oxidative phosphorylation which in turn controls nymphs and adults resulting in more flexible application timing and longer lasting control.</li>\r\n	<li>Diron is selective to beneficial insects and predatory mites and is therefore useful in ipm programs.</li>\r\n	<li>Diron synthetic origin and thiourea substance group, which degrades into a urea derivative resulting in a phytotonic effect.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>250 gm, 500 gm</p>\r\n', 'img-6diafenthiuron-50-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:10:47', '2020-06-13 11:17:17'),
(62, 6, 'Hospital Pics', 0, 12, 'Ethion 50% ec', NULL, '<p><strong>Dosage:-</strong></p>\r\n\r\n<p>Its a contact insecticides, control to thrips, pinkmite, purpil mite, scarlet mite, red spider mite, aphid, caterpillar, helopelits. Use in cotton, chilli, gram, tea, soybean</p>\r\n\r\n<p><strong>Packing: </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6ethion-50-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:11:06', '2020-06-13 11:17:48'),
(63, 6, 'Hospital Pics', 0, 14, 'Fipronil 4% + acetamiprid 4% sc', NULL, '<p><strong>Directions of Use : </strong>Take as per required quantity dilute with little water and stir continuously. Then add the remaining amount of water as per spray volume required and mix well again by stirring. Use Foliar Sprayer. Control to Aphids, Jassids, Whiteflies.</p>\r\n', 'img-6fipronil-4-acetamiprid-4-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:11:31', '2020-06-13 11:59:33'),
(64, 6, 'Hospital Pics', 0, 17, 'Lambda cyhalothrin 4.9% cs', NULL, '<p><strong>Dosage: </strong>2 to 2.5 ml per 1 ltr</p>\r\n\r\n<p>Lambda gold is a new generation synthetic pyrethroid insecticide which has stomach and contact action on insect pests. It is used for control of wide range of pests in variety of crops. It may also be used in public health applications to control insects such as cockroaches, mosquitoes, ticks and flies. It has quick knockdown effect on insect with highly effectiveness against target pests. It is broad spectrum pest control and it used for control of insect pest in public health.</p>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6lambda-cyhalothrin-49-cs.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:11:48', '2020-06-13 11:23:53'),
(65, 6, 'Hospital Pics', 0, 19, 'Profenofos 40% + cypermethrin 4% ec', NULL, '<p><strong>Dosage: </strong>150 to 200 ml/acre</p>\r\n\r\n<p>Keeping in mind diverse requirements of our clients we are involved in offering a wide range of (prowin-404)&nbsp;profenofos 40% + cypermethrin 4%ec&nbsp;offered products are highly acknowledged among our customers for their longer shelf life and zero side effects and superior quality. These are widely used for killing insects which harm the crops and plants. We also assure safe and timely delivery of our products.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6profenofos-40-cypermethrin-4-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:12:08', '2020-06-13 11:25:14'),
(66, 6, 'Hospital Pics', 0, 21, 'Fipronil 0.3% gr.', NULL, '<p><strong>Mode of action&nbsp; :&nbsp;</strong>stomach and contact<br />\r\n<strong>major crops&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</strong>sugarcane, rice, cabbage, chilli, cotton,&nbsp;ants, beetles,&nbsp; cockroaches, fleas, ticks,&nbsp; &nbsp;&nbsp;<br />\r\n<strong>target pests&nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;</strong>stem borer, early shoot borer, bph, glh, leaf folder, rice gall midge, white, backed,plant hopper, dbm, chilli- thrips, aphid,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fruit borers, bollworms</p>\r\n\r\n<p><strong>Packing:-</strong> 1 kg, 5 kg</p>\r\n', 'img-6fipronil-03-gr.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:12:33', '2020-06-13 12:50:38'),
(67, 6, 'Hospital Pics', 0, 23, 'Imidacloprid 30.5% sc', NULL, '<p><strong>Dosage:</strong> 8 ml to 10 ml/15 ltr</p>\r\n\r\n<p>To furnish diverse requirements of our clients in best possible manner we are offering an ample range of (renda super) imidacloprid 30.5% s.c. offered products are widely used for various types of crops and are highly reckoned among our clients due to their effective results. These are chemically stable in nature and are in compliance with the industrial quality standards. Besides this, we also assure to deliver our products in a stipulated time period. Renda super control of thrips, jassid and aphid.it is used in cotton paddy, vegetables and other pulses crops.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6imidacloprid-305-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:12:50', '2020-06-13 11:28:48'),
(68, 6, 'Hospital Pics', 0, 24, 'Imidacloprid 70% wg', NULL, '<p><strong>Dosage: </strong>10 to 12 gm/15 ltr</p>\r\n\r\n<p>Renda gold (imidacloprid 70% wg) is a systemic insecticide which contains 70&deg;/ow/w imidaclorpid as active ingredient used as foilar spray for the control of sucking insects, including leaf/plant hoppers, aphids, thrips and white flies brown plant hopper and white backed plant hopper. It is also effective against soil insects, termites &amp; some species of biting insects. It is used as seed dressing, as soil treatment and as foilar treatment in different crops such such as rice, cotton, cereals, maize, sugarbeats, potatoes, vegetables, citrus fruits, pome fruits and stone fruits etc in accordance with the climatic condition and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:- </strong>5 gm, 30 gm, 75 gm, 150 gm</p>\r\n', 'img-6imidacloprid-70-wg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:13:10', '2020-06-13 11:29:26'),
(69, 6, 'Hospital Pics', 0, 25, 'Dimethoate 30% ec', NULL, '<p><strong>Dosage: </strong>2 to 2.5 ml per 1 ltr</p>\r\n\r\n<p>Rogowin is a sytemic insecticide used on various pests of various crop viz cereals, pulses, sugarcane, fibre, fruits rogowin is a cost effective systemic insecticide containing 300g/l dimethoated tech. As active ingredient. It can be used upon various crops, paddy, pulses, sugarcan, cotton, ground nut, mustered, vegetable, fruits, olives, beetroot, patato, tea, tabacco, ornamental, grapes, citrus etc. To control apphids, jassid, thrips, bolworms, shoot borer, fruit borer, stem borer, pod borer, leaf hopper, weevils, scales, mealy bug, bugs, white glies, mites, midges, leaf minor, etc, in accordance withthe climatic condition and approval of local authorities. Also used for control of household pest, mosquitoes and animal houses.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6dimethoate-30-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:13:28', '2020-06-13 11:31:04'),
(70, 6, 'Hospital Pics', 0, 26, 'Thimethoxam 25% wg', NULL, '<p><strong>Dosage:</strong> 8 to 10 gm/15 ltr</p>\r\n\r\n<p>Voltara (thiamethoxam 25&deg;/owg) is a broad spectrum, systemic insecticide with quick contact and stomach action. Rapidly taken up into the plants and transported acropetally in the xylem. It is a soluable powder containing 250gms thiarnethoxarn a.i. And balance adjuvants. It used to control aphids, jassids, white flies, th rips, ricehoppers, ricebugs, mealybugs, white grubs, wireworms, ground , leaf minors, etc by foliar and soil treatments on a vide range of crops viz cole crops, leafy and fruity vegetables, potatos, rice, cotton, deciduous fruits, coffee, tea, citrus fruits, soya beens. For seed treatment use maize, sorghum cereals, sugarbeet, oilseeds, sunflower, it should be used in accordance with climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:- </strong>10 gm, 100 gm, 250 gm, 500 gm</p>\r\n', 'img-6thimethoxam-25-wg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:13:43', '2020-06-13 11:31:46'),
(71, 6, 'Hospital Pics', 0, 27, 'Thimethoxam 30% fs', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Voltara fs is an improved, user-friendly seed treatment formulation containing the systemic insecticide thiamethoxam .</li>\r\n	<li>The systemic activity and the relatively low rate of application makes it user friendly for seed dressing.</li>\r\n	<li>Nilaayan provides protection to the crop against highly damaging sucking pests from day 1 up to 30&ndash;40 days, thus eliminating the need of repeated sprays.</li>\r\n	<li>Voltara fs is also very effective against white grub.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6thimethoxam-30-fs.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:14:03', '2020-06-13 11:32:11'),
(72, 6, 'Hospital Pics', 0, 28, 'Bifenthrin 10%', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<p>Volstar is a worls renowned, new generation, board spectrum insecticide of pyrethroid ested group. Volstart through its contact and stomach action controls different types of larvae, white fly, mites and jasside very effectively. Volstart has phto tonic effect which improves the vigour and keepthe crop healthy, thereby quality produce.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6bifenthrin-10.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:14:21', '2020-06-13 11:32:37'),
(73, 6, 'Hospital Pics', 0, 29, 'Profenophos 50% ec', NULL, '<p><strong>Dosage:</strong> 400 ml to 800 ml/acre</p>\r\n\r\n<p>Volscron-50 is sprayed on leafs, it affects stomach of pest and worms. It is effective from primary stage of growth of sucking pests such as aphid, jassid, malo mite, white fly, and thrips. By virtue of its effectiveness, volscron-50 spreads on both sides of the leaf and does not get washed away in rain</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6profenophos-50-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:14:46', '2020-06-13 11:32:59'),
(74, 6, 'Hospital Pics', 0, 5, 'Cartap hydrochloride 50% sp', NULL, '<h4><strong>Dosage:- </strong>100 gm to 150 gm/acre</h4>\r\n\r\n<p>Our organization has successfully expanded its business in market owing to the offered elevated quality array of (carbo-50)&nbsp;cartap hydrochloride 50% sp. These are formulated by our experienced professionals using quality assured chemicals and advanced techniques that ensure their excellent quality. In addition to this, these are highly praised for the effectiveness and are also free from side effects. It controls green worm and gabhamara worm among vegetable and other crops.it effectively removes leaf curling insects, such as mole mite, thrips, white fly</p>\r\n\r\n<p><strong>Packing:- </strong>100 gm, 250 gm , 500 gm</p>\r\n', 'img-6cartap-hydrochloride-50-sp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:20:24', '2020-06-13 11:14:39'),
(75, 6, 'Hospital Pics', 0, 13, 'Ethion 40% + cypermethrin 5% ec', NULL, '<h4><strong>Dosage:</strong> 2 ml per 1 ltr</h4>\r\n\r\n<ul>\r\n	<li>Effective insecticide for borer &amp; mites</li>\r\n	<li>Gives better control for all stages of borer other than stem borer</li>\r\n	<li>Ideal for one round of application during crop season</li>\r\n</ul>\r\n\r\n<p><strong>Packing:</strong>- 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6ethion-40-cypermethrin-5-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:29:44', '2020-06-13 11:18:59'),
(76, 6, 'Hospital Pics', 0, 16, 'Lambda cyhalothrin 5% ec', NULL, '<h4><strong>Dosage:</strong> 2 to 2.5 per 1 ltr</h4>\r\n\r\n<p>Lambdawin (lambdacyhalothrin 5&deg;/o ec ) is new generation photostable pyrethroid insecticide used as broad spectrum for control of wide range of pests in variety of applications. Pests controlled include aphids, colorado and butterfly larvae, jassids, thrips, stem borer, fruit borer, leaf folder, green leaf hopper, gall midge, his pa, brown plant hopper and white backed plant hopper, whril maggot etc .. Crops on which it may be applied include cotton, cereals, hops, ornamentals, potatoes, vegetables, rice, egg-plants, and, others. It is an excellent cost-effective crop protection insecticide which can be used in both preventative and curative control strategies as well as in integrated pest management. It may also be used in public health applications to control insects such as cockroaches, mosquitoes, ticks and flies, which may act as disease vectors. The application of this insecticide depends upon climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing : </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6lambda-cyhalothrin-5-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:46:00', '2020-06-13 11:23:19'),
(77, 6, 'Hospital Pics', 0, 18, 'Thiamethoxam 12.6% + lambda cy. 9.5% zc', NULL, '<h4><strong>Dosage:</strong></h4>\r\n\r\n<ul>\r\n	<li>Laxam is combination insecticide able to control jassids, thrips &amp; bollworm in cotton.</li>\r\n	<li>Laxam act as quick stomach &amp; contact insecticides.</li>\r\n	<li>Laxam&nbsp; has advance zc formulation.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong>&nbsp;20 ml, 100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6thiamethoxam-126-lambda-cy-95-zc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:49:03', '2020-06-13 11:24:38'),
(78, 6, 'Hospital Pics', 0, 20, 'Fipronil 5% sc', NULL, '<h4><strong>Dosage: </strong>2 to 2.5 ml per 1 ltr</h4>\r\n\r\n<p>Being the leading names in industry we are engaged in offering a wide range of (replex) fipronil 5% s.c. offered products are available in accurate compositions and are used for various types of plants for killing worms and pests. These are formulated by highly skilled professionals using quality chemicals and ingredients as per the set industrial standards and norms. We offer our products in the market at very economical prices.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6fipronil-5-sc.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:50:18', '2020-06-13 11:25:48'),
(79, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-06-06 17:50:58', '2020-06-06 17:50:58'),
(80, NULL, '', 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-06-06 17:52:15', '2020-06-06 17:52:15'),
(81, 6, 'Hospital Pics', 0, 22, 'Imidacloprid 17.8% sl', NULL, '<h4><strong>Dosage: </strong>80 to 120 ml/acre</h4>\r\n\r\n<p>We are counted amongst the leading companies involved in offering a wide assortment of&nbsp;imidacloprid 17.8% sl. Offered products are very effective are highly acknowledged among our patrons due to their precise composition. These are developed under the strict guidance of our professionals using quality assured ingredients and advanced methods. In addition, we offer our products at very feasible prices to meet the market demand. Renda is a superior insecticide, controls dolomites, whitefly and its kind hemipteran pest over a long duration.a spray of renda immediately takes effect on plants and controls sucking pest.</p>\r\n\r\n<p><strong>Packing:- </strong>100 ml, 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-6imidacloprid-178-sl.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 17:56:10', '2020-06-13 11:27:55'),
(82, 12, 'Hospital Pics', 0, 2, 'Butachoir 50% ec', NULL, '<p><strong>Dosage:</strong> 10 to 12 ml per ltr</p>\r\n\r\n<p>Butroxx (butachlor 50%ec) is selective, systemic pre-emergent herbicide absorbed by germinating shoots, roots with translocation throughout plants, giving higher concentration in vegetative parts than in reproductive parts. It is used for pre-emergence control of most annual grasses, certain broad leaf weeds in seeded and transplanted rice grown in africa, asia, europe, south america. It shows selectivity in barley, cotton, peanuts, sugarbeet, wheat and several brassica crops. It should be used in accordance with climatic conditions and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-12butachoir-50-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:02:40', '2020-06-16 15:24:27'),
(83, 12, 'Hospital Pics', 0, 3, 'Clodinafop-propargyl 15% wp', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Clodiwin is a selective, post emergence systemic herbicide. Consistent activity under a wide range of environmental conditions.</li>\r\n	<li>Clodiwin and its active ingredients are absorbed through in the leaves and shoots of actively growing plants. They are rapidly translocated in the plants and accumulate in the meristematic tissues.3.</li>\r\n	<li>Within 48 hours after application, susceptible grass species cease to grow. Weed completely dries up in 3 weeks.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>20 g*8=160 gm</p>\r\n', 'img-12clodinafop-propargyl-15-wp.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:02:59', '2020-06-16 15:24:48'),
(85, 12, 'Hospital Pics', 0, 5, 'Pendimithalin 30% ec', NULL, '<p><strong>Dosage: </strong>1 ltr/acre</p>\r\n\r\n<ul>\r\n	<li>Lopen-30 is an herbicide of the dinitroaniline class used in premergence and post-emergence applications to control annual grasses and certain broad leaf weeds.</li>\r\n	<li>Lopen-30 acts both pre-emergence, that is before weed seedlings have emerged, and early post-emergence.</li>\r\n	<li>Lopen-30 inhibits root and shoot growth. It controls the weed population and prevents weeds from emerging.</li>\r\n	<li>Its primary mode of action is to prevent plant cell division and elongation in susceptible species.</li>\r\n	<li>Lopen-30 protects crops like wheat, corn, soybeans potatoes, cabbage, peas, carrots and asparagus from unwanted plants.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong> 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-12pendimithalin-30-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:03:38', '2020-06-13 11:35:28'),
(86, 12, 'Hospital Pics', 0, 6, 'Pendimithalin 38.7% cs', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Cs formulation helps to control weed more effectively.</li>\r\n	<li>Lopen super is selective herbicides for use in soyabean, cotton and chilly where it controls susceptible annual grasses and broad leaf weed as they germinated.</li>\r\n	<li>Advance capsule suspension gives more efficient result.</li>\r\n	<li>Lopen super is water based product so it is safe for soil, crop and environment</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>350 ml, 700 ml</p>\r\n', 'img-12pendimithalin-387-cs.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:03:54', '2020-06-13 11:35:50'),
(87, 12, 'Hospital Pics', 0, 7, 'Metribuzin 70% wp', NULL, '<p><strong>Dosage: </strong>3 to 4 gm per 1 ltr</p>\r\n\r\n<ul>\r\n	<li>Metreewin is a selective systemic herbicide, absorbed predominantly by the roots and by the leaves, with translocation to the xylem.</li>\r\n	<li>It inhibits photosynthesis and it acts on both grasses and broad leaf weeds.</li>\r\n	<li>It is a pre-emergent herbicide and can also be applied as early post, which effectively controls weeds in wheat, potato, soybean, tomato and sugarcane</li>\r\n</ul>\r\n\r\n<p><strong>Packing:</strong> 100 gm, 250 gm, 500 gm</p>\r\n', 'img-12metribuzin-70-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:04:12', '2020-06-13 11:36:11'),
(88, 12, 'Hospital Pics', 0, 8, 'Metsulfuron methyl 20% wp', NULL, '<p><strong>Dosage:</strong> 8 gm/75 to 120 ltr</p>\r\n\r\n<ul>\r\n	<li>Metsulfuron-methyl is a residual sulfonylurea compound used as a selective pre-emergence and post emergence herbicide for broad leaf weeds and some annual grasses especially in wheat crop.</li>\r\n	<li>It is a systemic compound with foliar and soil activity, and it works rapidly after it is taken up by the plant.</li>\r\n	<li>Its mode of action is by inhibiting cell division in the shoots and roots of the plant</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong> 8gm+200 ml</p>\r\n', 'img-12metsulfuron-methyl-20-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:04:28', '2020-06-13 11:36:41'),
(89, 12, 'Hospital Pics', 0, 9, 'Oxyfluorfen 23.5% ec', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Oxyywin is a herbicide of the diphenyl-ether group used for selective weed control in a wide range of fruit trees, vegetables, field crops, ornamentals, forestry, sugarcane and non-crop areas.</li>\r\n	<li>Oxyywin controls a wide spectrum of annual broad leaf and grass weeds.</li>\r\n	<li>Oxyywin is used in pre-plant, pre-emergence and post-emergence applications.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Oxyywin has prolonged residual activity and shows negligible leaching. Minimal rain or irrigation is necessary to activate the residual effect.</li>\r\n	<li>It can be used with spendiko.</li>\r\n	<li>Oxyywin is a selective herbicide.</li>\r\n	<li>It controls many annual broad-leaf weeds, some grasses and provides suppression of some perennials.</li>\r\n	<li>Low concern for persistence or carry-over in soil (half-life in soil is approximately 30-40 days).</li>\r\n	<li>It is strongly adsorbed to soil and is not readily desorbed.</li>\r\n	<li>It has no known cases of weed resistance to date.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>25 ml, 50 ml, 100 ml, 250 ml</p>\r\n', 'img-12oxyfluorfen-235-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:04:46', '2020-06-13 11:37:02'),
(90, 12, 'Hospital Pics', 0, 10, 'Pretilachlor 50% ec', NULL, '<p><strong>Dosage:</strong> 2 to 3 ml per ltr</p>\r\n\r\n<p>Pritiwin (pretilachlor 50&deg;/o ec) is a selective systemic herbicide, absorbed primarily by the germinating shoots, and secondarily by the roots, with trans location throughout the plant, giving higer concentrations in vegetative parts than in reproductive parts. Used pre-emergence for the control of annual grasses and certain broad leaved weeds in rice, both seeded and transplanted fields. It shows selectivity in barley, cotton, peanuts, sugar beet, wheat and several brassica crops. It is to be used in accordance with climatic condition and approval of local authorities.</p>\r\n\r\n<p><strong>Packing:-</strong> 250 ml, 500 ml, 1 ltr</p>\r\n', 'img-12pretilachlor-50-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:05:00', '2020-06-13 11:37:27'),
(91, 12, 'Hospital Pics', 0, 11, 'Paraquate dichloride 24% sl', NULL, '<p><strong>Dosage: </strong>4 t0 7 ml per ltr</p>\r\n\r\n<ul>\r\n	<li>Remowin is a non-selective contact herbicide, it only controls the foliage part of weeds, thus promoting intact roots and preventing soil erosion.</li>\r\n	<li>Paraquat acts in the presence of light to desiccate the green parts of all plants with which it comes into contact.</li>\r\n	<li>The leaves becomes dry, yellow or brown within hours of its application. Light, oxygen and chlorophyll are therefore all required for the rapid and characteristic herbicidal effects of remowin herbicide.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr, 5 ltr</p>\r\n', 'img-12paraquate-dichloride-24-sl.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:05:17', '2020-06-13 11:37:56'),
(92, 12, 'Hospital Pics', 0, 12, 'Glyphosate 41% sl', NULL, '<p><strong>Dosage:</strong> 1.5&nbsp; to 2 ltr/acre</p>\r\n\r\n<ul>\r\n	<li>Remup&nbsp; is non selective herbicide and it can be use on active and standing weeds.&nbsp;</li>\r\n	<li>Remup is systemic herbicide so it translocate into weeds and eradicate weeds from root level.</li>\r\n	<li>Remup is very good for cyperus and cynodon like difficult weeds control.</li>\r\n	<li>Remup can be use in standing crop also but be careful do not spraying on main crop for precaution use hood while spraying.</li>\r\n	<li>Remup is inactive when it come in contact with soil so it is very&nbsp;safe to environment and soil.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr, 5 ltr</p>\r\n', 'img-12glyphosate-41-sl.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:05:32', '2020-06-13 11:38:21'),
(93, 12, 'Hospital Pics', 0, 13, 'Glyphosate 71% sg', NULL, '<p><strong>Dosage: </strong>100 gm per 15 ltr</p>\r\n\r\n<p>Remup-71 is a non-selective herbicide of organophosphorus group, which inhibits the epps synthesis in weed plant. Due to its non-selective action, it kills all types of weeds. Astron is absorbed by the weed plants very rapidly and kills the plant from the root with 7-12 days after its application. Astron apart from annual and perennial weeds also kills the aquatic weeds efficiently. Astron kills all types of weeds if sprayed in open fields, bunds, and water channels. Astron does not affect the generation of ensuing crops and any crops can be grown after its application</p>\r\n\r\n<p><strong>Packing: </strong>100 gm, 1 kg</p>\r\n', 'img-12glyphosate-71-sg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:05:56', '2020-06-13 11:38:50'),
(94, 12, 'Hospital Pics', 0, 14, 'Fenoxaprop-p-ethyl 9.3% ec', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Flexible application window and low dosages: weed super is very flexible as far as time of application is concerned. It gives a high level of control against most annual grassy weeds from the two-leaf to mid-tillering stage at low dosages.</li>\r\n	<li>Remarkably versatile: weed super is a versatile herbicide and can be used in all important broad&ndash;leaved crops.</li>\r\n	<li>Broad-spectrum: weed super has a wide spectrum of activity and controls most of the important grassy weeds.</li>\r\n	<li>Weed control independent of soil type: weed super is taken up via the green plant tissues of the weed and not via the roots. It thus works independently of soil type.</li>\r\n	<li>Safe to succeeding crops: since weed super is rapidly broken down in the soil there is no possibility of damage to either mono or dicotyledonous crops grown in the following season.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong> 100 ml, 250 ml, 500 ml, 1 lt</p>\r\n', 'img-12fenoxaprop-p-ethyl-93-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:06:14', '2020-06-13 11:39:58'),
(95, 13, 'Hospital Pics', 0, 2, 'Copper oxichloride 50% wp', NULL, '<p><strong>Dosage:- </strong>2 to 5 gm per ltr</p>\r\n\r\n<p>Coper-500 (copper oxychloride 50% wp) is protective wettable fungicide having double effect of systematic, contact and prevant action. Copper can be used on numerous crops against fungal and bacterial diseases. It can serve as a fatal enemy of major obstinate disease in growing period of the crop. Its active molecule penetrate with high performance. It can enter the in vivo of the plant rapidly, and expand omnibearingly to the ailing plant, sterilizing inside and outside. It is used as fungicide to control scab, anthracnose, anthracnose, downy mildew, early blight, and late blight diseases of various crops, vegetables, potato, tomato, tea, coconuts, spices, and tobacco , fruits, grapes, banana, nuts, and commercial sod farms. It should be used in accordance with climatic conditions and approval by local authorities</p>\r\n\r\n<p><strong>Packing: </strong>250 gm, 500 gm</p>\r\n', 'img-13copper-oxichloride-50-wp.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:20:49', '2020-06-13 11:49:17'),
(96, 13, 'Hospital Pics', 0, 3, 'Carbendazim 46.27% sc', NULL, '<p><strong>Dosage: </strong>15 ml/15 ltr</p>\r\n\r\n<p>It is a suspension concentrate<br />\r\n&bull; used for the controls of powdery mildew of grapes and mangoes<br />\r\n&bull; not: it is processed under the proper direction of our diligent professionals<br />\r\n&bull; making use of excellent quality chemical compounds wit the aid of sophisticated methodology in compliance</p>\r\n\r\n<p><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-13carbendazim-4627-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:21:05', '2020-06-13 11:50:03');
INSERT INTO `productfacilities` (`id`, `product_id`, `gallery_type`, `priority`, `product_order`, `name`, `slug`, `description`, `image`, `image2`, `image3`, `showon_home`, `showon_catalog`, `page_url`, `page_url_target`, `meta_title`, `meta_desc`, `meta_keyword`, `created`, `modified`) VALUES
(97, 13, 'Hospital Pics', 0, 4, 'Carbendazim 50% wp', NULL, '<p><strong>Dosage:</strong> 2 to 3 gm per 1 ltr</p>\r\n\r\n<ul>\r\n	<li>Fugwin is systemic fungicide with protective and curative action.</li>\r\n	<li>It is absorbed through the roots and green tissues, with translocation acropetally.</li>\r\n	<li>Fugwin acts by inhibiting development of the germ tubes, the formation of appressoria, and the growth of mycelia in the plants.</li>\r\n	<li>Controls many fungal diseases of cereals, cotton, ground-nut and horticulture crops.</li>\r\n</ul>\r\n', 'img-13carbendazim-50-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:21:26', '2020-06-13 11:50:20'),
(98, 13, 'Hospital Pics', 0, 5, 'Metalaxyl 35% ws', NULL, '<p><strong>Dosage:-</strong></p>\r\n\r\n<ul>\r\n	<li>Metal-35 is working fast and systemic fungicide.</li>\r\n	<li>Metal-35 is more effective on downy mildew.</li>\r\n	<li>Metal-35 is protecting crop from fungal disease for long time.</li>\r\n	<li>For the control&nbsp; of downy mildew in maize, bajra, sorghum&nbsp; and sunflower and white rust in mustard as wet seed dresser.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong>100 gm, 250 gm, 500 gm</p>\r\n', 'img-13metalaxyl-35-ws.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:21:53', '2020-06-13 11:50:47'),
(99, 13, 'Hospital Pics', 0, 6, 'Carbendazim 12% + mancozeb 63% wp', NULL, '<p><strong>Dosage: </strong>2 to 3 gm per 1 ltr</p>\r\n\r\n<ul>\r\n	<li>Reward&nbsp; is a scientific combination of mancozeb which is a contact fungicide of dithicarbamate group and carbendazim, a systemic fungicide of benzimidazole carbamate group.</li>\r\n	<li>Reward&nbsp; effectively controls the fungal diseases like rice blast by its systemic and contact action.</li>\r\n	<li>Reward&nbsp; helps in increasing the production of field crops and vegetables.</li>\r\n	<li>Reward&nbsp; is a suitable fungicide for integrated pest management (ipm).</li>\r\n	<li>Reward is compatible with commonly used insecticides and fungicides.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:- </strong>100 gm, 250 gm, 500 gm</p>\r\n', 'img-13carbendazim-12-mancozeb-63-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:22:16', '2020-06-13 11:51:13'),
(100, 13, 'Hospital Pics', 0, 7, 'Metalaxy 8% + mancozeb 64%', NULL, '<p><strong>Dosage: </strong>150 to 200 gm/acre</p>\r\n\r\n<ul>\r\n	<li>Renard-72 is highly systemic fungicide.</li>\r\n	<li>Mancozeb acts by its contact action which inactivates the sulphahydral (sh) groups in enzymes of fungi and metalaxyl inhibits protein synthesis, growth and reproduction in fungi.</li>\r\n	<li>It is used to control downy mildew and rust in all crops, black shank and pythium damping off in tobacco, late blight of potato.</li>\r\n	<li>The product cannot be used with copper and strong alkaline reagent.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-</strong> 100 gm, 250 gm, 500 gm</p>\r\n', 'img-13metalaxy-8-mancozeb-64.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:22:34', '2020-06-13 11:51:36'),
(101, 13, 'Hospital Pics', 0, 8, 'Propiconazole 25% ec', NULL, '<p><strong>Dosage:&nbsp;</strong>2 ml per 1 ltr</p>\r\n\r\n<ul>\r\n	<li>Rimi-25 is a systemic foliar fungicide of the triazole group, with protective and curative action.</li>\r\n	<li>Rimi-25 has broad spectrum activity against a wide range of fungal diseases of wheat, barley, rye, oats, rice, maize, grass, turf, banana, coffee, sugarcane, beets, stone fruits, peanuts and ornamentals.</li>\r\n	<li>Rimi-25 is of low mammalian toxicity and does not affect honeybees, beneficial insects or wildlife</li>\r\n</ul>\r\n', 'img-13propiconazole-25-ec.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:23:32', '2020-06-13 11:51:56'),
(102, 13, 'Hospital Pics', 0, 9, 'Suphure 55.16% sc', NULL, '<p><strong>Dosage:</strong></p>\r\n\r\n<ul>\r\n	<li>Sulfwin is a non-systemic protective fungicide with contact and vapor action also with secondary acaricidal activity.</li>\r\n	<li>Sulphur is protectant fungicide so use before the disease start occurring.</li>\r\n	<li>Can be sprayed for various fungal diseases like powdery mildew, brown rot in crops like peanut, cotton, mango etc.</li>\r\n</ul>\r\n\r\n<p><strong>Packing:-&nbsp;</strong>500 ml, 1 ltr</p>\r\n', 'img-13suphure-5516-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:23:48', '2020-06-13 11:52:22'),
(103, 13, 'Hospital Pics', 0, 10, 'Lime sulphure 22%', NULL, '<p><strong>Dosage:&nbsp;</strong>2 to 3 ltr/acre</p>\r\n\r\n<p>Shan-222 is sulphur based liquid solution. Shan-222 is most essential secondary nutrient after n.p.i&lt;. Its work as a plant growth nutrient.it increase a furtility of the plant. Shan-222 is very important for nitrogen metabolism.</p>\r\n\r\n<p><strong>Packing:-&nbsp;</strong>1 ltr. 5 ltr, 15 ltr</p>\r\n', 'img-13lime-sulphure-22.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:24:05', '2020-06-13 11:52:43'),
(104, 13, 'Hospital Pics', 0, 11, 'Sulphure 85% dp', NULL, '<p><strong>Dosage:</strong>&nbsp;2 to 3 ml per 1 ltr</p>\r\n\r\n<p>Sulwin (sulphur 85&deg;/o dp) is a contact fungicide used for the control of mildew on apple, grapes, beans, chillies, okra, mango, citrus. It also controls rust on pea and tikka leaf spot of groundnut.</p>\r\n\r\n<p><strong>Packing:-&nbsp;</strong>5 kg, 10 kg, 25 kg</p>\r\n', 'img-13sulphure-85-dp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:24:20', '2020-06-13 11:53:04'),
(105, 13, 'Hospital Pics', 0, 12, 'Trycyclazole 75% wp', NULL, '<p style=\"text-align:justify\"><strong>Dosage:</strong> 2 to 3 gm per ltr</p>\r\n\r\n<p style=\"text-align:justify\">Tc-zole (tricyclazole 75&deg;/o wp} it is a highly effective systemic fungicide.it rapidly absorbed by the roots and foliage and translocated within the plant. It controls rice blast, in transplanted and direct seeded rice. It can be applied as a drench, root soak, foliar application and a seed treatment. Non phytotoxic if used as directed. Compatible with many other pesticides. It has well resistant souring; it is not need to spraying again after one hour although come across rain.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Packing:-</strong> 120 gm</p>\r\n', 'img-13trycyclazole-75-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:28:01', '2020-06-13 11:53:32'),
(107, 13, 'Hospital Pics', 0, 13, 'Hexaconazole 5% sc', NULL, '<p style=\"text-align:justify\"><strong>Dosage:</strong> 2 to 3 ml per 1 ltr</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Highly effective systemic fungicide with protective, curative and eradicative action (prevents spore formation).</li>\r\n	<li style=\"text-align:justify\">Volzol controls wide range of disease. Erysiphales (powdery mildew) ascomycetes (scab) basidiomycetes (rust), fungi imperfecti (wilt).</li>\r\n	<li style=\"text-align:justify\">Due to translaminar action, it is quickly absorbed and translocated within the leaf and plant system resulting in quick and effective disease control.</li>\r\n	<li style=\"text-align:justify\">It gives phytotonic effect and improves the plant visible characteristics yield &amp; quality of the produce.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr, 5 ltr</p>\r\n', 'img-13hexaconazole-5-sc.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:28:43', '2020-06-13 11:54:00'),
(108, 13, 'Hospital Pics', 0, 14, 'Validamycin 3% l', NULL, '<p style=\"text-align:justify\"><strong>Dosage:</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Mode of action:</strong>non-systemic, inhibits enzyme trehalase</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Major crops&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong>&nbsp;rice,cucumber</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Target pests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</strong>sheath blight, black rot</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Packing:- </strong>250 ml, 500 ml, 1 ltr</p>\r\n', 'img-13validamycin-3-l.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:29:25', '2020-06-13 11:54:23'),
(109, 13, 'Hospital Pics', 0, 15, 'Sulphure 80% wdg', NULL, '<p style=\"text-align:justify\"><strong>Dosage:</strong>5 to 8 kg/acre</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Volphure in wdg formulation is a dust free, flowable micronised sulphur granules, ease of 100% water dissolvable.</li>\r\n	<li style=\"text-align:justify\">Volphure is a broad spectrum contact and protective systemic fungicide as well as miticide.</li>\r\n	<li style=\"text-align:justify\">Covers fungal diseases like powdery mildew, scab, leaf spots and all types of mites.</li>\r\n	<li style=\"text-align:justify\">Act as fungicide, miticide and provides micro nutrient sulphur to plants.</li>\r\n</ul>\r\n', 'img-13sulphure-80-wdg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:29:59', '2020-06-13 11:54:48'),
(110, 13, 'Hospital Pics', 0, 16, 'Mancozeb 75% wp', NULL, '<p style=\"text-align:justify\"><strong>Dosage:</strong> 2 to 3 gm per ltr</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Win &ndash;m-45 broad-spectrum fungicide with protective action.</li>\r\n	<li style=\"text-align:justify\">Mancozeb acts by its contact action which inactivates the sulphahydral (sh) groups in enzymes of fungi and thus causing disturbance in fungal enzyme functioning.</li>\r\n	<li style=\"text-align:justify\">It is effective against widest range of disease caused by fungal pathogen in various crops like cumin, paddy, potato, tomato, chilies, grapes, and horticulture plants.</li>\r\n	<li style=\"text-align:justify\">Used for foliar sprays, nursery drenching and seed treatments in many crops.</li>\r\n	<li style=\"text-align:justify\">It also provides manganese and zinc in traces to crop, there by keeps plants green and healthy. Good for integrated disease management.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>Packing:- </strong>500 gm, 1 kg</p>\r\n', 'img-13mancozeb-75-wp.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:30:41', '2020-06-13 11:55:17'),
(111, 13, 'Hospital Pics', 0, 17, 'Sulphure 90% wdg', NULL, '<p style=\"text-align:justify\"><strong>Dosage: </strong>15-30 kg/acre</p>\r\n\r\n<p style=\"text-align:justify\">Volphur gold contains special blend of swelling agents to quickly fracture the pastille &amp; disperse the particles. Volphur gold&nbsp; ensures chlorophyll &amp; protein formation to produce green substances, starch, sugars, oils &amp; vitamins through photosynthesis. Volphur gold&nbsp; ensures synthesis of oils in oilseeds crops. Volphur gold&nbsp; increases nitrogen utilization, phosphate &amp; micronutrient uptake.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Packing:-</strong>3 kg, 6 kg, 12 kg, 30 kg</p>\r\n', 'img-13sulphure-90-wdg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-06 18:31:17', '2020-06-13 11:55:36'),
(112, 9, 'Plant Growth Promoter', 0, 2, 'NORMAL STICKER', NULL, '<p><strong>DOSES:- </strong>30 ML/15 LTR WATER,<br />\r\n<strong>APPLICATION:-</strong> SPRAY,<br />\r\n<strong>USAGE:-</strong> MIXING WITH PESTICIDES, HERBICDES, FUNGICIDES, PGR AND OTHER TONIC WHEN SPRAY ON PLANT<br />\r\nCROP RECOMMANDED:- COTTON, ALL VEGETABLES,FRUITS, FLOWER, PULSES, SOYABEAN PADDY, WHEATE, MAIZE( MAKKA), SUGARCAN, AND ALL CROP<br />\r\n<strong>BENEFITE:-</strong></p>\r\n\r\n<ul>\r\n	<li>Allows quick and effective distribution</li>\r\n	<li>Reduces the requirement of pesticides and fungicides</li>\r\n	<li>Promotes spray volume reduction</li>\r\n	<li>Promotes rapid uptake of agrochemicals (rainfastness)</li>\r\n	<li>Non-Ionic &amp; Non-Toxic</li>\r\n	<li>Increase water retention capacity</li>\r\n	<li>Promote rapid uptake of agrochemicals</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'img-9normal-sticker.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-08 15:12:13', '2020-06-13 11:01:13'),
(113, 10, 'Plant Growth Promoter', 0, 1, 'NPK 19:19:19', NULL, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">CONTENT AND SPECIFICATION:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> Nitrogen 19%,&nbsp; P2O5 19%, K2O 19%,&nbsp; NaCl&nbsp; 0.5%,&nbsp; moisture 0.5%</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">USAGE:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> In agriculture by spray or drip irrigation</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">COLOR:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> Pink,</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">APPLICATION:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> Spray, drip irrigation</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">DOSE:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> By spray 4-5 gm per Ltr and by drip 1-2 kg per acre</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">SOLUBILITY:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> 100%</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">BENEFIT:-</span></strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\"> Helps in rapid &amp; healthy growth of crops, Recovers nutritional deficiencies in short time, Helps early &amp; uniform flowering, prevents flower &amp; fruit drop, Increases resistance against disease, hence reduce cost of pesticides, Ultimately Results in increased crop yield with good quality, quantity, color, taste &amp; longer shelf life</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">CROP RECOMMANDED:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> COTTON, ALL VEGETABLES,FRUITS, FLOWER, PULSES, SOYABEAN PADDY, WHEATE, MAIZE( MAKKA), SUGARCAN, AND ALL CROP</span></span></span></p>\r\n', 'img-10npk-191919.jpg', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-08 15:14:18', '2020-06-13 11:02:06'),
(114, 11, 'Plant Growth Promoter', 0, 1, 'BORON 20%', NULL, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">DOSES:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> 3-4 GM/1 LTR , AND BY DRIP 1-2 KG/ACRE</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">APPLICATION:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> SPRAY, DRIP IRRIGATION</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">USAGE:- </span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">In agriculture by spray or drip irrigation</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">CROP RECOMMANDED:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> COTTON, ALL VEGETABLES,FRUITS, FLOWER, PULSES, SOYABEAN PADDY, WHEATE, MAIZE( MAKKA), SUGARCAN, AND ALL CROP</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">BENEFITE:-</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Better absorption of nourishing elements either placed near root zone or applied as foliar spray</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Reduces the requirement of chemical fertilizers by 30-40%</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Increment in crop yield by 15-20%</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Sustainablity of crops due to consistent availability of all essential growth nutrients</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Speedy growth of crops</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Helpful to enhance the immunity system of crop</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Lower consumption of water for crop irrigation</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">It Prevents drainage of water</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Reduces weed problem farming expenses</span></span></span></span></li>\r\n</ul>\r\n', 'img-11boron-20.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-08 15:20:07', '2020-06-13 11:05:57'),
(115, 6, 'Plant Growth Promoter', 0, 15, 'FIPRONIL 40% + IMIDACLOPRID 40% WG', NULL, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">DOSAGE:</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">Counted as first among the best, we offer the best quality of&nbsp;Fipronil 40% Imidaclopride 40% WG&nbsp;Insecticide. These are sourced from reliable vendors, to ensure high standards of quality. These products are known for their accurate composition, high effectiveness, and long shelf life.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\">PACKING:</span></span></span></strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"><span style=\"color:#333333\"> 40 GM, 100 GM</span></span></span></span></span></p>\r\n', 'img-6fipronil-40-imidacloprid-40-wg.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-08 15:31:38', '2020-06-13 11:21:48'),
(116, NULL, '', 0, NULL, NULL, NULL, NULL, 'img-6fipronil-5-sc.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-06-08 15:33:13', '2020-06-08 15:33:13'),
(120, NULL, '', 0, NULL, NULL, NULL, NULL, 'img-6fipronil-5-sc.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-06-13 11:26:06', '2020-06-13 11:26:06'),
(121, 12, 'Plant Growth Promoter', 0, 4, 'IMAZETHAPYR 10% SL', NULL, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">DOSAGE:</span></strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA is a herbicide of the imidazolinone group used for selective broad leaf and grass weeds control in soybeans, peanuts and peas.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA may be applied either pre-plant, pre-emergence or post-emergence.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA is a systemic herbicide that is rapidly absorbed by the roots and the leaves and translocated to the epical meristem.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA has a double action: residual and contact activity.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">An early application of IMIZA will free the crop from competing weeds.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA inhibits the synthesis of branched chain amino acids in susceptible plants, which in turn interferes in protein production and cells growth.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">IMIZA toxicity to mammals is low due to the fact that those amino acids are not produced in mammals.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">Under field conditions, IMIZA mobility in soil is limited to the top 15 cm. There is no soil pH limitation for IMIZA t application.</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\">PACKING:-</span></strong><span style=\"font-family:&quot;Cambria&quot;,&quot;serif&quot;\"> 250 ML, 500 ML, 1 LTR</span></span></span></p>\r\n', 'img-12imazethapyr-10-sl.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-13 11:45:32', '2020-06-16 15:25:59'),
(122, 1, 'Plant Growth Promoter', 0, NULL, 'GIBRELLIC 0.001%', NULL, '<p><strong>DOSES:- </strong>30ML/15 LTR WATER<br />\r\n<strong>APPLICATION:- </strong>SPRAY<br />\r\n<strong>USAGE:-</strong> SPAY AFTER FERTIGATION,PLANT GROWTH STAGE , FOR BETTER RESULT USE<br />\r\n15/20 DAYS INTERVAL IN ONE CROP IN TWISE<br />\r\n<strong>CROP RECOMMANDED:- </strong>COTTON, ALL VEGETABLES,FRUITS, FLOWER, PULSES, SOYABEAN<br />\r\nPADDY, WHEATE, MAIZE( MAKKA), SUGARCAN, AND ALL CROP<br />\r\n<strong>BENEFITE:-</strong></p>\r\n\r\n<ul>\r\n	<li>ECOFORCE is a highly effective plant growth regulator.</li>\r\n	<li>ECOFORCE increases the yield and quality of the crop produce.</li>\r\n	<li>ECOFORCE acts synergestically with plant metaboliom and accelerates the growth functions of the plant.</li>\r\n	<li>lso improves the physiological efficiency of crop by stimulating the hormonal and enzymatic activities.</li>\r\n</ul>\r\n', 'img-1gibrellic-0001.png', NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, '2020-06-13 12:02:54', '2020-06-13 12:02:54');

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
  `promotional_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_product` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcum_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcum_title1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_description` text COLLATE utf8_unicode_ci,
  `feature_text` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alt1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_description` text COLLATE utf8_unicode_ci,
  `short_description` text COLLATE utf8_unicode_ci,
  `inner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `costdescription` text COLLATE utf8_unicode_ci,
  `specification` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_plates` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufactured_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_products` int(11) NOT NULL DEFAULT '0',
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
  `seo_status` int(1) DEFAULT '0',
  `product_order` int(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `header_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporter_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exporter_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitemap_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pagetype_id`, `parent_id`, `category_id`, `parent_category_id`, `promotional_category`, `footer_product`, `name`, `breadcum_title`, `breadcum_title1`, `product_url`, `product_code`, `extra_description`, `feature_text`, `slug`, `product_alt`, `product_alt1`, `home_description`, `short_description`, `inner_image`, `banner_image`, `description`, `costdescription`, `specification`, `image`, `image_keyword`, `model_no`, `no_of_plates`, `manufactured_by`, `manufacture_products`, `made_in`, `price`, `weight`, `size`, `tags`, `views`, `meta_title`, `meta_desc`, `meta_keyword`, `layout_id`, `active`, `hot_product`, `seo_status`, `product_order`, `created`, `modified`, `header_title`, `footer_title`, `link_title`, `link_image_title`, `exporter_title`, `exporter_image_title`, `manufacture_title`, `manufacture_image_title`, `supplier_title`, `supplier_image_title`, `location_title`, `location_image_title`, `sitemap_title`) VALUES
(21, 1, 0, 2, NULL, NULL, NULL, 'Leather Jacket', NULL, NULL, NULL, NULL, '', '', 'leather-jacket', '', '', NULL, '', 'img1-leather-jacket1.jpg', NULL, '<p>A <strong>leather jacket</strong> is a type of outerwear made from the hide of various animals, typically cows. It is known for its durability, versatility, and timeless style.<strong> Leather jackets</strong> are popular in both casual and fashionable settings and are often associated with a rebellious or edgy aesthetic.</p>\r\n\r\n<p>Leather jackets come in various styles, including:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Biker Jacket: This style is inspired by motorcycle jackets and is characterized by a cropped length, asymmetrical front zipper, wide lapels, and multiple zippers or pockets.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bomber Jacket: Originally designed for pilots, bomber jackets feature a relaxed fit, ribbed cuffs and hem, and a front zipper. They often have a more casual and sporty appearance.</p>\r\n	</li>\r\n	<li>\r\n	<p>Aviator Jacket: Similar to bomber jackets, aviator jackets are typically lined with shearling or faux fur to provide warmth. They have a distinctive collar that can be folded down or worn up for added protection against the elements.</p>\r\n	</li>\r\n	<li>\r\n	<p>Classic Jacket: This style is a more straightforward and versatile option. It usually has a straight collar, a front zipper or button closure, and a simple design without many embellishments.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Leather jackets manufacturer</strong> can be worn with various outfits, ranging from jeans and t-shirts for a casual look to dresses or tailored pants for a more dressed-up ensemble. They are often considered a staple in many wardrobes due to their ability to add a touch of coolness and sophistication to any outfit.</p>\r\n\r\n<p>When purchasing a leather jacket, it&#39;s important to consider factors such as the quality of the leather, the fit, and the overall construction. Genuine leather jackets tend to be more expensive but offer better durability and longevity. Faux leather options are also available as more affordable and animal-friendly alternatives.</p>\r\n\r\n<p>Proper care is crucial to maintain the appearance and condition of a <strong>leather jacket exporter</strong>. Regularly cleaning and conditioning the leather, avoiding excessive exposure to sunlight or moisture, and storing it properly when not in use can help prolong its lifespan.</p>\r\n\r\n<p>Remember, fashion trends may evolve over time, but a well-made leather jacket can remain a stylish and versatile piece for many years to come.</p>\r\n', NULL, NULL, 'img-leather-jacket1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 285, 'Leather Jacket Manufacturers in Kanpur |  Leather Jacket Exporters ', 'Discover top-quality Leather Jacket Manufacturers in Kanpur. We are leading Exporters of premium  Leather Jacket, delivering unmatched style and craftsmanship. Explore our collection now!\r\n\r\n\r\n\r\n\r\n', 'Leather Jacket Manufacturers in India, Leather Jacket, Leather Jacket Exporters in India, Leather Jacket in Uttar Pradesh, Leather Jacket Manufacturers in Kanpur ', 0, 1, 0, 0, NULL, '2023-05-11 10:58:30', '2023-06-25 14:07:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 0, 2, NULL, NULL, NULL, 'Leather Belts', NULL, NULL, NULL, NULL, '', '', 'leather-belts', '', '', NULL, '', '', NULL, '<p><strong>Leather belts</strong> are accessories commonly used to secure and cinch clothing, particularly pants or skirts, around the waist. They are made from leather, which is a durable and flexible material that provides support and adds a stylish touch to an outfit.<strong> Leather belts Manufacturers&nbsp;</strong>are available in various styles, sizes, and colors to suit different fashion preferences.</p>\r\n\r\n<p>Here are some key aspects to consider when it comes to leather belts:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Types of Leather: Leather belts can be crafted from different types of leather, such as full-grain leather, top-grain leather, or genuine leather. Full-grain leather is the highest quality, as it retains the natural grain and imperfections of the hide, making it more durable and luxurious. Top-grain leather is also of high quality, but it undergoes additional processing to remove imperfections. Genuine leather is made from layers of low-quality leather that are bonded together, making it more affordable but less durable.</p>\r\n	</li>\r\n	<li>\r\n	<p>Belt Styles: Leather belts come in various styles to complement different outfits and occasions. Some common belt styles include:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Dress Belts: These belts are typically sleek and refined, featuring a narrower width and a simple buckle. They are suitable for formal or business attire.</p>\r\n		</li>\r\n		<li>\r\n		<p>Casual Belts: Casual belts are wider and more relaxed in design, often featuring decorative elements like stitching, embossing, or metal accents. They are ideal for everyday wear and can add a touch of style to casual outfits.</p>\r\n		</li>\r\n		<li>\r\n		<p>Western Belts: Inspired by cowboy and Western culture, these belts often have large buckles, intricate tooling, or ornate designs. They are commonly worn with jeans or Western-style clothing.</p>\r\n		</li>\r\n		<li>\r\n		<p>Braided Belts: Braided leather belts feature interwoven leather strands, offering a more textured and unique look. They are popular for casual outfits and can be easily adjusted for a custom fit.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Belt Sizing: When purchasing a<strong> leather belt</strong>, it&#39;s essential to consider the correct size. Belt sizes are typically measured from the buckle to the middle hole. It is recommended to measure your waist or hips, depending on where you plan to wear the belt and select a size that allows for some adjustment.</p>\r\n	</li>\r\n	<li>\r\n	<p>Belt Care: Proper care can help maintain the appearance and longevity of a leather belt. Avoid exposing it to excessive moisture, heat, or direct sunlight, as these can cause the leather to crack or fade. Regularly clean the belt with a soft cloth or brush, and use a leather conditioner to keep it moisturized and supple.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Leather belts exporters&nbsp;</strong>are versatile accessories that can elevate and complete an outfit. Whether you&#39;re looking for a formal dress belt or a more casual option, a well-crafted leather belt can add style and functionality to your wardrobe.</p>\r\n', NULL, NULL, 'img-leather-belts1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 243, 'Leather belts Manufacturers in Kanpur | Leather belts Exporters', 'Find reliable Leather belts Manufacturers in Kanpur offering superior quality and exquisite designs. We are renowned Exporters of Leather belts, delivering style and durability. Browse our collection today.\r\n\r\n\r\n\r\n\r\n', 'Leather belts Manufacturers in India, Leather belts Exporters, Leather belts in Kanpur, Leather belts, Leather belts in India ', 0, 1, 0, 0, NULL, '2023-05-11 11:01:08', '2023-06-25 14:08:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, 0, 2, NULL, NULL, NULL, 'Leather Shoes', NULL, NULL, NULL, NULL, '', '', 'leather-shoes', '', '', NULL, '', '', NULL, '<p><strong>Leather shoes </strong>are a popular choice of footwear for both men and women due to their durability, comfort, and classic style. Made from various types of leather, these shoes offer a range of options to suit different preferences and occasions.</p>\r\n\r\n<p>Here are some key aspects to consider when it comes to leather shoes:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Types of Leather: Leather shoes can be crafted from different types of leather, each with its own characteristics:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Full-Grain Leather: </strong>This is the highest quality and most durable type of leather. It retains the natural grain and imperfections of the hide, making it strong, breathable, and resistant to wear.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Top-Grain Leather:</strong> This leather is slightly refined, with the outer layer sanded and finished to remove any imperfections. It is still of high quality and offers durability and a smooth appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Nubuck Leather:</strong> Nubuck leather is created by sanding the outer surface of full-grain leather, resulting in a soft and velvety texture. It has a luxurious look but requires more care to prevent stains and maintain its appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Suede Leather:</strong> Suede is made from the underside of the hide and has a soft and fuzzy texture. It is less durable than full-grain leather and requires regular brushing and protection from moisture.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Shoe Styles: Leather shoes come in a variety of styles to suit different occasions and personal tastes:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Oxfords:</strong> Oxfords are formal shoes characterized by closed lacing and a low heel. They are versatile and can be worn with suits, dress pants, or even with smart-casual outfits.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Brogues:</strong> Brogues are characterized by decorative perforations and wingtip patterns. They can be either formal or casual, depending on the design, and are often worn with suits, trousers, or jeans.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Loafers: </strong>Loafers are slip-on shoes without laces. They are comfortable and versatile, suitable for both casual and business-casual settings. Penny loafers and tassel loafers are popular variations.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Boots:</strong> Leather boots offer both style and functionality. From ankle boots to knee-high or over-the-knee boots, they can be worn in various settings, ranging from casual to formal.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Care and Maintenance: Proper care is essential to keep leather shoes in good condition and extend their lifespan. Here are some care tips:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Clean regularly:</strong> Wipe off dirt and dust using a soft cloth or brush.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Conditioning:</strong> Use a leather conditioner to keep the leather moisturized and prevent it from drying out and cracking.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Waterproofing: </strong>Apply a waterproofing product to protect the shoes from moisture and stains.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Polishing: </strong>Use shoe polish or cream to restore shine and maintain the leather&#39;s appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Shoe Trees:</strong> Consider using shoe trees to help maintain the shape of the shoes when they&#39;re not being worn.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Leather shoes Exporters</strong>&nbsp;are versatile and can add a touch of elegance to any outfit. By choosing high-quality leather and providing proper care, leather shoes can last for years and become a reliable and stylish part of your wardrobe.</p>\r\n', NULL, NULL, 'img-leather-shoes1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 202, 'Leather Shoes Manufacturers in Kanpur | Leather Shoes Exporters For men & women', 'Discover the best Leather Shoes Manufacturers in Kanpur.  We specialize in crafting high-quality leather shoes for both men & women. As leading exporters, we offer style, comfort, and unmatched craftsmanship. \r\n\r\n\r\n\r\n\r\n', 'Leather shoes Manufacturers in Uttar Pradesh, Leather shoes, Leather shoes in India, Leather shoes Exporters in India ', 0, 1, 0, 0, NULL, '2023-05-11 11:01:57', '2023-06-25 14:10:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 0, 2, NULL, NULL, NULL, 'Leather Wallet', NULL, NULL, NULL, NULL, '', '', 'leather-wallet', '', '', NULL, '', '', NULL, '<p>A<strong> leather wallet </strong>is a common accessory used for storing cash, cards, and other small items. Wallets made from leather are popular due to their durability, timeless style, and the ability to develop a rich patina over time. They come in various styles and sizes to suit different needs and preferences.</p>\r\n\r\n<p>Here are some key aspects to consider when it comes to leather wallets:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Types of Leather: Leather wallets can be made from different types of leather, each with its own characteristics:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Full-Grain Leather: Full-grain leather is the highest quality and most durable type. It retains the natural grain and imperfections of the hide, making it strong and resistant to wear. It ages beautifully and develops a unique patina over time.</p>\r\n		</li>\r\n		<li>\r\n		<p>Top-Grain Leather: Top-grain leather is slightly refined, with the outer layer sanded and finished to remove any imperfections. It is still of high quality and offers durability and a smooth appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p>Genuine Leather: Genuine leather is made from layers of low-quality leather that are bonded together. While it is more affordable, it is generally less durable and may not develop a patina as nicely as full-grain or top-grain leather.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Wallet Styles: Leather wallets come in various styles to accommodate different storage needs and preferences:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Bifold Wallets: Bifold wallets are the most common style, folding in half and typically featuring multiple card slots, a bill compartment, and sometimes additional pockets.</p>\r\n		</li>\r\n		<li>\r\n		<p>Trifold Wallets: Trifold wallets have two folds and offer even more card slots and storage compartments, making them suitable for those who carry a lot of cards or need extra organization.</p>\r\n		</li>\r\n		<li>\r\n		<p>Cardholders: Cardholders are compact wallets designed to carry a few essential cards. They are slim and often have card slots on both sides.</p>\r\n		</li>\r\n		<li>\r\n		<p>Money Clip Wallets: Money clip wallets have a built-in money clip on one side to secure cash, along with card slots on the other side.</p>\r\n		</li>\r\n		<li>\r\n		<p>Zip-around Wallets: Zip-around wallets have a zipper closure around three sides, providing extra security and keeping the contents more protected.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Functionality and Features: Consider the features that are important to you when selecting a leather wallet:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Card Slots: Check the number of card slots and whether they are designed to hold standard-sized credit cards or accommodate additional items like IDs or business cards.</p>\r\n		</li>\r\n		<li>\r\n		<p>Bill Compartment: Look for a wallet with a bill compartment that can securely hold different currency sizes.</p>\r\n		</li>\r\n		<li>\r\n		<p>Coin Pocket: Some wallets have a coin pocket with a zipper or snap closure to keep loose change organized.</p>\r\n		</li>\r\n		<li>\r\n		<p>RFID Blocking: If you&#39;re concerned about RFID (Radio Frequency Identification) skimming, you may opt for a wallet with RFID-blocking technology to protect your cards from unauthorized scanning.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Care and Maintenance: Proper care can help maintain the appearance and longevity of a leather wallet. Here are some care tips:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Keep it dry: Avoid exposing the wallet to excessive moisture or water, as it can damage the leather.</p>\r\n		</li>\r\n		<li>\r\n		<p>Avoid direct sunlight: Prolonged exposure to sunlight can cause the leather to fade or become discolored.</p>\r\n		</li>\r\n		<li>\r\n		<p>Regular cleaning: Wipe the wallet with a soft, slightly damp cloth to remove dirt and dust. For stains, use a mild leather cleaner or saddle soap.</p>\r\n		</li>\r\n		<li>\r\n		<p>Conditioning: Apply a leather conditioner periodically to keep the leather moisturized and prevent it from drying out.</p>\r\n		</li>\r\n		<li>\r\n		<p>Allow natural aging: Over time, leather wallets develop a patina that adds character. Embrace this natural aging process as it enhances the wallet&#39;s appearance.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Leather wallets exporters&nbsp;</strong>are functional accessories that combine practicality and style. By choosing a high-quality leather wallet and providing proper care, you can enjoy its durability and timeless appeal for years to come.</p>\r\n', NULL, NULL, 'img-leather-wallet1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 175, 'Leather Wallets Manufacturers in Kanpur | Leather Wallets Exporters ', 'Searching top-notch Leather Wallet Manufacturers in Kanpur. We specialize in crafting high-quality Leather wallets. As leading exporters. Shop our collection now.\r\n\r\n\r\n', 'Leather wallets Manufacturers, Leather wallets  in India, Leather wallets, Leather wallets Exporter, Leather wallets  Manufacturers in Kanpur ', 0, 1, 0, 0, NULL, '2023-05-11 11:02:20', '2023-06-25 14:11:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 0, 2, NULL, NULL, NULL, 'Leather Bag', NULL, NULL, NULL, NULL, '', '', 'leather-bag', '', '', NULL, '', '', NULL, '<p>A <strong>leather bag</strong> is a versatile and stylish accessory that offers both functionality and fashion appeal. Made from leather, these bags are known for their durability, luxurious look, and ability to withstand daily use. Leather bags come in various styles, sizes, and designs to cater to different needs and personal preferences.</p>\r\n\r\n<p>Here are some key aspects to consider when it comes to leather bags:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Types of Leather: Leather bags can be made from different types of leather, each with its own characteristics:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Full-Grain Leather: Full-grain leather is the highest quality and most durable type. It retains the natural grain and imperfections of the hide, making it strong, long-lasting, and capable of developing a beautiful patina over time.</p>\r\n		</li>\r\n		<li>\r\n		<p>Top-Grain Leather: Top-grain leather is slightly refined, with the outer layer sanded and finished to remove any imperfections. It is still of high quality, offering durability and a smooth appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p>Nubuck Leather: Nubuck leather is created by sanding the outer surface of full-grain leather, resulting in a soft and velvety texture. It has a luxurious look but requires more care to prevent stains and maintain its appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p>Suede Leather: Suede is made from the underside of the hide and has a soft and fuzzy texture. It is less durable than full-grain leather and requires regular brushing and protection from moisture.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Bag Styles: Leather bags come in various styles to cater to different needs and occasions:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Tote Bags: Tote bags are large and spacious, featuring open tops and sturdy handles. They are versatile and ideal for carrying everyday essentials, including laptops, books, or groceries.</p>\r\n		</li>\r\n		<li>\r\n		<p>Shoulder Bags: Shoulder bags have a single or double strap that can be worn over the shoulder. They come in different sizes and styles, making them suitable for both casual and formal occasions.</p>\r\n		</li>\r\n		<li>\r\n		<p>Crossbody Bags: Crossbody bags have a long strap that allows them to be worn across the body. They provide hands-free convenience and are great for carrying essentials while keeping your hands free.</p>\r\n		</li>\r\n		<li>\r\n		<p>Satchels: Satchels are structured bags with a top handle and often a detachable shoulder strap. They are stylish and practical, suitable for both professional and casual settings.</p>\r\n		</li>\r\n		<li>\r\n		<p>Backpacks: Leather backpacks combine style and functionality, offering ample storage space and comfortable carrying options. They are popular for both everyday use and travel.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Features and Functionality: Consider the features that are important to you when choosing a leather bag:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Compartments and Pockets: Check the interior of the bag for compartments and pockets to help you stay organized and easily find your belongings.</p>\r\n		</li>\r\n		<li>\r\n		<p>Closure: Look for bags with secure closures such as zippers, magnetic snaps, or clasps to keep your items safe.</p>\r\n		</li>\r\n		<li>\r\n		<p>Straps and Handles: Consider the length, adjustability, and comfort of the straps and handles, ensuring they suit your preferred carrying style.</p>\r\n		</li>\r\n		<li>\r\n		<p>Lining: The lining of a leather bag adds to its durability and protects the contents. Look for bags with quality and durable linings.</p>\r\n		</li>\r\n		<li>\r\n		<p>Hardware: Pay attention to the hardware details such as zippers, buckles, or clasps. High-quality and well-finished hardware can enhance the overall aesthetic and durability of the bag.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', NULL, NULL, 'img-leather-bag1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 174, 'Leather Bag Manufacturers in Kanpur | Pure Leather Bag Exporters', 'Looking for Pure Leather Bag Manufacturers in Kanpur? Explore our exquisite collection of leather bags. As trusted exporters, we offer superior craftsmanship, style, and durability. Get now and elevate your fashion statement!\r\n\r\n\r\n\r\n\r\n', 'Leather Bag Manufacturers in Kanpur, Leather Bag, Leather Bags in India, Leather Bag exporters, pure Leather Bag ', 0, 1, 0, 0, NULL, '2023-05-11 11:02:45', '2023-06-25 14:12:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, 0, 2, NULL, NULL, NULL, 'Leather Watch Straps', NULL, NULL, NULL, NULL, '', '', 'leather-watch-straps', '', '', NULL, '', '', NULL, '<p><strong>Leather watch straps</strong> are a popular choice for wristwatches due to their classic and sophisticated appearance. They are made from various types of leather, offering durability, comfort, and a touch of elegance to complement different watch styles.</p>\r\n\r\n<p>Here are some key aspects to consider when it comes to leather watch straps:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Types of Leather: Leather watch straps can be made from different types of leather, each with its own characteristics:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Full-Grain Leather: Full-grain leather is the highest quality and most durable type. It retains the natural grain and imperfections of the hide, making it strong, long-lasting, and capable of developing a beautiful patina over time.</p>\r\n		</li>\r\n		<li>\r\n		<p>Top-Grain Leather: Top-grain leather is slightly refined, with the outer layer sanded and finished to remove any imperfections. It is still of high quality, offering durability and a smooth appearance.</p>\r\n		</li>\r\n		<li>\r\n		<p>Calfskin Leather: Calfskin leather is known for its softness and suppleness. It is comfortable to wear and provides a luxurious look and feel.</p>\r\n		</li>\r\n		<li>\r\n		<p>Alligator or Crocodile Leather: Exotic leathers like alligator or crocodile leather offer a unique and luxurious appearance. They are more expensive and considered high-end options.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Strap Styles: Leather watch straps come in different styles to match various watch designs and personal preferences:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Classic Straps: Classic leather watch straps feature a simple and timeless design, often with a smooth or textured surface. They are versatile and can be paired with both formal and casual watches.</p>\r\n		</li>\r\n		<li>\r\n		<p>Perforated Straps: Perforated leather straps have small holes along the length of the strap. They offer a sporty and vintage-inspired look and are commonly seen on racing-style watches.</p>\r\n		</li>\r\n		<li>\r\n		<p>Stitched Straps: Stitched leather straps feature visible stitching along the edges, adding a decorative touch. The stitching can be in a contrasting color or match the strap color for a cohesive look.</p>\r\n		</li>\r\n		<li>\r\n		<p>Padded Straps: Padded leather straps are thicker in the middle and taper toward the buckle and the watch. They provide a cushioned and comfortable feel on the wrist.</p>\r\n		</li>\r\n		<li>\r\n		<p>Bund Straps: Bund straps are leather straps that extend underneath the watch case, providing additional protection and comfort. They were originally designed for military watches.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Sizing: When selecting a leather watch strap, consider the width and length that will fit your watch and wrist comfortably. The width is typically measured in millimeters and should match the lug width of your watch case. The length should be adjusted to fit your wrist size, ensuring a secure and comfortable fit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Care and Maintenance: Proper care is important to keep your leather watch strap in good condition:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Avoid moisture: Leather is susceptible to damage from moisture, so it&#39;s important to keep the strap dry and avoid prolonged exposure to water.</p>\r\n		</li>\r\n		<li>\r\n		<p>Cleaning: Wipe the strap with a soft, slightly damp cloth to remove dirt or dust. Avoid using harsh chemicals or excessive water.</p>\r\n		</li>\r\n		<li>\r\n		<p>Conditioning: Apply a leather conditioner or cream periodically to keep the leather moisturized and prevent it from drying out or cracking. Follow the manufacturer&#39;s instructions for the specific product.</p>\r\n		</li>\r\n		<li>\r\n		<p>Storage: When not in use, store your watch strap in a cool, dry place away from direct sunlight. Avoid storing it in a humid environment or near heat sources.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Leather watch straps</strong>&nbsp;<strong>Exporters</strong> offer a timeless and sophisticated look that can enhance the overall appearance of your watch. By selecting high-quality leather and providing proper care, you can enjoy a comfortable and stylish strap that complements your timepiece.</p>\r\n', NULL, NULL, 'img-leather-watch-straps1.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 175, 'Leather Watch Straps Manufacturers in Kanpur  | Leather Watch Straps Exporters', 'Discover top-quality Leather Watch Straps Manufacturers in Kanpur. We are leading exporters of premium Leather Watch Straps, Explore our collection now\r\n\r\n\r\n\r\n\r\n', 'Leather Watch Straps, Leather Watch Straps in India, Leather Watch Straps Manufacturers, Leather Watch Straps Near me, Leather Watch Straps in Kanpur ', 0, 1, 0, 0, NULL, '2023-05-11 11:03:13', '2023-06-25 14:13:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `ano_contact_no` varchar(255) DEFAULT NULL,
  `toll_free_no` varchar(255) DEFAULT NULL,
  `mobile_no2` varchar(255) DEFAULT NULL,
  `mobile_no3` varchar(255) DEFAULT NULL,
  `header_text_title` varchar(255) DEFAULT NULL,
  `header_text` text,
  `footer_text_title` varchar(255) DEFAULT NULL,
  `footer_text` text,
  `googlemap` text,
  `extra_js` text,
  `image_keyword` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `meta_schema` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `sitelogo`, `email`, `email_contact`, `address1`, `address2`, `address3`, `contact_number`, `mobile`, `ano_contact_no`, `toll_free_no`, `mobile_no2`, `mobile_no3`, `header_text_title`, `header_text`, `footer_text_title`, `footer_text`, `googlemap`, `extra_js`, `image_keyword`, `google_analytics`, `meta_schema`, `created`, `modified`) VALUES
(1, 'Opus Export', 'opus-export-logo.jpg', 'info@opusexports.co.in', '', 'L23/12 KDA Colony, Jajmau, kanpur 208010, Uttar Pradesh, India', '', '', '+91 9044384663', '', '', '', '', '', '', '', '', 'Opus Exports is one of the top leading export company founded by Mr. Mohd. Moiz in Kanpur, Uttar Pradesh, India with an aim to own the tag of an ideal supplying company on a global platform. ', '', '', '', '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-P0H3WF9N15\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-P0H3WF9N15\');\r\n</script>', '', '2017-09-29 13:50:43', '2023-07-18 13:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `sitepages`
--

CREATE TABLE `sitepages` (
  `id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `link_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `extra_description` text,
  `detail_description` text,
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

INSERT INTO `sitepages` (`id`, `layout_id`, `name`, `link_title`, `slug`, `image`, `short_description`, `description`, `extra_description`, `detail_description`, `meta_title`, `meta_keyword`, `meta_desc`, `remark`, `views`, `active`, `created`, `modified`) VALUES
(1, 0, 'Home About', '', 'home-about', 'home-about.jpg', '', '<p style=\"text-align:justify\"><strong>Opus Exports</strong> is a leading provider of high-quality leather products, dedicated to offering exceptional craftsmanship, timeless designs, and superior customer service. With a rich heritage and a commitment to excellence, we have established ourselves as a trusted brand in the leather industry.</p>\r\n\r\n<p style=\"text-align:justify\">At Opus Exports, we believe in the inherent beauty and durability of leather. Our skilled artisans carefully select premium hides and employ traditional techniques to transform them into exquisite leather goods. From handbags and wallets to shoes, belts, and accessories, each product in our collection is crafted with meticulous attention to detail and a passion for creating pieces that will stand the test of time.</p>\r\n\r\n<p style=\"text-align:justify\">Our commitment to quality is unwavering. We source the finest leathers from reputable suppliers, ensuring that our products meet the highest standards of durability, softness, and visual appeal. Our skilled craftsmen employ traditional methods alongside modern technology to create products that seamlessly blend tradition with innovation.</p>\r\n', NULL, NULL, 'Leather Shoes Manufacturers in Kanpur | Leather Shoes Exporters For Men & Women', 'Leather Jacket Manufacturers, Leather Belts, Leather Shoe Exporters For Men & Women, Leather Goods, Leather Bag in Uttar Pradesh', 'Leather Shoes Exporters Opus Exports Is One Of The Best Leather shoes Manufacturer in Kanpur India To Provide the Best Quality Leather To Our Customers.', NULL, 0, 0, '2020-04-06 09:56:48', '2023-06-27 10:24:35'),
(2, 0, 'company profile', '', 'company-profile', '', '', '<p style=\"text-align:justify\">Opus Exports is a leading provider of high-quality leather products, dedicated to offering exceptional craftsmanship, timeless designs, and superior customer service. With a rich heritage and a commitment to excellence, we have established ourselves as a trusted brand in the leather industry.</p>\r\n\r\n<p style=\"text-align:justify\">At Opus Exports, we believe in the inherent beauty and durability of leather. Our skilled artisans carefully select premium hides and employ traditional techniques to transform them into exquisite leather goods. From handbags and wallets to shoes, belts, and accessories, each product in our collection is crafted with meticulous attention to detail and a passion for creating pieces that will stand the test of time.</p>\r\n\r\n<p style=\"text-align:justify\">Our commitment to quality is unwavering. We source the finest leathers from reputable suppliers, ensuring that our products meet the highest standards of durability, softness, and visual appeal. Our skilled craftsmen employ traditional methods alongside modern technology to create products that seamlessly blend tradition with innovation.</p>\r\n\r\n<p style=\"text-align:justify\">In addition to exceptional craftsmanship, we strive to create designs that are both classic and contemporary, ensuring that our leather products appeal to a wide range of tastes and preferences. Whether you&#39;re looking for a sophisticated handbag, a stylish pair of shoes, or a sleek wallet, our diverse range of designs caters to various styles and occasions.</p>\r\n\r\n<p style=\"text-align:justify\">We are dedicated to providing an exceptional customer experience. From the moment you browse our collection to the after-sales support, we aim to exceed your expectations. Our knowledgeable and friendly customer service team is ready to assist you with any inquiries, ensuring that your journey with our brand is seamless and enjoyable.</p>\r\n\r\n<p style=\"text-align:justify\">Environmental sustainability is a core value of our company. We are committed to minimizing our impact on the environment and promoting responsible sourcing and production practices. We work closely with our suppliers to ensure that the leather we use is ethically and sustainably sourced, and we continually seek ways to reduce waste and carbon emissions throughout our operations.</p>\r\n', NULL, NULL, 'Opus Exports | Leather Shoes Manufacturers in Kanpur\r\n', 'Opus Exports,  Leather Shoes Manufacturers in kanpur\r\n', 'Opus Exports,  Leather Shoes Manufacturers in kanpur\r\n', NULL, 0, 0, '2020-04-06 14:11:32', '2023-08-29 11:29:08'),
(3, 0, 'our products', '', 'our-products', '', '', '', NULL, NULL, 'Leather Shoes in Kanpur | Leather Shoes Manufacturers in Kanpur', 'Leather shoes, Leather bags, Leather Jackets, Leather Belts, Leather wallets, and Leather Watch Straps ', 'Opus Exports is an eminent manufacturer and exporter that deals in Leather shoes, Leather bags, Leather Jackets, Leather Belts, Leather wallets, and Leather Watch Straps in customized designs.', NULL, 0, 0, '2020-04-06 14:49:17', '2023-06-25 13:49:16'),
(4, 0, 'Sitemap', '', 'sitemap', '', '', '', NULL, NULL, 'Sitemap', 'Sitemap', 'Sitemap', NULL, 0, 0, '2020-04-07 02:40:23', '2023-05-09 16:09:36'),
(5, 0, 'Contact Us', '', 'contact-us', '', '', '', NULL, NULL, 'Opus Exports in Kanpur India Contact Details', 'Contact Details -L23/12 KDA Colony, Jajmau, Kanpur 208010, Uttar Pradesh, India, Mobile: +91 9044384663, email:info@opusexports.com', 'Opus Exports Contact Details -L23/12 KDA Colony, Jajmau, Kanpur 208010, Uttar Pradesh, India, Mobile: +91 9044384663, email:info@opusexports.com', NULL, 0, 0, '2020-04-07 02:41:54', '2023-06-25 14:06:28'),
(6, 0, 'Our Presence', '', 'our-presence', '', '', '', NULL, NULL, 'Leather Shoes Manufacturers in countryname | Leather Shoes Exporters For Men & Women', 'Leather Shoes in countryname, Leather Shoes Manufacturers in countryname, Leather Shoes  Exporters in countryname', 'Leather Shoes Exporters Opus Exports Is One Of The Best Leather Shoes Manufacturer  In countryname To Provide the Best Quality Leather To Our Customers.', NULL, 0, 0, '2020-04-07 02:43:52', '2023-06-27 10:24:51'),
(7, 0, 'Manufactures Category', '', 'manufactures-category', '', '', '', NULL, NULL, 'Manufactures Category', 'Manufactures Category', 'Manufactures Category', NULL, 0, 0, '2020-04-07 02:45:30', '2020-04-07 02:45:50'),
(8, 0, 'Suppliers Category', '', 'suppliers-category', '', '', '', NULL, NULL, 'Suppliers Category', 'Suppliers Category', 'Suppliers Category', NULL, 0, 0, '2020-04-07 02:46:15', '2020-04-07 02:46:35'),
(9, 0, 'Exporters Category', '', 'exporters-category', '', '', '', NULL, NULL, 'Exporters Category', 'Exporters Category', 'Exporters Category', NULL, 0, 0, '2020-04-07 02:47:00', '2020-04-07 02:47:18'),
(10, 0, 'Catalog', '', 'catalog', '', '', '<p style=\"text-align:justify\">Opus Exports is a leading provider of high-quality leather products, dedicated to offering exceptional craftsmanship, timeless designs, and superior customer service. With a rich heritage and a commitment to excellence, we have established ourselves as a trusted brand in the leather industry.</p>\r\n\r\n<p style=\"text-align:justify\">At Opus Exports, we believe in the inherent beauty and durability of leather. Our skilled artisans carefully select premium hides and employ traditional techniques to transform them into exquisite leather goods. From handbags and wallets to shoes, belts, and accessories, each product in our collection is crafted with meticulous attention to detail and a passion for creating pieces that will stand the test of time.</p>\r\n\r\n<p style=\"text-align:justify\">Our commitment to quality is unwavering. We source the finest leathers from reputable suppliers, ensuring that our products meet the highest standards of durability, softness, and visual appeal. Our skilled craftsmen employ traditional methods alongside modern technology to create products that seamlessly blend tradition with innovation.</p>\r\n', NULL, NULL, 'Leather Shoes Exporters in countryname | Leather Jacket Exporters in countryname ', 'Leather Shoes in countryname, Leather Shoes Exporters in countryname, Leather Shoes  Exporters in countryname', 'Leather Shoes Exporters in countryname Opus Exports Is One Of The Best Leather Jacket Exporters in countryname To Provide the Best Quality Leather To Our Customers.', NULL, 0, 0, '2020-04-07 02:58:08', '2023-06-27 10:27:55'),
(11, 0, 'Location Product', '', 'location-product', '', '', '', NULL, NULL, 'Our Products', 'Our Products', 'Our Products', NULL, 0, 0, '2020-04-07 12:56:23', '2020-04-07 12:57:09'),
(12, 0, 'Category Products', NULL, 'category-products', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-06-06 14:17:51', '2020-06-06 14:17:51');

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
  `iconcss1` varchar(255) DEFAULT NULL,
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

INSERT INTO `socialicons` (`id`, `name`, `url`, `slug`, `iconcss`, `iconcss1`, `image`, `remark`, `socialicon_order`, `views`, `active`, `created`, `modified`) VALUES
(1, 'Facebook', 'https://www.facebook.com', NULL, 'fa fa-facebook-f', 'entypo-facebook', '', NULL, 0, 0, 1, '2020-01-25 17:50:12', '2020-04-07 13:16:57'),
(2, 'Twitter', 'https://twitter.com', NULL, 'fa fa-twitter', 'entypo-twitter', '', NULL, 0, 0, 1, '2020-01-25 17:50:27', '2020-04-07 13:17:50'),
(5, 'Linkedin', 'https://www.linkedin.com/', NULL, 'fa fa-linkedin', 'entypo-linkedin', '', NULL, 0, 0, 1, '2020-02-21 18:12:14', '2020-04-07 13:18:41'),
(6, 'Instagram', 'https://www.instagram.com', NULL, 'fa fa-instagram', 'entypo-instagram', '', NULL, 0, 0, 1, '2020-02-24 09:52:36', '2020-06-02 18:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `company1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `meta_title` text,
  `meta_desc` text,
  `meta_keyword` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `active` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 'admin', '8c6a98ab364939c3ce7852c814b757b59c1aca20', 'samatra@123', NULL, NULL, NULL, NULL, 0, NULL, 1, '2018-04-26 10:34:07', '2023-08-29 11:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modified` (`modified`),
  ADD KEY `name_slug` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locationsx`
--
ALTER TABLE `locationsx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagelayouts`
--
ALTER TABLE `pagelayouts`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productfacilities`
--
ALTER TABLE `productfacilities`
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
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `locationsx`
--
ALTER TABLE `locationsx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `pagelayouts`
--
ALTER TABLE `pagelayouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `productfacilities`
--
ALTER TABLE `productfacilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
