-- phpMyAdmin SQL Dump
-- version 5.2.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 26, 2021 at 11:46 PM
-- Server version: 8.0.24
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amata`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-07-15 11:11:11', '2021-07-15 11:11:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://amata.test', 'yes'),
(2, 'home', 'http://amata.test', 'yes'),
(3, 'blogname', 'Amata', 'yes'),
(4, 'blogdescription', 'Solutions that make a difference.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lenka.zivkovic@forga.io', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:22:\"acf-pro-plugin/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'amata', 'yes'),
(41, 'stylesheet', 'amata', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '58', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1641899469', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:14:\"sidebar-area-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:14:\"sidebar-area-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:14:\"sidebar-area-3\";a:0:{}s:13:\"widget-area-1\";a:2:{i:0;s:13:\"media_image-2\";i:1;s:13:\"custom_html-2\";}s:13:\"widget-area-2\";a:1:{i:0;s:13:\"custom_html-3\";}s:13:\"widget-area-3\";a:1:{i:0;s:13:\"custom_html-4\";}s:13:\"widget-area-4\";a:0:{}s:13:\"widget-area-5\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:9:{i:1627337474;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1627341074;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1627378140;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627384272;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627384299;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627384305;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627550940;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1627643474;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:2:{i:2;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:196;s:6:\"height\";i:48;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:26;s:3:\"url\";s:70:\"http://amata.test/wp-content/uploads/2021/07/amata-logo-horizontal.png\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:357:\"<ul>\r\n		<li><i class=\"ri-phone-line\"></i> <span> <a href=\"tel:+111 222 333 444\">+111 222 333 444 </a> </span></li>\r\n		<li><i class=\"ri-mail-fill\"> </i> <span> <a href=\"mailto:office@amata.com\">office@amata.com</a></span></li>\r\n	<li><i class=\"ri-map-pin-2-fill\"> </i><span> <a href=\"https://goo.gl/maps/nrLuGJnuaJ367ecc7\">Address<br> </a> </span></li>\r\n</ul>\";}i:3;a:2:{s:5:\"title\";s:12:\"Our Services\";s:7:\"content\";s:291:\"<ul>\r\n	<li> Order Management System </li>\r\n	<li> Communication Platform </li>\r\n	<li> Merchant Services </li>\r\n	<li> Phone System </li>\r\n	<li> Domain and Hosting </li>\r\n	<li> Procurement </li>\r\n	<li> Fulfilment </li>\r\n	<li> Cold chain shipping </li>\r\n	<li> International shipping </li>\r\n</ul>\";}i:4;a:2:{s:5:\"title\";s:5:\"About\";s:7:\"content\";s:87:\"<ul>\r\n	<li>About</li>\r\n	<li>Pricing</li>\r\n	<li>F.A.Q.</li>\r\n	<li>Contact Us</li>\r\n</ul>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1626348498;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1627297906;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1627297908;s:7:\"checked\";a:1:{s:5:\"amata\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'finished_updating_comment_type', '1', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'Focal Point', 'yes'),
(149, 'theme_mods_amata', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:12:\"sidebar-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(152, 'acf_version', '5.8.7', 'yes'),
(157, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1626348783;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(225, 'core_updater.lock', '1626856975', 'no'),
(227, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(229, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(258, '_site_transient_timeout_browser_33f06118fb85aa17661a24d634bea9e3', '1627550809', 'no'),
(259, '_site_transient_browser_33f06118fb85aa17661a24d634bea9e3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.164\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(260, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1627550810', 'no'),
(261, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(274, 'recently_activated', 'a:0:{}', 'yes'),
(280, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"16.7\";}', 'yes'),
(281, 'wpseo', 'a:45:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:0;s:7:\"version\";s:4:\"16.7\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1626946140;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:46:\"/index.php/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:17:\"http://amata.test\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;}', 'yes'),
(282, 'wpseo_titles', 'a:126:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:17:\"title-focal-point\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-focal-point\";s:0:\"\";s:19:\"noindex-focal-point\";b:0;s:30:\"display-metabox-pt-focal-point\";b:1;s:30:\"post_types-focal-point-maintax\";i:0;s:28:\"schema-page-type-focal-point\";s:7:\"WebPage\";s:31:\"schema-article-type-focal-point\";s:4:\"None\";s:24:\"social-title-focal-point\";s:9:\"%%title%%\";s:30:\"social-description-focal-point\";s:0:\"\";s:28:\"social-image-url-focal-point\";s:0:\"\";s:27:\"social-image-id-focal-point\";i:0;s:27:\"title-ptarchive-focal-point\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-ptarchive-focal-point\";s:0:\"\";s:29:\"bctitle-ptarchive-focal-point\";s:0:\"\";s:29:\"noindex-ptarchive-focal-point\";b:0;s:34:\"social-title-ptarchive-focal-point\";s:21:\"%%pt_plural%% Archive\";s:40:\"social-description-ptarchive-focal-point\";s:0:\"\";s:38:\"social-image-url-ptarchive-focal-point\";s:0:\"\";s:37:\"social-image-id-ptarchive-focal-point\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(283, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(286, 'rewrite_rules', 'a:117:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:24:\"index.php/focal-point/?$\";s:31:\"index.php?post_type=focal-point\";s:54:\"index.php/focal-point/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=focal-point&feed=$matches[1]\";s:49:\"index.php/focal-point/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=focal-point&feed=$matches[1]\";s:41:\"index.php/focal-point/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=focal-point&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"index.php/focal-point/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"index.php/focal-point/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"index.php/focal-point/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/focal-point/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"index.php/focal-point/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/focal-point/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"index.php/focal-point/(.+?)/embed/?$\";s:44:\"index.php?focal-point=$matches[1]&embed=true\";s:40:\"index.php/focal-point/(.+?)/trackback/?$\";s:38:\"index.php?focal-point=$matches[1]&tb=1\";s:60:\"index.php/focal-point/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?focal-point=$matches[1]&feed=$matches[2]\";s:55:\"index.php/focal-point/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?focal-point=$matches[1]&feed=$matches[2]\";s:48:\"index.php/focal-point/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?focal-point=$matches[1]&paged=$matches[2]\";s:55:\"index.php/focal-point/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?focal-point=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/focal-point/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?focal-point=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(288, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1626946146;}', 'yes'),
(317, '_transient_timeout_acf_plugin_updates', '1627458699', 'no'),
(318, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:22:\"acf-pro-plugin/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:22:\"acf-pro-plugin/acf.php\";s:11:\"new_version\";s:5:\"5.9.9\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:22:\"acf-pro-plugin/acf.php\";s:5:\"5.8.7\";}}', 'no'),
(322, '_transient_timeout_wpseo_total_unindexed_posts', '1627372327', 'no'),
(323, '_transient_wpseo_total_unindexed_posts', '2', 'no'),
(324, '_transient_timeout_wpseo_total_unindexed_terms', '1627372327', 'no'),
(325, '_transient_wpseo_total_unindexed_terms', '1', 'no'),
(326, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1627372327', 'no'),
(327, '_transient_wpseo_total_unindexed_post_type_archives', '1', 'no'),
(328, '_transient_timeout_wpseo_unindexed_post_link_count', '1627372327', 'no'),
(329, '_transient_wpseo_unindexed_post_link_count', '3', 'no'),
(330, '_transient_timeout_wpseo_unindexed_term_link_count', '1627372327', 'no'),
(331, '_transient_wpseo_unindexed_term_link_count', '1', 'no'),
(342, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1627297908;s:8:\"response\";a:1:{s:22:\"acf-pro-plugin/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:22:\"acf-pro-plugin/acf.php\";s:11:\"new_version\";s:5:\"5.9.9\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"16.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.16.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:5:{s:22:\"acf-pro-plugin/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"16.7\";}}', 'no'),
(348, '_site_transient_timeout_wp_remote_block_patterns_77eda09a6b697cf3b9a062612122d2a4', '1627308860', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(349, '_site_transient_wp_remote_block_patterns_77eda09a6b697cf3b9a062612122d2a4', 'a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1616:\"<!-- wp:cover {\"url\":\"https:\\/\\/s.w.org\\/images\\/core\\/5.8\\/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1055:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1871:\"<!-- wp:cover {\"url\":\"https:\\/\\/s.w.org\\/images\\/core\\/5.8\\/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1194:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1864:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https:\\/\\/s.w.org\\/images\\/core\\/5.8\\/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2619:\"\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"columns\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1888:\"\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no'),
(350, '_site_transient_timeout_theme_roots', '1627307060', 'no'),
(351, '_site_transient_theme_roots', 'a:1:{s:5:\"amata\";s:7:\"/themes\";}', 'no'),
(352, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-home.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class=\"contact-input\"> \n<label> Your name\n    [text* your-name] </label>\n<label> Your Last Name\n[text YourLastName]\n </label>\n</div>\n<div class=\"contact-input\"> \n<label> Your email\n    [email* your-email] </label>\n<label> Your Phone Number\n[number YourPhoneNumber placeholder]\n </label>\n</div>\n<label> Services you are interested in:\n[select services id:services \"Fullfilment \" \"nesto 2 \" \"nesto 3\"]\n </label>\n<label> Your message:\n    [textarea your-message] </label>\n\n[submit class:button__pill--large-secondary \"Send\"]'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <wordpress@amata.test>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:36:\"[_site_title] <wordpress@amata.test>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'en_US'),
(9, 2, '_edit_lock', '1626441229:1'),
(10, 7, '_menu_item_type', 'custom'),
(11, 7, '_menu_item_menu_item_parent', '0'),
(12, 7, '_menu_item_object_id', '7'),
(13, 7, '_menu_item_object', 'custom'),
(14, 7, '_menu_item_target', ''),
(15, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 7, '_menu_item_xfn', ''),
(17, 7, '_menu_item_url', '#'),
(28, 9, '_menu_item_type', 'custom'),
(29, 9, '_menu_item_menu_item_parent', '0'),
(30, 9, '_menu_item_object_id', '9'),
(31, 9, '_menu_item_object', 'custom'),
(32, 9, '_menu_item_target', ''),
(33, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 9, '_menu_item_xfn', ''),
(35, 9, '_menu_item_url', '#'),
(46, 11, '_edit_last', '1'),
(47, 11, '_edit_lock', '1626445075:1'),
(48, 2, '_edit_last', '1'),
(49, 2, 'title', 'Our services'),
(50, 2, '_title', 'field_60f176a8491c8'),
(51, 2, 'subtitle', 'Created with your business in mind.'),
(52, 2, '_subtitle', 'field_60f176b2491c9'),
(53, 2, 'services_0_image', '/img/illustrations/order.svg'),
(54, 2, '_services_0_image', 'field_60f17792491cb'),
(55, 2, 'services_0_title', 'Order Management System'),
(56, 2, '_services_0_title', 'field_60f177a2491cc'),
(57, 2, 'services_0_text', 'The OMS is a process that links to our Amata Solutions Group fulfilment centres to track deliveries. To set this product up with ease, you can use the OMS API (Application Programming Interface) to plug into your existing site so everything transfers swiftly.'),
(58, 2, '_services_0_text', 'field_60f177a8491cd'),
(59, 2, 'services_1_image', '/img/illustrations/internal.svg'),
(60, 2, '_services_1_image', 'field_60f17792491cb'),
(61, 2, 'services_1_title', 'Internal Communication Platform'),
(62, 2, '_services_1_title', 'field_60f177a2491cc'),
(63, 2, 'services_1_text', 'For a simple way to communicate with your team (through chatrooms, business emails, projects, and file sharing) then try the International Communication Platform product. It\'s a secure system that ensures all your communications are kept private to your business.'),
(64, 2, '_services_1_text', 'field_60f177a8491cd'),
(65, 2, 'services_2_image', '/img/illustrations/merchant.svg'),
(66, 2, '_services_2_image', 'field_60f17792491cb'),
(67, 2, 'services_2_title', 'Merchant Services'),
(68, 2, '_services_2_title', 'field_60f177a2491cc'),
(69, 2, 'services_2_text', 'Secure and simple payments are essential to any business, which is why a reliable merchant service is fundamental. Through our supply chain, we can obtain merchant accounts for a variety of businesses, while also ensuring our rates stay fair around the world.'),
(70, 2, '_services_2_text', 'field_60f177a8491cd'),
(71, 2, 'services_3_image', '/img/illustrations/phone.svg'),
(72, 2, '_services_3_image', 'field_60f17792491cb'),
(73, 2, 'services_3_title', 'Phone System'),
(74, 2, '_services_3_title', 'field_60f177a2491cc'),
(75, 2, 'services_3_text', 'It’s crucial that your business can operate from anywhere in the world. As such, it’s important your phone system offers such capabilities. This user-friendly service is kept at a competitive cost and is supported by our work with leading VOIP (Voice over IP) providers.'),
(76, 2, '_services_3_text', 'field_60f177a8491cd'),
(77, 2, 'services_4_image', '/img/illustrations/domain.svg'),
(78, 2, '_services_4_image', 'field_60f17792491cb'),
(79, 2, 'services_4_title', 'Domain and Hosting'),
(80, 2, '_services_4_title', 'field_60f177a2491cc'),
(81, 2, 'services_4_text', 'By working closely with domain registrars and hosting companies, our company offers plans for your business that ensures any website or hosting platform they choose will be safe, secure, and with the client in mind.'),
(82, 2, '_services_4_text', 'field_60f177a8491cd'),
(83, 2, 'services_5_image', '/img/illustrations/procurement.svg'),
(84, 2, '_services_5_image', 'field_60f17792491cb'),
(85, 2, 'services_5_title', 'Procurement'),
(86, 2, '_services_5_title', 'field_60f177a2491cc'),
(87, 2, 'services_5_text', 'through our trusted network, our company has gained access to a range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is equal and reflective of the products.\r\nWe work at doing the best for our clients, this is why our international clients may find significantly lower prices compared to major markets.'),
(88, 2, '_services_5_text', 'field_60f177a8491cd'),
(89, 2, 'services_6_image', '/img/illustrations/fulfilment.svg'),
(90, 2, '_services_6_image', 'field_60f17792491cb'),
(91, 2, 'services_6_title', 'Fulfilment'),
(92, 2, '_services_6_title', 'field_60f177a2491cc'),
(93, 2, 'services_6_text', 'Our fulfilment centres are designed to take care of your inventory and guarantee reliable delivery. When you join our network, not only will you have access to seamless delivery and inventory around the world, you also can operate under our network’s license without any additional paperwork.'),
(94, 2, '_services_6_text', 'field_60f177a8491cd'),
(95, 2, 'services_7_image', '/img/illustrations/chain.svg'),
(96, 2, '_services_7_image', 'field_60f17792491cb'),
(97, 2, 'services_7_title', 'Cold Chain Shipping'),
(98, 2, '_services_7_title', 'field_60f177a2491cc'),
(99, 2, 'services_7_text', 'Our business is licensed by MoH and the cold chain product storage room is monitored 24/7 through a meticulous temperature system. Through our network, our business works closely with expert packaging suppliers to ensure cold chain preservation during shipment of goods to our customers; but we’ll also adapt our packaging and cold chain monitoring systems to fall in with our customers’ requests.'),
(100, 2, '_services_7_text', 'field_60f177a8491cd'),
(101, 2, 'services_8_image', '/img/illustrations/worldwide.svg'),
(102, 2, '_services_8_image', 'field_60f17792491cb'),
(103, 2, 'services_8_title', 'International Shipping'),
(104, 2, '_services_8_title', 'field_60f177a2491cc'),
(105, 2, 'services_8_text', 'The Amata Solutions Group only works with globally renowned couriers or companies requested by our customers. Each system works alongside a customer service team to ensure live tracking is accessible to our customers, even up until the package reaches its final destination.'),
(106, 2, '_services_8_text', 'field_60f177a8491cd'),
(107, 2, 'services', '9'),
(108, 2, '_services', 'field_60f176cb491ca'),
(109, 19, 'title', 'Our services'),
(110, 19, '_title', 'field_60f176a8491c8'),
(111, 19, 'subtitle', 'Created with your business in mind.'),
(112, 19, '_subtitle', 'field_60f176b2491c9'),
(113, 19, 'services_0_image', ''),
(114, 19, '_services_0_image', 'field_60f17792491cb'),
(115, 19, 'services_0_title', 'Order Management System'),
(116, 19, '_services_0_title', 'field_60f177a2491cc'),
(117, 19, 'services_0_text', 'The OMS is a process that links to our Amata Solutions Group fulfilment centres to track deliveries. To set this product up with ease, you can use the OMS API (Application Programming Interface) to plug into your existing site so everything transfers swiftly.'),
(118, 19, '_services_0_text', 'field_60f177a8491cd'),
(119, 19, 'services_1_image', ''),
(120, 19, '_services_1_image', 'field_60f17792491cb'),
(121, 19, 'services_1_title', 'Internal Communication Platform'),
(122, 19, '_services_1_title', 'field_60f177a2491cc'),
(123, 19, 'services_1_text', 'For a simple way to communicate with your team (through chatrooms, business emails, projects, and file sharing) then try the International Communication Platform product. It\'s a secure system that ensures all your communications are kept private to your business.'),
(124, 19, '_services_1_text', 'field_60f177a8491cd'),
(125, 19, 'services_2_image', ''),
(126, 19, '_services_2_image', 'field_60f17792491cb'),
(127, 19, 'services_2_title', 'Merchant Services'),
(128, 19, '_services_2_title', 'field_60f177a2491cc'),
(129, 19, 'services_2_text', 'Secure and simple payments are essential to any business, which is why a reliable merchant service is fundamental. Through our supply chain, we can obtain merchant accounts for a variety of businesses, while also ensuring our rates stay fair around the world.'),
(130, 19, '_services_2_text', 'field_60f177a8491cd'),
(131, 19, 'services_3_image', ''),
(132, 19, '_services_3_image', 'field_60f17792491cb'),
(133, 19, 'services_3_title', 'Phone System'),
(134, 19, '_services_3_title', 'field_60f177a2491cc'),
(135, 19, 'services_3_text', 'It’s crucial that your business can operate from anywhere in the world. As such, it’s important your phone system offers such capabilities. This user-friendly service is kept at a competitive cost and is supported by our work with leading VOIP (Voice over IP) providers.'),
(136, 19, '_services_3_text', 'field_60f177a8491cd'),
(137, 19, 'services_4_image', ''),
(138, 19, '_services_4_image', 'field_60f17792491cb'),
(139, 19, 'services_4_title', 'Domain and Hosting'),
(140, 19, '_services_4_title', 'field_60f177a2491cc'),
(141, 19, 'services_4_text', 'By working closely with domain registrars and hosting companies, our company offers plans for your business that ensures any website or hosting platform they choose will be safe, secure, and with the client in mind.'),
(142, 19, '_services_4_text', 'field_60f177a8491cd'),
(143, 19, 'services_5_image', ''),
(144, 19, '_services_5_image', 'field_60f17792491cb'),
(145, 19, 'services_5_title', 'Procurement'),
(146, 19, '_services_5_title', 'field_60f177a2491cc'),
(147, 19, 'services_5_text', 'through our trusted network, our company has gained access to a range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is equal and reflective of the products.\r\nWe work at doing the best for our clients, this is why our international clients may find significantly lower prices compared to major markets.'),
(148, 19, '_services_5_text', 'field_60f177a8491cd'),
(149, 19, 'services_6_image', ''),
(150, 19, '_services_6_image', 'field_60f17792491cb'),
(151, 19, 'services_6_title', 'Fulfilment'),
(152, 19, '_services_6_title', 'field_60f177a2491cc'),
(153, 19, 'services_6_text', 'Our fulfilment centres are designed to take care of your inventory and guarantee reliable delivery. When you join our network, not only will you have access to seamless delivery and inventory around the world, you also can operate under our network’s license without any additional paperwork.'),
(154, 19, '_services_6_text', 'field_60f177a8491cd'),
(155, 19, 'services_7_image', ''),
(156, 19, '_services_7_image', 'field_60f17792491cb'),
(157, 19, 'services_7_title', 'Cold Chain Shipping'),
(158, 19, '_services_7_title', 'field_60f177a2491cc'),
(159, 19, 'services_7_text', 'Our business is licensed by MoH and the cold chain product storage room is monitored 24/7 through a meticulous temperature system. Through our network, our business works closely with expert packaging suppliers to ensure cold chain preservation during shipment of goods to our customers; but we’ll also adapt our packaging and cold chain monitoring systems to fall in with our customers’ requests.'),
(160, 19, '_services_7_text', 'field_60f177a8491cd'),
(161, 19, 'services_8_image', ''),
(162, 19, '_services_8_image', 'field_60f17792491cb'),
(163, 19, 'services_8_title', 'International Shipping'),
(164, 19, '_services_8_title', 'field_60f177a2491cc'),
(165, 19, 'services_8_text', 'The Amata Solutions Group only works with globally renowned couriers or companies requested by our customers. Each system works alongside a customer service team to ensure live tracking is accessible to our customers, even up until the package reaches its final destination.'),
(166, 19, '_services_8_text', 'field_60f177a8491cd'),
(167, 19, 'services', '9'),
(168, 19, '_services', 'field_60f176cb491ca'),
(169, 20, 'title', 'Our services'),
(170, 20, '_title', 'field_60f176a8491c8'),
(171, 20, 'subtitle', 'Created with your business in mind.'),
(172, 20, '_subtitle', 'field_60f176b2491c9'),
(173, 20, 'services_0_image', ''),
(174, 20, '_services_0_image', 'field_60f17792491cb'),
(175, 20, 'services_0_title', 'Order Management System'),
(176, 20, '_services_0_title', 'field_60f177a2491cc'),
(177, 20, 'services_0_text', 'The OMS is a process that links to our Amata Solutions Group fulfilment centres to track deliveries. To set this product up with ease, you can use the OMS API (Application Programming Interface) to plug into your existing site so everything transfers swiftly.'),
(178, 20, '_services_0_text', 'field_60f177a8491cd'),
(179, 20, 'services_1_image', ''),
(180, 20, '_services_1_image', 'field_60f17792491cb'),
(181, 20, 'services_1_title', 'Internal Communication Platform'),
(182, 20, '_services_1_title', 'field_60f177a2491cc'),
(183, 20, 'services_1_text', 'For a simple way to communicate with your team (through chatrooms, business emails, projects, and file sharing) then try the International Communication Platform product. It\'s a secure system that ensures all your communications are kept private to your business.'),
(184, 20, '_services_1_text', 'field_60f177a8491cd'),
(185, 20, 'services_2_image', ''),
(186, 20, '_services_2_image', 'field_60f17792491cb'),
(187, 20, 'services_2_title', 'Merchant Services'),
(188, 20, '_services_2_title', 'field_60f177a2491cc'),
(189, 20, 'services_2_text', 'Secure and simple payments are essential to any business, which is why a reliable merchant service is fundamental. Through our supply chain, we can obtain merchant accounts for a variety of businesses, while also ensuring our rates stay fair around the world.'),
(190, 20, '_services_2_text', 'field_60f177a8491cd'),
(191, 20, 'services_3_image', ''),
(192, 20, '_services_3_image', 'field_60f17792491cb'),
(193, 20, 'services_3_title', 'Phone System'),
(194, 20, '_services_3_title', 'field_60f177a2491cc'),
(195, 20, 'services_3_text', 'It’s crucial that your business can operate from anywhere in the world. As such, it’s important your phone system offers such capabilities. This user-friendly service is kept at a competitive cost and is supported by our work with leading VOIP (Voice over IP) providers.'),
(196, 20, '_services_3_text', 'field_60f177a8491cd'),
(197, 20, 'services_4_image', ''),
(198, 20, '_services_4_image', 'field_60f17792491cb'),
(199, 20, 'services_4_title', 'Domain and Hosting'),
(200, 20, '_services_4_title', 'field_60f177a2491cc'),
(201, 20, 'services_4_text', 'By working closely with domain registrars and hosting companies, our company offers plans for your business that ensures any website or hosting platform they choose will be safe, secure, and with the client in mind.'),
(202, 20, '_services_4_text', 'field_60f177a8491cd'),
(203, 20, 'services_5_image', ''),
(204, 20, '_services_5_image', 'field_60f17792491cb'),
(205, 20, 'services_5_title', 'Procurement'),
(206, 20, '_services_5_title', 'field_60f177a2491cc'),
(207, 20, 'services_5_text', 'through our trusted network, our company has gained access to a range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is equal and reflective of the products.\r\nWe work at doing the best for our clients, this is why our international clients may find significantly lower prices compared to major markets.'),
(208, 20, '_services_5_text', 'field_60f177a8491cd'),
(209, 20, 'services_6_image', ''),
(210, 20, '_services_6_image', 'field_60f17792491cb'),
(211, 20, 'services_6_title', 'Fulfilment'),
(212, 20, '_services_6_title', 'field_60f177a2491cc'),
(213, 20, 'services_6_text', 'Our fulfilment centres are designed to take care of your inventory and guarantee reliable delivery. When you join our network, not only will you have access to seamless delivery and inventory around the world, you also can operate under our network’s license without any additional paperwork.'),
(214, 20, '_services_6_text', 'field_60f177a8491cd'),
(215, 20, 'services_7_image', ''),
(216, 20, '_services_7_image', 'field_60f17792491cb'),
(217, 20, 'services_7_title', 'Cold Chain Shipping'),
(218, 20, '_services_7_title', 'field_60f177a2491cc'),
(219, 20, 'services_7_text', 'Our business is licensed by MoH and the cold chain product storage room is monitored 24/7 through a meticulous temperature system. Through our network, our business works closely with expert packaging suppliers to ensure cold chain preservation during shipment of goods to our customers; but we’ll also adapt our packaging and cold chain monitoring systems to fall in with our customers’ requests.'),
(220, 20, '_services_7_text', 'field_60f177a8491cd'),
(221, 20, 'services_8_image', ''),
(222, 20, '_services_8_image', 'field_60f17792491cb'),
(223, 20, 'services_8_title', 'International Shipping'),
(224, 20, '_services_8_title', 'field_60f177a2491cc'),
(225, 20, 'services_8_text', 'The Amata Solutions Group only works with globally renowned couriers or companies requested by our customers. Each system works alongside a customer service team to ensure live tracking is accessible to our customers, even up until the package reaches its final destination.'),
(226, 20, '_services_8_text', 'field_60f177a8491cd'),
(227, 20, 'services', '9'),
(228, 20, '_services', 'field_60f176cb491ca'),
(229, 21, 'title', 'Our services'),
(230, 21, '_title', 'field_60f176a8491c8'),
(231, 21, 'subtitle', 'Created with your business in mind.'),
(232, 21, '_subtitle', 'field_60f176b2491c9'),
(233, 21, 'services_0_image', '/img/illustrations/order.svg'),
(234, 21, '_services_0_image', 'field_60f17792491cb'),
(235, 21, 'services_0_title', 'Order Management System'),
(236, 21, '_services_0_title', 'field_60f177a2491cc'),
(237, 21, 'services_0_text', 'The OMS is a process that links to our Amata Solutions Group fulfilment centres to track deliveries. To set this product up with ease, you can use the OMS API (Application Programming Interface) to plug into your existing site so everything transfers swiftly.'),
(238, 21, '_services_0_text', 'field_60f177a8491cd'),
(239, 21, 'services_1_image', '/img/illustrations/internal.svg'),
(240, 21, '_services_1_image', 'field_60f17792491cb'),
(241, 21, 'services_1_title', 'Internal Communication Platform'),
(242, 21, '_services_1_title', 'field_60f177a2491cc'),
(243, 21, 'services_1_text', 'For a simple way to communicate with your team (through chatrooms, business emails, projects, and file sharing) then try the International Communication Platform product. It\'s a secure system that ensures all your communications are kept private to your business.'),
(244, 21, '_services_1_text', 'field_60f177a8491cd'),
(245, 21, 'services_2_image', '/img/illustrations/merchant.svg'),
(246, 21, '_services_2_image', 'field_60f17792491cb'),
(247, 21, 'services_2_title', 'Merchant Services'),
(248, 21, '_services_2_title', 'field_60f177a2491cc'),
(249, 21, 'services_2_text', 'Secure and simple payments are essential to any business, which is why a reliable merchant service is fundamental. Through our supply chain, we can obtain merchant accounts for a variety of businesses, while also ensuring our rates stay fair around the world.'),
(250, 21, '_services_2_text', 'field_60f177a8491cd'),
(251, 21, 'services_3_image', '/img/illustrations/phone.svg'),
(252, 21, '_services_3_image', 'field_60f17792491cb'),
(253, 21, 'services_3_title', 'Phone System'),
(254, 21, '_services_3_title', 'field_60f177a2491cc'),
(255, 21, 'services_3_text', 'It’s crucial that your business can operate from anywhere in the world. As such, it’s important your phone system offers such capabilities. This user-friendly service is kept at a competitive cost and is supported by our work with leading VOIP (Voice over IP) providers.'),
(256, 21, '_services_3_text', 'field_60f177a8491cd'),
(257, 21, 'services_4_image', '/img/illustrations/domain.svg'),
(258, 21, '_services_4_image', 'field_60f17792491cb'),
(259, 21, 'services_4_title', 'Domain and Hosting'),
(260, 21, '_services_4_title', 'field_60f177a2491cc'),
(261, 21, 'services_4_text', 'By working closely with domain registrars and hosting companies, our company offers plans for your business that ensures any website or hosting platform they choose will be safe, secure, and with the client in mind.'),
(262, 21, '_services_4_text', 'field_60f177a8491cd'),
(263, 21, 'services_5_image', '/img/illustrations/procurement.svg'),
(264, 21, '_services_5_image', 'field_60f17792491cb'),
(265, 21, 'services_5_title', 'Procurement'),
(266, 21, '_services_5_title', 'field_60f177a2491cc'),
(267, 21, 'services_5_text', 'through our trusted network, our company has gained access to a range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is equal and reflective of the products.\r\nWe work at doing the best for our clients, this is why our international clients may find significantly lower prices compared to major markets.'),
(268, 21, '_services_5_text', 'field_60f177a8491cd'),
(269, 21, 'services_6_image', '/img/illustrations/fulfilment.svg'),
(270, 21, '_services_6_image', 'field_60f17792491cb'),
(271, 21, 'services_6_title', 'Fulfilment'),
(272, 21, '_services_6_title', 'field_60f177a2491cc'),
(273, 21, 'services_6_text', 'Our fulfilment centres are designed to take care of your inventory and guarantee reliable delivery. When you join our network, not only will you have access to seamless delivery and inventory around the world, you also can operate under our network’s license without any additional paperwork.'),
(274, 21, '_services_6_text', 'field_60f177a8491cd'),
(275, 21, 'services_7_image', '/img/illustrations/chain.svg'),
(276, 21, '_services_7_image', 'field_60f17792491cb'),
(277, 21, 'services_7_title', 'Cold Chain Shipping'),
(278, 21, '_services_7_title', 'field_60f177a2491cc'),
(279, 21, 'services_7_text', 'Our business is licensed by MoH and the cold chain product storage room is monitored 24/7 through a meticulous temperature system. Through our network, our business works closely with expert packaging suppliers to ensure cold chain preservation during shipment of goods to our customers; but we’ll also adapt our packaging and cold chain monitoring systems to fall in with our customers’ requests.'),
(280, 21, '_services_7_text', 'field_60f177a8491cd'),
(281, 21, 'services_8_image', '/img/illustrations/worldwide.svg'),
(282, 21, '_services_8_image', 'field_60f17792491cb'),
(283, 21, 'services_8_title', 'International Shipping'),
(284, 21, '_services_8_title', 'field_60f177a2491cc'),
(285, 21, 'services_8_text', 'The Amata Solutions Group only works with globally renowned couriers or companies requested by our customers. Each system works alongside a customer service team to ensure live tracking is accessible to our customers, even up until the package reaches its final destination.'),
(286, 21, '_services_8_text', 'field_60f177a8491cd'),
(287, 21, 'services', '9'),
(288, 21, '_services', 'field_60f176cb491ca'),
(289, 22, 'title', 'Our services'),
(290, 22, '_title', 'field_60f176a8491c8'),
(291, 22, 'subtitle', 'Created with your business in mind.'),
(292, 22, '_subtitle', 'field_60f176b2491c9'),
(293, 22, 'services_0_image', '/img/illustrations/order.svg'),
(294, 22, '_services_0_image', 'field_60f17792491cb'),
(295, 22, 'services_0_title', 'Order Management System'),
(296, 22, '_services_0_title', 'field_60f177a2491cc'),
(297, 22, 'services_0_text', 'The OMS is a process that links to our Amata Solutions Group fulfilment centres to track deliveries. To set this product up with ease, you can use the OMS API (Application Programming Interface) to plug into your existing site so everything transfers swiftly.'),
(298, 22, '_services_0_text', 'field_60f177a8491cd'),
(299, 22, 'services_1_image', '/img/illustrations/internal.svg'),
(300, 22, '_services_1_image', 'field_60f17792491cb'),
(301, 22, 'services_1_title', 'Internal Communication Platform'),
(302, 22, '_services_1_title', 'field_60f177a2491cc'),
(303, 22, 'services_1_text', 'For a simple way to communicate with your team (through chatrooms, business emails, projects, and file sharing) then try the International Communication Platform product. It\'s a secure system that ensures all your communications are kept private to your business.'),
(304, 22, '_services_1_text', 'field_60f177a8491cd'),
(305, 22, 'services_2_image', '/img/illustrations/merchant.svg'),
(306, 22, '_services_2_image', 'field_60f17792491cb'),
(307, 22, 'services_2_title', 'Merchant Services'),
(308, 22, '_services_2_title', 'field_60f177a2491cc'),
(309, 22, 'services_2_text', 'Secure and simple payments are essential to any business, which is why a reliable merchant service is fundamental. Through our supply chain, we can obtain merchant accounts for a variety of businesses, while also ensuring our rates stay fair around the world.'),
(310, 22, '_services_2_text', 'field_60f177a8491cd'),
(311, 22, 'services_3_image', '/img/illustrations/phone.svg'),
(312, 22, '_services_3_image', 'field_60f17792491cb'),
(313, 22, 'services_3_title', 'Phone System'),
(314, 22, '_services_3_title', 'field_60f177a2491cc'),
(315, 22, 'services_3_text', 'It’s crucial that your business can operate from anywhere in the world. As such, it’s important your phone system offers such capabilities. This user-friendly service is kept at a competitive cost and is supported by our work with leading VOIP (Voice over IP) providers.'),
(316, 22, '_services_3_text', 'field_60f177a8491cd'),
(317, 22, 'services_4_image', '/img/illustrations/domain.svg'),
(318, 22, '_services_4_image', 'field_60f17792491cb'),
(319, 22, 'services_4_title', 'Domain and Hosting'),
(320, 22, '_services_4_title', 'field_60f177a2491cc'),
(321, 22, 'services_4_text', 'By working closely with domain registrars and hosting companies, our company offers plans for your business that ensures any website or hosting platform they choose will be safe, secure, and with the client in mind.'),
(322, 22, '_services_4_text', 'field_60f177a8491cd'),
(323, 22, 'services_5_image', '/img/illustrations/procurement.svg'),
(324, 22, '_services_5_image', 'field_60f17792491cb'),
(325, 22, 'services_5_title', 'Procurement'),
(326, 22, '_services_5_title', 'field_60f177a2491cc'),
(327, 22, 'services_5_text', 'through our trusted network, our company has gained access to a range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is equal and reflective of the products.\r\nWe work at doing the best for our clients, this is why our international clients may find significantly lower prices compared to major markets.'),
(328, 22, '_services_5_text', 'field_60f177a8491cd'),
(329, 22, 'services_6_image', '/img/illustrations/fulfilment.svg'),
(330, 22, '_services_6_image', 'field_60f17792491cb'),
(331, 22, 'services_6_title', 'Fulfilment'),
(332, 22, '_services_6_title', 'field_60f177a2491cc'),
(333, 22, 'services_6_text', 'Our fulfilment centres are designed to take care of your inventory and guarantee reliable delivery. When you join our network, not only will you have access to seamless delivery and inventory around the world, you also can operate under our network’s license without any additional paperwork.'),
(334, 22, '_services_6_text', 'field_60f177a8491cd'),
(335, 22, 'services_7_image', '/img/illustrations/chain.svg'),
(336, 22, '_services_7_image', 'field_60f17792491cb'),
(337, 22, 'services_7_title', 'Cold Chain Shipping'),
(338, 22, '_services_7_title', 'field_60f177a2491cc'),
(339, 22, 'services_7_text', 'Our business is licensed by MoH and the cold chain product storage room is monitored 24/7 through a meticulous temperature system. Through our network, our business works closely with expert packaging suppliers to ensure cold chain preservation during shipment of goods to our customers; but we’ll also adapt our packaging and cold chain monitoring systems to fall in with our customers’ requests.'),
(340, 22, '_services_7_text', 'field_60f177a8491cd'),
(341, 22, 'services_8_image', '/img/illustrations/worldwide.svg'),
(342, 22, '_services_8_image', 'field_60f17792491cb'),
(343, 22, 'services_8_title', 'International Shipping'),
(344, 22, '_services_8_title', 'field_60f177a2491cc'),
(345, 22, 'services_8_text', 'The Amata Solutions Group only works with globally renowned couriers or companies requested by our customers. Each system works alongside a customer service team to ensure live tracking is accessible to our customers, even up until the package reaches its final destination.'),
(346, 22, '_services_8_text', 'field_60f177a8491cd'),
(347, 22, 'services', '9'),
(348, 22, '_services', 'field_60f176cb491ca'),
(349, 23, '_edit_lock', '1626859788:1'),
(350, 23, '_wp_page_template', 'template-faq.php'),
(351, 26, '_wp_attached_file', '2021/07/amata-logo-horizontal.png'),
(352, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:196;s:6:\"height\";i:48;s:4:\"file\";s:33:\"2021/07/amata-logo-horizontal.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"amata-logo-horizontal-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:32:\"amata-logo-horizontal-120x29.png\";s:5:\"width\";i:120;s:6:\"height\";i:29;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 27, '_menu_item_type', 'post_type'),
(354, 27, '_menu_item_menu_item_parent', '0'),
(355, 27, '_menu_item_object_id', '23'),
(356, 27, '_menu_item_object', 'page'),
(357, 27, '_menu_item_target', ''),
(358, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 27, '_menu_item_xfn', ''),
(360, 27, '_menu_item_url', ''),
(362, 7, '_wp_old_date', '2021-07-15'),
(364, 9, '_wp_old_date', '2021-07-15'),
(365, 28, '_edit_last', '1'),
(366, 28, '_edit_lock', '1626859627:1'),
(367, 23, '_edit_last', '1'),
(368, 23, 'heading', 'Frequently Asked Questions'),
(369, 23, '_heading', 'field_60f7e70c83b6a'),
(370, 23, 'faq_accordion_0_id', 'acc1'),
(371, 23, '_faq_accordion_0_id', 'field_60f7e73b83b6c'),
(372, 23, 'faq_accordion_0_question', 'Question 1'),
(373, 23, '_faq_accordion_0_question', 'field_60f7e74283b6d'),
(374, 23, 'faq_accordion_0_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(375, 23, '_faq_accordion_0_answer', 'field_60f7e74883b6e'),
(376, 23, 'faq_accordion_1_id', 'acc2'),
(377, 23, '_faq_accordion_1_id', 'field_60f7e73b83b6c'),
(378, 23, 'faq_accordion_1_question', 'Question 2'),
(379, 23, '_faq_accordion_1_question', 'field_60f7e74283b6d'),
(380, 23, 'faq_accordion_1_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(381, 23, '_faq_accordion_1_answer', 'field_60f7e74883b6e'),
(382, 23, 'faq_accordion_2_id', 'acc3'),
(383, 23, '_faq_accordion_2_id', 'field_60f7e73b83b6c'),
(384, 23, 'faq_accordion_2_question', 'Question 3'),
(385, 23, '_faq_accordion_2_question', 'field_60f7e74283b6d'),
(386, 23, 'faq_accordion_2_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(387, 23, '_faq_accordion_2_answer', 'field_60f7e74883b6e'),
(388, 23, 'faq_accordion_3_id', 'acc4'),
(389, 23, '_faq_accordion_3_id', 'field_60f7e73b83b6c'),
(390, 23, 'faq_accordion_3_question', 'Question 4'),
(391, 23, '_faq_accordion_3_question', 'field_60f7e74283b6d'),
(392, 23, 'faq_accordion_3_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(393, 23, '_faq_accordion_3_answer', 'field_60f7e74883b6e'),
(394, 23, 'faq_accordion_4_id', 'acc5'),
(395, 23, '_faq_accordion_4_id', 'field_60f7e73b83b6c'),
(396, 23, 'faq_accordion_4_question', 'Question 5'),
(397, 23, '_faq_accordion_4_question', 'field_60f7e74283b6d'),
(398, 23, 'faq_accordion_4_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(399, 23, '_faq_accordion_4_answer', 'field_60f7e74883b6e'),
(400, 23, 'faq_accordion', '5'),
(401, 23, '_faq_accordion', 'field_60f7e71483b6b'),
(402, 34, 'heading', 'Frequently Asked Questions'),
(403, 34, '_heading', 'field_60f7e70c83b6a'),
(404, 34, 'faq_accordion_0_id', 'acc1'),
(405, 34, '_faq_accordion_0_id', 'field_60f7e73b83b6c'),
(406, 34, 'faq_accordion_0_question', 'Question 1'),
(407, 34, '_faq_accordion_0_question', 'field_60f7e74283b6d'),
(408, 34, 'faq_accordion_0_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(409, 34, '_faq_accordion_0_answer', 'field_60f7e74883b6e'),
(410, 34, 'faq_accordion_1_id', 'acc2'),
(411, 34, '_faq_accordion_1_id', 'field_60f7e73b83b6c'),
(412, 34, 'faq_accordion_1_question', 'Question 2'),
(413, 34, '_faq_accordion_1_question', 'field_60f7e74283b6d'),
(414, 34, 'faq_accordion_1_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(415, 34, '_faq_accordion_1_answer', 'field_60f7e74883b6e'),
(416, 34, 'faq_accordion_2_id', 'acc3'),
(417, 34, '_faq_accordion_2_id', 'field_60f7e73b83b6c'),
(418, 34, 'faq_accordion_2_question', 'Question 3'),
(419, 34, '_faq_accordion_2_question', 'field_60f7e74283b6d'),
(420, 34, 'faq_accordion_2_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(421, 34, '_faq_accordion_2_answer', 'field_60f7e74883b6e'),
(422, 34, 'faq_accordion_3_id', 'acc4'),
(423, 34, '_faq_accordion_3_id', 'field_60f7e73b83b6c'),
(424, 34, 'faq_accordion_3_question', 'Question 4'),
(425, 34, '_faq_accordion_3_question', 'field_60f7e74283b6d'),
(426, 34, 'faq_accordion_3_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(427, 34, '_faq_accordion_3_answer', 'field_60f7e74883b6e'),
(428, 34, 'faq_accordion_4_id', 'acc5'),
(429, 34, '_faq_accordion_4_id', 'field_60f7e73b83b6c'),
(430, 34, 'faq_accordion_4_question', 'Question 5'),
(431, 34, '_faq_accordion_4_question', 'field_60f7e74283b6d'),
(432, 34, 'faq_accordion_4_answer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus commodo egestas congue quis volutpat. Arcu fringilla ultricies velit pellentesque facilisis. Sagittis, fermentum proin tincidunt sit interdum pulvinar fermentum vulputate.'),
(433, 34, '_faq_accordion_4_answer', 'field_60f7e74883b6e'),
(434, 34, 'faq_accordion', '5'),
(435, 34, '_faq_accordion', 'field_60f7e71483b6b'),
(436, 35, '_edit_lock', '1626947259:1'),
(437, 35, '_wp_page_template', 'template-pricing.php'),
(438, 37, '_menu_item_type', 'post_type'),
(439, 37, '_menu_item_menu_item_parent', '0'),
(440, 37, '_menu_item_object_id', '35'),
(441, 37, '_menu_item_object', 'page'),
(442, 37, '_menu_item_target', ''),
(443, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(444, 37, '_menu_item_xfn', ''),
(445, 37, '_menu_item_url', ''),
(447, 38, '_edit_last', '1'),
(448, 38, '_edit_lock', '1626865090:1'),
(449, 35, '_edit_last', '1'),
(450, 35, 'heading', 'Pricing'),
(451, 35, '_heading', 'field_60f7f638e900f'),
(452, 35, 'sub_heading', 'Here’s an overview of our services, but if you want a detailed explanation, just visit this link.'),
(453, 35, '_sub_heading', 'field_60f7f63ee9010'),
(454, 35, 'pricing_table_0_title', 'Order Management System'),
(455, 35, '_pricing_table_0_title', 'field_60f7f6fbf2c43'),
(456, 35, 'pricing_table_0_description', 'track and transfer delivery information in the OMS.'),
(457, 35, '_pricing_table_0_description', 'field_60f7f701f2c44'),
(458, 35, 'pricing_table_1_title', 'Communication Platform'),
(459, 35, '_pricing_table_1_title', 'field_60f7f6fbf2c43'),
(460, 35, 'pricing_table_1_description', 'communicate with your whole team on one secure platform.'),
(461, 35, '_pricing_table_1_description', 'field_60f7f701f2c44'),
(462, 35, 'pricing_table_2_title', 'Merchant Services'),
(463, 35, '_pricing_table_2_title', 'field_60f7f6fbf2c43'),
(464, 35, 'pricing_table_2_description', 'make secure and easy payments with our fundamental merchant system.'),
(465, 35, '_pricing_table_2_description', 'field_60f7f701f2c44'),
(466, 35, 'pricing_table_3_title', 'Phone System'),
(467, 35, '_pricing_table_3_title', 'field_60f7f6fbf2c43'),
(468, 35, 'pricing_table_3_description', 'conduct business from around the world all on your phone at one fair price.'),
(469, 35, '_pricing_table_3_description', 'field_60f7f701f2c44'),
(470, 35, 'pricing_table_4_title', 'Domain and Hosting'),
(471, 35, '_pricing_table_4_title', 'field_60f7f6fbf2c43'),
(472, 35, 'pricing_table_4_description', 'find a domain and hosting system you can trust and is affordable.'),
(473, 35, '_pricing_table_4_description', 'field_60f7f701f2c44'),
(474, 35, 'pricing_table_5_title', 'Procurement'),
(475, 35, '_pricing_table_5_title', 'field_60f7f6fbf2c43'),
(476, 35, 'pricing_table_5_description', 'browse our range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is fair and reflective of the market.'),
(477, 35, '_pricing_table_5_description', 'field_60f7f701f2c44'),
(478, 35, 'pricing_table_6_title', 'Fulfilment'),
(479, 35, '_pricing_table_6_title', 'field_60f7f6fbf2c43'),
(480, 35, 'pricing_table_6_description', 'join our network and monitor your inventory from around the world.'),
(481, 35, '_pricing_table_6_description', 'field_60f7f701f2c44'),
(482, 35, 'pricing_table_7_title', 'Cold chain shipping'),
(483, 35, '_pricing_table_7_title', 'field_60f7f6fbf2c43'),
(484, 35, 'pricing_table_7_description', 'a cold chain storage room that is monitored 24/7 by our temperature-regulated system.'),
(485, 35, '_pricing_table_7_description', 'field_60f7f701f2c44'),
(486, 35, 'pricing_table_8_title', 'International shipping'),
(487, 35, '_pricing_table_8_title', 'field_60f7f6fbf2c43'),
(488, 35, 'pricing_table_8_description', 'our globally renowned couriers work with customers to offer live-tracking and fast shipping.'),
(489, 35, '_pricing_table_8_description', 'field_60f7f701f2c44'),
(490, 35, 'pricing_table', '9'),
(491, 35, '_pricing_table', 'field_60f7f653e9011'),
(492, 44, 'heading', 'Pricing'),
(493, 44, '_heading', 'field_60f7f638e900f'),
(494, 44, 'sub_heading', 'Here’s an overview of our services, but if you want a detailed explanation, just visit this link.'),
(495, 44, '_sub_heading', 'field_60f7f63ee9010'),
(496, 44, 'pricing_table_0_title', 'Order Management System'),
(497, 44, '_pricing_table_0_title', 'field_60f7f6fbf2c43'),
(498, 44, 'pricing_table_0_description', 'track and transfer delivery information in the OMS.'),
(499, 44, '_pricing_table_0_description', 'field_60f7f701f2c44'),
(500, 44, 'pricing_table_1_title', 'Communication Platform'),
(501, 44, '_pricing_table_1_title', 'field_60f7f6fbf2c43'),
(502, 44, 'pricing_table_1_description', 'communicate with your whole team on one secure platform.'),
(503, 44, '_pricing_table_1_description', 'field_60f7f701f2c44'),
(504, 44, 'pricing_table_2_title', 'Merchant Services'),
(505, 44, '_pricing_table_2_title', 'field_60f7f6fbf2c43'),
(506, 44, 'pricing_table_2_description', 'make secure and easy payments with our fundamental merchant system.'),
(507, 44, '_pricing_table_2_description', 'field_60f7f701f2c44'),
(508, 44, 'pricing_table_3_title', 'Phone System'),
(509, 44, '_pricing_table_3_title', 'field_60f7f6fbf2c43'),
(510, 44, 'pricing_table_3_description', 'conduct business from around the world all on your phone at one fair price.'),
(511, 44, '_pricing_table_3_description', 'field_60f7f701f2c44'),
(512, 44, 'pricing_table_4_title', 'Domain and Hosting'),
(513, 44, '_pricing_table_4_title', 'field_60f7f6fbf2c43'),
(514, 44, 'pricing_table_4_description', 'find a domain and hosting system you can trust and is affordable.'),
(515, 44, '_pricing_table_4_description', 'field_60f7f701f2c44'),
(516, 44, 'pricing_table_5_title', 'Procurement'),
(517, 44, '_pricing_table_5_title', 'field_60f7f6fbf2c43'),
(518, 44, 'pricing_table_5_description', 'browse our range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is fair and reflective of the market.'),
(519, 44, '_pricing_table_5_description', 'field_60f7f701f2c44'),
(520, 44, 'pricing_table_6_title', 'Fulfilment'),
(521, 44, '_pricing_table_6_title', 'field_60f7f6fbf2c43'),
(522, 44, 'pricing_table_6_description', 'join our network and monitor your inventory from around the world.'),
(523, 44, '_pricing_table_6_description', 'field_60f7f701f2c44'),
(524, 44, 'pricing_table_7_title', 'Cold chain shipping'),
(525, 44, '_pricing_table_7_title', 'field_60f7f6fbf2c43'),
(526, 44, 'pricing_table_7_description', 'a cold chain storage room that is monitored 24/7 by our temperature-regulated system.'),
(527, 44, '_pricing_table_7_description', 'field_60f7f701f2c44'),
(528, 44, 'pricing_table_8_title', 'International shipping'),
(529, 44, '_pricing_table_8_title', 'field_60f7f6fbf2c43'),
(530, 44, 'pricing_table_8_description', 'our globally renowned couriers work with customers to offer live-tracking and fast shipping.'),
(531, 44, '_pricing_table_8_description', 'field_60f7f701f2c44'),
(532, 44, 'pricing_table', '9'),
(533, 44, '_pricing_table', 'field_60f7f653e9011'),
(534, 45, 'heading', 'Pricing'),
(535, 45, '_heading', 'field_60f7f638e900f'),
(536, 45, 'sub_heading', 'Here’s an overview of our services, but if you want a detailed explanation, just visit this link.'),
(537, 45, '_sub_heading', 'field_60f7f63ee9010'),
(538, 45, 'pricing_table_0_title', 'Order Management System'),
(539, 45, '_pricing_table_0_title', 'field_60f7f6fbf2c43'),
(540, 45, 'pricing_table_0_description', 'track and transfer delivery information in the OMS.'),
(541, 45, '_pricing_table_0_description', 'field_60f7f701f2c44'),
(542, 45, 'pricing_table_1_title', 'Communication Platform'),
(543, 45, '_pricing_table_1_title', 'field_60f7f6fbf2c43'),
(544, 45, 'pricing_table_1_description', 'communicate with your whole team on one secure platform.'),
(545, 45, '_pricing_table_1_description', 'field_60f7f701f2c44'),
(546, 45, 'pricing_table_2_title', 'Merchant Services'),
(547, 45, '_pricing_table_2_title', 'field_60f7f6fbf2c43'),
(548, 45, 'pricing_table_2_description', 'make secure and easy payments with our fundamental merchant system.'),
(549, 45, '_pricing_table_2_description', 'field_60f7f701f2c44'),
(550, 45, 'pricing_table_3_title', 'Phone System'),
(551, 45, '_pricing_table_3_title', 'field_60f7f6fbf2c43'),
(552, 45, 'pricing_table_3_description', 'conduct business from around the world all on your phone at one fair price.'),
(553, 45, '_pricing_table_3_description', 'field_60f7f701f2c44'),
(554, 45, 'pricing_table_4_title', 'Domain and Hosting'),
(555, 45, '_pricing_table_4_title', 'field_60f7f6fbf2c43'),
(556, 45, 'pricing_table_4_description', 'find a domain and hosting system you can trust and is affordable.'),
(557, 45, '_pricing_table_4_description', 'field_60f7f701f2c44'),
(558, 45, 'pricing_table_5_title', 'Procurement'),
(559, 45, '_pricing_table_5_title', 'field_60f7f6fbf2c43'),
(560, 45, 'pricing_table_5_description', 'browse our range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is fair and reflective of the market.'),
(561, 45, '_pricing_table_5_description', 'field_60f7f701f2c44'),
(562, 45, 'pricing_table_6_title', 'Fulfilment'),
(563, 45, '_pricing_table_6_title', 'field_60f7f6fbf2c43'),
(564, 45, 'pricing_table_6_description', 'join our network and monitor your inventory from around the world.'),
(565, 45, '_pricing_table_6_description', 'field_60f7f701f2c44'),
(566, 45, 'pricing_table_7_title', 'Cold chain shipping'),
(567, 45, '_pricing_table_7_title', 'field_60f7f6fbf2c43'),
(568, 45, 'pricing_table_7_description', 'a cold chain storage room that is monitored 24/7 by our temperature-regulated system.'),
(569, 45, '_pricing_table_7_description', 'field_60f7f701f2c44'),
(570, 45, 'pricing_table_8_title', 'International shipping'),
(571, 45, '_pricing_table_8_title', 'field_60f7f6fbf2c43'),
(572, 45, 'pricing_table_8_description', 'our globally renowned couriers work with customers to offer live-tracking and fast shipping.'),
(573, 45, '_pricing_table_8_description', 'field_60f7f701f2c44'),
(574, 45, 'pricing_table', '9'),
(575, 45, '_pricing_table', 'field_60f7f653e9011'),
(576, 47, '_wp_attached_file', '2021/07/hero-home.jpg'),
(577, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1332;s:4:\"file\";s:21:\"2021/07/hero-home.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"hero-home-250x173.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"hero-home-700x486.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"hero-home-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"hero-home-768x533.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"hero-home-1536x1066.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1066;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:20:\"hero-home-120x83.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:83;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:21:\"hero-home-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(578, 35, '_thumbnail_id', '49'),
(621, 48, 'heading', 'Pricing'),
(622, 48, '_heading', 'field_60f7f638e900f'),
(623, 48, 'sub_heading', 'Here’s an overview of our services, but if you want a detailed explanation, just visit this link.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(624, 48, '_sub_heading', 'field_60f7f63ee9010'),
(625, 48, 'pricing_table_0_title', 'Order Management System'),
(626, 48, '_pricing_table_0_title', 'field_60f7f6fbf2c43'),
(627, 48, 'pricing_table_0_description', 'track and transfer delivery information in the OMS.'),
(628, 48, '_pricing_table_0_description', 'field_60f7f701f2c44'),
(629, 48, 'pricing_table_1_title', 'Communication Platform'),
(630, 48, '_pricing_table_1_title', 'field_60f7f6fbf2c43'),
(631, 48, 'pricing_table_1_description', 'communicate with your whole team on one secure platform.'),
(632, 48, '_pricing_table_1_description', 'field_60f7f701f2c44'),
(633, 48, 'pricing_table_2_title', 'Merchant Services'),
(634, 48, '_pricing_table_2_title', 'field_60f7f6fbf2c43'),
(635, 48, 'pricing_table_2_description', 'make secure and easy payments with our fundamental merchant system.'),
(636, 48, '_pricing_table_2_description', 'field_60f7f701f2c44'),
(637, 48, 'pricing_table_3_title', 'Phone System'),
(638, 48, '_pricing_table_3_title', 'field_60f7f6fbf2c43'),
(639, 48, 'pricing_table_3_description', 'conduct business from around the world all on your phone at one fair price.'),
(640, 48, '_pricing_table_3_description', 'field_60f7f701f2c44'),
(641, 48, 'pricing_table_4_title', 'Domain and Hosting'),
(642, 48, '_pricing_table_4_title', 'field_60f7f6fbf2c43'),
(643, 48, 'pricing_table_4_description', 'find a domain and hosting system you can trust and is affordable.'),
(644, 48, '_pricing_table_4_description', 'field_60f7f701f2c44'),
(645, 48, 'pricing_table_5_title', 'Procurement'),
(646, 48, '_pricing_table_5_title', 'field_60f7f6fbf2c43'),
(647, 48, 'pricing_table_5_description', 'browse our range of medical devices, dermal fillers, branded pharmaceuticals, and more at a price that is fair and reflective of the market.'),
(648, 48, '_pricing_table_5_description', 'field_60f7f701f2c44'),
(649, 48, 'pricing_table_6_title', 'Fulfilment'),
(650, 48, '_pricing_table_6_title', 'field_60f7f6fbf2c43'),
(651, 48, 'pricing_table_6_description', 'join our network and monitor your inventory from around the world.'),
(652, 48, '_pricing_table_6_description', 'field_60f7f701f2c44'),
(653, 48, 'pricing_table_7_title', 'Cold chain shipping'),
(654, 48, '_pricing_table_7_title', 'field_60f7f6fbf2c43'),
(655, 48, 'pricing_table_7_description', 'a cold chain storage room that is monitored 24/7 by our temperature-regulated system.'),
(656, 48, '_pricing_table_7_description', 'field_60f7f701f2c44'),
(657, 48, 'pricing_table_8_title', 'International shipping'),
(658, 48, '_pricing_table_8_title', 'field_60f7f6fbf2c43'),
(659, 48, 'pricing_table_8_description', 'our globally renowned couriers work with customers to offer live-tracking and fast shipping.'),
(660, 48, '_pricing_table_8_description', 'field_60f7f701f2c44'),
(661, 48, 'pricing_table', '9'),
(662, 48, '_pricing_table', 'field_60f7f653e9011'),
(663, 49, '_wp_attached_file', '2021/07/hero-home.jpg'),
(664, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1332;s:4:\"file\";s:21:\"2021/07/hero-home.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 35, '_yoast_wpseo_content_score', '30'),
(666, 35, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(667, 50, '_menu_item_type', 'post_type'),
(668, 50, '_menu_item_menu_item_parent', '0'),
(669, 50, '_menu_item_object_id', '35'),
(670, 50, '_menu_item_object', 'page'),
(671, 50, '_menu_item_target', ''),
(672, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(673, 50, '_menu_item_xfn', ''),
(674, 50, '_menu_item_url', ''),
(676, 51, '_menu_item_type', 'post_type'),
(677, 51, '_menu_item_menu_item_parent', '0'),
(678, 51, '_menu_item_object_id', '23'),
(679, 51, '_menu_item_object', 'page'),
(680, 51, '_menu_item_target', ''),
(681, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(682, 51, '_menu_item_xfn', ''),
(683, 51, '_menu_item_url', ''),
(685, 52, '_menu_item_type', 'post_type'),
(686, 52, '_menu_item_menu_item_parent', '0'),
(687, 52, '_menu_item_object_id', '2'),
(688, 52, '_menu_item_object', 'page'),
(689, 52, '_menu_item_target', ''),
(690, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(691, 52, '_menu_item_xfn', ''),
(692, 52, '_menu_item_url', ''),
(694, 53, '_menu_item_type', 'custom'),
(695, 53, '_menu_item_menu_item_parent', '0'),
(696, 53, '_menu_item_object_id', '53'),
(697, 53, '_menu_item_object', 'custom'),
(698, 53, '_menu_item_target', ''),
(699, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(700, 53, '_menu_item_xfn', ''),
(701, 53, '_menu_item_url', '#'),
(702, 53, '_menu_item_orphaned', '1627299381'),
(703, 54, '_menu_item_type', 'custom'),
(704, 54, '_menu_item_menu_item_parent', '0'),
(705, 54, '_menu_item_object_id', '54'),
(706, 54, '_menu_item_object', 'custom'),
(707, 54, '_menu_item_target', ''),
(708, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(709, 54, '_menu_item_xfn', ''),
(710, 54, '_menu_item_url', '#'),
(721, 56, '_wp_trash_meta_status', 'publish'),
(722, 56, '_wp_trash_meta_time', '1627304859'),
(723, 57, '_wp_trash_meta_status', 'publish'),
(724, 57, '_wp_trash_meta_time', '1627304870'),
(725, 58, '_edit_lock', '1627305287:1'),
(726, 58, '_edit_last', '1'),
(727, 58, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(728, 1, '_edit_lock', '1627305852:1'),
(729, 61, '_wp_trash_meta_status', 'publish'),
(730, 61, '_wp_trash_meta_time', '1627305474');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-07-15 11:11:11', '2021-07-15 11:11:11', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-07-15 11:11:11', '2021-07-15 11:11:11', '', 0, 'http://amata.test/?p=1', 0, 'post', '', 1),
(2, 1, '2021-07-15 11:11:11', '2021-07-15 11:11:11', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'publish', 'closed', 'open', '', 'home-page', '', '', '2021-07-16 13:02:10', '2021-07-16 13:02:10', '', 0, 'http://amata.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-07-15 11:11:11', '2021-07-15 11:11:11', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://amata.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-07-15 11:11:11', '2021-07-15 11:11:11', '', 0, 'http://amata.test/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-07-15 11:33:03', '2021-07-15 11:33:03', '<div class=\"contact-input\"> \r\n<label> Your name\r\n    [text* your-name] </label>\r\n<label> Your Last Name\r\n[text YourLastName]\r\n </label>\r\n</div>\r\n<div class=\"contact-input\"> \r\n<label> Your email\r\n    [email* your-email] </label>\r\n<label> Your Phone Number\r\n[number YourPhoneNumber placeholder]\r\n </label>\r\n</div>\r\n<label> Services you are interested in:\r\n[select services id:services \"Fullfilment \" \"nesto 2 \" \"nesto 3\"]\r\n </label>\r\n<label> Your message:\r\n    [textarea your-message] </label>\r\n\r\n[submit class:button__pill--large-secondary \"Send\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amata.test>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@amata.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-07-26 10:24:29', '2021-07-26 10:24:29', '', 0, 'http://amata.test/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2021-07-15 11:38:15', '2021-07-15 11:38:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-15 11:38:15', '2021-07-15 11:38:15', '', 2, 'http://amata.test/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-07-21 09:31:09', '2021-07-15 12:06:47', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-07-21 09:31:09', '2021-07-21 09:31:09', '', 0, 'http://amata.test/?p=7', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-07-21 09:31:09', '2021-07-15 12:06:47', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-07-21 09:31:09', '2021-07-21 09:31:09', '', 0, 'http://amata.test/?p=9', 3, 'nav_menu_item', '', 0),
(11, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_60f176711f5bb', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 0, 'http://amata.test/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'SECTION - SERVICES', 'section_-_services', 'publish', 'closed', 'closed', '', 'field_60f1768b491c7', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 11, 'http://amata.test/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60f176a8491c8', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 11, 'http://amata.test/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_60f176b2491c9', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 11, 'http://amata.test/?post_type=acf-field&p=14', 2, 'acf-field', '', 0),
(15, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'field_60f176cb491ca', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 11, 'http://amata.test/?post_type=acf-field&p=15', 3, 'acf-field', '', 0),
(16, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_60f17792491cb', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 15, 'http://amata.test/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60f177a2491cc', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 15, 'http://amata.test/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2021-07-16 12:12:37', '2021-07-16 12:12:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_60f177a8491cd', '', '', '2021-07-16 12:12:37', '2021-07-16 12:12:37', '', 15, 'http://amata.test/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2021-07-16 12:23:40', '2021-07-16 12:23:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-16 12:23:40', '2021-07-16 12:23:40', '', 2, 'http://amata.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-07-16 12:25:36', '2021-07-16 12:25:36', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-16 12:25:36', '2021-07-16 12:25:36', '', 2, 'http://amata.test/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-07-16 13:00:51', '2021-07-16 13:00:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-16 13:00:51', '2021-07-16 13:00:51', '', 2, 'http://amata.test/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-07-16 13:02:10', '2021-07-16 13:02:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://amata.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-16 13:02:10', '2021-07-16 13:02:10', '', 2, 'http://amata.test/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-07-19 08:28:45', '2021-07-19 08:28:45', '', 'F.A.Q page', '', 'publish', 'closed', 'closed', '', 'faq-page', '', '', '2021-07-21 09:24:54', '2021-07-21 09:24:54', '', 0, 'http://amata.test/?page_id=23', 0, 'page', '', 0),
(24, 1, '2021-07-19 08:28:45', '2021-07-19 08:28:45', '', 'F.A.Q page', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-07-19 08:28:45', '2021-07-19 08:28:45', '', 23, 'http://amata.test/?p=24', 0, 'revision', '', 0),
(26, 1, '2021-07-20 12:42:33', '2021-07-20 12:42:33', '', 'amata logo horizontal', '', 'inherit', 'open', 'closed', '', 'amata-logo-horizontal', '', '', '2021-07-20 12:42:33', '2021-07-20 12:42:33', '', 0, 'http://amata.test/wp-content/uploads/2021/07/amata-logo-horizontal.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-07-21 09:31:09', '2021-07-21 09:18:47', '', 'F.A.Q', '', 'publish', 'closed', 'closed', '', 'f-a-q-2', '', '', '2021-07-21 09:31:09', '2021-07-21 09:31:09', '', 0, 'http://amata.test/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2021-07-21 09:21:09', '2021-07-21 09:21:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"template-faq.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'FAQ page', 'faq-page', 'publish', 'closed', 'closed', '', 'group_60f7e6ee28357', '', '', '2021-07-21 09:22:27', '2021-07-21 09:22:27', '', 0, 'http://amata.test/?post_type=acf-field-group&#038;p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2021-07-21 09:22:26', '2021-07-21 09:22:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_60f7e70c83b6a', '', '', '2021-07-21 09:22:26', '2021-07-21 09:22:26', '', 28, 'http://amata.test/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2021-07-21 09:22:26', '2021-07-21 09:22:26', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'FAQ Accordion', 'faq_accordion', 'publish', 'closed', 'closed', '', 'field_60f7e71483b6b', '', '', '2021-07-21 09:22:26', '2021-07-21 09:22:26', '', 28, 'http://amata.test/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2021-07-21 09:22:26', '2021-07-21 09:22:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ID', 'id', 'publish', 'closed', 'closed', '', 'field_60f7e73b83b6c', '', '', '2021-07-21 09:22:26', '2021-07-21 09:22:26', '', 30, 'http://amata.test/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2021-07-21 09:22:26', '2021-07-21 09:22:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_60f7e74283b6d', '', '', '2021-07-21 09:22:26', '2021-07-21 09:22:26', '', 30, 'http://amata.test/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2021-07-21 09:22:27', '2021-07-21 09:22:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_60f7e74883b6e', '', '', '2021-07-21 09:22:27', '2021-07-21 09:22:27', '', 30, 'http://amata.test/?post_type=acf-field&p=33', 2, 'acf-field', '', 0),
(34, 1, '2021-07-21 09:24:54', '2021-07-21 09:24:54', '', 'F.A.Q page', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-07-21 09:24:54', '2021-07-21 09:24:54', '', 23, 'http://amata.test/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-07-21 09:30:14', '2021-07-21 09:30:14', '<!-- wp:heading {\"level\":1} -->\n<h1>We want your business to succeed, which is why we offer a pick-and-choose service – simply choose from any of the services you need below, and we’ll compile it into a package that fits your needs.</h1>\n<!-- /wp:heading -->', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2021-07-22 09:32:15', '2021-07-22 09:32:15', '', 0, 'http://amata.test/?page_id=35', 0, 'page', '', 0),
(36, 1, '2021-07-21 09:30:14', '2021-07-21 09:30:14', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-21 09:30:14', '2021-07-21 09:30:14', '', 35, 'http://amata.test/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-07-21 09:31:09', '2021-07-21 09:31:09', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-07-21 09:31:09', '2021-07-21 09:31:09', '', 0, 'http://amata.test/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-07-21 10:23:36', '2021-07-21 10:23:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"template-pricing.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Pricing', 'pricing', 'publish', 'closed', 'closed', '', 'group_60f7f58ac4dda', '', '', '2021-07-21 10:29:31', '2021-07-21 10:29:31', '', 0, 'http://amata.test/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2021-07-21 10:28:59', '2021-07-21 10:28:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading', 'publish', 'closed', 'closed', '', 'field_60f7f638e900f', '', '', '2021-07-21 10:28:59', '2021-07-21 10:28:59', '', 38, 'http://amata.test/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2021-07-21 10:28:59', '2021-07-21 10:28:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_60f7f63ee9010', '', '', '2021-07-21 10:28:59', '2021-07-21 10:28:59', '', 38, 'http://amata.test/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2021-07-21 10:28:59', '2021-07-21 10:28:59', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";}', 'Pricing table', 'pricing_table', 'publish', 'closed', 'closed', '', 'field_60f7f653e9011', '', '', '2021-07-21 10:28:59', '2021-07-21 10:28:59', '', 38, 'http://amata.test/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 1, '2021-07-21 10:29:31', '2021-07-21 10:29:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_60f7f6fbf2c43', '', '', '2021-07-21 10:29:31', '2021-07-21 10:29:31', '', 41, 'http://amata.test/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2021-07-21 10:29:31', '2021-07-21 10:29:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_60f7f701f2c44', '', '', '2021-07-21 10:29:31', '2021-07-21 10:29:31', '', 41, 'http://amata.test/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2021-07-21 10:48:10', '2021-07-21 10:48:10', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-21 10:48:10', '2021-07-21 10:48:10', '', 35, 'http://amata.test/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-07-21 10:51:51', '2021-07-21 10:51:51', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-21 10:51:51', '2021-07-21 10:51:51', '', 35, 'http://amata.test/?p=45', 0, 'revision', '', 0),
(47, 1, '2021-07-21 11:17:23', '2021-07-21 11:17:23', '', 'hero-home', '', 'inherit', 'open', 'closed', '', 'hero-home', '', '', '2021-07-21 11:17:23', '2021-07-21 11:17:23', '', 35, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-07-21 12:08:03', '2021-07-21 12:08:03', '<!-- wp:heading {\"level\":1} -->\n<h1>We want your business to succeed, which is why we offer a pick-and-choose service – simply choose from any of the services you need below, and we’ll compile it into a package that fits your needs.</h1>\n<!-- /wp:heading -->', 'Pricing', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-07-21 12:08:03', '2021-07-21 12:08:03', '', 35, 'http://amata.test/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-07-22 09:32:12', '2021-07-22 09:32:12', '', 'hero-home', '', 'inherit', 'open', 'closed', '', 'hero-home-2', '', '', '2021-07-22 09:32:12', '2021-07-22 09:32:12', '', 35, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-07-26 12:58:26', '2021-07-26 11:19:47', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-07-26 12:58:26', '2021-07-26 12:58:26', '', 0, 'http://amata.test/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2021-07-26 12:58:26', '2021-07-26 11:19:47', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2021-07-26 12:58:26', '2021-07-26 12:58:26', '', 0, 'http://amata.test/?p=51', 3, 'nav_menu_item', '', 0),
(52, 1, '2021-07-26 12:58:26', '2021-07-26 11:19:47', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-07-26 12:58:26', '2021-07-26 12:58:26', '', 0, 'http://amata.test/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2021-07-26 11:36:21', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-07-26 11:36:21', '0000-00-00 00:00:00', '', 0, 'http://amata.test/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2021-07-26 12:58:26', '2021-07-26 11:40:20', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-07-26 12:58:26', '2021-07-26 12:58:26', '', 0, 'http://amata.test/?p=54', 4, 'nav_menu_item', '', 0),
(56, 1, '2021-07-26 13:07:39', '2021-07-26 13:07:39', '{\n    \"blogdescription\": {\n        \"value\": \"Solutions that make a difference.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-26 13:07:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e31dd932-ab75-4288-af28-5563a1265bf8', '', '', '2021-07-26 13:07:39', '2021-07-26 13:07:39', '', 0, 'http://amata.test/index.php/2021/07/26/e31dd932-ab75-4288-af28-5563a1265bf8/', 0, 'customize_changeset', '', 0),
(57, 1, '2021-07-26 13:07:50', '2021-07-26 13:07:50', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-26 13:07:50\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-26 13:07:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '85385622-83cf-4085-a77b-7e2d43dc32f8', '', '', '2021-07-26 13:07:50', '2021-07-26 13:07:50', '', 0, 'http://amata.test/index.php/2021/07/26/85385622-83cf-4085-a77b-7e2d43dc32f8/', 0, 'customize_changeset', '', 0),
(58, 1, '2021-07-26 13:14:46', '2021-07-26 13:14:46', '', 'Post page', '', 'publish', 'closed', 'closed', '', 'post-page', '', '', '2021-07-26 13:14:47', '2021-07-26 13:14:47', '', 0, 'http://amata.test/?page_id=58', 0, 'page', '', 0),
(59, 1, '2021-07-26 13:14:46', '2021-07-26 13:14:46', '', 'Post page', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2021-07-26 13:14:46', '2021-07-26 13:14:46', '', 58, 'http://amata.test/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-07-26 13:15:12', '2021-07-26 13:15:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2021-07-26 13:15:12', '2021-07-26 13:15:12', '', 1, 'http://amata.test/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-07-26 13:17:54', '2021-07-26 13:17:54', '{\n    \"page_for_posts\": {\n        \"value\": \"58\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-26 13:17:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4898491-a268-4640-ac38-05121aefb987', '', '', '2021-07-26 13:17:54', '2021-07-26 13:17:54', '', 0, 'http://amata.test/index.php/2021/07/26/c4898491-a268-4640-ac38-05121aefb987/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Mobile Menu', 'mobile-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(9, 2, 0),
(27, 2, 0),
(37, 2, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(54, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'amata_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"5e48c44af0351ff0919a19d32c94258e9ff30919725bd02f4f2e6f1b7872e956\";a:4:{s:10:\"expiration\";i:1627557096;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1626347496;}s:64:\"3037ac5d5cb63b71993240854b77fe33943e201b71a727eb0b75597e55f7fa82\";a:4:{s:10:\"expiration\";i:1628155608;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36\";s:5:\"login\";i:1626946008;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:\"add-post-type-focal-point\";i:1;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1626859066'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:287:\"<p>Because of a change in your permalink structure, some of your SEO data needs to be reprocessed.</p><p>We estimate this will take less than a minute.</p><a class=\"button\" href=\"http://amata.test/wp-admin/admin.php?page=wpseo_tools&start-indexation=true\">Start SEO data optimization</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"amata_admin\";s:9:\"user_pass\";s:34:\"$P$BfGR/Z2ZsoAmEcGCEJ8LVwbbZ311cU.\";s:13:\"user_nicename\";s:11:\"amata_admin\";s:10:\"user_email\";s:23:\"lenka.zivkovic@forga.io\";s:8:\"user_url\";s:17:\"http://amata.test\";s:15:\"user_registered\";s:19:\"2021-07-15 11:11:10\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"amata_admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:330:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://amata.test/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";r:7;s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, 'tgmpa_dismissed_notice_plugin-install', '1'),
(26, 1, 'closedpostboxes_', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(27, 1, 'metaboxhidden_', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'amata_admin', '$P$BfGR/Z2ZsoAmEcGCEJ8LVwbbZ311cU.', 'amata_admin', 'lenka.zivkovic@forga.io', 'http://amata.test', '2021-07-15 11:11:10', '', 0, 'amata_admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(1, 'http://amata.test/index.php/author/amata_admin/', '47:0da6a794c79e5b2326e2233d9531dd04', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/42f35fc015834eda6964c4855e809916?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/42f35fc015834eda6964c4855e809916?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-07-22 09:29:05', '2021-07-26 11:17:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(2, 'http://amata.test/', '18:e42a55c59b2d0c4be6df6be6fdf5797a', 2, 'post', 'page', 1, 0, NULL, NULL, 'Home Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 09:29:05', '2021-07-26 11:07:50', 1, NULL, NULL, NULL, NULL, 0, NULL),
(3, 'http://amata.test/', '18:e42a55c59b2d0c4be6df6be6fdf5797a', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Solutions that make a difference.', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2021-07-22 09:29:05', '2021-07-26 11:07:39', 1, NULL, NULL, NULL, NULL, 0, NULL),
(4, 'http://amata.test/index.php/faq-page/', '37:8ba313f79416491114c630210c777e9d', 23, 'post', 'page', 1, 0, NULL, NULL, 'F.A.Q page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 09:29:33', '2021-07-22 07:29:33', 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'http://amata.test/index.php/pricing/', '36:133d25214134d27340c93515b168e306', 35, 'post', 'page', 1, 0, NULL, NULL, 'Pricing', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', NULL, '49', 'featured-image', NULL, NULL, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', '49', 'featured-image', '{\"width\":1920,\"height\":1332,\"url\":\"http://amata.test/wp-content/uploads/2021/07/hero-home.jpg\",\"path\":\"C:\\\\Users\\\\velim\\\\Documents\\\\sites\\\\amata/wp-content/uploads/2021/07/hero-home.jpg\",\"size\":\"full\",\"id\":49,\"alt\":\"\",\"pixels\":2557440,\"type\":\"image/jpeg\"}', 0, NULL, NULL, '2021-07-22 09:29:43', '2021-07-22 07:32:15', 1, NULL, NULL, NULL, NULL, 0, 1),
(6, 'http://amata.test/?page_id=3', '28:41d3b7391b90f6de2ccf4dbe2b6c6d8a', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 09:30:08', '2021-07-22 07:30:08', 1, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', '58:33b8c5af04c3cb4eef70c6281e3e61b7', 47, 'post', 'attachment', 1, 35, NULL, NULL, 'hero-home', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', NULL, '47', 'attachment-image', NULL, NULL, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', '47', 'attachment-image', '{\"width\":1920,\"height\":1332,\"url\":\"http://amata.test/wp-content/uploads/2021/07/hero-home.jpg\",\"path\":\"C:\\\\Users\\\\velim\\\\Documents\\\\sites\\\\amata/wp-content/uploads/2021/07/hero-home.jpg\",\"size\":\"full\",\"id\":47,\"alt\":\"\",\"pixels\":2557440,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2021-07-22 09:30:13', '2021-07-22 07:30:13', 1, NULL, NULL, NULL, NULL, 0, NULL),
(8, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', '58:33b8c5af04c3cb4eef70c6281e3e61b7', 49, 'post', 'attachment', 1, 35, NULL, NULL, 'hero-home', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://amata.test/wp-content/uploads/2021/07/hero-home.jpg', NULL, '49', 'attachment-image', NULL, NULL, NULL, '49', 'attachment-image', NULL, NULL, NULL, NULL, '2021-07-22 09:32:12', '2021-07-22 07:32:12', 1, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'http://amata.test/?post_type=wpcf7_contact_form&p=5', '51:c44e14abbee7e37c4a1858d9ad8bb3b6', 5, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-22 09:49:26', '2021-07-26 08:24:29', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 10:21:54', '2021-07-26 08:21:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(11, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 10:21:54', '2021-07-26 08:21:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'http://amata.test/index.php/2021/07/26/50/', '42:fe47a3947c74211077cd93136d54bfdd', 50, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-26 11:19:44', '2021-07-26 10:58:26', 1, NULL, NULL, NULL, NULL, 0, NULL),
(13, 'http://amata.test/index.php/2021/07/26/51/', '42:1124c1d72ba7baa3ae7bfb54ac041d0c', 51, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-26 11:19:44', '2021-07-26 10:58:26', 1, NULL, NULL, NULL, NULL, 0, NULL),
(14, 'http://amata.test/index.php/2021/07/26/52/', '42:b638ef873d42620f090b788656241649', 52, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-26 11:19:44', '2021-07-26 10:58:26', 1, NULL, NULL, NULL, NULL, 0, NULL),
(15, 'http://amata.test/?p=53', '23:911aae8d0f3694a9266008be80df3f2a', 53, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Home', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 11:36:21', '2021-07-26 09:36:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(16, 'http://amata.test/index.php/2021/07/26/contact-us/', '50:ecb9b4147ad7880362b0d0f853842530', 54, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-26 11:40:17', '2021-07-26 10:58:26', 1, NULL, NULL, NULL, NULL, 0, NULL),
(18, 'http://amata.test/?p=56', '23:6ba9b7ec5d32f5b4dd707d5580c7f2ac', 56, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 13:07:39', '2021-07-26 11:07:39', 1, NULL, NULL, NULL, NULL, 0, NULL),
(19, 'http://amata.test/?p=57', '23:231a7350b893cb184033ec98e67486a7', 57, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 13:07:50', '2021-07-26 11:07:50', 1, NULL, NULL, NULL, NULL, 0, NULL),
(20, 'http://amata.test/index.php/post-page/', '38:927a7665819628ec9bcb9a2f4c70ae18', 58, 'post', 'page', 1, 0, NULL, NULL, 'Post page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-26 13:14:46', '2021-07-26 11:14:47', 1, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'http://amata.test/index.php/2021/07/15/hello-world/', '51:7dcb7569d5cccaf747453d3bfcac64ae', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 13:15:04', '2021-07-26 11:15:04', 1, NULL, NULL, NULL, NULL, 0, NULL),
(22, 'http://amata.test/?p=61', '23:ba77a9c7041dcb069461e1f35167358e', 61, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-26 13:17:54', '2021-07-26 11:17:54', 1, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int UNSIGNED NOT NULL,
  `ancestor_id` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 5, 1, 1),
(8, 5, 1, 1),
(9, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int UNSIGNED NOT NULL,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `target_post_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `target_indexable_id` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
