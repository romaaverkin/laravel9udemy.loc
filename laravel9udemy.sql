-- Adminer 4.8.1 MySQL 5.7.36 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `companies` (`id`, `name`, `address`, `website`, `email`, `created_at`, `updated_at`) VALUES
(1,	'Company 3',	'Address company 3',	'https://company3.com',	'company3@email.com',	'2022-07-31 21:09:47',	'2022-07-31 21:45:51'),
(2,	'Schultz LLC',	'830 Hintz Mews Suite 111\nLake Arvidfort, IN 24888',	'reynolds.biz',	'kassulke.clement@little.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(3,	'Lubowitz-Ankunding',	'85246 Alexandra Plains\nWehnerville, ND 53411-0623',	'beahan.org',	'aileen.quigley@mueller.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(4,	'Hammes-Nolan',	'24709 Kristoffer Radial\nJaquelinville, MT 26014',	'murazik.biz',	'swisozk@yahoo.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(5,	'Cronin and Sons',	'9672 Finn Course Apt. 622\nJerdeville, GA 64916',	'hand.com',	'kmarks@heathcote.info',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(6,	'Grant-Nikolaus',	'74304 Ora Centers Apt. 324\nJordyport, FL 45935-0235',	'willms.com',	'darryl.murray@gmail.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(7,	'Lynch, Schumm and Ryan',	'72197 Denesik Harbors Apt. 580\nWiltonton, KS 44156',	'cartwright.com',	'tillman22@yahoo.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(8,	'Mertz-Gutmann',	'502 Kirlin Parks Suite 929\nVonland, CO 10326-0770',	'fay.biz',	'nmetz@borer.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(9,	'Corkery-Hirthe',	'1113 Hodkiewicz Drive Suite 745\nNew Fletahaven, WI 91682-7821',	'wilderman.biz',	'alejandrin.kessler@hotmail.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(10,	'Cartwright-O\'Connell',	'5697 Bartoletti Islands Apt. 322\nNew Carmineville, DC 67715',	'jacobi.net',	'trenton04@gmail.com',	'2022-07-31 21:09:47',	'2022-07-31 21:09:47'),
(11,	'My company',	'My address',	'mywebsite.com',	'mycompany@test.com',	'2022-07-31 21:19:54',	'2022-07-31 21:19:54'),
(12,	'Company 3',	'Address company 3',	'https://company3.com',	'company3@email.com',	'2022-07-31 21:38:07',	'2022-07-31 21:38:07'),
(13,	'Company 3',	'Address company 3',	'https://company3.com',	'company3@email.com',	'2022-07-31 21:44:10',	'2022-07-31 21:44:10');

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_company_id_foreign` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `phone`, `email`, `address`, `company_id`, `created_at`, `updated_at`) VALUES
(4,	'Jane',	'Roe',	NULL,	'janeroe@test.com',	'jane address',	1,	'2022-08-05 00:16:48',	'2022-08-05 00:16:48'),
(3,	'John',	'Doe',	NULL,	'johndoe@test.com',	'john address',	1,	'2022-08-05 00:16:48',	'2022-08-05 00:16:48');


INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2022_07_30_035726_create_companies_table',	1),
(6,	'2022_08_01_073302_create_contacts_table',	2);




-- 2022-08-08 09:05:33
