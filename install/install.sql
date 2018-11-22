# --- WireDatabaseBackup {"time":"2018-11-22 16:57:06","user":"","dbName":"chinaandco","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `ProcessRedirects`;
CREATE TABLE `ProcessRedirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `counter` int(10) unsigned DEFAULT '0',
  `redirect_from` varchar(255) NOT NULL DEFAULT '',
  `redirect_to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `redirect_from` (`redirect_from`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_address`;
CREATE TABLE `field_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES('41', '226');

DROP TABLE IF EXISTS `field_blog_tags`;
CREATE TABLE `field_blog_tags` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<h2>What is ProcessWire?</h2>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h3>About this site profile</h3>\n\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h3>Browse the site</h3>');

DROP TABLE IF EXISTS `field_crop_image`;
CREATE TABLE `field_crop_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_cropimage`;
CREATE TABLE `field_cropimage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_doc_page`;
CREATE TABLE `field_doc_page` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_facebook`;
CREATE TABLE `field_facebook` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_googlemap`;
CREATE TABLE `field_googlemap` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `zoom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `latlng` (`lat`,`lng`),
  KEY `zoom` (`zoom`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'bb starter site profile');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1', 'default-bb.jpg', '0', '', '2015-06-19 12:33:38', '2015-06-19 12:33:38', NULL);

DROP TABLE IF EXISTS `field_keywords`;
CREATE TABLE `field_keywords` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_page_description`;
CREATE TABLE `field_page_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_description` (`pages_id`, `data`) VALUES('1057', 'General site wide settings');
INSERT INTO `field_page_description` (`pages_id`, `data`) VALUES('1058', 'Social media links and summaries');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_phoneno`;
CREATE TABLE `field_phoneno` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_posts_limit`;
CREATE TABLE `field_posts_limit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_posts_limit` (`pages_id`, `data`) VALUES('1024', '20');

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1018', '173');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1019', '175');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '176');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '177');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1032', '192');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1041', '198');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1045', '208');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1049', '214');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1051', '216');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1056', '235');

DROP TABLE IF EXISTS `field_pubdate`;
CREATE TABLE `field_pubdate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_pubdate` (`pages_id`, `data`) VALUES('1025', '2015-01-05 00:00:00');
INSERT INTO `field_pubdate` (`pages_id`, `data`) VALUES('1027', '2015-01-05 00:00:00');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_seo`;
CREATE TABLE `field_seo` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_seo_end`;
CREATE TABLE `field_seo_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1', '<h3>About ProcessWire</h3>\n\n<p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p>\n\n<ul><li><a href=\"http://processwire.com/talk/\">Support</a></li>\n	<li><a href=\"http://processwire.com/docs/\">Documentation</a></li>\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Tutorials</a></li>\n	<li><a href=\"http://cheatsheet.processwire.com/\">API Cheatsheet</a></li>\n	<li><a href=\"http://modules.processwire.com/\">Modules/Plugins</a></li>\n</ul>');

DROP TABLE IF EXISTS `field_sitemap_ignore`;
CREATE TABLE `field_sitemap_ignore` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_subtitle`;
CREATE TABLE `field_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1001', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1000', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1005', 'Site Map');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Blog post');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Blog tags');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Blog');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Image crop');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Redirects');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Delete Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Files');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Blog post 2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Blog rss feed');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'Clone a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Clone a tree of pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Testimonials');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1045', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'Croppable Images 3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'Crop images with CroppableImage3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'Diagnostics');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1054', 'Access documentation pages.');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1057', 'General settings');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1058', 'Social media settings');

DROP TABLE IF EXISTS `field_twitter`;
CREATE TABLE `field_twitter` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('88', 'sitemap');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('80', 'search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'list-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'blog-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'blog-tag-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'blog-post-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'blog-tags-list');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'blog-rss-feed');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', '404');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'settings-general');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'settings-social');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('80', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('88', '79', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '106', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '111', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '105', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '112', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '111', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '116', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', '{\"label\":\"Website Title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '117', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '120', '2', '{\"label\":\"Website Subtitle\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '118', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '79', '4', '{\"collapsed\":\"0\",\"columnWidth\":100,\"description\":\"Please write a short paragraph explaining your website.\",\"label\":\"SEO Summary show in search engines\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '113', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '119', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '117', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '103', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '104', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '92', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '109', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '1', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypeCroppableImage3', 'crop_image', '0', 'Crop images', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":6,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"textformatters\":[\"TextformatterEntities\"],\"tags\":\"images\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"langBlankInherit\":0,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('110', 'FieldtypeText', 'phoneNo', '0', 'Phone Number', '{\"size\":0,\"maxlength\":20,\"stripTags\":1,\"pattern\":\"^\\\\s*\\\\(?(020[7,8]{1}\\\\)?[ ]?[1-9]{1}[0-9{2}[ ]?[0-9]{4})|(0[1-8]{1}[0-9]{3}\\\\)?[ ]?[1-9]{1}[0-9]{2}[ ]?[0-9]{3})\\\\s*$\",\"tags\":\"contact\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation. \",\"collapsed\":2,\"columnWidth\":50,\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeTextarea', 'address', '0', 'Address', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5,\"tags\":\"contact\",\"icon\":\"map-marker\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'twitter', '0', 'Twitter Profile', '{\"description\":\"e.g. @yourTwitterName\",\"columnWidth\":50,\"size\":0,\"maxlength\":2048,\"icon\":\"twitter\",\"tags\":\"social\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeText', 'facebook', '0', 'Facebook Profile', '{\"description\":\"URL to your facebook page\",\"columnWidth\":50,\"size\":0,\"maxlength\":2048,\"icon\":\"facebook\",\"tags\":\"social\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeDatetime', 'pubDate', '0', 'Published Date', '{\"dateOutputFormat\":\"l, j F Y\",\"size\":25,\"datepicker\":0,\"dateInputFormat\":\"Y-m-d\",\"defaultToday\":1,\"collapsed\":1,\"columnWidth\":50,\"icon\":\"clock-o\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('111', 'FieldtypeInteger', 'posts_limit', '0', 'Post limit', '{\"description\":\"No. of posts per page of list\",\"columnWidth\":50,\"inputType\":\"text\",\"required\":1,\"min\":0,\"max\":100}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypePage', 'blog_tags', '0', 'Tags', '{\"derefAsPage\":0,\"parent_id\":1024,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\",\"addable\":1,\"template_id\":46,\"size\":10,\"columnWidth\":50}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'keywords', '0', 'Keywords for site', '{\"size\":0,\"maxlength\":2048,\"stripTags\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('114', 'FieldtypeCheckbox', 'sitemap_ignore', '0', 'Hide page from XML sitemap', '{\"description\":\"Hide this page and its children from the XML sitemap\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('116', 'FieldtypePage', 'doc_page', '0', 'Select a PW page to display here.', '{\"showIf\":\"process=ProcessDocumentation\",\"inputfield\":\"InputfieldPageListSelect\",\"derefAsPage\":1,\"labelFieldName\":\"title\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('117', 'FieldtypeTextarea', 'page_description', '32', 'Page description', '{\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":4,\"rows\":5,\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"viewRoles\":[1028]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeFieldsetOpen', 'SEO', '0', 'SEO', '{\"closeFieldID\":134}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeFieldsetClose', 'SEO_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'SEO\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":133}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypeText', 'subtitle', '0', 'Podcast Subtitle', '{\"maxlength\":2048}');

DROP TABLE IF EXISTS `fieldtype_options`;
CREATE TABLE `fieldtype_options` (
  `fields_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_value` (`title`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.98\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2014-07-21 07:21:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2014-07-25 09:36:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2014-07-25 10:26:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('185', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1022}', '2015-01-05 23:03:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('186', 'InputfieldRepeater', '0', '', '2015-01-05 23:03:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('187', 'AdminThemeReno', '10', '{\"colors\":\"blue\",\"avatar_field\":null,\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"manage-files\":\"fa-file-text-o\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2015-01-05 23:07:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('188', 'FieldtypeMapMarker', '1', '', '2015-01-05 23:08:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('189', 'InputfieldMapMarker', '0', '', '2015-01-05 23:08:24');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2014-10-23 18:09:45');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'AllInOneMinify', '3', '', '2014-12-30 21:24:39');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('190', 'TextformatterMarkdownExtra', '1', '', '2015-01-07 14:35:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'FieldtypeCropImage', '1', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessCropImage', '1', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'InputfieldCropImage', '0', '', '2014-12-30 21:27:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessRedirects', '3', '', '2014-12-30 21:28:11');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'ProcessPageDelete', '10', '', '2014-12-30 21:28:41');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'ManageFiles', '1', '', '2014-12-30 21:30:04');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('178', 'AdminSaveActions', '3', '', '2014-12-30 21:30:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('179', 'TemplateNotes', '11', '', '2014-12-30 21:31:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('180', 'Process404Search', '3', '{\"searchPage\":1000}', '2014-12-30 21:36:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('181', 'FieldtypeCache', '1', '', '2014-12-30 21:38:26');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('182', 'JqueryFancybox', '1', '', '2014-12-30 21:39:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'MarkupRSS', '0', '{\"title\":\"News RSS Feed\",\"url\":\"\",\"description\":\"\",\"xsl\":\"\",\"css\":\"\",\"copyright\":\"\",\"ttl\":60,\"itemTitleField\":\"title\",\"itemDescriptionField\":\"summary\",\"itemDescriptionLength\":1024,\"itemDateField\":\"created\"}', '2014-12-30 21:40:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'ProcessForgotPassword', '1', '', '2014-12-30 21:42:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('191', 'MarkupCache', '3', '', '2015-04-16 14:20:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('192', 'ProcessPageClone', '11', '', '2015-04-16 14:20:55');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('193', 'MarkupGoogleMap', '0', '', '2015-04-16 14:22:14');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('195', 'MarkupSitemapXML', '3', '', '2015-04-16 14:24:33');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('196', 'PageTreeAddNewChildsReverse', '3', '{\"sort_reverse\":\"blog-list\"}', '2015-04-16 14:25:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('199', 'InputfieldIcon', '0', '', '2015-06-19 10:19:27');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('219', 'FileCompilerTags', '0', '{\"runOrder\":0,\"openTag\":\"{\",\"closeTag\":\"}\"}', '2017-07-25 09:42:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('204', 'Process404Logger', '3', '{\"log_ip\":\"0\",\"log_ua\":1}', '2017-06-15 11:17:09');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('205', 'TextformatterVideoEmbed', '0', '{\"maxWidth\":640,\"maxHeight\":480,\"responsive\":1,\"clearCache\":\"\"}', '2017-06-15 11:17:54');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('206', 'ImageAnimatedGif', '3', '', '2017-06-15 11:18:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('207', 'FieldtypeOptions', '1', '', '2017-06-15 11:18:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('208', 'ProcessLogger', '1', '', '2017-06-15 11:19:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('211', 'CroppableImage3', '0', '', '2017-07-25 09:35:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('212', 'FieldtypeCroppableImage3', '1', '', '2017-07-25 09:35:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('213', 'InputfieldCroppableImage3', '0', '', '2017-07-25 09:35:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('214', 'ProcessCroppableImage3', '0', '', '2017-07-25 09:35:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('215', 'AutoSmush', '3', '{\"optAutoEngine\":\"localtools\",\"optAutoAction\":[\"optimize_originals\",\"optimize_variations\"],\"optAutoQuality\":90,\"optManualEngine\":\"localtools\",\"optManualAction\":[\"optimize_originals\",\"optimize_variations\"],\"optManualQuality\":90,\"optBulkEngine\":\"resmushit\",\"optBulkAction\":[],\"optBulkQuality\":90,\"optimize_all\":\"Start bulk image optimize\",\"cancel_all\":\"Cancel\",\"optChain\":\"\"}', '2017-07-25 09:36:50');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('216', 'ProcessDiagnostics', '1', '', '2017-07-25 09:38:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('220', 'DiagnoseDatabase', '1', '', '2017-07-25 09:43:46');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('221', 'DiagnoseFiles', '1', '', '2017-07-25 09:43:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('222', 'DiagnoseImagehandling', '1', '', '2017-07-25 09:44:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('223', 'DiagnoseModules', '33', '{\"_updated\":1500990275,\"ProcessExportProfile\":[\"3.0.0\"],\"InputfieldCroppableImage3\":[\"1.1.7\"],\"PageTreeAddNewChildsReverse\":[\"1.0.2\"],\"ProcessCroppableImage3\":[\"1.1.7\"],\"FieldtypeCroppableImage3\":[\"1.1.7\"],\"AutoSmush\":[\"1.0.6\"],\"CroppableImage3\":[\"1.1.7\"],\"ProcessRedirects\":[\"1.0.0\"],\"ProcessBatcher\":[\"1.0.4\"],\"Process404Logger\":[\"1.0.6\"],\"DiagnosePhp\":[\"0.0.7\"],\"DiagnoseFiles\":[\"0.0.1\"],\"DiagnoseWebserver\":[\"0.0.1\"],\"DiagnoseModules\":[\"1.0.1\"],\"DiagnoseDatabase\":[\"0.0.2\"],\"DiagnoseImagehandling\":[\"0.0.1\"],\"ProcessDiagnostics\":[\"0.2.2\"],\"Process404Search\":[\"0.1.9\"],\"TextformatterVideoEmbed\":[\"1.1.1\"],\"AllInOneMinify\":[\"3.2.3\"],\"TemplateNotes\":[\"1.0.3\"],\"ImageAnimatedGif\":[\"2.0.1\"],\"AdminSaveActions\":[\"1.0.1\"],\"ProcessPageDelete\":[\"1.2.4\"],\"MarkupSitemapXML\":[\"1.1.0\"],\"ManageFiles\":[\"1.0.8\"]}', '2017-07-25 09:44:08');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('224', 'DiagnosePhp', '1', '', '2017-07-25 09:44:15');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('225', 'DiagnoseWebserver', '1', '', '2017-07-25 09:44:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('226', 'AdminThemeUikit', '10', '', '2018-11-16 16:47:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('227', 'ImageSizerEngineAnimatedGif', '0', '', '2018-11-21 05:59:03');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('229', 'LoginWithEmail', '3', '', '2018-11-21 06:24:56');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('230', 'TextformatterSrcset', '1', '{\"resolutions\":\"350,700\",\"sizes\":\"auto\",\"retina\":\"\",\"lqp\":1,\"small_source\":1,\"wh_attr\":\"\",\"data_attr\":\"\",\"class\":\"\"}', '2018-11-21 07:06:01');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('231', 'ProcessDocumentation', '1', '{\"body_field\":\"body\",\"custom_css\":\"\",\"custom_override\":\"\",\"tpl_dir\":\"\"}', '2018-11-21 07:51:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('232', 'TextformatterMarkupCSS', '1', '', '2018-11-21 07:51:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('233', 'TextformatterJqueryUITabs', '1', '', '2018-11-21 07:51:30');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('235', 'ProcessListExtended', '1', '', '2018-11-22 11:32:48');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(255) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1059 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '1', 'en', '9', '2015-06-19 12:33:38', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'admin', '1035', '2018-11-22 11:44:55', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2014-12-30 21:30:04', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2016-08-09 07:19:52', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '2010-02-07 05:29:39', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2017-06-15 03:24:37', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2016-08-09 07:19:56', '40', '0000-00-00 00:00:00', '2', '0000-00-00 00:00:00', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '2010-02-01 11:04:54', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2010-02-01 12:44:07', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2010-02-02 10:02:24', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '2010-02-09 12:16:59', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '2010-02-17 09:59:39', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '50', 'http404', '1035', '2015-04-16 14:17:21', '41', '2010-06-03 06:53:03', '3', '2010-06-03 06:53:03', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '2011-03-19 19:14:20', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '2011-03-19 19:15:29', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '2011-03-19 19:15:45', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2011-03-19 19:16:00', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:03', '2', '2011-03-19 19:17:03', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:23', '2', '2011-03-19 19:17:23', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:41', '2', '2011-03-19 19:17:41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2015-04-16 14:20:55', '41', '2011-03-19 19:17:57', '2', '2011-03-19 19:17:57', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '2011-03-19 19:18:41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '2011-03-19 19:18:55', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2018-11-16 16:47:43', '40', '2011-03-19 19:41:26', '2', '2011-03-19 19:41:26', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2014-09-02 05:45:46', '41', '2011-03-20 17:31:59', '2', '2011-03-20 17:31:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2015-04-16 14:20:55', '41', '2011-03-26 22:04:50', '41', '2011-03-26 22:04:50', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2015-04-16 14:20:55', '41', '2011-03-26 22:25:31', '41', '2011-03-26 22:25:31', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2015-04-16 14:20:55', '41', '2011-03-30 00:06:47', '41', '2011-03-30 00:06:47', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2015-04-16 14:20:55', '41', '2011-04-26 00:02:22', '41', '2011-04-26 00:02:22', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2015-04-16 14:20:55', '41', '2011-08-15 17:45:48', '41', '2011-08-15 17:45:48', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '2010-08-04 05:23:59', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '2010-09-28 05:39:30', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '2010-10-01 05:03:56', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '2010-10-13 03:56:48', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '2011-04-25 23:57:18', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1000', '1', '26', 'search', '1025', '2014-09-02 11:06:44', '41', '2010-09-06 05:05:28', '2', '2010-09-06 05:05:28', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1001', '1', '29', 'about', '1', '2014-09-04 11:09:58', '41', '2010-10-25 22:39:33', '2', '2010-10-25 22:39:33', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1005', '1', '34', 'site-map', '1025', '2015-04-16 14:23:37', '41', '2010-11-30 21:16:49', '2', '2010-11-30 21:16:49', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2015-04-16 14:20:55', '41', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '40', '2014-07-20 09:00:38', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '2', '2', 'repeaters', '1036', '2015-01-05 23:03:11', '41', '2015-01-05 23:03:11', '41', '2015-01-05 23:03:11', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1', '45', 'blog', '1', '2015-01-05 23:42:29', '41', '2015-01-05 23:18:22', '41', '2015-01-05 23:18:22', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '1', '48', 'blog-tags', '1025', '2015-01-05 23:44:03', '41', '2015-01-05 23:42:51', '41', '2015-01-05 23:42:51', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '1023', '47', 'blog-post', '1', '2015-01-05 23:45:20', '41', '2015-01-05 23:44:19', '41', '2015-01-05 23:44:19', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '3', '2', 'recent-pages', '1', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2015-04-16 14:20:55', '41', '2014-10-23 18:09:45', '40', '2014-10-23 18:09:45', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '3', '2', 'image-crop', '1', '2014-12-30 21:27:44', '41', '2014-12-30 21:27:44', '41', '2014-12-30 21:27:44', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '22', '2', 'redirects', '1', '2014-12-30 21:28:11', '41', '2014-12-30 21:28:11', '41', '2014-12-30 21:28:11', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '3', '2', 'delete', '1024', '2014-12-30 21:28:41', '41', '2014-12-30 21:28:41', '41', '2014-12-30 21:28:41', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '2', '2', 'manage-files', '1', '2014-12-30 21:30:04', '41', '2014-12-30 21:30:04', '41', '2014-12-30 21:30:04', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1023', '47', 'blog-post-2', '1', '2015-01-05 23:46:51', '41', '2015-01-05 23:46:48', '41', '2015-01-05 23:46:48', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '30', '4', 'editor', '1', '2015-01-07 14:56:39', '41', '2015-01-07 14:56:10', '41', '2015-01-07 14:56:10', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1', '49', 'blog-rss-feed', '1025', '2015-01-07 15:21:00', '41', '2015-01-07 15:20:51', '41', '2015-01-07 15:20:51', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1030', '31', '5', 'page-clone', '1', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1031', '31', '5', 'page-clone-tree', '1', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '3', '2', 'clone', '1025', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '41', '2015-04-16 14:20:55', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1', '29', 'contact-us', '1', '2015-04-16 14:35:03', '41', '2015-04-16 14:35:03', '41', '2015-04-16 14:35:03', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1', '29', 'testimonials', '1', '2015-04-16 14:35:03', '41', '2015-04-16 14:35:03', '41', '2015-04-16 14:35:03', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '22', '2', 'logs', '1', '2015-06-19 10:19:27', '40', '2015-06-19 10:19:27', '40', '2015-06-19 10:19:27', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1045', '22', '2', 'logs-1', '1', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1046', '31', '5', 'logs-view', '1', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '14');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '31', '5', 'logs-edit', '1', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '41', '2017-06-15 11:19:08', '15');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1049', '3', '2', 'croppable-image-3', '1025', '2017-07-25 09:35:32', '41', '2017-07-25 09:35:32', '41', '2017-07-25 09:35:32', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1050', '31', '5', 'croppable-image-3', '1', '2017-07-25 09:35:32', '41', '2017-07-25 09:35:32', '41', '2017-07-25 09:35:32', '16');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '22', '2', 'processdiagnostics', '1', '2017-07-25 09:38:20', '41', '2017-07-25 09:38:20', '41', '2017-07-25 09:38:20', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1053', '30', '4', 'login-register', '1', '2018-11-21 06:23:55', '41', '2018-11-21 06:23:55', '41', '2018-11-21 06:23:55', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1054', '31', '5', 'documentation', '1', '2018-11-21 07:51:30', '41', '2018-11-21 07:51:30', '41', '2018-11-21 07:51:30', '17');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1056', '2', '2', 'settings', '1', '2018-11-22 11:44:55', '41', '2018-11-22 11:33:26', '41', '2018-11-22 11:33:35', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1057', '1056', '51', 'general-settings', '1', '2018-11-22 11:46:58', '41', '2018-11-22 11:45:26', '41', '2018-11-22 11:45:34', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1058', '1056', '52', 'social-media-settings', '1', '2018-11-22 11:49:55', '41', '2018-11-22 11:47:27', '41', '2018-11-22 11:47:45', '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2014-07-20 09:00:38');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '1', '2015-01-05 23:44:19');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '1', '2015-01-05 23:42:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '1', '2015-01-05 23:18:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2014-10-23 18:09:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '1', '2015-01-05 23:46:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '2', '2015-01-07 14:56:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2015-01-07 15:20:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '1', '2015-04-16 14:17:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '2', '2015-04-16 14:20:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '2', '2015-04-16 14:20:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '2', '2018-11-22 11:49:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '1', '2015-04-16 14:35:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '1', '2015-04-16 14:35:03');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '2', '2017-06-15 11:19:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '2', '2017-06-15 11:19:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1050', '2', '2017-07-25 09:35:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '2', '2018-11-21 06:23:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '2', '2018-11-21 07:51:30');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1005', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1023', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1056', '2');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `process_forgot_password`;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1542403102,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Home\",\"modified\":1542905327,\"ns\":\"\\\\\",\"roles\":[37,1028,1053]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"label\":\"Basic Page\",\"modified\":1542403101,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"label\":\"Search\",\"modified\":1542403100,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"label\":\"Site Map\",\"modified\":1542403101,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'blog-post-page', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403099,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'list-page', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403101,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'blog-list', '99', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403099,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'blog-tag-page', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403101,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'blog-tags-list', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403101,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'blog-rss-feed', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403099,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', '404', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542403099,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'settings-general', '105', '0', '0', '{\"useRoles\":1,\"slashUrls\":1,\"pageLabelField\":\"fa-wrench title\",\"compile\":3,\"modified\":1542905083,\"roles\":[1028]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'settings-social', '106', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1542905083}');

DROP TABLE IF EXISTS `textformatter_video_embed`;
CREATE TABLE `textformatter_video_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` varchar(1024) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":38,"numCreateTables":45,"numInserts":506,"numSeconds":0}