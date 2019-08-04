-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 19-08-04 23:13
-- 서버 버전: 5.6.20
-- PHP 버전: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `gnu1`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_auth`
--

CREATE TABLE IF NOT EXISTS `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_autosave`
--

CREATE TABLE IF NOT EXISTS `g5_autosave` (
`as_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_autosave`
--

INSERT INTO `g5_autosave` (`as_id`, `mb_id`, `as_uid`, `as_subject`, `as_content`, `as_datetime`) VALUES
(4, 'admin', 2019080421495433, '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '2019-08-04 21:50:55');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board`
--

CREATE TABLE IF NOT EXISTS `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board`
--

INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_use_captcha`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('review', 'community', '출고후기', '', 'both', '', 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'review', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 17, 7, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('sale', 'community', '할인정보', '', 'both', '', 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'sale', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 16, 7, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('company', 'community', '회사정보', '', 'both', '', 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'company', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 16, 1, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('lesson', 'community', '레슨공개', '', 'both', '', 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 12, 12, 24, 100, 1030, 'lesson', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 260, 200, 125, 100, 1048576, 1, 1, 0, 16, 7, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('qna', 'community', '질문답변', '', 'both', '', 1, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'qna', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 16, 7, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('estimate', 'community', '상담신청 관리', '', 'both', '', 10, 10, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'emtimate', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 15, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('week', 'community', '주간인기차종', '', 'both', '', 10, 1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 10, 10, 24, 100, 1030, 'week', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 1, 0, 7, 0, 0, 0, 0, 0, '', 1, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_file`
--

CREATE TABLE IF NOT EXISTS `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_file`
--

INSERT INTO `g5_board_file` (`bo_table`, `wr_id`, `bf_no`, `bf_source`, `bf_file`, `bf_download`, `bf_content`, `bf_filesize`, `bf_width`, `bf_height`, `bf_type`, `bf_datetime`) VALUES
('week', 7, 0, 'je.jpg', '0_9xrJF1bC_90f0d48b69d5d16aa556743f6f923c8882ff9480.jpg', 0, '', 136423, 1280, 720, 2, '2019-08-04 18:04:29');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_good`
--

CREATE TABLE IF NOT EXISTS `g5_board_good` (
`bg_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_new`
--

CREATE TABLE IF NOT EXISTS `g5_board_new` (
`bn_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_new`
--

INSERT INTO `g5_board_new` (`bn_id`, `bo_table`, `wr_id`, `wr_parent`, `bn_datetime`, `mb_id`) VALUES
(1, 'sale', 1, 1, '2019-08-03 11:04:38', 'admin'),
(2, 'sale', 17, 15, '2019-08-03 14:20:12', 'admin'),
(3, 'sale', 18, 15, '2019-08-03 14:57:50', ''),
(9, 'sale', 23, 15, '2019-08-03 16:10:45', 'admin'),
(10, 'sale', 24, 15, '2019-08-03 16:11:03', 'admin'),
(6, 'sale', 21, 15, '2019-08-03 15:24:03', ''),
(7, 'sale', 22, 15, '2019-08-03 15:30:01', ''),
(8, 'company', 17, 16, '2019-08-03 15:51:55', 'admin'),
(11, 'sale', 25, 15, '2019-08-03 16:48:23', ''),
(12, '', 0, 0, '2019-08-04 12:02:23', ''),
(13, 'estimate', 1, 1, '2019-08-04 12:18:39', ''),
(14, 'estimate', 2, 2, '2019-08-04 12:27:49', ''),
(15, 'estimate', 3, 3, '2019-08-04 12:28:31', ''),
(16, 'estimate', 4, 4, '2019-08-04 12:31:39', ''),
(17, 'estimate', 5, 5, '2019-08-04 12:38:41', ''),
(18, 'estimate', 6, 6, '2019-08-04 12:47:50', ''),
(19, 'estimate', 7, 7, '2019-08-04 12:48:22', ''),
(23, 'estimate', 9, 9, '2019-08-04 16:54:02', ''),
(22, 'review', 26, 26, '2019-08-04 16:13:20', 'admin'),
(24, 'estimate', 10, 10, '2019-08-04 21:03:33', 'admin'),
(25, 'estimate', 11, 11, '2019-08-04 21:04:41', 'admin'),
(26, 'estimate', 12, 12, '2019-08-04 21:09:06', 'admin'),
(27, 'estimate', 13, 13, '2019-08-04 21:13:00', 'admin'),
(28, 'estimate', 14, 14, '2019-08-04 21:15:37', 'admin'),
(29, 'estimate', 15, 15, '2019-08-04 21:45:26', 'admin'),
(30, 'estimate', 16, 16, '2019-08-04 21:47:49', 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_cert_history`
--

CREATE TABLE IF NOT EXISTS `g5_cert_history` (
`cr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_config`
--

CREATE TABLE IF NOT EXISTS `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(255) NOT NULL DEFAULT '',
  `cf_admin` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(255) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(255) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(255) NOT NULL,
  `cf_facebook_secret` varchar(255) NOT NULL,
  `cf_twitter_key` varchar(255) NOT NULL,
  `cf_twitter_secret` varchar(255) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(255) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_config`
--

INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_member_img_size`, `cf_member_img_width`, `cf_member_img_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_social_login_use`, `cf_social_servicelist`, `cf_payco_clientid`, `cf_payco_secret`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_google_clientid`, `cf_google_secret`, `cf_naver_clientid`, `cf_naver_secret`, `cf_kakao_rest_key`, `cf_kakao_client_secret`, `cf_kakao_js_apikey`, `cf_captcha`, `cf_recaptcha_site_key`, `cf_recaptcha_secret_key`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
('오토디자인', '', 'admin', 'admin@domain.com', '그누보드5', '', 1, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 30, '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2019-08-04', 2, 5000, 22, 22, 50000, 60, 60, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '오늘:2,어제:1,최대:2,전체:3', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, '', '', '', '', '211.172.232.124', '7295', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kcaptcha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_content`
--

CREATE TABLE IF NOT EXISTS `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_content`
--

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
('company', 1, '회사소개', '<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq`
--

CREATE TABLE IF NOT EXISTS `g5_faq` (
`fa_id` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq_master`
--

CREATE TABLE IF NOT EXISTS `g5_faq_master` (
`fm_id` int(11) NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_faq_master`
--

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
(1, '자주하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group`
--

CREATE TABLE IF NOT EXISTS `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_group`
--

INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`) VALUES
('community', '커뮤니티', 'both', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group_member`
--

CREATE TABLE IF NOT EXISTS `g5_group_member` (
`gm_id` int(11) NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_login`
--

CREATE TABLE IF NOT EXISTS `g5_login` (
  `lo_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_login`
--

INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
('::1', '', '2019-08-04 23:09:54', '오토디자인', '/'),
('192.168.0.13', '', '2019-08-04 22:45:51', '오토디자인', '/');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_mail`
--

CREATE TABLE IF NOT EXISTS `g5_mail` (
`ma_id` int(11) NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member`
--

CREATE TABLE IF NOT EXISTS `g5_member` (
`mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_member`
--

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(1, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', '오토디자인', '0000-00-00', 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 300, '2019-08-04 09:18:05', '::1', '2019-08-02 23:14:15', '::1', '', '', '2019-08-02 23:14:15', '', '', '', 1, 0, 1, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member_social_profiles`
--

CREATE TABLE IF NOT EXISTS `g5_member_social_profiles` (
`mp_no` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_memo`
--

CREATE TABLE IF NOT EXISTS `g5_memo` (
  `me_id` int(11) NOT NULL DEFAULT '0',
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_menu`
--

CREATE TABLE IF NOT EXISTS `g5_menu` (
`me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_new_win`
--

CREATE TABLE IF NOT EXISTS `g5_new_win` (
`nw_id` int(11) NOT NULL,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_point`
--

CREATE TABLE IF NOT EXISTS `g5_point` (
`po_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_point`
--

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
(1, 'admin', '2019-08-02 23:17:06', '2019-08-02 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2019-08-02'),
(2, 'admin', '2019-08-03 10:39:48', '2019-08-03 첫로그인', 100, 0, 0, '9999-12-31', 200, '@login', 'admin', '2019-08-03'),
(3, 'admin', '2019-08-04 09:18:05', '2019-08-04 첫로그인', 100, 0, 0, '9999-12-31', 300, '@login', 'admin', '2019-08-04');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll`
--

CREATE TABLE IF NOT EXISTS `g5_poll` (
`po_id` int(11) NOT NULL,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll_etc`
--

CREATE TABLE IF NOT EXISTS `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_popular`
--

CREATE TABLE IF NOT EXISTS `g5_popular` (
`pp_id` int(11) NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_config`
--

CREATE TABLE IF NOT EXISTS `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_qa_config`
--

INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`) VALUES
('1:1문의', '회원|포인트', 'basic', 'basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_content`
--

CREATE TABLE IF NOT EXISTS `g5_qa_content` (
`qa_id` int(11) NOT NULL,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_scrap`
--

CREATE TABLE IF NOT EXISTS `g5_scrap` (
`ms_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_uniqid`
--

CREATE TABLE IF NOT EXISTS `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_uniqid`
--

INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`) VALUES
(2019080311035438, '::1'),
(2019080311270566, '::1'),
(2019080316520075, '::1'),
(2019080316530769, '::1'),
(2019080316580331, '::1'),
(2019080410093626, '::1'),
(2019080412253189, '::1'),
(2019080412575947, '::1'),
(2019080416093056, '::1'),
(2019080416101715, '::1'),
(2019080416103085, '::1'),
(2019080416111017, '::1'),
(2019080416113700, '::1'),
(2019080416114327, '::1'),
(2019080416120928, '::1'),
(2019080417563230, '::1'),
(2019080417571043, '::1'),
(2019080417572206, '::1'),
(2019080417573377, '::1'),
(2019080417574204, '::1'),
(2019080417575301, '::1'),
(2019080417580231, '::1'),
(2019080417581196, '::1'),
(2019080417595170, '::1'),
(2019080418002821, '::1'),
(2019080418004505, '::1'),
(2019080418005923, '::1'),
(2019080418010848, '::1'),
(2019080418011855, '::1'),
(2019080418013971, '::1'),
(2019080418024331, '::1'),
(2019080418034853, '::1'),
(2019080418043634, '::1'),
(2019080418045708, '::1'),
(2019080418062576, '::1'),
(2019080418073929, '::1'),
(2019080418090282, '::1'),
(2019080418092291, '::1'),
(2019080418093157, '::1'),
(2019080418100797, '::1'),
(2019080418100965, '::1'),
(2019080418380012, '::1'),
(2019080420213862, '::1'),
(2019080420265513, '::1'),
(2019080420270499, '::1'),
(2019080420271264, '::1'),
(2019080420273247, '::1'),
(2019080420274703, '::1'),
(2019080420280243, '::1'),
(2019080420403401, '::1'),
(2019080421495433, '::1');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit`
--

CREATE TABLE IF NOT EXISTS `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(255) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(255) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit`
--

INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`, `vi_browser`, `vi_os`, `vi_device`) VALUES
(1, '::1', '2019-08-03', '11:39:05', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', '', '', ''),
(2, '::1', '2019-08-04', '09:10:02', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', '', '', ''),
(3, '192.168.0.13', '2019-08-04', '22:35:13', '', 'Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G928S Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/9.4 Chrome/67.0.3396.87 Mobile Safari/537.36', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit_sum`
--

CREATE TABLE IF NOT EXISTS `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit_sum`
--

INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`) VALUES
('2019-08-03', 1),
('2019-08-04', 2);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_company`
--

CREATE TABLE IF NOT EXISTS `g5_write_company` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_company`
--

INSERT INTO `g5_write_company` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -8, '', 8, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, -9, '', 9, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -10, '', 10, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -11, '', 11, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -12, '', 12, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, -13, '', 13, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -14, '', 14, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, -15, '', 15, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -16, '', 16, 0, 1, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 15:51:55', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, -16, '', 16, 1, 1, '', '', '', '', 'ㅇㅇ', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 15:51:55', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_estimate`
--

CREATE TABLE IF NOT EXISTS `g5_write_estimate` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_estimate`
--

INSERT INTO `g5_write_estimate` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '상세견적 상담신청', '<table><tr><th>문의차량</th><td>bm</td></tr><tr><th>상담</th><td>장기렌트</td></tr><tr><th>보증금</th><td>0%(무보증</td></tr><tr><th>개월수</th><td>24개월</td></tr><tr><th>신청자구분</th><td>개인급여소득자</td></tr><tr><th>이름</th><td>abc</td></tr><tr><th>핸드폰번호</th><td>123-323-323</td></tr><tr><th>지역</th><td>서울</td></tr></table>', '', '', 0, 0, 2, 0, 0, '', '', 'abc', '', '', '2019-08-04 12:18:39', 0, '2019-08-04 12:18:39', '::1', '', '', 'bm', '장기렌트', '0%(무보증', '24개월', '개인급여소득자', '123-323-323', '서울', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', '', '상세견적 상담신청', '<table><tr><th>문의차량</th><td>bm</td></tr><tr><th>상담</th><td>장기렌트</td></tr><tr><th>보증금</th><td>0%(무보증</td></tr><tr><th>개월수</th><td>24개월</td></tr><tr><th>신청자구분</th><td>개인급여소득자</td></tr><tr><th>이름</th><td>abc</td></tr><tr><th>핸드폰번호</th><td>123-323-323</td></tr><tr><th>지역</th><td>서울</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', 'abc', '', '', '2019-08-04 12:27:49', 0, '2019-08-04 12:27:49', '::1', '', '', 'bm', '장기렌트', '0%(무보증', '24개월', '개인급여소득자', '123-323-323', '서울', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', '', '상세견적 상담신청', '<table class="view_table_list"><tr><th>문의차량</th><td>qwdqwd</td></tr><tr><th>상담</th><td>장기렌트</td></tr><tr><th>보증금</th><td>0%(무보증</td></tr><tr><th>개월수</th><td>24개월</td></tr><tr><th>신청자구분</th><td>개인급여소득자</td></tr><tr><th>이름</th><td>dsd</td></tr><tr><th>핸드폰번호</th><td>23-23-3233</td></tr><tr><th>지역</th><td>부산</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', 'dsd', '', '', '2019-08-04 12:28:31', 0, '2019-08-04 12:28:31', '::1', '', '', 'qwdqwd', '장기렌트', '0%(무보증', '24개월', '개인급여소득자', '23-23-3233', '부산', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '상세견적 상담신청', '<table class="view_table_list"><tr><th>문의차량</th><td>asdasd</td></tr><tr><th>상담</th><td>오토리스</td></tr><tr><th>보증금</th><td>10</td></tr><tr><th>개월수</th><td>48개월</td></tr><tr><th>신청자구분</th><td>개인사업자</td></tr><tr><th>이름</th><td>dwdwd</td></tr><tr><th>핸드폰번호</th><td>123-12312-123123</td></tr><tr><th>지역</th><td>광주</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', 'dwdwd', '', '', '2019-08-04 12:31:39', 0, '2019-08-04 12:31:39', '::1', '', '', 'asdasd', '오토리스', '10', '48개월', '개인사업자', '123-12312-123123', '광주', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '상세견적 상담신청', '<table class="view_table_list"><tr><th>문의차량</th><td>ㄴㅇㅁㅇ</td></tr><tr><th>상담</th><td>장기렌트</td></tr><tr><th>보증금</th><td>0%(무보증</td></tr><tr><th>개월수</th><td>24개월</td></tr><tr><th>신청자구분</th><td>개인급여소득자</td></tr><tr><th>이름</th><td>ㅇㅈㅇ</td></tr><tr><th>핸드폰번호</th><td>12-12-2</td></tr><tr><th>지역</th><td>서울</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', 'ㅇㅈㅇ', '', '', '2019-08-04 12:38:41', 0, '2019-08-04 12:38:41', '::1', '', '', 'ㄴㅇㅁㅇ', '장기렌트', '0%(무보증', '24개월', '개인급여소득자', '12-12-2', '서울', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '상세견적 상담신청', '<table class="view_table_list"><tr><th>문의차량</th><td>bmw</td></tr><tr><th>상담</th><td>오토리스</td></tr><tr><th>보증금</th><td>40%</td></tr><tr><th>개월수</th><td>60개월</td></tr><tr><th>신청자구분</th><td>법인사업자</td></tr><tr><th>이름</th><td>홍길동</td></tr><tr><th>핸드폰번호</th><td>010-2344-1948</td></tr><tr><th>지역</th><td>대구</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', '홍길동', '', '', '2019-08-04 12:47:50', 0, '2019-08-04 12:47:50', '::1', '', '', 'bmw', '오토리스', '40%', '60개월', '법인사업자', '010-2344-1948', '대구', '', '상담중', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '상세견적 상담신청', '<table class="view_table_list"><tr><th>문의차량</th><td>ㄹㅇㄹㅇ</td></tr><tr><th>상담</th><td>오토리스</td></tr><tr><th>보증금</th><td>20%</td></tr><tr><th>개월수</th><td>48개월</td></tr><tr><th>신청자구분</th><td>개인사업자</td></tr><tr><th>이름</th><td>ㄹㅈㄷㄹ</td></tr><tr><th>핸드폰번호</th><td>1-12-12</td></tr><tr><th>지역</th><td>대전</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', 'ㄹㅈㄷㄹ', '', '', '2019-08-04 12:48:22', 0, '2019-08-04 12:48:22', '::1', '', '', 'ㄹㅇㄹㅇ', '오토리스', '20%', '48개월', '개인사업자', '1-12-12', '대전', '', '', ''),
(10, -9, '', 10, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>이름</td></tr><tr><th>핸드폰번호</th><td>01123333</td></tr><tr><th>차종</th><td>sm3</td></tr></table>', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:03:33', 0, '2019-08-04 21:03:33', '::1', '', '', 'sm3', '01123333', '', '', '', '', '', '', '', ''),
(9, -8, '', 9, 0, 0, '', '', 'html1', '간편상담 상담신청', '<table class="view_table_list"><tr><th>이름</th><td>김길동</td></tr><tr><th>연락처</th><td>01029382929</td></tr><tr><th>상담내용</th><td>내용</td></tr><tr><th>차종</th><td>bmw</td></tr></table>', '', '', 0, 0, 1, 0, 0, '', '', '김길동', '', '', '2019-08-04 16:54:02', 0, '2019-08-04 16:54:02', '::1', '', '', 'bmw', '', '', '', '', '', '', '', '상담중', ''),
(11, -10, '', 11, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>이름</td></tr><tr><th>핸드폰번호</th><td>1233</td></tr><tr><th>차종</th><td>bmw</td></tr></table>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:04:41', 0, '2019-08-04 21:04:41', '::1', '', '', 'bmw', '1233', '', '', '', '', '', '', '상담중', ''),
(12, -11, '', 12, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>홍길동</td></tr><tr><th>핸드폰번호</th><td>01012341234</td></tr><tr><th>차종</th><td>싼타페</td></tr><tr><th>주간인기차종 선택</th><td>BEST1  </td></tr><tr><th>월렌탈료</th><td>원</td></tr></table>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:09:06', 0, '2019-08-04 21:09:06', '::1', '', '', '싼타페', '01012341234', '', '', '', '', '', '', '상담중', ''),
(13, -12, '', 13, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>이름</td></tr><tr><th>핸드폰번호</th><td>123132</td></tr><tr><th>차종</th><td>싼타페</td></tr><tr><th>주간인기차종 선택</th><td>BEST2 undefined undefined</td></tr><tr><th>월렌탈료</th><td>원</td></tr></table>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:13:00', 0, '2019-08-04 21:13:00', '::1', '', '', '싼타페', '123132', '', '', '', '', '', '', '상담중', ''),
(14, -13, '', 14, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>홍길동</td></tr><tr><th>핸드폰번호</th><td>12312332</td></tr><tr><th>차종</th><td>k3</td></tr><tr><th>주간인기차종 선택</th><td>BEST6 차종 1</td></tr><tr><th>월렌탈료</th><td>원</td></tr></table>', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:15:37', 0, '2019-08-04 21:15:37', '::1', '', '', 'k3', '12312332', '', '', '', '', '', '', '', ''),
(15, -14, '', 15, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>ㅇㅁㄴㅇ</td></tr><tr><th>핸드폰번호</th><td>12ㄷ</td></tr><tr><th>차종</th><td>1212</td></tr><tr><th>주간인기차종 선택</th><td>BEST7 차종 10</td></tr><tr><th>월렌탈료</th><td>원</td></tr></table>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:45:26', 0, '2019-08-04 21:45:26', '::1', '', '', '1212', '12ㄷ', '', '', '', '', '', '', '상담중', ''),
(16, -15, '', 16, 0, 0, '', '', 'html1', '주간인기차종 견적문의', '<table class="view_table_list"><tr><th>이름</th><td>홍길동</td></tr><tr><th>핸드폰번호</th><td>12323332</td></tr><tr><th>차종</th><td>현대</td></tr><tr><th>주간인기차종 선택</th><td>BEST6 차종 1</td></tr><tr><th>월렌탈료</th><td>원</td></tr></table>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 21:47:49', 0, '2019-08-04 21:47:49', '::1', '', '', '현대', '12323332', '', '', '', '', '', '', '상담중', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_lesson`
--

CREATE TABLE IF NOT EXISTS `g5_write_lesson` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_lesson`
--

INSERT INTO `g5_write_lesson` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -8, '', 8, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, -9, '', 9, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -10, '', 10, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -11, '', 11, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -12, '', 12, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, -13, '', 13, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -14, '', 14, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, -15, '', 15, 0, 7, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p><img src="http://localhost/data/editor/1908/ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg" title="ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg"><br style="clear:both;">&nbsp;</p><p><br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 5, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 16:48:23', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -16, '', 16, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 6, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, -15, '', 15, 1, 1, '', '', '', '', '반갑습니다~', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 14:20:12', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, -15, '', 15, 1, 2, '', '', '', '', '신차를 구입해야겠네요', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '홍길동', '', '', '2019-08-03 14:57:50', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, -15, '', 15, 1, 2, 'B', '', '', '', '감사합니다', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:10:45', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, -15, '', 15, 1, 2, 'BA', '', '', '', '감사합니다.', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:11:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, -15, '', 15, 1, 3, '', '', '', '', '문의합니다', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 15:24:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, -15, '', 15, 1, 4, '', '', '', '', '댓글입력', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '세종대왕', '', '', '2019-08-03 15:30:01', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, -15, '', 15, 1, 5, '', '', '', '', '감사합니다~', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 16:48:23', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_qna`
--

CREATE TABLE IF NOT EXISTS `g5_write_qna` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_qna`
--

INSERT INTO `g5_write_qna` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -8, '', 8, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, -9, '', 9, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -10, '', 10, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -11, '', 11, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -12, '', 12, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, -13, '', 13, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -14, '', 14, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, -15, '', 15, 0, 7, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p><img src="http://localhost/data/editor/1908/ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg" title="ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg"><br style="clear:both;">&nbsp;</p><p><br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 16:48:23', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -16, '', 16, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, -15, '', 15, 1, 1, '', '', '', '', '반갑습니다~', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 14:20:12', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, -15, '', 15, 1, 2, '', '', '', '', '신차를 구입해야겠네요', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '홍길동', '', '', '2019-08-03 14:57:50', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, -15, '', 15, 1, 2, 'B', '', '', '', '감사합니다', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:10:45', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, -15, '', 15, 1, 2, 'BA', '', '', '', '감사합니다.', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:11:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, -15, '', 15, 1, 3, '', '', '', '', '문의합니다', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 15:24:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, -15, '', 15, 1, 4, '', '', '', '', '댓글입력', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '세종대왕', '', '', '2019-08-03 15:30:01', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, -15, '', 15, 1, 5, '', '', '', '', '감사합니다~', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 16:48:23', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_review`
--

CREATE TABLE IF NOT EXISTS `g5_write_review` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_review`
--

INSERT INTO `g5_write_review` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -8, '', 8, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, -9, '', 9, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -10, '', 10, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -11, '', 11, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -12, '', 12, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, -13, '', 13, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -14, '', 14, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, -15, '', 15, 0, 7, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p><img src="http://localhost/data/editor/1908/ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg" title="ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg"><br style="clear:both;">&nbsp;</p><p><br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 16:48:23', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -16, '', 16, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 6, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, -15, '', 15, 1, 1, '', '', '', '', '반갑습니다~', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 14:20:12', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, -15, '', 15, 1, 2, '', '', '', '', '신차를 구입해야겠네요', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '홍길동', '', '', '2019-08-03 14:57:50', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, -15, '', 15, 1, 2, 'B', '', '', '', '감사합니다', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:10:45', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, -15, '', 15, 1, 2, 'BA', '', '', '', '감사합니다.', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:11:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, -15, '', 15, 1, 3, '', '', '', '', '문의합니다', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 15:24:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, -15, '', 15, 1, 4, '', '', '', '', '댓글입력', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '세종대왕', '', '', '2019-08-03 15:30:01', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, -15, '', 15, 1, 5, '', '', '', '', '감사합니다~', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 16:48:23', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, -17, '', 26, 0, 0, '', '', 'html1', '벤츠 E300', '<p><img src="http://localhost/data/editor/1908/223ed3bc919175ad07d4fec6e8874441_1564902797_1672.jpg" title="223ed3bc919175ad07d4fec6e8874441_1564902797_1672.jpg"><br style="clear:both;">&nbsp;</p>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-04 16:13:20', 0, '2019-08-04 16:13:20', '::1', '', '', '2016-06-09 / 광주 서구', '영업 3팀', '박성훈 팀장', '벤츠 E300', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_sale`
--

CREATE TABLE IF NOT EXISTS `g5_write_sale` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_sale`
--

INSERT INTO `g5_write_sale` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -8, '', 8, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, -9, '', 9, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, -10, '', 10, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, -11, '', 11, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, -12, '', 12, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, -13, '', 13, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 1, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, -14, '', 14, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, -15, '', 15, 0, 7, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p><img src="http://localhost/data/editor/1908/ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg" title="ce580fa89681259655560a62aa3d246a_1564818853_5769.jpg"><br style="clear:both;">&nbsp;</p><p><br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\r\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 16:48:23', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, -16, '', 16, 0, 0, '', '', 'html1', '[오토디자인 특가 프로모션] 25% 할인', '<p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p><p>[오토디자인 특가 프로모션] 25% 할인<br></p>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:12 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:17 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:23 할인정보에서 복사 됨]</div>\n<div class="content_copy">[이 게시물은 오토디자인님에 의해 2019-08-03 11:27:27 할인정보에서 복사 됨]</div>', '', '', 0, 0, 3, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, -15, '', 15, 1, 1, '', '', '', '', '반갑습니다~', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 14:20:12', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, -15, '', 15, 1, 2, '', '', '', '', '신차를 구입해야겠네요', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '홍길동', '', '', '2019-08-03 14:57:50', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, -15, '', 15, 1, 2, 'B', '', '', '', '감사합니다', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:10:45', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, -15, '', 15, 1, 2, 'BA', '', '', '', '감사합니다.', '', '', 0, 0, 0, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 16:11:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, -15, '', 15, 1, 3, '', '', '', '', '문의합니다', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 15:24:03', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, -15, '', 15, 1, 4, '', '', '', '', '댓글입력', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '세종대왕', '', '', '2019-08-03 15:30:01', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, -15, '', 15, 1, 5, '', '', '', '', '감사합니다~', '', '', 0, 0, 0, 0, 0, '', '*A4B6157319038724E3560894F7F932C8886EBFCF', '이순신', '', '', '2019-08-03 16:48:23', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_week`
--

CREATE TABLE IF NOT EXISTS `g5_write_week` (
`wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_week`
--

INSERT INTO `g5_write_week` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(1, -1, '', 1, 0, 0, '', '', '', 'BEST7', '1', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '100', '10', '', '', '', '', ''),
(2, -2, '', 2, 0, 0, '', '', '', 'BEST6', '1', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '11', '1', '', '', '', '', ''),
(3, -3, '', 3, 0, 0, '', '', '', 'BEST5', '1\r\n1\r\n1', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '100', '10', '', '', '', '', ''),
(4, -4, '', 4, 0, 0, '', '', '', 'BEST4', '1\r\n\r\n1\r\n\r\n1', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '10', '100', '', '', '', '', ''),
(5, -5, '', 5, 0, 0, '', '', '', 'BEST3', '1', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '10', '100', '', '', '', '', ''),
(6, -6, '', 6, 0, 0, '', '', '', 'BEST2', '...', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 0, '2019-08-03 11:04:38', '::1', '', '', '차종', '부제목', '차종설명', '10', '100', '', '', '', '', ''),
(7, -7, '', 7, 0, 0, '', '', '', 'BEST1', '[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사\r\n\r\n- 차종 : 산타페 TM\r\n\r\n- 컬러 : 선택가능\r\n\r\n- 차량가 : 31,120,000 원 \r\n\r\n- 개월수 : 48개월\r\n\r\n- 보증금/선수금 : 0%\r\n\r\n- 주행거리 : 20,000km\r\n\r\n- 차종 : 산타페 TM\r\n\r\n- 컬러 : 선택가능\r\n\r\n- 차량가 : 31,120,000 원 \r\n\r\n- 개월수 : 48개월\r\n\r\n- 보증금/선수금 : 0%\r\n\r\n- 주행거리 : 20,000km', '', '', 0, 0, 2, 0, 0, 'admin', '*A4B6157319038724E3560894F7F932C8886EBFCF', '오토디자인', 'admin@domain.com', '', '2019-08-03 11:04:38', 1, '2019-08-03 11:04:38', '::1', '', '', '싼타페 TM', '[ 장기렌트 ] 7월 무보증 특가', '2.0 2WD 모던 5인승', '31,120,000', '540,000', '', '', '', '', '');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `g5_auth`
--
ALTER TABLE `g5_auth`
 ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- 테이블의 인덱스 `g5_autosave`
--
ALTER TABLE `g5_autosave`
 ADD PRIMARY KEY (`as_id`), ADD UNIQUE KEY `as_uid` (`as_uid`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_board`
--
ALTER TABLE `g5_board`
 ADD PRIMARY KEY (`bo_table`);

--
-- 테이블의 인덱스 `g5_board_file`
--
ALTER TABLE `g5_board_file`
 ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- 테이블의 인덱스 `g5_board_good`
--
ALTER TABLE `g5_board_good`
 ADD PRIMARY KEY (`bg_id`), ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- 테이블의 인덱스 `g5_board_new`
--
ALTER TABLE `g5_board_new`
 ADD PRIMARY KEY (`bn_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
 ADD PRIMARY KEY (`cr_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_content`
--
ALTER TABLE `g5_content`
 ADD PRIMARY KEY (`co_id`);

--
-- 테이블의 인덱스 `g5_faq`
--
ALTER TABLE `g5_faq`
 ADD PRIMARY KEY (`fa_id`), ADD KEY `fm_id` (`fm_id`);

--
-- 테이블의 인덱스 `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
 ADD PRIMARY KEY (`fm_id`);

--
-- 테이블의 인덱스 `g5_group`
--
ALTER TABLE `g5_group`
 ADD PRIMARY KEY (`gr_id`);

--
-- 테이블의 인덱스 `g5_group_member`
--
ALTER TABLE `g5_group_member`
 ADD PRIMARY KEY (`gm_id`), ADD KEY `gr_id` (`gr_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_login`
--
ALTER TABLE `g5_login`
 ADD PRIMARY KEY (`lo_ip`);

--
-- 테이블의 인덱스 `g5_mail`
--
ALTER TABLE `g5_mail`
 ADD PRIMARY KEY (`ma_id`);

--
-- 테이블의 인덱스 `g5_member`
--
ALTER TABLE `g5_member`
 ADD PRIMARY KEY (`mb_no`), ADD UNIQUE KEY `mb_id` (`mb_id`), ADD KEY `mb_today_login` (`mb_today_login`), ADD KEY `mb_datetime` (`mb_datetime`);

--
-- 테이블의 인덱스 `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
 ADD UNIQUE KEY `mp_no` (`mp_no`), ADD KEY `mb_id` (`mb_id`), ADD KEY `provider` (`provider`);

--
-- 테이블의 인덱스 `g5_memo`
--
ALTER TABLE `g5_memo`
 ADD PRIMARY KEY (`me_id`), ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- 테이블의 인덱스 `g5_menu`
--
ALTER TABLE `g5_menu`
 ADD PRIMARY KEY (`me_id`);

--
-- 테이블의 인덱스 `g5_new_win`
--
ALTER TABLE `g5_new_win`
 ADD PRIMARY KEY (`nw_id`);

--
-- 테이블의 인덱스 `g5_point`
--
ALTER TABLE `g5_point`
 ADD PRIMARY KEY (`po_id`), ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`), ADD KEY `index2` (`po_expire_date`);

--
-- 테이블의 인덱스 `g5_poll`
--
ALTER TABLE `g5_poll`
 ADD PRIMARY KEY (`po_id`);

--
-- 테이블의 인덱스 `g5_poll_etc`
--
ALTER TABLE `g5_poll_etc`
 ADD PRIMARY KEY (`pc_id`);

--
-- 테이블의 인덱스 `g5_popular`
--
ALTER TABLE `g5_popular`
 ADD PRIMARY KEY (`pp_id`), ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- 테이블의 인덱스 `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
 ADD PRIMARY KEY (`qa_id`), ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- 테이블의 인덱스 `g5_scrap`
--
ALTER TABLE `g5_scrap`
 ADD PRIMARY KEY (`ms_id`), ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_uniqid`
--
ALTER TABLE `g5_uniqid`
 ADD PRIMARY KEY (`uq_id`);

--
-- 테이블의 인덱스 `g5_visit`
--
ALTER TABLE `g5_visit`
 ADD PRIMARY KEY (`vi_id`), ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`), ADD KEY `index2` (`vi_date`);

--
-- 테이블의 인덱스 `g5_visit_sum`
--
ALTER TABLE `g5_visit_sum`
 ADD PRIMARY KEY (`vs_date`), ADD KEY `index1` (`vs_count`);

--
-- 테이블의 인덱스 `g5_write_company`
--
ALTER TABLE `g5_write_company`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_estimate`
--
ALTER TABLE `g5_write_estimate`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_lesson`
--
ALTER TABLE `g5_write_lesson`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_qna`
--
ALTER TABLE `g5_write_qna`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_review`
--
ALTER TABLE `g5_write_review`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_sale`
--
ALTER TABLE `g5_write_sale`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_week`
--
ALTER TABLE `g5_write_week`
 ADD PRIMARY KEY (`wr_id`), ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`), ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `g5_autosave`
--
ALTER TABLE `g5_autosave`
MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- 테이블의 AUTO_INCREMENT `g5_board_good`
--
ALTER TABLE `g5_board_good`
MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_board_new`
--
ALTER TABLE `g5_board_new`
MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- 테이블의 AUTO_INCREMENT `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_faq`
--
ALTER TABLE `g5_faq`
MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `g5_group_member`
--
ALTER TABLE `g5_group_member`
MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_mail`
--
ALTER TABLE `g5_mail`
MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_member`
--
ALTER TABLE `g5_member`
MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `g5_member_social_profiles`
--
ALTER TABLE `g5_member_social_profiles`
MODIFY `mp_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_menu`
--
ALTER TABLE `g5_menu`
MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_new_win`
--
ALTER TABLE `g5_new_win`
MODIFY `nw_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_point`
--
ALTER TABLE `g5_point`
MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 테이블의 AUTO_INCREMENT `g5_poll`
--
ALTER TABLE `g5_poll`
MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_popular`
--
ALTER TABLE `g5_popular`
MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `g5_scrap`
--
ALTER TABLE `g5_scrap`
MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 테이블의 AUTO_INCREMENT `g5_write_company`
--
ALTER TABLE `g5_write_company`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- 테이블의 AUTO_INCREMENT `g5_write_estimate`
--
ALTER TABLE `g5_write_estimate`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- 테이블의 AUTO_INCREMENT `g5_write_lesson`
--
ALTER TABLE `g5_write_lesson`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- 테이블의 AUTO_INCREMENT `g5_write_qna`
--
ALTER TABLE `g5_write_qna`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- 테이블의 AUTO_INCREMENT `g5_write_review`
--
ALTER TABLE `g5_write_review`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- 테이블의 AUTO_INCREMENT `g5_write_sale`
--
ALTER TABLE `g5_write_sale`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- 테이블의 AUTO_INCREMENT `g5_write_week`
--
ALTER TABLE `g5_write_week`
MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
