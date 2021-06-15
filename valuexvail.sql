-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 15 2021 г., 19:02
-- Версия сервера: 5.7.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `valuexvail`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress-valuexvail', 'yes'),
(2, 'home', 'http://localhost/wordpress-valuexvail', 'yes'),
(3, 'blogname', 'Valuexvail', 'yes'),
(4, 'blogdescription', 'Valuexvail description', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp_valuexvail', 'yes'),
(41, 'stylesheet', 'wp_valuexvail', 'yes'),
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
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '16', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '7', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1638798686', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1623775888;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1623808288;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1623851487;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1623851495;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1623851496;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1623937887;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"7R1pgrGR3c3JFha33xiIYE\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BjbVUoz7FMbW/bNnmA.diNPtywO0zh.\";s:10:\"created_at\";i:1623696864;}}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1623772764;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1623772766;s:7:\"checked\";a:1:{s:13:\"wp_valuexvail\";s:62:\"номер-версии--необязательное-поле\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_timeout_browser_6b44f837f1cd830684f2027e365cfbef', '1623851495', 'no'),
(127, '_site_transient_browser_6b44f837f1cd830684f2027e365cfbef', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"76.0.4017.123\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_80bc207537711bbc111e88c4ab5d2dc5', '1623851496', 'no'),
(129, '_site_transient_php_check_80bc207537711bbc111e88c4ab5d2dc5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(144, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623246736;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'current_theme', 'Valuexvail', 'yes'),
(146, 'theme_mods_wp_valuexvail', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:109;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(155, 'WPLANG', '', 'yes'),
(156, 'new_admin_email', 'admin@admin.com', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(163, '_site_transient_timeout_browser_47d40a90119cf21ed22d18ba81e45024', '1623857287', 'no'),
(164, '_site_transient_browser_47d40a90119cf21ed22d18ba81e45024', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:13:\"76.0.4017.177\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(165, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1623857288', 'no'),
(166, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(187, '_transient_health-check-site-status-result', '{\"good\":\"14\",\"recommended\":\"4\",\"critical\":\"2\"}', 'yes'),
(207, 'acf_version', '5.9.6', 'yes'),
(209, '_transient_timeout_acf_plugin_updates', '1623845362', 'no'),
(210, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";}}', 'no'),
(214, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1623772766;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:5:\"4.8.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/mailchimp-for-wp\";s:4:\"slug\";s:16:\"mailchimp-for-wp\";s:6:\"plugin\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:11:\"new_version\";s:5:\"4.8.5\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/mailchimp-for-wp/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-256x256.png?rev=1224577\";s:2:\"1x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-128x128.png?rev=1224577\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/mailchimp-for-wp/assets/banner-772x250.png?rev=1184706\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(215, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(216, 'mc4wp_version', '4.8.5', 'yes'),
(217, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(218, 'mc4wp', 'a:6:{s:19:\"grecaptcha_site_key\";s:0:\"\";s:21:\"grecaptcha_secret_key\";s:0:\"\";s:7:\"api_key\";s:0:\"\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1623672983;}', 'yes'),
(221, 'mc4wp_default_form_id', '32', 'yes'),
(222, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(248, 'recovery_mode_email_last_sent', '1623696864', 'yes'),
(266, 'category_children', 'a:0:{}', 'yes'),
(272, '_site_transient_timeout_theme_roots', '1623774565', 'no'),
(273, '_site_transient_theme_roots', 'a:1:{s:13:\"wp_valuexvail\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1623248014'),
(5, 6, '_wp_attached_file', '2021/06/index.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:17:\"2021/06/index.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"index-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"index-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2021/06/cropped-index.png'),
(8, 7, '_wp_attachment_context', 'site-icon'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2021/06/cropped-index.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-index-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-index-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-index-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-index-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-index-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-index-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1623248071'),
(12, 9, '_wp_attached_file', '2021/06/cropped-cropped-index.png'),
(13, 9, '_wp_attachment_context', 'custom-logo'),
(14, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:190;s:4:\"file\";s:33:\"2021/06/cropped-cropped-index.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-cropped-index-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 10, '_wp_trash_meta_status', 'publish'),
(16, 10, '_wp_trash_meta_time', '1623257378'),
(17, 11, '_menu_item_type', 'custom'),
(18, 11, '_menu_item_menu_item_parent', '0'),
(19, 11, '_menu_item_object_id', '11'),
(20, 11, '_menu_item_object', 'custom'),
(21, 11, '_menu_item_target', ''),
(22, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 11, '_menu_item_xfn', ''),
(24, 11, '_menu_item_url', 'http://localhost/wordpress-valuexvail/'),
(25, 11, '_menu_item_orphaned', '1623257684'),
(41, 15, '_edit_lock', '1623257855:1'),
(42, 16, '_edit_last', '1'),
(43, 16, '_edit_lock', '1623772857:1'),
(44, 18, '_edit_last', '1'),
(45, 18, '_edit_lock', '1623257991:1'),
(46, 20, '_edit_last', '1'),
(47, 20, '_edit_lock', '1623258019:1'),
(48, 22, '_edit_last', '1'),
(49, 22, '_edit_lock', '1623258076:1'),
(50, 24, '_edit_last', '1'),
(51, 24, '_edit_lock', '1623258080:1'),
(52, 26, '_menu_item_type', 'custom'),
(53, 26, '_menu_item_menu_item_parent', '0'),
(54, 26, '_menu_item_object_id', '26'),
(55, 26, '_menu_item_object', 'custom'),
(56, 26, '_menu_item_target', ''),
(57, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 26, '_menu_item_xfn', ''),
(59, 26, '_menu_item_url', 'http://localhost/wordpress-valuexvail/'),
(61, 27, '_menu_item_type', 'post_type'),
(62, 27, '_menu_item_menu_item_parent', '0'),
(63, 27, '_menu_item_object_id', '24'),
(64, 27, '_menu_item_object', 'page'),
(65, 27, '_menu_item_target', ''),
(66, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 27, '_menu_item_xfn', ''),
(68, 27, '_menu_item_url', ''),
(70, 28, '_menu_item_type', 'post_type'),
(71, 28, '_menu_item_menu_item_parent', '0'),
(72, 28, '_menu_item_object_id', '22'),
(73, 28, '_menu_item_object', 'page'),
(74, 28, '_menu_item_target', ''),
(75, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 28, '_menu_item_xfn', ''),
(77, 28, '_menu_item_url', ''),
(79, 29, '_menu_item_type', 'post_type'),
(80, 29, '_menu_item_menu_item_parent', '0'),
(81, 29, '_menu_item_object_id', '20'),
(82, 29, '_menu_item_object', 'page'),
(83, 29, '_menu_item_target', ''),
(84, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 29, '_menu_item_xfn', ''),
(86, 29, '_menu_item_url', ''),
(88, 30, '_menu_item_type', 'post_type'),
(89, 30, '_menu_item_menu_item_parent', '0'),
(90, 30, '_menu_item_object_id', '18'),
(91, 30, '_menu_item_object', 'page'),
(92, 30, '_menu_item_target', ''),
(93, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 30, '_menu_item_xfn', ''),
(95, 30, '_menu_item_url', ''),
(98, 16, '_wp_page_template', 'template-parts/page-home.php'),
(99, 32, '_mc4wp_settings', 'a:9:{s:15:\"required_fields\";s:5:\"EMAIL\";s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";s:15:\"subscriber_tags\";s:0:\"\";s:18:\"hide_after_success\";s:1:\"0\";s:8:\"redirect\";s:0:\"\";s:3:\"css\";s:1:\"0\";s:5:\"lists\";a:0:{}}'),
(100, 32, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(101, 32, 'text_invalid_email', 'Please provide a valid email address.'),
(102, 32, 'text_required_field_missing', 'Please fill in the required fields.'),
(103, 32, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(104, 32, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(105, 32, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(106, 32, 'text_not_subscribed', 'Given email address is not subscribed.'),
(107, 32, 'text_no_lists_selected', 'Please select at least one list.'),
(108, 32, 'text_updated', 'Thank you, your records have been updated!'),
(109, 33, '_edit_last', '1'),
(110, 33, '_edit_lock', '1623772856:1'),
(111, 16, 'title', ''),
(112, 16, '_title', 'field_60c74eafdd15d'),
(117, 16, 'constructor_home_page_data_0_image', ''),
(118, 16, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(119, 16, 'constructor_home_page_data', 'a:3:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";i:2;s:14:\"sin_up_section\";}'),
(120, 16, '_constructor_home_page_data', 'field_60c7508f85c29'),
(121, 40, 'title', ''),
(122, 40, '_title', 'field_60c74eafdd15d'),
(123, 40, 'constructor_home_page_data_0_turn_on', '1'),
(124, 40, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(125, 40, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(126, 40, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(127, 40, 'constructor_home_page_data_0_image', ''),
(128, 40, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(129, 40, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(130, 40, '_constructor_home_page_data', 'field_60c7508f85c29'),
(135, 16, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(136, 16, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(137, 44, 'title', ''),
(138, 44, '_title', 'field_60c74eafdd15d'),
(139, 44, 'constructor_home_page_data_0_turn_on', '1'),
(140, 44, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(141, 44, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(142, 44, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(143, 44, 'constructor_home_page_data_0_image', ''),
(144, 44, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(145, 44, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(146, 44, '_constructor_home_page_data', 'field_60c7508f85c29'),
(147, 44, 'constructor_home_page_data_0_presentation', ''),
(148, 44, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(149, 46, '_wp_attached_file', '2021/06/SPOTIFY-TECHNOLOGY-SA-SPOT.pdf'),
(150, 46, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:34:\"SPOTIFY-TECHNOLOGY-SA-SPOT-pdf.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"SPOTIFY-TECHNOLOGY-SA-SPOT-pdf-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"SPOTIFY-TECHNOLOGY-SA-SPOT-pdf-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"SPOTIFY-TECHNOLOGY-SA-SPOT-pdf-150x113.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(169, 51, '_wp_attached_file', '2021/06/Spotify-Technology.png'),
(170, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:819;s:6:\"height\";i:611;s:4:\"file\";s:30:\"2021/06/Spotify-Technology.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Spotify-Technology-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Spotify-Technology-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Spotify-Technology-768x573.png\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 52, 'title', ''),
(175, 52, '_title', 'field_60c74eafdd15d'),
(176, 52, 'constructor_home_page_data_0_turn_on', '1'),
(177, 52, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(178, 52, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(179, 52, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(180, 52, 'constructor_home_page_data_0_image', ''),
(181, 52, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(182, 52, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(183, 52, '_constructor_home_page_data', 'field_60c7508f85c29'),
(184, 52, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"45\";}'),
(185, 52, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(186, 53, 'title', ''),
(187, 53, '_title', 'field_60c74eafdd15d'),
(188, 53, 'constructor_home_page_data_0_turn_on', '0'),
(189, 53, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(190, 53, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(191, 53, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(192, 53, 'constructor_home_page_data_0_image', ''),
(193, 53, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(194, 53, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(195, 53, '_constructor_home_page_data', 'field_60c7508f85c29'),
(196, 53, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"45\";}'),
(197, 53, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(198, 54, 'title', ''),
(199, 54, '_title', 'field_60c74eafdd15d'),
(200, 54, 'constructor_home_page_data_0_turn_on', '1'),
(201, 54, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(202, 54, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(203, 54, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(204, 54, 'constructor_home_page_data_0_image', ''),
(205, 54, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(206, 54, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(207, 54, '_constructor_home_page_data', 'field_60c7508f85c29'),
(208, 54, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"45\";}'),
(209, 54, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(226, 71, 'title', ''),
(227, 71, '_title', 'field_60c74eafdd15d'),
(228, 71, 'constructor_home_page_data_0_turn_on', '1'),
(229, 71, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(230, 71, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(231, 71, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(232, 71, 'constructor_home_page_data_0_image', ''),
(233, 71, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(234, 71, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(235, 71, '_constructor_home_page_data', 'field_60c7508f85c29'),
(236, 71, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"70\";}'),
(237, 71, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(238, 72, 'title', ''),
(239, 72, '_title', 'field_60c74eafdd15d'),
(240, 72, 'constructor_home_page_data_0_turn_on', '0'),
(241, 72, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(242, 72, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(243, 72, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(244, 72, 'constructor_home_page_data_0_image', ''),
(245, 72, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(246, 72, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(247, 72, '_constructor_home_page_data', 'field_60c7508f85c29'),
(248, 72, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"70\";}'),
(249, 72, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(250, 73, 'title', ''),
(251, 73, '_title', 'field_60c74eafdd15d'),
(252, 73, 'constructor_home_page_data_0_turn_on', '1'),
(253, 73, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(254, 73, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(255, 73, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(256, 73, 'constructor_home_page_data_0_image', ''),
(257, 73, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(258, 73, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(259, 73, '_constructor_home_page_data', 'field_60c7508f85c29'),
(260, 73, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"70\";}'),
(261, 73, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(275, 77, 'title', ''),
(276, 77, '_title', 'field_60c74eafdd15d'),
(277, 77, 'constructor_home_page_data_0_turn_on', '1'),
(278, 77, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(279, 77, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(280, 77, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(281, 77, 'constructor_home_page_data_0_image', ''),
(282, 77, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(283, 77, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(284, 77, '_constructor_home_page_data', 'field_60c7508f85c29'),
(285, 77, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(286, 77, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(307, 82, 'title', ''),
(308, 82, '_title', 'field_60c74eafdd15d'),
(309, 82, 'constructor_home_page_data_0_turn_on', '1'),
(310, 82, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(311, 82, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(312, 82, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(313, 82, 'constructor_home_page_data_0_image', ''),
(314, 82, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(315, 82, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(316, 82, '_constructor_home_page_data', 'field_60c7508f85c29'),
(317, 82, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(318, 82, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(319, 82, 'constructor_home_page_data_0_presentation_block_0_title', 'Test 1'),
(320, 82, '_constructor_home_page_data_0_presentation_block_0_title', 'field_60c79a52694ca'),
(321, 82, 'constructor_home_page_data_0_presentation_block_0_image', '51'),
(322, 82, '_constructor_home_page_data_0_presentation_block_0_image', 'field_60c79a25694c9'),
(323, 82, 'constructor_home_page_data_0_presentation_block_0_file', '46'),
(324, 82, '_constructor_home_page_data_0_presentation_block_0_file', 'field_60c79a7c544ce'),
(325, 82, 'constructor_home_page_data_0_presentation_block', '1'),
(326, 82, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(333, 83, 'title', ''),
(334, 83, '_title', 'field_60c74eafdd15d'),
(335, 83, 'constructor_home_page_data_0_turn_on', '1'),
(336, 83, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(337, 83, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(338, 83, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(339, 83, 'constructor_home_page_data_0_image', ''),
(340, 83, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(341, 83, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(342, 83, '_constructor_home_page_data', 'field_60c7508f85c29'),
(343, 83, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(344, 83, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(345, 83, 'constructor_home_page_data_0_presentation_block_0_title', 'Test 1'),
(346, 83, '_constructor_home_page_data_0_presentation_block_0_title', 'field_60c79a52694ca'),
(347, 83, 'constructor_home_page_data_0_presentation_block_0_image', '51'),
(348, 83, '_constructor_home_page_data_0_presentation_block_0_image', 'field_60c79a25694c9'),
(349, 83, 'constructor_home_page_data_0_presentation_block_0_file', '46'),
(350, 83, '_constructor_home_page_data_0_presentation_block_0_file', 'field_60c79a7c544ce'),
(351, 83, 'constructor_home_page_data_0_presentation_block', '2'),
(352, 83, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(353, 83, 'constructor_home_page_data_0_presentation_block_1_title', 'Test 2'),
(354, 83, '_constructor_home_page_data_0_presentation_block_1_title', 'field_60c79a52694ca'),
(355, 83, 'constructor_home_page_data_0_presentation_block_1_image', '51'),
(356, 83, '_constructor_home_page_data_0_presentation_block_1_image', 'field_60c79a25694c9'),
(357, 83, 'constructor_home_page_data_0_presentation_block_1_file', '46'),
(358, 83, '_constructor_home_page_data_0_presentation_block_1_file', 'field_60c79a7c544ce'),
(371, 84, 'title', ''),
(372, 84, '_title', 'field_60c74eafdd15d'),
(373, 84, 'constructor_home_page_data_0_turn_on', '1'),
(374, 84, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(375, 84, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(376, 84, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(377, 84, 'constructor_home_page_data_0_image', ''),
(378, 84, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(379, 84, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(380, 84, '_constructor_home_page_data', 'field_60c7508f85c29'),
(381, 84, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(382, 84, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(383, 84, 'constructor_home_page_data_0_presentation_block_0_title', 'Test 1'),
(384, 84, '_constructor_home_page_data_0_presentation_block_0_title', 'field_60c79a52694ca'),
(385, 84, 'constructor_home_page_data_0_presentation_block_0_image', '51'),
(386, 84, '_constructor_home_page_data_0_presentation_block_0_image', 'field_60c79a25694c9'),
(387, 84, 'constructor_home_page_data_0_presentation_block_0_file', '46'),
(388, 84, '_constructor_home_page_data_0_presentation_block_0_file', 'field_60c79a7c544ce'),
(389, 84, 'constructor_home_page_data_0_presentation_block', '4'),
(390, 84, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(391, 84, 'constructor_home_page_data_0_presentation_block_1_title', 'Test 2'),
(392, 84, '_constructor_home_page_data_0_presentation_block_1_title', 'field_60c79a52694ca'),
(393, 84, 'constructor_home_page_data_0_presentation_block_1_image', '51'),
(394, 84, '_constructor_home_page_data_0_presentation_block_1_image', 'field_60c79a25694c9'),
(395, 84, 'constructor_home_page_data_0_presentation_block_1_file', '46'),
(396, 84, '_constructor_home_page_data_0_presentation_block_1_file', 'field_60c79a7c544ce'),
(397, 84, 'constructor_home_page_data_0_presentation_block_2_title', 'Test 3'),
(398, 84, '_constructor_home_page_data_0_presentation_block_2_title', 'field_60c79a52694ca'),
(399, 84, 'constructor_home_page_data_0_presentation_block_2_image', '51'),
(400, 84, '_constructor_home_page_data_0_presentation_block_2_image', 'field_60c79a25694c9'),
(401, 84, 'constructor_home_page_data_0_presentation_block_2_file', '46'),
(402, 84, '_constructor_home_page_data_0_presentation_block_2_file', 'field_60c79a7c544ce'),
(403, 84, 'constructor_home_page_data_0_presentation_block_3_title', 'Test 4'),
(404, 84, '_constructor_home_page_data_0_presentation_block_3_title', 'field_60c79a52694ca'),
(405, 84, 'constructor_home_page_data_0_presentation_block_3_image', '51'),
(406, 84, '_constructor_home_page_data_0_presentation_block_3_image', 'field_60c79a25694c9'),
(407, 84, 'constructor_home_page_data_0_presentation_block_3_file', '46'),
(408, 84, '_constructor_home_page_data_0_presentation_block_3_file', 'field_60c79a7c544ce'),
(412, 89, '_edit_last', '1'),
(413, 89, '_edit_lock', '1623772695:1'),
(416, 91, 'title', ''),
(417, 91, '_title', 'field_60c74eafdd15d'),
(418, 91, 'constructor_home_page_data_0_turn_on', '1'),
(419, 91, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(420, 91, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(421, 91, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(422, 91, 'constructor_home_page_data_0_image', ''),
(423, 91, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(424, 91, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(425, 91, '_constructor_home_page_data', 'field_60c7508f85c29'),
(426, 91, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(427, 91, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(428, 91, 'constructor_home_page_data_0_presentation_block', ''),
(429, 91, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(430, 92, 'title', ''),
(431, 92, '_title', 'field_60c74eafdd15d'),
(432, 92, 'constructor_home_page_data_0_turn_on', '1'),
(433, 92, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(434, 92, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(435, 92, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(436, 92, 'constructor_home_page_data_0_image', ''),
(437, 92, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(438, 92, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(439, 92, '_constructor_home_page_data', 'field_60c7508f85c29'),
(440, 92, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(441, 92, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(442, 92, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"88\";}'),
(443, 92, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(447, 93, '_edit_last', '1'),
(448, 93, '_edit_lock', '1623700148:1'),
(449, 93, '_thumbnail_id', '51'),
(450, 93, 'file', '46'),
(451, 93, '_file', 'field_60c7a9ab667a0'),
(452, 94, 'title', ''),
(453, 94, '_title', 'field_60c74eafdd15d'),
(454, 94, 'constructor_home_page_data_0_turn_on', '1'),
(455, 94, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(456, 94, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(457, 94, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(458, 94, 'constructor_home_page_data_0_image', ''),
(459, 94, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(460, 94, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(461, 94, '_constructor_home_page_data', 'field_60c7508f85c29'),
(462, 94, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(463, 94, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(464, 94, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"93\";}'),
(465, 94, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(466, 95, 'title', ''),
(467, 95, '_title', 'field_60c74eafdd15d'),
(468, 95, 'constructor_home_page_data_0_turn_on', '1'),
(469, 95, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(470, 95, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(471, 95, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(472, 95, 'constructor_home_page_data_0_image', ''),
(473, 95, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(474, 95, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(475, 95, '_constructor_home_page_data', 'field_60c7508f85c29'),
(476, 95, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(477, 95, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(478, 95, 'constructor_home_page_data_0_presentation_block', ''),
(479, 95, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(480, 96, 'title', ''),
(481, 96, '_title', 'field_60c74eafdd15d'),
(482, 96, 'constructor_home_page_data_0_turn_on', '1'),
(483, 96, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(484, 96, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(485, 96, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(486, 96, 'constructor_home_page_data_0_image', ''),
(487, 96, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(488, 96, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(489, 96, '_constructor_home_page_data', 'field_60c7508f85c29'),
(490, 96, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(491, 96, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(492, 96, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"93\";}'),
(493, 96, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(494, 97, 'title', ''),
(495, 97, '_title', 'field_60c74eafdd15d'),
(496, 97, 'constructor_home_page_data_0_turn_on', '1'),
(497, 97, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(498, 97, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(499, 97, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(500, 97, 'constructor_home_page_data_0_image', ''),
(501, 97, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(502, 97, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(503, 97, '_constructor_home_page_data', 'field_60c7508f85c29'),
(504, 97, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(505, 97, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(506, 97, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"93\";}'),
(507, 97, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(513, 99, 'title', ''),
(514, 99, '_title', 'field_60c74eafdd15d'),
(515, 99, 'constructor_home_page_data_0_turn_on', '1'),
(516, 99, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(517, 99, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(518, 99, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(519, 99, 'constructor_home_page_data_0_image', ''),
(520, 99, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(521, 99, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(522, 99, '_constructor_home_page_data', 'field_60c7508f85c29'),
(523, 99, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(524, 99, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(525, 99, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"93\";}'),
(526, 99, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(527, 100, 'title', ''),
(528, 100, '_title', 'field_60c74eafdd15d'),
(529, 100, 'constructor_home_page_data_0_turn_on', '1'),
(530, 100, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(531, 100, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(532, 100, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(533, 100, 'constructor_home_page_data_0_image', ''),
(534, 100, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(535, 100, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(536, 100, '_constructor_home_page_data', 'field_60c7508f85c29'),
(537, 100, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(538, 100, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(539, 100, 'constructor_home_page_data_0_presentation_block', ''),
(540, 100, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(541, 101, 'title', ''),
(542, 101, '_title', 'field_60c74eafdd15d'),
(543, 101, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(544, 101, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(545, 101, 'constructor_home_page_data_0_image', ''),
(546, 101, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(547, 101, 'constructor_home_page_data', ''),
(548, 101, '_constructor_home_page_data', 'field_60c7508f85c29'),
(549, 101, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(550, 101, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(555, 102, 'title', ''),
(556, 102, '_title', 'field_60c74eafdd15d'),
(557, 102, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(558, 102, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(559, 102, 'constructor_home_page_data_0_image', ''),
(560, 102, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(561, 102, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(562, 102, '_constructor_home_page_data', 'field_60c7508f85c29'),
(563, 102, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(564, 102, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(565, 102, 'constructor_home_page_data_0_turn_on', '1'),
(566, 102, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(567, 102, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"93\";}'),
(568, 102, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(569, 103, 'title', ''),
(570, 103, '_title', 'field_60c74eafdd15d'),
(571, 103, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(572, 103, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(573, 103, 'constructor_home_page_data_0_image', ''),
(574, 103, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(575, 103, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(576, 103, '_constructor_home_page_data', 'field_60c7508f85c29'),
(577, 103, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(578, 103, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(579, 103, 'constructor_home_page_data_0_turn_on', '1'),
(580, 103, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(581, 103, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"98\";}'),
(582, 103, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(584, 104, 'title', ''),
(585, 104, '_title', 'field_60c74eafdd15d'),
(586, 104, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(587, 104, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(588, 104, 'constructor_home_page_data_0_image', ''),
(589, 104, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(590, 104, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(591, 104, '_constructor_home_page_data', 'field_60c7508f85c29'),
(592, 104, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(593, 104, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(594, 104, 'constructor_home_page_data_0_turn_on', '1'),
(595, 104, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(596, 104, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:2:\"98\";}'),
(597, 104, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(606, 106, 'title', ''),
(607, 106, '_title', 'field_60c74eafdd15d'),
(608, 106, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(609, 106, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(610, 106, 'constructor_home_page_data_0_image', ''),
(611, 106, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(612, 106, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(613, 106, '_constructor_home_page_data', 'field_60c7508f85c29'),
(614, 106, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(615, 106, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(616, 106, 'constructor_home_page_data_0_turn_on', '1'),
(617, 106, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(618, 106, 'constructor_home_page_data_0_presentation_block', 'a:1:{i:0;s:3:\"105\";}'),
(619, 106, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(625, 109, '_wp_attached_file', '2021/06/image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138.png'),
(626, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:625;s:6:\"height\";i:243;s:4:\"file\";s:68:\"2021/06/image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:68:\"image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138-300x117.png\";s:5:\"width\";i:300;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:68:\"image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(627, 110, '_wp_trash_meta_status', 'publish'),
(628, 110, '_wp_trash_meta_time', '1623743054'),
(629, 111, '_wp_trash_meta_status', 'publish'),
(630, 111, '_wp_trash_meta_time', '1623743089'),
(631, 115, 'title', ''),
(632, 115, '_title', 'field_60c74eafdd15d'),
(633, 115, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(634, 115, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(635, 115, 'constructor_home_page_data_0_image', ''),
(636, 115, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(637, 115, 'constructor_home_page_data', 'a:1:{i:0;s:20:\"presentation_section\";}'),
(638, 115, '_constructor_home_page_data', 'field_60c7508f85c29'),
(639, 115, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(640, 115, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(641, 115, 'constructor_home_page_data_0_turn_on', '1'),
(642, 115, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(643, 115, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(644, 115, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(651, 116, 'title', ''),
(652, 116, '_title', 'field_60c74eafdd15d'),
(653, 116, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(654, 116, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(655, 116, 'constructor_home_page_data_0_image', ''),
(656, 116, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(657, 116, 'constructor_home_page_data', 'a:2:{i:0;s:20:\"presentation_section\";i:1;s:13:\"title_section\";}'),
(658, 116, '_constructor_home_page_data', 'field_60c7508f85c29'),
(659, 116, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(660, 116, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(661, 116, 'constructor_home_page_data_0_turn_on', '1'),
(662, 116, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(663, 116, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(664, 116, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(665, 116, 'constructor_home_page_data_1_title', 'A premier conference<br>for die-hard value investors'),
(666, 116, '_constructor_home_page_data_1_title', 'field_60c8637503b26'),
(667, 116, 'constructor_home_page_data_1_date', '20210615'),
(668, 116, '_constructor_home_page_data_1_date', 'field_60c863ac03b27'),
(669, 116, 'constructor_home_page_data_1_location', 'Vail, Colorado'),
(670, 116, '_constructor_home_page_data_1_location', 'field_60c8640803b28'),
(671, 120, '_wp_attached_file', '2021/06/date-icon.png'),
(672, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:20;s:6:\"height\";i:16;s:4:\"file\";s:21:\"2021/06/date-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 121, '_wp_attached_file', '2021/06/city-icon.png'),
(674, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:14;s:6:\"height\";i:19;s:4:\"file\";s:21:\"2021/06/city-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(681, 122, 'title', ''),
(682, 122, '_title', 'field_60c74eafdd15d'),
(683, 122, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(684, 122, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(685, 122, 'constructor_home_page_data_0_image', ''),
(686, 122, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(687, 122, 'constructor_home_page_data', 'a:2:{i:0;s:20:\"presentation_section\";i:1;s:13:\"title_section\";}'),
(688, 122, '_constructor_home_page_data', 'field_60c7508f85c29'),
(689, 122, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(690, 122, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(691, 122, 'constructor_home_page_data_0_turn_on', '1'),
(692, 122, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(693, 122, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(694, 122, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(695, 122, 'constructor_home_page_data_1_title', 'A premier conference<br>for die-hard value investors'),
(696, 122, '_constructor_home_page_data_1_title', 'field_60c8637503b26'),
(697, 122, 'constructor_home_page_data_1_date', '20210615'),
(698, 122, '_constructor_home_page_data_1_date', 'field_60c863ac03b27'),
(699, 122, 'constructor_home_page_data_1_location', 'Vail, Colorado'),
(700, 122, '_constructor_home_page_data_1_location', 'field_60c8640803b28'),
(701, 122, 'constructor_home_page_data_1_turn_on', '1'),
(702, 122, '_constructor_home_page_data_1_turn_on', 'field_60c8671007efa'),
(703, 122, 'constructor_home_page_data_1_icon_date', '120'),
(704, 122, '_constructor_home_page_data_1_icon_date', 'field_60c86c830d4db'),
(705, 122, 'constructor_home_page_data_1_icon_location', '121'),
(706, 122, '_constructor_home_page_data_1_icon_location', 'field_60c86caf0d4dc'),
(707, 123, '_wp_attached_file', '2021/06/eye-overlay.png'),
(708, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:77;s:4:\"file\";s:23:\"2021/06/eye-overlay.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(711, 126, 'title', ''),
(712, 126, '_title', 'field_60c74eafdd15d'),
(713, 126, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(714, 126, '_constructor_home_page_data_0_title', 'field_60c751e370242'),
(715, 126, 'constructor_home_page_data_0_image', ''),
(716, 126, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(717, 126, 'constructor_home_page_data', 'a:2:{i:0;s:20:\"presentation_section\";i:1;s:13:\"title_section\";}'),
(718, 126, '_constructor_home_page_data', 'field_60c7508f85c29'),
(719, 126, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(720, 126, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(721, 126, 'constructor_home_page_data_0_turn_on', '1'),
(722, 126, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(723, 126, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(724, 126, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(725, 126, 'constructor_home_page_data_1_title', 'A premier conference<br>for die-hard value investors'),
(726, 126, '_constructor_home_page_data_1_title', 'field_60c8637503b26'),
(727, 126, 'constructor_home_page_data_1_date', '20210615'),
(728, 126, '_constructor_home_page_data_1_date', 'field_60c863ac03b27'),
(729, 126, 'constructor_home_page_data_1_location', 'Vail, Colorado'),
(730, 126, '_constructor_home_page_data_1_location', 'field_60c8640803b28'),
(731, 126, 'constructor_home_page_data_1_turn_on', '1'),
(732, 126, '_constructor_home_page_data_1_turn_on', 'field_60c8671007efa'),
(733, 126, 'constructor_home_page_data_1_icon_date', '120'),
(734, 126, '_constructor_home_page_data_1_icon_date', 'field_60c86c830d4db'),
(735, 126, 'constructor_home_page_data_1_icon_location', '121'),
(736, 126, '_constructor_home_page_data_1_icon_location', 'field_60c86caf0d4dc'),
(737, 126, 'constructor_home_page_data_0_icon_overlay', '123'),
(738, 126, '_constructor_home_page_data_0_icon_overlay', 'field_60c8776b2c8fe'),
(739, 16, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(740, 16, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(741, 129, 'title', ''),
(742, 129, '_title', 'field_60c74eafdd15d'),
(743, 129, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(744, 129, '_constructor_home_page_data_0_title', 'field_60c8801b72a32'),
(745, 129, 'constructor_home_page_data_0_image', ''),
(746, 129, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(747, 129, 'constructor_home_page_data', 'a:2:{i:0;s:20:\"presentation_section\";i:1;s:13:\"title_section\";}'),
(748, 129, '_constructor_home_page_data', 'field_60c7508f85c29'),
(749, 129, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(750, 129, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(751, 129, 'constructor_home_page_data_0_turn_on', '1'),
(752, 129, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(753, 129, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(754, 129, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(755, 129, 'constructor_home_page_data_1_title', 'A premier conference<br>for die-hard value investors'),
(756, 129, '_constructor_home_page_data_1_title', 'field_60c8637503b26'),
(757, 129, 'constructor_home_page_data_1_date', '20210615'),
(758, 129, '_constructor_home_page_data_1_date', 'field_60c863ac03b27'),
(759, 129, 'constructor_home_page_data_1_location', 'Vail, Colorado'),
(760, 129, '_constructor_home_page_data_1_location', 'field_60c8640803b28'),
(761, 129, 'constructor_home_page_data_1_turn_on', '1'),
(762, 129, '_constructor_home_page_data_1_turn_on', 'field_60c8671007efa'),
(763, 129, 'constructor_home_page_data_1_icon_date', '120'),
(764, 129, '_constructor_home_page_data_1_icon_date', 'field_60c86c830d4db'),
(765, 129, 'constructor_home_page_data_1_icon_location', '121'),
(766, 129, '_constructor_home_page_data_1_icon_location', 'field_60c86caf0d4dc'),
(767, 129, 'constructor_home_page_data_0_icon_overlay', '123'),
(768, 129, '_constructor_home_page_data_0_icon_overlay', 'field_60c8776b2c8fe'),
(769, 129, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(770, 129, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(775, 131, 'title', ''),
(776, 131, '_title', 'field_60c74eafdd15d'),
(777, 131, 'constructor_home_page_data_0_title', 'Presentation from previous Conferences'),
(778, 131, '_constructor_home_page_data_0_title', 'field_60c8801b72a32'),
(779, 131, 'constructor_home_page_data_0_image', ''),
(780, 131, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(781, 131, 'constructor_home_page_data', 'a:2:{i:0;s:20:\"presentation_section\";i:1;s:13:\"title_section\";}'),
(782, 131, '_constructor_home_page_data', 'field_60c7508f85c29'),
(783, 131, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(784, 131, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(785, 131, 'constructor_home_page_data_0_turn_on', '1'),
(786, 131, '_constructor_home_page_data_0_turn_on', 'field_60c7512785c2a'),
(787, 131, 'constructor_home_page_data_0_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(788, 131, '_constructor_home_page_data_0_presentation_block', 'field_60c79a02694c8'),
(789, 131, 'constructor_home_page_data_1_title', 'A premier conference<br>for die-hard value investors'),
(790, 131, '_constructor_home_page_data_1_title', 'field_60c8637503b26'),
(791, 131, 'constructor_home_page_data_1_date', '20210615'),
(792, 131, '_constructor_home_page_data_1_date', 'field_60c863ac03b27'),
(793, 131, 'constructor_home_page_data_1_location', 'Vail, Colorado'),
(794, 131, '_constructor_home_page_data_1_location', 'field_60c8640803b28'),
(795, 131, 'constructor_home_page_data_1_turn_on', '1'),
(796, 131, '_constructor_home_page_data_1_turn_on', 'field_60c8671007efa'),
(797, 131, 'constructor_home_page_data_1_icon_date', '120'),
(798, 131, '_constructor_home_page_data_1_icon_date', 'field_60c86c830d4db'),
(799, 131, 'constructor_home_page_data_1_icon_location', '121'),
(800, 131, '_constructor_home_page_data_1_icon_location', 'field_60c86caf0d4dc'),
(801, 131, 'constructor_home_page_data_0_icon_overlay', '123'),
(802, 131, '_constructor_home_page_data_0_icon_overlay', 'field_60c8776b2c8fe'),
(803, 131, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(804, 131, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(805, 131, 'constructor_home_page_data_0_button_page_url', '18'),
(806, 131, '_constructor_home_page_data_0_button_page_url', 'field_60c8802472a33'),
(807, 131, 'constructor_home_page_data_0_button_text', 'Check out all presentations'),
(808, 131, '_constructor_home_page_data_0_button_text', 'field_60c883ea76647'),
(809, 16, 'constructor_home_page_data_0_turn_on', '1'),
(810, 16, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(811, 16, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(812, 16, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(813, 16, 'constructor_home_page_data_0_icon_date', '120'),
(814, 16, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(815, 16, 'constructor_home_page_data_0_date', '20210615'),
(816, 16, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(817, 16, 'constructor_home_page_data_0_icon_location', '121'),
(818, 16, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(819, 16, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(820, 16, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(821, 16, 'constructor_home_page_data_1_turn_on', '1'),
(822, 16, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(823, 16, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(824, 16, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(825, 16, 'constructor_home_page_data_1_presentation_block', ''),
(826, 16, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(827, 16, 'constructor_home_page_data_1_icon_overlay', '123');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(828, 16, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(829, 16, 'constructor_home_page_data_1_button_page_url', '18'),
(830, 16, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(831, 16, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(832, 16, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(833, 132, 'title', ''),
(834, 132, '_title', 'field_60c74eafdd15d'),
(835, 132, 'constructor_home_page_data_0_image', ''),
(836, 132, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(837, 132, 'constructor_home_page_data', 'a:2:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";}'),
(838, 132, '_constructor_home_page_data', 'field_60c7508f85c29'),
(839, 132, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(840, 132, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(841, 132, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(842, 132, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(843, 132, 'constructor_home_page_data_0_turn_on', '1'),
(844, 132, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(845, 132, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(846, 132, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(847, 132, 'constructor_home_page_data_0_icon_date', '120'),
(848, 132, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(849, 132, 'constructor_home_page_data_0_date', '20210615'),
(850, 132, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(851, 132, 'constructor_home_page_data_0_icon_location', '121'),
(852, 132, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(853, 132, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(854, 132, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(855, 132, 'constructor_home_page_data_1_turn_on', '1'),
(856, 132, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(857, 132, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(858, 132, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(859, 132, 'constructor_home_page_data_1_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(860, 132, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(861, 132, 'constructor_home_page_data_1_icon_overlay', '123'),
(862, 132, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(863, 132, 'constructor_home_page_data_1_button_page_url', '18'),
(864, 132, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(865, 132, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(866, 132, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(867, 32, '_wp_old_date', '2021-06-14'),
(868, 16, 'constructor_home_page_data_2_turn_on', '1'),
(869, 16, '_constructor_home_page_data_2_turn_on', 'field_60c88ad372444'),
(870, 16, 'constructor_home_page_data_2_title', 'RECEIVE UPDATES FOR THIS AND FUTURE EVENTS'),
(871, 16, '_constructor_home_page_data_2_title', 'field_60c88a75b5cc0'),
(872, 16, 'constructor_home_page_data_2_description', 'As bonus, you\'ll receive useful articles from Vitaliy N. Katsenelson'),
(873, 16, '_constructor_home_page_data_2_description', 'field_60c88a7bb5cc1'),
(874, 16, 'constructor_home_page_data_2_short_code', '[mc4wp_form id=\"32\"]'),
(875, 16, '_constructor_home_page_data_2_short_code', 'field_60c88a84b5cc2'),
(876, 137, 'title', ''),
(877, 137, '_title', 'field_60c74eafdd15d'),
(878, 137, 'constructor_home_page_data_0_image', ''),
(879, 137, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(880, 137, 'constructor_home_page_data', 'a:3:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";i:2;s:14:\"sin_up_section\";}'),
(881, 137, '_constructor_home_page_data', 'field_60c7508f85c29'),
(882, 137, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(883, 137, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(884, 137, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(885, 137, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(886, 137, 'constructor_home_page_data_0_turn_on', '1'),
(887, 137, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(888, 137, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(889, 137, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(890, 137, 'constructor_home_page_data_0_icon_date', '120'),
(891, 137, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(892, 137, 'constructor_home_page_data_0_date', '20210615'),
(893, 137, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(894, 137, 'constructor_home_page_data_0_icon_location', '121'),
(895, 137, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(896, 137, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(897, 137, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(898, 137, 'constructor_home_page_data_1_turn_on', '1'),
(899, 137, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(900, 137, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(901, 137, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(902, 137, 'constructor_home_page_data_1_presentation_block', 'a:2:{i:0;s:3:\"105\";i:1;s:3:\"108\";}'),
(903, 137, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(904, 137, 'constructor_home_page_data_1_icon_overlay', '123'),
(905, 137, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(906, 137, 'constructor_home_page_data_1_button_page_url', '18'),
(907, 137, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(908, 137, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(909, 137, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(910, 137, 'constructor_home_page_data_2_turn_on', '1'),
(911, 137, '_constructor_home_page_data_2_turn_on', 'field_60c88ad372444'),
(912, 137, 'constructor_home_page_data_2_title', 'RECEIVE UPDATES FOR THIS AND FUTURE EVENTS'),
(913, 137, '_constructor_home_page_data_2_title', 'field_60c88a75b5cc0'),
(914, 137, 'constructor_home_page_data_2_description', 'As bonus, you\'ll receive useful articles from Vitaliy N. Katsenelson'),
(915, 137, '_constructor_home_page_data_2_description', 'field_60c88a7bb5cc1'),
(916, 137, 'constructor_home_page_data_2_short_code', '[mc4wp_form id=\"32\"]'),
(917, 137, '_constructor_home_page_data_2_short_code', 'field_60c88a84b5cc2'),
(924, 138, '_edit_last', '1'),
(925, 138, '_edit_lock', '1623756285:1'),
(926, 138, '_thumbnail_id', '51'),
(927, 138, 'file', '46'),
(928, 138, '_file', 'field_60c7a9ab667a0'),
(929, 139, '_edit_last', '1'),
(930, 139, '_edit_lock', '1623756473:1'),
(931, 140, '_wp_attached_file', '2021/06/TOBII-AB.png'),
(932, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:968;s:6:\"height\";i:539;s:4:\"file\";s:20:\"2021/06/TOBII-AB.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"TOBII-AB-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"TOBII-AB-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"TOBII-AB-768x428.png\";s:5:\"width\";i:768;s:6:\"height\";i:428;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 141, '_wp_attached_file', '2021/06/TOBII-AB.pdf'),
(934, 141, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:16:\"TOBII-AB-pdf.jpg\";s:5:\"width\";i:1707;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"TOBII-AB-pdf-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"TOBII-AB-pdf-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"TOBII-AB-pdf-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(935, 139, '_thumbnail_id', '140'),
(936, 139, 'file', '141'),
(937, 139, '_file', 'field_60c7a9ab667a0'),
(938, 142, '_edit_last', '1'),
(939, 142, '_edit_lock', '1623756591:1'),
(940, 143, '_wp_attached_file', '2021/06/Yumchina.png'),
(941, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:819;s:6:\"height\";i:610;s:4:\"file\";s:20:\"2021/06/Yumchina.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Yumchina-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Yumchina-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Yumchina-768x572.png\";s:5:\"width\";i:768;s:6:\"height\";i:572;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(942, 144, '_wp_attached_file', '2021/06/YumCHina.pdf'),
(943, 144, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:16:\"YumCHina-pdf.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"YumCHina-pdf-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"YumCHina-pdf-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"YumCHina-pdf-150x113.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(944, 142, '_thumbnail_id', '143'),
(945, 142, 'file', '144'),
(946, 142, '_file', 'field_60c7a9ab667a0'),
(947, 145, '_edit_last', '1'),
(948, 145, '_edit_lock', '1623756677:1'),
(949, 146, '_wp_attached_file', '2021/06/Sychrony-Financial.png'),
(950, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:816;s:6:\"height\";i:611;s:4:\"file\";s:30:\"2021/06/Sychrony-Financial.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Sychrony-Financial-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Sychrony-Financial-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Sychrony-Financial-768x575.png\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(951, 147, '_wp_attached_file', '2021/06/Synchrony-Financial-SYF.pdf'),
(952, 147, '_wp_attachment_metadata', 'a:1:{s:5:\"sizes\";a:4:{s:4:\"full\";a:4:{s:4:\"file\";s:31:\"Synchrony-Financial-SYF-pdf.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"Synchrony-Financial-SYF-pdf-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"Synchrony-Financial-SYF-pdf-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"Synchrony-Financial-SYF-pdf-150x113.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}}'),
(953, 145, '_thumbnail_id', '146'),
(954, 145, 'file', '147'),
(955, 145, '_file', 'field_60c7a9ab667a0'),
(956, 148, 'title', ''),
(957, 148, '_title', 'field_60c74eafdd15d'),
(958, 148, 'constructor_home_page_data_0_image', ''),
(959, 148, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(960, 148, 'constructor_home_page_data', 'a:3:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";i:2;s:14:\"sin_up_section\";}'),
(961, 148, '_constructor_home_page_data', 'field_60c7508f85c29'),
(962, 148, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(963, 148, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(964, 148, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(965, 148, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(966, 148, 'constructor_home_page_data_0_turn_on', '1'),
(967, 148, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(968, 148, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(969, 148, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(970, 148, 'constructor_home_page_data_0_icon_date', '120'),
(971, 148, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(972, 148, 'constructor_home_page_data_0_date', '20210615'),
(973, 148, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(974, 148, 'constructor_home_page_data_0_icon_location', '121'),
(975, 148, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(976, 148, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(977, 148, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(978, 148, 'constructor_home_page_data_1_turn_on', '1'),
(979, 148, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(980, 148, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(981, 148, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(982, 148, 'constructor_home_page_data_1_presentation_block', 'a:1:{i:0;s:3:\"142\";}'),
(983, 148, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(984, 148, 'constructor_home_page_data_1_icon_overlay', '123'),
(985, 148, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(986, 148, 'constructor_home_page_data_1_button_page_url', '18'),
(987, 148, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(988, 148, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(989, 148, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(990, 148, 'constructor_home_page_data_2_turn_on', '1'),
(991, 148, '_constructor_home_page_data_2_turn_on', 'field_60c88ad372444'),
(992, 148, 'constructor_home_page_data_2_title', 'RECEIVE UPDATES FOR THIS AND FUTURE EVENTS'),
(993, 148, '_constructor_home_page_data_2_title', 'field_60c88a75b5cc0'),
(994, 148, 'constructor_home_page_data_2_description', 'As bonus, you\'ll receive useful articles from Vitaliy N. Katsenelson'),
(995, 148, '_constructor_home_page_data_2_description', 'field_60c88a7bb5cc1'),
(996, 148, 'constructor_home_page_data_2_short_code', '[mc4wp_form id=\"32\"]'),
(997, 148, '_constructor_home_page_data_2_short_code', 'field_60c88a84b5cc2'),
(998, 149, 'title', ''),
(999, 149, '_title', 'field_60c74eafdd15d'),
(1000, 149, 'constructor_home_page_data_0_image', ''),
(1001, 149, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(1002, 149, 'constructor_home_page_data', 'a:3:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";i:2;s:14:\"sin_up_section\";}'),
(1003, 149, '_constructor_home_page_data', 'field_60c7508f85c29'),
(1004, 149, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(1005, 149, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(1006, 149, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(1007, 149, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(1008, 149, 'constructor_home_page_data_0_turn_on', '1'),
(1009, 149, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(1010, 149, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(1011, 149, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(1012, 149, 'constructor_home_page_data_0_icon_date', '120'),
(1013, 149, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(1014, 149, 'constructor_home_page_data_0_date', '20210615'),
(1015, 149, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(1016, 149, 'constructor_home_page_data_0_icon_location', '121'),
(1017, 149, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(1018, 149, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(1019, 149, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(1020, 149, 'constructor_home_page_data_1_turn_on', '1'),
(1021, 149, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(1022, 149, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(1023, 149, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(1024, 149, 'constructor_home_page_data_1_presentation_block', 'a:2:{i:0;s:3:\"142\";i:1;s:3:\"139\";}'),
(1025, 149, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(1026, 149, 'constructor_home_page_data_1_icon_overlay', '123'),
(1027, 149, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(1028, 149, 'constructor_home_page_data_1_button_page_url', '18'),
(1029, 149, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(1030, 149, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(1031, 149, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(1032, 149, 'constructor_home_page_data_2_turn_on', '1'),
(1033, 149, '_constructor_home_page_data_2_turn_on', 'field_60c88ad372444'),
(1034, 149, 'constructor_home_page_data_2_title', 'RECEIVE UPDATES FOR THIS AND FUTURE EVENTS'),
(1035, 149, '_constructor_home_page_data_2_title', 'field_60c88a75b5cc0'),
(1036, 149, 'constructor_home_page_data_2_description', 'As bonus, you\'ll receive useful articles from Vitaliy N. Katsenelson'),
(1037, 149, '_constructor_home_page_data_2_description', 'field_60c88a7bb5cc1'),
(1038, 149, 'constructor_home_page_data_2_short_code', '[mc4wp_form id=\"32\"]'),
(1039, 149, '_constructor_home_page_data_2_short_code', 'field_60c88a84b5cc2'),
(1040, 150, 'title', ''),
(1041, 150, '_title', 'field_60c74eafdd15d'),
(1042, 150, 'constructor_home_page_data_0_image', ''),
(1043, 150, '_constructor_home_page_data_0_image', 'field_60c751e970243'),
(1044, 150, 'constructor_home_page_data', 'a:3:{i:0;s:13:\"title_section\";i:1;s:20:\"presentation_section\";i:2;s:14:\"sin_up_section\";}'),
(1045, 150, '_constructor_home_page_data', 'field_60c7508f85c29'),
(1046, 150, 'constructor_home_page_data_0_presentation', 'a:1:{i:0;s:2:\"74\";}'),
(1047, 150, '_constructor_home_page_data_0_presentation', 'field_60c755ddc521f'),
(1048, 150, 'constructor_home_page_data_0_button', 'http://localhost/wordpress-valuexvail/presentations/'),
(1049, 150, '_constructor_home_page_data_0_button', 'field_60c8802472a33'),
(1050, 150, 'constructor_home_page_data_0_turn_on', '1'),
(1051, 150, '_constructor_home_page_data_0_turn_on', 'field_60c8671007efa'),
(1052, 150, 'constructor_home_page_data_0_title', 'A premier conference<br>for die-hard value investors'),
(1053, 150, '_constructor_home_page_data_0_title', 'field_60c8637503b26'),
(1054, 150, 'constructor_home_page_data_0_icon_date', '120'),
(1055, 150, '_constructor_home_page_data_0_icon_date', 'field_60c86c830d4db'),
(1056, 150, 'constructor_home_page_data_0_date', '20210615'),
(1057, 150, '_constructor_home_page_data_0_date', 'field_60c863ac03b27'),
(1058, 150, 'constructor_home_page_data_0_icon_location', '121'),
(1059, 150, '_constructor_home_page_data_0_icon_location', 'field_60c86caf0d4dc'),
(1060, 150, 'constructor_home_page_data_0_location', 'Vail, Colorado'),
(1061, 150, '_constructor_home_page_data_0_location', 'field_60c8640803b28'),
(1062, 150, 'constructor_home_page_data_1_turn_on', '1'),
(1063, 150, '_constructor_home_page_data_1_turn_on', 'field_60c7512785c2a'),
(1064, 150, 'constructor_home_page_data_1_title', 'Presentation from previous Conferences'),
(1065, 150, '_constructor_home_page_data_1_title', 'field_60c8801b72a32'),
(1066, 150, 'constructor_home_page_data_1_presentation_block', ''),
(1067, 150, '_constructor_home_page_data_1_presentation_block', 'field_60c79a02694c8'),
(1068, 150, 'constructor_home_page_data_1_icon_overlay', '123'),
(1069, 150, '_constructor_home_page_data_1_icon_overlay', 'field_60c8776b2c8fe'),
(1070, 150, 'constructor_home_page_data_1_button_page_url', '18'),
(1071, 150, '_constructor_home_page_data_1_button_page_url', 'field_60c8802472a33'),
(1072, 150, 'constructor_home_page_data_1_button_text', 'Check out all presentations'),
(1073, 150, '_constructor_home_page_data_1_button_text', 'field_60c883ea76647'),
(1074, 150, 'constructor_home_page_data_2_turn_on', '1'),
(1075, 150, '_constructor_home_page_data_2_turn_on', 'field_60c88ad372444'),
(1076, 150, 'constructor_home_page_data_2_title', 'RECEIVE UPDATES FOR THIS AND FUTURE EVENTS'),
(1077, 150, '_constructor_home_page_data_2_title', 'field_60c88a75b5cc0'),
(1078, 150, 'constructor_home_page_data_2_description', 'As bonus, you\'ll receive useful articles from Vitaliy N. Katsenelson'),
(1079, 150, '_constructor_home_page_data_2_description', 'field_60c88a7bb5cc1'),
(1080, 150, 'constructor_home_page_data_2_short_code', '[mc4wp_form id=\"32\"]'),
(1081, 150, '_constructor_home_page_data_2_short_code', 'field_60c88a84b5cc2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2021-06-09 13:51:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-09 13:51:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?p=4', 0, 'post', '', 0),
(5, 1, '2021-06-09 14:13:34', '2021-06-09 14:13:34', '{\n    \"blogname\": {\n        \"value\": \"Valuexvail\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-09 14:13:34\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-09 14:13:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7049677-6a4c-4c40-901a-d052685c0ea3', '', '', '2021-06-09 14:13:34', '2021-06-09 14:13:34', '', 0, 'http://localhost/wordpress-valuexvail/2021/06/09/e7049677-6a4c-4c40-901a-d052685c0ea3/', 0, 'customize_changeset', '', 0),
(6, 1, '2021-06-09 14:14:22', '2021-06-09 14:14:22', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2021-06-09 14:14:22', '2021-06-09 14:14:22', '', 0, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/index.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2021-06-09 14:14:25', '2021-06-09 14:14:25', 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/cropped-index.png', 'cropped-index.png', '', 'inherit', 'open', 'closed', '', 'cropped-index-png', '', '', '2021-06-09 14:14:25', '2021-06-09 14:14:25', '', 0, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/cropped-index.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2021-06-09 14:14:31', '2021-06-09 14:14:31', '{\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-09 14:14:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fa25ccb-a8db-48d5-8a2e-e8eb953ff9fd', '', '', '2021-06-09 14:14:31', '2021-06-09 14:14:31', '', 0, 'http://localhost/wordpress-valuexvail/2021/06/09/9fa25ccb-a8db-48d5-8a2e-e8eb953ff9fd/', 0, 'customize_changeset', '', 0),
(9, 1, '2021-06-09 16:49:35', '2021-06-09 16:49:35', 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/cropped-cropped-index.png', 'cropped-cropped-index.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-index-png', '', '', '2021-06-09 16:49:35', '2021-06-09 16:49:35', '', 0, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/cropped-cropped-index.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-06-09 16:49:38', '2021-06-09 16:49:38', '{\n    \"wp_valuexvail::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-09 16:49:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3cceadf3-da86-49ec-bb82-a6f92bfd57b0', '', '', '2021-06-09 16:49:38', '2021-06-09 16:49:38', '', 0, 'http://localhost/wordpress-valuexvail/3cceadf3-da86-49ec-bb82-a6f92bfd57b0/', 0, 'customize_changeset', '', 0),
(11, 1, '2021-06-09 16:54:44', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-06-09 16:54:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?p=11', 1, 'nav_menu_item', '', 0),
(15, 1, '2021-06-09 16:59:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-09 16:59:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-06-09 17:00:28', '2021-06-09 17:00:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-06-15 16:00:28', '2021-06-15 16:00:28', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-06-09 17:00:28', '2021-06-09 17:00:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-09 17:00:28', '2021-06-09 17:00:28', '', 16, 'http://localhost/wordpress-valuexvail/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-06-09 17:01:56', '2021-06-09 17:01:56', '', 'Presentations', '', 'publish', 'closed', 'closed', '', 'presentations', '', '', '2021-06-09 17:01:56', '2021-06-09 17:01:56', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-06-09 17:01:56', '2021-06-09 17:01:56', '', 'Presentations', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-06-09 17:01:56', '2021-06-09 17:01:56', '', 18, 'http://localhost/wordpress-valuexvail/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-06-09 17:02:18', '2021-06-09 17:02:18', '', 'Photos', '', 'publish', 'closed', 'closed', '', 'photos', '', '', '2021-06-09 17:02:18', '2021-06-09 17:02:18', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-06-09 17:02:18', '2021-06-09 17:02:18', '', 'Photos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-06-09 17:02:18', '2021-06-09 17:02:18', '', 20, 'http://localhost/wordpress-valuexvail/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-06-09 17:02:45', '2021-06-09 17:02:45', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-06-09 17:02:45', '2021-06-09 17:02:45', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=22', 0, 'page', '', 0),
(23, 1, '2021-06-09 17:02:45', '2021-06-09 17:02:45', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-06-09 17:02:45', '2021-06-09 17:02:45', '', 22, 'http://localhost/wordpress-valuexvail/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-06-09 17:03:42', '2021-06-09 17:03:42', '', 'Apply', '', 'publish', 'closed', 'closed', '', 'apply', '', '', '2021-06-09 17:03:42', '2021-06-09 17:03:42', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=24', 0, 'page', '', 0),
(25, 1, '2021-06-09 17:03:42', '2021-06-09 17:03:42', '', 'Apply', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-06-09 17:03:42', '2021-06-09 17:03:42', '', 24, 'http://localhost/wordpress-valuexvail/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-06-09 17:04:12', '2021-06-09 17:04:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-06-09 17:04:12', '2021-06-09 17:04:12', '', 0, 'http://localhost/wordpress-valuexvail/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-06-09 17:04:12', '2021-06-09 17:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-06-09 17:04:12', '2021-06-09 17:04:12', '', 0, 'http://localhost/wordpress-valuexvail/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2021-06-09 17:04:12', '2021-06-09 17:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-06-09 17:04:12', '2021-06-09 17:04:12', '', 0, 'http://localhost/wordpress-valuexvail/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2021-06-09 17:04:12', '2021-06-09 17:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-06-09 17:04:12', '2021-06-09 17:04:12', '', 0, 'http://localhost/wordpress-valuexvail/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2021-06-09 17:04:12', '2021-06-09 17:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2021-06-09 17:04:12', '2021-06-09 17:04:12', '', 0, 'http://localhost/wordpress-valuexvail/?p=30', 2, 'nav_menu_item', '', 0),
(32, 1, '2021-06-15 10:56:54', '2021-06-15 10:56:54', '<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email address\" required />\r\n<input type=\"submit\" value=\"Sign up\" />\r\n', 'Mailchimp form #1', '', 'publish', 'closed', 'closed', '', 'mailchimp-form-1', '', '', '2021-06-15 10:56:54', '2021-06-15 10:56:54', '', 0, 'http://localhost/wordpress-valuexvail/mc4wp-form/mailchimp-form-1/', 0, 'mc4wp-form', '', 0),
(33, 1, '2021-06-14 12:42:14', '2021-06-14 12:42:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"template-parts/page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_60c74e95657a7', '', '', '2021-06-15 16:00:55', '2021-06-15 16:00:55', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(35, 1, '2021-06-14 12:45:57', '2021-06-14 12:45:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Home page data', 'presentation_section', 'publish', 'closed', 'closed', '', 'field_60c74ecfdd15e', '', '', '2021-06-15 08:31:29', '2021-06-15 08:31:29', '', 33, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=35', 0, 'acf-field', '', 0),
(36, 1, '2021-06-14 12:54:26', '2021-06-14 12:54:26', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:3:{s:20:\"layout_60c750e74ab25\";a:6:{s:3:\"key\";s:20:\"layout_60c750e74ab25\";s:5:\"label\";s:48:\"Block: <b style=\"color:#ed4956\">Presentation</b>\";s:4:\"name\";s:20:\"presentation_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_60c8634c03b25\";a:6:{s:3:\"key\";s:20:\"layout_60c8634c03b25\";s:5:\"label\";s:41:\"Block: <b style=\"color:#ed4956\">Title</b>\";s:4:\"name\";s:13:\"title_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_60c88a45b5cbf\";a:6:{s:3:\"key\";s:20:\"layout_60c88a45b5cbf\";s:5:\"label\";s:43:\"Block: <b style=\"color:#ed4956\">Sign Up</b>\";s:4:\"name\";s:14:\"sin_up_section\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Home page data', 'constructor_home_page_data', 'publish', 'closed', 'closed', '', 'field_60c7508f85c29', '', '', '2021-06-15 11:10:56', '2021-06-15 11:10:56', '', 33, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=36', 1, 'acf-field', '', 0),
(37, 1, '2021-06-14 12:54:26', '2021-06-14 12:54:26', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:47:\"Check the box to display the Presentation block\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c750e74ab25\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Turn on', 'turn_on', 'publish', 'closed', 'closed', '', 'field_60c7512785c2a', '', '', '2021-06-15 08:39:16', '2021-06-15 08:39:16', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=37', 0, 'acf-field', '', 0),
(40, 1, '2021-06-14 13:00:19', '2021-06-14 13:00:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 13:00:19', '2021-06-14 13:00:19', '', 16, 'http://localhost/wordpress-valuexvail/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-06-14 13:01:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 13:01:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=acf-field-group&p=41', 0, 'acf-field-group', '', 0),
(44, 1, '2021-06-14 13:19:04', '2021-06-14 13:19:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 13:19:04', '2021-06-14 13:19:04', '', 16, 'http://localhost/wordpress-valuexvail/?p=44', 0, 'revision', '', 0),
(46, 1, '2021-06-14 13:20:46', '2021-06-14 13:20:46', '', 'SPOTIFY-TECHNOLOGY-SA-SPOT', '', 'inherit', 'open', 'closed', '', 'spotify-technology-sa-spot', '', '', '2021-06-14 18:10:08', '2021-06-14 18:10:08', '', 16, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/SPOTIFY-TECHNOLOGY-SA-SPOT.pdf', 0, 'attachment', 'application/pdf', 0),
(49, 1, '2021-06-14 13:21:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-14 13:21:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?p=49', 0, 'post', '', 0),
(51, 1, '2021-06-14 13:27:52', '2021-06-14 13:27:52', '', 'Spotify-Technology', '', 'inherit', 'open', 'closed', '', 'spotify-technology', '', '', '2021-06-14 18:10:08', '2021-06-14 18:10:08', '', 16, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/Spotify-Technology.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-06-14 16:07:53', '2021-06-14 16:07:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 16:07:53', '2021-06-14 16:07:53', '', 16, 'http://localhost/wordpress-valuexvail/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-06-14 16:08:10', '2021-06-14 16:08:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 16:08:10', '2021-06-14 16:08:10', '', 16, 'http://localhost/wordpress-valuexvail/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-06-14 16:08:27', '2021-06-14 16:08:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 16:08:27', '2021-06-14 16:08:27', '', 16, 'http://localhost/wordpress-valuexvail/?p=54', 0, 'revision', '', 0),
(58, 1, '2021-06-14 16:44:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 16:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=faq&p=58', 0, 'faq', '', 0),
(59, 1, '2021-06-14 16:49:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 16:49:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=faq&p=59', 0, 'faq', '', 0),
(60, 1, '2021-06-14 16:52:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 16:52:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=faq&p=60', 0, 'faq', '', 0),
(61, 1, '2021-06-14 16:56:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 16:56:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=acf-field-group&p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2021-06-14 16:57:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 16:57:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=acf-field-group&p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2021-06-14 17:03:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 17:03:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=63', 0, 'post_type_name', '', 0),
(64, 1, '2021-06-14 17:07:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 17:07:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=64', 0, 'post_type_name', '', 0),
(65, 1, '2021-06-14 17:08:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 17:08:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=65', 0, 'post_type_name', '', 0),
(66, 1, '2021-06-14 17:08:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 17:08:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=66', 0, 'post_type_name', '', 0),
(67, 1, '2021-06-14 17:08:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 17:08:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=67', 0, 'post_type_name', '', 0),
(71, 1, '2021-06-14 17:16:17', '2021-06-14 17:16:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 17:16:17', '2021-06-14 17:16:17', '', 16, 'http://localhost/wordpress-valuexvail/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-06-14 17:20:59', '2021-06-14 17:20:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 17:20:59', '2021-06-14 17:20:59', '', 16, 'http://localhost/wordpress-valuexvail/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-06-14 17:21:10', '2021-06-14 17:21:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 17:21:10', '2021-06-14 17:21:10', '', 16, 'http://localhost/wordpress-valuexvail/?p=73', 0, 'revision', '', 0),
(77, 1, '2021-06-14 17:25:10', '2021-06-14 17:25:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 17:25:10', '2021-06-14 17:25:10', '', 16, 'http://localhost/wordpress-valuexvail/?p=77', 0, 'revision', '', 0),
(82, 1, '2021-06-14 18:10:08', '2021-06-14 18:10:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 18:10:08', '2021-06-14 18:10:08', '', 16, 'http://localhost/wordpress-valuexvail/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-06-14 18:38:30', '2021-06-14 18:38:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 18:38:30', '2021-06-14 18:38:30', '', 16, 'http://localhost/wordpress-valuexvail/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-06-14 18:40:37', '2021-06-14 18:40:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 18:40:37', '2021-06-14 18:40:37', '', 16, 'http://localhost/wordpress-valuexvail/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-06-14 18:44:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 18:44:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=post_type_name&p=85', 0, 'post_type_name', '', 0),
(86, 1, '2021-06-14 19:08:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-06-14 19:08:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=movies&p=86', 0, 'movies', '', 0),
(87, 1, '2021-06-14 19:09:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-14 19:09:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=movies&p=87', 0, 'movies', '', 0),
(89, 1, '2021-06-14 19:10:48', '2021-06-14 19:10:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"presentation\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Presentations', 'presentations', 'publish', 'closed', 'closed', '', 'group_60c7a99cca366', '', '', '2021-06-15 09:47:46', '2021-06-15 09:47:46', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2021-06-14 19:10:48', '2021-06-14 19:10:48', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'File', 'file', 'publish', 'closed', 'closed', '', 'field_60c7a9ab667a0', '', '', '2021-06-14 21:08:44', '2021-06-14 21:08:44', '', 89, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2021-06-14 19:15:28', '2021-06-14 19:15:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:15:28', '2021-06-14 19:15:28', '', 16, 'http://localhost/wordpress-valuexvail/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-06-14 19:18:22', '2021-06-14 19:18:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:18:22', '2021-06-14 19:18:22', '', 16, 'http://localhost/wordpress-valuexvail/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-06-14 19:39:20', '2021-06-14 19:39:20', '<a href=\"http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/SPOTIFY-TECHNOLOGY-SA-SPOT.pdf\">SPOTIFY-TECHNOLOGY-SA-SPOT</a>', 'test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2021-06-14 19:47:41', '2021-06-14 19:47:41', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=movies&#038;p=93', 0, 'movies', '', 0),
(94, 1, '2021-06-14 19:39:52', '2021-06-14 19:39:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:39:52', '2021-06-14 19:39:52', '', 16, 'http://localhost/wordpress-valuexvail/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-06-14 19:50:28', '2021-06-14 19:50:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:50:28', '2021-06-14 19:50:28', '', 16, 'http://localhost/wordpress-valuexvail/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-06-14 19:50:33', '2021-06-14 19:50:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:50:33', '2021-06-14 19:50:33', '', 16, 'http://localhost/wordpress-valuexvail/?p=96', 0, 'revision', '', 0),
(97, 1, '2021-06-14 19:51:46', '2021-06-14 19:51:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:51:46', '2021-06-14 19:51:46', '', 16, 'http://localhost/wordpress-valuexvail/?p=97', 0, 'revision', '', 0),
(99, 1, '2021-06-14 19:56:28', '2021-06-14 19:56:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:56:28', '2021-06-14 19:56:28', '', 16, 'http://localhost/wordpress-valuexvail/?p=99', 0, 'revision', '', 0),
(100, 1, '2021-06-14 19:56:49', '2021-06-14 19:56:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:56:49', '2021-06-14 19:56:49', '', 16, 'http://localhost/wordpress-valuexvail/?p=100', 0, 'revision', '', 0),
(101, 1, '2021-06-14 19:56:58', '2021-06-14 19:56:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:56:58', '2021-06-14 19:56:58', '', 16, 'http://localhost/wordpress-valuexvail/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-06-14 19:57:07', '2021-06-14 19:57:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:57:07', '2021-06-14 19:57:07', '', 16, 'http://localhost/wordpress-valuexvail/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-06-14 19:58:27', '2021-06-14 19:58:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 19:58:27', '2021-06-14 19:58:27', '', 16, 'http://localhost/wordpress-valuexvail/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-06-14 20:09:03', '2021-06-14 20:09:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-14 20:09:03', '2021-06-14 20:09:03', '', 16, 'http://localhost/wordpress-valuexvail/?p=104', 0, 'revision', '', 0),
(106, 1, '2021-06-15 06:20:25', '2021-06-15 06:20:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 06:20:25', '2021-06-15 06:20:25', '', 16, 'http://localhost/wordpress-valuexvail/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-06-15 06:40:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-15 06:40:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress-valuexvail/?page_id=107', 0, 'page', '', 0),
(109, 1, '2021-06-15 07:43:44', '2021-06-15 07:43:44', '', 'image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138', '', 'inherit', 'open', 'closed', '', 'image_2019_05_08t22_49_53_052z-1560256943-e1560437698138', '', '', '2021-06-15 07:43:44', '2021-06-15 07:43:44', '', 0, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/image_2019_05_08T22_49_53_052Z.1560256943-e1560437698138.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2021-06-15 07:44:14', '2021-06-15 07:44:14', '{\n    \"wp_valuexvail::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-15 07:44:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a18fe14e-a0c4-4a3e-8af7-18a404b98425', '', '', '2021-06-15 07:44:14', '2021-06-15 07:44:14', '', 0, 'http://localhost/wordpress-valuexvail/a18fe14e-a0c4-4a3e-8af7-18a404b98425/', 0, 'customize_changeset', '', 0),
(111, 1, '2021-06-15 07:44:49', '2021-06-15 07:44:49', '{\n    \"wp_valuexvail::custom_logo\": {\n        \"value\": 109,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-15 07:44:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '912ea836-241e-4453-be4c-990f611a96a1', '', '', '2021-06-15 07:44:49', '2021-06-15 07:44:49', '', 0, 'http://localhost/wordpress-valuexvail/912ea836-241e-4453-be4c-990f611a96a1/', 0, 'customize_changeset', '', 0),
(112, 1, '2021-06-15 08:28:57', '2021-06-15 08:28:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60c8637503b26', '', '', '2021-06-15 08:39:16', '2021-06-15 08:39:16', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=112', 1, 'acf-field', '', 0),
(113, 1, '2021-06-15 08:28:57', '2021-06-15 08:28:57', 'a:9:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:14:\"display_format\";s:3:\"F Y\";s:13:\"return_format\";s:3:\"F Y\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_60c863ac03b27', '', '', '2021-06-15 09:03:29', '2021-06-15 09:03:29', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=113', 3, 'acf-field', '', 0),
(114, 1, '2021-06-15 08:28:57', '2021-06-15 08:28:57', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_60c8640803b28', '', '', '2021-06-15 09:04:01', '2021-06-15 09:04:01', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=114', 5, 'acf-field', '', 0),
(115, 1, '2021-06-15 08:31:02', '2021-06-15 08:31:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 08:31:02', '2021-06-15 08:31:02', '', 16, 'http://localhost/wordpress-valuexvail/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-06-15 08:32:56', '2021-06-15 08:32:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 08:32:56', '2021-06-15 08:32:56', '', 16, 'http://localhost/wordpress-valuexvail/?p=116', 0, 'revision', '', 0),
(117, 1, '2021-06-15 08:39:16', '2021-06-15 08:39:16', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:40:\"Check the box to display the Title block\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Turn on', 'turn_on', 'publish', 'closed', 'closed', '', 'field_60c8671007efa', '', '', '2021-06-15 11:12:04', '2021-06-15 11:12:04', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=117', 0, 'acf-field', '', 0),
(118, 1, '2021-06-15 09:03:29', '2021-06-15 09:03:29', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon date', 'icon_date', 'publish', 'closed', 'closed', '', 'field_60c86c830d4db', '', '', '2021-06-15 09:06:55', '2021-06-15 09:06:55', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=118', 2, 'acf-field', '', 0),
(119, 1, '2021-06-15 09:03:29', '2021-06-15 09:03:29', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c8634c03b25\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon location', 'icon_location', 'publish', 'closed', 'closed', '', 'field_60c86caf0d4dc', '', '', '2021-06-15 09:08:59', '2021-06-15 09:08:59', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=119', 4, 'acf-field', '', 0),
(120, 1, '2021-06-15 09:04:52', '2021-06-15 09:04:52', '', 'date-icon', '', 'inherit', 'open', 'closed', '', 'date-icon', '', '', '2021-06-15 09:04:52', '2021-06-15 09:04:52', '', 16, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/date-icon.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2021-06-15 09:05:09', '2021-06-15 09:05:09', '', 'city-icon', '', 'inherit', 'open', 'closed', '', 'city-icon', '', '', '2021-06-15 09:05:09', '2021-06-15 09:05:09', '', 16, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/city-icon.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2021-06-15 09:05:16', '2021-06-15 09:05:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 09:05:16', '2021-06-15 09:05:16', '', 16, 'http://localhost/wordpress-valuexvail/?p=122', 0, 'revision', '', 0),
(123, 1, '2021-06-15 09:28:58', '2021-06-15 09:28:58', '', 'eye-overlay', '', 'inherit', 'open', 'closed', '', 'eye-overlay', '', '', '2021-06-15 09:49:22', '2021-06-15 09:49:22', '', 16, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/eye-overlay.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2021-06-15 09:48:37', '2021-06-15 09:48:37', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c750e74ab25\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon overlay', 'icon_overlay', 'publish', 'closed', 'closed', '', 'field_60c8776b2c8fe', '', '', '2021-06-15 16:00:55', '2021-06-15 16:00:55', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=125', 2, 'acf-field', '', 0),
(126, 1, '2021-06-15 09:49:22', '2021-06-15 09:49:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 09:49:22', '2021-06-15 09:49:22', '', 16, 'http://localhost/wordpress-valuexvail/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-06-15 10:25:54', '2021-06-15 10:25:54', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c750e74ab25\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60c8801b72a32', '', '', '2021-06-15 10:25:54', '2021-06-15 10:25:54', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2021-06-15 10:25:55', '2021-06-15 10:25:55', 'a:11:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c750e74ab25\";s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Button', 'button_page_url', 'publish', 'closed', 'closed', '', 'field_60c8802472a33', '', '', '2021-06-15 16:00:55', '2021-06-15 16:00:55', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=128', 3, 'acf-field', '', 0),
(129, 1, '2021-06-15 10:27:56', '2021-06-15 10:27:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 10:27:56', '2021-06-15 10:27:56', '', 16, 'http://localhost/wordpress-valuexvail/?p=129', 0, 'revision', '', 0),
(130, 1, '2021-06-15 10:42:05', '2021-06-15 10:42:05', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c750e74ab25\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_60c883ea76647', '', '', '2021-06-15 16:00:55', '2021-06-15 16:00:55', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=130', 4, 'acf-field', '', 0),
(131, 1, '2021-06-15 10:43:26', '2021-06-15 10:43:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 10:43:26', '2021-06-15 10:43:26', '', 16, 'http://localhost/wordpress-valuexvail/?p=131', 0, 'revision', '', 0),
(132, 1, '2021-06-15 10:52:02', '2021-06-15 10:52:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 10:52:02', '2021-06-15 10:52:02', '', 16, 'http://localhost/wordpress-valuexvail/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-06-15 11:10:56', '2021-06-15 11:10:56', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c88a45b5cbf\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_60c88a75b5cc0', '', '', '2021-06-15 11:12:04', '2021-06-15 11:12:04', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=133', 1, 'acf-field', '', 0),
(134, 1, '2021-06-15 11:10:56', '2021-06-15 11:10:56', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c88a45b5cbf\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_60c88a7bb5cc1', '', '', '2021-06-15 11:12:04', '2021-06-15 11:12:04', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=134', 2, 'acf-field', '', 0),
(135, 1, '2021-06-15 11:10:56', '2021-06-15 11:10:56', 'a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c88a45b5cbf\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'ShortCode', 'short_code', 'publish', 'closed', 'closed', '', 'field_60c88a84b5cc2', '', '', '2021-06-15 11:12:04', '2021-06-15 11:12:04', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&#038;p=135', 3, 'acf-field', '', 0),
(136, 1, '2021-06-15 11:12:04', '2021-06-15 11:12:04', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:45:\"Check the box to display the Short code block\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_60c88a45b5cbf\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Turn on', 'turn_on', 'publish', 'closed', 'closed', '', 'field_60c88ad372444', '', '', '2021-06-15 11:12:04', '2021-06-15 11:12:04', '', 36, 'http://localhost/wordpress-valuexvail/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 1, '2021-06-15 11:12:51', '2021-06-15 11:12:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 11:12:51', '2021-06-15 11:12:51', '', 16, 'http://localhost/wordpress-valuexvail/?p=137', 0, 'revision', '', 0),
(138, 1, '2021-06-15 11:27:03', '2021-06-15 11:27:03', '', '2019: Spotify Technology SA (SPOT)', '', 'publish', 'closed', 'closed', '', '2019-spotify-technology-sa-spot', '', '', '2021-06-15 11:27:03', '2021-06-15 11:27:03', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=presentation&#038;p=138', 0, 'presentation', '', 0),
(139, 1, '2021-06-15 11:30:15', '2021-06-15 11:30:15', '', '2019: TOBII AB', '', 'publish', 'closed', 'closed', '', '2019-tobii-ab', '', '', '2021-06-15 11:30:15', '2021-06-15 11:30:15', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=presentation&#038;p=139', 0, 'presentation', '', 0),
(140, 1, '2021-06-15 11:28:01', '2021-06-15 11:28:01', '', 'TOBII-AB', '', 'inherit', 'open', 'closed', '', 'tobii-ab', '', '', '2021-06-15 11:28:01', '2021-06-15 11:28:01', '', 139, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/TOBII-AB.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2021-06-15 11:30:07', '2021-06-15 11:30:07', '', 'TOBII-AB', '', 'inherit', 'open', 'closed', '', 'tobii-ab-2', '', '', '2021-06-15 11:30:07', '2021-06-15 11:30:07', '', 139, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/TOBII-AB.pdf', 0, 'attachment', 'application/pdf', 0),
(142, 1, '2021-06-15 11:32:14', '2021-06-15 11:32:14', '', '2019: YumChina', '', 'publish', 'closed', 'closed', '', '2019-yumchina', '', '', '2021-06-15 11:32:14', '2021-06-15 11:32:14', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=presentation&#038;p=142', 0, 'presentation', '', 0),
(143, 1, '2021-06-15 11:31:07', '2021-06-15 11:31:07', '', 'Yumchina', '', 'inherit', 'open', 'closed', '', 'yumchina', '', '', '2021-06-15 11:31:07', '2021-06-15 11:31:07', '', 142, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/Yumchina.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2021-06-15 11:32:09', '2021-06-15 11:32:09', '', 'YumCHina', '', 'inherit', 'open', 'closed', '', 'yumchina-2', '', '', '2021-06-15 11:32:09', '2021-06-15 11:32:09', '', 142, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/YumCHina.pdf', 0, 'attachment', 'application/pdf', 0),
(145, 1, '2021-06-15 11:33:35', '2021-06-15 11:33:35', '', '2019: Synchrony Financial (SYF)', '', 'publish', 'closed', 'closed', '', '2019-synchrony-financial-syf', '', '', '2021-06-15 11:33:35', '2021-06-15 11:33:35', '', 0, 'http://localhost/wordpress-valuexvail/?post_type=presentation&#038;p=145', 0, 'presentation', '', 0),
(146, 1, '2021-06-15 11:32:51', '2021-06-15 11:32:51', '', 'Sychrony-Financial', '', 'inherit', 'open', 'closed', '', 'sychrony-financial', '', '', '2021-06-15 11:32:51', '2021-06-15 11:32:51', '', 145, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/Sychrony-Financial.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2021-06-15 11:33:29', '2021-06-15 11:33:29', '', 'Synchrony-Financial-SYF', '', 'inherit', 'open', 'closed', '', 'synchrony-financial-syf', '', '', '2021-06-15 11:33:29', '2021-06-15 11:33:29', '', 145, 'http://localhost/wordpress-valuexvail/wp-content/uploads/2021/06/Synchrony-Financial-SYF.pdf', 0, 'attachment', 'application/pdf', 0),
(148, 1, '2021-06-15 11:34:05', '2021-06-15 11:34:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 11:34:05', '2021-06-15 11:34:05', '', 16, 'http://localhost/wordpress-valuexvail/?p=148', 0, 'revision', '', 0),
(149, 1, '2021-06-15 11:38:46', '2021-06-15 11:38:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 11:38:46', '2021-06-15 11:38:46', '', 16, 'http://localhost/wordpress-valuexvail/?p=149', 0, 'revision', '', 0),
(150, 1, '2021-06-15 16:00:28', '2021-06-15 16:00:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-06-15 16:00:28', '2021-06-15 16:00:28', '', 16, 'http://localhost/wordpress-valuexvail/?p=150', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(5, '2019', '2019', 0),
(6, '2020', '2020', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(93, 6, 0),
(138, 6, 0),
(139, 5, 0),
(142, 6, 0),
(145, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"6d6a93d02cbe2437c427ef33d5c6ce655ad5a2219d57a170f3c7b605db8b724c\";a:4:{s:10:\"expiration\";i:1623845319;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177\";s:5:\"login\";i:1623672519;}s:64:\"7a8ef3c081dde731bd18cc554a0a5cb9fd6bd0d1a994d410a1501d6a994ec354\";a:4:{s:10:\"expiration\";i:1623859452;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177\";s:5:\"login\";i:1623686652;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1623756336'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:0:{}'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BUcO8Wx3n5I0LEQ/ViZc41G3F7NiYP.', 'admin', 'admin@admin.com', 'http://localhost/wordpress-valuexvail', '2021-06-09 13:51:27', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
