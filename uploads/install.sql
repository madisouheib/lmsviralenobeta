-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 13, 2023 at 10:02 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy_6.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('82us7lsji0pblogn6d47q79ogbos1hio', '::1', 1689240621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638393234303632313b636f756e7443616c6c7c693a313b5f5f63695f766172737c613a313a7b733a393a22636f756e7443616c6c223b733a333a226f6c64223b7d636172745f6974656d737c613a303a7b7d6c616e67756167657c733a373a22656e676c697368223b);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `faqs` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT '0',
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL,
  `expiry_period` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT '0',
  `iyzico_supported` int(11) DEFAULT '0',
  `paystack_supported` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT '0',
  `expiry_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default-new'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', '{"home_1":"home-1.png","home_2":"home-2.png","home_3":"home-3.png","home_4":"home-4.png","home_5":"home-5.png","home_6":"home-6.png"}'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1'),
(37, 'website_faqs', '[{\"question\":\"\",\"answer\":\"\"}]'),
(38, 'motivational_speech', '[{\"title\":\"\",\"description\":\"\",\"image\":\"\"}]'),
(39, 'home_page', 'home_1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'English', 'English'),
(2, 'home', 'Home'),
(3, 'courses', 'Courses'),
(4, 'all_courses', 'All courses'),
(5, 'search', 'Search'),
(6, 'you_have_no_items_in_your_cart!', 'You have no items in your cart!'),
(7, 'checkout', 'Checkout'),
(8, 'login', 'Login'),
(9, 'join_now', 'Join now'),
(10, 'sign_up', 'Sign up'),
(11, 'categories', 'Categories'),
(12, 'cookie_policy', 'Cookie policy'),
(13, 'accept', 'Accept'),
(14, 'start_learning_from_best_platform', 'Start learning from best platform'),
(15, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(16, 'what_do_you_want_to_learn', 'What do you want to learn'),
(17, 'happy', 'Happy'),
(18, 'students', 'Students'),
(19, 'experienced', 'Experienced'),
(20, 'instructors', 'Instructors'),
(21, 'online_courses', 'Online courses'),
(22, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'),
(23, 'expert_instruction', 'Expert instruction'),
(24, 'find_the_right_course_for_you', 'Find the right course for you'),
(25, 'smart_solution', 'Smart solution'),
(26, 'learn_on_your_schedule', 'Learn on your schedule'),
(27, 'top_courses', 'Top courses'),
(28, 'these_are_the_most_popular_courses_among_listen_courses_learners_worldwide', 'These are the most popular courses among listen courses learners worldwide'),
(29, 'top_categories', 'Top categories'),
(30, 'top', 'Top'),
(31, 'latest_courses', 'Latest courses'),
(32, 'these_are_the_most_latest_courses_among_listen_courses_learners_worldwide', 'These are the most latest courses among listen courses learners worldwide'),
(33, 'think_more_clearly', 'Think more clearly'),
(34, 'gather_your_thoughts,_and_make_your_decisions_clearly', 'Gather your thoughts, and make your decisions clearly'),
(35, 'frequently_asked_questions', 'Frequently asked questions'),
(36, 'have_something_to_know?', 'Have something to know?'),
(37, 'check_here_if_you_have_any_questions_about_us.', 'Check here if you have any questions about us.'),
(38, 'join_now_to_start_learning', 'Join now to start learning'),
(39, 'learn_from_our_quality_instructors!', 'Learn from our quality instructors!'),
(40, 'get_started', 'Get started'),
(41, 'become_a_new_instructor', 'Become a new instructor'),
(42, 'teach_thousands_of_students_and_earn_money!', 'Teach thousands of students and earn money!'),
(43, 'useful_links', 'Useful links'),
(44, 'blog', 'Blog'),
(45, 'help', 'Help'),
(46, 'contact_us', 'Contact us'),
(47, 'about_us', 'About us'),
(48, 'privacy_policy', 'Privacy policy'),
(49, 'terms_and_condition', 'Terms and condition'),
(50, 'faq', 'Faq'),
(51, 'refund_policy', 'Refund policy'),
(52, 'subscribe_to_our_newsletter', 'Subscribe to our newsletter'),
(53, 'enter_your_email_address', 'Enter your email address'),
(54, 'creativeitem', 'Creativeitem'),
(55, 'are_you_sure', 'Are you sure'),
(56, 'yes', 'Yes'),
(57, 'no', 'No'),
(58, '404_not_found', '404 not found'),
(59, 'the_page_you_requested_could_not_be_found', 'The page you requested could not be found'),
(60, 'check_the_spelling_of_the_url', 'Check the spelling of the url'),
(61, 'if_you_are_still_puzzled,_click_on_the_home_link_below', 'If you are still puzzled, click on the home link below'),
(62, 'back_to_home', 'Back to home'),
(63, 'log_in', 'Log in'),
(64, 'explore,_learn,_and_grow_with_us._enjoy_a_seamless_and_enriching_educational_journey._lets_begin!', 'Explore, learn, and grow with us. enjoy a seamless and enriching educational journey. lets begin!'),
(65, 'your_email', 'Your email'),
(66, 'enter_your_email', 'Enter your email'),
(67, 'password', 'Password'),
(68, 'enter_your_valid_password', 'Enter your valid password'),
(69, 'forgot_password?', 'Forgot password?'),
(70, 'don`t_have_an_account?', 'Don`t have an account?'),
(71, 'or', 'Or'),
(72, 'invalid_login_credentials', 'Invalid login credentials'),
(73, 'welcome', 'Welcome'),
(74, 'dashboard', 'Dashboard'),
(75, 'quick_actions', 'Quick actions'),
(76, 'create_course', 'Create course'),
(77, 'add_course', 'Add course'),
(78, 'add_new_lesson', 'Add new lesson'),
(79, 'add_lesson', 'Add lesson'),
(80, 'add_student', 'Add student'),
(81, 'enrol_a_student', 'Enrol a student'),
(82, 'enrol_student', 'Enrol student'),
(83, 'help_center', 'Help center'),
(84, 'read_documentation', 'Read documentation'),
(85, 'watch_video_tutorial', 'Watch video tutorial'),
(86, 'get_customer_support', 'Get customer support'),
(87, 'order_customization', 'Order customization'),
(88, 'request_a_new_feature', 'Request a new feature'),
(89, 'browse_addons', 'Browse addons'),
(90, 'remove_all', 'Remove all'),
(91, 'notification', 'Notification'),
(92, 'no_notification', 'No notification'),
(93, 'stay_tuned!', 'Stay tuned!'),
(94, 'notifications_about_your_activity_will_show_up_here.', 'Notifications about your activity will show up here.'),
(95, 'notification_settings', 'Notification settings'),
(96, 'mark_all_as_read', 'Mark all as read'),
(97, 'admin', 'Admin'),
(98, 'my_account', 'My account'),
(99, 'settings', 'Settings'),
(100, 'logout', 'Logout'),
(101, 'visit_website', 'Visit website'),
(102, 'navigation', 'Navigation'),
(103, 'manage_courses', 'Manage courses'),
(104, 'add_new_course', 'Add new course'),
(105, 'course_category', 'Course category'),
(106, 'coupons', 'Coupons'),
(107, 'enrollments', 'Enrollments'),
(108, 'course_enrollment', 'Course enrollment'),
(109, 'enrol_history', 'Enrol history'),
(110, 'report', 'Report'),
(111, 'admin_revenue', 'Admin revenue'),
(112, 'instructor_revenue', 'Instructor revenue'),
(113, 'purchase_history', 'Purchase history'),
(114, 'users', 'Users'),
(115, 'admins', 'Admins'),
(116, 'manage_admins', 'Manage admins'),
(117, 'add_new_admin', 'Add new admin'),
(118, 'manage_instructors', 'Manage instructors'),
(119, 'add_new_instructor', 'Add new instructor'),
(120, 'instructor_payout', 'Instructor payout'),
(121, 'instructor_settings', 'Instructor settings'),
(122, 'applications', 'Applications'),
(123, 'manage_students', 'Manage students'),
(124, 'add_new_student', 'Add new student'),
(125, 'message', 'Message'),
(126, 'all_blogs', 'All blogs'),
(127, 'pending_blog', 'Pending blog'),
(128, 'blog_category', 'Blog category'),
(129, 'blog_settings', 'Blog settings'),
(130, 'newsletter', 'Newsletter'),
(131, 'all_newsletter', 'All newsletter'),
(132, 'subscribed_user', 'Subscribed user'),
(133, 'addons', 'Addons'),
(134, 'themes', 'Themes'),
(135, 'system_settings', 'System settings'),
(136, 'website_settings', 'Website settings'),
(137, 'academy_cloud', 'Academy cloud'),
(138, 'drip_content_settings', 'Drip content settings'),
(139, 'payment_settings', 'Payment settings'),
(140, 'language_settings', 'Language settings'),
(141, 'social_login', 'Social login'),
(142, 'custom_page_builder', 'Custom page builder'),
(143, 'data_center', 'Data center'),
(144, 'about', 'About'),
(145, 'manage_profile', 'Manage profile'),
(146, 'admin_revenue_this_year', 'Admin revenue this year'),
(147, 'number_courses', 'Number courses'),
(148, 'number_of_lessons', 'Number of lessons'),
(149, 'number_of_enrolment', 'Number of enrolment'),
(150, 'number_of_student', 'Number of student'),
(151, 'course_overview', 'Course overview'),
(152, 'active_courses', 'Active courses'),
(153, 'pending_courses', 'Pending courses'),
(154, 'requested_withdrawal', 'Requested withdrawal'),
(155, 'january', 'January'),
(156, 'february', 'February'),
(157, 'march', 'March'),
(158, 'april', 'April'),
(159, 'may', 'May'),
(160, 'june', 'June'),
(161, 'july', 'July'),
(162, 'august', 'August'),
(163, 'september', 'September'),
(164, 'october', 'October'),
(165, 'november', 'November'),
(166, 'december', 'December'),
(167, 'this_year', 'This year'),
(168, 'active_course', 'Active course'),
(169, 'pending_course', 'Pending course'),
(170, 'heads_up', 'Heads up'),
(171, 'congratulations', 'Congratulations'),
(172, 'oh_snap', 'Oh snap'),
(173, 'please_fill_all_the_required_fields', 'Please fill all the required fields'),
(174, 'close', 'Close'),
(175, 'cancel', 'Cancel'),
(176, 'continue', 'Continue'),
(177, 'ok', 'Ok'),
(178, 'success', 'Success'),
(179, 'your_server_does_not_allow_uploading_files_that_large.', 'Your server does not allow uploading files that large.'),
(180, 'your_servers_file_upload_limit_is_900mb', 'Your servers file upload limit is 900mb'),
(181, 'successfully', 'Successfully'),
(182, 'div_added_to_bottom_', 'Div added to bottom '),
(183, 'div_has_been_deleted_', 'Div has been deleted '),
(184, 'website_notification', 'Website notification'),
(185, 'smtp_settings', 'Smtp settings'),
(186, 'email_template', 'Email template'),
(187, 'protocol', 'Protocol'),
(188, 'smtp_crypto', 'Smtp crypto'),
(189, 'smtp_host', 'Smtp host'),
(190, 'smtp_port', 'Smtp port'),
(191, 'smtp_from_email', 'Smtp from email'),
(192, 'smtp_username', 'Smtp username'),
(193, 'smtp_password', 'Smtp password'),
(194, 'save', 'Save'),
(195, 'email_type', 'Email type'),
(196, 'email_subject', 'Email subject'),
(197, 'action', 'Action'),
(198, 'to_admin', 'To admin'),
(199, 'to_user', 'To user'),
(200, 'edit_email_template', 'Edit email template'),
(201, 'to_instructor', 'To instructor'),
(202, 'to_student', 'To student'),
(203, 'to_affiliator', 'To affiliator'),
(204, 'to_payer', 'To payer'),
(205, 'to_receiver', 'To receiver'),
(206, 'configure_your_notification_settings', 'Configure your notification settings'),
(207, 'new_user_registration', 'New user registration'),
(208, 'get_notified_when_a_new_user_signs_up', 'Get notified when a new user signs up'),
(209, 'configure_for_admin', 'Configure for admin'),
(210, 'system_notification', 'System notification'),
(211, 'email_notification', 'Email notification'),
(212, 'configure_for_user', 'Configure for user'),
(213, 'email_verification', 'Email verification'),
(214, 'not_editable', 'Not editable'),
(215, 'it_is_permanently_enabled_for_student_email_verification.', 'It is permanently enabled for student email verification.'),
(216, 'forgot_password_mail', 'Forgot password mail'),
(217, 'account_security_alert', 'Account security alert'),
(218, 'send_verification_code_for_login_from_a_new_device', 'Send verification code for login from a new device'),
(219, 'course_purchase_notification', 'Course purchase notification'),
(220, 'stay_up-to-date_on_student_course_purchases.', 'Stay up-to-date on student course purchases.'),
(221, 'configure_for_student', 'Configure for student'),
(222, 'configure_for_instructor', 'Configure for instructor'),
(223, 'course_completion_mail', 'Course completion mail'),
(224, 'stay_up_to_date_on_student_course_completion.', 'Stay up to date on student course completion.'),
(225, 'course_eligibility_notification', 'Course eligibility notification'),
(226, 'stay_up_to_date_on_course_certificate_eligibility.', 'Stay up to date on course certificate eligibility.'),
(227, 'offline_payment_suspended_mail', 'Offline payment suspended mail'),
(228, 'if_students_provides_fake_information,_notify_them_of_the_suspension', 'If students provides fake information, notify them of the suspension'),
(229, 'course_bundle_purchase_notification', 'Course bundle purchase notification'),
(230, 'stay_up-to-date_on_student_course_bundle_purchases.', 'Stay up-to-date on student course bundle purchases.'),
(231, 'new_user_added_as_affiliator', 'New user added as affiliator'),
(232, 'send_account_information_to_the_new_user', 'Send account information to the new user'),
(233, 'configure_for_affiliator', 'Configure for affiliator'),
(234, 'affiliate_approval_notification', 'Affiliate approval notification'),
(235, 'send_affiliate_approval_mail_to_the_user_account', 'Send affiliate approval mail to the user account'),
(236, 'affiliator_request_cancellation', 'Affiliator request cancellation'),
(237, 'send_mail,_when_you_cancel_the_affiliation_request', 'Send mail, when you cancel the affiliation request'),
(238, 'affiliation_money_withdrawal_request', 'Affiliation money withdrawal request'),
(239, 'send_mail,_when_the_users_request_the_withdrawal_of_money', 'Send mail, when the users request the withdrawal of money'),
(240, 'approval_of_withdrawal_request_of_affiliation', 'Approval of withdrawal request of affiliation'),
(241, 'send_mail,_when_you_approved_the_affiliation_withdrawal_request', 'Send mail, when you approved the affiliation withdrawal request'),
(242, 'course_gift_notification', 'Course gift notification'),
(243, 'notify_users_after_course_gift', 'Notify users after course gift'),
(244, 'configure_for_payer', 'Configure for payer'),
(245, 'configure_for_receiver', 'Configure for receiver'),
(246, 'save_changes', 'Save changes'),
(247, 'email_template_updated_successfully', 'Email template updated successfully'),
(248, 'website_name', 'Website name'),
(249, 'website_title', 'Website title'),
(250, 'website_keywords', 'Website keywords'),
(251, 'website_description', 'Website description'),
(252, 'author', 'Author'),
(253, 'slogan', 'Slogan'),
(254, 'system_email', 'System email'),
(255, 'address', 'Address'),
(256, 'phone', 'Phone'),
(257, 'youtube_api_key', 'Youtube api key'),
(258, 'get_youtube_api_key', 'Get youtube api key'),
(259, 'if_you_want_to_use_google_drive_video,_you_need_to_enable_the_google_drive_service_in_this_api', 'If you want to use google drive video, you need to enable the google drive service in this api'),
(260, 'vimeo_api_key', 'Vimeo api key'),
(261, 'get_vimeo_api_key', 'Get vimeo api key'),
(262, 'purchase_code', 'Purchase code'),
(263, 'system_language', 'System language'),
(264, 'student_email_verification', 'Student email verification'),
(265, 'enable', 'Enable'),
(266, 'disable', 'Disable'),
(267, 'course_accessibility', 'Course accessibility'),
(268, 'publicly', 'Publicly'),
(269, 'only_logged_in_users', 'Only logged in users'),
(270, 'number_of_authorized_devices', 'Number of authorized devices'),
(271, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account'),
(272, 'course_selling_tax', 'Course selling tax'),
(273, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option'),
(274, 'google_analytics_id', 'Google analytics id'),
(275, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it'),
(276, 'meta_pixel_id', 'Meta pixel id'),
(277, 'footer_text', 'Footer text'),
(278, 'footer_link', 'Footer link'),
(279, 'update_product', 'Update product'),
(280, 'file', 'File'),
(281, 'update', 'Update'),
(282, 'administration', 'Administration'),
(283, 'log_out', 'Log out');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `is_free` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `quiz_attempt` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_editable` int(11) DEFAULT NULL,
  `addon_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_types` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_notification` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_notification` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` longtext COLLATE utf8_unicode_ci,
  `setting_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_sub_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `type`, `is_editable`, `addon_identifier`, `user_types`, `system_notification`, `email_notification`, `subject`, `template`, `setting_title`, `setting_sub_title`, `date_updated`) VALUES
(1, 'signup', 1, NULL, '[\"admin\",\"user\"]', '{\"admin\":\"1\",\"user\":\"1\"}', '{\"admin\":\"0\",\"user\":\"0\"}', '{\"admin\":\"New user registered\",\"user\":\"Registered successfully\"}', '{\"admin\":\"New user registered [user_name] \\r\\n<br>User email: <b>[user_email]<\\/b>\",\"user\":\"You have successfully registered with us at [system_name].\"}', 'New user registration', 'Get notified when a new user signs up', '1684786525'),
(2, 'email_verification', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Email verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [email_verification_code]\"}', 'Email verification', 'It is permanently enabled for student email verification.', '1684135777'),
(3, 'forget_password_mail', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Forgot password verification code\"}', '{\"user\":\"You have received a email verification code. Your verification code is [system_name][verification_link][minutes]\"}', 'Forgot password mail', 'It is permanently enabled for student email verification.', '1684145383'),
(4, 'new_device_login_confirmation', 0, NULL, '[\"user\"]', '{\"user\":\"0\"}', '{\"user\":\"1\"}', '{\"user\":\"Please confirm your login\"}', '{\"user\":\"Have you tried logging in with a different device? Confirm using the verification code. Your verification code is [verification_code]. Remember that you will lose access to your previous device after logging in to the new device [user_agent]. Use the verification code within [minutes] minutes\"}', 'Account security alert', 'Send verification code for login from a new device', '1684145383'),
(6, 'course_purchase', 1, NULL, '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course has been sold\",\"instructor\":\"A new course has been sold\",\"student\":\"You have purchased a new course\"}', '{\"admin\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\",\"instructor\":\"Course title: [course_title]\\r\\nStudent: [student_name]\\r\\nPaid amount: [paid_amount]\",\"student\":\"Course title: [course_title]\\r\\nPaid amount: [paid_amount]\\r\\nInstructor: [instructor_name]\"}', 'Course purchase notification', 'Stay up-to-date on student course purchases.', '1684303456'),
(7, 'course_completion_mail', 1, NULL, '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Course completion\",\"student\":\"You have completed a new course\"}', '{\"instructor\":\"Course completed [course_title]\\r\\nStudent: [student_name]\",\"student\":\"[course_title][instructor_name]\"}', 'Course completion mail', 'Stay up to date on student course completion.', '1684303457'),
(8, 'certificate_eligibility', 1, 'certificate', '[\"student\",\"instructor\"]', '{\"student\":\"1\",\"instructor\":\"1\"}', '{\"student\":\"0\",\"instructor\":\"0\"}', '{\"instructor\":\"Certificate eligibility\",\"student\":\"certificate eligibility\"}', '{\"instructor\":\"[course_title][student_name][certificate_link]\",\"student\":\"[course_title][instructor_name][certificate_link]\"}', 'Course eligibility notification', 'Stay up to date on course certificate eligibility.', '1684303460'),
(9, 'offline_payment_suspended_mail', 1, 'offline_payment', '[\"student\"]', '{\"student\":\"1\"}', '{\"student\":\"0\"}', '{\"student\":\"Your payment has been suspended\"}', '{\"student\":\"<p>Your offline payment has been <b style=\'color: red;\'>suspended</b> !</p><p>Please provide a valid document of your payment.</p>\"}', 'Offline payment suspended mail', 'If students provides fake information, notify them of the suspension', '1684303463'),
(10, 'bundle_purchase', 1, 'course_bundle', '[\"admin\",\"student\",\"instructor\"]', '{\"admin\":\"1\",\"student\":\"1\",\"instructor\":\"1\"}', '{\"admin\":\"0\",\"student\":\"0\",\"instructor\":\"0\"}', '{\"admin\":\"A new course bundle has been sold \",\"instructor\":\"A new course bundle has been sold \",\"student\":\"You have purchased a new course bundle test\"}', '{\"admin\":\"[bundle_title][student_name][instructor_name] \",\"instructor\":\"[bundle_title][student_name] \",\"student\":\"[bundle_title][instructor_name] \"}', 'Course bundle purchase notification', 'Stay up-to-date on student course bundle purchases.', '1684303467'),
(13, 'add_new_user_as_affiliator', 0, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"Congratulation ! You are assigned as an affiliator test\"}', '{\"affiliator\":\"[website_link][password] test\"}', 'New user added as affiliator', 'Send account information to the new user', '1684135777'),
(14, 'affiliator_approval_notification', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', '{\"affiliator\":\"Congratulations! Your affiliate request has been approved\"}', 'Affiliate approval notification', 'Send affiliate approval mail to the user account', '1684303472'),
(15, 'affiliator_request_cancellation', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused\"}', '{\"affiliator\":\"Sorry ! Your request has been currently refused.\"}', 'Affiliator request cancellation', 'Send mail, when you cancel the affiliation request', '1684303473'),
(16, 'affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"admin\",\"affiliator\"]', '{\"admin\":\"1\",\"affiliator\":\"1\"}', '{\"admin\":\"0\",\"affiliator\":\"0\"}', '{\"admin\":\"New money withdrawal request\",\"affiliator\":\"New money withdrawal request\"}', '{\"admin\":\"New money withdrawal request by [\'user_name] [amount]\",\"affiliator\":\"Your Withdrawal request of [amount] has been sent to authority\"}', 'Affiliation money withdrawal request', 'Send mail, when the users request the withdrawal of money', '1684303476'),
(17, 'approval_affiliation_amount_withdrawal_request', 1, 'affiliate_course', '[\"affiliator\"]', '{\"affiliator\":\"1\"}', '{\"affiliator\":\"0\"}', '{\"affiliator\":\"Congartulation ! Your withdrawal request has been approved\"}', '{\"affiliator\":\"Congartulation ! Your payment request has been approved.\"}', 'Approval of withdrawal request of affiliation', 'Send mail, when you approved the affiliation withdrawal request', '1684303480'),
(18, 'course_gift', 1, NULL, '[\"payer\",\"receiver\"]', '{\"payer\":\"1\",\"receiver\":\"1\"}', '{\"payer\":\"0\",\"receiver\":\"0\"}', '{\"payer\":\"You have gift a course\",\"receiver\":\"You have received a course gift\"}', '{\"payer\":\"You have gift a course to [user_name] [course_title][instructor]\",\"receiver\":\"You have received a course gift by [course_title][instructor]\"}', 'Course gift notification', 'Notify users after course gift', '1684303482');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keys` text COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1673264610');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Academy LMS'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', 'vimeo-api-key'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', 'Creativeitem'),
(24, 'footer_link', 'https://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'enter-your-username'),
(29, 'smtp_pass', 'enter-your-password'),
(30, 'version', '6.0'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'fb-app-id'),
(36, 'fb_app_secret', 'fb-app-secret'),
(37, 'fb_social_login', '0'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"duration\",\"minimum_duration\":15,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '10'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '0'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
(50, 'ccavenue_currency', 'INR'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
(52, 'iyzico_currency', 'TRY'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
(54, 'paystack_currency', 'NGN'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
(57, 'google_analytics_id', ''),
(58, 'meta_pixel_id', ''),
(59, 'smtp_from_email', 'enter-from-email');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessions` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `completed_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
