-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2019 às 04:49
-- Versão do servidor: 10.1.10-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intelinvest`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_arquivos`
--

CREATE TABLE `wp_arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `pasta` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `dt_cad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `wp_arquivos`
--

INSERT INTO `wp_arquivos` (`id`, `nome`, `pasta`, `id_user`, `id_perfil`, `tipo`, `dt_cad`) VALUES
(11, 'banco.pdf', 'uploads/1', 1, 2, 'Investimentos', '2019-09-02'),
(12, 'helena.pdf', 'uploads/1', 1, 2, 'Investimentos', '2019-09-05'),
(13, 'Pedido Relogio.pdf', 'uploads/1', 1, 2, 'Investimentos', '2019-09-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-11 21:06:19', '2019-06-12 00:06:19', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `wp_newsletter`
--

INSERT INTO `wp_newsletter` (`id`, `email`) VALUES
(1, 'teste@teste.com'),
(2, 'jehnyffen@teste.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/intelinvest', 'yes'),
(2, 'home', 'http://localhost/intelinvest', 'yes'),
(3, 'blogname', 'Intelinvest', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jehnyffen@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:247:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"banners/?$\";s:27:\"index.php?post_type=banners\";s:40:\"banners/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=banners&feed=$matches[1]\";s:35:\"banners/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=banners&feed=$matches[1]\";s:27:\"banners/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=banners&paged=$matches[1]\";s:8:\"sobre/?$\";s:25:\"index.php?post_type=sobre\";s:38:\"sobre/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=sobre&feed=$matches[1]\";s:33:\"sobre/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=sobre&feed=$matches[1]\";s:25:\"sobre/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=sobre&paged=$matches[1]\";s:11:\"servicos/?$\";s:28:\"index.php?post_type=servicos\";s:41:\"servicos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=servicos&feed=$matches[1]\";s:36:\"servicos/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=servicos&feed=$matches[1]\";s:28:\"servicos/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=servicos&paged=$matches[1]\";s:16:\"investimentos/?$\";s:33:\"index.php?post_type=investimentos\";s:46:\"investimentos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=investimentos&feed=$matches[1]\";s:41:\"investimentos/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=investimentos&feed=$matches[1]\";s:33:\"investimentos/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=investimentos&paged=$matches[1]\";s:9:\"perfil/?$\";s:26:\"index.php?post_type=perfil\";s:39:\"perfil/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=perfil&feed=$matches[1]\";s:34:\"perfil/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=perfil&feed=$matches[1]\";s:26:\"perfil/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=perfil&paged=$matches[1]\";s:16:\"como_funciona/?$\";s:33:\"index.php?post_type=como_funciona\";s:46:\"como_funciona/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=como_funciona&feed=$matches[1]\";s:41:\"como_funciona/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=como_funciona&feed=$matches[1]\";s:33:\"como_funciona/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=como_funciona&paged=$matches[1]\";s:14:\"consultoria/?$\";s:31:\"index.php?post_type=consultoria\";s:44:\"consultoria/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=consultoria&feed=$matches[1]\";s:39:\"consultoria/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=consultoria&feed=$matches[1]\";s:31:\"consultoria/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=consultoria&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:48:\"banners/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?banners=$matches[1]&feed=$matches[2]\";s:43:\"banners/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?banners=$matches[1]&feed=$matches[2]\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"sobre/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"sobre/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"sobre/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sobre/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sobre/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"sobre/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"sobre/([^/]+)/embed/?$\";s:38:\"index.php?sobre=$matches[1]&embed=true\";s:26:\"sobre/([^/]+)/trackback/?$\";s:32:\"index.php?sobre=$matches[1]&tb=1\";s:46:\"sobre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?sobre=$matches[1]&feed=$matches[2]\";s:41:\"sobre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?sobre=$matches[1]&feed=$matches[2]\";s:34:\"sobre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?sobre=$matches[1]&paged=$matches[2]\";s:41:\"sobre/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?sobre=$matches[1]&cpage=$matches[2]\";s:30:\"sobre/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?sobre=$matches[1]&page=$matches[2]\";s:22:\"sobre/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"sobre/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"sobre/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"sobre/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"sobre/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"sobre/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"servicos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"servicos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"servicos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"servicos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"servicos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"servicos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"servicos/([^/]+)/embed/?$\";s:41:\"index.php?servicos=$matches[1]&embed=true\";s:29:\"servicos/([^/]+)/trackback/?$\";s:35:\"index.php?servicos=$matches[1]&tb=1\";s:49:\"servicos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?servicos=$matches[1]&feed=$matches[2]\";s:44:\"servicos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?servicos=$matches[1]&feed=$matches[2]\";s:37:\"servicos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?servicos=$matches[1]&paged=$matches[2]\";s:44:\"servicos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?servicos=$matches[1]&cpage=$matches[2]\";s:33:\"servicos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?servicos=$matches[1]&page=$matches[2]\";s:25:\"servicos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"servicos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"servicos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"servicos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"servicos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"servicos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"investimentos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"investimentos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"investimentos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"investimentos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"investimentos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"investimentos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"investimentos/([^/]+)/embed/?$\";s:46:\"index.php?investimentos=$matches[1]&embed=true\";s:34:\"investimentos/([^/]+)/trackback/?$\";s:40:\"index.php?investimentos=$matches[1]&tb=1\";s:54:\"investimentos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?investimentos=$matches[1]&feed=$matches[2]\";s:49:\"investimentos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?investimentos=$matches[1]&feed=$matches[2]\";s:42:\"investimentos/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?investimentos=$matches[1]&paged=$matches[2]\";s:49:\"investimentos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?investimentos=$matches[1]&cpage=$matches[2]\";s:38:\"investimentos/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?investimentos=$matches[1]&page=$matches[2]\";s:30:\"investimentos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"investimentos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"investimentos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"investimentos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"investimentos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"investimentos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"perfil/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"perfil/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"perfil/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"perfil/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"perfil/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"perfil/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"perfil/([^/]+)/embed/?$\";s:39:\"index.php?perfil=$matches[1]&embed=true\";s:27:\"perfil/([^/]+)/trackback/?$\";s:33:\"index.php?perfil=$matches[1]&tb=1\";s:47:\"perfil/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?perfil=$matches[1]&feed=$matches[2]\";s:42:\"perfil/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?perfil=$matches[1]&feed=$matches[2]\";s:35:\"perfil/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?perfil=$matches[1]&paged=$matches[2]\";s:42:\"perfil/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?perfil=$matches[1]&cpage=$matches[2]\";s:31:\"perfil/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?perfil=$matches[1]&page=$matches[2]\";s:23:\"perfil/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"perfil/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"perfil/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"perfil/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"perfil/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"perfil/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"como_funciona/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"como_funciona/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"como_funciona/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"como_funciona/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"como_funciona/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"como_funciona/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"como_funciona/([^/]+)/embed/?$\";s:46:\"index.php?como_funciona=$matches[1]&embed=true\";s:34:\"como_funciona/([^/]+)/trackback/?$\";s:40:\"index.php?como_funciona=$matches[1]&tb=1\";s:54:\"como_funciona/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?como_funciona=$matches[1]&feed=$matches[2]\";s:49:\"como_funciona/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?como_funciona=$matches[1]&feed=$matches[2]\";s:42:\"como_funciona/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?como_funciona=$matches[1]&paged=$matches[2]\";s:49:\"como_funciona/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?como_funciona=$matches[1]&cpage=$matches[2]\";s:38:\"como_funciona/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?como_funciona=$matches[1]&page=$matches[2]\";s:30:\"como_funciona/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"como_funciona/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"como_funciona/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"como_funciona/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"como_funciona/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"como_funciona/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"consultoria/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"consultoria/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"consultoria/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"consultoria/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"consultoria/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"consultoria/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"consultoria/([^/]+)/embed/?$\";s:44:\"index.php?consultoria=$matches[1]&embed=true\";s:32:\"consultoria/([^/]+)/trackback/?$\";s:38:\"index.php?consultoria=$matches[1]&tb=1\";s:52:\"consultoria/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?consultoria=$matches[1]&feed=$matches[2]\";s:47:\"consultoria/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?consultoria=$matches[1]&feed=$matches[2]\";s:40:\"consultoria/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?consultoria=$matches[1]&paged=$matches[2]\";s:47:\"consultoria/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?consultoria=$matches[1]&cpage=$matches[2]\";s:36:\"consultoria/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?consultoria=$matches[1]&page=$matches[2]\";s:28:\"consultoria/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"consultoria/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"consultoria/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"consultoria/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"consultoria/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"consultoria/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:2;s:40:\"wp-file-upload/wordpress_file_upload.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'intelinvest', 'yes'),
(41, 'stylesheet', 'intelinvest', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1567652784;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1567685184;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567685185;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567728382;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567731309;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567731312;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560300924;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Intelinvest', 'yes'),
(146, 'theme_mods_intelinvest', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'acf_version', '5.8.2', 'yes'),
(421, 'recovery_mode_email_last_sent', '1564485837', 'yes'),
(445, 'core_updater.lock', '1563028362', 'no'),
(470, 'wordpress_file_upload_table_log_version', '4.0', 'yes'),
(471, 'wordpress_file_upload_table_userdata_version', '1.0', 'yes'),
(472, 'wordpress_file_upload_table_dbxqueue_version', '1.0', 'yes'),
(473, 'widget_wordpress_file_upload_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(474, 'wordpress_file_upload_last_idlog', 'a:3:{s:3:\"pre\";N;s:4:\"post\";N;s:4:\"time\";i:1564097790;}', 'yes'),
(476, 'wordpress_file_upload_options', 'version=1.0;shortcode=;hashfiles=0;basedir=77702d7468656d65732f696e74656c696e766573742f75706c6f616473;personaldata=0;postmethod=fopen;modsecurity=;userstatehandler=session;relaxcss=0;admindomain=siteurl;mediacustom=0;createthumbnails=;includeotherfiles=0;altserver=0;captcha_sitekey=;captcha_secretkey=;browser_permissions=', 'yes'),
(478, 'wfu_params_index', 't8CK9zr5wW6Sy7WX||45||1||jehny&&L7ZDePpBjEwpROz9||49||1||jehny&&2b9qf5sTSGDx7gQa||56||1||jehny&&nAwNnWbX7qdgGORq||57||1||jehny', 'yes'),
(479, 'wfu_params_t8CK9zr5wW6Sy7WX', '7b227769646765746964223a22222c2275706c6f61646964223a2231222c2273696e676c65627574746f6e223a2274727565222c2275706c6f616470617468223a2275706c6f616473222c226669746d6f6465223a22726573706f6e73697665222c22616c6c6f776e6f66696c65223a2266616c7365222c2272657365746d6f6465223a22616c77617973222c2275706c6f6164726f6c65223a22616c6c2c677565737473222c2275706c6f61647061747465726e73223a222a2e2a222c226d617873697a65223a223530222c2263726561746570617468223a2266616c7365222c22666f72636566696c656e616d65223a2274727565222c226163636573736d6574686f64223a226e6f726d616c222c22667470696e666f223a22222c22757365667470646f6d61696e223a2266616c7365222c22667470706173736976656d6f6465223a2266616c7365222c2266747066696c657065726d697373696f6e73223a22222c2273686f77746172676574666f6c646572223a2266616c7365222c2261736b666f72737562666f6c64657273223a2266616c7365222c22737562666f6c64657274726565223a22222c226475706c696361746573706f6c696379223a226d61696e7461696e20626f7468222c22756e697175657061747465726e223a22696e646578222c227265646972656374223a2266616c7365222c2272656469726563746c696e6b223a22222c2261646d696e6d65737361676573223a66616c73652c22666f726365636c6173736963223a2266616c7365222c22746573746d6f6465223a2266616c7365222c2264656275676d6f6465223a2266616c7365222c22706c6163656d656e7473223a227469746c655c2f66696c656e616d652b73656c656374627574746f6e2b75706c6f6164627574746f6e5c2f737562666f6c646572735c2f75736572646174615c2f6d657373616765222c2275706c6f61647469746c65223a22456e76696172206172717569766f73222c2273656c656374627574746f6e223a2253656c6563696f6e6172206172717569766f73222c2275706c6f6164627574746f6e223a22456e76696172206172717569766f73222c22746172676574666f6c6465726c6162656c223a2255706c6f6164204469726563746f7279222c22737562666f6c6465726c6162656c223a2253656c65637420537562666f6c646572222c22737563636573736d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f222c227761726e696e676d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f2c206d617320636f6d2070726f626c656d6173222c226572726f726d657373616765223a224172717569766f202566696c656e616d6525206e5c75303065336f20656e766961646f222c22776169746d657373616765223a224f206172717569766f202566696c656e616d6525206573745c75303065312073656e646f20656e766961646f222c2275706c6f61646d65646961627574746f6e223a22456e76696f206465206d5c7530306564646961222c22766964656f6e616d65223a2273747265616d20646520766964656f222c22696d6167656e616d65223a22636170747572612064652074656c61222c2272657175697265646c6162656c223a225c75303061302872657175657269646f29222c226e6f74696679223a2266616c7365222c226e6f74696679726563697069656e7473223a22222c226e6f7469667968656164657273223a22222c226e6f746966797375626a656374223a224e6f7469666963615c75303065375c75303065336f20646520656e76696f206465206172717569766f222c226e6f746966796d657373616765223a225072657a61646f2044657374696e61745c753030653172696f2c256e25256e252045737461205c753030653920756d61206d656e736167656d20646520656e7472656761206175746f6d5c7530306531746963612070617261206e6f74696669635c75303065312d6c6f2064652071756520756d206e6f766f206172717569766f20666f6920656e766961646f2e256e25256e25204174656e63696f73616d656e7465222c2261747461636866696c65223a2266616c7365222c2261736b636f6e73656e74223a2266616c7365222c22706572736f6e616c646174617479706573223a227573657264617461222c226e6f7472656d656d626572636f6e73656e74223a2266616c7365222c22636f6e73656e7472656a65637475706c6f6164223a2266616c7365222c22636f6e73656e7472656a6563746d657373616765223a22596f7520686176652064656e69656420746f206c6574207468652077656273697465206b65657020796f757220706572736f6e616c20646174612e2055706c6f61642063616e6e6f7420636f6e74696e756521222c22636f6e73656e74666f726d6174223a22726164696f222c22636f6e73656e7470726573656c656374223a226e6f6e65222c22636f6e73656e747175657374696f6e223a22416f206174697661722065737461206f705c75303065375c75303065336f2c20636f6e636f72646f20656d20646569786172206f2073697465206d616e746572206d657573206461646f7320706573736f616973222c22636f6e73656e74646973636c61696d6572223a22222c22737563636573736d657373616765636f6c6f72223a226565222c22737563636573736d657373616765636f6c6f7273223a22233030363630302c234545464645452c23303036363636222c227761726e696e676d657373616765636f6c6f7273223a22234638383031372c234645463245372c23363333333039222c226661696c6d657373616765636f6c6f7273223a22233636303030302c234646454545452c23363636363030222c22776169746d657373616765636f6c6f7273223a22233636363636362c234545454545452c23333333333333222c22776964746873223a22222c2268656967687473223a22222c227573657264617461223a2266616c7365222c2275736572646174616c6162656c223a22537561206d656e736167656d7c743a746578747c733a6c6566747c723a307c613a307c703a696e6c696e657c643a222c2266696c65626173656c696e6b223a2266616c7365222c226d656469616c696e6b223a2266616c7365222c22706f73746c696e6b223a2266616c7365222c2277656263616d223a2266616c7365222c2277656263616d6d6f6465223a226361707475726520766964656f222c22617564696f63617074757265223a2266616c7365222c22766964656f7769647468223a22222c22766964656f686569676874223a22222c22766964656f617370656374726174696f223a22222c22766964656f6672616d6572617465223a22222c2263616d657261666163696e67223a22616e79222c226d61787265636f726474696d65223a223130222c22706167656964223a34352c22626c6f676964223a312c227068705f656e76223a223332626974222c2261646d696e6572726f7273223a22222c2275736572646174615f6669656c6473223a5b5d2c22737562666f6c646572736172726179223a5b5d2c227375626469725f73656c656374696f6e5f696e646578223a222d31227d', 'yes'),
(480, 'wfu_params_L7ZDePpBjEwpROz9', '7b227769646765746964223a22222c2275706c6f61646964223a2231222c2273696e676c65627574746f6e223a2274727565222c2275706c6f616470617468223a2275706c6f616473222c226669746d6f6465223a22726573706f6e73697665222c22616c6c6f776e6f66696c65223a2266616c7365222c2272657365746d6f6465223a22616c77617973222c2275706c6f6164726f6c65223a22616c6c2c677565737473222c2275706c6f61647061747465726e73223a222a2e2a222c226d617873697a65223a223530222c2263726561746570617468223a2266616c7365222c22666f72636566696c656e616d65223a2274727565222c226163636573736d6574686f64223a226e6f726d616c222c22667470696e666f223a22222c22757365667470646f6d61696e223a2266616c7365222c22667470706173736976656d6f6465223a2266616c7365222c2266747066696c657065726d697373696f6e73223a22222c2273686f77746172676574666f6c646572223a2266616c7365222c2261736b666f72737562666f6c64657273223a2266616c7365222c22737562666f6c64657274726565223a22222c226475706c696361746573706f6c696379223a226d61696e7461696e20626f7468222c22756e697175657061747465726e223a22696e646578222c227265646972656374223a2266616c7365222c2272656469726563746c696e6b223a22222c2261646d696e6d65737361676573223a66616c73652c22666f726365636c6173736963223a2266616c7365222c22746573746d6f6465223a2266616c7365222c2264656275676d6f6465223a2266616c7365222c22706c6163656d656e7473223a227469746c655c2f66696c656e616d652b73656c656374627574746f6e2b75706c6f6164627574746f6e5c2f737562666f6c646572735c2f75736572646174615c2f6d657373616765222c2275706c6f61647469746c65223a22456e76696172206172717569766f73222c2273656c656374627574746f6e223a2253656c6563696f6e6172206172717569766f73222c2275706c6f6164627574746f6e223a22456e76696172206172717569766f73222c22746172676574666f6c6465726c6162656c223a2255706c6f6164204469726563746f7279222c22737562666f6c6465726c6162656c223a2253656c65637420537562666f6c646572222c22737563636573736d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f222c227761726e696e676d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f2c206d617320636f6d2070726f626c656d6173222c226572726f726d657373616765223a224172717569766f202566696c656e616d6525206e5c75303065336f20656e766961646f222c22776169746d657373616765223a224f206172717569766f202566696c656e616d6525206573745c75303065312073656e646f20656e766961646f222c2275706c6f61646d65646961627574746f6e223a22456e76696f206465206d5c7530306564646961222c22766964656f6e616d65223a2273747265616d20646520766964656f222c22696d6167656e616d65223a22636170747572612064652074656c61222c2272657175697265646c6162656c223a225c75303061302872657175657269646f29222c226e6f74696679223a2266616c7365222c226e6f74696679726563697069656e7473223a22222c226e6f7469667968656164657273223a22222c226e6f746966797375626a656374223a224e6f7469666963615c75303065375c75303065336f20646520656e76696f206465206172717569766f222c226e6f746966796d657373616765223a225072657a61646f2044657374696e61745c753030653172696f2c256e25256e252045737461205c753030653920756d61206d656e736167656d20646520656e7472656761206175746f6d5c7530306531746963612070617261206e6f74696669635c75303065312d6c6f2064652071756520756d206e6f766f206172717569766f20666f6920656e766961646f2e256e25256e25204174656e63696f73616d656e7465222c2261747461636866696c65223a2266616c7365222c2261736b636f6e73656e74223a2266616c7365222c22706572736f6e616c646174617479706573223a227573657264617461222c226e6f7472656d656d626572636f6e73656e74223a2266616c7365222c22636f6e73656e7472656a65637475706c6f6164223a2266616c7365222c22636f6e73656e7472656a6563746d657373616765223a22596f7520686176652064656e69656420746f206c6574207468652077656273697465206b65657020796f757220706572736f6e616c20646174612e2055706c6f61642063616e6e6f7420636f6e74696e756521222c22636f6e73656e74666f726d6174223a22726164696f222c22636f6e73656e7470726573656c656374223a226e6f6e65222c22636f6e73656e747175657374696f6e223a22416f206174697661722065737461206f705c75303065375c75303065336f2c20636f6e636f72646f20656d20646569786172206f2073697465206d616e746572206d657573206461646f7320706573736f616973222c22636f6e73656e74646973636c61696d6572223a22222c22737563636573736d657373616765636f6c6f72223a226565222c22737563636573736d657373616765636f6c6f7273223a22233030363630302c234545464645452c23303036363636222c227761726e696e676d657373616765636f6c6f7273223a22234638383031372c234645463245372c23363333333039222c226661696c6d657373616765636f6c6f7273223a22233636303030302c234646454545452c23363636363030222c22776169746d657373616765636f6c6f7273223a22233636363636362c234545454545452c23333333333333222c22776964746873223a22222c2268656967687473223a22222c227573657264617461223a2266616c7365222c2275736572646174616c6162656c223a22537561206d656e736167656d7c743a746578747c733a6c6566747c723a307c613a307c703a696e6c696e657c643a222c2266696c65626173656c696e6b223a2266616c7365222c226d656469616c696e6b223a2266616c7365222c22706f73746c696e6b223a2266616c7365222c2277656263616d223a2266616c7365222c2277656263616d6d6f6465223a226361707475726520766964656f222c22617564696f63617074757265223a2266616c7365222c22766964656f7769647468223a22222c22766964656f686569676874223a22222c22766964656f617370656374726174696f223a22222c22766964656f6672616d6572617465223a22222c2263616d657261666163696e67223a22616e79222c226d61787265636f726474696d65223a223130222c22706167656964223a34392c22626c6f676964223a312c227068705f656e76223a223332626974222c2261646d696e6572726f7273223a22222c2275736572646174615f6669656c6473223a5b5d2c22737562666f6c646572736172726179223a5b5d2c227375626469725f73656c656374696f6e5f696e646578223a222d31227d', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(537, 'wfu_params_2b9qf5sTSGDx7gQa', '7b227769646765746964223a22222c2275706c6f61646964223a2231222c2273696e676c65627574746f6e223a2274727565222c2275706c6f616470617468223a2275706c6f616473222c226669746d6f6465223a22726573706f6e73697665222c22616c6c6f776e6f66696c65223a2266616c7365222c2272657365746d6f6465223a22616c77617973222c2275706c6f6164726f6c65223a22616c6c2c677565737473222c2275706c6f61647061747465726e73223a222a2e2a222c226d617873697a65223a223530222c2263726561746570617468223a2266616c7365222c22666f72636566696c656e616d65223a2274727565222c226163636573736d6574686f64223a226e6f726d616c222c22667470696e666f223a22222c22757365667470646f6d61696e223a2266616c7365222c22667470706173736976656d6f6465223a2266616c7365222c2266747066696c657065726d697373696f6e73223a22222c2273686f77746172676574666f6c646572223a2266616c7365222c2261736b666f72737562666f6c64657273223a2266616c7365222c22737562666f6c64657274726565223a22222c226475706c696361746573706f6c696379223a226d61696e7461696e20626f7468222c22756e697175657061747465726e223a22696e646578222c227265646972656374223a2266616c7365222c2272656469726563746c696e6b223a22222c2261646d696e6d65737361676573223a66616c73652c22666f726365636c6173736963223a2266616c7365222c22746573746d6f6465223a2266616c7365222c2264656275676d6f6465223a2266616c7365222c22706c6163656d656e7473223a227469746c655c2f66696c656e616d652b73656c656374627574746f6e2b75706c6f6164627574746f6e5c2f737562666f6c646572735c2f75736572646174615c2f6d657373616765222c2275706c6f61647469746c65223a22456e76696172206172717569766f73222c2273656c656374627574746f6e223a2253656c6563696f6e6172206172717569766f73222c2275706c6f6164627574746f6e223a22456e76696172206172717569766f73222c22746172676574666f6c6465726c6162656c223a2255706c6f6164204469726563746f7279222c22737562666f6c6465726c6162656c223a2253656c65637420537562666f6c646572222c22737563636573736d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f222c227761726e696e676d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f2c206d617320636f6d2070726f626c656d6173222c226572726f726d657373616765223a224172717569766f202566696c656e616d6525206e5c75303065336f20656e766961646f222c22776169746d657373616765223a224f206172717569766f202566696c656e616d6525206573745c75303065312073656e646f20656e766961646f222c2275706c6f61646d65646961627574746f6e223a22456e76696f206465206d5c7530306564646961222c22766964656f6e616d65223a2273747265616d20646520766964656f222c22696d6167656e616d65223a22636170747572612064652074656c61222c2272657175697265646c6162656c223a225c75303061302872657175657269646f29222c226e6f74696679223a2266616c7365222c226e6f74696679726563697069656e7473223a22222c226e6f7469667968656164657273223a22222c226e6f746966797375626a656374223a224e6f7469666963615c75303065375c75303065336f20646520656e76696f206465206172717569766f222c226e6f746966796d657373616765223a225072657a61646f2044657374696e61745c753030653172696f2c256e25256e252045737461205c753030653920756d61206d656e736167656d20646520656e7472656761206175746f6d5c7530306531746963612070617261206e6f74696669635c75303065312d6c6f2064652071756520756d206e6f766f206172717569766f20666f6920656e766961646f2e256e25256e25204174656e63696f73616d656e7465222c2261747461636866696c65223a2266616c7365222c2261736b636f6e73656e74223a2266616c7365222c22706572736f6e616c646174617479706573223a227573657264617461222c226e6f7472656d656d626572636f6e73656e74223a2266616c7365222c22636f6e73656e7472656a65637475706c6f6164223a2266616c7365222c22636f6e73656e7472656a6563746d657373616765223a22596f7520686176652064656e69656420746f206c6574207468652077656273697465206b65657020796f757220706572736f6e616c20646174612e2055706c6f61642063616e6e6f7420636f6e74696e756521222c22636f6e73656e74666f726d6174223a22726164696f222c22636f6e73656e7470726573656c656374223a226e6f6e65222c22636f6e73656e747175657374696f6e223a22416f206174697661722065737461206f705c75303065375c75303065336f2c20636f6e636f72646f20656d20646569786172206f2073697465206d616e746572206d657573206461646f7320706573736f616973222c22636f6e73656e74646973636c61696d6572223a22222c22737563636573736d657373616765636f6c6f72223a226565222c22737563636573736d657373616765636f6c6f7273223a22233030363630302c234545464645452c23303036363636222c227761726e696e676d657373616765636f6c6f7273223a22234638383031372c234645463245372c23363333333039222c226661696c6d657373616765636f6c6f7273223a22233636303030302c234646454545452c23363636363030222c22776169746d657373616765636f6c6f7273223a22233636363636362c234545454545452c23333333333333222c22776964746873223a22222c2268656967687473223a22222c227573657264617461223a2266616c7365222c2275736572646174616c6162656c223a22537561206d656e736167656d7c743a746578747c733a6c6566747c723a307c613a307c703a696e6c696e657c643a222c2266696c65626173656c696e6b223a2266616c7365222c226d656469616c696e6b223a2266616c7365222c22706f73746c696e6b223a2266616c7365222c2277656263616d223a2266616c7365222c2277656263616d6d6f6465223a226361707475726520766964656f222c22617564696f63617074757265223a2266616c7365222c22766964656f7769647468223a22222c22766964656f686569676874223a22222c22766964656f617370656374726174696f223a22222c22766964656f6672616d6572617465223a22222c2263616d657261666163696e67223a22616e79222c226d61787265636f726474696d65223a223130222c22706167656964223a35362c22626c6f676964223a312c227068705f656e76223a223332626974222c2261646d696e6572726f7273223a22222c2275736572646174615f6669656c6473223a5b5d2c22737562666f6c646572736172726179223a5b5d2c227375626469725f73656c656374696f6e5f696e646578223a222d31227d', 'yes'),
(543, 'wfu_params_nAwNnWbX7qdgGORq', '7b227769646765746964223a22222c2275706c6f61646964223a2231222c2273696e676c65627574746f6e223a2274727565222c2275706c6f616470617468223a2275706c6f616473222c226669746d6f6465223a22726573706f6e73697665222c22616c6c6f776e6f66696c65223a2266616c7365222c2272657365746d6f6465223a22616c77617973222c2275706c6f6164726f6c65223a22616c6c2c677565737473222c2275706c6f61647061747465726e73223a222a2e2a222c226d617873697a65223a223530222c2263726561746570617468223a2266616c7365222c22666f72636566696c656e616d65223a2274727565222c226163636573736d6574686f64223a226e6f726d616c222c22667470696e666f223a22222c22757365667470646f6d61696e223a2266616c7365222c22667470706173736976656d6f6465223a2266616c7365222c2266747066696c657065726d697373696f6e73223a22222c2273686f77746172676574666f6c646572223a2266616c7365222c2261736b666f72737562666f6c64657273223a2266616c7365222c22737562666f6c64657274726565223a22222c226475706c696361746573706f6c696379223a226d61696e7461696e20626f7468222c22756e697175657061747465726e223a22696e646578222c227265646972656374223a2266616c7365222c2272656469726563746c696e6b223a22222c2261646d696e6d65737361676573223a66616c73652c22666f726365636c6173736963223a2266616c7365222c22746573746d6f6465223a2266616c7365222c2264656275676d6f6465223a2266616c7365222c22706c6163656d656e7473223a227469746c655c2f66696c656e616d652b73656c656374627574746f6e2b75706c6f6164627574746f6e5c2f737562666f6c646572735c2f75736572646174615c2f6d657373616765222c2275706c6f61647469746c65223a22456e76696172206172717569766f73222c2273656c656374627574746f6e223a2253656c6563696f6e6172206172717569766f73222c2275706c6f6164627574746f6e223a22456e76696172206172717569766f73222c22746172676574666f6c6465726c6162656c223a2255706c6f6164204469726563746f7279222c22737562666f6c6465726c6162656c223a2253656c65637420537562666f6c646572222c22737563636573736d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f222c227761726e696e676d657373616765223a224172717569766f202566696c656e616d652520656e766961646f20636f6d207375636573736f2c206d617320636f6d2070726f626c656d6173222c226572726f726d657373616765223a224172717569766f202566696c656e616d6525206e5c75303065336f20656e766961646f222c22776169746d657373616765223a224f206172717569766f202566696c656e616d6525206573745c75303065312073656e646f20656e766961646f222c2275706c6f61646d65646961627574746f6e223a22456e76696f206465206d5c7530306564646961222c22766964656f6e616d65223a2273747265616d20646520766964656f222c22696d6167656e616d65223a22636170747572612064652074656c61222c2272657175697265646c6162656c223a225c75303061302872657175657269646f29222c226e6f74696679223a2266616c7365222c226e6f74696679726563697069656e7473223a22222c226e6f7469667968656164657273223a22222c226e6f746966797375626a656374223a224e6f7469666963615c75303065375c75303065336f20646520656e76696f206465206172717569766f222c226e6f746966796d657373616765223a225072657a61646f2044657374696e61745c753030653172696f2c256e25256e252045737461205c753030653920756d61206d656e736167656d20646520656e7472656761206175746f6d5c7530306531746963612070617261206e6f74696669635c75303065312d6c6f2064652071756520756d206e6f766f206172717569766f20666f6920656e766961646f2e256e25256e25204174656e63696f73616d656e7465222c2261747461636866696c65223a2266616c7365222c2261736b636f6e73656e74223a2266616c7365222c22706572736f6e616c646174617479706573223a227573657264617461222c226e6f7472656d656d626572636f6e73656e74223a2266616c7365222c22636f6e73656e7472656a65637475706c6f6164223a2266616c7365222c22636f6e73656e7472656a6563746d657373616765223a22596f7520686176652064656e69656420746f206c6574207468652077656273697465206b65657020796f757220706572736f6e616c20646174612e2055706c6f61642063616e6e6f7420636f6e74696e756521222c22636f6e73656e74666f726d6174223a22726164696f222c22636f6e73656e7470726573656c656374223a226e6f6e65222c22636f6e73656e747175657374696f6e223a22416f206174697661722065737461206f705c75303065375c75303065336f2c20636f6e636f72646f20656d20646569786172206f2073697465206d616e746572206d657573206461646f7320706573736f616973222c22636f6e73656e74646973636c61696d6572223a22222c22737563636573736d657373616765636f6c6f72223a226565222c22737563636573736d657373616765636f6c6f7273223a22233030363630302c234545464645452c23303036363636222c227761726e696e676d657373616765636f6c6f7273223a22234638383031372c234645463245372c23363333333039222c226661696c6d657373616765636f6c6f7273223a22233636303030302c234646454545452c23363636363030222c22776169746d657373616765636f6c6f7273223a22233636363636362c234545454545452c23333333333333222c22776964746873223a22222c2268656967687473223a22222c227573657264617461223a2266616c7365222c2275736572646174616c6162656c223a22537561206d656e736167656d7c743a746578747c733a6c6566747c723a307c613a307c703a696e6c696e657c643a222c2266696c65626173656c696e6b223a2266616c7365222c226d656469616c696e6b223a2266616c7365222c22706f73746c696e6b223a2266616c7365222c2277656263616d223a2266616c7365222c2277656263616d6d6f6465223a226361707475726520766964656f222c22617564696f63617074757265223a2266616c7365222c22766964656f7769647468223a22222c22766964656f686569676874223a22222c22766964656f617370656374726174696f223a22222c22766964656f6672616d6572617465223a22222c2263616d657261666163696e67223a22616e79222c226d61787265636f726474696d65223a223130222c22706167656964223a35372c22626c6f676964223a312c227068705f656e76223a223332626974222c2261646d696e6572726f7273223a22222c2275736572646174615f6669656c6473223a5b5d2c22737562666f6c646572736172726179223a5b5d2c227375626469725f73656c656374696f6e5f696e646578223a222d31227d', 'yes'),
(563, 'tadv_settings', 'a:10:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";s:13:\"toolbar_block\";s:10:\"core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}', 'yes'),
(564, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(565, 'tadv_version', '5210', 'yes'),
(728, '_site_transient_timeout_theme_roots', '1567645413', 'no'),
(729, '_site_transient_theme_roots', 'a:1:{s:11:\"intelinvest\";s:7:\"/themes\";}', 'no'),
(731, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1567643623;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-24 16:57:40\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(732, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1567643624;s:7:\"checked\";a:1:{s:11:\"intelinvest\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(733, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1567643625;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-08-13 17:10:21\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/tinymce-advanced/5.2.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"wp-file-upload\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.0\";s:7:\"updated\";s:19:\"2016-08-26 07:11:33\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wp-file-upload/4.8.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.2.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513\";}s:11:\"banners_rtl\";a:0:{}}s:40:\"wp-file-upload/wordpress_file_upload.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-file-upload\";s:4:\"slug\";s:14:\"wp-file-upload\";s:6:\"plugin\";s:40:\"wp-file-upload/wordpress_file_upload.php\";s:11:\"new_version\";s:6:\"4.11.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-file-upload/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-file-upload.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-file-upload/assets/icon-256x256.png?rev=1196361\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-file-upload/assets/icon-128x128.png?rev=1196361\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-file-upload/assets/banner-1544x500.png?rev=1303941\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-file-upload/assets/banner-772x250.png?rev=1303941\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_perfil`
--

CREATE TABLE `wp_perfil` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `wp_perfil`
--

INSERT INTO `wp_perfil` (`id`, `nome`, `cor`, `descricao`) VALUES
(1, 'Administrador', '#FFFFFF', NULL),
(2, 'Standard', '#FFFFFF', NULL),
(3, 'Personal', '#BFCFEB', NULL),
(4, 'Investor', '#F9DC70', NULL),
(5, 'Private', '#B6A152', NULL),
(6, 'Exclusive', '#434142', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_wp_attached_file', '2019/06/banner.png'),
(4, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:892;s:4:\"file\";s:18:\"2019/06/banner.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x357.png\";s:5:\"width\";i:768;s:6:\"height\";i:357;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x476.png\";s:5:\"width\";i:1024;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_edit_last', '1'),
(6, 5, '_thumbnail_id', '52'),
(7, 5, '_edit_lock', '1564191342:1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1560647886:1'),
(10, 7, '_thumbnail_id', '6'),
(11, 8, '_edit_last', '1'),
(12, 8, 'field_5d05706465044', 'a:14:{s:3:\"key\";s:19:\"field_5d05706465044\";s:5:\"label\";s:6:\"Titulo\";s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(13, 8, 'field_5d05707d65045', 'a:14:{s:3:\"key\";s:19:\"field_5d05707d65045\";s:5:\"label\";s:10:\"Sub titulo\";s:4:\"name\";s:10:\"sub_titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(15, 8, 'position', 'acf_after_title'),
(16, 8, 'layout', 'default'),
(17, 8, 'hide_on_screen', 'a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}'),
(18, 8, '_edit_lock', '1564102348:1'),
(19, 5, 'titulo', 'INVESTIMENTO INTELIGENTE!'),
(20, 5, '_titulo', 'field_5d05706465044'),
(21, 5, 'sub_titulo', 'INVISTA COM TRANQUILIDADE E TENHA UMA CONSULTORIA EXCLUSIVA E 100% DEDICADA A VOCÊ!'),
(22, 5, '_sub_titulo', 'field_5d05707d65045'),
(23, 8, 'field_5d0596f4f6c95', 'a:14:{s:3:\"key\";s:19:\"field_5d0596f4f6c95\";s:5:\"label\";s:11:\"texto botao\";s:4:\"name\";s:11:\"texto_botao\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(24, 8, 'field_5d05973df6c96', 'a:14:{s:3:\"key\";s:19:\"field_5d05973df6c96\";s:5:\"label\";s:10:\"link_botao\";s:4:\"name\";s:10:\"link_botao\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(25, 8, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(26, 5, 'texto_botao', 'Abra sua conta'),
(27, 5, '_texto_botao', 'field_5d0596f4f6c95'),
(28, 5, 'link_botao', 'cadastro-usuario'),
(29, 5, '_link_botao', 'field_5d05973df6c96'),
(30, 9, '_edit_last', '1'),
(31, 9, 'field_5d067cddf3d5e', 'a:14:{s:3:\"key\";s:19:\"field_5d067cddf3d5e\";s:5:\"label\";s:6:\"titulo\";s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(32, 9, 'field_5d067d37f3d5f', 'a:11:{s:3:\"key\";s:19:\"field_5d067d37f3d5f\";s:5:\"label\";s:13:\"texto seção\";s:4:\"name\";s:11:\"texto_secao\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";s:2:\"no\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(33, 9, 'field_5d067d78f3d60', 'a:14:{s:3:\"key\";s:19:\"field_5d067d78f3d60\";s:5:\"label\";s:6:\"slogan\";s:4:\"name\";s:6:\"slogan\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(34, 9, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"investimentos\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(35, 9, 'position', 'acf_after_title'),
(36, 9, 'layout', 'default'),
(37, 9, 'hide_on_screen', 'a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}'),
(38, 9, '_edit_lock', '1564102853:1'),
(41, 11, '_edit_last', '1'),
(42, 11, '_edit_lock', '1564103352:1'),
(43, 11, 'titulo', 'POR QUE INVESTIMENTOS INTELIGENTES? '),
(44, 11, '_titulo', 'field_5d067cddf3d5e'),
(45, 11, 'texto_secao', 'Na Intelinvest, temos uma visão: o ativo mais valioso são as pessoas.\r\nIsso significa que nossa missão é gerar tranquilidade, segurança e bem-estar a você e sua família.\r\n\r\nSabemos da importância da tranquilidade financeira na vida de cada pessoa. E estamos aqui para ajudar você a construir o seu futuro. Sabemos também que não existem duas pessoas iguais. Você é único, e merece ser tratado dessa forma.\r\n\r\nNossa assessoria trabalha para indicar os melhores investimentos sempre de forma exclusiva e personalizada.'),
(46, 11, '_texto_secao', 'field_5d067d37f3d5f'),
(47, 11, 'slogan', 'Vem investir do jeito inteligente! Vem para a Intelinvest!'),
(48, 11, '_slogan', 'field_5d067d78f3d60'),
(49, 14, '_edit_last', '1'),
(50, 14, 'field_5d068737d1846', 'a:14:{s:3:\"key\";s:19:\"field_5d068737d1846\";s:5:\"label\";s:11:\"titulo_card\";s:4:\"name\";s:11:\"titulo_card\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(51, 14, 'field_5d068740d1847', 'a:14:{s:3:\"key\";s:19:\"field_5d068740d1847\";s:5:\"label\";s:14:\"subtitulo_card\";s:4:\"name\";s:14:\"subtitulo_card\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(52, 14, 'field_5d06874dd1848', 'a:14:{s:3:\"key\";s:19:\"field_5d06874dd1848\";s:5:\"label\";s:10:\"item1_card\";s:4:\"name\";s:10:\"item1_card\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(53, 14, 'field_5d068759d1849', 'a:14:{s:3:\"key\";s:19:\"field_5d068759d1849\";s:5:\"label\";s:10:\"item2_card\";s:4:\"name\";s:10:\"item2_card\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(54, 14, 'field_5d068765d184a', 'a:14:{s:3:\"key\";s:19:\"field_5d068765d184a\";s:5:\"label\";s:10:\"item3_card\";s:4:\"name\";s:10:\"item3_card\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(56, 14, 'position', 'acf_after_title'),
(57, 14, 'layout', 'default'),
(58, 14, 'hide_on_screen', 'a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"format\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}'),
(59, 14, '_edit_lock', '1564103050:1'),
(60, 15, '_edit_last', '1'),
(61, 15, '_edit_lock', '1564103629:1'),
(62, 15, 'titulo_card', 'INTELINVEST RENDA VARIÁVEL'),
(63, 15, '_titulo_card', 'field_5d068737d1846'),
(64, 15, 'subtitulo_card', 'CONSTRUA SEU PORTFÓLIO A LONGO PRAZO'),
(65, 15, '_subtitulo_card', 'field_5d068740d1847'),
(66, 15, 'item1_card', '- Assessoria completa para construção de carteira de ações e de FIIs.'),
(67, 15, '_item1_card', 'field_5d06874dd1848'),
(68, 15, 'item2_card', '- Análises e estudos dos ativos. '),
(69, 15, '_item2_card', 'field_5d068759d1849'),
(70, 15, 'item3_card', '- Investimento em renda variável de forma simples, prática, e tranquila.'),
(71, 15, '_item3_card', 'field_5d068765d184a'),
(72, 16, '_edit_last', '1'),
(73, 16, '_edit_lock', '1564103539:1'),
(74, 16, 'titulo_card', 'INTELINVEST RENDA FIXA'),
(75, 16, '_titulo_card', 'field_5d068737d1846'),
(76, 16, 'subtitulo_card', 'QUER INVESTIR COM GARANTIA DE RENDA FIXA?'),
(77, 16, '_subtitulo_card', 'field_5d068740d1847'),
(78, 16, 'item1_card', '- Assessoria completa para compra de ativos de renda fixa.'),
(79, 16, '_item1_card', 'field_5d06874dd1848'),
(80, 16, 'item2_card', '- Resgate no curto e no longo prazo.'),
(81, 16, '_item2_card', 'field_5d068759d1849'),
(82, 16, 'item3_card', '- Investimento em renda fixa de forma simples e eficiente.'),
(83, 16, '_item3_card', 'field_5d068765d184a'),
(84, 17, '_edit_last', '1'),
(85, 17, '_edit_lock', '1564103470:1'),
(86, 17, 'titulo_card', 'INTELINVEST USA'),
(87, 17, '_titulo_card', 'field_5d068737d1846'),
(88, 17, 'subtitulo_card', 'INVISTA NA MAIOR ECONOMIA DO MUNDO'),
(89, 17, '_subtitulo_card', 'field_5d068740d1847'),
(90, 17, 'item1_card', '- Assessoria completa para quem quer investir em ações nos EUA'),
(91, 17, '_item1_card', 'field_5d06874dd1848'),
(92, 17, 'item2_card', '- Análises e estudos dos ativos. '),
(93, 17, '_item2_card', 'field_5d068759d1849'),
(94, 17, 'item3_card', '- Invista na maior economia do mundo.'),
(95, 17, '_item3_card', 'field_5d068765d184a'),
(96, 14, 'field_5d0696d8d9ed7', 'a:15:{s:3:\"key\";s:19:\"field_5d0696d8d9ed7\";s:5:\"label\";s:5:\"ordem\";s:4:\"name\";s:5:\"ordem\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(98, 15, 'ordem', '1'),
(99, 15, '_ordem', 'field_5d0696d8d9ed7'),
(100, 16, 'ordem', '2'),
(101, 16, '_ordem', 'field_5d0696d8d9ed7'),
(102, 17, 'ordem', '3'),
(103, 17, '_ordem', 'field_5d0696d8d9ed7'),
(104, 14, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"perfil\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(106, 19, '_edit_last', '1'),
(107, 19, 'field_5d08b2a9a6c03', 'a:14:{s:3:\"key\";s:19:\"field_5d08b2a9a6c03\";s:5:\"label\";s:6:\"titulo\";s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(108, 19, 'field_5d08b2caa6c04', 'a:11:{s:3:\"key\";s:19:\"field_5d08b2caa6c04\";s:5:\"label\";s:6:\"imagem\";s:4:\"name\";s:6:\"imagem\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(109, 19, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"como_funciona\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(110, 19, 'position', 'normal'),
(111, 19, 'layout', 'default'),
(112, 19, 'hide_on_screen', 'a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}'),
(113, 19, '_edit_lock', '1564102568:1'),
(114, 22, '_wp_attached_file', '2019/06/ico_pronto.png'),
(115, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:133;s:6:\"height\";i:217;s:4:\"file\";s:22:\"2019/06/ico_pronto.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ico_pronto-133x150.png\";s:5:\"width\";i:133;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 21, '_edit_last', '1'),
(117, 21, 'titulo', 'E pronto! Estaremos juntos, lado a lado, durante todo o processo.'),
(118, 21, '_titulo', 'field_5d08b2a9a6c03'),
(119, 21, 'imagem', '22'),
(120, 21, '_imagem', 'field_5d08b2caa6c04'),
(121, 21, '_edit_lock', '1564191435:1'),
(122, 23, '_edit_last', '1'),
(123, 23, '_edit_lock', '1564191632:1'),
(124, 24, '_wp_attached_file', '2019/06/ico_ajudamos.png'),
(125, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:207;s:6:\"height\";i:211;s:4:\"file\";s:24:\"2019/06/ico_ajudamos.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ico_ajudamos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 25, '_wp_attached_file', '2019/06/ico_definimos.png'),
(127, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:193;s:6:\"height\";i:193;s:4:\"file\";s:25:\"2019/06/ico_definimos.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"ico_definimos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 23, 'titulo', 'Definimos, juntos, quanto investir em cada modalidade'),
(129, 23, '_titulo', 'field_5d08b2a9a6c03'),
(130, 23, 'imagem', '25'),
(131, 23, '_imagem', 'field_5d08b2caa6c04'),
(132, 26, '_edit_last', '1'),
(133, 26, '_edit_lock', '1564191669:1'),
(134, 26, 'titulo', 'Ajudamos você a identificar o seu perfil'),
(135, 26, '_titulo', 'field_5d08b2a9a6c03'),
(136, 26, 'imagem', '24'),
(137, 26, '_imagem', 'field_5d08b2caa6c04'),
(138, 28, '_edit_last', '1'),
(139, 28, 'field_5d099e0be2bfd', 'a:14:{s:3:\"key\";s:19:\"field_5d099e0be2bfd\";s:5:\"label\";s:6:\"titulo\";s:4:\"name\";s:6:\"titulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(140, 28, 'field_5d099e35e2bfe', 'a:11:{s:3:\"key\";s:19:\"field_5d099e35e2bfe\";s:5:\"label\";s:11:\"texto_secao\";s:4:\"name\";s:11:\"texto_secao\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";s:2:\"no\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(142, 28, 'position', 'normal'),
(143, 28, 'layout', 'default'),
(144, 28, 'hide_on_screen', 'a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}'),
(145, 28, '_edit_lock', '1564102674:1'),
(146, 29, '_edit_last', '1'),
(147, 29, '_edit_lock', '1564105436:1'),
(148, 28, 'field_5d099e93cf8ab', 'a:14:{s:3:\"key\";s:19:\"field_5d099e93cf8ab\";s:5:\"label\";s:6:\"slogan\";s:4:\"name\";s:6:\"slogan\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(149, 28, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"consultoria\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(150, 29, 'titulo', 'CONSULTORIA ESPECIALIZADA E EXCLUSIVA'),
(151, 29, '_titulo', 'field_5d099e0be2bfd'),
(152, 29, 'texto_secao', 'Na Intelinvest, nosso objetivo é fazer você ganhar. Estaremos juntos para que você tenha a melhor experiência de investimento possível.\r\n\r\nNão trabalhamos com produtos bancários caros, genéricos, complexos e com baixa rentabilidade.\r\nNão temos metas com vendas de ativos financeiros, não ganhamos comissão de nenhuma instituição e não fazemos especulação.\r\n\r\nNossa consultoria é individual e feita exclusivamente para que você invista com segurança e tranquilidade. Entre em contato e descubra como podemos te ajudar a investir melhor!'),
(153, 29, '_texto_secao', 'field_5d099e35e2bfe'),
(154, 29, 'slogan', 'E vamos continuar sempre assim: simples e fácil! Nosso único compromisso é com VOCÊ.'),
(155, 29, '_slogan', 'field_5d099e93cf8ab'),
(156, 31, '_edit_lock', '1561341465:1'),
(157, 31, '_edit_last', '1'),
(158, 35, '_edit_lock', '1561509771:1'),
(159, 35, '_edit_last', '1'),
(160, 38, '_edit_lock', '1564236869:1'),
(161, 38, '_edit_last', '1'),
(162, 41, '_edit_lock', '1562119828:1'),
(163, 41, '_edit_last', '1'),
(164, 43, '_edit_lock', '1562630790:1'),
(165, 43, '_edit_last', '1'),
(166, 45, '_edit_lock', '1564241247:1'),
(167, 45, '_edit_last', '1'),
(168, 52, '_wp_attached_file', '2019/06/banner.png'),
(169, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:892;s:4:\"file\";s:18:\"2019/06/banner.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x139.png\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x357.png\";s:5:\"width\";i:768;s:6:\"height\";i:357;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x476.png\";s:5:\"width\";i:1024;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 53, '_wp_attached_file', '2019/06/ico_ajudamos.png'),
(171, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:207;s:6:\"height\";i:211;s:4:\"file\";s:24:\"2019/06/ico_ajudamos.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ico_ajudamos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 54, '_wp_attached_file', '2019/06/ico_definimos.png'),
(173, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:193;s:6:\"height\";i:193;s:4:\"file\";s:25:\"2019/06/ico_definimos.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"ico_definimos-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 55, '_wp_attached_file', '2019/06/ico_pronto.png'),
(175, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:133;s:6:\"height\";i:217;s:4:\"file\";s:22:\"2019/06/ico_pronto.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ico_pronto-133x150.png\";s:5:\"width\";i:133;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 21, '_thumbnail_id', '55'),
(177, 23, '_thumbnail_id', '54'),
(178, 26, '_thumbnail_id', '53'),
(185, 83, '_edit_lock', '1564241193:1'),
(187, 83, '_edit_last', '1'),
(188, 89, '_edit_lock', '1564343723:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-11 21:06:19', '2019-06-12 00:06:19', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2019-06-11 21:06:19', '2019-06-12 00:06:19', '', 0, 'http://localhost/intelinvest/?p=1', 0, 'post', '', 1),
(5, 1, '2019-06-15 18:59:26', '2019-06-15 21:59:26', '', 'banner1', '', 'publish', 'closed', 'closed', '', '5', '', '', '2019-07-26 22:37:09', '2019-07-27 01:37:09', '', 0, 'http://localhost/intelinvest/?post_type=banners&#038;p=5', 0, 'banners', '', 0),
(6, 1, '2019-06-15 18:59:17', '2019-06-15 21:59:17', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2019-06-15 18:59:17', '2019-06-15 21:59:17', '', 5, 'http://localhost/intelinvest/wp-content/uploads/2019/06/banner.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-06-15 19:01:25', '2019-06-15 22:01:25', '', 'banner2', '', 'pending', 'closed', 'closed', '', 'banner2', '', '', '2019-06-15 22:18:06', '2019-06-16 01:18:06', '', 0, 'http://localhost/intelinvest/?post_type=banners&#038;p=7', 0, 'banners', '', 0),
(8, 1, '2019-06-15 19:27:40', '2019-06-15 22:27:40', '', 'Banners', '', 'publish', 'closed', 'closed', '', 'acf_banners', '', '', '2019-06-15 22:11:40', '2019-06-16 01:11:40', '', 0, 'http://localhost/intelinvest/?post_type=acf&#038;p=8', 0, 'acf', '', 0),
(9, 1, '2019-06-16 14:34:00', '2019-06-16 17:34:00', '', 'Investimentos', '', 'publish', 'closed', 'closed', '', 'acf_investimentos', '', '', '2019-06-16 14:34:00', '2019-06-16 17:34:00', '', 0, 'http://localhost/intelinvest/?post_type=acf&#038;p=9', 0, 'acf', '', 0),
(11, 1, '2019-06-16 14:37:29', '2019-06-16 17:37:29', '', 'Invest', '', 'publish', 'closed', 'closed', '', 'invest', '', '', '2019-06-16 14:37:29', '2019-06-16 17:37:29', '', 0, 'http://localhost/intelinvest/?post_type=investimentos&#038;p=11', 0, 'investimentos', '', 0),
(14, 1, '2019-06-16 15:16:19', '2019-06-16 18:16:19', '', 'Perfil Cards', '', 'publish', 'closed', 'closed', '', 'acf_perfil-cards', '', '', '2019-06-16 16:26:43', '2019-06-16 19:26:43', '', 0, 'http://localhost/intelinvest/?post_type=acf&#038;p=14', 0, 'acf', '', 0),
(15, 1, '2019-06-16 15:17:41', '2019-06-16 18:17:41', '', 'Card 1', '', 'publish', 'closed', 'closed', '', 'card-1', '', '', '2019-06-16 16:22:39', '2019-06-16 19:22:39', '', 0, 'http://localhost/intelinvest/?post_type=perfil&#038;p=15', 0, 'perfil', '', 0),
(16, 1, '2019-06-16 15:18:41', '2019-06-16 18:18:41', '', 'Card 2', '', 'publish', 'closed', 'closed', '', 'card-2', '', '', '2019-06-16 16:22:55', '2019-06-16 19:22:55', '', 0, 'http://localhost/intelinvest/?post_type=perfil&#038;p=16', 0, 'perfil', '', 0),
(17, 1, '2019-06-16 15:19:35', '2019-06-16 18:19:35', '', 'Card 3', '', 'publish', 'closed', 'closed', '', 'card-3', '', '', '2019-06-16 16:23:16', '2019-06-16 19:23:16', '', 0, 'http://localhost/intelinvest/?post_type=perfil&#038;p=17', 0, 'perfil', '', 0),
(19, 1, '2019-06-18 06:46:14', '2019-06-18 09:46:14', '', 'Como funciona', '', 'publish', 'closed', 'closed', '', 'acf_como-funciona', '', '', '2019-06-18 06:46:14', '2019-06-18 09:46:14', '', 0, 'http://localhost/intelinvest/?post_type=acf&#038;p=19', 0, 'acf', '', 0),
(21, 1, '2019-06-18 06:47:36', '2019-06-18 09:47:36', '', 'Card 3', '', 'publish', 'closed', 'closed', '', 'card-3', '', '', '2019-07-26 22:39:19', '2019-07-27 01:39:19', '', 0, 'http://localhost/intelinvest/?post_type=como_funciona&#038;p=21', 0, 'como_funciona', '', 0),
(22, 1, '2019-06-18 06:47:20', '2019-06-18 09:47:20', '', 'ico_pronto', '', 'inherit', 'open', 'closed', '', 'ico_pronto', '', '', '2019-06-18 06:47:20', '2019-06-18 09:47:20', '', 21, 'http://localhost/intelinvest/wp-content/uploads/2019/06/ico_pronto.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-06-18 06:48:14', '2019-06-18 09:48:14', '', 'Card 2', '', 'publish', 'closed', 'closed', '', 'card-2', '', '', '2019-07-26 22:40:30', '2019-07-27 01:40:30', '', 0, 'http://localhost/intelinvest/?post_type=como_funciona&#038;p=23', 0, 'como_funciona', '', 0),
(24, 1, '2019-06-18 06:48:07', '2019-06-18 09:48:07', '', 'ico_ajudamos', '', 'inherit', 'open', 'closed', '', 'ico_ajudamos', '', '', '2019-06-18 06:48:07', '2019-06-18 09:48:07', '', 23, 'http://localhost/intelinvest/wp-content/uploads/2019/06/ico_ajudamos.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2019-06-18 06:48:09', '2019-06-18 09:48:09', '', 'ico_definimos', '', 'inherit', 'open', 'closed', '', 'ico_definimos', '', '', '2019-06-18 06:48:09', '2019-06-18 09:48:09', '', 23, 'http://localhost/intelinvest/wp-content/uploads/2019/06/ico_definimos.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-06-18 06:48:38', '2019-06-18 09:48:38', '', 'Card 1', '', 'publish', 'closed', 'closed', '', 'card-1', '', '', '2019-07-26 22:41:07', '2019-07-27 01:41:07', '', 0, 'http://localhost/intelinvest/?post_type=como_funciona&#038;p=26', 0, 'como_funciona', '', 0),
(28, 1, '2019-06-18 23:30:27', '2019-06-19 02:30:27', '', 'Consultoria', '', 'publish', 'closed', 'closed', '', 'acf_consultoria', '', '', '2019-06-18 23:31:57', '2019-06-19 02:31:57', '', 0, 'http://localhost/intelinvest/?post_type=acf&#038;p=28', 0, 'acf', '', 0),
(29, 1, '2019-06-18 23:33:47', '2019-06-19 02:33:47', '', 'CONSULTORIA', '', 'publish', 'closed', 'closed', '', 'consultoria', '', '', '2019-06-18 23:33:47', '2019-06-19 02:33:47', '', 0, 'http://localhost/intelinvest/?post_type=consultoria&#038;p=29', 0, 'consultoria', '', 0),
(31, 1, '2019-06-23 22:58:51', '2019-06-24 01:58:51', '<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-06-23 22:59:52', '2019-06-24 01:59:52', '', 0, 'http://localhost/intelinvest/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-06-23 22:58:51', '2019-06-24 01:58:51', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-06-23 22:58:51', '2019-06-24 01:58:51', '', 31, 'http://localhost/intelinvest/index.php/2019/06/23/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-06-23 22:59:51', '2019-06-24 01:59:51', '<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-06-23 22:59:51', '2019-06-24 01:59:51', '', 31, 'http://localhost/intelinvest/index.php/2019/06/23/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-06-25 21:44:38', '2019-06-26 00:44:38', '<!-- wp:paragraph -->\n<p>Página de usuário</p>\n<!-- /wp:paragraph -->', 'Perfil_User', '', 'publish', 'closed', 'closed', '', 'perfil_user', '', '', '2019-06-25 21:45:10', '2019-06-26 00:45:10', '', 0, 'http://localhost/intelinvest/?page_id=35', 0, 'page', '', 0),
(36, 1, '2019-06-25 21:44:38', '2019-06-26 00:44:38', '', 'Perfil_User', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-06-25 21:44:38', '2019-06-26 00:44:38', '', 35, 'http://localhost/intelinvest/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-06-25 21:45:01', '2019-06-26 00:45:01', '<!-- wp:paragraph -->\n<p>Página de usuário</p>\n<!-- /wp:paragraph -->', 'Perfil_User', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-06-25 21:45:01', '2019-06-26 00:45:01', '', 35, 'http://localhost/intelinvest/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-06-29 10:22:43', '2019-06-29 13:22:43', '', 'Cadastro usuario', '', 'publish', 'closed', 'closed', '', 'cadastro-usuario', '', '', '2019-06-29 10:22:51', '2019-06-29 13:22:51', '', 0, 'http://localhost/intelinvest/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-06-29 10:22:43', '2019-06-29 13:22:43', '', 'Cadastro usuario', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-06-29 10:22:43', '2019-06-29 13:22:43', '', 38, 'http://localhost/intelinvest/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-07-02 23:10:25', '2019-07-03 02:10:25', '', 'login_modal', '', 'publish', 'closed', 'closed', '', 'login_modal', '', '', '2019-07-02 23:10:27', '2019-07-03 02:10:27', '', 0, 'http://localhost/intelinvest/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-07-02 23:10:25', '2019-07-03 02:10:25', '', 'login_modal', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-07-02 23:10:25', '2019-07-03 02:10:25', '', 41, 'http://localhost/intelinvest/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-07-08 21:06:28', '2019-07-09 00:06:28', '', 'logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2019-07-08 21:06:29', '2019-07-09 00:06:29', '', 0, 'http://localhost/intelinvest/?page_id=43', 0, 'page', '', 0),
(44, 1, '2019-07-08 21:06:28', '2019-07-09 00:06:28', '', 'logout', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-07-08 21:06:28', '2019-07-09 00:06:28', '', 43, 'http://localhost/intelinvest/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-07-27 10:04:35', '2019-07-27 13:04:35', '[wordpress_file_upload singlebutton=\"true\" fitmode=\"responsive\" createpath=\"false\" forcefilename=\"true\" duplicatespolicy=\"maintain both\"]', 'arquivos_upload', '', 'publish', 'closed', 'closed', '', 'arquivos_upload', '', '', '2019-07-27 12:27:26', '2019-07-27 15:27:26', '', 0, 'http://localhost/intelinvest/?page_id=45', 0, 'page', '', 0),
(46, 1, '2019-07-22 15:04:35', '2019-07-22 18:04:35', '', 'arquivos_upload', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-22 15:04:35', '2019-07-22 18:04:35', '', 45, 'http://localhost/intelinvest/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-07-23 21:53:55', '2019-07-24 00:53:55', '[wordpress_file_upload]', 'arquivos_upload', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-23 21:53:55', '2019-07-24 00:53:55', '', 45, 'http://localhost/intelinvest/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-07-23 22:10:00', '2019-07-24 01:10:00', '[wordpress_file_upload singlebutton=\"true\" fitmode=\"responsive\" createpath=\"false\" forcefilename=\"true\" duplicatespolicy=\"maintain both\"]', 'arquivos_upload', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-23 22:10:00', '2019-07-24 01:10:00', '', 45, 'http://localhost/intelinvest/45-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-26 22:36:57', '2019-07-27 01:36:57', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner-2', '', '', '2019-07-26 22:36:57', '2019-07-27 01:36:57', '', 5, 'http://localhost/html/wp-content/uploads/2019/06/banner.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-07-26 22:38:53', '2019-07-27 01:38:53', '', 'ico_ajudamos', '', 'inherit', 'open', 'closed', '', 'ico_ajudamos-2', '', '', '2019-07-26 22:38:53', '2019-07-27 01:38:53', '', 21, 'http://localhost/html/wp-content/uploads/2019/06/ico_ajudamos.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-07-26 22:38:54', '2019-07-27 01:38:54', '', 'ico_definimos', '', 'inherit', 'open', 'closed', '', 'ico_definimos-2', '', '', '2019-07-26 22:38:54', '2019-07-27 01:38:54', '', 21, 'http://localhost/html/wp-content/uploads/2019/06/ico_definimos.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2019-07-26 22:38:58', '2019-07-27 01:38:58', '', 'ico_pronto', '', 'inherit', 'open', 'closed', '', 'ico_pronto-2', '', '', '2019-07-26 22:38:58', '2019-07-27 01:38:58', '', 21, 'http://localhost/html/wp-content/uploads/2019/06/ico_pronto.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-07-27 11:06:49', '2019-07-27 14:06:49', '[wordpress_file_upload singlebutton=\"true\" fitmode=\"responsive\" createpath=\"false\" forcefilename=\"true\" duplicatespolicy=\"maintain both\"]', 'arquivos_upload', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2019-07-27 11:06:49', '2019-07-27 14:06:49', '', 45, 'http://localhost/intelinvest/45-autosave-v1/', 0, 'revision', '', 0),
(58, 1, '2019-07-27 12:18:39', '2019-07-27 15:18:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Banners', 'banners', 'publish', 'closed', 'closed', '', 'group_5d3c6b4f798ea', '', '', '2019-07-27 12:18:39', '2019-07-27 15:18:39', '', 0, 'http://localhost/intelinvest/?post_type=acf-field-group&p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2019-07-27 12:18:39', '2019-07-27 15:18:39', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5d05706465044', '', '', '2019-07-27 12:18:39', '2019-07-27 15:18:39', '', 58, 'http://localhost/intelinvest/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2019-07-27 12:18:39', '2019-07-27 15:18:39', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'Sub titulo', 'sub_titulo', 'publish', 'closed', 'closed', '', 'field_5d05707d65045', '', '', '2019-07-27 12:18:39', '2019-07-27 15:18:39', '', 58, 'http://localhost/intelinvest/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2019-07-27 12:18:40', '2019-07-27 15:18:40', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'texto botao', 'texto_botao', 'publish', 'closed', 'closed', '', 'field_5d0596f4f6c95', '', '', '2019-07-27 12:18:40', '2019-07-27 15:18:40', '', 58, 'http://localhost/intelinvest/?post_type=acf-field&p=61', 2, 'acf-field', '', 0),
(62, 1, '2019-07-27 12:18:40', '2019-07-27 15:18:40', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'link_botao', 'link_botao', 'publish', 'closed', 'closed', '', 'field_5d05973df6c96', '', '', '2019-07-27 12:18:40', '2019-07-27 15:18:40', '', 58, 'http://localhost/intelinvest/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2019-07-27 12:18:40', '2019-07-27 15:18:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"como_funciona\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Como funciona', 'como-funciona', 'publish', 'closed', 'closed', '', 'group_5d3c6b507b8f5', '', '', '2019-07-27 12:18:40', '2019-07-27 15:18:40', '', 0, 'http://localhost/intelinvest/?post_type=acf-field-group&p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2019-07-27 12:18:40', '2019-07-27 15:18:40', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5d08b2a9a6c03', '', '', '2019-07-27 12:18:40', '2019-07-27 15:18:40', '', 63, 'http://localhost/intelinvest/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2019-07-27 12:18:40', '2019-07-27 15:18:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:5:\"array\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5d08b2caa6c04', '', '', '2019-07-27 12:18:40', '2019-07-27 15:18:40', '', 63, 'http://localhost/intelinvest/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(66, 1, '2019-07-27 12:18:41', '2019-07-27 15:18:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"consultoria\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Consultoria', 'consultoria', 'publish', 'closed', 'closed', '', 'group_5d3c6b510dbc4', '', '', '2019-07-27 12:18:41', '2019-07-27 15:18:41', '', 0, 'http://localhost/intelinvest/?post_type=acf-field-group&p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2019-07-27 12:18:41', '2019-07-27 15:18:41', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5d099e0be2bfd', '', '', '2019-07-27 12:18:41', '2019-07-27 15:18:41', '', 66, 'http://localhost/intelinvest/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2019-07-27 12:18:41', '2019-07-27 15:18:41', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:4:\"tabs\";s:3:\"all\";s:5:\"delay\";i:0;}', 'texto_secao', 'texto_secao', 'publish', 'closed', 'closed', '', 'field_5d099e35e2bfe', '', '', '2019-07-27 12:18:41', '2019-07-27 15:18:41', '', 66, 'http://localhost/intelinvest/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2019-07-27 12:18:41', '2019-07-27 15:18:41', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'slogan', 'slogan', 'publish', 'closed', 'closed', '', 'field_5d099e93cf8ab', '', '', '2019-07-27 12:18:41', '2019-07-27 15:18:41', '', 66, 'http://localhost/intelinvest/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 1, '2019-07-27 12:18:41', '2019-07-27 15:18:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"investimentos\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"format\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Investimentos', 'investimentos', 'publish', 'closed', 'closed', '', 'group_5d3c6b51a8414', '', '', '2019-07-27 12:18:41', '2019-07-27 15:18:41', '', 0, 'http://localhost/intelinvest/?post_type=acf-field-group&p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-07-27 12:18:42', '2019-07-27 15:18:42', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5d067cddf3d5e', '', '', '2019-07-27 12:18:42', '2019-07-27 15:18:42', '', 70, 'http://localhost/intelinvest/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2019-07-27 12:18:42', '2019-07-27 15:18:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:4:\"tabs\";s:3:\"all\";s:5:\"delay\";i:0;}', 'texto seção', 'texto_secao', 'publish', 'closed', 'closed', '', 'field_5d067d37f3d5f', '', '', '2019-07-27 12:18:42', '2019-07-27 15:18:42', '', 70, 'http://localhost/intelinvest/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2019-07-27 12:18:42', '2019-07-27 15:18:42', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'slogan', 'slogan', 'publish', 'closed', 'closed', '', 'field_5d067d78f3d60', '', '', '2019-07-27 12:18:42', '2019-07-27 15:18:42', '', 70, 'http://localhost/intelinvest/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2019-07-27 12:18:42', '2019-07-27 15:18:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"perfil\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"format\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Perfil Cards', 'perfil-cards', 'publish', 'closed', 'closed', '', 'group_5d3c6b52d404d', '', '', '2019-07-27 12:18:42', '2019-07-27 15:18:42', '', 0, 'http://localhost/intelinvest/?post_type=acf-field-group&p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2019-07-27 12:18:43', '2019-07-27 15:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'titulo_card', 'titulo_card', 'publish', 'closed', 'closed', '', 'field_5d068737d1846', '', '', '2019-07-27 12:18:43', '2019-07-27 15:18:43', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=75', 0, 'acf-field', '', 0),
(76, 1, '2019-07-27 12:18:43', '2019-07-27 15:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'subtitulo_card', 'subtitulo_card', 'publish', 'closed', 'closed', '', 'field_5d068740d1847', '', '', '2019-07-27 12:18:43', '2019-07-27 15:18:43', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=76', 1, 'acf-field', '', 0),
(77, 1, '2019-07-27 12:18:43', '2019-07-27 15:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'item1_card', 'item1_card', 'publish', 'closed', 'closed', '', 'field_5d06874dd1848', '', '', '2019-07-27 12:18:43', '2019-07-27 15:18:43', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=77', 2, 'acf-field', '', 0),
(78, 1, '2019-07-27 12:18:43', '2019-07-27 15:18:43', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'item2_card', 'item2_card', 'publish', 'closed', 'closed', '', 'field_5d068759d1849', '', '', '2019-07-27 12:18:43', '2019-07-27 15:18:43', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=78', 3, 'acf-field', '', 0),
(79, 1, '2019-07-27 12:18:44', '2019-07-27 15:18:44', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";}', 'item3_card', 'item3_card', 'publish', 'closed', 'closed', '', 'field_5d068765d184a', '', '', '2019-07-27 12:18:44', '2019-07-27 15:18:44', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=79', 4, 'acf-field', '', 0),
(80, 1, '2019-07-27 12:18:44', '2019-07-27 15:18:44', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'ordem', 'ordem', 'publish', 'closed', 'closed', '', 'field_5d0696d8d9ed7', '', '', '2019-07-27 12:18:44', '2019-07-27 15:18:44', '', 74, 'http://localhost/intelinvest/?post_type=acf-field&p=80', 5, 'acf-field', '', 0),
(83, 1, '2019-07-27 12:23:06', '2019-07-27 15:23:06', '<!-- wp:tadv/classic-paragraph -->\n<p>Teste de upload</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Teste Upload2', '', 'publish', 'closed', 'closed', '', 'teste-upload', '', '', '2019-07-27 12:26:33', '2019-07-27 15:26:33', '', 0, 'http://localhost/intelinvest/?page_id=83', 0, 'page', '', 0),
(84, 1, '2019-07-27 12:23:06', '2019-07-27 15:23:06', '<!-- wp:tadv/classic-paragraph -->\n<p>Teste de upload</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Teste Upload', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-07-27 12:23:06', '2019-07-27 15:23:06', '', 83, 'http://localhost/intelinvest/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-07-27 12:25:48', '2019-07-27 15:25:48', '<!-- wp:tadv/classic-paragraph -->\n<p>Teste de upload</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Teste Upload2', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2019-07-27 12:25:48', '2019-07-27 15:25:48', '', 83, 'http://localhost/intelinvest/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-07-27 12:26:48', '2019-07-27 15:26:48', '[wordpress_file_upload singlebutton=\"true\" fitmode=\"responsive\" createpath=\"false\" forcefilename=\"true\" duplicatespolicy=\"maintain both\"]', 'arquivos_upload2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-27 12:26:48', '2019-07-27 15:26:48', '', 45, 'http://localhost/intelinvest/45-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-07-27 12:27:05', '2019-07-27 15:27:05', '[wordpress_file_upload singlebutton=\"true\" fitmode=\"responsive\" createpath=\"false\" forcefilename=\"true\" duplicatespolicy=\"maintain both\"]', 'arquivos_upload', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-07-27 12:27:05', '2019-07-27 15:27:05', '', 45, 'http://localhost/intelinvest/45-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-07-28 16:57:29', '2019-07-28 19:57:29', '', 'Painel controle', '', 'publish', 'closed', 'closed', '', 'painel-controle', '', '', '2019-07-28 16:57:33', '2019-07-28 19:57:33', '', 0, 'http://localhost/intelinvest/?page_id=89', 0, 'page', '', 0),
(90, 1, '2019-07-28 16:57:29', '2019-07-28 19:57:29', '', 'Painel controle', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-07-28 16:57:29', '2019-07-28 19:57:29', '', 89, 'http://localhost/intelinvest/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-07-28 18:03:06', '2019-07-28 21:03:06', '', 'Painel controle', '', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2019-07-28 18:03:06', '2019-07-28 21:03:06', '', 89, 'http://localhost/intelinvest/89-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jehny'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"5e997259095bd2d3a2de37f017c5ca2a0285993e781a7c9303ce4da28b64c217\";a:4:{s:10:\"expiration\";i:1565744617;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565571817;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '51'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1564191558'),
(20, 1, 'closedpostboxes_banners', 'a:0:{}'),
(21, 1, 'metaboxhidden_banners', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(22, 1, 'enable_custom_fields', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jehny', '$P$BsPNuVBvX0bQkIG/CK1HytOIDxTian/', 'jehny', 'jehnyffen@gmail.com', '', '2019-06-12 00:06:17', '', 0, 'jehny');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users_system`
--

CREATE TABLE `wp_users_system` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `dt_nasc` date NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `dt_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `wp_users_system`
--

INSERT INTO `wp_users_system` (`id`, `nome`, `cpf`, `dt_nasc`, `endereco`, `telefone`, `email`, `senha`, `id_perfil`, `dt_cadastro`) VALUES
(1, 'teste 2', '00012345601', '1987-01-22', 'teste', '2147483647', 'teste2@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '2019-07-03'),
(2, 'teste nome', '00012345601', '1987-01-22', 'sakdhaskdh', '2147483647', 'teste@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '2019-07-03'),
(3, 'May', '00012345678', '1987-02-22', 'tesaae', '85', 'jehny@teste.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, '2019-09-02'),
(4, 'May', '00012345678', '1987-02-22', 'tesaae', '2147483647', 'jehny@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '2019-07-22'),
(5, 'May', '00012345678', '1987-02-22', 'tesaae', '2147483647', 'jehny@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '2019-07-22'),
(6, 'Jehny', '01232955302', '1987-02-22', 'Rua Street', '85', 'jehny@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '2019-08-13'),
(7, 'Jehny2', '23628846005', '1987-02-22', 'teste', '85', 'teste3@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '2019-08-22'),
(8, 'Teste3 ', '01232955302', '1987-01-22', 'Teste end', '0', 'jehny@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '2019-09-02'),
(9, 'Teste 4 editado', '53503461051', '1987-01-22', 'Ender 4', '85 654322345', 'jehny2@teste.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, '2019-09-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wfu_dbxqueue`
--

CREATE TABLE `wp_wfu_dbxqueue` (
  `iddbxqueue` mediumint(9) NOT NULL,
  `fileid` mediumint(9) NOT NULL,
  `priority` mediumint(9) NOT NULL,
  `status` mediumint(9) NOT NULL,
  `jobid` varchar(10) NOT NULL,
  `start_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wfu_log`
--

CREATE TABLE `wp_wfu_log` (
  `idlog` mediumint(9) NOT NULL,
  `userid` int(11) NOT NULL,
  `uploaduserid` int(11) NOT NULL,
  `uploadtime` bigint(20) DEFAULT NULL,
  `sessionid` varchar(40) DEFAULT NULL,
  `filepath` text NOT NULL,
  `filehash` varchar(100) NOT NULL,
  `filesize` bigint(20) NOT NULL,
  `uploadid` varchar(20) NOT NULL,
  `pageid` mediumint(9) DEFAULT NULL,
  `blogid` mediumint(9) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `action` varchar(20) NOT NULL,
  `linkedto` mediumint(9) DEFAULT NULL,
  `filedata` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wfu_userdata`
--

CREATE TABLE `wp_wfu_userdata` (
  `iduserdata` mediumint(9) NOT NULL,
  `uploadid` varchar(20) NOT NULL,
  `property` varchar(100) NOT NULL,
  `propkey` mediumint(9) NOT NULL,
  `propvalue` text,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_arquivos`
--
ALTER TABLE `wp_arquivos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_perfil`
--
ALTER TABLE `wp_perfil`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_users_system`
--
ALTER TABLE `wp_users_system`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wp_wfu_dbxqueue`
--
ALTER TABLE `wp_wfu_dbxqueue`
  ADD PRIMARY KEY (`iddbxqueue`);

--
-- Indexes for table `wp_wfu_log`
--
ALTER TABLE `wp_wfu_log`
  ADD PRIMARY KEY (`idlog`);

--
-- Indexes for table `wp_wfu_userdata`
--
ALTER TABLE `wp_wfu_userdata`
  ADD PRIMARY KEY (`iduserdata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_arquivos`
--
ALTER TABLE `wp_arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

--
-- AUTO_INCREMENT for table `wp_perfil`
--
ALTER TABLE `wp_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_users_system`
--
ALTER TABLE `wp_users_system`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_wfu_dbxqueue`
--
ALTER TABLE `wp_wfu_dbxqueue`
  MODIFY `iddbxqueue` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfu_log`
--
ALTER TABLE `wp_wfu_log`
  MODIFY `idlog` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfu_userdata`
--
ALTER TABLE `wp_wfu_userdata`
  MODIFY `iduserdata` mediumint(9) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
