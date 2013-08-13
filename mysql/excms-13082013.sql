-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2013 at 12:51 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `excms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_blog_article`
--

CREATE TABLE IF NOT EXISTS `cms_blog_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_title` varchar(100) DEFAULT NULL,
  `article_url` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author_user_id` int(10) DEFAULT NULL,
  `content` text,
  `allow_comment` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_blog_article`
--

INSERT INTO `cms_blog_article` (`article_id`, `article_title`, `article_url`, `date`, `author_user_id`, `content`, `allow_comment`) VALUES
(1, 'Scandal', 'Scandal', '2013-03-25 09:50:49', 1, '<p>\n  &nbsp;</p>\n<div>\n SCANDAL (スキャンダル Sukyandaru?, stylized as SCANDAL) is a Japanese pop rock girl band from Osaka, Japan. Formed in August 2006 by four high school girls, they started playing street lives until they were noticed and signed to the indie label Kitty Records. In 2008, they released three singles and a mini-album while performing shows in the United States, France, and Hong Kong. That October, Scandal released their major debut single, &quot;Doll&quot;, under Epic Records Japan.</div>\n<div>\n &nbsp;</div>\n<div>\n   The band has performed the theme songs for many anime, including &quot;Shōjo S&quot; for Bleach and &quot;Shunkan Sentimental&quot; for Fullmetal Alchemist: Brotherhood. With numerous overseas performances and anime theme songs, Scandal has built a considerable international fanbase.</div>\n<div>\n &nbsp;</div>\n<div style="page-break-after: always;">\n <span style="display: none;">&nbsp;</span></div>\n<div>\n   <div>\n     <strong>Indie career</strong></div>\n   <div>\n     &nbsp;</div>\n  <div>\n     Scandal was formed in August 2006 by four high school girls. The girls, Haruna, Mami, Tomomi, and Rina, met in an Osaka vocal and dance school called Caless. Shortly thereafter, they started performing street lives every weekend at Shiroten in Osaka Castle Park. Soon, they started getting offers from clubs in Osaka and Kyoto. The band&#39;s name originates from a sign near Studio Brotherz, a studio where they practiced in their early days. The studio is on the sixth floor of a building shared with other businesses, namely adult shops. The girls decided to choose the biggest sign among the shops, &quot;Scandal&quot; (スキャンダル Sukyandaru?), as the name for their band.</div>\n    <div>\n     &nbsp;</div>\n  <div>\n     Scandal signed with indie label Kitty Records and released three singles exclusive to Tower Records in 2008. The first, &quot;Space Ranger&quot;, ranked #2 on the Tower indie charts and the other two, &quot;Koi Moyō&quot; and &quot;Kagerō&quot;, ranked #1. In March, they embarked on the Japan Nite US tour 2008, touring six major cities in the United States. They also performed at Sakura-Con, one of the largest anime conventions in the United States. In July, they performed in front of 10,000 people at France&#39;s Japan Expo and also at Hong Kong&#39;s Animation-Comic-Game Hong Kong in August. Scandal concluded their indie career with the release of their first mini-album, Yah! Yah! Yah! Hello Scandal: Maido! Scandal Desu! Yah Yah Yah!.</div>\n  <div>\n     &nbsp;</div>\n  <div>\n     <strong>Major debut</strong></div>\n    <div>\n     &nbsp;</div>\n  <div>\n     2008 continued to be an eventful year for Scandal. In October, they made their major debut on Epic Records Japan with the single &quot;Doll&quot;. It gave them more exposure, including appearances on mainstream music television shows like Music Station. The band released their second major single &quot;Sakura Goodbye&quot; in March 2009 to commemorate Mami and Tomomi&#39;s high school graduation. The song is a new version of their indie song, &quot;Sakura&quot;, only heard live. The following month, their then upcoming third major single &quot;Shōjo S&quot; was used as the tenth opening theme for the anime Bleach. This brought their popularity up even higher as the single ranked #6 on the Oricon charts when it was released two months later in June.</div>\n  <div>\n     &nbsp;</div>\n  <div>\n     On October 14th, Scandal released their fourth major single, &quot;Yumemiru Tsubasa&quot; which was followed with their major debut album, Best Scandal, the next week. The album ranked #5 on the Oricon weekly chart, making them the first girl band since Zone to have a debut album chart in the top five. In December, Scandal embarked on their first one-man tour. Concluding the year, the band won a New Artist Award at the 51st Japan Record Award, but lost the Best New Artist Award to Big Bang.</div>\n <div>\n     &nbsp;</div>\n  <div>\n     2010 began with Scandal&#39;s fifth major single in February, &quot;Shunkan Sentimental&quot;. It was used as the fourth ending theme for the anime Fullmetal Alchemist: Brotherhood. The following month, they embarked on a spring tour, Scandal: Shunkan Sakura Zensen Tour 2010 Spring. Prior to its start, the band conducted a Twitter poll to choose a song to cover for the tour. The winner was &quot;Secret Base (Kimi ga Kureta Mono)&quot;, which was chosen out of over 600 candidates. In June, Scandal released a pop tune for summer, &quot;Taiyō to Kimi ga Egaku Story&quot;, followed by their first original ballad, &quot;Namida no Regret&quot;, in July.</div>\n <div>\n     &nbsp;</div>\n  <div>\n     Between the end of July and the beginning of August, Scandal traveled to Hong Kong. The band performed for the third consecutive year at the Animation-Comic-Game Hong Kong convention and held their first one-man live concert in Hong Kong, which sold out. SCANDAL was also featured on the cover of the Hong Kong magazine re:spect music magazine, and their previously released single &quot;Taiyō to Kimi ga Egaku Story&quot; reached #1 on the Radio Television Hong Kong J-pop chart. Earlier in the year, they were awarded a bronze newcomer award by RTHK, similar to the Hong Kong Grammys.</div>\n  <div>\n     &nbsp;</div>\n  <div>\n     After returning to Japan, Scandal released their second album, Temptation Box, on August 11. The album debuted at #3 on the Oricon weekly chart, making them the first girl band to have an album chart in the top three in over a year since Chatmonchy&#39;s Kokuhaku. The album was also released in 42 other countries worldwide.</div>\n   <div>\n     &nbsp;</div>\n  <div>\n     Later in August, Scandal provided the theme, insert, and ending songs for the animated film Loups=Garous, which premiered on the 28th in most of Japan. The songs were &quot;Midnight Television&quot;, &quot;Koshi-Tantan&quot;, and &quot;Sayonara My Friend&quot;, respectively. The band also appeared as themselves, marking their big-screen debut as a band. They were shown in a musical performance scene that was created with the help of motion capture, providing a realistic representation of the band&#39;s movements. Each member also had a role voicing a minor character.</div>\n   <div>\n     &nbsp;</div>\n  <div>\n     Two months following Temptation Box, Scandal released their eighth major single, &quot;Scandal Nanka Buttobase&quot;, on October 6, 2010. The title track was written and composed by the husband-and-wife duo Yoko Aki and Ryudo Uzaki, who are known for creating many songs for Momoe Yamaguchi. The limited edition DVDs contains performances from the band&#39;s first television show, Shiteki Ongaku Jijō, which ran for 13 episodes from July to September 2010. In November, Scandal released a cover mini-album called R-Girl&#39;s Rock!. It features songs by female artists that they respect from the last three decades, including their cover of &quot;Secret Base (Kimi ga Kureta Mono)&quot; from May. Rina undertook her first lead vocal on the song &quot;Sunny Day Sunday&quot;.</div>\n <div>\n     &nbsp;</div>\n  <div>\n     Scandal continued into 2011 with their ninth major single on February 9. Titled &quot;Pride&quot;, the song was used as the second ending theme for the anime Star Driver: Kagayaki no Takuto. The single also includes the tracks &quot;Cute!&quot;, a collaboration with Sanrio&#39;s Cinnamoroll, and &quot;Emotion&quot;, their first song that was written solely by a band member. Their tenth major single, &quot;Haruka&quot;, was released on April 20. The title track was used as the theme song for the animated film Tofu Kozou, while the song &quot;Satisfaction&quot; was later used as the promotional song for the release of Windows 8. This was followed by their eleventh major single, &quot;Love Survive&quot;, as well as their third studio album Baby Action. They also embarked on their first Asian Tour, performing to sell out crowds in Hong Kong, Taiwan and Singapore.</div>\n <div>\n     &nbsp;</div>\n  <div>\n     2012 proved to be a year of firsts for Scandal. The title track of their twelfth single, &quot;Harukaze&quot;, was used as the the opening theme for the anime Bleach. The following month, they released their first Best Of album, Scandal Show, as well as holding their first concert at the Nippon Budokan, thus becoming the fastest girl band to perform there since their debut. In July, they released their thirteenth major single, &quot;Taiyō Scandalous&quot;. This single marked the first official release of their subunits, Dobondobondo (Mami x Tomomi) and Almond Crush (Haruna x Rina). This was followed by their fourteenth major single, &quot;Pin Heel Surfer&quot;, and their fourth major album, Queens Are Trumps: Kirifuda wa Queen. With this release, they became the first girl band to achieve fur consecutive top 5 positions in the Oricon Weekly charts. They also held a concert in Malaysia in December, becoming the first Japanese band to hold a solo concert there.</div>\n   <div>\n     &nbsp;</div>\n  <div>\n     Scandal started 2013 by fulfilling one of their biggest dreams they had since their formation by performing in their hometown at the Osaka-jō Hall in March. Later that month they also performed to sellout crowds on their 2nd Asian Tour in Indonesia, Singapore and Thailand. During this period they also announced their fourteenth major single &quot;Awanai Tsumori no, Genki de ne&quot; released in May, with the title track being used as the theme song for the movie &quot;Ore wa Mada Honki Dashitenai Dake&quot;.</div>\n</div>\n<p>\n  &nbsp;</p>\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_blog_category`
--

CREATE TABLE IF NOT EXISTS `cms_blog_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_blog_category`
--

INSERT INTO `cms_blog_category` (`category_id`, `category_name`, `description`) VALUES
(1, 'Science', NULL),
(2, 'Fun', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_blog_category_article`
--

CREATE TABLE IF NOT EXISTS `cms_blog_category_article` (
  `category_id` int(10) DEFAULT NULL,
  `article_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_blog_category_article`
--

INSERT INTO `cms_blog_category_article` (`category_id`, `article_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_blog_comment`
--

CREATE TABLE IF NOT EXISTS `cms_blog_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author_user_id` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_blog_comment`
--

INSERT INTO `cms_blog_comment` (`comment_id`, `article_id`, `date`, `author_user_id`, `name`, `email`, `website`, `content`) VALUES
(1, 1, '2013-03-25 09:53:16', 1, '0', '0', '', 'great comment for great article');

-- --------------------------------------------------------

--
-- Table structure for table `cms_blog_photo`
--

CREATE TABLE IF NOT EXISTS `cms_blog_photo` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cms_blog_photo`
--

INSERT INTO `cms_blog_photo` (`photo_id`, `article_id`, `url`) VALUES
(1, 1, 'e290d4scandal-promo.jpg'),
(2, 1, '6d65c1si_5097488_vjjnjbm6s1_lr.jpg'),
(3, 1, 'cf061dNews_Scandal_Tempt1b.jpg'),
(4, 1, '77bf85541445_422004441170914_376342220_n.jpg'),
(5, 1, '38a006scandalbox.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cms_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `cms_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_ci_sessions`
--

INSERT INTO `cms_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('5ec66c1c4f168133eae2a7dccdb49f68', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 1376390987, 'a:6:{s:9:"user_data";s:0:"";s:8:"cms_lang";s:7:"english";s:13:"cms_user_name";s:5:"admin";s:11:"cms_user_id";s:1:"1";s:18:"cms_user_real_name";s:11:"Exile Admin";s:14:"cms_user_email";s:15:"admin@admin.com";}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_authorization`
--

CREATE TABLE IF NOT EXISTS `cms_main_authorization` (
  `authorization_id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `authorization_name` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`authorization_id`),
  UNIQUE KEY `authorization_name` (`authorization_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cms_main_authorization`
--

INSERT INTO `cms_main_authorization` (`authorization_id`, `authorization_name`, `description`) VALUES
(1, 'Everyone', 'All visitor of the web are permitted (e.g:view blog content)'),
(2, 'Unauthenticated', 'Only non-member visitor, they who hasn''t log in yet (e.g:view member registration page)'),
(3, 'Authenticated', 'Only member (e.g:change password)'),
(4, 'Authorized', 'Only member with certain privilege (depend on group)');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_config`
--

CREATE TABLE IF NOT EXISTS `cms_main_config` (
  `config_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(50) NOT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `config_name` (`config_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `cms_main_config`
--

INSERT INTO `cms_main_config` (`config_id`, `config_name`, `value`, `description`) VALUES
(1, 'site_name', 'Exile CMS', 'Site title'),
(2, 'site_slogan', 'basic cms planform for exile admin', 'Site slogan'),
(3, 'site_logo', '{{ base_url }}assets/nocms/images/custom_logo/exile_cms_logo.png', 'Site logo'),
(4, 'site_favicon', '{{ base_url }}assets/nocms/images/custom_logo/fav_cms.png', 'Site favicon'),
(5, 'site_footer', 'Exile Studio © 2013', 'Site footer'),
(6, 'site_theme', 'neutral', 'Site theme'),
(7, 'site_language', 'english', 'Site language'),
(8, 'max_menu_depth', '5', 'Depth of menu recursive'),
(9, 'cms_email_reply_address', 'hakimi@exile-studio.com', 'Email address'),
(10, 'cms_email_reply_name', 'Hakimi [EX]', 'Email name'),
(11, 'cms_email_forgot_subject', 'Re-activate your account at No-CMS', 'Email subject sent when user forgot his/her password'),
(12, 'cms_email_forgot_message', 'Dear, {{ user_real_name }}<br />Click <a href="{{ site_url }}main/forgot/{{ activation_code }}">{{ site_url }}main/forgot/{{ activation_code }}</a> to reactivate your account', 'Email message sent when user forgot his/her password'),
(13, 'cms_email_signup_subject', 'Activate your account at No-CMS', 'Email subject sent to activate user'),
(14, 'cms_email_signup_message', 'Dear, {{ user_real_name }}<br />Click <a href="{{ site_url }}main/activate/{{ activation_code }}">{{ site_url }}main/activate/{{ activation_code }}</a> to activate your account', 'Email message sent to activate user'),
(15, 'cms_signup_activation', 'FALSE', 'Send activation email to new member. Default : false, Alternatives : true, false'),
(16, 'cms_email_useragent', 'Codeigniter', 'Default : CodeIgniter'),
(17, 'cms_email_protocol', 'smtp', 'Default : smtp, Alternatives : mail, sendmail, smtp'),
(18, 'cms_email_mailpath', '/usr/sbin/sendmail', 'Default : /usr/sbin/sendmail'),
(19, 'cms_email_smtp_host', 'ssl://smtp.googlemail.com', 'eg : ssl://smtp.googlemail.com'),
(20, 'cms_email_smtp_user', 'your_gmail_address@gmail.com', 'eg : your_gmail_address@gmail.com'),
(21, 'cms_email_smtp_pass', '', 'your password'),
(22, 'cms_email_smtp_port', '465', 'smtp port, default : 465'),
(23, 'cms_email_smtp_timeout', '30', 'default : 30'),
(24, 'cms_email_wordwrap', 'TRUE', 'Enable word-wrap. Default : true, Alternatives : true, false'),
(25, 'cms_email_wrapchars', '76', 'Character count to wrap at.'),
(26, 'cms_email_mailtype', 'html', 'Type of mail. If you send HTML email you must send it as a complete web page. Make sure you do not have any relative links or relative image paths otherwise they will not work. Default : html, Alternatives : html, text'),
(27, 'cms_email_charset', 'utf-8', 'Character set (utf-8, iso-8859-1, etc.).'),
(28, 'cms_email_validate', 'FALSE', 'Whether to validate the email address. Default: true, Alternatives : true, false'),
(29, 'cms_email_priority', '3', '1, 2, 3, 4, 5	Email Priority. 1 = highest. 5 = lowest. 3 = normal.'),
(30, 'cms_email_bcc_batch_mode', 'FALSE', 'Enable BCC Batch Mode. Default: false, Alternatives: true'),
(31, 'cms_email_bcc_batch_size', '200', 'Number of emails in each BCC batch.'),
(32, 'cms_google_analytic_property_id', '', 'Google analytics property ID (e.g: UA-30285787-1). Leave blank if you don''t want to use it.');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_group`
--

CREATE TABLE IF NOT EXISTS `cms_main_group` (
  `group_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) NOT NULL,
  `description` text,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_name` (`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_main_group`
--

INSERT INTO `cms_main_group` (`group_id`, `group_name`, `description`) VALUES
(1, 'Admin', 'Every member of this group can do everything possible, but only programmer can turn the impossible into real :D'),
(2, 'Employee', 'Just an example, employee role'),
(3, 'super_admin', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_group_navigation`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_navigation` (
  `group_id` int(20) unsigned NOT NULL,
  `navigation_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`navigation_id`),
  KEY `navigation_id` (`navigation_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_main_group_navigation`
--

INSERT INTO `cms_main_group_navigation` (`group_id`, `navigation_id`) VALUES
(1, 4),
(3, 4),
(3, 8),
(3, 15),
(3, 19),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_group_privilege`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_privilege` (
  `group_id` int(20) unsigned NOT NULL,
  `privilege_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`privilege_id`,`group_id`),
  KEY `group_id` (`group_id`),
  KEY `privilege_id` (`privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_main_group_privilege`
--

INSERT INTO `cms_main_group_privilege` (`group_id`, `privilege_id`) VALUES
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_group_user`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_user` (
  `group_id` int(20) unsigned NOT NULL,
  `user_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_main_group_user`
--

INSERT INTO `cms_main_group_user` (`group_id`, `user_id`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_group_widget`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_widget` (
  `group_id` int(20) unsigned NOT NULL,
  `widget_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`widget_id`),
  KEY `widget_id` (`widget_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_module`
--

CREATE TABLE IF NOT EXISTS `cms_main_module` (
  `module_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_path` varchar(50) NOT NULL,
  `user_id` int(20) unsigned NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_path` (`module_path`),
  UNIQUE KEY `module_name` (`module_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_main_module`
--

INSERT INTO `cms_main_module` (`module_id`, `module_name`, `module_path`, `user_id`, `version`) VALUES
(1, 'gofrendi.noCMS.wysiwyg', 'wysiwyg', 1, '0.0.0'),
(2, 'gofrendi.noCMS.blog', 'blog', 1, '0.0.0'),
(3, 'gofrendi.noCMS.nordrassil', 'nordrassil', 1, '0.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_module_dependency`
--

CREATE TABLE IF NOT EXISTS `cms_main_module_dependency` (
  `module_dependency_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) unsigned NOT NULL,
  `child_id` int(20) unsigned NOT NULL,
  PRIMARY KEY (`module_dependency_id`),
  UNIQUE KEY `module_parent_child` (`parent_id`,`child_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_navigation`
--

CREATE TABLE IF NOT EXISTS `cms_main_navigation` (
  `navigation_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `navigation_name` varchar(45) NOT NULL,
  `parent_id` int(20) unsigned DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `page_title` varchar(50) DEFAULT NULL,
  `page_keyword` varchar(100) DEFAULT NULL,
  `description` text,
  `url` varchar(100) DEFAULT NULL,
  `authorization_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `index` int(20) NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_static` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `static_content` text,
  `only_content` int(20) NOT NULL DEFAULT '0',
  `default_theme` varchar(50) DEFAULT NULL,
  `icon` varchar(50) NOT NULL DEFAULT 'home',
  PRIMARY KEY (`navigation_id`),
  UNIQUE KEY `navigation_name` (`navigation_name`),
  KEY `parent_id` (`parent_id`),
  KEY `authorization_id` (`authorization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `cms_main_navigation`
--

INSERT INTO `cms_main_navigation` (`navigation_id`, `navigation_name`, `parent_id`, `title`, `page_title`, `page_keyword`, `description`, `url`, `authorization_id`, `index`, `active`, `is_static`, `static_content`, `only_content`, `default_theme`, `icon`) VALUES
(1, 'main_login', NULL, 'Login', 'Login', NULL, 'Visitor need to login for authentication', 'main/login', 2, 1, 1, 0, NULL, 0, 'login', 'home'),
(2, 'main_forgot', NULL, 'Forgot Password', 'Forgot', NULL, 'Accidentally forgot password', 'main/forgot', 2, 3, 1, 0, NULL, 0, NULL, 'home'),
(3, 'main_logout', NULL, 'Logout', 'Logout', NULL, 'Logout for deauthentication', 'main/logout', 3, 2, 1, 0, NULL, 0, NULL, 'home'),
(4, 'main_management', NULL, 'Dashboard Back End', 'Dashboard', NULL, 'The main management of the CMS. Including User, Group, Privilege and Navigation Management', 'main/management', 4, 6, 1, 0, NULL, 0, 'admin', 'home'),
(5, 'main_register', NULL, 'Register', 'Register', NULL, 'New User Registration', 'main/register', 2, 4, 1, 0, NULL, 0, NULL, 'home'),
(6, 'main_change_profile', NULL, 'Change Profile', 'Change Profile', NULL, 'Change Current Profile', 'main/change_profile', 3, 5, 0, 0, NULL, 0, 'admin', 'home'),
(7, 'main_group_management', 4, 'Group Management', 'Group Management', NULL, 'Group Management', 'main/group', 4, 0, 1, 0, NULL, 0, 'admin', 'home'),
(8, 'main_navigation_management', 4, 'Navigation Management', 'Navigation Management', NULL, 'Navigation management', 'main/navigation', 4, 3, 1, 0, NULL, 0, 'admin', 'home'),
(9, 'main_privilege_management', 4, 'Privilege Management', 'Privilege Management', NULL, 'Privilege Management', 'main/privilege', 4, 2, 1, 0, NULL, 0, 'admin', 'home'),
(10, 'main_user_management', 4, 'User Management', 'User Management', NULL, 'Manage User', 'main/user', 4, 1, 1, 0, NULL, 0, 'admin', 'home'),
(11, 'main_module_management', 4, 'Module Management', 'Module Management', NULL, 'Install Or Uninstall Thirdparty Module', 'main/module_management', 4, 5, 1, 0, NULL, 0, 'admin', 'home'),
(12, 'main_change_theme', 4, 'Change Theme', 'Change Theme', NULL, 'Change Theme', 'main/change_theme', 4, 6, 1, 0, NULL, 0, 'admin', 'home'),
(13, 'main_widget_management', 4, 'Widget Management', 'Widget Management', NULL, 'Manage Widgets', 'main/widget', 4, 4, 1, 0, NULL, 0, 'admin', 'home'),
(14, 'main_quicklink_management', 4, 'Quick Link Management', 'Quick Link Management', NULL, 'Manage Quick Link', 'main/quicklink', 4, 7, 1, 0, NULL, 0, 'admin', 'home'),
(15, 'main_config_management', 4, 'Configuration Management', 'Configuration Management', NULL, 'Manage Configuration Parameters', 'main/config', 4, 8, 1, 0, NULL, 0, 'admin', 'home'),
(16, 'main_index', NULL, 'Home Front End', 'Home', NULL, 'There is no place like home :D', 'main/index', 1, 0, 1, 1, '<h3>\r\n	Welcome {{ user_name }}</h3>\r\n<p>\r\n	This is the home page, yes it is reponsive?</p>\r\n', 0, NULL, 'home'),
(17, 'main_language', NULL, 'Language', 'Language', NULL, 'Choose the language', 'main/language', 1, 0, 0, 0, NULL, 0, NULL, 'home'),
(18, 'main_third_party_auth', NULL, 'Third Party Authentication', 'Third Party Authentication', NULL, 'Third Party Authentication', 'main/hauth/index', 1, 0, 0, 0, NULL, 0, NULL, 'home'),
(19, 'wysiwyg_index', 4, 'WYSIWYG', NULL, NULL, NULL, 'wysiwyg/index', 4, 9, 0, 0, NULL, 0, NULL, 'home'),
(20, 'blog_index', NULL, 'Blog', NULL, NULL, NULL, 'blog/blog', 4, 7, 1, 0, NULL, 0, NULL, 'home'),
(21, 'blog_manage_article', 20, 'Manage Article', NULL, NULL, NULL, 'blog/manage_article', 4, 0, 1, 0, NULL, 0, NULL, 'home'),
(22, 'blog_manage_category', 20, 'Manage Category', NULL, NULL, NULL, 'blog/manage_category', 4, 1, 1, 0, NULL, 0, NULL, 'home'),
(23, 'nordrassil_index', 4, 'Module Generator', NULL, NULL, NULL, 'nordrassil/nordrassil/index', 4, 10, 0, 0, NULL, 0, NULL, 'home'),
(24, 'nordrassil_template', 23, 'Generator Template', NULL, NULL, NULL, 'nordrassil/data/nds/template', 4, 0, 0, 0, NULL, 0, NULL, 'home'),
(25, 'nordrassil_project', 23, 'Project', NULL, NULL, NULL, 'nordrassil/data/nds/project', 4, 1, 0, 0, NULL, 0, NULL, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_privilege`
--

CREATE TABLE IF NOT EXISTS `cms_main_privilege` (
  `privilege_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `authorization_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`privilege_id`),
  UNIQUE KEY `privilege_name` (`privilege_name`),
  KEY `authorization_id` (`authorization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_main_privilege`
--

INSERT INTO `cms_main_privilege` (`privilege_id`, `privilege_name`, `title`, `description`, `authorization_id`) VALUES
(1, 'cms_install_module', 'Install Module', 'Install Module is a very critical privilege, it allow authorized user to Install a module to the CMS.<br />By Installing module, the database structure can be changed. There might be some additional navigation and privileges added.<br /><br />You''d be better to give this authorization only authenticated and authorized user. (I suggest to make only admin have such a privilege)\n&nbsp;', 4),
(2, 'cms_manage_access', 'Manage Access', 'Manage access\n&nbsp;', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_quicklink`
--

CREATE TABLE IF NOT EXISTS `cms_main_quicklink` (
  `quicklink_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `navigation_id` int(20) unsigned NOT NULL,
  `index` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quicklink_id`),
  UNIQUE KEY `navigation_id` (`navigation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cms_main_quicklink`
--

INSERT INTO `cms_main_quicklink` (`quicklink_id`, `navigation_id`, `index`) VALUES
(1, 16, 0),
(2, 5, 1),
(3, 2, 2),
(4, 4, 3),
(5, 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_user`
--

CREATE TABLE IF NOT EXISTS `cms_main_user` (
  `user_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `activation_code` varchar(45) DEFAULT NULL,
  `real_name` varchar(45) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT '1',
  `auth_OpenID` varchar(100) DEFAULT NULL,
  `auth_Facebook` varchar(100) DEFAULT NULL,
  `auth_Twitter` varchar(100) DEFAULT NULL,
  `auth_Yahoo` varchar(100) DEFAULT NULL,
  `auth_LinkedIn` varchar(100) DEFAULT NULL,
  `auth_MySpace` varchar(100) DEFAULT NULL,
  `auth_Foursquare` varchar(100) DEFAULT NULL,
  `auth_AOL` varchar(100) DEFAULT NULL,
  `auth_Live` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_main_user`
--

INSERT INTO `cms_main_user` (`user_id`, `user_name`, `email`, `password`, `activation_code`, `real_name`, `active`, `auth_OpenID`, `auth_Facebook`, `auth_Twitter`, `auth_Yahoo`, `auth_LinkedIn`, `auth_MySpace`, `auth_Foursquare`, `auth_AOL`, `auth_Live`) VALUES
(1, 'admin', 'admin@admin.com', 'ede6b50e7b5826fe48fc1f0fe772c48f', NULL, 'Exile Admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'kimisan87', 'mageslayerofmagis@gmail.com', '200820e3227815ed1756a6b531e7e0d2', NULL, 'Faizul Hakimi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_main_widget`
--

CREATE TABLE IF NOT EXISTS `cms_main_widget` (
  `widget_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(45) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `url` varchar(100) DEFAULT NULL,
  `authorization_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` int(20) NOT NULL DEFAULT '0',
  `is_static` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `static_content` text,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`widget_id`),
  UNIQUE KEY `widget_name` (`widget_name`),
  KEY `authorization_id` (`authorization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cms_main_widget`
--

INSERT INTO `cms_main_widget` (`widget_id`, `widget_name`, `title`, `description`, `url`, `authorization_id`, `active`, `index`, `is_static`, `static_content`, `slug`) VALUES
(1, 'left_navigation', 'Left Navigation', '', 'main/widget_left_nav', 1, 1, 1, 0, NULL, NULL),
(2, 'top_navigation', 'Top Navigation', '', 'main/widget_top_nav', 1, 1, 1, 0, NULL, NULL),
(3, 'quicklink', 'Quicklinks', '', 'main/widget_quicklink', 1, 1, 1, 0, NULL, NULL),
(4, 'login', 'Login', 'Visitor need to login for authentication', 'main/widget_login', 2, 1, 0, 0, '<form action="{{ site_url }}main/login" method="post" accept-charset="utf-8"><label>Identity</label><br><input type="text" name="identity" value=""><br><label>Password</label><br><input type="password" name="password" value=""><br><input type="submit" name="login" value="Log In"></form>', 'sidebar, user_widget'),
(5, 'logout', 'User Info', 'Logout', 'main/widget_logout', 3, 1, 1, 1, 'Welcome {{ user_name }}<br />\r\n<a href="{{ site_url }}main/logout">logout</a><br />', 'sidebar, user_widget'),
(6, 'social_plugin', 'Share This Page !!', 'Addthis', 'main/widget_social_plugin', 1, 1, 2, 1, '<!-- AddThis Button BEGIN -->\n<div class="addthis_toolbox addthis_default_style "><a class="addthis_button_preferred_1"></a> <a class="addthis_button_preferred_2"></a> <a class="addthis_button_preferred_3"></a> <a class="addthis_button_preferred_4"></a> <a class="addthis_button_preferred_5"></a> <a class="addthis_button_preferred_6"></a> <a class="addthis_button_preferred_7"></a> <a class="addthis_button_preferred_8"></a> <a class="addthis_button_preferred_9"></a> <a class="addthis_button_preferred_10"></a> <a class="addthis_button_preferred_11"></a> <a class="addthis_button_preferred_12"></a> <a class="addthis_button_preferred_13"></a> <a class="addthis_button_preferred_14"></a> <a class="addthis_button_preferred_15"></a> <a class="addthis_button_preferred_16"></a> <a class="addthis_button_compact"></a> <a class="addthis_counter addthis_bubble_style"></a></div>\n<script src="http://s7.addthis.com/js/250/addthis_widget.js?domready=1" type="text/javascript"></script>\n<!-- AddThis Button END -->', 'sidebar'),
(7, 'google_search', 'Search', 'Search from google', '', 1, 0, 3, 1, '<!-- Google Custom Search Element -->\n<div id="cse" style="width: 100%;">Loading</div>\n<script src="http://www.google.com/jsapi" type="text/javascript"></script>\n<script type="text/javascript">// <![CDATA[\n    google.load(''search'', ''1'');\n    google.setOnLoadCallback(function(){var cse = new google.search.CustomSearchControl();cse.draw(''cse'');}, true);\n// ]]></script>', 'sidebar'),
(8, 'google_translate', 'Translate !!', '<p>The famous google translate</p>', '', 1, 0, 4, 1, '<!-- Google Translate Element -->\n<div id="google_translate_element" style="display:block"></div>\n<script>\nfunction googleTranslateElementInit() {\n  new google.translate.TranslateElement({pageLanguage: "af"}, "google_translate_element");\n};\n</script>\n<script src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>\n', 'sidebar'),
(9, 'calendar', 'Calendar', 'Indonesian Calendar', '', 1, 0, 5, 1, '<!-------Do not change below this line------->\n<div align="center" height="200px">\n    <iframe align="center" src="http://www.calendarlabs.com/calendars/web-content/calendar.php?cid=1001&uid=162232623&c=22&l=en&cbg=C3D9FF&cfg=000000&hfg=000000&hfg1=000000&ct=1&cb=1&cbc=2275FF&cf=verdana&cp=bottom&sw=0&hp=t&ib=0&ibc=&i=" width="170" height="155" marginwidth=0 marginheight=0 frameborder=no scrolling=no allowtransparency=''true''>\n    Loading...\n    </iframe>\n    <div align="center" style="width:140px;font-size:10px;color:#666;">\n        Powered by <a  href="http://www.calendarlabs.com/" target="_blank" style="font-size:10px;text-decoration:none;color:#666;">Calendar</a> Labs\n    </div>\n</div>\n\n<!-------Do not change above this line------->', 'sidebar'),
(10, 'google_map', 'Map', 'google map', '', 1, 0, 6, 1, '<!-- Google Maps Element Code -->\n<iframe frameborder=0 marginwidth=0 marginheight=0 border=0 style="border:0;margin:0;width:150px;height:250px;" src="http://www.google.com/uds/modules/elements/mapselement/iframe.html?maptype=roadmap&element=true" scrolling="no" allowtransparency="true"></iframe>', 'sidebar'),
(12, 'blog_newest_article', 'Newest Articles', NULL, 'blog/widget/newest', 1, 0, 7, 0, NULL, 'sidebar'),
(13, 'blog_article_category', 'Categories', NULL, 'blog/widget/category', 1, 0, 8, 0, NULL, 'sidebar'),
(14, 'admin_left_nav', 'Admin Left Nav', 'widget_left_nav', 'main/widget_side_admin_nav', 1, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_column`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_column` (
  `column_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  `data_size` int(11) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `lookup_table_id` int(11) DEFAULT NULL,
  `lookup_column_id` int(11) DEFAULT NULL,
  `relation_table_id` int(11) DEFAULT NULL,
  `relation_table_column_id` int(11) DEFAULT NULL,
  `relation_selection_column_id` int(11) DEFAULT NULL,
  `relation_priority_column_id` int(11) DEFAULT NULL,
  `selection_table_id` int(11) DEFAULT NULL,
  `selection_column_id` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `value_selection_mode` varchar(50) DEFAULT NULL,
  `value_selection_item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `cms_nordrassil_column`
--

INSERT INTO `cms_nordrassil_column` (`column_id`, `table_id`, `name`, `caption`, `data_type`, `data_size`, `role`, `lookup_table_id`, `lookup_column_id`, `relation_table_id`, `relation_table_column_id`, `relation_selection_column_id`, `relation_priority_column_id`, `selection_table_id`, `selection_column_id`, `priority`, `value_selection_mode`, `value_selection_item`) VALUES
(1, 1, 'citizen_id', 'Citizen Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 1, 'city_id', 'City', 'int', 10, 'lookup', 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 1, 'name', 'Name', 'varchar', 50, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 1, 'birthdate', 'Birthdate', 'date', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 1, 'job_id', 'Job', 'int', 10, 'lookup', 9, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 2, 'id', 'Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, 2, 'citizen_id', 'Citizen Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, 2, 'hobby_id', 'Hobby Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 3, 'city_id', 'City Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 3, 'country_id', 'Country', 'int', 10, 'lookup', 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, 3, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(12, 4, 'id', 'Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, 4, 'city_id', 'City Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, 4, 'commodity_id', 'Commodity Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(15, 5, 'id', 'Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, 5, 'city_id', 'City Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, 5, 'tourism_id', 'Tourism Id', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(18, 6, 'commodity_id', 'Commodity Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(19, 6, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(20, 7, 'country_id', 'Country Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(21, 7, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(22, 8, 'hobby_id', 'Hobby Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(23, 8, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, 9, 'job_id', 'Job Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(25, 9, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, 10, 'tourism_id', 'Tourism Id', 'int', 10, 'primary', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(27, 10, 'name', 'Name', 'varchar', 20, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, 1, 'hobby', 'Hobby', '', NULL, 'detail many to many', 0, NULL, 2, 7, 8, NULL, 8, 23, 0, NULL, NULL),
(29, 3, 'tourism', 'Tourism', '', NULL, 'detail many to many', 0, NULL, 5, 16, 17, NULL, 10, 27, 0, NULL, NULL),
(30, 4, 'priority', 'Priority', 'int', 10, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(31, 3, 'commodity', 'Commodity', '', NULL, 'detail many to many', 0, NULL, 4, 13, 14, 30, 6, 19, 0, NULL, NULL),
(32, 3, 'citizen', 'Citizen', '', NULL, 'detail one to many', 0, NULL, 1, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_column_option`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_column_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_project`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `db_server` varchar(50) NOT NULL,
  `db_port` varchar(50) NOT NULL,
  `db_schema` varchar(50) NOT NULL,
  `db_user` varchar(50) NOT NULL,
  `db_password` varchar(50) NOT NULL,
  `db_table_prefix` varchar(50) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_nordrassil_project`
--

INSERT INTO `cms_nordrassil_project` (`project_id`, `template_id`, `name`, `db_server`, `db_port`, `db_schema`, `db_user`, `db_password`, `db_table_prefix`) VALUES
(1, 1, 'example', 'localhost', '3306', 'town', 'root', 'toor', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_project_option`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_project_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_table`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_table` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cms_nordrassil_table`
--

INSERT INTO `cms_nordrassil_table` (`table_id`, `project_id`, `name`, `caption`, `priority`) VALUES
(1, 1, 'twn_citizen', 'Citizen', 0),
(2, 1, 'twn_citizen_hobby', 'Citizen Hobby', 0),
(3, 1, 'twn_city', 'City', 0),
(4, 1, 'twn_city_commodity', 'City Commodity', 0),
(5, 1, 'twn_city_tourism', 'City Tourism', 0),
(6, 1, 'twn_commodity', 'Commodity', 0),
(7, 1, 'twn_country', 'Country', 0),
(8, 1, 'twn_hobby', 'Hobby', 0),
(9, 1, 'twn_job', 'Job', 0),
(10, 1, 'twn_tourism', 'Tourism', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_table_option`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_table_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cms_nordrassil_table_option`
--

INSERT INTO `cms_nordrassil_table_option` (`id`, `option_id`, `table_id`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 5),
(4, 1, 1),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_template`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `generator_path` varchar(100) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_nordrassil_template`
--

INSERT INTO `cms_nordrassil_template` (`template_id`, `name`, `generator_path`) VALUES
(1, 'No-CMS default Module', 'nordrassil/default_generator/generator/index');

-- --------------------------------------------------------

--
-- Table structure for table `cms_nordrassil_template_option`
--

CREATE TABLE IF NOT EXISTS `cms_nordrassil_template_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `option_type` varchar(50) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cms_nordrassil_template_option`
--

INSERT INTO `cms_nordrassil_template_option` (`option_id`, `template_id`, `name`, `description`, `option_type`) VALUES
(1, 1, 'dont_make_form', 'make form for this table', 'table'),
(2, 1, 'dont_create_table', 'don''t create/drop table on installation', 'table'),
(3, 1, 'make_frontpage', 'Make front page for this table', 'table'),
(4, 1, 'import_data', 'Also create insert statement (e.g: for configuration table)', 'table'),
(5, 1, 'hide', 'shown', 'column');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cms_main_group_navigation`
--
ALTER TABLE `cms_main_group_navigation`
  ADD CONSTRAINT `cms_main_group_navigation_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `cms_main_group` (`group_id`),
  ADD CONSTRAINT `cms_main_group_navigation_ibfk_2` FOREIGN KEY (`navigation_id`) REFERENCES `cms_main_navigation` (`navigation_id`);

--
-- Constraints for table `cms_main_group_privilege`
--
ALTER TABLE `cms_main_group_privilege`
  ADD CONSTRAINT `cms_main_group_privilege_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `cms_main_group` (`group_id`),
  ADD CONSTRAINT `cms_main_group_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `cms_main_privilege` (`privilege_id`);

--
-- Constraints for table `cms_main_group_user`
--
ALTER TABLE `cms_main_group_user`
  ADD CONSTRAINT `cms_main_group_user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `cms_main_group` (`group_id`),
  ADD CONSTRAINT `cms_main_group_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `cms_main_user` (`user_id`);

--
-- Constraints for table `cms_main_group_widget`
--
ALTER TABLE `cms_main_group_widget`
  ADD CONSTRAINT `cms_main_group_widget_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `cms_main_group` (`group_id`),
  ADD CONSTRAINT `cms_main_group_widget_ibfk_2` FOREIGN KEY (`widget_id`) REFERENCES `cms_main_widget` (`widget_id`);

--
-- Constraints for table `cms_main_module`
--
ALTER TABLE `cms_main_module`
  ADD CONSTRAINT `cms_main_module_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cms_main_user` (`user_id`);

--
-- Constraints for table `cms_main_module_dependency`
--
ALTER TABLE `cms_main_module_dependency`
  ADD CONSTRAINT `cms_main_module_dependency_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `cms_main_module` (`module_id`),
  ADD CONSTRAINT `cms_main_module_dependency_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `cms_main_module` (`module_id`);

--
-- Constraints for table `cms_main_navigation`
--
ALTER TABLE `cms_main_navigation`
  ADD CONSTRAINT `cms_main_navigation_ibfk_1` FOREIGN KEY (`authorization_id`) REFERENCES `cms_main_authorization` (`authorization_id`);

--
-- Constraints for table `cms_main_privilege`
--
ALTER TABLE `cms_main_privilege`
  ADD CONSTRAINT `cms_main_privilege_ibfk_1` FOREIGN KEY (`authorization_id`) REFERENCES `cms_main_authorization` (`authorization_id`);

--
-- Constraints for table `cms_main_quicklink`
--
ALTER TABLE `cms_main_quicklink`
  ADD CONSTRAINT `cms_main_quicklink_ibfk_1` FOREIGN KEY (`navigation_id`) REFERENCES `cms_main_navigation` (`navigation_id`);

--
-- Constraints for table `cms_main_widget`
--
ALTER TABLE `cms_main_widget`
  ADD CONSTRAINT `cms_main_widget_ibfk_1` FOREIGN KEY (`authorization_id`) REFERENCES `cms_main_authorization` (`authorization_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
