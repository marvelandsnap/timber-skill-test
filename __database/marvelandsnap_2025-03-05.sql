# ************************************************************
# Sequel Ace SQL dump
# Version 20078
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.40)
# Database: wordpress
# Generation Time: 2025-03-05 23:24:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'cron','a:11:{i:1741218595;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1741225804;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1741229394;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1741231194;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1741232994;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1741268995;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1741269004;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1741269005;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1741701183;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1741787395;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on'),
	(2,'siteurl','http://localhost:8888/timber-skill-test','on'),
	(3,'home','http://localhost:8888/timber-skill-test','on'),
	(4,'blogname','Marvel &amp; Snap','on'),
	(5,'blogdescription','','on'),
	(6,'users_can_register','0','on'),
	(7,'admin_email','nordeanums@gmail.com','on'),
	(8,'start_of_week','0','on'),
	(9,'use_balanceTags','0','on'),
	(10,'use_smilies','1','on'),
	(11,'require_name_email','1','on'),
	(12,'comments_notify','1','on'),
	(13,'posts_per_rss','10','on'),
	(14,'rss_use_excerpt','0','on'),
	(15,'mailserver_url','mail.example.com','on'),
	(16,'mailserver_login','login@example.com','on'),
	(17,'mailserver_pass','','on'),
	(18,'mailserver_port','110','on'),
	(19,'default_category','1','on'),
	(20,'default_comment_status','open','on'),
	(21,'default_ping_status','open','on'),
	(22,'default_pingback_flag','0','on'),
	(23,'posts_per_page','10','on'),
	(24,'date_format','j F Y','on'),
	(25,'time_format','g:i a','on'),
	(26,'links_updated_date_format','j F Y g:i a','on'),
	(27,'comment_moderation','0','on'),
	(28,'moderation_notify','1','on'),
	(29,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','on'),
	(30,'rewrite_rules','a:133:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:61:\"index.php/department/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?department=$matches[1]&feed=$matches[2]\";s:56:\"index.php/department/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?department=$matches[1]&feed=$matches[2]\";s:37:\"index.php/department/([^/]+)/embed/?$\";s:43:\"index.php?department=$matches[1]&embed=true\";s:49:\"index.php/department/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?department=$matches[1]&paged=$matches[2]\";s:31:\"index.php/department/([^/]+)/?$\";s:32:\"index.php?department=$matches[1]\";s:49:\"index.php/team_member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/team_member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/team_member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/team_member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/team_member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/team_member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/team_member/([^/]+)/embed/?$\";s:44:\"index.php?team_member=$matches[1]&embed=true\";s:42:\"index.php/team_member/([^/]+)/trackback/?$\";s:38:\"index.php?team_member=$matches[1]&tb=1\";s:50:\"index.php/team_member/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?team_member=$matches[1]&paged=$matches[2]\";s:57:\"index.php/team_member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?team_member=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/team_member/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?team_member=$matches[1]&page=$matches[2]\";s:38:\"index.php/team_member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/team_member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/team_member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/team_member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/team_member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/team_member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"index.php/team-member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/team-member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/team-member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/team-member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/team-member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/team-member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/team-member/([^/]+)/embed/?$\";s:44:\"index.php?team-member=$matches[1]&embed=true\";s:42:\"index.php/team-member/([^/]+)/trackback/?$\";s:38:\"index.php?team-member=$matches[1]&tb=1\";s:50:\"index.php/team-member/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?team-member=$matches[1]&paged=$matches[2]\";s:57:\"index.php/team-member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?team-member=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/team-member/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?team-member=$matches[1]&page=$matches[2]\";s:38:\"index.php/team-member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/team-member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/team-member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/team-member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/team-member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/team-member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','on'),
	(31,'hack_file','0','on'),
	(32,'blog_charset','UTF-8','on'),
	(33,'moderation_keys','','off'),
	(34,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','on'),
	(35,'category_base','','on'),
	(36,'ping_sites','http://rpc.pingomatic.com/','on'),
	(37,'comment_max_links','2','on'),
	(38,'gmt_offset','0','on'),
	(39,'default_email_category','1','on'),
	(40,'recently_edited','','off'),
	(41,'template','elevatex','on'),
	(42,'stylesheet','elevatex','on'),
	(43,'comment_registration','0','on'),
	(44,'html_type','text/html','on'),
	(45,'use_trackback','0','on'),
	(46,'default_role','subscriber','on'),
	(47,'db_version','58975','on'),
	(48,'uploads_use_yearmonth_folders','1','on'),
	(49,'upload_path','','on'),
	(50,'blog_public','0','on'),
	(51,'default_link_category','2','on'),
	(52,'show_on_front','posts','on'),
	(53,'tag_base','','on'),
	(54,'show_avatars','1','on'),
	(55,'avatar_rating','G','on'),
	(56,'upload_url_path','','on'),
	(57,'thumbnail_size_w','150','on'),
	(58,'thumbnail_size_h','150','on'),
	(59,'thumbnail_crop','1','on'),
	(60,'medium_size_w','300','on'),
	(61,'medium_size_h','300','on'),
	(62,'avatar_default','mystery','on'),
	(63,'large_size_w','1024','on'),
	(64,'large_size_h','1024','on'),
	(65,'image_default_link_type','none','on'),
	(66,'image_default_size','','on'),
	(67,'image_default_align','','on'),
	(68,'close_comments_for_old_posts','0','on'),
	(69,'close_comments_days_old','14','on'),
	(70,'thread_comments','1','on'),
	(71,'thread_comments_depth','5','on'),
	(72,'page_comments','0','on'),
	(73,'comments_per_page','50','on'),
	(74,'default_comments_page','newest','on'),
	(75,'comment_order','asc','on'),
	(76,'sticky_posts','a:0:{}','on'),
	(77,'widget_categories','a:0:{}','on'),
	(78,'widget_text','a:0:{}','on'),
	(79,'widget_rss','a:0:{}','on'),
	(80,'uninstall_plugins','a:0:{}','off'),
	(81,'timezone_string','America/Toronto','on'),
	(82,'page_for_posts','0','on'),
	(83,'page_on_front','0','on'),
	(84,'default_post_format','0','on'),
	(85,'link_manager_enabled','0','on'),
	(86,'finished_splitting_shared_terms','1','on'),
	(87,'site_icon','0','on'),
	(88,'medium_large_size_w','768','on'),
	(89,'medium_large_size_h','0','on'),
	(90,'wp_page_for_privacy_policy','3','on'),
	(91,'show_comments_cookies_opt_in','1','on'),
	(92,'admin_email_lifespan','1756648194','on'),
	(93,'disallowed_keys','','off'),
	(94,'comment_previously_approved','1','on'),
	(95,'auto_plugin_theme_update_emails','a:0:{}','off'),
	(96,'auto_update_core_dev','enabled','on'),
	(97,'auto_update_core_minor','enabled','on'),
	(98,'auto_update_core_major','enabled','on'),
	(99,'wp_force_deactivated_plugins','a:0:{}','on'),
	(100,'wp_attachment_pages_enabled','0','on'),
	(101,'initial_db_version','58975','on'),
	(102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on'),
	(103,'fresh_site','0','off'),
	(104,'WPLANG','en_CA','auto'),
	(105,'user_count','1','off'),
	(106,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto'),
	(107,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto'),
	(108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(110,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(111,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(112,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(113,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(114,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(115,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(116,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
	(122,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.7.2\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}','on'),
	(126,'recovery_keys','a:0:{}','off'),
	(127,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1741096421;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off'),
	(128,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"12faf93afa2a5bcdf9fc013b1ac4b9c8\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}','on'),
	(136,'_site_transient_timeout_browser_99a8b4616af3b39637b35c30bca6f5c4','1741701005','off'),
	(137,'_site_transient_browser_99a8b4616af3b39637b35c30bca6f5c4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"132.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off'),
	(138,'_site_transient_timeout_php_check_10e5105aadbc205bbc043b5282f5b85a','1741701005','off'),
	(139,'_site_transient_php_check_10e5105aadbc205bbc043b5282f5b85a','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off'),
	(153,'can_compress_scripts','1','on'),
	(156,'finished_updating_comment_type','1','auto'),
	(157,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off'),
	(158,'recently_activated','a:0:{}','off'),
	(159,'acf_first_activated_version','6.3.12','on'),
	(160,'acf_site_health','{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.2\",\"mysql_version\":\"8.0.40\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Twenty Twenty-Five\",\"version\":\"1.0\",\"theme_uri\":\"https:\\/\\/wordpress.org\\/themes\\/twentytwentyfive\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1741096383,\"last_updated\":1741110678,\"event_first_created_field_group\":1741110583,\"event_first_created_taxonomy\":1741110660,\"event_first_created_post_type\":1741110678}','off'),
	(162,'acf_version','6.3.12','auto'),
	(163,'current_theme','ElevateX','auto'),
	(164,'theme_mods_elevatex','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on'),
	(165,'theme_switched','','auto'),
	(216,'_site_transient_timeout_theme_roots','1741194770','off'),
	(217,'_site_transient_theme_roots','a:1:{s:8:\"elevatex\";s:7:\"/themes\";}','off'),
	(218,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_CA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1741192970;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}','off'),
	(219,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1741192970;s:7:\"checked\";a:1:{s:8:\"elevatex\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off'),
	(220,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1741192971;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"6.3.12\";s:7:\"updated\";s:19:\"2022-02-28 12:11:21\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.3.12/en_CA.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";}}','off'),
	(221,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','auto'),
	(224,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":7,\"critical\":1}','on'),
	(240,'_site_transient_timeout_wp_theme_files_patterns-7c7318f9a0639495d0a1b29564665df7','1741216941','off'),
	(241,'_site_transient_wp_theme_files_patterns-7c7318f9a0639495d0a1b29564665df7','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(6,13,'_edit_lock','1741115059:2'),
	(7,13,'_edit_last','2'),
	(8,18,'_edit_lock','1741110634:2'),
	(9,19,'_edit_lock','1741112217:2'),
	(10,19,'_edit_last','2'),
	(11,20,'_edit_lock','1741123199:2'),
	(12,20,'_edit_last','2'),
	(13,21,'_edit_lock','1741116321:2'),
	(14,21,'_edit_last','2'),
	(15,22,'_wp_attached_file','2025/03/Eric-Leadership-scaled.webp'),
	(16,22,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:35:\"2025/03/Eric-Leadership-scaled.webp\";s:8:\"filesize\";i:171786;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"Eric-Leadership-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3238;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"Eric-Leadership-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:23264;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Eric-Leadership-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2022;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"Eric-Leadership-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13194;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"Eric-Leadership-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:58006;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:30:\"Eric-Leadership-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108374;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:20:\"Eric-Leadership.webp\";}'),
	(17,21,'_thumbnail_id','22'),
	(18,21,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:9:\"#eric-bio\";s:6:\"target\";s:0:\"\";}'),
	(19,21,'_biography_link','field_67c73cbd0f0a0'),
	(20,21,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:12:\"#eric-resume\";s:6:\"target\";s:0:\"\";}'),
	(21,21,'_resume_link','field_67c73cf70f0a1'),
	(22,21,'department','a:1:{i:0;s:1:\"2\";}'),
	(23,21,'_department','field_67c73f67fff33'),
	(24,26,'_edit_lock','1741112242:2'),
	(25,26,'_edit_last','2'),
	(26,26,'department','a:1:{i:0;s:1:\"2\";}'),
	(27,26,'_department','field_67c73f67fff33'),
	(28,26,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:10:\"#chris-bio\";s:6:\"target\";s:0:\"\";}'),
	(29,26,'_biography_link','field_67c73cbd0f0a0'),
	(30,26,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:13:\"#chris-resume\";s:6:\"target\";s:0:\"\";}'),
	(31,26,'_resume_link','field_67c73cf70f0a1'),
	(32,27,'_wp_attached_file','2025/03/Chris-Leadership-scaled.webp'),
	(33,27,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:36:\"2025/03/Chris-Leadership-scaled.webp\";s:8:\"filesize\";i:340376;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"Chris-Leadership-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9168;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"Chris-Leadership-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:49204;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Chris-Leadership-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4396;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"Chris-Leadership-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:60746;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"Chris-Leadership-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:100642;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:31:\"Chris-Leadership-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:192186;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:21:\"Chris-Leadership.webp\";}'),
	(34,26,'_thumbnail_id','27'),
	(35,28,'_edit_lock','1741112255:2'),
	(36,28,'_edit_last','2'),
	(37,29,'_wp_attached_file','2025/03/Anne-ProjectManager-scaled.webp'),
	(38,29,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2035;s:6:\"height\";i:2560;s:4:\"file\";s:39:\"2025/03/Anne-ProjectManager-scaled.webp\";s:8:\"filesize\";i:156432;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"Anne-ProjectManager-238x300.webp\";s:5:\"width\";i:238;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6398;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"Anne-ProjectManager-814x1024.webp\";s:5:\"width\";i:814;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:41520;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"Anne-ProjectManager-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3078;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"Anne-ProjectManager-768x966.webp\";s:5:\"width\";i:768;s:6:\"height\";i:966;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:37810;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"Anne-ProjectManager-1221x1536.webp\";s:5:\"width\";i:1221;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:74752;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:34:\"Anne-ProjectManager-1628x2048.webp\";s:5:\"width\";i:1628;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:113656;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:24:\"Anne-ProjectManager.webp\";}'),
	(39,28,'_thumbnail_id','29'),
	(40,28,'department','a:1:{i:0;s:1:\"3\";}'),
	(41,28,'_department','field_67c73f67fff33'),
	(42,28,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:9:\"#anne-bio\";s:6:\"target\";s:0:\"\";}'),
	(43,28,'_biography_link','field_67c73cbd0f0a0'),
	(44,28,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:12:\"#anne-resume\";s:6:\"target\";s:0:\"\";}'),
	(45,28,'_resume_link','field_67c73cf70f0a1'),
	(46,30,'_edit_lock','1741112267:2'),
	(47,30,'_edit_last','2'),
	(48,31,'_wp_attached_file','2025/03/Kurt-ProjectManager-scaled.webp'),
	(49,31,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:39:\"2025/03/Kurt-ProjectManager-scaled.webp\";s:8:\"filesize\";i:925506;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"Kurt-ProjectManager-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11150;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"Kurt-ProjectManager-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:92846;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"Kurt-ProjectManager-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4772;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"Kurt-ProjectManager-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:116434;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"Kurt-ProjectManager-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:231994;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:34:\"Kurt-ProjectManager-1366x2048.webp\";s:5:\"width\";i:1366;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:520018;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:24:\"Kurt-ProjectManager.webp\";}'),
	(50,30,'_thumbnail_id','31'),
	(51,30,'department','a:1:{i:0;s:1:\"3\";}'),
	(52,30,'_department','field_67c73f67fff33'),
	(53,30,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:9:\"#kurt-bio\";s:6:\"target\";s:0:\"\";}'),
	(54,30,'_biography_link','field_67c73cbd0f0a0'),
	(55,30,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:12:\"#kurt-resume\";s:6:\"target\";s:0:\"\";}'),
	(56,30,'_resume_link','field_67c73cf70f0a1'),
	(57,32,'_edit_lock','1741112280:2'),
	(58,33,'_wp_attached_file','2025/03/Daniel-Developer-scaled.webp'),
	(59,33,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:36:\"2025/03/Daniel-Developer-scaled.webp\";s:8:\"filesize\";i:91214;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"Daniel-Developer-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4454;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"Daniel-Developer-1024x684.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24280;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Daniel-Developer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2680;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"Daniel-Developer-768x513.webp\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15954;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:31:\"Daniel-Developer-1536x1025.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43262;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:31:\"Daniel-Developer-2048x1367.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:66414;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:21:\"Daniel-Developer.webp\";}'),
	(60,32,'_edit_last','2'),
	(61,32,'_thumbnail_id','33'),
	(62,32,'department','a:1:{i:0;s:1:\"5\";}'),
	(63,32,'_department','field_67c73f67fff33'),
	(64,32,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:11:\"#daniel-bio\";s:6:\"target\";s:0:\"\";}'),
	(65,32,'_biography_link','field_67c73cbd0f0a0'),
	(66,32,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:14:\"#daniel-resume\";s:6:\"target\";s:0:\"\";}'),
	(67,32,'_resume_link','field_67c73cf70f0a1'),
	(68,34,'_edit_lock','1741112291:2'),
	(69,34,'_edit_last','2'),
	(70,34,'department','a:1:{i:0;s:1:\"5\";}'),
	(71,34,'_department','field_67c73f67fff33'),
	(72,34,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:8:\"#joe-bio\";s:6:\"target\";s:0:\"\";}'),
	(73,34,'_biography_link','field_67c73cbd0f0a0'),
	(74,34,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:11:\"#joe-resume\";s:6:\"target\";s:0:\"\";}'),
	(75,34,'_resume_link','field_67c73cf70f0a1'),
	(76,35,'_wp_attached_file','2025/03/Joe-Developer-scaled.webp'),
	(77,35,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:33:\"2025/03/Joe-Developer-scaled.webp\";s:8:\"filesize\";i:517522;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Joe-Developer-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4984;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Joe-Developer-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47570;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Joe-Developer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3206;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Joe-Developer-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24910;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"Joe-Developer-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:135420;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Joe-Developer-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:295926;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"Joe-Developer.webp\";}'),
	(78,34,'_thumbnail_id','35'),
	(79,36,'_edit_lock','1741112300:2'),
	(80,36,'_edit_last','2'),
	(81,37,'_wp_attached_file','2025/03/Vince-Developer-scaled.webp'),
	(82,37,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:35:\"2025/03/Vince-Developer-scaled.webp\";s:8:\"filesize\";i:376378;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"Vince-Developer-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17402;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"Vince-Developer-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:95640;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Vince-Developer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8966;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"Vince-Developer-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:111768;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"Vince-Developer-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:166558;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:30:\"Vince-Developer-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:265132;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:20:\"Vince-Developer.webp\";}'),
	(83,36,'_thumbnail_id','37'),
	(84,36,'department','a:1:{i:0;s:1:\"5\";}'),
	(85,36,'_department','field_67c73f67fff33'),
	(86,36,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:10:\"#vince-bio\";s:6:\"target\";s:0:\"\";}'),
	(87,36,'_biography_link','field_67c73cbd0f0a0'),
	(88,36,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:13:\"#vince-resume\";s:6:\"target\";s:0:\"\";}'),
	(89,36,'_resume_link','field_67c73cf70f0a1'),
	(90,38,'_edit_lock','1741112310:2'),
	(91,38,'_edit_last','2'),
	(92,39,'_wp_attached_file','2025/03/Josh-Designer-scaled.webp'),
	(93,39,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:33:\"2025/03/Josh-Designer-scaled.webp\";s:8:\"filesize\";i:134990;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Josh-Designer-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6318;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Josh-Designer-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:36586;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Josh-Designer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3782;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"Josh-Designer-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43152;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"Josh-Designer-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65768;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Josh-Designer-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:98320;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"Josh-Designer.webp\";}'),
	(94,38,'_thumbnail_id','39'),
	(95,38,'department','a:1:{i:0;s:1:\"4\";}'),
	(96,38,'_department','field_67c73f67fff33'),
	(97,38,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:9:\"#josh-bio\";s:6:\"target\";s:0:\"\";}'),
	(98,38,'_biography_link','field_67c73cbd0f0a0'),
	(99,38,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:12:\"#josh-resume\";s:6:\"target\";s:0:\"\";}'),
	(100,38,'_resume_link','field_67c73cf70f0a1'),
	(101,40,'_edit_lock','1741216585:2'),
	(102,40,'_edit_last','2'),
	(103,40,'department','a:1:{i:0;s:1:\"4\";}'),
	(104,40,'_department','field_67c73f67fff33'),
	(105,40,'biography_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:9:\"#adam-bio\";s:6:\"target\";s:0:\"\";}'),
	(106,40,'_biography_link','field_67c73cbd0f0a0'),
	(107,40,'resume_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:12:\"#adam-resume\";s:6:\"target\";s:0:\"\";}'),
	(108,40,'_resume_link','field_67c73cf70f0a1'),
	(109,41,'_wp_attached_file','2025/03/Adam-Designer-scaled.webp'),
	(110,41,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:33:\"2025/03/Adam-Designer-scaled.webp\";s:8:\"filesize\";i:194684;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Adam-Designer-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5974;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"Adam-Designer-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:38188;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Adam-Designer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3332;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"Adam-Designer-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47166;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"Adam-Designer-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:80146;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:28:\"Adam-Designer-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:131880;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"Adam-Designer.webp\";}'),
	(111,40,'_thumbnail_id','41');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(4,0,'2024-07-19 15:52:59','2024-07-19 15:52:59','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-07-19 15:52:59','2024-07-19 15:52:59','',0,'https://todosiienko-timber-skill-test.pantheonsite.io/2024/07/19/navigation/',0,'wp_navigation','',0),
	(10,2,'2025-03-04 10:01:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2025-03-04 10:01:44','0000-00-00 00:00:00','',0,'http://localhost:8888/timber-skill-test/?p=10',0,'post','',0),
	(13,2,'2025-03-04 12:49:43','2025-03-04 17:49:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"team-member\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Team members','team-members','publish','closed','closed','','group_67c73c837bc92','','','2025-03-04 13:23:15','2025-03-04 18:23:15','',0,'http://localhost:8888/timber-skill-test/?post_type=acf-field-group&#038;p=13',0,'acf-field-group','',0),
	(16,2,'2025-03-04 12:49:43','2025-03-04 17:49:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:17:\"allow_in_bindings\";i:1;}','Biography link','biography_link','publish','closed','closed','','field_67c73cbd0f0a0','','','2025-03-04 12:59:31','2025-03-04 17:59:31','',13,'http://localhost:8888/timber-skill-test/?post_type=acf-field&#038;p=16',1,'acf-field','',0),
	(17,2,'2025-03-04 12:49:43','2025-03-04 17:49:43','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:17:\"allow_in_bindings\";i:1;}','Resume link','resume_link','publish','closed','closed','','field_67c73cf70f0a1','','','2025-03-04 12:59:31','2025-03-04 17:59:31','',13,'http://localhost:8888/timber-skill-test/?post_type=acf-field&#038;p=17',2,'acf-field','',0),
	(18,2,'2025-03-04 12:50:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2025-03-04 12:50:23','0000-00-00 00:00:00','',0,'http://localhost:8888/timber-skill-test/?post_type=acf-post-type&p=18',0,'acf-post-type','',0),
	(19,2,'2025-03-04 12:51:00','2025-03-04 17:51:00','a:29:{s:8:\"taxonomy\";s:10:\"department\";s:11:\"object_type\";s:0:\"\";s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"Departments\";s:13:\"singular_name\";s:10:\"Department\";s:9:\"menu_name\";s:11:\"Departments\";s:9:\"all_items\";s:15:\"All Departments\";s:9:\"edit_item\";s:15:\"Edit Department\";s:9:\"view_item\";s:15:\"View Department\";s:11:\"update_item\";s:17:\"Update Department\";s:12:\"add_new_item\";s:18:\"Add New Department\";s:13:\"new_item_name\";s:19:\"New Department Name\";s:12:\"search_items\";s:18:\"Search Departments\";s:13:\"popular_items\";s:19:\"Popular Departments\";s:26:\"separate_items_with_commas\";s:32:\"Separate departments with commas\";s:19:\"add_or_remove_items\";s:25:\"Add or remove departments\";s:21:\"choose_from_most_used\";s:37:\"Choose from the most used departments\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:20:\"No departments found\";s:8:\"no_terms\";s:14:\"No departments\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:27:\"Departments list navigation\";s:10:\"items_list\";s:16:\"Departments list\";s:13:\"back_to_items\";s:21:\"← Go to departments\";s:9:\"item_link\";s:15:\"Department Link\";s:21:\"item_link_description\";s:22:\"A link to a department\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','Departments','departments','publish','closed','closed','','taxonomy_67c73d7130261','','','2025-03-04 12:51:00','2025-03-04 17:51:00','',0,'http://localhost:8888/timber-skill-test/?post_type=acf-taxonomy&#038;p=19',0,'acf-taxonomy','',0),
	(20,2,'2025-03-04 12:51:18','2025-03-04 17:51:18','a:35:{s:9:\"post_type\";s:11:\"team-member\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:12:\"Team members\";s:13:\"singular_name\";s:11:\"Team member\";s:9:\"menu_name\";s:12:\"Team members\";s:9:\"all_items\";s:16:\"All Team members\";s:9:\"edit_item\";s:16:\"Edit Team member\";s:9:\"view_item\";s:16:\"View Team member\";s:10:\"view_items\";s:17:\"View Team members\";s:12:\"add_new_item\";s:19:\"Add New Team member\";s:7:\"add_new\";s:19:\"Add New Team member\";s:8:\"new_item\";s:15:\"New Team member\";s:17:\"parent_item_colon\";s:19:\"Parent Team member:\";s:12:\"search_items\";s:19:\"Search Team members\";s:9:\"not_found\";s:21:\"No team members found\";s:18:\"not_found_in_trash\";s:30:\"No team members found in Trash\";s:8:\"archives\";s:20:\"Team member Archives\";s:10:\"attributes\";s:22:\"Team member Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:23:\"Insert into team member\";s:21:\"uploaded_to_this_item\";s:28:\"Uploaded to this team member\";s:17:\"filter_items_list\";s:24:\"Filter team members list\";s:14:\"filter_by_date\";s:27:\"Filter team members by date\";s:21:\"items_list_navigation\";s:28:\"Team members list navigation\";s:10:\"items_list\";s:17:\"Team members list\";s:14:\"item_published\";s:22:\"Team member published.\";s:24:\"item_published_privately\";s:32:\"Team member published privately.\";s:22:\"item_reverted_to_draft\";s:30:\"Team member reverted to draft.\";s:14:\"item_scheduled\";s:22:\"Team member scheduled.\";s:12:\"item_updated\";s:20:\"Team member updated.\";s:9:\"item_link\";s:16:\"Team member Link\";s:21:\"item_link_description\";s:24:\"A link to a team member.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:20:\"dashicons-admin-post\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:1:{i:0;s:10:\"department\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}','Team members','team-members','publish','closed','closed','','post_type_67c73d8a89ef1','','','2025-03-04 13:26:21','2025-03-04 18:26:21','',0,'http://localhost:8888/timber-skill-test/?post_type=acf-post-type&#038;p=20',0,'acf-post-type','',0),
	(21,2,'2025-03-04 12:52:43','2025-03-04 17:52:43','','Eric Stonestreet','','publish','closed','closed','','eric-stonestreet','','','2025-03-04 13:19:31','2025-03-04 18:19:31','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=21',0,'team-member','',0),
	(22,2,'2025-03-04 12:54:31','2025-03-04 17:54:31','','Eric-Leadership','','inherit','open','closed','','eric-leadership','','','2025-03-04 12:54:31','2025-03-04 17:54:31','',21,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Eric-Leadership.webp',0,'attachment','image/webp',0),
	(23,2,'2025-03-04 12:58:50','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2025-03-04 12:58:50','0000-00-00 00:00:00','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&p=23',0,'team-member','',0),
	(24,2,'2025-03-04 12:58:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2025-03-04 12:58:54','0000-00-00 00:00:00','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&p=24',0,'team-member','',0),
	(25,2,'2025-03-04 12:59:25','2025-03-04 17:59:25','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:10:\"department\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:8:\"checkbox\";s:17:\"allow_in_bindings\";i:0;s:13:\"bidirectional\";i:0;s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Department','department','publish','closed','closed','','field_67c73f67fff33','','','2025-03-04 12:59:31','2025-03-04 17:59:31','',13,'http://localhost:8888/timber-skill-test/?post_type=acf-field&#038;p=25',0,'acf-field','',0),
	(26,2,'2025-03-04 13:00:20','2025-03-04 18:00:20','','Chris Hemsworth','','publish','closed','closed','','chris-hemsworth','','','2025-03-04 13:19:43','2025-03-04 18:19:43','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=26',0,'team-member','',0),
	(27,2,'2025-03-04 13:00:45','2025-03-04 18:00:45','','Chris-Leadership','','inherit','open','closed','','chris-leadership','','','2025-03-04 13:00:45','2025-03-04 18:00:45','',26,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Chris-Leadership.webp',0,'attachment','image/webp',0),
	(28,2,'2025-03-04 13:02:34','2025-03-04 18:02:34','','Anne Hathaway','','publish','closed','closed','','anne-hathaway','','','2025-03-04 13:19:57','2025-03-04 18:19:57','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=28',0,'team-member','',0),
	(29,2,'2025-03-04 13:02:02','2025-03-04 18:02:02','','Anne-ProjectManager','','inherit','open','closed','','anne-projectmanager','','','2025-03-04 13:02:02','2025-03-04 18:02:02','',28,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Anne-ProjectManager.webp',0,'attachment','image/webp',0),
	(30,2,'2025-03-04 13:03:32','2025-03-04 18:03:32','','Kurt Cobain','','publish','closed','closed','','kurt-cobain','','','2025-03-04 13:20:09','2025-03-04 18:20:09','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=30',0,'team-member','',0),
	(31,2,'2025-03-04 13:03:14','2025-03-04 18:03:14','','Kurt-ProjectManager','','inherit','open','closed','','kurt-projectmanager','','','2025-03-04 13:03:14','2025-03-04 18:03:14','',30,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Kurt-ProjectManager.webp',0,'attachment','image/webp',0),
	(32,2,'2025-03-04 13:04:34','2025-03-04 18:04:34','','Daniel Craig','','publish','closed','closed','','daniel-craig','','','2025-03-04 13:20:22','2025-03-04 18:20:22','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=32',0,'team-member','',0),
	(33,2,'2025-03-04 13:04:15','2025-03-04 18:04:15','','Daniel-Developer','','inherit','open','closed','','daniel-developer','','','2025-03-04 13:04:15','2025-03-04 18:04:15','',32,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Daniel-Developer.webp',0,'attachment','image/webp',0),
	(34,2,'2025-03-04 13:06:02','2025-03-04 18:06:02','','Joe Jonas','','publish','closed','closed','','joe-jonas','','','2025-03-04 13:20:33','2025-03-04 18:20:33','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=34',0,'team-member','',0),
	(35,2,'2025-03-04 13:06:41','2025-03-04 18:06:41','','Joe-Developer','','inherit','open','closed','','joe-developer','','','2025-03-04 13:06:41','2025-03-04 18:06:41','',34,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Joe-Developer.webp',0,'attachment','image/webp',0),
	(36,2,'2025-03-04 13:07:56','2025-03-04 18:07:56','','Vince Carter','','publish','closed','closed','','vince-carter','','','2025-03-04 13:20:42','2025-03-04 18:20:42','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=36',0,'team-member','',0),
	(37,2,'2025-03-04 13:07:18','2025-03-04 18:07:18','','Vince-Developer','','inherit','open','closed','','vince-developer','','','2025-03-04 13:07:18','2025-03-04 18:07:18','',36,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Vince-Developer.webp',0,'attachment','image/webp',0),
	(38,2,'2025-03-04 13:08:50','2025-03-04 18:08:50','','Josh Groban','','publish','closed','closed','','josh-groban','','','2025-03-04 13:20:52','2025-03-04 18:20:52','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=38',0,'team-member','',0),
	(39,2,'2025-03-04 13:08:34','2025-03-04 18:08:34','','Josh-Designer','','inherit','open','closed','','josh-designer','','','2025-03-04 13:08:34','2025-03-04 18:08:34','',38,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Josh-Designer.webp',0,'attachment','image/webp',0),
	(40,2,'2025-03-04 13:09:34','2025-03-04 18:09:34','','Adam Sandler','','publish','closed','closed','','adam-sandler','','','2025-03-04 13:21:26','2025-03-04 18:21:26','',0,'http://localhost:8888/timber-skill-test/?post_type=team-member&#038;p=40',0,'team-member','',0),
	(41,2,'2025-03-04 13:21:10','2025-03-04 18:21:10','','Adam-Designer','','inherit','open','closed','','adam-designer','','','2025-03-04 13:21:10','2025-03-04 18:21:10','',40,'http://localhost:8888/timber-skill-test/wp-content/uploads/2025/03/Adam-Designer.webp',0,'attachment','image/webp',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(21,2,0),
	(26,2,0),
	(28,3,0),
	(30,3,0),
	(32,5,0),
	(34,5,0),
	(36,5,0),
	(38,4,0),
	(40,4,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,0),
	(2,2,'department','',0,2),
	(3,3,'department','',0,2),
	(4,4,'department','',0,2),
	(5,5,'department','',0,3);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Leadership','leadership',0),
	(3,'Project Managers','project-managers',0),
	(4,'Designers','designers',0),
	(5,'Developers','developers',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','marvelandsnap'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','0'),
	(16,1,'session_tokens','a:1:{s:64:\"8b81377f258666e84e4e7f229917c58df8fa6bc8c93c207d51dafc70b6fe9ade\";a:4:{s:10:\"expiration\";i:1741207051;s:2:\"ip\";s:13:\"198.84.240.86\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0\";s:5:\"login\";i:1741034251;}}'),
	(17,1,'wp_dashboard_quick_press_last_post_id','9'),
	(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"198.84.240.0\";}'),
	(19,2,'nickname','todosiienko'),
	(20,2,'first_name','Iurii'),
	(21,2,'last_name','Todosiienko'),
	(22,2,'description',''),
	(23,2,'rich_editing','true'),
	(24,2,'syntax_highlighting','true'),
	(25,2,'comment_shortcuts','false'),
	(26,2,'admin_color','fresh'),
	(27,2,'use_ssl','0'),
	(28,2,'show_admin_bar_front','true'),
	(29,2,'locale',''),
	(30,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(31,2,'wp_user_level','10'),
	(32,2,'dismissed_wp_pointers',''),
	(33,2,'session_tokens','a:1:{s:64:\"4f7f467935c76ae539de208440156dfe1b19a80e9da1b7845ec89dbf7f613cb7\";a:4:{s:10:\"expiration\";i:1742310104;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\";s:5:\"login\";i:1741100504;}}'),
	(34,2,'wp_dashboard_quick_press_last_post_id','10'),
	(35,2,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}'),
	(36,2,'acf_user_settings','a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
	(37,2,'closedpostboxes_acf-post-type','a:0:{}'),
	(38,2,'metaboxhidden_acf-post-type','a:1:{i:0;s:7:\"slugdiv\";}'),
	(39,2,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}'),
	(40,2,'closedpostboxes_acf-taxonomy','a:0:{}'),
	(41,2,'metaboxhidden_acf-taxonomy','a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
	(42,2,'wp_user-settings','libraryContent=browse'),
	(43,2,'wp_user-settings-time','1741110974');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'marvelandsnap','$P$BHmyOArLkviI/kWGjIs1Vw96il5dJW.','marvelandsnap','support@marvelandsnap.com','https://todosiienko-timber-skill-test.pantheonsite.io','2024-07-19 15:52:59','',0,'marvelandsnap'),
	(2,'todosiienko','$P$B/EahJ5aaTOdNQEPEE50i.oX5traB2.','todosiienko','nordeanums@gmail.com','','2025-03-03 20:38:18','',0,'Iurii Todosiienko');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
