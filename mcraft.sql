/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mcraft

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-10 23:38:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Abu Bakar Siddque', 'a.bakar87@gmail.com', 'admin', '$2y$10$KpfRDOFLMh1AM7ybjfAxM.rJrdZlZZ2n5JNbGXssVN.FMsU8RXqX.', 'KPHRvgswex8U3alZ84NHqR1plPHCwqXHMoUw4o4gdwqpy3LJjaqwGGaW3Xdv', '2018-04-12 16:29:58', '2018-04-12 16:29:58');

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES ('2', '1', 'All', '[\"2\",\"4\"]', '30', '1', '2018-04-19 04:26:15', '2018-06-07 00:45:46');
INSERT INTO `areas` VALUES ('4', '1', 'Bashabo', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"]', '10', '1', '2018-04-20 19:32:54', '2018-06-07 20:00:34');
INSERT INTO `areas` VALUES ('5', '1', 'Shahjahanpur', '[\"1\",\"2\",\"3\",\"8\",\"9\"]', '20', '1', '2018-04-20 19:34:33', '2018-06-07 19:59:43');
INSERT INTO `areas` VALUES ('6', '1', 'Khilgaon Chowdhury Para', '[\"1\",\"2\",\"3\"]', '25', '1', '2018-04-20 19:36:12', '2018-06-07 19:58:03');
INSERT INTO `areas` VALUES ('7', '1', 'Shantinagar', '[\"1\",\"2\"]', '30', '1', '2018-04-20 19:38:32', '2018-06-07 20:00:03');
INSERT INTO `areas` VALUES ('8', '1', 'Baily Road', '[\"1\",\"3\"]', '30', '1', '2018-04-20 19:39:16', '2018-06-07 19:56:41');
INSERT INTO `areas` VALUES ('9', '1', 'Motijheel', '[\"5\",\"6\",\"7\"]', '25', '1', '2018-04-20 19:40:37', '2018-06-07 19:59:04');
INSERT INTO `areas` VALUES ('10', '1', 'Shiddheswari', '[\"1\",\"2\",\"3\"]', '30', '1', '2018-04-20 19:42:13', '2018-06-07 20:00:20');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(9) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'SAREE', 'saree', null, '0', '1', '1', '2018-09-08 09:15:37', '2018-09-08 09:15:37');
INSERT INTO `categories` VALUES ('2', 'SALWAR KAMEEZ', 'salwar-kameez', null, '0', '2', '1', '2018-09-08 09:22:43', '2018-09-08 09:22:43');
INSERT INTO `categories` VALUES ('3', 'TOPS / KURTI', 'tops-kurti', null, '0', '3', '1', '2018-09-08 09:23:03', '2018-09-08 09:23:03');
INSERT INTO `categories` VALUES ('4', 'PUNJABI', 'punjabi', null, '0', '4', '1', '2018-09-08 09:23:28', '2018-09-08 09:23:28');
INSERT INTO `categories` VALUES ('5', 'KIDS DRESS', 'kids-dress', null, '0', '5', '1', '2018-09-08 09:23:41', '2018-09-08 09:23:41');
INSERT INTO `categories` VALUES ('6', 'ACESSORIES', 'acessories', null, '0', '6', '1', '2018-09-08 09:23:50', '2018-09-08 09:23:50');
INSERT INTO `categories` VALUES ('7', 'Tangail Saree', 'tangail-saree', null, '1', '1', '1', '2018-09-08 09:46:26', '2018-09-08 09:46:26');
INSERT INTO `categories` VALUES ('8', 'Silk Saree', 'silk-saree', null, '1', '2', '1', '2018-09-08 09:46:58', '2018-09-08 09:46:58');
INSERT INTO `categories` VALUES ('9', 'COTTON SAREE', 'cotton-saree', null, '1', '3', '1', '2018-09-08 09:47:31', '2018-09-08 09:47:31');
INSERT INTO `categories` VALUES ('10', 'HALF SILK SAREE', 'half-silk-saree', null, '1', '5', '1', '2018-09-08 09:48:02', '2018-09-08 09:48:02');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES ('1', '1', '1', '2018-09-08 09:40:50', '2018-09-08 09:40:50');
INSERT INTO `category_product` VALUES ('2', '2', '10', '2018-09-08 09:49:37', '2018-09-08 09:49:37');
INSERT INTO `category_product` VALUES ('3', '3', '9', '2018-09-08 09:51:05', '2018-09-08 09:51:05');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', 'Dhaka', '1', '2018-09-08 09:32:50', '2018-09-08 09:32:50');

-- ----------------------------
-- Table structure for city_product
-- ----------------------------
DROP TABLE IF EXISTS `city_product`;
CREATE TABLE `city_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of city_product
-- ----------------------------
INSERT INTO `city_product` VALUES ('1', '1', '1', '2018-09-08 09:40:50', '2018-09-08 09:40:50');
INSERT INTO `city_product` VALUES ('2', '2', '1', '2018-09-08 09:49:37', '2018-09-08 09:49:37');
INSERT INTO `city_product` VALUES ('3', '3', '1', '2018-09-08 09:51:06', '2018-09-08 09:51:06');

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of deliveries
-- ----------------------------
INSERT INTO `deliveries` VALUES ('1', '1', 'shamim', '29 suvasbose avenue luxmibazar, dhaka', '01966088782', 'Bashabo', 'Monday, 29 Oct 2018', '11am - 12pm', '1', '2018-09-15 22:12:38', '2018-10-29 10:02:19');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_04_12_083452_create_admins_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_04_12_184916_create_products_table', '2');
INSERT INTO `migrations` VALUES ('5', '2018_04_12_185053_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('6', '2018_04_12_185114_create_areas_table', '2');
INSERT INTO `migrations` VALUES ('7', '2018_04_17_030554_create_category_product_table', '3');
INSERT INTO `migrations` VALUES ('8', '2018_04_18_141727_create_cities_table', '4');
INSERT INTO `migrations` VALUES ('9', '2018_04_18_185114_create_areas_table', '5');
INSERT INTO `migrations` VALUES ('10', '2018_04_19_161707_create_category_product_table', '6');
INSERT INTO `migrations` VALUES ('11', '2018_04_19_172419_create_city_product_table', '7');
INSERT INTO `migrations` VALUES ('12', '2018_10_05_210735_create_product_images_table', '8');
INSERT INTO `migrations` VALUES ('13', '2018_10_08_085503_create_options_table', '9');
INSERT INTO `migrations` VALUES ('14', '2018_10_08_085504_create_options_table', '10');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` double(8,2) DEFAULT NULL,
  `sales_price` double(8,2) DEFAULT NULL,
  `quantity` mediumint(9) DEFAULT NULL,
  `images` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('11', '3', 'L', 'White', '100.00', '95.00', '10', '1539113795-opt-pr-09.jpg', '2018-10-10 01:36:35', '2018-10-29 09:50:42');
INSERT INTO `options` VALUES ('12', '3', 'M', 'White', '100.00', '99.00', '10', '1539529871-opt-pr-10.jpg', '2018-10-14 21:11:11', '2018-10-29 09:47:26');
INSERT INTO `options` VALUES ('13', '3', 'S', 'White', '100.00', '99.00', '10', '1539529887-opt-pr-09.jpg', '2018-10-14 21:11:27', '2018-10-26 11:32:55');
INSERT INTO `options` VALUES ('14', '3', 'S', 'Red', '100.00', '99.00', '10', '1539529923-opt-pr-08.jpg', '2018-10-14 21:12:03', '2018-10-14 21:12:03');
INSERT INTO `options` VALUES ('15', '3', 'M', 'Red', '100.00', '99.00', '10', '1539529937-opt-pr-08.jpg', '2018-10-14 21:12:17', '2018-10-14 21:12:17');
INSERT INTO `options` VALUES ('16', '3', 'L', 'Red', '100.00', '99.00', '10', '1539529955-opt-pr-12.jpg', '2018-10-14 21:12:35', '2018-10-14 21:12:35');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `delivery_charge` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(2,0) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=''pending''; 2=''complete''; 3=''cancle''; 4=''Payment Discolify''; 13="deleted"; 25=''Refund''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for ordproducts
-- ----------------------------
DROP TABLE IF EXISTS `ordproducts`;
CREATE TABLE `ordproducts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `optid` int(9) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `regprice` decimal(8,2) DEFAULT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ordproducts
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `regular_price` double(8,2) DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `stock_qty` int(9) DEFAULT NULL,
  `price_unit` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(9) NOT NULL DEFAULT '0' COMMENT '1=home, 0= not home',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'WOMEN\'S COTTON SAREE', 'women-s-cotton-saree', '1536378050.jpg', '<span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">Cotton printed, tie-dyed with tassel</span><br style=\"margin: 0px; padding: 0px; color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">(The colour of the product may vary slightly due to photographic lighting.)</span>', '4500.00', '4400.00', null, '10', '1pcs', '1', '1', '2018-09-08 09:40:50', '2018-09-08 09:40:50');
INSERT INTO `products` VALUES ('2', 'WOMEN\'S HALF SILK SAREE', 'women-s-half-silk-saree', '1536378577.jpg', '<span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">Half silk embroidered &amp; printed with tassel&nbsp;</span><br style=\"margin: 0px; padding: 0px; color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">(The colour of the product may vary slightly due to photographic lighting.)</span>', '4300.00', '4000.00', null, '2', '1pcs', '1', '1', '2018-09-08 09:49:37', '2018-10-29 10:03:08');
INSERT INTO `products` VALUES ('3', 'WOMEN\'S COTTON SAREE', 'women-s-cotton-saree-1', '1536378665.jpg', '<span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">Cotton printed with tassel</span><br style=\"margin: 0px; padding: 0px; color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(47, 47, 47); font-family: Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">(The colour of the product may vary slightly due to photographic lighting.)</span>', '95.00', '100.00', null, '60', '1pcs', '1', '1', '2018-09-08 09:51:05', '2018-10-29 09:50:42');

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES ('1', '3', '15393249921gl-pr-03.jpg', '2018-10-12 12:16:32', '2018-10-12 12:16:32');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'First Slider Item', 'first-slider-item', '1537121085.jpg', '1', '2018-09-17 00:04:45', '2018-09-17 00:04:45');
INSERT INTO `sliders` VALUES ('2', 'Second Slider', 'second-slider', '1537121911.jpg', '1', '2018-09-17 00:14:43', '2018-09-17 00:18:31');

-- ----------------------------
-- Table structure for timelists
-- ----------------------------
DROP TABLE IF EXISTS `timelists`;
CREATE TABLE `timelists` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `time_key` int(9) NOT NULL,
  `time_val` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timelists
-- ----------------------------
INSERT INTO `timelists` VALUES ('1', '10', '10am- 11am');
INSERT INTO `timelists` VALUES ('2', '11', '11am - 12pm');
INSERT INTO `timelists` VALUES ('3', '12', '12pm - 1pm');
INSERT INTO `timelists` VALUES ('4', '13', '1pm - 2pm');
INSERT INTO `timelists` VALUES ('5', '14', '2pm - 3pm');
INSERT INTO `timelists` VALUES ('6', '15', '3pm - 4pm');
INSERT INTO `timelists` VALUES ('7', '16', '4pm - 5pm');
INSERT INTO `timelists` VALUES ('8', '17', '5pm - 6pm');
INSERT INTO `timelists` VALUES ('9', '18', '6pm - 7pm');
INSERT INTO `timelists` VALUES ('10', '19', '7pm - 8pm');
INSERT INTO `timelists` VALUES ('11', '20', '8pm - 9pm');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'shamim', null, '01966088782', '$2y$10$djoXB3AOmAy4HTzIIvGvQugkMOImpeg5enOhSVB4vO7oXhpkiqxCe', '1', '7t4tpxzP4fVfRttDuRhM6N809JDKhEdRNHU44gFlqSAOuDOWFREMeeNtzeJd', '2018-09-15 21:49:53', '2018-10-30 23:16:14');
