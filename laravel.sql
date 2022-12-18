-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 08:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE `circles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `court_id` bigint(20) UNSIGNED NOT NULL,
  `circle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `owner_id`, `company_name`, `company_phone`, `company_address`, `created_at`, `updated_at`) VALUES
(6, 1, 'Comp 1', '0569524448', NULL, NULL, NULL),
(7, 2, 'Comp 2', '0569524448', NULL, NULL, NULL),
(8, 3, 'Comp 3', '0569524448', NULL, NULL, NULL),
(9, 4, 'Comp 4', '0569524448', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('company','person') COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conutries`
--

CREATE TABLE `conutries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conutries`
--

INSERT INTO `conutries` (`id`, `en_name`, `ar_name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'أفغنستان', 'AFG', NULL, NULL),
(2, 'Albania', 'ألبانيا', 'ALB', NULL, NULL),
(3, 'Algeria', 'الجزائر', 'DZA', NULL, NULL),
(4, 'American Samoa', 'ساموا الأمريكية', 'ASM', NULL, NULL),
(5, 'Andorra', 'أندورا', '0', NULL, NULL),
(6, 'Angola', 'أنغولا', 'AGO', NULL, NULL),
(7, 'Anguilla', 'أنغيلا', 'AIA', NULL, NULL),
(8, 'Antarctica', 'أنتاركتيكا', '0', NULL, NULL),
(9, 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'ATG', NULL, NULL),
(10, 'Argentina', 'الأرجنتين', 'ARG', NULL, NULL),
(11, 'Armenia', 'أرمينيا', 'ARM', NULL, NULL),
(12, 'Aruba', 'أروبا', 'ABW', NULL, NULL),
(13, 'Australia', 'أستراليا', 'AUS', NULL, NULL),
(14, 'Austria', 'النمسا', 'AUT', NULL, NULL),
(15, 'Azerbaijan', 'أذربيجان', 'AZE', NULL, NULL),
(16, 'Bahamas', 'البهاما', 'BHS', NULL, NULL),
(17, 'Bahrain', 'البحرين', 'BHR', NULL, NULL),
(18, 'Bangladesh', 'بنغلاديش', 'BGD', NULL, NULL),
(19, 'Barbados', 'بربادوس', 'BRB', NULL, NULL),
(20, 'Belarus', 'بيلاروسيا', 'BLR', NULL, NULL),
(21, 'Belgium', 'بلجيكا', 'BEL', NULL, NULL),
(22, 'Belize', 'بيليز', 'BLZ', NULL, NULL),
(23, 'Benin', 'بنين', 'BEN', NULL, NULL),
(24, 'Bermuda', 'برمودا', 'BMU', NULL, NULL),
(25, 'Bhutan', 'بوتان', 'BTN', NULL, NULL),
(26, 'Bolivia', 'بوليفيا', 'BOL', NULL, NULL),
(27, 'Bosnia and Herzegovina', 'البوسنة والهرسك', 'BIH', NULL, NULL),
(28, 'Botswana', 'بوتسوانا', 'BWA', NULL, NULL),
(29, 'Bouvet Island', 'جزيرة بوفيت', '0', NULL, NULL),
(30, 'Brazil', 'البرازيل', 'BRA', NULL, NULL),
(31, 'British Indian Ocean Territory', 'إقليم المحيط البريطاني الهندي', '0', NULL, NULL),
(32, 'Brunei Darussalam', 'بروناي دار السلام', 'BRN', NULL, NULL),
(33, 'Bulgaria', 'بلغاريا', 'BGR', NULL, NULL),
(34, 'Burkina Faso', 'بوركينا فاسو', 'BFA', NULL, NULL),
(35, 'Burundi', 'بوروندي', 'BDI', NULL, NULL),
(36, 'Cambodia', 'كمبوديا', 'KHM', NULL, NULL),
(37, 'Cameroon', 'الكاميرون', 'CMR', NULL, NULL),
(38, 'Canada', 'كندا', 'CAN', NULL, NULL),
(39, 'Cape Verde', 'كيب فيردي', 'CPV', NULL, NULL),
(40, 'Cayman Islands', 'جزر كايمان', 'CYM', NULL, NULL),
(41, 'Central African Republic', 'جمهورية افريقيا الوسطى', 'CAF', NULL, NULL),
(42, 'Chad', 'تشاد', 'TCD', NULL, NULL),
(43, 'Chile', 'شيلي', 'CHL', NULL, NULL),
(44, 'China', 'الصين', 'CHN', NULL, NULL),
(45, 'Christmas Island', 'جزيرة الكريسماس', '0', NULL, NULL),
(46, 'Cocos (Keeling) Islands', 'جزر كوكوس (كيلينغ)', '0', NULL, NULL),
(47, 'Colombia', 'كولومبيا', 'COL', NULL, NULL),
(48, 'Comoros', 'جزر القمر', 'COM', NULL, NULL),
(49, 'Congo', 'الكونغو', 'COG', NULL, NULL),
(50, 'Congo, the Democratic Republic of the', 'جمهورية الكونغو الديمقراطية', 'COD', NULL, NULL),
(51, 'Cook Islands', 'جزر كوك', 'COK', NULL, NULL),
(52, 'Costa Rica', 'كوستاريكا', 'CRI', NULL, NULL),
(53, 'Cote DIvoire', 'ساحل العاج', 'CIV', NULL, NULL),
(54, 'Croatia', 'كرواتيا', 'HRV', NULL, NULL),
(55, 'Cuba', 'كوبا', 'CUB', NULL, NULL),
(56, 'Cyprus', 'قبرص', 'CYP', NULL, NULL),
(57, 'Czech Republic', 'الجمهورية التشيكية', 'CZE', NULL, NULL),
(58, 'Denmark', 'الدنمارك', 'DNK', NULL, NULL),
(59, 'Djibouti', 'جيبوتي', 'DJI', NULL, NULL),
(60, 'Dominica', 'دومينيكا', 'DMA', NULL, NULL),
(61, 'Dominican Republic', 'جمهورية الدومنيكان', 'DOM', NULL, NULL),
(62, 'Ecuador', 'الاكوادور', 'ECU', NULL, NULL),
(63, 'Egypt', 'مصر', 'EGY', NULL, NULL),
(64, 'El Salvador', 'السلفادور', 'SLV', NULL, NULL),
(65, 'Equatorial Guinea', 'غينيا الإستوائية', 'GNQ', NULL, NULL),
(66, 'Eritrea', 'إريتريا', 'ERI', NULL, NULL),
(67, 'Estonia', 'إستونيا', 'EST', NULL, NULL),
(68, 'Ethiopia', 'أثيوبيا', 'ETH', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', 'جزر فوكلاند', 'FLK', NULL, NULL),
(70, 'Faroe Islands', 'جزر فاروس', 'FRO', NULL, NULL),
(71, 'Fiji', 'فيجي ', 'FJI', NULL, NULL),
(72, 'Finland', 'فنلندا', 'FIN', NULL, NULL),
(73, 'France', 'فرنسا', 'FRA', NULL, NULL),
(74, 'French Guiana', 'غيانا الفرنسية', 'GUF', NULL, NULL),
(75, 'French Polynesia', 'بولينيزيا الفرنسية', 'PYF', NULL, NULL),
(76, 'French Southern Territories', 'المناطق الجنوبية لفرنسا', '0', NULL, NULL),
(77, 'Gabon', 'جابون', 'GAB', NULL, NULL),
(78, 'Gambia', 'غامبيا', 'GMB', NULL, NULL),
(79, 'Georgia', 'جورجيا', 'GEO', NULL, NULL),
(80, 'Germany', 'ألمانيا', 'DEU', NULL, NULL),
(81, 'Ghana', 'غانا', 'GHA', NULL, NULL),
(82, 'Gibraltar', 'جبل طارق', 'GIB', NULL, NULL),
(83, 'Greece', 'اليونان', 'GRC', NULL, NULL),
(84, 'Greenland', 'الأرض الخضراء', 'GRL', NULL, NULL),
(85, 'Grenada', 'غرينادا', 'GRD', NULL, NULL),
(86, 'Guadeloupe', 'غوادلوب', 'GLP', NULL, NULL),
(87, 'Guam', 'غوام', 'GUM', NULL, NULL),
(88, 'Guatemala', 'جواتيمالا', 'GTM', NULL, NULL),
(89, 'Guinea', 'غينيا', 'GIN', NULL, NULL),
(90, 'Guinea-Bissau', 'غينيا بيساو', 'GNB', NULL, NULL),
(91, 'Guyana', 'غويانا', 'GUY', NULL, NULL),
(92, 'Haiti', 'هايتي', 'HTI', NULL, NULL),
(93, 'Heard Island and Mcdonald Islands', 'قلب الجزيرة وجزر ماكدونالز', '0', NULL, NULL),
(94, 'Holy See (Vatican City State)', 'الفاتيكان', 'VAT', NULL, NULL),
(95, 'Honduras', 'هندوراس', 'HND', NULL, NULL),
(97, 'Hungary', 'هنغاريا', 'HUN', NULL, NULL),
(98, 'Iceland', 'أيسلندا', 'ISL', NULL, NULL),
(99, 'India', 'الهند', 'IND', NULL, NULL),
(100, 'Indonesia', 'إندونيسيا', 'IDN', NULL, NULL),
(101, 'Iran, Islamic Republic of', 'إيران, ISLAMIC REPUBLIC OF', 'IRN', NULL, NULL),
(102, 'Iraq', 'العراق', 'IRQ', NULL, NULL),
(103, 'Ireland', 'إيرلندا', 'IRL', NULL, NULL),
(105, 'Italy', 'إيطاليا', 'ITA', NULL, NULL),
(106, 'Jamaica', 'جامايكا', 'JAM', NULL, NULL),
(107, 'Japan', 'اليابان', 'JPN', NULL, NULL),
(108, 'Jordan', 'الأردن', 'JOR', NULL, NULL),
(109, 'Kazakhstan', 'كازاخستان', 'KAZ', NULL, NULL),
(110, 'Kenya', 'كينيا', 'KEN', NULL, NULL),
(111, 'Kiribati', 'كيريباتي', 'KIR', NULL, NULL),
(112, 'Korea, Democratic People Republic of', 'كوريا، الجمهورية الشعبية الديمقراطية', 'PRK', NULL, NULL),
(113, 'Korea, Republic of', 'جمهورية كوريا', 'KOR', NULL, NULL),
(114, 'Kuwait', 'الكويت', 'KWT', NULL, NULL),
(115, 'Kyrgyzstan', 'قرغيزستان', 'KGZ', NULL, NULL),
(116, 'Lao People Democratic Republic', 'جمهورية لاو الديمقراطية الشعبية', 'LAO', NULL, NULL),
(117, 'Latvia', 'لاتفيا', 'LVA', NULL, NULL),
(118, 'Lebanon', 'لبنان', 'LBN', NULL, NULL),
(119, 'Lesotho', 'ليسوتو', 'LSO', NULL, NULL),
(120, 'Liberia', 'ليبيريا', 'LBR', NULL, NULL),
(121, 'Libyan Arab Jamahiriya', 'الجماهيرية العربية الليبية', 'LBY', NULL, NULL),
(122, 'Liechtenstein', 'ليختنشتاين', 'LIE', NULL, NULL),
(123, 'Lithuania', 'ليثوانيا', 'LTU', NULL, NULL),
(124, 'Luxembourg', 'لوكسمبورغ', 'LUX', NULL, NULL),
(125, 'Macao', 'ماكاو', 'MAC', NULL, NULL),
(126, 'Macedonia, the Former Yugoslav Republic of', 'مقدونيا ، جمهورية يوغسلاف السابقة', 'MKD', NULL, NULL),
(127, 'Madagascar', 'مدغشقر', 'MDG', NULL, NULL),
(128, 'Malawi', 'ملاوي', 'MWI', NULL, NULL),
(129, 'Malaysia', 'ماليزيا', 'MYS', NULL, NULL),
(130, 'Maldives', 'جزر المالديف', 'MDV', NULL, NULL),
(131, 'Mali', 'مالي', 'MLI', NULL, NULL),
(132, 'Malta', 'مالطا', 'MLT', NULL, NULL),
(133, 'Marshall Islands', 'جزر مارشال', 'MHL', NULL, NULL),
(134, 'Martinique', 'مارتينيك', 'MTQ', NULL, NULL),
(135, 'Mauritania', 'موريتانيا', 'MRT', NULL, NULL),
(136, 'Mauritius', 'موريشيوس', 'MUS', NULL, NULL),
(137, 'Mayotte', 'مايوت', '0', NULL, NULL),
(138, 'Mexico', 'المكسيك', 'MEX', NULL, NULL),
(139, 'Micronesia, Federated States of', 'ميكرونيسيا ', 'FSM', NULL, NULL),
(140, 'Moldova, Republic of', 'جمهورية مولدوفا', 'MDA', NULL, NULL),
(141, 'Monaco', 'موناكو', 'MCO', NULL, NULL),
(142, 'Mongolia', 'منغوليا', 'MNG', NULL, NULL),
(143, 'Montserrat', 'مونتسيرات', 'MSR', NULL, NULL),
(144, 'Morocco', 'المغرب', 'MAR', NULL, NULL),
(145, 'Mozambique', 'موزامبيق', 'MOZ', NULL, NULL),
(146, 'Myanmar', 'ميانمار', 'MMR', NULL, NULL),
(147, 'Namibia', 'ناميبيا', 'NAM', NULL, NULL),
(148, 'Nauru', 'ناورو', 'NRU', NULL, NULL),
(149, 'Nepal', 'النيبال', 'NPL', NULL, NULL),
(150, 'Netherlands', 'هولندا', 'NLD', NULL, NULL),
(151, 'Netherlands Antilles', 'جزر الأنتيل الهولندية', 'ANT', NULL, NULL),
(152, 'New Caledonia', 'كاليدونيا الجديدة', 'NCL', NULL, NULL),
(153, 'New Zealand', 'نيوزيلاندا', 'NZL', NULL, NULL),
(154, 'Nicaragua', 'نيكاراغوا', 'NIC', NULL, NULL),
(155, 'Niger', 'النيجر', 'NER', NULL, NULL),
(156, 'Nigeria', 'نيجيريا', 'NGA', NULL, NULL),
(157, 'Niue', 'نيوي', 'NIU', NULL, NULL),
(158, 'Norfolk Island', 'جزيرة نورفولك', 'NFK', NULL, NULL),
(159, 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 'MNP', NULL, NULL),
(160, 'Norway', 'النرويج', 'NOR', NULL, NULL),
(161, 'Oman', 'عمان', 'OMN', NULL, NULL),
(162, 'Pakistan', 'باكستان', 'PAK', NULL, NULL),
(163, 'Palau', 'بالاو', 'PLW', NULL, NULL),
(164, 'Palestine', 'فلسطين', '0', NULL, NULL),
(165, 'Panama', 'بنما', 'PAN', NULL, NULL),
(166, 'Papua New Guinea', 'بابوا غينيا الجديدة', 'PNG', NULL, NULL),
(167, 'Paraguay', 'باراغواي', 'PRY', NULL, NULL),
(168, 'Peru', 'بيرو', 'PER', NULL, NULL),
(169, 'Philippines', 'فيلبيني', 'PHL', NULL, NULL),
(170, 'Pitcairn', 'بيتكيرن', 'PCN', NULL, NULL),
(171, 'Poland', 'بولندا', 'POL', NULL, NULL),
(172, 'Portugal', 'البرتغال', 'PRT', NULL, NULL),
(173, 'Puerto Rico', 'بورتوريكو', 'PRI', NULL, NULL),
(174, 'Qatar', 'قطر', 'QAT', NULL, NULL),
(175, 'Reunion', 'ريونيون', 'REU', NULL, NULL),
(176, 'Romania', 'رومانيا', 'ROM', NULL, NULL),
(177, 'Russian Federation', 'روسيا', 'RUS', NULL, NULL),
(178, 'Rwanda', 'رواندا', 'RWA', NULL, NULL),
(179, 'Saint Helena', 'سانت هيلينا', 'SHN', NULL, NULL),
(180, 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس', 'KNA', NULL, NULL),
(181, 'Saint Lucia', 'سانت لوسيا', 'LCA', NULL, NULL),
(182, 'Saint Pierre and Miquelon', 'سانت بيير وميكلون', 'SPM', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'VCT', NULL, NULL),
(184, 'Samoa', 'ساموا', 'WSM', NULL, NULL),
(185, 'San Marino', 'سان مارينو', 'SMR', NULL, NULL),
(186, 'Sao Tome and Principe', 'ساو تومي وبرينسيبي', 'STP', NULL, NULL),
(187, 'Saudi Arabia', 'المملكة العربية السعودية', 'SAU', NULL, NULL),
(188, 'Senegal', 'السنغال', 'SEN', NULL, NULL),
(190, 'Seychelles', 'سيشل', 'SYC', NULL, NULL),
(191, 'Sierra Leone', 'سيراليون', 'SLE', NULL, NULL),
(192, 'Singapore', 'سنغافورة', 'SGP', NULL, NULL),
(193, 'Slovakia', 'سلوفاكيا', 'SVK', NULL, NULL),
(194, 'Slovenia', 'سلوفينيا', 'SVN', NULL, NULL),
(195, 'Solomon Islands', 'جزر سليمان', 'SLB', NULL, NULL),
(196, 'Somalia', 'الصومال', 'SOM', NULL, NULL),
(197, 'South Africa', 'جنوب أفريقيا', 'ZAF', NULL, NULL),
(198, 'South Georgia and the South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', '0', NULL, NULL),
(199, 'Spain', 'إسبانيا', 'ESP', NULL, NULL),
(200, 'Sri Lanka', 'سيريلانكا', 'LKA', NULL, NULL),
(201, 'Sudan', 'السودان', 'SDN', NULL, NULL),
(202, 'Suriname', 'سورينام', 'SUR', NULL, NULL),
(203, 'Svalbard and Jan Mayen', 'سفالبارد ويان ماين', 'SJM', NULL, NULL),
(204, 'Swaziland', 'سوازيلاند', 'SWZ', NULL, NULL),
(205, 'Sweden', 'السويد', 'SWE', NULL, NULL),
(206, 'Switzerland', 'سويسرا', 'CHE', NULL, NULL),
(207, 'Syrian Arab Republic', 'سوريا', 'SYR', NULL, NULL),
(208, 'Taiwan, Province of China', 'تايوان', 'TWN', NULL, NULL),
(209, 'Tajikistan', 'طاجيكستان', 'TJK', NULL, NULL),
(210, 'Tanzania, United Republic of', 'جمهورية تنزانيا المتحدة', 'TZA', NULL, NULL),
(211, 'Thailand', 'تايلاند', 'THA', NULL, NULL),
(212, 'Timor-Leste', 'تيمور ليستي', '0', NULL, NULL),
(213, 'Togo', 'توجو', 'TGO', NULL, NULL),
(214, 'Tokelau', 'توكيلاو', 'TKL', NULL, NULL),
(215, 'Tonga', 'تونغا', 'TON', NULL, NULL),
(216, 'Trinidad and Tobago', 'ترينيداد وتوباغو', 'TTO', NULL, NULL),
(217, 'Tunisia', 'تونس', 'TUN', NULL, NULL),
(218, 'Turkey', 'تركيا', 'TUR', NULL, NULL),
(219, 'Turkmenistan', 'تركمانستان', 'TKM', NULL, NULL),
(220, 'Turks and Caicos Islands', 'جزر تركس وكايكوس', 'TCA', NULL, NULL),
(221, 'Tuvalu', 'توفالو', 'TUV', NULL, NULL),
(222, 'Uganda', 'أوغندا', 'UGA', NULL, NULL),
(223, 'Ukraine', 'أوكرانيا', 'UKR', NULL, NULL),
(224, 'United Arab Emirates', 'الإمارات العربية المتحدة', 'ARE', NULL, NULL),
(225, 'United Kingdom', 'المملكة المتحدة', 'GBR', NULL, NULL),
(226, 'United States', 'الولايات المتحدة الأمريكية', 'USA', NULL, NULL),
(227, 'United States Minor Outlying Islands', 'جزر الولايات المتحدة البعيدة الصغرى', '0', NULL, NULL),
(228, 'Uruguay', 'أوروغواي', 'URY', NULL, NULL),
(229, 'Uzbekistan', 'أوزبيكستان', 'UZB', NULL, NULL),
(230, 'Vanuatu', 'فانواتو', 'VUT', NULL, NULL),
(231, 'Venezuela', 'فنزويلا', 'VEN', NULL, NULL),
(232, 'Viet Nam', 'فيتنام', 'VNM', NULL, NULL),
(233, 'Virgin Islands, British', 'جزر فيرجن البريطانية', 'VGB', NULL, NULL),
(234, 'Virgin Islands, U.s.', 'جزر فيرجن ، الولايات المتحدة', 'VIR', NULL, NULL),
(235, 'Wallis and Futuna', 'واليس وفوتونا', 'WLF', NULL, NULL),
(236, 'Western Sahara', 'الصحراء الغربية', 'ESH', NULL, NULL),
(237, 'Yemen', 'اليمن', 'YEM', NULL, NULL),
(238, 'Zambia', 'زامبيا', 'ZMB', NULL, NULL),
(239, 'Zimbabwe', 'زمب ـ ابوي', 'ZWE', NULL, NULL),
(240, 'Serbia', 'صربيا', 'SRB', NULL, NULL),
(241, 'Asia Pacific Region', 'منطقة آسيا والمحيط الهادئ', '0', NULL, NULL),
(242, 'Montenegro', 'مونتينيغرو', 'MNE', NULL, NULL),
(243, 'Aland Islands', 'جزر آلاند', 'ALA', NULL, NULL),
(245, 'Curacao', 'كوراساو', 'CUW', NULL, NULL),
(246, 'Guernsey', 'جيرنسي', 'GGY', NULL, NULL),
(247, 'Isle of Man', 'جزيرة آيل أوف مان', 'IMN', NULL, NULL),
(248, 'Jersey', 'جيرسي', 'JEY', NULL, NULL),
(249, 'Kosovo', 'كوسوفو', '---', NULL, NULL),
(250, 'Saint Barthelemy', 'سانت بارتيليمي', 'BLM', NULL, NULL),
(252, 'Sint Maarten', 'سينت مارتن', 'SXM', NULL, NULL),
(253, 'South Sudan', 'جنوب السودان', 'SSD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `court_classes`
--

CREATE TABLE `court_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `court_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2022_10_27_131928_create_companies_table', 1),
(10, '2022_10_27_220539_create_conutries_table', 2),
(11, '2022_10_27_221559_create_court_classes_table', 3),
(12, '2014_10_12_000000_create_users_table', 4),
(13, '2014_10_12_100000_create_password_resets_table', 4),
(14, '2019_08_19_000000_create_failed_jobs_table', 4),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(16, '2022_10_27_210634_create_contacts_table', 4),
(17, '2022_10_27_220653_create_circles_table', 4),
(18, '2022_11_02_195638_create_permission_tables', 5),
(19, '2022_11_29_175601_create_profiles_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alaghaamory2005@gmail.com', '$2y$10$7GOZ.8G1HIT0ohJaJQ8CwuDM9S9s5U6t5MoQuKwkPyBvE4W.UGWKi', '2022-10-31 16:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'employee-list', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(5, 'employee-create', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(6, 'employee-edit', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(7, 'employee-deleta', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(8, 'role-list', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(9, 'role-create', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(10, 'role-edit', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(11, 'role-delete', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(12, 'permission-list', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(13, 'permission-create', 'web', '2022-11-13 14:08:13', '2022-11-13 14:08:13'),
(14, 'permission-edit', 'web', '2022-11-13 14:08:14', '2022-11-13 14:08:14'),
(15, 'permission-delete', 'web', '2022-11-13 14:08:14', '2022-11-13 14:08:14'),
(16, 'court-create', 'web', '2022-11-13 14:08:14', '2022-11-13 14:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', '2022-11-13 14:36:12', '2022-11-13 14:36:12'),
(3, 'user', 'web', '2022-11-15 17:45:00', '2022-11-15 17:45:00'),
(4, 'employee', 'web', '2022-11-15 17:45:13', '2022-11-15 17:45:13'),
(5, 'company', 'web', '2022-11-15 17:45:34', '2022-11-15 17:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 2),
(4, 4),
(4, 5),
(5, 2),
(5, 5),
(6, 2),
(6, 5),
(7, 2),
(7, 5),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(16, 3),
(16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 6, 'Admin', 'alaghaamory2005@gmail.com', '2022-11-13 14:45:00', '$2y$10$54Ggryj/3JxGKA3weY4rxusih54q6yRBpxQ17O0YiX6oDH76vXJe2', NULL, '2022-11-13 14:39:56', '2022-11-13 14:45:00'),
(16, 6, 'Ali', 'ak@gmail.com', '2022-11-15 16:48:37', '$2y$10$EfiZ3GcBiS6thnehogwUm.eCLmwXe2TUkPtjHUDJt6PecnJ6BsFhy', NULL, '2022-11-15 17:47:31', '2022-11-15 17:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `circles_company_id_foreign` (`company_id`),
  ADD KEY `circles_court_id_foreign` (`court_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_owner_id_unique` (`owner_id`),
  ADD UNIQUE KEY `companies_company_name_unique` (`company_name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`),
  ADD KEY `contacts_company_id_foreign` (`company_id`);

--
-- Indexes for table `conutries`
--
ALTER TABLE `conutries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court_classes`
--
ALTER TABLE `court_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `court_classes_company_id_foreign` (`company_id`),
  ADD KEY `court_classes_country_id_foreign` (`country_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conutries`
--
ALTER TABLE `conutries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `court_classes`
--
ALTER TABLE `court_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `circles`
--
ALTER TABLE `circles`
  ADD CONSTRAINT `circles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `circles_court_id_foreign` FOREIGN KEY (`court_id`) REFERENCES `court_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `court_classes`
--
ALTER TABLE `court_classes`
  ADD CONSTRAINT `court_classes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `court_classes_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `conutries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
