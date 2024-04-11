-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 08:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s-cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(150) DEFAULT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(150) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '00_00_00_step1_create_tables_admin', 1),
(2, '00_00_00_step2.1_create_tables_cms', 2),
(3, '00_00_00_step2.2_create_tables_shop', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_config`
--

CREATE TABLE `sc_admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(50) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  `security` int(11) DEFAULT 0,
  `store_id` char(36) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_config`
--

INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Plugins', 'Payment', 'Cash', '1', 0, '0', 0, 'Plugins/Payment/Cash::lang.title', NULL, NULL),
(2, 'Plugins', 'Shipping', 'ShippingStandard', '1', 0, '0', 0, 'Shipping Standard', NULL, NULL),
(3, 'global', 'seo_config', 'url_seo_lang', '0', 0, '0', 1, 'seo.url_seo_lang', NULL, NULL),
(4, 'global', 'webhook_config', 'LOG_SLACK_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.LOG_SLACK_WEBHOOK_URL', NULL, NULL),
(5, 'global', 'webhook_config', 'GOOGLE_CHAT_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', NULL, NULL),
(6, 'global', 'webhook_config', 'CHATWORK_CHAT_WEBHOOK_URL', '', 0, '0', 0, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', NULL, NULL),
(7, 'global', 'api_config', 'api_connection_required', '1', 0, '0', 1, 'api_connection.api_connection_required', NULL, NULL),
(8, 'global', 'api_config', 'api_mode', '0', 0, '0', 1, 'api_connection.api_mode', NULL, NULL),
(9, 'global', 'cache', 'cache_status', '0', 0, '0', 0, 'admin.cache.cache_status', NULL, NULL),
(10, 'global', 'cache', 'cache_time', '600', 0, '0', 0, 'admin.cache.cache_time', NULL, NULL),
(11, 'global', 'cache', 'cache_category', '0', 0, '0', 3, 'admin.cache.cache_category', NULL, NULL),
(12, 'global', 'cache', 'cache_product', '0', 0, '0', 4, 'admin.cache.cache_product', NULL, NULL),
(13, 'global', 'cache', 'cache_news', '0', 0, '0', 5, 'admin.cache.cache_news', NULL, NULL),
(14, 'global', 'cache', 'cache_category_cms', '0', 0, '0', 6, 'admin.cache.cache_category_cms', NULL, NULL),
(15, 'global', 'cache', 'cache_content_cms', '0', 0, '0', 7, 'admin.cache.cache_content_cms', NULL, NULL),
(16, 'global', 'cache', 'cache_page', '0', 0, '0', 8, 'admin.cache.cache_page', NULL, NULL),
(17, 'global', 'cache', 'cache_country', '0', 0, '0', 10, 'admin.cache.cache_country', NULL, NULL),
(18, 'global', 'env_mail', 'smtp_mode', '', 0, '0', 0, 'email.smtp_mode', NULL, NULL),
(19, 'global', 'password_policy', 'customer_password_min', '6', 0, '0', 0, 'password_policy.customer.min', NULL, NULL),
(20, 'global', 'password_policy', 'customer_password_max', '16', 0, '0', 0, 'password_policy.customer.max', NULL, NULL),
(21, 'global', 'password_policy', 'customer_password_letter', '0', 0, '0', 1, 'password_policy.customer.letter', NULL, NULL),
(22, 'global', 'password_policy', 'customer_password_mixedcase', '0', 0, '0', 2, 'password_policy.customer.mixed', NULL, NULL),
(23, 'global', 'password_policy', 'customer_password_number', '0', 0, '0', 3, 'password_policy.customer.number', NULL, NULL),
(24, 'global', 'password_policy', 'customer_password_symbol', '0', 0, '0', 4, 'password_policy.customer.symbol', NULL, NULL),
(25, '', 'product_config_attribute', 'product_brand', '1', 0, '1', 0, 'product.config_manager.brand', NULL, NULL),
(26, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, '1', 0, '', NULL, NULL),
(27, '', 'product_config_attribute', 'product_supplier', '1', 0, '1', 0, 'product.config_manager.supplier', NULL, NULL),
(28, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, '1', 0, '', NULL, NULL),
(29, '', 'product_config_attribute', 'product_price', '1', 0, '1', 0, 'product.config_manager.price', NULL, NULL),
(30, '', 'product_config_attribute_required', 'product_price_required', '1', 0, '1', 0, '', NULL, NULL),
(31, '', 'product_config_attribute', 'product_cost', '1', 0, '1', 0, 'product.config_manager.cost', NULL, NULL),
(32, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, '1', 0, '', NULL, NULL),
(33, '', 'product_config_attribute', 'product_promotion', '1', 0, '1', 0, 'product.config_manager.promotion', NULL, NULL),
(34, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, '1', 0, '', NULL, NULL),
(35, '', 'product_config_attribute', 'product_stock', '1', 0, '1', 0, 'product.config_manager.stock', NULL, NULL),
(36, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, '1', 0, '', NULL, NULL),
(37, '', 'product_config_attribute', 'product_kind', '1', 0, '1', 0, 'product.config_manager.kind', NULL, NULL),
(38, '', 'product_config_attribute', 'product_property', '1', 0, '1', 0, 'product.config_manager.property', NULL, NULL),
(39, '', 'product_config_attribute_required', 'product_property_required', '0', 0, '1', 0, '', NULL, NULL),
(40, '', 'product_config_attribute', 'product_attribute', '1', 0, '1', 0, 'product.config_manager.attribute', NULL, NULL),
(41, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, '1', 0, '', NULL, NULL),
(42, '', 'product_config_attribute', 'product_available', '1', 0, '1', 0, 'product.config_manager.available', NULL, NULL),
(43, '', 'product_config_attribute_required', 'product_available_required', '0', 0, '1', 0, '', NULL, NULL),
(44, '', 'product_config_attribute', 'product_weight', '1', 0, '1', 0, 'product.config_manager.weight', NULL, NULL),
(45, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, '1', 0, '', NULL, NULL),
(46, '', 'product_config_attribute', 'product_length', '1', 0, '1', 0, 'product.config_manager.length', NULL, NULL),
(47, '', 'product_config_attribute_required', 'product_length_required', '0', 0, '1', 0, '', NULL, NULL),
(48, '', 'product_config', 'product_display_out_of_stock', '1', 0, '1', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(49, '', 'product_config', 'show_date_available', '1', 0, '1', 21, 'product.config_manager.show_date_available', NULL, NULL),
(50, '', 'product_config', 'product_cart_off', '0', 0, '1', 22, 'product.config_manager.product_cart_off', NULL, NULL),
(51, '', 'product_config', 'product_wishlist_off', '0', 0, '1', 23, 'product.config_manager.product_wishlist_off', NULL, NULL),
(52, '', 'product_config', 'product_compare_off', '0', 0, '1', 24, 'product.config_manager.product_compare_off', NULL, NULL),
(53, '', 'product_config', 'product_tax', '1', 0, '1', 0, 'product.config_manager.tax', NULL, NULL),
(54, '', 'customer_config_attribute', 'customer_lastname', '1', 0, '1', 1, 'customer.config_manager.lastname', NULL, NULL),
(55, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, '1', 1, '', NULL, NULL),
(56, '', 'customer_config_attribute', 'customer_address1', '1', 0, '1', 2, 'customer.config_manager.address1', NULL, NULL),
(57, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, '1', 2, '', NULL, NULL),
(58, '', 'customer_config_attribute', 'customer_address2', '1', 0, '1', 2, 'customer.config_manager.address2', NULL, NULL),
(59, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, '1', 2, '', NULL, NULL),
(60, '', 'customer_config_attribute', 'customer_address3', '0', 0, '1', 2, 'customer.config_manager.address3', NULL, NULL),
(61, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, '1', 2, '', NULL, NULL),
(62, '', 'customer_config_attribute', 'customer_company', '0', 0, '1', 0, 'customer.config_manager.company', NULL, NULL),
(63, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, '1', 0, '', NULL, NULL),
(64, '', 'customer_config_attribute', 'customer_postcode', '0', 0, '1', 0, 'customer.config_manager.postcode', NULL, NULL),
(65, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, '1', 0, '', NULL, NULL),
(66, '', 'customer_config_attribute', 'customer_country', '1', 0, '1', 0, 'customer.config_manager.country', NULL, NULL),
(67, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, '1', 0, '', NULL, NULL),
(68, '', 'customer_config_attribute', 'customer_group', '0', 0, '1', 0, 'customer.config_manager.group', NULL, NULL),
(69, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, '1', 0, '', NULL, NULL),
(70, '', 'customer_config_attribute', 'customer_birthday', '0', 0, '1', 0, 'customer.config_manager.birthday', NULL, NULL),
(71, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, '1', 0, '', NULL, NULL),
(72, '', 'customer_config_attribute', 'customer_sex', '0', 0, '1', 0, 'customer.config_manager.sex', NULL, NULL),
(73, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, '1', 0, '', NULL, NULL),
(74, '', 'customer_config_attribute', 'customer_phone', '1', 0, '1', 0, 'customer.config_manager.phone', NULL, NULL),
(75, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, '1', 1, '', NULL, NULL),
(76, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, '1', 0, 'customer.config_manager.name_kana', NULL, NULL),
(77, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, '1', 1, '', NULL, NULL),
(78, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, '1', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(79, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, '1', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(80, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, '1', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(81, '', 'admin_config', 'hidden_copyright_footer', '0', 0, '1', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(82, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, '1', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(83, '', 'display_config', 'product_top', '12', 0, '1', 0, 'store.display.product_top', NULL, NULL),
(84, '', 'display_config', 'product_list', '12', 0, '1', 0, 'store.display.list_product', NULL, NULL),
(85, '', 'display_config', 'product_relation', '4', 0, '1', 0, 'store.display.relation_product', NULL, NULL),
(86, '', 'display_config', 'product_viewed', '4', 0, '1', 0, 'store.display.viewed_product', NULL, NULL),
(87, '', 'display_config', 'item_list', '12', 0, '1', 0, 'store.display.item_list', NULL, NULL),
(88, '', 'display_config', 'item_top', '12', 0, '1', 0, 'store.display.item_top', NULL, NULL),
(89, '', 'order_config', 'shop_allow_guest', '1', 0, '1', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(90, '', 'order_config', 'product_preorder', '1', 0, '1', 18, 'order.admin.product_preorder', NULL, NULL),
(91, '', 'order_config', 'product_buy_out_of_stock', '1', 0, '1', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(92, '', 'order_config', 'shipping_off', '0', 0, '1', 20, 'order.admin.shipping_off', NULL, NULL),
(93, '', 'order_config', 'payment_off', '0', 0, '1', 20, 'order.admin.payment_off', NULL, NULL),
(94, '', 'email_action', 'email_action_mode', '0', 0, '1', 0, 'email.email_action.email_action_mode', NULL, NULL),
(95, '', 'email_action', 'email_action_queue', '0', 0, '1', 1, 'email.email_action.email_action_queue', NULL, NULL),
(96, '', 'email_action', 'order_success_to_admin', '0', 0, '1', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(97, '', 'email_action', 'order_success_to_customer', '0', 0, '1', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(98, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, '1', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(99, '', 'email_action', 'customer_verify', '0', 0, '1', 4, 'email.email_action.customer_verify', NULL, NULL),
(100, '', 'email_action', 'welcome_customer', '0', 0, '1', 4, 'email.email_action.welcome_customer', NULL, NULL),
(101, '', 'email_action', 'contact_to_admin', '1', 0, '1', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(102, '', 'smtp_config', 'smtp_host', '', 0, '1', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(103, '', 'smtp_config', 'smtp_user', '', 0, '1', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(104, '', 'smtp_config', 'smtp_password', '', 0, '1', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(105, '', 'smtp_config', 'smtp_security', '', 0, '1', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(106, '', 'smtp_config', 'smtp_port', '', 0, '1', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(107, '', 'smtp_config', 'smtp_name', '', 0, '1', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(108, '', 'smtp_config', 'smtp_from', '', 0, '1', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(109, '', 'url_config', 'SUFFIX_URL', '.html', 0, '1', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(110, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, '1', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(111, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, '1', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(112, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, '1', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(113, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, '1', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(114, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, '1', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(115, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, '1', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(116, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, '1', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(117, '', 'url_config', 'PREFIX_ABOUT', 'about', 0, '1', 0, 'admin.env.PREFIX_ABOUT', NULL, NULL),
(118, '', 'url_config', 'PREFIX_NEWS', 'news', 0, '1', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(119, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, '1', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(120, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, '1', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(121, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, '1', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(122, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, '1', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(123, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, '1', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(124, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, '1', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(125, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, '1', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(126, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, '1', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(127, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, '1', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(128, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, '1', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(129, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, '1', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(130, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, '1', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(131, '', 'captcha_config', 'captcha_mode', '0', 0, '1', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(132, '', 'captcha_config', 'captcha_page', '[]', 0, '1', 10, 'captcha.captcha_page', NULL, NULL),
(133, '', 'captcha_config', 'captcha_method', '', 0, '1', 0, 'admin.captcha.captcha_method', NULL, NULL),
(134, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, '1', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(135, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, '1', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(136, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, '1', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(137, '', 'admin_custom_config', 'instagram_url', '#', 0, '1', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(138, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, '1', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(139, '', 'config_layout', 'link_account', '1', 0, '1', 0, 'admin.config_layout.link_account', NULL, NULL),
(140, '', 'config_layout', 'link_language', '1', 0, '1', 0, 'admin.config_layout.link_language', NULL, NULL),
(141, '', 'config_layout', 'link_currency', '1', 0, '1', 0, 'admin.config_layout.link_currency', NULL, NULL),
(142, '', 'config_layout', 'link_cart', '1', 0, '1', 0, 'admin.config_layout.link_cart', NULL, NULL),
(143, 'Plugins', 'Other', 'MultiVendor', '1', 0, '0', 0, 'Plugins/Other/MultiVendor::lang.title', NULL, NULL),
(144, '', 'MultiVendor_config', 'domain_strict', '0', 0, '0', 0, 'multi_vendor.MultiVendor_domain_strict', NULL, NULL),
(145, '', 'MultiVendor_config', 'MultiVendor_allow_register', '1', 0, '0', 0, 'multi_vendor.MultiVendor_allow_register', NULL, NULL),
(146, '', 'MultiVendor_config', 'MultiVendor_product_auto_approve', '0', 0, '0', 0, 'multi_vendor.MultiVendor_product_auto_approve', NULL, NULL),
(147, '', 'MultiVendor_config', 'MultiVendor_vendor_auto_approve', '1', 0, '0', 0, 'multi_vendor.MultiVendor_vendor_auto_approve', NULL, NULL),
(148, '', 'MultiVendor_config', 'MultiVendor_commission', '10', 0, '0', 0, 'multi_vendor.MultiVendor_commission', NULL, NULL),
(149, '', 'MultiVendor_config', 'MultiVendor_quick_order', '1', 0, '0', 0, 'multi_vendor.MultiVendor_quick_order', NULL, NULL),
(150, '', 'product_config_attribute', 'product_brand', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.brand', NULL, NULL),
(151, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(152, '', 'product_config_attribute', 'product_supplier', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.supplier', NULL, NULL),
(153, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(154, '', 'product_config_attribute', 'product_price', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.price', NULL, NULL),
(155, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(156, '', 'product_config_attribute', 'product_cost', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.cost', NULL, NULL),
(157, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(158, '', 'product_config_attribute', 'product_promotion', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.promotion', NULL, NULL),
(159, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(160, '', 'product_config_attribute', 'product_stock', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.stock', NULL, NULL),
(161, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(162, '', 'product_config_attribute', 'product_kind', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.kind', NULL, NULL),
(163, '', 'product_config_attribute', 'product_property', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.property', NULL, NULL),
(164, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(165, '', 'product_config_attribute', 'product_attribute', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.attribute', NULL, NULL),
(166, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(167, '', 'product_config_attribute', 'product_available', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.available', NULL, NULL),
(168, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(169, '', 'product_config_attribute', 'product_weight', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.weight', NULL, NULL),
(170, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(171, '', 'product_config_attribute', 'product_length', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.length', NULL, NULL),
(172, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(173, '', 'product_config', 'product_display_out_of_stock', '1', 0, 'S-xSdG9-0UgUZ', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(174, '', 'product_config', 'show_date_available', '1', 0, 'S-xSdG9-0UgUZ', 21, 'product.config_manager.show_date_available', NULL, NULL),
(175, '', 'product_config', 'product_cart_off', '0', 0, 'S-xSdG9-0UgUZ', 22, 'product.config_manager.product_cart_off', NULL, NULL),
(176, '', 'product_config', 'product_wishlist_off', '0', 0, 'S-xSdG9-0UgUZ', 23, 'product.config_manager.product_wishlist_off', NULL, NULL),
(177, '', 'product_config', 'product_compare_off', '0', 0, 'S-xSdG9-0UgUZ', 24, 'product.config_manager.product_compare_off', NULL, NULL),
(178, '', 'product_config', 'product_tax', '1', 0, 'S-xSdG9-0UgUZ', 0, 'product.config_manager.tax', NULL, NULL),
(179, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 'S-xSdG9-0UgUZ', 1, 'customer.config_manager.lastname', NULL, NULL),
(180, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 'S-xSdG9-0UgUZ', 1, '', NULL, NULL),
(181, '', 'customer_config_attribute', 'customer_address1', '1', 0, 'S-xSdG9-0UgUZ', 2, 'customer.config_manager.address1', NULL, NULL),
(182, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 'S-xSdG9-0UgUZ', 2, '', NULL, NULL),
(183, '', 'customer_config_attribute', 'customer_address2', '1', 0, 'S-xSdG9-0UgUZ', 2, 'customer.config_manager.address2', NULL, NULL),
(184, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 'S-xSdG9-0UgUZ', 2, '', NULL, NULL),
(185, '', 'customer_config_attribute', 'customer_address3', '0', 0, 'S-xSdG9-0UgUZ', 2, 'customer.config_manager.address3', NULL, NULL),
(186, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 'S-xSdG9-0UgUZ', 2, '', NULL, NULL),
(187, '', 'customer_config_attribute', 'customer_company', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.company', NULL, NULL),
(188, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(189, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.postcode', NULL, NULL),
(190, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(191, '', 'customer_config_attribute', 'customer_country', '1', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.country', NULL, NULL),
(192, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(193, '', 'customer_config_attribute', 'customer_group', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.group', NULL, NULL),
(194, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(195, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.birthday', NULL, NULL),
(196, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(197, '', 'customer_config_attribute', 'customer_sex', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.sex', NULL, NULL),
(198, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 'S-xSdG9-0UgUZ', 0, '', NULL, NULL),
(199, '', 'customer_config_attribute', 'customer_phone', '1', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.phone', NULL, NULL),
(200, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 'S-xSdG9-0UgUZ', 1, '', NULL, NULL),
(201, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 'S-xSdG9-0UgUZ', 0, 'customer.config_manager.name_kana', NULL, NULL),
(202, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 'S-xSdG9-0UgUZ', 1, '', NULL, NULL),
(203, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(204, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(205, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(206, '', 'admin_config', 'hidden_copyright_footer', '0', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(207, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(208, '', 'display_config', 'product_top', '12', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.product_top', NULL, NULL),
(209, '', 'display_config', 'product_list', '12', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.list_product', NULL, NULL),
(210, '', 'display_config', 'product_relation', '4', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.relation_product', NULL, NULL),
(211, '', 'display_config', 'product_viewed', '4', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.viewed_product', NULL, NULL),
(212, '', 'display_config', 'item_list', '12', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.item_list', NULL, NULL),
(213, '', 'display_config', 'item_top', '12', 0, 'S-xSdG9-0UgUZ', 0, 'store.display.item_top', NULL, NULL),
(214, '', 'order_config', 'shop_allow_guest', '1', 0, 'S-xSdG9-0UgUZ', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(215, '', 'order_config', 'product_preorder', '1', 0, 'S-xSdG9-0UgUZ', 18, 'order.admin.product_preorder', NULL, NULL),
(216, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 'S-xSdG9-0UgUZ', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(217, '', 'order_config', 'shipping_off', '0', 0, 'S-xSdG9-0UgUZ', 20, 'order.admin.shipping_off', NULL, NULL),
(218, '', 'order_config', 'payment_off', '0', 0, 'S-xSdG9-0UgUZ', 20, 'order.admin.payment_off', NULL, NULL),
(219, '', 'email_action', 'email_action_mode', '0', 0, 'S-xSdG9-0UgUZ', 0, 'email.email_action.email_action_mode', NULL, NULL),
(220, '', 'email_action', 'email_action_queue', '0', 0, 'S-xSdG9-0UgUZ', 1, 'email.email_action.email_action_queue', NULL, NULL),
(221, '', 'email_action', 'order_success_to_admin', '0', 0, 'S-xSdG9-0UgUZ', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(222, '', 'email_action', 'order_success_to_customer', '0', 0, 'S-xSdG9-0UgUZ', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(223, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 'S-xSdG9-0UgUZ', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(224, '', 'email_action', 'customer_verify', '0', 0, 'S-xSdG9-0UgUZ', 4, 'email.email_action.customer_verify', NULL, NULL),
(225, '', 'email_action', 'welcome_customer', '0', 0, 'S-xSdG9-0UgUZ', 4, 'email.email_action.welcome_customer', NULL, NULL),
(226, '', 'email_action', 'contact_to_admin', '1', 0, 'S-xSdG9-0UgUZ', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(227, '', 'smtp_config', 'smtp_host', '', 0, 'S-xSdG9-0UgUZ', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(228, '', 'smtp_config', 'smtp_user', '', 0, 'S-xSdG9-0UgUZ', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(229, '', 'smtp_config', 'smtp_password', '', 0, 'S-xSdG9-0UgUZ', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(230, '', 'smtp_config', 'smtp_security', '', 0, 'S-xSdG9-0UgUZ', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(231, '', 'smtp_config', 'smtp_port', '', 0, 'S-xSdG9-0UgUZ', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(232, '', 'smtp_config', 'smtp_name', '', 0, 'S-xSdG9-0UgUZ', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(233, '', 'smtp_config', 'smtp_from', '', 0, 'S-xSdG9-0UgUZ', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(234, '', 'url_config', 'SUFFIX_URL', '.html', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(235, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(236, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(237, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(238, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(239, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(240, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(241, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(242, '', 'url_config', 'PREFIX_ABOUT', 'about', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_ABOUT', NULL, NULL),
(243, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(244, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(245, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(246, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(247, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(248, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(249, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(250, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(251, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(252, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(253, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(254, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(255, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 'S-xSdG9-0UgUZ', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(256, '', 'captcha_config', 'captcha_mode', '0', 0, 'S-xSdG9-0UgUZ', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(257, '', 'captcha_config', 'captcha_page', '[]', 0, 'S-xSdG9-0UgUZ', 10, 'captcha.captcha_page', NULL, NULL),
(258, '', 'captcha_config', 'captcha_method', '', 0, 'S-xSdG9-0UgUZ', 0, 'admin.captcha.captcha_method', NULL, NULL),
(259, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, 'S-xSdG9-0UgUZ', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(260, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, 'S-xSdG9-0UgUZ', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(261, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, 'S-xSdG9-0UgUZ', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(262, '', 'admin_custom_config', 'instagram_url', '#', 0, 'S-xSdG9-0UgUZ', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(263, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, 'S-xSdG9-0UgUZ', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(264, '', 'config_layout', 'link_account', '1', 0, 'S-xSdG9-0UgUZ', 0, 'admin.config_layout.link_account', NULL, NULL),
(265, '', 'config_layout', 'link_language', '1', 0, 'S-xSdG9-0UgUZ', 0, 'admin.config_layout.link_language', NULL, NULL),
(266, '', 'config_layout', 'link_currency', '1', 0, 'S-xSdG9-0UgUZ', 0, 'admin.config_layout.link_currency', NULL, NULL),
(267, '', 'config_layout', 'link_cart', '1', 0, 'S-xSdG9-0UgUZ', 0, 'admin.config_layout.link_cart', NULL, NULL),
(268, '', 'product_config_attribute', 'product_brand', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.brand', NULL, NULL),
(269, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(270, '', 'product_config_attribute', 'product_supplier', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.supplier', NULL, NULL),
(271, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(272, '', 'product_config_attribute', 'product_price', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.price', NULL, NULL),
(273, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(274, '', 'product_config_attribute', 'product_cost', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.cost', NULL, NULL),
(275, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(276, '', 'product_config_attribute', 'product_promotion', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.promotion', NULL, NULL),
(277, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(278, '', 'product_config_attribute', 'product_stock', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.stock', NULL, NULL),
(279, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(280, '', 'product_config_attribute', 'product_kind', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.kind', NULL, NULL),
(281, '', 'product_config_attribute', 'product_property', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.property', NULL, NULL),
(282, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(283, '', 'product_config_attribute', 'product_attribute', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.attribute', NULL, NULL),
(284, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(285, '', 'product_config_attribute', 'product_available', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.available', NULL, NULL),
(286, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(287, '', 'product_config_attribute', 'product_weight', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.weight', NULL, NULL),
(288, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(289, '', 'product_config_attribute', 'product_length', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.length', NULL, NULL),
(290, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(291, '', 'product_config', 'product_display_out_of_stock', '1', 0, 'S-GQ0sY-vnQbk', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(292, '', 'product_config', 'show_date_available', '1', 0, 'S-GQ0sY-vnQbk', 21, 'product.config_manager.show_date_available', NULL, NULL),
(293, '', 'product_config', 'product_cart_off', '0', 0, 'S-GQ0sY-vnQbk', 22, 'product.config_manager.product_cart_off', NULL, NULL),
(294, '', 'product_config', 'product_wishlist_off', '0', 0, 'S-GQ0sY-vnQbk', 23, 'product.config_manager.product_wishlist_off', NULL, NULL),
(295, '', 'product_config', 'product_compare_off', '0', 0, 'S-GQ0sY-vnQbk', 24, 'product.config_manager.product_compare_off', NULL, NULL),
(296, '', 'product_config', 'product_tax', '1', 0, 'S-GQ0sY-vnQbk', 0, 'product.config_manager.tax', NULL, NULL),
(297, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 'S-GQ0sY-vnQbk', 1, 'customer.config_manager.lastname', NULL, NULL),
(298, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 'S-GQ0sY-vnQbk', 1, '', NULL, NULL),
(299, '', 'customer_config_attribute', 'customer_address1', '1', 0, 'S-GQ0sY-vnQbk', 2, 'customer.config_manager.address1', NULL, NULL),
(300, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 'S-GQ0sY-vnQbk', 2, '', NULL, NULL),
(301, '', 'customer_config_attribute', 'customer_address2', '1', 0, 'S-GQ0sY-vnQbk', 2, 'customer.config_manager.address2', NULL, NULL),
(302, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 'S-GQ0sY-vnQbk', 2, '', NULL, NULL),
(303, '', 'customer_config_attribute', 'customer_address3', '0', 0, 'S-GQ0sY-vnQbk', 2, 'customer.config_manager.address3', NULL, NULL),
(304, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 'S-GQ0sY-vnQbk', 2, '', NULL, NULL),
(305, '', 'customer_config_attribute', 'customer_company', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.company', NULL, NULL),
(306, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(307, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.postcode', NULL, NULL),
(308, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(309, '', 'customer_config_attribute', 'customer_country', '1', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.country', NULL, NULL),
(310, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(311, '', 'customer_config_attribute', 'customer_group', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.group', NULL, NULL),
(312, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(313, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.birthday', NULL, NULL),
(314, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(315, '', 'customer_config_attribute', 'customer_sex', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.sex', NULL, NULL),
(316, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 'S-GQ0sY-vnQbk', 0, '', NULL, NULL),
(317, '', 'customer_config_attribute', 'customer_phone', '1', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.phone', NULL, NULL),
(318, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 'S-GQ0sY-vnQbk', 1, '', NULL, NULL),
(319, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 'S-GQ0sY-vnQbk', 0, 'customer.config_manager.name_kana', NULL, NULL),
(320, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 'S-GQ0sY-vnQbk', 1, '', NULL, NULL),
(321, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(322, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(323, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(324, '', 'admin_config', 'hidden_copyright_footer', '0', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(325, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(326, '', 'display_config', 'product_top', '12', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.product_top', NULL, NULL),
(327, '', 'display_config', 'product_list', '12', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.list_product', NULL, NULL),
(328, '', 'display_config', 'product_relation', '4', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.relation_product', NULL, NULL),
(329, '', 'display_config', 'product_viewed', '4', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.viewed_product', NULL, NULL),
(330, '', 'display_config', 'item_list', '12', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.item_list', NULL, NULL),
(331, '', 'display_config', 'item_top', '12', 0, 'S-GQ0sY-vnQbk', 0, 'store.display.item_top', NULL, NULL),
(332, '', 'order_config', 'shop_allow_guest', '1', 0, 'S-GQ0sY-vnQbk', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(333, '', 'order_config', 'product_preorder', '1', 0, 'S-GQ0sY-vnQbk', 18, 'order.admin.product_preorder', NULL, NULL),
(334, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 'S-GQ0sY-vnQbk', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(335, '', 'order_config', 'shipping_off', '0', 0, 'S-GQ0sY-vnQbk', 20, 'order.admin.shipping_off', NULL, NULL),
(336, '', 'order_config', 'payment_off', '0', 0, 'S-GQ0sY-vnQbk', 20, 'order.admin.payment_off', NULL, NULL),
(337, '', 'email_action', 'email_action_mode', '0', 0, 'S-GQ0sY-vnQbk', 0, 'email.email_action.email_action_mode', NULL, NULL),
(338, '', 'email_action', 'email_action_queue', '0', 0, 'S-GQ0sY-vnQbk', 1, 'email.email_action.email_action_queue', NULL, NULL),
(339, '', 'email_action', 'order_success_to_admin', '0', 0, 'S-GQ0sY-vnQbk', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(340, '', 'email_action', 'order_success_to_customer', '0', 0, 'S-GQ0sY-vnQbk', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(341, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 'S-GQ0sY-vnQbk', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(342, '', 'email_action', 'customer_verify', '0', 0, 'S-GQ0sY-vnQbk', 4, 'email.email_action.customer_verify', NULL, NULL),
(343, '', 'email_action', 'welcome_customer', '0', 0, 'S-GQ0sY-vnQbk', 4, 'email.email_action.welcome_customer', NULL, NULL),
(344, '', 'email_action', 'contact_to_admin', '1', 0, 'S-GQ0sY-vnQbk', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(345, '', 'smtp_config', 'smtp_host', '', 0, 'S-GQ0sY-vnQbk', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(346, '', 'smtp_config', 'smtp_user', '', 0, 'S-GQ0sY-vnQbk', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(347, '', 'smtp_config', 'smtp_password', '', 0, 'S-GQ0sY-vnQbk', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(348, '', 'smtp_config', 'smtp_security', '', 0, 'S-GQ0sY-vnQbk', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(349, '', 'smtp_config', 'smtp_port', '', 0, 'S-GQ0sY-vnQbk', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(350, '', 'smtp_config', 'smtp_name', '', 0, 'S-GQ0sY-vnQbk', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(351, '', 'smtp_config', 'smtp_from', '', 0, 'S-GQ0sY-vnQbk', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(352, '', 'url_config', 'SUFFIX_URL', '.html', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(353, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(354, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(355, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(356, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(357, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(358, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(359, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(360, '', 'url_config', 'PREFIX_ABOUT', 'about', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_ABOUT', NULL, NULL),
(361, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(362, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(363, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(364, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(365, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(366, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(367, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(368, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(369, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(370, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(371, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(372, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(373, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 'S-GQ0sY-vnQbk', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(374, '', 'captcha_config', 'captcha_mode', '0', 0, 'S-GQ0sY-vnQbk', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(375, '', 'captcha_config', 'captcha_page', '[]', 0, 'S-GQ0sY-vnQbk', 10, 'captcha.captcha_page', NULL, NULL),
(376, '', 'captcha_config', 'captcha_method', '', 0, 'S-GQ0sY-vnQbk', 0, 'admin.captcha.captcha_method', NULL, NULL),
(377, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, 'S-GQ0sY-vnQbk', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(378, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, 'S-GQ0sY-vnQbk', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(379, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, 'S-GQ0sY-vnQbk', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(380, '', 'admin_custom_config', 'instagram_url', '#', 0, 'S-GQ0sY-vnQbk', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(381, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, 'S-GQ0sY-vnQbk', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(382, '', 'config_layout', 'link_account', '1', 0, 'S-GQ0sY-vnQbk', 0, 'admin.config_layout.link_account', NULL, NULL),
(383, '', 'config_layout', 'link_language', '1', 0, 'S-GQ0sY-vnQbk', 0, 'admin.config_layout.link_language', NULL, NULL),
(384, '', 'config_layout', 'link_currency', '1', 0, 'S-GQ0sY-vnQbk', 0, 'admin.config_layout.link_currency', NULL, NULL),
(385, '', 'config_layout', 'link_cart', '1', 0, 'S-GQ0sY-vnQbk', 0, 'admin.config_layout.link_cart', NULL, NULL),
(386, '', 'product_config_attribute', 'product_brand', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.brand', NULL, NULL),
(387, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(388, '', 'product_config_attribute', 'product_supplier', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.supplier', NULL, NULL),
(389, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(390, '', 'product_config_attribute', 'product_price', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.price', NULL, NULL),
(391, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(392, '', 'product_config_attribute', 'product_cost', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.cost', NULL, NULL),
(393, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(394, '', 'product_config_attribute', 'product_promotion', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.promotion', NULL, NULL),
(395, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(396, '', 'product_config_attribute', 'product_stock', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.stock', NULL, NULL),
(397, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(398, '', 'product_config_attribute', 'product_kind', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.kind', NULL, NULL),
(399, '', 'product_config_attribute', 'product_property', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.property', NULL, NULL),
(400, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(401, '', 'product_config_attribute', 'product_attribute', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.attribute', NULL, NULL),
(402, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(403, '', 'product_config_attribute', 'product_available', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.available', NULL, NULL),
(404, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(405, '', 'product_config_attribute', 'product_weight', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.weight', NULL, NULL),
(406, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(407, '', 'product_config_attribute', 'product_length', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.length', NULL, NULL),
(408, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(409, '', 'product_config', 'product_display_out_of_stock', '1', 0, 'S-YQmkQ-wMgUn', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(410, '', 'product_config', 'show_date_available', '1', 0, 'S-YQmkQ-wMgUn', 21, 'product.config_manager.show_date_available', NULL, NULL),
(411, '', 'product_config', 'product_cart_off', '0', 0, 'S-YQmkQ-wMgUn', 22, 'product.config_manager.product_cart_off', NULL, NULL),
(412, '', 'product_config', 'product_wishlist_off', '0', 0, 'S-YQmkQ-wMgUn', 23, 'product.config_manager.product_wishlist_off', NULL, NULL),
(413, '', 'product_config', 'product_compare_off', '0', 0, 'S-YQmkQ-wMgUn', 24, 'product.config_manager.product_compare_off', NULL, NULL);
INSERT INTO `sc_admin_config` (`id`, `group`, `code`, `key`, `value`, `security`, `store_id`, `sort`, `detail`, `created_at`, `updated_at`) VALUES
(414, '', 'product_config', 'product_tax', '1', 0, 'S-YQmkQ-wMgUn', 0, 'product.config_manager.tax', NULL, NULL),
(415, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 'S-YQmkQ-wMgUn', 1, 'customer.config_manager.lastname', NULL, NULL),
(416, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 'S-YQmkQ-wMgUn', 1, '', NULL, NULL),
(417, '', 'customer_config_attribute', 'customer_address1', '1', 0, 'S-YQmkQ-wMgUn', 2, 'customer.config_manager.address1', NULL, NULL),
(418, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 'S-YQmkQ-wMgUn', 2, '', NULL, NULL),
(419, '', 'customer_config_attribute', 'customer_address2', '1', 0, 'S-YQmkQ-wMgUn', 2, 'customer.config_manager.address2', NULL, NULL),
(420, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 'S-YQmkQ-wMgUn', 2, '', NULL, NULL),
(421, '', 'customer_config_attribute', 'customer_address3', '0', 0, 'S-YQmkQ-wMgUn', 2, 'customer.config_manager.address3', NULL, NULL),
(422, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 'S-YQmkQ-wMgUn', 2, '', NULL, NULL),
(423, '', 'customer_config_attribute', 'customer_company', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.company', NULL, NULL),
(424, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(425, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.postcode', NULL, NULL),
(426, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(427, '', 'customer_config_attribute', 'customer_country', '1', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.country', NULL, NULL),
(428, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(429, '', 'customer_config_attribute', 'customer_group', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.group', NULL, NULL),
(430, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(431, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.birthday', NULL, NULL),
(432, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(433, '', 'customer_config_attribute', 'customer_sex', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.sex', NULL, NULL),
(434, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 'S-YQmkQ-wMgUn', 0, '', NULL, NULL),
(435, '', 'customer_config_attribute', 'customer_phone', '1', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.phone', NULL, NULL),
(436, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 'S-YQmkQ-wMgUn', 1, '', NULL, NULL),
(437, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 'S-YQmkQ-wMgUn', 0, 'customer.config_manager.name_kana', NULL, NULL),
(438, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 'S-YQmkQ-wMgUn', 1, '', NULL, NULL),
(439, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(440, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(441, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(442, '', 'admin_config', 'hidden_copyright_footer', '0', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(443, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(444, '', 'display_config', 'product_top', '12', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.product_top', NULL, NULL),
(445, '', 'display_config', 'product_list', '12', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.list_product', NULL, NULL),
(446, '', 'display_config', 'product_relation', '4', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.relation_product', NULL, NULL),
(447, '', 'display_config', 'product_viewed', '4', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.viewed_product', NULL, NULL),
(448, '', 'display_config', 'item_list', '12', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.item_list', NULL, NULL),
(449, '', 'display_config', 'item_top', '12', 0, 'S-YQmkQ-wMgUn', 0, 'store.display.item_top', NULL, NULL),
(450, '', 'order_config', 'shop_allow_guest', '1', 0, 'S-YQmkQ-wMgUn', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(451, '', 'order_config', 'product_preorder', '1', 0, 'S-YQmkQ-wMgUn', 18, 'order.admin.product_preorder', NULL, NULL),
(452, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 'S-YQmkQ-wMgUn', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(453, '', 'order_config', 'shipping_off', '0', 0, 'S-YQmkQ-wMgUn', 20, 'order.admin.shipping_off', NULL, NULL),
(454, '', 'order_config', 'payment_off', '0', 0, 'S-YQmkQ-wMgUn', 20, 'order.admin.payment_off', NULL, NULL),
(455, '', 'email_action', 'email_action_mode', '0', 0, 'S-YQmkQ-wMgUn', 0, 'email.email_action.email_action_mode', NULL, NULL),
(456, '', 'email_action', 'email_action_queue', '0', 0, 'S-YQmkQ-wMgUn', 1, 'email.email_action.email_action_queue', NULL, NULL),
(457, '', 'email_action', 'order_success_to_admin', '0', 0, 'S-YQmkQ-wMgUn', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(458, '', 'email_action', 'order_success_to_customer', '0', 0, 'S-YQmkQ-wMgUn', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(459, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 'S-YQmkQ-wMgUn', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(460, '', 'email_action', 'customer_verify', '0', 0, 'S-YQmkQ-wMgUn', 4, 'email.email_action.customer_verify', NULL, NULL),
(461, '', 'email_action', 'welcome_customer', '0', 0, 'S-YQmkQ-wMgUn', 4, 'email.email_action.welcome_customer', NULL, NULL),
(462, '', 'email_action', 'contact_to_admin', '1', 0, 'S-YQmkQ-wMgUn', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(463, '', 'smtp_config', 'smtp_host', '', 0, 'S-YQmkQ-wMgUn', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(464, '', 'smtp_config', 'smtp_user', '', 0, 'S-YQmkQ-wMgUn', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(465, '', 'smtp_config', 'smtp_password', '', 0, 'S-YQmkQ-wMgUn', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(466, '', 'smtp_config', 'smtp_security', '', 0, 'S-YQmkQ-wMgUn', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(467, '', 'smtp_config', 'smtp_port', '', 0, 'S-YQmkQ-wMgUn', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(468, '', 'smtp_config', 'smtp_name', '', 0, 'S-YQmkQ-wMgUn', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(469, '', 'smtp_config', 'smtp_from', '', 0, 'S-YQmkQ-wMgUn', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(470, '', 'url_config', 'SUFFIX_URL', '.html', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(471, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(472, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(473, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(474, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(475, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(476, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(477, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(478, '', 'url_config', 'PREFIX_ABOUT', 'about', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_ABOUT', NULL, NULL),
(479, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(480, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(481, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(482, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(483, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(484, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(485, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(486, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(487, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(488, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(489, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(490, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(491, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 'S-YQmkQ-wMgUn', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(492, '', 'captcha_config', 'captcha_mode', '0', 0, 'S-YQmkQ-wMgUn', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(493, '', 'captcha_config', 'captcha_page', '[]', 0, 'S-YQmkQ-wMgUn', 10, 'captcha.captcha_page', NULL, NULL),
(494, '', 'captcha_config', 'captcha_method', '', 0, 'S-YQmkQ-wMgUn', 0, 'admin.captcha.captcha_method', NULL, NULL),
(495, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, 'S-YQmkQ-wMgUn', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(496, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, 'S-YQmkQ-wMgUn', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(497, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, 'S-YQmkQ-wMgUn', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(498, '', 'admin_custom_config', 'instagram_url', '#', 0, 'S-YQmkQ-wMgUn', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(499, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, 'S-YQmkQ-wMgUn', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(500, '', 'config_layout', 'link_account', '1', 0, 'S-YQmkQ-wMgUn', 0, 'admin.config_layout.link_account', NULL, NULL),
(501, '', 'config_layout', 'link_language', '1', 0, 'S-YQmkQ-wMgUn', 0, 'admin.config_layout.link_language', NULL, NULL),
(502, '', 'config_layout', 'link_currency', '1', 0, 'S-YQmkQ-wMgUn', 0, 'admin.config_layout.link_currency', NULL, NULL),
(503, '', 'config_layout', 'link_cart', '1', 0, 'S-YQmkQ-wMgUn', 0, 'admin.config_layout.link_cart', NULL, NULL),
(504, '', 'product_config_attribute', 'product_brand', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.brand', NULL, NULL),
(505, '', 'product_config_attribute_required', 'product_brand_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(506, '', 'product_config_attribute', 'product_supplier', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.supplier', NULL, NULL),
(507, '', 'product_config_attribute_required', 'product_supplier_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(508, '', 'product_config_attribute', 'product_price', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.price', NULL, NULL),
(509, '', 'product_config_attribute_required', 'product_price_required', '1', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(510, '', 'product_config_attribute', 'product_cost', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.cost', NULL, NULL),
(511, '', 'product_config_attribute_required', 'product_cost_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(512, '', 'product_config_attribute', 'product_promotion', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.promotion', NULL, NULL),
(513, '', 'product_config_attribute_required', 'product_promotion_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(514, '', 'product_config_attribute', 'product_stock', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.stock', NULL, NULL),
(515, '', 'product_config_attribute_required', 'product_stock_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(516, '', 'product_config_attribute', 'product_kind', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.kind', NULL, NULL),
(517, '', 'product_config_attribute', 'product_property', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.property', NULL, NULL),
(518, '', 'product_config_attribute_required', 'product_property_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(519, '', 'product_config_attribute', 'product_attribute', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.attribute', NULL, NULL),
(520, '', 'product_config_attribute_required', 'product_attribute_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(521, '', 'product_config_attribute', 'product_available', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.available', NULL, NULL),
(522, '', 'product_config_attribute_required', 'product_available_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(523, '', 'product_config_attribute', 'product_weight', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.weight', NULL, NULL),
(524, '', 'product_config_attribute_required', 'product_weight_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(525, '', 'product_config_attribute', 'product_length', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.length', NULL, NULL),
(526, '', 'product_config_attribute_required', 'product_length_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(527, '', 'product_config', 'product_display_out_of_stock', '1', 0, 'S-5ROFr-vQm44', 19, 'product.config_manager.product_display_out_of_stock', NULL, NULL),
(528, '', 'product_config', 'show_date_available', '1', 0, 'S-5ROFr-vQm44', 21, 'product.config_manager.show_date_available', NULL, NULL),
(529, '', 'product_config', 'product_cart_off', '0', 0, 'S-5ROFr-vQm44', 22, 'product.config_manager.product_cart_off', NULL, NULL),
(530, '', 'product_config', 'product_wishlist_off', '0', 0, 'S-5ROFr-vQm44', 23, 'product.config_manager.product_wishlist_off', NULL, NULL),
(531, '', 'product_config', 'product_compare_off', '0', 0, 'S-5ROFr-vQm44', 24, 'product.config_manager.product_compare_off', NULL, NULL),
(532, '', 'product_config', 'product_tax', '1', 0, 'S-5ROFr-vQm44', 0, 'product.config_manager.tax', NULL, NULL),
(533, '', 'customer_config_attribute', 'customer_lastname', '1', 0, 'S-5ROFr-vQm44', 1, 'customer.config_manager.lastname', NULL, NULL),
(534, '', 'customer_config_attribute_required', 'customer_lastname_required', '1', 0, 'S-5ROFr-vQm44', 1, '', NULL, NULL),
(535, '', 'customer_config_attribute', 'customer_address1', '1', 0, 'S-5ROFr-vQm44', 2, 'customer.config_manager.address1', NULL, NULL),
(536, '', 'customer_config_attribute_required', 'customer_address1_required', '1', 0, 'S-5ROFr-vQm44', 2, '', NULL, NULL),
(537, '', 'customer_config_attribute', 'customer_address2', '1', 0, 'S-5ROFr-vQm44', 2, 'customer.config_manager.address2', NULL, NULL),
(538, '', 'customer_config_attribute_required', 'customer_address2_required', '1', 0, 'S-5ROFr-vQm44', 2, '', NULL, NULL),
(539, '', 'customer_config_attribute', 'customer_address3', '0', 0, 'S-5ROFr-vQm44', 2, 'customer.config_manager.address3', NULL, NULL),
(540, '', 'customer_config_attribute_required', 'customer_address3_required', '0', 0, 'S-5ROFr-vQm44', 2, '', NULL, NULL),
(541, '', 'customer_config_attribute', 'customer_company', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.company', NULL, NULL),
(542, '', 'customer_config_attribute_required', 'customer_company_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(543, '', 'customer_config_attribute', 'customer_postcode', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.postcode', NULL, NULL),
(544, '', 'customer_config_attribute_required', 'customer_postcode_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(545, '', 'customer_config_attribute', 'customer_country', '1', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.country', NULL, NULL),
(546, '', 'customer_config_attribute_required', 'customer_country_required', '1', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(547, '', 'customer_config_attribute', 'customer_group', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.group', NULL, NULL),
(548, '', 'customer_config_attribute_required', 'customer_group_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(549, '', 'customer_config_attribute', 'customer_birthday', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.birthday', NULL, NULL),
(550, '', 'customer_config_attribute_required', 'customer_birthday_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(551, '', 'customer_config_attribute', 'customer_sex', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.sex', NULL, NULL),
(552, '', 'customer_config_attribute_required', 'customer_sex_required', '0', 0, 'S-5ROFr-vQm44', 0, '', NULL, NULL),
(553, '', 'customer_config_attribute', 'customer_phone', '1', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.phone', NULL, NULL),
(554, '', 'customer_config_attribute_required', 'customer_phone_required', '1', 0, 'S-5ROFr-vQm44', 1, '', NULL, NULL),
(555, '', 'customer_config_attribute', 'customer_name_kana', '0', 0, 'S-5ROFr-vQm44', 0, 'customer.config_manager.name_kana', NULL, NULL),
(556, '', 'customer_config_attribute_required', 'customer_name_kana_required', '0', 0, 'S-5ROFr-vQm44', 1, '', NULL, NULL),
(557, '', 'admin_config', 'ADMIN_NAME', 'S-Cart System', 0, 'S-5ROFr-vQm44', 0, 'admin.env.ADMIN_NAME', NULL, NULL),
(558, '', 'admin_config', 'ADMIN_TITLE', 'S-Cart Admin', 0, 'S-5ROFr-vQm44', 0, 'admin.env.ADMIN_TITLE', NULL, NULL),
(559, '', 'admin_config', 'ADMIN_LOGO', 'S-Cart <span class=\"brand-text font-weight-light\">Admin</span>', 0, 'S-5ROFr-vQm44', 0, 'admin.env.ADMIN_LOGO', NULL, NULL),
(560, '', 'admin_config', 'hidden_copyright_footer', '0', 0, 'S-5ROFr-vQm44', 0, 'admin.env.hidden_copyright_footer', NULL, NULL),
(561, '', 'admin_config', 'hidden_copyright_footer_admin', '0', 0, 'S-5ROFr-vQm44', 0, 'admin.env.hidden_copyright_footer_admin', NULL, NULL),
(562, '', 'display_config', 'product_top', '12', 0, 'S-5ROFr-vQm44', 0, 'store.display.product_top', NULL, NULL),
(563, '', 'display_config', 'product_list', '12', 0, 'S-5ROFr-vQm44', 0, 'store.display.list_product', NULL, NULL),
(564, '', 'display_config', 'product_relation', '4', 0, 'S-5ROFr-vQm44', 0, 'store.display.relation_product', NULL, NULL),
(565, '', 'display_config', 'product_viewed', '4', 0, 'S-5ROFr-vQm44', 0, 'store.display.viewed_product', NULL, NULL),
(566, '', 'display_config', 'item_list', '12', 0, 'S-5ROFr-vQm44', 0, 'store.display.item_list', NULL, NULL),
(567, '', 'display_config', 'item_top', '12', 0, 'S-5ROFr-vQm44', 0, 'store.display.item_top', NULL, NULL),
(568, '', 'order_config', 'shop_allow_guest', '1', 0, 'S-5ROFr-vQm44', 11, 'order.admin.shop_allow_guest', NULL, NULL),
(569, '', 'order_config', 'product_preorder', '1', 0, 'S-5ROFr-vQm44', 18, 'order.admin.product_preorder', NULL, NULL),
(570, '', 'order_config', 'product_buy_out_of_stock', '1', 0, 'S-5ROFr-vQm44', 20, 'order.admin.product_buy_out_of_stock', NULL, NULL),
(571, '', 'order_config', 'shipping_off', '0', 0, 'S-5ROFr-vQm44', 20, 'order.admin.shipping_off', NULL, NULL),
(572, '', 'order_config', 'payment_off', '0', 0, 'S-5ROFr-vQm44', 20, 'order.admin.payment_off', NULL, NULL),
(573, '', 'email_action', 'email_action_mode', '0', 0, 'S-5ROFr-vQm44', 0, 'email.email_action.email_action_mode', NULL, NULL),
(574, '', 'email_action', 'email_action_queue', '0', 0, 'S-5ROFr-vQm44', 1, 'email.email_action.email_action_queue', NULL, NULL),
(575, '', 'email_action', 'order_success_to_admin', '0', 0, 'S-5ROFr-vQm44', 1, 'email.email_action.order_success_to_admin', NULL, NULL),
(576, '', 'email_action', 'order_success_to_customer', '0', 0, 'S-5ROFr-vQm44', 2, 'email.email_action.order_success_to_cutomer', NULL, NULL),
(577, '', 'email_action', 'order_success_to_customer_pdf', '0', 0, 'S-5ROFr-vQm44', 3, 'email.email_action.order_success_to_cutomer_pdf', NULL, NULL),
(578, '', 'email_action', 'customer_verify', '0', 0, 'S-5ROFr-vQm44', 4, 'email.email_action.customer_verify', NULL, NULL),
(579, '', 'email_action', 'welcome_customer', '0', 0, 'S-5ROFr-vQm44', 4, 'email.email_action.welcome_customer', NULL, NULL),
(580, '', 'email_action', 'contact_to_admin', '1', 0, 'S-5ROFr-vQm44', 6, 'email.email_action.contact_to_admin', NULL, NULL),
(581, '', 'smtp_config', 'smtp_host', '', 0, 'S-5ROFr-vQm44', 1, 'email.config_smtp.smtp_host', NULL, NULL),
(582, '', 'smtp_config', 'smtp_user', '', 0, 'S-5ROFr-vQm44', 2, 'email.config_smtp.smtp_user', NULL, NULL),
(583, '', 'smtp_config', 'smtp_password', '', 0, 'S-5ROFr-vQm44', 3, 'email.config_smtp.smtp_password', NULL, NULL),
(584, '', 'smtp_config', 'smtp_security', '', 0, 'S-5ROFr-vQm44', 4, 'email.config_smtp.smtp_security', NULL, NULL),
(585, '', 'smtp_config', 'smtp_port', '', 0, 'S-5ROFr-vQm44', 5, 'email.config_smtp.smtp_port', NULL, NULL),
(586, '', 'smtp_config', 'smtp_name', '', 0, 'S-5ROFr-vQm44', 6, 'email.config_smtp.smtp_name', NULL, NULL),
(587, '', 'smtp_config', 'smtp_from', '', 0, 'S-5ROFr-vQm44', 7, 'email.config_smtp.smtp_from', NULL, NULL),
(588, '', 'url_config', 'SUFFIX_URL', '.html', 0, 'S-5ROFr-vQm44', 0, 'admin.env.SUFFIX_URL', NULL, NULL),
(589, '', 'url_config', 'PREFIX_SHOP', 'shop', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_SHOP', NULL, NULL),
(590, '', 'url_config', 'PREFIX_BRAND', 'brand', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_BRAND', NULL, NULL),
(591, '', 'url_config', 'PREFIX_CATEGORY', 'category', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CATEGORY', NULL, NULL),
(592, '', 'url_config', 'PREFIX_SUB_CATEGORY', 'sub-category', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_SUB_CATEGORY', NULL, NULL),
(593, '', 'url_config', 'PREFIX_PRODUCT', 'product', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_PRODUCT', NULL, NULL),
(594, '', 'url_config', 'PREFIX_SEARCH', 'search', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_SEARCH', NULL, NULL),
(595, '', 'url_config', 'PREFIX_CONTACT', 'contact', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CONTACT', NULL, NULL),
(596, '', 'url_config', 'PREFIX_ABOUT', 'about', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_ABOUT', NULL, NULL),
(597, '', 'url_config', 'PREFIX_NEWS', 'news', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_NEWS', NULL, NULL),
(598, '', 'url_config', 'PREFIX_MEMBER', 'customer', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_MEMBER', NULL, NULL),
(599, '', 'url_config', 'PREFIX_MEMBER_ORDER_LIST', 'order-list', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_MEMBER_ORDER_LIST', NULL, NULL),
(600, '', 'url_config', 'PREFIX_MEMBER_CHANGE_PWD', 'change-password', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', NULL, NULL),
(601, '', 'url_config', 'PREFIX_MEMBER_CHANGE_INFO', 'change-info', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', NULL, NULL),
(602, '', 'url_config', 'PREFIX_CMS_CATEGORY', 'cms-category', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CMS_CATEGORY', NULL, NULL),
(603, '', 'url_config', 'PREFIX_CMS_ENTRY', 'entry', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CMS_ENTRY', NULL, NULL),
(604, '', 'url_config', 'PREFIX_CART_WISHLIST', 'wishlst', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CART_WISHLIST', NULL, NULL),
(605, '', 'url_config', 'PREFIX_CART_COMPARE', 'compare', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CART_COMPARE', NULL, NULL),
(606, '', 'url_config', 'PREFIX_CART_DEFAULT', 'cart', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CART_DEFAULT', NULL, NULL),
(607, '', 'url_config', 'PREFIX_CART_CHECKOUT', 'checkout', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CART_CHECKOUT', NULL, NULL),
(608, '', 'url_config', 'PREFIX_CART_CHECKOUT_CONFIRM', 'checkout-confirm', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', NULL, NULL),
(609, '', 'url_config', 'PREFIX_ORDER_SUCCESS', 'order-success', 0, 'S-5ROFr-vQm44', 0, 'admin.env.PREFIX_ORDER_SUCCESS', NULL, NULL),
(610, '', 'captcha_config', 'captcha_mode', '0', 0, 'S-5ROFr-vQm44', 20, 'admin.captcha.captcha_mode', NULL, NULL),
(611, '', 'captcha_config', 'captcha_page', '[]', 0, 'S-5ROFr-vQm44', 10, 'captcha.captcha_page', NULL, NULL),
(612, '', 'captcha_config', 'captcha_method', '', 0, 'S-5ROFr-vQm44', 0, 'admin.captcha.captcha_method', NULL, NULL),
(613, '', 'admin_custom_config', 'facebook_url', 'https://www.facebook.com/SCart.Ecommerce/', 0, 'S-5ROFr-vQm44', 0, 'admin.admin_custom_config.facebook_url', NULL, NULL),
(614, '', 'admin_custom_config', 'fanpage_url', 'https://www.facebook.com/groups/scart.opensource', 0, 'S-5ROFr-vQm44', 0, 'admin.admin_custom_config.fanpage_url', NULL, NULL),
(615, '', 'admin_custom_config', 'twitter_url', 'https://twitter.com/ecommercescart', 0, 'S-5ROFr-vQm44', 0, 'admin.admin_custom_config.twitter_url', NULL, NULL),
(616, '', 'admin_custom_config', 'instagram_url', '#', 0, 'S-5ROFr-vQm44', 0, 'admin.admin_custom_config.instagram_url', NULL, NULL),
(617, '', 'admin_custom_config', 'youtube_url', 'https://www.youtube.com/channel/UCR8kitefby3N6KvvawQVqdg/videos', 0, 'S-5ROFr-vQm44', 0, 'admin.admin_custom_config.youtube_url', NULL, NULL),
(618, '', 'config_layout', 'link_account', '1', 0, 'S-5ROFr-vQm44', 0, 'admin.config_layout.link_account', NULL, NULL),
(619, '', 'config_layout', 'link_language', '1', 0, 'S-5ROFr-vQm44', 0, 'admin.config_layout.link_language', NULL, NULL),
(620, '', 'config_layout', 'link_currency', '1', 0, 'S-5ROFr-vQm44', 0, 'admin.config_layout.link_currency', NULL, NULL),
(621, '', 'config_layout', 'link_cart', '1', 0, 'S-5ROFr-vQm44', 0, 'admin.config_layout.link_cart', NULL, NULL),
(622, 'Plugins', 'Payment', 'PaypalExpress', '1', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.title', NULL, NULL),
(623, '', 'PaypalExpress_config', 'PaypalExpress_client_id', '', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.paypal_client_id', NULL, NULL),
(624, '', 'PaypalExpress_config', 'PaypalExpress_secrect', '', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.paypal_secrect', NULL, NULL),
(625, '', 'PaypalExpress_config', 'PaypalExpress_mode', 'sandbox', 0, '0', 0, 'Plugins/Payment/PaypalExpress::PaypalExpress.paypal_mode', NULL, NULL),
(626, '', 'PaypalExpress_config', 'PaypalExpress_order_status_success', '2', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.paypal_order_status_success', NULL, NULL),
(627, '', 'PaypalExpress_config', 'PaypalExpress_order_status_faild', '6', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.paypal_order_status_faild', NULL, NULL),
(628, '', 'PaypalExpress_config', 'PaypalExpress_payment_status', '3', 0, '0', 0, 'Plugins/Payment/PaypalExpress::lang.paypal_payment_status', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_log`
--

CREATE TABLE `sc_admin_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_log`
--

INSERT INTO `sc_admin_log` (`id`, `user_id`, `path`, `method`, `ip`, `user_agent`, `input`, `created_at`, `updated_at`) VALUES
(1, '1', 'sc_admin', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:36:05', '2024-04-10 07:36:05'),
(2, '1', 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:36:54', '2024-04-10 07:36:54'),
(3, '1', 'sc_admin/plugin/other/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:36:57', '2024-04-10 07:36:57'),
(4, '1', 'sc_admin/plugin/install/online', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\",\"key\":\"MultiVendor\",\"path\":\"https:\\/\\/api.s-cart.org\\/process\\/filev3?key=1645970737621b8531696e5&version=9.0\",\"code\":\"Other\"}', '2024-04-10 07:37:04', '2024-04-10 07:37:04'),
(5, '1', 'sc_admin/plugin/other/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:10', '2024-04-10 07:37:10'),
(6, '1', 'sc_admin/plugin/other', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:19', '2024-04-10 07:37:19'),
(7, '1', 'sc_admin/store_info', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:26', '2024-04-10 07:37:26'),
(8, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:32', '2024-04-10 07:37:32'),
(9, '1', 'sc_admin/MultiVendor/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:35', '2024-04-10 07:37:35'),
(10, '1', 'sc_admin/language', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:43', '2024-04-10 07:37:43'),
(11, '1', 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:49', '2024-04-10 07:37:49'),
(12, '1', 'sc_admin/language/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"code\":\"vi\",\"icon\":\"\\/data\\/language\\/flag_vn.png\",\"sort\":\"2\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:37:54', '2024-04-10 07:37:54'),
(13, '1', 'sc_admin/language/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:37:54', '2024-04-10 07:37:54'),
(14, '1', 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:38:02', '2024-04-10 07:38:02'),
(15, '1', 'sc_admin/product/edit/9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:38:06', '2024-04-10 07:38:06'),
(16, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:38:35', '2024-04-10 07:38:35'),
(17, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:38:41', '2024-04-10 07:38:41'),
(18, '1', 'sc_admin/currency/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:38:43', '2024-04-10 07:38:43'),
(19, '1', 'sc_admin/currency/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"name\":\"Kenyan shillings\",\"code\":\"KES\",\"symbol\":\"ksh\",\"exchange_rate\":\"129.9\",\"precision\":\"2\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:40:24', '2024-04-10 07:40:24'),
(20, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:25', '2024-04-10 07:40:25'),
(21, '1', 'sc_admin/currency/edit/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:29', '2024-04-10 07:40:29'),
(22, '1', 'sc_admin/currency/edit/2', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"name\":\"VietNam Dong\",\"code\":\"VND\",\"symbol\":\"\\u20ab\",\"exchange_rate\":\"20000\",\"precision\":\"0\",\"symbol_first\":\"0\",\"thousands\":\",\",\"sort\":\"1\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:40:35', '2024-04-10 07:40:35'),
(23, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:36', '2024-04-10 07:40:36'),
(24, '1', 'sc_admin/currency/edit/1', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:40', '2024-04-10 07:40:40'),
(25, '1', 'sc_admin/currency/edit/1', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"name\":\"USD Dola\",\"code\":\"USD\",\"symbol\":\"$\",\"exchange_rate\":\"1\",\"precision\":\"2\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"0\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:40:44', '2024-04-10 07:40:44'),
(26, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:45', '2024-04-10 07:40:45'),
(27, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:52', '2024-04-10 07:40:52'),
(28, '1', 'sc_admin/MultiVendor/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:40:56', '2024-04-10 07:40:56'),
(29, '1', 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"type\":\"logo\"}', '2024-04-10 07:42:26', '2024-04-10 07:42:26'),
(30, '1', 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712734950163\"}', '2024-04-10 07:42:31', '2024-04-10 07:42:31'),
(31, '1', 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712734950164\"}', '2024-04-10 07:42:31', '2024-04-10 07:42:31'),
(32, '1', 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1712734950165\"}', '2024-04-10 07:42:32', '2024-04-10 07:42:32'),
(33, '1', 'sc_admin/MultiVendor/store/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"My Awesome Store\",\"keyword\":\"electronics, gadgets, technology\",\"description\":\"Welcome to My Awesome Store, your one-stop shop for the latest electronics and gadgets. We offer a wide range of products at competitive prices.\"}},\"logo\":\"\\/data\\/logo\\/icon.png\",\"phone\":\"123-456-7890\",\"long_phone\":\"+1-123-456-789\",\"time_active\":\"Monday to Friday, 9:00 AM to 6:00 PM\",\"address\":\"123 Main Street, Cityville, State, Country\",\"office\":\"456 Business Avenue, Citytown, State, Country\",\"warehouse\":\"789 Storage Road, Towncity, State, Country\",\"email\":\"info@myawesomestore.com\",\"code\":\"MYAWESOME001\",\"template\":\"s-cart-light\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
(34, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:43:34', '2024-04-10 07:43:34'),
(35, '1', 'sc_admin/MultiVendor/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:44:02', '2024-04-10 07:44:02'),
(36, '1', 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"type\":\"logo\"}', '2024-04-10 07:44:21', '2024-04-10 07:44:21'),
(37, '1', 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735061411\"}', '2024-04-10 07:44:22', '2024-04-10 07:44:22'),
(38, '1', 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735061412\"}', '2024-04-10 07:44:23', '2024-04-10 07:44:23'),
(39, '1', 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1712735061413\"}', '2024-04-10 07:44:24', '2024-04-10 07:44:24'),
(40, '1', 'sc_admin/MultiVendor/store/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Fashion Paradise\",\"keyword\":\"fashion, clothing, apparel\",\"description\":\"Explore the latest trends in fashion at Fashion Paradise. We offer a wide selection of clothing and accessories for every style and occasion.\"}},\"logo\":\"\\/data\\/logo\\/scart-mid.png\",\"phone\":\"555-123-4567\",\"long_phone\":\"+1-555-123-4567\",\"time_active\":\"Monday to Saturday, 10:00 AM to 8:00 PM\",\"address\":\"789 Fashion Avenue, Trendy Town, State, Country\",\"office\":\"101 Style Street, Fashion City, State, Country\",\"warehouse\":\"202 Chic Road, Glamour Town, State, Country\",\"email\":\"hello@fashionparadise.com\",\"code\":\"FASHION001\",\"template\":\"s-cart-light\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
(41, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:45:24', '2024-04-10 07:45:24'),
(42, '1', 'sc_admin/MultiVendor/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:45:42', '2024-04-10 07:45:42'),
(43, '1', 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"type\":\"logo\"}', '2024-04-10 07:46:02', '2024-04-10 07:46:02'),
(44, '1', 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735162389\"}', '2024-04-10 07:46:03', '2024-04-10 07:46:03'),
(45, '1', 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735162390\"}', '2024-04-10 07:46:04', '2024-04-10 07:46:04'),
(46, '1', 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1712735162391\"}', '2024-04-10 07:46:05', '2024-04-10 07:46:05'),
(47, '1', 'sc_admin/MultiVendor/store/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Fresh Grocers\",\"keyword\":\"groceries, fresh produce, supermarket\",\"description\":\"Fresh Grocers is your neighborhood supermarket offering a wide range of fresh produce, groceries, and household essentials.\"}},\"logo\":\"\\/data\\/logo\\/favicon.png\",\"phone\":\"222-555-7890\",\"long_phone\":\"+1-222-555-7890\",\"time_active\":\"Monday to Sunday, 8:00 AM to 10:00 PM\",\"address\":\"456 Market Street, Townsville, State, Country\",\"office\":\"789 Admin Avenue, City Center, State, Country\",\"warehouse\":\"101 Storage Lane, Storageville, State, Country\",\"email\":\"info@freshgrocers.com\",\"code\":\"FRESH001\",\"template\":\"s-cart-light\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
(48, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:47:12', '2024-04-10 07:47:12'),
(49, '1', 'sc_admin/MultiVendor/store/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:47:32', '2024-04-10 07:47:32'),
(50, '1', 'sc_admin/uploads', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"type\":\"logo\"}', '2024-04-10 07:47:55', '2024-04-10 07:47:55'),
(51, '1', 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735275847\"}', '2024-04-10 07:47:56', '2024-04-10 07:47:56'),
(52, '1', 'sc_admin/uploads/errors', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"_\":\"1712735275848\"}', '2024-04-10 07:47:57', '2024-04-10 07:47:57'),
(53, '1', 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":null,\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1712735275849\"}', '2024-04-10 07:47:58', '2024-04-10 07:47:58'),
(54, '1', 'sc_admin/uploads/upload', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:48:10', '2024-04-10 07:48:10'),
(55, '1', 'sc_admin/uploads/folders', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"_\":\"1712735275850\"}', '2024-04-10 07:48:11', '2024-04-10 07:48:11'),
(56, '1', 'sc_admin/uploads/jsonitems', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"working_dir\":\"\\/\",\"type\":\"logo\",\"sort_type\":\"alphabetic\",\"page\":\"1\",\"_\":\"1712735275851\"}', '2024-04-10 07:48:12', '2024-04-10 07:48:12'),
(57, '1', 'sc_admin/MultiVendor/store/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"descriptions\":{\"en\":{\"title\":\"Bookworm\'s Haven\",\"keyword\":\"books, reading, literature\",\"description\":\"Welcome to Bookworm\'s Haven, where book lovers find their paradise. Explore our wide selection of books, from classics to bestsellers.\"}},\"logo\":\"\\/data\\/logo\\/61KCbJGpAFL._AC_SX569_.jpg\",\"phone\":\"333-789-4567\",\"long_phone\":\"+1-333-789-4567\",\"time_active\":\"Tuesday to Sunday, 10:00 AM to 7:00 PM\",\"address\":\"101 Library Street, Booksville, State, Country\",\"office\":\"202 Bookworm Boulevard, Reading City, State, Country\",\"warehouse\":\"303 Novel Lane, Literature Town, State, Country\",\"email\":\"hello@bookwormshaven.com\",\"code\":\"BOOKWORM001\",\"template\":\"s-cart-light\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
(58, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:49:08', '2024-04-10 07:49:08'),
(59, '1', 'sc_admin/MultiVendor/store', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:49:19', '2024-04-10 07:49:19'),
(60, '1', 'sc_admin/MultiVendor/vendor', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:49:26', '2024-04-10 07:49:26'),
(61, '1', 'sc_admin/MultiVendor/vendor/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:49:29', '2024-04-10 07:49:29'),
(62, '1', 'sc_admin/MultiVendor/vendor/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"first_name\":\"Antony\",\"last_name\":\"Torotich\",\"phone\":\"0707546698\",\"postcode\":\"34\",\"email\":\"antonytorotich@gmail.com\",\"address1\":\"Kitengela\",\"address2\":\"Kajiado\",\"country\":\"KE\",\"password\":\"12345678\",\"store_id\":\"S-GQ0sY-vnQbk\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:49:48', '2024-04-10 07:49:48'),
(63, '1', 'sc_admin/MultiVendor/vendor/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:49:49', '2024-04-10 07:49:49'),
(64, '1', 'sc_admin/MultiVendor/vendor/create', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"first_name\":\"Antony\",\"last_name\":\"Torotich\",\"phone\":\"0707546698\",\"postcode\":\"15-20328\",\"email\":\"antonytorotich@gmail.com\",\"address1\":\"Kitengela\",\"address2\":\"Kajiado\",\"country\":\"KE\",\"password\":\"12345678\",\"store_id\":\"S-GQ0sY-vnQbk\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 07:49:59', '2024-04-10 07:49:59'),
(65, '1', 'sc_admin/MultiVendor/vendor', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 07:50:00', '2024-04-10 07:50:00'),
(66, '1', 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:01:44', '2024-04-10 08:01:44'),
(67, '1', 'sc_admin/product/edit/9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:01:47', '2024-04-10 08:01:47'),
(68, '1', 'sc_admin/product/edit/9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"descriptions\":{\"en\":{\"name\":\"Handcrafted Ceramic Vase\",\"keyword\":\"fruits\",\"description\":\"Add a touch of elegance to your home with this handcrafted ceramic vase.\",\"content\":\"Additional information about the product\"}},\"category\":[\"9bc5b56a-ff49-4773-abf1-6d7bdf39febd\"],\"shop_store\":[\"S-GQ0sY-vnQbk\"],\"image\":\"\\/data\\/product\\/S-GQ0sY-vnQbk\\/images.jpeg\",\"sku\":\"CERAMIC-VASE-001\",\"alias\":\"handcrafted-ceramic-vase\",\"brand_id\":\"9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90\",\"supplier_id\":\"9bc5b56b-055a-407d-abbc-e5c9cac8cfb5\",\"cost\":\"20.00\",\"price\":\"90.00\",\"tax_id\":\"0\",\"stock\":\"300\",\"weight_class\":\"kg\",\"weight\":\"3.00\",\"length_class\":\"cm\",\"length\":\"20.00\",\"height\":\"30.00\",\"width\":\"20.00\",\"property\":\"physical\",\"download_path\":null,\"date_available\":\"2024-04-10\",\"minimum\":\"1\",\"sort\":\"1\",\"status\":\"on\",\"approve\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 08:01:54', '2024-04-10 08:01:54'),
(69, '1', 'sc_admin/product', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:01:55', '2024-04-10 08:01:55'),
(70, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:03:32', '2024-04-10 08:03:32'),
(71, '1', 'sc_admin/currency/edit/3', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:03:35', '2024-04-10 08:03:35'),
(72, '1', 'sc_admin/currency/edit/3', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"name\":\"Kenyan shillings\",\"code\":\"KES\",\"symbol\":\"ksh\",\"exchange_rate\":\"1\",\"precision\":\"2\",\"symbol_first\":\"1\",\"thousands\":\",\",\"sort\":\"1\",\"status\":\"on\",\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\"}', '2024-04-10 08:03:44', '2024-04-10 08:03:44'),
(73, '1', 'sc_admin/currency', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:03:45', '2024-04-10 08:03:45'),
(74, '1', 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:05:13', '2024-04-10 08:05:13'),
(75, '1', 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:05:17', '2024-04-10 08:05:17'),
(76, '1', 'sc_admin/plugin/install/online', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"_token\":\"uJAI1XBvzzvdTI8XvQCyxgzmTfg03a80x4QOAUXq\",\"key\":\"PaypalExpress\",\"path\":\"https:\\/\\/api.s-cart.org\\/process\\/filev3?key=15990885835f5027c75f831&version=9.0\",\"code\":\"Payment\"}', '2024-04-10 08:05:25', '2024-04-10 08:05:25'),
(77, '1', 'sc_admin/plugin/payment/online', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:05:28', '2024-04-10 08:05:28'),
(78, '1', 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 08:05:32', '2024-04-10 08:05:32'),
(79, '1', 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"PaypalExpress\"}', '2024-04-10 08:05:39', '2024-04-10 08:05:39'),
(80, '1', 'sc_admin/plugin/payment', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '{\"action\":\"config\",\"pluginKey\":\"PaypalExpress\"}', '2024-04-10 08:09:05', '2024-04-10 08:09:05'),
(81, '1', 'sc_admin/auth/logout', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '[]', '2024-04-10 05:28:37', '2024-04-10 05:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_menu`
--

CREATE TABLE `sc_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `hidden` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_menu`
--

INSERT INTO `sc_admin_menu` (`id`, `parent_id`, `sort`, `title`, `icon`, `uri`, `type`, `hidden`, `key`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'admin.menu_titles.order_manager', 'fas fa-cart-arrow-down', '', 0, 0, 'ORDER_MANAGER', NULL, NULL),
(2, 6, 2, 'admin.menu_titles.catalog_mamager', 'fas fa-folder-open', '', 0, 0, 'CATALOG_MANAGER', NULL, NULL),
(3, 25, 3, 'admin.menu_titles.customer_manager', 'fas fa-users', '', 0, 0, 'CUSTOMER_MANAGER', NULL, NULL),
(4, 8, 201, 'admin.menu_titles.template_layout', 'fab fa-windows', '', 0, 0, 'TEMPLATE', NULL, NULL),
(5, 9, 2, 'admin.menu_titles.admin_global', 'fab fa-whmcs', '', 0, 0, 'CONFIG_SYSTEM', NULL, NULL),
(6, 0, 10, 'admin.menu_titles.ADMIN_SHOP', 'fab fa-shopify', '', 0, 0, 'ADMIN_SHOP', NULL, NULL),
(7, 0, 100, 'admin.menu_titles.ADMIN_CONTENT', 'fas fa-file-signature', '', 0, 0, 'ADMIN_CONTENT', NULL, NULL),
(8, 0, 300, 'admin.menu_titles.ADMIN_EXTENSION', 'fas fa-th', '', 0, 0, 'ADMIN_EXTENSION', NULL, NULL),
(9, 0, 400, 'admin.menu_titles.ADMIN_SYSTEM', 'fas fa-cogs', '', 0, 0, 'ADMIN_SYSTEM', NULL, NULL),
(10, 7, 102, 'admin.menu_titles.page_manager', 'fas fa-clone', 'admin::page', 0, 0, NULL, NULL, NULL),
(11, 27, 2, 'admin.menu_titles.shipping_status', 'fas fa-truck', 'admin::shipping_status', 0, 0, NULL, NULL, NULL),
(12, 1, 3, 'admin.menu_titles.order', 'fas fa-shopping-cart', 'admin::order', 0, 0, NULL, NULL, NULL),
(13, 27, 1, 'admin.menu_titles.order_status', 'fas fa-asterisk', 'admin::order_status', 0, 0, NULL, NULL, NULL),
(14, 27, 3, 'admin.menu_titles.payment_status', 'fas fa-recycle', 'admin::payment_status', 0, 0, NULL, NULL, NULL),
(15, 2, 0, 'admin.menu_titles.product', 'far fa-file-image', 'admin::product', 0, 0, NULL, NULL, NULL),
(16, 2, 0, 'admin.menu_titles.category', 'fas fa-folder-open', 'admin::category', 0, 0, NULL, NULL, NULL),
(17, 2, 4, 'admin.menu_titles.supplier', 'fas fa-user-secret', 'admin::supplier', 0, 0, NULL, NULL, NULL),
(18, 2, 5, 'admin.menu_titles.brand', 'fas fa-university', 'admin::brand', 0, 0, NULL, NULL, NULL),
(19, 27, 8, 'admin.menu_titles.attribute_group', 'fas fa-bars', 'admin::attribute_group', 0, 0, NULL, NULL, NULL),
(20, 3, 0, 'admin.menu_titles.customer', 'fas fa-user', 'admin::customer', 0, 0, NULL, NULL, NULL),
(21, 3, 0, 'admin.menu_titles.subscribe', 'fas fa-user-circle', 'admin::subscribe', 0, 0, NULL, NULL, NULL),
(22, 67, 1, 'admin.menu_titles.block_content', 'far fa-newspaper', 'admin::store_block', 0, 0, NULL, NULL, NULL),
(23, 67, 2, 'admin.menu_titles.block_link', 'fab fa-chrome', 'admin::store_link', 0, 0, NULL, NULL, NULL),
(24, 4, 0, 'admin.menu_titles.template', 'fas fa-columns', 'admin::template', 0, 0, NULL, NULL, NULL),
(25, 0, 200, 'admin.menu_titles.ADMIN_MARKETING', 'fas fa-sort-amount-up', '', 0, 0, 'MARKETING', NULL, NULL),
(26, 65, 1, 'admin.menu_titles.store_info', 'fas fa-h-square', 'admin::store_info', 0, 0, NULL, NULL, NULL),
(27, 65, 4, 'admin.menu_titles.setting_system', 'fas fa-tools', '', 0, 0, 'SETTING_SYSTEM', NULL, NULL),
(28, 9, 4, 'admin.menu_titles.error_log', 'far fa-clone', '', 0, 0, '', NULL, NULL),
(29, 25, 0, 'admin.menu_titles.email_template', 'fas fa-bars', 'admin::email_template', 0, 0, NULL, NULL, NULL),
(30, 9, 5, 'admin.menu_titles.localisation', 'fa fa-map-signs', '', 0, 0, NULL, NULL, NULL),
(31, 30, 1, 'admin.menu_titles.language', 'fas fa-language', 'admin::language', 0, 0, NULL, NULL, NULL),
(32, 30, 3, 'admin.menu_titles.currency', 'far fa-money-bill-alt', 'admin::currency', 0, 0, NULL, NULL, NULL),
(33, 7, 101, 'admin.menu_titles.banner', 'fas fa-image', 'admin::banner', 0, 0, NULL, NULL, NULL),
(34, 5, 5, 'admin.menu_titles.backup_restore', 'fas fa-save', 'admin::backup', 0, 0, NULL, NULL, NULL),
(35, 8, 202, 'admin.menu_titles.plugin', 'fas fa-puzzle-piece', '', 0, 0, 'PLUGIN', NULL, NULL),
(36, 70, 2, 'admin.menu_titles.webhook', 'fab fa-diaspora', 'admin::config/webhook', 0, 0, NULL, NULL, NULL),
(37, 25, 5, 'admin.menu_titles.report_manager', 'fas fa-chart-pie', '', 0, 0, 'REPORT_MANAGER', NULL, NULL),
(38, 9, 1, 'admin.menu_titles.user_permission', 'fas fa-users-cog', '', 0, 0, 'ADMIN', NULL, NULL),
(39, 35, 0, 's-cart::admin.menu_titles.plugin_payment', 'far fa-money-bill-alt', 'admin::plugin/payment', 0, 0, NULL, NULL, NULL),
(40, 35, 1, 's-cart::admin.menu_titles.plugin_shipping', 'fas fa-ambulance', 'admin::plugin/shipping', 0, 0, NULL, NULL, NULL),
(41, 35, 2, 's-cart::admin.menu_titles.plugin_total', 'fas fa-atom', 'admin::plugin/total', 0, 0, NULL, NULL, NULL),
(42, 35, 100, 's-cart::admin.menu_titles.plugin_other', 'far fa-circle', 'admin::plugin/other', 0, 0, NULL, NULL, NULL),
(43, 35, 4, 's-cart::admin.menu_titles.plugin_cms', 'fab fa-modx', 'admin::plugin/cms', 0, 0, NULL, NULL, NULL),
(44, 67, 3, 'admin.menu_titles.css', 'far fa-file-code', 'admin::store_css', 0, 0, NULL, NULL, NULL),
(45, 25, 4, 'admin.menu_titles.seo_manager', 'fab fa-battle-net', '', 0, 0, 'SEO_MANAGER', NULL, NULL),
(46, 38, 0, 'admin.menu_titles.users', 'fas fa-users', 'admin::user', 0, 0, NULL, NULL, NULL),
(47, 38, 0, 'admin.menu_titles.roles', 'fas fa-user-tag', 'admin::role', 0, 0, NULL, NULL, NULL),
(48, 38, 0, 'admin.menu_titles.permission', 'fas fa-ban', 'admin::permission', 0, 0, NULL, NULL, NULL),
(49, 5, 0, 'admin.menu_titles.menu', 'fas fa-bars', 'admin::menu', 0, 0, NULL, NULL, NULL),
(50, 70, 0, 'admin.menu_titles.operation_log', 'fas fa-history', 'admin::log', 0, 0, NULL, NULL, NULL),
(51, 45, 0, 'admin.menu_titles.seo_config', 'fas fa-bars', 'admin::seo/config', 0, 0, NULL, NULL, NULL),
(52, 7, 103, 'admin.menu_titles.news', 'far fa-file-powerpoint', 'admin::news', 0, 0, NULL, NULL, NULL),
(53, 35, 3, 's-cart::admin.menu_titles.plugin_fee', 'fas fa-box', 'admin::plugin/fee', 0, 0, NULL, NULL, NULL),
(54, 37, 0, 'admin.menu_titles.report_product', 'fas fa-bars', 'admin::report/product', 0, 0, NULL, NULL, NULL),
(55, 70, 3, 'admin.menu_titles.password_policy', 'fa fa-unlock', 'admin::password_policy', 0, 0, NULL, NULL, NULL),
(57, 65, 2, 'admin.menu_titles.store_config', 'fas fa-cog', 'admin::store_config', 0, 0, NULL, NULL, NULL),
(58, 5, 5, 'admin.menu_titles.cache_manager', 'fab fa-tripadvisor', 'admin::cache_config', 0, 0, NULL, NULL, NULL),
(59, 9, 7, 'admin.menu_titles.api_manager', 'fas fa-plug', '', 0, 0, 'API_MANAGER', NULL, NULL),
(60, 65, 3, 'admin.menu_titles.store_maintain', 'fas fa-wrench', 'admin::store_maintain', 0, 0, NULL, NULL, NULL),
(61, 27, 9, 'admin.menu_titles.tax', 'far fa-calendar-minus', 'admin::tax', 0, 0, NULL, NULL, NULL),
(62, 27, 6, 'admin.menu_titles.weight', 'fas fa-balance-scale', 'admin::weight_unit', 0, 0, NULL, NULL, NULL),
(63, 27, 7, 'admin.menu_titles.length', 'fas fa-minus', 'admin::length_unit', 0, 0, NULL, NULL, NULL),
(65, 0, 250, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'fas fa-store-alt', '', 0, 0, 'ADMIN_SHOP_SETTING', NULL, NULL),
(66, 59, 1, 'admin.menu_titles.api_config', 'fas fa fa-cog', 'admin::api_connection', 0, 0, NULL, NULL, NULL),
(67, 65, 5, 'admin.menu_titles.layout', 'far fa-object-group', '', 0, 0, NULL, NULL, NULL),
(68, 27, 5, 'admin.menu_titles.custom_field', 'fa fa-american-sign-language-interpreting', 'admin::custom_field', 0, 0, NULL, NULL, NULL),
(69, 30, 2, 'admin.menu_titles.language_manager', 'fa fa-universal-access', 'admin::language_manager', 0, 0, NULL, NULL, NULL),
(70, 9, 6, 'admin.menu_titles.security', 'fab fa-shirtsinbulk', '', 0, 0, 'ADMIN_SECURITY', NULL, NULL),
(71, 0, 250, 'multi_vendor.plugin_block', 'nav-icon fab fa-shopify', NULL, 0, 0, 'ADMIN_MVENDOR_SETTING', NULL, NULL),
(72, 71, 1, 'multi_vendor.vendor_store', 'fas fa-h-square', 'admin::MultiVendor/store', 0, 0, NULL, NULL, NULL),
(73, 71, 2, 'multi_vendor.vendor_user', 'fa fa-user-circle', 'admin::MultiVendor/vendor', 0, 0, NULL, NULL, NULL),
(74, 71, 3, 'multi_vendor.vendor_config', 'fas fa-cogs ', 'admin::MultiVendor/config', 0, 0, NULL, NULL, NULL),
(75, 71, 5, 'multi_vendor.vendor_report', 'fa fa-bars', 'admin::MultiVendor/report', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_notice`
--

CREATE TABLE `sc_admin_notice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'order, customer, admin,...',
  `type_id` varchar(36) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin_id` varchar(36) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_notice`
--

INSERT INTO `sc_admin_notice` (`id`, `type`, `type_id`, `status`, `admin_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'sc_order_success', 'O-p5TnI-c4ziN', 0, '1', 'admin_notice.order.success', '2024-04-11 05:15:05', '2024-04-11 05:15:05'),
(2, 'sc_order_success', 'O-zPBjZ-DQLy7', 0, '1', 'admin_notice.order.success', '2024-04-11 05:16:43', '2024-04-11 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_password_resets`
--

CREATE TABLE `sc_admin_password_resets` (
  `email` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_permission`
--

CREATE TABLE `sc_admin_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_uri` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_permission`
--

INSERT INTO `sc_admin_permission` (`id`, `name`, `slug`, `http_uri`, `created_at`, `updated_at`) VALUES
(1, 'Auth manager', 'auth.full', 'ANY::sc_admin/auth/*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET::sc_admin', NULL, NULL),
(3, 'Base setting', 'base.setting', 'ANY::sc_admin/order_status/*,ANY::sc_admin/shipping_status/*,ANY::sc_admin/payment_status/*,ANY::sc_admin/supplier/*,ANY::sc_admin/brand/*,ANY::sc_admin/custom_field/*,ANY::sc_admin/weight_unit/*,ANY::sc_admin/length_unit/*,ANY::sc_admin/attribute_group/*,ANY::sc_admin/tax/*', NULL, NULL),
(4, 'Store manager', 'store.full', 'ANY::sc_admin/store_info/*,ANY::sc_admin/store_maintain/*,ANY::sc_admin/store_config/*,ANY::sc_admin/store_css/*,ANY::sc_admin/store_block/*,ANY::sc_admin/store_link/*', NULL, NULL),
(5, 'Product manager', 'product.full', 'ANY::sc_admin/product/*,ANY::sc_admin/product_property/*,ANY::sc_admin/product_tag/*', NULL, NULL),
(6, 'Category manager', 'category.full', 'ANY::sc_admin/category/*', NULL, NULL),
(7, 'Order manager', 'order.full', 'ANY::sc_admin/order/*', NULL, NULL),
(8, 'Upload management', 'upload.full', 'ANY::sc_admin/uploads/*', NULL, NULL),
(9, 'Extension manager', 'extension.full', 'ANY::sc_admin/template/*,ANY::sc_admin/plugin/*', NULL, NULL),
(10, 'Marketing manager', 'marketing.full', 'ANY::sc_admin/shop_discount/*,ANY::sc_admin/email_template/*,ANY::sc_admin/customer/*,ANY::sc_admin/subscribe/*,ANY::sc_admin/seo/*', NULL, NULL),
(11, 'Report manager', 'report.full', 'ANY::sc_admin/report/*', NULL, NULL),
(12, 'CMS full', 'cms.full', 'ANY::sc_admin/page/*,ANY::sc_admin/banner/*,ANY::sc_admin/banner_type/*,ANY::sc_admin/cms_category/*,ANY::sc_admin/cms_content/*,ANY::sc_admin/news/*', NULL, NULL),
(13, 'Update config', 'change.config', 'POST::sc_admin/store_config/update', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role`
--

CREATE TABLE `sc_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role`
--

INSERT INTO `sc_admin_role` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', NULL, NULL),
(2, 'Group only View', 'view.all', NULL, NULL),
(3, 'Manager', 'manager', NULL, NULL),
(4, 'CMS', 'cms', NULL, NULL),
(5, 'Accountant', 'accountant', NULL, NULL),
(6, 'Marketing', 'maketing', NULL, NULL),
(7, 'Admin CMS', 'admin_cms', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_permission`
--

CREATE TABLE `sc_admin_role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_permission`
--

INSERT INTO `sc_admin_role_permission` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL),
(3, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 10, NULL, NULL),
(3, 11, NULL, NULL),
(3, 12, NULL, NULL),
(3, 13, NULL, NULL),
(4, 1, NULL, NULL),
(4, 12, NULL, NULL),
(5, 1, NULL, NULL),
(5, 2, NULL, NULL),
(5, 7, NULL, NULL),
(5, 11, NULL, NULL),
(6, 1, NULL, NULL),
(6, 2, NULL, NULL),
(6, 8, NULL, NULL),
(6, 10, NULL, NULL),
(6, 11, NULL, NULL),
(6, 12, NULL, NULL),
(7, 1, NULL, NULL),
(7, 4, NULL, NULL),
(7, 8, NULL, NULL),
(7, 12, NULL, NULL),
(7, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_role_user`
--

CREATE TABLE `sc_admin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_role_user`
--

INSERT INTO `sc_admin_role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store`
--

CREATE TABLE `sc_admin_store` (
  `id` char(36) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `og_image` varchar(255) DEFAULT 'images/org.jpg',
  `phone` varchar(20) DEFAULT NULL,
  `long_phone` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `time_active` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `office` varchar(300) DEFAULT NULL,
  `warehouse` varchar(300) DEFAULT NULL,
  `template` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL COMMENT 'Use for multi-store, multi-vendor',
  `partner` varchar(10) NOT NULL DEFAULT '0' COMMENT 'Use for multi-vendor',
  `code` varchar(20) DEFAULT NULL,
  `language` varchar(10) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0:Lock, 1: unlock\\nUse for multi-store, multi-vendor',
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0:Maintain, 1: Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store`
--

INSERT INTO `sc_admin_store` (`id`, `logo`, `icon`, `og_image`, `phone`, `long_phone`, `email`, `time_active`, `address`, `office`, `warehouse`, `template`, `domain`, `partner`, `code`, `language`, `timezone`, `currency`, `status`, `active`, `created_at`, `updated_at`) VALUES
('1', 'data/logo/scart-mid.png', NULL, 'images/org.jpg', '0123456789', 'Support: 0987654321', 'admin@example.com', '', '123st - abc - xyz', NULL, NULL, 's-cart-light', '127.0.0.1:8000', '0', 's-cart', 'en', '', 'USD', 1, 1, NULL, NULL),
('S-5ROFr-vQm44', '/data/logo/61KCbJGpAFL._AC_SX569_.jpg', NULL, 'images/org.jpg', '333-789-4567', '+1-333-789-4567', 'hello@bookwormshaven.com', 'Tuesday to Sunday, 10:00 AM to 7:00 PM', '101 Library Street, Booksville, State, Country', '202 Bookworm Boulevard, Reading City, State, Country', NULL, 's-cart-light', '', '0', 'bookworm001', '', '', '', 1, 1, '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('S-GQ0sY-vnQbk', '/data/logo/scart-mid.png', NULL, 'images/org.jpg', '555-123-4567', '+1-555-123-4567', 'hello@fashionparadise.com', 'Monday to Saturday, 10:00 AM to 8:00 PM', '789 Fashion Avenue, Trendy Town, State, Country', '101 Style Street, Fashion City, State, Country', NULL, 's-cart-light', '', '0', 'fashion001', '', '', '', 1, 1, '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('S-xSdG9-0UgUZ', '/data/logo/icon.png', NULL, 'images/org.jpg', '123-456-7890', '+1-123-456-789', 'info@myawesomestore.com', 'Monday to Friday, 9:00 AM to 6:00 PM', '123 Main Street, Cityville, State, Country', '456 Business Avenue, Citytown, State, Country', NULL, 's-cart-light', '', '0', 'myawesome001', '', '', '', 1, 1, '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('S-YQmkQ-wMgUn', '/data/logo/favicon.png', NULL, 'images/org.jpg', '222-555-7890', '+1-222-555-7890', 'info@freshgrocers.com', 'Monday to Sunday, 8:00 AM to 10:00 PM', '456 Market Street, Townsville, State, Country', '789 Admin Avenue, City Center, State, Country', NULL, 's-cart-light', '', '0', 'fresh001', '', '', '', 1, 1, '2024-04-10 07:47:11', '2024-04-10 07:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_store_description`
--

CREATE TABLE `sc_admin_store_description` (
  `store_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `maintain_content` mediumtext DEFAULT NULL,
  `maintain_note` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_store_description`
--

INSERT INTO `sc_admin_store_description` (`store_id`, `lang`, `title`, `description`, `keyword`, `maintain_content`, `maintain_note`) VALUES
('1', 'en', 's-cart', 'Free website shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n            <h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n            </center>', 'Website is in maintenance mode!'),
('1', 'vi', 's-cart', 'Laravel shopping cart for business', '', '<center><img src=\"/images/maintenance.png\" />\n            <h3><span style=\"color:#e74c3c;\"><strong>Xin lỗi! Hiện tại website đang bảo trì!</strong></span></h3>\n            </center>', 'Website đang trong chế độ bảo trì!'),
('S-5ROFr-vQm44', 'en', 'Bookworm\'s Haven', 'Welcome to Bookworm\'s Haven, where book lovers find their paradise. Explore our wide selection of books, from classics to bestsellers.', 'books, reading, literature', '\n                        Sorry! We are currently doing site maintenance!\n                        ', NULL),
('S-GQ0sY-vnQbk', 'en', 'Fashion Paradise', 'Explore the latest trends in fashion at Fashion Paradise. We offer a wide selection of clothing and accessories for every style and occasion.', 'fashion, clothing, apparel', '\n                        Sorry! We are currently doing site maintenance!\n                        ', NULL),
('S-xSdG9-0UgUZ', 'en', 'My Awesome Store', 'Welcome to My Awesome Store, your one-stop shop for the latest electronics and gadgets. We offer a wide range of products at competitive prices.', 'electronics, gadgets, technology', '\n                        Sorry! We are currently doing site maintenance!\n                        ', NULL),
('S-YQmkQ-wMgUn', 'en', 'Fresh Grocers', 'Fresh Grocers is your neighborhood supermarket offering a wide range of fresh produce, groceries, and household essentials.', 'groceries, fresh produce, supermarket', '\n                        Sorry! We are currently doing site maintenance!\n                        ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_template`
--

CREATE TABLE `sc_admin_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_template`
--

INSERT INTO `sc_admin_template` (`id`, `key`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 's-cart-light', 'S-Cart Light', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user`
--

CREATE TABLE `sc_admin_user` (
  `id` char(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_admin_user`
--

INSERT INTO `sc_admin_user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `remember_token`, `theme`, `created_at`, `updated_at`) VALUES
('1', 'admin', '$2y$12$.u2cW7SdhWQ1u4dWkfB2J.dlPAb2Pf6H/2u5mSdzv0WRHZxwMONNO', 'Administrator', 'admin@example.com', '/admin/avatar/user.jpg', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_admin_user_permission`
--

CREATE TABLE `sc_admin_user_permission` (
  `user_id` char(36) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_api_connection`
--

CREATE TABLE `sc_api_connection` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(500) NOT NULL,
  `apiconnection` varchar(50) NOT NULL,
  `apikey` varchar(128) NOT NULL,
  `expire` date DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_api_connection`
--

INSERT INTO `sc_api_connection` (`id`, `description`, `apiconnection`, `apikey`, `expire`, `last_active`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Demo api connection', 'appmobile', '9bc5b568-522b-4a88-9761-a142c2ec3114', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_languages`
--

CREATE TABLE `sc_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `text` text DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `location` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_languages`
--

INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1, 'action.from', 'From', 'action', 'en', NULL, NULL),
(2, 'action.from', 'Từ', 'action', 'vi', NULL, NULL),
(3, 'action.to', 'To', 'action', 'en', NULL, NULL),
(4, 'action.to', 'Đến', 'action', 'vi', NULL, NULL),
(5, 'action.disable', 'Disable', 'action', 'en', NULL, NULL),
(6, 'action.disable', 'Vô hiệu hóa', 'action', 'vi', NULL, NULL),
(7, 'action.disable_success', 'Disabled success', 'action', 'en', NULL, NULL),
(8, 'action.disable_success', 'Vô hiệu hóa thành công', 'action', 'vi', NULL, NULL),
(9, 'action.enable', 'Enable', 'action', 'en', NULL, NULL),
(10, 'action.enable', 'Kích hoạt', 'action', 'vi', NULL, NULL),
(11, 'action.enable_success', 'Enabled success', 'action', 'en', NULL, NULL),
(12, 'action.enable_success', 'Kích hoạt thành công', 'action', 'vi', NULL, NULL),
(13, 'action.remove', 'Removed', 'action', 'en', NULL, NULL),
(14, 'action.remove', 'Gỡ bỏ', 'action', 'vi', NULL, NULL),
(15, 'action.remove_success', 'Removedd success', 'action', 'en', NULL, NULL),
(16, 'action.remove_success', 'Gỡ bỏ thành công', 'action', 'vi', NULL, NULL),
(17, 'action.edit', 'Edit', 'action', 'en', NULL, NULL),
(18, 'action.edit', 'Chỉnh sửa', 'action', 'vi', NULL, NULL),
(19, 'action.update', 'Update', 'action', 'en', NULL, NULL),
(20, 'action.update', 'Cập nhật', 'action', 'vi', NULL, NULL),
(21, 'action.add', 'Thêm mới', 'action', 'vi', NULL, NULL),
(22, 'action.add', 'Add new', 'action', 'en', NULL, NULL),
(23, 'action.create', 'Create new', 'action', 'en', NULL, NULL),
(24, 'action.create', 'Tạo mới', 'action', 'vi', NULL, NULL),
(25, 'action.create_success', 'Tạo mới thành công', 'action', 'vi', NULL, NULL),
(26, 'action.create_success', 'Create success', 'action', 'en', NULL, NULL),
(27, 'action.edit_success', 'Edit success', 'action', 'en', NULL, NULL),
(28, 'action.edit_success', 'Chỉnh sửa thành công', 'action', 'vi', NULL, NULL),
(29, 'action.update_success', 'Update success', 'action', 'en', NULL, NULL),
(30, 'action.update_success', 'Cập nhật thành công', 'action', 'vi', NULL, NULL),
(31, 'action.add_success', 'Add new success', 'action', 'en', NULL, NULL),
(32, 'action.add_success', 'Thêm mới thành công', 'action', 'vi', NULL, NULL),
(33, 'action.remote_success', 'Remove success', 'action', 'en', NULL, NULL),
(34, 'action.remote_success', 'Gỡ bỏ thành công', 'action', 'vi', NULL, NULL),
(35, 'action.delete_success', 'Delete success', 'action', 'en', NULL, NULL),
(36, 'action.delete_success', 'Xóa thành công', 'action', 'vi', NULL, NULL),
(37, 'action.remote', 'Gỡ bỏ', 'action', 'vi', NULL, NULL),
(38, 'action.remote', 'Remove', 'action', 'en', NULL, NULL),
(39, 'action.delete', 'Xóa', 'action', 'vi', NULL, NULL),
(40, 'action.delete', 'Delete', 'action', 'en', NULL, NULL),
(41, 'action.uninstall', 'Delete', 'action', 'en', NULL, NULL),
(42, 'action.uninstall', 'Gỡ cài đặt', 'action', 'vi', NULL, NULL),
(43, 'action.install', 'Cài đặt', 'action', 'vi', NULL, NULL),
(44, 'action.install', 'Install', 'action', 'en', NULL, NULL),
(45, 'action.click', 'Click', 'action', 'en', NULL, NULL),
(46, 'action.click', 'Bấm', 'action', 'vi', NULL, NULL),
(47, 'action.click_here', 'Click here', 'action', 'en', NULL, NULL),
(48, 'action.click_here', 'Bấm vào đây', 'action', 'vi', NULL, NULL),
(49, 'action.view', 'Xem', 'action', 'vi', NULL, NULL),
(50, 'action.view', 'View', 'action', 'en', NULL, NULL),
(51, 'action.view_more', 'View more', 'action', 'en', NULL, NULL),
(52, 'action.view_more', 'Xem thêm', 'action', 'vi', NULL, NULL),
(53, 'action.read_more', 'Đọc more', 'action', 'en', NULL, NULL),
(54, 'action.read_more', 'Xem thêm', 'action', 'vi', NULL, NULL),
(55, 'action.detail', 'Chi tiết', 'action', 'vi', NULL, NULL),
(56, 'action.detail', 'Detail', 'action', 'en', NULL, NULL),
(57, 'action.hidden', 'Hidden', 'action', 'en', NULL, NULL),
(58, 'action.hidden', 'Ẩn', 'action', 'vi', NULL, NULL),
(59, 'action.show', 'Hiển thị', 'action', 'vi', NULL, NULL),
(60, 'action.show', 'Show', 'action', 'en', NULL, NULL),
(61, 'action.submit', 'Submit', 'action', 'en', NULL, NULL),
(62, 'action.submit', 'Gửi', 'action', 'vi', NULL, NULL),
(63, 'action.save', 'Save', 'action', 'en', NULL, NULL),
(64, 'action.save', 'Lưu lại', 'action', 'vi', NULL, NULL),
(65, 'action.reset', 'Làm lại', 'action', 'vi', NULL, NULL),
(66, 'action.reset', 'Reset', 'action', 'en', NULL, NULL),
(67, 'action.logout', 'Đăng xuất', 'action', 'vi', NULL, NULL),
(68, 'action.logout', 'Logout', 'action', 'en', NULL, NULL),
(69, 'action.login', 'Đăng nhập', 'action', 'vi', NULL, NULL),
(70, 'action.login', 'Login', 'action', 'en', NULL, NULL),
(71, 'action.refresh', 'Làm mới', 'action', 'vi', NULL, NULL),
(72, 'action.refresh', 'Refresh', 'action', 'en', NULL, NULL),
(73, 'action.confirm', 'Xác nhận', 'action', 'vi', NULL, NULL),
(74, 'action.confirm', 'Confirmation', 'action', 'en', NULL, NULL),
(75, 'action.add_to_cart', 'Add to cart', 'action', 'en', NULL, NULL),
(76, 'action.add_to_cart', 'Chọn mua', 'action', 'vi', NULL, NULL),
(77, 'action.add_to_wishlist', 'Thêm yêu thích', 'action', 'vi', NULL, NULL),
(78, 'action.add_to_wishlist', 'Add to wishlist', 'action', 'en', NULL, NULL),
(79, 'action.add_to_compare', 'Add to compare', 'action', 'en', NULL, NULL),
(80, 'action.add_to_compare', 'Thêm so sánh', 'action', 'vi', NULL, NULL),
(81, 'action.buy_now', 'Mua ngay', 'action', 'vi', NULL, NULL),
(82, 'action.buy_now', 'Buy now', 'action', 'en', NULL, NULL),
(83, 'action.re_order', 'Re-order', 'action', 'en', NULL, NULL),
(84, 'action.re_order', 'Mua lại', 'action', 'vi', NULL, NULL),
(85, 'action.order', 'Đặt hàng', 'action', 'vi', NULL, NULL),
(86, 'action.order', 'Order', 'action', 'en', NULL, NULL),
(87, 'action.title', 'Action', 'action', 'en', NULL, NULL),
(88, 'action.title', 'Thao tác', 'action', 'vi', NULL, NULL),
(89, 'action.confirm_agree', 'Agree', 'action', 'en', NULL, NULL),
(90, 'action.confirm_agree', 'Đồng ý', 'action', 'vi', NULL, NULL),
(91, 'action.confirm_cancel', 'Hủy bỏ', 'action', 'vi', NULL, NULL),
(92, 'action.confirm_cancel', 'Cancel', 'action', 'en', NULL, NULL),
(93, 'action.confirm_yes', 'Yes', 'action', 'en', NULL, NULL),
(94, 'action.confirm_yes', 'Có', 'action', 'vi', NULL, NULL),
(95, 'action.confirm_no', 'Không', 'action', 'vi', NULL, NULL),
(96, 'action.confirm_no', 'No', 'action', 'en', NULL, NULL),
(97, 'action.delete_confirm', 'Are you sure to delete it?', 'action', 'en', NULL, NULL),
(98, 'action.delete_confirm', 'Bạn có chắc chắn sẽ xóa nó?', 'action', 'vi', NULL, NULL),
(99, 'action.delete_confirm_deleted', 'Deleted', 'action', 'en', NULL, NULL),
(100, 'action.delete_confirm_deleted', 'Đã xóa', 'action', 'vi', NULL, NULL),
(101, 'action.delete_confirm_deleted_msg', 'Item has deleted', 'action', 'en', NULL, NULL),
(102, 'action.delete_confirm_deleted_msg', 'Item này đã được xóa.', 'action', 'vi', NULL, NULL),
(103, 'action.remove_confirm', 'Are you sure to remove it?', 'action', 'en', NULL, NULL),
(104, 'action.remove_confirm', 'Bạn có chắc chắn gỡ nó?', 'action', 'vi', NULL, NULL),
(105, 'action.action_confirm', 'Bạn có chắc chắn thao tác này?', 'action', 'vi', NULL, NULL),
(106, 'action.action_confirm', 'Are you sure you do this?', 'action', 'en', NULL, NULL),
(107, 'action.action_confirm_warning', 'Hành động này sẽ không thể phục hồi', 'action', 'vi', NULL, NULL),
(108, 'action.action_confirm_warning', 'This action will not be restore', 'action', 'en', NULL, NULL),
(109, 'action.warning', 'Warning', 'action', 'en', NULL, NULL),
(110, 'action.warning', 'Cảnh báo', 'action', 'vi', NULL, NULL),
(111, 'action.notify', 'Thông báo', 'action', 'vi', NULL, NULL),
(112, 'action.notify', 'Notify', 'action', 'en', NULL, NULL),
(113, 'action.sort', 'Sort items', 'action', 'en', NULL, NULL),
(114, 'action.sort', 'Sắp xếp', 'action', 'vi', NULL, NULL),
(115, 'action.search', 'Tìm kiếm', 'action', 'vi', NULL, NULL),
(116, 'action.search', 'Search', 'action', 'en', NULL, NULL),
(117, 'action.copy', 'Sao chép', 'action', 'vi', NULL, NULL),
(118, 'action.copy', 'Copy', 'action', 'en', NULL, NULL),
(119, 'action.duplicate', 'Duplicate', 'action', 'en', NULL, NULL),
(120, 'action.duplicate', 'Nhân bản', 'action', 'vi', NULL, NULL),
(121, 'action.allow', 'Allow', 'action', 'en', NULL, NULL),
(122, 'action.allow', 'Cho phép', 'action', 'vi', NULL, NULL),
(123, 'action.deny', 'Deny', 'action', 'en', NULL, NULL),
(124, 'action.deny', 'Ngăn chặn', 'action', 'vi', NULL, NULL),
(125, 'front.home', 'Trang chủ', 'front', 'vi', NULL, NULL),
(126, 'front.home', 'Home', 'front', 'en', NULL, NULL),
(127, 'front.shop', 'Cửa hàng', 'front', 'vi', NULL, NULL),
(128, 'front.shop', 'Shop', 'front', 'en', NULL, NULL),
(129, 'front.store', 'Cửa hàng', 'front', 'vi', NULL, NULL),
(130, 'front.store', 'Store', 'front', 'en', NULL, NULL),
(131, 'front.store_list', 'Danh sách cửa hàng', 'front', 'vi', NULL, NULL),
(132, 'front.store_list', 'Store list', 'front', 'en', NULL, NULL),
(133, 'front.link_useful', 'Liên kết hữu ích', 'front', 'vi', NULL, NULL),
(134, 'front.link_useful', 'Link useful', 'front', 'en', NULL, NULL),
(135, 'front.brands', 'Nhãn hàng', 'front', 'vi', NULL, NULL),
(136, 'front.brands', 'Brands', 'front', 'en', NULL, NULL),
(137, 'front.categories', 'Danh mục', 'front', 'vi', NULL, NULL),
(138, 'front.categories', 'Categries', 'front', 'en', NULL, NULL),
(139, 'front.sub_categories', 'Danh mục nhỏ', 'front', 'vi', NULL, NULL),
(140, 'front.sub_categories', 'Subcategory', 'front', 'en', NULL, NULL),
(141, 'front.blog', 'Tin Tức', 'front', 'vi', NULL, NULL),
(142, 'front.blog', 'Blogs', 'front', 'en', NULL, NULL),
(143, 'front.news', 'Tin tức', 'front', 'vi', NULL, NULL),
(144, 'front.news', 'News', 'front', 'en', NULL, NULL),
(145, 'front.about', 'About us', 'front', 'en', NULL, NULL),
(146, 'front.about', 'Giới thiệu', 'front', 'vi', NULL, NULL),
(147, 'front.contact', 'Contact us', 'front', 'en', NULL, NULL),
(148, 'front.contact', 'Liên hệ', 'front', 'vi', NULL, NULL),
(149, 'front.cms_category', 'Danh mục CMS', 'front', 'vi', NULL, NULL),
(150, 'front.cms_category', 'CMS category', 'front', 'en', NULL, NULL),
(151, 'front.my_profile', 'Tài khoản', 'front', 'vi', NULL, NULL),
(152, 'front.my_profile', 'My profile', 'front', 'en', NULL, NULL),
(153, 'front.my_account', 'Tài khoản', 'front', 'vi', NULL, NULL),
(154, 'front.my_account', 'My account', 'front', 'en', NULL, NULL),
(155, 'front.account', 'Tài khoản', 'front', 'vi', NULL, NULL),
(156, 'front.account', 'customer', 'front', 'en', NULL, NULL),
(157, 'front.currency', 'Tiền tệ', 'front', 'vi', NULL, NULL),
(158, 'front.currency', 'Currency', 'front', 'en', NULL, NULL),
(159, 'front.language', 'Ngôn ngữ', 'front', 'vi', NULL, NULL),
(160, 'front.language', 'Language', 'front', 'en', NULL, NULL),
(161, 'front.cart', 'Giỏ hàng', 'front', 'vi', NULL, NULL),
(162, 'front.cart', 'Cart', 'front', 'en', NULL, NULL),
(163, 'front.compare', 'So sánh', 'front', 'vi', NULL, NULL),
(164, 'front.compare', 'Compare', 'front', 'en', NULL, NULL),
(165, 'front.compare_page', 'Sản phẩm so sánh', 'front', 'vi', NULL, NULL),
(166, 'front.compare_page', 'Product compare', 'front', 'en', NULL, NULL),
(167, 'front.wishlist', 'Yêu thích', 'front', 'vi', NULL, NULL),
(168, 'front.wishlist', 'Wishlist', 'front', 'en', NULL, NULL),
(169, 'front.wishlist_page', 'Sản phẩm yêu thich', 'front', 'vi', NULL, NULL),
(170, 'front.wishlist_page', 'Product Wishlist', 'front', 'en', NULL, NULL),
(171, 'front.login', 'Đăng nhập', 'front', 'vi', NULL, NULL),
(172, 'front.login', 'Login', 'front', 'en', NULL, NULL),
(173, 'front.logout', 'Đăng xuất', 'front', 'vi', NULL, NULL),
(174, 'front.logout', 'Logout', 'front', 'en', NULL, NULL),
(175, 'front.maintenace', 'Bảo trì', 'front', 'vi', NULL, NULL),
(176, 'front.maintenace', 'Maintenace', 'front', 'en', NULL, NULL),
(177, 'front.products_hot', 'Hot Products', 'front', 'en', NULL, NULL),
(178, 'front.products_hot', 'Sản phẩm nổi bật', 'front', 'vi', NULL, NULL),
(179, 'front.products_promotion', 'Promotion Products', 'front', 'en', NULL, NULL),
(180, 'front.products_promotion', 'Sản phẩm khuyến mãi', 'front', 'vi', NULL, NULL),
(181, 'front.products_special', 'Special products', 'front', 'en', NULL, NULL),
(182, 'front.products_special', 'Sản phẩm đặc biệt', 'front', 'vi', NULL, NULL),
(183, 'front.products_last_view', 'Last view products', 'front', 'en', NULL, NULL),
(184, 'front.products_last_view', 'Sản phẩm mới xem', 'front', 'vi', NULL, NULL),
(185, 'front.products_build', 'Product bundle', 'front', 'en', NULL, NULL),
(186, 'front.products_build', 'Sản phẩm bộ', 'front', 'vi', NULL, NULL),
(187, 'front.products_bundle', 'Product bundle', 'front', 'en', NULL, NULL),
(188, 'front.products_bundle', 'Sản phẩm bộ', 'front', 'vi', NULL, NULL),
(189, 'front.products_single', 'Product single', 'front', 'en', NULL, NULL),
(190, 'front.products_single', 'Sản phẩm đơn', 'front', 'vi', NULL, NULL),
(191, 'front.products_group', 'Product group', 'front', 'en', NULL, NULL),
(192, 'front.products_group', 'Sản phẩm nhóm', 'front', 'vi', NULL, NULL),
(193, 'front.products_new', 'New products', 'front', 'en', NULL, NULL),
(194, 'front.products_new', 'Sản phẩm mới', 'front', 'vi', NULL, NULL),
(195, 'front.products_recommend', 'Recommend products', 'front', 'en', NULL, NULL),
(196, 'front.products_recommend', 'Sản phẩm đề xuất', 'front', 'vi', NULL, NULL),
(197, 'front.product_detail', 'Product detail', 'front', 'en', NULL, NULL),
(198, 'front.product_detail', 'Chi tiết sản phẩm', 'front', 'vi', NULL, NULL),
(199, 'front.categories_store', 'Categories', 'front', 'en', NULL, NULL),
(200, 'front.categories_store', 'Danh mục', 'front', 'vi', NULL, NULL),
(201, 'front.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'front', 'en', NULL, NULL),
(202, 'front.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'front', 'vi', NULL, NULL),
(203, 'front.all_product', 'Tất cả sản phẩm', 'front', 'vi', NULL, NULL),
(204, 'front.all_product', 'All products', 'front', 'en', NULL, NULL),
(205, 'front.data_notfound', 'Không tìm thấy dữ liệu!', 'front', 'vi', NULL, NULL),
(206, 'front.data_notfound', 'Data not found!', 'front', 'en', NULL, NULL),
(207, 'front.data_not_found', 'Không tìm thấy dữ liệu!', 'front', 'vi', NULL, NULL),
(208, 'front.data_not_found', 'Data not found!', 'front', 'en', NULL, NULL),
(209, 'front.data_not_found_title', 'Không tìm thấy dữ liệu!', 'front', 'vi', NULL, NULL),
(210, 'front.data_not_found_title', 'Data not found!', 'front', 'en', NULL, NULL),
(211, 'front.page_notfound', 'Không tìm thấy trang!', 'front', 'vi', NULL, NULL),
(212, 'front.page_notfound', 'Page not found!', 'front', 'en', NULL, NULL),
(213, 'front.page_not_found', 'Không tìm thấy trang!', 'front', 'vi', NULL, NULL),
(214, 'front.page_not_found', 'Page not found!', 'front', 'en', NULL, NULL),
(215, 'front.page_not_found_title', 'Không tìm thấy trang!', 'front', 'vi', NULL, NULL),
(216, 'front.page_not_found_title', 'Page not found!', 'front', 'en', NULL, NULL),
(217, 'front.flash_stock', 'Available', 'front', 'en', NULL, NULL),
(218, 'front.flash_sold', 'Already Sold', 'front', 'en', NULL, NULL),
(219, 'front.flash_title', 'Flash sale', 'front', 'en', NULL, NULL),
(220, 'front.flash_stock', 'Còn lại', 'front', 'vi', NULL, NULL),
(221, 'front.flash_sold', 'Đã bán', 'front', 'vi', NULL, NULL),
(222, 'front.flash_title', 'Flash sale', 'front', 'vi', NULL, NULL),
(223, 'front.products_best_seller', 'Sản phẩm thịnh hành', 'front', 'vi', NULL, NULL),
(224, 'front.products_best_seller', 'Trending products', 'front', 'en', NULL, NULL),
(225, 'front.products_trending', 'Sản phẩm bán chạy nhất', 'front', 'vi', NULL, NULL),
(226, 'front.products_trending', 'Product best seller', 'front', 'en', NULL, NULL),
(227, 'front.search_result', 'Kết quả tìm kiếm', 'front', 'vi', NULL, NULL),
(228, 'front.search_result', 'Search result', 'front', 'en', NULL, NULL),
(229, 'front.view_not_exist', 'Không có view :view', 'front', 'vi', NULL, NULL),
(230, 'front.view_not_exist', 'View not found :view', 'front', 'en', NULL, NULL),
(231, 'front.no_item', 'Không tìm thấy item nào', 'front', 'vi', NULL, NULL),
(232, 'front.no_item', 'No items found', 'front', 'en', NULL, NULL),
(233, 'front.welcome_back', 'Chào mừng trở lại', 'front', 'vi', NULL, NULL),
(234, 'front.welcome_back', 'Welcome back!', 'front', 'en', NULL, NULL),
(235, 'search.placeholder', 'Nhập từ khóa', 'search', 'vi', NULL, NULL),
(236, 'search.placeholder', 'Input keyword', 'search', 'en', NULL, NULL),
(237, 'store.deny_help_1', 'Sorry, this domain does not exist on the system!', 'store', 'en', NULL, NULL),
(238, 'store.deny_help_1', 'Xin lỗi, tên miền này không có trên hệ thống!', 'store', 'vi', NULL, NULL),
(239, 'store.deny_help_2', 'Return to home page', 'store', 'en', NULL, NULL),
(240, 'store.deny_help_2', 'Trở về trang chủ', 'store', 'vi', NULL, NULL),
(241, 'store.address', 'Address', 'store', 'en', NULL, NULL),
(242, 'store.address', 'Địa chỉ', 'store', 'vi', NULL, NULL),
(243, 'store.phone', 'Phone', 'store', 'en', NULL, NULL),
(244, 'store.phone', 'Số điện thoại', 'store', 'vi', NULL, NULL),
(245, 'store.hotline', 'Hotline', 'store', 'en', NULL, NULL),
(246, 'store.hotline', 'Số điện thoại', 'store', 'vi', NULL, NULL),
(247, 'store.email', 'Email', 'store', 'vi', NULL, NULL),
(248, 'store.email', 'Email', 'store', 'en', NULL, NULL),
(249, 'store.title', 'Tên cửa hàng', 'store', 'vi', NULL, NULL),
(250, 'store.title', 'Store title', 'store', 'en', NULL, NULL),
(251, 'store.keyword', 'Từ khóa', 'store', 'vi', NULL, NULL),
(252, 'store.keyword', 'Keyword', 'store', 'en', NULL, NULL),
(253, 'store.description', 'Mô tả', 'store', 'vi', NULL, NULL),
(254, 'store.description', 'Description', 'store', 'en', NULL, NULL),
(255, 'store.language', 'Ngôn ngữ', 'store', 'vi', NULL, NULL),
(256, 'store.language', 'Language', 'store', 'en', NULL, NULL),
(257, 'store.currency', 'Tiền tệ', 'store', 'vi', NULL, NULL),
(258, 'store.currency', 'Currency', 'store', 'en', NULL, NULL),
(259, 'store.timezone', 'Múi giờ', 'store', 'vi', NULL, NULL),
(260, 'store.timezone', 'Timezone', 'store', 'en', NULL, NULL),
(261, 'store.warehouse', 'Nhà kho', 'store', 'vi', NULL, NULL),
(262, 'store.warehouse', 'Warehouse', 'store', 'en', NULL, NULL),
(263, 'store.office', 'Văn phòng', 'store', 'vi', NULL, NULL),
(264, 'store.office', 'Office', 'store', 'en', NULL, NULL),
(265, 'store.time_active', 'Thời gian làm việc', 'store', 'vi', NULL, NULL),
(266, 'store.time_active', 'Time active', 'store', 'en', NULL, NULL),
(267, 'store.long_phone', 'Số điện thoại', 'store', 'vi', NULL, NULL),
(268, 'store.long_phone', 'Full phone', 'store', 'en', NULL, NULL),
(269, 'store.logo', 'Logo', 'store', 'vi', NULL, NULL),
(270, 'store.logo', 'Logo', 'store', 'en', NULL, NULL),
(271, 'store.icon', 'Icon', 'store', 'vi', NULL, NULL),
(272, 'store.icon', 'Icon', 'store', 'en', NULL, NULL),
(273, 'store.og_image', 'Image org', 'store', 'vi', NULL, NULL),
(274, 'store.og_image', 'Image org', 'store', 'en', NULL, NULL),
(275, 'store.all_stores', 'All stores', 'store', 'vi', NULL, NULL),
(276, 'store.all_stores', 'Tất cả cửa hàng', 'store', 'en', NULL, NULL),
(277, 'store.maintenance', 'Bảo trì', 'store', 'vi', NULL, NULL),
(278, 'store.maintenance', 'Maintenance', 'store', 'en', NULL, NULL),
(279, 'store.admin.template', 'Giao diện', 'store.admin', 'vi', NULL, NULL),
(280, 'store.admin.template', 'Template', 'store.admin', 'en', NULL, NULL),
(281, 'store.admin.domain', 'Tên miền', 'store.admin', 'vi', NULL, NULL),
(282, 'store.admin.domain', 'Domain', 'store.admin', 'en', NULL, NULL),
(283, 'store.admin.domain_help', 'Ví dụ: https://abc.com', 'store.admin', 'vi', NULL, NULL),
(284, 'store.admin.domain_help', 'For example: https://abc.com', 'store.admin', 'en', NULL, NULL),
(285, 'store.admin.domain_invalid', 'Tên miền không hợp lệ', 'store.admin', 'vi', NULL, NULL),
(286, 'store.admin.domain_invalid', 'Domain invalid', 'store.admin', 'en', NULL, NULL),
(287, 'store.admin.code', 'Store code', 'store.admin', 'en', NULL, NULL),
(288, 'store.admin.code', 'Mã cửa hàng', 'store.admin', 'vi', NULL, NULL),
(289, 'store.admin.css', 'Edit CSS', 'store.admin', 'en', NULL, NULL),
(290, 'store.admin.css', 'Chỉnh sửa CSS', 'store.admin', 'vi', NULL, NULL),
(291, 'store.admin.title', 'Thông tin cửa hàng', 'store.admin', 'vi', NULL, NULL),
(292, 'store.admin.config_store', 'Cấu hình cửa hàng #:id', 'store.admin', 'vi', NULL, NULL),
(293, 'store.admin.config_store_detail', 'Cấu hình cửa hàng', 'store.admin', 'vi', NULL, NULL),
(294, 'store.admin.list', 'Danh sách cửa hàng', 'store.admin', 'vi', NULL, NULL),
(295, 'store.admin.field', 'Các trường', 'store.admin', 'vi', NULL, NULL),
(296, 'store.admin.value', 'Giá trị', 'store.admin', 'vi', NULL, NULL),
(297, 'store.admin.config_mode', 'Cấu hình mode', 'store.admin', 'vi', NULL, NULL),
(298, 'store.admin.config_display', 'Cấu hình hiển thị', 'store.admin', 'vi', NULL, NULL),
(299, 'store.admin.config_customize', 'Cấu hình tùy chỉnh', 'store.admin', 'vi', NULL, NULL),
(300, 'store.admin.status', 'Status', 'store.admin', 'vi', NULL, NULL),
(301, 'store.admin.action', 'Hành động', 'store.admin', 'vi', NULL, NULL),
(302, 'store.admin.add_new', 'Thêm mới', 'store.admin', 'vi', NULL, NULL),
(303, 'store.admin.sort', 'Sắp xếp', 'store.admin', 'vi', NULL, NULL),
(304, 'store.admin.search', 'Tìm kiếm', 'store.admin', 'vi', NULL, NULL),
(305, 'store.admin.add_new_title', 'Tạo cửa hàng', 'store.admin', 'vi', NULL, NULL),
(306, 'store.admin.add_new_des', 'Tạo mới một cửa hàng', 'store.admin', 'vi', NULL, NULL),
(307, 'store.admin.config_info', 'Thông tin', 'store.admin', 'vi', NULL, NULL),
(308, 'store.admin.config_product', 'Sản phẩm', 'store.admin', 'vi', NULL, NULL),
(309, 'store.admin.config_customer', 'Khách hàng', 'store.admin', 'vi', NULL, NULL),
(310, 'store.admin.config_email', 'Email', 'store.admin', 'vi', NULL, NULL),
(311, 'store.admin.config_url', 'URL', 'store.admin', 'vi', NULL, NULL),
(312, 'store.admin.config_api', 'API', 'store.admin', 'vi', NULL, NULL),
(313, 'store.admin.config_order', 'Đơn hàng', 'store.admin', 'vi', NULL, NULL),
(314, 'store.admin.config_other', 'Khác', 'store.admin', 'vi', NULL, NULL),
(315, 'store.admin.switch_store', 'Chuyển đổi cửa hàng', 'store.admin', 'vi', NULL, NULL),
(316, 'store.admin.config_admin_other', 'Cấu hình admin', 'store.admin', 'vi', NULL, NULL),
(317, 'store.admin.active_strict', 'Kích hoạt chế độ kiểm tra tên miền', 'store.admin', 'vi', NULL, NULL),
(318, 'store.admin.active_domain', 'Kích hoạt tên miền', 'store.admin', 'vi', NULL, NULL),
(319, 'store.admin.active_maintain', 'Kích hoạt chế độ bảo trì', 'store.admin', 'vi', NULL, NULL),
(320, 'store.admin.domain_exist', 'Tên miền đã có rồi', 'store.admin', 'vi', NULL, NULL),
(321, 'store.admin.code_exist', 'Mã code đã có rồi', 'store.admin', 'vi', NULL, NULL),
(322, 'store.admin.value_cannot_change', 'Giá trị này không thể thay đổi', 'store.admin', 'vi', NULL, NULL),
(323, 'store.admin.title', 'Store infomation', 'store.admin', 'en', NULL, NULL),
(324, 'store.admin.config_store', 'Config store #:id', 'store.admin', 'en', NULL, NULL),
(325, 'store.admin.config_store_detail', 'Config store', 'store.admin', 'en', NULL, NULL),
(326, 'store.admin.list', 'Store list', 'store.admin', 'en', NULL, NULL),
(327, 'store.admin.field', 'Field', 'store.admin', 'en', NULL, NULL),
(328, 'store.admin.value', 'Value', 'store.admin', 'en', NULL, NULL),
(329, 'store.admin.config_mode', 'Store mode', 'store.admin', 'en', NULL, NULL),
(330, 'store.admin.config_display', 'Store display', 'store.admin', 'en', NULL, NULL),
(331, 'store.admin.config_customize', 'Config customize', 'store.admin', 'en', NULL, NULL),
(332, 'store.admin.status', 'Status', 'store.admin', 'en', NULL, NULL),
(333, 'store.admin.action', 'Action', 'store.admin', 'en', NULL, NULL),
(334, 'store.admin.sort', 'Sort', 'store.admin', 'en', NULL, NULL),
(335, 'store.admin.search', 'Search', 'store.admin', 'en', NULL, NULL),
(336, 'store.admin.add_new', 'Add new', 'store.admin', 'en', NULL, NULL),
(337, 'store.admin.add_new_title', 'Add new store', 'store.admin', 'en', NULL, NULL),
(338, 'store.admin.add_new_des', 'Create a new store', 'store.admin', 'en', NULL, NULL),
(339, 'store.admin.config_info', 'Infomation', 'store.admin', 'en', NULL, NULL),
(340, 'store.admin.config_order', 'Order', 'store.admin', 'en', NULL, NULL),
(341, 'store.admin.config_product', 'Product', 'store.admin', 'en', NULL, NULL),
(342, 'store.admin.config_customer', 'Customer', 'store.admin', 'en', NULL, NULL),
(343, 'store.admin.config_email', 'Email', 'store.admin', 'en', NULL, NULL),
(344, 'store.admin.config_url', 'URL', 'store.admin', 'en', NULL, NULL),
(345, 'store.admin.config_api', 'API', 'store.admin', 'en', NULL, NULL),
(346, 'store.admin.config_other', 'Other', 'store.admin', 'en', NULL, NULL),
(347, 'store.admin.switch_store', 'Switch store', 'store.admin', 'en', NULL, NULL),
(348, 'store.admin.config_admin_other', 'Config admin', 'store.admin', 'en', NULL, NULL),
(349, 'store.admin.active_strict', 'Activate domain check mode', 'store.admin', 'en', NULL, NULL),
(350, 'store.admin.active_domain', 'Activate the domain name', 'store.admin', 'en', NULL, NULL),
(351, 'store.admin.active_maintain', 'Activate maintenance mode', 'store.admin', 'en', NULL, NULL),
(352, 'store.admin.domain_exist', 'Domain exist already', 'store.admin', 'en', NULL, NULL),
(353, 'store.admin.code_exist', 'Code exist already', 'store.admin', 'en', NULL, NULL),
(354, 'store.admin.value_cannot_change', 'This value cannot be changed', 'store.admin', 'en', NULL, NULL),
(355, 'store.display.product_top', 'Top product', 'store.admin', 'en', NULL, NULL),
(356, 'store.display.product_top', 'Top sản phẩm', 'store.admin', 'vi', NULL, NULL),
(357, 'store.display.list_product', 'List product', 'store.admin', 'en', NULL, NULL),
(358, 'store.display.list_product', 'Danh sách sản phẩm', 'store.admin', 'vi', NULL, NULL),
(359, 'store.display.relation_product', 'Relation product', 'store.admin', 'en', NULL, NULL),
(360, 'store.display.relation_product', 'Sản phẩm liên quan', 'store.admin', 'vi', NULL, NULL),
(361, 'store.display.viewed_product', 'Product viewed', 'store.admin', 'en', NULL, NULL),
(362, 'store.display.viewed_product', 'Sản phẩm đã xem', 'store.admin', 'vi', NULL, NULL),
(363, 'store.display.item_list', 'List item', 'store.admin', 'en', NULL, NULL),
(364, 'store.display.item_list', 'Danh sách item', 'store.admin', 'vi', NULL, NULL),
(365, 'store.display.item_top', 'Top item', 'store.admin', 'en', NULL, NULL),
(366, 'store.display.item_top', 'Top item', 'store.admin', 'vi', NULL, NULL),
(367, 'store.admin.config_layout', 'Cấu hình bố cục cửa hàng', 'admin.config_layout', 'vi', NULL, NULL),
(368, 'store.admin.config_layout', 'Config layout shop', 'admin.config_layout', 'en', NULL, NULL),
(369, 'cart.checkout', 'Checkout', 'cart', 'en', NULL, NULL),
(370, 'cart.checkout', 'Thanh toán', 'cart', 'vi', NULL, NULL),
(371, 'cart.back_to_cart', 'Back to cart', 'cart', 'en', NULL, NULL),
(372, 'cart.back_to_cart', 'Trở lại giỏ hàng', 'cart', 'vi', NULL, NULL),
(373, 'cart.confirm', 'Confirm', 'cart', 'en', NULL, NULL),
(374, 'cart.confirm', 'Xác nhận', 'cart', 'vi', NULL, NULL),
(375, 'cart.cart_title', 'Shopping cart', 'cart', 'en', NULL, NULL),
(376, 'cart.cart_title', 'Trang giỏ hàng', 'cart', 'vi', NULL, NULL),
(377, 'cart.page_title', 'Shopping cart', 'cart', 'en', NULL, NULL),
(378, 'cart.page_title', 'Trang giỏ hàng', 'cart', 'vi', NULL, NULL),
(379, 'cart.back_to_shop', 'Back to shop', 'cart', 'en', NULL, NULL),
(380, 'cart.back_to_shop', 'Trở về của hàng', 'cart', 'vi', NULL, NULL),
(381, 'cart.remove_all', 'Remove cart', 'cart', 'en', NULL, NULL),
(382, 'cart.remove_all', 'Xóa giỏ hàng', 'cart', 'vi', NULL, NULL),
(383, 'cart.minimum_value', 'Minimum :value items', 'cart', 'en', NULL, NULL),
(384, 'cart.minimum_value', 'Tối thiểu :value item', 'cart', 'vi', NULL, NULL),
(385, 'cart.note', 'Note', 'cart', 'en', NULL, NULL),
(386, 'cart.note', 'Ghi chú', 'cart', 'vi', NULL, NULL),
(387, 'cart.coupon', 'Coupon', 'cart', 'en', NULL, NULL),
(388, 'cart.coupon', 'Mã giảm giá', 'cart', 'vi', NULL, NULL),
(389, 'cart.remove_coupon', 'Remove coupon', 'cart', 'en', NULL, NULL),
(390, 'cart.remove_coupon', 'Xóa mã giảm giá', 'cart', 'vi', NULL, NULL),
(391, 'cart.coupon_empty', 'Coupon empty', 'cart', 'en', NULL, NULL),
(392, 'cart.coupon_empty', 'Không có mã giảm giá', 'cart', 'vi', NULL, NULL),
(393, 'cart.apply', 'Apply', 'cart', 'en', NULL, NULL),
(394, 'cart.apply', 'Áp dụng', 'cart', 'vi', NULL, NULL),
(395, 'cart.change_address', 'Change address', 'cart', 'en', NULL, NULL),
(396, 'cart.change_address', 'Thay đổi địa chỉ', 'cart', 'vi', NULL, NULL),
(397, 'cart.add_new_address', 'Add new address', 'cart', 'en', NULL, NULL),
(398, 'cart.add_new_address', 'Thêm địa chỉ mới', 'cart', 'vi', NULL, NULL),
(399, 'cart.page_wishlist_title', 'Page wishlist', 'cart', 'en', NULL, NULL),
(400, 'cart.page_wishlist_title', 'Trang sản phẩm yêu thich', 'cart', 'vi', NULL, NULL),
(401, 'cart.page_compare_title', 'Page compare', 'cart', 'en', NULL, NULL),
(402, 'cart.page_compare_title', 'Trang so sánh sản phẩm', 'cart', 'vi', NULL, NULL),
(403, 'cart.shipping_address', 'Shipping address', 'cart', 'en', NULL, NULL),
(404, 'cart.shipping_address', 'Địa chỉ giao hàng', 'cart', 'vi', NULL, NULL),
(405, 'cart.payment_address', 'Payment address', 'cart', 'en', NULL, NULL),
(406, 'cart.payment_address', 'Địa chỉ thanh toán', 'cart', 'vi', NULL, NULL),
(407, 'cart.payment_method', 'Phương thức thanh toán', 'cart', 'vi', NULL, NULL),
(408, 'cart.payment_method', 'Payment method', 'cart', 'en', NULL, NULL),
(409, 'cart.shipping_method', 'Phương thức vận chuyển', 'cart', 'vi', NULL, NULL),
(410, 'cart.shipping_method', 'Shipping method', 'cart', 'en', NULL, NULL),
(411, 'cart.country', 'Country', 'cart', 'en', NULL, NULL),
(412, 'cart.country', 'Quốc gia', 'cart', 'vi', NULL, NULL),
(413, 'cart.company', 'Công ty', 'cart', 'vi', NULL, NULL),
(414, 'cart.company', 'Company', 'cart', 'en', NULL, NULL),
(415, 'cart.address3', 'Địa chỉ nhà', 'cart', 'vi', NULL, NULL),
(416, 'cart.address3', 'Address 3', 'cart', 'en', NULL, NULL),
(417, 'cart.address2', 'Quận/Huyện', 'cart', 'vi', NULL, NULL),
(418, 'cart.address2', 'Address 2', 'cart', 'en', NULL, NULL),
(419, 'cart.address1', 'Tỉnh/Thành', 'cart', 'vi', NULL, NULL),
(420, 'cart.address1', 'Address 1', 'cart', 'en', NULL, NULL),
(421, 'cart.postcode', 'Mã bưu điện', 'cart', 'vi', NULL, NULL),
(422, 'cart.postcode', 'Post code', 'cart', 'en', NULL, NULL),
(423, 'cart.phone', 'Phone', 'cart', 'en', NULL, NULL),
(424, 'cart.phone', 'Điện thoại', 'cart', 'vi', NULL, NULL),
(425, 'cart.last_name_kana', 'Họ kana', 'cart', 'vi', NULL, NULL),
(426, 'cart.last_name_kana', 'Last name kana', 'cart', 'en', NULL, NULL),
(427, 'cart.first_name_kana', 'First name kana', 'cart', 'en', NULL, NULL),
(428, 'cart.first_name_kana', 'Tên Kana', 'cart', 'vi', NULL, NULL),
(429, 'cart.full_name', 'Full name', 'cart', 'en', NULL, NULL),
(430, 'cart.full_name', 'Tên đầy đủ', 'cart', 'vi', NULL, NULL),
(431, 'cart.name', 'Name', 'cart', 'en', NULL, NULL),
(432, 'cart.name', 'Tên', 'cart', 'vi', NULL, NULL),
(433, 'cart.midle_name', 'Tên đệm', 'cart', 'vi', NULL, NULL),
(434, 'cart.midle_name', 'Midle name', 'cart', 'en', NULL, NULL),
(435, 'cart.last_name', 'Họ', 'cart', 'vi', NULL, NULL),
(436, 'cart.last_name', 'Last name', 'cart', 'en', NULL, NULL),
(437, 'cart.first_name', 'Tên', 'cart', 'vi', NULL, NULL),
(438, 'cart.first_name', 'First name', 'cart', 'en', NULL, NULL),
(439, 'cart.email', 'Email', 'cart', 'vi', NULL, NULL),
(440, 'cart.email', 'Email', 'cart', 'en', NULL, NULL),
(441, 'cart.sex', 'Giới tính', 'cart', 'vi', NULL, NULL),
(442, 'cart.sex', 'Sex', 'cart', 'en', NULL, NULL),
(443, 'cart.birthday', 'Ngày sinh', 'cart', 'vi', NULL, NULL),
(444, 'cart.birthday', 'Birthday', 'cart', 'en', NULL, NULL),
(445, 'cart.validation.shippingMethod_required', 'Shipping method required', 'cart', 'en', NULL, NULL),
(446, 'cart.validation.shippingMethod_required', 'Giao thức giao hàng là bắt buộc', 'cart', 'vi', NULL, NULL),
(447, 'cart.validation.paymentMethod_required', 'Payment method required', 'cart', 'en', NULL, NULL),
(448, 'cart.validation.paymentMethod_required', 'Phương thức thanh toán là bắt buộc', 'cart', 'vi', NULL, NULL),
(449, 'cart.add_to_cart_success', 'Thêm vào :instance thành công', 'cart', 'vi', NULL, NULL),
(450, 'cart.add_to_cart_success', 'Add to :instance success', 'cart', 'en', NULL, NULL),
(451, 'cart.item_exist_in_cart', 'This item is already in stock in the :instance', 'cart', 'en', NULL, NULL),
(452, 'cart.item_exist_in_cart', 'Item này đã có trong :instance rồi', 'cart', 'vi', NULL, NULL),
(453, 'cart.item_over_qty', 'The number of :sku must not exceed :qty', 'cart', 'en', NULL, NULL),
(454, 'cart.item_over_qty', 'Số lượng của :sku không được vượt quá :qty', 'cart', 'vi', NULL, NULL),
(455, 'cart.have_error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại.', 'cart', 'vi', NULL, NULL),
(456, 'cart.have_error', 'Have an error. Please check again.', 'cart', 'en', NULL, NULL),
(457, 'cart.cart_store_id_notfound', 'Không tìm thấy ID cửa hàng.', 'cart', 'vi', NULL, NULL),
(458, 'cart.cart_store_id_notfound', 'Store ID not found', 'cart', 'en', NULL, NULL),
(459, 'cart.cart_empty', 'Giỏ hàng rỗng.', 'cart', 'vi', NULL, NULL),
(460, 'cart.cart_empty', 'The shopping cart is empty', 'cart', 'en', NULL, NULL),
(461, 'cart.cart_store_empty', 'Giỏ hàng trong shop rỗng.', 'cart', 'vi', NULL, NULL),
(462, 'cart.cart_store_empty', 'The shopping cart in the shop is empty', 'cart', 'en', NULL, NULL),
(463, 'checkout.title', 'Checkout', 'checkout', 'en', NULL, NULL),
(464, 'checkout.title', 'Xác nhận thanh toán', 'checkout', 'vi', NULL, NULL),
(465, 'checkout.order_success_msg', 'Thank you for your purchase!', 'checkout', 'en', NULL, NULL),
(466, 'checkout.order_success_msg', 'Cảm ơn vì đơn hàng của bạn!', 'checkout', 'vi', NULL, NULL),
(467, 'checkout.order_success_order_info', 'Your order #:order_id', 'checkout', 'en', NULL, NULL),
(468, 'checkout.order_success_order_info', 'Đơn hàng của bạn là #:order_id', 'checkout', 'vi', NULL, NULL),
(469, 'checkout.page_title', 'Checkout page', 'checkout', 'en', NULL, NULL),
(470, 'checkout.page_title', 'Xác nhận thanh toán', 'checkout', 'vi', NULL, NULL),
(471, 'checkout.success_title', 'Order success', 'checkout', 'en', NULL, NULL),
(472, 'checkout.success_title', 'Đặt hàng thành công', 'checkout', 'vi', NULL, NULL),
(473, 'product.name', 'Name', 'product', 'en', NULL, NULL),
(474, 'product.name', 'Tên', 'product', 'vi', NULL, NULL),
(475, 'product.keyword', 'Keyword ', 'product', 'en', NULL, NULL),
(476, 'product.keyword', 'Từ khóa', 'product', 'vi', NULL, NULL),
(477, 'product.content', 'Main content', 'product', 'en', NULL, NULL),
(478, 'product.content', 'Nội dung chính', 'product', 'vi', NULL, NULL),
(479, 'product.sku', 'SKU code', 'product', 'en', NULL, NULL),
(480, 'product.sku', 'Mã SKU', 'product', 'vi', NULL, NULL),
(481, 'product.stock', 'Stock', 'product', 'en', NULL, NULL),
(482, 'product.stock', 'Số lượng trong kho', 'product', 'vi', NULL, NULL),
(483, 'product.cost', 'Price cost', 'product', 'en', NULL, NULL),
(484, 'product.cost', 'Giá cost', 'product', 'vi', NULL, NULL),
(485, 'product.price', 'Price', 'product', 'en', NULL, NULL),
(486, 'product.price', 'Giá', 'product', 'vi', NULL, NULL),
(487, 'product.image', 'Image', 'product', 'en', NULL, NULL),
(488, 'product.image', 'Hình ảnh', 'product', 'vi', NULL, NULL),
(489, 'product.view', 'Viewed', 'product', 'en', NULL, NULL),
(490, 'product.view', 'Lượt xem', 'product', 'vi', NULL, NULL),
(491, 'product.kind', 'Kind', 'product', 'en', NULL, NULL),
(492, 'product.kind', 'Kiểu', 'product', 'vi', NULL, NULL),
(493, 'product.sold', 'Sold', 'product', 'en', NULL, NULL),
(494, 'product.sold', 'Đã bán', 'product', 'vi', NULL, NULL),
(495, 'product.minimum', 'Minimum', 'product', 'en', NULL, NULL),
(496, 'product.minimum', 'Tối thiểu', 'product', 'vi', NULL, NULL),
(497, 'product.minimum_help', 'Minimum quantity to order', 'product', 'en', NULL, NULL),
(498, 'product.minimum_help', 'Số lượng tối thiểu đề đặt hàng', 'product', 'vi', NULL, NULL),
(499, 'product.width', 'Width', 'product', 'en', NULL, NULL),
(500, 'product.width', 'Chiều rộng', 'product', 'vi', NULL, NULL),
(501, 'product.status', 'Status', 'product', 'en', NULL, NULL),
(502, 'product.status', 'Trạng thái', 'product', 'vi', NULL, NULL),
(503, 'product.approve', 'Approve', 'product', 'en', NULL, NULL),
(504, 'product.approve', 'Duyệt', 'product', 'vi', NULL, NULL),
(505, 'product.quantity', 'Quantity', 'product', 'en', NULL, NULL),
(506, 'product.quantity', 'Số lượng', 'product', 'vi', NULL, NULL),
(507, 'product.weight', 'Weight', 'product', 'en', NULL, NULL),
(508, 'product.weight', 'Khối lượng', 'product', 'vi', NULL, NULL),
(509, 'product.length', 'Length', 'product', 'en', NULL, NULL),
(510, 'product.length', 'Kích thước', 'product', 'vi', NULL, NULL),
(511, 'product.height', 'Height', 'product', 'en', NULL, NULL),
(512, 'product.height', 'Chiều cao', 'product', 'vi', NULL, NULL),
(513, 'product.property', 'Property', 'product', 'en', NULL, NULL),
(514, 'product.property', 'Đặc tính', 'product', 'vi', NULL, NULL),
(515, 'product.download_path', 'Url or path to file', 'product', 'en', NULL, NULL),
(516, 'product.download_path', 'Liên kết hoặc đường dẫn tới tập tin', 'product', 'vi', NULL, NULL),
(517, 'product.attribute', 'Attribute', 'product', 'en', NULL, NULL),
(518, 'product.attribute', 'Thuộc tính', 'product', 'vi', NULL, NULL),
(519, 'product.tax', 'Tax', 'product', 'en', NULL, NULL),
(520, 'product.tax', 'Thuế', 'product', 'vi', NULL, NULL),
(521, 'product.price_group', 'Click view price', 'product', 'en', NULL, NULL),
(522, 'product.price_group', 'Bấm xem giá', 'product', 'vi', NULL, NULL),
(523, 'product.price_group_chose', 'Click choose product', 'product', 'en', NULL, NULL),
(524, 'product.price_group_chose', 'Bấm chọn sản phẩm', 'product', 'vi', NULL, NULL),
(525, 'product.subtotal', 'Subtotal', 'product', 'en', NULL, NULL),
(526, 'product.subtotal', 'Giá sản phẩm', 'product', 'vi', NULL, NULL),
(527, 'product.sub_total', 'Subtotal', 'product', 'en', NULL, NULL),
(528, 'product.sub_total', 'Giá sản phẩm', 'product', 'vi', NULL, NULL),
(529, 'product.total_price', 'Total price', 'product', 'en', NULL, NULL),
(530, 'product.total_price', 'Tổng tiền', 'product', 'vi', NULL, NULL),
(531, 'product.stock_status', 'Stock status', 'product', 'en', NULL, NULL),
(532, 'product.stock_status', 'Trạng thái tồn', 'product', 'vi', NULL, NULL),
(533, 'product.out_stock', 'Out of stock', 'product', 'en', NULL, NULL),
(534, 'product.out_stock', 'Hết hàng', 'product', 'vi', NULL, NULL),
(535, 'product.in_stock', 'In stock', 'product', 'en', NULL, NULL),
(536, 'product.in_stock', 'Còn hàng', 'product', 'vi', NULL, NULL),
(537, 'product.date_available', 'Date available', 'product', 'en', NULL, NULL),
(538, 'product.date_available', 'Ngày bán', 'product', 'vi', NULL, NULL),
(539, 'product.category', 'Category', 'product', 'en', NULL, NULL),
(540, 'product.category', 'Danh mục', 'product', 'vi', NULL, NULL),
(541, 'product.category_store', 'Category store', 'product', 'en', NULL, NULL),
(542, 'product.category_store', 'Danh mục riêng', 'product', 'vi', NULL, NULL),
(543, 'product.brand', 'Brand', 'product', 'en', NULL, NULL),
(544, 'product.brand', 'Nhãn hàng', 'product', 'vi', NULL, NULL),
(545, 'product.supplier', 'Supplier', 'product', 'en', NULL, NULL),
(546, 'product.supplier', 'Nhà cung cấp', 'product', 'vi', NULL, NULL),
(547, 'product.kind_group', 'Group', 'product', 'en', NULL, NULL),
(548, 'product.kind_group', 'Sản phẩm nhóm', 'product', 'vi', NULL, NULL),
(549, 'product.kind_bundle', 'Bundle', 'product', 'en', NULL, NULL),
(550, 'product.kind_bundle', 'Sản phẩm bộ', 'product', 'vi', NULL, NULL),
(551, 'product.kind_single', 'Single', 'product', 'en', NULL, NULL),
(552, 'product.kind_single', 'Sản phẩm đơn', 'product', 'vi', NULL, NULL),
(553, 'product.description', 'Description', 'product', 'en', NULL, NULL),
(554, 'product.description', 'Mô tả', 'product', 'vi', NULL, NULL),
(555, 'product.product_detail', 'Product detail', 'product', 'en', NULL, NULL),
(556, 'product.product_detail', 'Chi tiết sản phẩm', 'product', 'vi', NULL, NULL),
(557, 'product.dont_allow_sale', 'Product :sku dont allow for sale', 'product', 'en', NULL, NULL),
(558, 'product.dont_allow_sale', 'Sản phẩm :sku không bán', 'product', 'vi', NULL, NULL),
(559, 'product.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en', NULL, NULL),
(560, 'product.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi', NULL, NULL),
(561, 'product.sku_unique', 'SKU already exists', 'product', 'en', NULL, NULL),
(562, 'product.sku_unique', 'SKU đã có rồi', 'product', 'vi', NULL, NULL),
(563, 'product.product_specifications', 'Additional infomation', 'product', 'en', NULL, NULL),
(564, 'product.product_specifications', 'Thông tin bổ sung', 'product', 'vi', NULL, NULL),
(565, 'product.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'en', NULL, NULL),
(566, 'product.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'product', 'vi', NULL, NULL),
(567, 'product.sku_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'en', NULL, NULL),
(568, 'product.sku_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'product', 'vi', NULL, NULL),
(569, 'product.price_promotion', 'Price promotion', 'product', 'en', NULL, NULL),
(570, 'product.price_promotion', 'Giá khuyến mãi', 'product', 'vi', NULL, NULL),
(571, 'product.price_promotion_start', 'Start date', 'product', 'en', NULL, NULL),
(572, 'product.price_promotion_start', 'Ngày bắt đầu', 'product', 'vi', NULL, NULL),
(573, 'product.price_promotion_end', 'End date', 'product', 'en', NULL, NULL),
(574, 'product.price_promotion_end', 'Ngày kết thúc', 'product', 'vi', NULL, NULL),
(575, 'product.edit_product', 'Edit product', 'product', 'en', NULL, NULL),
(576, 'product.edit_product', 'Chỉnh sửa sản phẩm', 'product', 'vi', NULL, NULL),
(577, 'product.admin.title', 'Quản lý sản phẩm', 'product.admin', 'vi', NULL, NULL),
(578, 'product.admin.create_success', 'Tạo item thành công!', 'product.admin', 'vi', NULL, NULL),
(579, 'product.admin.edit_success', 'chỉnh sửa item thành công!', 'product.admin', 'vi', NULL, NULL),
(580, 'product.admin.list', 'Danh sách sản phẩm', 'product.admin', 'vi', NULL, NULL),
(581, 'product.admin.action', 'Hành động', 'product.admin', 'vi', NULL, NULL),
(582, 'product.admin.delete', 'Xóa', 'product.admin', 'vi', NULL, NULL),
(583, 'product.admin.edit', 'Sửa', 'product.admin', 'vi', NULL, NULL),
(584, 'product.admin.add_new', 'Thêm mới', 'product.admin', 'vi', NULL, NULL),
(585, 'product.admin.add_new_title', 'Tạo sản phẩm', 'product.admin', 'vi', NULL, NULL),
(586, 'product.admin.add_new_title_build', 'Tạo sản phẩm bộ', 'product.admin', 'vi', NULL, NULL),
(587, 'product.admin.add_new_title_group', 'Tạo sản phẩm nhóm', 'product.admin', 'vi', NULL, NULL),
(588, 'product.admin.add_new_des', 'Tạo mới một sản phẩm', 'product.admin', 'vi', NULL, NULL),
(589, 'product.admin.export', 'Xuất', 'product.admin', 'vi', NULL, NULL),
(590, 'product.admin.refresh', 'Làm mới', 'product.admin', 'vi', NULL, NULL),
(591, 'product.admin.select_kind', 'Chọn loại sản phẩm', 'product.admin', 'vi', NULL, NULL),
(592, 'product.admin.select_supplier', 'Chọn nhà cung cấp', 'product.admin', 'vi', NULL, NULL),
(593, 'product.admin.sort', 'Thứ tự', 'product.admin', 'vi', NULL, NULL),
(594, 'product.admin.select_category', 'Chọn danh mục', 'product.admin', 'vi', NULL, NULL),
(595, 'product.admin.select_store', 'Chọn cửa hàng', 'product.admin', 'vi', NULL, NULL),
(596, 'product.admin.select_product_in_group', 'Chọn sản phẩm trong nhóm', 'product.admin', 'vi', NULL, NULL),
(597, 'product.admin.select_product_in_build', 'Chọn sản phẩm trong bộ', 'product.admin', 'vi', NULL, NULL),
(598, 'product.admin.add_product', 'Thêm sản phẩm', 'product.admin', 'vi', NULL, NULL),
(599, 'product.admin.add_attribute', 'Thêm thuộc tính', 'product.admin', 'vi', NULL, NULL),
(600, 'product.admin.add_attribute_place', 'Nhập một thuộc tính', 'product.admin', 'vi', NULL, NULL),
(601, 'product.admin.add_sub_image', 'Thêm ảnh', 'product.admin', 'vi', NULL, NULL),
(602, 'product.admin.add_product_promotion', 'Thêm giá khuyến mãi', 'product.admin', 'vi', NULL, NULL),
(603, 'product.admin.choose_image', 'Chọn hình', 'product.admin', 'vi', NULL, NULL),
(604, 'product.admin.add_price_place', 'Thêm tiền', 'product.admin', 'vi', NULL, NULL),
(605, 'product.admin.setting_info', 'Thiết lập sản phẩm', 'product.admin', 'vi', NULL, NULL),
(606, 'product.admin.config_info', 'Cấu hình thông tin', 'product.admin', 'vi', NULL, NULL),
(607, 'product.admin.title', 'Product manager', 'product.admin', 'en', NULL, NULL),
(608, 'product.admin.create_success', 'Create new item success!', 'product.admin', 'en', NULL, NULL),
(609, 'product.admin.edit_success', 'Edit item success!', 'product.admin', 'en', NULL, NULL),
(610, 'product.admin.list', 'Product list', 'product.admin', 'en', NULL, NULL),
(611, 'product.admin.action', 'Action', 'product.admin', 'en', NULL, NULL),
(612, 'product.admin.delete', 'Delete', 'product.admin', 'en', NULL, NULL),
(613, 'product.admin.edit', 'Edit', 'product.admin', 'en', NULL, NULL),
(614, 'product.admin.add_new', 'Add new', 'product.admin', 'en', NULL, NULL),
(615, 'product.admin.add_new_title', 'Add new product', 'product.admin', 'en', NULL, NULL),
(616, 'product.admin.add_new_title_build', 'Add new product build', 'product.admin', 'en', NULL, NULL),
(617, 'product.admin.add_new_title_group', 'Add new product group', 'product.admin', 'en', NULL, NULL),
(618, 'product.admin.add_new_des', 'Create a new product', 'product.admin', 'en', NULL, NULL),
(619, 'product.admin.export', 'Export', 'product.admin', 'en', NULL, NULL),
(620, 'product.admin.refresh', 'Refresh', 'product.admin', 'en', NULL, NULL),
(621, 'product.admin.select_kind', 'Select product kind', 'product.admin', 'en', NULL, NULL),
(622, 'product.admin.select_supplier', 'Select supplier', 'product.admin', 'en', NULL, NULL),
(623, 'product.admin.result_item', 'Showing <b>:item_from</b> to <b>:item_to</b> of <b>:total</b> items</b>', 'product.admin', 'en', NULL, NULL),
(624, 'product.admin.sort', 'Sort', 'product.admin', 'en', NULL, NULL),
(625, 'product.admin.select_category', 'Select category', 'product.admin', 'en', NULL, NULL),
(626, 'product.admin.select_store', 'Select store', 'product.admin', 'en', NULL, NULL),
(627, 'product.admin.select_product_in_group', 'Select products in group', 'product.admin', 'en', NULL, NULL),
(628, 'product.admin.select_product_in_build', 'Select products build', 'product.admin', 'en', NULL, NULL),
(629, 'product.admin.select_weight', 'Select weight class', 'product.admin', 'en', NULL, NULL),
(630, 'product.admin.select_weight', 'Chọn đơn vị khối lượng', 'product.admin', 'vi', NULL, NULL),
(631, 'product.admin.select_length', 'Select length class', 'product.admin', 'en', NULL, NULL),
(632, 'product.admin.select_length', 'Chọn đơn vị kích thước', 'product.admin', 'vi', NULL, NULL),
(633, 'product.admin.add_product', 'Add product', 'product.admin', 'en', NULL, NULL),
(634, 'product.admin.add_attribute', 'Add attribute', 'product.admin', 'en', NULL, NULL),
(635, 'product.admin.add_attribute_place', 'Add an attribute value', 'product.admin', 'en', NULL, NULL),
(636, 'product.admin.add_sub_image', 'Add more images', 'product.admin', 'en', NULL, NULL),
(637, 'product.admin.add_product_promotion', 'Add promotion price', 'product.admin', 'en', NULL, NULL),
(638, 'product.admin.choose_image', 'Choose', 'product.admin', 'en', NULL, NULL),
(639, 'product.admin.add_price_place', 'Add price', 'product.admin', 'en', NULL, NULL),
(640, 'product.admin.setting_info', 'Setting product', 'product.admin', 'en', NULL, NULL),
(641, 'product.admin.config_info', 'Config info product', 'product.admin', 'en', NULL, NULL),
(642, 'product.admin.search_place', 'Search Name, SKU', 'product.admin', 'en', NULL, NULL),
(643, 'product.admin.search_place', 'Tìm tên và SKU', 'product.admin', 'vi', NULL, NULL),
(644, 'product.admin.length_class', 'Length class', 'product.admin', 'en', NULL, NULL),
(645, 'product.admin.length_class', 'Đơn vị kích thước', 'product.admin', 'vi', NULL, NULL),
(646, 'product.admin.weight_class', 'Weight class', 'product.admin', 'en', NULL, NULL),
(647, 'product.admin.weight_class', 'Đơn vị khối lượng', 'product.admin', 'vi', NULL, NULL),
(648, 'product.admin.cant_remove_child', 'Please delete product parent before remove this product', 'product.admin', 'en', NULL, NULL),
(649, 'product.admin.cant_remove_child', 'Xóa các sản phẩm cha trước khi xóa sản phẩm này', 'product.admin', 'vi', NULL, NULL),
(650, 'product.admin.clone', 'Clone product', 'product.admin', 'en', NULL, NULL),
(651, 'product.admin.clone', 'Nhân bản sản phẩm', 'product.admin', 'vi', NULL, NULL),
(652, 'product.admin.clone_confirm', 'Do you want to clone this product?', 'product.admin', 'en', NULL, NULL),
(653, 'product.admin.clone_confirm', 'Bạn có muốn nhân bản sản phẩm này?', 'product.admin', 'vi', NULL, NULL),
(654, 'product.admin.clone_success', 'Clone product success', 'product.admin', 'en', NULL, NULL),
(655, 'product.admin.clone_success', 'Nhân bản sản phẩm thành công', 'product.admin', 'vi', NULL, NULL),
(656, 'product.config_manager.title', 'Config product', 'product.admin', 'en', NULL, NULL),
(657, 'product.config_manager.field', 'Field config', 'product.admin', 'en', NULL, NULL),
(658, 'product.config_manager.value', 'Value', 'product.admin', 'en', NULL, NULL),
(659, 'product.config_manager.brand', 'Use BRAND', 'product.admin', 'en', NULL, NULL),
(660, 'product.config_manager.supplier', 'Use SUPPLIER', 'product.admin', 'en', NULL, NULL),
(661, 'product.config_manager.price', 'Use PRICE', 'product.admin', 'en', NULL, NULL),
(662, 'product.config_manager.stock', 'Use STOCK', 'product.admin', 'en', NULL, NULL),
(663, 'product.config_manager.cost', 'Use COST PRICE', 'product.admin', 'en', NULL, NULL),
(664, 'product.config_manager.type', 'Use TYPE (new, hot,...)', 'product.admin', 'en', NULL, NULL),
(665, 'product.config_manager.kind', 'Use STRUCTURE TYPE (single, group, bundle)', 'product.admin', 'en', NULL, NULL),
(666, 'product.config_manager.property', 'Use Product Property: download, property, physical', 'product.admin', 'en', NULL, NULL),
(667, 'product.config_manager.attribute', 'Use ATTRIBUTE (color, size,...)', 'product.admin', 'en', NULL, NULL),
(668, 'product.config_manager.promotion', 'Use PROMOTION PRICE', 'product.admin', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(669, 'product.config_manager.available', 'Use Time to start selling', 'product.admin', 'en', NULL, NULL),
(670, 'product.config_manager.tax', 'Tax configuration', 'product.admin', 'en', NULL, NULL),
(671, 'product.config_manager.product_display_price_include_tax', 'Display price include tax', 'product.admin', 'en', NULL, NULL),
(672, 'product.config_manager.weight', 'Use Weight', 'product.admin', 'en', NULL, NULL),
(673, 'product.config_manager.length', 'Use Length', 'product.admin', 'en', NULL, NULL),
(674, 'product.config_manager.required', 'Required', 'product.admin', 'en', NULL, NULL),
(675, 'product.config_manager.title', ' Cấu hình sản phẩm', 'product.admin', 'vi', NULL, NULL),
(676, 'product.config_manager.field', 'Trường cấu hình', 'product.admin', 'vi', NULL, NULL),
(677, 'product.config_manager.value', 'Giá trị', 'product.admin', 'vi', NULL, NULL),
(678, 'product.config_manager.brand', 'Sử dụng NHÃN HIỆU', 'product.admin', 'vi', NULL, NULL),
(679, 'product.config_manager.supplier', 'Sử dụng NHÀ CUNG CẤP', 'product.admin', 'vi', NULL, NULL),
(680, 'product.config_manager.price', 'Sử dụng GIÁ', 'product.admin', 'vi', NULL, NULL),
(681, 'product.config_manager.cost', 'Sử dụng GIÁ GỐC', 'product.admin', 'vi', NULL, NULL),
(682, 'product.config_manager.stock', 'Sử dụng SỐ LƯỢNG', 'product.admin', 'vi', NULL, NULL),
(683, 'product.config_manager.type', 'Sử dụng PHÂN LOẠI TÌNH TRẠNG(mới, hot,...)', 'product.admin', 'vi', NULL, NULL),
(684, 'product.config_manager.kind', 'Sử dụng PHÂN LOẠI THEO CẤU TRÚC (sản phẩm đơn, nhóm, bộ)', 'product.admin', 'vi', NULL, NULL),
(685, 'product.config_manager.property', 'Sử dụng PHÂN LOẠI ĐẶC TÍNH: download, vật lý, dịch vụ,..', 'product.admin', 'vi', NULL, NULL),
(686, 'product.config_manager.attribute', 'Sử dụng THUỘC TÍNH (màu sắc, kích thước,...)', 'product.admin', 'vi', NULL, NULL),
(687, 'product.config_manager.promotion', 'Sử dụng GIÁ KHUYẾN MÃI', 'product.admin', 'vi', NULL, NULL),
(688, 'product.config_manager.available', 'Sử dụng THỜI GIAN MỞ BÁN', 'product.admin', 'vi', NULL, NULL),
(689, 'product.config_manager.tax', 'Cấu hình thuế', 'product.admin', 'vi', NULL, NULL),
(690, 'product.config_manager.product_display_price_include_tax', 'Hiển thị giá bao gồm thuế', 'product.admin', 'vi', NULL, NULL),
(691, 'product.config_manager.weight', 'Sử dụng Khối lượng', 'product.admin', 'vi', NULL, NULL),
(692, 'product.config_manager.length', 'Sử dụng Kích thước', 'product.admin', 'vi', NULL, NULL),
(693, 'product.config_manager.required', 'Bắt buộc', 'product.admin', 'vi', NULL, NULL),
(694, 'product.config_manager.show_date_available', 'Hiện thời gian bán hàng', 'product.admin', 'vi', NULL, NULL),
(695, 'product.config_manager.show_date_available', 'Display date available', 'product.admin', 'en', NULL, NULL),
(696, 'product.config_manager.product_cart_off', 'Tắt button thêm giỏ hàng', 'product.admin', 'vi', NULL, NULL),
(697, 'product.config_manager.product_cart_off', 'Turn off add cart button', 'product.admin', 'en', NULL, NULL),
(698, 'product.config_manager.product_wishlist_off', 'Tắt button thêm yêu thích', 'product.admin', 'vi', NULL, NULL),
(699, 'product.config_manager.product_wishlist_off', 'Turn off add wishlist button', 'product.admin', 'en', NULL, NULL),
(700, 'product.config_manager.product_compare_off', 'Tắt button thêm so sánh', 'product.admin', 'vi', NULL, NULL),
(701, 'product.config_manager.product_compare_off', 'Turn off add compare button', 'product.admin', 'en', NULL, NULL),
(702, 'product.config_manager.product_display_out_of_stock', 'Hiện sản phẩm hết hàng', 'product.admin', 'vi', NULL, NULL),
(703, 'product.config_manager.product_display_out_of_stock', 'Display product out of stock', 'product.admin', 'en', NULL, NULL),
(704, 'customer.my_account', 'My page', 'customer', 'en', NULL, NULL),
(705, 'customer.my_account', 'Trang cá nhân', 'customer', 'vi', NULL, NULL),
(706, 'customer.password', 'Password', 'customer', 'en', NULL, NULL),
(707, 'customer.password', 'Mật khẩu', 'customer', 'vi', NULL, NULL),
(708, 'customer.password_new', 'New password', 'customer', 'en', NULL, NULL),
(709, 'customer.password_new', 'Mật khẩu mới', 'customer', 'vi', NULL, NULL),
(710, 'customer.password_old', 'Old password', 'customer', 'en', NULL, NULL),
(711, 'customer.password_old', 'Mật khẩu cũ', 'customer', 'vi', NULL, NULL),
(712, 'customer.password_old_required', 'Old password required', 'customer', 'en', NULL, NULL),
(713, 'customer.password_old_required', 'Mật khẩu cũ là bắt buộc', 'customer', 'vi', NULL, NULL),
(714, 'customer.password_old_notcorrect', 'Old password incorrect', 'customer', 'en', NULL, NULL),
(715, 'customer.password_old_notcorrect', 'Mật khẩu cũ chưa đúng', 'customer', 'vi', NULL, NULL),
(716, 'customer.remember_me', 'Remember', 'customer', 'en', NULL, NULL),
(717, 'customer.remember_me', 'Ghi nhớ', 'customer', 'vi', NULL, NULL),
(718, 'customer.change_password', 'Change password', 'customer', 'en', NULL, NULL),
(719, 'customer.change_password', 'Đổi mật khẩu', 'customer', 'vi', NULL, NULL),
(720, 'customer.update_success', 'Update success', 'customer', 'en', NULL, NULL),
(721, 'customer.update_success', 'Cập nhật thành công', 'customer', 'vi', NULL, NULL),
(722, 'customer.update_infomation', 'Update infomation', 'customer', 'en', NULL, NULL),
(723, 'customer.update_infomation', 'Cập nhật thông tin', 'customer', 'vi', NULL, NULL),
(724, 'customer.change_infomation', 'Change infomation', 'customer', 'en', NULL, NULL),
(725, 'customer.change_infomation', 'Thay đổi thông tin', 'customer', 'vi', NULL, NULL),
(726, 'customer.order_history', 'Order history', 'customer', 'en', NULL, NULL),
(727, 'customer.order_history', 'Lịch sử mua hàng', 'customer', 'vi', NULL, NULL),
(728, 'customer.order_detail', 'Order detail', 'customer', 'en', NULL, NULL),
(729, 'customer.order_detail', 'Chi tiết đơn hàng', 'customer', 'vi', NULL, NULL),
(730, 'customer.address_list', 'Address list', 'customer', 'en', NULL, NULL),
(731, 'customer.address_list', 'Danh sách địa chỉ', 'customer', 'vi', NULL, NULL),
(732, 'customer.address_detail', 'Address detail', 'customer', 'en', NULL, NULL),
(733, 'customer.address_detail', 'Thông tin địa chỉ', 'customer', 'vi', NULL, NULL),
(734, 'customer.address_default', 'Address default', 'customer', 'en', NULL, NULL),
(735, 'customer.address_default', 'Địa chỉ mặc định', 'customer', 'vi', NULL, NULL),
(736, 'customer.address_set_default', 'Set address default', 'customer', 'en', NULL, NULL),
(737, 'customer.address_set_default', 'Đặt địa chỉ mặc định', 'customer', 'vi', NULL, NULL),
(738, 'customer.delete_address_success', 'Delete address success', 'customer', 'en', NULL, NULL),
(739, 'customer.delete_address_success', 'Xóa địa chỉ thành công', 'customer', 'vi', NULL, NULL),
(740, 'customer.verify_email.button_verify', 'Email verification', 'customer', 'en', NULL, NULL),
(741, 'customer.verify_email.button_verify', 'Xác thực email', 'customer', 'vi', NULL, NULL),
(742, 'customer.verify_email.title_page', 'Email verification', 'customer', 'en', NULL, NULL),
(743, 'customer.verify_email.title_page', 'Xác thực email', 'customer', 'vi', NULL, NULL),
(744, 'customer.verify_email.link_invalid', 'Link invalid', 'customer', 'en', NULL, NULL),
(745, 'customer.verify_email.link_invalid', 'Link không hợp lệ', 'customer', 'vi', NULL, NULL),
(746, 'customer.verify_email.verify_success', 'Successful verification', 'customer', 'en', NULL, NULL),
(747, 'customer.verify_email.verify_success', 'Xác thực thành công', 'customer', 'vi', NULL, NULL),
(748, 'customer.verify_email.msg_sent', 'Verification link sent.', 'customer', 'en', NULL, NULL),
(749, 'customer.verify_email.msg_sent', 'Đã gửi liên kết xác minh!', 'customer', 'vi', NULL, NULL),
(750, 'customer.verify_email.msg_page_2', 'click here to request another.', 'customer', 'en', NULL, NULL),
(751, 'customer.verify_email.msg_page_2', 'hãy nhấp vào đây để yêu cầu.', 'customer', 'vi', NULL, NULL),
(752, 'customer.verify_email.msg_page_1', 'Before proceeding, please check your email for a verification link. If you did not receive the email,', 'customer', 'en', NULL, NULL),
(753, 'customer.verify_email.msg_page_1', 'Trước khi tiếp tục, vui lòng kiểm tra email của bạn để biết liên kết xác minh. Nếu bạn không nhận được email,', 'customer', 'vi', NULL, NULL),
(754, 'customer.verify_email.title_header', 'Verify Your Email Address', 'customer', 'en', NULL, NULL),
(755, 'customer.verify_email.title_header', 'Xác minh địa chỉ email của bạn', 'customer', 'vi', NULL, NULL),
(756, 'customer.password_forgot', 'Forgot password', 'customer', 'en', NULL, NULL),
(757, 'customer.password_forgot', 'Quên mật khẩu', 'customer', 'vi', NULL, NULL),
(758, 'customer.login_title', 'Login page', 'customer', 'en', NULL, NULL),
(759, 'customer.login_title', 'Trang đăng nhập', 'customer', 'vi', NULL, NULL),
(760, 'customer.register_success', 'Successful register', 'customer', 'en', NULL, NULL),
(761, 'customer.register_success', 'Đăng ký thành công', 'customer', 'vi', NULL, NULL),
(762, 'customer.signup', 'Signup', 'customer', 'en', NULL, NULL),
(763, 'customer.signup', 'Đăng ký', 'customer', 'vi', NULL, NULL),
(764, 'customer.title_register', 'Account register', 'customer', 'en', NULL, NULL),
(765, 'customer.title_register', 'Đăng ký tài khoản', 'customer', 'vi', NULL, NULL),
(766, 'customer.password_reset', 'Password reset', 'customer', 'en', NULL, NULL),
(767, 'customer.password_reset', 'Reset mật khẩu', 'customer', 'vi', NULL, NULL),
(768, 'customer.password_confirm', 'Password confirm', 'customer', 'en', NULL, NULL),
(769, 'customer.password_confirm', 'Xác nhận mật khẩu', 'customer', 'vi', NULL, NULL),
(770, 'customer.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'customer', 'en', NULL, NULL),
(771, 'customer.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'customer', 'vi', NULL, NULL),
(772, 'customer.country', 'Country', 'customer', 'en', NULL, NULL),
(773, 'customer.country', 'Quốc gia', 'customer', 'vi', NULL, NULL),
(774, 'customer.company', 'Công ty', 'customer', 'vi', NULL, NULL),
(775, 'customer.company', 'Company', 'customer', 'en', NULL, NULL),
(776, 'customer.address3', 'Địa chỉ nhà', 'customer', 'vi', NULL, NULL),
(777, 'customer.address3', 'Address 3', 'customer', 'en', NULL, NULL),
(778, 'customer.address2', 'Quận/Huyện', 'customer', 'vi', NULL, NULL),
(779, 'customer.address2', 'Address 2', 'customer', 'en', NULL, NULL),
(780, 'customer.address1', 'Tỉnh/Thành', 'customer', 'vi', NULL, NULL),
(781, 'customer.address1', 'Address 1', 'customer', 'en', NULL, NULL),
(782, 'customer.postcode', 'Mã bưu điện', 'customer', 'vi', NULL, NULL),
(783, 'customer.postcode', 'Post code', 'customer', 'en', NULL, NULL),
(784, 'customer.phone', 'Phone', 'customer', 'en', NULL, NULL),
(785, 'customer.phone', 'Điện thoại', 'customer', 'vi', NULL, NULL),
(786, 'customer.last_name_kana', 'Họ kana', 'customer', 'vi', NULL, NULL),
(787, 'customer.last_name_kana', 'Last name kana', 'customer', 'en', NULL, NULL),
(788, 'customer.first_name_kana', 'First name kana', 'customer', 'en', NULL, NULL),
(789, 'customer.first_name_kana', 'Tên Kana', 'customer', 'vi', NULL, NULL),
(790, 'customer.full_name', 'Full name', 'customer', 'en', NULL, NULL),
(791, 'customer.full_name', 'Tên đầy đủ', 'customer', 'vi', NULL, NULL),
(792, 'customer.name', 'Name', 'customer', 'en', NULL, NULL),
(793, 'customer.name', 'Tên', 'customer', 'vi', NULL, NULL),
(794, 'customer.midle_name', 'Tên đệm', 'customer', 'vi', NULL, NULL),
(795, 'customer.midle_name', 'Midle name', 'customer', 'en', NULL, NULL),
(796, 'customer.last_name', 'Họ', 'customer', 'vi', NULL, NULL),
(797, 'customer.last_name', 'Last name', 'customer', 'en', NULL, NULL),
(798, 'customer.first_name', 'Tên', 'customer', 'vi', NULL, NULL),
(799, 'customer.first_name', 'First name', 'customer', 'en', NULL, NULL),
(800, 'customer.email', 'Email', 'customer', 'vi', NULL, NULL),
(801, 'customer.email', 'Email', 'customer', 'en', NULL, NULL),
(802, 'customer.sex', 'Giới tính', 'customer', 'vi', NULL, NULL),
(803, 'customer.sex', 'Sex', 'customer', 'en', NULL, NULL),
(804, 'customer.sex_women', 'Women', 'customer', 'en', NULL, NULL),
(805, 'customer.sex_women', 'Nữ', 'customer', 'vi', NULL, NULL),
(806, 'customer.sex_other', 'Other', 'customer', 'en', NULL, NULL),
(807, 'customer.sex_other', 'Khác', 'customer', 'vi', NULL, NULL),
(808, 'customer.sex_men', 'Men', 'customer', 'en', NULL, NULL),
(809, 'customer.sex_men', 'Nam', 'customer', 'vi', NULL, NULL),
(810, 'customer.birthday', 'Ngày sinh', 'customer', 'vi', NULL, NULL),
(811, 'customer.birthday', 'Birthday', 'customer', 'en', NULL, NULL),
(812, 'customer.title_login', 'Login account', 'customer', 'en', NULL, NULL),
(813, 'customer.title_login', 'Đăng nhập', 'customer', 'vi', NULL, NULL),
(814, 'customer.my_profile', 'Tài khoản', 'customer', 'vi', NULL, NULL),
(815, 'customer.my_profile', 'My profile', 'customer', 'en', NULL, NULL),
(816, 'customer.status', 'Trạng thái', 'customer', 'vi', NULL, NULL),
(817, 'customer.status', 'Status', 'customer', 'en', NULL, NULL),
(818, 'customer.group', 'Group', 'customer', 'en', NULL, NULL),
(819, 'customer.group', 'Nhóm', 'customer', 'vi', NULL, NULL),
(820, 'customer.account_already', 'Already have an account?', 'customer', 'en', NULL, NULL),
(821, 'customer.account_already', 'Bạn đã tài khoản chưa?', 'customer', 'vi', NULL, NULL),
(822, 'customer.admin.add_new_title', 'Thêm mới khách hàng', 'customer.admin', 'vi', NULL, NULL),
(823, 'customer.admin.add_new_title', 'Add new customer', 'customer.admin', 'en', NULL, NULL),
(824, 'customer.admin.add_new_des', 'Thêm mới', 'customer.admin', 'vi', NULL, NULL),
(825, 'customer.admin.add_new_des', 'Add new', 'customer.admin', 'en', NULL, NULL),
(826, 'customer.admin.provider', 'Provider', 'customer.admin', 'vi', NULL, NULL),
(827, 'customer.admin.provider', 'Provider', 'customer.admin', 'en', NULL, NULL),
(828, 'customer.admin.field', 'Trường dữ liệu', 'customer.admin', 'vi', NULL, NULL),
(829, 'customer.admin.field', 'Field data', 'customer.admin', 'en', NULL, NULL),
(830, 'customer.admin.value', 'Giá trị', 'customer.admin', 'vi', NULL, NULL),
(831, 'customer.admin.value', 'Value', 'customer.admin', 'en', NULL, NULL),
(832, 'customer.admin.required', 'Bắt buộc', 'customer.admin', 'vi', NULL, NULL),
(833, 'customer.admin.required', 'Required', 'customer.admin', 'en', NULL, NULL),
(834, 'customer.admin.keep_password', 'Giữ mật khẩu', 'customer.admin', 'vi', NULL, NULL),
(835, 'customer.admin.keep_password', 'Keep password', 'customer.admin', 'en', NULL, NULL),
(836, 'customer.admin.list', 'Danh sách khách hàng', 'customer.admin', 'vi', NULL, NULL),
(837, 'customer.admin.list', 'Customer list', 'customer.admin', 'en', NULL, NULL),
(838, 'customer.config_manager.title', ' Config customer', 'customer.admin', 'en', NULL, NULL),
(839, 'customer.config_manager.field', 'Field config', 'customer.admin', 'en', NULL, NULL),
(840, 'customer.config_manager.value', 'Value', 'customer.admin', 'en', NULL, NULL),
(841, 'customer.config_manager.lastname', 'Use last name', 'customer.admin', 'en', NULL, NULL),
(842, 'customer.config_manager.name_kana', 'Use name KANA', 'customer.admin', 'en', NULL, NULL),
(843, 'customer.config_manager.firstname_kana', 'Use first name KANA', 'customer.admin', 'en', NULL, NULL),
(844, 'customer.config_manager.lastname_kana', 'Use last name KANA', 'customer.admin', 'en', NULL, NULL),
(845, 'customer.config_manager.address1', 'Use ADDRESS 1', 'customer.admin', 'en', NULL, NULL),
(846, 'customer.config_manager.address2', 'Use ADDRESS 2', 'customer.admin', 'en', NULL, NULL),
(847, 'customer.config_manager.address3', 'Use ADDRESS 3', 'customer.admin', 'en', NULL, NULL),
(848, 'customer.config_manager.company', 'Use COMPANY', 'customer.admin', 'en', NULL, NULL),
(849, 'customer.config_manager.postcode', 'Use POSTCODE', 'customer.admin', 'en', NULL, NULL),
(850, 'customer.config_manager.country', 'Use COUNTRY', 'customer.admin', 'en', NULL, NULL),
(851, 'customer.config_manager.group', 'Use GROUP', 'customer.admin', 'en', NULL, NULL),
(852, 'customer.config_manager.birthday', 'Use BIRTHDAY', 'customer.admin', 'en', NULL, NULL),
(853, 'customer.config_manager.sex', 'Use SEX', 'customer.admin', 'en', NULL, NULL),
(854, 'customer.config_manager.phone', 'Use PHONE', 'customer.admin', 'en', NULL, NULL),
(855, 'customer.config_manager.reqired', 'Required', 'customer.admin', 'en', NULL, NULL),
(856, 'customer.config_manager.title', ' Cấu hình khách hàng', 'customer.admin', 'vi', NULL, NULL),
(857, 'customer.config_manager.lastname', 'Sử dụng HỌ', 'customer.admin', 'vi', NULL, NULL),
(858, 'customer.config_manager.name_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi', NULL, NULL),
(859, 'customer.config_manager.firstname_kana', 'Sử dụng tên KANA', 'customer.admin', 'vi', NULL, NULL),
(860, 'customer.config_manager.lasttname_kana', 'Sử dụng họ KANA', 'customer.admin', 'vi', NULL, NULL),
(861, 'customer.config_manager.address1', 'Sử dụng Tỉnh/Thành', 'customer.admin', 'vi', NULL, NULL),
(862, 'customer.config_manager.address2', 'Sử dụng Quận/Huyện', 'customer.admin', 'vi', NULL, NULL),
(863, 'customer.config_manager.address3', 'Địa chỉ nhà', 'customer.admin', 'vi', NULL, NULL),
(864, 'customer.config_manager.company', 'Sử dụng Công Ty', 'customer.admin', 'vi', NULL, NULL),
(865, 'customer.config_manager.postcode', 'Sử dụng Mã bưu chính', 'customer.admin', 'vi', NULL, NULL),
(866, 'customer.config_manager.country', 'Sử dụng Quốc Gia', 'customer.admin', 'vi', NULL, NULL),
(867, 'customer.config_manager.group', 'Sử dụng Nhóm', 'customer.admin', 'vi', NULL, NULL),
(868, 'customer.config_manager.birthday', 'Sử dụng NGÀY SINH', 'customer.admin', 'vi', NULL, NULL),
(869, 'customer.config_manager.sex', 'Sử dụng GIỚI TÍNH', 'customer.admin', 'vi', NULL, NULL),
(870, 'customer.config_manager.phone', 'Sử dụng SỐ ĐIỆN THOẠI', 'customer.admin', 'vi', NULL, NULL),
(871, 'customer.config_manager.required', 'Bắt buộc', 'customer.admin', 'vi', NULL, NULL),
(872, 'order.order_status', 'Trạng thái đơn hàng', 'order', 'vi', NULL, NULL),
(873, 'order.order_status', 'Order status', 'order', 'en', NULL, NULL),
(874, 'order.shipping_status', 'Trạng thái vận chuyển', 'order', 'vi', NULL, NULL),
(875, 'order.shipping_status', 'Shipping status', 'order', 'en', NULL, NULL),
(876, 'order.payment_status', 'Trạng thái thanh toán', 'order', 'vi', NULL, NULL),
(877, 'order.payment_status', 'Payment status', 'order', 'en', NULL, NULL),
(878, 'order.payment_method', 'Phương thức thanh toán', 'order', 'vi', NULL, NULL),
(879, 'order.payment_method', 'Payment method', 'order', 'en', NULL, NULL),
(880, 'order.shipping_method', 'Phương thức vận chuyển', 'order', 'vi', NULL, NULL),
(881, 'order.shipping_method', 'Shipping method', 'order', 'en', NULL, NULL),
(882, 'order.currency', 'Tiền tệ', 'order', 'vi', NULL, NULL),
(883, 'order.currency', 'Currency', 'order', 'en', NULL, NULL),
(884, 'order.exchange_rate', 'Tỉ giá', 'order', 'vi', NULL, NULL),
(885, 'order.exchange_rate', 'Exchange rate', 'order', 'en', NULL, NULL),
(886, 'order.totals.balance', 'Còn lại', 'order', 'vi', NULL, NULL),
(887, 'order.totals.balance', 'Balance', 'order', 'en', NULL, NULL),
(888, 'order.date', 'Ngày đặt hàng', 'order', 'vi', NULL, NULL),
(889, 'order.date', 'Order date', 'order', 'en', NULL, NULL),
(890, 'order.qty', 'Số lượng', 'order', 'vi', NULL, NULL),
(891, 'order.qty', 'quantity', 'order', 'en', NULL, NULL),
(892, 'order.amount', 'Giá', 'order', 'vi', NULL, NULL),
(893, 'order.amount', 'Amount', 'order', 'en', NULL, NULL),
(894, 'order.id', 'Mã đơn hàng', 'order', 'vi', NULL, NULL),
(895, 'order.id', 'Order ID', 'order', 'en', NULL, NULL),
(896, 'order.date_export', 'Ngày tạo', 'order', 'vi', NULL, NULL),
(897, 'order.date_export', 'Date export', 'order', 'en', NULL, NULL),
(898, 'order.total', 'Tổng tiền', 'order', 'vi', NULL, NULL),
(899, 'order.total', 'Total', 'order', 'en', NULL, NULL),
(900, 'order.sub_total', 'Tiền hàng', 'order', 'vi', NULL, NULL),
(901, 'order.sub_total', 'SubTotal', 'order', 'en', NULL, NULL),
(902, 'order.subtotal', 'Tiền hàng', 'order', 'vi', NULL, NULL),
(903, 'order.subtotal', 'SubTotal', 'order', 'en', NULL, NULL),
(904, 'order.tax', 'Thuế', 'order', 'vi', NULL, NULL),
(905, 'order.tax', 'Tax', 'order', 'en', NULL, NULL),
(906, 'order.shipping', 'Vận chuyển', 'order', 'vi', NULL, NULL),
(907, 'order.shipping', 'Shipping', 'order', 'en', NULL, NULL),
(908, 'order.received', 'Đã nhận', 'order', 'vi', NULL, NULL),
(909, 'order.received', 'Received', 'order', 'en', NULL, NULL),
(910, 'order.discount', 'Giảm giá', 'order', 'vi', NULL, NULL),
(911, 'order.discount', 'Discount', 'order', 'en', NULL, NULL),
(912, 'order.other_fee', 'Chi phí khác', 'order', 'vi', NULL, NULL),
(913, 'order.other_fee', 'Other fee', 'order', 'en', NULL, NULL),
(914, 'order.invoice', 'Hóa đơn', 'order', 'vi', NULL, NULL),
(915, 'order.invoice', 'Invoice', 'order', 'en', NULL, NULL),
(916, 'order.totals.total', 'Tổng tiền', 'order', 'vi', NULL, NULL),
(917, 'order.totals.total', 'Total', 'order', 'en', NULL, NULL),
(918, 'order.totals.sub_total', 'Tiền hàng', 'order', 'vi', NULL, NULL),
(919, 'order.totals.sub_total', 'SubTotal', 'order', 'en', NULL, NULL),
(920, 'order.totals.subtotal', 'Tiền hàng', 'order', 'vi', NULL, NULL),
(921, 'order.totals.subtotal', 'SubTotal', 'order', 'en', NULL, NULL),
(922, 'order.totals.tax', 'Thuế', 'order', 'vi', NULL, NULL),
(923, 'order.totals.tax', 'Tax', 'order', 'en', NULL, NULL),
(924, 'order.totals.discount', 'Giảm giá', 'order', 'vi', NULL, NULL),
(925, 'order.totals.discount', 'Discount', 'order', 'en', NULL, NULL),
(926, 'order.totals.shipping', 'Vận chuyển', 'order', 'vi', NULL, NULL),
(927, 'order.totals.shipping', 'Shipping', 'order', 'en', NULL, NULL),
(928, 'order.totals.received', 'Đã nhận', 'order', 'vi', NULL, NULL),
(929, 'order.totals.received', 'Received', 'order', 'en', NULL, NULL),
(930, 'order.totals.other_fee', 'Phí khác', 'order', 'vi', NULL, NULL),
(931, 'order.totals.other_fee', 'Other fee', 'order', 'en', NULL, NULL),
(932, 'order.detail', 'Chi tiết', 'order', 'vi', NULL, NULL),
(933, 'order.detail', 'Order detail', 'order', 'en', NULL, NULL),
(934, 'order.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'order', 'en', NULL, NULL),
(935, 'order.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'order', 'vi', NULL, NULL),
(936, 'order.country', 'Country', 'order', 'en', NULL, NULL),
(937, 'order.country', 'Quốc gia', 'order', 'vi', NULL, NULL),
(938, 'order.company', 'Công ty', 'order', 'vi', NULL, NULL),
(939, 'order.company', 'Company', 'order', 'en', NULL, NULL),
(940, 'order.address3', 'Địa chỉ nhà', 'order', 'vi', NULL, NULL),
(941, 'order.address3', 'Address 3', 'order', 'en', NULL, NULL),
(942, 'order.address2', 'Quận/Huyện', 'order', 'vi', NULL, NULL),
(943, 'order.address2', 'Address 2', 'order', 'en', NULL, NULL),
(944, 'order.address1', 'Tỉnh/Thành', 'order', 'vi', NULL, NULL),
(945, 'order.address1', 'Address 1', 'order', 'en', NULL, NULL),
(946, 'order.address', 'Địa chỉ', 'order', 'vi', NULL, NULL),
(947, 'order.address', 'Address', 'order', 'en', NULL, NULL),
(948, 'order.postcode', 'Mã bưu điện', 'order', 'vi', NULL, NULL),
(949, 'order.postcode', 'Post code', 'order', 'en', NULL, NULL),
(950, 'order.phone', 'Phone', 'order', 'en', NULL, NULL),
(951, 'order.phone', 'Điện thoại', 'order', 'vi', NULL, NULL),
(952, 'order.last_name_kana', 'Họ kana', 'order', 'vi', NULL, NULL),
(953, 'order.last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(954, 'order.first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(955, 'order.first_name_kana', 'Tên Kana', 'order', 'vi', NULL, NULL),
(956, 'order.full_name', 'Full name', 'order', 'en', NULL, NULL),
(957, 'order.full_name', 'Tên đầy đủ', 'order', 'vi', NULL, NULL),
(958, 'order.name', 'Name', 'order', 'en', NULL, NULL),
(959, 'order.name', 'Tên', 'order', 'vi', NULL, NULL),
(960, 'order.midle_name', 'Tên đệm', 'order', 'vi', NULL, NULL),
(961, 'order.midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(962, 'order.last_name', 'Họ', 'order', 'vi', NULL, NULL),
(963, 'order.last_name', 'Last name', 'order', 'en', NULL, NULL),
(964, 'order.first_name', 'Tên', 'order', 'vi', NULL, NULL),
(965, 'order.first_name', 'First name', 'order', 'en', NULL, NULL),
(966, 'order.email', 'Email', 'order', 'vi', NULL, NULL),
(967, 'order.email', 'Email', 'order', 'en', NULL, NULL),
(968, 'order.payment_country', 'Country', 'order', 'en', NULL, NULL),
(969, 'order.payment_country', 'Quốc gia', 'order', 'vi', NULL, NULL),
(970, 'order.payment_company', 'Công ty', 'order', 'vi', NULL, NULL),
(971, 'order.payment_company', 'Company', 'order', 'en', NULL, NULL),
(972, 'order.payment_address3', 'Địa chỉ nhà', 'order', 'vi', NULL, NULL),
(973, 'order.payment_address3', 'Address 3', 'order', 'en', NULL, NULL),
(974, 'order.payment_address2', 'Quận/Huyện', 'order', 'vi', NULL, NULL),
(975, 'order.payment_address2', 'Address 2', 'order', 'en', NULL, NULL),
(976, 'order.payment_address1', 'Tỉnh/Thành', 'order', 'vi', NULL, NULL),
(977, 'order.payment_address1', 'Address 1', 'order', 'en', NULL, NULL),
(978, 'order.payment_address', 'Địa chỉ', 'order', 'vi', NULL, NULL),
(979, 'order.payment_address', 'Address', 'order', 'en', NULL, NULL),
(980, 'order.payment_postcode', 'Mã bưu điện', 'order', 'vi', NULL, NULL),
(981, 'order.payment_postcode', 'Post code', 'order', 'en', NULL, NULL),
(982, 'order.payment_phone', 'Phone', 'order', 'en', NULL, NULL),
(983, 'order.payment_phone', 'Điện thoại', 'order', 'vi', NULL, NULL),
(984, 'order.payment_last_name_kana', 'Họ kana', 'order', 'vi', NULL, NULL),
(985, 'order.payment_last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(986, 'order.payment_first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(987, 'order.payment_first_name_kana', 'Tên Kana', 'order', 'vi', NULL, NULL),
(988, 'order.payment_full_name', 'Full name', 'order', 'en', NULL, NULL),
(989, 'order.payment_full_name', 'Tên đầy đủ', 'order', 'vi', NULL, NULL),
(990, 'order.payment_name', 'Name', 'order', 'en', NULL, NULL),
(991, 'order.payment_name', 'Tên', 'order', 'vi', NULL, NULL),
(992, 'order.payment_midle_name', 'Tên đệm', 'order', 'vi', NULL, NULL),
(993, 'order.payment_midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(994, 'order.payment_last_name', 'Họ', 'order', 'vi', NULL, NULL),
(995, 'order.payment_last_name', 'Last name', 'order', 'en', NULL, NULL),
(996, 'order.payment_first_name', 'Tên', 'order', 'vi', NULL, NULL),
(997, 'order.payment_first_name', 'First name', 'order', 'en', NULL, NULL),
(998, 'order.payment_email', 'Email', 'order', 'vi', NULL, NULL),
(999, 'order.payment_email', 'Email', 'order', 'en', NULL, NULL),
(1000, 'order.shipping_country', 'Country', 'order', 'en', NULL, NULL),
(1001, 'order.shipping_country', 'Quốc gia', 'order', 'vi', NULL, NULL),
(1002, 'order.shipping_company', 'Công ty', 'order', 'vi', NULL, NULL),
(1003, 'order.shipping_company', 'Company', 'order', 'en', NULL, NULL),
(1004, 'order.shipping_address3', 'Địa chỉ nhà', 'order', 'vi', NULL, NULL),
(1005, 'order.shipping_address3', 'Address 3', 'order', 'en', NULL, NULL),
(1006, 'order.shipping_address2', 'Quận/Huyện', 'order', 'vi', NULL, NULL),
(1007, 'order.shipping_address2', 'Address 2', 'order', 'en', NULL, NULL),
(1008, 'order.shipping_address1', 'Tỉnh/Thành', 'order', 'vi', NULL, NULL),
(1009, 'order.shipping_address1', 'Address 1', 'order', 'en', NULL, NULL),
(1010, 'order.shipping_address', 'Địa chỉ', 'order', 'vi', NULL, NULL),
(1011, 'order.shipping_address', 'Address', 'order', 'en', NULL, NULL),
(1012, 'order.shipping_postcode', 'Mã bưu điện', 'order', 'vi', NULL, NULL),
(1013, 'order.shipping_postcode', 'Post code', 'order', 'en', NULL, NULL),
(1014, 'order.shipping_phone', 'Phone', 'order', 'en', NULL, NULL),
(1015, 'order.shipping_phone', 'Điện thoại', 'order', 'vi', NULL, NULL),
(1016, 'order.shipping_last_name_kana', 'Họ kana', 'order', 'vi', NULL, NULL),
(1017, 'order.shipping_last_name_kana', 'Last name kana', 'order', 'en', NULL, NULL),
(1018, 'order.shipping_first_name_kana', 'First name kana', 'order', 'en', NULL, NULL),
(1019, 'order.shipping_first_name_kana', 'Tên Kana', 'order', 'vi', NULL, NULL),
(1020, 'order.shipping_full_name', 'Full name', 'order', 'en', NULL, NULL),
(1021, 'order.shipping_full_name', 'Tên đầy đủ', 'order', 'vi', NULL, NULL),
(1022, 'order.shipping_name', 'Name', 'order', 'en', NULL, NULL),
(1023, 'order.shipping_name', 'Tên', 'order', 'vi', NULL, NULL),
(1024, 'order.shipping_midle_name', 'Tên đệm', 'order', 'vi', NULL, NULL),
(1025, 'order.shipping_midle_name', 'Midle name', 'order', 'en', NULL, NULL),
(1026, 'order.shipping_last_name', 'Họ', 'order', 'vi', NULL, NULL),
(1027, 'order.shipping_last_name', 'Last name', 'order', 'en', NULL, NULL),
(1028, 'order.shipping_first_name', 'Tên', 'order', 'vi', NULL, NULL),
(1029, 'order.shipping_first_name', 'First name', 'order', 'en', NULL, NULL),
(1030, 'order.shipping_email', 'Email', 'order', 'vi', NULL, NULL),
(1031, 'order.shipping_email', 'Email', 'order', 'en', NULL, NULL),
(1032, 'order.sex', 'Giới tính', 'order', 'vi', NULL, NULL),
(1033, 'order.sex', 'Sex', 'order', 'en', NULL, NULL),
(1034, 'order.sex_women', 'Women', 'order', 'en', NULL, NULL),
(1035, 'order.sex_women', 'Nữ', 'order', 'vi', NULL, NULL),
(1036, 'order.sex_other', 'Other', 'order', 'en', NULL, NULL),
(1037, 'order.sex_other', 'Khác', 'order', 'vi', NULL, NULL),
(1038, 'order.sex_men', 'Men', 'order', 'en', NULL, NULL),
(1039, 'order.sex_men', 'Nam', 'order', 'vi', NULL, NULL),
(1040, 'order.birthday', 'Ngày sinh', 'order', 'vi', NULL, NULL),
(1041, 'order.birthday', 'Birthday', 'order', 'en', NULL, NULL),
(1042, 'order.status', 'Trạng thái đơn hàng', 'order', 'vi', NULL, NULL),
(1043, 'order.status', 'Order status', 'order', 'en', NULL, NULL),
(1044, 'order.order_detail', 'Chi tiết đơn hàng', 'order', 'vi', NULL, NULL),
(1045, 'order.order_detail', 'Order detail', 'order', 'en', NULL, NULL),
(1046, 'order.note', 'Note', 'order', 'en', NULL, NULL),
(1047, 'order.note', 'Ghi chú', 'order', 'vi', NULL, NULL),
(1048, 'order.order_note', 'Note', 'order', 'en', NULL, NULL),
(1049, 'order.order_note', 'Ghi chú', 'order', 'vi', NULL, NULL),
(1050, 'order.domain', 'Domain', 'order', 'en', NULL, NULL),
(1051, 'order.domain', 'Tên miền', 'order', 'vi', NULL, NULL),
(1052, 'order.admin.order_history', 'Order history', 'order.admin', 'en', NULL, NULL),
(1053, 'order.admin.history_staff', 'Staff', 'order.admin', 'en', NULL, NULL),
(1054, 'order.admin.history_content', 'Content', 'order.admin', 'en', NULL, NULL),
(1055, 'order.admin.history_time', 'Time', 'order.admin', 'en', NULL, NULL),
(1056, 'order.admin.order_history', 'Lịch sử đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1057, 'order.admin.history_staff', 'Nhân viên', 'order.admin', 'vi', NULL, NULL),
(1058, 'order.admin.history_content', 'Nội dung', 'order.admin', 'vi', NULL, NULL),
(1059, 'order.admin.history_time', 'Thời gian', 'order.admin', 'vi', NULL, NULL),
(1060, 'order.admin.title', 'Quản lý đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1061, 'order.admin.config_title', 'Cấu hình đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1062, 'order.admin.list', 'Danh sách đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1063, 'order.admin.payment_method', 'Phương thức thanh toán', 'order.admin', 'vi', NULL, NULL),
(1064, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'vi', NULL, NULL),
(1065, 'order.admin.currency', 'Tiền tệ', 'order.admin', 'vi', NULL, NULL),
(1066, 'order.admin.exchange_rate', 'Tỉ giá', 'order.admin', 'vi', NULL, NULL),
(1067, 'order.admin.order_new', 'Thêm mới', 'order.admin', 'vi', NULL, NULL),
(1068, 'order.admin.add_new', 'Thêm mới', 'order.admin', 'vi', NULL, NULL),
(1069, 'order.admin.add_new_title', 'Tạo đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1070, 'order.admin.add_new_des', 'Tạo mới một đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1071, 'order.admin.export_batch', 'Xuất', 'order.admin', 'vi', NULL, NULL),
(1072, 'order.admin.config_info', 'Cấu hình đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1073, 'order.admin.store', 'Cửa hàng', 'order.admin', 'vi', NULL, NULL),
(1074, 'order.admin.title', 'Order manager', 'order.admin', 'en', NULL, NULL),
(1075, 'order.admin.config_title', 'Config info order', 'order.admin', 'en', NULL, NULL),
(1076, 'order.admin.list', 'Order list', 'order.admin', 'en', NULL, NULL),
(1077, 'order.admin.payment_method', 'Payment method', 'order.admin', 'en', NULL, NULL),
(1078, 'order.admin.payment_method_short', 'Payment method', 'order.admin', 'en', NULL, NULL),
(1079, 'order.admin.currency', 'Currency', 'order.admin', 'en', NULL, NULL),
(1080, 'order.admin.exchange_rate', 'Exchange rate', 'order.admin', 'en', NULL, NULL),
(1081, 'order.admin.status', 'Status', 'order.admin', 'en', NULL, NULL),
(1082, 'order.admin.status', 'Trạng thái', 'order.admin', 'vi', NULL, NULL),
(1083, 'order.admin.created_at', 'Created at', 'order.admin', 'en', NULL, NULL),
(1084, 'order.admin.created_at', 'Tạo lúc', 'order.admin', 'vi', NULL, NULL),
(1085, 'order.admin.order_new', 'Add new', 'order.admin', 'en', NULL, NULL),
(1086, 'order.admin.add_new', 'Add new', 'order.admin', 'en', NULL, NULL),
(1087, 'order.admin.add_new_title', 'Add new order', 'order.admin', 'en', NULL, NULL),
(1088, 'order.admin.add_new_des', 'Create a new order', 'order.admin', 'en', NULL, NULL),
(1089, 'order.admin.export_batch', 'Export', 'order.admin', 'en', NULL, NULL),
(1090, 'order.admin.config_info', 'Config order', 'order.admin', 'en', NULL, NULL),
(1091, 'order.admin.store', 'Store', 'order.admin', 'en', NULL, NULL),
(1092, 'order.admin.search_order_status', 'Search order status', 'order.admin', 'en', NULL, NULL),
(1093, 'order.admin.search_order_status', 'Tìm trạng thái đơn hàng', 'order.admin', 'vi', NULL, NULL),
(1094, 'order.admin.search_email', 'Search email', 'order.admin', 'en', NULL, NULL),
(1095, 'order.admin.search_email', 'Tìm email', 'order.admin', 'vi', NULL, NULL),
(1096, 'order.admin.search_id', 'Search id', 'order.admin', 'en', NULL, NULL),
(1097, 'order.admin.search_id', 'Tìm ID', 'order.admin', 'vi', NULL, NULL),
(1098, 'order.admin.select_product', 'Select product', 'order.admin', 'en', NULL, NULL),
(1099, 'order.admin.select_product', 'Chọn sản phẩm', 'order.admin', 'vi', NULL, NULL),
(1100, 'order.admin.product_buy_out_of_stock', 'Allow buy out of stock', 'order.admin', 'en', NULL, NULL),
(1101, 'order.admin.product_buy_out_of_stock', 'Cho phép mua hàng đã hết', 'order.admin', 'vi', NULL, NULL),
(1102, 'order.admin.shipping_off', 'Dont use shipping method', 'order.admin', 'en', NULL, NULL),
(1103, 'order.admin.shipping_off', 'Không sử dụng phương thức vận chuyển', 'order.admin', 'vi', NULL, NULL),
(1104, 'order.admin.payment_off', 'Dont use payment method', 'order.admin', 'en', NULL, NULL),
(1105, 'order.admin.payment_off', 'Không sử dụng phương thức thanh toán', 'order.admin', 'vi', NULL, NULL),
(1106, 'order.admin.product_preorder', 'Allow pre-order', 'order.admin', 'en', NULL, NULL),
(1107, 'order.admin.product_preorder', 'Cho phép đặt hàng trước', 'order.admin', 'vi', NULL, NULL),
(1108, 'order.admin.shop_allow_guest', 'Allow buy no need login', 'order.admin', 'en', NULL, NULL),
(1109, 'order.admin.shop_allow_guest', 'Cho phép mua không cần đăng nhập', 'order.admin', 'vi', NULL, NULL),
(1110, 'order.admin.select_customer', 'Select customer', 'order.admin', 'en', NULL, NULL),
(1111, 'order.admin.select_customer', 'Chọn khách hàng', 'order.admin', 'vi', NULL, NULL),
(1112, 'contact.name', 'Tên', 'contact', 'vi', NULL, NULL),
(1113, 'contact.name', 'Name', 'contact', 'en', NULL, NULL),
(1114, 'contact.email', 'Email', 'contact', 'vi', NULL, NULL),
(1115, 'contact.email', 'Email', 'contact', 'en', NULL, NULL),
(1116, 'contact.phone', 'Điện thoại', 'contact', 'vi', NULL, NULL),
(1117, 'contact.phone', 'Phone', 'contact', 'en', NULL, NULL),
(1118, 'contact.subject', 'Tiêu đề', 'contact', 'vi', NULL, NULL),
(1119, 'contact.subject', 'Subject', 'contact', 'en', NULL, NULL),
(1120, 'contact.content', 'Nội dung', 'contact', 'vi', NULL, NULL),
(1121, 'contact.content', 'content', 'contact', 'en', NULL, NULL),
(1122, 'contact.page_title', 'Liên hệ', 'contact', 'vi', NULL, NULL),
(1123, 'contact.page_title', 'Contact page', 'contact', 'en', NULL, NULL),
(1124, 'contact.thank_contact', 'Cảm ơn vì bạn đã liên hệ', 'contact', 'vi', NULL, NULL),
(1125, 'contact.thank_contact', 'Thank you for your contact', 'contact', 'en', NULL, NULL),
(1126, 'filter_sort.button', 'Lọc sản phẩm', 'filter_sort', 'vi', NULL, NULL),
(1127, 'filter_sort.button', 'Filter product', 'filter_sort', 'en', NULL, NULL),
(1128, 'filter_sort.sort', 'Thứ tự', 'filter_sort', 'vi', NULL, NULL),
(1129, 'filter_sort.sort', 'Sort', 'filter_sort', 'en', NULL, NULL),
(1130, 'filter_sort.price_asc', 'Giá tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1131, 'filter_sort.price_asc', 'Price ascending', 'filter_sort', 'en', NULL, NULL),
(1132, 'filter_sort.price_desc', 'Giá giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1133, 'filter_sort.price_desc', 'Price descending', 'filter_sort', 'en', NULL, NULL),
(1134, 'filter_sort.sort_asc', 'Sort tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1135, 'filter_sort.sort_asc', 'Sort ascending', 'filter_sort', 'en', NULL, NULL),
(1136, 'filter_sort.sort_desc', 'Sort giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1137, 'filter_sort.sort_desc', 'Sort descending', 'filter_sort', 'en', NULL, NULL),
(1138, 'filter_sort.id_asc', 'ID tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1139, 'filter_sort.id_asc', 'ID ascending', 'filter_sort', 'en', NULL, NULL),
(1140, 'filter_sort.id_desc', 'ID giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1141, 'filter_sort.id_desc', 'ID descending', 'filter_sort', 'en', NULL, NULL),
(1142, 'filter_sort.name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi', NULL, NULL),
(1143, 'filter_sort.name_desc', 'Name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1144, 'filter_sort.name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi', NULL, NULL),
(1145, 'filter_sort.name_asc', 'Name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1146, 'filter_sort.first_name_desc', 'Tên theo thứ tự z-a', 'filter_sort', 'vi', NULL, NULL),
(1147, 'filter_sort.first_name_desc', 'First name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1148, 'filter_sort.first_name_asc', 'Tên theo thứ tự a-z', 'filter_sort', 'vi', NULL, NULL),
(1149, 'filter_sort.first_name_asc', 'First name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1150, 'filter_sort.last_name_desc', 'Họ theo thứ tự z-a', 'filter_sort', 'vi', NULL, NULL),
(1151, 'filter_sort.last_name_desc', 'Last name in z-a order', 'filter_sort', 'en', NULL, NULL),
(1152, 'filter_sort.last_name_asc', 'Họ theo thứ tự a-z', 'filter_sort', 'vi', NULL, NULL),
(1153, 'filter_sort.last_name_asc', 'Last name in a-z order', 'filter_sort', 'en', NULL, NULL),
(1154, 'filter_sort.title_desc', 'Tiêu đề theo thứ tự z-a', 'filter_sort', 'vi', NULL, NULL),
(1155, 'filter_sort.title_desc', 'Title in z-a order', 'filter_sort', 'en', NULL, NULL),
(1156, 'filter_sort.title_asc', 'Tiêu đề theo thứ tự a-z', 'filter_sort', 'vi', NULL, NULL),
(1157, 'filter_sort.title_asc', 'Title in a-z order', 'filter_sort', 'en', NULL, NULL),
(1158, 'filter_sort.sold_asc', 'Bán ra tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1159, 'filter_sort.sold_asc', 'Sold ascending', 'filter_sort', 'en', NULL, NULL),
(1160, 'filter_sort.sold_desc', 'Bán ra giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1161, 'filter_sort.sold_desc', 'Sold descending', 'filter_sort', 'en', NULL, NULL),
(1162, 'filter_sort.view_desc', 'Lượt xem giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1163, 'filter_sort.view_desc', 'View descending', 'filter_sort', 'en', NULL, NULL),
(1164, 'filter_sort.view_asc', 'Lượt xem tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1165, 'filter_sort.view_asc', 'View ascending', 'filter_sort', 'en', NULL, NULL),
(1166, 'filter_sort.alpha_desc', ':alpha theo thứ tự z-a', 'filter_sort', 'vi', NULL, NULL),
(1167, 'filter_sort.alpha_desc', ':alpha in z-a order', 'filter_sort', 'en', NULL, NULL),
(1168, 'filter_sort.alpha_asc', ':alpha theo thứ tự a-z', 'filter_sort', 'vi', NULL, NULL),
(1169, 'filter_sort.alpha_asc', ':alpha in a-z order', 'filter_sort', 'en', NULL, NULL),
(1170, 'filter_sort.value_asc', ':value tăng dần', 'filter_sort', 'vi', NULL, NULL),
(1171, 'filter_sort.value_asc', ':value ascending', 'filter_sort', 'en', NULL, NULL),
(1172, 'filter_sort.value_desc', ':value giảm dần', 'filter_sort', 'vi', NULL, NULL),
(1173, 'filter_sort.value_desc', ':value descending', 'filter_sort', 'en', NULL, NULL),
(1174, 'subscribe.email', 'Email', 'subscribe', 'en', NULL, NULL),
(1175, 'subscribe.action', 'Subscribe', 'subscribe', 'en', NULL, NULL),
(1176, 'subscribe.title', 'Subscribe email', 'subscribe', 'en', NULL, NULL),
(1177, 'subscribe.subscribe_des', 'Get the most recent updates from us', 'subscribe', 'en', NULL, NULL),
(1178, 'subscribe.subscribe_email', 'Your email', 'subscribe', 'en', NULL, NULL),
(1179, 'subscribe.subscribe_success', 'Subscribe email successful!', 'subscribe', 'en', NULL, NULL),
(1180, 'subscribe.email', 'Email', 'subscribe', 'vi', NULL, NULL),
(1181, 'subscribe.action', 'Đăng ký', 'subscribe', 'vi', NULL, NULL),
(1182, 'subscribe.title', 'Đăng ký email', 'subscribe', 'vi', NULL, NULL),
(1183, 'subscribe.subscribe_des', 'Nhận cập nhật mới nhất', 'subscribe', 'vi', NULL, NULL),
(1184, 'subscribe.subscribe_email', 'Email của bạn', 'subscribe', 'vi', NULL, NULL),
(1185, 'subscribe.subscribe_success', 'Đăng ký email thành công!', 'subscribe', 'vi', NULL, NULL),
(1186, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'vi', NULL, NULL),
(1187, 'subscribe.admin.email', 'Email', 'subscribe.admin', 'en', NULL, NULL),
(1188, 'subscribe.admin.list', 'Danh sách theo dõi', 'subscribe.admin', 'vi', NULL, NULL),
(1189, 'subscribe.admin.list', 'Subscribe list', 'subscribe.admin', 'en', NULL, NULL),
(1190, 'subscribe.admin.status', 'Trạng thái', 'subscribe.admin', 'vi', NULL, NULL),
(1191, 'subscribe.admin.status', 'Status', 'subscribe.admin', 'en', NULL, NULL),
(1192, 'subscribe.admin.add_new_title', 'Thêm đăng ký', 'subscribe.admin', 'vi', NULL, NULL),
(1193, 'subscribe.admin.add_new_title', 'Add subscribe', 'subscribe.admin', 'en', NULL, NULL),
(1194, 'subscribe.admin.add_new_des', 'Thêm tài khoản đăng ký', 'subscribe.admin', 'vi', NULL, NULL),
(1195, 'subscribe.admin.add_new_des', 'Add a new subscribe', 'subscribe.admin', 'en', NULL, NULL),
(1196, 'subscribe.admin.search_place', 'Search ID or email', 'subscribe.admin', 'en', NULL, NULL),
(1197, 'subscribe.admin.search_place', 'Tìm ID hoặc email', 'subscribe.admin', 'vi', NULL, NULL),
(1198, 'about.page_title', 'About us', 'about', 'en', NULL, NULL),
(1199, 'about.page_title', 'Giới thiệu', 'about', 'vi', NULL, NULL),
(1200, 'admin.user.setting', 'Setting', 'admin.user', 'en', NULL, NULL),
(1201, 'admin.user.setting', 'Cài đặt', 'admin.user', 'vi', NULL, NULL),
(1202, 'admin.user.logout', 'Logout', 'admin.user', 'en', NULL, NULL),
(1203, 'admin.user.logout', 'Đăng xuất', 'admin.user', 'vi', NULL, NULL),
(1204, 'admin.user.username', 'User name', 'admin.user', 'en', NULL, NULL),
(1205, 'admin.user.username', 'Tên đăng nhập', 'admin.user', 'vi', NULL, NULL),
(1206, 'admin.user.password', 'Password', 'admin.user', 'en', NULL, NULL),
(1207, 'admin.user.password', 'Mật khẩu', 'admin.user', 'vi', NULL, NULL),
(1208, 'admin.user.remember_me', 'Remember', 'admin.user', 'en', NULL, NULL),
(1209, 'admin.user.remember_me', 'Ghi nhớ', 'admin.user', 'vi', NULL, NULL),
(1210, 'admin.user.login', 'Login', 'admin.user', 'en', NULL, NULL),
(1211, 'admin.user.login', 'Đăng nhập', 'admin.user', 'vi', NULL, NULL),
(1212, 'admin.user.keep_password', 'Để trống nếu không muốn thay đổi mật khẩu', 'admin.user', 'vi', NULL, NULL),
(1213, 'admin.user.select_roles', 'Chọn vai trò', 'admin.user', 'vi', NULL, NULL),
(1214, 'admin.user.select_permission', 'Chọn quyền hạn', 'admin.user', 'vi', NULL, NULL),
(1215, 'admin.user.add_permission', 'Thêm quyền hạn', 'admin.user', 'vi', NULL, NULL),
(1216, 'admin.user.select_store', 'Chọn cửa hàng', 'admin.user', 'vi', NULL, NULL),
(1217, 'admin.user.name', 'Tên đầy đủ', 'admin.user', 'vi', NULL, NULL),
(1218, 'admin.user.user_name', 'Tên đăng nhập', 'admin.user', 'vi', NULL, NULL),
(1219, 'admin.user.email', 'Email', 'admin.user', 'vi', NULL, NULL),
(1220, 'admin.user.avatar', 'Hình đại diện', 'admin.user', 'vi', NULL, NULL),
(1221, 'admin.user.roles', 'vai trò', 'admin.user', 'vi', NULL, NULL),
(1222, 'admin.user.permission', 'Quyền hạn', 'admin.user', 'vi', NULL, NULL),
(1223, 'admin.user.created_at', 'Tạo lúc', 'admin.user', 'vi', NULL, NULL),
(1224, 'admin.user.updated_at', 'Cập nhật', 'admin.user', 'vi', NULL, NULL),
(1225, 'admin.user.member_since', 'Tham gia từ', 'admin.user', 'vi', NULL, NULL),
(1226, 'admin.user.password_confirmation', 'Xác nhận mật khẩu', 'admin.user', 'vi', NULL, NULL),
(1227, 'admin.user.username_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'vi', NULL, NULL),
(1228, 'admin.user.title', 'Quản lý người dùng', 'admin.user', 'vi', NULL, NULL),
(1229, 'admin.user.list', 'Danh sách người dùng', 'admin.user', 'vi', NULL, NULL),
(1230, 'admin.user.add_new', 'Thêm mới', 'admin.user', 'vi', NULL, NULL),
(1231, 'admin.user.add_new_title', 'Tạo người dùng', 'admin.user', 'vi', NULL, NULL),
(1232, 'admin.user.add_new_des', 'Tạo mới người dùng', 'admin.user', 'vi', NULL, NULL),
(1233, 'admin.user.name', 'Full name', 'admin.user', 'en', NULL, NULL),
(1234, 'admin.user.user_name', 'User name', 'admin.user', 'en', NULL, NULL),
(1235, 'admin.user.email', 'Email', 'admin.user', 'en', NULL, NULL),
(1236, 'admin.user.avatar', 'Avatar', 'admin.user', 'en', NULL, NULL),
(1237, 'admin.user.roles', 'Roles', 'admin.user', 'en', NULL, NULL),
(1238, 'admin.user.permission', 'Permission', 'admin.user', 'en', NULL, NULL),
(1239, 'admin.user.created_at', 'Created at', 'admin.user', 'en', NULL, NULL),
(1240, 'admin.user.updated_at', 'Updated at', 'admin.user', 'en', NULL, NULL),
(1241, 'admin.user.member_since', 'Member since', 'admin.user', 'en', NULL, NULL),
(1242, 'admin.user.password_confirmation', 'Confirmation password', 'admin.user', 'en', NULL, NULL),
(1243, 'admin.user.username_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".@_\" ', 'admin.user', 'en', NULL, NULL),
(1244, 'admin.user.keep_password', 'Leave blank if you dont want to change the password', 'admin.user', 'en', NULL, NULL),
(1245, 'admin.user.select_roles', 'Select roles', 'admin.user', 'en', NULL, NULL),
(1246, 'admin.user.select_permission', 'Select permission', 'admin.user', 'en', NULL, NULL),
(1247, 'admin.user.add_permission', 'Add permission', 'admin.user', 'en', NULL, NULL),
(1248, 'admin.user.select_store', 'Select store', 'admin.user', 'en', NULL, NULL),
(1249, 'admin.user.add_new', 'Add new', 'admin.user', 'en', NULL, NULL),
(1250, 'admin.user.add_new_title', 'Add new user', 'admin.user', 'en', NULL, NULL),
(1251, 'admin.user.add_new_des', 'Create a new user', 'admin.user', 'en', NULL, NULL),
(1252, 'admin.user.list', 'User list', 'admin.user', 'en', NULL, NULL),
(1253, 'admin.user.title', 'User manager', 'admin.user', 'en', NULL, NULL),
(1254, 'admin.user.search_place', 'Search name', 'admin.user', 'en', NULL, NULL),
(1255, 'admin.user.search_place', 'Tìm tên', 'admin.user', 'vi', NULL, NULL),
(1256, 'admin.menu_titles.order_manager', 'Quản lý đơn hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1257, 'admin.menu_titles.order_manager', 'Order manager', 'admin.menu_titles', 'en', NULL, NULL),
(1258, 'admin.menu_titles.catalog_mamager', 'Sản phẩm & danh mục', 'admin.menu_titles', 'vi', NULL, NULL),
(1259, 'admin.menu_titles.catalog_mamager', 'Product & category', 'admin.menu_titles', 'en', NULL, NULL),
(1260, 'admin.menu_titles.customer_manager', 'Quản lý khách hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1261, 'admin.menu_titles.customer_manager', 'Customer manager', 'admin.menu_titles', 'en', NULL, NULL),
(1262, 'admin.menu_titles.admin_global', 'Quản lý chung', 'admin.menu_titles', 'vi', NULL, NULL),
(1263, 'admin.menu_titles.admin_global', 'Admin global', 'admin.menu_titles', 'en', NULL, NULL),
(1264, 'admin.menu_titles.ADMIN_SHOP', 'Cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1265, 'admin.menu_titles.ADMIN_SHOP', 'Admin shop', 'admin.menu_titles', 'en', NULL, NULL),
(1266, 'admin.menu_titles.ADMIN_CONTENT', 'Nội dung', 'admin.menu_titles', 'vi', NULL, NULL),
(1267, 'admin.menu_titles.ADMIN_CONTENT', 'Content', 'admin.menu_titles', 'en', NULL, NULL),
(1268, 'admin.menu_titles.ADMIN_EXTENSION', 'Phần mở rộng', 'admin.menu_titles', 'vi', NULL, NULL),
(1269, 'admin.menu_titles.ADMIN_EXTENSION', 'Extension', 'admin.menu_titles', 'en', NULL, NULL),
(1270, 'admin.menu_titles.ADMIN_SYSTEM', 'Cấu hình hệ thống', 'admin.menu_titles', 'vi', NULL, NULL),
(1271, 'admin.menu_titles.ADMIN_SYSTEM', 'System config', 'admin.menu_titles', 'en', NULL, NULL),
(1272, 'admin.menu_titles.page_manager', 'Quản lý trang', 'admin.menu_titles', 'vi', NULL, NULL),
(1273, 'admin.menu_titles.page_manager', 'Page manager', 'admin.menu_titles', 'en', NULL, NULL),
(1274, 'admin.menu_titles.order', 'Đơn hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1275, 'admin.menu_titles.order', 'Order', 'admin.menu_titles', 'en', NULL, NULL),
(1276, 'admin.menu_titles.order_status', 'Trạng thái đơn hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1277, 'admin.menu_titles.order_status', 'Order status', 'admin.menu_titles', 'en', NULL, NULL),
(1278, 'admin.menu_titles.payment_status', 'Trạng thái thanh toán', 'admin.menu_titles', 'vi', NULL, NULL),
(1279, 'admin.menu_titles.payment_status', 'Payment status', 'admin.menu_titles', 'en', NULL, NULL),
(1280, 'admin.menu_titles.shipping_status', 'Trạng thái vận chuyển', 'admin.menu_titles', 'vi', NULL, NULL),
(1281, 'admin.menu_titles.shipping_status', 'Shipping status', 'admin.menu_titles', 'en', NULL, NULL),
(1282, 'admin.menu_titles.product', 'Sản phẩm', 'admin.menu_titles', 'vi', NULL, NULL),
(1283, 'admin.menu_titles.product', 'Products', 'admin.menu_titles', 'en', NULL, NULL),
(1284, 'admin.menu_titles.category', 'Danh mục', 'admin.menu_titles', 'vi', NULL, NULL),
(1285, 'admin.menu_titles.category', 'Categories', 'admin.menu_titles', 'en', NULL, NULL),
(1286, 'admin.menu_titles.supplier', 'Nhà cung cấp', 'admin.menu_titles', 'vi', NULL, NULL),
(1287, 'admin.menu_titles.supplier', 'Suppliers', 'admin.menu_titles', 'en', NULL, NULL),
(1288, 'admin.menu_titles.brand', 'Thương hiệu', 'admin.menu_titles', 'vi', NULL, NULL),
(1289, 'admin.menu_titles.brand', 'Brands', 'admin.menu_titles', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1290, 'admin.menu_titles.attribute_group', 'Nhóm thuộc tính', 'admin.menu_titles', 'vi', NULL, NULL),
(1291, 'admin.menu_titles.attribute_group', 'Attribute group', 'admin.menu_titles', 'en', NULL, NULL),
(1292, 'admin.menu_titles.customer', 'Khách hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1293, 'admin.menu_titles.customer', 'Customers', 'admin.menu_titles', 'en', NULL, NULL),
(1294, 'admin.menu_titles.subscribe', 'Theo dõi', 'admin.menu_titles', 'vi', NULL, NULL),
(1295, 'admin.menu_titles.subscribe', 'Subscribe', 'admin.menu_titles', 'en', NULL, NULL),
(1296, 'admin.menu_titles.block_content', 'Khối nội dung', 'admin.menu_titles', 'vi', NULL, NULL),
(1297, 'admin.menu_titles.block_content', 'Block content', 'admin.menu_titles', 'en', NULL, NULL),
(1298, 'admin.menu_titles.block_link', 'Quản lý liên kết', 'admin.menu_titles', 'vi', NULL, NULL),
(1299, 'admin.menu_titles.block_link', 'Link manager', 'admin.menu_titles', 'en', NULL, NULL),
(1300, 'admin.menu_titles.modify_layout', 'Chỉnh sửa layout', 'admin.menu_titles', 'vi', NULL, NULL),
(1301, 'admin.menu_titles.modify_layout', 'Modify layout', 'admin.menu_titles', 'en', NULL, NULL),
(1302, 'admin.menu_titles.template_layout', 'Quản lý giao diện', 'admin.menu_titles', 'vi', NULL, NULL),
(1303, 'admin.menu_titles.template_layout', 'Template manager', 'admin.menu_titles', 'en', NULL, NULL),
(1304, 'admin.menu_titles.template', 'Giao diện', 'admin.menu_titles', 'vi', NULL, NULL),
(1305, 'admin.menu_titles.template', 'Template', 'admin.menu_titles', 'en', NULL, NULL),
(1306, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'vi', NULL, NULL),
(1307, 'admin.menu_titles.ADMIN_MARKETING', 'Marketing', 'admin.menu_titles', 'en', NULL, NULL),
(1308, 'admin.menu_titles.store_info', 'Thông tin cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1309, 'admin.menu_titles.store_info', 'Store infomation', 'admin.menu_titles', 'en', NULL, NULL),
(1310, 'admin.menu_titles.setting_system', 'Thiết lập hệ thống', 'admin.menu_titles', 'vi', NULL, NULL),
(1311, 'admin.menu_titles.setting_system', 'Setting system', 'admin.menu_titles', 'en', NULL, NULL),
(1312, 'admin.menu_titles.error_log', 'Lỗi & Nhật ký', 'admin.menu_titles', 'vi', NULL, NULL),
(1313, 'admin.menu_titles.error_log', 'Error & Logs', 'admin.menu_titles', 'en', NULL, NULL),
(1314, 'admin.menu_titles.email_template', 'Mẫu email', 'admin.menu_titles', 'vi', NULL, NULL),
(1315, 'admin.menu_titles.email_template', 'Email template', 'admin.menu_titles', 'en', NULL, NULL),
(1316, 'admin.menu_titles.language', 'Ngôn ngữ', 'admin.menu_titles', 'vi', NULL, NULL),
(1317, 'admin.menu_titles.language', 'Languages', 'admin.menu_titles', 'en', NULL, NULL),
(1318, 'admin.menu_titles.language_manager', 'Quản lý ngôn ngữ', 'admin.menu_titles', 'vi', NULL, NULL),
(1319, 'admin.menu_titles.language_manager', 'Language manager', 'admin.menu_titles', 'en', NULL, NULL),
(1320, 'admin.menu_titles.currency', 'Tiền tệ', 'admin.menu_titles', 'vi', NULL, NULL),
(1321, 'admin.menu_titles.currency', 'Currencies', 'admin.menu_titles', 'en', NULL, NULL),
(1322, 'admin.menu_titles.banner', 'Banner', 'admin.menu_titles', 'vi', NULL, NULL),
(1323, 'admin.menu_titles.banner', 'Banners', 'admin.menu_titles', 'en', NULL, NULL),
(1324, 'admin.menu_titles.backup_restore', 'Sao lưu & Phục hồi', 'admin.menu_titles', 'vi', NULL, NULL),
(1325, 'admin.menu_titles.backup_restore', 'Backup & Restore', 'admin.menu_titles', 'en', NULL, NULL),
(1326, 'admin.menu_titles.plugin', 'Tiện ích', 'admin.menu_titles', 'vi', NULL, NULL),
(1327, 'admin.menu_titles.plugin', 'Plugins', 'admin.menu_titles', 'en', NULL, NULL),
(1328, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'vi', NULL, NULL),
(1329, 'admin.menu_titles.webhook', 'Webhook', 'admin.menu_titles', 'en', NULL, NULL),
(1330, 'admin.menu_titles.report_manager', 'Quản lý báo cáo', 'admin.menu_titles', 'vi', NULL, NULL),
(1331, 'admin.menu_titles.report_manager', 'Report manager', 'admin.menu_titles', 'en', NULL, NULL),
(1332, 'admin.menu_titles.user_permission', 'Quyền hạn người dùng', 'admin.menu_titles', 'vi', NULL, NULL),
(1333, 'admin.menu_titles.user_permission', 'User permission', 'admin.menu_titles', 'en', NULL, NULL),
(1334, 'admin.menu_titles.css', 'Chỉnh sửa CSS', 'admin.menu_titles', 'vi', NULL, NULL),
(1335, 'admin.menu_titles.css', 'CSS style', 'admin.menu_titles', 'en', NULL, NULL),
(1336, 'admin.menu_titles.seo_manager', 'Quản lý SEO', 'admin.menu_titles', 'vi', NULL, NULL),
(1337, 'admin.menu_titles.seo_manager', 'SEO manager', 'admin.menu_titles', 'en', NULL, NULL),
(1338, 'admin.menu_titles.users', 'Người dùng', 'admin.menu_titles', 'vi', NULL, NULL),
(1339, 'admin.menu_titles.users', 'Users', 'admin.menu_titles', 'en', NULL, NULL),
(1340, 'admin.menu_titles.roles', 'Nhóm quyền', 'admin.menu_titles', 'vi', NULL, NULL),
(1341, 'admin.menu_titles.roles', 'Roles', 'admin.menu_titles', 'en', NULL, NULL),
(1342, 'admin.menu_titles.permission', 'Quyền hạn', 'admin.menu_titles', 'vi', NULL, NULL),
(1343, 'admin.menu_titles.permission', 'Permission', 'admin.menu_titles', 'en', NULL, NULL),
(1344, 'admin.menu_titles.operation_log', 'Nhật ký truy cập', 'admin.menu_titles', 'vi', NULL, NULL),
(1345, 'admin.menu_titles.operation_log', 'Log access', 'admin.menu_titles', 'en', NULL, NULL),
(1346, 'admin.menu_titles.seo_config', 'Cấu hình SEO', 'admin.menu_titles', 'vi', NULL, NULL),
(1347, 'admin.menu_titles.seo_config', 'SEO config', 'admin.menu_titles', 'en', NULL, NULL),
(1348, 'admin.menu_titles.news', 'Tin tức', 'admin.menu_titles', 'vi', NULL, NULL),
(1349, 'admin.menu_titles.news', 'News', 'admin.menu_titles', 'en', NULL, NULL),
(1350, 'admin.menu_titles.env_config', 'Cấu hình môi trường', 'admin.menu_titles', 'vi', NULL, NULL),
(1351, 'admin.menu_titles.env_config', 'Environment Config', 'admin.menu_titles', 'en', NULL, NULL),
(1352, 'admin.menu_titles.report_product', 'Báo cáo sản phẩm', 'admin.menu_titles', 'vi', NULL, NULL),
(1353, 'admin.menu_titles.report_product', 'Report product', 'admin.menu_titles', 'en', NULL, NULL),
(1354, 'admin.menu_titles.store_config', 'Cấu hình cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1355, 'admin.menu_titles.store_config', 'Store config', 'admin.menu_titles', 'en', NULL, NULL),
(1356, 'admin.menu_titles.cache_manager', 'Bộ nhớ đệm', 'admin.menu_titles', 'vi', NULL, NULL),
(1357, 'admin.menu_titles.cache_manager', 'Cache', 'admin.menu_titles', 'en', NULL, NULL),
(1358, 'admin.menu_titles.api_manager', 'Quản lý API', 'admin.menu_titles', 'vi', NULL, NULL),
(1359, 'admin.menu_titles.api_manager', 'API manager', 'admin.menu_titles', 'en', NULL, NULL),
(1360, 'admin.menu_titles.store_maintain', 'Bảo trì website', 'admin.menu_titles', 'vi', NULL, NULL),
(1361, 'admin.menu_titles.store_maintain', 'Website maintain', 'admin.menu_titles', 'en', NULL, NULL),
(1362, 'admin.menu_titles.tax', 'Thuế', 'admin.menu_titles', 'vi', NULL, NULL),
(1363, 'admin.menu_titles.tax', 'Tax', 'admin.menu_titles', 'en', NULL, NULL),
(1364, 'admin.menu_titles.weight', 'Khối lượng', 'admin.menu_titles', 'vi', NULL, NULL),
(1365, 'admin.menu_titles.weight', 'Weight', 'admin.menu_titles', 'en', NULL, NULL),
(1366, 'admin.menu_titles.length', 'Kích thước', 'admin.menu_titles', 'vi', NULL, NULL),
(1367, 'admin.menu_titles.length', 'Length', 'admin.menu_titles', 'en', NULL, NULL),
(1368, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Thiết lập cửa hàng', 'admin.menu_titles', 'vi', NULL, NULL),
(1369, 'admin.menu_titles.ADMIN_SHOP_SETTING', 'Shop setting', 'admin.menu_titles', 'en', NULL, NULL),
(1370, 'admin.menu_titles.api_config', 'Cấu hình API', 'admin.menu_titles', 'vi', NULL, NULL),
(1371, 'admin.menu_titles.api_config', 'API config', 'admin.menu_titles', 'en', NULL, NULL),
(1372, 'admin.menu_titles.layout', 'Bố cục', 'admin.menu_titles', 'vi', NULL, NULL),
(1373, 'admin.menu_titles.layout', 'Layout', 'admin.menu_titles', 'en', NULL, NULL),
(1374, 'admin.menu_titles.custom_field', 'Tùy chỉnh dữ liệu', 'admin.menu_titles', 'vi', NULL, NULL),
(1375, 'admin.menu_titles.custom_field', 'Custom field data', 'admin.menu_titles', 'en', NULL, NULL),
(1376, 'admin.menu_titles.security', 'Bảo mật', 'admin.menu_titles', 'vi', NULL, NULL),
(1377, 'admin.menu_titles.security', 'Security', 'admin.menu_titles', 'en', NULL, NULL),
(1378, 'admin.menu_titles.localization', 'Địa phương hóa', 'admin.menu_titles', 'vi', NULL, NULL),
(1379, 'admin.menu_titles.localization', 'Localization', 'admin.menu_titles', 'en', NULL, NULL),
(1380, 'admin.menu_titles.localisation', 'Địa phương hóa', 'admin.menu_titles', 'vi', NULL, NULL),
(1381, 'admin.menu_titles.localisation', 'Localisation', 'admin.menu_titles', 'en', NULL, NULL),
(1382, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'vi', NULL, NULL),
(1383, 'admin.menu_titles.menu', 'Menu', 'admin.menu_titles', 'en', NULL, NULL),
(1384, 'admin.menu_titles.config_store_default', 'Cấu hình mặc định', 'admin.menu_titles', 'vi', NULL, NULL),
(1385, 'admin.menu_titles.config_store_default', 'Config default', 'admin.menu_titles', 'en', NULL, NULL),
(1386, 'admin.menu_titles.password_policy', 'Chính sách mật khẩu', 'admin.menu_titles', 'vi', NULL, NULL),
(1387, 'admin.menu_titles.password_policy', 'Password policy', 'admin.menu_titles', 'en', NULL, NULL),
(1388, 'admin.login_success', 'Login success!', 'admin', 'en', NULL, NULL),
(1389, 'admin.login_success', 'Đăng nhập thành công', 'admin', 'vi', NULL, NULL),
(1390, 'admin.access_denied', 'Access denied!', 'admin', 'en', NULL, NULL),
(1391, 'admin.access_denied', 'Truy cập bị từ chối', 'admin', 'vi', NULL, NULL),
(1392, 'admin.max_c', 'Maximum :max characters', 'admin', 'en', NULL, NULL),
(1393, 'admin.min_c', 'Minimum :min characters', 'admin', 'en', NULL, NULL),
(1394, 'admin.min_v', 'Greater than :value', 'admin', 'en', NULL, NULL),
(1395, 'admin.max_v', 'Less than :value', 'admin', 'en', NULL, NULL),
(1396, 'admin.max_c', 'Tối đa :max kí tự', 'admin', 'vi', NULL, NULL),
(1397, 'admin.min_c', 'Tối thiểu :min kí tự', 'admin', 'vi', NULL, NULL),
(1398, 'admin.min_v', 'Lớn hơn :value', 'admin', 'vi', NULL, NULL),
(1399, 'admin.max_v', 'Nhỏ hơn :value', 'admin', 'vi', NULL, NULL),
(1400, 'admin.data_not_found_detail', 'Dữ liệu không tồn tại :msg', 'admin', 'vi', NULL, NULL),
(1401, 'admin.data_not_found_detail', 'Data not found :msg', 'admin', 'en', NULL, NULL),
(1402, 'admin.login_successful', 'Đăng nhập thành công', 'admin', 'vi', NULL, NULL),
(1403, 'admin.login_successful', 'Login success', 'admin', 'en', NULL, NULL),
(1404, 'admin.add_new', 'Add new', 'admin', 'en', NULL, NULL),
(1405, 'admin.add_new', 'Thêm mới', 'admin', 'vi', NULL, NULL),
(1406, 'admin.not_empty', 'Not empty', 'admin', 'en', NULL, NULL),
(1407, 'admin.not_empty', 'Không được rỗng', 'admin', 'vi', NULL, NULL),
(1408, 'admin.only_numeric', 'Enly numeric', 'admin', 'en', NULL, NULL),
(1409, 'admin.only_numeric', 'Chỉ dùng số', 'admin', 'vi', NULL, NULL),
(1410, 'admin.store_swicth_success', 'Switch store success!', 'admin', 'en', NULL, NULL),
(1411, 'admin.store_swicth_success', 'Chuyển cửa hàng thành công!', 'admin', 'vi', NULL, NULL),
(1412, 'admin.dashboard', 'Dashboard', 'admin', 'en', NULL, NULL),
(1413, 'admin.dashboard', 'Tổng hợp', 'admin', 'vi', NULL, NULL),
(1414, 'admin.data_not_found', 'Data not found!', 'admin', 'en', NULL, NULL),
(1415, 'admin.data_not_found', 'Không có dữ liệu!', 'admin', 'vi', NULL, NULL),
(1416, 'admin.data_not_found_msg', 'The data you are accessing does not exist.', 'admin', 'en', NULL, NULL),
(1417, 'admin.data_not_found_msg', 'Dữ liệu bạn đang truy cập không tồn tại.', 'admin', 'vi', NULL, NULL),
(1418, 'admin.deny', 'Access denied!', 'admin', 'en', NULL, NULL),
(1419, 'admin.deny', 'Truy cập từ chối!', 'admin', 'vi', NULL, NULL),
(1420, 'admin.setting_account', 'Setting account', 'admin', 'en', NULL, NULL),
(1421, 'admin.setting_account', 'Thiết lập tài khoản', 'admin', 'vi', NULL, NULL),
(1422, 'admin.failed', 'Auth failed', 'admin', 'en', NULL, NULL),
(1423, 'admin.failed', 'Chứng thực thất bại', 'admin', 'vi', NULL, NULL),
(1424, 'admin.maintain_enable', 'Active ', 'admin', 'en', NULL, NULL),
(1425, 'admin.maintain_enable', 'Hoạt động', 'admin', 'vi', NULL, NULL),
(1426, 'admin.maintain_disable', 'Maintenance ', 'admin', 'en', NULL, NULL),
(1427, 'admin.maintain_disable', 'Bảo trì', 'admin', 'vi', NULL, NULL),
(1428, 'admin.position_all', 'All pages', 'admin', 'en', NULL, NULL),
(1429, 'admin.position_all', 'Tất cả các trang', 'admin', 'vi', NULL, NULL),
(1430, 'admin.theme', 'Theme', 'admin', 'en', NULL, NULL),
(1431, 'admin.theme', 'Mẫu', 'admin', 'vi', NULL, NULL),
(1432, 'admin.select_store', 'Select store', 'admin', 'en', NULL, NULL),
(1433, 'admin.select_store', 'Chọn cửa hàng', 'admin', 'vi', NULL, NULL),
(1434, 'admin.welcome_dasdboard', 'Welcome to admin system!', 'admin', 'en', NULL, NULL),
(1435, 'admin.welcome_dasdboard', 'Chào mừng đến với hệ thống!', 'admin', 'vi', NULL, NULL),
(1436, 'admin.deny_msg', 'You need permission to access the system!', 'admin', 'en', NULL, NULL),
(1437, 'admin.deny_content', 'Permission denied!', 'admin', 'en', NULL, NULL),
(1438, 'admin.deny_msg', 'Bạn cần thêm quyền hạn để truy cập hệ thống!', 'admin', 'vi', NULL, NULL),
(1439, 'admin.deny_content', 'Bạn không có đủ quyền hạn!', 'admin', 'vi', NULL, NULL),
(1440, 'admin.home', 'Trang chủ', 'admin', 'vi', NULL, NULL),
(1441, 'admin.home', 'Home', 'admin', 'en', NULL, NULL),
(1442, 'admin.choose_icon', 'Chọn icon', 'admin', 'vi', NULL, NULL),
(1443, 'admin.choose_icon', 'Chose icon', 'admin', 'en', NULL, NULL),
(1444, 'admin.file_manager', 'Quản lý file', 'admin', 'vi', NULL, NULL),
(1445, 'admin.file_manager', 'File manager', 'admin', 'en', NULL, NULL),
(1446, 'admin.notice_new_order', 'Bạn có :total đơn hàng mới', 'admin', 'vi', NULL, NULL),
(1447, 'admin.notice_new_order', 'You have :total new orders', 'admin', 'en', NULL, NULL),
(1448, 'admin.gt_numeric_0', 'Giá trị  phải lớn hơn 0!', 'admin', 'vi', NULL, NULL),
(1449, 'admin.gt_numeric_0', 'Value must greater zero!', 'admin', 'en', NULL, NULL),
(1450, 'admin.api_connection.api_mode_help', 'ON/OFF API', 'admin.api_connection', 'en', NULL, NULL),
(1451, 'admin.api_connection.api_mode_help', 'TẮT/MỞ API', 'admin.api_connection', 'vi', NULL, NULL),
(1452, 'admin.api_connection.api_mode', 'ON/OFF API', 'admin.api_connection', 'en', NULL, NULL),
(1453, 'admin.api_connection.api_mode', 'TẮT/MỞ API', 'admin.api_connection', 'vi', NULL, NULL),
(1454, 'admin.api_connection.list', 'API connection list', 'admin.api_connection', 'en', NULL, NULL),
(1455, 'admin.api_connection.list', 'Danh sách API connection', 'admin.api_connection', 'vi', NULL, NULL),
(1456, 'admin.api_connection.description', 'Mô tả', 'admin.api_connection', 'vi', NULL, NULL),
(1457, 'admin.api_connection.description', 'Description', 'admin.api_connection', 'en', NULL, NULL),
(1458, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'vi', NULL, NULL),
(1459, 'admin.api_connection.apikey', 'Api key', 'admin.api_connection', 'en', NULL, NULL),
(1460, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'vi', NULL, NULL),
(1461, 'admin.api_connection.connection', 'Api connection', 'admin.api_connection', 'en', NULL, NULL),
(1462, 'admin.api_connection.expire', 'Hết hạn', 'admin.api_connection', 'vi', NULL, NULL),
(1463, 'admin.api_connection.expire', 'Expire', 'admin.api_connection', 'en', NULL, NULL),
(1464, 'admin.api_connection.last_active', 'Lần cuối truy cập', 'admin.api_connection', 'vi', NULL, NULL),
(1465, 'admin.api_connection.last_active', 'Last active', 'admin.api_connection', 'en', NULL, NULL),
(1466, 'admin.api_connection.status', 'Trạng thái', 'admin.api_connection', 'vi', NULL, NULL),
(1467, 'admin.api_connection.status', 'Status', 'admin.api_connection', 'en', NULL, NULL),
(1468, 'admin.api_connection.validate_regex', 'Chỉ sử dụng các kí tự : a-z0-9', 'admin.api_connection', 'vi', NULL, NULL),
(1469, 'admin.api_connection.validate_regex', 'Only use characters : a-z0-9', 'admin.api_connection', 'en', NULL, NULL),
(1470, 'admin.api_connection.create', 'Tạo mới connection', 'admin.api_connection', 'vi', NULL, NULL),
(1471, 'admin.api_connection.create', 'Creat new connection', 'admin.api_connection', 'en', NULL, NULL),
(1472, 'admin.api_connection.edit', 'Chỉnh sửa connection', 'admin.api_connection', 'vi', NULL, NULL),
(1473, 'admin.api_connection.edit', 'Edit connection', 'admin.api_connection', 'en', NULL, NULL),
(1474, 'admin.api_connection.api_connection_required_help', '<ul><li>Nếu không sử dụng API, hãy hãy chuyển sang trạng thái \"OFF API\"</li><li>Nếu không sử dụng apikey và apiconnection, hãy chuyển sang trạng thái \"OFF CONNECTION\"</li></ul>\n                <a href=\"https://s-cart.org/vi/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\">Xem chi tiết ở đây</i></a>\n                ', 'admin.api_connection', 'vi', NULL, NULL),
(1475, 'admin.api_connection.api_connection_required_help', '<ul><li>If not using API, please switch to \"OFF API\" state</li><li>If apikey and apiconnection are not used, switch to \"OFF CONNECTION\" state</li></ul>\n                <a href=\"https://s-cart.org/docs/developer/about-api-scart.html\" target=\"_new\"><i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>See full infomation</a>\n                ', 'admin.api_connection', 'en', NULL, NULL),
(1476, 'admin.result_item', 'Showing <b>:item_from</b>-<b>:item_to</b> of <b>:total</b> results</b>', 'admin', 'en', NULL, NULL),
(1477, 'admin.result_item', 'Hiển thị <b>:item_from</b>-<b>:item_to</b> của <b>:total</b> kết quả</b>', 'admin', 'vi', NULL, NULL),
(1478, 'admin.method_not_allow', 'Method not allow', 'admin', 'en', NULL, NULL),
(1479, 'admin.method_not_allow', 'Phương thức không được phép', 'admin', 'vi', NULL, NULL),
(1480, 'admin.back_list', 'Back list', 'admin', 'en', NULL, NULL),
(1481, 'admin.back_list', 'Trở lại danh sách', 'admin', 'vi', NULL, NULL),
(1482, 'admin.msg_change_success', 'All changes have been updated', 'admin', 'en', NULL, NULL),
(1483, 'admin.msg_change_success', 'Thay đổi đã được cập nhật', 'admin', 'vi', NULL, NULL),
(1484, 'admin.updated_at', 'Updated at', 'admin', 'en', NULL, NULL),
(1485, 'admin.updated_at', 'Cập nhật lúc', 'admin', 'vi', NULL, NULL),
(1486, 'admin.created_at', 'Created at', 'admin', 'en', NULL, NULL),
(1487, 'admin.created_at', 'Tạo lúc', 'admin', 'vi', NULL, NULL),
(1488, 'admin.remove_dont_permisison', 'Dont permission remove ', 'admin', 'en', NULL, NULL),
(1489, 'admin.remove_dont_permisison', 'Không có quyền gỡ bỏ', 'admin', 'vi', NULL, NULL),
(1490, 'admin.delete_dont_permisison', 'Dont permission delete ', 'admin', 'en', NULL, NULL),
(1491, 'admin.delete_dont_permisison', 'Không có quyền xóa', 'admin', 'vi', NULL, NULL),
(1492, 'admin.attribute_group.list', 'Danh sách nhóm thuộc tính', 'admin.attribute_group', 'vi', NULL, NULL),
(1493, 'admin.attribute_group.list', 'Attribute group list', 'admin.attribute_group', 'en', NULL, NULL),
(1494, 'admin.attribute_group.name', 'Tên', 'admin.attribute_group', 'vi', NULL, NULL),
(1495, 'admin.attribute_group.name', 'Name', 'admin.attribute_group', 'en', NULL, NULL),
(1496, 'admin.attribute_group.type', 'Loại', 'admin.attribute_group', 'vi', NULL, NULL),
(1497, 'admin.attribute_group.type', 'Type', 'admin.attribute_group', 'en', NULL, NULL),
(1498, 'admin.order.search', 'Tìm đơn hàng', 'admin.order', 'vi', NULL, NULL),
(1499, 'admin.order.search', 'Search order', 'admin.order', 'en', NULL, NULL),
(1500, 'admin.permission.name', 'Tên', 'admin.permission', 'vi', NULL, NULL),
(1501, 'admin.permission.name', 'Name', 'admin.permission', 'en', NULL, NULL),
(1502, 'admin.permission.list', 'Dánh sách quyền', 'admin.permission', 'vi', NULL, NULL),
(1503, 'admin.permission.list', 'Permission list', 'admin.permission', 'en', NULL, NULL),
(1504, 'admin.permission.slug', 'Slug', 'admin.permission', 'vi', NULL, NULL),
(1505, 'admin.permission.slug', 'Slug', 'admin.permission', 'en', NULL, NULL),
(1506, 'admin.permission.select_http_uri', 'Chọn http uri', 'admin.permission', 'vi', NULL, NULL),
(1507, 'admin.permission.select_http_uri', 'Select http uri', 'admin.permission', 'en', NULL, NULL),
(1508, 'admin.permission.method_placeholder', 'Các quyền', 'admin.permission', 'vi', NULL, NULL),
(1509, 'admin.permission.method_placeholder', 'Permission detail', 'admin.permission', 'en', NULL, NULL),
(1510, 'admin.permission.http_path', 'Http path', 'admin.permission', 'vi', NULL, NULL),
(1511, 'admin.permission.http_path', 'Http path', 'admin.permission', 'en', NULL, NULL),
(1512, 'admin.permission.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'vi', NULL, NULL),
(1513, 'admin.permission.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\"', 'admin.permission', 'en', NULL, NULL),
(1514, 'admin.permission.add_new_des', 'Tạo mới một quyền', 'admin.permission', 'vi', NULL, NULL),
(1515, 'admin.permission.add_new_des', 'Create new permission', 'admin.permission', 'en', NULL, NULL),
(1516, 'admin.permission.add_new_title', 'Tạo quyền', 'admin.permission', 'vi', NULL, NULL),
(1517, 'admin.permission.add_new_title', 'Create permission', 'admin.permission', 'en', NULL, NULL),
(1518, 'admin.backup.title', 'Danh sách sao lưu', 'admin.backup', 'vi', NULL, NULL),
(1519, 'admin.backup.title', 'Backup list', 'admin.backup', 'en', NULL, NULL),
(1520, 'admin.backup.processing', 'Đang xử lý...', 'admin.backup', 'vi', NULL, NULL),
(1521, 'admin.backup.processing', 'Processing...', 'admin.backup', 'en', NULL, NULL),
(1522, 'admin.backup.guide', '<span class=\"text-danger\">Chú ý: Bạn cần phải cài đặt đường dẫn hệ thống chính xác. Xem hướng dẫn <a target=_new href=\"https://s-cart.org/guide/backup.html?lang=vi\">TẠI ĐÂY</a></span>', 'admin.backup', 'vi', NULL, NULL),
(1523, 'admin.backup.generate_now', 'Tạo một backup ngay', 'admin.backup', 'vi', NULL, NULL),
(1524, 'admin.backup.manager', 'Quản lý sao lưu', 'admin.backup', 'vi', NULL, NULL),
(1525, 'admin.backup.name', 'Tên file', 'admin.backup', 'vi', NULL, NULL),
(1526, 'admin.backup.sort', 'Thứ tự', 'admin.backup', 'vi', NULL, NULL),
(1527, 'admin.backup.date', 'Thời gian', 'admin.backup', 'vi', NULL, NULL),
(1528, 'admin.backup.size', 'Kích thước', 'admin.backup', 'vi', NULL, NULL),
(1529, 'admin.backup.download', 'Tải về', 'admin.backup', 'vi', NULL, NULL),
(1530, 'admin.backup.remove', 'Gỡ bỏ', 'admin.backup', 'vi', NULL, NULL),
(1531, 'admin.backup.restore', 'Phục hồi', 'admin.backup', 'vi', NULL, NULL),
(1532, 'admin.backup.remove_success', 'Xóa file thành công!', 'admin.backup', 'vi', NULL, NULL),
(1533, 'admin.backup.restore_success', 'Phục hồi dữ liệu thành công!', 'admin.backup', 'vi', NULL, NULL),
(1534, 'admin.backup.generate_success', 'Tạo file backup thành công!', 'admin.backup', 'vi', NULL, NULL),
(1535, 'admin.backup.limit_backup', 'Bạn chỉ được tạo tối đa 10 bản sao lưu!', 'admin.backup', 'vi', NULL, NULL),
(1536, 'admin.backup.guide', '<span class=\"text-danger\">NOTE: To use MySQL server on the command line, you must have the correct system path. This is usually done automatically. Read document in <a target=_new href=\"https://s-cart.org/guide/backup.html\">HERE</a></span>', 'admin.backup', 'en', NULL, NULL),
(1537, 'admin.backup.generate_now', 'Gererate a backup now', 'admin.backup', 'en', NULL, NULL),
(1538, 'admin.backup.manager', 'Backup management', 'admin.backup', 'en', NULL, NULL),
(1539, 'admin.backup.name', 'File name', 'admin.backup', 'en', NULL, NULL),
(1540, 'admin.backup.sort', 'Sort', 'admin.backup', 'en', NULL, NULL),
(1541, 'admin.backup.date', 'Date', 'admin.backup', 'en', NULL, NULL),
(1542, 'admin.backup.size', 'Size', 'admin.backup', 'en', NULL, NULL),
(1543, 'admin.backup.download', 'Download', 'admin.backup', 'en', NULL, NULL),
(1544, 'admin.backup.remove', 'Remove', 'admin.backup', 'en', NULL, NULL),
(1545, 'admin.backup.restore', 'Restore', 'admin.backup', 'en', NULL, NULL),
(1546, 'admin.backup.remove_success', 'Remove successful!', 'admin.backup', 'en', NULL, NULL),
(1547, 'admin.backup.restore_success', 'Restore successful!', 'admin.backup', 'en', NULL, NULL),
(1548, 'admin.backup.generate_success', 'Create successful backup file!', 'admin.backup', 'en', NULL, NULL),
(1549, 'admin.backup.limit_backup', 'You cannot create more than 10 copies', 'admin.backup', 'en', NULL, NULL),
(1550, 'admin.banner.type', 'Loại', 'admin.banner', 'vi', NULL, NULL),
(1551, 'admin.banner.type', 'Type', 'admin.banner', 'en', NULL, NULL),
(1552, 'admin.banner.add_new', 'Thêm mới banner', 'admin.banner', 'vi', NULL, NULL),
(1553, 'admin.banner.add_new', 'Add new banner', 'admin.banner', 'en', NULL, NULL),
(1554, 'admin.banner.image', 'Hình ảnh', 'admin.banner', 'vi', NULL, NULL),
(1555, 'admin.banner.image', 'Image', 'admin.banner', 'en', NULL, NULL),
(1556, 'admin.banner.title', 'Tiêu đề', 'admin.banner', 'vi', NULL, NULL),
(1557, 'admin.banner.title', 'Title', 'admin.banner', 'en', NULL, NULL),
(1558, 'admin.banner.url', 'URL', 'admin.banner', 'vi', NULL, NULL),
(1559, 'admin.banner.url', 'URL', 'admin.banner', 'en', NULL, NULL),
(1560, 'admin.banner.sort', 'Thứ tự', 'admin.banner', 'vi', NULL, NULL),
(1561, 'admin.banner.sort', 'Sort', 'admin.banner', 'en', NULL, NULL),
(1562, 'admin.banner.status', 'Trạng thái', 'admin.banner', 'vi', NULL, NULL),
(1563, 'admin.banner.status', 'Status', 'admin.banner', 'en', NULL, NULL),
(1564, 'admin.banner.click', 'Bấm chuột', 'admin.banner', 'vi', NULL, NULL),
(1565, 'admin.banner.click', 'Click', 'admin.banner', 'en', NULL, NULL),
(1566, 'admin.banner.target', 'Target', 'admin.banner', 'vi', NULL, NULL),
(1567, 'admin.banner.target', 'Target', 'admin.banner', 'en', NULL, NULL),
(1568, 'admin.banner.select_target', 'Chọn target', 'admin.banner', 'vi', NULL, NULL),
(1569, 'admin.banner.select_target', 'Select target', 'admin.banner', 'en', NULL, NULL),
(1570, 'admin.banner.list', 'Danh sách banner', 'admin.banner', 'vi', NULL, NULL),
(1571, 'admin.banner.list', 'Banner list', 'admin.banner', 'en', NULL, NULL),
(1572, 'admin.banner_type.list', 'Loại banner', 'admin.banner', 'vi', NULL, NULL),
(1573, 'admin.banner_type.list', 'Banner type list', 'admin.banner', 'en', NULL, NULL),
(1574, 'admin.banner_type.add_new_title', 'Thêm loại mới', 'admin.banner', 'vi', NULL, NULL),
(1575, 'admin.banner_type.add_new_title', 'Add new type', 'admin.banner', 'en', NULL, NULL),
(1576, 'admin.banner_type.code', 'Mã', 'admin.banner', 'vi', NULL, NULL),
(1577, 'admin.banner_type.code', 'Code', 'admin.banner', 'en', NULL, NULL),
(1578, 'admin.banner_type.name', 'Tên', 'admin.banner', 'vi', NULL, NULL),
(1579, 'admin.banner_type.name', 'Name', 'admin.banner', 'en', NULL, NULL),
(1580, 'admin.brand.list', 'Danh sách thương hiệu', 'admin.brand', 'vi', NULL, NULL),
(1581, 'admin.brand.list', 'Brand list', 'admin.brand', 'en', NULL, NULL),
(1582, 'admin.brand.add_new_title', 'Thêm mới thương hiệu', 'admin.brand', 'vi', NULL, NULL),
(1583, 'admin.brand.add_new_title', 'Add new brand', 'admin.brand', 'en', NULL, NULL),
(1584, 'admin.brand.image', 'Hình ảnh', 'admin.brand', 'vi', NULL, NULL),
(1585, 'admin.brand.image', 'Image', 'admin.brand', 'en', NULL, NULL),
(1586, 'admin.brand.name', 'Tên', 'admin.brand', 'vi', NULL, NULL),
(1587, 'admin.brand.name', 'Name', 'admin.brand', 'en', NULL, NULL),
(1588, 'admin.brand.sort', 'Thứ tự', 'admin.brand', 'vi', NULL, NULL),
(1589, 'admin.brand.sort', 'Sort', 'admin.brand', 'en', NULL, NULL),
(1590, 'admin.brand.status', 'Trạng thái', 'admin.brand', 'vi', NULL, NULL),
(1591, 'admin.brand.status', 'Status', 'admin.brand', 'en', NULL, NULL),
(1592, 'admin.brand.alias', 'Alias', 'admin.brand', 'vi', NULL, NULL),
(1593, 'admin.brand.alias', 'Alias', 'admin.brand', 'en', NULL, NULL),
(1594, 'admin.brand.url', 'Url', 'admin.brand', 'vi', NULL, NULL),
(1595, 'admin.brand.url', 'Url', 'admin.brand', 'en', NULL, NULL),
(1596, 'admin.brand.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'vi', NULL, NULL),
(1597, 'admin.brand.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\"', 'admin.brand', 'en', NULL, NULL),
(1598, 'admin.cache.title', 'Cấu hình bộ nhớ Cache', 'admin.cache', 'vi', NULL, NULL),
(1599, 'admin.cache.title', 'config cache manager', 'admin.cache', 'en', NULL, NULL),
(1600, 'admin.cache.cache_clear_processing', 'Đang xóa Cache', 'admin.cache', 'vi', NULL, NULL),
(1601, 'admin.cache.cache_clear_processing', 'Cache clearing', 'admin.cache', 'en', NULL, NULL),
(1602, 'admin.cache.cache_status', 'Trạng thái', 'admin.cache', 'vi', NULL, NULL),
(1603, 'admin.cache.cache_status', 'Status', 'admin.cache', 'en', NULL, NULL),
(1604, 'admin.cache.cache_clear_all', 'Xóa tất cả Cache', 'admin.cache', 'vi', NULL, NULL),
(1605, 'admin.cache.cache_clear_all', 'Clear all cache', 'admin.cache', 'en', NULL, NULL),
(1606, 'admin.cache.cache_clear_success', 'Đã xóa cache xong', 'admin.cache', 'vi', NULL, NULL),
(1607, 'admin.cache.cache_clear_success', 'Clear cache success', 'admin.cache', 'en', NULL, NULL),
(1608, 'admin.cache.cache_refresh', 'Làm mới cache', 'admin.cache', 'vi', NULL, NULL),
(1609, 'admin.cache.cache_refresh', 'Cache refresh', 'admin.cache', 'en', NULL, NULL),
(1610, 'admin.cache.cache_clear', 'Xóa cache', 'admin.cache', 'vi', NULL, NULL),
(1611, 'admin.cache.cache_clear', 'Clear cache', 'admin.cache', 'en', NULL, NULL),
(1612, 'admin.cache.cache_all', 'Cache tất cả', 'admin.cache', 'vi', NULL, NULL),
(1613, 'admin.cache.cache_all', 'Cache all', 'admin.cache', 'en', NULL, NULL),
(1614, 'admin.cache.cache_time', 'Thời gian cache (giây)', 'admin.cache', 'vi', NULL, NULL),
(1615, 'admin.cache.cache_time', 'Cache time (s)', 'admin.cache', 'en', NULL, NULL),
(1616, 'admin.cache.value', 'Giá trị', 'admin.cache', 'vi', NULL, NULL),
(1617, 'admin.cache.value', 'Value', 'admin.cache', 'en', NULL, NULL),
(1618, 'admin.cache.field', 'Trường', 'admin.cache', 'vi', NULL, NULL),
(1619, 'admin.cache.field', 'Field', 'admin.cache', 'en', NULL, NULL),
(1620, 'admin.cache.cache_category', 'Cache Danh mục sản phẩm', 'admin.cache', 'vi', NULL, NULL),
(1621, 'admin.cache.cache_product', 'Cache Sản phẩm', 'admin.cache', 'vi', NULL, NULL),
(1622, 'admin.cache.cache_news', 'Cache Tin tức/Blog', 'admin.cache', 'vi', NULL, NULL),
(1623, 'admin.cache.cache_category_cms', 'Cache Danh mục CMS', 'admin.cache', 'vi', NULL, NULL),
(1624, 'admin.cache.cache_content_cms', 'Cache Nội dung CMS', 'admin.cache', 'vi', NULL, NULL),
(1625, 'admin.cache.cache_page', 'Cache Trang viết', 'admin.cache', 'vi', NULL, NULL),
(1626, 'admin.cache.cache_store', 'Cache Cửa hàng', 'admin.cache', 'vi', NULL, NULL),
(1627, 'admin.cache.cache_country', 'Cache Quốc gia', 'admin.cache', 'vi', NULL, NULL),
(1628, 'admin.cache.cache_category', 'Cache categoty', 'admin.cache', 'en', NULL, NULL),
(1629, 'admin.cache.cache_product', 'Cache product', 'admin.cache', 'en', NULL, NULL),
(1630, 'admin.cache.cache_news', 'Cache News/Blog', 'admin.cache', 'en', NULL, NULL),
(1631, 'admin.cache.cache_category_cms', 'Cache Category CMS', 'admin.cache', 'en', NULL, NULL),
(1632, 'admin.cache.cache_content_cms', 'Cache CMS content', 'admin.cache', 'en', NULL, NULL),
(1633, 'admin.cache.cache_page', 'Cache page', 'admin.cache', 'en', NULL, NULL),
(1634, 'admin.cache.cache_store', 'Cache Store', 'admin.cache', 'en', NULL, NULL),
(1635, 'admin.cache.cache_country', 'Cache country', 'admin.cache', 'en', NULL, NULL),
(1636, 'admin.category.list', 'Danh sách danh mục', 'admin.category', 'vi', NULL, NULL),
(1637, 'admin.category.list', 'Category list', 'admin.category', 'en', NULL, NULL),
(1638, 'admin.category.add_new_title', 'Thêm mới danh mục', 'admin.category', 'vi', NULL, NULL),
(1639, 'admin.category.add_new_title', 'Add new category', 'admin.category', 'en', NULL, NULL),
(1640, 'admin.category.add_new_des', 'Thêm mới', 'admin.category', 'vi', NULL, NULL),
(1641, 'admin.category.add_new_des', 'Add new', 'admin.category', 'en', NULL, NULL),
(1642, 'admin.category.image', 'Hình ảnh', 'admin.category', 'vi', NULL, NULL),
(1643, 'admin.category.image', 'Image', 'admin.category', 'en', NULL, NULL),
(1644, 'admin.category.title', 'Tên', 'admin.category', 'vi', NULL, NULL),
(1645, 'admin.category.title', 'Name', 'admin.category', 'en', NULL, NULL),
(1646, 'admin.category.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'vi', NULL, NULL),
(1647, 'admin.category.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'vi', NULL, NULL),
(1648, 'admin.category.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.category', 'en', NULL, NULL),
(1649, 'admin.category.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.category', 'en', NULL, NULL),
(1650, 'admin.category.keyword', 'Từ khóa', 'admin.category', 'vi', NULL, NULL),
(1651, 'admin.category.keyword', 'Keyword', 'admin.category', 'en', NULL, NULL),
(1652, 'admin.category.description', 'Mô tả', 'admin.category', 'vi', NULL, NULL),
(1653, 'admin.category.description', 'Description', 'admin.category', 'en', NULL, NULL),
(1654, 'admin.category.top', 'Công cộng', 'admin.category', 'vi', NULL, NULL),
(1655, 'admin.category.top', 'Public', 'admin.category', 'en', NULL, NULL),
(1656, 'admin.category.parent', 'Cấp cha', 'admin.category', 'vi', NULL, NULL),
(1657, 'admin.category.parent', 'Parent', 'admin.category', 'en', NULL, NULL),
(1658, 'admin.category.sort', 'Thứ tự', 'admin.category', 'vi', NULL, NULL),
(1659, 'admin.category.sort', 'Sort', 'admin.category', 'en', NULL, NULL),
(1660, 'admin.category.status', 'Trạng thái', 'admin.category', 'vi', NULL, NULL),
(1661, 'admin.category.status', 'Status', 'admin.category', 'en', NULL, NULL),
(1662, 'admin.category.select_category', 'Chọn danh mục', 'admin.category', 'vi', NULL, NULL),
(1663, 'admin.category.select_category', 'Select category', 'admin.category', 'en', NULL, NULL),
(1664, 'admin.category.top_help', 'Danh mục này sẽ hiển thị ra ngoài trang chủ. Mặc định chỉ dành cho những danh mục Root.', 'admin.category', 'vi', NULL, NULL),
(1665, 'admin.category.top_help', 'This category will display outside the homepage. The default is for Root items only.', 'admin.category', 'en', NULL, NULL),
(1666, 'admin.config.webhook', 'Webhook', 'admin.config', 'vi', NULL, NULL),
(1667, 'admin.config.webhook', 'Webhook', 'admin.config', 'en', NULL, NULL),
(1668, 'admin.config.setting_website', 'Cài đặt website', 'admin.config', 'vi', NULL, NULL),
(1669, 'admin.config.setting_website', 'Setting website', 'admin.config', 'en', NULL, NULL),
(1670, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Gửi tới Slack webhook', 'admin.config', 'vi', NULL, NULL),
(1671, 'admin.config.LOG_SLACK_WEBHOOK_URL', 'Report error to Slack webhook', 'admin.config', 'en', NULL, NULL),
(1672, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Gửi tới Google webhook', 'admin.config', 'vi', NULL, NULL),
(1673, 'admin.config.GOOGLE_CHAT_WEBHOOK_URL', 'Report error to Google webhook', 'admin.config', 'en', NULL, NULL),
(1674, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Gửi tới Chatword webhook', 'admin.config', 'vi', NULL, NULL),
(1675, 'admin.config.CHATWORK_CHAT_WEBHOOK_URL', 'Report error to Chatword webhook', 'admin.config', 'en', NULL, NULL),
(1676, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'vi', NULL, NULL),
(1677, 'admin.config.LOG_SLACK_WEBHOOK_URL_help', 'Link https: //hooks.slack.com/services/...', 'admin.config', 'en', NULL, NULL),
(1678, 'admin.currency.list', 'Danh sách tiền tệ', 'admin.currency', 'vi', NULL, NULL),
(1679, 'admin.currency.list', 'Currencies list', 'admin.currency', 'en', NULL, NULL),
(1680, 'admin.currency.name', 'Tên', 'admin.currency', 'vi', NULL, NULL),
(1681, 'admin.currency.name', 'Name', 'admin.currency', 'en', NULL, NULL),
(1682, 'admin.currency.code', 'Mã', 'admin.currency', 'vi', NULL, NULL),
(1683, 'admin.currency.code', 'Code', 'admin.currency', 'en', NULL, NULL),
(1684, 'admin.currency.symbol', 'Ký hiệu', 'admin.currency', 'vi', NULL, NULL),
(1685, 'admin.currency.symbol', 'Symbol', 'admin.currency', 'en', NULL, NULL),
(1686, 'admin.currency.exchange_rate', 'Tỉ giá', 'admin.currency', 'vi', NULL, NULL),
(1687, 'admin.currency.exchange_rate', 'Exchange rate', 'admin.currency', 'en', NULL, NULL),
(1688, 'admin.currency.precision', 'Số chữ số thập phân', 'admin.currency', 'vi', NULL, NULL),
(1689, 'admin.currency.precision', 'Precision', 'admin.currency', 'en', NULL, NULL),
(1690, 'admin.currency.symbol_first', 'Hiện kí hiệu đầu tiên', 'admin.currency', 'vi', NULL, NULL),
(1691, 'admin.currency.symbol_first', 'Symbol first', 'admin.currency', 'en', NULL, NULL),
(1692, 'admin.currency.thousands', 'Ngăn cách phần nghìn', 'admin.currency', 'vi', NULL, NULL),
(1693, 'admin.currency.thousands', 'Thousands separator', 'admin.currency', 'en', NULL, NULL),
(1694, 'admin.currency.status', 'Trạng thái', 'admin.currency', 'vi', NULL, NULL),
(1695, 'admin.currency.status', 'Status', 'admin.currency', 'en', NULL, NULL),
(1696, 'admin.currency.sort', 'Thứ tự', 'admin.currency', 'vi', NULL, NULL),
(1697, 'admin.currency.sort', 'Sort', 'admin.currency', 'en', NULL, NULL),
(1698, 'admin.currency.add_new_title', 'Thêm mới tiền tệ', 'admin.currency', 'vi', NULL, NULL),
(1699, 'admin.currency.add_new_title', 'Add new currency', 'admin.currency', 'en', NULL, NULL),
(1700, 'admin.currency.add_new_des', 'Thêm mới', 'admin.currency', 'vi', NULL, NULL),
(1701, 'admin.currency.add_new_des', 'Add new', 'admin.currency', 'en', NULL, NULL),
(1702, 'admin.custom_field.title', 'Field dữ liệu tùy chỉnh', 'admin.custom_field', 'vi', NULL, NULL),
(1703, 'admin.custom_field.title', 'Custom field', 'admin.custom_field', 'en', NULL, NULL),
(1704, 'admin.custom_field.list', 'Danh sách field tùy chỉnh', 'admin.custom_field', 'vi', NULL, NULL),
(1705, 'admin.custom_field.list', 'Custom field list', 'admin.custom_field', 'en', NULL, NULL),
(1706, 'admin.custom_field.status', 'Trạng thái', 'admin.custom_field', 'vi', NULL, NULL),
(1707, 'admin.custom_field.status', 'Status', 'admin.custom_field', 'en', NULL, NULL),
(1708, 'admin.custom_field.sort', 'Thứ tự', 'admin.custom_field', 'vi', NULL, NULL),
(1709, 'admin.custom_field.sort', 'Sort', 'admin.custom_field', 'en', NULL, NULL),
(1710, 'admin.custom_field.add_new_title', 'Thêm mới field', 'admin.custom_field', 'vi', NULL, NULL),
(1711, 'admin.custom_field.add_new_title', 'Add new field', 'admin.custom_field', 'en', NULL, NULL),
(1712, 'admin.custom_field.add_new_des', 'Thêm mới', 'admin.custom_field', 'vi', NULL, NULL),
(1713, 'admin.custom_field.add_new_des', 'Add new', 'admin.custom_field', 'en', NULL, NULL),
(1714, 'admin.custom_field.name', 'Tên', 'admin.custom_field', 'vi', NULL, NULL),
(1715, 'admin.custom_field.name', 'Name', 'admin.custom_field', 'en', NULL, NULL),
(1716, 'admin.custom_field.code', 'Mã', 'admin.custom_field', 'vi', NULL, NULL),
(1717, 'admin.custom_field.code', 'Code', 'admin.custom_field', 'en', NULL, NULL),
(1718, 'admin.custom_field.type', 'Loại', 'admin.custom_field', 'vi', NULL, NULL),
(1719, 'admin.custom_field.type', 'Type', 'admin.custom_field', 'en', NULL, NULL),
(1720, 'admin.custom_field.required', 'Bắt buộc', 'admin.custom_field', 'vi', NULL, NULL),
(1721, 'admin.custom_field.required', 'Required', 'admin.custom_field', 'en', NULL, NULL),
(1722, 'admin.custom_field.option', 'Tùy chọn', 'admin.custom_field', 'vi', NULL, NULL),
(1723, 'admin.custom_field.option', 'Option', 'admin.custom_field', 'en', NULL, NULL),
(1724, 'admin.custom_field.default', 'Mặc định', 'admin.custom_field', 'vi', NULL, NULL),
(1725, 'admin.custom_field.default', 'Default', 'admin.custom_field', 'en', NULL, NULL),
(1726, 'admin.custom_field.default_help', 'Định dạng cho \"Tùy chọn\" là Radio hoặc Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'vi', NULL, NULL),
(1727, 'admin.custom_field.default_help', 'Format for \"Option\" is Radio or Select:<br>{\"value1\": \"Name 1\", \"value2\":\"Name 2\"}', 'admin.custom_field', 'en', NULL, NULL),
(1728, 'admin.env.APP_DEBUG', 'DEBUG mode', 'admin.env', 'en', NULL, NULL),
(1729, 'admin.env.APP_URL', 'URL app', 'admin.env', 'en', NULL, NULL),
(1730, 'admin.env.APP_ENV', 'Environment mode', 'admin.env', 'en', NULL, NULL),
(1731, 'admin.env.ADMIN_PREFIX', 'Admin prefix', 'admin.env', 'en', NULL, NULL),
(1732, 'admin.env.ADMIN_NAME', 'Admin name', 'admin.env', 'en', NULL, NULL),
(1733, 'admin.env.ADMIN_LOGO', 'Admin logo', 'admin.env', 'en', NULL, NULL),
(1734, 'admin.env.ADMIN_LOGO_MINI', 'Admin logo mini', 'admin.env', 'en', NULL, NULL),
(1735, 'admin.env.ADMIN_TITLE', 'Admin title', 'admin.env', 'en', NULL, NULL),
(1736, 'admin.env.field', 'Field', 'admin.env', 'en', NULL, NULL),
(1737, 'admin.env.value', 'Value', 'admin.env', 'en', NULL, NULL),
(1738, 'admin.env.title', 'Config environment', 'admin.env', 'en', NULL, NULL),
(1739, 'admin.env.SUFFIX_URL', 'Suffix URL', 'admin.env', 'en', NULL, NULL),
(1740, 'admin.env.PREFIX_BRAND', 'Prefix url BRAND', 'admin.env', 'en', NULL, NULL),
(1741, 'admin.env.PREFIX_SUPPLIER', 'Prefix url SUPPLIER', 'admin.env', 'en', NULL, NULL),
(1742, 'admin.env.PREFIX_CATEGORY', 'Prefix url CATEGORY ', 'admin.env', 'en', NULL, NULL),
(1743, 'admin.env.PREFIX_SUB_CATEGORY', 'Prefix url sub CATEGORY', 'admin.env', 'en', NULL, NULL),
(1744, 'admin.env.PREFIX_PRODUCT', 'Prefix url PRODUCT', 'admin.env', 'en', NULL, NULL),
(1745, 'admin.env.PREFIX_SEARCH', 'Prefix url SEARCH', 'admin.env', 'en', NULL, NULL),
(1746, 'admin.env.PREFIX_CONTACT', 'Prefix url CONTACT', 'admin.env', 'en', NULL, NULL),
(1747, 'admin.env.PREFIX_ABOUT', 'Prefix url ABOUT', 'admin.env', 'en', NULL, NULL),
(1748, 'admin.env.PREFIX_NEWS', 'Prefix url NEWS', 'admin.env', 'en', NULL, NULL),
(1749, 'admin.env.PREFIX_MEMBER', 'Prefix url CUSTOMER', 'admin.env', 'en', NULL, NULL),
(1750, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Prefix url CUSTOMER ORDER', 'admin.env', 'en', NULL, NULL),
(1751, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Prefix url CHANGE PASSWOD', 'admin.env', 'en', NULL, NULL),
(1752, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Prefix url CHANGE INFO', 'admin.env', 'en', NULL, NULL),
(1753, 'admin.env.PREFIX_CMS_CATEGORY', 'Prefix url CMS CATEGORY', 'admin.env', 'en', NULL, NULL),
(1754, 'admin.env.PREFIX_CMS_ENTRY', 'Prefix url CMS ENTRY', 'admin.env', 'en', NULL, NULL),
(1755, 'admin.env.PREFIX_CART_WISHLIST', 'Prefix url WISHLIST', 'admin.env', 'en', NULL, NULL),
(1756, 'admin.env.PREFIX_CART_COMPARE', 'Prefix url COMPARE', 'admin.env', 'en', NULL, NULL),
(1757, 'admin.env.PREFIX_CART_DEFAULT', 'Prefix url CART', 'admin.env', 'en', NULL, NULL),
(1758, 'admin.env.PREFIX_CART_CHECKOUT', 'Prefix url CHECKOUT', 'admin.env', 'en', NULL, NULL),
(1759, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Prefix url CHECKOUT CONFIRM', 'admin.env', 'en', NULL, NULL),
(1760, 'admin.env.PREFIX_ORDER_SUCCESS', 'Prefix url ORDER SUCCESS', 'admin.env', 'en', NULL, NULL),
(1761, 'admin.env.PREFIX_SHOP', 'Link shop', 'admin.env', 'en', NULL, NULL),
(1762, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Customize template admin', 'admin.env', 'en', NULL, NULL),
(1763, 'admin.env.APP_DEBUG', 'Chế độ sửa lỗi', 'admin.env', 'vi', NULL, NULL),
(1764, 'admin.env.APP_URL', 'URL website', 'admin.env', 'vi', NULL, NULL),
(1765, 'admin.env.APP_ENV', 'Môi trường', 'admin.env', 'vi', NULL, NULL),
(1766, 'admin.env.ADMIN_PREFIX', 'Tiền tố admin', 'admin.env', 'vi', NULL, NULL),
(1767, 'admin.env.ADMIN_NAME', 'Tên trang admin', 'admin.env', 'vi', NULL, NULL),
(1768, 'admin.env.ADMIN_LOGO', 'Logo admin', 'admin.env', 'vi', NULL, NULL),
(1769, 'admin.env.ADMIN_LOGO_MINI', 'Logo nhỏ', 'admin.env', 'vi', NULL, NULL),
(1770, 'admin.env.ADMIN_TITLE', 'Tiêu đề admin', 'admin.env', 'vi', NULL, NULL),
(1771, 'admin.env.field', 'Trường dữ liệu', 'admin.env', 'vi', NULL, NULL),
(1772, 'admin.env.value', 'Giá trị', 'admin.env', 'vi', NULL, NULL),
(1773, 'admin.env.title', 'Cấu hình môi trường', 'admin.env', 'vi', NULL, NULL),
(1774, 'admin.env.SUFFIX_URL', 'Hậu tố URL', 'admin.env', 'vi', NULL, NULL),
(1775, 'admin.env.PREFIX_BRAND', 'Tiền tố trang BRAND', 'admin.env', 'vi', NULL, NULL),
(1776, 'admin.env.PREFIX_SUPPLIER', 'Tiền tố trang SUPPLIER', 'admin.env', 'vi', NULL, NULL),
(1777, 'admin.env.PREFIX_CATEGORY', 'Tiền tố trang CATEGORY ', 'admin.env', 'vi', NULL, NULL),
(1778, 'admin.env.PREFIX_SUB_CATEGORY', 'Tiền tố trang CATEGORY nhỏ', 'admin.env', 'vi', NULL, NULL),
(1779, 'admin.env.PREFIX_PRODUCT', 'Tiền tố trang PRODUCT', 'admin.env', 'vi', NULL, NULL),
(1780, 'admin.env.PREFIX_SEARCH', 'Tiền tố trang SEARCH', 'admin.env', 'vi', NULL, NULL),
(1781, 'admin.env.PREFIX_CONTACT', 'Tiền tố trang CONTACT', 'admin.env', 'vi', NULL, NULL),
(1782, 'admin.env.PREFIX_ABOUT', 'Tiền tố trang ABOUT', 'admin.env', 'vi', NULL, NULL),
(1783, 'admin.env.PREFIX_NEWS', 'Tiền tố trang NEWS', 'admin.env', 'vi', NULL, NULL),
(1784, 'admin.env.PREFIX_MEMBER', 'Tiền tố trang CUSTOMER', 'admin.env', 'vi', NULL, NULL),
(1785, 'admin.env.PREFIX_MEMBER_ORDER_LIST', 'Tiền tố trang CUSTOMER ORDER', 'admin.env', 'vi', NULL, NULL),
(1786, 'admin.env.PREFIX_MEMBER_CHANGE_PWD', 'Tiền tố trang CHANGE PASSWOD', 'admin.env', 'vi', NULL, NULL),
(1787, 'admin.env.PREFIX_MEMBER_CHANGE_INFO', 'Tiền tố trang CHANGE INFO', 'admin.env', 'vi', NULL, NULL),
(1788, 'admin.env.PREFIX_CMS_CATEGORY', 'Tiền tố trang CMS CATEGORY', 'admin.env', 'vi', NULL, NULL),
(1789, 'admin.env.PREFIX_CMS_ENTRY', 'Tiền tố trang CMS ENTRY', 'admin.env', 'vi', NULL, NULL),
(1790, 'admin.env.PREFIX_CART_WISHLIST', 'Tiền tố trang WISHLIST', 'admin.env', 'vi', NULL, NULL),
(1791, 'admin.env.PREFIX_CART_COMPARE', 'Tiền tố trang COMPARE', 'admin.env', 'vi', NULL, NULL),
(1792, 'admin.env.PREFIX_CART_DEFAULT', 'Tiền tố trang CART', 'admin.env', 'vi', NULL, NULL),
(1793, 'admin.env.PREFIX_CART_CHECKOUT', 'Tiền tố trang CHECKOUT', 'admin.env', 'vi', NULL, NULL),
(1794, 'admin.env.PREFIX_CART_CHECKOUT_CONFIRM', 'Tiền tố trang CHECKOUT CONFIRM', 'admin.env', 'vi', NULL, NULL),
(1795, 'admin.env.PREFIX_ORDER_SUCCESS', 'Tiền tố trang ORDER SUCCESS', 'admin.env', 'vi', NULL, NULL),
(1796, 'admin.env.PREFIX_SHOP', 'Link Cửa hàng', 'admin.env', 'vi', NULL, NULL),
(1797, 'admin.env.ADMIN_CUSTOMIZE_TEMPLATE', 'Tùy chỉnh giao diện Admin', 'admin.env', 'vi', NULL, NULL),
(1798, 'admin.env.hidden_copyright_footer_admin', 'Ẩn thông tin bản quyền footer admin', 'admin.env', 'vi', NULL, NULL),
(1799, 'admin.env.hidden_copyright_footer', 'Ẩn thông tin bản quyền footer website', 'admin.env', 'vi', NULL, NULL),
(1800, 'admin.env.hidden_copyright_footer_admin', 'Hide admin footer copyright information', 'admin.env', 'en', NULL, NULL),
(1801, 'admin.env.hidden_copyright_footer', 'Hide website footer copyright information', 'admin.env', 'en', NULL, NULL),
(1802, 'admin.email_template.name', 'Tên', 'admin.email_template', 'vi', NULL, NULL),
(1803, 'admin.email_template.list', 'Danh sách mẫu email', 'admin.email_template', 'vi', NULL, NULL),
(1804, 'admin.email_template.list', 'Email template list', 'admin.email_template', 'en', NULL, NULL),
(1805, 'admin.email_template.status', 'Trạng thái', 'admin.email_template', 'vi', NULL, NULL),
(1806, 'admin.email_template.group', 'Nhóm', 'admin.email_template', 'vi', NULL, NULL),
(1807, 'admin.email_template.html', 'HTML', 'admin.email_template', 'vi', NULL, NULL),
(1808, 'admin.email_template.text', 'Nội dung', 'admin.email_template', 'vi', NULL, NULL),
(1809, 'admin.email_template.name', 'Name', 'admin.email_template', 'en', NULL, NULL),
(1810, 'admin.email_template.lits', 'Email template list', 'admin.email_template', 'en', NULL, NULL),
(1811, 'admin.email_template.group', 'Group', 'admin.email_template', 'en', NULL, NULL),
(1812, 'admin.email_template.text', 'Content', 'admin.email_template', 'en', NULL, NULL),
(1813, 'admin.email_template.html', 'HTML', 'admin.email_template', 'en', NULL, NULL),
(1814, 'admin.email_template.status', 'Status', 'admin.email_template', 'en', NULL, NULL),
(1815, 'admin.email_template.add_new_title', 'Add template', 'admin.email_template', 'en', NULL, NULL),
(1816, 'admin.email_template.add_new_des', 'Create a new template', 'admin.email_template', 'en', NULL, NULL),
(1817, 'admin.email_template.variable_support', 'Variables support:', 'admin.email_template', 'en', NULL, NULL),
(1818, 'admin.email_template.add_new_title', 'Tạo template', 'admin.email_template', 'vi', NULL, NULL),
(1819, 'admin.email_template.add_new_des', 'Tạo mới template', 'admin.email_template', 'vi', NULL, NULL),
(1820, 'admin.email_template.variable_support', 'Các biến hỗ trợ', 'admin.email_template', 'vi', NULL, NULL),
(1821, 'admin.language.list', 'Language list', 'admin.language', 'en', NULL, NULL),
(1822, 'admin.language.list', 'Danh sách ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1823, 'admin.language.select_lang', 'Select language', 'admin.language', 'en', NULL, NULL),
(1824, 'admin.language.select_lang', 'Chọn ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1825, 'admin.language.select_position', 'Select position', 'admin.language', 'en', NULL, NULL),
(1826, 'admin.language.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1827, 'admin.language.name', 'Name', 'admin.language', 'en', NULL, NULL),
(1828, 'admin.language.icon', 'Icon', 'admin.language', 'en', NULL, NULL),
(1829, 'admin.language.code', 'Code', 'admin.language', 'en', NULL, NULL),
(1830, 'admin.language.sort', 'Sort', 'admin.language', 'en', NULL, NULL),
(1831, 'admin.language.status', 'Status', 'admin.language', 'en', NULL, NULL),
(1832, 'admin.language.layout_rtl', 'Layout RTL', 'admin.language', 'en', NULL, NULL),
(1833, 'admin.language.add_new_title', 'Add language', 'admin.language', 'en', NULL, NULL),
(1834, 'admin.language.add_new_des', 'Create a new language', 'admin.language', 'en', NULL, NULL),
(1835, 'admin.language.name', 'Tên ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1836, 'admin.language.icon', 'Icon', 'admin.language', 'vi', NULL, NULL),
(1837, 'admin.language.code', 'Code', 'admin.language', 'vi', NULL, NULL),
(1838, 'admin.language.sort', 'Thứ tự', 'admin.language', 'vi', NULL, NULL),
(1839, 'admin.language.status', 'Status', 'admin.language', 'vi', NULL, NULL),
(1840, 'admin.language.layout_rtl', 'Giao diện RTL', 'admin.language', 'vi', NULL, NULL),
(1841, 'admin.language.add_new_title', 'Tạo ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1842, 'admin.language.add_new_des', 'Tạo mới ngôn ngữ', 'admin.language', 'vi', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(1843, 'admin.language_manager.title', 'Quản lý ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1844, 'admin.language_manager.title', 'Language manager', 'admin.language', 'en', NULL, NULL),
(1845, 'admin.language_manager.add', 'Thêm giá trị mới', 'admin.language', 'vi', NULL, NULL),
(1846, 'admin.language_manager.add', 'Add new record language', 'admin.language', 'en', NULL, NULL),
(1847, 'admin.language_manager.position', 'Vị trí mới ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1848, 'admin.language_manager.position', 'Position language', 'admin.language', 'en', NULL, NULL),
(1849, 'admin.language_manager.new_position', 'Hoặc thêm vị trí mới', 'admin.language', 'vi', NULL, NULL),
(1850, 'admin.language_manager.new_position', 'Or add new position', 'admin.language', 'en', NULL, NULL),
(1851, 'admin.language_manager.code', 'Mã code', 'admin.language', 'vi', NULL, NULL),
(1852, 'admin.language_manager.code', 'Code', 'admin.language', 'en', NULL, NULL),
(1853, 'admin.language_manager.text', 'Nội dung ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1854, 'admin.language_manager.text', 'Language content', 'admin.language', 'en', NULL, NULL),
(1855, 'admin.language_manager.text_help', 'Mặc định, giá trị mới chỉ được thêm cho tiếng Anh. <br>Để cập nhật cho ngôn ngữ khác, tìm giá trị mới thêm và chỉnh sửa <a href=\":link\">Ở ĐÂY</a>', 'admin.language', 'vi', NULL, NULL),
(1856, 'admin.language_manager.text_help', 'By default, the new value is only added for English. <br>To update for other languages, find the newly added value and edit <a href=\":link\">HERE</a>', 'admin.language', 'en', NULL, NULL),
(1857, 'admin.language_manager.select_position', 'Chọn vị trí ngôn ngữ', 'admin.language', 'vi', NULL, NULL),
(1858, 'admin.language_manager.select_position', 'Select position of language', 'admin.language', 'en', NULL, NULL),
(1859, 'admin.menu.list', 'Quản lý menu', 'admin.emnu', 'vi', NULL, NULL),
(1860, 'admin.menu.create', 'Tạo mới menu', 'admin.emnu', 'vi', NULL, NULL),
(1861, 'admin.menu.edit', 'Chỉnh sửa menu', 'admin.emnu', 'vi', NULL, NULL),
(1862, 'admin.menu.error_have_child', 'Cần xóa các menu bên trong trước khi làm điều này!', 'admin.emnu', 'vi', NULL, NULL),
(1863, 'admin.menu.parent', 'Cha', 'admin.emnu', 'vi', NULL, NULL),
(1864, 'admin.menu.title', 'Tiêu đề', 'admin.emnu', 'vi', NULL, NULL),
(1865, 'admin.menu.icon', 'Icon', 'admin.emnu', 'vi', NULL, NULL),
(1866, 'admin.menu.uri', 'URI', 'admin.emnu', 'vi', NULL, NULL),
(1867, 'admin.menu.roles', 'Vai trò', 'admin.emnu', 'vi', NULL, NULL),
(1868, 'admin.menu.permissions', 'Quyền', 'admin.emnu', 'vi', NULL, NULL),
(1869, 'admin.menu.create_success', 'Tạo mới thành công!', 'admin.emnu', 'vi', NULL, NULL),
(1870, 'admin.menu.edit_success', 'Cập nhật thành công!', 'admin.emnu', 'vi', NULL, NULL),
(1871, 'admin.menu.sort', 'Thứ tự', 'admin.emnu', 'vi', NULL, NULL),
(1872, 'admin.menu.list', 'Menu manager', 'admin.emnu', 'en', NULL, NULL),
(1873, 'admin.menu.create', 'Create new menu', 'admin.emnu', 'en', NULL, NULL),
(1874, 'admin.menu.edit', 'Edit menu', 'admin.emnu', 'en', NULL, NULL),
(1875, 'admin.menu.error_have_child', 'Need to delete the internal menus before doing this!', 'admin.emnu', 'en', NULL, NULL),
(1876, 'admin.menu.parent', 'Parent', 'admin.emnu', 'en', NULL, NULL),
(1877, 'admin.menu.title', 'Title', 'admin.emnu', 'en', NULL, NULL),
(1878, 'admin.menu.icon', 'Icon', 'admin.emnu', 'en', NULL, NULL),
(1879, 'admin.menu.uri', 'URI', 'admin.emnu', 'en', NULL, NULL),
(1880, 'admin.menu.roles', 'Roles', 'admin.emnu', 'en', NULL, NULL),
(1881, 'admin.menu.permissions', 'Permissions', 'admin.emnu', 'en', NULL, NULL),
(1882, 'admin.menu.create_success', 'Create new item success!', 'admin.emnu', 'en', NULL, NULL),
(1883, 'admin.menu.edit_success', 'Edit item success!', 'admin.emnu', 'en', NULL, NULL),
(1884, 'admin.menu.sort', 'Sort', 'admin.emnu', 'en', NULL, NULL),
(1885, 'email.admin.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en', NULL, NULL),
(1886, 'email.admin.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en', NULL, NULL),
(1887, 'email.admin.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en', NULL, NULL),
(1888, 'email.admin.forgot_password', 'Send email forgot', 'email.admin', 'en', NULL, NULL),
(1889, 'email.admin.welcome_customer', 'Send email welcome', 'email.admin', 'en', NULL, NULL),
(1890, 'email.admin.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en', NULL, NULL),
(1891, 'email.admin.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en', NULL, NULL),
(1892, 'email.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en', NULL, NULL),
(1893, 'email.admin.other', 'Other', 'email.admin', 'en', NULL, NULL),
(1894, 'email.admin.customer_verify', 'Send account verification email', 'email.admin', 'en', NULL, NULL),
(1895, 'email.admin.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi', NULL, NULL),
(1896, 'email.admin.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi', NULL, NULL),
(1897, 'email.admin.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi', NULL, NULL),
(1898, 'email.admin.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi', NULL, NULL),
(1899, 'email.admin.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi', NULL, NULL),
(1900, 'email.admin.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi', NULL, NULL),
(1901, 'email.admin.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi', NULL, NULL),
(1902, 'email.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi', NULL, NULL),
(1903, 'email.admin.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi', NULL, NULL),
(1904, 'email.admin.other', 'Loại khác', 'email.admin', 'vi', NULL, NULL),
(1905, 'email.admin.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi', NULL, NULL),
(1906, 'email.admin.config_mode', 'Config mode', 'email.admin', 'en', NULL, NULL),
(1907, 'email.admin.config_smtp', 'Config SMTP', 'email.admin', 'en', NULL, NULL),
(1908, 'email.admin.config_mode', 'Cấu hình mode', 'email.admin', 'vi', NULL, NULL),
(1909, 'email.email_action.type', 'Action type', 'email.admin', 'en', NULL, NULL),
(1910, 'email.email_action.mode', 'Action mode', 'email.admin', 'en', NULL, NULL),
(1911, 'email.email_action.sort', 'Action sort', 'email.admin', 'en', NULL, NULL),
(1912, 'email.email_action.order_success_to_admin', 'Send order success to admin', 'email.admin', 'en', NULL, NULL),
(1913, 'email.email_action.order_success_to_cutomer', 'Send order success to customer', 'email.admin', 'en', NULL, NULL),
(1914, 'email.email_action.order_success_to_cutomer_pdf', 'Send order success to customer with pdf invoice', 'email.admin', 'en', NULL, NULL),
(1915, 'email.email_action.forgot_password', 'Send email forgot', 'email.admin', 'en', NULL, NULL),
(1916, 'email.email_action.customer_verify', 'Customer verification', 'email.admin', 'en', NULL, NULL),
(1917, 'email.email_action.welcome_customer', 'Send email welcome', 'email.admin', 'en', NULL, NULL),
(1918, 'email.email_action.contact_to_customer', 'Send email contact to customer', 'email.admin', 'en', NULL, NULL),
(1919, 'email.email_action.contact_to_admin', 'Send email contact to admin', 'email.admin', 'en', NULL, NULL),
(1920, 'email.email_action.email_action_mode', 'ON/OFF send mail', 'email.admin', 'en', NULL, NULL),
(1921, 'email.email_action.email_action_queue', 'Use send mail queue <span class=\"text-red\">(*)</span>', 'email.admin', 'en', NULL, NULL),
(1922, 'email.email_action.email_action_smtp_mode', 'SMTP mode', 'email.admin', 'en', NULL, NULL),
(1923, 'email.email_action.config_smtp', 'Config SMTP', 'email.admin', 'en', NULL, NULL),
(1924, 'email.email_action.type', 'Loại gửi mail', 'email.admin', 'vi', NULL, NULL),
(1925, 'email.email_action.mode', 'Chế độ', 'email.admin', 'vi', NULL, NULL),
(1926, 'email.email_action.sort', 'Sắp xếp', 'email.admin', 'vi', NULL, NULL),
(1927, 'email.email_action.order_success_to_admin', 'Gửi đơn hàng thành công cho admin', 'email.admin', 'vi', NULL, NULL),
(1928, 'email.email_action.order_success_to_cutomer_pdf', 'Gửi đơn hàng thành công cho khách kèm PDF', 'email.admin', 'vi', NULL, NULL),
(1929, 'email.email_action.order_success_to_cutomer', 'Gửi đơn hàng thành công cho khách', 'email.admin', 'vi', NULL, NULL),
(1930, 'email.email_action.forgot_password', 'Gửi mail quên mật khẩu', 'email.admin', 'vi', NULL, NULL),
(1931, 'email.email_action.welcome_customer', 'Gửi mail chào mừng', 'email.admin', 'vi', NULL, NULL),
(1932, 'email.email_action.contact_to_customer', 'Gửi mail form liên hệ cho khách', 'email.admin', 'vi', NULL, NULL),
(1933, 'email.email_action.contact_to_admin', 'Gửi mail form liên hệ cho admin', 'email.admin', 'vi', NULL, NULL),
(1934, 'email.email_action.email_action_mode', 'Tắt/Mở chức năng gửi mail', 'email.admin', 'vi', NULL, NULL),
(1935, 'email.email_action.email_action_queue', 'Gửi mail qua hàng đợi <span class=\"text-red\">(*)</span>', 'email.admin', 'vi', NULL, NULL),
(1936, 'email.email_action.email_action_smtp_mode', 'Sử dụng SMTP', 'email.admin', 'vi', NULL, NULL),
(1937, 'email.email_action.config_smtp', 'Cấu hình SMTP', 'email.admin', 'vi', NULL, NULL),
(1938, 'email.email_action.customer_verify', 'Gửi email xác thực tài khoản', 'email.admin', 'vi', NULL, NULL),
(1939, 'email.email_action.smtp_mode', 'Sử dụng cấu hình SMTP', 'email.admin', 'vi', NULL, NULL),
(1940, 'email.email_action.smtp_mode', 'Use SMTP config', 'email.admin', 'en', NULL, NULL),
(1941, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Email sẽ không được gửi trực tiếp, mà thông qua hàng đợi. Bạn cần phải cài đặt \"artisan schedule:run\" trước,  chi tiết <a href=\"https://s-cart.org/docs/master/email.html\">TẠI ĐÂY</a>', 'email.admin', 'vi', NULL, NULL),
(1942, 'email.email_action.help_note', '<span class=\"text-red\">(*)</span>: Emails will not be sent directly, but through a queue. You need to set up \"artisan schedule: run\" first, details <a href=\"https://s-cart.org/docs/master/email.html\">HERE</a>', 'email.admin', 'en', NULL, NULL),
(1943, 'email.config_smtp.smtp_host', 'SMTP host', 'email.admin', 'en', NULL, NULL),
(1944, 'email.config_smtp.smtp_user', 'SMTP user', 'email.admin', 'en', NULL, NULL),
(1945, 'email.config_smtp.smtp_password', 'SMTP password', 'email.admin', 'en', NULL, NULL),
(1946, 'email.config_smtp.smtp_security', 'SMTP security', 'email.admin', 'en', NULL, NULL),
(1947, 'email.config_smtp.smtp_port', 'SMTP port', 'email.admin', 'en', NULL, NULL),
(1948, 'email.config_smtp.smtp_name', 'Email name', 'email.admin', 'en', NULL, NULL),
(1949, 'email.config_smtp.smtp_from', 'Send mail from', 'email.admin', 'en', NULL, NULL),
(1950, 'email.config_smtp.smtp_host', 'Server SMTP', 'email.admin', 'vi', NULL, NULL),
(1951, 'email.config_smtp.smtp_user', 'Tài khoản SMTP', 'email.admin', 'vi', NULL, NULL),
(1952, 'email.config_smtp.smtp_password', 'Mật khẩu SMTP', 'email.admin', 'vi', NULL, NULL),
(1953, 'email.config_smtp.smtp_security', 'Bảo mật SMTP', 'email.admin', 'vi', NULL, NULL),
(1954, 'email.config_smtp.smtp_port', 'Cổng kết nối SMTP', 'email.admin', 'vi', NULL, NULL),
(1955, 'email.config_smtp.smtp_name', 'Tên gửi mail', 'email.admin', 'vi', NULL, NULL),
(1956, 'email.config_smtp.smtp_from', 'Địa chỉ email gửi', 'email.admin', 'vi', NULL, NULL),
(1957, 'email.welcome', 'Chào mừng!', 'email', 'vi', NULL, NULL),
(1958, 'email.welcome', 'Welcome!', 'email', 'en', NULL, NULL),
(1959, 'email.msg_goodbye', 'Trân trọng!', 'email', 'vi', NULL, NULL),
(1960, 'email.msg_goodbye', 'Best regards!', 'email', 'en', NULL, NULL),
(1961, 'email.forgot_password.title', 'Hello!', 'email.forgot_password', 'en', NULL, NULL),
(1962, 'email.forgot_password.reset_button', 'Reset password', 'email.forgot_password', 'en', NULL, NULL),
(1963, 'email.forgot_password.reason_sendmail', 'You are receiving this email because we received a password reset request for your account.', 'email.forgot_password', 'en', NULL, NULL),
(1964, 'email.forgot_password.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not request a password reset, no further action is required.', 'email.forgot_password', 'en', NULL, NULL),
(1965, 'email.forgot_password.note_access_link', 'If you’re having trouble clicking the \":reset_button\" button, copy and paste the URL below into your web browser :url', 'email.forgot_password', 'en', NULL, NULL),
(1966, 'email.forgot_password.title', 'Xin chào!', 'email.forgot_password', 'vi', NULL, NULL),
(1967, 'email.forgot_password.reset_button', 'Tạo lại mật khẩu', 'email.forgot_password', 'vi', NULL, NULL),
(1968, 'email.forgot_password.reason_sendmail', 'Bạn đang nhận email này vì chúng tôi nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn.', 'email.forgot_password', 'vi', NULL, NULL),
(1969, 'email.forgot_password.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn không yêu cầu một thiết lập lại mật khẩu, bạn không cần làm gì cả.<br>', 'email.forgot_password', 'vi', NULL, NULL),
(1970, 'email.forgot_password.note_access_link', 'Nếu bạn gặp sự cố cách nhấn vào nút \":reset_button\", sao chép và dán URL dưới đây vào trình duyệt web của bạn :url', 'email.forgot_password', 'vi', NULL, NULL),
(1971, 'email.verification_content.title', 'Hello!', 'email.verification_content', 'en', NULL, NULL),
(1972, 'email.verification_content.button', 'Verify Email Address', 'email.verification_content', 'en', NULL, NULL),
(1973, 'email.verification_content.reason_sendmail', 'Please click the button below to verify your email address.', 'email.verification_content', 'en', NULL, NULL),
(1974, 'email.verification_content.note_sendmail', 'This password reset link will expire in :count minutes.<br><br>If you did not create an account, no further action is required.', 'email.verification_content', 'en', NULL, NULL),
(1975, 'email.verification_content.note_access_link', 'If you’re having trouble clicking the \":button\" button, copy and paste the URL below into your web browser :url', 'email.verification_content', 'en', NULL, NULL),
(1976, 'email.verification_content.title', 'Xin chào!', 'email.verification_content', 'vi', NULL, NULL),
(1977, 'email.verification_content.button', 'Xác nhận địa chỉ email', 'email.verification_content', 'vi', NULL, NULL),
(1978, 'email.verification_content.reason_sendmail', 'Vui lòng nhấp vào nút bên dưới để xác minh địa chỉ email của bạn.', 'email.verification_content', 'vi', NULL, NULL),
(1979, 'email.verification_content.note_sendmail', 'Liên kết mật khẩu này sẽ hết hạn trong vòng :count phút.<br><br>Nếu bạn chưa tạo tài khoản, bạn không cần thực hiện thêm hành động nào.', 'email.verification_content', 'vi', NULL, NULL),
(1980, 'email.verification_content.note_access_link', 'Nếu bạn gặp sự cố khi nhấp vào button \":button\", sao chép và dán URL bên dưới vào trình duyệt web của bạn :url', 'email.verification_content', 'vi', NULL, NULL),
(1981, 'email.order.title_1', 'Hi! Website :website has new order!', 'email.order', 'en', NULL, NULL),
(1982, 'email.order.order_id', 'Order ID', 'email.order', 'en', NULL, NULL),
(1983, 'email.order.toname', 'Customer name', 'email.order', 'en', NULL, NULL),
(1984, 'email.order.address', 'Address', 'email.order', 'en', NULL, NULL),
(1985, 'email.order.phone', 'Phone', 'email.order', 'en', NULL, NULL),
(1986, 'email.order.note', 'Note', 'email.order', 'en', NULL, NULL),
(1987, 'email.order.order_detail', 'Order detail', 'email.order', 'en', NULL, NULL),
(1988, 'email.order.sort', 'No.', 'email.order', 'en', NULL, NULL),
(1989, 'email.order.sku', 'SKU', 'email.order', 'en', NULL, NULL),
(1990, 'email.order.price', 'Price', 'email.order', 'en', NULL, NULL),
(1991, 'email.order.name', 'Name', 'email.order', 'en', NULL, NULL),
(1992, 'email.order.qty', 'Qty', 'email.order', 'en', NULL, NULL),
(1993, 'email.order.total', 'Total', 'email.order', 'en', NULL, NULL),
(1994, 'email.order.sub_total', 'Sub total', 'email.order', 'en', NULL, NULL),
(1995, 'email.order.shipping_fee', 'Shipping fee', 'email.order', 'en', NULL, NULL),
(1996, 'email.order.discount', 'Discount', 'email.order', 'en', NULL, NULL),
(1997, 'email.order.order_total', 'Order total', 'email.order', 'en', NULL, NULL),
(1998, 'email.order.title_1', 'Xin chào! :website trang web có đơn hàng mới!', 'email.order', 'vi', NULL, NULL),
(1999, 'email.order.order_id', 'Mã đơn hàng', 'email.order', 'vi', NULL, NULL),
(2000, 'email.order.toname', 'Tên khách hàng', 'email.order', 'vi', NULL, NULL),
(2001, 'email.order.address', 'Địa chỉ', 'email.order', 'vi', NULL, NULL),
(2002, 'email.order.phone', 'Điện thoại', 'email.order', 'vi', NULL, NULL),
(2003, 'email.order.note', 'Ghi chú', 'email.order', 'vi', NULL, NULL),
(2004, 'email.order.order_detail', 'Chi tiết đặt hàng', 'email.order', 'vi', NULL, NULL),
(2005, 'email.order.sort', 'Thứ tự', 'email.order', 'vi', NULL, NULL),
(2006, 'email.order.sku', 'SKU', 'email.order', 'vi', NULL, NULL),
(2007, 'email.order.price', 'Giá', 'email.order', 'vi', NULL, NULL),
(2008, 'email.order.name', 'Tên', 'email.order', 'vi', NULL, NULL),
(2009, 'email.order.qty', 'Số lượng', 'email.order', 'vi', NULL, NULL),
(2010, 'email.order.total', 'Tổng', 'email.order', 'vi', NULL, NULL),
(2011, 'email.order.sub_total', 'Tiền hàng', 'email.order', 'vi', NULL, NULL),
(2012, 'email.order.shipping_fee', 'Phí vận chuyển', 'email.order', 'vi', NULL, NULL),
(2013, 'email.order.discount', 'Giảm giá', 'email.order', 'vi', NULL, NULL),
(2014, 'email.order.order_total', 'Tổng số đơn hàng', 'email.order', 'vi', NULL, NULL),
(2015, 'email.order.email_subject_customer', 'Có đơn hàng mới', 'email.order', 'vi', NULL, NULL),
(2016, 'email.order.email_subject_customer', 'Have a new order', 'email.order', 'en', NULL, NULL),
(2017, 'email.order.email_subject_to_admin', 'Có đơn hàng mới', 'email.order', 'vi', NULL, NULL),
(2018, 'email.order.email_subject_to_admin', 'Have a new order', 'email.order', 'en', NULL, NULL),
(2019, 'email.welcome_customer.title', 'Chào mừng', 'email.welcome_customer', 'vi', NULL, NULL),
(2020, 'email.welcome_customer.title', 'Welcome', 'email.welcome_customer', 'en', NULL, NULL),
(2021, 'admin.store_block.list', 'Danh sách block', 'admin.store_block', 'vi', NULL, NULL),
(2022, 'admin.store_block.list', 'Block list', 'admin.store_block', 'en', NULL, NULL),
(2023, 'admin.store_block.name', 'Tên', 'admin.store_block', 'vi', NULL, NULL),
(2024, 'admin.store_block.position', 'Vị trí', 'admin.store_block', 'vi', NULL, NULL),
(2025, 'admin.store_block.page', 'Trang', 'admin.store_block', 'vi', NULL, NULL),
(2026, 'admin.store_block.type', 'Loại', 'admin.store_block', 'vi', NULL, NULL),
(2027, 'admin.store_block.text', 'Nội dung', 'admin.store_block', 'vi', NULL, NULL),
(2028, 'admin.store_block.status', 'Trạng thái', 'admin.store_block', 'vi', NULL, NULL),
(2029, 'admin.store_block.name', 'Name', 'admin.store_block', 'en', NULL, NULL),
(2030, 'admin.store_block.position', 'Position', 'admin.store_block', 'en', NULL, NULL),
(2031, 'admin.store_block.page', 'Page', 'admin.store_block', 'en', NULL, NULL),
(2032, 'admin.store_block.type', 'Type', 'admin.store_block', 'en', NULL, NULL),
(2033, 'admin.store_block.text', 'Text', 'admin.store_block', 'en', NULL, NULL),
(2034, 'admin.store_block.status', 'Status', 'admin.store_block', 'en', NULL, NULL),
(2035, 'admin.store_block.sort', 'Sort', 'admin.store_block', 'en', NULL, NULL),
(2036, 'admin.store_block.sort', 'Sắp xếp', 'admin.store_block', 'vi', NULL, NULL),
(2037, 'admin.store_block.add_new_title', 'Add layout', 'admin.store_block', 'en', NULL, NULL),
(2038, 'admin.store_block.add_new_des', 'Create a new layout', 'admin.store_block', 'en', NULL, NULL),
(2039, 'admin.store_block.select_position', 'Select position', 'admin.store_block', 'en', NULL, NULL),
(2040, 'admin.store_block.select_page', 'Select page', 'admin.store_block', 'en', NULL, NULL),
(2041, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'en', NULL, NULL),
(2042, 'admin.store_block.helper_view', 'View files are in \"resources/views/templates/:template/block\" directory.', 'admin.store_block', 'en', NULL, NULL),
(2043, 'admin.store_block.helper_module', 'File in \"app/Plugins/Block\". Module must have render() method available to display content.', 'admin.store_block', 'en', NULL, NULL),
(2044, 'admin.store_block.add_new_title', 'Tạo bố cục', 'admin.store_block', 'vi', NULL, NULL),
(2045, 'admin.store_block.add_new_des', 'Tạo mới bố cục', 'admin.store_block', 'vi', NULL, NULL),
(2046, 'admin.store_block.select_position', 'Chọn vị trí', 'admin.store_block', 'vi', NULL, NULL),
(2047, 'admin.store_block.select_page', 'Chọn trang', 'admin.store_block', 'vi', NULL, NULL),
(2048, 'admin.store_block.helper_html', 'Basic HTML content.', 'admin.store_block', 'vi', NULL, NULL),
(2049, 'admin.store_block.helper_view', 'File trong thư mục \"resources/views/templates/:template/block\".', 'admin.store_block', 'vi', NULL, NULL),
(2050, 'admin.store_block.helper_module', 'File trong \"app/Plugins/Block\". Module phải có hàm render().', 'admin.store_block', 'vi', NULL, NULL),
(2051, 'admin.log.list', 'Danh sách nhật ký', 'admin.log', 'vi', NULL, NULL),
(2052, 'admin.log.list', 'Logs list', 'admin.log', 'en', NULL, NULL),
(2053, 'admin.log.user', 'Người dùng', 'admin.log', 'vi', NULL, NULL),
(2054, 'admin.log.user', 'User', 'admin.log', 'en', NULL, NULL),
(2055, 'admin.log.method', 'Phương thức', 'admin.log', 'vi', NULL, NULL),
(2056, 'admin.log.path', 'Path', 'admin.log', 'vi', NULL, NULL),
(2057, 'admin.log.ip', 'IP', 'admin.log', 'vi', NULL, NULL),
(2058, 'admin.log.user_agent', 'User agent', 'admin.log', 'vi', NULL, NULL),
(2059, 'admin.log.input', 'Input', 'admin.log', 'vi', NULL, NULL),
(2060, 'admin.log.created_at', 'Thời gian', 'admin.log', 'vi', NULL, NULL),
(2061, 'admin.log.method', 'Method', 'admin.log', 'en', NULL, NULL),
(2062, 'admin.log.path', 'Path', 'admin.log', 'en', NULL, NULL),
(2063, 'admin.log.ip', 'IP', 'admin.log', 'en', NULL, NULL),
(2064, 'admin.log.user_agent', 'User agent', 'admin.log', 'en', NULL, NULL),
(2065, 'admin.log.input', 'Input', 'admin.log', 'en', NULL, NULL),
(2066, 'admin.log.created_at', 'Time', 'admin.log', 'en', NULL, NULL),
(2067, 'admin.page.title', 'Tiêu đề', 'admin.page', 'vi', NULL, NULL),
(2068, 'admin.page.image', 'Hình ảnh', 'admin.page', 'vi', NULL, NULL),
(2069, 'admin.page.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'vi', NULL, NULL),
(2070, 'admin.page.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'vi', NULL, NULL),
(2071, 'admin.page.key_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'vi', NULL, NULL),
(2072, 'admin.page.status', 'Trạng thái', 'admin.page', 'vi', NULL, NULL),
(2073, 'admin.page.keyword', 'Từ khóa', 'admin.page', 'vi', NULL, NULL),
(2074, 'admin.page.description', 'Mô tả', 'admin.page', 'vi', NULL, NULL),
(2075, 'admin.page.content', 'Nội dung', 'admin.page', 'vi', NULL, NULL),
(2076, 'admin.page.title', 'Title', 'admin.page', 'en', NULL, NULL),
(2077, 'admin.page.image', 'Image', 'admin.page', 'en', NULL, NULL),
(2078, 'admin.page.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.page', 'en', NULL, NULL),
(2079, 'admin.page.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.page', 'en', NULL, NULL),
(2080, 'admin.page.status', 'Status', 'admin.page', 'en', NULL, NULL),
(2081, 'admin.page.keyword', 'Keyword', 'admin.page', 'en', NULL, NULL),
(2082, 'admin.page.description', 'Description', 'admin.page', 'en', NULL, NULL),
(2083, 'admin.page.content', 'Content', 'admin.page', 'en', NULL, NULL),
(2084, 'admin.page.key_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \".-_\" ', 'admin.page', 'en', NULL, NULL),
(2085, 'admin.page.add_new', 'Add new', 'admin.page', 'en', NULL, NULL),
(2086, 'admin.page.add_new_title', 'Add page', 'admin.page', 'en', NULL, NULL),
(2087, 'admin.page.add_new_des', 'Create a new page', 'admin.page', 'en', NULL, NULL),
(2088, 'admin.page.add_new_title', 'Tạo trang', 'admin.page', 'vi', NULL, NULL),
(2089, 'admin.page.add_new_des', 'Tạo mới trang', 'admin.page', 'vi', NULL, NULL),
(2090, 'admin.page.choose_image', 'Chọn ảnh', 'admin.page', 'vi', NULL, NULL),
(2091, 'admin.page.choose_image', 'Chose image', 'admin.page', 'en', NULL, NULL),
(2092, 'admin.page.list', 'Danh sách trang', 'admin.page', 'vi', NULL, NULL),
(2093, 'admin.page.list', 'Page list', 'admin.page', 'en', NULL, NULL),
(2094, 'admin.page.search_place', 'Tìm tên', 'admin.page', 'vi', NULL, NULL),
(2095, 'admin.page.search_place', 'Search name', 'admin.page', 'en', NULL, NULL),
(2096, 'admin.news.add_new_title', 'Add new blog', 'admin.news', 'en', NULL, NULL),
(2097, 'admin.news.add_new_des', 'Create a new blog', 'admin.news', 'en', NULL, NULL),
(2098, 'admin.news.title', 'Title', 'admin.news', 'en', NULL, NULL),
(2099, 'admin.news.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'en', NULL, NULL),
(2100, 'admin.news.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'en', NULL, NULL),
(2101, 'admin.news.keyword', 'Keyword', 'admin.news', 'en', NULL, NULL),
(2102, 'admin.news.description', 'Description', 'admin.news', 'en', NULL, NULL),
(2103, 'admin.news.content', 'Content', 'admin.news', 'en', NULL, NULL),
(2104, 'admin.news.image', 'Image', 'admin.news', 'en', NULL, NULL),
(2105, 'admin.news.status', 'Status', 'admin.news', 'en', NULL, NULL),
(2106, 'admin.news.sort', 'Sort', 'admin.news', 'en', NULL, NULL),
(2107, 'admin.news.list', 'Blog/News manager', 'admin.news', 'en', NULL, NULL),
(2108, 'admin.news.edit', 'Edit', 'admin.news', 'en', NULL, NULL),
(2109, 'admin.news.search_place', 'Search title', 'admin.news', 'en', NULL, NULL),
(2110, 'admin.news.title', 'Tiêu đề', 'admin.news', 'vi', NULL, NULL),
(2111, 'admin.news.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.news', 'vi', NULL, NULL),
(2112, 'admin.news.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.news', 'vi', NULL, NULL),
(2113, 'admin.news.keyword', 'Từ khóa', 'admin.news', 'vi', NULL, NULL),
(2114, 'admin.news.description', 'Mô tả', 'admin.news', 'vi', NULL, NULL),
(2115, 'admin.news.content', 'Nội dung', 'admin.news', 'vi', NULL, NULL),
(2116, 'admin.news.image', 'Hình ảnh', 'admin.news', 'vi', NULL, NULL),
(2117, 'admin.news.parent', 'Danh mục cha', 'admin.news', 'vi', NULL, NULL),
(2118, 'admin.news.top', 'Hiển thị ưu tiên', 'admin.news', 'vi', NULL, NULL),
(2119, 'admin.news.status', 'Trạng thái', 'admin.news', 'vi', NULL, NULL),
(2120, 'admin.news.sort', 'Sắp xếp', 'admin.news', 'vi', NULL, NULL),
(2121, 'admin.news.list', 'Danh sách', 'admin.news', 'vi', NULL, NULL),
(2122, 'admin.news.add_new_title', 'Tạo Blog/News', 'admin.news', 'vi', NULL, NULL),
(2123, 'admin.news.add_new_des', 'Tạo mới một Blog/News', 'admin.news', 'vi', NULL, NULL),
(2124, 'admin.news.search_place', 'Tìm tiêu đề', 'admin.news', 'vi', NULL, NULL),
(2125, 'admin.length.name', 'Tên', 'admin.length', 'vi', NULL, NULL),
(2126, 'admin.length.name', 'Name', 'admin.length', 'en', NULL, NULL),
(2127, 'admin.length.description', 'Mô tả', 'admin.length', 'vi', NULL, NULL),
(2128, 'admin.length.description', 'Description', 'admin.length', 'en', NULL, NULL),
(2129, 'admin.length.list', 'Danh sách kích thước', 'admin.length', 'vi', NULL, NULL),
(2130, 'admin.length.list', 'Length list', 'admin.length', 'en', NULL, NULL),
(2131, 'admin.length.add_new_title', 'Thêm kích thước', 'admin.length', 'vi', NULL, NULL),
(2132, 'admin.length.add_new_title', 'Add Length', 'admin.length', 'en', NULL, NULL),
(2133, 'admin.weight.name', 'Tên', 'admin.weight', 'vi', NULL, NULL),
(2134, 'admin.weight.name', 'Name', 'admin.weight', 'en', NULL, NULL),
(2135, 'admin.weight.description', 'Mô tả', 'admin.weight', 'vi', NULL, NULL),
(2136, 'admin.weight.description', 'Description', 'admin.weight', 'en', NULL, NULL),
(2137, 'admin.weight.list', 'Danh sách khối lượng', 'admin.weight', 'vi', NULL, NULL),
(2138, 'admin.weight.list', 'Weight list', 'admin.weight', 'en', NULL, NULL),
(2139, 'admin.weight.add_new_title', 'Thêm khối lượng', 'admin.weight', 'vi', NULL, NULL),
(2140, 'admin.weight.add_new_title', 'Add weight', 'admin.weight', 'en', NULL, NULL),
(2141, 'admin.product_property.name', 'Tên', 'admin.product_property', 'vi', NULL, NULL),
(2142, 'admin.product_property.name', 'Name', 'admin.product_property', 'en', NULL, NULL),
(2143, 'admin.product_property.code', 'Mã', 'admin.product_property', 'vi', NULL, NULL),
(2144, 'admin.product_property.code', 'Code', 'admin.product_property', 'en', NULL, NULL),
(2145, 'admin.product_property.list', 'Danh sách thuộc tính', 'admin.product_property', 'vi', NULL, NULL),
(2146, 'admin.product_property.list', 'Product property list', 'admin.product_property', 'en', NULL, NULL),
(2147, 'admin.product_property.status', 'Trạng thái', 'admin.product_property', 'vi', NULL, NULL),
(2148, 'admin.product_property.status', 'Status', 'admin.product_property', 'en', NULL, NULL),
(2149, 'admin.product_property.add_new_title', 'Thêm thuộc tính', 'admin.product_property', 'vi', NULL, NULL),
(2150, 'admin.product_property.add_new_title', 'Add product property', 'admin.product_property', 'en', NULL, NULL),
(2151, 'admin.order_status.name', 'Tên', 'admin.order_status', 'vi', NULL, NULL),
(2152, 'admin.order_status.name', 'Name', 'admin.order_status', 'en', NULL, NULL),
(2153, 'admin.order_status.list', 'Danh sách trạng thái', 'admin.order_status', 'vi', NULL, NULL),
(2154, 'admin.order_status.list', 'Order status list', 'admin.order_status', 'en', NULL, NULL),
(2155, 'admin.order_status.status', 'Trạng thái', 'admin.order_status', 'vi', NULL, NULL),
(2156, 'admin.order_status.status', 'Status', 'admin.order_status', 'en', NULL, NULL),
(2157, 'admin.order_status.add_new_title', 'Thêm trạng thái', 'admin.order_status', 'vi', NULL, NULL),
(2158, 'admin.order_status.add_new_title', 'Add status', 'admin.order_status', 'en', NULL, NULL),
(2159, 'admin.payment_status.name', 'Tên', 'admin.payment_status', 'vi', NULL, NULL),
(2160, 'admin.payment_status.name', 'Name', 'admin.payment_status', 'en', NULL, NULL),
(2161, 'admin.payment_status.list', 'Danh sách trạng thái', 'admin.payment_status', 'vi', NULL, NULL),
(2162, 'admin.payment_status.list', 'Payment status list', 'admin.payment_status', 'en', NULL, NULL),
(2163, 'admin.payment_status.status', 'Trạng thái', 'admin.payment_status', 'vi', NULL, NULL),
(2164, 'admin.payment_status.status', 'Status', 'admin.payment_status', 'en', NULL, NULL),
(2165, 'admin.payment_status.add_new_title', 'Thêm trạng thái', 'admin.payment_status', 'vi', NULL, NULL),
(2166, 'admin.payment_status.add_new_title', 'Add status', 'admin.payment_status', 'en', NULL, NULL),
(2167, 'admin.shipping_status.name', 'Tên', 'admin.shipping_status', 'vi', NULL, NULL),
(2168, 'admin.shipping_status.name', 'Name', 'admin.shipping_status', 'en', NULL, NULL),
(2169, 'admin.shipping_status.list', 'Danh sách trạng thái', 'admin.shipping_status', 'vi', NULL, NULL),
(2170, 'admin.shipping_status.list', 'Shipping status list', 'admin.shipping_status', 'en', NULL, NULL),
(2171, 'admin.shipping_status.status', 'Trạng thái', 'admin.shipping_status', 'vi', NULL, NULL),
(2172, 'admin.shipping_status.status', 'Status', 'admin.shipping_status', 'en', NULL, NULL),
(2173, 'admin.shipping_status.add_new_title', 'Thêm trạng thái', 'admin.shipping_status', 'vi', NULL, NULL),
(2174, 'admin.shipping_status.add_new_title', 'Add status', 'admin.shipping_status', 'en', NULL, NULL),
(2175, 'admin.tax.name', 'Tên', 'admin.tax', 'vi', NULL, NULL),
(2176, 'admin.tax.name', 'Name', 'admin.tax', 'en', NULL, NULL),
(2177, 'admin.tax.value', 'Giá trị', 'admin.tax', 'vi', NULL, NULL),
(2178, 'admin.tax.value', 'Value', 'admin.tax', 'en', NULL, NULL),
(2179, 'admin.tax.non_tax', 'Không thuế', 'admin.tax', 'vi', NULL, NULL),
(2180, 'admin.tax.non_tax', 'None tax', 'admin.tax', 'en', NULL, NULL),
(2181, 'admin.tax.auto', 'Tự động', 'admin.tax', 'vi', NULL, NULL),
(2182, 'admin.tax.auto', 'Auto', 'admin.tax', 'en', NULL, NULL),
(2183, 'admin.tax.list', 'Danh sách thuế', 'admin.tax', 'vi', NULL, NULL),
(2184, 'admin.tax.list', 'Tax list', 'admin.tax', 'en', NULL, NULL),
(2185, 'admin.tax.status', 'Trạng thái', 'admin.tax', 'vi', NULL, NULL),
(2186, 'admin.tax.status', 'Status', 'admin.tax', 'en', NULL, NULL),
(2187, 'admin.tax.add_new_title', 'Thêm thuế', 'admin.tax', 'vi', NULL, NULL),
(2188, 'admin.tax.add_new_title', 'Add tax', 'admin.tax', 'en', NULL, NULL),
(2189, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'en', NULL, NULL),
(2190, 'admin.captcha.captcha_mode', 'Use Captcha', 'admin.captcha', 'en', NULL, NULL),
(2191, 'admin.captcha.captcha_method', 'Captcha method', 'admin.captcha', 'en', NULL, NULL),
(2192, 'admin.captcha.captcha_method_help', 'Select method Captcha', 'admin.captcha', 'en', NULL, NULL),
(2193, 'admin.captcha.captcha_page', 'Captcha', 'admin.captcha', 'en', NULL, NULL),
(2194, 'admin.captcha.captcha_page_help', 'Select page use Captcha', 'admin.captcha', 'en', NULL, NULL),
(2195, 'admin.captcha.captcha_page_contact', 'Contact', 'admin.captcha', 'en', NULL, NULL),
(2196, 'admin.captcha.captcha_page_register', 'Register', 'admin.captcha', 'en', NULL, NULL),
(2197, 'admin.captcha.captcha_page_forgot_password', 'Forgot pasword', 'admin.captcha', 'en', NULL, NULL),
(2198, 'admin.captcha.captcha_page_checkout', 'Checkout', 'admin.captcha', 'en', NULL, NULL),
(2199, 'admin.captcha.captcha_page_review', 'Review product', 'admin.captcha', 'en', NULL, NULL),
(2200, 'admin.captcha.captcha_title', 'Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2201, 'admin.captcha.captcha_mode', 'Sử dụng Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2202, 'admin.captcha.captcha_method', 'Loại Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2203, 'admin.captcha.captcha_method_help', 'Chọn loại Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2204, 'admin.captcha.captcha_page', 'Trang sử dụng captcha', 'admin.captcha', 'vi', NULL, NULL),
(2205, 'admin.captcha.captcha_page_help', 'Chọn trang sử dụng Captcha', 'admin.captcha', 'vi', NULL, NULL),
(2206, 'admin.captcha.captcha_page_contact', 'Liên hệ', 'admin.captcha', 'vi', NULL, NULL),
(2207, 'admin.captcha.captcha_page_register', 'Đăng ký', 'admin.captcha', 'vi', NULL, NULL),
(2208, 'admin.captcha.captcha_page_forgot_password', 'Quên mật khẩu', 'admin.captcha', 'vi', NULL, NULL),
(2209, 'admin.captcha.captcha_page_checkout', 'Đặt hàng', 'admin.captcha', 'vi', NULL, NULL),
(2210, 'admin.captcha.captcha_page_review', 'Đánh giá sản phẩm', 'admin.captcha', 'vi', NULL, NULL),
(2211, 'admin.link.list', 'Danh sách liên kết', 'admin.link', 'vi', NULL, NULL),
(2212, 'admin.link.list', 'Link list', 'admin.link', 'en', NULL, NULL),
(2213, 'admin.link.type', 'Loại liên kết', 'admin.link', 'vi', NULL, NULL),
(2214, 'admin.link.type', 'Link type', 'admin.link', 'en', NULL, NULL),
(2215, 'admin.link.collection', 'Bộ sưu tập', 'admin.link', 'vi', NULL, NULL),
(2216, 'admin.link.collection', 'Collection', 'admin.link', 'en', NULL, NULL),
(2217, 'admin.link.name', 'Tên', 'admin.link', 'vi', NULL, NULL),
(2218, 'admin.link.url', 'Đường dẫn', 'admin.link', 'vi', NULL, NULL),
(2219, 'admin.link.target', 'Target', 'admin.link', 'vi', NULL, NULL),
(2220, 'admin.link.group', 'Nhóm', 'admin.link', 'vi', NULL, NULL),
(2221, 'admin.link.sort', 'Thứ tự', 'admin.link', 'vi', NULL, NULL),
(2222, 'admin.link.status', 'Trạng thái', 'admin.link', 'vi', NULL, NULL),
(2223, 'admin.link.add_new', 'Thêm mới', 'admin.link', 'vi', NULL, NULL),
(2224, 'admin.link.add_collection_new', 'Thêm bộ sưu tập mới', 'admin.link', 'vi', NULL, NULL),
(2225, 'admin.link.add_collection_new', 'Add collection new', 'admin.link', 'en', NULL, NULL),
(2226, 'admin.link.add_new_title', 'Tạo url', 'admin.link', 'vi', NULL, NULL),
(2227, 'admin.link.add_new_collection_title', 'Tạo bộ sưu tập mới', 'admin.link', 'vi', NULL, NULL),
(2228, 'admin.link.add_new_collection_title', 'Add new collection', 'admin.link', 'en', NULL, NULL),
(2229, 'admin.link.add_new_des', 'Tạo mới url', 'admin.link', 'vi', NULL, NULL),
(2230, 'admin.link.add_new_collection_des', 'Tạo bộ sưu tập mới', 'admin.link', 'vi', NULL, NULL),
(2231, 'admin.link.add_new_collection_des', 'Add new collection', 'admin.link', 'en', NULL, NULL),
(2232, 'admin.link.select_group', 'Chọn nhóm', 'admin.link', 'vi', NULL, NULL),
(2233, 'admin.link.select_target', 'Chọn target', 'admin.link', 'vi', NULL, NULL),
(2234, 'admin.link.select_collection', 'Chọn bộ sưu tập', 'admin.link', 'vi', NULL, NULL),
(2235, 'admin.link.helper_url', 'Ví dụ: url, path, hoặc route::name', 'admin.link', 'vi', NULL, NULL),
(2236, 'admin.link.name', 'Name', 'admin.link', 'en', NULL, NULL),
(2237, 'admin.link.url', 'Url', 'admin.link', 'en', NULL, NULL),
(2238, 'admin.link.target', 'Target', 'admin.link', 'en', NULL, NULL),
(2239, 'admin.link.group', 'Group', 'admin.link', 'en', NULL, NULL),
(2240, 'admin.link.status', 'Status', 'admin.link', 'en', NULL, NULL),
(2241, 'admin.link.sort', 'Sort', 'admin.link', 'en', NULL, NULL),
(2242, 'admin.link.add_new', 'Add new', 'admin.link', 'en', NULL, NULL),
(2243, 'admin.link.add_new_title', 'Add layout url', 'admin.link', 'en', NULL, NULL),
(2244, 'admin.link.add_new_des', 'Create a new layout url', 'admin.link', 'en', NULL, NULL),
(2245, 'admin.link.select_group', 'Select group', 'admin.link', 'en', NULL, NULL),
(2246, 'admin.link.select_target', 'Select target', 'admin.link', 'en', NULL, NULL),
(2247, 'admin.link.select_collection', 'Select collection', 'admin.link', 'en', NULL, NULL),
(2248, 'admin.link.helper_url', 'Ex: url, path, or route::name', 'admin.link', 'en', NULL, NULL),
(2249, 'admin.link_position.menu', 'Menu', 'admin.link', 'vi', NULL, NULL),
(2250, 'admin.link_position.menu_left', 'Menu trái', 'admin.link', 'vi', NULL, NULL),
(2251, 'admin.link_position.menu_right', 'Menu phải', 'admin.link', 'vi', NULL, NULL),
(2252, 'admin.link_position.footer', 'Footer', 'admin.link', 'vi', NULL, NULL),
(2253, 'admin.link_position.footer_left', 'Footer trái', 'admin.link', 'vi', NULL, NULL),
(2254, 'admin.link_position.footer_right', 'Footer phải', 'admin.link', 'vi', NULL, NULL),
(2255, 'admin.link_position.sidebar', 'Thanh bên', 'admin.link', 'vi', NULL, NULL),
(2256, 'admin.link_position.menu', 'Menu', 'admin.link', 'en', NULL, NULL),
(2257, 'admin.link_position.menu_left', 'Menu left', 'admin.link', 'en', NULL, NULL),
(2258, 'admin.link_position.menu_right', 'Menu right', 'admin.link', 'en', NULL, NULL),
(2259, 'admin.link_position.footer', 'Footer', 'admin.link', 'en', NULL, NULL),
(2260, 'admin.link_position.footer_left', 'Footer left', 'admin.link', 'en', NULL, NULL),
(2261, 'admin.link_position.footer_right', 'Footer right', 'admin.link', 'en', NULL, NULL),
(2262, 'admin.link_position.sidebar', 'Sidebar', 'admin.link', 'en', NULL, NULL),
(2263, 'admin.link_group.list', 'Danh sách nhóm link', 'admin.link_group', 'vi', NULL, NULL),
(2264, 'admin.link_group.list', 'Link group list', 'admin.link_group', 'en', NULL, NULL),
(2265, 'admin.link_group.add_new_title', 'Thêm loại mới', 'admin.link_group', 'vi', NULL, NULL),
(2266, 'admin.link_group.add_new_title', 'Add new type', 'admin.link_group', 'en', NULL, NULL),
(2267, 'admin.link_group.code', 'Mã', 'admin.link_group', 'vi', NULL, NULL),
(2268, 'admin.link_group.code', 'Code', 'admin.link_group', 'en', NULL, NULL),
(2269, 'admin.link_group.name', 'Tên', 'admin.link_group', 'vi', NULL, NULL),
(2270, 'admin.link_group.name', 'Name', 'admin.link_group', 'en', NULL, NULL),
(2271, 'admin.supplier.name', 'Name', 'admin.supplier', 'en', NULL, NULL),
(2272, 'admin.supplier.alias', 'Url customize <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'en', NULL, NULL),
(2273, 'admin.supplier.alias_validate', 'Maximum 100 characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'en', NULL, NULL),
(2274, 'admin.supplier.email', 'Email', 'admin.supplier', 'en', NULL, NULL),
(2275, 'admin.supplier.phone', 'Phone', 'admin.supplier', 'en', NULL, NULL),
(2276, 'admin.supplier.address', 'Address', 'admin.supplier', 'en', NULL, NULL),
(2277, 'admin.supplier.image', 'Image', 'admin.supplier', 'en', NULL, NULL),
(2278, 'admin.supplier.url', 'Website', 'admin.supplier', 'en', NULL, NULL),
(2279, 'admin.supplier.sort', 'Sort', 'admin.supplier', 'en', NULL, NULL),
(2280, 'admin.supplier.status', 'Status', 'admin.supplier', 'en', NULL, NULL),
(2281, 'admin.supplier.add_new', 'Add new', 'admin.supplier', 'en', NULL, NULL),
(2282, 'admin.supplier.add_new_title', 'Add supplier', 'admin.supplier', 'en', NULL, NULL),
(2283, 'admin.supplier.add_new_des', 'Create a new supplier', 'admin.supplier', 'en', NULL, NULL),
(2284, 'admin.supplier.list', 'Suppliers list', 'admin.supplier', 'en', NULL, NULL),
(2285, 'admin.supplier.name', 'Tên nhà cung cấp', 'admin.supplier', 'vi', NULL, NULL),
(2286, 'admin.supplier.alias', 'URL tùy chỉnh <span class=\"seo\" title=\"SEO\"><i class=\"fa fa-coffee\" aria-hidden=\"true\"></i></span>', 'admin.supplier', 'vi', NULL, NULL),
(2287, 'admin.supplier.alias_validate', 'Tối đa 100 kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"-_\" ', 'admin.supplier', 'vi', NULL, NULL),
(2288, 'admin.supplier.email', 'Email', 'admin.supplier', 'vi', NULL, NULL),
(2289, 'admin.supplier.phone', 'Số điện thoại', 'admin.supplier', 'vi', NULL, NULL),
(2290, 'admin.supplier.address', 'Địa chỉ', 'admin.supplier', 'vi', NULL, NULL),
(2291, 'admin.supplier.image', 'Hình ảnh', 'admin.supplier', 'vi', NULL, NULL),
(2292, 'admin.supplier.url', 'Website', 'admin.supplier', 'vi', NULL, NULL),
(2293, 'admin.supplier.sort', 'Sắp xếp', 'admin.supplier', 'vi', NULL, NULL),
(2294, 'admin.supplier.status', 'Status', 'admin.supplier', 'vi', NULL, NULL),
(2295, 'admin.supplier.add_new_title', 'Tạo nhà cung cấp', 'admin.supplier', 'vi', NULL, NULL),
(2296, 'admin.supplier.add_new_des', 'Tạo mới nhà cung cấp', 'admin.supplier', 'vi', NULL, NULL),
(2297, 'admin.supplier.list', 'Danh sách nhà cung cấp', 'admin.supplier', 'vi', NULL, NULL),
(2298, 'admin.supplier.search_place', 'Tìm tên hoặc email', 'admin.supplier', 'vi', NULL, NULL),
(2299, 'admin.supplier.search_place', 'Search name or email', 'admin.supplier', 'en', NULL, NULL),
(2300, 'admin.role.name', 'Name', 'admin.role', 'en', NULL, NULL),
(2301, 'admin.role.slug', 'Slug', 'admin.role', 'en', NULL, NULL),
(2302, 'admin.role.permission', 'Permission', 'admin.role', 'en', NULL, NULL),
(2303, 'admin.role.http_path', 'HTTP path', 'admin.role', 'en', NULL, NULL),
(2304, 'admin.role.http_method', 'HTTP method', 'admin.role', 'en', NULL, NULL),
(2305, 'admin.role.created_at', 'Created at', 'admin.role', 'en', NULL, NULL),
(2306, 'admin.role.updated_at', 'Updated at', 'admin.role', 'en', NULL, NULL),
(2307, 'admin.role.password_confirmation', 'Confirmation', 'admin.role', 'en', NULL, NULL),
(2308, 'admin.role.password_confirmation', 'Xác nhận', 'admin.role', 'vi', NULL, NULL),
(2309, 'admin.role.slug_validate', 'Only characters in the group: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'en', NULL, NULL),
(2310, 'admin.role.list', 'Role manager', 'admin.role', 'en', NULL, NULL),
(2311, 'admin.role.list', 'Quản lý role', 'admin.role', 'vi', NULL, NULL),
(2312, 'admin.role.edit', 'Edit', 'admin.role', 'en', NULL, NULL),
(2313, 'admin.role.edit', 'Chỉnh sửa', 'admin.role', 'vi', NULL, NULL),
(2314, 'admin.role.add_new', 'Add new', 'admin.role', 'en', NULL, NULL),
(2315, 'admin.role.add_new_title', 'Add new role', 'admin.role', 'en', NULL, NULL),
(2316, 'admin.role.add_new_des', 'Create a new role', 'admin.role', 'en', NULL, NULL),
(2317, 'admin.role.select_http_method', 'Select method', 'admin.role', 'en', NULL, NULL),
(2318, 'admin.role.select_permission', 'Select permission', 'admin.role', 'en', NULL, NULL),
(2319, 'admin.role.select_user', 'Select user', 'admin.role', 'en', NULL, NULL),
(2320, 'admin.role.slug', 'Slug', 'admin.role', 'vi', NULL, NULL),
(2321, 'admin.role.name', 'Tên', 'admin.role', 'vi', NULL, NULL),
(2322, 'admin.role.roles', 'vai trò', 'admin.role', 'vi', NULL, NULL),
(2323, 'admin.role.permission', 'Quyền hạn', 'admin.role', 'vi', NULL, NULL),
(2324, 'admin.role.http_path', 'HTTP path', 'admin.role', 'vi', NULL, NULL),
(2325, 'admin.role.http_method', 'HTTP method', 'admin.role', 'vi', NULL, NULL),
(2326, 'admin.role.created_at', 'Tạo lúc', 'admin.role', 'vi', NULL, NULL),
(2327, 'admin.role.updated_at', 'Cập nhật', 'admin.role', 'vi', NULL, NULL),
(2328, 'admin.role.slug_validate', 'Chỉ sử dụng kí tự trong nhóm: \"A-Z\", \"a-z\", \"0-9\" and \"._-\" ', 'admin.role', 'vi', NULL, NULL),
(2329, 'admin.role.add_new', 'Thêm mới', 'admin.role', 'vi', NULL, NULL),
(2330, 'admin.role.add_new_title', 'Tạo quyền', 'admin.role', 'vi', NULL, NULL),
(2331, 'admin.role.add_new_des', 'Tạo mới một quyền', 'admin.role', 'vi', NULL, NULL),
(2332, 'admin.role.select_permission', 'Chọn quyền hạn', 'admin.role', 'vi', NULL, NULL),
(2333, 'admin.role.select_user', 'Chọn người dùng', 'admin.role', 'vi', NULL, NULL),
(2334, 'admin.template.import', 'Import Template', 'admin.template', 'en', NULL, NULL),
(2335, 'admin.template.file_format', 'File format', 'admin.template', 'en', NULL, NULL),
(2336, 'admin.template.choose_file', 'Choose File', 'admin.template', 'en', NULL, NULL),
(2337, 'admin.template.import_submit', 'Import', 'admin.template', 'en', NULL, NULL),
(2338, 'admin.template.import_note', 'File <span style=\"color:red\">.zip</span>', 'admin.template', 'en', NULL, NULL),
(2339, 'admin.template.error_unzip', 'Error while unzip', 'admin.template', 'en', NULL, NULL),
(2340, 'admin.template.error_upload', 'Error while uploading file', 'admin.template', 'en', NULL, NULL),
(2341, 'admin.template.error_check_config', 'Cannot find config file', 'admin.template', 'en', NULL, NULL),
(2342, 'admin.template.error_config_format', 'The config file is not in the right format', 'admin.template', 'en', NULL, NULL),
(2343, 'admin.template.import_success', 'Import success!', 'admin.template', 'en', NULL, NULL),
(2344, 'admin.template.error_exist', 'Template exist!', 'admin.template', 'en', NULL, NULL),
(2345, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Template</span></a>', 'admin.template', 'en', NULL, NULL),
(2346, 'admin.template.template_more', '<a href=\"https://s-cart.org/en/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.template', 'en', NULL, NULL),
(2347, 'admin.template.manager', 'Template management', 'admin.template', 'en', NULL, NULL),
(2348, 'admin.template.title', 'Template list', 'admin.template', 'en', NULL, NULL),
(2349, 'admin.template.name', 'Template name', 'admin.template', 'en', NULL, NULL),
(2350, 'admin.template.auth', 'Author', 'admin.template', 'en', NULL, NULL),
(2351, 'admin.template.email', 'Email', 'admin.template', 'en', NULL, NULL),
(2352, 'admin.template.website', 'Website', 'admin.template', 'en', NULL, NULL),
(2353, 'admin.template.activated', 'Activated', 'admin.template', 'en', NULL, NULL),
(2354, 'admin.template.inactive', 'Inactive', 'admin.template', 'en', NULL, NULL),
(2355, 'admin.template.download', 'Download', 'admin.template', 'en', NULL, NULL),
(2356, 'admin.template.remove', 'Remove', 'admin.template', 'en', NULL, NULL),
(2357, 'admin.template.status', 'Status', 'admin.template', 'en', NULL, NULL),
(2358, 'admin.template.action', 'Action', 'admin.template', 'en', NULL, NULL),
(2359, 'admin.template.installing', 'Installing', 'admin.template', 'en', NULL, NULL),
(2360, 'admin.template.local', 'Save local', 'admin.template', 'en', NULL, NULL),
(2361, 'admin.template.online', 'From library', 'admin.template', 'en', NULL, NULL),
(2362, 'admin.template.version', 'Version', 'admin.template', 'en', NULL, NULL),
(2363, 'admin.template.link', 'Link', 'admin.template', 'en', NULL, NULL),
(2364, 'admin.template.image', 'Image', 'admin.template', 'en', NULL, NULL),
(2365, 'admin.template.empty', 'Empty template!', 'admin.template', 'en', NULL, NULL),
(2366, 'admin.template.downloaded', 'Downloaded', 'admin.template', 'en', NULL, NULL),
(2367, 'admin.template.rated', 'Rated', 'admin.template', 'en', NULL, NULL),
(2368, 'admin.template.price', 'Price', 'admin.template', 'en', NULL, NULL),
(2369, 'admin.template.free', 'Free', 'admin.template', 'en', NULL, NULL),
(2370, 'admin.template.date', 'Date', 'admin.template', 'en', NULL, NULL),
(2371, 'admin.template.click_here', 'Click here', 'admin.template', 'en', NULL, NULL),
(2372, 'admin.template.located', 'Located', 'admin.template', 'en', NULL, NULL),
(2373, 'admin.template.code', 'Code', 'admin.template', 'en', NULL, NULL),
(2374, 'admin.template.image_demo', 'Image demo', 'admin.template', 'en', NULL, NULL),
(2375, 'admin.template.only_version_current', 'Only this version', 'admin.template', 'en', NULL, NULL),
(2376, 'admin.template.compatible', 'Compatible', 'admin.template', 'en', NULL, NULL),
(2377, 'admin.template.used', 'Template used', 'admin.template', 'en', NULL, NULL),
(2378, 'admin.template.list', 'Template list', 'admin.template', 'en', NULL, NULL),
(2379, 'admin.template.import', 'Import Giao diện', 'admin.template', 'vi', NULL, NULL),
(2380, 'admin.template.file_format', 'File mẫu', 'admin.template', 'vi', NULL, NULL),
(2381, 'admin.template.choose_file', 'Chọn file', 'admin.template', 'vi', NULL, NULL),
(2382, 'admin.template.import_submit', 'Import', 'admin.template', 'vi', NULL, NULL),
(2383, 'admin.template.import_note', 'Là file <span style=\"color:red\">.zip</span>', 'admin.template', 'vi', NULL, NULL),
(2384, 'admin.template.error_unzip', 'Lỗi trong khi unzip', 'admin.template', 'vi', NULL, NULL),
(2385, 'admin.template.error_upload', 'Lỗi trong khi upload file', 'admin.template', 'vi', NULL, NULL),
(2386, 'admin.template.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.template', 'vi', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(2387, 'admin.template.error_config_format', 'File config không đúng định dạng', 'admin.template', 'vi', NULL, NULL),
(2388, 'admin.template.import_success', 'Import thành công!', 'admin.template', 'vi', NULL, NULL),
(2389, 'admin.template.error_exist', 'Giao diện đã tồn tại!', 'admin.template', 'vi', NULL, NULL),
(2390, 'admin.template.template_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.template', 'vi', NULL, NULL),
(2391, 'admin.template.template_more', '<a href=\"https://s-cart.org/vi/template.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.template', 'vi', NULL, NULL),
(2392, 'admin.template.manager', 'Quản lý giao diện', 'admin.template', 'vi', NULL, NULL),
(2393, 'admin.template.title', 'Danh sách giao diện', 'admin.template', 'vi', NULL, NULL),
(2394, 'admin.template.name', 'Tên giao diện', 'admin.template', 'vi', NULL, NULL),
(2395, 'admin.template.email', 'Email', 'admin.template', 'vi', NULL, NULL),
(2396, 'admin.template.website', 'Website', 'admin.template', 'vi', NULL, NULL),
(2397, 'admin.template.activated', 'Đang hoạt động', 'admin.template', 'vi', NULL, NULL),
(2398, 'admin.template.inactive', 'Đang ẩn', 'admin.template', 'vi', NULL, NULL),
(2399, 'admin.template.download', 'Tải về', 'admin.template', 'vi', NULL, NULL),
(2400, 'admin.template.remove', 'Gỡ bỏ', 'admin.template', 'vi', NULL, NULL),
(2401, 'admin.template.status', 'Trạng thái', 'admin.template', 'vi', NULL, NULL),
(2402, 'admin.template.action', 'Hành động', 'admin.template', 'vi', NULL, NULL),
(2403, 'admin.template.installing', 'Đang cài đặt', 'admin.template', 'vi', NULL, NULL),
(2404, 'admin.template.local', 'Đã lưu trên máy', 'admin.template', 'vi', NULL, NULL),
(2405, 'admin.template.online', 'Tải từ thư viện', 'admin.template', 'vi', NULL, NULL),
(2406, 'admin.template.auth', 'Tác giả', 'admin.template', 'vi', NULL, NULL),
(2407, 'admin.template.version', 'Phiên bản', 'admin.template', 'vi', NULL, NULL),
(2408, 'admin.template.link', 'Liên kết', 'admin.template', 'vi', NULL, NULL),
(2409, 'admin.template.image', 'Hình ảnh', 'admin.template', 'vi', NULL, NULL),
(2410, 'admin.template.empty', 'Chưa có template nào!', 'admin.template', 'vi', NULL, NULL),
(2411, 'admin.template.downloaded', 'Số lần tải', 'admin.template', 'vi', NULL, NULL),
(2412, 'admin.template.rated', 'Đánh giá', 'admin.template', 'vi', NULL, NULL),
(2413, 'admin.template.price', 'Giá', 'admin.template', 'vi', NULL, NULL),
(2414, 'admin.template.free', 'Miễn phí', 'admin.template', 'vi', NULL, NULL),
(2415, 'admin.template.date', 'Ngày tạo', 'admin.template', 'vi', NULL, NULL),
(2416, 'admin.template.located', 'Đã tải về', 'admin.template', 'vi', NULL, NULL),
(2417, 'admin.template.code', 'Mã code', 'admin.template', 'vi', NULL, NULL),
(2418, 'admin.template.click_here', 'Bấm vào đây', 'admin.template', 'vi', NULL, NULL),
(2419, 'admin.template.image_demo', 'Hình mẫu', 'admin.template', 'vi', NULL, NULL),
(2420, 'admin.template.only_version_current', 'Chỉ phiên bản này', 'admin.template', 'vi', NULL, NULL),
(2421, 'admin.template.compatible', 'Tương thích', 'admin.template', 'vi', NULL, NULL),
(2422, 'admin.template.used', 'Đang sử dụng', 'admin.template', 'vi', NULL, NULL),
(2423, 'admin.template.list', 'Danh sách giao diện', 'admin.template', 'vi', NULL, NULL),
(2424, 'admin.plugin.compatible', 'Tương thích', 'admin.plugin', 'vi', NULL, NULL),
(2425, 'admin.plugin.code', 'Mã code', 'admin.plugin', 'vi', NULL, NULL),
(2426, 'admin.plugin.name', 'Tên chức năng', 'admin.plugin', 'vi', NULL, NULL),
(2427, 'admin.plugin.sort', 'Thứ tự', 'admin.plugin', 'vi', NULL, NULL),
(2428, 'admin.plugin.action', 'Hành động', 'admin.plugin', 'vi', NULL, NULL),
(2429, 'admin.plugin.status', 'Trạng thái', 'admin.plugin', 'vi', NULL, NULL),
(2430, 'admin.plugin.enable', 'Kích hoạt', 'admin.plugin', 'vi', NULL, NULL),
(2431, 'admin.plugin.disable', 'Tắt', 'admin.plugin', 'vi', NULL, NULL),
(2432, 'admin.plugin.remove', 'Gỡ bỏ', 'admin.plugin', 'vi', NULL, NULL),
(2433, 'admin.plugin.only_delete_data', 'Chỉ xóa dữ liệu', 'admin.plugin', 'vi', NULL, NULL),
(2434, 'admin.plugin.install', 'Cài đặt', 'admin.plugin', 'vi', NULL, NULL),
(2435, 'admin.plugin.config', 'Cấu hình', 'admin.plugin', 'vi', NULL, NULL),
(2436, 'admin.plugin.actived', 'Hoạt động', 'admin.plugin', 'vi', NULL, NULL),
(2437, 'admin.plugin.disabled', 'Bị tắt', 'admin.plugin', 'vi', NULL, NULL),
(2438, 'admin.plugin.not_install', 'Chưa cài đặt', 'admin.plugin', 'vi', NULL, NULL),
(2439, 'admin.plugin.auth', 'Tác giả', 'admin.plugin', 'vi', NULL, NULL),
(2440, 'admin.plugin.version', 'Phiên bản', 'admin.plugin', 'vi', NULL, NULL),
(2441, 'admin.plugin.link', 'Liên kết', 'admin.plugin', 'vi', NULL, NULL),
(2442, 'admin.plugin.image', 'Hình ảnh', 'admin.plugin', 'vi', NULL, NULL),
(2443, 'admin.plugin.empty', 'Chưa có extension nào!', 'admin.plugin', 'vi', NULL, NULL),
(2444, 'admin.plugin.local', 'Đã lưu trên máy', 'admin.plugin', 'vi', NULL, NULL),
(2445, 'admin.plugin.online', 'Tải từ thư viện', 'admin.plugin', 'vi', NULL, NULL),
(2446, 'admin.plugin.downloaded', 'Số lần tải', 'admin.plugin', 'vi', NULL, NULL),
(2447, 'admin.plugin.rated', 'Đánh giá', 'admin.plugin', 'vi', NULL, NULL),
(2448, 'admin.plugin.price', 'Giá', 'admin.plugin', 'vi', NULL, NULL),
(2449, 'admin.plugin.free', 'Miễn phí', 'admin.plugin', 'vi', NULL, NULL),
(2450, 'admin.plugin.date', 'Ngày tạo', 'admin.plugin', 'vi', NULL, NULL),
(2451, 'admin.plugin.located', 'Đã tải về', 'admin.plugin', 'vi', NULL, NULL),
(2452, 'admin.plugin.only_free', 'Là miễn phí', 'admin.plugin', 'vi', NULL, NULL),
(2453, 'admin.plugin.only_version', 'Cùng phiên bản', 'admin.plugin', 'vi', NULL, NULL),
(2454, 'admin.plugin.all_version', 'Tất cả phiên bản', 'admin.plugin', 'vi', NULL, NULL),
(2455, 'admin.plugin.sort_price_asc', 'Giá tăng', 'admin.plugin', 'vi', NULL, NULL),
(2456, 'admin.plugin.sort_price_desc', 'Giá giảm', 'admin.plugin', 'vi', NULL, NULL),
(2457, 'admin.plugin.sort_rating', 'Bình chọn', 'admin.plugin', 'vi', NULL, NULL),
(2458, 'admin.plugin.sort_download', 'Lượt tải', 'admin.plugin', 'vi', NULL, NULL),
(2459, 'admin.plugin.search_keyword', 'Từ khóa', 'admin.plugin', 'vi', NULL, NULL),
(2460, 'admin.plugin.enter_search_keyword', 'Nhập từ khóa', 'admin.plugin', 'vi', NULL, NULL),
(2461, 'admin.plugin.search_submit', 'Lọc kết quả', 'admin.plugin', 'vi', NULL, NULL),
(2462, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'vi', NULL, NULL),
(2463, 'admin.plugin.file_format', 'File mẫu', 'admin.plugin', 'vi', NULL, NULL),
(2464, 'admin.plugin.choose_file', 'Chọn file', 'admin.plugin', 'vi', NULL, NULL),
(2465, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'vi', NULL, NULL),
(2466, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'vi', NULL, NULL),
(2467, 'admin.plugin.import_note', 'Là file <span style=\"color:red\">.zip</span>', 'admin.plugin', 'vi', NULL, NULL),
(2468, 'admin.plugin.error_unzip', 'Lỗi trong khi unzip', 'admin.plugin', 'vi', NULL, NULL),
(2469, 'admin.plugin.error_upload', 'Lỗi trong khi upload file', 'admin.plugin', 'vi', NULL, NULL),
(2470, 'admin.plugin.error_check_config', 'Không tìm thấy hoặc không thể đọc file config', 'admin.plugin', 'vi', NULL, NULL),
(2471, 'admin.plugin.error_config_format', 'File config không đúng định dạng', 'admin.plugin', 'vi', NULL, NULL),
(2472, 'admin.plugin.import_success', 'Import thành công!', 'admin.plugin', 'vi', NULL, NULL),
(2473, 'admin.plugin.error_exist', 'Plugin đã tồn tại!', 'admin.plugin', 'vi', NULL, NULL),
(2474, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'vi', NULL, NULL),
(2475, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/vi/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download đầy đủ Ở ĐÂY</a>', 'admin.plugin', 'vi', NULL, NULL),
(2476, 'admin.plugin.Shipping_plugin', 'Shipping extension', 'admin.plugin', 'en', NULL, NULL),
(2477, 'admin.plugin.Payment_plugin', 'Payment extension', 'admin.plugin', 'en', NULL, NULL),
(2478, 'admin.plugin.Total_plugin', 'Order total extension', 'admin.plugin', 'en', NULL, NULL),
(2479, 'admin.plugin.Fee_plugin', 'Order fee extension', 'admin.plugin', 'en', NULL, NULL),
(2480, 'admin.plugin.Other_plugin', 'Other plugin', 'admin.plugin', 'en', NULL, NULL),
(2481, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'en', NULL, NULL),
(2482, 'admin.plugin.Cms_plugin', 'Cms plugins', 'admin.plugin', 'en', NULL, NULL),
(2483, 'admin.plugin.Block_plugin', 'Block plugins', 'admin.plugin', 'en', NULL, NULL),
(2484, 'admin.plugin.Shipping_plugin', 'Chức năng vận chuyển', 'admin.plugin', 'vi', NULL, NULL),
(2485, 'admin.plugin.Payment_plugin', 'Chức năng thanh toán', 'admin.plugin', 'vi', NULL, NULL),
(2486, 'admin.plugin.Total_plugin', 'Chức năng giá trị đơn hàng', 'admin.plugin', 'vi', NULL, NULL),
(2487, 'admin.plugin.Fee_plugin', 'Chức năng phí đơn hàng', 'admin.plugin', 'vi', NULL, NULL),
(2488, 'admin.plugin.Other_plugin', 'Chức năng khác', 'admin.plugin', 'vi', NULL, NULL),
(2489, 'admin.plugin.Cms_plugin', 'Module CMS', 'admin.plugin', 'vi', NULL, NULL),
(2490, 'admin.plugin.Api_plugin', 'Module Api', 'admin.plugin', 'vi', NULL, NULL),
(2491, 'admin.plugin.Block_plugin', 'Module Block', 'admin.plugin', 'vi', NULL, NULL),
(2492, 'admin.plugin.compatible', 'Compatible', 'admin.plugin', 'en', NULL, NULL),
(2493, 'admin.plugin.code', 'Code', 'admin.plugin', 'en', NULL, NULL),
(2494, 'admin.plugin.name', 'Name', 'admin.plugin', 'en', NULL, NULL),
(2495, 'admin.plugin.sort', 'Sort', 'admin.plugin', 'en', NULL, NULL),
(2496, 'admin.plugin.action', 'Action', 'admin.plugin', 'en', NULL, NULL),
(2497, 'admin.plugin.status', 'Status', 'admin.plugin', 'en', NULL, NULL),
(2498, 'admin.plugin.enable', 'Enable', 'admin.plugin', 'en', NULL, NULL),
(2499, 'admin.plugin.disable', 'Disable', 'admin.plugin', 'en', NULL, NULL),
(2500, 'admin.plugin.remove', 'Remove', 'admin.plugin', 'en', NULL, NULL),
(2501, 'admin.plugin.only_delete_data', 'Only remove data', 'admin.plugin', 'en', NULL, NULL),
(2502, 'admin.plugin.install', 'Install', 'admin.plugin', 'en', NULL, NULL),
(2503, 'admin.plugin.config', 'Config', 'admin.plugin', 'en', NULL, NULL),
(2504, 'admin.plugin.actived', 'Actived', 'admin.plugin', 'en', NULL, NULL),
(2505, 'admin.plugin.disabled', 'Disabled', 'admin.plugin', 'en', NULL, NULL),
(2506, 'admin.plugin.not_install', 'Not install', 'admin.plugin', 'en', NULL, NULL),
(2507, 'admin.plugin.auth', 'Auth', 'admin.plugin', 'en', NULL, NULL),
(2508, 'admin.plugin.version', 'Version', 'admin.plugin', 'en', NULL, NULL),
(2509, 'admin.plugin.link', 'Link', 'admin.plugin', 'en', NULL, NULL),
(2510, 'admin.plugin.image', 'Image', 'admin.plugin', 'en', NULL, NULL),
(2511, 'admin.plugin.empty', 'Empty extension!', 'admin.plugin', 'en', NULL, NULL),
(2512, 'admin.plugin.local', 'Save local', 'admin.plugin', 'en', NULL, NULL),
(2513, 'admin.plugin.online', 'From library', 'admin.plugin', 'en', NULL, NULL),
(2514, 'admin.plugin.downloaded', 'Downloaded', 'admin.plugin', 'en', NULL, NULL),
(2515, 'admin.plugin.rated', 'Rated', 'admin.plugin', 'en', NULL, NULL),
(2516, 'admin.plugin.price', 'Price', 'admin.plugin', 'en', NULL, NULL),
(2517, 'admin.plugin.free', 'Free', 'admin.plugin', 'en', NULL, NULL),
(2518, 'admin.plugin.date', 'Date', 'admin.plugin', 'en', NULL, NULL),
(2519, 'admin.plugin.located', 'Located', 'admin.plugin', 'en', NULL, NULL),
(2520, 'admin.plugin.only_free', 'Is free', 'admin.plugin', 'en', NULL, NULL),
(2521, 'admin.plugin.only_version', 'Only version', 'admin.plugin', 'en', NULL, NULL),
(2522, 'admin.plugin.all_version', 'All version', 'admin.plugin', 'en', NULL, NULL),
(2523, 'admin.plugin.sort_price_asc', 'Price asc', 'admin.plugin', 'en', NULL, NULL),
(2524, 'admin.plugin.sort_price_desc', 'Price desc', 'admin.plugin', 'en', NULL, NULL),
(2525, 'admin.plugin.sort_rating', 'Rating', 'admin.plugin', 'en', NULL, NULL),
(2526, 'admin.plugin.sort_download', 'Download', 'admin.plugin', 'en', NULL, NULL),
(2527, 'admin.plugin.search_keyword', 'Keyword', 'admin.plugin', 'en', NULL, NULL),
(2528, 'admin.plugin.enter_search_keyword', 'Enter keyword', 'admin.plugin', 'en', NULL, NULL),
(2529, 'admin.plugin.search_submit', 'Filter result', 'admin.plugin', 'en', NULL, NULL),
(2530, 'admin.plugin.import', 'Import Plugin', 'admin.plugin', 'en', NULL, NULL),
(2531, 'admin.plugin.file_format', 'File format', 'admin.plugin', 'en', NULL, NULL),
(2532, 'admin.plugin.choose_file', 'Choose File', 'admin.plugin', 'en', NULL, NULL),
(2533, 'admin.plugin.import_submit', 'Import', 'admin.plugin', 'en', NULL, NULL),
(2534, 'admin.plugin.import_data', 'Import :data', 'admin.plugin', 'en', NULL, NULL),
(2535, 'admin.plugin.import_note', 'File <span style=\"color:red\">.zip</span>', 'admin.plugin', 'en', NULL, NULL),
(2536, 'admin.plugin.error_unzip', 'Error while unzip', 'admin.plugin', 'en', NULL, NULL),
(2537, 'admin.plugin.error_upload', 'Error while uploading file', 'admin.plugin', 'en', NULL, NULL),
(2538, 'admin.plugin.error_check_config', 'Cannot find config file', 'admin.plugin', 'en', NULL, NULL),
(2539, 'admin.plugin.error_config_format', 'The config file is not in the right format', 'admin.plugin', 'en', NULL, NULL),
(2540, 'admin.plugin.import_success', 'Import success!', 'admin.plugin', 'en', NULL, NULL),
(2541, 'admin.plugin.error_exist', 'Plugin exist!', 'admin.plugin', 'en', NULL, NULL),
(2542, 'admin.plugin.plugin_import', '<a href=\"import\" target=_new><span class=\"btn btn-success btn-flat\"><i class=\"fa fa-floppy-o\" aria-hidden=\"true\"></i> Import Plugin</span></a>', 'admin.plugin', 'en', NULL, NULL),
(2543, 'admin.plugin.plugin_more', '<a href=\"https://s-cart.org/en/plugin.html\" target=_new><i class=\"fa fa-download\" aria-hidden=\"true\"></i> Download more HERE</a>', 'admin.plugin', 'en', NULL, NULL),
(2544, 'admin.plugin.install_success', 'Installed successfully', 'admin.plugin', 'en', NULL, NULL),
(2545, 'admin.plugin.install_faild', 'Installation failed', 'admin.plugin', 'en', NULL, NULL),
(2546, 'admin.plugin.table_exist', 'Table :table already exists', 'admin.plugin', 'en', NULL, NULL),
(2547, 'admin.plugin.plugin_exist', 'This plugin already exists', 'admin.plugin', 'en', NULL, NULL),
(2548, 'admin.plugin.action_error', 'There was an error while :action', 'admin.plugin', 'en', NULL, NULL),
(2549, 'admin.plugin.install_success', 'Cài đặt thành công', 'admin.plugin', 'vi', NULL, NULL),
(2550, 'admin.plugin.install_faild', 'Cài đặt thất bại', 'admin.plugin', 'vi', NULL, NULL),
(2551, 'admin.plugin.table_exist', 'Bảng :table đã tồn tại rồi', 'admin.plugin', 'vi', NULL, NULL),
(2552, 'admin.plugin.plugin_exist', 'Plugin này đã tồn tại rồi', 'admin.plugin', 'vi', NULL, NULL),
(2553, 'admin.plugin.action_error', 'Có lỗi trong khi :action', 'admin.plugin', 'vi', NULL, NULL),
(2554, 'admin.plugin.not_compatible', 'Lỗi không tương thích. Plugin/template này chỉ hỗ trợ các phiên bản :version. Phiên bản hiện tại là :sc_version', 'admin.plugin', 'vi', NULL, NULL),
(2555, 'admin.plugin.not_compatible', 'Incompatibility error. This plugin/template only supports :version versions. The current version is :sc_version', 'admin.plugin', 'en', NULL, NULL),
(2556, 'admin.chart.static_month', 'Thống kê trong 12 tháng', 'admin.chart', 'vi', NULL, NULL),
(2557, 'admin.chart.static_30_day', 'Thống kê trong 1 tháng', 'admin.chart', 'vi', NULL, NULL),
(2558, 'admin.chart.static_month_help', 'Dữ liệu so sánh bằng tổng số tiền của đơn hàng, đơn vị Bit', 'admin.chart', 'vi', NULL, NULL),
(2559, 'admin.chart.amount', 'Tổng số tiền (Bit)', 'admin.chart', 'vi', NULL, NULL),
(2560, 'admin.chart.order', 'Tổng đơn hàng', 'admin.chart', 'vi', NULL, NULL),
(2561, 'admin.chart.static_country', 'Đơn hàng theo quốc gia', 'admin.chart', 'vi', NULL, NULL),
(2562, 'admin.chart.country', 'Quốc gia', 'admin.chart', 'vi', NULL, NULL),
(2563, 'admin.chart.static_month', 'Statistics for 12 months', 'admin.chart', 'en', NULL, NULL),
(2564, 'admin.chart.static_30_day', 'Statistics for 30 days', 'admin.chart', 'en', NULL, NULL),
(2565, 'admin.chart.static_month_help', 'The comparison data is equal to the total amount of the order and the Bit units', 'admin.chart', 'en', NULL, NULL),
(2566, 'admin.chart.amount', 'Total amount (Bit)', 'admin.chart', 'en', NULL, NULL),
(2567, 'admin.chart.order', 'Total order', 'admin.chart', 'en', NULL, NULL),
(2568, 'admin.chart.static_country', 'Statistics of orders by country', 'admin.chart', 'en', NULL, NULL),
(2569, 'admin.chart.country', 'Country', 'admin.chart', 'en', NULL, NULL),
(2570, 'admin.chart.static_device', 'Statistics of orders by device', 'admin.chart', 'en', NULL, NULL),
(2571, 'admin.chart.static_device', 'Thống kê đơn hàng theo thiết bị', 'admin.chart', 'vi', NULL, NULL),
(2572, 'admin.chart.static_count_order', 'Statistics of count orders', 'admin.chart', 'en', NULL, NULL),
(2573, 'admin.chart.static_count_order', 'Thống kê tổng số đơn hàng', 'admin.chart', 'vi', NULL, NULL),
(2574, 'admin.chart.device', 'Device type', 'admin.chart', 'en', NULL, NULL),
(2575, 'admin.chart.device', 'Loại thiết bị', 'admin.chart', 'vi', NULL, NULL),
(2576, 'admin.maintain.title', 'Maintenance page', 'admin.maintain', 'en', NULL, NULL),
(2577, 'admin.maintain.content', 'Maintenance content of the store', 'admin.maintain', 'en', NULL, NULL),
(2578, 'admin.maintain.description', 'Description', 'admin.maintain', 'en', NULL, NULL),
(2579, 'admin.maintain.description_note', 'Maintenance note', 'admin.maintain', 'en', NULL, NULL),
(2580, 'admin.maintain.title', 'Trang bảo trì', 'admin.maintain', 'vi', NULL, NULL),
(2581, 'admin.maintain.content', 'Nội dung bảo trì của cửa hàng', 'admin.maintain', 'vi', NULL, NULL),
(2582, 'admin.maintain.description', 'Nội dung', 'admin.maintain', 'vi', NULL, NULL),
(2583, 'admin.maintain.description_note', 'Ghi chú bảo trì', 'admin.maintain', 'vi', NULL, NULL),
(2584, 'admin.seo.config', 'Cấu hình SEO', 'admin.seo', 'vi', NULL, NULL),
(2585, 'admin.seo.config', 'SEO config', 'admin.seo', 'en', NULL, NULL),
(2586, 'admin.seo.url_seo_lang', 'Thêm ngôn ngữ trên URL', 'admin.seo', 'vi', NULL, NULL),
(2587, 'admin.seo.url_seo_lang', 'Add language on URL', 'admin.seo', 'en', NULL, NULL),
(2588, 'admin.dashboard.total_order', 'Tổng đơn hàng', 'admin.dashboard', 'vi', NULL, NULL),
(2589, 'admin.dashboard.total_order', 'Order total', 'admin.dashboard', 'en', NULL, NULL),
(2590, 'admin.dashboard.total_product', 'Tổng sản phẩm', 'admin.dashboard', 'vi', NULL, NULL),
(2591, 'admin.dashboard.total_product', 'Product total', 'admin.dashboard', 'en', NULL, NULL),
(2592, 'admin.dashboard.total_customer', 'Tổng khách hàng', 'admin.dashboard', 'vi', NULL, NULL),
(2593, 'admin.dashboard.total_customer', 'Customer total', 'admin.dashboard', 'en', NULL, NULL),
(2594, 'admin.dashboard.total_blog', 'Tổng blog', 'admin.dashboard', 'vi', NULL, NULL),
(2595, 'admin.dashboard.total_blog', 'Blog total', 'admin.dashboard', 'en', NULL, NULL),
(2596, 'admin.dashboard.order_month', 'Đơn hàng trong tháng', 'admin.dashboard', 'vi', NULL, NULL),
(2597, 'admin.dashboard.order_month', 'Order in month', 'admin.dashboard', 'en', NULL, NULL),
(2598, 'admin.dashboard.order_year', 'Đơn hàng trong năm', 'admin.dashboard', 'vi', NULL, NULL),
(2599, 'admin.dashboard.order_year', 'Order in year', 'admin.dashboard', 'en', NULL, NULL),
(2600, 'admin.dashboard.top_order_new', 'Đơn hàng mới', 'admin.dashboard', 'vi', NULL, NULL),
(2601, 'admin.dashboard.top_order_new', 'New orders', 'admin.dashboard', 'en', NULL, NULL),
(2602, 'admin.dashboard.top_customer_new', 'Khách hàng mới mới', 'admin.dashboard', 'vi', NULL, NULL),
(2603, 'admin.dashboard.top_customer_new', 'New customers', 'admin.dashboard', 'en', NULL, NULL),
(2604, 'admin.dashboard.pie_chart', 'Hiển thị biểu đồ pie', 'admin.dashboard', 'vi', NULL, NULL),
(2605, 'admin.dashboard.pie_chart', 'Display pie chart total', 'admin.dashboard', 'en', NULL, NULL),
(2606, 'admin.dashboard.title', 'Trang tổng quan', 'admin.dashboard', 'vi', NULL, NULL),
(2607, 'admin.dashboard.title', 'Dashboard page', 'admin.dashboard', 'en', NULL, NULL),
(2608, 'admin.dashboard.config_display', 'Cấu hình trang tổng quan admin', 'admin.dashboard', 'vi', NULL, NULL),
(2609, 'admin.dashboard.config_display', 'Config dashboard adminpage', 'admin.dashboard', 'en', NULL, NULL),
(2610, 'admin.layout_page_position.all', 'All Page', 'admin.layout_page_position', 'en', NULL, NULL),
(2611, 'admin.layout_page_position.home', 'Home page', 'admin.layout_page_position', 'en', NULL, NULL),
(2612, 'admin.layout_page_position.shop_home', 'Home shop', 'admin.layout_page_position', 'en', NULL, NULL),
(2613, 'admin.layout_page_position.shop_search', 'Search page', 'admin.layout_page_position', 'en', NULL, NULL),
(2614, 'admin.layout_page_position.vendor_home', 'Store: home', 'admin.layout_page_position', 'en', NULL, NULL),
(2615, 'admin.layout_page_position.store_product_list', 'Store: product list', 'admin.layout_page_position', 'en', NULL, NULL),
(2616, 'admin.layout_page_position.product_list', 'List: product', 'admin.layout_page_position', 'en', NULL, NULL),
(2617, 'admin.layout_page_position.product_detail', 'Detail: product', 'admin.layout_page_position', 'en', NULL, NULL),
(2618, 'admin.layout_page_position.shop_cart', 'Cart: cart, wishlist, compare, checkout', 'admin.layout_page_position', 'en', NULL, NULL),
(2619, 'admin.layout_page_position.shop_auth', 'Auth: login, forgot, register', 'admin.layout_page_position', 'en', NULL, NULL),
(2620, 'admin.layout_page_position.shop_profile', 'Customer profile', 'admin.layout_page_position', 'en', NULL, NULL),
(2621, 'admin.layout_page_position.item_list', 'List: category, brand, supplier', 'admin.layout_page_position', 'en', NULL, NULL),
(2622, 'admin.layout_page_position.item_detail', 'Detail: item', 'admin.layout_page_position', 'en', NULL, NULL),
(2623, 'admin.layout_page_position.news_list', 'List:  Blog/news', 'admin.layout_page_position', 'en', NULL, NULL),
(2624, 'admin.layout_page_position.news_detail', 'Detail: entry Blog', 'admin.layout_page_position', 'en', NULL, NULL),
(2625, 'admin.layout_page_position.content_list', 'List: content CMS', 'admin.layout_page_position', 'en', NULL, NULL),
(2626, 'admin.layout_page_position.content_detail', 'Detail: entry CMS', 'admin.layout_page_position', 'en', NULL, NULL),
(2627, 'admin.layout_page_position.shop_contact', 'Page contact', 'admin.layout_page_position', 'en', NULL, NULL),
(2628, 'admin.layout_page_position.shop_page', 'Other page: about...', 'admin.layout_page_position', 'en', NULL, NULL),
(2629, 'admin.layout_page_position.all', 'Tất cả trang', 'admin.layout_page_position', 'vi', NULL, NULL),
(2630, 'admin.layout_page_position.home', 'Trang chủ', 'admin.layout_page_position', 'vi', NULL, NULL),
(2631, 'admin.layout_page_position.shop_home', 'Trang chủ Shop', 'admin.layout_page_position', 'vi', NULL, NULL),
(2632, 'admin.layout_page_position.shop_search', 'Trang tìm kiếm', 'admin.layout_page_position', 'vi', NULL, NULL),
(2633, 'admin.layout_page_position.vendor_home', 'Cửa hàng: trang chủ', 'admin.layout_page_position', 'vi', NULL, NULL),
(2634, 'admin.layout_page_position.store_product_list', 'Cửa hàng: danh sách sản phẩm', 'admin.layout_page_position', 'vi', NULL, NULL),
(2635, 'admin.layout_page_position.product_list', 'Danh sách: sản phẩm', 'admin.layout_page_position', 'vi', NULL, NULL),
(2636, 'admin.layout_page_position.product_detail', 'Chi tiết: sản phẩm', 'admin.layout_page_position', 'vi', NULL, NULL),
(2637, 'admin.layout_page_position.shop_cart', 'Giỏ hàng: giỏ hàng, wishlist, compare, checkout', 'admin.layout_page_position', 'vi', NULL, NULL),
(2638, 'admin.layout_page_position.shop_auth', 'Chứng thực: đăng nhập, đăng ký, quên mật khẩu', 'admin.layout_page_position', 'vi', NULL, NULL),
(2639, 'admin.layout_page_position.shop_profile', 'Tài khoản khách hàng', 'admin.layout_page_position', 'vi', NULL, NULL),
(2640, 'admin.layout_page_position.item_list', 'Danh sách item: danh mục, thương hiệu, nhà cung cấp', 'admin.layout_page_position', 'vi', NULL, NULL),
(2641, 'admin.layout_page_position.item_detail', 'Chi tiết: item', 'admin.layout_page_position', 'vi', NULL, NULL),
(2642, 'admin.layout_page_position.news_list', 'Danh sách: bài viết Blog', 'admin.layout_page_position', 'vi', NULL, NULL),
(2643, 'admin.layout_page_position.news_detail', 'Chi tiết: bài viết Blog', 'admin.layout_page_position', 'vi', NULL, NULL),
(2644, 'admin.layout_page_position.content_list', 'Danh sách: bài viết CMS', 'admin.layout_page_position', 'vi', NULL, NULL),
(2645, 'admin.layout_page_position.content_detail', 'Chi tiết: bài viết CMS', 'admin.layout_page_position', 'vi', NULL, NULL),
(2646, 'admin.layout_page_position.shop_contact', 'Trang liên hệ', 'admin.layout_page_position', 'vi', NULL, NULL),
(2647, 'admin.layout_page_position.shop_page', 'Các trang viết: giới thiệu...', 'admin.layout_page_position', 'vi', NULL, NULL),
(2648, 'admin.layout_page_block.header', 'Head code :meta, css, javascript,...', 'admin.layout_page_block', 'vi', NULL, NULL),
(2649, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'vi', NULL, NULL),
(2650, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'vi', NULL, NULL),
(2651, 'admin.layout_page_block.left', 'BlockLeft - Cột trái', 'admin.layout_page_block', 'vi', NULL, NULL),
(2652, 'admin.layout_page_block.right', 'Block Right - Cột phải', 'admin.layout_page_block', 'vi', NULL, NULL),
(2653, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'vi', NULL, NULL),
(2654, 'admin.layout_page_block.header', 'Head code: meta, css, javascript, ...', 'admin.layout_page_block', 'en', NULL, NULL),
(2655, 'admin.layout_page_block.top', 'Block Top', 'admin.layout_page_block', 'en', NULL, NULL),
(2656, 'admin.layout_page_block.bottom', 'Block Bottom', 'admin.layout_page_block', 'en', NULL, NULL),
(2657, 'admin.layout_page_block.left', 'Block Left', 'admin.layout_page_block', 'en', NULL, NULL),
(2658, 'admin.layout_page_block.right', 'Block Right', 'admin.layout_page_block', 'en', NULL, NULL),
(2659, 'admin.layout_page_block.banner_top', 'Block banner top', 'admin.layout_page_block', 'en', NULL, NULL),
(2660, 'admin.admin_custom_config.facebook_url', 'Facebook Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2661, 'admin.admin_custom_config.fanpage_url', 'Fanpage Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2662, 'admin.admin_custom_config.twitter_url', 'Twitter Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2663, 'admin.admin_custom_config.instagram_url', 'Instagram Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2664, 'admin.admin_custom_config.youtube_url', 'Youtube Url', 'admin.admin_custom_config', 'en', NULL, NULL),
(2665, 'admin.admin_custom_config.facebook_url', 'Facebook Url', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2666, 'admin.admin_custom_config.fanpage_url', 'Fanpage Url', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2667, 'admin.admin_custom_config.twitter_url', 'Twitter Url', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2668, 'admin.admin_custom_config.instagram_url', 'Instagram Url', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2669, 'admin.admin_custom_config.youtube_url', 'Youtube Url', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2670, 'admin.admin_custom_config.add_new', 'Thêm mới cấu hình', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2671, 'admin.admin_custom_config.add_new', 'Add new config', 'admin.admin_custom_config', 'en', NULL, NULL),
(2672, 'admin.admin_custom_config.add_new_detail', 'Thông tin cấu hình', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2673, 'admin.admin_custom_config.add_new_detail', 'Config detail', 'admin.admin_custom_config', 'en', NULL, NULL),
(2674, 'admin.admin_custom_config.add_new_key', 'Key cấu hình', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2675, 'admin.admin_custom_config.add_new_key', 'Key config', 'admin.admin_custom_config', 'en', NULL, NULL),
(2676, 'admin.admin_custom_config.add_new_value', 'Giá trị', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2677, 'admin.admin_custom_config.add_new_value', 'Value', 'admin.admin_custom_config', 'en', NULL, NULL),
(2678, 'admin.admin_custom_config.key_exist', 'Key đã tồn tại', 'admin.admin_custom_config', 'vi', NULL, NULL),
(2679, 'admin.admin_custom_config.key_exist', 'Key already exist', 'admin.admin_custom_config', 'en', NULL, NULL),
(2680, 'admin.config_layout.link_home_page', 'Hiển thị link trang chủ', 'admin.config_layout', 'vi', NULL, NULL),
(2681, 'admin.config_layout.link_home_page', 'Display link homepage', 'admin.config_layout', 'en', NULL, NULL),
(2682, 'admin.config_layout.link_shop_page', 'Hiển thị link cửa hàng', 'admin.config_layout', 'vi', NULL, NULL),
(2683, 'admin.config_layout.link_shop_page', 'Display link shop', 'admin.config_layout', 'en', NULL, NULL),
(2684, 'admin.config_layout.link_account', 'Hiển thị link tài khoản', 'admin.config_layout', 'vi', NULL, NULL),
(2685, 'admin.config_layout.link_account', 'Display link account', 'admin.config_layout', 'en', NULL, NULL),
(2686, 'admin.config_layout.link_cart', 'Hiển thị giỏ hàng', 'admin.config_layout', 'vi', NULL, NULL),
(2687, 'admin.config_layout.link_cart', 'Display link cart', 'admin.config_layout', 'en', NULL, NULL),
(2688, 'admin.config_layout.link_language', 'Hiển thị ngôn ngữ', 'admin.config_layout', 'vi', NULL, NULL),
(2689, 'admin.config_layout.link_language', 'Display link language', 'admin.config_layout', 'en', NULL, NULL),
(2690, 'admin.config_layout.link_currency', 'Hiển thị tiền tệ', 'admin.config_layout', 'vi', NULL, NULL),
(2691, 'admin.config_layout.link_currency', 'Display link currency', 'admin.config_layout', 'en', NULL, NULL),
(2692, 'admin.password_forgot', 'Forgot password', 'admin', 'en', NULL, NULL),
(2693, 'admin.password_forgot', 'Quên mật khẩu', 'admin', 'vi', NULL, NULL),
(2694, 'admin.login', 'Log in to the system', 'admin', 'en', NULL, NULL),
(2695, 'admin.login', 'Đăng nhập vào hệ thống', 'admin', 'vi', NULL, NULL),
(2696, 'admin.field_name.shop_customer', 'Customer', 'admin.field_name', 'en', NULL, NULL),
(2697, 'admin.field_name.shop_customer', 'Khách hàng', 'admin.field_name', 'vi', NULL, NULL),
(2698, 'admin.field_name.shop_product', 'Product', 'admin.field_name', 'en', NULL, NULL),
(2699, 'admin.field_name.shop_product', 'Sản phẩm', 'admin.field_name', 'vi', NULL, NULL),
(2700, 'admin.field_name.shop_banner', 'Banner', 'admin.field_name', 'en', NULL, NULL),
(2701, 'admin.field_name.shop_banner', 'Banner', 'admin.field_name', 'vi', NULL, NULL),
(2702, 'admin.field_name.shop_brand', 'Brand', 'admin.field_name', 'en', NULL, NULL),
(2703, 'admin.field_name.shop_brand', 'Nhãn hiệu', 'admin.field_name', 'vi', NULL, NULL),
(2704, 'admin.field_name.shop_supplier', 'Supplier', 'admin.field_name', 'en', NULL, NULL),
(2705, 'admin.field_name.shop_supplier', 'Nhà cung cấp', 'admin.field_name', 'vi', NULL, NULL),
(2706, 'admin.field_name.shop_category', 'Category', 'admin.field_name', 'en', NULL, NULL),
(2707, 'admin.field_name.shop_category', 'Danh mục', 'admin.field_name', 'vi', NULL, NULL),
(2708, 'admin.field_name.shop_news', 'News', 'admin.field_name', 'en', NULL, NULL),
(2709, 'admin.field_name.shop_news', 'Tin tức', 'admin.field_name', 'vi', NULL, NULL),
(2710, 'admin.field_name.shop_page', 'Page', 'admin.field_name', 'en', NULL, NULL),
(2711, 'admin.field_name.shop_page', 'Trang', 'admin.field_name', 'vi', NULL, NULL),
(2712, 'common.created_at', 'Tạo lúc', 'common', 'vi', NULL, NULL),
(2713, 'common.created_at', 'Created at', 'common', 'en', NULL, NULL),
(2714, 'common.updated_at', 'Cập nhật lúc', 'common', 'vi', NULL, NULL),
(2715, 'common.updated_at', 'Updated at', 'common', 'en', NULL, NULL),
(2716, 'common.from', 'Từ', 'common', 'vi', NULL, NULL),
(2717, 'common.from', 'From', 'common', 'en', NULL, NULL),
(2718, 'common.to', 'Đến', 'common', 'vi', NULL, NULL),
(2719, 'common.to', 'To', 'common', 'en', NULL, NULL),
(2720, 'plugin.plugin_action.plugin_exist', 'Plugin này đã tồn tại rồi', 'plugin', 'vi', NULL, NULL),
(2721, 'plugin.plugin_action.plugin_exist', 'This plugin already exists', 'plugin', 'en', NULL, NULL),
(2722, 'password_policy.customer.title', 'Customer', 'password_policy', 'en', NULL, NULL),
(2723, 'password_policy.customer.title', 'Khách hàng', 'password_policy', 'vi', NULL, NULL),
(2724, 'password_policy.customer.letter', 'Require at least one letter', 'password_policy', 'en', NULL, NULL),
(2725, 'password_policy.customer.letter', 'Yêu cầu ít nhất một chữ cái', 'password_policy', 'vi', NULL, NULL),
(2726, 'password_policy.customer.mixed', 'Require at least one uppercase and one lowercase letter', 'password_policy', 'en', NULL, NULL),
(2727, 'password_policy.customer.mixed', 'Yêu cầu ít nhất một chữ hoa và một chữ cái viết thường', 'password_policy', 'vi', NULL, NULL),
(2728, 'password_policy.customer.number', 'Require at least one number', 'password_policy', 'en', NULL, NULL),
(2729, 'password_policy.customer.number', 'Yêu cầu ít nhất một số', 'password_policy', 'vi', NULL, NULL),
(2730, 'password_policy.customer.symbol', 'Require at least one symbol: @,#,...', 'password_policy', 'en', NULL, NULL),
(2731, 'password_policy.customer.symbol', 'Yêu cầu ít nhất một biểu tượng: @,#,...', 'password_policy', 'vi', NULL, NULL),
(2732, 'password_policy.customer.min', 'Minimum characters', 'password_policy', 'en', NULL, NULL),
(2733, 'password_policy.customer.min', 'Số ký tự tối thiểu', 'password_policy', 'vi', NULL, NULL),
(2734, 'password_policy.customer.max', 'Maximum characters', 'password_policy', 'en', NULL, NULL),
(2735, 'password_policy.customer.max', 'Số ký tự tối đa', 'password_policy', 'vi', NULL, NULL),
(2736, 'validation.password.min', ':attribute minimum :min characters', 'validation', 'en', NULL, NULL),
(2737, 'validation.password.min', ':attribute tối thiểu :min ký tự', 'validation', 'vi', NULL, NULL),
(2738, 'validation.password.max', ':attribute maximum :max characters', 'validation', 'en', NULL, NULL),
(2739, 'validation.password.max', ':attribute tối đa :max ký tự', 'validation', 'vi', NULL, NULL),
(2740, 'validation.password.letters', ':attribute require at least one letter', 'validation', 'en', NULL, NULL),
(2741, 'validation.password.letters', ':attribute yêu cầu ít nhất một chữ cái', 'validation', 'vi', NULL, NULL),
(2742, 'validation.password.mixed', ':attribute require at least one uppercase and one lowercase letter', 'validation', 'en', NULL, NULL),
(2743, 'validation.password.mixed', ':attribute yêu cầu ít nhất một chữ hoa và một chữ cái viết thường', 'validation', 'vi', NULL, NULL),
(2744, 'validation.password.numbers', ':attribute require at least one number', 'validation', 'en', NULL, NULL),
(2745, 'validation.password.numbers', ':attribute yêu cầu ít nhất một số', 'validation', 'vi', NULL, NULL),
(2746, 'validation.password.symbols', ':attribute require at least one symbol: @,#,...', 'validation', 'en', NULL, NULL),
(2747, 'validation.password.symbols', ':attribute yêu cầu ít nhất một biểu tượng: @,#,...', 'validation', 'vi', NULL, NULL),
(2748, 'admin_notice.customer.new', 'There are new customer.', 'admin_notice', 'en', NULL, NULL),
(2749, 'admin_notice.customer.new', 'Có khách hàng mới', 'admin_notice', 'vi', NULL, NULL),
(2750, 'admin_notice.order.new', 'There are new order.', 'admin_notice', 'en', NULL, NULL),
(2751, 'admin_notice.order.new', 'Có đơn hàng mới.', 'admin_notice', 'vi', NULL, NULL),
(2752, 'admin_notice.order.success', 'New order success.', 'admin_notice', 'en', NULL, NULL),
(2753, 'admin_notice.order.success', 'Có đơn hàng mới hoàn thành.', 'admin_notice', 'vi', NULL, NULL),
(2754, 'admin_notice.order.update_status', 'New order changes status.', 'admin_notice', 'en', NULL, NULL),
(2755, 'admin_notice.order.update_status', 'Đơn hàng mới thay đổi trạng thái.', 'admin_notice', 'vi', NULL, NULL),
(2756, 'admin_notice.mark_read', 'Mark all as read', 'admin_notice', 'en', NULL, NULL),
(2757, 'admin_notice.mark_read', 'Đánh dấu đã đọc', 'admin_notice', 'vi', NULL, NULL),
(2758, 'admin_notice.title', 'List notices', 'admin_notice', 'en', NULL, NULL),
(2759, 'admin_notice.title', 'Danh sách các thông báo', 'admin_notice', 'vi', NULL, NULL),
(2760, 'admin_notice.empty', 'No notifications', 'admin_notice', 'en', NULL, NULL),
(2761, 'admin_notice.empty', 'Không có thông báo', 'admin_notice', 'vi', NULL, NULL),
(2762, 'multi_vendor.plugin_block', 'MARKETPLACE', 'multi_vendor', 'en', NULL, NULL),
(2763, 'multi_vendor.plugin_block', 'CHỢ BÁN HÀNG', 'multi_vendor', 'vi', NULL, NULL),
(2764, 'multi_vendor.account_inactive_title', 'Access denied!', 'multi_vendor', 'en', NULL, NULL),
(2765, 'multi_vendor.account_inactive_title', 'Truy cập bị từ chối', 'multi_vendor', 'vi', NULL, NULL),
(2766, 'multi_vendor.account_inactive_msg', 'The account has not been activated or has been locked!', 'multi_vendor', 'en', NULL, NULL),
(2767, 'multi_vendor.account_inactive_msg', 'Tài khoản chưa được kích hoạt hoặc đã bị khóa!', 'multi_vendor', 'vi', NULL, NULL),
(2768, 'multi_vendor.update_info_store_msg', 'Please update your store information!', 'multi_vendor', 'en', NULL, NULL),
(2769, 'multi_vendor.update_info_store_msg', 'Vui lòng cập nhật thông tin cửa hàng của bạn!', 'multi_vendor', 'vi', NULL, NULL),
(2770, 'multi_vendor.update_info_store_title', 'Update store information', 'multi_vendor', 'en', NULL, NULL),
(2771, 'multi_vendor.update_info_store_title', 'Cập nhật thông tin cửa hàng', 'multi_vendor', 'vi', NULL, NULL),
(2772, 'multi_vendor.vendor_store', 'Vendor store', 'multi_vendor', 'en', NULL, NULL),
(2773, 'multi_vendor.vendor_store', 'Gian hàng người bán', 'multi_vendor', 'vi', NULL, NULL),
(2774, 'multi_vendor.vendor_user', 'Vendor user', 'multi_vendor', 'en', NULL, NULL),
(2775, 'multi_vendor.vendor_user', 'Tài khoản người bán', 'multi_vendor', 'vi', NULL, NULL),
(2776, 'multi_vendor.vendor_config', 'Config', 'multi_vendor', 'en', NULL, NULL),
(2777, 'multi_vendor.vendor_config', 'Cấu hình', 'multi_vendor', 'vi', NULL, NULL),
(2778, 'multi_vendor.vendor_report', 'Report', 'multi_vendor', 'en', NULL, NULL),
(2779, 'multi_vendor.vendor_report', 'Báo cáo', 'multi_vendor', 'vi', NULL, NULL),
(2780, 'multi_vendor.vendor_add', 'Add new vendor', 'multi_vendor', 'en', NULL, NULL),
(2781, 'multi_vendor.vendor_add', 'Thêm người bán', 'multi_vendor', 'vi', NULL, NULL),
(2782, 'multi_vendor.config', 'Config information', 'multi_vendor', 'en', NULL, NULL),
(2783, 'multi_vendor.config', 'Thông tin cấu hình', 'multi_vendor', 'vi', NULL, NULL),
(2784, 'multi_vendor.vendor_search_place', 'Search name, email vendor', 'multi_vendor', 'en', NULL, NULL),
(2785, 'multi_vendor.vendor_search_place', 'Tìm kiếm tên, email', 'multi_vendor', 'vi', NULL, NULL),
(2786, 'multi_vendor.password', 'Password', 'multi_vendor', 'en', NULL, NULL),
(2787, 'multi_vendor.password', 'Mật khẩu', 'multi_vendor', 'vi', NULL, NULL),
(2788, 'multi_vendor.password_forgot', 'Forgot password', 'multi_vendor', 'en', NULL, NULL),
(2789, 'multi_vendor.password_forgot', 'Quên mật khẩu', 'multi_vendor', 'vi', NULL, NULL),
(2790, 'multi_vendor.login_title', 'Login page', 'multi_vendor', 'en', NULL, NULL),
(2791, 'multi_vendor.login_title', 'Trang đăng nhập', 'multi_vendor', 'vi', NULL, NULL),
(2792, 'multi_vendor.register_success', 'Successful register', 'multi_vendor', 'en', NULL, NULL),
(2793, 'multi_vendor.register_success', 'Đăng ký thành công', 'multi_vendor', 'vi', NULL, NULL),
(2794, 'multi_vendor.signup', 'Signup', 'multi_vendor', 'en', NULL, NULL),
(2795, 'multi_vendor.signup', 'Đăng ký', 'multi_vendor', 'vi', NULL, NULL),
(2796, 'multi_vendor.title_register', 'Account register', 'multi_vendor', 'en', NULL, NULL),
(2797, 'multi_vendor.title_register', 'Đăng ký tài khoản', 'multi_vendor', 'vi', NULL, NULL),
(2798, 'multi_vendor.password_reset', 'Password reset', 'multi_vendor', 'en', NULL, NULL),
(2799, 'multi_vendor.password_reset', 'Reset mật khẩu', 'multi_vendor', 'vi', NULL, NULL),
(2800, 'multi_vendor.password_confirm', 'Password confirm', 'multi_vendor', 'en', NULL, NULL),
(2801, 'multi_vendor.password_confirm', 'Xác nhận mật khẩu', 'multi_vendor', 'vi', NULL, NULL),
(2802, 'multi_vendor.phone_regex', 'The phone format is not correct. Length 8-14, use only 0-9 and the \"-\" SIGN.', 'multi_vendor', 'en', NULL, NULL),
(2803, 'multi_vendor.phone_regex', 'Số điện thoại định dạng không đúng. Chiều dài 8-14, chỉ sử dụng số 0-9 và \"-\"', 'multi_vendor', 'vi', NULL, NULL),
(2804, 'multi_vendor.country', 'Country', 'multi_vendor', 'en', NULL, NULL),
(2805, 'multi_vendor.country', 'Quốc gia', 'multi_vendor', 'vi', NULL, NULL),
(2806, 'multi_vendor.address2', 'Quận/Huyện', 'multi_vendor', 'vi', NULL, NULL),
(2807, 'multi_vendor.address2', 'Address 2', 'multi_vendor', 'en', NULL, NULL),
(2808, 'multi_vendor.address1', 'Tỉnh/Thành', 'multi_vendor', 'vi', NULL, NULL),
(2809, 'multi_vendor.address1', 'Address 1', 'multi_vendor', 'en', NULL, NULL),
(2810, 'multi_vendor.postcode', 'Mã bưu điện', 'multi_vendor', 'vi', NULL, NULL),
(2811, 'multi_vendor.postcode', 'Post code', 'multi_vendor', 'en', NULL, NULL),
(2812, 'multi_vendor.phone', 'Phone', 'multi_vendor', 'en', NULL, NULL),
(2813, 'multi_vendor.phone', 'Điện thoại', 'multi_vendor', 'vi', NULL, NULL),
(2814, 'multi_vendor.name', 'Name', 'multi_vendor', 'en', NULL, NULL),
(2815, 'multi_vendor.name', 'Tên', 'multi_vendor', 'vi', NULL, NULL),
(2816, 'multi_vendor.last_name', 'Họ', 'multi_vendor', 'vi', NULL, NULL),
(2817, 'multi_vendor.last_name', 'Last name', 'multi_vendor', 'en', NULL, NULL),
(2818, 'multi_vendor.first_name', 'Tên', 'multi_vendor', 'vi', NULL, NULL),
(2819, 'multi_vendor.first_name', 'First name', 'multi_vendor', 'en', NULL, NULL),
(2820, 'multi_vendor.email', 'Email', 'multi_vendor', 'vi', NULL, NULL),
(2821, 'multi_vendor.email', 'Email', 'multi_vendor', 'en', NULL, NULL),
(2822, 'multi_vendor.title_login', 'Login account', 'multi_vendor', 'en', NULL, NULL),
(2823, 'multi_vendor.title_login', 'Đăng nhập', 'multi_vendor', 'vi', NULL, NULL),
(2824, 'multi_vendor.status', 'Trạng thái', 'multi_vendor', 'vi', NULL, NULL),
(2825, 'multi_vendor.status', 'Status', 'multi_vendor', 'en', NULL, NULL),
(2826, 'multi_vendor.group', 'Nhóm', 'multi_vendor', 'en', NULL, NULL),
(2827, 'multi_vendor.group', 'Group', 'multi_vendor', 'vi', NULL, NULL),
(2828, 'multi_vendor.admin_login', 'Vendor login', 'multi_vendor', 'en', NULL, NULL),
(2829, 'multi_vendor.admin_login', 'Dành cho người bán hàng', 'multi_vendor', 'vi', NULL, NULL),
(2830, 'multi_vendor.admin.keep_password', 'Leave it blank if you don\'t change the password', 'multi_vendor', 'en', NULL, NULL),
(2831, 'multi_vendor.admin.keep_password', 'Để trống nếu không thay đổi mật khẩu', 'multi_vendor', 'vi', NULL, NULL),
(2832, 'multi_vendor.remember_me', 'Remember me', 'multi_vendor', 'en', NULL, NULL),
(2833, 'multi_vendor.remember_me', 'Ghi nhớ tài khoản', 'multi_vendor', 'vi', NULL, NULL),
(2834, 'multi_vendor.login', 'Login', 'multi_vendor', 'en', NULL, NULL),
(2835, 'multi_vendor.login', 'Đăng nhập', 'multi_vendor', 'vi', NULL, NULL),
(2836, 'multi_vendor.top_count_order_vendor', 'Top stores with the highest number of orders', 'multi_vendor', 'en', NULL, NULL),
(2837, 'multi_vendor.top_count_order_vendor', 'Top cửa hàng có số đơn hàng cao nhất', 'multi_vendor', 'vi', NULL, NULL),
(2838, 'multi_vendor.export_order_list', 'Export order list', 'multi_vendor', 'en', NULL, NULL),
(2839, 'multi_vendor.export_order_list', 'Export đơn hàng ', 'multi_vendor', 'vi', NULL, NULL),
(2840, 'multi_vendor.store_empty', 'Select store', 'multi_vendor', 'en', NULL, NULL),
(2841, 'multi_vendor.store_empty', 'Chọn cửa hàng ', 'multi_vendor', 'vi', NULL, NULL),
(2842, 'multi_vendor.quick_order', 'Quick order', 'multi_vendor', 'en', NULL, NULL),
(2843, 'multi_vendor.quick_order', 'Đặt hàng nhanh', 'multi_vendor', 'vi', NULL, NULL),
(2844, 'multi_vendor.MultiVendor_commission', 'Commission rate', 'multi_vendor', 'en', NULL, NULL),
(2845, 'multi_vendor.MultiVendor_commission', 'Tỷ lệ hoa hồng', 'multi_vendor', 'vi', NULL, NULL),
(2846, 'multi_vendor.MultiVendor_commission_help', 'Is the payment rate (%) that the trading floor will keep before paying the vendor', 'multi_vendor', 'en', NULL, NULL),
(2847, 'multi_vendor.MultiVendor_commission_help', 'Là tỉ lệ thanh toán (%) mà sàn thương mại sẽ giữ lại trước khi chi trả cho nhà cung cấp', 'multi_vendor', 'vi', NULL, NULL),
(2848, 'multi_vendor.MultiVendor_quick_order', 'Quick order', 'multi_vendor', 'en', NULL, NULL),
(2849, 'multi_vendor.MultiVendor_quick_order', 'Đặt hàng nhanh', 'multi_vendor', 'vi', NULL, NULL),
(2850, 'multi_vendor.MultiVendor_quick_order_help', 'The function allows customers to place bulk orders on each vendor\'s booth.', 'multi_vendor', 'en', NULL, NULL),
(2851, 'multi_vendor.MultiVendor_quick_order_help', 'Chức năng cho phép khách hàng đặt hàng số lượng lớn trên mỗi gian hàng của nhà cung cấp.', 'multi_vendor', 'vi', NULL, NULL),
(2852, 'multi_vendor.MultiVendor_allow_register', 'Allow register vendor', 'multi_vendor', 'en', NULL, NULL),
(2853, 'multi_vendor.MultiVendor_allow_register', 'Cho phép đăng ký vendor', 'multi_vendor', 'vi', NULL, NULL),
(2854, 'multi_vendor.MultiVendor_allow_register_help', 'Users are allowed to self-register for a vendor account. If disabled, the vendor account can only be registered through admin.', 'multi_vendor', 'en', NULL, NULL),
(2855, 'multi_vendor.MultiVendor_allow_register_help', 'Người dùng được phép tự đăng ký tài khoản vendor. Nếu vô hiệu hóa, tài khoản vendor chỉ có thể đăng ký thông qua admin.', 'multi_vendor', 'vi', NULL, NULL),
(2856, 'multi_vendor.MultiVendor_product_auto_approve', 'Auto approve product', 'multi_vendor', 'en', NULL, NULL),
(2857, 'multi_vendor.MultiVendor_product_auto_approve', 'Tự động duyệt sản phẩm', 'multi_vendor', 'vi', NULL, NULL),
(2858, 'multi_vendor.MultiVendor_product_auto_approve_help', 'If this is disabled, the admin must approve all products posted by the seller.', 'multi_vendor', 'en', NULL, NULL),
(2859, 'multi_vendor.MultiVendor_product_auto_approve_help', 'Nếu tắt chức nằng này, admin phải phê duyệt tất cả sản phẩm được đăng bởi người bán.', 'multi_vendor', 'vi', NULL, NULL),
(2860, 'multi_vendor.MultiVendor_vendor_auto_approve', 'Auto approve vendor', 'multi_vendor', 'en', NULL, NULL),
(2861, 'multi_vendor.MultiVendor_vendor_auto_approve', 'Tự động duyệt vendor', 'multi_vendor', 'vi', NULL, NULL),
(2862, 'multi_vendor.MultiVendor_vendor_auto_approve_help', 'If this is disabled, the admin must approve all new vendors.', 'multi_vendor', 'en', NULL, NULL),
(2863, 'multi_vendor.MultiVendor_vendor_auto_approve_help', 'Nếu tắt chức nằng này, admin phải phê duyệt tất cả nhà cung cấp.', 'multi_vendor', 'vi', NULL, NULL),
(2864, 'multi_vendor.MultiVendor_config', 'Config markeplace', 'multi_vendor', 'en', NULL, NULL),
(2865, 'multi_vendor.MultiVendor_config', 'Cấu hình chợ thương mại', 'multi_vendor', 'vi', NULL, NULL),
(2866, 'multi_vendor.MultiVendor_domain_strict', 'Strict domain management', 'multi_vendor', 'en', NULL, NULL),
(2867, 'multi_vendor.MultiVendor_domain_strict', 'Quản lý nghiêm ngặt tên miền', 'multi_vendor', 'vi', NULL, NULL),
(2868, 'multi_vendor.MultiVendor_domain_strict_help', 'Website only works on approved domain names (the domain names of the vendors)', 'multi_vendor', 'en', NULL, NULL),
(2869, 'multi_vendor.MultiVendor_domain_strict_help', 'Website chỉ hoạt động trên các tên miền đã được phê duyệt (là tên miền của các nhà cung cấp)', 'multi_vendor', 'vi', NULL, NULL),
(2870, 'multi_vendor.vendor_payment', 'Payment', 'multi_vendor', 'en', NULL, NULL),
(2871, 'multi_vendor.vendor_payment', 'Thanh toán', 'multi_vendor', 'vi', NULL, NULL),
(2872, 'multi_vendor.vendor_payment_date', 'Payment processing date', 'multi_vendor', 'en', NULL, NULL),
(2873, 'multi_vendor.vendor_payment_date', 'Ngày xử lý thanh toán', 'multi_vendor', 'vi', NULL, NULL),
(2874, 'multi_vendor.vendor_payment_date_help', 'The processing date must be less than the current date.<br>Processing only completed orders.', 'multi_vendor', 'en', NULL, NULL),
(2875, 'multi_vendor.vendor_payment_date_help', 'Ngày xử lý phải nhỏ hơn ngày hiện tại.<br>Chỉ xử lý đơn hàng đã finish.', 'multi_vendor', 'vi', NULL, NULL),
(2876, 'multi_vendor.vendor_payment_button', 'Process', 'multi_vendor', 'en', NULL, NULL),
(2877, 'multi_vendor.vendor_payment_button', 'Xử lý', 'multi_vendor', 'vi', NULL, NULL),
(2878, 'multi_vendor.vendor_payment_date_validate', 'Time must be less than current date', 'multi_vendor', 'en', NULL, NULL),
(2879, 'multi_vendor.vendor_payment_date_validate', 'Thời gian phải nhỏ hơn ngày hiện tại', 'multi_vendor', 'vi', NULL, NULL),
(2880, 'multi_vendor.vendor_payment_date_exist', 'The date you selected has already been processed', 'multi_vendor', 'en', NULL, NULL),
(2881, 'multi_vendor.vendor_payment_date_exist', 'Ngày bạn chọn đã xử lý rồi', 'multi_vendor', 'vi', NULL, NULL),
(2882, 'multi_vendor.payment.total_sum', 'Total sum', 'multi_vendor', 'en', NULL, NULL),
(2883, 'multi_vendor.payment.total_sum', 'Tổng giá trị', 'multi_vendor', 'vi', NULL, NULL),
(2884, 'multi_vendor.payment.amount', 'Amount', 'multi_vendor', 'en', NULL, NULL),
(2885, 'multi_vendor.payment.amount', 'Thanh toán', 'multi_vendor', 'vi', NULL, NULL),
(2886, 'multi_vendor.payment.order_count', 'Orders', 'multi_vendor', 'en', NULL, NULL),
(2887, 'multi_vendor.payment.order_count', 'Đơn hàng', 'multi_vendor', 'vi', NULL, NULL),
(2888, 'multi_vendor.payment.currency', 'Currency', 'multi_vendor', 'en', NULL, NULL),
(2889, 'multi_vendor.payment.currency', 'Tiền tệ', 'multi_vendor', 'vi', NULL, NULL),
(2890, 'multi_vendor.payment.content', 'Content', 'multi_vendor', 'en', NULL, NULL),
(2891, 'multi_vendor.payment.content', 'Nội dung', 'multi_vendor', 'vi', NULL, NULL),
(2892, 'multi_vendor.payment.comment', 'Comment', 'multi_vendor', 'en', NULL, NULL),
(2893, 'multi_vendor.payment.comment', 'Bình luận', 'multi_vendor', 'vi', NULL, NULL),
(2894, 'multi_vendor.payment.date_process', 'Date process', 'multi_vendor', 'en', NULL, NULL),
(2895, 'multi_vendor.payment.date_process', 'Ngày xử lý', 'multi_vendor', 'vi', NULL, NULL),
(2896, 'multi_vendor.payment.date_pay', 'Date pay', 'multi_vendor', 'en', NULL, NULL),
(2897, 'multi_vendor.payment.date_pay', 'Ngày thanh toán', 'multi_vendor', 'vi', NULL, NULL),
(2898, 'multi_vendor.payment.status', 'Status', 'multi_vendor', 'en', NULL, NULL);
INSERT INTO `sc_languages` (`id`, `code`, `text`, `position`, `location`, `created_at`, `updated_at`) VALUES
(2899, 'multi_vendor.payment.status', 'Trạng thái', 'multi_vendor', 'vi', NULL, NULL),
(2900, 'multi_vendor.payment.created_at', 'Created at', 'multi_vendor', 'en', NULL, NULL),
(2901, 'multi_vendor.payment.created_at', 'Tạo lúc', 'multi_vendor', 'vi', NULL, NULL),
(2902, 'multi_vendor.payment.life_time', 'Lifetime sales', 'multi_vendor', 'en', NULL, NULL),
(2903, 'multi_vendor.payment.life_time', 'Đã bán', 'multi_vendor', 'vi', NULL, NULL),
(2904, 'multi_vendor.payment.payout', 'Payout', 'multi_vendor', 'en', NULL, NULL),
(2905, 'multi_vendor.payment.payout', 'Đã nhận', 'multi_vendor', 'vi', NULL, NULL),
(2906, 'multi_vendor.payment.remaining', 'Remaining', 'multi_vendor', 'en', NULL, NULL),
(2907, 'multi_vendor.payment.remaining', 'Còn lại', 'multi_vendor', 'vi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_attribute_group`
--

CREATE TABLE `sc_shop_attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL COMMENT 'radio,select,checkbox',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_attribute_group`
--

INSERT INTO `sc_shop_attribute_group` (`id`, `name`, `status`, `sort`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Color', 1, 1, 'radio', NULL, NULL),
(2, 'Size', 1, 2, 'select', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner`
--

CREATE TABLE `sc_shop_banner` (
  `id` char(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `html` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `click` int(11) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner`
--

INSERT INTO `sc_shop_banner` (`id`, `title`, `image`, `url`, `target`, `html`, `status`, `sort`, `click`, `type`, `created_at`, `updated_at`) VALUES
('9bc5b568-7b54-4c58-909e-c23407e55959', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:35:43', '2024-04-10 07:35:43'),
('9bc5b568-7dfd-4c31-8b37-d433dec7b761', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:35:43', '2024-04-10 07:35:43'),
('9bc5b568-8028-4169-9dca-8ae206573562', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:35:43', '2024-04-10 07:35:43'),
('9bc5b568-8274-4737-a443-a2452989aefe', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:35:43', '2024-04-10 07:35:43'),
('9bc5b56a-fb53-4602-8023-510fbbc31033', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 0, 'banner', NULL, NULL),
('9bc5b56a-fb63-41ea-8c15-77c8ebdf5251', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '<h1 class=\"swiper-title-1\" data-caption-animate=\"fadeScale\" data-caption-delay=\"100\">Top-notch Furniture</h1><p class=\"biggest text-white-70\" data-caption-animate=\"fadeScale\" data-caption-delay=\"200\">Sofa Store provides the best furniture and accessories for homes and offices.</p><div class=\"button-wrap\" data-caption-animate=\"fadeInUp\" data-caption-delay=\"300\"> <span class=\"button button-zachem-tak-delat button-white button-zakaria\"> Shop now</span> </div>', 1, 0, 0, 'banner', NULL, NULL),
('9bc5b56a-fb6e-459e-8a40-39bfe291b4ea', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', NULL, NULL),
('9bc5b56a-fb78-4f87-bbe6-8ba3ae23285e', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', NULL, NULL),
('9bc5b835-6a1a-4550-91b5-eedf54bd8733', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-6b90-4086-b9d5-296b98650bcc', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-6c69-4089-8e76-2205e39d9628', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-6dd7-4122-a973-13f307dae173', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-7264-4f3e-afae-040775f22ec2', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-7372-4632-8b68-dc098bc1050f', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-742f-4673-8cd8-db6f1cd67fd0', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b835-74ec-438c-a62c-62b974463c7d', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:43:33', '2024-04-10 07:43:33'),
('9bc5b8dd-2e56-4c35-8380-cd90e2c8fe6a', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-2f67-478b-8b18-36db4f4c55f0', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-3071-4cc0-812d-cf989ab304bd', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-3170-4c01-9bf0-e52175bf4496', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-3692-4351-9793-ef46138c2b55', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-37aa-445b-8c15-e221f98ae342', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-390f-4d62-a66b-f8e42d3a4bee', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b8dd-3a05-4de0-867e-e2d1e2882ee0', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:45:23', '2024-04-10 07:45:23'),
('9bc5b982-47dd-4951-9324-dd93c91a63db', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-48d6-4582-b6eb-4fca6e450068', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-49ca-4fab-a9f5-d0f16fec7e70', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-4ad3-447a-9804-b53d25d8521f', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-5023-4c68-bcea-6914f5f14421', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-511b-4144-958f-4a264848f712', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-528c-4c20-b66f-c45c11db0f2c', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5b982-539e-4458-b317-b904cb7f9725', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:47:11', '2024-04-10 07:47:11'),
('9bc5ba33-4174-4a55-bdf0-2583f92fea0e', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-4295-4982-ab08-7e41b10b6ba0', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-438e-4aea-b156-28288a5d5829', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-4481-4f35-8893-d25ad1b987f1', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-493a-4cbe-8067-98141c4c4c66', 'Banner home 1 (s-cart-light)', '/data/banner/banner-home-1.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-4a55-4faf-aa70-3f02425675de', 'Banner home 2 (s-cart-light)', '/data/banner/banner-home-2.jpg', NULL, '_self', '', 1, 0, 0, 'banner', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-4b48-46e4-a181-d4770713f5e5', 'Banner breadcrumb (s-cart-light)', '/data/banner/breadcrumb.jpg', NULL, '_self', '', 1, 0, 0, 'breadcrumb', '2024-04-10 07:49:07', '2024-04-10 07:49:07'),
('9bc5ba33-4c8b-48e9-95f6-63c251a02273', 'Banner store (s-cart-light)', '/data/banner/banner-store.jpg', NULL, '_self', '', 1, 0, 0, 'banner-store', '2024-04-10 07:49:07', '2024-04-10 07:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner_store`
--

CREATE TABLE `sc_shop_banner_store` (
  `banner_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner_store`
--

INSERT INTO `sc_shop_banner_store` (`banner_id`, `store_id`) VALUES
('9bc5b568-7b54-4c58-909e-c23407e55959', '1'),
('9bc5b568-7dfd-4c31-8b37-d433dec7b761', '1'),
('9bc5b568-8028-4169-9dca-8ae206573562', '1'),
('9bc5b568-8274-4737-a443-a2452989aefe', '1'),
('9bc5b56a-fb53-4602-8023-510fbbc31033', '1'),
('9bc5b56a-fb63-41ea-8c15-77c8ebdf5251', '1'),
('9bc5b56a-fb6e-459e-8a40-39bfe291b4ea', '1'),
('9bc5b56a-fb78-4f87-bbe6-8ba3ae23285e', '1'),
('9bc5b835-6a1a-4550-91b5-eedf54bd8733', 'S-xSdG9-0UgUZ'),
('9bc5b835-6b90-4086-b9d5-296b98650bcc', 'S-xSdG9-0UgUZ'),
('9bc5b835-6c69-4089-8e76-2205e39d9628', 'S-xSdG9-0UgUZ'),
('9bc5b835-6dd7-4122-a973-13f307dae173', 'S-xSdG9-0UgUZ'),
('9bc5b835-7264-4f3e-afae-040775f22ec2', 'S-xSdG9-0UgUZ'),
('9bc5b835-7372-4632-8b68-dc098bc1050f', 'S-xSdG9-0UgUZ'),
('9bc5b835-742f-4673-8cd8-db6f1cd67fd0', 'S-xSdG9-0UgUZ'),
('9bc5b835-74ec-438c-a62c-62b974463c7d', 'S-xSdG9-0UgUZ'),
('9bc5b8dd-2e56-4c35-8380-cd90e2c8fe6a', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-2f67-478b-8b18-36db4f4c55f0', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-3071-4cc0-812d-cf989ab304bd', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-3170-4c01-9bf0-e52175bf4496', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-3692-4351-9793-ef46138c2b55', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-37aa-445b-8c15-e221f98ae342', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-390f-4d62-a66b-f8e42d3a4bee', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-3a05-4de0-867e-e2d1e2882ee0', 'S-GQ0sY-vnQbk'),
('9bc5b982-47dd-4951-9324-dd93c91a63db', 'S-YQmkQ-wMgUn'),
('9bc5b982-48d6-4582-b6eb-4fca6e450068', 'S-YQmkQ-wMgUn'),
('9bc5b982-49ca-4fab-a9f5-d0f16fec7e70', 'S-YQmkQ-wMgUn'),
('9bc5b982-4ad3-447a-9804-b53d25d8521f', 'S-YQmkQ-wMgUn'),
('9bc5b982-5023-4c68-bcea-6914f5f14421', 'S-YQmkQ-wMgUn'),
('9bc5b982-511b-4144-958f-4a264848f712', 'S-YQmkQ-wMgUn'),
('9bc5b982-528c-4c20-b66f-c45c11db0f2c', 'S-YQmkQ-wMgUn'),
('9bc5b982-539e-4458-b317-b904cb7f9725', 'S-YQmkQ-wMgUn'),
('9bc5ba33-4174-4a55-bdf0-2583f92fea0e', 'S-5ROFr-vQm44'),
('9bc5ba33-4295-4982-ab08-7e41b10b6ba0', 'S-5ROFr-vQm44'),
('9bc5ba33-438e-4aea-b156-28288a5d5829', 'S-5ROFr-vQm44'),
('9bc5ba33-4481-4f35-8893-d25ad1b987f1', 'S-5ROFr-vQm44'),
('9bc5ba33-493a-4cbe-8067-98141c4c4c66', 'S-5ROFr-vQm44'),
('9bc5ba33-4a55-4faf-aa70-3f02425675de', 'S-5ROFr-vQm44'),
('9bc5ba33-4b48-46e4-a181-d4770713f5e5', 'S-5ROFr-vQm44'),
('9bc5ba33-4c8b-48e9-95f6-63c251a02273', 'S-5ROFr-vQm44');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_banner_type`
--

CREATE TABLE `sc_shop_banner_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_banner_type`
--

INSERT INTO `sc_shop_banner_type` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'banner', 'Banner main', NULL, NULL),
(2, 'background', 'Background website', NULL, NULL),
(3, 'breadcrumb', 'Breadcrumb', NULL, NULL),
(4, 'banner-store', 'Banner store', NULL, NULL),
(5, 'banner-left', 'Banner left', NULL, NULL),
(6, 'banner-right', 'Banner right', NULL, NULL),
(7, 'other', 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_brand`
--

CREATE TABLE `sc_shop_brand` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(120) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_brand`
--

INSERT INTO `sc_shop_brand` (`id`, `name`, `alias`, `image`, `url`, `status`, `sort`, `created_at`, `updated_at`) VALUES
('9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', 'DaNang', 'danang', '/data/brand/acer.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-073f-4deb-b0aa-331e56a9ec74', 'SaiGon', 'saigon', '/data/brand/assus.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-0748-4386-8f15-16b8fb4a7f81', 'HaNoi', 'hanoi', '/data/brand/casio.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-0753-4323-89c8-b26fe4f2b75a', 'BenTre', 'bentre', '/data/brand/dell.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', 'NgheAn', 'nghean', '/data/brand/microsoft.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-0763-4bb1-ae50-5e23d0339f91', 'LongAn', 'longan', '/data/brand/nokia.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-076a-451a-90e8-dc954bff46f8', 'CaMau', 'camau', '/data/brand/panasonic.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-0772-4360-a401-bd00482bbc9d', 'HaGiang', 'hagiang', '/data/brand/sharp.png', NULL, 1, 0, NULL, NULL),
('9bc5b56b-0781-4d59-8274-241ddf88661c', 'ThanhHoa', 'thanhhoa', '/data/brand/vaio.png', NULL, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_brand_store`
--

CREATE TABLE `sc_shop_brand_store` (
  `brand_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_brand_store`
--

INSERT INTO `sc_shop_brand_store` (`brand_id`, `store_id`) VALUES
('9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '1'),
('9bc5b56b-073f-4deb-b0aa-331e56a9ec74', '1'),
('9bc5b56b-0748-4386-8f15-16b8fb4a7f81', '1'),
('9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '1'),
('9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', '1'),
('9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '1'),
('9bc5b56b-076a-451a-90e8-dc954bff46f8', '1'),
('9bc5b56b-0772-4360-a401-bd00482bbc9d', '1'),
('9bc5b56b-0781-4d59-8274-241ddf88661c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category`
--

CREATE TABLE `sc_shop_category` (
  `id` char(36) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alias` varchar(120) NOT NULL,
  `parent` char(36) NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category`
--

INSERT INTO `sc_shop_category` (`id`, `image`, `alias`, `parent`, `top`, `status`, `sort`, `created_at`, `updated_at`) VALUES
('9bc5b56a-ff24-4af7-b823-4d50cf271e3e', '/data/category/laptop1.png', 'am-thuc', '0', 1, 1, 0, NULL, NULL),
('9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', '/data/category/headphone1.png', 'du-lich', '0', 1, 1, 1, NULL, NULL),
('9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', '/data/category/phone1.png', 'my-nghe', '0', 1, 1, 2, NULL, NULL),
('9bc5b56a-ff3d-4d5b-b218-bee174f10081', '/data/category/camera1.png', 'van-hoa', '0', 1, 1, 3, NULL, NULL),
('9bc5b56a-ff43-47f7-bee1-698c0a83c396', '/data/category/wifi1.png', 'the-thao', '0', 1, 1, 4, NULL, NULL),
('9bc5b56a-ff49-4773-abf1-6d7bdf39febd', '/data/category/iot1.png', 'cong-nghe', '0', 1, 1, 5, NULL, NULL),
('9bc5b56a-ff4f-4295-b575-220e30160033', '/data/category/usb1.png', 'ky-thuat', '0', 1, 1, 6, NULL, NULL),
('9bc5b56a-ff56-40ba-a6cd-889bcaa90158', '/data/category/service1.png', 'dich-vu', '0', 1, 1, 7, NULL, NULL),
('9bc5b56a-ff5c-483a-a3da-e0ec60d25685', '/data/category/speaker1.png', 'banh-my-sai-gon', '9bc5b56a-ff43-47f7-bee1-698c0a83c396', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff62-471b-9db3-6428304228ba', '/data/category/laptop6.png', 'gom-bat-trang', '9bc5b56a-ff3d-4d5b-b218-bee174f10081', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86', '/data/category/cpu1.png', 'dan-ca-quan-ho', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5', '/data/category/cpu2.png', 'don-ca-tai-tu', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff74-48ee-9101-340cc62de545', '/data/category/blueetooth2.png', 'nem-chua', '9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 1, 1, 7, NULL, NULL),
('9bc5b56a-ff7a-490b-ba08-564bc197fffb', '/data/category/wifi2.png', 'toi-ly-son', '9bc5b56a-ff43-47f7-bee1-698c0a83c396', 1, 1, 20, NULL, NULL),
('9bc5b56a-ff80-4764-b960-446c6198f4f4', '/data/category/headphone3.png', 'phong-nha-kebang', '9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff86-41d7-af29-373257f0b535', '/data/category/laptop2.png', 'pho-nam-dinh', '9bc5b56a-ff24-4af7-b823-4d50cf271e3e', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff8c-4378-91b2-03da253fdc8f', '/data/category/laptop3.png', 'com-lang-vong', '9bc5b56a-ff24-4af7-b823-4d50cf271e3e', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff92-47c5-9991-d31b1cf140a7', '/data/category/laptop4.png', 'bun-cha-hanoi', '9bc5b56a-ff24-4af7-b823-4d50cf271e3e', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff99-4a56-93f4-073be7f41c85', '/data/category/laptop5.png', 'com-tam-an-giang', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd', 0, 1, 0, NULL, NULL),
('9bc5b56a-ff9f-42fd-839f-a436e744b31a', '/data/category/headphone2.png', 'vinh-ha-long', '9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffa5-4c95-88d8-65c20c640ea9', '/data/category/camera1.png', 'lua-ha-dong', '9bc5b56a-ff3d-4d5b-b218-bee174f10081', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffab-4d59-98f4-7fe5c3abb41f', '/data/category/camera2.png', 'non-quai-thao', '9bc5b56a-ff3d-4d5b-b218-bee174f10081', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffb1-4384-b072-c2ac98cac314', '/data/category/monitor2.png', 'tranh-dong-ho', '9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffb7-40fc-8d28-8e48c5200f2e', '/data/category/monitor1.png', 'trai-cay-nam-bo', '9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffbd-40f7-bc3c-5107fca78dc7', '/data/category/phone2.png', 'chieu-coi-nga-son', '9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffc3-4ab1-a967-c11361c629bb', '/data/category/server1.png', 'nhac-co-truyen', '9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 0, 1, 0, NULL, NULL),
('9bc5b56a-ffc9-4b51-b11d-e921bf85b60b', '/data/category/print1.png', 'con-dao', '9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 1, 1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category_description`
--

CREATE TABLE `sc_shop_category_description` (
  `category_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category_description`
--

INSERT INTO `sc_shop_category_description` (`category_id`, `lang`, `title`, `keyword`, `description`) VALUES
('9bc5b56a-ff24-4af7-b823-4d50cf271e3e', 'en', 'Am Thuc', NULL, NULL),
('9bc5b56a-ff24-4af7-b823-4d50cf271e3e', 'vi', 'Am Thuc', NULL, NULL),
('9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 'en', 'Du Lich', NULL, NULL),
('9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', 'vi', 'Du Lich', NULL, NULL),
('9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 'en', 'My Nghe', NULL, NULL),
('9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', 'vi', 'My Nghe', NULL, NULL),
('9bc5b56a-ff3d-4d5b-b218-bee174f10081', 'en', 'Van Hoa', NULL, NULL),
('9bc5b56a-ff3d-4d5b-b218-bee174f10081', 'vi', 'Van Hoa', NULL, NULL),
('9bc5b56a-ff43-47f7-bee1-698c0a83c396', 'en', 'The Thao', NULL, NULL),
('9bc5b56a-ff43-47f7-bee1-698c0a83c396', 'vi', 'The Thao', NULL, NULL),
('9bc5b56a-ff49-4773-abf1-6d7bdf39febd', 'en', 'Cong Nghe', NULL, NULL),
('9bc5b56a-ff49-4773-abf1-6d7bdf39febd', 'vi', 'Cong Nghe', NULL, NULL),
('9bc5b56a-ff4f-4295-b575-220e30160033', 'en', 'Ky Thuat', NULL, NULL),
('9bc5b56a-ff4f-4295-b575-220e30160033', 'vi', 'Ky Thuat', NULL, NULL),
('9bc5b56a-ff56-40ba-a6cd-889bcaa90158', 'en', 'Dich Vu', NULL, NULL),
('9bc5b56a-ff56-40ba-a6cd-889bcaa90158', 'vi', 'Dich Vu', NULL, NULL),
('9bc5b56a-ff5c-483a-a3da-e0ec60d25685', 'en', 'Banh My Sai Gon', NULL, NULL),
('9bc5b56a-ff5c-483a-a3da-e0ec60d25685', 'vi', 'Banh My Sai Gon', NULL, NULL),
('9bc5b56a-ff62-471b-9db3-6428304228ba', 'en', 'Gom Bat Trang', NULL, NULL),
('9bc5b56a-ff62-471b-9db3-6428304228ba', 'vi', 'Gom Bat Trang', NULL, NULL),
('9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86', 'en', 'Dan Ca Quan Ho', NULL, NULL),
('9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86', 'vi', 'Dan Ca Quan Ho', NULL, NULL),
('9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5', 'en', 'Don Ca Tai Tu', NULL, NULL),
('9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5', 'vi', 'Don Ca Tai Tu', NULL, NULL),
('9bc5b56a-ff74-48ee-9101-340cc62de545', 'en', 'Nem Chua', NULL, NULL),
('9bc5b56a-ff74-48ee-9101-340cc62de545', 'vi', 'Nem Chua', NULL, NULL),
('9bc5b56a-ff7a-490b-ba08-564bc197fffb', 'en', 'Toi Ly Son', NULL, NULL),
('9bc5b56a-ff7a-490b-ba08-564bc197fffb', 'vi', 'Toi Ly Son', NULL, NULL),
('9bc5b56a-ff80-4764-b960-446c6198f4f4', 'en', 'Phong Nha Kebang', NULL, NULL),
('9bc5b56a-ff80-4764-b960-446c6198f4f4', 'vi', 'Phong Nha Kebang', NULL, NULL),
('9bc5b56a-ff86-41d7-af29-373257f0b535', 'en', 'Pho Nam Dinh', NULL, NULL),
('9bc5b56a-ff86-41d7-af29-373257f0b535', 'vi', 'Pho Nam Dinh', NULL, NULL),
('9bc5b56a-ff8c-4378-91b2-03da253fdc8f', 'en', 'Com Lang Vong', NULL, NULL),
('9bc5b56a-ff8c-4378-91b2-03da253fdc8f', 'vi', 'Com Lang Vong', NULL, NULL),
('9bc5b56a-ff92-47c5-9991-d31b1cf140a7', 'en', 'Bun Cha Hanoi', NULL, NULL),
('9bc5b56a-ff92-47c5-9991-d31b1cf140a7', 'vi', 'Bun Cha Hanoi', NULL, NULL),
('9bc5b56a-ff99-4a56-93f4-073be7f41c85', 'en', 'Com Tam An Giang', NULL, NULL),
('9bc5b56a-ff99-4a56-93f4-073be7f41c85', 'vi', 'Com Tam An Giang', NULL, NULL),
('9bc5b56a-ff9f-42fd-839f-a436e744b31a', 'en', 'Vinh Ha Long', NULL, NULL),
('9bc5b56a-ff9f-42fd-839f-a436e744b31a', 'vi', 'Vinh Ha Long', NULL, NULL),
('9bc5b56a-ffa5-4c95-88d8-65c20c640ea9', 'en', 'Lua Ha Dong', NULL, NULL),
('9bc5b56a-ffa5-4c95-88d8-65c20c640ea9', 'vi', 'Lua Ha Dong', NULL, NULL),
('9bc5b56a-ffab-4d59-98f4-7fe5c3abb41f', 'en', 'Non Quai Thao', NULL, NULL),
('9bc5b56a-ffab-4d59-98f4-7fe5c3abb41f', 'vi', 'Non Quai Thao', NULL, NULL),
('9bc5b56a-ffb1-4384-b072-c2ac98cac314', 'en', 'Tranh Dong Ho', NULL, NULL),
('9bc5b56a-ffb1-4384-b072-c2ac98cac314', 'vi', 'Tranh Dong Ho', NULL, NULL),
('9bc5b56a-ffb7-40fc-8d28-8e48c5200f2e', 'en', 'Trai Cay Nam Bo', NULL, NULL),
('9bc5b56a-ffb7-40fc-8d28-8e48c5200f2e', 'vi', 'Trai Cay Nam Bo', NULL, NULL),
('9bc5b56a-ffbd-40f7-bc3c-5107fca78dc7', 'en', 'Chieu Coi Nga Son', NULL, NULL),
('9bc5b56a-ffbd-40f7-bc3c-5107fca78dc7', 'vi', 'Chieu Coi Nga Son', NULL, NULL),
('9bc5b56a-ffc3-4ab1-a967-c11361c629bb', 'en', 'Nhac Co Truyen', NULL, NULL),
('9bc5b56a-ffc3-4ab1-a967-c11361c629bb', 'vi', 'Nhac Co Truyen', NULL, NULL),
('9bc5b56a-ffc9-4b51-b11d-e921bf85b60b', 'en', 'Con Dao', NULL, NULL),
('9bc5b56a-ffc9-4b51-b11d-e921bf85b60b', 'vi', 'Con Dao', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_category_store`
--

CREATE TABLE `sc_shop_category_store` (
  `category_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_category_store`
--

INSERT INTO `sc_shop_category_store` (`category_id`, `store_id`) VALUES
('9bc5b56a-ff24-4af7-b823-4d50cf271e3e', '1'),
('9bc5b56a-ff2f-4ee6-8e16-911f40c5f46a', '1'),
('9bc5b56a-ff36-4cf7-aacb-5fb6fbe42a23', '1'),
('9bc5b56a-ff3d-4d5b-b218-bee174f10081', '1'),
('9bc5b56a-ff43-47f7-bee1-698c0a83c396', '1'),
('9bc5b56a-ff49-4773-abf1-6d7bdf39febd', '1'),
('9bc5b56a-ff4f-4295-b575-220e30160033', '1'),
('9bc5b56a-ff56-40ba-a6cd-889bcaa90158', '1'),
('9bc5b56a-ff5c-483a-a3da-e0ec60d25685', '1'),
('9bc5b56a-ff62-471b-9db3-6428304228ba', '1'),
('9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86', '1'),
('9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5', '1'),
('9bc5b56a-ff74-48ee-9101-340cc62de545', '1'),
('9bc5b56a-ff7a-490b-ba08-564bc197fffb', '1'),
('9bc5b56a-ff80-4764-b960-446c6198f4f4', '1'),
('9bc5b56a-ff86-41d7-af29-373257f0b535', '1'),
('9bc5b56a-ff8c-4378-91b2-03da253fdc8f', '1'),
('9bc5b56a-ff92-47c5-9991-d31b1cf140a7', '1'),
('9bc5b56a-ff99-4a56-93f4-073be7f41c85', '1'),
('9bc5b56a-ff9f-42fd-839f-a436e744b31a', '1'),
('9bc5b56a-ffa5-4c95-88d8-65c20c640ea9', '1'),
('9bc5b56a-ffab-4d59-98f4-7fe5c3abb41f', '1'),
('9bc5b56a-ffb1-4384-b072-c2ac98cac314', '1'),
('9bc5b56a-ffb7-40fc-8d28-8e48c5200f2e', '1'),
('9bc5b56a-ffbd-40f7-bc3c-5107fca78dc7', '1'),
('9bc5b56a-ffc3-4ab1-a967-c11361c629bb', '1'),
('9bc5b56a-ffc9-4b51-b11d-e921bf85b60b', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_country`
--

CREATE TABLE `sc_shop_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_country`
--

INSERT INTO `sc_shop_country` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Albania'),
(2, 'DZ', 'Algeria'),
(3, 'DS', 'American Samoa'),
(4, 'AD', 'Andorra'),
(5, 'AO', 'Angola'),
(6, 'AI', 'Anguilla'),
(7, 'AQ', 'Antarctica'),
(8, 'AG', 'Antigua and Barbuda'),
(9, 'AR', 'Argentina'),
(10, 'AM', 'Armenia'),
(11, 'AW', 'Aruba'),
(12, 'AU', 'Australia'),
(13, 'AT', 'Austria'),
(14, 'AZ', 'Azerbaijan'),
(15, 'BS', 'Bahamas'),
(16, 'BH', 'Bahrain'),
(17, 'BD', 'Bangladesh'),
(18, 'BB', 'Barbados'),
(19, 'BY', 'Belarus'),
(20, 'BE', 'Belgium'),
(21, 'BZ', 'Belize'),
(22, 'BJ', 'Benin'),
(23, 'BM', 'Bermuda'),
(24, 'BT', 'Bhutan'),
(25, 'BO', 'Bolivia'),
(26, 'BA', 'Bosnia and Herzegovina'),
(27, 'BW', 'Botswana'),
(28, 'BV', 'Bouvet Island'),
(29, 'BR', 'Brazil'),
(30, 'IO', 'British Indian Ocean Territory'),
(31, 'BN', 'Brunei Darussalam'),
(32, 'BG', 'Bulgaria'),
(33, 'BF', 'Burkina Faso'),
(34, 'BI', 'Burundi'),
(35, 'KH', 'Cambodia'),
(36, 'CM', 'Cameroon'),
(37, 'CA', 'Canada'),
(38, 'CV', 'Cape Verde'),
(39, 'KY', 'Cayman Islands'),
(40, 'CF', 'Central African Republic'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(51, 'HR', 'Croatia (Hrvatska)'),
(52, 'CU', 'Cuba'),
(53, 'CY', 'Cyprus'),
(54, 'CZ', 'Czech Republic'),
(55, 'DK', 'Denmark'),
(56, 'DJ', 'Djibouti'),
(57, 'DM', 'Dominica'),
(58, 'DO', 'Dominican Republic'),
(59, 'TP', 'East Timor'),
(60, 'EC', 'Ecuador'),
(61, 'EG', 'Egypt'),
(62, 'SV', 'El Salvador'),
(63, 'GQ', 'Equatorial Guinea'),
(64, 'ER', 'Eritrea'),
(65, 'EE', 'Estonia'),
(66, 'ET', 'Ethiopia'),
(67, 'FK', 'Falkland Islands (Malvinas)'),
(68, 'FO', 'Faroe Islands'),
(69, 'FJ', 'Fiji'),
(70, 'FI', 'Finland'),
(71, 'FR', 'France'),
(72, 'FX', 'France, Metropolitan'),
(73, 'GF', 'French Guiana'),
(74, 'PF', 'French Polynesia'),
(75, 'TF', 'French Southern Territories'),
(76, 'GA', 'Gabon'),
(77, 'GM', 'Gambia'),
(78, 'GE', 'Georgia'),
(79, 'DE', 'Germany'),
(80, 'GH', 'Ghana'),
(81, 'GI', 'Gibraltar'),
(82, 'GK', 'Guernsey'),
(83, 'GR', 'Greece'),
(84, 'GL', 'Greenland'),
(85, 'GD', 'Grenada'),
(86, 'GP', 'Guadeloupe'),
(87, 'GU', 'Guam'),
(88, 'GT', 'Guatemala'),
(89, 'GN', 'Guinea'),
(90, 'GW', 'Guinea-Bissau'),
(91, 'GY', 'Guyana'),
(92, 'HT', 'Haiti'),
(93, 'HM', 'Heard and Mc Donald Islands'),
(94, 'HN', 'Honduras'),
(95, 'HK', 'Hong Kong'),
(96, 'HU', 'Hungary'),
(97, 'IS', 'Iceland'),
(98, 'IN', 'India'),
(99, 'IM', 'Isle of Man'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JE', 'Jersey'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'JO', 'Jordan'),
(111, 'KZ', 'Kazakhstan'),
(112, 'KE', 'Kenya'),
(113, 'KI', 'Kiribati'),
(114, 'KP', 'Korea,Democratic People\\s Republic of'),
(115, 'KR', 'Korea, Republic of'),
(116, 'XK', 'Kosovo'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Lao People\\s Democratic Republic'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libyan Arab Jamahiriya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'MH', 'Marshall Islands'),
(137, 'MQ', 'Martinique'),
(138, 'MR', 'Mauritania'),
(139, 'MU', 'Mauritius'),
(140, 'TY', 'Mayotte'),
(141, 'MX', 'Mexico'),
(142, 'FM', 'Micronesia, Federated States of'),
(143, 'MD', 'Moldova, Republic of'),
(144, 'MC', 'Monaco'),
(145, 'MN', 'Mongolia'),
(146, 'ME', 'Montenegro'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'NL', 'Netherlands'),
(155, 'AN', 'Netherlands Antilles'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestine'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua New Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russian Federation'),
(182, 'RW', 'Rwanda'),
(183, 'KN', 'Saint Kitts and Nevis'),
(184, 'LC', 'Saint Lucia'),
(185, 'VC', 'Saint Vincent and the Grenadines'),
(186, 'WS', 'Samoa'),
(187, 'SM', 'San Marino'),
(188, 'ST', 'Sao Tome and Principe'),
(189, 'SA', 'Saudi Arabia'),
(190, 'SN', 'Senegal'),
(191, 'RS', 'Serbia'),
(192, 'SC', 'Seychelles'),
(193, 'SL', 'Sierra Leone'),
(194, 'SG', 'Singapore'),
(195, 'SK', 'Slovakia'),
(196, 'SI', 'Slovenia'),
(197, 'SB', 'Solomon Islands'),
(198, 'SO', 'Somalia'),
(199, 'ZA', 'South Africa'),
(200, 'GS', 'South Georgia South Sandwich Islands'),
(201, 'SS', 'South Sudan'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'vi', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_currency`
--

CREATE TABLE `sc_shop_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `exchange_rate` double NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT 2,
  `symbol_first` tinyint(4) NOT NULL DEFAULT 0,
  `thousands` varchar(255) NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_currency`
--

INSERT INTO `sc_shop_currency` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `precision`, `symbol_first`, `thousands`, `status`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'USD Dola', 'USD', '$', 1, 2, 1, ',', 0, 0, NULL, '2024-04-10 07:40:44'),
(2, 'VietNam Dong', 'VND', '₫', 20000, 0, 0, ',', 0, 1, NULL, '2024-04-10 07:40:35'),
(3, 'Kenyan shillings', 'KES', 'ksh', 1, 2, 1, ',', 1, 1, '2024-04-10 07:40:24', '2024-04-10 08:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_customer`
--

CREATE TABLE `sc_shop_customer` (
  `id` char(36) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name_kana` varchar(100) DEFAULT NULL,
  `last_name_kana` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:women, 1:men',
  `birthday` date DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address_id` char(36) NOT NULL DEFAULT '0',
  `postcode` varchar(10) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(10) DEFAULT 'VN',
  `phone` varchar(20) DEFAULT NULL,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `group` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `provider_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_customer_address`
--

CREATE TABLE `sc_shop_customer_address` (
  `id` char(36) NOT NULL,
  `customer_id` char(36) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name_kana` varchar(100) DEFAULT NULL,
  `last_name_kana` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `country` varchar(10) DEFAULT 'VN',
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_custom_field`
--

CREATE TABLE `sc_shop_custom_field` (
  `id` char(36) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'shop_product, shop_customer,...',
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `required` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `option` varchar(50) DEFAULT NULL COMMENT 'radio, select, input',
  `default` varchar(250) DEFAULT NULL COMMENT '{"value1":"name1", "value2":"name2"}',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_custom_field_detail`
--

CREATE TABLE `sc_shop_custom_field_detail` (
  `id` char(36) NOT NULL,
  `custom_field_id` char(36) NOT NULL,
  `rel_id` char(36) NOT NULL COMMENT 'ID of product, customer,...',
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_email_template`
--

CREATE TABLE `sc_shop_email_template` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group` varchar(50) NOT NULL,
  `text` mediumtext NOT NULL,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_email_template`
--

INSERT INTO `sc_shop_email_template` (`id`, `name`, `group`, `text`, `store_id`, `status`, `created_at`, `updated_at`) VALUES
('9bc5b568-647e-4bc1-bb2c-ebdc0940a2ba', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', '1', 1, NULL, NULL),
('9bc5b568-648f-41bc-87f1-d27abfdb1fd9', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', '1', 1, NULL, NULL),
('9bc5b568-6498-4013-b56c-2939da34b1ce', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', '1', 1, NULL, NULL),
('9bc5b568-64a1-4b0c-8b7f-4b3a2f332f27', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL),
('9bc5b568-64aa-4c73-b91d-4087da832c28', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL),
('9bc5b568-64b4-46f9-9a79-0b6a9c395e03', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', '1', 1, NULL, NULL),
('9bc5b835-60cb-4095-b7cb-eb9870957af2', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b835-6299-4d7f-a397-67ff66fb07a0', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b835-62a9-4625-97fc-db82c844e3e5', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b835-62b3-43ff-8866-a7f10323e8ce', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b835-62bc-4b1d-bf55-ac62f8eaf04a', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b835-62c6-440e-baa5-010c1a64e445', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-xSdG9-0UgUZ', 1, NULL, NULL),
('9bc5b8dd-262c-4b1f-a94d-2146764cf1fb', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b8dd-2781-46de-806f-050c7db2658c', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b8dd-278b-4d98-906a-53cc3dc0245c', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b8dd-2792-4d97-92d9-6096b56e9f7f', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b8dd-2799-45f1-b90d-a59f774bdca7', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b8dd-27a0-4aba-a3c8-675c72117125', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-GQ0sY-vnQbk', 1, NULL, NULL),
('9bc5b982-3f4f-4d4c-89ad-12fcce2f8bf7', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5b982-4141-4b09-9bc7-577080b15b62', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5b982-414b-4d20-b715-8712b61531e1', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5b982-4153-4960-96ff-ffaaa492b2a7', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5b982-4160-4465-87aa-2b4f4d1b2d9b', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5b982-4167-4f22-9783-edd6a1c8cb7d', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-YQmkQ-wMgUn', 1, NULL, NULL),
('9bc5ba33-3b16-4483-9aa7-4f3987c9a722', 'Reset password', 'forgot_password', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n<tbody>\n    <tr>\n    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n        <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <tbody>\n                <tr>\n                <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <tbody>\n                            <tr>\n                            <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                            </td>\n                            </tr>\n                        </tbody>\n                    </table>\n                </td>\n                </tr>\n            </tbody>\n        </table>\n    </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-5ROFr-vQm44', 1, NULL, NULL),
('9bc5ba33-3c47-433e-b6f3-82890044558c', 'Customer verification', 'customer_verify', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$reason_sendmail}}</p>\n<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n    <tbody>\n    <tr>\n        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                <tbody>\n                <tr>\n                    <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody>\n                            <tr>\n                                <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                    <a href=\"{{$url_verify}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$button}}</a>\n                                </td>\n                            </tr>\n                            </tbody>\n                        </table>\n                    </td>\n                </tr>\n                </tbody>\n            </table>\n        </td>\n    </tr>\n    </tbody>\n    </table>\n    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n    {{$note_sendmail}}\n    </p>\n    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n    <tbody>\n    <tr>\n        <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n            <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$note_access_link}}</p>\n        </td>\n    </tr>\n    </tbody>\n</table>', 'S-5ROFr-vQm44', 1, NULL, NULL),
('9bc5ba33-3c51-40d5-b110-2d49c39266c8', 'Welcome new customer', 'welcome_customer', '\n<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 'S-5ROFr-vQm44', 1, NULL, NULL),
('9bc5ba33-3c58-409c-9be2-49371f2e937d', 'Send form contact to admin', 'contact_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Name</b>: {{$name}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n   <td>{{$content}}</td>\n</tr>\n</table>', 'S-5ROFr-vQm44', 1, NULL, NULL),
('9bc5ba33-3c5f-4ce5-9126-5f514093f4df', 'New order to admin', 'order_success_to_admin', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Email</b>: {{$email}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Other Fee</td>\n   <td colspan=\"2\" align=\"right\">{{$otherFee}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-5ROFr-vQm44', 1, NULL, NULL),
('9bc5ba33-3c65-4e40-89c0-ee56321998dd', 'New order to customr', 'order_success_to_customer', '\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n   <td>\n      <b>Order ID</b>: {{$orderID}}<br>\n      <b>Customer name</b>: {{$toname}}<br>\n      <b>Address</b>: {{$address}}<br>\n      <b>Phone</b>: {{$phone}}<br>\n      <b>Order note</b>: {{$comment}}\n   </td>\n</tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Order detail:<br>\n   ===================================<br>\n</p>\n<table class=\"inner-body\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n{{$orderDetail}}\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n   <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n   <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n   <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n</tr>\n<tr>\n   <td colspan=\"2\"></td>\n   <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n   <td colspan=\"2\" align=\"right\">{{$total}}</td>\n</tr>\n</table>', 'S-5ROFr-vQm44', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_language`
--

CREATE TABLE `sc_shop_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) DEFAULT 0 COMMENT 'Layout RTL',
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_language`
--

INSERT INTO `sc_shop_language` (`id`, `name`, `code`, `icon`, `status`, `rtl`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '/data/language/flag_uk.png', 1, 0, 1, NULL, NULL),
(2, 'Tiếng Việt', 'vi', '/data/language/flag_vn.png', 0, 0, 2, NULL, '2024-04-10 07:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_page`
--

CREATE TABLE `sc_shop_layout_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_page`
--

INSERT INTO `sc_shop_layout_page` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'home', 'admin.layout_page_position.home', NULL, NULL),
(2, 'shop_home', 'admin.layout_page_position.shop_home', NULL, NULL),
(3, 'shop_search', 'admin.layout_page_position.shop_search', NULL, NULL),
(4, 'shop_product_list', 'admin.layout_page_position.product_list', NULL, NULL),
(5, 'product_detail', 'admin.layout_page_position.product_detail', NULL, NULL),
(6, 'shop_cart', 'admin.layout_page_position.shop_cart', NULL, NULL),
(7, 'shop_item_list', 'admin.layout_page_position.item_list', NULL, NULL),
(8, 'shop_item_detail', 'admin.layout_page_position.item_detail', NULL, NULL),
(9, 'shop_news', 'admin.layout_page_position.news_list', NULL, NULL),
(10, 'shop_news_detail', 'admin.layout_page_position.news_detail', NULL, NULL),
(11, 'shop_auth', 'admin.layout_page_position.shop_auth', NULL, NULL),
(12, 'shop_profile', 'admin.layout_page_position.shop_profile', NULL, NULL),
(13, 'shop_page', 'admin.layout_page_position.shop_page', NULL, NULL),
(14, 'shop_contact', 'admin.layout_page_position.shop_contact', NULL, NULL),
(15, 'content_list', 'admin.layout_page_position.content_list', NULL, NULL),
(16, 'content_detail', 'admin.layout_page_position.content_detail', NULL, NULL),
(17, 'vendor_home', 'admin.layout_page_position.vendor_home', NULL, NULL),
(18, 'store_product_list', 'admin.layout_page_position.store_product_list', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_layout_position`
--

CREATE TABLE `sc_shop_layout_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_layout_position`
--

INSERT INTO `sc_shop_layout_position` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'header', 'admin.layout_page_block.header', NULL, NULL),
(2, 'banner_top', 'admin.layout_page_block.banner_top', NULL, NULL),
(3, 'top', 'admin.layout_page_block.top', NULL, NULL),
(4, 'left', 'admin.layout_page_block.left', NULL, NULL),
(5, 'right', 'admin.layout_page_block.right', NULL, NULL),
(6, 'bottom', 'admin.layout_page_block.bottom', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_length`
--

CREATE TABLE `sc_shop_length` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_length`
--

INSERT INTO `sc_shop_length` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'mm', 'Millimeter', NULL, NULL),
(2, 'cm', 'Centimeter', NULL, NULL),
(3, 'm', 'Meter ', NULL, NULL),
(4, 'in', 'Inch ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link`
--

CREATE TABLE `sc_shop_link` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `target` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL COMMENT 'Location of the link: footer, menu,...',
  `module` varchar(100) DEFAULT NULL COMMENT 'Related components (plugins, templates).\n Used to track, remove when the relevant component is removed.',
  `type` varchar(100) DEFAULT NULL COMMENT 'Distinguish between Link and Collection. \nValue collection|null',
  `collection_id` varchar(100) DEFAULT NULL COMMENT 'Collection\\''s ID',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link`
--

INSERT INTO `sc_shop_link` (`id`, `name`, `url`, `target`, `group`, `module`, `type`, `collection_id`, `status`, `sort`, `created_at`, `updated_at`) VALUES
('1', 'front.about', 'route::page.detail::about', '_self', 'menu', NULL, NULL, NULL, 1, 50, NULL, NULL),
('2', 'S-Cart', '#collection', '_self', 'menu', NULL, 'collection', NULL, 1, 60, NULL, NULL),
('3', 'About us', 'https://s-cart.org/en/about.html', '_self', 'menu', NULL, NULL, '2', 1, 10, NULL, NULL),
('4', 'Github', 'https://github.com/s-cart/s-cart', '_self', 'menu', NULL, NULL, '2', 1, 20, NULL, NULL),
('9bc5b568-6633-419e-a6f7-143aecdcbaf5', 'front.home', 'route::home', '_self', 'menu', '', NULL, NULL, 1, 10, NULL, NULL),
('9bc5b568-6641-47d2-8cb1-6eda1a8c5ace', 'front.shop', 'route::shop', '_self', 'menu', '', NULL, NULL, 1, 20, NULL, NULL),
('9bc5b568-664a-41a8-b162-3b08ec492f00', 'front.blog', 'route::news', '_self', 'menu', '', NULL, NULL, 1, 30, NULL, NULL),
('9bc5b568-6652-437a-9857-f4d59b8cd5d7', 'front.contact', 'route::contact', '_self', 'menu', '', NULL, NULL, 1, 40, NULL, NULL),
('9bc5b568-665a-497a-be48-b388bd006a0c', 'front.my_profile', 'route::login', '_self', 'footer', '', NULL, NULL, 1, 60, NULL, NULL),
('9bc5b568-6662-4b8c-a970-2a9f8c471777', 'front.compare_page', 'route::compare', '_self', 'footer', '', NULL, NULL, 1, 70, NULL, NULL),
('9bc5b568-6669-4d36-821e-7a752035c455', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', NULL, NULL, 1, 80, NULL, NULL),
('9bc5b835-642e-4684-9d4c-0a8a2d77999e', 'front.home', 'route::home', '_self', 'menu', '', NULL, NULL, 1, 10, NULL, NULL),
('9bc5b835-643b-466f-bc32-af0915d232a6', 'front.shop', 'route::shop', '_self', 'menu', '', NULL, NULL, 1, 20, NULL, NULL),
('9bc5b835-6444-49b5-864d-4719b470c5c4', 'front.blog', 'route::news', '_self', 'menu', '', NULL, NULL, 1, 30, NULL, NULL),
('9bc5b835-644c-4d08-9844-86555e7e9007', 'front.contact', 'route::contact', '_self', 'menu', '', NULL, NULL, 1, 40, NULL, NULL),
('9bc5b835-6454-4868-a94f-802df624236b', 'front.my_profile', 'route::login', '_self', 'footer', '', NULL, NULL, 1, 60, NULL, NULL),
('9bc5b835-645b-4355-a963-ff197fed615b', 'front.compare_page', 'route::compare', '_self', 'footer', '', NULL, NULL, 1, 70, NULL, NULL),
('9bc5b835-6463-4aa1-b8c3-98e084efbf5c', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', NULL, NULL, 1, 80, NULL, NULL),
('9bc5b8dd-28a0-4821-ae5e-3945db38ff59', 'front.home', 'route::home', '_self', 'menu', '', NULL, NULL, 1, 10, NULL, NULL),
('9bc5b8dd-28ad-40b0-a055-58d94b18f2af', 'front.shop', 'route::shop', '_self', 'menu', '', NULL, NULL, 1, 20, NULL, NULL),
('9bc5b8dd-28b6-412e-a802-97c0f01006db', 'front.blog', 'route::news', '_self', 'menu', '', NULL, NULL, 1, 30, NULL, NULL),
('9bc5b8dd-28be-4bc2-b165-eb6745121e20', 'front.contact', 'route::contact', '_self', 'menu', '', NULL, NULL, 1, 40, NULL, NULL),
('9bc5b8dd-28c7-4abf-8bdc-5dd5601c961a', 'front.my_profile', 'route::login', '_self', 'footer', '', NULL, NULL, 1, 60, NULL, NULL),
('9bc5b8dd-28cf-4b59-9af7-4b0e0f320819', 'front.compare_page', 'route::compare', '_self', 'footer', '', NULL, NULL, 1, 70, NULL, NULL),
('9bc5b8dd-28d9-4194-bc8e-bf83ae45e086', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', NULL, NULL, 1, 80, NULL, NULL),
('9bc5b982-4324-40eb-baaf-207927b2d5ec', 'front.home', 'route::home', '_self', 'menu', '', NULL, NULL, 1, 10, NULL, NULL),
('9bc5b982-4331-4c4e-9753-ceffaeba74c7', 'front.shop', 'route::shop', '_self', 'menu', '', NULL, NULL, 1, 20, NULL, NULL),
('9bc5b982-433b-4e14-b8a6-6c25071efbe6', 'front.blog', 'route::news', '_self', 'menu', '', NULL, NULL, 1, 30, NULL, NULL),
('9bc5b982-4343-4243-a33f-372e27616242', 'front.contact', 'route::contact', '_self', 'menu', '', NULL, NULL, 1, 40, NULL, NULL),
('9bc5b982-434b-4112-bd6e-243d476acdf2', 'front.my_profile', 'route::login', '_self', 'footer', '', NULL, NULL, 1, 60, NULL, NULL),
('9bc5b982-4352-4e50-a561-2902df54e07f', 'front.compare_page', 'route::compare', '_self', 'footer', '', NULL, NULL, 1, 70, NULL, NULL),
('9bc5b982-435a-41e4-b05f-f2cfc66baa79', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', NULL, NULL, 1, 80, NULL, NULL),
('9bc5ba33-3ce3-41af-978c-97c23ae0fc08', 'front.home', 'route::home', '_self', 'menu', '', NULL, NULL, 1, 10, NULL, NULL),
('9bc5ba33-3cef-458a-a0c5-14501d041b9c', 'front.shop', 'route::shop', '_self', 'menu', '', NULL, NULL, 1, 20, NULL, NULL),
('9bc5ba33-3cfc-453b-9d82-4795e0664539', 'front.blog', 'route::news', '_self', 'menu', '', NULL, NULL, 1, 30, NULL, NULL),
('9bc5ba33-3d03-42be-8e45-9c664e657368', 'front.contact', 'route::contact', '_self', 'menu', '', NULL, NULL, 1, 40, NULL, NULL),
('9bc5ba33-3d0f-46cc-b72e-85a87c6a9a2d', 'front.my_profile', 'route::login', '_self', 'footer', '', NULL, NULL, 1, 60, NULL, NULL),
('9bc5ba33-3d17-4bb7-a3db-d5da1a3a1b0c', 'front.compare_page', 'route::compare', '_self', 'footer', '', NULL, NULL, 1, 70, NULL, NULL),
('9bc5ba33-3d1d-4edc-887b-cb5282a01853', 'front.wishlist_page', 'route::wishlist', '_self', 'footer', '', NULL, NULL, 1, 80, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link_group`
--

CREATE TABLE `sc_shop_link_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link_group`
--

INSERT INTO `sc_shop_link_group` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'menu', 'Menu main', NULL, NULL),
(2, 'menu_left', 'Menu left', NULL, NULL),
(3, 'menu_right', 'Menu right', NULL, NULL),
(4, 'footer', 'Footer main', NULL, NULL),
(5, 'footer_left', 'Footer left', NULL, NULL),
(6, 'footer_right', 'Footer right', NULL, NULL),
(7, 'sidebar', 'Sidebar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_link_store`
--

CREATE TABLE `sc_shop_link_store` (
  `link_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_link_store`
--

INSERT INTO `sc_shop_link_store` (`link_id`, `store_id`) VALUES
('1', '1'),
('2', '1'),
('3', '1'),
('4', '1'),
('9bc5b568-6633-419e-a6f7-143aecdcbaf5', '1'),
('9bc5b568-6641-47d2-8cb1-6eda1a8c5ace', '1'),
('9bc5b568-664a-41a8-b162-3b08ec492f00', '1'),
('9bc5b568-6652-437a-9857-f4d59b8cd5d7', '1'),
('9bc5b568-665a-497a-be48-b388bd006a0c', '1'),
('9bc5b568-6662-4b8c-a970-2a9f8c471777', '1'),
('9bc5b568-6669-4d36-821e-7a752035c455', '1'),
('9bc5b835-642e-4684-9d4c-0a8a2d77999e', 'S-xSdG9-0UgUZ'),
('9bc5b835-643b-466f-bc32-af0915d232a6', 'S-xSdG9-0UgUZ'),
('9bc5b835-6444-49b5-864d-4719b470c5c4', 'S-xSdG9-0UgUZ'),
('9bc5b835-644c-4d08-9844-86555e7e9007', 'S-xSdG9-0UgUZ'),
('9bc5b835-6454-4868-a94f-802df624236b', 'S-xSdG9-0UgUZ'),
('9bc5b835-645b-4355-a963-ff197fed615b', 'S-xSdG9-0UgUZ'),
('9bc5b835-6463-4aa1-b8c3-98e084efbf5c', 'S-xSdG9-0UgUZ'),
('9bc5b8dd-28a0-4821-ae5e-3945db38ff59', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28ad-40b0-a055-58d94b18f2af', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28b6-412e-a802-97c0f01006db', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28be-4bc2-b165-eb6745121e20', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28c7-4abf-8bdc-5dd5601c961a', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28cf-4b59-9af7-4b0e0f320819', 'S-GQ0sY-vnQbk'),
('9bc5b8dd-28d9-4194-bc8e-bf83ae45e086', 'S-GQ0sY-vnQbk'),
('9bc5b982-4324-40eb-baaf-207927b2d5ec', 'S-YQmkQ-wMgUn'),
('9bc5b982-4331-4c4e-9753-ceffaeba74c7', 'S-YQmkQ-wMgUn'),
('9bc5b982-433b-4e14-b8a6-6c25071efbe6', 'S-YQmkQ-wMgUn'),
('9bc5b982-4343-4243-a33f-372e27616242', 'S-YQmkQ-wMgUn'),
('9bc5b982-434b-4112-bd6e-243d476acdf2', 'S-YQmkQ-wMgUn'),
('9bc5b982-4352-4e50-a561-2902df54e07f', 'S-YQmkQ-wMgUn'),
('9bc5b982-435a-41e4-b05f-f2cfc66baa79', 'S-YQmkQ-wMgUn'),
('9bc5ba33-3ce3-41af-978c-97c23ae0fc08', 'S-5ROFr-vQm44'),
('9bc5ba33-3cef-458a-a0c5-14501d041b9c', 'S-5ROFr-vQm44'),
('9bc5ba33-3cfc-453b-9d82-4795e0664539', 'S-5ROFr-vQm44'),
('9bc5ba33-3d03-42be-8e45-9c664e657368', 'S-5ROFr-vQm44'),
('9bc5ba33-3d0f-46cc-b72e-85a87c6a9a2d', 'S-5ROFr-vQm44'),
('9bc5ba33-3d17-4bb7-a3db-d5da1a3a1b0c', 'S-5ROFr-vQm44'),
('9bc5ba33-3d1d-4edc-887b-cb5282a01853', 'S-5ROFr-vQm44');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news`
--

CREATE TABLE `sc_shop_news` (
  `id` char(36) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `alias` varchar(120) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news`
--

INSERT INTO `sc_shop_news` (`id`, `image`, `alias`, `sort`, `status`, `created_at`, `updated_at`) VALUES
('9bc5b56a-f1d4-4226-ba09-0f79cff3f62f', '/data/content/blog-1.jpg', 'cau-vang', 0, 1, '2024-04-10 07:35:45', NULL),
('9bc5b56a-f425-40e7-923d-8eb5726cfa9f', '/data/content/blog-2.jpg', 'vinh-ha-long', 0, 1, '2024-04-10 07:35:45', NULL),
('9bc5b56a-f42f-46f5-9a2a-a539f364ecb1', '/data/content/blog-3.jpg', 'hang-son-doong', 0, 1, '2024-04-10 07:35:45', NULL),
('9bc5b56a-f436-45ea-93b3-8fabbf60fa4e', '/data/content/blog-4.jpg', 'trang-an', 0, 1, '2024-04-10 07:35:45', NULL),
('9bc5b56a-f43c-46d7-b67c-804f1f8f2fac', '/data/content/blog-5.jpg', 'ruong-bac-thang-ha-giang', 0, 1, '2024-04-10 07:35:45', NULL),
('9bc5b56a-f444-4707-a94a-f6d7a1487f14', '/data/content/blog-6.jpg', 'thi-tran-sapa', 0, 1, '2024-04-10 07:35:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news_description`
--

CREATE TABLE `sc_shop_news_description` (
  `news_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news_description`
--

INSERT INTO `sc_shop_news_description` (`news_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
('9bc5b56a-f1d4-4226-ba09-0f79cff3f62f', 'en', 'Cau Vang', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f1d4-4226-ba09-0f79cff3f62f', 'vi', 'Cau Vang', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f425-40e7-923d-8eb5726cfa9f', 'en', 'Vinh Ha Long', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f425-40e7-923d-8eb5726cfa9f', 'vi', 'Vinh Ha Long', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f42f-46f5-9a2a-a539f364ecb1', 'en', 'Hang Son Doong', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f42f-46f5-9a2a-a539f364ecb1', 'vi', 'Hang Son Doong', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f436-45ea-93b3-8fabbf60fa4e', 'en', 'Trang An', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f436-45ea-93b3-8fabbf60fa4e', 'vi', 'Trang An', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f43c-46d7-b67c-804f1f8f2fac', 'en', 'Ruong Bac Thang Ha Giang', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f43c-46d7-b67c-804f1f8f2fac', 'vi', 'Ruong Bac Thang Ha Giang', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f444-4707-a94a-f6d7a1487f14', 'en', 'Thi Tran Sapa', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56a-f444-4707-a94a-f6d7a1487f14', 'vi', 'Thi Tran Sapa', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_news_store`
--

CREATE TABLE `sc_shop_news_store` (
  `news_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_news_store`
--

INSERT INTO `sc_shop_news_store` (`news_id`, `store_id`) VALUES
('9bc5b56a-f1d4-4226-ba09-0f79cff3f62f', '1'),
('9bc5b56a-f425-40e7-923d-8eb5726cfa9f', '1'),
('9bc5b56a-f42f-46f5-9a2a-a539f364ecb1', '1'),
('9bc5b56a-f436-45ea-93b3-8fabbf60fa4e', '1'),
('9bc5b56a-f43c-46d7-b67c-804f1f8f2fac', '1'),
('9bc5b56a-f444-4707-a94a-f6d7a1487f14', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order`
--

CREATE TABLE `sc_shop_order` (
  `id` char(36) NOT NULL,
  `customer_id` char(36) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT 0.00,
  `shipping` decimal(15,2) DEFAULT 0.00,
  `discount` decimal(15,2) DEFAULT 0.00,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `shipping_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `tax` decimal(15,2) DEFAULT 0.00,
  `other_fee` decimal(15,2) DEFAULT 0.00,
  `total` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(10) NOT NULL,
  `exchange_rate` decimal(15,2) DEFAULT NULL,
  `received` decimal(15,2) DEFAULT 0.00,
  `balance` decimal(15,2) DEFAULT 0.00,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name_kana` varchar(100) DEFAULT NULL,
  `last_name_kana` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `country` varchar(10) DEFAULT 'VN',
  `company` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `shipping_method` varchar(100) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT 'other',
  `ip` varchar(100) DEFAULT NULL,
  `transaction` varchar(100) DEFAULT NULL,
  `store_id` char(36) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order`
--

INSERT INTO `sc_shop_order` (`id`, `customer_id`, `domain`, `subtotal`, `shipping`, `discount`, `payment_status`, `shipping_status`, `status`, `tax`, `other_fee`, `total`, `currency`, `exchange_rate`, `received`, `balance`, `first_name`, `last_name`, `first_name_kana`, `last_name_kana`, `address1`, `address2`, `address3`, `country`, `company`, `postcode`, `phone`, `email`, `comment`, `payment_method`, `shipping_method`, `user_agent`, `device_type`, `ip`, `transaction`, `store_id`, `created_at`, `updated_at`) VALUES
('O-p5TnI-c4ziN', '0', 'http://127.0.0.1:8000', 80.00, 20.00, 0.00, 1, 1, 1, 8.00, 0.00, 108.00, 'KES', 1.00, 0.00, 108.00, 'Antony', 'Torotich', NULL, NULL, 'Kitengela', 'Kajiado', NULL, 'KE', NULL, NULL, '0707546698', 'antonytorotich@gmail.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'desktop', '127.0.0.1', NULL, '1', '2024-04-11 05:15:04', '2024-04-11 05:15:04'),
('O-zPBjZ-DQLy7', '0', 'http://127.0.0.1:8000', 450.00, 20.00, 0.00, 1, 1, 1, 0.00, 0.00, 470.00, 'KES', 1.00, 0.00, 470.00, 'Antony', 'Torotich', NULL, NULL, 'Kitengela', 'Kajiado', NULL, 'KE', NULL, NULL, '0707546698', 'antonytorotich@gmail.com', NULL, 'Cash', 'ShippingStandard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'desktop', '127.0.0.1', NULL, 'S-GQ0sY-vnQbk', '2024-04-11 05:16:43', '2024-04-11 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_detail`
--

CREATE TABLE `sc_shop_order_detail` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `total_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(50) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `exchange_rate` double DEFAULT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_detail`
--

INSERT INTO `sc_shop_order_detail` (`id`, `order_id`, `product_id`, `name`, `price`, `qty`, `store_id`, `total_price`, `tax`, `sku`, `currency`, `exchange_rate`, `attribute`, `created_at`, `updated_at`) VALUES
('9bc78617-d4b0-42e8-ad29-c0dde5e1d46f', 'O-p5TnI-c4ziN', '9bc5b56b-0b56-4399-a866-6fbe88af8c5f', 'Thit Trau Gac Bep', 80.00, 1, '1', 80.00, 8.00, 'THIT-TRAU-GAC-BEP', 'KES', 1, '[]', '2024-04-11 05:15:05', '2024-04-11 05:15:05'),
('9bc786ae-13b3-45ba-800e-6a6ff7d48694', 'O-zPBjZ-DQLy7', '9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'Handcrafted Ceramic Vase', 90.00, 5, 'S-GQ0sY-vnQbk', 450.00, 0.00, 'CERAMIC-VASE-001', 'KES', 1, '[]', '2024-04-11 05:16:43', '2024-04-11 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_history`
--

CREATE TABLE `sc_shop_order_history` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `content` varchar(300) NOT NULL,
  `admin_id` char(36) NOT NULL DEFAULT '0',
  `customer_id` char(36) NOT NULL DEFAULT '0',
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `add_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_history`
--

INSERT INTO `sc_shop_order_history` (`id`, `order_id`, `content`, `admin_id`, `customer_id`, `order_status_id`, `add_date`) VALUES
('9bc78617-e4de-4a3d-b1f0-449a8a44af5a', 'O-p5TnI-c4ziN', 'New order', '0', '0', 1, '2024-04-11 05:15:05'),
('9bc786ae-1b26-4743-a93f-4d1262919397', 'O-zPBjZ-DQLy7', 'New order', '0', '0', 1, '2024-04-11 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_status`
--

CREATE TABLE `sc_shop_order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_status`
--

INSERT INTO `sc_shop_order_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'New', NULL, NULL),
(2, 'Processing', NULL, NULL),
(3, 'Hold', NULL, NULL),
(4, 'Canceled', NULL, NULL),
(5, 'Done', NULL, NULL),
(6, 'Failed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_order_total`
--

CREATE TABLE `sc_shop_order_total` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `value` decimal(15,2) NOT NULL DEFAULT 0.00,
  `text` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_order_total`
--

INSERT INTO `sc_shop_order_total` (`id`, `order_id`, `title`, `code`, `value`, `text`, `sort`, `created_at`, `updated_at`) VALUES
('9bc78617-bb3c-447b-8268-3c756223cae6', 'O-p5TnI-c4ziN', 'SubTotal', 'subtotal', 80.00, 'ksh80', 1, '2024-04-11 05:15:05', NULL),
('9bc78617-be20-429b-a3cb-e345af6eec23', 'O-p5TnI-c4ziN', 'Tax', 'tax', 8.00, 'ksh8', 2, '2024-04-11 05:15:05', NULL),
('9bc78617-be2d-4954-ba50-bdaaee9a6d37', 'O-p5TnI-c4ziN', 'Shipping Standard', 'shipping', 20.00, 'ksh20', 10, '2024-04-11 05:15:05', NULL),
('9bc78617-be37-452a-b92d-ed16bc50173d', 'O-p5TnI-c4ziN', 'Discount', 'discount', 0.00, '0', 20, '2024-04-11 05:15:05', NULL),
('9bc78617-be41-4cff-b4af-3aa923ba09af', 'O-p5TnI-c4ziN', 'Other fee', 'other_fee', 0.00, '0', 80, '2024-04-11 05:15:05', NULL),
('9bc78617-be4a-4a39-9ce9-3b5dda189c81', 'O-p5TnI-c4ziN', 'Total', 'total', 108.00, 'ksh108', 100, '2024-04-11 05:15:05', NULL),
('9bc78617-be55-4825-8cf1-fb50ef41bd6a', 'O-p5TnI-c4ziN', 'Received', 'received', 0.00, '0', 200, '2024-04-11 05:15:05', NULL),
('9bc786ae-0679-4ab7-a146-eb98309c2171', 'O-zPBjZ-DQLy7', 'SubTotal', 'subtotal', 450.00, 'ksh450', 1, '2024-04-11 05:16:43', NULL),
('9bc786ae-098c-48b1-85b2-34d700de7fde', 'O-zPBjZ-DQLy7', 'Tax', 'tax', 0.00, 'ksh0', 2, '2024-04-11 05:16:43', NULL),
('9bc786ae-0999-4f77-875c-b2ad2edbbd36', 'O-zPBjZ-DQLy7', 'Shipping Standard', 'shipping', 20.00, 'ksh20', 10, '2024-04-11 05:16:43', NULL),
('9bc786ae-09a3-4fe0-a53e-1c10aa1d8d69', 'O-zPBjZ-DQLy7', 'Discount', 'discount', 0.00, '0', 20, '2024-04-11 05:16:43', NULL),
('9bc786ae-09ac-42fa-958e-3b2d4825180a', 'O-zPBjZ-DQLy7', 'Other fee', 'other_fee', 0.00, '0', 80, '2024-04-11 05:16:43', NULL),
('9bc786ae-09b5-4cbd-9309-abfd722795ca', 'O-zPBjZ-DQLy7', 'Total', 'total', 470.00, 'ksh470', 100, '2024-04-11 05:16:43', NULL),
('9bc786ae-09be-4d82-9379-b5ae234ca24e', 'O-zPBjZ-DQLy7', 'Received', 'received', 0.00, '0', 200, '2024-04-11 05:16:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page`
--

CREATE TABLE `sc_shop_page` (
  `id` char(36) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alias` varchar(120) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page`
--

INSERT INTO `sc_shop_page` (`id`, `image`, `alias`, `status`, `created_at`, `updated_at`) VALUES
('1', '', 'about', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page_description`
--

CREATE TABLE `sc_shop_page_description` (
  `page_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page_description`
--

INSERT INTO `sc_shop_page_description` (`page_id`, `lang`, `title`, `keyword`, `description`, `content`) VALUES
('1', 'en', 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('1', 'vi', 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-2.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_page_store`
--

CREATE TABLE `sc_shop_page_store` (
  `page_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_page_store`
--

INSERT INTO `sc_shop_page_store` (`page_id`, `store_id`) VALUES
('1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_password_resets`
--

CREATE TABLE `sc_shop_password_resets` (
  `email` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_payment_status`
--

CREATE TABLE `sc_shop_payment_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_payment_status`
--

INSERT INTO `sc_shop_payment_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Unpaid', NULL, NULL),
(2, 'Partial payment', NULL, NULL),
(3, 'Paid', NULL, NULL),
(4, 'Refurn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product`
--

CREATE TABLE `sc_shop_product` (
  `id` char(36) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `upc` varchar(20) DEFAULT NULL COMMENT 'upc code',
  `ean` varchar(20) DEFAULT NULL COMMENT 'ean code',
  `jan` varchar(20) DEFAULT NULL COMMENT 'jan code',
  `isbn` varchar(20) DEFAULT NULL COMMENT 'isbn code',
  `mpn` varchar(64) DEFAULT NULL COMMENT 'mpn code',
  `image` varchar(255) DEFAULT NULL,
  `brand_id` char(36) DEFAULT '0',
  `supplier_id` char(36) DEFAULT '0',
  `price` decimal(15,2) DEFAULT 0.00,
  `cost` decimal(15,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0,
  `minimum` int(11) DEFAULT 0,
  `weight_class` varchar(255) DEFAULT NULL,
  `weight` decimal(15,2) DEFAULT 0.00,
  `length_class` varchar(255) DEFAULT NULL,
  `length` decimal(15,2) DEFAULT 0.00,
  `width` decimal(15,2) DEFAULT 0.00,
  `height` decimal(15,2) DEFAULT 0.00,
  `kind` tinyint(4) DEFAULT 0 COMMENT '0:single, 1:bundle, 2:group',
  `property` varchar(50) DEFAULT 'physical',
  `tax_id` varchar(50) DEFAULT '0' COMMENT '0:No-tax, auto: Use tax default',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `approve` tinyint(4) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `alias` varchar(120) NOT NULL,
  `date_lastview` timestamp NULL DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product`
--

INSERT INTO `sc_shop_product` (`id`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `image`, `brand_id`, `supplier_id`, `price`, `cost`, `stock`, `sold`, `minimum`, `weight_class`, `weight`, `length_class`, `length`, `width`, `height`, `kind`, `property`, `tax_id`, `status`, `approve`, `sort`, `view`, `alias`, `date_lastview`, `date_available`, `created_at`, `updated_at`) VALUES
('9bc5b56b-0a76-415f-a176-c61fed016165', 'CU-DO-HA-TINH', NULL, NULL, NULL, NULL, NULL, '/data/product/product-1.png', '9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'cu-do-ha-tinh', NULL, NULL, NULL, NULL),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', 'MAN-HAU-LANG-SON', NULL, NULL, NULL, NULL, NULL, '/data/product/product-2.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'man-hau-lang-son', NULL, NULL, NULL, NULL),
('9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', 'BANH-GAI-TU-TRU', NULL, NULL, NULL, NULL, NULL, '/data/product/product-3.png', '9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'banh-gai-tu-tru', NULL, NULL, NULL, NULL),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', 'BUN-BO-HUE', NULL, NULL, NULL, NULL, NULL, '/data/product/product-4.png', '9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 2, 'physical', 'auto', 1, 1, 0, 0, 'bun-bo-hue', NULL, NULL, NULL, NULL),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', 'BANH-TRANG-TRON', NULL, NULL, NULL, NULL, NULL, '/data/product/product-5.png', '9bc5b56b-0772-4360-a401-bd00482bbc9d', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 1, 'physical', 'auto', 1, 1, 0, 0, 'banh-trang-tron', NULL, NULL, NULL, NULL),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', 'MUOI-TAY-NINH', NULL, NULL, NULL, NULL, NULL, '/data/product/product-6.png', '9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'muoi-tay-ninh', NULL, NULL, NULL, NULL),
('9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', 'KEO-DOI-LAC', NULL, NULL, NULL, NULL, NULL, '/data/product/product-7.png', '9bc5b56b-073f-4deb-b0aa-331e56a9ec74', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'keo-doi-lac', NULL, NULL, NULL, NULL),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', 'SAU-RIENG-DAK-LAK', NULL, NULL, NULL, NULL, NULL, '/data/product/product-8.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-0567-4578-8138-d179b21b22ef', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'sau-rieng-dak-lak', NULL, NULL, NULL, NULL),
('9bc5b56b-0ac3-4c9d-bf73-2c320704a89b', 'DON-QUANG-NGAI', NULL, NULL, NULL, NULL, NULL, '/data/product/product-9.png', '9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'don-quang-ngai', NULL, NULL, NULL, NULL),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', 'BANH-KHOT-VUNG-TAU', NULL, NULL, NULL, NULL, NULL, '/data/product/product-10.png', '9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 1, 'physical', 'auto', 1, 1, 0, 0, 'banh-khot-vung-tau', NULL, NULL, NULL, NULL),
('9bc5b56b-0ad3-4473-90ac-e05fefc19cae', 'CHAO-LUON-XU-NGHE', NULL, NULL, NULL, NULL, NULL, '/data/product/product-11.png', '9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'chao-luon-xu-nghe', NULL, NULL, NULL, NULL),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 'BANH-DAU-XANH-HUNG-YEN', NULL, NULL, NULL, NULL, NULL, '/data/product/product-12.png', '9bc5b56b-076a-451a-90e8-dc954bff46f8', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'banh-dau-xanh-hung-yen', NULL, NULL, NULL, NULL),
('9bc5b56b-0ae2-4714-b15e-196229353096', 'HU-TIEU-NAM-VANG', NULL, NULL, NULL, NULL, NULL, '/data/product/product-13.png', '9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'hu-tieu-nam-vang', NULL, NULL, NULL, NULL),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', 'CANH-CHUA-CA-LOC', NULL, NULL, NULL, NULL, NULL, '/data/product/product-14.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 2, 'physical', 'auto', 1, 1, 0, 0, 'canh-chua-ca-loc', NULL, NULL, NULL, NULL),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', 'CHOM-CHOM-NHAN', NULL, NULL, NULL, NULL, NULL, '/data/product/product-15.png', '9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '9bc5b56b-0567-4578-8138-d179b21b22ef', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 1, 'physical', 'auto', 1, 1, 0, 0, 'chom-chom-nhan', NULL, NULL, NULL, NULL),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', 'CAM-VINH-LOAI-I', NULL, NULL, NULL, NULL, NULL, '/data/product/product-16.png', '9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'cam-vinh-loai-i', NULL, NULL, NULL, NULL),
('9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', 'MI-QUANG', NULL, NULL, NULL, NULL, NULL, '/data/product/product-17.png', '9bc5b56b-0772-4360-a401-bd00482bbc9d', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'mi-quang', NULL, NULL, NULL, NULL),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', 'CHAO-LONG-TIET-CANH', NULL, NULL, NULL, NULL, NULL, '/data/product/product-18.png', '9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'chao-long-tiet-canh', NULL, NULL, NULL, NULL),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', 'CAM-SANH-MONG-NUOC', NULL, NULL, NULL, NULL, NULL, '/data/product/product-19.png', '9bc5b56b-073f-4deb-b0aa-331e56a9ec74', '9bc5b56b-0567-4578-8138-d179b21b22ef', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 2, 'physical', 'auto', 1, 1, 0, 0, 'cam-sanh-mong-nuoc', NULL, NULL, NULL, NULL),
('9bc5b56b-0b0d-4d5f-b68f-c5d086951b6b', 'XOAI-CAT-HOA-LOC', NULL, NULL, NULL, NULL, NULL, '/data/product/product-20.png', '9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'xoai-cat-hoa-loc', NULL, NULL, NULL, NULL),
('9bc5b56b-0b13-451e-adec-cfd37ed0dc6b', 'COM-NIU-SAI-GON', NULL, NULL, NULL, NULL, NULL, '/data/product/product-21.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'com-niu-sai-gon', NULL, NULL, NULL, NULL),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', 'COM-TAM-AN-GIANG', NULL, NULL, NULL, NULL, NULL, '/data/product/product-22.png', '9bc5b56b-076a-451a-90e8-dc954bff46f8', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'com-tam-an-giang', NULL, NULL, NULL, NULL),
('9bc5b56b-0b1f-4c4f-ac89-8b9d76dd6cfe', 'VAI-THIEU-LUC-NGAN', NULL, NULL, NULL, NULL, NULL, '/data/product/product-23.png', '9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'vai-thieu-luc-ngan', NULL, NULL, NULL, NULL),
('9bc5b56b-0b25-4073-8c63-a6007c0b03d9', 'NEM-CHUA-THANH-HOA', NULL, NULL, NULL, NULL, NULL, '/data/product/product-24.png', '9bc5b56b-0748-4386-8f15-16b8fb4a7f81', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'nem-chua-thanh-hoa', NULL, NULL, NULL, NULL),
('9bc5b56b-0b2b-4177-9868-b92a2498f083', 'CHA-CA-NHA-TRANG', NULL, NULL, NULL, NULL, NULL, '/data/product/product-25.png', '9bc5b56b-073f-4deb-b0aa-331e56a9ec74', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'cha-ca-nha-trang', NULL, NULL, NULL, NULL),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', 'HO-TIEU', NULL, NULL, NULL, NULL, NULL, '/data/product/product-26.png', '9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'ho-tieu', NULL, NULL, NULL, NULL),
('9bc5b56b-0b38-4382-af29-93a6eaa561b3', 'NHAN-LONG-HUNG-YEN', NULL, NULL, NULL, NULL, NULL, '/data/product/product-27.png', '9bc5b56b-0748-4386-8f15-16b8fb4a7f81', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'nhan-long-hung-yen', NULL, NULL, NULL, NULL),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', 'CA-PHE-BUON-ME', NULL, NULL, NULL, NULL, NULL, '/data/product/product-28.png', '9bc5b56b-0748-4386-8f15-16b8fb4a7f81', '9bc5b56b-0567-4578-8138-d179b21b22ef', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'ca-phe-buon-me', NULL, NULL, NULL, NULL),
('9bc5b56b-0b44-4ea2-a967-110bad0fbff9', 'KEO-DUA-BEN-TRE', NULL, NULL, NULL, NULL, NULL, '/data/product/product-29.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-0567-4578-8138-d179b21b22ef', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'keo-dua-ben-tre', NULL, NULL, NULL, NULL),
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', 'MANG-CUT', NULL, NULL, NULL, NULL, NULL, '/data/product/product-30.png', '9bc5b56b-077a-4573-a721-758577d919f3', '9bc5b56b-0567-4578-8138-d179b21b22ef', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'mang-cut', NULL, NULL, NULL, NULL),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', 'NON-LA-VIETNAM', NULL, NULL, NULL, NULL, NULL, '/data/product/product-31.png', '9bc5b56b-0763-4bb1-ae50-5e23d0339f91', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'non-la-vietnam', NULL, NULL, NULL, NULL),
('9bc5b56b-0b56-4399-a866-6fbe88af8c5f', 'THIT-TRAU-GAC-BEP', NULL, NULL, NULL, NULL, NULL, '/data/product/product-32.png', '9bc5b56b-0753-4323-89c8-b26fe4f2b75a', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 80.00, 0.00, 99, 1, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'thit-trau-gac-bep', NULL, NULL, NULL, '2024-04-11 05:15:05'),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', 'PHO-HA-NOI', NULL, NULL, NULL, NULL, NULL, '/data/product/product-33.png', '9bc5b56b-0748-4386-8f15-16b8fb4a7f81', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 60.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 1, 'physical', 'auto', 1, 1, 0, 0, 'pho-ha-noi', NULL, NULL, NULL, NULL),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', 'BANH-MY-CHA-CA', NULL, NULL, NULL, NULL, NULL, '/data/product/product-34.png', '9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 2, 'physical', 'auto', 1, 1, 0, 0, 'banh-my-cha-ca', NULL, NULL, NULL, NULL),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', 'AO-DAI-VIETNAM', NULL, NULL, NULL, NULL, NULL, '/data/product/product-35.png', '9bc5b56b-0731-4b2e-8dd7-dc2f57d2c58b', '9bc5b56b-0567-4578-8138-d179b21b22ef', 100.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'ao-dai-vietnam', NULL, NULL, NULL, NULL),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 'THANH-LONG-RUOT-DO', NULL, NULL, NULL, NULL, NULL, '/data/product/product-36.png', '9bc5b56b-076a-451a-90e8-dc954bff46f8', '9bc5b56b-0567-4578-8138-d179b21b22ef', 80.00, 0.00, 100, 0, 0, NULL, 0.00, NULL, 0.00, 0.00, 0.00, 0, 'physical', 'auto', 1, 1, 0, 0, 'thanh-long-ruot-do', NULL, NULL, NULL, NULL),
('9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'CERAMIC-VASE-001', NULL, NULL, NULL, NULL, NULL, '/data/product/S-GQ0sY-vnQbk/images.jpeg', '9bc5b56b-075b-4cbd-bd81-bc22fb2cdb90', '9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 90.00, 20.00, 295, 5, 0, 'kg', 3.00, 'cm', 20.00, 20.00, 30.00, 0, 'physical', '0', 1, 1, 1, 0, 'handcrafted-ceramic-vase', NULL, '2024-04-10', '2024-04-10 08:01:33', '2024-04-11 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_attribute`
--

CREATE TABLE `sc_shop_product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `product_id` char(36) NOT NULL,
  `add_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_attribute`
--

INSERT INTO `sc_shop_product_attribute` (`id`, `name`, `attribute_group_id`, `product_id`, `add_price`, `sort`, `status`) VALUES
(1, 'Blue', 1, '9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 5.00, 0, 1),
(2, 'White', 1, '9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 0.00, 0, 1),
(3, 'S', 2, '9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 2.00, 0, 1),
(4, 'XL', 2, '9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 3.00, 0, 1),
(5, 'Blue', 1, '9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 10.00, 0, 1),
(6, 'Red', 1, '9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 0.00, 0, 1),
(7, 'S', 2, '9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 0.00, 0, 1),
(8, 'M', 2, '9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 0.00, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_build`
--

CREATE TABLE `sc_shop_product_build` (
  `build_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_build`
--

INSERT INTO `sc_shop_product_build` (`build_id`, `product_id`, `quantity`) VALUES
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', '9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', 1),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', '9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', 2),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', '9bc5b56b-0ae2-4714-b15e-196229353096', 1),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', '9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', 2),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', '9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', 2),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', '9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', 1),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', '9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', 2),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', '9bc5b56b-0ae2-4714-b15e-196229353096', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_category`
--

CREATE TABLE `sc_shop_product_category` (
  `product_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_category`
--

INSERT INTO `sc_shop_product_category` (`product_id`, `category_id`) VALUES
('9bc5b56b-0a76-415f-a176-c61fed016165', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd'),
('9bc5b56b-0a76-415f-a176-c61fed016165', '9bc5b56a-ff62-471b-9db3-6428304228ba'),
('9bc5b56b-0a76-415f-a176-c61fed016165', '9bc5b56a-ff74-48ee-9101-340cc62de545'),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', '9bc5b56a-ff74-48ee-9101-340cc62de545'),
('9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', '9bc5b56a-ff8c-4378-91b2-03da253fdc8f'),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', '9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5'),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', '9bc5b56a-ff62-471b-9db3-6428304228ba'),
('9bc5b56b-0ac3-4c9d-bf73-2c320704a89b', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd'),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0ad3-4473-90ac-e05fefc19cae', '9bc5b56a-ff62-471b-9db3-6428304228ba'),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', '9bc5b56a-ff5c-483a-a3da-e0ec60d25685'),
('9bc5b56b-0ae2-4714-b15e-196229353096', '9bc5b56a-ff43-47f7-bee1-698c0a83c396'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd'),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', '9bc5b56a-ff43-47f7-bee1-698c0a83c396'),
('9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', '9bc5b56a-ff5c-483a-a3da-e0ec60d25685'),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', '9bc5b56a-ff99-4a56-93f4-073be7f41c85'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd'),
('9bc5b56b-0b0d-4d5f-b68f-c5d086951b6b', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0b13-451e-adec-cfd37ed0dc6b', '9bc5b56a-ff62-471b-9db3-6428304228ba'),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', '9bc5b56a-ffa5-4c95-88d8-65c20c640ea9'),
('9bc5b56b-0b1f-4c4f-ac89-8b9d76dd6cfe', '9bc5b56a-ff6e-4aa7-86d5-f7853c1805f5'),
('9bc5b56b-0b25-4073-8c63-a6007c0b03d9', '9bc5b56a-ff5c-483a-a3da-e0ec60d25685'),
('9bc5b56b-0b2b-4177-9868-b92a2498f083', '9bc5b56a-ffc9-4b51-b11d-e921bf85b60b'),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', '9bc5b56a-ff86-41d7-af29-373257f0b535'),
('9bc5b56b-0b38-4382-af29-93a6eaa561b3', '9bc5b56a-ff80-4764-b960-446c6198f4f4'),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', '9bc5b56a-ff80-4764-b960-446c6198f4f4'),
('9bc5b56b-0b44-4ea2-a967-110bad0fbff9', '9bc5b56a-ff74-48ee-9101-340cc62de545'),
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', '9bc5b56a-ff86-41d7-af29-373257f0b535'),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', '9bc5b56a-ff68-4116-a6a5-b5a5fb0f0b86'),
('9bc5b56b-0b56-4399-a866-6fbe88af8c5f', '9bc5b56a-ff86-41d7-af29-373257f0b535'),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', '9bc5b56a-ff9f-42fd-839f-a436e744b31a'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', '9bc5b56a-ff99-4a56-93f4-073be7f41c85'),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', '9bc5b56a-ff86-41d7-af29-373257f0b535'),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', '9bc5b56a-ff86-41d7-af29-373257f0b535'),
('9bc5bea5-58af-410d-a2bd-1c075bf6612b', '9bc5b56a-ff49-4773-abf1-6d7bdf39febd');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_description`
--

CREATE TABLE `sc_shop_product_description` (
  `product_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_description`
--

INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
('9bc5b56b-0a76-415f-a176-c61fed016165', 'en', 'Cu Do Ha Tinh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a76-415f-a176-c61fed016165', 'vi', 'Cu Do Ha Tinh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', 'en', 'Man Hau Lang Son', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', 'vi', 'Man Hau Lang Son', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', 'en', 'Banh Gai Tu Tru', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', 'vi', 'Banh Gai Tu Tru', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', 'en', 'Bun Bo Hue', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', 'vi', 'Bun Bo Hue', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', 'en', 'Banh Trang Tron', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', 'vi', 'Banh Trang Tron', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', 'en', 'Muoi Tay Ninh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', 'vi', 'Muoi Tay Ninh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', 'en', 'Keo Doi Lac', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', 'vi', 'Keo Doi Lac', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', 'en', 'Sau Rieng Dak Lak', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', 'vi', 'Sau Rieng Dak Lak', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ac3-4c9d-bf73-2c320704a89b', 'en', 'Don Quang Ngai', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ac3-4c9d-bf73-2c320704a89b', 'vi', 'Don Quang Ngai', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', 'en', 'Banh Khot Vung Tau', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', 'vi', 'Banh Khot Vung Tau', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ad3-4473-90ac-e05fefc19cae', 'en', 'Chao Luon Xu Nghe', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ad3-4473-90ac-e05fefc19cae', 'vi', 'Chao Luon Xu Nghe', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 'en', 'Banh Dau Xanh Hung Yen', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 'vi', 'Banh Dau Xanh Hung Yen', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ae2-4714-b15e-196229353096', 'en', 'Hu Tieu Nam Vang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ae2-4714-b15e-196229353096', 'vi', 'Hu Tieu Nam Vang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', 'en', 'Canh Chua Ca Loc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', 'vi', 'Canh Chua Ca Loc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', 'en', 'Chom Chom Nhan', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', 'vi', 'Chom Chom Nhan', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', 'en', 'Cam Vinh Loai I', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', 'vi', 'Cam Vinh Loai I', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', 'en', 'Mi Quang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', 'vi', 'Mi Quang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', 'en', 'Chao Long Tiet Canh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', 'vi', 'Chao Long Tiet Canh', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', 'en', 'Cam Sanh Mong Nuoc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', 'vi', 'Cam Sanh Mong Nuoc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b0d-4d5f-b68f-c5d086951b6b', 'en', 'Xoai Cat Hoa Loc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b0d-4d5f-b68f-c5d086951b6b', 'vi', 'Xoai Cat Hoa Loc', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b13-451e-adec-cfd37ed0dc6b', 'en', 'Com Niu Sai Gon', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b13-451e-adec-cfd37ed0dc6b', 'vi', 'Com Niu Sai Gon', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', 'en', 'Com Tam An Giang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', 'vi', 'Com Tam An Giang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b1f-4c4f-ac89-8b9d76dd6cfe', 'en', 'Vai Thieu Luc Ngan', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b1f-4c4f-ac89-8b9d76dd6cfe', 'vi', 'Vai Thieu Luc Ngan', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b25-4073-8c63-a6007c0b03d9', 'en', 'Nem Chua Thanh Hoa', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b25-4073-8c63-a6007c0b03d9', 'vi', 'Nem Chua Thanh Hoa', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b2b-4177-9868-b92a2498f083', 'en', 'Cha Ca Nha Trang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b2b-4177-9868-b92a2498f083', 'vi', 'Cha Ca Nha Trang', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', 'en', 'Ho Tieu', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', 'vi', 'Ho Tieu', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b38-4382-af29-93a6eaa561b3', 'en', 'Nhan Long Hung Yen', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b38-4382-af29-93a6eaa561b3', 'vi', 'Nhan Long Hung Yen', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', 'en', 'Ca Phe Buon Me', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', 'vi', 'Ca Phe Buon Me', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b44-4ea2-a967-110bad0fbff9', 'en', 'Keo Dua Ben Tre', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b44-4ea2-a967-110bad0fbff9', 'vi', 'Keo Dua Ben Tre', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', 'en', 'Mang Cut', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `sc_shop_product_description` (`product_id`, `lang`, `name`, `keyword`, `description`, `content`) VALUES
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', 'vi', 'Mang Cut', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', 'en', 'Non La Vietnam', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', 'vi', 'Non La Vietnam', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b56-4399-a866-6fbe88af8c5f', 'en', 'Thit Trau Gac Bep', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b56-4399-a866-6fbe88af8c5f', 'vi', 'Thit Trau Gac Bep', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', 'en', 'Pho Ha Noi', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', 'vi', 'Pho Ha Noi', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', 'en', 'Banh My Cha Ca', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', 'vi', 'Banh My Cha Ca', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', 'en', 'Ao Dai Vietnam', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', 'vi', 'Ao Dai Vietnam', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 'en', 'Thanh Long Ruot Do', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 'vi', 'Thanh Long Ruot Do', NULL, '- 27-inch (diagonal) Retina 5K display\n        - 3.1GHz 6-core 10th-generation Intel Core i5\n        - AMD Radeon Pro 5300 graphics', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/data/product/product-10.png\" style=\"width: 150px; float: right; margin: 10px;\" /></p>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>'),
('9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'en', 'Handcrafted Ceramic Vase', 'fruits', 'Add a touch of elegance to your home with this handcrafted ceramic vase.', 'Additional information about the product');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_download`
--

CREATE TABLE `sc_shop_product_download` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_group`
--

CREATE TABLE `sc_shop_product_group` (
  `group_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_group`
--

INSERT INTO `sc_shop_product_group` (`group_id`, `product_id`) VALUES
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', '9bc5b56b-0a84-4a70-ae31-208cb3d365df'),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', '9bc5b56b-0aa4-4efb-9159-167755f0a22c'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', '9bc5b56b-0a84-4a70-ae31-208cb3d365df'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', '9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', '9bc5b56b-0ad3-4473-90ac-e05fefc19cae'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', '9bc5b56b-0b13-451e-adec-cfd37ed0dc6b'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', '9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', '9bc5b56b-0aac-42a1-bc72-c23a9776bd4a');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_image`
--

CREATE TABLE `sc_shop_product_image` (
  `id` char(36) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_image`
--

INSERT INTO `sc_shop_product_image` (`id`, `image`, `product_id`) VALUES
('9bc5b56b-0b76-4c13-8b45-3ddc010a51d9', '/data/product/product-2.png', '9bc5b56b-0a76-415f-a176-c61fed016165'),
('9bc5b56b-0b7c-4cc9-8a33-70999d6c437c', '/data/product/product-11.png', '9bc5b56b-0a76-415f-a176-c61fed016165'),
('9bc5b56b-0b82-45bc-8773-59744581ec6a', '/data/product/product-8.png', '9bc5b56b-0ad3-4473-90ac-e05fefc19cae'),
('9bc5b56b-0b88-42ec-86ae-cae8dbed4f9b', '/data/product/product-6.png', '9bc5b56b-0a84-4a70-ae31-208cb3d365df'),
('9bc5b56b-0b8f-465b-8ab0-974775f8e441', '/data/product/product-13.png', '9bc5b56b-0ad3-4473-90ac-e05fefc19cae'),
('9bc5b56b-0b95-4692-8e6e-7ef901e4fc15', '/data/product/product-12.png', '9bc5b56b-0a9d-46fa-8450-880f7d25cd0c'),
('9bc5b56b-0b9b-4d92-adbb-db5ee1e10262', '/data/product/product-17.png', '9bc5b56b-0a9d-46fa-8450-880f7d25cd0c'),
('9bc5b56b-0ba1-49d4-95db-d9e45c8a6502', '/data/product/product-11.png', '9bc5b56b-0a84-4a70-ae31-208cb3d365df'),
('9bc5b56b-0ba7-4dbe-b1ef-20f510045b05', '/data/product/product-5.png', '9bc5b56b-0a84-4a70-ae31-208cb3d365df'),
('9bc5b56b-0baf-4d78-9307-4032e8f8cd16', '/data/product/product-12.png', '9bc5b56b-0ac3-4c9d-bf73-2c320704a89b'),
('9bc5b56b-0bb6-47b0-b653-aafa5fa13dab', '/data/product/product-15.png', '9bc5b56b-0ab6-492d-84d9-b4743d997282'),
('9bc5b56b-0bbc-4123-85c9-487083887471', '/data/product/product-19.png', '9bc5b56b-0aac-42a1-bc72-c23a9776bd4a'),
('9bc5b56b-0bc2-4a66-98e2-89744dc65ea6', '/data/product/product-12.png', '9bc5b56b-0aac-42a1-bc72-c23a9776bd4a'),
('9bc5b56b-0bc9-4e0f-9e03-ada8ec1bdb5d', '/data/product/product-1.png', '9bc5b56b-0a9d-46fa-8450-880f7d25cd0c'),
('9bc5b56b-0bcf-473b-ba5b-a8c515f7970b', '/data/product/product-12.png', '9bc5b56b-0a95-4164-91d4-190df6dfeed8'),
('9bc5b56b-0bd5-45d7-83de-445363e56c6d', '/data/product/product-7.png', '9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79'),
('9bc5b56b-0bdb-49a9-8bbc-c442822bd856', '/data/product/product-12.png', '9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79'),
('9bc5b56b-0be1-41c2-a731-528359a2a243', '/data/product/product-16.png', '9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff'),
('9bc5b56b-0be7-44d9-a19f-cb839bf3a4d8', '/data/product/product-6.png', '9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff'),
('9bc5b56b-0bee-423d-8d03-30f4e589bf56', '/data/product/product-12.png', '9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff'),
('9bc5b56b-0bf4-45bb-a39d-7b50f19db09d', '/data/product/product-18.png', '9bc5b56b-0b19-4c7e-9265-a71127f86141'),
('9bc5b56b-0bfa-4bf7-bc26-ff9ec795c739', '/data/product/product-19.png', '9bc5b56b-0b19-4c7e-9265-a71127f86141'),
('9bc5b56b-0c00-45e2-8484-a5371661953d', '/data/product/product-24.png', '9bc5b56b-0b25-4073-8c63-a6007c0b03d9'),
('9bc5b56b-0c06-4ba6-a2ff-f9f656b89971', '/data/product/product-22.png', '9bc5b56b-0b25-4073-8c63-a6007c0b03d9');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_promotion`
--

CREATE TABLE `sc_shop_product_promotion` (
  `product_id` char(36) NOT NULL,
  `price_promotion` decimal(15,2) NOT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `status_promotion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_promotion`
--

INSERT INTO `sc_shop_product_promotion` (`product_id`, `price_promotion`, `date_start`, `date_end`, `status_promotion`, `created_at`, `updated_at`) VALUES
('9bc5b56b-0a76-415f-a176-c61fed016165', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', 30.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', 40.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', 30.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', 60.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', 60.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', 60.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', 50.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', 60.00, NULL, NULL, 1, NULL, NULL),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', 50.00, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_property`
--

CREATE TABLE `sc_shop_product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_property`
--

INSERT INTO `sc_shop_product_property` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'physical', 'Product physical', NULL, NULL),
(2, 'download', 'Product download', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_product_store`
--

CREATE TABLE `sc_shop_product_store` (
  `product_id` char(36) NOT NULL,
  `store_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_product_store`
--

INSERT INTO `sc_shop_product_store` (`product_id`, `store_id`) VALUES
('9bc5b56b-0a76-415f-a176-c61fed016165', '1'),
('9bc5b56b-0a84-4a70-ae31-208cb3d365df', '1'),
('9bc5b56b-0a8c-4e0f-be27-8b107b76eb6d', '1'),
('9bc5b56b-0a95-4164-91d4-190df6dfeed8', '1'),
('9bc5b56b-0a9d-46fa-8450-880f7d25cd0c', '1'),
('9bc5b56b-0aa4-4efb-9159-167755f0a22c', '1'),
('9bc5b56b-0aac-42a1-bc72-c23a9776bd4a', '1'),
('9bc5b56b-0ab6-492d-84d9-b4743d997282', '1'),
('9bc5b56b-0ac3-4c9d-bf73-2c320704a89b', '1'),
('9bc5b56b-0acb-44d5-9f62-45f394e83541', '1'),
('9bc5b56b-0ad3-4473-90ac-e05fefc19cae', '1'),
('9bc5b56b-0ada-4ee7-b5d3-2faec1550ebc', '1'),
('9bc5b56b-0ae2-4714-b15e-196229353096', '1'),
('9bc5b56b-0ae8-42e0-9f97-83bb6ac01052', '1'),
('9bc5b56b-0aee-4d6d-9ee7-a28791f5ab79', '1'),
('9bc5b56b-0af4-4292-b5ef-2f37a46ad35a', '1'),
('9bc5b56b-0afa-4bc0-b0f2-660c45ad4dff', '1'),
('9bc5b56b-0b00-4b35-b7b3-daf3918f21bc', '1'),
('9bc5b56b-0b07-459d-9f63-5330e9f4f9f5', '1'),
('9bc5b56b-0b0d-4d5f-b68f-c5d086951b6b', '1'),
('9bc5b56b-0b13-451e-adec-cfd37ed0dc6b', '1'),
('9bc5b56b-0b19-4c7e-9265-a71127f86141', '1'),
('9bc5b56b-0b1f-4c4f-ac89-8b9d76dd6cfe', '1'),
('9bc5b56b-0b25-4073-8c63-a6007c0b03d9', '1'),
('9bc5b56b-0b2b-4177-9868-b92a2498f083', '1'),
('9bc5b56b-0b31-489b-a7d3-3b7a57dd8fab', '1'),
('9bc5b56b-0b38-4382-af29-93a6eaa561b3', '1'),
('9bc5b56b-0b3e-4d14-8af2-5660ec21315a', '1'),
('9bc5b56b-0b44-4ea2-a967-110bad0fbff9', '1'),
('9bc5b56b-0b4a-4138-bef0-a840bfeec971', '1'),
('9bc5b56b-0b50-4131-a602-7f8f75dfd3be', '1'),
('9bc5b56b-0b56-4399-a866-6fbe88af8c5f', '1'),
('9bc5b56b-0b5c-471a-8566-dbbd39d2bbd6', '1'),
('9bc5b56b-0b63-423e-ae8a-b19f30e14651', '1'),
('9bc5b56b-0b69-4c30-b746-0e906d8d65d4', '1'),
('9bc5b56b-0b6f-4f15-b790-82e5f87678a1', '1'),
('9bc5bea5-58af-410d-a2bd-1c075bf6612b', 'S-GQ0sY-vnQbk');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_sessions`
--

CREATE TABLE `sc_shop_sessions` (
  `id` varchar(100) NOT NULL,
  `customer_id` char(36) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_standard`
--

CREATE TABLE `sc_shop_shipping_standard` (
  `id` int(10) UNSIGNED NOT NULL,
  `fee` decimal(15,2) NOT NULL,
  `shipping_free` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_standard`
--

INSERT INTO `sc_shop_shipping_standard` (`id`, `fee`, `shipping_free`, `created_at`, `updated_at`) VALUES
(1, 20.00, 10000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shipping_status`
--

CREATE TABLE `sc_shop_shipping_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_shipping_status`
--

INSERT INTO `sc_shop_shipping_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Not sent', NULL, NULL),
(2, 'Sending', NULL, NULL),
(3, 'Shipping done', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_shoppingcart`
--

CREATE TABLE `sc_shop_shoppingcart` (
  `identifier` varchar(100) NOT NULL,
  `instance` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` char(36) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_store_block`
--

CREATE TABLE `sc_shop_store_block` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `page` varchar(200) DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `template` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_store_block`
--

INSERT INTO `sc_shop_store_block` (`id`, `name`, `position`, `page`, `type`, `text`, `status`, `sort`, `store_id`, `template`, `created_at`, `updated_at`) VALUES
('9bc5b568-73d3-43c4-b12c-ed1e102dde9e', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, '1', 's-cart-light', NULL, NULL),
('9bc5b568-76c1-4ce9-b982-1c825095edeb', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, '1', 's-cart-light', NULL, NULL),
('9bc5b568-76f2-409d-bab0-964fa88a293f', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, '1', 's-cart-light', NULL, NULL),
('9bc5b568-771f-4c2a-a1fe-16bdcdcd4ae3', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, '1', 's-cart-light', NULL, NULL),
('9bc5b568-774a-4551-9955-277be63156cf', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, '1', 's-cart-light', NULL, NULL),
('9bc5b568-7775-44e9-ad3b-7aa96a43a872', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, '1', 's-cart-light', NULL, NULL),
('9bc5b568-77a7-4390-b5b6-3a84276c484b', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, '1', 's-cart-light', NULL, NULL),
('9bc5b568-77d2-4c72-8322-18080d558406', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, '1', 's-cart-light', NULL, NULL),
('9bc5b835-65e0-402d-9cf3-fa106dffaa21', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-663d-4859-96fa-6d553c3a3687', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-66a4-4d6f-b907-c0ebcab4f81d', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-672d-422d-90d2-1aa0920e8604', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-677f-4dcb-9fe1-94f3b8ccd983', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-67ee-4c63-bdd1-003786155b54', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-6841-46aa-ae7c-c5aa2dd16125', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-6895-4a1b-a713-579830e8585c', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-7039-4c24-9f91-9861f28e77e0', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-7073-431d-8572-d1673420f9fe', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-70a3-464c-820b-a6e6b18c4524', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-70dc-4835-90d9-bb18f5dec7d2', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-710d-4e9d-8d66-f801c4cf06b8', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-713c-4a0e-ad83-27a5c4ddf915', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-716b-473e-b386-c6b148968522', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b835-719a-413d-ade5-453f2435efb7', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('9bc5b8dd-2a03-4356-803f-e9a170c29248', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2a45-4a72-ad2c-a6fb98d1b460', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2a7b-48bd-a4f7-380329b8e953', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2abd-4e63-8a83-5e8c17899d9b', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2b1c-4267-81e3-54e275f71291', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2b81-41d4-8e5f-551a5b3bf470', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2c58-4758-8c27-1cbc35ec5d57', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-2d1b-49dc-a4e8-46a6ee78dd2b', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-3432-4d78-b2e6-4f850c3e9ce7', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-346b-409a-8eb6-3d27f7383abd', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-34ac-4822-b690-eab0906874cb', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-34da-4569-a3ee-39134a9353f4', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-3507-4302-b2be-f0985a933ea1', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-3532-409d-8f2c-9e89ba518d62', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-3561-4a2b-a64d-677b11e120e8', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b8dd-35a9-4b95-a7a5-7baaf709a7d7', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('9bc5b982-44f3-440e-9f65-369c91d6010b', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4554-433e-8d04-bb113d3fbe56', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4591-4155-9a48-79a303b7ffbc', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-45c2-4eb9-b7aa-52943cedfa51', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-45f3-4c1e-945f-d095b2ffc672', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4623-4bb6-a767-ac1bbf28d67e', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4660-453f-8a04-5255488164b2', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4694-4603-a718-dd8f64a7974a', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4e0f-4926-843a-da121559851b', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4e42-4a1c-80e4-1b46db43cb03', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4e6f-4987-9084-74c7fa6abf0e', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4e9b-474e-b259-32b324747547', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4ec7-45af-b166-e8b18e466577', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4ef3-4ad8-9218-36c3a0ba79c3', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4f1e-4723-b7c9-b4cc6444da5c', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5b982-4f4a-411c-bef5-4052d1283e72', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('9bc5ba33-3e5a-4923-ba52-887522b55e7e', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3e98-42fe-9244-88c177ba9eed', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3ecc-499f-947a-58d1203626a9', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3f1b-4233-a574-9eb219b25ba7', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3f82-4ec1-bc54-dec08173b286', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3fb5-4b49-a313-d4f269038a57', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-3fe3-4497-9fc4-98ea8cfa021d', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-4010-43e8-b1ea-0e513a85a390', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-46b9-4bd9-ab13-b087d547c852', 'Banner top (s-cart-light)', 'banner_top', 'home', 'view', 'banner_image', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-4716-47bc-baba-47877da1ca21', 'New product (s-cart-light)', 'top', 'home', 'view', 'product_new', 1, 20, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-475e-47ec-a424-8e91cc525d23', 'Top news (s-cart-light)', 'bottom', 'home', 'view', 'top_news', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-47b0-4a06-bd09-da3b008792cf', 'Category store left (s-cart-light)', 'left', 'shop_home,vendor_home,vendor_product_list', 'view', 'category_store_left', 1, 10, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-47e1-4f14-97d9-1addae548fd3', 'Category left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'category_left', 1, 20, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-480e-4255-9553-493f8b1c8e54', 'Brand left (s-cart-light)', 'left', 'shop_product_list,shop_home', 'view', 'brand_left', 1, 30, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-483b-4b57-8458-3d17e85d4a6c', 'Product last view (s-cart-light)', 'left', '*', 'view', 'product_lastview_left', 1, 40, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('9bc5ba33-4867-4464-9466-54ef29646e5a', 'Product special (s-cart-light)', 'left', '*', 'view', 'product_special_left', 1, 30, 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_store_css`
--

CREATE TABLE `sc_shop_store_css` (
  `css` mediumtext NOT NULL,
  `store_id` char(36) NOT NULL,
  `template` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_store_css`
--

INSERT INTO `sc_shop_store_css` (`css`, `store_id`, `template`, `created_at`, `updated_at`) VALUES
('####CSS HERE ######', '1', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-xSdG9-0UgUZ', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-GQ0sY-vnQbk', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-YQmkQ-wMgUn', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL),
('####CSS HERE ######', 'S-5ROFr-vQm44', 's-cart-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_subscribe`
--

CREATE TABLE `sc_shop_subscribe` (
  `id` char(36) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_supplier`
--

CREATE TABLE `sc_shop_supplier` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(120) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `store_id` char(36) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_supplier`
--

INSERT INTO `sc_shop_supplier` (`id`, `name`, `alias`, `email`, `phone`, `image`, `address`, `url`, `status`, `store_id`, `sort`, `created_at`, `updated_at`) VALUES
('9bc5b56b-055a-407d-abbc-e5c9cac8cfb5', 'Supplier ABC', 'supplier-abc', 'abc@gmail.com', '0123456789', '/data/supplier/supplier.jpg', NULL, NULL, 1, '1', 0, NULL, NULL),
('9bc5b56b-0567-4578-8138-d179b21b22ef', 'Supplier XYZ', 'supplier-xyz', 'xyz@gmail.com', '0987654321', '/data/supplier/supplier.jpg', NULL, NULL, 1, '1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_tax`
--

CREATE TABLE `sc_shop_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_tax`
--

INSERT INTO `sc_shop_tax` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Tax default (10%)', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop_weight`
--

CREATE TABLE `sc_shop_weight` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_shop_weight`
--

INSERT INTO `sc_shop_weight` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'g', 'Gram', NULL, NULL),
(2, 'kg', 'Kilogram', NULL, NULL),
(3, 'lb', 'Pound ', NULL, NULL),
(4, 'oz', 'Ounce ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category`
--

CREATE TABLE `vendor_category` (
  `id` char(36) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `alias` varchar(120) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `store_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_category`
--

INSERT INTO `vendor_category` (`id`, `image`, `alias`, `status`, `sort`, `store_id`, `created_at`, `updated_at`) VALUES
('9bc5bbe0-0e6e-4c98-a2f5-fef2144aab68', '/data/category_store/S-GQ0sY-vnQbk/images (1).jpeg', 'electronics', 1, 1, 'S-GQ0sY-vnQbk', '2024-04-10 07:53:48', '2024-04-10 07:53:48'),
('9bc5bc6a-e208-400e-bb96-64a1e2e8397c', '/data/category_store/S-GQ0sY-vnQbk/images (2).jpeg', 'fashion', 1, 1, 'S-GQ0sY-vnQbk', '2024-04-10 07:55:19', '2024-04-10 07:55:19'),
('9bc5bcfa-1c8b-424f-8e23-5f667a27a581', '/data/category_store/S-GQ0sY-vnQbk/images (3).jpeg', 'home-garden', 1, 1, 'S-GQ0sY-vnQbk', '2024-04-10 07:56:53', '2024-04-10 07:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category_description`
--

CREATE TABLE `vendor_category_description` (
  `vendor_category_id` char(36) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_category_description`
--

INSERT INTO `vendor_category_description` (`vendor_category_id`, `lang`, `title`, `keyword`, `description`) VALUES
('9bc5bbe0-0e6e-4c98-a2f5-fef2144aab68', 'en', 'Electronics', 'electronics, gadgets, technology', 'Explore a wide range of electronic products, from smartphones to laptops.'),
('9bc5bc6a-e208-400e-bb96-64a1e2e8397c', 'en', 'Fashion', 'fashion, clothing, apparel', 'Discover the latest trends in fashion for men, women, and kids.'),
('9bc5bcfa-1c8b-424f-8e23-5f667a27a581', 'en', ': Home &amp; Garden', 'home, garden, decor', 'Enhance your living spaces with our collection of home and garden essentials.');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_money_process`
--

CREATE TABLE `vendor_money_process` (
  `id` char(36) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `store_id` char(36) NOT NULL,
  `total_sum` int(11) NOT NULL DEFAULT 0,
  `order_count` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `commission_rate` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(255) NOT NULL,
  `date_process` date NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'processing' COMMENT 'processing,pending,canceled,done',
  `date_pay` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_password_resets`
--

CREATE TABLE `vendor_password_resets` (
  `email` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_product_category`
--

CREATE TABLE `vendor_product_category` (
  `vendor_category_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_product_category`
--

INSERT INTO `vendor_product_category` (`vendor_category_id`, `product_id`) VALUES
('9bc5bc6a-e208-400e-bb96-64a1e2e8397c', '9bc5bea5-58af-410d-a2bd-1c075bf6612b');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_user`
--

CREATE TABLE `vendor_user` (
  `id` char(36) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `address3` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `country` varchar(10) DEFAULT 'VN',
  `phone` varchar(20) DEFAULT NULL,
  `store_id` char(36) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_user`
--

INSERT INTO `vendor_user` (`id`, `first_name`, `last_name`, `email`, `password`, `postcode`, `address1`, `address2`, `address3`, `avatar`, `country`, `phone`, `store_id`, `remember_token`, `status`, `email_verified_at`, `created_at`, `updated_at`) VALUES
('9bc5ba82-c134-4eb7-8e36-9ebe96f6dae0', 'Antony', 'Torotich', 'antonytorotich@gmail.com', '$2y$12$/crNkFijvXV3.xxfsxuCC.zVNZHFiw.yzMP1BrjUeATzYS28bSFbO', '15-20328', 'Kitengela', 'Kajiado', NULL, NULL, 'KE', '0707546698', 'S-GQ0sY-vnQbk', NULL, 1, NULL, '2024-04-10 07:49:59', '2024-04-10 07:49:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_config_key_store_id_unique` (`key`,`store_id`),
  ADD KEY `sc_admin_config_code_index` (`code`);

--
-- Indexes for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_log_user_id_index` (`user_id`);

--
-- Indexes for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_menu_key_unique` (`key`);

--
-- Indexes for table `sc_admin_notice`
--
ALTER TABLE `sc_admin_notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_admin_notice_type_index` (`type`),
  ADD KEY `sc_admin_notice_type_id_index` (`type_id`),
  ADD KEY `sc_admin_notice_status_index` (`status`),
  ADD KEY `sc_admin_notice_admin_id_index` (`admin_id`);

--
-- Indexes for table `sc_admin_password_resets`
--
ALTER TABLE `sc_admin_password_resets`
  ADD KEY `sc_admin_password_resets_email_index` (`email`);

--
-- Indexes for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_permission_name_unique` (`name`),
  ADD UNIQUE KEY `sc_admin_permission_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_role_slug_unique` (`slug`);

--
-- Indexes for table `sc_admin_role_permission`
--
ALTER TABLE `sc_admin_role_permission`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `sc_admin_role_permission_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `sc_admin_role_user`
--
ALTER TABLE `sc_admin_role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `sc_admin_role_user_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `sc_admin_store`
--
ALTER TABLE `sc_admin_store`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_store_code_unique` (`code`),
  ADD KEY `sc_admin_store_domain_index` (`domain`),
  ADD KEY `sc_admin_store_partner_index` (`partner`);

--
-- Indexes for table `sc_admin_store_description`
--
ALTER TABLE `sc_admin_store_description`
  ADD PRIMARY KEY (`store_id`,`lang`),
  ADD KEY `sc_admin_store_description_lang_index` (`lang`);

--
-- Indexes for table `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_template_key_unique` (`key`);

--
-- Indexes for table `sc_admin_user`
--
ALTER TABLE `sc_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_admin_user_username_unique` (`username`),
  ADD UNIQUE KEY `sc_admin_user_email_unique` (`email`);

--
-- Indexes for table `sc_admin_user_permission`
--
ALTER TABLE `sc_admin_user_permission`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `sc_admin_user_permission_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_api_connection_apiconnection_unique` (`apiconnection`);

--
-- Indexes for table `sc_languages`
--
ALTER TABLE `sc_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_languages_code_location_unique` (`code`,`location`),
  ADD KEY `sc_languages_code_index` (`code`),
  ADD KEY `sc_languages_position_index` (`position`),
  ADD KEY `sc_languages_location_index` (`location`);

--
-- Indexes for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_banner`
--
ALTER TABLE `sc_shop_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_banner_type_index` (`type`);

--
-- Indexes for table `sc_shop_banner_store`
--
ALTER TABLE `sc_shop_banner_store`
  ADD PRIMARY KEY (`banner_id`,`store_id`);

--
-- Indexes for table `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_banner_type_code_unique` (`code`);

--
-- Indexes for table `sc_shop_brand`
--
ALTER TABLE `sc_shop_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_brand_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_brand_store`
--
ALTER TABLE `sc_shop_brand_store`
  ADD PRIMARY KEY (`brand_id`,`store_id`);

--
-- Indexes for table `sc_shop_category`
--
ALTER TABLE `sc_shop_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_category_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_category_description`
--
ALTER TABLE `sc_shop_category_description`
  ADD UNIQUE KEY `sc_shop_category_description_category_id_lang_unique` (`category_id`,`lang`),
  ADD KEY `sc_shop_category_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_category_store`
--
ALTER TABLE `sc_shop_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_country_code_unique` (`code`);

--
-- Indexes for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_currency_code_unique` (`code`);

--
-- Indexes for table `sc_shop_customer`
--
ALTER TABLE `sc_shop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_customer_email_provider_provider_id_unique` (`email`,`provider`,`provider_id`),
  ADD KEY `sc_shop_customer_address_id_index` (`address_id`),
  ADD KEY `sc_shop_customer_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_customer_address`
--
ALTER TABLE `sc_shop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_customer_address_customer_id_index` (`customer_id`);

--
-- Indexes for table `sc_shop_custom_field`
--
ALTER TABLE `sc_shop_custom_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_type_index` (`type`),
  ADD KEY `sc_shop_custom_field_code_index` (`code`);

--
-- Indexes for table `sc_shop_custom_field_detail`
--
ALTER TABLE `sc_shop_custom_field_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_custom_field_detail_custom_field_id_index` (`custom_field_id`),
  ADD KEY `sc_shop_custom_field_detail_rel_id_index` (`rel_id`);

--
-- Indexes for table `sc_shop_email_template`
--
ALTER TABLE `sc_shop_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_email_template_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_language_code_unique` (`code`);

--
-- Indexes for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_page_key_unique` (`key`);

--
-- Indexes for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_layout_position_key_unique` (`key`);

--
-- Indexes for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_length_name_unique` (`name`);

--
-- Indexes for table `sc_shop_link`
--
ALTER TABLE `sc_shop_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_link_group`
--
ALTER TABLE `sc_shop_link_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_link_group_code_unique` (`code`);

--
-- Indexes for table `sc_shop_link_store`
--
ALTER TABLE `sc_shop_link_store`
  ADD PRIMARY KEY (`link_id`,`store_id`);

--
-- Indexes for table `sc_shop_news`
--
ALTER TABLE `sc_shop_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_news_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_news_description`
--
ALTER TABLE `sc_shop_news_description`
  ADD UNIQUE KEY `sc_shop_news_description_news_id_lang_unique` (`news_id`,`lang`);

--
-- Indexes for table `sc_shop_news_store`
--
ALTER TABLE `sc_shop_news_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indexes for table `sc_shop_order`
--
ALTER TABLE `sc_shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_customer_id_index` (`customer_id`),
  ADD KEY `sc_shop_order_device_type_index` (`device_type`),
  ADD KEY `sc_shop_order_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_order_detail`
--
ALTER TABLE `sc_shop_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_history`
--
ALTER TABLE `sc_shop_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_order_total`
--
ALTER TABLE `sc_shop_order_total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_order_total_order_id_index` (`order_id`);

--
-- Indexes for table `sc_shop_page`
--
ALTER TABLE `sc_shop_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_page_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_page_description`
--
ALTER TABLE `sc_shop_page_description`
  ADD UNIQUE KEY `sc_shop_page_description_page_id_lang_unique` (`page_id`,`lang`),
  ADD KEY `sc_shop_page_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_page_store`
--
ALTER TABLE `sc_shop_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`);

--
-- Indexes for table `sc_shop_password_resets`
--
ALTER TABLE `sc_shop_password_resets`
  ADD KEY `sc_shop_password_resets_email_index` (`email`);

--
-- Indexes for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_product`
--
ALTER TABLE `sc_shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_sku_index` (`sku`),
  ADD KEY `sc_shop_product_brand_id_index` (`brand_id`),
  ADD KEY `sc_shop_product_supplier_id_index` (`supplier_id`),
  ADD KEY `sc_shop_product_kind_index` (`kind`),
  ADD KEY `sc_shop_product_property_index` (`property`),
  ADD KEY `sc_shop_product_tax_id_index` (`tax_id`),
  ADD KEY `sc_shop_product_status_index` (`status`),
  ADD KEY `sc_shop_product_approve_index` (`approve`),
  ADD KEY `sc_shop_product_alias_index` (`alias`);

--
-- Indexes for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_attribute_product_id_attribute_group_id_index` (`product_id`,`attribute_group_id`);

--
-- Indexes for table `sc_shop_product_build`
--
ALTER TABLE `sc_shop_product_build`
  ADD PRIMARY KEY (`build_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_category`
--
ALTER TABLE `sc_shop_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `sc_shop_product_description`
--
ALTER TABLE `sc_shop_product_description`
  ADD UNIQUE KEY `sc_shop_product_description_product_id_lang_unique` (`product_id`,`lang`),
  ADD KEY `sc_shop_product_description_lang_index` (`lang`);

--
-- Indexes for table `sc_shop_product_download`
--
ALTER TABLE `sc_shop_product_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_product_group`
--
ALTER TABLE `sc_shop_product_group`
  ADD PRIMARY KEY (`group_id`,`product_id`);

--
-- Indexes for table `sc_shop_product_image`
--
ALTER TABLE `sc_shop_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_product_image_product_id_index` (`product_id`);

--
-- Indexes for table `sc_shop_product_promotion`
--
ALTER TABLE `sc_shop_product_promotion`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_product_property_code_unique` (`code`);

--
-- Indexes for table `sc_shop_product_store`
--
ALTER TABLE `sc_shop_product_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `sc_shop_sessions`
--
ALTER TABLE `sc_shop_sessions`
  ADD UNIQUE KEY `sc_shop_sessions_id_unique` (`id`);

--
-- Indexes for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_shoppingcart`
--
ALTER TABLE `sc_shop_shoppingcart`
  ADD KEY `sc_shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`),
  ADD KEY `sc_shop_shoppingcart_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_store_block`
--
ALTER TABLE `sc_shop_store_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_store_block_store_id_index` (`store_id`),
  ADD KEY `sc_shop_store_block_template_index` (`template`);

--
-- Indexes for table `sc_shop_subscribe`
--
ALTER TABLE `sc_shop_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_subscribe_email_index` (`email`),
  ADD KEY `sc_shop_subscribe_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_supplier`
--
ALTER TABLE `sc_shop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_shop_supplier_alias_index` (`alias`),
  ADD KEY `sc_shop_supplier_store_id_index` (`store_id`);

--
-- Indexes for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sc_shop_weight_name_unique` (`name`);

--
-- Indexes for table `vendor_category`
--
ALTER TABLE `vendor_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_category_alias_index` (`alias`),
  ADD KEY `vendor_category_store_id_index` (`store_id`);

--
-- Indexes for table `vendor_category_description`
--
ALTER TABLE `vendor_category_description`
  ADD UNIQUE KEY `vendor_category_description_vendor_category_id_lang_unique` (`vendor_category_id`,`lang`),
  ADD KEY `vendor_category_description_lang_index` (`lang`);

--
-- Indexes for table `vendor_money_process`
--
ALTER TABLE `vendor_money_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_money_process_store_id_index` (`store_id`),
  ADD KEY `vendor_money_process_currency_index` (`currency`),
  ADD KEY `vendor_money_process_date_process_index` (`date_process`),
  ADD KEY `vendor_money_process_status_index` (`status`),
  ADD KEY `vendor_money_process_date_pay_index` (`date_pay`);

--
-- Indexes for table `vendor_password_resets`
--
ALTER TABLE `vendor_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`);

--
-- Indexes for table `vendor_product_category`
--
ALTER TABLE `vendor_product_category`
  ADD UNIQUE KEY `vendor_product_category_vendor_category_id_product_id_unique` (`vendor_category_id`,`product_id`);

--
-- Indexes for table `vendor_user`
--
ALTER TABLE `vendor_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_user_store_id_index` (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sc_admin_config`
--
ALTER TABLE `sc_admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `sc_admin_log`
--
ALTER TABLE `sc_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `sc_admin_menu`
--
ALTER TABLE `sc_admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sc_admin_notice`
--
ALTER TABLE `sc_admin_notice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_admin_permission`
--
ALTER TABLE `sc_admin_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sc_admin_role`
--
ALTER TABLE `sc_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_admin_template`
--
ALTER TABLE `sc_admin_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_api_connection`
--
ALTER TABLE `sc_api_connection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_languages`
--
ALTER TABLE `sc_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2908;

--
-- AUTO_INCREMENT for table `sc_shop_attribute_group`
--
ALTER TABLE `sc_shop_attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_banner_type`
--
ALTER TABLE `sc_shop_banner_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_shop_country`
--
ALTER TABLE `sc_shop_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `sc_shop_currency`
--
ALTER TABLE `sc_shop_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sc_shop_language`
--
ALTER TABLE `sc_shop_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_layout_page`
--
ALTER TABLE `sc_shop_layout_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sc_shop_layout_position`
--
ALTER TABLE `sc_shop_layout_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_length`
--
ALTER TABLE `sc_shop_length`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_link_group`
--
ALTER TABLE `sc_shop_link_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sc_shop_order_status`
--
ALTER TABLE `sc_shop_order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sc_shop_payment_status`
--
ALTER TABLE `sc_shop_payment_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sc_shop_product_attribute`
--
ALTER TABLE `sc_shop_product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sc_shop_product_property`
--
ALTER TABLE `sc_shop_product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_standard`
--
ALTER TABLE `sc_shop_shipping_standard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_shipping_status`
--
ALTER TABLE `sc_shop_shipping_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sc_shop_tax`
--
ALTER TABLE `sc_shop_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sc_shop_weight`
--
ALTER TABLE `sc_shop_weight`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
