-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 17 2016 г., 16:42
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `php_loftschool_010816_hw_9_modx`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE IF NOT EXISTS `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE IF NOT EXISTS `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE IF NOT EXISTS `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE IF NOT EXISTS `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE IF NOT EXISTS `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE IF NOT EXISTS `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE IF NOT EXISTS `modx_access_namespace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE IF NOT EXISTS `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE IF NOT EXISTS `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_role":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"menu_reports":true,"menu_security":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_static_resource":true,"new_symlink":true,"new_template":true,"new_tv":true,"new_user":true,"new_weblink":true,"packages":true,"policy_delete":true,"policy_edit":true,"policy_new":true,"policy_save":true,"policy_template_delete":true,"policy_template_edit":true,"policy_template_new":true,"policy_template_save":true,"policy_template_view":true,"policy_view":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_duplicate":true,"resourcegroup_delete":true,"resourcegroup_edit":true,"resourcegroup_new":true,"resourcegroup_resource_edit":true,"resourcegroup_resource_list":true,"resourcegroup_save":true,"resourcegroup_view":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"sources":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unlock_element_properties":true,"unpublish_document":true,"usergroup_delete":true,"usergroup_edit":true,"usergroup_new":true,"usergroup_save":true,"usergroup_user_edit":true,"usergroup_user_list":true,"usergroup_view":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_unpublished":true,"view_user":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_tools":true,"menu_user":true,"resource_duplicate":true,"resource_tree":true,"save_document":true,"source_view":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{"create":true,"copy":true,"load":true,"list":true,"save":true,"remove":true,"view":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{"about":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"dashboards":true,"database":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_create":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_unpack":true,"file_view":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menu_reports":true,"menu_site":true,"menu_support":true,"menu_system":true,"menu_tools":true,"menu_user":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_static_resource":true,"new_symlink":true,"new_weblink":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"resource_duplicate":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"source_delete":true,"source_edit":true,"source_save":true,"source_view":true,"sources":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true,"copy":true,"view_unpublished":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{"load":false,"list":false,"view":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE IF NOT EXISTS `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE IF NOT EXISTS `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE IF NOT EXISTS `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE IF NOT EXISTS `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE IF NOT EXISTS `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE IF NOT EXISTS `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(4, 0, 'tagLister', 0),
(5, 0, 'Archivist', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE IF NOT EXISTS `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 4, 0),
(4, 4, 0),
(5, 5, 0),
(0, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE IF NOT EXISTS `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE IF NOT EXISTS `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE IF NOT EXISTS `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('web', 'Website', 'The default front-end context for your web site.', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE IF NOT EXISTS `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE IF NOT EXISTS `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE IF NOT EXISTS `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE IF NOT EXISTS `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE IF NOT EXISTS `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE IF NOT EXISTS `modx_extension_packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE IF NOT EXISTS `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE IF NOT EXISTS `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE IF NOT EXISTS `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_occurred` (`user`,`occurred`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1331 ;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2016-09-14 16:02:34', 'login', 'modContext', 'mgr'),
(2, 1, '2016-09-14 16:05:31', 'file_rename', '', 'G:/OpenServer/domains/localhost/ht.access'),
(3, 1, '2016-09-14 16:08:11', 'setting_update', 'modSystemSetting', 'friendly_alias_realtime'),
(4, 1, '2016-09-14 16:08:18', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(5, 1, '2016-09-14 16:08:21', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(6, 1, '2016-09-14 16:08:23', 'setting_update', 'modSystemSetting', 'global_duplicate_uri_check'),
(7, 1, '2016-09-14 16:08:27', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(8, 1, '2016-09-14 16:08:31', 'setting_update', 'modSystemSetting', 'use_frozen_parent_uris'),
(9, 1, '2016-09-14 16:19:42', 'setting_update', 'modSystemSetting', 'friendly_alias_translit'),
(10, 1, '2016-09-14 18:04:00', 'template_update', 'modTemplate', '1'),
(11, 1, '2016-09-14 18:04:00', 'propertyset_update_from_element', 'modTemplate', '1'),
(12, 1, '2016-09-14 18:04:44', 'template_update', 'modTemplate', '1'),
(13, 1, '2016-09-14 18:04:45', 'propertyset_update_from_element', 'modTemplate', '1'),
(14, 1, '2016-09-14 18:05:26', 'template_update', 'modTemplate', '1'),
(15, 1, '2016-09-14 18:05:26', 'propertyset_update_from_element', 'modTemplate', '1'),
(16, 1, '2016-09-14 19:31:01', 'chunk_create', 'modChunk', '1'),
(17, 1, '2016-09-14 19:31:12', 'chunk_create', 'modChunk', '2'),
(18, 1, '2016-09-14 19:34:22', 'resource_update', 'modResource', '1'),
(19, 1, '2016-09-14 19:34:48', 'chunk_create', 'modChunk', '3'),
(20, 1, '2016-09-14 19:35:02', 'chunk_update', 'modChunk', '1'),
(21, 1, '2016-09-14 19:35:09', 'chunk_update', 'modChunk', '2'),
(22, 1, '2016-09-14 19:35:55', 'template_create', 'modTemplate', '2'),
(23, 1, '2016-09-14 19:46:31', 'template_update', 'modTemplate', '2'),
(24, 1, '2016-09-14 19:46:31', 'propertyset_update_from_element', 'modTemplate', '2'),
(25, 1, '2016-09-14 19:47:48', 'template_create', 'modTemplate', '3'),
(26, 1, '2016-09-14 19:48:06', 'resource_create', 'modDocument', '2'),
(27, 1, '2016-09-14 19:49:14', 'resource_create', 'modDocument', '3'),
(28, 1, '2016-09-14 19:49:54', 'resource_create', 'modDocument', '4'),
(29, 1, '2016-09-14 19:51:35', 'resource_create', 'modDocument', '5'),
(30, 1, '2016-09-14 19:51:46', 'resource_sort', '', 'unknown'),
(31, 1, '2016-09-14 19:52:46', 'resource_create', 'modDocument', '6'),
(32, 1, '2016-09-14 19:53:19', 'resource_create', 'modDocument', '7'),
(33, 1, '2016-09-14 19:54:03', 'resource_create', 'modDocument', '8'),
(34, 1, '2016-09-14 20:30:55', 'resource_create', 'modDocument', '9'),
(35, 1, '2016-09-14 20:31:46', 'resource_create', 'modDocument', '10'),
(36, 1, '2016-09-14 20:32:45', 'resource_create', 'modDocument', '11'),
(37, 1, '2016-09-14 20:33:26', 'resource_create', 'modDocument', '12'),
(38, 1, '2016-09-14 20:34:50', 'resource_create', 'modDocument', '13'),
(39, 1, '2016-09-14 20:40:37', 'resource_create', 'modDocument', '14'),
(40, 1, '2016-09-14 20:41:09', 'resource_create', 'modDocument', '15'),
(41, 1, '2016-09-14 20:41:56', 'resource_create', 'modDocument', '16'),
(42, 1, '2016-09-14 20:42:35', 'resource_create', 'modDocument', '17'),
(43, 1, '2016-09-14 20:43:27', 'resource_create', 'modDocument', '18'),
(44, 1, '2016-09-14 20:44:35', 'tv_create', 'modTemplateVar', '1'),
(45, 1, '2016-09-14 20:46:08', 'resource_update', 'modResource', '5'),
(46, 1, '2016-09-14 20:48:15', 'resource_update', 'modResource', '5'),
(47, 1, '2016-09-14 20:51:00', 'resource_update', 'modResource', '1'),
(48, 1, '2016-09-14 20:53:32', 'template_update', 'modTemplate', '1'),
(49, 1, '2016-09-14 20:53:32', 'propertyset_update_from_element', 'modTemplate', '1'),
(50, 1, '2016-09-14 20:59:04', 'chunk_update', 'modChunk', '2'),
(51, 1, '2016-09-14 20:59:04', 'propertyset_update_from_element', 'modChunk', '2'),
(52, 1, '2016-09-14 20:59:32', 'chunk_update', 'modChunk', '2'),
(53, 1, '2016-09-14 20:59:33', 'propertyset_update_from_element', 'modChunk', '2'),
(54, 1, '2016-09-14 20:59:49', 'chunk_update', 'modChunk', '2'),
(55, 1, '2016-09-14 20:59:50', 'propertyset_update_from_element', 'modChunk', '2'),
(56, 1, '2016-09-14 21:00:21', 'chunk_update', 'modChunk', '2'),
(57, 1, '2016-09-14 21:00:21', 'propertyset_update_from_element', 'modChunk', '2'),
(58, 1, '2016-09-14 21:02:50', 'template_update', 'modTemplate', '3'),
(59, 1, '2016-09-14 21:02:50', 'propertyset_update_from_element', 'modTemplate', '3'),
(60, 1, '2016-09-14 21:03:23', 'template_update', 'modTemplate', '3'),
(61, 1, '2016-09-14 21:03:23', 'propertyset_update_from_element', 'modTemplate', '3'),
(62, 1, '2016-09-14 21:03:47', 'template_update', 'modTemplate', '3'),
(63, 1, '2016-09-14 21:03:47', 'propertyset_update_from_element', 'modTemplate', '3'),
(64, 1, '2016-09-14 21:06:59', 'template_update', 'modTemplate', '3'),
(65, 1, '2016-09-14 21:06:59', 'propertyset_update_from_element', 'modTemplate', '3'),
(66, 1, '2016-09-14 21:07:12', 'template_update', 'modTemplate', '3'),
(67, 1, '2016-09-14 21:07:12', 'propertyset_update_from_element', 'modTemplate', '3'),
(68, 1, '2016-09-14 21:07:47', 'template_update', 'modTemplate', '3'),
(69, 1, '2016-09-14 21:07:47', 'propertyset_update_from_element', 'modTemplate', '3'),
(70, 1, '2016-09-14 21:08:22', 'template_update', 'modTemplate', '3'),
(71, 1, '2016-09-14 21:08:22', 'propertyset_update_from_element', 'modTemplate', '3'),
(72, 1, '2016-09-14 21:09:28', 'template_update', 'modTemplate', '3'),
(73, 1, '2016-09-14 21:09:28', 'propertyset_update_from_element', 'modTemplate', '3'),
(74, 1, '2016-09-14 21:10:08', 'template_update', 'modTemplate', '3'),
(75, 1, '2016-09-14 21:10:08', 'propertyset_update_from_element', 'modTemplate', '3'),
(76, 1, '2016-09-14 21:11:04', 'template_update', 'modTemplate', '3'),
(77, 1, '2016-09-14 21:11:04', 'propertyset_update_from_element', 'modTemplate', '3'),
(78, 1, '2016-09-14 21:13:59', 'template_update', 'modTemplate', '3'),
(79, 1, '2016-09-14 21:13:59', 'propertyset_update_from_element', 'modTemplate', '3'),
(80, 1, '2016-09-14 21:16:40', 'snippet_create', 'modSnippet', '11'),
(81, 1, '2016-09-14 21:17:04', 'publish_resource', 'modDocument', '2'),
(82, 1, '2016-09-14 21:17:42', 'resource_update', 'modResource', '3'),
(83, 1, '2016-09-14 21:17:53', 'resource_update', 'modResource', '5'),
(84, 1, '2016-09-14 21:18:01', 'resource_update', 'modResource', '8'),
(85, 1, '2016-09-14 21:18:08', 'resource_update', 'modResource', '8'),
(86, 1, '2016-09-14 21:19:46', 'template_update', 'modTemplate', '3'),
(87, 1, '2016-09-14 21:19:46', 'propertyset_update_from_element', 'modTemplate', '3'),
(88, 1, '2016-09-14 21:19:52', 'template_update', 'modTemplate', '3'),
(89, 1, '2016-09-14 21:19:53', 'propertyset_update_from_element', 'modTemplate', '3'),
(90, 1, '2016-09-14 21:20:00', 'template_update', 'modTemplate', '3'),
(91, 1, '2016-09-14 21:20:00', 'propertyset_update_from_element', 'modTemplate', '3'),
(92, 1, '2016-09-14 21:20:55', 'template_update', 'modTemplate', '3'),
(93, 1, '2016-09-14 21:20:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(94, 1, '2016-09-14 21:22:40', 'unpublish_resource', 'modResource', '2'),
(95, 1, '2016-09-14 21:22:53', 'resource_update', 'modResource', '3'),
(96, 1, '2016-09-14 21:23:05', 'resource_update', 'modResource', '3'),
(97, 1, '2016-09-14 21:23:17', 'resource_update', 'modResource', '5'),
(98, 1, '2016-09-14 21:23:29', 'resource_update', 'modResource', '8'),
(99, 1, '2016-09-14 21:23:43', 'resource_update', 'modResource', '10'),
(100, 1, '2016-09-14 21:23:50', 'resource_update', 'modResource', '10'),
(101, 1, '2016-09-14 21:24:00', 'resource_update', 'modResource', '11'),
(102, 1, '2016-09-14 21:24:11', 'resource_update', 'modResource', '12'),
(103, 1, '2016-09-14 21:25:44', 'snippet_update', 'modSnippet', '11'),
(104, 1, '2016-09-14 21:25:45', 'propertyset_update_from_element', 'modSnippet', '11'),
(105, 1, '2016-09-14 21:26:08', 'snippet_update', 'modSnippet', '11'),
(106, 1, '2016-09-14 21:26:09', 'propertyset_update_from_element', 'modSnippet', '11'),
(107, 1, '2016-09-14 21:26:41', 'template_update', 'modTemplate', '3'),
(108, 1, '2016-09-14 21:26:41', 'propertyset_update_from_element', 'modTemplate', '3'),
(109, 1, '2016-09-14 21:26:53', 'template_update', 'modTemplate', '3'),
(110, 1, '2016-09-14 21:26:53', 'propertyset_update_from_element', 'modTemplate', '3'),
(111, 1, '2016-09-14 21:27:15', 'resource_update', 'modResource', '12'),
(112, 1, '2016-09-14 21:27:32', 'resource_update', 'modResource', '12'),
(113, 1, '2016-09-14 21:27:55', 'resource_update', 'modResource', '12'),
(114, 1, '2016-09-14 21:28:00', 'resource_update', 'modResource', '12'),
(115, 1, '2016-09-14 21:28:11', 'resource_update', 'modResource', '11'),
(116, 1, '2016-09-14 21:28:24', 'resource_update', 'modResource', '12'),
(117, 1, '2016-09-14 21:28:26', 'resource_update', 'modResource', '12'),
(118, 1, '2016-09-14 21:28:38', 'resource_update', 'modResource', '12'),
(119, 1, '2016-09-14 21:28:44', 'resource_update', 'modResource', '12'),
(120, 1, '2016-09-14 21:29:34', 'snippet_update', 'modSnippet', '11'),
(121, 1, '2016-09-14 21:29:35', 'propertyset_update_from_element', 'modSnippet', '11'),
(122, 1, '2016-09-14 21:31:44', 'template_update', 'modTemplate', '3'),
(123, 1, '2016-09-14 21:31:44', 'propertyset_update_from_element', 'modTemplate', '3'),
(124, 1, '2016-09-14 21:32:50', 'template_update', 'modTemplate', '3'),
(125, 1, '2016-09-14 21:32:50', 'propertyset_update_from_element', 'modTemplate', '3'),
(126, 1, '2016-09-14 21:33:12', 'template_update', 'modTemplate', '3'),
(127, 1, '2016-09-14 21:33:13', 'propertyset_update_from_element', 'modTemplate', '3'),
(128, 1, '2016-09-14 21:33:26', 'template_update', 'modTemplate', '3'),
(129, 1, '2016-09-14 21:33:27', 'propertyset_update_from_element', 'modTemplate', '3'),
(130, 1, '2016-09-14 21:33:30', 'template_update', 'modTemplate', '3'),
(131, 1, '2016-09-14 21:33:31', 'propertyset_update_from_element', 'modTemplate', '3'),
(132, 1, '2016-09-14 22:13:05', 'template_update', 'modTemplate', '3'),
(133, 1, '2016-09-14 22:13:05', 'propertyset_update_from_element', 'modTemplate', '3'),
(134, 1, '2016-09-14 22:13:33', 'snippet_delete', 'modSnippet', '11'),
(135, 1, '2016-09-14 22:14:20', 'template_update', 'modTemplate', '3'),
(136, 1, '2016-09-14 22:14:20', 'propertyset_update_from_element', 'modTemplate', '3'),
(137, 1, '2016-09-14 22:16:01', 'template_update', 'modTemplate', '3'),
(138, 1, '2016-09-14 22:16:01', 'propertyset_update_from_element', 'modTemplate', '3'),
(139, 1, '2016-09-14 22:16:55', 'template_update', 'modTemplate', '3'),
(140, 1, '2016-09-14 22:16:55', 'propertyset_update_from_element', 'modTemplate', '3'),
(141, 1, '2016-09-14 22:17:37', 'template_update', 'modTemplate', '3'),
(142, 1, '2016-09-14 22:17:37', 'propertyset_update_from_element', 'modTemplate', '3'),
(143, 1, '2016-09-14 22:17:41', 'template_update', 'modTemplate', '3'),
(144, 1, '2016-09-14 22:17:41', 'propertyset_update_from_element', 'modTemplate', '3'),
(145, 1, '2016-09-14 22:18:51', 'template_update', 'modTemplate', '3'),
(146, 1, '2016-09-14 22:18:51', 'propertyset_update_from_element', 'modTemplate', '3'),
(147, 1, '2016-09-14 22:19:02', 'template_update', 'modTemplate', '3'),
(148, 1, '2016-09-14 22:19:02', 'propertyset_update_from_element', 'modTemplate', '3'),
(149, 1, '2016-09-14 22:23:01', 'template_update', 'modTemplate', '3'),
(150, 1, '2016-09-14 22:23:02', 'propertyset_update_from_element', 'modTemplate', '3'),
(151, 1, '2016-09-14 22:27:27', 'template_update', 'modTemplate', '3'),
(152, 1, '2016-09-14 22:27:27', 'propertyset_update_from_element', 'modTemplate', '3'),
(153, 1, '2016-09-14 22:28:41', 'template_update', 'modTemplate', '3'),
(154, 1, '2016-09-14 22:28:42', 'propertyset_update_from_element', 'modTemplate', '3'),
(155, 1, '2016-09-14 22:30:10', 'template_update', 'modTemplate', '3'),
(156, 1, '2016-09-14 22:30:11', 'propertyset_update_from_element', 'modTemplate', '3'),
(157, 1, '2016-09-14 22:35:43', 'template_update', 'modTemplate', '3'),
(158, 1, '2016-09-14 22:35:43', 'propertyset_update_from_element', 'modTemplate', '3'),
(159, 1, '2016-09-14 22:36:39', 'template_update', 'modTemplate', '3'),
(160, 1, '2016-09-14 22:36:39', 'propertyset_update_from_element', 'modTemplate', '3'),
(161, 1, '2016-09-14 22:37:01', 'template_update', 'modTemplate', '3'),
(162, 1, '2016-09-14 22:37:01', 'propertyset_update_from_element', 'modTemplate', '3'),
(163, 1, '2016-09-14 22:44:26', 'template_update', 'modTemplate', '3'),
(164, 1, '2016-09-14 22:44:27', 'propertyset_update_from_element', 'modTemplate', '3'),
(165, 1, '2016-09-14 22:47:28', 'template_update', 'modTemplate', '3'),
(166, 1, '2016-09-14 22:47:29', 'propertyset_update_from_element', 'modTemplate', '3'),
(167, 1, '2016-09-14 22:47:43', 'template_update', 'modTemplate', '3'),
(168, 1, '2016-09-14 22:47:43', 'propertyset_update_from_element', 'modTemplate', '3'),
(169, 1, '2016-09-14 22:49:50', 'template_update', 'modTemplate', '3'),
(170, 1, '2016-09-14 22:49:50', 'propertyset_update_from_element', 'modTemplate', '3'),
(171, 1, '2016-09-14 22:50:05', 'template_update', 'modTemplate', '3'),
(172, 1, '2016-09-14 22:50:05', 'propertyset_update_from_element', 'modTemplate', '3'),
(173, 1, '2016-09-14 22:50:34', 'template_update', 'modTemplate', '3'),
(174, 1, '2016-09-14 22:50:35', 'propertyset_update_from_element', 'modTemplate', '3'),
(175, 1, '2016-09-14 22:51:12', 'template_update', 'modTemplate', '3'),
(176, 1, '2016-09-14 22:51:12', 'propertyset_update_from_element', 'modTemplate', '3'),
(177, 1, '2016-09-14 22:51:39', 'template_update', 'modTemplate', '3'),
(178, 1, '2016-09-14 22:51:39', 'propertyset_update_from_element', 'modTemplate', '3'),
(179, 1, '2016-09-14 22:52:12', 'template_update', 'modTemplate', '3'),
(180, 1, '2016-09-14 22:52:13', 'propertyset_update_from_element', 'modTemplate', '3'),
(181, 1, '2016-09-14 22:54:47', 'template_update', 'modTemplate', '3'),
(182, 1, '2016-09-14 22:54:47', 'propertyset_update_from_element', 'modTemplate', '3'),
(183, 1, '2016-09-14 22:57:43', 'template_update', 'modTemplate', '3'),
(184, 1, '2016-09-14 22:57:43', 'propertyset_update_from_element', 'modTemplate', '3'),
(185, 1, '2016-09-14 22:57:48', 'template_update', 'modTemplate', '3'),
(186, 1, '2016-09-14 22:57:48', 'propertyset_update_from_element', 'modTemplate', '3'),
(187, 1, '2016-09-14 22:58:03', 'template_update', 'modTemplate', '3'),
(188, 1, '2016-09-14 22:58:03', 'propertyset_update_from_element', 'modTemplate', '3'),
(189, 1, '2016-09-14 22:59:14', 'template_update', 'modTemplate', '3'),
(190, 1, '2016-09-14 22:59:14', 'propertyset_update_from_element', 'modTemplate', '3'),
(191, 1, '2016-09-14 23:00:06', 'resource_update', 'modResource', '8'),
(192, 1, '2016-09-14 23:00:12', 'resource_update', 'modResource', '8'),
(193, 1, '2016-09-14 23:01:18', 'template_update', 'modTemplate', '3'),
(194, 1, '2016-09-14 23:01:19', 'propertyset_update_from_element', 'modTemplate', '3'),
(195, 1, '2016-09-14 23:02:11', 'template_update', 'modTemplate', '3'),
(196, 1, '2016-09-14 23:02:11', 'propertyset_update_from_element', 'modTemplate', '3'),
(197, 1, '2016-09-14 23:02:55', 'template_update', 'modTemplate', '3'),
(198, 1, '2016-09-14 23:02:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(199, 1, '2016-09-14 23:03:38', 'template_update', 'modTemplate', '3'),
(200, 1, '2016-09-14 23:03:38', 'propertyset_update_from_element', 'modTemplate', '3'),
(201, 1, '2016-09-14 23:04:02', 'template_update', 'modTemplate', '3'),
(202, 1, '2016-09-14 23:04:02', 'propertyset_update_from_element', 'modTemplate', '3'),
(203, 1, '2016-09-14 23:04:33', 'template_update', 'modTemplate', '3'),
(204, 1, '2016-09-14 23:04:33', 'propertyset_update_from_element', 'modTemplate', '3'),
(205, 1, '2016-09-14 23:06:22', 'template_update', 'modTemplate', '3'),
(206, 1, '2016-09-14 23:06:22', 'propertyset_update_from_element', 'modTemplate', '3'),
(207, 1, '2016-09-14 23:07:02', 'template_update', 'modTemplate', '3'),
(208, 1, '2016-09-14 23:07:03', 'propertyset_update_from_element', 'modTemplate', '3'),
(209, 1, '2016-09-14 23:10:00', 'template_update', 'modTemplate', '3'),
(210, 1, '2016-09-14 23:10:00', 'propertyset_update_from_element', 'modTemplate', '3'),
(211, 1, '2016-09-14 23:25:25', 'template_update', 'modTemplate', '3'),
(212, 1, '2016-09-14 23:25:25', 'propertyset_update_from_element', 'modTemplate', '3'),
(213, 1, '2016-09-14 23:33:29', 'chunk_update', 'modChunk', '1'),
(214, 1, '2016-09-14 23:33:29', 'propertyset_update_from_element', 'modChunk', '1'),
(215, 1, '2016-09-14 23:34:48', 'chunk_update', 'modChunk', '1'),
(216, 1, '2016-09-14 23:34:48', 'propertyset_update_from_element', 'modChunk', '1'),
(217, 1, '2016-09-14 23:36:11', 'snippet_create', 'modSnippet', '12'),
(218, 1, '2016-09-14 23:37:08', 'template_update', 'modTemplate', '3'),
(219, 1, '2016-09-14 23:37:08', 'propertyset_update_from_element', 'modTemplate', '3'),
(220, 1, '2016-09-14 23:37:48', 'template_update', 'modTemplate', '3'),
(221, 1, '2016-09-14 23:37:48', 'propertyset_update_from_element', 'modTemplate', '3'),
(222, 1, '2016-09-14 23:37:57', 'template_update', 'modTemplate', '3'),
(223, 1, '2016-09-14 23:37:57', 'propertyset_update_from_element', 'modTemplate', '3'),
(224, 1, '2016-09-14 23:38:05', 'template_update', 'modTemplate', '3'),
(225, 1, '2016-09-14 23:38:06', 'propertyset_update_from_element', 'modTemplate', '3'),
(226, 1, '2016-09-14 23:40:14', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(227, 1, '2016-09-14 23:41:32', 'template_update', 'modTemplate', '3'),
(228, 1, '2016-09-14 23:41:32', 'propertyset_update_from_element', 'modTemplate', '3'),
(229, 1, '2016-09-14 23:51:29', 'resource_update', 'modResource', '5'),
(230, 1, '2016-09-15 00:05:16', 'template_update', 'modTemplate', '3'),
(231, 1, '2016-09-15 00:05:17', 'propertyset_update_from_element', 'modTemplate', '3'),
(232, 1, '2016-09-15 00:06:39', 'template_update', 'modTemplate', '3'),
(233, 1, '2016-09-15 00:06:39', 'propertyset_update_from_element', 'modTemplate', '3'),
(234, 1, '2016-09-15 00:09:29', 'template_update', 'modTemplate', '3'),
(235, 1, '2016-09-15 00:09:30', 'propertyset_update_from_element', 'modTemplate', '3'),
(236, 1, '2016-09-15 00:09:47', 'template_update', 'modTemplate', '3'),
(237, 1, '2016-09-15 00:09:47', 'propertyset_update_from_element', 'modTemplate', '3'),
(238, 1, '2016-09-15 00:10:04', 'template_update', 'modTemplate', '3'),
(239, 1, '2016-09-15 00:10:04', 'propertyset_update_from_element', 'modTemplate', '3'),
(240, 1, '2016-09-15 00:10:23', 'template_update', 'modTemplate', '3'),
(241, 1, '2016-09-15 00:10:23', 'propertyset_update_from_element', 'modTemplate', '3'),
(242, 1, '2016-09-15 00:10:37', 'template_update', 'modTemplate', '3'),
(243, 1, '2016-09-15 00:10:38', 'propertyset_update_from_element', 'modTemplate', '3'),
(244, 1, '2016-09-15 00:10:56', 'template_update', 'modTemplate', '3'),
(245, 1, '2016-09-15 00:10:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(246, 1, '2016-09-15 00:11:11', 'template_update', 'modTemplate', '3'),
(247, 1, '2016-09-15 00:11:11', 'propertyset_update_from_element', 'modTemplate', '3'),
(248, 1, '2016-09-15 00:11:15', 'template_update', 'modTemplate', '3'),
(249, 1, '2016-09-15 00:11:15', 'propertyset_update_from_element', 'modTemplate', '3'),
(250, 1, '2016-09-15 00:11:31', 'template_update', 'modTemplate', '3'),
(251, 1, '2016-09-15 00:11:31', 'propertyset_update_from_element', 'modTemplate', '3'),
(252, 1, '2016-09-15 00:12:10', 'template_update', 'modTemplate', '3'),
(253, 1, '2016-09-15 00:12:10', 'propertyset_update_from_element', 'modTemplate', '3'),
(254, 1, '2016-09-15 00:12:36', 'template_update', 'modTemplate', '3'),
(255, 1, '2016-09-15 00:12:37', 'propertyset_update_from_element', 'modTemplate', '3'),
(256, 1, '2016-09-15 00:12:41', 'template_update', 'modTemplate', '3'),
(257, 1, '2016-09-15 00:12:41', 'propertyset_update_from_element', 'modTemplate', '3'),
(258, 1, '2016-09-15 00:12:45', 'template_update', 'modTemplate', '3'),
(259, 1, '2016-09-15 00:12:46', 'propertyset_update_from_element', 'modTemplate', '3'),
(260, 1, '2016-09-15 00:13:17', 'template_update', 'modTemplate', '3'),
(261, 1, '2016-09-15 00:13:17', 'propertyset_update_from_element', 'modTemplate', '3'),
(262, 1, '2016-09-15 00:13:28', 'template_update', 'modTemplate', '3'),
(263, 1, '2016-09-15 00:13:28', 'propertyset_update_from_element', 'modTemplate', '3'),
(264, 1, '2016-09-15 00:13:52', 'template_update', 'modTemplate', '3'),
(265, 1, '2016-09-15 00:13:52', 'propertyset_update_from_element', 'modTemplate', '3'),
(266, 1, '2016-09-15 00:15:54', 'template_update', 'modTemplate', '3'),
(267, 1, '2016-09-15 00:15:54', 'propertyset_update_from_element', 'modTemplate', '3'),
(268, 1, '2016-09-15 00:16:05', 'template_update', 'modTemplate', '3'),
(269, 1, '2016-09-15 00:16:05', 'propertyset_update_from_element', 'modTemplate', '3'),
(270, 1, '2016-09-15 00:16:20', 'template_update', 'modTemplate', '3'),
(271, 1, '2016-09-15 00:16:20', 'propertyset_update_from_element', 'modTemplate', '3'),
(272, 1, '2016-09-15 00:16:26', 'template_update', 'modTemplate', '3'),
(273, 1, '2016-09-15 00:16:26', 'propertyset_update_from_element', 'modTemplate', '3'),
(274, 1, '2016-09-15 00:18:29', 'template_update', 'modTemplate', '3'),
(275, 1, '2016-09-15 00:18:29', 'propertyset_update_from_element', 'modTemplate', '3'),
(276, 1, '2016-09-15 00:19:41', 'resource_update', 'modResource', '10'),
(277, 1, '2016-09-15 00:20:25', 'template_update', 'modTemplate', '3'),
(278, 1, '2016-09-15 00:20:26', 'propertyset_update_from_element', 'modTemplate', '3'),
(279, 1, '2016-09-15 00:20:36', 'template_update', 'modTemplate', '3'),
(280, 1, '2016-09-15 00:20:36', 'propertyset_update_from_element', 'modTemplate', '3'),
(281, 1, '2016-09-15 00:21:23', 'template_update', 'modTemplate', '3'),
(282, 1, '2016-09-15 00:21:23', 'propertyset_update_from_element', 'modTemplate', '3'),
(283, 1, '2016-09-15 00:31:11', 'template_update', 'modTemplate', '3'),
(284, 1, '2016-09-15 00:31:11', 'propertyset_update_from_element', 'modTemplate', '3'),
(285, 1, '2016-09-15 00:31:55', 'template_update', 'modTemplate', '3'),
(286, 1, '2016-09-15 00:31:56', 'propertyset_update_from_element', 'modTemplate', '3'),
(287, 1, '2016-09-15 00:32:06', 'template_update', 'modTemplate', '3'),
(288, 1, '2016-09-15 00:32:06', 'propertyset_update_from_element', 'modTemplate', '3'),
(289, 1, '2016-09-15 00:34:58', 'template_update', 'modTemplate', '3'),
(290, 1, '2016-09-15 00:34:58', 'propertyset_update_from_element', 'modTemplate', '3'),
(291, 1, '2016-09-15 00:36:06', 'template_update', 'modTemplate', '3'),
(292, 1, '2016-09-15 00:36:06', 'propertyset_update_from_element', 'modTemplate', '3'),
(293, 1, '2016-09-15 00:36:39', 'template_update', 'modTemplate', '3'),
(294, 1, '2016-09-15 00:36:39', 'propertyset_update_from_element', 'modTemplate', '3'),
(295, 1, '2016-09-15 00:37:13', 'template_update', 'modTemplate', '3'),
(296, 1, '2016-09-15 00:37:13', 'propertyset_update_from_element', 'modTemplate', '3'),
(297, 1, '2016-09-15 00:37:22', 'template_update', 'modTemplate', '3'),
(298, 1, '2016-09-15 00:37:22', 'propertyset_update_from_element', 'modTemplate', '3'),
(299, 1, '2016-09-15 00:37:45', 'template_update', 'modTemplate', '3'),
(300, 1, '2016-09-15 00:37:45', 'propertyset_update_from_element', 'modTemplate', '3'),
(301, 1, '2016-09-15 00:38:22', 'template_update', 'modTemplate', '3'),
(302, 1, '2016-09-15 00:38:23', 'propertyset_update_from_element', 'modTemplate', '3'),
(303, 1, '2016-09-15 00:38:35', 'template_update', 'modTemplate', '3'),
(304, 1, '2016-09-15 00:38:35', 'propertyset_update_from_element', 'modTemplate', '3'),
(305, 1, '2016-09-15 00:38:53', 'template_update', 'modTemplate', '3'),
(306, 1, '2016-09-15 00:38:53', 'propertyset_update_from_element', 'modTemplate', '3'),
(307, 1, '2016-09-15 00:39:18', 'template_update', 'modTemplate', '3'),
(308, 1, '2016-09-15 00:39:19', 'propertyset_update_from_element', 'modTemplate', '3'),
(309, 1, '2016-09-15 00:40:50', 'template_update', 'modTemplate', '3'),
(310, 1, '2016-09-15 00:40:51', 'propertyset_update_from_element', 'modTemplate', '3'),
(311, 1, '2016-09-15 00:41:12', 'template_update', 'modTemplate', '3'),
(312, 1, '2016-09-15 00:41:12', 'propertyset_update_from_element', 'modTemplate', '3'),
(313, 1, '2016-09-15 00:43:03', 'template_update', 'modTemplate', '3'),
(314, 1, '2016-09-15 00:43:03', 'propertyset_update_from_element', 'modTemplate', '3'),
(315, 1, '2016-09-15 00:50:38', 'chunk_update', 'modChunk', '1'),
(316, 1, '2016-09-15 00:50:38', 'propertyset_update_from_element', 'modChunk', '1'),
(317, 1, '2016-09-15 00:51:18', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(318, 1, '2016-09-15 01:00:22', 'chunk_update', 'modChunk', '1'),
(319, 1, '2016-09-15 01:00:22', 'propertyset_update_from_element', 'modChunk', '1'),
(320, 1, '2016-09-15 01:00:34', 'chunk_update', 'modChunk', '1'),
(321, 1, '2016-09-15 01:00:35', 'propertyset_update_from_element', 'modChunk', '1'),
(322, 1, '2016-09-15 01:04:37', 'chunk_update', 'modChunk', '1'),
(323, 1, '2016-09-15 01:04:37', 'propertyset_update_from_element', 'modChunk', '1'),
(324, 1, '2016-09-15 01:06:01', 'chunk_update', 'modChunk', '1'),
(325, 1, '2016-09-15 01:06:02', 'propertyset_update_from_element', 'modChunk', '1'),
(326, 1, '2016-09-15 01:06:04', 'chunk_update', 'modChunk', '1'),
(327, 1, '2016-09-15 01:06:04', 'propertyset_update_from_element', 'modChunk', '1'),
(328, 1, '2016-09-15 14:57:14', 'login', 'modContext', 'mgr'),
(329, 1, '2016-09-15 14:57:38', 'resource_update', 'modResource', '2'),
(330, 1, '2016-09-15 14:57:50', 'resource_update', 'modResource', '7'),
(331, 1, '2016-09-15 14:57:57', 'resource_update', 'modResource', '14'),
(332, 1, '2016-09-15 14:58:32', 'chunk_update', 'modChunk', '1'),
(333, 1, '2016-09-15 14:58:32', 'propertyset_update_from_element', 'modChunk', '1'),
(334, 1, '2016-09-15 14:59:51', 'resource_update', 'modResource', '2'),
(335, 1, '2016-09-15 15:00:02', 'resource_update', 'modResource', '7'),
(336, 1, '2016-09-15 15:00:08', 'resource_update', 'modResource', '14'),
(337, 1, '2016-09-15 15:00:17', 'publish_resource', 'modDocument', '2'),
(338, 1, '2016-09-15 15:00:53', 'publish_resource', 'modDocument', '7'),
(339, 1, '2016-09-15 15:00:57', 'publish_resource', 'modDocument', '14'),
(340, 1, '2016-09-15 15:01:05', 'publish_resource', 'modDocument', '6'),
(341, 1, '2016-09-15 15:03:04', 'chunk_update', 'modChunk', '1'),
(342, 1, '2016-09-15 15:03:04', 'propertyset_update_from_element', 'modChunk', '1'),
(343, 1, '2016-09-15 15:03:24', 'chunk_update', 'modChunk', '1'),
(344, 1, '2016-09-15 15:03:24', 'propertyset_update_from_element', 'modChunk', '1'),
(345, 1, '2016-09-15 15:06:46', 'publish_resource', 'modDocument', '8'),
(346, 1, '2016-09-15 15:06:50', 'publish_resource', 'modDocument', '11'),
(347, 1, '2016-09-15 15:06:56', 'publish_resource', 'modDocument', '9'),
(348, 1, '2016-09-15 15:07:01', 'publish_resource', 'modDocument', '13'),
(349, 1, '2016-09-15 15:07:05', 'publish_resource', 'modDocument', '15'),
(350, 1, '2016-09-15 15:07:10', 'publish_resource', 'modDocument', '18'),
(351, 1, '2016-09-15 15:07:14', 'publish_resource', 'modDocument', '17'),
(352, 1, '2016-09-15 15:07:19', 'publish_resource', 'modDocument', '16'),
(353, 1, '2016-09-15 15:57:46', 'resource_update', 'modResource', '6'),
(354, 1, '2016-09-15 15:58:12', 'resource_update', 'modResource', '6'),
(355, 1, '2016-09-15 16:14:16', 'chunk_update', 'modChunk', '1'),
(356, 1, '2016-09-15 16:14:16', 'propertyset_update_from_element', 'modChunk', '1'),
(357, 1, '2016-09-15 16:15:34', 'chunk_update', 'modChunk', '1'),
(358, 1, '2016-09-15 16:15:34', 'propertyset_update_from_element', 'modChunk', '1'),
(359, 1, '2016-09-15 16:20:09', 'chunk_update', 'modChunk', '2'),
(360, 1, '2016-09-15 16:20:09', 'propertyset_update_from_element', 'modChunk', '2'),
(361, 1, '2016-09-15 16:23:48', 'category_create', 'modCategory', '3'),
(362, 1, '2016-09-15 16:24:14', 'category_delete', 'modCategory', '3'),
(363, 1, '2016-09-15 16:46:27', 'chunk_update', 'modChunk', '1'),
(364, 1, '2016-09-15 16:46:27', 'propertyset_update_from_element', 'modChunk', '1'),
(365, 1, '2016-09-15 17:26:39', 'chunk_update', 'modChunk', '1'),
(366, 1, '2016-09-15 17:26:39', 'propertyset_update_from_element', 'modChunk', '1'),
(367, 1, '2016-09-15 17:44:01', 'snippet_create', 'modSnippet', '24'),
(368, 1, '2016-09-15 17:44:41', 'chunk_update', 'modChunk', '1'),
(369, 1, '2016-09-15 17:44:41', 'propertyset_update_from_element', 'modChunk', '1'),
(370, 1, '2016-09-15 17:44:57', 'chunk_update', 'modChunk', '1'),
(371, 1, '2016-09-15 17:44:58', 'propertyset_update_from_element', 'modChunk', '1'),
(372, 1, '2016-09-15 17:45:38', 'snippet_update', 'modSnippet', '24'),
(373, 1, '2016-09-15 17:45:38', 'propertyset_update_from_element', 'modSnippet', '24'),
(374, 1, '2016-09-15 17:46:22', 'chunk_update', 'modChunk', '1'),
(375, 1, '2016-09-15 17:46:22', 'propertyset_update_from_element', 'modChunk', '1'),
(376, 1, '2016-09-15 17:46:31', 'snippet_delete', 'modSnippet', '24'),
(377, 1, '2016-09-15 18:21:30', 'tv_create', 'modTemplateVar', '2'),
(378, 1, '2016-09-15 18:22:01', 'resource_update', 'modResource', '3'),
(379, 1, '2016-09-15 18:22:36', 'resource_update', 'modResource', '5'),
(380, 1, '2016-09-15 18:22:57', 'resource_update', 'modResource', '8'),
(381, 1, '2016-09-15 18:23:08', 'resource_update', 'modResource', '10'),
(382, 1, '2016-09-15 18:23:20', 'resource_update', 'modResource', '11'),
(383, 1, '2016-09-15 18:23:36', 'resource_update', 'modResource', '12'),
(384, 1, '2016-09-15 18:25:43', 'resource_update', 'modResource', '9'),
(385, 1, '2016-09-15 18:28:50', 'resource_update', 'modResource', '13'),
(386, 1, '2016-09-15 18:29:09', 'resource_update', 'modResource', '15'),
(387, 1, '2016-09-15 18:29:29', 'resource_update', 'modResource', '16'),
(388, 1, '2016-09-15 18:29:51', 'resource_update', 'modResource', '17'),
(389, 1, '2016-09-15 18:30:04', 'resource_update', 'modResource', '18'),
(390, 1, '2016-09-15 19:25:15', 'chunk_update', 'modChunk', '3'),
(391, 1, '2016-09-15 19:25:15', 'propertyset_update_from_element', 'modChunk', '3'),
(392, 1, '2016-09-15 19:27:46', 'chunk_update', 'modChunk', '3'),
(393, 1, '2016-09-15 19:27:46', 'propertyset_update_from_element', 'modChunk', '3'),
(394, 1, '2016-09-15 19:28:08', 'chunk_update', 'modChunk', '3'),
(395, 1, '2016-09-15 19:28:08', 'propertyset_update_from_element', 'modChunk', '3'),
(396, 1, '2016-09-15 19:28:35', 'chunk_update', 'modChunk', '3'),
(397, 1, '2016-09-15 19:28:35', 'propertyset_update_from_element', 'modChunk', '3'),
(398, 1, '2016-09-15 19:31:17', 'chunk_update', 'modChunk', '3'),
(399, 1, '2016-09-15 19:31:17', 'propertyset_update_from_element', 'modChunk', '3'),
(400, 1, '2016-09-15 19:34:41', 'chunk_create', 'modChunk', '4'),
(401, 1, '2016-09-15 19:35:18', 'chunk_update', 'modChunk', '3'),
(402, 1, '2016-09-15 19:35:18', 'propertyset_update_from_element', 'modChunk', '3'),
(403, 1, '2016-09-15 19:36:08', 'chunk_update', 'modChunk', '4'),
(404, 1, '2016-09-15 19:36:08', 'propertyset_update_from_element', 'modChunk', '4'),
(405, 1, '2016-09-15 19:41:43', 'chunk_update', 'modChunk', '3'),
(406, 1, '2016-09-15 19:41:43', 'propertyset_update_from_element', 'modChunk', '3'),
(407, 1, '2016-09-15 19:42:03', 'chunk_update', 'modChunk', '3'),
(408, 1, '2016-09-15 19:42:03', 'propertyset_update_from_element', 'modChunk', '3'),
(409, 1, '2016-09-15 19:42:11', 'chunk_update', 'modChunk', '3'),
(410, 1, '2016-09-15 19:42:11', 'propertyset_update_from_element', 'modChunk', '3'),
(411, 1, '2016-09-15 19:43:51', 'chunk_update', 'modChunk', '4'),
(412, 1, '2016-09-15 19:43:52', 'propertyset_update_from_element', 'modChunk', '4'),
(413, 1, '2016-09-15 20:53:55', 'snippet_create', 'modSnippet', '28'),
(414, 1, '2016-09-15 20:54:34', 'template_update', 'modTemplate', '1'),
(415, 1, '2016-09-15 20:54:34', 'propertyset_update_from_element', 'modTemplate', '1'),
(416, 1, '2016-09-15 20:57:08', 'snippet_update', 'modSnippet', '28'),
(417, 1, '2016-09-15 20:57:08', 'propertyset_update_from_element', 'modSnippet', '28'),
(418, 1, '2016-09-15 21:01:30', 'snippet_update', 'modSnippet', '28'),
(419, 1, '2016-09-15 21:01:30', 'propertyset_update_from_element', 'modSnippet', '28'),
(420, 1, '2016-09-15 21:01:57', 'snippet_update', 'modSnippet', '28'),
(421, 1, '2016-09-15 21:01:57', 'propertyset_update_from_element', 'modSnippet', '28'),
(422, 1, '2016-09-15 21:02:05', 'snippet_update', 'modSnippet', '28'),
(423, 1, '2016-09-15 21:02:06', 'propertyset_update_from_element', 'modSnippet', '28'),
(424, 1, '2016-09-15 21:02:23', 'snippet_update', 'modSnippet', '28'),
(425, 1, '2016-09-15 21:02:23', 'propertyset_update_from_element', 'modSnippet', '28'),
(426, 1, '2016-09-15 21:03:45', 'snippet_update', 'modSnippet', '28'),
(427, 1, '2016-09-15 21:03:45', 'propertyset_update_from_element', 'modSnippet', '28'),
(428, 1, '2016-09-15 21:04:02', 'snippet_update', 'modSnippet', '28'),
(429, 1, '2016-09-15 21:04:02', 'propertyset_update_from_element', 'modSnippet', '28'),
(430, 1, '2016-09-15 21:12:10', 'template_update', 'modTemplate', '1'),
(431, 1, '2016-09-15 21:12:11', 'propertyset_update_from_element', 'modTemplate', '1'),
(432, 1, '2016-09-15 21:14:44', 'tv_update', 'modTemplateVar', '2'),
(433, 1, '2016-09-15 21:14:44', 'propertyset_update_from_element', 'modTemplateVar', '2'),
(434, 1, '2016-09-15 21:15:03', 'tv_update', 'modTemplateVar', '1'),
(435, 1, '2016-09-15 21:15:03', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(436, 1, '2016-09-15 21:15:24', 'tv_update', 'modTemplateVar', '1'),
(437, 1, '2016-09-15 21:15:25', 'propertyset_update_from_element', 'modTemplateVar', '1'),
(438, 1, '2016-09-15 21:17:42', 'snippet_update', 'modSnippet', '28'),
(439, 1, '2016-09-15 21:17:42', 'propertyset_update_from_element', 'modSnippet', '28'),
(440, 1, '2016-09-15 21:18:29', 'snippet_update', 'modSnippet', '28'),
(441, 1, '2016-09-15 21:18:29', 'propertyset_update_from_element', 'modSnippet', '28'),
(442, 1, '2016-09-15 21:18:49', 'snippet_update', 'modSnippet', '28'),
(443, 1, '2016-09-15 21:18:49', 'propertyset_update_from_element', 'modSnippet', '28'),
(444, 1, '2016-09-15 21:19:02', 'snippet_update', 'modSnippet', '28'),
(445, 1, '2016-09-15 21:19:03', 'propertyset_update_from_element', 'modSnippet', '28'),
(446, 1, '2016-09-15 21:20:01', 'snippet_update', 'modSnippet', '28'),
(447, 1, '2016-09-15 21:20:01', 'propertyset_update_from_element', 'modSnippet', '28'),
(448, 1, '2016-09-15 21:24:56', 'snippet_update', 'modSnippet', '28'),
(449, 1, '2016-09-15 21:24:56', 'propertyset_update_from_element', 'modSnippet', '28'),
(450, 1, '2016-09-15 21:25:29', 'snippet_update', 'modSnippet', '28'),
(451, 1, '2016-09-15 21:25:29', 'propertyset_update_from_element', 'modSnippet', '28'),
(452, 1, '2016-09-15 21:26:17', 'snippet_update', 'modSnippet', '28'),
(453, 1, '2016-09-15 21:26:17', 'propertyset_update_from_element', 'modSnippet', '28'),
(454, 1, '2016-09-15 21:26:24', 'snippet_update', 'modSnippet', '28'),
(455, 1, '2016-09-15 21:26:24', 'propertyset_update_from_element', 'modSnippet', '28'),
(456, 1, '2016-09-15 21:38:23', 'snippet_update', 'modSnippet', '28'),
(457, 1, '2016-09-15 21:38:23', 'propertyset_update_from_element', 'modSnippet', '28'),
(458, 1, '2016-09-15 21:46:43', 'snippet_update', 'modSnippet', '28'),
(459, 1, '2016-09-15 21:46:44', 'propertyset_update_from_element', 'modSnippet', '28'),
(460, 1, '2016-09-15 21:47:25', 'snippet_update', 'modSnippet', '28'),
(461, 1, '2016-09-15 21:47:25', 'propertyset_update_from_element', 'modSnippet', '28'),
(462, 1, '2016-09-15 21:49:09', 'snippet_update', 'modSnippet', '28'),
(463, 1, '2016-09-15 21:49:10', 'propertyset_update_from_element', 'modSnippet', '28'),
(464, 1, '2016-09-15 21:49:45', 'snippet_update', 'modSnippet', '28'),
(465, 1, '2016-09-15 21:49:46', 'propertyset_update_from_element', 'modSnippet', '28'),
(466, 1, '2016-09-15 21:57:25', 'snippet_update', 'modSnippet', '28'),
(467, 1, '2016-09-15 21:57:25', 'propertyset_update_from_element', 'modSnippet', '28'),
(468, 1, '2016-09-15 21:58:35', 'snippet_update', 'modSnippet', '28'),
(469, 1, '2016-09-15 21:58:35', 'propertyset_update_from_element', 'modSnippet', '28'),
(470, 1, '2016-09-15 21:58:48', 'snippet_update', 'modSnippet', '28'),
(471, 1, '2016-09-15 21:58:48', 'propertyset_update_from_element', 'modSnippet', '28'),
(472, 1, '2016-09-15 21:59:12', 'snippet_update', 'modSnippet', '28'),
(473, 1, '2016-09-15 21:59:12', 'propertyset_update_from_element', 'modSnippet', '28'),
(474, 1, '2016-09-15 22:00:11', 'snippet_update', 'modSnippet', '28'),
(475, 1, '2016-09-15 22:00:11', 'propertyset_update_from_element', 'modSnippet', '28'),
(476, 1, '2016-09-15 22:01:25', 'snippet_update', 'modSnippet', '28'),
(477, 1, '2016-09-15 22:01:25', 'propertyset_update_from_element', 'modSnippet', '28'),
(478, 1, '2016-09-15 22:01:45', 'snippet_update', 'modSnippet', '28'),
(479, 1, '2016-09-15 22:01:45', 'propertyset_update_from_element', 'modSnippet', '28'),
(480, 1, '2016-09-15 22:02:37', 'snippet_update', 'modSnippet', '28'),
(481, 1, '2016-09-15 22:02:38', 'propertyset_update_from_element', 'modSnippet', '28'),
(482, 1, '2016-09-15 22:03:44', 'template_update', 'modTemplate', '1'),
(483, 1, '2016-09-15 22:03:44', 'propertyset_update_from_element', 'modTemplate', '1'),
(484, 1, '2016-09-15 22:05:03', 'snippet_update', 'modSnippet', '28'),
(485, 1, '2016-09-15 22:05:03', 'propertyset_update_from_element', 'modSnippet', '28'),
(486, 1, '2016-09-15 22:07:59', 'snippet_update', 'modSnippet', '28'),
(487, 1, '2016-09-15 22:07:59', 'propertyset_update_from_element', 'modSnippet', '28'),
(488, 1, '2016-09-15 22:08:48', 'snippet_update', 'modSnippet', '28'),
(489, 1, '2016-09-15 22:08:49', 'propertyset_update_from_element', 'modSnippet', '28'),
(490, 1, '2016-09-15 22:09:05', 'snippet_update', 'modSnippet', '28'),
(491, 1, '2016-09-15 22:09:06', 'propertyset_update_from_element', 'modSnippet', '28'),
(492, 1, '2016-09-15 22:10:39', 'snippet_update', 'modSnippet', '28'),
(493, 1, '2016-09-15 22:10:39', 'propertyset_update_from_element', 'modSnippet', '28'),
(494, 1, '2016-09-15 22:11:42', 'snippet_update', 'modSnippet', '28'),
(495, 1, '2016-09-15 22:11:43', 'propertyset_update_from_element', 'modSnippet', '28'),
(496, 1, '2016-09-15 22:12:35', 'snippet_update', 'modSnippet', '28'),
(497, 1, '2016-09-15 22:12:35', 'propertyset_update_from_element', 'modSnippet', '28'),
(498, 1, '2016-09-15 22:12:50', 'snippet_update', 'modSnippet', '28'),
(499, 1, '2016-09-15 22:12:51', 'propertyset_update_from_element', 'modSnippet', '28'),
(500, 1, '2016-09-15 22:14:42', 'snippet_update', 'modSnippet', '28'),
(501, 1, '2016-09-15 22:14:43', 'propertyset_update_from_element', 'modSnippet', '28'),
(502, 1, '2016-09-15 22:15:27', 'snippet_update', 'modSnippet', '28'),
(503, 1, '2016-09-15 22:15:27', 'propertyset_update_from_element', 'modSnippet', '28'),
(504, 1, '2016-09-15 22:15:36', 'snippet_update', 'modSnippet', '28'),
(505, 1, '2016-09-15 22:15:36', 'propertyset_update_from_element', 'modSnippet', '28'),
(506, 1, '2016-09-15 22:15:40', 'snippet_update', 'modSnippet', '28'),
(507, 1, '2016-09-15 22:15:40', 'propertyset_update_from_element', 'modSnippet', '28'),
(508, 1, '2016-09-15 22:16:06', 'snippet_update', 'modSnippet', '28'),
(509, 1, '2016-09-15 22:16:07', 'propertyset_update_from_element', 'modSnippet', '28'),
(510, 1, '2016-09-15 22:29:19', 'snippet_update', 'modSnippet', '28'),
(511, 1, '2016-09-15 22:29:19', 'propertyset_update_from_element', 'modSnippet', '28'),
(512, 1, '2016-09-15 22:30:13', 'snippet_update', 'modSnippet', '28'),
(513, 1, '2016-09-15 22:30:13', 'propertyset_update_from_element', 'modSnippet', '28'),
(514, 1, '2016-09-15 22:31:06', 'snippet_update', 'modSnippet', '28'),
(515, 1, '2016-09-15 22:31:06', 'propertyset_update_from_element', 'modSnippet', '28'),
(516, 1, '2016-09-15 22:33:59', 'snippet_update', 'modSnippet', '28'),
(517, 1, '2016-09-15 22:33:59', 'propertyset_update_from_element', 'modSnippet', '28'),
(518, 1, '2016-09-15 22:34:30', 'snippet_update', 'modSnippet', '28'),
(519, 1, '2016-09-15 22:34:30', 'propertyset_update_from_element', 'modSnippet', '28'),
(520, 1, '2016-09-15 22:35:45', 'snippet_update', 'modSnippet', '28'),
(521, 1, '2016-09-15 22:35:46', 'propertyset_update_from_element', 'modSnippet', '28'),
(522, 1, '2016-09-15 22:35:56', 'snippet_update', 'modSnippet', '28'),
(523, 1, '2016-09-15 22:35:56', 'propertyset_update_from_element', 'modSnippet', '28'),
(524, 1, '2016-09-15 22:36:10', 'snippet_update', 'modSnippet', '28'),
(525, 1, '2016-09-15 22:36:10', 'propertyset_update_from_element', 'modSnippet', '28'),
(526, 1, '2016-09-15 22:37:52', 'template_update', 'modTemplate', '1'),
(527, 1, '2016-09-15 22:37:52', 'propertyset_update_from_element', 'modTemplate', '1'),
(528, 1, '2016-09-15 23:58:53', 'snippet_update', 'modSnippet', '28'),
(529, 1, '2016-09-15 23:58:53', 'propertyset_update_from_element', 'modSnippet', '28'),
(530, 1, '2016-09-15 23:59:39', 'snippet_update', 'modSnippet', '28'),
(531, 1, '2016-09-15 23:59:39', 'propertyset_update_from_element', 'modSnippet', '28'),
(532, 1, '2016-09-16 00:16:59', 'snippet_delete', 'modSnippet', '12'),
(533, 1, '2016-09-16 00:17:25', 'snippet_create', 'modSnippet', '29'),
(534, 1, '2016-09-16 00:43:50', 'snippet_update', 'modSnippet', '29'),
(535, 1, '2016-09-16 00:43:50', 'propertyset_update_from_element', 'modSnippet', '29'),
(536, 1, '2016-09-16 00:44:16', 'snippet_update', 'modSnippet', '29'),
(537, 1, '2016-09-16 00:44:16', 'propertyset_update_from_element', 'modSnippet', '29'),
(538, 1, '2016-09-16 00:44:39', 'template_update', 'modTemplate', '3'),
(539, 1, '2016-09-16 00:44:39', 'propertyset_update_from_element', 'modTemplate', '3'),
(540, 1, '2016-09-16 00:45:23', 'snippet_update', 'modSnippet', '29'),
(541, 1, '2016-09-16 00:45:23', 'propertyset_update_from_element', 'modSnippet', '29'),
(542, 1, '2016-09-16 00:45:36', 'snippet_update', 'modSnippet', '29'),
(543, 1, '2016-09-16 00:45:36', 'propertyset_update_from_element', 'modSnippet', '29'),
(544, 1, '2016-09-16 00:46:04', 'snippet_update', 'modSnippet', '29'),
(545, 1, '2016-09-16 00:46:04', 'propertyset_update_from_element', 'modSnippet', '29'),
(546, 1, '2016-09-16 00:46:25', 'snippet_update', 'modSnippet', '29'),
(547, 1, '2016-09-16 00:46:25', 'propertyset_update_from_element', 'modSnippet', '29'),
(548, 1, '2016-09-16 00:47:14', 'snippet_update', 'modSnippet', '29'),
(549, 1, '2016-09-16 00:47:14', 'propertyset_update_from_element', 'modSnippet', '29'),
(550, 1, '2016-09-16 00:47:59', 'snippet_update', 'modSnippet', '29'),
(551, 1, '2016-09-16 00:47:59', 'propertyset_update_from_element', 'modSnippet', '29'),
(552, 1, '2016-09-16 00:48:29', 'snippet_update', 'modSnippet', '29'),
(553, 1, '2016-09-16 00:48:29', 'propertyset_update_from_element', 'modSnippet', '29'),
(554, 1, '2016-09-16 00:50:54', 'snippet_update', 'modSnippet', '29'),
(555, 1, '2016-09-16 00:50:54', 'propertyset_update_from_element', 'modSnippet', '29'),
(556, 1, '2016-09-16 00:52:25', 'snippet_update', 'modSnippet', '29'),
(557, 1, '2016-09-16 00:52:26', 'propertyset_update_from_element', 'modSnippet', '29'),
(558, 1, '2016-09-16 00:53:56', 'snippet_update', 'modSnippet', '29'),
(559, 1, '2016-09-16 00:53:56', 'propertyset_update_from_element', 'modSnippet', '29'),
(560, 1, '2016-09-16 00:54:36', 'snippet_update', 'modSnippet', '29'),
(561, 1, '2016-09-16 00:54:36', 'propertyset_update_from_element', 'modSnippet', '29'),
(562, 1, '2016-09-16 00:59:18', 'snippet_update', 'modSnippet', '29'),
(563, 1, '2016-09-16 00:59:18', 'propertyset_update_from_element', 'modSnippet', '29'),
(564, 1, '2016-09-16 01:00:09', 'snippet_update', 'modSnippet', '29'),
(565, 1, '2016-09-16 01:00:09', 'propertyset_update_from_element', 'modSnippet', '29'),
(566, 1, '2016-09-16 01:01:34', 'snippet_update', 'modSnippet', '29'),
(567, 1, '2016-09-16 01:01:34', 'propertyset_update_from_element', 'modSnippet', '29'),
(568, 1, '2016-09-16 01:04:01', 'template_update', 'modTemplate', '3'),
(569, 1, '2016-09-16 01:04:01', 'propertyset_update_from_element', 'modTemplate', '3'),
(570, 1, '2016-09-16 01:05:15', 'snippet_update', 'modSnippet', '29'),
(571, 1, '2016-09-16 01:05:16', 'propertyset_update_from_element', 'modSnippet', '29'),
(572, 1, '2016-09-16 01:06:28', 'snippet_update', 'modSnippet', '29'),
(573, 1, '2016-09-16 01:06:29', 'propertyset_update_from_element', 'modSnippet', '29'),
(574, 1, '2016-09-16 01:06:36', 'snippet_update', 'modSnippet', '29'),
(575, 1, '2016-09-16 01:06:37', 'propertyset_update_from_element', 'modSnippet', '29'),
(576, 1, '2016-09-16 01:06:58', 'snippet_update', 'modSnippet', '29'),
(577, 1, '2016-09-16 01:06:58', 'propertyset_update_from_element', 'modSnippet', '29'),
(578, 1, '2016-09-16 01:07:35', 'snippet_update', 'modSnippet', '29'),
(579, 1, '2016-09-16 01:07:35', 'propertyset_update_from_element', 'modSnippet', '29'),
(580, 1, '2016-09-16 01:07:53', 'snippet_update', 'modSnippet', '29'),
(581, 1, '2016-09-16 01:07:53', 'propertyset_update_from_element', 'modSnippet', '29'),
(582, 1, '2016-09-16 01:08:01', 'snippet_update', 'modSnippet', '29'),
(583, 1, '2016-09-16 01:08:01', 'propertyset_update_from_element', 'modSnippet', '29'),
(584, 1, '2016-09-16 01:08:48', 'snippet_update', 'modSnippet', '29'),
(585, 1, '2016-09-16 01:08:48', 'propertyset_update_from_element', 'modSnippet', '29'),
(586, 1, '2016-09-16 01:09:22', 'snippet_update', 'modSnippet', '29'),
(587, 1, '2016-09-16 01:09:22', 'propertyset_update_from_element', 'modSnippet', '29'),
(588, 1, '2016-09-16 01:10:34', 'snippet_update', 'modSnippet', '29'),
(589, 1, '2016-09-16 01:10:35', 'propertyset_update_from_element', 'modSnippet', '29'),
(590, 1, '2016-09-16 01:11:24', 'snippet_update', 'modSnippet', '29'),
(591, 1, '2016-09-16 01:11:25', 'propertyset_update_from_element', 'modSnippet', '29'),
(592, 1, '2016-09-16 01:12:06', 'snippet_update', 'modSnippet', '29'),
(593, 1, '2016-09-16 01:12:06', 'propertyset_update_from_element', 'modSnippet', '29'),
(594, 1, '2016-09-16 01:12:26', 'snippet_update', 'modSnippet', '29'),
(595, 1, '2016-09-16 01:12:26', 'propertyset_update_from_element', 'modSnippet', '29'),
(596, 1, '2016-09-16 01:14:35', 'snippet_update', 'modSnippet', '29'),
(597, 1, '2016-09-16 01:14:35', 'propertyset_update_from_element', 'modSnippet', '29'),
(598, 1, '2016-09-16 01:15:31', 'snippet_update', 'modSnippet', '29'),
(599, 1, '2016-09-16 01:15:31', 'propertyset_update_from_element', 'modSnippet', '29'),
(600, 1, '2016-09-16 01:17:31', 'snippet_update', 'modSnippet', '29'),
(601, 1, '2016-09-16 01:17:32', 'propertyset_update_from_element', 'modSnippet', '29'),
(602, 1, '2016-09-16 01:18:02', 'snippet_update', 'modSnippet', '29'),
(603, 1, '2016-09-16 01:18:03', 'propertyset_update_from_element', 'modSnippet', '29'),
(604, 1, '2016-09-16 01:19:19', 'snippet_update', 'modSnippet', '29'),
(605, 1, '2016-09-16 01:19:19', 'propertyset_update_from_element', 'modSnippet', '29'),
(606, 1, '2016-09-16 01:20:17', 'snippet_update', 'modSnippet', '29'),
(607, 1, '2016-09-16 01:20:17', 'propertyset_update_from_element', 'modSnippet', '29'),
(608, 1, '2016-09-16 01:20:39', 'snippet_update', 'modSnippet', '29'),
(609, 1, '2016-09-16 01:20:39', 'propertyset_update_from_element', 'modSnippet', '29'),
(610, 1, '2016-09-16 01:21:10', 'snippet_update', 'modSnippet', '29'),
(611, 1, '2016-09-16 01:21:11', 'propertyset_update_from_element', 'modSnippet', '29'),
(612, 1, '2016-09-16 01:21:46', 'snippet_update', 'modSnippet', '29'),
(613, 1, '2016-09-16 01:21:46', 'propertyset_update_from_element', 'modSnippet', '29'),
(614, 1, '2016-09-16 01:22:17', 'snippet_update', 'modSnippet', '29'),
(615, 1, '2016-09-16 01:22:17', 'propertyset_update_from_element', 'modSnippet', '29'),
(616, 1, '2016-09-16 01:24:43', 'snippet_update', 'modSnippet', '29'),
(617, 1, '2016-09-16 01:24:44', 'propertyset_update_from_element', 'modSnippet', '29'),
(618, 1, '2016-09-16 01:24:47', 'snippet_update', 'modSnippet', '29'),
(619, 1, '2016-09-16 01:24:48', 'propertyset_update_from_element', 'modSnippet', '29'),
(620, 1, '2016-09-16 01:25:35', 'snippet_update', 'modSnippet', '29'),
(621, 1, '2016-09-16 01:25:35', 'propertyset_update_from_element', 'modSnippet', '29'),
(622, 1, '2016-09-16 01:25:48', 'snippet_update', 'modSnippet', '29'),
(623, 1, '2016-09-16 01:25:48', 'propertyset_update_from_element', 'modSnippet', '29'),
(624, 1, '2016-09-16 01:28:24', 'snippet_update', 'modSnippet', '29'),
(625, 1, '2016-09-16 01:28:24', 'propertyset_update_from_element', 'modSnippet', '29'),
(626, 1, '2016-09-16 01:29:21', 'snippet_update', 'modSnippet', '29'),
(627, 1, '2016-09-16 01:29:21', 'propertyset_update_from_element', 'modSnippet', '29'),
(628, 1, '2016-09-16 01:31:33', 'snippet_update', 'modSnippet', '29'),
(629, 1, '2016-09-16 01:31:33', 'propertyset_update_from_element', 'modSnippet', '29'),
(630, 1, '2016-09-16 01:32:01', 'snippet_update', 'modSnippet', '29'),
(631, 1, '2016-09-16 01:32:02', 'propertyset_update_from_element', 'modSnippet', '29'),
(632, 1, '2016-09-16 01:32:57', 'snippet_update', 'modSnippet', '29'),
(633, 1, '2016-09-16 01:32:57', 'propertyset_update_from_element', 'modSnippet', '29'),
(634, 1, '2016-09-16 01:33:47', 'snippet_update', 'modSnippet', '29'),
(635, 1, '2016-09-16 01:33:47', 'propertyset_update_from_element', 'modSnippet', '29'),
(636, 1, '2016-09-16 01:34:04', 'snippet_update', 'modSnippet', '29'),
(637, 1, '2016-09-16 01:34:04', 'propertyset_update_from_element', 'modSnippet', '29'),
(638, 1, '2016-09-16 01:34:10', 'snippet_update', 'modSnippet', '29'),
(639, 1, '2016-09-16 01:34:10', 'propertyset_update_from_element', 'modSnippet', '29'),
(640, 1, '2016-09-16 01:34:27', 'snippet_update', 'modSnippet', '29'),
(641, 1, '2016-09-16 01:34:28', 'propertyset_update_from_element', 'modSnippet', '29'),
(642, 1, '2016-09-16 01:36:50', 'snippet_update', 'modSnippet', '29'),
(643, 1, '2016-09-16 01:36:50', 'propertyset_update_from_element', 'modSnippet', '29'),
(644, 1, '2016-09-16 01:37:32', 'snippet_update', 'modSnippet', '29'),
(645, 1, '2016-09-16 01:37:32', 'propertyset_update_from_element', 'modSnippet', '29'),
(646, 1, '2016-09-16 01:38:02', 'snippet_update', 'modSnippet', '29'),
(647, 1, '2016-09-16 01:38:03', 'propertyset_update_from_element', 'modSnippet', '29'),
(648, 1, '2016-09-16 01:38:23', 'snippet_update', 'modSnippet', '29'),
(649, 1, '2016-09-16 01:38:24', 'propertyset_update_from_element', 'modSnippet', '29'),
(650, 1, '2016-09-16 01:39:08', 'snippet_update', 'modSnippet', '29'),
(651, 1, '2016-09-16 01:39:09', 'propertyset_update_from_element', 'modSnippet', '29'),
(652, 1, '2016-09-16 01:40:15', 'snippet_update', 'modSnippet', '29'),
(653, 1, '2016-09-16 01:40:15', 'propertyset_update_from_element', 'modSnippet', '29'),
(654, 1, '2016-09-16 01:42:24', 'snippet_update', 'modSnippet', '29'),
(655, 1, '2016-09-16 01:42:24', 'propertyset_update_from_element', 'modSnippet', '29');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(656, 1, '2016-09-16 01:42:28', 'snippet_update', 'modSnippet', '29'),
(657, 1, '2016-09-16 01:42:28', 'propertyset_update_from_element', 'modSnippet', '29'),
(658, 1, '2016-09-16 01:43:29', 'snippet_update', 'modSnippet', '29'),
(659, 1, '2016-09-16 01:43:29', 'propertyset_update_from_element', 'modSnippet', '29'),
(660, 1, '2016-09-16 01:44:05', 'snippet_update', 'modSnippet', '29'),
(661, 1, '2016-09-16 01:44:05', 'propertyset_update_from_element', 'modSnippet', '29'),
(662, 1, '2016-09-16 01:44:24', 'snippet_update', 'modSnippet', '29'),
(663, 1, '2016-09-16 01:44:24', 'propertyset_update_from_element', 'modSnippet', '29'),
(664, 1, '2016-09-16 01:44:44', 'snippet_update', 'modSnippet', '29'),
(665, 1, '2016-09-16 01:44:44', 'propertyset_update_from_element', 'modSnippet', '29'),
(666, 1, '2016-09-16 01:44:49', 'snippet_update', 'modSnippet', '29'),
(667, 1, '2016-09-16 01:44:49', 'propertyset_update_from_element', 'modSnippet', '29'),
(668, 1, '2016-09-16 01:45:10', 'snippet_update', 'modSnippet', '29'),
(669, 1, '2016-09-16 01:45:10', 'propertyset_update_from_element', 'modSnippet', '29'),
(670, 1, '2016-09-16 01:45:27', 'snippet_update', 'modSnippet', '29'),
(671, 1, '2016-09-16 01:45:27', 'propertyset_update_from_element', 'modSnippet', '29'),
(672, 1, '2016-09-16 01:46:49', 'snippet_update', 'modSnippet', '29'),
(673, 1, '2016-09-16 01:46:50', 'propertyset_update_from_element', 'modSnippet', '29'),
(674, 1, '2016-09-16 01:47:38', 'snippet_update', 'modSnippet', '29'),
(675, 1, '2016-09-16 01:47:38', 'propertyset_update_from_element', 'modSnippet', '29'),
(676, 1, '2016-09-16 01:47:51', 'snippet_update', 'modSnippet', '29'),
(677, 1, '2016-09-16 01:47:51', 'propertyset_update_from_element', 'modSnippet', '29'),
(678, 1, '2016-09-16 01:48:24', 'snippet_update', 'modSnippet', '29'),
(679, 1, '2016-09-16 01:48:24', 'propertyset_update_from_element', 'modSnippet', '29'),
(680, 1, '2016-09-16 01:49:09', 'snippet_update', 'modSnippet', '29'),
(681, 1, '2016-09-16 01:49:09', 'propertyset_update_from_element', 'modSnippet', '29'),
(682, 1, '2016-09-16 12:49:02', 'snippet_update', 'modSnippet', '29'),
(683, 1, '2016-09-16 12:49:03', 'propertyset_update_from_element', 'modSnippet', '29'),
(684, 1, '2016-09-16 12:49:42', 'snippet_update', 'modSnippet', '29'),
(685, 1, '2016-09-16 12:49:42', 'propertyset_update_from_element', 'modSnippet', '29'),
(686, 1, '2016-09-16 12:50:03', 'snippet_update', 'modSnippet', '29'),
(687, 1, '2016-09-16 12:50:04', 'propertyset_update_from_element', 'modSnippet', '29'),
(688, 1, '2016-09-16 13:04:02', 'snippet_update', 'modSnippet', '29'),
(689, 1, '2016-09-16 13:04:02', 'propertyset_update_from_element', 'modSnippet', '29'),
(690, 1, '2016-09-16 13:12:14', 'snippet_update', 'modSnippet', '29'),
(691, 1, '2016-09-16 13:12:14', 'propertyset_update_from_element', 'modSnippet', '29'),
(692, 1, '2016-09-16 13:12:22', 'snippet_update', 'modSnippet', '29'),
(693, 1, '2016-09-16 13:12:22', 'propertyset_update_from_element', 'modSnippet', '29'),
(694, 1, '2016-09-16 13:14:06', 'snippet_update', 'modSnippet', '29'),
(695, 1, '2016-09-16 13:14:06', 'propertyset_update_from_element', 'modSnippet', '29'),
(696, 1, '2016-09-16 13:14:47', 'snippet_update', 'modSnippet', '29'),
(697, 1, '2016-09-16 13:14:48', 'propertyset_update_from_element', 'modSnippet', '29'),
(698, 1, '2016-09-16 13:15:42', 'snippet_update', 'modSnippet', '29'),
(699, 1, '2016-09-16 13:15:42', 'propertyset_update_from_element', 'modSnippet', '29'),
(700, 1, '2016-09-16 13:15:51', 'snippet_update', 'modSnippet', '29'),
(701, 1, '2016-09-16 13:15:52', 'propertyset_update_from_element', 'modSnippet', '29'),
(702, 1, '2016-09-16 13:16:04', 'snippet_update', 'modSnippet', '29'),
(703, 1, '2016-09-16 13:16:04', 'propertyset_update_from_element', 'modSnippet', '29'),
(704, 1, '2016-09-16 13:16:38', 'snippet_update', 'modSnippet', '29'),
(705, 1, '2016-09-16 13:16:38', 'propertyset_update_from_element', 'modSnippet', '29'),
(706, 1, '2016-09-16 13:17:32', 'snippet_update', 'modSnippet', '29'),
(707, 1, '2016-09-16 13:17:33', 'propertyset_update_from_element', 'modSnippet', '29'),
(708, 1, '2016-09-16 13:17:53', 'snippet_update', 'modSnippet', '29'),
(709, 1, '2016-09-16 13:17:53', 'propertyset_update_from_element', 'modSnippet', '29'),
(710, 1, '2016-09-16 13:18:38', 'snippet_update', 'modSnippet', '29'),
(711, 1, '2016-09-16 13:18:38', 'propertyset_update_from_element', 'modSnippet', '29'),
(712, 1, '2016-09-16 13:21:17', 'snippet_update', 'modSnippet', '29'),
(713, 1, '2016-09-16 13:21:18', 'propertyset_update_from_element', 'modSnippet', '29'),
(714, 1, '2016-09-16 13:21:35', 'snippet_update', 'modSnippet', '29'),
(715, 1, '2016-09-16 13:21:35', 'propertyset_update_from_element', 'modSnippet', '29'),
(716, 1, '2016-09-16 13:22:07', 'snippet_update', 'modSnippet', '29'),
(717, 1, '2016-09-16 13:22:07', 'propertyset_update_from_element', 'modSnippet', '29'),
(718, 1, '2016-09-16 13:23:28', 'snippet_update', 'modSnippet', '29'),
(719, 1, '2016-09-16 13:23:28', 'propertyset_update_from_element', 'modSnippet', '29'),
(720, 1, '2016-09-16 13:27:46', 'snippet_update', 'modSnippet', '29'),
(721, 1, '2016-09-16 13:27:46', 'propertyset_update_from_element', 'modSnippet', '29'),
(722, 1, '2016-09-16 13:30:01', 'snippet_update', 'modSnippet', '29'),
(723, 1, '2016-09-16 13:30:01', 'propertyset_update_from_element', 'modSnippet', '29'),
(724, 1, '2016-09-16 13:31:27', 'snippet_update', 'modSnippet', '29'),
(725, 1, '2016-09-16 13:31:28', 'propertyset_update_from_element', 'modSnippet', '29'),
(726, 1, '2016-09-16 13:37:43', 'snippet_update', 'modSnippet', '29'),
(727, 1, '2016-09-16 13:37:43', 'propertyset_update_from_element', 'modSnippet', '29'),
(728, 1, '2016-09-16 13:44:15', 'snippet_update', 'modSnippet', '29'),
(729, 1, '2016-09-16 13:44:15', 'propertyset_update_from_element', 'modSnippet', '29'),
(730, 1, '2016-09-16 13:44:59', 'snippet_update', 'modSnippet', '29'),
(731, 1, '2016-09-16 13:44:59', 'propertyset_update_from_element', 'modSnippet', '29'),
(732, 1, '2016-09-16 13:45:47', 'snippet_update', 'modSnippet', '29'),
(733, 1, '2016-09-16 13:45:47', 'propertyset_update_from_element', 'modSnippet', '29'),
(734, 1, '2016-09-16 14:32:54', 'template_update', 'modTemplate', '3'),
(735, 1, '2016-09-16 14:32:54', 'propertyset_update_from_element', 'modTemplate', '3'),
(736, 1, '2016-09-16 14:34:18', 'template_update', 'modTemplate', '1'),
(737, 1, '2016-09-16 14:34:18', 'propertyset_update_from_element', 'modTemplate', '1'),
(738, 1, '2016-09-16 14:44:07', 'template_create', 'modTemplate', '4'),
(739, 1, '2016-09-16 14:44:48', 'resource_create', 'modDocument', '19'),
(740, 1, '2016-09-16 14:45:05', 'publish_resource', 'modDocument', '19'),
(741, 1, '2016-09-16 14:46:15', 'unpublish_resource', 'modResource', '17'),
(742, 1, '2016-09-16 14:47:01', 'unpublish_resource', 'modResource', '15'),
(743, 1, '2016-09-16 14:47:57', 'snippet_update', 'modSnippet', '29'),
(744, 1, '2016-09-16 14:47:57', 'propertyset_update_from_element', 'modSnippet', '29'),
(745, 1, '2016-09-16 14:48:08', 'snippet_update', 'modSnippet', '29'),
(746, 1, '2016-09-16 14:48:09', 'propertyset_update_from_element', 'modSnippet', '29'),
(747, 1, '2016-09-16 14:50:07', 'snippet_update', 'modSnippet', '29'),
(748, 1, '2016-09-16 14:50:07', 'propertyset_update_from_element', 'modSnippet', '29'),
(749, 1, '2016-09-16 14:50:31', 'unpublish_resource', 'modResource', '10'),
(750, 1, '2016-09-16 14:50:46', 'publish_resource', 'modDocument', '10'),
(751, 1, '2016-09-16 14:50:50', 'publish_resource', 'modDocument', '15'),
(752, 1, '2016-09-16 14:50:54', 'publish_resource', 'modDocument', '17'),
(753, 1, '2016-09-16 15:50:44', 'template_update', 'modTemplate', '4'),
(754, 1, '2016-09-16 15:50:44', 'propertyset_update_from_element', 'modTemplate', '4'),
(755, 1, '2016-09-16 15:50:50', 'template_update', 'modTemplate', '4'),
(756, 1, '2016-09-16 15:50:50', 'propertyset_update_from_element', 'modTemplate', '4'),
(757, 1, '2016-09-16 15:51:09', 'template_update', 'modTemplate', '4'),
(758, 1, '2016-09-16 15:51:10', 'propertyset_update_from_element', 'modTemplate', '4'),
(759, 1, '2016-09-16 16:01:03', 'chunk_update', 'modChunk', '4'),
(760, 1, '2016-09-16 16:01:03', 'propertyset_update_from_element', 'modChunk', '4'),
(761, 1, '2016-09-16 16:02:20', 'template_update', 'modTemplate', '4'),
(762, 1, '2016-09-16 16:02:20', 'propertyset_update_from_element', 'modTemplate', '4'),
(763, 1, '2016-09-16 16:03:54', 'snippet_create', 'modSnippet', '30'),
(764, 1, '2016-09-16 16:05:15', 'snippet_update', 'modSnippet', '30'),
(765, 1, '2016-09-16 16:05:15', 'propertyset_update_from_element', 'modSnippet', '30'),
(766, 1, '2016-09-16 16:07:15', 'template_update', 'modTemplate', '4'),
(767, 1, '2016-09-16 16:07:16', 'propertyset_update_from_element', 'modTemplate', '4'),
(768, 1, '2016-09-16 16:10:16', 'snippet_create', 'modSnippet', '31'),
(769, 1, '2016-09-16 16:15:44', 'snippet_update', 'modSnippet', '31'),
(770, 1, '2016-09-16 16:15:44', 'propertyset_update_from_element', 'modSnippet', '31'),
(771, 1, '2016-09-16 17:16:09', 'snippet_update', 'modSnippet', '31'),
(772, 1, '2016-09-16 17:16:09', 'propertyset_update_from_element', 'modSnippet', '31'),
(773, 1, '2016-09-16 17:16:38', 'snippet_update', 'modSnippet', '31'),
(774, 1, '2016-09-16 17:16:39', 'propertyset_update_from_element', 'modSnippet', '31'),
(775, 1, '2016-09-16 17:19:02', 'snippet_update', 'modSnippet', '31'),
(776, 1, '2016-09-16 17:19:03', 'propertyset_update_from_element', 'modSnippet', '31'),
(777, 1, '2016-09-16 17:24:52', 'snippet_update', 'modSnippet', '31'),
(778, 1, '2016-09-16 17:24:52', 'propertyset_update_from_element', 'modSnippet', '31'),
(779, 1, '2016-09-16 17:25:22', 'snippet_update', 'modSnippet', '31'),
(780, 1, '2016-09-16 17:25:22', 'propertyset_update_from_element', 'modSnippet', '31'),
(781, 1, '2016-09-16 17:25:56', 'template_update', 'modTemplate', '4'),
(782, 1, '2016-09-16 17:25:56', 'propertyset_update_from_element', 'modTemplate', '4'),
(783, 1, '2016-09-16 17:26:46', 'snippet_update', 'modSnippet', '31'),
(784, 1, '2016-09-16 17:26:47', 'propertyset_update_from_element', 'modSnippet', '31'),
(785, 1, '2016-09-16 17:31:23', 'snippet_update', 'modSnippet', '31'),
(786, 1, '2016-09-16 17:31:23', 'propertyset_update_from_element', 'modSnippet', '31'),
(787, 1, '2016-09-16 18:07:03', 'snippet_update', 'modSnippet', '31'),
(788, 1, '2016-09-16 18:07:03', 'propertyset_update_from_element', 'modSnippet', '31'),
(789, 1, '2016-09-16 18:27:37', 'snippet_update', 'modSnippet', '31'),
(790, 1, '2016-09-16 18:27:37', 'propertyset_update_from_element', 'modSnippet', '31'),
(791, 1, '2016-09-16 18:27:51', 'snippet_update', 'modSnippet', '31'),
(792, 1, '2016-09-16 18:27:51', 'propertyset_update_from_element', 'modSnippet', '31'),
(793, 1, '2016-09-16 18:30:44', 'snippet_update', 'modSnippet', '31'),
(794, 1, '2016-09-16 18:30:44', 'propertyset_update_from_element', 'modSnippet', '31'),
(795, 1, '2016-09-16 18:30:56', 'snippet_update', 'modSnippet', '31'),
(796, 1, '2016-09-16 18:30:56', 'propertyset_update_from_element', 'modSnippet', '31'),
(797, 1, '2016-09-16 18:31:38', 'snippet_update', 'modSnippet', '31'),
(798, 1, '2016-09-16 18:31:39', 'propertyset_update_from_element', 'modSnippet', '31'),
(799, 1, '2016-09-16 18:31:53', 'snippet_update', 'modSnippet', '31'),
(800, 1, '2016-09-16 18:31:53', 'propertyset_update_from_element', 'modSnippet', '31'),
(801, 1, '2016-09-16 18:32:36', 'snippet_update', 'modSnippet', '31'),
(802, 1, '2016-09-16 18:32:36', 'propertyset_update_from_element', 'modSnippet', '31'),
(803, 1, '2016-09-16 18:32:42', 'snippet_update', 'modSnippet', '31'),
(804, 1, '2016-09-16 18:32:43', 'propertyset_update_from_element', 'modSnippet', '31'),
(805, 1, '2016-09-16 18:34:39', 'snippet_update', 'modSnippet', '31'),
(806, 1, '2016-09-16 18:34:39', 'propertyset_update_from_element', 'modSnippet', '31'),
(807, 1, '2016-09-16 18:34:55', 'snippet_update', 'modSnippet', '31'),
(808, 1, '2016-09-16 18:34:55', 'propertyset_update_from_element', 'modSnippet', '31'),
(809, 1, '2016-09-16 18:35:53', 'snippet_update', 'modSnippet', '31'),
(810, 1, '2016-09-16 18:35:53', 'propertyset_update_from_element', 'modSnippet', '31'),
(811, 1, '2016-09-16 18:36:05', 'snippet_update', 'modSnippet', '31'),
(812, 1, '2016-09-16 18:36:05', 'propertyset_update_from_element', 'modSnippet', '31'),
(813, 1, '2016-09-16 18:36:35', 'snippet_update', 'modSnippet', '31'),
(814, 1, '2016-09-16 18:36:36', 'propertyset_update_from_element', 'modSnippet', '31'),
(815, 1, '2016-09-16 18:39:10', 'snippet_update', 'modSnippet', '31'),
(816, 1, '2016-09-16 18:39:10', 'propertyset_update_from_element', 'modSnippet', '31'),
(817, 1, '2016-09-16 18:39:46', 'snippet_update', 'modSnippet', '31'),
(818, 1, '2016-09-16 18:39:46', 'propertyset_update_from_element', 'modSnippet', '31'),
(819, 1, '2016-09-16 18:40:06', 'snippet_update', 'modSnippet', '31'),
(820, 1, '2016-09-16 18:40:06', 'propertyset_update_from_element', 'modSnippet', '31'),
(821, 1, '2016-09-16 18:40:26', 'snippet_update', 'modSnippet', '31'),
(822, 1, '2016-09-16 18:40:26', 'propertyset_update_from_element', 'modSnippet', '31'),
(823, 1, '2016-09-16 18:41:10', 'snippet_update', 'modSnippet', '31'),
(824, 1, '2016-09-16 18:41:10', 'propertyset_update_from_element', 'modSnippet', '31'),
(825, 1, '2016-09-16 18:42:23', 'snippet_update', 'modSnippet', '31'),
(826, 1, '2016-09-16 18:42:23', 'propertyset_update_from_element', 'modSnippet', '31'),
(827, 1, '2016-09-16 18:43:46', 'snippet_update', 'modSnippet', '31'),
(828, 1, '2016-09-16 18:43:46', 'propertyset_update_from_element', 'modSnippet', '31'),
(829, 1, '2016-09-16 18:44:08', 'snippet_update', 'modSnippet', '31'),
(830, 1, '2016-09-16 18:44:09', 'propertyset_update_from_element', 'modSnippet', '31'),
(831, 1, '2016-09-16 18:45:29', 'snippet_update', 'modSnippet', '31'),
(832, 1, '2016-09-16 18:45:30', 'propertyset_update_from_element', 'modSnippet', '31'),
(833, 1, '2016-09-16 18:46:25', 'snippet_update', 'modSnippet', '31'),
(834, 1, '2016-09-16 18:46:25', 'propertyset_update_from_element', 'modSnippet', '31'),
(835, 1, '2016-09-16 18:48:14', 'snippet_update', 'modSnippet', '31'),
(836, 1, '2016-09-16 18:48:14', 'propertyset_update_from_element', 'modSnippet', '31'),
(837, 1, '2016-09-16 18:49:10', 'snippet_update', 'modSnippet', '31'),
(838, 1, '2016-09-16 18:49:10', 'propertyset_update_from_element', 'modSnippet', '31'),
(839, 1, '2016-09-16 18:49:26', 'snippet_update', 'modSnippet', '31'),
(840, 1, '2016-09-16 18:49:26', 'propertyset_update_from_element', 'modSnippet', '31'),
(841, 1, '2016-09-16 18:51:07', 'snippet_update', 'modSnippet', '31'),
(842, 1, '2016-09-16 18:51:07', 'propertyset_update_from_element', 'modSnippet', '31'),
(843, 1, '2016-09-16 18:52:18', 'snippet_update', 'modSnippet', '31'),
(844, 1, '2016-09-16 18:52:19', 'propertyset_update_from_element', 'modSnippet', '31'),
(845, 1, '2016-09-16 18:54:04', 'snippet_update', 'modSnippet', '31'),
(846, 1, '2016-09-16 18:54:04', 'propertyset_update_from_element', 'modSnippet', '31'),
(847, 1, '2016-09-16 18:59:55', 'snippet_update', 'modSnippet', '31'),
(848, 1, '2016-09-16 18:59:55', 'propertyset_update_from_element', 'modSnippet', '31'),
(849, 1, '2016-09-16 19:00:04', 'snippet_update', 'modSnippet', '31'),
(850, 1, '2016-09-16 19:00:05', 'propertyset_update_from_element', 'modSnippet', '31'),
(851, 1, '2016-09-16 22:17:19', 'template_update', 'modTemplate', '1'),
(852, 1, '2016-09-16 22:17:19', 'propertyset_update_from_element', 'modTemplate', '1'),
(853, 1, '2016-09-16 22:17:49', 'chunk_update', 'modChunk', '2'),
(854, 1, '2016-09-16 22:17:49', 'propertyset_update_from_element', 'modChunk', '2'),
(855, 1, '2016-09-16 22:18:04', 'template_update', 'modTemplate', '1'),
(856, 1, '2016-09-16 22:18:04', 'propertyset_update_from_element', 'modTemplate', '1'),
(857, 1, '2016-09-16 22:18:10', 'template_update', 'modTemplate', '2'),
(858, 1, '2016-09-16 22:18:10', 'propertyset_update_from_element', 'modTemplate', '2'),
(859, 1, '2016-09-16 22:18:17', 'template_update', 'modTemplate', '3'),
(860, 1, '2016-09-16 22:18:17', 'propertyset_update_from_element', 'modTemplate', '3'),
(861, 1, '2016-09-16 22:18:26', 'template_update', 'modTemplate', '4'),
(862, 1, '2016-09-16 22:18:26', 'propertyset_update_from_element', 'modTemplate', '4'),
(863, 1, '2016-09-16 22:18:33', 'template_update', 'modTemplate', '3'),
(864, 1, '2016-09-16 22:18:34', 'propertyset_update_from_element', 'modTemplate', '3'),
(865, 1, '2016-09-16 22:18:40', 'template_update', 'modTemplate', '2'),
(866, 1, '2016-09-16 22:18:40', 'propertyset_update_from_element', 'modTemplate', '2'),
(867, 1, '2016-09-16 22:18:47', 'template_update', 'modTemplate', '1'),
(868, 1, '2016-09-16 22:18:47', 'propertyset_update_from_element', 'modTemplate', '1'),
(869, 1, '2016-09-16 22:19:16', 'template_update', 'modTemplate', '4'),
(870, 1, '2016-09-16 22:19:17', 'propertyset_update_from_element', 'modTemplate', '4'),
(871, 1, '2016-09-16 22:19:28', 'chunk_update', 'modChunk', '1'),
(872, 1, '2016-09-16 22:19:29', 'propertyset_update_from_element', 'modChunk', '1'),
(873, 1, '2016-09-16 22:19:45', 'template_update', 'modTemplate', '4'),
(874, 1, '2016-09-16 22:19:45', 'propertyset_update_from_element', 'modTemplate', '4'),
(875, 1, '2016-09-16 22:19:57', 'template_update', 'modTemplate', '3'),
(876, 1, '2016-09-16 22:19:57', 'propertyset_update_from_element', 'modTemplate', '3'),
(877, 1, '2016-09-16 22:20:04', 'template_update', 'modTemplate', '2'),
(878, 1, '2016-09-16 22:20:04', 'propertyset_update_from_element', 'modTemplate', '2'),
(879, 1, '2016-09-16 22:20:11', 'template_update', 'modTemplate', '1'),
(880, 1, '2016-09-16 22:20:11', 'propertyset_update_from_element', 'modTemplate', '1'),
(881, 1, '2016-09-16 22:20:25', 'template_update', 'modTemplate', '1'),
(882, 1, '2016-09-16 22:20:25', 'propertyset_update_from_element', 'modTemplate', '1'),
(883, 1, '2016-09-16 22:21:36', 'template_update', 'modTemplate', '1'),
(884, 1, '2016-09-16 22:21:36', 'propertyset_update_from_element', 'modTemplate', '1'),
(885, 1, '2016-09-16 22:24:42', 'template_create', 'modTemplate', '5'),
(886, 1, '2016-09-16 22:25:09', 'resource_update', 'modResource', '2'),
(887, 1, '2016-09-16 22:25:35', 'resource_update', 'modResource', '6'),
(888, 1, '2016-09-16 22:25:54', 'resource_update', 'modResource', '7'),
(889, 1, '2016-09-16 22:26:10', 'resource_update', 'modResource', '14'),
(890, 1, '2016-09-16 22:27:32', 'template_update', 'modTemplate', '5'),
(891, 1, '2016-09-16 22:27:32', 'propertyset_update_from_element', 'modTemplate', '5'),
(892, 1, '2016-09-16 22:28:25', 'snippet_create', 'modSnippet', '32'),
(893, 1, '2016-09-16 22:34:45', 'template_update', 'modTemplate', '5'),
(894, 1, '2016-09-16 22:34:45', 'propertyset_update_from_element', 'modTemplate', '5'),
(895, 1, '2016-09-16 22:35:19', 'snippet_update', 'modSnippet', '32'),
(896, 1, '2016-09-16 22:35:19', 'propertyset_update_from_element', 'modSnippet', '32'),
(897, 1, '2016-09-16 22:36:54', 'snippet_update', 'modSnippet', '32'),
(898, 1, '2016-09-16 22:36:55', 'propertyset_update_from_element', 'modSnippet', '32'),
(899, 1, '2016-09-16 22:37:47', 'snippet_update', 'modSnippet', '32'),
(900, 1, '2016-09-16 22:37:47', 'propertyset_update_from_element', 'modSnippet', '32'),
(901, 1, '2016-09-16 22:38:28', 'snippet_update', 'modSnippet', '32'),
(902, 1, '2016-09-16 22:38:28', 'propertyset_update_from_element', 'modSnippet', '32'),
(903, 1, '2016-09-16 22:38:49', 'snippet_update', 'modSnippet', '32'),
(904, 1, '2016-09-16 22:38:49', 'propertyset_update_from_element', 'modSnippet', '32'),
(905, 1, '2016-09-16 22:39:10', 'snippet_update', 'modSnippet', '32'),
(906, 1, '2016-09-16 22:39:10', 'propertyset_update_from_element', 'modSnippet', '32'),
(907, 1, '2016-09-16 22:39:33', 'snippet_update', 'modSnippet', '32'),
(908, 1, '2016-09-16 22:39:34', 'propertyset_update_from_element', 'modSnippet', '32'),
(909, 1, '2016-09-16 22:40:06', 'snippet_update', 'modSnippet', '32'),
(910, 1, '2016-09-16 22:40:06', 'propertyset_update_from_element', 'modSnippet', '32'),
(911, 1, '2016-09-16 22:40:21', 'snippet_update', 'modSnippet', '32'),
(912, 1, '2016-09-16 22:40:21', 'propertyset_update_from_element', 'modSnippet', '32'),
(913, 1, '2016-09-16 22:40:45', 'snippet_update', 'modSnippet', '32'),
(914, 1, '2016-09-16 22:40:46', 'propertyset_update_from_element', 'modSnippet', '32'),
(915, 1, '2016-09-16 22:42:19', 'snippet_update', 'modSnippet', '32'),
(916, 1, '2016-09-16 22:42:19', 'propertyset_update_from_element', 'modSnippet', '32'),
(917, 1, '2016-09-16 22:42:51', 'snippet_update', 'modSnippet', '32'),
(918, 1, '2016-09-16 22:42:51', 'propertyset_update_from_element', 'modSnippet', '32'),
(919, 1, '2016-09-16 22:48:35', 'snippet_update', 'modSnippet', '32'),
(920, 1, '2016-09-16 22:48:35', 'propertyset_update_from_element', 'modSnippet', '32'),
(921, 1, '2016-09-16 23:01:26', 'snippet_update', 'modSnippet', '32'),
(922, 1, '2016-09-16 23:01:26', 'propertyset_update_from_element', 'modSnippet', '32'),
(923, 1, '2016-09-16 23:01:34', 'snippet_update', 'modSnippet', '32'),
(924, 1, '2016-09-16 23:01:34', 'propertyset_update_from_element', 'modSnippet', '32'),
(925, 1, '2016-09-16 23:02:11', 'snippet_update', 'modSnippet', '32'),
(926, 1, '2016-09-16 23:02:11', 'propertyset_update_from_element', 'modSnippet', '32'),
(927, 1, '2016-09-16 23:02:31', 'snippet_update', 'modSnippet', '32'),
(928, 1, '2016-09-16 23:02:31', 'propertyset_update_from_element', 'modSnippet', '32'),
(929, 1, '2016-09-16 23:02:55', 'snippet_update', 'modSnippet', '32'),
(930, 1, '2016-09-16 23:02:55', 'propertyset_update_from_element', 'modSnippet', '32'),
(931, 1, '2016-09-16 23:03:16', 'snippet_update', 'modSnippet', '32'),
(932, 1, '2016-09-16 23:03:16', 'propertyset_update_from_element', 'modSnippet', '32'),
(933, 1, '2016-09-16 23:03:53', 'snippet_update', 'modSnippet', '32'),
(934, 1, '2016-09-16 23:03:53', 'propertyset_update_from_element', 'modSnippet', '32'),
(935, 1, '2016-09-16 23:04:29', 'snippet_update', 'modSnippet', '32'),
(936, 1, '2016-09-16 23:04:29', 'propertyset_update_from_element', 'modSnippet', '32'),
(937, 1, '2016-09-16 23:05:17', 'snippet_update', 'modSnippet', '32'),
(938, 1, '2016-09-16 23:05:17', 'propertyset_update_from_element', 'modSnippet', '32'),
(939, 1, '2016-09-16 23:05:30', 'snippet_update', 'modSnippet', '32'),
(940, 1, '2016-09-16 23:05:31', 'propertyset_update_from_element', 'modSnippet', '32'),
(941, 1, '2016-09-16 23:06:07', 'snippet_update', 'modSnippet', '32'),
(942, 1, '2016-09-16 23:06:07', 'propertyset_update_from_element', 'modSnippet', '32'),
(943, 1, '2016-09-16 23:06:46', 'snippet_update', 'modSnippet', '32'),
(944, 1, '2016-09-16 23:06:46', 'propertyset_update_from_element', 'modSnippet', '32'),
(945, 1, '2016-09-16 23:07:28', 'snippet_update', 'modSnippet', '32'),
(946, 1, '2016-09-16 23:07:28', 'propertyset_update_from_element', 'modSnippet', '32'),
(947, 1, '2016-09-16 23:08:08', 'snippet_update', 'modSnippet', '32'),
(948, 1, '2016-09-16 23:08:08', 'propertyset_update_from_element', 'modSnippet', '32'),
(949, 1, '2016-09-16 23:09:14', 'snippet_update', 'modSnippet', '32'),
(950, 1, '2016-09-16 23:09:14', 'propertyset_update_from_element', 'modSnippet', '32'),
(951, 1, '2016-09-16 23:10:10', 'snippet_update', 'modSnippet', '32'),
(952, 1, '2016-09-16 23:10:10', 'propertyset_update_from_element', 'modSnippet', '32'),
(953, 1, '2016-09-16 23:10:30', 'snippet_update', 'modSnippet', '32'),
(954, 1, '2016-09-16 23:10:31', 'propertyset_update_from_element', 'modSnippet', '32'),
(955, 1, '2016-09-16 23:10:45', 'snippet_update', 'modSnippet', '32'),
(956, 1, '2016-09-16 23:10:46', 'propertyset_update_from_element', 'modSnippet', '32'),
(957, 1, '2016-09-16 23:10:54', 'snippet_update', 'modSnippet', '32'),
(958, 1, '2016-09-16 23:10:54', 'propertyset_update_from_element', 'modSnippet', '32'),
(959, 1, '2016-09-16 23:12:44', 'snippet_update', 'modSnippet', '32'),
(960, 1, '2016-09-16 23:12:45', 'propertyset_update_from_element', 'modSnippet', '32'),
(961, 1, '2016-09-16 23:13:24', 'snippet_update', 'modSnippet', '32'),
(962, 1, '2016-09-16 23:13:25', 'propertyset_update_from_element', 'modSnippet', '32'),
(963, 1, '2016-09-16 23:13:36', 'snippet_update', 'modSnippet', '32'),
(964, 1, '2016-09-16 23:13:37', 'propertyset_update_from_element', 'modSnippet', '32'),
(965, 1, '2016-09-16 23:13:47', 'snippet_update', 'modSnippet', '32'),
(966, 1, '2016-09-16 23:13:47', 'propertyset_update_from_element', 'modSnippet', '32'),
(967, 1, '2016-09-16 23:14:56', 'snippet_update', 'modSnippet', '32'),
(968, 1, '2016-09-16 23:14:56', 'propertyset_update_from_element', 'modSnippet', '32'),
(969, 1, '2016-09-16 23:16:37', 'snippet_update', 'modSnippet', '32'),
(970, 1, '2016-09-16 23:16:37', 'propertyset_update_from_element', 'modSnippet', '32'),
(971, 1, '2016-09-16 23:17:10', 'snippet_update', 'modSnippet', '32'),
(972, 1, '2016-09-16 23:17:10', 'propertyset_update_from_element', 'modSnippet', '32'),
(973, 1, '2016-09-16 23:17:18', 'snippet_update', 'modSnippet', '32'),
(974, 1, '2016-09-16 23:17:19', 'propertyset_update_from_element', 'modSnippet', '32'),
(975, 1, '2016-09-16 23:17:40', 'snippet_update', 'modSnippet', '32'),
(976, 1, '2016-09-16 23:17:40', 'propertyset_update_from_element', 'modSnippet', '32'),
(977, 1, '2016-09-16 23:18:31', 'snippet_update', 'modSnippet', '32'),
(978, 1, '2016-09-16 23:18:31', 'propertyset_update_from_element', 'modSnippet', '32'),
(979, 1, '2016-09-16 23:18:41', 'snippet_update', 'modSnippet', '32'),
(980, 1, '2016-09-16 23:18:42', 'propertyset_update_from_element', 'modSnippet', '32'),
(981, 1, '2016-09-16 23:19:43', 'snippet_update', 'modSnippet', '32'),
(982, 1, '2016-09-16 23:19:43', 'propertyset_update_from_element', 'modSnippet', '32'),
(983, 1, '2016-09-16 23:19:58', 'snippet_update', 'modSnippet', '32'),
(984, 1, '2016-09-16 23:19:58', 'propertyset_update_from_element', 'modSnippet', '32'),
(985, 1, '2016-09-16 23:20:37', 'snippet_update', 'modSnippet', '32'),
(986, 1, '2016-09-16 23:20:37', 'propertyset_update_from_element', 'modSnippet', '32'),
(987, 1, '2016-09-16 23:20:43', 'snippet_update', 'modSnippet', '32'),
(988, 1, '2016-09-16 23:20:44', 'propertyset_update_from_element', 'modSnippet', '32'),
(989, 1, '2016-09-16 23:21:36', 'snippet_update', 'modSnippet', '32'),
(990, 1, '2016-09-16 23:21:36', 'propertyset_update_from_element', 'modSnippet', '32'),
(991, 1, '2016-09-16 23:29:07', 'snippet_update', 'modSnippet', '32'),
(992, 1, '2016-09-16 23:29:07', 'propertyset_update_from_element', 'modSnippet', '32'),
(993, 1, '2016-09-16 23:31:11', 'snippet_update', 'modSnippet', '32'),
(994, 1, '2016-09-16 23:31:11', 'propertyset_update_from_element', 'modSnippet', '32'),
(995, 1, '2016-09-16 23:31:33', 'snippet_update', 'modSnippet', '32'),
(996, 1, '2016-09-16 23:31:33', 'propertyset_update_from_element', 'modSnippet', '32'),
(997, 1, '2016-09-16 23:35:17', 'snippet_update', 'modSnippet', '32'),
(998, 1, '2016-09-16 23:35:18', 'propertyset_update_from_element', 'modSnippet', '32'),
(999, 1, '2016-09-16 23:35:34', 'snippet_update', 'modSnippet', '32'),
(1000, 1, '2016-09-16 23:35:34', 'propertyset_update_from_element', 'modSnippet', '32'),
(1001, 1, '2016-09-16 23:35:49', 'snippet_update', 'modSnippet', '32'),
(1002, 1, '2016-09-16 23:35:49', 'propertyset_update_from_element', 'modSnippet', '32'),
(1003, 1, '2016-09-16 23:36:46', 'snippet_update', 'modSnippet', '32'),
(1004, 1, '2016-09-16 23:36:46', 'propertyset_update_from_element', 'modSnippet', '32'),
(1005, 1, '2016-09-16 23:37:13', 'snippet_update', 'modSnippet', '32'),
(1006, 1, '2016-09-16 23:37:13', 'propertyset_update_from_element', 'modSnippet', '32'),
(1007, 1, '2016-09-16 23:38:21', 'snippet_update', 'modSnippet', '32'),
(1008, 1, '2016-09-16 23:38:22', 'propertyset_update_from_element', 'modSnippet', '32'),
(1009, 1, '2016-09-16 23:38:47', 'snippet_update', 'modSnippet', '32'),
(1010, 1, '2016-09-16 23:38:47', 'propertyset_update_from_element', 'modSnippet', '32'),
(1011, 1, '2016-09-16 23:39:02', 'snippet_update', 'modSnippet', '32'),
(1012, 1, '2016-09-16 23:39:03', 'propertyset_update_from_element', 'modSnippet', '32'),
(1013, 1, '2016-09-16 23:39:49', 'snippet_update', 'modSnippet', '32'),
(1014, 1, '2016-09-16 23:39:49', 'propertyset_update_from_element', 'modSnippet', '32'),
(1015, 1, '2016-09-16 23:40:21', 'snippet_update', 'modSnippet', '32'),
(1016, 1, '2016-09-16 23:40:21', 'propertyset_update_from_element', 'modSnippet', '32'),
(1017, 1, '2016-09-16 23:40:34', 'snippet_update', 'modSnippet', '32'),
(1018, 1, '2016-09-16 23:40:34', 'propertyset_update_from_element', 'modSnippet', '32'),
(1019, 1, '2016-09-16 23:52:06', 'snippet_update', 'modSnippet', '32'),
(1020, 1, '2016-09-16 23:52:06', 'propertyset_update_from_element', 'modSnippet', '32'),
(1021, 1, '2016-09-16 23:53:13', 'snippet_update', 'modSnippet', '32'),
(1022, 1, '2016-09-16 23:53:13', 'propertyset_update_from_element', 'modSnippet', '32'),
(1023, 1, '2016-09-16 23:53:26', 'snippet_update', 'modSnippet', '32'),
(1024, 1, '2016-09-16 23:53:26', 'propertyset_update_from_element', 'modSnippet', '32'),
(1025, 1, '2016-09-16 23:53:41', 'snippet_update', 'modSnippet', '32'),
(1026, 1, '2016-09-16 23:53:41', 'propertyset_update_from_element', 'modSnippet', '32'),
(1027, 1, '2016-09-16 23:54:05', 'snippet_update', 'modSnippet', '32'),
(1028, 1, '2016-09-16 23:54:06', 'propertyset_update_from_element', 'modSnippet', '32'),
(1029, 1, '2016-09-16 23:54:39', 'snippet_update', 'modSnippet', '32'),
(1030, 1, '2016-09-16 23:54:39', 'propertyset_update_from_element', 'modSnippet', '32'),
(1031, 1, '2016-09-16 23:58:14', 'snippet_update', 'modSnippet', '32'),
(1032, 1, '2016-09-16 23:58:14', 'propertyset_update_from_element', 'modSnippet', '32'),
(1033, 1, '2016-09-17 00:01:25', 'snippet_update', 'modSnippet', '32'),
(1034, 1, '2016-09-17 00:01:26', 'propertyset_update_from_element', 'modSnippet', '32'),
(1035, 1, '2016-09-17 00:01:43', 'snippet_update', 'modSnippet', '32'),
(1036, 1, '2016-09-17 00:01:43', 'propertyset_update_from_element', 'modSnippet', '32'),
(1037, 1, '2016-09-17 00:01:59', 'snippet_update', 'modSnippet', '32'),
(1038, 1, '2016-09-17 00:01:59', 'propertyset_update_from_element', 'modSnippet', '32'),
(1039, 1, '2016-09-17 00:02:15', 'snippet_update', 'modSnippet', '32'),
(1040, 1, '2016-09-17 00:02:15', 'propertyset_update_from_element', 'modSnippet', '32'),
(1041, 1, '2016-09-17 00:03:47', 'snippet_update', 'modSnippet', '32'),
(1042, 1, '2016-09-17 00:03:48', 'propertyset_update_from_element', 'modSnippet', '32'),
(1043, 1, '2016-09-17 00:08:29', 'template_update', 'modTemplate', '5'),
(1044, 1, '2016-09-17 00:08:29', 'propertyset_update_from_element', 'modTemplate', '5'),
(1045, 1, '2016-09-17 01:33:16', 'snippet_create', 'modSnippet', '33'),
(1046, 1, '2016-09-17 01:33:53', 'chunk_update', 'modChunk', '3'),
(1047, 1, '2016-09-17 01:33:54', 'propertyset_update_from_element', 'modChunk', '3'),
(1048, 1, '2016-09-17 01:37:23', 'snippet_update', 'modSnippet', '33'),
(1049, 1, '2016-09-17 01:37:23', 'propertyset_update_from_element', 'modSnippet', '33'),
(1050, 1, '2016-09-17 01:38:45', 'chunk_update', 'modChunk', '3'),
(1051, 1, '2016-09-17 01:38:45', 'propertyset_update_from_element', 'modChunk', '3'),
(1052, 1, '2016-09-17 01:38:52', 'snippet_update', 'modSnippet', '33'),
(1053, 1, '2016-09-17 01:38:52', 'propertyset_update_from_element', 'modSnippet', '33'),
(1054, 1, '2016-09-17 01:40:57', 'snippet_update', 'modSnippet', '33'),
(1055, 1, '2016-09-17 01:40:58', 'propertyset_update_from_element', 'modSnippet', '33'),
(1056, 1, '2016-09-17 01:41:13', 'snippet_update', 'modSnippet', '33'),
(1057, 1, '2016-09-17 01:41:13', 'propertyset_update_from_element', 'modSnippet', '33'),
(1058, 1, '2016-09-17 01:41:58', 'snippet_update', 'modSnippet', '33'),
(1059, 1, '2016-09-17 01:41:58', 'propertyset_update_from_element', 'modSnippet', '33'),
(1060, 1, '2016-09-17 01:43:01', 'snippet_update', 'modSnippet', '33'),
(1061, 1, '2016-09-17 01:43:01', 'propertyset_update_from_element', 'modSnippet', '33'),
(1062, 1, '2016-09-17 01:47:05', 'snippet_update', 'modSnippet', '33'),
(1063, 1, '2016-09-17 01:47:05', 'propertyset_update_from_element', 'modSnippet', '33'),
(1064, 1, '2016-09-17 01:48:08', 'snippet_update', 'modSnippet', '33'),
(1065, 1, '2016-09-17 01:48:08', 'propertyset_update_from_element', 'modSnippet', '33'),
(1066, 1, '2016-09-17 01:48:28', 'snippet_update', 'modSnippet', '33'),
(1067, 1, '2016-09-17 01:48:28', 'propertyset_update_from_element', 'modSnippet', '33'),
(1068, 1, '2016-09-17 01:50:43', 'snippet_update', 'modSnippet', '33'),
(1069, 1, '2016-09-17 01:50:43', 'propertyset_update_from_element', 'modSnippet', '33'),
(1070, 1, '2016-09-17 01:58:27', 'snippet_update', 'modSnippet', '33'),
(1071, 1, '2016-09-17 01:58:27', 'propertyset_update_from_element', 'modSnippet', '33'),
(1072, 1, '2016-09-17 02:07:33', 'chunk_update', 'modChunk', '1'),
(1073, 1, '2016-09-17 02:07:33', 'propertyset_update_from_element', 'modChunk', '1'),
(1074, 1, '2016-09-17 02:08:10', 'chunk_update', 'modChunk', '1'),
(1075, 1, '2016-09-17 02:08:11', 'propertyset_update_from_element', 'modChunk', '1'),
(1076, 1, '2016-09-17 02:10:14', 'chunk_update', 'modChunk', '1'),
(1077, 1, '2016-09-17 02:10:15', 'propertyset_update_from_element', 'modChunk', '1'),
(1078, 1, '2016-09-17 02:10:48', 'chunk_update', 'modChunk', '1'),
(1079, 1, '2016-09-17 02:10:48', 'propertyset_update_from_element', 'modChunk', '1'),
(1080, 1, '2016-09-17 02:13:27', 'chunk_create', 'modChunk', '5'),
(1081, 1, '2016-09-17 02:13:39', 'chunk_update', 'modChunk', '1'),
(1082, 1, '2016-09-17 02:13:40', 'propertyset_update_from_element', 'modChunk', '1'),
(1083, 1, '2016-09-17 02:14:46', 'chunk_update', 'modChunk', '1'),
(1084, 1, '2016-09-17 02:14:46', 'propertyset_update_from_element', 'modChunk', '1'),
(1085, 1, '2016-09-17 02:14:53', 'chunk_update', 'modChunk', '5'),
(1086, 1, '2016-09-17 02:14:53', 'propertyset_update_from_element', 'modChunk', '5'),
(1087, 1, '2016-09-17 02:15:48', 'chunk_duplicate', 'modChunk', '6'),
(1088, 1, '2016-09-17 02:16:20', 'chunk_update', 'modChunk', '6'),
(1089, 1, '2016-09-17 02:16:20', 'propertyset_update_from_element', 'modChunk', '6'),
(1090, 1, '2016-09-17 02:16:32', 'chunk_update', 'modChunk', '1'),
(1091, 1, '2016-09-17 02:16:32', 'propertyset_update_from_element', 'modChunk', '1'),
(1092, 1, '2016-09-17 02:17:13', 'chunk_update', 'modChunk', '1'),
(1093, 1, '2016-09-17 02:17:14', 'propertyset_update_from_element', 'modChunk', '1'),
(1094, 1, '2016-09-17 02:19:13', 'chunk_update', 'modChunk', '1'),
(1095, 1, '2016-09-17 02:19:13', 'propertyset_update_from_element', 'modChunk', '1'),
(1096, 1, '2016-09-17 02:19:24', 'chunk_update', 'modChunk', '1'),
(1097, 1, '2016-09-17 02:19:24', 'propertyset_update_from_element', 'modChunk', '1'),
(1098, 1, '2016-09-17 02:21:08', 'chunk_update', 'modChunk', '1'),
(1099, 1, '2016-09-17 02:21:08', 'propertyset_update_from_element', 'modChunk', '1'),
(1100, 1, '2016-09-17 02:23:21', 'chunk_update', 'modChunk', '1'),
(1101, 1, '2016-09-17 02:23:21', 'propertyset_update_from_element', 'modChunk', '1'),
(1102, 1, '2016-09-17 02:24:20', 'chunk_update', 'modChunk', '1'),
(1103, 1, '2016-09-17 02:24:21', 'propertyset_update_from_element', 'modChunk', '1'),
(1104, 1, '2016-09-17 02:24:32', 'chunk_update', 'modChunk', '1'),
(1105, 1, '2016-09-17 02:24:32', 'propertyset_update_from_element', 'modChunk', '1'),
(1106, 1, '2016-09-17 02:25:55', 'chunk_update', 'modChunk', '1'),
(1107, 1, '2016-09-17 02:25:55', 'propertyset_update_from_element', 'modChunk', '1'),
(1108, 1, '2016-09-17 02:26:14', 'chunk_delete', 'modChunk', '6'),
(1109, 1, '2016-09-17 02:26:23', 'chunk_delete', 'modChunk', '5'),
(1110, 1, '2016-09-17 02:26:57', 'chunk_update', 'modChunk', '3'),
(1111, 1, '2016-09-17 02:26:57', 'propertyset_update_from_element', 'modChunk', '3'),
(1112, 1, '2016-09-17 02:27:08', 'chunk_update', 'modChunk', '3'),
(1113, 1, '2016-09-17 02:27:08', 'propertyset_update_from_element', 'modChunk', '3'),
(1114, 1, '2016-09-17 02:27:15', 'chunk_update', 'modChunk', '3'),
(1115, 1, '2016-09-17 02:27:15', 'propertyset_update_from_element', 'modChunk', '3'),
(1116, 1, '2016-09-17 02:27:28', 'chunk_update', 'modChunk', '3'),
(1117, 1, '2016-09-17 02:27:28', 'propertyset_update_from_element', 'modChunk', '3'),
(1118, 1, '2016-09-17 02:29:20', 'snippet_update', 'modSnippet', '33'),
(1119, 1, '2016-09-17 02:29:21', 'propertyset_update_from_element', 'modSnippet', '33'),
(1120, 1, '2016-09-17 13:20:07', 'snippet_update', 'modSnippet', '33'),
(1121, 1, '2016-09-17 13:20:08', 'propertyset_update_from_element', 'modSnippet', '33'),
(1122, 1, '2016-09-17 13:22:22', 'chunk_update', 'modChunk', '3'),
(1123, 1, '2016-09-17 13:22:22', 'propertyset_update_from_element', 'modChunk', '3'),
(1124, 1, '2016-09-17 13:23:47', 'snippet_update', 'modSnippet', '33'),
(1125, 1, '2016-09-17 13:23:47', 'propertyset_update_from_element', 'modSnippet', '33'),
(1126, 1, '2016-09-17 13:24:48', 'snippet_update', 'modSnippet', '33'),
(1127, 1, '2016-09-17 13:24:49', 'propertyset_update_from_element', 'modSnippet', '33'),
(1128, 1, '2016-09-17 13:25:50', 'snippet_update', 'modSnippet', '33'),
(1129, 1, '2016-09-17 13:25:50', 'propertyset_update_from_element', 'modSnippet', '33'),
(1130, 1, '2016-09-17 13:26:27', 'snippet_update', 'modSnippet', '33'),
(1131, 1, '2016-09-17 13:26:27', 'propertyset_update_from_element', 'modSnippet', '33'),
(1132, 1, '2016-09-17 13:27:37', 'snippet_update', 'modSnippet', '33'),
(1133, 1, '2016-09-17 13:27:37', 'propertyset_update_from_element', 'modSnippet', '33'),
(1134, 1, '2016-09-17 13:27:58', 'snippet_update', 'modSnippet', '33'),
(1135, 1, '2016-09-17 13:27:58', 'propertyset_update_from_element', 'modSnippet', '33'),
(1136, 1, '2016-09-17 13:28:26', 'snippet_update', 'modSnippet', '33'),
(1137, 1, '2016-09-17 13:28:27', 'propertyset_update_from_element', 'modSnippet', '33'),
(1138, 1, '2016-09-17 13:29:50', 'snippet_update', 'modSnippet', '33'),
(1139, 1, '2016-09-17 13:29:51', 'propertyset_update_from_element', 'modSnippet', '33'),
(1140, 1, '2016-09-17 13:30:24', 'snippet_update', 'modSnippet', '33'),
(1141, 1, '2016-09-17 13:30:24', 'propertyset_update_from_element', 'modSnippet', '33'),
(1142, 1, '2016-09-17 13:30:52', 'snippet_update', 'modSnippet', '33'),
(1143, 1, '2016-09-17 13:30:52', 'propertyset_update_from_element', 'modSnippet', '33'),
(1144, 1, '2016-09-17 13:32:44', 'snippet_update', 'modSnippet', '33'),
(1145, 1, '2016-09-17 13:32:44', 'propertyset_update_from_element', 'modSnippet', '33'),
(1146, 1, '2016-09-17 13:33:22', 'snippet_update', 'modSnippet', '33'),
(1147, 1, '2016-09-17 13:33:23', 'propertyset_update_from_element', 'modSnippet', '33'),
(1148, 1, '2016-09-17 13:34:46', 'snippet_update', 'modSnippet', '33'),
(1149, 1, '2016-09-17 13:34:46', 'propertyset_update_from_element', 'modSnippet', '33'),
(1150, 1, '2016-09-17 13:35:44', 'snippet_update', 'modSnippet', '33'),
(1151, 1, '2016-09-17 13:35:44', 'propertyset_update_from_element', 'modSnippet', '33'),
(1152, 1, '2016-09-17 13:37:13', 'snippet_update', 'modSnippet', '33'),
(1153, 1, '2016-09-17 13:37:13', 'propertyset_update_from_element', 'modSnippet', '33'),
(1154, 1, '2016-09-17 13:38:14', 'snippet_update', 'modSnippet', '33'),
(1155, 1, '2016-09-17 13:38:14', 'propertyset_update_from_element', 'modSnippet', '33'),
(1156, 1, '2016-09-17 13:38:42', 'snippet_update', 'modSnippet', '33'),
(1157, 1, '2016-09-17 13:38:42', 'propertyset_update_from_element', 'modSnippet', '33'),
(1158, 1, '2016-09-17 13:39:01', 'snippet_update', 'modSnippet', '33'),
(1159, 1, '2016-09-17 13:39:02', 'propertyset_update_from_element', 'modSnippet', '33'),
(1160, 1, '2016-09-17 13:39:07', 'snippet_update', 'modSnippet', '33'),
(1161, 1, '2016-09-17 13:39:07', 'propertyset_update_from_element', 'modSnippet', '33'),
(1162, 1, '2016-09-17 13:39:51', 'snippet_update', 'modSnippet', '33'),
(1163, 1, '2016-09-17 13:39:51', 'propertyset_update_from_element', 'modSnippet', '33'),
(1164, 1, '2016-09-17 13:40:20', 'snippet_update', 'modSnippet', '33'),
(1165, 1, '2016-09-17 13:40:20', 'propertyset_update_from_element', 'modSnippet', '33'),
(1166, 1, '2016-09-17 13:42:10', 'snippet_update', 'modSnippet', '33'),
(1167, 1, '2016-09-17 13:42:10', 'propertyset_update_from_element', 'modSnippet', '33'),
(1168, 1, '2016-09-17 13:43:15', 'snippet_update', 'modSnippet', '33'),
(1169, 1, '2016-09-17 13:43:15', 'propertyset_update_from_element', 'modSnippet', '33'),
(1170, 1, '2016-09-17 13:45:30', 'snippet_update', 'modSnippet', '33'),
(1171, 1, '2016-09-17 13:45:30', 'propertyset_update_from_element', 'modSnippet', '33'),
(1172, 1, '2016-09-17 13:45:58', 'snippet_update', 'modSnippet', '33'),
(1173, 1, '2016-09-17 13:45:59', 'propertyset_update_from_element', 'modSnippet', '33'),
(1174, 1, '2016-09-17 13:46:29', 'snippet_update', 'modSnippet', '33'),
(1175, 1, '2016-09-17 13:46:29', 'propertyset_update_from_element', 'modSnippet', '33'),
(1176, 1, '2016-09-17 13:48:31', 'chunk_update', 'modChunk', '3'),
(1177, 1, '2016-09-17 13:48:31', 'propertyset_update_from_element', 'modChunk', '3'),
(1178, 1, '2016-09-17 13:49:40', 'snippet_delete', 'modSnippet', '33'),
(1179, 1, '2016-09-17 13:51:37', 'chunk_create', 'modChunk', '7'),
(1180, 1, '2016-09-17 13:52:25', 'chunk_duplicate', 'modChunk', '8'),
(1181, 1, '2016-09-17 13:53:02', 'chunk_update', 'modChunk', '3'),
(1182, 1, '2016-09-17 13:53:02', 'propertyset_update_from_element', 'modChunk', '3'),
(1183, 1, '2016-09-17 13:53:58', 'chunk_update', 'modChunk', '8'),
(1184, 1, '2016-09-17 13:53:58', 'propertyset_update_from_element', 'modChunk', '8'),
(1185, 1, '2016-09-17 13:55:09', 'chunk_update', 'modChunk', '8'),
(1186, 1, '2016-09-17 13:55:09', 'propertyset_update_from_element', 'modChunk', '8'),
(1187, 1, '2016-09-17 13:56:17', 'chunk_update', 'modChunk', '8'),
(1188, 1, '2016-09-17 13:56:17', 'propertyset_update_from_element', 'modChunk', '8'),
(1189, 1, '2016-09-17 13:56:24', 'chunk_update', 'modChunk', '3'),
(1190, 1, '2016-09-17 13:56:24', 'propertyset_update_from_element', 'modChunk', '3'),
(1191, 1, '2016-09-17 13:57:42', 'chunk_duplicate', 'modChunk', '9'),
(1192, 1, '2016-09-17 13:57:53', 'chunk_update', 'modChunk', '9'),
(1193, 1, '2016-09-17 13:57:53', 'propertyset_update_from_element', 'modChunk', '9'),
(1194, 1, '2016-09-17 13:57:58', 'chunk_update', 'modChunk', '3'),
(1195, 1, '2016-09-17 13:57:58', 'propertyset_update_from_element', 'modChunk', '3'),
(1196, 1, '2016-09-17 13:59:26', 'chunk_update', 'modChunk', '9'),
(1197, 1, '2016-09-17 13:59:26', 'propertyset_update_from_element', 'modChunk', '9'),
(1198, 1, '2016-09-17 13:59:57', 'chunk_update', 'modChunk', '9'),
(1199, 1, '2016-09-17 13:59:58', 'propertyset_update_from_element', 'modChunk', '9'),
(1200, 1, '2016-09-17 14:01:59', 'chunk_update', 'modChunk', '3'),
(1201, 1, '2016-09-17 14:01:59', 'propertyset_update_from_element', 'modChunk', '3'),
(1202, 1, '2016-09-17 14:02:01', 'chunk_update', 'modChunk', '8'),
(1203, 1, '2016-09-17 14:02:01', 'propertyset_update_from_element', 'modChunk', '8'),
(1204, 1, '2016-09-17 14:03:11', 'chunk_update', 'modChunk', '3'),
(1205, 1, '2016-09-17 14:03:12', 'propertyset_update_from_element', 'modChunk', '3'),
(1206, 1, '2016-09-17 14:03:49', 'chunk_update', 'modChunk', '3'),
(1207, 1, '2016-09-17 14:03:49', 'propertyset_update_from_element', 'modChunk', '3'),
(1208, 1, '2016-09-17 14:04:20', 'chunk_update', 'modChunk', '3'),
(1209, 1, '2016-09-17 14:04:20', 'propertyset_update_from_element', 'modChunk', '3'),
(1210, 1, '2016-09-17 14:14:10', 'template_create', 'modTemplate', '6'),
(1211, 1, '2016-09-17 14:14:27', 'resource_create', 'modDocument', '20'),
(1212, 1, '2016-09-17 14:15:42', 'chunk_update', 'modChunk', '1'),
(1213, 1, '2016-09-17 14:15:42', 'propertyset_update_from_element', 'modChunk', '1'),
(1214, 1, '2016-09-17 14:16:21', 'chunk_update', 'modChunk', '1'),
(1215, 1, '2016-09-17 14:16:21', 'propertyset_update_from_element', 'modChunk', '1'),
(1216, 1, '2016-09-17 14:18:17', 'snippet_create', 'modSnippet', '34'),
(1217, 1, '2016-09-17 14:21:39', 'snippet_create', 'modSnippet', '35'),
(1218, 1, '2016-09-17 14:23:59', 'snippet_update', 'modSnippet', '35'),
(1219, 1, '2016-09-17 14:24:00', 'propertyset_update_from_element', 'modSnippet', '35'),
(1220, 1, '2016-09-17 14:30:14', 'chunk_update', 'modChunk', '1'),
(1221, 1, '2016-09-17 14:30:14', 'propertyset_update_from_element', 'modChunk', '1'),
(1222, 1, '2016-09-17 14:30:29', 'chunk_update', 'modChunk', '1'),
(1223, 1, '2016-09-17 14:30:29', 'propertyset_update_from_element', 'modChunk', '1'),
(1224, 1, '2016-09-17 14:30:47', 'chunk_update', 'modChunk', '1'),
(1225, 1, '2016-09-17 14:30:48', 'propertyset_update_from_element', 'modChunk', '1'),
(1226, 1, '2016-09-17 15:03:26', 'chunk_update', 'modChunk', '3'),
(1227, 1, '2016-09-17 15:03:27', 'propertyset_update_from_element', 'modChunk', '3'),
(1228, 1, '2016-09-17 15:04:36', 'chunk_update', 'modChunk', '3'),
(1229, 1, '2016-09-17 15:04:36', 'propertyset_update_from_element', 'modChunk', '3'),
(1230, 1, '2016-09-17 15:07:10', 'chunk_update', 'modChunk', '3'),
(1231, 1, '2016-09-17 15:07:10', 'propertyset_update_from_element', 'modChunk', '3'),
(1232, 1, '2016-09-17 15:08:54', 'publish_resource', 'modDocument', '20'),
(1233, 1, '2016-09-17 15:08:57', 'chunk_update', 'modChunk', '3'),
(1234, 1, '2016-09-17 15:08:57', 'propertyset_update_from_element', 'modChunk', '3'),
(1235, 1, '2016-09-17 15:11:49', 'chunk_update', 'modChunk', '3'),
(1236, 1, '2016-09-17 15:11:49', 'propertyset_update_from_element', 'modChunk', '3'),
(1237, 1, '2016-09-17 15:12:55', 'chunk_update', 'modChunk', '3'),
(1238, 1, '2016-09-17 15:12:56', 'propertyset_update_from_element', 'modChunk', '3'),
(1239, 1, '2016-09-17 15:15:44', 'chunk_create', 'modChunk', '10'),
(1240, 1, '2016-09-17 15:16:02', 'chunk_update', 'modChunk', '3'),
(1241, 1, '2016-09-17 15:16:02', 'propertyset_update_from_element', 'modChunk', '3'),
(1242, 1, '2016-09-17 15:18:27', 'chunk_update', 'modChunk', '10'),
(1243, 1, '2016-09-17 15:18:27', 'propertyset_update_from_element', 'modChunk', '10'),
(1244, 1, '2016-09-17 15:18:55', 'chunk_update', 'modChunk', '10'),
(1245, 1, '2016-09-17 15:18:55', 'propertyset_update_from_element', 'modChunk', '10'),
(1246, 1, '2016-09-17 15:25:07', 'setting_update', 'modSystemSetting', 'locale'),
(1247, 1, '2016-09-17 15:25:37', 'chunk_update', 'modChunk', '10'),
(1248, 1, '2016-09-17 15:25:38', 'propertyset_update_from_element', 'modChunk', '10'),
(1249, 1, '2016-09-17 15:26:27', 'resource_update', 'modResource', '3'),
(1250, 1, '2016-09-17 15:27:32', 'chunk_update', 'modChunk', '10'),
(1251, 1, '2016-09-17 15:27:32', 'propertyset_update_from_element', 'modChunk', '10'),
(1252, 1, '2016-09-17 15:38:04', 'template_create', 'modTemplate', '7'),
(1253, 1, '2016-09-17 15:39:02', 'resource_create', 'modDocument', '21'),
(1254, 1, '2016-09-17 15:39:18', 'publish_resource', 'modDocument', '21'),
(1255, 1, '2016-09-17 15:40:28', 'chunk_update', 'modChunk', '3'),
(1256, 1, '2016-09-17 15:40:28', 'propertyset_update_from_element', 'modChunk', '3'),
(1257, 1, '2016-09-17 15:40:51', 'chunk_update', 'modChunk', '3'),
(1258, 1, '2016-09-17 15:40:52', 'propertyset_update_from_element', 'modChunk', '3'),
(1259, 1, '2016-09-17 15:41:01', 'chunk_update', 'modChunk', '10'),
(1260, 1, '2016-09-17 15:41:01', 'propertyset_update_from_element', 'modChunk', '10'),
(1261, 1, '2016-09-17 15:41:40', 'chunk_update', 'modChunk', '3'),
(1262, 1, '2016-09-17 15:41:40', 'propertyset_update_from_element', 'modChunk', '3'),
(1263, 1, '2016-09-17 15:42:22', 'chunk_update', 'modChunk', '10'),
(1264, 1, '2016-09-17 15:42:23', 'propertyset_update_from_element', 'modChunk', '10'),
(1265, 1, '2016-09-17 15:42:54', 'chunk_update', 'modChunk', '10'),
(1266, 1, '2016-09-17 15:42:54', 'propertyset_update_from_element', 'modChunk', '10'),
(1267, 1, '2016-09-17 15:43:21', 'chunk_update', 'modChunk', '3'),
(1268, 1, '2016-09-17 15:43:22', 'propertyset_update_from_element', 'modChunk', '3'),
(1269, 1, '2016-09-17 15:44:04', 'chunk_update', 'modChunk', '10'),
(1270, 1, '2016-09-17 15:44:05', 'propertyset_update_from_element', 'modChunk', '10'),
(1271, 1, '2016-09-17 15:44:16', 'chunk_update', 'modChunk', '10'),
(1272, 1, '2016-09-17 15:44:16', 'propertyset_update_from_element', 'modChunk', '10'),
(1273, 1, '2016-09-17 15:44:18', 'chunk_update', 'modChunk', '10'),
(1274, 1, '2016-09-17 15:44:18', 'propertyset_update_from_element', 'modChunk', '10'),
(1275, 1, '2016-09-17 15:44:30', 'chunk_update', 'modChunk', '10'),
(1276, 1, '2016-09-17 15:44:30', 'propertyset_update_from_element', 'modChunk', '10'),
(1277, 1, '2016-09-17 15:45:04', 'chunk_update', 'modChunk', '3'),
(1278, 1, '2016-09-17 15:45:04', 'propertyset_update_from_element', 'modChunk', '3'),
(1279, 1, '2016-09-17 15:45:17', 'chunk_update', 'modChunk', '3'),
(1280, 1, '2016-09-17 15:45:17', 'propertyset_update_from_element', 'modChunk', '3'),
(1281, 1, '2016-09-17 15:45:29', 'chunk_update', 'modChunk', '3'),
(1282, 1, '2016-09-17 15:45:29', 'propertyset_update_from_element', 'modChunk', '3'),
(1283, 1, '2016-09-17 15:46:28', 'chunk_update', 'modChunk', '3'),
(1284, 1, '2016-09-17 15:46:28', 'propertyset_update_from_element', 'modChunk', '3'),
(1285, 1, '2016-09-17 15:47:09', 'template_update', 'modTemplate', '7'),
(1286, 1, '2016-09-17 15:47:09', 'propertyset_update_from_element', 'modTemplate', '7'),
(1287, 1, '2016-09-17 15:48:18', 'template_update', 'modTemplate', '7'),
(1288, 1, '2016-09-17 15:48:19', 'propertyset_update_from_element', 'modTemplate', '7'),
(1289, 1, '2016-09-17 15:51:01', 'chunk_update', 'modChunk', '10'),
(1290, 1, '2016-09-17 15:51:01', 'propertyset_update_from_element', 'modChunk', '10'),
(1291, 1, '2016-09-17 15:51:29', 'chunk_update', 'modChunk', '3'),
(1292, 1, '2016-09-17 15:51:29', 'propertyset_update_from_element', 'modChunk', '3'),
(1293, 1, '2016-09-17 15:52:08', 'chunk_update', 'modChunk', '10'),
(1294, 1, '2016-09-17 15:52:09', 'propertyset_update_from_element', 'modChunk', '10'),
(1295, 1, '2016-09-17 15:53:02', 'chunk_update', 'modChunk', '10'),
(1296, 1, '2016-09-17 15:53:02', 'propertyset_update_from_element', 'modChunk', '10'),
(1297, 1, '2016-09-17 15:53:59', 'chunk_update', 'modChunk', '10'),
(1298, 1, '2016-09-17 15:53:59', 'propertyset_update_from_element', 'modChunk', '10'),
(1299, 1, '2016-09-17 15:54:38', 'chunk_update', 'modChunk', '3'),
(1300, 1, '2016-09-17 15:54:39', 'propertyset_update_from_element', 'modChunk', '3'),
(1301, 1, '2016-09-17 15:55:34', 'chunk_update', 'modChunk', '3'),
(1302, 1, '2016-09-17 15:55:35', 'propertyset_update_from_element', 'modChunk', '3'),
(1303, 1, '2016-09-17 15:55:53', 'chunk_update', 'modChunk', '3'),
(1304, 1, '2016-09-17 15:55:53', 'propertyset_update_from_element', 'modChunk', '3'),
(1305, 1, '2016-09-17 15:57:32', 'setting_update', 'modSystemSetting', 'friendly_urls');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1306, 1, '2016-09-17 15:57:37', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(1307, 1, '2016-09-17 15:57:56', 'setting_update', 'modSystemSetting', 'friendly_urls_strict'),
(1308, 1, '2016-09-17 15:57:59', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(1309, 1, '2016-09-17 16:01:31', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(1310, 1, '2016-09-17 16:02:43', 'template_update', 'modTemplate', '7'),
(1311, 1, '2016-09-17 16:02:43', 'propertyset_update_from_element', 'modTemplate', '7'),
(1312, 1, '2016-09-17 16:04:41', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(1313, 1, '2016-09-17 16:05:43', 'template_update', 'modTemplate', '7'),
(1314, 1, '2016-09-17 16:05:43', 'propertyset_update_from_element', 'modTemplate', '7'),
(1315, 1, '2016-09-17 16:10:37', 'snippet_create', 'modSnippet', '41'),
(1316, 1, '2016-09-17 16:11:41', 'snippet_update', 'modSnippet', '41'),
(1317, 1, '2016-09-17 16:11:42', 'propertyset_update_from_element', 'modSnippet', '41'),
(1318, 1, '2016-09-17 16:18:01', 'snippet_duplicate', 'modSnippet', '42'),
(1319, 1, '2016-09-17 16:22:21', 'snippet_update', 'modSnippet', '42'),
(1320, 1, '2016-09-17 16:22:21', 'propertyset_update_from_element', 'modSnippet', '42'),
(1321, 1, '2016-09-17 16:25:42', 'snippet_update', 'modSnippet', '42'),
(1322, 1, '2016-09-17 16:25:42', 'propertyset_update_from_element', 'modSnippet', '42'),
(1323, 1, '2016-09-17 16:27:08', 'snippet_update', 'modSnippet', '42'),
(1324, 1, '2016-09-17 16:27:08', 'propertyset_update_from_element', 'modSnippet', '42'),
(1325, 1, '2016-09-17 16:28:21', 'snippet_update', 'modSnippet', '42'),
(1326, 1, '2016-09-17 16:28:22', 'propertyset_update_from_element', 'modSnippet', '42'),
(1327, 1, '2016-09-17 16:29:22', 'snippet_update', 'modSnippet', '42'),
(1328, 1, '2016-09-17 16:29:22', 'propertyset_update_from_element', 'modSnippet', '42'),
(1329, 1, '2016-09-17 16:29:50', 'snippet_update', 'modSnippet', '42'),
(1330, 1, '2016-09-17 16:29:51', 'propertyset_update_from_element', 'modSnippet', '42');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE IF NOT EXISTS `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'modTemplateVar', 1, 'web'),
(1, 'modTemplateVar', 2, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE IF NOT EXISTS `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE IF NOT EXISTS `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url\n    ,params: {\n        action: ''system/remove_locks''\n    }\n    ,listeners: {\n        ''success'': {fn:function() {\n            var tree = Ext.getCmp("modx-resource-tree");\n            if (tree && tree.rendered) {\n                tree.refresh();\n            }\n         },scope:this}\n    }\n});', 'remove_locks', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/access/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: ''security/flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id="user-avatar">{$userImage}</span> <span id="user-username">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('admin', 'usernav', '', '', '<i class="icon-gear icon icon-large"></i>', 6, '', '', 'settings', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('about', 'usernav', 'help', '', '<i class="icon-question-circle icon icon-large"></i>', 7, '', '', 'help', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE IF NOT EXISTS `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('taglister', '{core_path}components/taglister/', NULL),
('translit', '{core_path}components/translit/', ''),
('ace', '{core_path}components/ace/', ''),
('wayfinder', '{core_path}components/wayfinder/', ''),
('archivist', '{core_path}components/archivist/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE IF NOT EXISTS `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE IF NOT EXISTS `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE IF NOT EXISTS `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}'),
(2, 'resource_reload', 'a:1:{s:9:"directory";s:15:"resource_reload";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE IF NOT EXISTS `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2016-09-14 16:50:46', NULL, NULL),
(2, 2, '/resourcereload/', '2016-09-14 19:38:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE IF NOT EXISTS `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('g3shs1cd4ojqope82sgjb3nnm5', 1473890707, 'modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx57d94a172babc1.23244672_157d94a6a08b1f5.99801647";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:95:{i:0;s:23:"57d955b6f0be25.00283549";i:1;s:23:"57d955f54ffe07.57108234";i:2;s:23:"57d9560b487c80.36453250";i:3;s:23:"57d956120b8ba8.27917882";i:4;s:23:"57d9562120ff19.79983408";i:5;s:23:"57d978279e4ae2.52946426";i:6;s:23:"57d97bafbcfbf1.00974178";i:7;s:23:"57d97c778d3cb3.02750753";i:8;s:23:"57d97d1b5144a8.64850599";i:9;s:23:"57d97e6bc21ee0.81442517";i:10;s:23:"57d97eff5b3370.03380822";i:11;s:23:"57d97f3e709701.51230879";i:12;s:23:"57d97f47e183d6.38334228";i:13;s:23:"57d97f55d215a1.56720999";i:14;s:23:"57d97f8bcfaa22.20972395";i:15;s:23:"57d97fa18d8fd7.30536344";i:16;s:23:"57d97fb4274845.86823145";i:17;s:23:"57d97febed1540.93980603";i:18;s:23:"57d98009a20ee0.30303039";i:19;s:23:"57d98019765577.90501732";i:20;s:23:"57d9803401c2c6.72929499";i:21;s:23:"57d9803d4dd198.38537612";i:22;s:23:"57d9805fcef687.19848923";i:23;s:23:"57d980689d8674.30938238";i:24;s:23:"57d98080c75dd1.45147800";i:25;s:23:"57d9808d14d3b2.52532944";i:26;s:23:"57d980ae0c4106.35354156";i:27;s:23:"57d9817446afb7.19517134";i:28;s:23:"57d98950d60653.30155486";i:29;s:23:"57d98965d595e6.98625807";i:30;s:23:"57d98983ef6588.84049510";i:31;s:23:"57d9898d5346f9.01656057";i:32;s:23:"57d98996765125.55916585";i:33;s:23:"57d989a370e202.98681491";i:34;s:23:"57d989bf743420.90092654";i:35;s:23:"57d989c7291da2.89507473";i:36;s:23:"57d989e81f1401.15816940";i:37;s:23:"57d989f02d59c6.71736874";i:38;s:23:"57d98a1a4f2472.21848777";i:39;s:23:"57d98a3c5d4a39.81010360";i:40;s:23:"57d98b7d6d7df8.04417717";i:41;s:23:"57d98b97ce8a40.74047988";i:42;s:23:"57d98ba0b1db11.84367027";i:43;s:23:"57d98bb703d9b8.57637641";i:44;s:23:"57d98bccc96bb0.24048260";i:45;s:23:"57d98be59d16e3.70782940";i:46;s:23:"57d98bf2319959.91163784";i:47;s:23:"57d98c0ca0cee1.38594604";i:48;s:23:"57d98c20e052d2.63432285";i:49;s:23:"57d98c40bed539.25585607";i:50;s:23:"57d98c9fbb46c4.79066025";i:51;s:23:"57d98d1787f873.07890016";i:52;s:23:"57d98dd6775987.05155813";i:53;s:23:"57d98de7080226.58344005";i:54;s:23:"57d98ded665601.98760424";i:55;s:23:"57d98e21a68ad4.30928646";i:56;s:23:"57d98e2b4a25b6.17953579";i:57;s:23:"57d98e500dde92.30502087";i:58;s:23:"57d98f00474328.76777781";i:59;s:23:"57d99426456722.55493983";i:60;s:23:"57d994490918e2.68428152";i:61;s:23:"57d994539a0549.00272250";i:62;s:23:"57d99573807ff5.21920141";i:63;s:23:"57d9958c4b9f83.73531968";i:64;s:23:"57d99598291ef7.67805840";i:65;s:23:"57d995a58808c7.95545114";i:66;s:23:"57d995b9302c86.42487228";i:67;s:23:"57d995c3dbf444.33884963";i:68;s:23:"57d995ce1bb6c9.43664480";i:69;s:23:"57d995d55cc1c1.19948258";i:70;s:23:"57d9967933d4e7.94859702";i:71;s:23:"57d9969beab0a4.01192217";i:72;s:23:"57d996b4d02ea0.03703986";i:73;s:23:"57d996c019f759.91691244";i:74;s:23:"57d996cd442475.11412462";i:75;s:23:"57d996d0928ed2.46201903";i:76;s:23:"57d996de4134a4.00999516";i:77;s:23:"57d9a5d4d10734.11489681";i:78;s:23:"57d9ac22351724.60174272";i:79;s:23:"57d9ac23609061.72289775";i:80;s:23:"57d9ac362c1786.89165760";i:81;s:23:"57d9ac3c7d3c21.22663474";i:82;s:23:"57d9ac4f05dd53.65948388";i:83;s:23:"57d9ae665bf423.73103185";i:84;s:23:"57d9ae7a300a75.28333256";i:85;s:23:"57d9ae80ea2ba7.92314273";i:86;s:23:"57d9b83e051155.58658810";i:87;s:23:"57d9b86bd113b3.29269963";i:88;s:23:"57d9b87148ec24.63997686";i:89;s:23:"57d9b875887568.61995037";i:90;s:23:"57d9b8be192ab5.35686638";i:91;s:23:"57d9b8c359b185.92041619";i:92;s:23:"57d9b8c7355ec8.79988606";i:93;s:23:"57d9bede8fbfb9.99839814";i:94;s:23:"57d9c9933f5e19.22058614";}modx.user.1.userGroups|a:1:{i:0;i:1;}'),
('g624bc07ab2t5369idqs2uepo6', 1474115944, 'modx.user.0.resourceGroups|a:1:{s:3:"web";a:0:{}}modx.user.0.attributes|a:1:{s:3:"web";a:5:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}s:28:"sources.modAccessMediaSource";a:0:{}s:18:"modAccessNamespace";a:0:{}}}modx.user.contextTokens|a:1:{s:3:"mgr";i:1;}modx.mgr.user.token|s:52:"modx57d94a172babc1.23244672_157da8c9a422264.66773256";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:43:{i:0;s:23:"57da8ca344b3a8.90722292";i:1;s:23:"57da8cb72adb43.20186123";i:2;s:23:"57da8cc099d408.22957556";i:3;s:23:"57da8d31ab46c1.27350344";i:4;s:23:"57da92b402fb53.39569097";i:5;s:23:"57daaf151c4297.20848878";i:6;s:23:"57dabc84d6b886.51684498";i:7;s:23:"57dabcb128c756.95844476";i:8;s:23:"57dabcbebceb09.52118481";i:9;s:23:"57dabcc4845ba7.76888007";i:10;s:23:"57dabcc8f1cb89.26161223";i:11;s:23:"57dabcd3c60033.88860141";i:12;s:23:"57dabcdf3ea999.13890251";i:13;s:23:"57dabceab308a4.36002130";i:14;s:23:"57dabcfd2b0f95.37278726";i:15;s:23:"57dabd79d86ee1.60292403";i:16;s:23:"57dabe3467cdb3.42144136";i:17;s:23:"57dabe49b0dad4.07804093";i:18;s:23:"57dabe5bce2928.43170652";i:19;s:23:"57dabe72104918.97816319";i:20;s:23:"57dbdb1195f753.06775255";i:21;s:23:"57dbdb1b304b29.47200824";i:22;s:23:"57dbdb31dc7c49.61550865";i:23;s:23:"57dbdb6265c732.40914390";i:24;s:23:"57dbe8d5b9bff2.47208144";i:25;s:23:"57dc470701b769.04082997";i:26;s:23:"57dc47130f4ff2.13737011";i:27;s:23:"57dc471fb48755.27378282";i:28;s:23:"57dc4723ceb573.44001310";i:29;s:23:"57dc472ba129e7.71881549";i:30;s:23:"57dc473840a8f7.41570545";i:31;s:23:"57dc473f4b41a3.74246686";i:32;s:23:"57dc474769a4b1.75838517";i:33;s:23:"57dc474e924559.03039073";i:34;s:23:"57dc7e4f086b01.36734627";i:35;s:23:"57dc7e553e75b9.52260713";i:36;s:23:"57dd24f76a2382.67215014";i:37;s:23:"57dd258a655ae4.48420335";i:38;s:23:"57dd25950fcf85.28061503";i:39;s:23:"57dd366577dcf9.79794846";i:40;s:23:"57dd394e188c44.21597807";i:41;s:23:"57dd395b5e11c0.58765333";i:42;s:23:"57dd396829c1f0.43794370";}modx.user.1.userGroups|a:1:{i:0;i:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE IF NOT EXISTS `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'index', '', 1, 0, 0, 0, 0, '', '', 1, 1, 0, 1, 1, 1, 1473858080, 1, 1473875460, 0, 0, 0, 1473875400, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index.html', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Новости', '', '', 'news', '', 1, 0, 0, 0, 1, '', '', 1, 5, 1, 1, 1, 1, 1473871686, 1, 1474053909, 0, 0, 0, 1473940800, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Lorem Ipsum Новости I', '', '', 'lorem-ipsum-novosti-i', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 0, 1, 1, 1, 1473871754, 1, 1474115187, 0, 0, 0, 1471371840, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/lorem-ipsum-novosti-i.html', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'О сервисе', '', '', 'about', '', 1, 0, 0, 0, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 2, 2, 1, 1, 1, 1473871794, 0, 0, 0, 0, 0, 1473871794, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'about.html', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'Lorem Ipsum Новости II', '', '', 'lorem-ipsum-novosti-ii', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 1, 1, 1, 1, 1473871895, 1, 1473952955, 0, 0, 0, 1473877440, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/lorem-ipsum-novosti-ii.html', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'Акции', '', '', 'offers', '', 1, 0, 0, 0, 1, '', '', 1, 5, 3, 1, 1, 1, 1473871966, 1, 1474053935, 0, 0, 0, 1473940860, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/', 0, 0, 1, NULL),
(7, 'document', 'text/html', 'Скидки', '', '', 'discounts', '', 1, 0, 0, 6, 1, '', '', 1, 5, 0, 1, 1, 1, 1473871999, 1, 1474053954, 0, 0, 0, 1473940800, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/discounts/', 0, 0, 1, NULL),
(8, 'document', 'text/html', 'Lorem Ipsum Новости III', '', '', 'lorem-ipsum-novosti-iii', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 2, 1, 1, 1, 1473872043, 1, 1473952977, 0, 0, 0, 1473941160, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/lorem-ipsum-novosti-iii.html', 0, 0, 1, NULL),
(9, 'document', 'text/html', 'Lorem Ipsum Скидки I', '', '', 'lorem-ipsum-skidki-i', '', 1, 0, 0, 7, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 0, 1, 1, 1, 1473874255, 1, 1473953143, 0, 0, 0, 1473941160, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/discounts/lorem-ipsum-skidki-i.html', 0, 0, 1, NULL),
(10, 'document', 'text/html', 'Lorem Ipsum Новости IV', '', '', 'lorem-ipsum-novosti-iv', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 3, 1, 1, 1, 1473874306, 1, 1474026646, 0, 0, 0, 1474026646, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/lorem-ipsum-novosti-iv.html', 0, 0, 1, NULL),
(11, 'document', 'text/html', 'Lorem Ipsum Новости V', '', '', 'lorem-ipsum-novosti-v', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 4, 1, 1, 1, 1473874365, 1, 1473953000, 0, 0, 0, 1473941160, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/lorem-ipsum-novosti-v.html', 0, 0, 1, NULL),
(12, 'document', 'text/html', 'Dolor Sit Amet Новости I', '', '', 'dolor-sit-amet-novosti-i', '', 1, 0, 0, 2, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 5, 1, 1, 1, 1473874406, 1, 1473953016, 0, 0, 0, 1473877680, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'news/dolor-sit-amet-novosti-i.html', 0, 0, 1, NULL),
(13, 'document', 'text/html', 'Lorem Ipsum Скидки II', '', '', 'lorem-ipsum-skidki-ii', '', 1, 0, 0, 7, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 1, 1, 1, 1, 1473874490, 1, 1473953329, 0, 0, 0, 1473941220, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/discounts/lorem-ipsum-skidki-ii.html', 0, 0, 1, NULL),
(14, 'document', 'text/html', 'Ещё какие-то акции', '', '', 'otheroffers', '', 1, 0, 0, 6, 1, '', '', 1, 5, 1, 1, 1, 1, 1473874837, 1, 1474053970, 0, 0, 0, 1473940800, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/otheroffers/', 0, 0, 1, NULL),
(15, 'document', 'text/html', 'Lorem Ipsum Скидки III', '', '', 'lorem-ipsum-skidki-iii', '', 1, 0, 0, 7, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 2, 1, 1, 1, 1473874869, 1, 1474026650, 0, 0, 0, 1474026650, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/discounts/lorem-ipsum-skidki-iii.html', 0, 0, 1, NULL),
(16, 'document', 'text/html', 'Lorem Ipsum Ещё какие-то акции I', '', '', 'lorem-ipsum-eshhyo-kakie-to-akczii-i', '', 1, 0, 0, 14, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 0, 1, 1, 1, 1473874916, 1, 1473953369, 0, 0, 0, 1473941220, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/otheroffers/lorem-ipsum-eshhyo-kakie-to-akczii-i.html', 0, 0, 1, NULL),
(17, 'document', 'text/html', 'Lorem Ipsum Dolor Sit Amet Ещё какие-то акции I', '', '', 'lorem-ipsum-dolor-sit-amet-eshhyo-kakie-to-akczii-i', '', 1, 0, 0, 14, 0, '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<b>lorem ipsum</b>, quia <b>dolor sit, amet, consectetur, adipisci</b> v<b>elit, sed</b> quia non numquam <b>eius mod</b>i <b>tempor</b>a <b>incidunt, ut labore et dolore magna</b>m<b>aliqua</b>m quaerat voluptatem. <b>Ut enim ad minim</b>a <b>veniam, quis nostru</b>m <b>exercitation</b>em <b>ullam co</b>rporis suscipit<b>labori</b>o<b>s</b>am, <b>nisi ut aliquid ex ea commod</b>i <b>consequat</b>ur? <b>Quis aute</b>m vel eum <b>iure reprehenderit,</b> qui<b>in</b> ea <b>voluptate velit esse</b>, quam nihil molestiae <b>c</b>onsequatur, vel <b>illum</b>, qui <b>dolore</b>m <b>eu</b>m <b>fugiat</b>, quo voluptas <b>nulla pariatur</b>? At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias <b>exceptur</b>i <b>sint, obcaecat</b>i<b>cupiditat</b>e <b>non pro</b>v<b>ident</b>, similique <b>sunt in culpa</b>, <b>qui officia deserunt mollit</b>ia <b>anim</b>i, <b>id est laborum</b> et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 1, 3, 1, 1, 1, 1, 1473874955, 1, 1474026654, 0, 0, 0, 1474026654, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/otheroffers/lorem-ipsum-dolor-sit-amet-eshhyo-kakie-to-akczii-i.html', 0, 0, 1, NULL),
(18, 'document', 'text/html', 'Test Ещё какие-то акции I', '', '', 'test-eshhyo-kakie-to-akczii-i', '', 1, 0, 0, 14, 0, '', 'Длина в четыре слова', 1, 3, 2, 1, 1, 1, 1473875007, 1, 1473953404, 0, 0, 0, 1473941220, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'offers/otheroffers/test-eshhyo-kakie-to-akczii-i.html', 0, 0, 1, NULL),
(19, 'document', 'text/html', 'Тег', '', '', 'tag', '', 1, 0, 0, 0, 0, '', '', 1, 4, 4, 1, 1, 1, 1474026287, 1, 1474026305, 0, 0, 0, 1474026305, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'tag.html', 0, 0, 1, NULL),
(20, 'document', 'text/html', 'Поиск', '', '', 'search', '', 1, 0, 0, 0, 0, '', '', 1, 6, 5, 1, 1, 1, 1474110866, 1, 1474114134, 0, 0, 0, 1474114134, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'search.html', 0, 0, 1, NULL),
(21, 'document', 'text/html', 'Календарь', '', '', 'calendar', '', 1, 0, 0, 0, 0, '', '', 1, 7, 6, 1, 1, 1, 1474115942, 1, 1474115958, 0, 0, 0, 1474115958, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'calendar.html', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'header', '', 0, 0, 0, '<!DOCTYPE html>\n<html lang="ru">\n<head>\n    <title>[[*pagetitle]]</title>\n    <base href="/">\n    <meta charset="utf-8">\n    <meta http-equiv="X-UA-Compatible" content="IE=edge">\n    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">\n    <link rel="stylesheet" href="/assets/css/libs.min.css">\n    <link rel="stylesheet" href="/assets/css/main.css">\n    <link rel="stylesheet" href="/assets/css/media.css">\n</head>\n<body>\n<div class="wrapper">\n    <header class="main-header">\n        <div class="top-header">\n            <div class="top-header__wrap">\n                <nav class="main-navigation">\n                    <ul id="menu-main" class="nav-list">\n                        <li class="nav-list__nav-item">\n                            <a class="nav-list__nav-item__nav-link" href="[[~1]]">Главная</a>\n                        </li>\n                        <li class="nav-list__nav-item">\n                            <a class="nav-list__nav-item__nav-link" href="[[~2]]">Новости</a>\n                        </li>\n                        <li class="nav-list__nav-item">\n                            <a class="nav-list__nav-item__nav-link" href="[[~7]]">Скидки</a>\n                        </li>\n                        <li class="nav-list__nav-item">\n                            <a class="nav-list__nav-item__nav-link" href="[[~14]]">Ещё какие-то акции</a>\n                        </li>\n                        <li class="nav-list__nav-item">\n                            <a class="nav-list__nav-item__nav-link" href="[[~4]]">О сервисе</a>\n                        </li>\n                    </ul>\n                </nav>\n            </div>\n        </div>\n        <div class="bottom-header">\n            <div class="search-form-wrap">\n                <form class="search-form" action="search.html">\n                    <input type="text" placeholder="Поиск..." class="search-form__input" name="s">\n                    <button class="search-form__btn-search"><i class="icon icon-search"></i></button>\n                </form>\n            </div>\n        </div>\n    </header>\n    <div class="main-content">\n        <div class="content-wrapper">\n            <div class="content">', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'footer', '', 0, 0, 0, '        </div>\n    </div>\n<footer class="main-footer">\n    <div class="content-footer">\n        <div class="bottom-menu">\n            <ul class="b-menu__list">\n                <li class="b-menu__list__item"><a href="[[~1]]" class="b-menu__list__item__link">Главная</a></li>\n                <li class="b-menu__list__item"><a href="[[~4]]" class="b-menu__list__item__link">О сервисе</a></li>\n            </ul>\n        </div>\n        <div class="copyright-wrap">\n            <div class="copyright-text">Туристик<a href="#" class="copyright-text__link"> loftschool 2016</a></div>\n        </div>\n    </div>\n</footer>\n</div>\n<!-- wrapper_end-->\n<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>\n<script src="assets/js/main.js"></script>\n</body>\n</html>\n', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'sidebar', '', 0, 0, 0, '<div class="sidebar">\n    <div class="sidebar__sidebar-item">\n        <div class="sidebar-item__title">Теги</div>\n        <div class="sidebar-item__content">\n            <ul class="tags-list">\n                [[!tagLister?&tpl=`tagLister sidebar tpl`]]\n            </ul>\n        </div>\n    </div>\n    <div class="sidebar__sidebar-item">\n        <div class="sidebar-item__title">Категории</div>\n        <div class="sidebar-item__content">\n            <ul class="category-list">\n                [[!Wayfinder?&startId=`0`&rowTpl=`Wayfinder sidebar rowTpl`&outerTpl=`Wayfinder sidebar outerTpl`&parentRowTpl=`Wayfinder sidebar parentRowTpl`&where=`[{"isfolder:=":1}]`]]\n            </ul>\n        </div>\n    </div>\n    <div class="sidebar__sidebar-item">\n        <div class="sidebar-item__title">Календарь</div>\n        <div class="sidebar-item__content">\n            <ul class="category-list">\n                [[!Archivist?&target=`21`&parents=`2,6`&setLocale=`true`&tpl=`Archivist sidebar tpl`&useFurls=`0`]]\n            </ul>\n        </div>\n    </div>\n</div>', 0, 'a:0:{}', 0, ''),
(9, 1, 0, 'Wayfinder sidebar parentRowTpl', '', 0, 0, 0, '<li class="cat-item"><a href="[[+wf.link]]">[[+wf.title]]</a>\n    <ul class="children">\n        [[+wf.wrapper]]\n    </ul>\n</li>', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'Wayfinder sidebar rowTpl', '', 0, 0, 0, '<li class="cat-item"><a href="[[+wf.link]]">[[+wf.title]]</a></li>', 0, 'a:0:{}', 0, ''),
(8, 1, 0, 'Wayfinder sidebar outerTpl', '', 0, 0, 0, '[[+wf.wrapper]]', 0, 'a:0:{}', 0, ''),
(10, 1, 0, 'Archivist sidebar tpl', '', 0, 0, 0, '<li class="cat-item"><a href="[[+url]]">[[+month_name]] [[+year]]</a> ([[+count]])</li>', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'tagLister sidebar tpl', '', 0, 0, 0, '<li class="tags-list__item">\n<a href="tag.html?tag=[[+tag]]" class="tags-list__item__link">[[+tag]]</a>\n</li>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(4, 0, 0, 'ArchivistFurl', 'Handles FURLs for Archivist.', 0, 0, 0, '/**\n * Archivist\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * This file is part of Archivist, a simple archive navigation system for MODx\n * Revolution.\n *\n * Archivist is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Archivist is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package archivist\n */\n/**\n * @var modX $modx\n * @package archivist\n */\nif ($modx->event->name != ''OnPageNotFound'') return;\n\n$archiveIds = $modx->getOption(''archivist.archive_ids'',null,'''');\nif (empty($archiveIds)) return;\n$archiveIds = explode('','',$archiveIds);\n\n/* handle redirects */\n$search = $_SERVER[''REQUEST_URI''];\n$base_url = $modx->getOption(''base_url'');\nif ($base_url != ''/'') {\n    $search = str_replace($base_url,'''',$search);\n}\n$search = trim($search, ''/'');\n\n/* get resource to redirect to */\n$resourceId = false;\n$prefix = ''arc_'';\nforeach ($archiveIds as $archive) {\n    $archive = explode('':'',$archive);\n    $archiveId = $archive[0];\n    $alias = array_search($archiveId,$modx->aliasMap);\n    if ($alias && strpos($search,$alias) !== false) {\n        $search = str_replace($alias,'''',$search);\n        $resourceId = $archiveId;\n        if (isset($archive[1])) $prefix = $archive[1];\n    }\n}\nif (!$resourceId) return;\n\n/* figure out archiving */\n$params = explode(''/'', $search);\nif (count($params) < 1) return;\n\n/* tag handling! */\nif ($params[0] == ''tags'') {\n    $_GET[''tag''] = $params[1];\n} else if ($params[0] == ''user'' || $params[0] == ''author'') {\n    $_GET[$prefix.''author''] = $params[1];\n} else {\n    /* set Archivist parameters for date-based archives */\n    $_GET[$prefix.''year''] = $params[0];\n    if (isset($params[1])) $_GET[$prefix.''month''] = $params[1];\n    if (isset($params[2])) $_GET[$prefix.''day''] = $params[2];\n}\n\n/* forward */\n$modx->sendForward($resourceId);\nreturn;', 0, NULL, 0, '', 0, ''),
(2, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == ''OnRichTextEditorRegister'') {\n    $modx->event->output(''Ace'');\n    return;\n}\n\nif ($modx->getOption(''which_element_editor'', null, ''Ace'') !== ''Ace'') {\n    return;\n}\n\n$ace = $modx->getService(''ace'', ''Ace'', $modx->getOption(''ace.core_path'', null, $modx->getOption(''core_path'').''components/ace/'').''model/ace/'');\n$ace->initialize();\n\n$extensionMap = array(\n    ''tpl''   => ''text/x-smarty'',\n    ''htm''   => ''text/html'',\n    ''html''  => ''text/html'',\n    ''css''   => ''text/css'',\n    ''scss''  => ''text/x-scss'',\n    ''less''  => ''text/x-less'',\n    ''svg''   => ''image/svg+xml'',\n    ''xml''   => ''application/xml'',\n    ''xsl''   => ''application/xml'',\n    ''js''    => ''application/javascript'',\n    ''json''  => ''application/json'',\n    ''php''   => ''application/x-php'',\n    ''sql''   => ''text/x-sql'',\n    ''md''    => ''text/x-markdown'',\n    ''txt''   => ''text/plain'',\n    ''twig''  => ''text/x-twig''\n);\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case ''OnSnipFormPrerender'':\n        $field = ''modx-snippet-snippet'';\n        $mimeType = ''application/x-php'';\n        break;\n    case ''OnTempFormPrerender'':\n        $field = ''modx-template-content'';\n        $modxTags = true;\n\n        switch (true) {\n            case $modx->getOption(''twiggy_class''):\n                $mimeType = ''text/x-twig'';\n                break;\n            case $modx->getOption(''pdotools_fenom_parser''):\n                $mimeType = ''text/x-smarty'';\n                break;\n            default:\n                $mimeType = ''text/html'';\n                break;\n        }\n\n        break;\n    case ''OnChunkFormPrerender'':\n        $field = ''modx-chunk-snippet'';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : ''text/plain'';\n        } else {\n            $mimeType = ''text/html'';\n        }\n        $modxTags = true;\n\n        switch (true) {\n            case $modx->getOption(''twiggy_class''):\n                $mimeType = ''text/x-twig'';\n                break;\n            case $modx->getOption(''pdotools_fenom_default''):\n                $mimeType = ''text/x-smarty'';\n                break;\n            default:\n                $mimeType = ''text/html'';\n                break;\n        }\n\n        break;\n    case ''OnPluginFormPrerender'':\n        $field = ''modx-plugin-plugincode'';\n        $mimeType = ''application/x-php'';\n        break;\n    case ''OnFileCreateFormPrerender'':\n        $field = ''modx-file-content'';\n        $mimeType = ''text/plain'';\n        break;\n    case ''OnFileEditFormPrerender'':\n        $field = ''modx-file-content'';\n        $extension = pathinfo($scriptProperties[''file''], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : ''text/plain'';\n        $modxTags = $extension == ''tpl'';\n        break;\n    case ''OnDocFormPrerender'':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = ''ta'';\n        $mimeType = $modx->getObject(''modContentType'', $modx->controller->resourceArray[''content_type''])->get(''mime_type'');\n\n        switch (true) {\n            case $mimeType == ''text/html'' && $modx->getOption(''twiggy_class''):\n                $mimeType = ''text/x-twig'';\n                break;\n            case $mimeType == ''text/html'' && $modx->getOption(''pdotools_fenom_parser''):\n                $mimeType = ''text/x-smarty'';\n                break;\n        }\n\n        if ($modx->getOption(''use_editor'')){\n            $richText = $modx->controller->resourceArray[''richtext''];\n            $classKey = $modx->controller->resourceArray[''class_key''];\n            if ($richText || in_array($classKey, array(''modStaticResource'',''modSymLink'',''modWebLink'',''modXMLRPCResource''))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = '''';\nif ($field) {\n    $script .= "MODx.ux.Ace.replaceComponent(''$field'', ''$mimeType'', $modxTags);";\n}\n\nif ($modx->event->name == ''OnDocFormPrerender'' && !$modx->getOption(''use_editor'')) {\n    $script .= "MODx.ux.Ace.replaceTextAreas(Ext.query(''.modx-richtext''));";\n}\n\nif ($script) {\n    $modx->controller->addHtml(''<script>Ext.onReady(function() {'' . $script . ''});</script>'');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(4, 'OnPageNotFound', 0, 0),
(2, 'OnChunkFormPrerender', 0, 0),
(2, 'OnPluginFormPrerender', 0, 0),
(2, 'OnSnipFormPrerender', 0, 0),
(2, 'OnTempFormPrerender', 0, 0),
(2, 'OnFileEditFormPrerender', 0, 0),
(2, 'OnFileCreateFormPrerender', 0, 0),
(2, 'OnDocFormPrerender', 0, 0),
(2, 'OnRichTextEditorRegister', 0, 0),
(2, 'OnManagerPageBeforeRender', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(26, 0, 0, 'tolinks', 'Builds links from tags.', 0, 4, 0, '/**\n * tagLister\n *\n * Copyright 2010 by Shaun McCormick <shaun@modxcms.com>\n *\n * This file is part of tagLister, a simple tag listing snippet for MODx\n * Revolution.\n *\n * tagLister is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * tagLister is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * tagLister; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package taglister\n */\n/**\n * tolinks snippet. Creates links out of tags.\n *\n * @var modX $modx\n * @var tagLister $tagLister\n * @var array $scriptProperties\n * \n * @package taglister\n */\n$tagLister = $modx->getService(''taglister'',''TagLister'',$modx->getOption(''taglister.core_path'',null,$modx->getOption(''core_path'').''components/taglister/'').''model/taglister/'',$scriptProperties);\nif (!($tagLister instanceof TagLister)) return '''';\n\n/* setup default properties */\n$inputDelim = $modx->getOption(''inputDelim'',$scriptProperties,'','');\n$outputDelim = $modx->getOption(''outputDelim'',$scriptProperties,'', '');\n$tagRequestParam = $modx->getOption(''tagRequestParam'',$scriptProperties,''tag'');\n$tagKeyVar = $modx->getOption(''tagKeyVar'',$scriptProperties,''key'');\n$tagKey = $modx->getOption(''tagKey'',$scriptProperties,''tags'');\n$target = !empty($scriptProperties[''target'']) ? $scriptProperties[''target''] : $modx->resource->get(''id'');\n$tpl = $modx->getOption(''tpl'',$scriptProperties,''link'');\n$cls = $modx->getOption(''cls'',$scriptProperties,''tl-tag'');\n$useTagsFurl = $modx->getOption(''useTagsFurl'',$scriptProperties,false);\n\n/* get items */\n$items = $modx->getOption(''items'',$scriptProperties,'''');\nif (empty($items)) return '''';\n$items = explode($inputDelim,$items);\n\n/* if extra params, set em */\n$extraParams = $modx->getOption(''extraParams'',$scriptProperties,'''');\nif (!empty($extraParams)) {\n    $extraParams = trim(trim(trim($extraParams,''?''),''&''),''&amp;'');\n    $eps= explode('','',$extraParams);\n    $extraParams = array();\n    foreach ($eps as $ep) {\n        $ep = explode(''='',$ep);\n        if (!empty($ep[1])) {\n            $extraParams[$ep[0]] = $ep[1];\n        }\n    }\n}\n\n/* iterate */\n$tags = array();\nforeach ($items as $item) {\n    $itemArray = array();\n    $itemArray[''item''] = trim($item);\n    $params = array();\n    if (empty($useTagsFurl)) {\n        $params = array(\n            $tagRequestParam => $itemArray[''item''],\n            $tagKeyVar => $tagKey,\n        );\n    }\n\n    if (!empty($extraParams)) {\n        $params = array_merge($extraParams,$params);\n    }\n    $itemArray[''url''] = $modx->makeUrl($target,'''',$params);\n    if (!empty($useTagsFurl)) {\n         $itemArray[''url''] = rtrim($itemArray[''url''],''/'').''/''.$tagKey.''/''.$itemArray[''item''];\n    }\n    $itemArray[''url''] = str_replace('' '',''+'',$itemArray[''url'']);\n    $itemArray[''cls''] = $cls;\n    $tags[] = $tagLister->getChunk($tpl,$itemArray);\n}\n\n/* output */\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\n$output = trim(implode($outputDelim,$tags),$outputDelim);\nif ($toPlaceholder) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return '''';\n}\nreturn $output;', 0, 'a:10:{s:5:"items";a:7:{s:4:"name";s:5:"items";s:4:"desc";s:23:"prop_tolinks.items_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:21:"prop_tolinks.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"link";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"target";a:7:{s:4:"name";s:6:"target";s:4:"desc";s:24:"prop_tolinks.target_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"inputDelim";a:7:{s:4:"name";s:10:"inputDelim";s:4:"desc";s:28:"prop_tolinks.inputdelim_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:",";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"outputDelim";a:7:{s:4:"name";s:11:"outputDelim";s:4:"desc";s:29:"prop_tolinks.outputdelim_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:", ";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:15:"tagRequestParam";a:7:{s:4:"name";s:15:"tagRequestParam";s:4:"desc";s:33:"prop_tolinks.tagrequestparam_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"tagKeyVar";a:7:{s:4:"name";s:9:"tagKeyVar";s:4:"desc";s:27:"prop_tolinks.tagkeyvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"key";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"tagKey";a:7:{s:4:"name";s:6:"tagKey";s:4:"desc";s:24:"prop_tolinks.tagkey_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"tags";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:3:"cls";a:7:{s:4:"name";s:3:"cls";s:4:"desc";s:21:"prop_tolinks.cls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"tl-tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:31:"prop_tolinks.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(27, 0, 0, 'getResourcesTag', 'Wraps the getResources and getPage snippets to do tag-based navigation. Requires both of those snippets to run.', 0, 4, 0, '/**\n * tagLister\n *\n * Copyright 2010 by Shaun McCormick <shaun@modxcms.com>\n *\n * This file is part of tagLister, a simple tag listing snippet for MODx\n * Revolution.\n *\n * tagLister is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * tagLister is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * tagLister; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package taglister\n */\n/**\n * Wrap the getPage/getResources call to implement tagging. Needs getPage and\n * getResources to be installed to work.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package taglister\n */\n$tagKeyVar = $modx->getOption(''tagKeyVar'',$scriptProperties,''key'');\n$tagKey = (!empty($tagKeyVar) && !empty($_GET[$tagKeyVar]))? $_GET[$tagKeyVar] : $modx->getOption(''tagKey'',$scriptProperties,''tags'');\n$tagRequestParam = $modx->getOption(''tagRequestParam'',$scriptProperties,''tag'');\n$grSnippet = $modx->getOption(''grSnippet'',$scriptProperties,''getPage'');\n$tag = $modx->getOption(''tag'',$scriptProperties,urldecode($_GET[$tagRequestParam]));\nif (!empty($tag)) {\n    $tag = $modx->stripTags($tag);\n    $tagSearchType = $modx->getOption(''tagSearchType'',$scriptProperties,''exact'');\n    if ($tagSearchType == ''contains'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==%''.$tag.''%'';\n    } else if ($tagSearchType == ''beginswith'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==%''.$tag.'''';\n    } else if ($tagSearchType == ''endswith'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==''.$tag.''%'';\n    } else if ($tagSearchType == ''within'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''(IN)''.$tag.'''';\n    } else {\n        $scriptProperties[''tvFilters''] = $tagKey.''==''.$tag.'''';\n    }    \n}\n/** @var modSnippet $elementObj */\n$elementObj = $modx->getObject(''modSnippet'', array(''name'' => $grSnippet));\nif ($elementObj) {\n    $elementObj->setCacheable(false);\n    $output = $elementObj->process($scriptProperties);\n} else {\n    return ''You must have getPage and getResources downloaded and installed to use this snippet.'';\n}\nreturn $output;', 0, 'a:39:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:17:"prop_grt.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:20:"prop_grt.tplodd_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:22:"prop_grt.tplfirst_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:21:"prop_grt.tpllast_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:20:"prop_grt.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"sortbyAlias";a:7:{s:4:"name";s:11:"sortbyAlias";s:4:"desc";s:25:"prop_grt.sortbyalias_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"sortbyEscaped";a:7:{s:4:"name";s:13:"sortbyEscaped";s:4:"desc";s:27:"prop_grt.sortbyescaped_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:21:"prop_grt.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:9:"ascending";s:4:"vaue";s:3:"ASC";}i:1;a:2:{s:4:"text";s:10:"descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:19:"prop_grt.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:20:"prop_grt.offset_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"tvFilters";a:7:{s:4:"name";s:9:"tvFilters";s:4:"desc";s:23:"prop_grt.tvfilters_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:19:"prop_grt.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:21:"prop_grt.parents_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:28:"prop_grt.includecontent_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:24:"prop_grt.includetvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:24:"prop_grt.processtvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:22:"prop_grt.tvprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tv.";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:17:"prop_grt.idx_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:19:"prop_grt.first_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:18:"prop_grt.last_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"debug";a:7:{s:4:"name";s:5:"debug";s:4:"desc";s:19:"prop_grt.debug_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"namespace";a:7:{s:4:"name";s:9:"namespace";s:4:"desc";s:23:"prop_grt.namespace_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:4:"page";a:7:{s:4:"name";s:4:"page";s:4:"desc";s:18:"prop_grt.page_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"pageVarKey";a:7:{s:4:"name";s:10:"pageVarKey";s:4:"desc";s:24:"prop_grt.pagevarkey_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"page";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:8:"totalVar";a:7:{s:4:"name";s:8:"totalVar";s:4:"desc";s:22:"prop_grt.totalvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"total";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"pageLimit";a:7:{s:4:"name";s:9:"pageLimit";s:4:"desc";s:23:"prop_grt.pagelimit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:12:"elementClass";a:7:{s:4:"name";s:12:"elementClass";s:4:"desc";s:26:"prop_grt.elementclass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"modSnippet";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"element";a:7:{s:4:"name";s:7:"element";s:4:"desc";s:21:"prop_grt.element_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:12:"getResources";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"pageNavVar";a:7:{s:4:"name";s:10:"pageNavVar";s:4:"desc";s:24:"prop_grt.pagenavvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"page.nav";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:10:"pageNavTpl";a:7:{s:4:"name";s:10:"pageNavTpl";s:4:"desc";s:24:"prop_grt.pagenavtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:78:"<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"pageActiveTpl";a:7:{s:4:"name";s:13:"pageActiveTpl";s:4:"desc";s:27:"prop_grt.pageactivetpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:116:"<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:12:"pageFirstTpl";a:7:{s:4:"name";s:12:"pageFirstTpl";s:4:"desc";s:26:"prop_grt.pagefirsttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:76:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"pageLastTpl";a:7:{s:4:"name";s:11:"pageLastTpl";s:4:"desc";s:25:"prop_grt.pagelasttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:75:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"pagePrevTpl";a:7:{s:4:"name";s:11:"pagePrevTpl";s:4:"desc";s:25:"prop_grt.pageprevtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:79:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"pageNextTpl";a:7:{s:4:"name";s:11:"pageNextTpl";s:4:"desc";s:25:"prop_grt.pagenexttpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:79:"<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"tagKey";a:7:{s:4:"name";s:6:"tagKey";s:4:"desc";s:20:"prop_grt.tagkey_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"tags";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"tagKeyVar";a:7:{s:4:"name";s:9:"tagKeyVar";s:4:"desc";s:23:"prop_grt.tagkeyvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"key";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:15:"tagRequestParam";a:7:{s:4:"name";s:15:"tagRequestParam";s:4:"desc";s:29:"prop_grt.tagrequestparam_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"tagSearchType";a:7:{s:4:"name";s:13:"tagSearchType";s:4:"desc";s:27:"prop_grt.tagsearchtype_desc";s:4:"type";s:4:"list";s:7:"options";a:5:{i:0;a:2:{s:4:"text";s:16:"grt.tst_contains";s:5:"value";s:8:"contains";}i:1;a:2:{s:4:"text";s:13:"grt.tst_exact";s:5:"value";s:5:"exact";}i:2;a:2:{s:4:"text";s:18:"grt.tst_beginswith";s:5:"value";s:10:"beginswith";}i:3;a:2:{s:4:"text";s:16:"grt.tst_endswith";s:5:"value";s:8:"endswith";}i:4;a:2:{s:4:"text";s:14:"grt.tst_within";s:5:"value";s:6:"within";}}s:5:"value";s:8:"contains";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(28, 1, 0, 'getPosts index', '', 0, 0, 0, '$result=$modx->query(''SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri` FROM `modx_site_content`WHERE `parent`!=0 AND `isfolder`=0 ORDER BY `publishedon` DESC'');\n$return='''';\nwhile($res=$result->fetch(PDO::FETCH_ASSOC)){\n    $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $res[''content'']);\n    $limit=count($tmp)>=50?50:count($tmp);\n    $res[''content'']='''';\n    for($i=0; $i<=$limit; $i++){\n        $res[''content''].=$tmp[$i].'' '';\n    }\n    $res[''content'']=rtrim($res[''content'']);\n    $return.=''<div class="post-wrap">'';\n    $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$res[''id'']} AND `contentid`={$res[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n    if($r){\n        $return.=''<div class="post-thumbnail">\n                    <img src="''.$r[''value''].''" alt="Image поста" class="post-thumbnail__image">\n                </div>'';\n    }\n    $return.=''<div class="post-content">\n                <div class="post-content__post-info">\n                <div class="post-date">''.date(''F d, Y'', $res[''publishedon'']).''</div>\n            </div>\n            <div class="post-content__post-text">\n                <div class="post-title">''\n                    .$res[''pagetitle''].\n                ''</div>''\n                .$res[''content''].''...''.\n                ''</div>\n            <div class="post-content__post-control">\n                <a href="''.$res[''uri''].''"class="btn-read-post">Читать далее >></a></div>\n            </div>\n            </div>'';\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(30, 1, 0, 'getTag tag', '', 0, 0, 0, 'if(isset($_GET[''tag''])){\n    if(empty($_GET[''tag''])){\n        header(''Location: /'');\n        exit();\n    }\n    return $_GET[''tag''];\n}\nelse{\n    header(''Location: /'');\n    exit();\n}', 0, 'a:0:{}', '', 0, ''),
(31, 1, 0, 'getPosts tag', '', 0, 0, 0, '$result=$modx->query(''SELECT `modx_site_content`.`id`, `pagetitle`, `content`, `publishedon`, `uri`, `value` FROM `modx_site_content` JOIN `modx_site_tmplvar_contentvalues` ON `modx_site_content`.`id`=`contentid` WHERE `tmplvarid`=2 AND `value` LIKE \\''%''.$_GET[''tag''].''%\\'' ORDER BY `publishedon` DESC'')->fetchAll(PDO::FETCH_ASSOC);\n$return='''';\nforeach($result as $post){\n    $tags=explode('','', $post[''value'']);\n    $num=count($tags);\n    for($i=0; $i<=$num; $i++){\n        $tags[$i]=trim($tags[$i]);\n        if($tags[$i]==$_GET[''tag'']){\n            $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $post[''content'']);\n            $limit=count($tmp)>=50?50:count($tmp);\n            $post[''content'']='''';\n            for($i=0; $i<=$limit; $i++){\n                $post[''content''].=$tmp[$i].'' '';\n            }\n            $post[''content'']=rtrim($post[''content'']);\n            $return.=''<div class="post-wrap">'';\n                $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[''id'']} AND `contentid`={$post[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n                if($r){\n                    $return.=''<div class="post-thumbnail">\n                        <img src="''.$r[''value''].''" alt="Image поста" class="post-thumbnail__image">\n                    </div>'';\n                }\n                $return.=''<div class="post-content">'';\n                    if($post[''publishedon'']!=0){\n                        $return.=''<div class="post-content__post-info">\n                            <div class="post-date">''.date(''F d, Y'', $post[''publishedon'']).''</div>\n                        </div>'';\n                    }\n                    $return.=''<div class="post-content__post-text">\n                        <div class="post-title">''.$post[''pagetitle''].''</div>\n                        <p>''.$post[''content''].''...</p>\n                    </div>\n                    <div class="post-content__post-control">\n                        <a href="''.$post[''uri''].''" class="btn-read-post">Читать далее &gt;&gt;</a>\n                    </div>\n                </div>\n            </div>'';\n        }\n    }\n}\nif($return==''''){\n    $return=''Такого тега не существует.'';\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(32, 1, 0, 'getPosts category', '', 0, 0, 0, '$posts=[];\nfunction getPosts($modx, $id, &$posts){\n    $result=$modx->query("SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri`, `isfolder` FROM `modx_site_content` WHERE `parent`={$id} ORDER BY `publishedon` DESC")->fetchAll(PDO::FETCH_ASSOC);\n    if(!$result){\n        return false;\n    }\n    foreach($result as $array){\n        if($array[''isfolder'']==1){\n            $res=getPosts($modx, $array[''id''], $posts);\n            foreach($res as $arr){\n                $posts[]=$arr;\n            }\n        }\n        else{\n            return $result;\n        }\n    }\n    return $posts;\n}\nif(!$result=getPosts($modx, $modx->resource->get(''id''), $posts)){\n    return ''В этой категории нет статей.'';\n}\nforeach($result as $key=>$post){\n    $publishedon[$key]=$post[''publishedon''];\n}\narray_multisort($publishedon, SORT_DESC, $result);\n$return='''';\nforeach($result as $post){\n    $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $post[''content'']);\n    $limit=count($tmp)>=50?50:count($tmp);\n    $post[''content'']='''';\n    for($i=0; $i<=$limit; $i++){\n        $post[''content''].=$tmp[$i].'' '';\n    }\n    $post[''content'']=rtrim($post[''content'']);\n    $return.=''<div class="post-wrap">'';\n        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[''id'']} AND `contentid`={$post[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n        if($r){\n            $return.=''<div class="post-thumbnail">\n                <img src="''.$r[''value''].''" alt="Image поста" class="post-thumbnail__image">\n            </div>'';\n        }\n        $return.=''<div class="post-content">'';\n            if($post[''publishedon'']!=0){\n                $return.=''<div class="post-content__post-info">\n                    <div class="post-date">''.date(''F d, Y'', $post[''publishedon'']).''</div>\n                </div>'';\n            }\n            $return.=''<div class="post-content__post-text">\n                <div class="post-title">''.$post[''pagetitle''].''</div>\n                <p>''.$post[''content''].''...</p>\n            </div>\n            <div class="post-content__post-control">\n                <a href="''.$post[''uri''].''" class="btn-read-post">Читать далее &gt;&gt;</a>\n            </div>\n        </div>\n    </div>'';\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(34, 1, 0, 'getSearchQuery search', '', 0, 0, 0, 'if(isset($_GET[''s''])){\n    if(empty($_GET[''s''])){\n        header(''Location: /'');\n        exit();\n    }\n    return $_GET[''s''];\n}\nelse{\n    header(''Location: /'');\n    exit();\n}', 0, 'a:0:{}', '', 0, ''),
(35, 1, 0, 'getPosts search', '', 0, 0, 0, '$result=$modx->query(''SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri` FROM `modx_site_content` WHERE `pagetitle` LIKE \\''%''.$_GET[''s''].''%\\'' ORDER BY `publishedon` DESC'')->fetchAll(PDO::FETCH_ASSOC);\n$return='''';\nforeach($result as $post){\n    $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $post[''content'']);\n    $limit=count($tmp)>=50?50:count($tmp);\n    $post[''content'']='''';\n    for($i=0; $i<=$limit; $i++){\n        $post[''content''].=$tmp[$i].'' '';\n    }\n    $post[''content'']=rtrim($post[''content'']);\n    $return.=''<div class="post-wrap">'';\n        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[''id'']} AND `contentid`={$post[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n        if($r){\n            $return.=''<div class="post-thumbnail">\n                <img src="''.$r[''value''].''" alt="Image поста" class="post-thumbnail__image">\n            </div>'';\n        }\n        $return.=''<div class="post-content">'';\n            if($post[''publishedon'']!=0){\n                $return.=''<div class="post-content__post-info">\n                    <div class="post-date">''.date(''F d, Y'', $post[''publishedon'']).''</div>\n                </div>'';\n            }\n            $return.=''<div class="post-content__post-text">\n                <div class="post-title">''.$post[''pagetitle''].''</div>\n                <p>''.$post[''content''].''...</p>\n            </div>\n            <div class="post-content__post-control">\n                <a href="''.$post[''uri''].''" class="btn-read-post">Читать далее &gt;&gt;</a>\n            </div>\n        </div>\n    </div>'';\n}\nif($return==''''){\n    $return=''Статей не найдено.'';\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(36, 0, 0, 'Archivist', '', 0, 5, 0, '/**\n * Archivist\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * This file is part of Archivist, a simple archive navigation system for MODx\n * Revolution.\n *\n * Archivist is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Archivist is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package archivist\n */\n/**\n * Display an archived result filter list\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var Archivist $archivist\n *\n * @package archivist\n */\n$archivist = $modx->getService(''archivist'',''Archivist'',$modx->getOption(''archivist.core_path'',null,$modx->getOption(''core_path'').''components/archivist/'').''model/archivist/'',$scriptProperties);\nif (!($archivist instanceof Archivist)) return '''';\n\n/* setup default properties */\n$tpl = $modx->getOption(''tpl'',$scriptProperties,''row'');\n$parents = !empty($scriptProperties[''parents'']) ? $scriptProperties[''parents''] : $modx->resource->get(''id'');\n$parents = explode('','',$parents);\n$target = !empty($scriptProperties[''target'']) ? $scriptProperties[''target''] : $modx->resource->get(''id'');\n$sortBy = $modx->getOption(''sortBy'',$scriptProperties,''publishedon'');\n$sortDir = $modx->getOption(''sortDir'',$scriptProperties,''DESC'');\n$groupByYear = $modx->getOption(''groupByYear'',$scriptProperties,false);\n$sortYear = $modx->getOption(''sortYear'',$scriptProperties,''DESC'');\n$depth = $modx->getOption(''depth'',$scriptProperties,10);\n$where = $modx->getOption(''where'',$scriptProperties,'''');\n\n$cls = $modx->getOption(''cls'',$scriptProperties,''arc-row'');\n$altCls = $modx->getOption(''altCls'',$scriptProperties,''arc-row-alt'');\n$lastCls = $modx->getOption(''lastCls'',$scriptProperties,'''');\n$firstCls = $modx->getOption(''firstCls'',$scriptProperties,'''');\n\n$filterPrefix = $modx->getOption(''filterPrefix'',$scriptProperties,''arc_'');\n$useMonth = $modx->getOption(''useMonth'',$scriptProperties,true);\n$useDay = $modx->getOption(''useDay'',$scriptProperties,false);\n$dateFormat = !empty($scriptProperties[''dateFormat'']) ? $scriptProperties[''dateFormat''] : '''';\n$limit = $modx->getOption(''limit'',$scriptProperties,12);\n$start = $modx->getOption(''start'',$scriptProperties,0);\n$hideContainers = $modx->getOption(''hideContainers'',$scriptProperties,true);\n$useFurls = $modx->getOption(''useFurls'',$scriptProperties,true);\n$persistGetParams = $modx->getOption(''persistGetParams'',$scriptProperties,false);\n\n/* handle existing GET params */\n$extraParams = $modx->getOption(''extraParams'',$scriptProperties,array());\n$extraParams = $archivist->mergeGetParams($extraParams,$persistGetParams,$filterPrefix);\n\n/* set locale for date processing */\nif ($modx->getOption(''setLocale'',$scriptProperties,true)) {\n    $cultureKey = $modx->getOption(''cultureKey'',null,''en'');\n    $locale = !empty($scriptProperties[''locale'']) ? $scriptProperties[''locale''] : $cultureKey;\n    if (!empty($locale)) {\n        setlocale(LC_ALL,$locale);\n    }\n}\n\n/* find children of parents */\n$children = array();\nforeach ($parents as $parent) {\n    $pchildren = $modx->getChildIds($parent, $depth);\n    if (!empty($pchildren)) $children = array_merge($children, $pchildren);\n}\nif (!empty($children)) $parents = array_merge($parents, $children);\n\n/* get filter format */\n$dateEmpty = empty($dateFormat);\n$sqlDateFormat = ''%Y'';\nif ($dateEmpty) $dateFormat = ''%Y'';\nif ($useMonth) {\n    if ($dateEmpty) $dateFormat = ''%B ''.$dateFormat;\n    $sqlDateFormat = ''%b ''.$sqlDateFormat;\n}\nif ($useDay) {\n    if ($dateEmpty) $dateFormat = ''%d ''.$dateFormat;\n    $sqlDateFormat = ''%d ''.$sqlDateFormat;\n}\n/* build query */\n$c = $modx->newQuery(''modResource'');\n$fields = $modx->getSelectColumns(''modResource'','''','''',array(''id'',$sortBy));\n$c->select($fields);\n$c->select(array(\n    ''FROM_UNIXTIME(''.$sortBy.'',"''.$sqlDateFormat.''") AS ''.$modx->escape(''date''),\n    ''FROM_UNIXTIME(''.$sortBy.'',"''.$sqlDateFormat.''") AS ''.$modx->escape(''date''),\n    ''FROM_UNIXTIME(''.$sortBy.'',"%D") AS ''.$modx->escape(''day_formatted''),\n    ''COUNT(''.$modx->escape(''id'').'') AS ''.$modx->escape(''count''),\n));\n$c->where(array(\n    ''parent:IN'' => $parents,\n    ''published'' => true,\n    ''deleted'' => false,\n));\n/* don''t grab unpublished resources */\n$c->where(array(\n    ''published'' => true,\n));\nif ($hideContainers) {\n    $c->where(array(\n        ''isfolder'' => false,\n    ));\n}\nif (!empty($where)) {\n    $where = $modx->fromJSON($where);\n    $c->where($where);\n}\n$exclude = $modx->getOption(''exclude'',$scriptProperties,'''');\nif (!empty($exclude)) {\n    $c->where(array(\n        ''id:NOT IN'' => is_array($exclude) ? $exclude : explode('','',$exclude),\n    ));\n}\n$c->sortby(''FROM_UNIXTIME(`''.$sortBy.''`,"%Y") ''.$sortDir.'', FROM_UNIXTIME(`''.$sortBy.''`,"%m") ''.$sortDir.'', FROM_UNIXTIME(`''.$sortBy.''`,"%d") ''.$sortDir,'''');\n$c->groupby(''FROM_UNIXTIME(`''.$sortBy.''`,"''.$sqlDateFormat.''")'');\n/* if limiting to X records */\nif (!empty($limit)) { $c->limit($limit,$start); }\n$resources = $modx->getIterator(''modResource'',$c);\n\n/* iterate over resources */\n$output = array();\n$groupByYearOutput = array();\n$idx = 0;\n$count = count($resources);\n/** @var modResource $resource */\nforeach ($resources as $resource) {\n    $resourceArray = $resource->toArray();\n\n    $date = $resource->get($sortBy);\n    $dateObj = strtotime($date);\n\n    $resourceArray[''date''] = strftime($dateFormat,$dateObj);\n    $resourceArray[''month_name_abbr''] = strftime(''%b'',$dateObj);\n    $resourceArray[''month_name''] = strftime(''%B'',$dateObj);\n    $resourceArray[''month''] = strftime(''%m'',$dateObj);\n    $resourceArray[''year''] = strftime(''%Y'',$dateObj);\n    $resourceArray[''year_two_digit''] = strftime(''%y'',$dateObj);\n    $resourceArray[''day''] = strftime(''%d'',$dateObj);\n    $resourceArray[''weekday''] = strftime(''%A'',$dateObj);\n    $resourceArray[''weekday_abbr''] = strftime(''%a'',$dateObj);\n    $resourceArray[''weekday_idx''] = strftime(''%w'',$dateObj);\n\n    /* css classes */\n    $resourceArray[''cls''] = $cls;\n    if ($idx % 2) { $resourceArray[''cls''] .= '' ''.$altCls; }\n    if ($idx == 0 && !empty($firstCls)) { $resourceArray[''cls''] .= '' ''.$firstCls; }\n    if ($idx+1 == $count && !empty($lastCls)) { $resourceArray[''cls''] .= '' ''.$lastCls; }\n\n    /* setup GET params */\n    $params = array();\n    $params[$filterPrefix.''year''] = $resourceArray[''year''];\n\n    /* if using month filter */\n    if ($useMonth) {\n        $params[$filterPrefix.''month''] = $resourceArray[''month''];\n    }\n    /* if using day filter (why you would ever is beyond me...) */\n    if ($useDay) {\n        $params[$filterPrefix.''day''] = $resourceArray[''day''];\n        if (empty($scriptProperties[''dateFormat''])) {\n            $resourceArray[''date''] = $resourceArray[''month_name''].'' ''.$resourceArray[''day''].'', ''.$resourceArray[''year''];\n        }\n    }\n\n    if ($useFurls) {\n        $params = implode(''/'',$params);\n        if (!empty($extraParams)) $params .= ''?''.$extraParams;\n        $resourceArray[''url''] = $modx->makeUrl($target).$params;\n    } else {\n        $params = http_build_query($params);\n        if (!empty($extraParams)) $params .= ''&''.$extraParams;\n        $resourceArray[''url''] = $modx->makeUrl($target,'''',$params);\n    }\n\n    if ($groupByYear) {\n        $groupByYearOutput[$resourceArray[''year'']][] = $resourceArray;\n    } else {\n        $output[] = $archivist->getChunk($tpl,$resourceArray);\n    }\n\n    $idx++;\n}\n\nif ($groupByYear) {\n    $wrapperTpl = $modx->getOption(''yearGroupTpl'',$scriptProperties,''yeargroup'');\n    $wrapperRowSeparator = $modx->getOption(''yearGroupRowSeparator'',$scriptProperties,"\\n");\n    if (strtolower($sortYear) === ''asc'') {\n        ksort($groupByYearOutput);\n    } else {\n        krsort($groupByYearOutput);\n    }\n    foreach ($groupByYearOutput as $year => $row) {\n        $wrapper[''year''] = $year;\n\n        $params = array();\n        $params[$filterPrefix.''year''] = $year;\n\n        if ($useFurls) {\n            $params = implode(''/'',$params);\n            if (!empty($extraParams)) $params .= ''?''.$extraParams;\n            $wrapper[''url''] = $modx->makeUrl($target).$params;\n        } else {\n            $params = http_build_query($params);\n            if (!empty($extraParams)) $params .= ''&''.$extraParams;\n            $wrapper[''url''] = $modx->makeUrl($target,'''',$params);\n        }\n\n        $wrapper[''row''] = array();\n        foreach ($row as $month) {\n            $wrapper[''row''][] = $archivist->getChunk($tpl,$month);\n        }\n        $wrapper[''row''] = implode($wrapperRowSeparator,$wrapper[''row'']);\n        $output[] = $archivist->getChunk($wrapperTpl,$wrapper);\n    }\n}\n\n/* output or set to placeholder */\n$outputSeparator = $modx->getOption(''outputSeparator'',$scriptProperties,"\\n");\n$output = implode($outputSeparator,$output);\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return '''';\n}\nreturn $output;', 0, 'a:26:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:23:"prop_archivist.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"row";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"target";a:7:{s:4:"name";s:6:"target";s:4:"desc";s:26:"prop_archivist.target_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:27:"prop_archivist.parents_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:25:"prop_archivist.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"exclude";a:7:{s:4:"name";s:7:"exclude";s:4:"desc";s:27:"prop_archivist.exclude_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:26:"prop_archivist.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:27:"prop_archivist.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:18:"prop_arc.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:19:"prop_arc.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:25:"prop_archivist.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"12";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"start";a:7:{s:4:"name";s:5:"start";s:4:"desc";s:25:"prop_archivist.start_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"useMonth";a:7:{s:4:"name";s:8:"useMonth";s:4:"desc";s:28:"prop_archivist.usemonth_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"useDay";a:7:{s:4:"name";s:6:"useDay";s:4:"desc";s:26:"prop_archivist.useday_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"groupByYear";a:7:{s:4:"name";s:11:"groupByYear";s:4:"desc";s:31:"prop_archivist.groupbyyear_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:14:"groupByYearTpl";a:7:{s:4:"name";s:14:"groupByYearTpl";s:4:"desc";s:34:"prop_archivist.groupbyyeartpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"yeargroup";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:10:"dateFormat";a:7:{s:4:"name";s:10:"dateFormat";s:4:"desc";s:30:"prop_archivist.dateformat_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"useFurls";a:7:{s:4:"name";s:8:"useFurls";s:4:"desc";s:23:"prop_archivist.usefurls";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:16:"persistGetParams";a:7:{s:4:"name";s:16:"persistGetParams";s:4:"desc";s:36:"prop_archivist.persistgetparams_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"extraParams";a:7:{s:4:"name";s:11:"extraParams";s:4:"desc";s:31:"prop_archivist.extraparams_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:3:"cls";a:7:{s:4:"name";s:3:"cls";s:4:"desc";s:23:"prop_archivist.cls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"arc-row";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"altCls";a:7:{s:4:"name";s:6:"altCls";s:4:"desc";s:26:"prop_archivist.altcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"arc-row-alt";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"firstCls";a:7:{s:4:"name";s:8:"firstCls";s:4:"desc";s:28:"prop_archivist.firstcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"lastCls";a:7:{s:4:"name";s:7:"lastCls";s:4:"desc";s:27:"prop_archivist.lastcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:12:"filterPrefix";a:7:{s:4:"name";s:12:"filterPrefix";s:4:"desc";s:32:"prop_archivist.filterprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"arc_";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:33:"prop_archivist.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:9:"setLocale";a:7:{s:4:"name";s:9:"setLocale";s:4:"desc";s:29:"prop_archivist.setlocale_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"locale";a:7:{s:4:"name";s:6:"locale";s:4:"desc";s:26:"prop_archivist.locale_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:41:"prop_archivistbymonth.hidecontainers_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(37, 0, 0, 'getArchives', '', 0, 5, 0, '/**\n * Archivist\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * This file is part of Archivist, a simple archive navigation system for MODx\n * Revolution.\n *\n * Archivist is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Archivist is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package archivist\n */\n/**\n * getArchives\n *\n * Used to display a list of Resources for a given archive state.\n *\n * Written by Shaun McCormick <shaun+archivist@modx.com>. Based on getResources by Jason Coward <jason@modxcms.com>\n *\n * @var Archivist $archivist\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package archivist\n */\n$archivist = $modx->getService(''archivist'',''Archivist'',$modx->getOption(''archivist.core_path'',null,$modx->getOption(''core_path'').''components/archivist/'').''model/archivist/'',$scriptProperties);\nif (!($archivist instanceof Archivist)) return '''';\n\n/* setup some getArchives-specific properties */\n$filterPrefix = $modx->getOption(''filterPrefix'',$scriptProperties,''arc_'');\n$filterField = $modx->getOption(''filterField'',$scriptProperties,''publishedon'');\n\n/* first off, let''s sync the archivist.archive_ids setting */\nif ($modx->getOption(''makeArchive'',$scriptProperties,true)) {\n    $archivist->makeArchive($modx->resource->get(''id''),$filterPrefix);\n}\n\n/* get filter by year, month, and/or day. Sanitize to prevent injection. */\n$where = $modx->getOption(''where'',$scriptProperties,false);\n$where = is_array($where) ? $where : $modx->fromJSON($where);\n$parameters = $modx->request->getParameters();\n\n$year = $modx->getOption($filterPrefix.''year'',$parameters,$modx->getOption(''year'',$scriptProperties,''''));\n$year = (int)$archivist->sanitize($year);\nif (!empty($year)) {\n    $modx->setPlaceholder($filterPrefix.''year'',$year);\n    $where[] = ''FROM_UNIXTIME(`''.$filterField.''`,"%Y") = "''.$year.''"'';\n}\n$month = $modx->getOption($filterPrefix.''month'',$parameters,$modx->getOption(''month'',$scriptProperties,''''));\n$month = (int)$archivist->sanitize($month);\nif (!empty($month)) {\n    if (strlen($month) == 1) $month = ''0''.$month;\n    $modx->setPlaceholder($filterPrefix.''month'',$month);\n    $modx->setPlaceholder($filterPrefix.''month_name'',$archivist->translateMonth($month));\n    $where[] = ''FROM_UNIXTIME(`''.$filterField.''`,"%m") = "''.$month.''"'';\n}\n$day = $modx->getOption($filterPrefix.''day'',$parameters,$modx->getOption(''day'',$scriptProperties,''''));\n$day = (int)$archivist->sanitize($day);\nif (!empty($day)) {\n    if (strlen($day) == 1) $day = ''0''.$day;\n    $modx->setPlaceholder($filterPrefix.''day'',$day);\n    $where[] = ''FROM_UNIXTIME(`''.$filterField.''`,"%d") = "''.$day.''"'';\n}\n\n/* author handling */\nif (!empty($parameters[$filterPrefix.''author''])) {\n    /** @var modUser $user */\n    $user = $modx->getObject(''modUser'',array(''username'' => $parameters[$filterPrefix.''author'']));\n    if ($user) {\n        $where[''createdby''] = $user->get(''id'');\n    }\n}\n$scriptProperties[''where''] = $modx->toJSON($where);\n\n/* better tags handling */\n$tagKeyVar = $modx->getOption(''tagKeyVar'',$scriptProperties,''key'');\n$tagKey = (!empty($tagKeyVar) && array_key_exists($tagKeyVar,$parameters) && !empty($parameters[$tagKeyVar])) ? $parameters[$tagKeyVar] : $modx->getOption(''tagKey'',$scriptProperties,''tags'');\n$tagRequestParam = $modx->getOption(''tagRequestParam'',$scriptProperties,''tag'');\n$tag = $modx->getOption(''tag'',$scriptProperties,array_key_exists($tagRequestParam,$parameters) ? urldecode($parameters[$tagRequestParam]) : '''');\nif (!empty($tag)) {\n    $tag = $modx->stripTags($tag);\n    $tagSearchType = $modx->getOption(''tagSearchType'',$scriptProperties,''exact'');\n    if ($tagSearchType == ''contains'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==%''.$tag.''%'';\n    } else if ($tagSearchType == ''beginswith'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==%''.$tag.'''';\n    } else if ($tagSearchType == ''endswith'') {\n        $scriptProperties[''tvFilters''] = $tagKey.''==''.$tag.''%'';\n    } else {\n        $scriptProperties[''tvFilters''] = $tagKey.''==''.$tag.'''';\n    }\n}\n\n$grSnippet = $modx->getOption(''grSnippet'',$scriptProperties,''getResources'');\n/** @var modSnippet $snippet */\n$snippet = $modx->getObject(''modSnippet'', array(''name'' => $grSnippet));\nif ($snippet) {\n    $snippet->setCacheable(false);\n    $output = $snippet->process($scriptProperties);\n} else {\n    return ''You must have getResources downloaded and installed to use this snippet.'';\n}\nreturn $output;', 0, 'a:28:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:25:"prop_getarchives.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"filterField";a:7:{s:4:"name";s:11:"filterField";s:4:"desc";s:33:"prop_getarchives.filterfield_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:12:"filterPrefix";a:7:{s:4:"name";s:12:"filterPrefix";s:4:"desc";s:34:"prop_getarchives.filterprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"arc_";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"tagKey";a:7:{s:4:"name";s:6:"tagKey";s:4:"desc";s:28:"prop_getarchives.tagkey_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"tags";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:9:"tagKeyVar";a:7:{s:4:"name";s:9:"tagKeyVar";s:4:"desc";s:31:"prop_getarchives.tagkeyvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"key";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:15:"tagRequestParam";a:7:{s:4:"name";s:15:"tagRequestParam";s:4:"desc";s:37:"prop_getarchives.tagrequestparam_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"tagSearchType";a:7:{s:4:"name";s:13:"tagSearchType";s:4:"desc";s:35:"prop_getarchives.tagsearchtype_desc";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:4:"text";s:12:"tst_contains";s:5:"value";s:8:"contains";}i:1;a:2:{s:4:"text";s:9:"tst_exact";s:5:"value";s:5:"exact";}i:2;a:2:{s:4:"text";s:14:"tst_beginswith";s:5:"value";s:10:"beginswith";}i:3;a:2:{s:4:"text";s:12:"tst_endswith";s:5:"value";s:8:"endswith";}}s:5:"value";s:8:"contains";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:35:"prop_getarchives.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"tplOdd";a:7:{s:4:"name";s:6:"tplOdd";s:4:"desc";s:28:"prop_getarchives.tplodd_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"tplFirst";a:7:{s:4:"name";s:8:"tplFirst";s:4:"desc";s:30:"prop_getarchives.tplfirst_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"tplLast";a:7:{s:4:"name";s:7:"tplLast";s:4:"desc";s:29:"prop_getarchives.tpllast_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"sortby";a:7:{s:4:"name";s:6:"sortby";s:4:"desc";s:28:"prop_getarchives.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"sortbyAlias";a:7:{s:4:"name";s:11:"sortbyAlias";s:4:"desc";s:33:"prop_getarchives.sortbyalias_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:13:"sortbyEscaped";a:7:{s:4:"name";s:13:"sortbyEscaped";s:4:"desc";s:35:"prop_getarchives.sortbyescaped_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"sortdir";a:7:{s:4:"name";s:7:"sortdir";s:4:"desc";s:29:"prop_getarchives.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:18:"prop_arc.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:19:"prop_arc.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:27:"prop_getarchives.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"offset";a:7:{s:4:"name";s:6:"offset";s:4:"desc";s:28:"prop_getarchives.offset_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:9:"tvFilters";a:7:{s:4:"name";s:9:"tvFilters";s:4:"desc";s:31:"prop_getarchives.tvfilters_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:27:"prop_getarchives.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:29:"prop_getarchives.parents_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:14:"includeContent";a:7:{s:4:"name";s:14:"includeContent";s:4:"desc";s:36:"prop_getarchives.includecontent_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:10:"includeTVs";a:7:{s:4:"name";s:10:"includeTVs";s:4:"desc";s:32:"prop_getarchives.includetvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:10:"processTVs";a:7:{s:4:"name";s:10:"processTVs";s:4:"desc";s:32:"prop_getarchives.processtvs_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"tvPrefix";a:7:{s:4:"name";s:8:"tvPrefix";s:4:"desc";s:30:"prop_getarchives.tvprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tv.";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:3:"idx";a:7:{s:4:"name";s:3:"idx";s:4:"desc";s:25:"prop_getarchives.idx_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"first";a:7:{s:4:"name";s:5:"first";s:4:"desc";s:27:"prop_getarchives.first_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:4:"last";a:7:{s:4:"name";s:4:"last";s:4:"desc";s:26:"prop_getarchives.last_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"debug";a:7:{s:4:"name";s:5:"debug";s:4:"desc";s:27:"prop_getarchives.debug_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(38, 0, 0, 'ArchivistGrouper', '', 0, 5, 0, '/**\n * Archivist\n *\n * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>\n *\n * This file is part of Archivist, a simple archive navigation system for MODx\n * Revolution.\n *\n * Archivist is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Archivist is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package archivist\n */\n/*\n * Display an archived result filter list, nested by month\n *\n * @package archivist\n */\n$archivist = $modx->getService(''archivist'',''Archivist'',$modx->getOption(''archivist.core_path'',null,$modx->getOption(''core_path'').''components/archivist/'').''model/archivist/'',$scriptProperties);\nif (!($archivist instanceof Archivist)) return '''';\n\n/* setup default properties */\n$mode = $modx->getOption(''mode'',$scriptProperties,''month'');\n$itemTpl = $modx->getOption(''itemTpl'',$scriptProperties,''itemBrief'');\n$parents = !empty($scriptProperties[''parents'']) ? $scriptProperties[''parents''] : $modx->resource->get(''id'');\n$parents = explode('','',$parents);\n$target = !empty($scriptProperties[''target'']) ? $scriptProperties[''target''] : $modx->resource->get(''id'');\n$depth = $modx->getOption(''depth'',$scriptProperties,10);\n$where = $modx->getOption(''where'',$scriptProperties,'''');\n$hideContainers = $modx->getOption(''hideContainers'',$scriptProperties,true);\n$sortBy = $modx->getOption(''sortBy'',$scriptProperties,''publishedon'');\n$sortDir = $modx->getOption(''sortDir'',$scriptProperties,''DESC'');\n$dateFormat = !empty($scriptProperties[''dateFormat'']) ? $scriptProperties[''dateFormat''] : '''';\n$limitGroups = $modx->getOption(''limitGroups'',$scriptProperties,12);\n$limitItems = $modx->getOption(''limitItems'',$scriptProperties,0);\n$resourceSeparator = $modx->getOption(''resourceSeparator'',$scriptProperties,"\\n");\n$groupSeparator = $modx->getOption(''monthSeparator'',$scriptProperties,"\\n");\n\n$filterPrefix = $modx->getOption(''filterPrefix'',$scriptProperties,''arc_'');\n$useFurls = $modx->getOption(''useFurls'',$scriptProperties,true);\n$persistGetParams = $modx->getOption(''persistGetParams'',$scriptProperties,false);\n/* handle existing GET params */\n$extraParams = $modx->getOption(''extraParams'',$scriptProperties,array());\n$extraParams = $archivist->mergeGetParams($extraParams,$persistGetParams,$filterPrefix);\n\n$cls = $modx->getOption(''cls'',$scriptProperties,''arc-resource-row'');\n$altCls = $modx->getOption(''altCls'',$scriptProperties,''arc-resource-row-alt'');\n\n/* set locale for date processing */\nif ($modx->getOption(''setLocale'',$scriptProperties,true)) {\n    $cultureKey = $modx->getOption(''cultureKey'',null,''en'');\n    $locale = !empty($scriptProperties[''locale'']) ? $scriptProperties[''locale''] : $cultureKey;\n    if (!empty($locale)) {\n        setlocale(LC_ALL,$locale);\n    }\n}\n\n/* find children of parents */\n$children = array();\nforeach ($parents as $parent) {\n    $pchildren = $modx->getChildIds($parent, $depth);\n    if (!empty($pchildren)) $children = array_merge($children, $pchildren);\n}\nif (!empty($children)) $parents = array_merge($parents, $children);\n\n/* build query */\n$c = $modx->newQuery(''modResource'');\n$c->where(array(\n    ''parent:IN'' => $parents,\n    ''published'' => true,\n    ''deleted'' => false,\n));\nif ($hideContainers) {\n    $c->where(array(\n        ''isfolder'' => false,\n    ));\n}\nif (!empty($where)) {\n    $where = $modx->fromJSON($where);\n    $c->where($where);\n}\n$c->sortby(''FROM_UNIXTIME(''.$sortBy.'',"%Y") ''.$sortDir.'', FROM_UNIXTIME(''.$sortBy.'',"%m") ''.$sortDir.'', FROM_UNIXTIME(''.$sortBy.'',"%d") ''.$sortDir,'''');\n$resources = $modx->getIterator(''modResource'',$c);\n\n/* get grouping constraint */\nswitch ($mode) {\n    case ''year'':\n        $groupConstraint = ''%Y-01-01'';\n        $groupDefaultTpl = ''yearContainer'';\n        break;\n    case ''month'':\n    default:\n        $groupConstraint = ''%Y-%m-01'';\n        $groupDefaultTpl = ''monthContainer'';\n        break;\n}\n$groupTpl = !empty($scriptProperties[''groupTpl'']) ? $scriptProperties[''groupTpl''] : $groupDefaultTpl;\n\n/* iterate over resources */\n$output = array();\n$children = array();\n$resourceArray = array();\n$groupIdx = 0;\n$childIdx = 0;\n$countGroups = 0;\nforeach ($resources as $resource) {\n    $resourceArray = $resource->toArray();\n    $date = $resource->get($sortBy);\n    $dateObj = strtotime($date);\n    $activeTime = strftime($groupConstraint,$dateObj);\n    if (!isset($currentTime)) {\n        $currentTime = $activeTime;\n    }\n\n    $resourceArray[''date''] = strftime($dateFormat,$dateObj);\n    $resourceArray[''month_name_abbr''] = strftime(''%h'',$dateObj);\n    $resourceArray[''month_name''] = strftime(''%B'',$dateObj);\n    $resourceArray[''month''] = strftime(''%m'',$dateObj);\n    $resourceArray[''year''] = strftime(''%Y'',$dateObj);\n    $resourceArray[''year_two_digit''] = strftime(''%y'',$dateObj);\n    $resourceArray[''day''] = strftime(''%d'',$dateObj);\n    $resourceArray[''weekday''] = strftime(''%A'',$dateObj);\n    $resourceArray[''weekday_abbr''] = strftime(''%a'',$dateObj);\n    $resourceArray[''weekday_idx''] = strftime(''%w'',$dateObj);\n\n    /* css classes */\n    $resourceArray[''cls''] = $cls;\n    if ($childIdx % 2) { $resourceArray[''cls''] .= '' ''.$altCls; }\n    $resourceArray[''idx''] = $childIdx;\n\n    if ($currentTime != $activeTime) {\n        $groupArray = array();\n        $timestamp = strtotime($currentTime);\n        $groupArray[''month_name''] = strftime(''%B'',$timestamp);\n        $groupArray[''month''] = strftime(''%m'',$timestamp);\n        $groupArray[''year''] = strftime(''%Y'',$timestamp);\n        $groupArray[''year_two_digit''] = strftime(''%y'',$timestamp);\n        $groupArray[''day''] = strftime(''%d'',$timestamp);\n        $groupArray[''weekday''] = strftime(''%A'',$timestamp);\n        $groupArray[''weekday_abbr''] = strftime(''%a'',$timestamp);\n        $groupArray[''weekday_idx''] = strftime(''%w'',$timestamp);\n        $groupArray[''resources''] = implode($resourceSeparator,$children);\n        $groupArray[''idx''] = $groupIdx;\n\n        /* setup GET params */\n        $params = array();\n        $params[$filterPrefix.''year''] = $groupArray[''year''];\n        if ($mode == ''month'') {\n            $params[$filterPrefix.''month''] = $groupArray[''month''];\n        }\n\n        if ($useFurls) {\n            $params = implode(''/'',$params);\n            if (!empty($extraParams)) $params .= ''?''.$extraParams;\n            $groupArray[''url''] = $modx->makeUrl($target).$params;\n        } else {\n            $params = http_build_query($params);\n            if (!empty($extraParams)) $params .= ''&''.$extraParams;\n            $groupArray[''url''] = $modx->makeUrl($target,'''',$params);\n        }\n        $output[] = $archivist->getChunk($groupTpl,$groupArray);\n        $children = array();\n        $childIdx = 0;\n        $countGroups++;\n        $groupIdx++;\n        $currentTime = $activeTime;\n    }\n\n    if ($limitItems == 0 || $childIdx < $limitItems) {\n        $children[] = $archivist->getChunk($itemTpl,$resourceArray);\n    }\n    $childIdx++;\n    if ($countGroups >= $limitGroups) {\n        break;\n    }\n}\n\n$groupArray = array();\n$timestamp = strtotime($currentTime);\n$groupArray[''month_name''] = strftime(''%B'',$timestamp);\n$groupArray[''month''] = strftime(''%m'',$timestamp);\n$groupArray[''year''] = strftime(''%Y'',$timestamp);\n$groupArray[''year_two_digit''] = strftime(''%y'',$timestamp);\n$groupArray[''day''] = strftime(''%d'',$timestamp);\n$groupArray[''weekday''] = strftime(''%A'',$timestamp);\n$groupArray[''weekday_abbr''] = strftime(''%a'',$timestamp);\n$groupArray[''weekday_idx''] = strftime(''%w'',$timestamp);\n$groupArray[''resources''] = implode($resourceSeparator,$children);\n$groupArray[''idx''] = $groupIdx;\n/* setup GET params */\n$params = array();\n$params[$filterPrefix.''year''] = $groupArray[''year''];\nif ($mode == ''month'') {\n    $params[$filterPrefix.''month''] = $groupArray[''month''];\n}\n\nif ($useFurls) {\n    $params = implode(''/'',$params);\n    if (!empty($extraParams)) $params .= ''?''.$extraParams;\n    $groupArray[''url''] = $modx->makeUrl($target).$params;\n} else {\n    $params = http_build_query($params);\n    if (!empty($extraParams)) $params .= ''&''.$extraParams;\n    $groupArray[''url''] = $modx->makeUrl($target,'''',$params);\n}\n$output[] = $archivist->getChunk($groupTpl,$groupArray);\n$children = array();\n$childIdx = 0;\n$countGroups++;\n$groupIdx++;\n\n/* output or set to placeholder */\n$output = implode("\\n",$output);\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return '''';\n}\nreturn $output;', 0, 'a:20:{s:4:"mode";a:7:{s:4:"name";s:4:"mode";s:4:"desc";s:31:"prop_archivistgrouper.mode_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:14:"prop_arc.month";s:5:"value";s:5:"month";}i:1;a:2:{s:4:"text";s:13:"prop_arc.year";s:5:"value";s:4:"year";}}s:5:"value";s:5:"month";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"itemTpl";a:7:{s:4:"name";s:7:"itemTpl";s:4:"desc";s:34:"prop_archivistgrouper.itemtpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"itemBrief";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"groupTpl";a:7:{s:4:"name";s:8:"groupTpl";s:4:"desc";s:35:"prop_archivistgrouper.grouptpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"target";a:7:{s:4:"name";s:6:"target";s:4:"desc";s:33:"prop_archivistgrouper.target_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:34:"prop_archivistgrouper.parents_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:32:"prop_archivistgrouper.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:2:"10";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:33:"prop_archivistgrouper.sortby_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"publishedon";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:34:"prop_archivistgrouper.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:18:"prop_arc.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:19:"prop_arc.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:4:"DESC";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"limitGroups";a:7:{s:4:"name";s:11:"limitGroups";s:4:"desc";s:38:"prop_archivistgrouper.limitgroups_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:12;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:10:"dateFormat";a:7:{s:4:"name";s:10:"dateFormat";s:4:"desc";s:37:"prop_archivistgrouper.dateformat_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:3:"cls";a:7:{s:4:"name";s:3:"cls";s:4:"desc";s:30:"prop_archivistgrouper.cls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:7:"arc-row";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"altCls";a:7:{s:4:"name";s:6:"altCls";s:4:"desc";s:33:"prop_archivistgrouper.altcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:11:"arc-row-alt";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:40:"prop_archivistgrouper.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:9:"setLocale";a:7:{s:4:"name";s:9:"setLocale";s:4:"desc";s:36:"prop_archivistgrouper.setlocale_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:6:"locale";a:7:{s:4:"name";s:6:"locale";s:4:"desc";s:33:"prop_archivistgrouper.locale_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:12:"filterPrefix";a:7:{s:4:"name";s:12:"filterPrefix";s:4:"desc";s:39:"prop_archivistgrouper.filterprefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"arc_";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:8:"useFurls";a:7:{s:4:"name";s:8:"useFurls";s:4:"desc";s:30:"prop_archivistgrouper.usefurls";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:16:"persistGetParams";a:7:{s:4:"name";s:16:"persistGetParams";s:4:"desc";s:43:"prop_archivistgrouper.persistgetparams_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:11:"extraParams";a:7:{s:4:"name";s:11:"extraParams";s:4:"desc";s:38:"prop_archivistgrouper.extraparams_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}s:14:"hideContainers";a:7:{s:4:"name";s:14:"hideContainers";s:4:"desc";s:41:"prop_archivistgrouper.hidecontainers_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"archivist:properties";s:4:"area";s:0:"";}}', '', 0, ''),
(41, 1, 0, 'getDate calendar', '', 0, 0, 0, 'if(isset($_GET[''arc_year'']) && isset($_GET[''arc_month''])){\n    if(empty($_GET[''arc_year'']) || empty($_GET[''arc_month''])){\n        header(''Location: /'');\n        exit();\n    }\n    switch($_GET[''arc_month'']){\n        case ''01'': return ''января ''.$_GET[''arc_year''].'' года'';\n        case ''02'': return ''февраля ''.$_GET[''arc_year''].'' года'';\n        case ''03'': return ''марта ''.$_GET[''arc_year''].'' года'';\n        case ''04'': return ''апреля ''.$_GET[''arc_year''].'' года'';\n        case ''05'': return ''мая ''.$_GET[''arc_year''].'' года'';\n        case ''06'': return ''июня ''.$_GET[''arc_year''].'' года'';\n        case ''07'': return ''июля ''.$_GET[''arc_year''].'' года'';\n        case ''08'': return ''августа ''.$_GET[''arc_year''].'' года'';\n        case ''09'': return ''сентября ''.$_GET[''arc_year''].'' года'';\n        case ''10'': return ''октября ''.$_GET[''arc_year''].'' года'';\n        case ''11'': return ''ноября ''.$_GET[''arc_year''].'' года'';\n        case ''12'': return ''декабря ''.$_GET[''arc_year''].'' года'';\n    }\n}\nelse{\n    header(''Location: /'');\n    exit();\n}', 0, 'a:0:{}', '', 0, ''),
(42, 1, 0, 'getPosts calendar', '', 0, 0, 0, '$result=$modx->query(''SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri` FROM `modx_site_content` WHERE FROM_UNIXTIME(`publishedon`, \\''%m %Y\\'')=\\''''.$_GET[''arc_month''].'' ''.$_GET[''arc_year''].''\\'' AND `parent`!=0 AND `isfolder`=0 ORDER BY `publishedon` DESC'')->fetchAll(PDO::FETCH_ASSOC);\n$return='''';\nforeach($result as $post){\n    $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $post[''content'']);\n    $limit=count($tmp)>=50?50:count($tmp);\n    $post[''content'']='''';\n    for($i=0; $i<=$limit; $i++){\n        $post[''content''].=$tmp[$i].'' '';\n    }\n    $post[''content'']=rtrim($post[''content'']);\n    $return.=''<div class="post-wrap">'';\n        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[''id'']} AND `contentid`={$post[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n        if($r){\n            $return.=''<div class="post-thumbnail">\n                <img src="''.$r[''value''].''" alt="Image поста" class="post-thumbnail__image">\n            </div>'';\n        }\n        $return.=''<div class="post-content">'';\n            if($post[''publishedon'']!=0){\n                $return.=''<div class="post-content__post-info">\n                    <div class="post-date">''.date(''F d, Y'', $post[''publishedon'']).''</div>\n                </div>'';\n            }\n            $return.=''<div class="post-content__post-text">\n                <div class="post-title">''.$post[''pagetitle''].''</div>\n                <p>''.$post[''content''].''...</p>\n            </div>\n            <div class="post-content__post-control">\n                <a href="''.$post[''uri''].''" class="btn-read-post">Читать далее &gt;&gt;</a>\n            </div>\n        </div>\n    </div>'';\n}\nif($return==''''){\n    $return=''Статей не найдено.'';\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(29, 1, 0, 'pagination post', '', 0, 0, 0, '$id=$modx->resource->get(''id'');\n$result=$modx->query(''SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri` FROM `modx_site_content`WHERE `parent`!=0 AND `isfolder`=0 ORDER BY `publishedon` DESC'');\n$return='''';\n$result=$result->fetchAll(PDO::FETCH_ASSOC);\nwhile(true){\n    $current=current($result);\n    if($current[''id'']!=$id){\n        if(!next($result)){\n            break;\n        }\n        continue;\n    }\n    else{\n        $prev=prev($result);\n        next($result);\n        if(!$prev){\n            reset($result);\n        }\n        $next=next($result);\n        if(!$prev){\n            $return.='''';\n        }\n        else{\n            $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $prev[''content'']);\n            $limit=count($tmp)>=50?50:count($tmp);\n            $prev[''content'']='''';\n            for($i=0; $i<=$limit; $i++){\n                $prev[''content''].=$tmp[$i].'' '';\n            }\n            $prev[''content'']=rtrim($prev[''content'']);\n            $return.=''<div class="article-pagination__block pagination-prev-left">\n            <a href="''.$prev[''uri''].''" class="article-pagination__link"><i class="icon icon-angle-double-left"></i>Предыдущая статья</a>\n            <div class="wrap-pagination-preview pagination-prev-left">'';\n            $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$prev[''id'']} AND `contentid`={$prev[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n            if($r){\n                $return.=''<div class="preview-article__img">\n                    <img src="''.$r[''value''].''" class="preview-article__image">\n                </div>'';\n            }\n            $return.=''</div>\n            <div class="preview-article__content">'';\n                if($prev[''publishedon'']!=0){\n                    $return.=''<div class="preview-article__info"><a href="#" class="post-date">''.date(''Y-m-d H:i'', $prev[''publishedon'']).''</a></div>'';\n                }\n                $return.=''<div class="preview-article__text">''.$prev[''content''].''...''.''</div>\n            </div>\n        </div>'';\n        }\n        if(!$next){\n            $return.='''';\n        }\n        else{\n            $tmp=preg_split(''/[^\\p{L}\\p{N}\\'']+/u'', $next[''content'']);\n            $limit=count($tmp)>=50?50:count($tmp);\n            $next[''content'']='''';\n            for($i=0; $i<=$limit; $i++){\n                $next[''content''].=$tmp[$i].'' '';\n            }\n            $next[''content'']=rtrim($next[''content'']);\n            $return.=''<div class="article-pagination__block pagination-prev-right">\n            <a href="''.$next[''uri''].''" class="article-pagination__link">Следующая статья<i class="icon icon-angle-double-right"></i></a>\n            <div class="wrap-pagination-preview pagination-prev-right">'';\n            $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$next[''id'']} AND `contentid`={$next[''id'']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);\n            if($r){\n                $return.=''<div class="preview-article__img">\n                    <img src="''.$r[''value''].''" class="preview-article__image">\n                </div>'';\n            }\n            $return.=''</div>\n            <div class="preview-article__content">'';\n                if($next[''publishedon'']!=0){\n                    $return.=''<div class="preview-article__info"><a href="#" class="post-date">''.date(''Y-m-d H:i'', $next[''publishedon'']).''</a></div>'';\n                }\n                $return.=''<div class="preview-article__text">''.$next[''content''].''...''.''</div>\n            </div>\n        </div>'';\n        break;\n        }\n    }\n}\nreturn $return;', 0, 'a:0:{}', '', 0, ''),
(25, 0, 0, 'tagLister', 'A simple tag listing snippet that grabs tags from a TV value.', 0, 4, 0, '/**\n * tagLister\n *\n * Copyright 2010 by Shaun McCormick <shaun@modxcms.com>\n *\n * This file is part of tagLister, a simple tag listing snippet for MODx\n * Revolution.\n *\n * tagLister is free software; you can redistribute it and/or modify it under\n * the terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * tagLister is distributed in the hope that it will be useful, but WITHOUT\n * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n * details.\n *\n * You should have received a copy of the GNU General Public License along with\n * tagLister; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package taglister\n */\n/**\n * tagLister snippet\n *\n * @var modX $modx\n * @var TagLister $tagLister\n * @var array $scriptProperties\n *\n * @package taglister\n */\n$tagLister = $modx->getService(''taglister'',''TagLister'',$modx->getOption(''taglister.core_path'',null,$modx->getOption(''core_path'').''components/taglister/'').''model/taglister/'',$scriptProperties);\nif (!($tagLister instanceof TagLister)) return '''';\n$modx->lexicon->load(''taglister:default'');\n\n/* setup default properties */\n$tpl = $modx->getOption(''tpl'',$scriptProperties,''tag'');\n$tv = $modx->getOption(''tv'',$scriptProperties,''tags'');\n$tvDelimiter = $modx->getOption(''tvDelimiter'',$scriptProperties,'','');\n$target = $modx->getOption(''target'',$scriptProperties,1);\n$tagVar = $modx->getOption(''tagVar'',$scriptProperties,''tag'');\n$tagKeyVar = $modx->getOption(''tagKeyVar'',$scriptProperties,''key'');\n$limit = $modx->getOption(''limit'',$scriptProperties,10);\n$sortBy = strtolower($modx->getOption(''sortBy'',$scriptProperties,''count''));\n$sortDir = strtoupper($modx->getOption(''sortDir'',$scriptProperties,''ASC''));\n$cls = $modx->getOption(''cls'',$scriptProperties,'''');\n$altCls = $modx->getOption(''altCls'',$scriptProperties,'''');\n$firstCls = $modx->getOption(''firstCls'',$scriptProperties,'''');\n$lastCls = $modx->getOption(''lastCls'',$scriptProperties,'''');\n$activeCls = $modx->getOption(''activeCls'',$scriptProperties,'''');\n$activeTag = isset($_REQUEST[$tagVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagVar])) : '''';\n$activeKey = isset($_REQUEST[$tagKeyVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagKeyVar])) : '''';\n$all = $modx->getOption(''all'',$scriptProperties,false);\n$toLower = $modx->getOption(''toLower'',$scriptProperties,false);\n$weights = $modx->getOption(''weights'',$scriptProperties,0);\n$weightCls = $modx->getOption(''weightCls'',$scriptProperties,'''');\n$useTagFurl = $modx->getOption(''useTagFurl'',$scriptProperties,false);\n$furlKey = $modx->getOption(''furlKey'',$scriptProperties,''tags'');\n\n\n/* get TV values */\n$c = $modx->newQuery(''modTemplateVarResource'');\n$c->innerJoin(''modTemplateVar'',''TemplateVar'');\n$c->innerJoin(''modResource'',''Resource'');\n$c->leftJoin(''modUser'',''CreatedBy'',''CreatedBy.id = Resource.createdby'');\n$c->leftJoin(''modUser'',''PublishedBy'',''PublishedBy.id = Resource.publishedby'');\n$c->leftJoin(''modUser'',''EditedBy'',''EditedBy.id = Resource.editedby'');\n$tvPk = (int)$tv;\nif (!empty($tvPk)) {\n    $c->where(array(''TemplateVar.id'' => $tvPk));\n} else {\n    $c->where(array(''TemplateVar.name'' => $tv));\n}\n/* parents support */\n$parents = isset($parents) ? explode('','', $parents) : array();\nif (!empty($parents)) {\n    $depth = isset($depth) ? (integer) $depth : 10;\n    $children = array();\n    foreach ($parents as $parent) {\n        $kids = $modx->getChildIds($parent,$depth);\n        if (!empty($kids)) {\n            $children = array_merge($children,$kids);\n        }\n    }\n    if (!empty($children)) {\n        $children = array_unique($children);\n        $parents = array_merge($parents,$children);\n    }\n    $parents = array_unique($parents);\n    if (!empty($parents)) {\n        $c->where(array(\n            ''Resource.id:IN'' => $parents,\n        ));\n    }\n}\nif (!$modx->getOption(''includeDeleted'',$scriptProperties,false)) {\n    $c->where(array(''Resource.deleted'' => 0));\n}\nif (!$modx->getOption(''includeUnpublished'',$scriptProperties,false)) {\n    $c->where(array(''Resource.published'' => 1));\n}\n/* json where support */\n$where = $modx->getOption(''where'',$scriptProperties,'''');\nif (!empty($where)) {\n    $where = $modx->fromJSON($where);\n    if (is_array($where) && !empty($where)) {\n        $c->where($where);\n    }\n}\nif ($sortBy == ''publishedon'') {\n    $c->sortby(''Resource.publishedon'',$sortDir);\n} else if (in_array($sortBy,array(''rand'',''random'',''rand()''))) {\n    $c->sortby(''RAND()'','''');\n}\n$tags = $modx->getCollection(''modTemplateVarResource'',$c);\n\n/* parse TV values */\n$output = array();\n$tagList = array();\n$encoding = $modx->getOption(''modx_charset'',$scriptProperties,''UTF-8'');\n$useMultibyte = $modx->getOption(''use_multibyte'',$scriptProperties,false);\n/** @var modTemplateVarResource $tag */\nforeach ($tags as $tag) {\n   $v = $tag->get(''value'');\n   $vs = explode($tvDelimiter,$v);\n   foreach ($vs as $key) {\n      $key = trim($key);\n      if (empty($key)) continue;\n      if ($toLower) { /* allow for case-insensitive filtering */\n          $key = $useMultibyte ? mb_strtolower($key,$encoding) : strtolower($key);\n      }\n      /* increment tag count */\n      if (empty($tagList[$key])) {\n         $tagList[$key] = 1;\n      } else { $tagList[$key]++; }\n   }\n}\n\n/* sort */\nswitch ($sortBy.''-''.$sortDir) {\n    case ''publishedon-DESC'': case ''publishedon-ASC'': break;\n    case ''tag-ASC'': ksort($tagList); break;\n    case ''tag-DESC'': krsort($tagList); break;\n    case ''count-DESC'': asort($tagList); break;\n    case ''count-ASC'': default: arsort($tagList); break;\n    case ''rand-ASC'': case ''random-ASC'': case ''rand()-asc'': $tagList = $tagLister->ashuffle($tagList); break;\n}\n\n/* iterate */\n$totalTags = 0;\n$i = $all ? 1 : 0;\nforeach ($tagList as $tag => $count) {\n    if ($i >= $limit) break;\n    $tagCls = $cls.((!empty($altCls) && $i % 2)? '' ''.$altCls : '''');\n    if (!empty($firstCls) && $i == 0) $tagCls .= '' ''.$firstCls;\n    if (!empty($lastCls) && ($i+1 >= $limit || $i == $count)) $tagCls .= '' ''.$lastCls;\n    /* if tag is currently being viewed, mark as active */\n    if (!empty($activeCls) && $tag==$activeTag && (empty($activeKey) || $tv==$activeKey)) $tagCls .= '' ''.$activeCls;\n    /* handle weighting for css */\n    if (!empty($weights) && !empty($weightCls)) $tagCls .= '' ''.$weightCls.ceil($count / (max($tagList) / $weights));\n\n    $tagArray = array(\n        ''tag'' => $tag,\n        ''tagVar'' => $tagVar,\n        ''tagKey'' => $tv,\n        ''tagKeyVar'' => $tagKeyVar,\n        ''count'' => $count,\n        ''target'' => $target,\n        ''cls'' => $tagCls,\n        ''idx'' => $i,\n    );\n    $tagParams = array();\n    if (empty($useTagFurl)) {\n        $tagParams[$tagVar] = $tag;\n        $tagParams[$tagKeyVar] = $tv;\n    }\n    $tagArray[''url''] = $modx->makeUrl($target,'''',$tagParams);\n    if (!empty($useTagFurl)) {\n        $tagArray[''url''] = rtrim($tagArray[''url''],''/'').''/''.(!empty($furlKey) ? $furlKey : $tv).''/''.urlencode($tag);\n    }\n\n    $output[] = $tagLister->getChunk($tpl,$tagArray);\n    $totalTags += $count;\n    $i++;\n}\n\nif ($all) {\n    $allTpl = $modx->getOption(''allTpl'',$scriptProperties,''all'');\n    $allChunk = $tagLister->getChunk($allTpl,array(\n        ''tag'' => !empty($scriptProperties[''allText'']) ? $scriptProperties[''allText''] : $modx->lexicon(''all_tags''),\n        ''tagVar'' => $tagVar,\n        ''tagKey'' => $tv,\n        ''tagKeyVar'' => $tagKeyVar,\n        ''count'' => $totalTags,\n        ''target'' => $target,\n        ''cls'' => $cls,\n        ''url'' => $useTagFurl ? $modx->makeUrl($target).$tv.''/'' : $modx->makeUrl($target,'''',array(\n            $tagVar => '''',\n            $tagKeyVar => $tv,\n        )),\n    ));\n    if ($modx->getOption(''allPosition'',$scriptProperties,''B'') == ''T'') {\n        array_unshift($output,$allChunk);\n    } else {\n        array_push($output,$allChunk);\n    }\n}\n\n/* output */\n$outputSeparator = $modx->getOption(''outputSeparator'',$scriptProperties,"\\n");\n$output = implode($outputSeparator,$output);\n$toPlaceholder = $modx->getOption(''toPlaceholder'',$scriptProperties,false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return '''';\n}\nreturn $output;', 0, 'a:28:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:23:"prop_taglister.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:2:"tv";a:7:{s:4:"name";s:2:"tv";s:4:"desc";s:22:"prop_taglister.tv_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"tags";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"tvDelimiter";a:7:{s:4:"name";s:11:"tvDelimiter";s:4:"desc";s:31:"prop_taglister.tvdelimiter_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:",";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"target";a:7:{s:4:"name";s:6:"target";s:4:"desc";s:26:"prop_taglister.target_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"tagVar";a:7:{s:4:"name";s:6:"tagVar";s:4:"desc";s:26:"prop_taglister.tagvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"tagKeyVar";a:7:{s:4:"name";s:9:"tagKeyVar";s:4:"desc";s:29:"prop_taglister.tagkeyvar_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"key";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"sortBy";a:7:{s:4:"name";s:6:"sortBy";s:4:"desc";s:26:"prop_taglister.sortby_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:5:"count";s:5:"value";s:5:"count";}i:1;a:2:{s:4:"text";s:3:"tag";s:5:"value";s:3:"tag";}}s:5:"value";s:5:"count";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"sortDir";a:7:{s:4:"name";s:7:"sortDir";s:4:"desc";s:27:"prop_taglister.sortdir_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:9:"ascending";s:4:"vaue";s:3:"ASC";}i:1;a:2:{s:4:"text";s:10:"descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"limit";a:7:{s:4:"name";s:5:"limit";s:4:"desc";s:25:"prop_taglister.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:10;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"parents";a:7:{s:4:"name";s:7:"parents";s:4:"desc";s:27:"prop_taglister.parents_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"depth";a:7:{s:4:"name";s:5:"depth";s:4:"desc";s:25:"prop_taglister.depth_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:10;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:14:"includeDeleted";a:7:{s:4:"name";s:14:"includeDeleted";s:4:"desc";s:34:"prop_taglister.includedeleted_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:18:"includeUnpublished";a:7:{s:4:"name";s:18:"includeUnpublished";s:4:"desc";s:38:"prop_taglister.includeunpublished_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:5:"where";a:7:{s:4:"name";s:5:"where";s:4:"desc";s:25:"prop_taglister.where_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:3:"cls";a:7:{s:4:"name";s:3:"cls";s:4:"desc";s:23:"prop_taglister.cls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"tl-tag";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"altCls";a:7:{s:4:"name";s:6:"altCls";s:4:"desc";s:26:"prop_taglister.altcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:10:"tl-tag-alt";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:8:"firstCls";a:7:{s:4:"name";s:8:"firstCls";s:4:"desc";s:28:"prop_taglister.firstcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"lastCls";a:7:{s:4:"name";s:7:"lastCls";s:4:"desc";s:27:"prop_taglister.lastcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"toLower";a:7:{s:4:"name";s:7:"toLower";s:4:"desc";s:27:"prop_taglister.tolower_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:3:"all";a:7:{s:4:"name";s:3:"all";s:4:"desc";s:23:"prop_taglister.all_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:6:"allTpl";a:7:{s:4:"name";s:6:"allTpl";s:4:"desc";s:26:"prop_taglister.alltpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:3:"all";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:11:"allPosition";a:7:{s:4:"name";s:11:"allPosition";s:4:"desc";s:31:"prop_taglister.allposition_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:6:"bottom";s:5:"value";s:1:"B";}i:1;a:2:{s:4:"text";s:3:"top";s:5:"value";s:1:"T";}}s:5:"value";s:1:"B";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"allText";a:7:{s:4:"name";s:7:"allText";s:4:"desc";s:27:"prop_taglister.alltext_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:13:"toPlaceholder";a:7:{s:4:"name";s:13:"toPlaceholder";s:4:"desc";s:33:"prop_taglister.toplaceholder_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:15:"outputSeparator";a:7:{s:4:"name";s:15:"outputSeparator";s:4:"desc";s:35:"prop_taglister.outputseparator_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"\n";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"activeCls";a:7:{s:4:"name";s:9:"activeCls";s:4:"desc";s:29:"prop_taglister.activecls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:9:"weightCls";a:7:{s:4:"name";s:9:"weightCls";s:4:"desc";s:29:"prop_taglister.weightcls_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:13:"tl-tag-weight";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}s:7:"weights";a:7:{s:4:"name";s:7:"weights";s:4:"desc";s:27:"prop_taglister.weights_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"5";s:7:"lexicon";s:20:"taglister:properties";s:4:"area";s:0:"";}}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(23, 0, 0, 'Wayfinder', 'Wayfinder for MODx Revolution 2.0.0-beta-5 and later.', 0, 0, 0, '/**\n * Wayfinder Snippet to build site navigation menus\n *\n * Totally refactored from original DropMenu nav builder to make it easier to\n * create custom navigation by using chunks as output templates. By using\n * templates, many of the paramaters are no longer needed for flexible output\n * including tables, unordered- or ordered-lists (ULs or OLs), definition lists\n * (DLs) or in any other format you desire.\n *\n * @version 2.1.1-beta5\n * @author Garry Nutting (collabpad.com)\n * @author Kyle Jaebker (muddydogpaws.com)\n * @author Ryan Thrash (modx.com)\n * @author Shaun McCormick (modx.com)\n * @author Jason Coward (modx.com)\n *\n * @example [[Wayfinder? &startId=`0`]]\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package wayfinder\n */\n$wayfinder_base = $modx->getOption(''wayfinder.core_path'',$scriptProperties,$modx->getOption(''core_path'').''components/wayfinder/'');\n\n/* include a custom config file if specified */\nif (isset($scriptProperties[''config''])) {\n    $scriptProperties[''config''] = str_replace(''../'','''',$scriptProperties[''config'']);\n    $scriptProperties[''config''] = $wayfinder_base.''configs/''.$scriptProperties[''config''].''.config.php'';\n} else {\n    $scriptProperties[''config''] = $wayfinder_base.''configs/default.config.php'';\n}\nif (file_exists($scriptProperties[''config''])) {\n    include $scriptProperties[''config''];\n}\n\n/* include wayfinder class */\ninclude_once $wayfinder_base.''wayfinder.class.php'';\nif (!$modx->loadClass(''Wayfinder'',$wayfinder_base,true,true)) {\n    return ''error: Wayfinder class not found'';\n}\n$wf = new Wayfinder($modx,$scriptProperties);\n\n/* get user class definitions\n * TODO: eventually move these into config parameters */\n$wf->_css = array(\n    ''first'' => isset($firstClass) ? $firstClass : '''',\n    ''last'' => isset($lastClass) ? $lastClass : ''last'',\n    ''here'' => isset($hereClass) ? $hereClass : ''active'',\n    ''parent'' => isset($parentClass) ? $parentClass : '''',\n    ''row'' => isset($rowClass) ? $rowClass : '''',\n    ''outer'' => isset($outerClass) ? $outerClass : '''',\n    ''inner'' => isset($innerClass) ? $innerClass : '''',\n    ''level'' => isset($levelClass) ? $levelClass: '''',\n    ''self'' => isset($selfClass) ? $selfClass : '''',\n    ''weblink'' => isset($webLinkClass) ? $webLinkClass : ''''\n);\n\n/* get user templates\n * TODO: eventually move these into config parameters */\n$wf->_templates = array(\n    ''outerTpl'' => isset($outerTpl) ? $outerTpl : '''',\n    ''rowTpl'' => isset($rowTpl) ? $rowTpl : '''',\n    ''parentRowTpl'' => isset($parentRowTpl) ? $parentRowTpl : '''',\n    ''parentRowHereTpl'' => isset($parentRowHereTpl) ? $parentRowHereTpl : '''',\n    ''hereTpl'' => isset($hereTpl) ? $hereTpl : '''',\n    ''innerTpl'' => isset($innerTpl) ? $innerTpl : '''',\n    ''innerRowTpl'' => isset($innerRowTpl) ? $innerRowTpl : '''',\n    ''innerHereTpl'' => isset($innerHereTpl) ? $innerHereTpl : '''',\n    ''activeParentRowTpl'' => isset($activeParentRowTpl) ? $activeParentRowTpl : '''',\n    ''categoryFoldersTpl'' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : '''',\n    ''startItemTpl'' => isset($startItemTpl) ? $startItemTpl : ''''\n);\n\n/* process Wayfinder */\n$output = $wf->run();\nif ($wf->_config[''debug'']) {\n    $output .= $wf->renderDebugOutput();\n}\n\n/* output results */\nif ($wf->_config[''ph'']) {\n    $modx->setPlaceholder($wf->_config[''ph''],$output);\n} else {\n    return $output;\n}', 0, 'a:48:{s:5:"level";a:6:{s:4:"name";s:5:"level";s:4:"desc";s:25:"prop_wayfinder.level_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"includeDocs";a:6:{s:4:"name";s:11:"includeDocs";s:4:"desc";s:31:"prop_wayfinder.includeDocs_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"excludeDocs";a:6:{s:4:"name";s:11:"excludeDocs";s:4:"desc";s:31:"prop_wayfinder.excludeDocs_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"contexts";a:6:{s:4:"name";s:8:"contexts";s:4:"desc";s:28:"prop_wayfinder.contexts_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"cacheResults";a:6:{s:4:"name";s:12:"cacheResults";s:4:"desc";s:32:"prop_wayfinder.cacheResults_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"cacheTime";a:6:{s:4:"name";s:9:"cacheTime";s:4:"desc";s:29:"prop_wayfinder.cacheTime_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";i:3600;s:7:"lexicon";s:20:"wayfinder:properties";}s:2:"ph";a:6:{s:4:"name";s:2:"ph";s:4:"desc";s:22:"prop_wayfinder.ph_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"debug";a:6:{s:4:"name";s:5:"debug";s:4:"desc";s:25:"prop_wayfinder.debug_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"ignoreHidden";a:6:{s:4:"name";s:12:"ignoreHidden";s:4:"desc";s:32:"prop_wayfinder.ignoreHidden_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"hideSubMenus";a:6:{s:4:"name";s:12:"hideSubMenus";s:4:"desc";s:32:"prop_wayfinder.hideSubMenus_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:13:"useWeblinkUrl";a:6:{s:4:"name";s:13:"useWeblinkUrl";s:4:"desc";s:33:"prop_wayfinder.useWeblinkUrl_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"fullLink";a:6:{s:4:"name";s:8:"fullLink";s:4:"desc";s:28:"prop_wayfinder.fullLink_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"scheme";a:6:{s:4:"name";s:6:"scheme";s:4:"desc";s:26:"prop_wayfinder.scheme_desc";s:4:"type";s:4:"list";s:7:"options";a:3:{i:0;a:2:{s:4:"text";s:23:"prop_wayfinder.relative";s:5:"value";s:0:"";}i:1;a:2:{s:4:"text";s:23:"prop_wayfinder.absolute";s:5:"value";s:3:"abs";}i:2;a:2:{s:4:"text";s:19:"prop_wayfinder.full";s:5:"value";s:4:"full";}}s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"sortOrder";a:6:{s:4:"name";s:9:"sortOrder";s:4:"desc";s:29:"prop_wayfinder.sortOrder_desc";s:4:"type";s:4:"list";s:7:"options";a:2:{i:0;a:2:{s:4:"text";s:24:"prop_wayfinder.ascending";s:5:"value";s:3:"ASC";}i:1;a:2:{s:4:"text";s:25:"prop_wayfinder.descending";s:5:"value";s:4:"DESC";}}s:5:"value";s:3:"ASC";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"sortBy";a:6:{s:4:"name";s:6:"sortBy";s:4:"desc";s:26:"prop_wayfinder.sortBy_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menuindex";s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"limit";a:6:{s:4:"name";s:5:"limit";s:4:"desc";s:25:"prop_wayfinder.limit_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"0";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"cssTpl";a:6:{s:4:"name";s:6:"cssTpl";s:4:"desc";s:26:"prop_wayfinder.cssTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"jsTpl";a:6:{s:4:"name";s:5:"jsTpl";s:4:"desc";s:25:"prop_wayfinder.jsTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"rowIdPrefix";a:6:{s:4:"name";s:11:"rowIdPrefix";s:4:"desc";s:31:"prop_wayfinder.rowIdPrefix_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"textOfLinks";a:6:{s:4:"name";s:11:"textOfLinks";s:4:"desc";s:31:"prop_wayfinder.textOfLinks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"menutitle";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"titleOfLinks";a:6:{s:4:"name";s:12:"titleOfLinks";s:4:"desc";s:32:"prop_wayfinder.titleOfLinks_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:9:"pagetitle";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"displayStart";a:6:{s:4:"name";s:12:"displayStart";s:4:"desc";s:32:"prop_wayfinder.displayStart_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"firstClass";a:6:{s:4:"name";s:10:"firstClass";s:4:"desc";s:30:"prop_wayfinder.firstClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:5:"first";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"lastClass";a:6:{s:4:"name";s:9:"lastClass";s:4:"desc";s:29:"prop_wayfinder.lastClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"last";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"hereClass";a:6:{s:4:"name";s:9:"hereClass";s:4:"desc";s:29:"prop_wayfinder.hereClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"active";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"parentClass";a:6:{s:4:"name";s:11:"parentClass";s:4:"desc";s:31:"prop_wayfinder.parentClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"rowClass";a:6:{s:4:"name";s:8:"rowClass";s:4:"desc";s:28:"prop_wayfinder.rowClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"outerClass";a:6:{s:4:"name";s:10:"outerClass";s:4:"desc";s:30:"prop_wayfinder.outerClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"innerClass";a:6:{s:4:"name";s:10:"innerClass";s:4:"desc";s:30:"prop_wayfinder.innerClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:10:"levelClass";a:6:{s:4:"name";s:10:"levelClass";s:4:"desc";s:30:"prop_wayfinder.levelClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"selfClass";a:6:{s:4:"name";s:9:"selfClass";s:4:"desc";s:29:"prop_wayfinder.selfClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"webLinkClass";a:6:{s:4:"name";s:12:"webLinkClass";s:4:"desc";s:32:"prop_wayfinder.webLinkClass_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"outerTpl";a:6:{s:4:"name";s:8:"outerTpl";s:4:"desc";s:28:"prop_wayfinder.outerTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"rowTpl";a:6:{s:4:"name";s:6:"rowTpl";s:4:"desc";s:26:"prop_wayfinder.rowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"parentRowTpl";a:6:{s:4:"name";s:12:"parentRowTpl";s:4:"desc";s:32:"prop_wayfinder.parentRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:16:"parentRowHereTpl";a:6:{s:4:"name";s:16:"parentRowHereTpl";s:4:"desc";s:36:"prop_wayfinder.parentRowHereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:7:"hereTpl";a:6:{s:4:"name";s:7:"hereTpl";s:4:"desc";s:27:"prop_wayfinder.hereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:8:"innerTpl";a:6:{s:4:"name";s:8:"innerTpl";s:4:"desc";s:28:"prop_wayfinder.innerTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"innerRowTpl";a:6:{s:4:"name";s:11:"innerRowTpl";s:4:"desc";s:31:"prop_wayfinder.innerRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"innerHereTpl";a:6:{s:4:"name";s:12:"innerHereTpl";s:4:"desc";s:32:"prop_wayfinder.innerHereTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"activeParentRowTpl";a:6:{s:4:"name";s:18:"activeParentRowTpl";s:4:"desc";s:38:"prop_wayfinder.activeParentRowTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"categoryFoldersTpl";a:6:{s:4:"name";s:18:"categoryFoldersTpl";s:4:"desc";s:38:"prop_wayfinder.categoryFoldersTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:12:"startItemTpl";a:6:{s:4:"name";s:12:"startItemTpl";s:4:"desc";s:32:"prop_wayfinder.startItemTpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:11:"permissions";a:6:{s:4:"name";s:11:"permissions";s:4:"desc";s:31:"prop_wayfinder.permissions_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:4:"list";s:7:"lexicon";s:20:"wayfinder:properties";}s:6:"hereId";a:6:{s:4:"name";s:6:"hereId";s:4:"desc";s:26:"prop_wayfinder.hereId_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:5:"where";a:6:{s:4:"name";s:5:"where";s:4:"desc";s:25:"prop_wayfinder.where_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:9:"templates";a:6:{s:4:"name";s:9:"templates";s:4:"desc";s:29:"prop_wayfinder.templates_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}s:18:"previewUnpublished";a:6:{s:4:"name";s:18:"previewUnpublished";s:4:"desc";s:38:"prop_wayfinder.previewunpublished_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:20:"wayfinder:properties";}}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'BaseTemplate', 'Template', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">[[*pagetitle]]</h1>\n                <div class="posts-list">\n                    [[!getPosts index]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'Category', '', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">Категория ''[[*pagetitle]]''</h1>\n                <div class="posts-list">\n                    [[!getPosts category]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(6, 1, 0, 'Search', '', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">Поиск по запросу ''[[!getSearchQuery search]]''</h1>\n                <div class="posts-list">\n                    [[!getPosts search]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(7, 1, 0, 'Calendar', '', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">Статьи от [[!getDate calendar]]</h1>\n                <div class="posts-list">\n                    [[!getPosts calendar]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'Page', '', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">[[*pagetitle]]</h1>\n                [[*content]]\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'Post', '', 0, 0, '', 0, '[[$header]]\n                <div class="article-title title-page">\n                    [[*pagetitle]]\n                </div>\n                [[*image:!empty=`<div class="article-image"><img src="/[[*image]]" alt="Image поста"></div>`]]\n                [[*publishedon:is=`0`:then=``:else=`<div class="article-info"><div class="post-date">[[*publishedon]]</div></div>`]]\n                <div class="article-text">\n                    [[*content]]\n                </div>\n                <div class="article-pagination">\n                    [[!pagination post]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, ''),
(4, 1, 0, 'Tag', '', 0, 0, '', 0, '[[$header]]\n                <h1 class="title-page">Поиск по тегу ''[[!getTag tag]]''</h1>\n                <div class="posts-list">\n                    [[!getPosts tag]]\n                </div>\n            </div>\n            [[$sidebar]]\n[[$footer]]', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'image', 'image', 'image', '', 0, 0, 0, '', 0, 'default', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0, ''),
(2, 1, 0, 'text', 'tags', 'tags', '', 0, 0, 0, '', 0, 'default', '', 'a:0:{}', 'a:5:{s:10:"allowBlank";s:4:"true";s:9:"maxLength";s:0:"";s:9:"minLength";s:0:"";s:5:"regex";s:0:"";s:9:"regexText";s:0:"";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tmplvar_template` (`tmplvarid`,`documentgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`),
  KEY `tv_cnt` (`tmplvarid`,`contentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 5, 'assets/img/2.jpg'),
(2, 1, 10, 'assets/img/post-image.jpg'),
(3, 2, 3, 'news, lorem ipsum'),
(4, 2, 5, 'news, lorem ipsum'),
(5, 2, 8, 'news, lorem ipsum'),
(6, 2, 10, 'news, lorem ipsum'),
(7, 2, 11, 'news, lorem ipsum'),
(8, 2, 12, 'news, dolor sit amet'),
(9, 2, 9, 'offers, discounts, lorem ipsum'),
(10, 2, 13, 'offers, discounts, lorem ipsum'),
(11, 2, 15, 'offers, discounts, lorem ipsum'),
(12, 2, 16, 'offers, other offers, lorem ipsum'),
(13, 2, 17, 'offers, other offers, lorem ipsum, dolor sit amet'),
(14, 2, 18, 'offers, other offers, test');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 0),
(1, 3, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE IF NOT EXISTS `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageAfterRender', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnMODXInit', 5, 'System'),
('OnElementNotFound', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 1, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE IF NOT EXISTS `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('base_help_url', '//rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '0', 'combo-boolean', 'core', 'manager', '2016-09-14 13:01:21'),
('compress_js', '0', 'combo-boolean', 'core', 'manager', '2016-09-14 13:01:21'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'administrator@administrator.administrator', 'textfield', 'core', 'authentication', '2016-09-14 13:01:20'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '1', 'combo-boolean', 'core', 'furls', '2016-09-14 13:08:11'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2016-09-14 13:19:41'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2016-09-14 13:19:18'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2016-09-14 13:19:18'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2016-09-17 12:57:58'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2016-09-17 12:57:56'),
('use_frozen_parent_uris', '1', 'combo-boolean', 'core', 'furls', '2016-09-14 13:08:31'),
('global_duplicate_uri_check', '1', 'combo-boolean', 'core', 'furls', '2016-09-14 13:08:23'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('locale', 'en', 'textfield', 'core', 'language', '2016-09-17 12:25:07'),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_lang_attribute', 'en', 'textfield', 'core', 'language', NULL),
('manager_language', 'en', 'modx-combo-language', 'core', 'language', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '104857600', 'textfield', 'core', 'file', '2016-09-14 13:01:21'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2016-09-14 13:08:27'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2016-09-14 13:01:21'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2016-09-14 13:02:34'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.25.html ', 'textfield', 'core', 'manager', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2016-09-14 13:51:38'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('settings_version', '2.5.1-pl', 'textfield', 'core', 'system', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('ace.theme', 'chrome', 'textfield', 'ace', 'general', NULL),
('ace.font_size', '13px', 'textfield', 'ace', 'general', NULL),
('ace.word_wrap', '', 'combo-boolean', 'ace', 'general', NULL),
('ace.soft_tabs', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('archivist.archive_ids', '21:arc_', 'textfield', 'archivist', 'furls', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE IF NOT EXISTS `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_minor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `version_patch` smallint(5) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('taglister-1.1.7-pl', '2016-09-15 18:20:59', '2016-09-15 15:21:04', '2016-09-15 18:21:03', 0, 1, 0, 0, 'taglister-1.1.7-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:398:"--------------------\nSnippet: tagLister\n--------------------\nVersion: 1.0.0\nCreated: June 14th, 2010\nAuthor: Shaun McCormick <shaun@modxcms.com>\nLicense: GNU GPLv2 (or later at your option)\n\nA simple tag listing snippet that grabs tags from a TV value.\n\nPlease see the documentation at:\nhttp://docs.modxcms.com/display/ADDON/tagLister/\n\nThanks for using tagLister!\nShaun McCormick\nshaun@modxcms.com";s:9:"changelog";s:2945:"Changelog for tagLister.\n\ntagLister 1.1.7\n===============\n- [#24] Fix issues with &parents call when no tags are found; better optimize logic\n- [#25] Add within search type for mysql users\n- Fix notice error in tagLister snippet\n\ntagLister 1.1.6\n===============\n- Add &furlKey to tagLister to allow changing of FURL request key\n\ntagLister 1.1.5\n===============\n- [#23] Fix issues with useTagFURL support\n- Better handling of all tpl for tagLister snippet\n- [#21] Add in missing pageActiveTpl property to getResourcesTag\n\ntagLister 1.1.3\n===============\n- [#17] Fix issue with tolinks and key parameter\n- Fix queries for sqlsrv support\n\ntagLister 1.1.2\n===============\n- [#18] Add ability to sortBy=`rand` to randomly sort tags in tagLister snippet\n- [#16] Add lastCls, condition if tag is equal tagList count.\n- [#16] Add element (value: getResources) to default properties\n- [#15] Add fix to allow for &tag property in getResourcesTag snippet\n- [#10] Add urldecode to tag var in getResourcesTag to fix encoded chars\n\ntagLister 1.1.1\n===============\n- Added ability to sort by publishedon in tagLister\n- Added idx placeholder to each tag\n\ntagLister 1.1.0\n===============\n- Added active tag: Set css class (activeCls) for currently selected tag. Used in conjunction with a content listing snippet (like getResourcesTag)\n- Added activeCls: (Optional) A CSS class to add to the active tag. If empty will ignore.\n- Fixed cls and altCls properties to allow empty values\n- Added weights calculation for better css styling (compared to using count).  Each tags count relative to the rest (on a linear scale) adds a class\n- Implemented tagKey and tagKeyVar in all three snippets\n- Added toLower property to tagLister snippet to allow case-insensitive tag listing, with multibyte support\n- Added extraParams property to tolinks snippet\n\ntagLister 1.0.3\n===============\n- Fixed bug in ''contains'' setting of tagSearchType property in getResourcesTag\n- Added &tagSearchType property to getResourcesTag to allow for different types of searching; defaults to exact\n\ntagLister 1.0.2\n===============\n- Added where property for JSON where query support\n- Added parents, depth properties to taglister for specifying parent resources and depth\n- Added all, allTpl, and allText properties to tagLister snippet for listing an ''All Tags'' result\n- Fixed bug in getResourcesTag snippet with tagRequestParam variable\n- Changed tolinks &key to &tagRequestParam (with backwards compat)\n- i18n of snippet properties\n- Added tagKey and tagRequestParam properties to getResourcesTag snippet\n- Fixed bug in tolinks snippet\n\ntagLister 1.0.1\n===============\n- Added outputSeparator property to taglister\n\ntagLister 1.0.0\n===============\n- Added toPlaceholder property to tolinks\n- Added tpl, cls properties to tolinks\n- Added tolinks and getResourcesTag snippets\n- Fixed altCls parameter issue\n- Added includeDeleted, includeUnpublished, and tagVar properties\n- Initial commit.\n";}', 'taglister', NULL, 1, 1, 7, 'pl', 0),
('translit-1.0.0-beta', '2016-09-14 16:19:02', '2016-09-14 13:19:19', '2016-09-14 16:19:18', 0, 1, 0, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:2:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:453:"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.";}', 'translit', NULL, 1, 0, 0, 'beta', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('archivist-1.2.4-pl', '2016-09-17 15:00:49', '2016-09-17 12:00:55', '2016-09-17 15:00:54', 0, 1, 0, 0, 'archivist-1.2.4-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:348:"--------------------\nSnippet: Archivist\n--------------------\nCreated: June 3rd, 2010\nAuthor: Shaun McCormick <shaun@modx.com>\nLicense: GNU GPLv2 (or later at your option)\n\nThis is a simple archiving component. Please see the documentation at:\nhttp://rtfm.modx.com/display/ADDON/Archivist/\n\nThanks for using Archivist!\nShaun McCormick\nshaun@modx.com";s:9:"changelog";s:1933:"Changelog for Archivist.\n\nArchivist 1.2.4\n===============\n- [#6969] Fix bug with dateFormat and archives filtering\n- Add sanity check for get params merge rarely causing PHP notice error (gh#16)\n- Remove deprecated code sometimes causing PHP notice error (gh#15)\n\nArchivist 1.2.3\n===============\n- [#4650] Add &exclude parameter for excluding various Resources from results in Archivist snippet\n- [#7412] Fix error with month name on windows machines\n- Fix various E_NOTICE errors\n\nArchivist 1.2.2\n===============\n- Properly inherit getResources in getArchives snippet\n\nArchivist 1.2.1\n===============\n- Add author handling\n- Fix issues with getPage, caching and various other sorting issues\n\nArchivist 1.2.0\n===============\n- Add &groupByYear and &groupByYearTpl to allow for grouping results by year in Archivist, into nested lists\n- [#4200] Up Archivist and ArchivistGrouper default limit to 12 to represent months of year\n- [#4250] Fix typo in properties list options for sorting properties\n- [#5241] Fix issue with locales and month name\n- [#5015] Default showHidden for getArchives to 1\n\nArchivist 1.1.2\n===============\n- Fix issues with &where in getArchives\n\nArchivist 1.1.0\n===============\n- Better tagging support\n- Add limitItems property to ArchivistGrouper to allow for limiting of # of items that show in each group\n- Add ArchivistGrouper snippet for displaying Resources grouped by month or year\n\nArchivist 1.0.2\n===============\n- [#10] Added &locale to allow users to override cultureKey locale setting\n\nArchivist 1.0.1\n===============\n- [#9] Fix bug with tvFilters in getArchives\n- i18n of Snippet Properties\n- [#5] Fix issue with localization and placeholders\n- [#7] Add &where parameter to getArchives snippet for easier filtering\n\nArchivist 1.0.0\n===============\n- Fixed bug where unpublished/deleted were showing in Archivist snippet\n- Added fix for locale support\n- Added dynamic FURL support\n- Initial commit.\n";}', 'archivist', NULL, 1, 2, 4, 'pl', 0),
('ace-1.6.5-pl', '2016-09-14 16:51:31', '2016-09-14 13:51:39', '2016-09-14 16:51:38', 0, 1, 0, 0, 'ace-1.6.5-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:271:"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.";s:9:"changelog";s:3767:"Changelog for Ace integration into MODx Revolution.\n\nAce 1.6.5\n====================================\n- Added: "Twig" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: "Markdown" syntax for mime type "text/x-markdown".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting "compress_js".\n\nAce 1.6.0\n====================================\n- Added: "Smarty" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag''n''drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: "GitHub" theme\n- Added: Support of html5 drag''n''drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing "OnFileEditFormPrerender" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag''n''drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit";}', 'ace', NULL, 1, 6, 5, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('wayfinder-2.3.3-pl', '2016-09-15 00:50:27', '2016-09-14 21:50:31', '2016-09-15 00:50:30', 0, 1, 0, 0, 'wayfinder-2.3.3-pl.transport.zip', NULL, 'a:3:{s:7:"license";s:15218:"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation''s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author''s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors'' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone''s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The "Program", below,\nrefers to any such program or work, and a "work based on the Program"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term "modification".)  Each licensee is addressed as "you".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program''s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients'' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and "any\nlater version", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS";s:6:"readme";s:804:"::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.3.0 (Revolution compatible)\n Authors: \n    Kyle Jaebker (muddydogpaws.com)\n    Ryan Thrash (vertexworks.com)\n    Shaun McCormick (splittingred.com)\n ::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::";s:9:"changelog";s:2655:"Changelog for Wayfinder (for Revolution).\n\nWayfinder 2.3.3\n====================================\n- [#40] Add wf.level placeholder to items for showing current depth\n- [#42] Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus\n- [#41] Fix issue with Wayfinder and truncated result sets due to getIterator call\n\nWayfinder 2.3.2\n====================================\n- [#36] Fix issue with multiple Wayfinder calls using &config\n- [#35] Fix issues with TV bindings rendering\n- Add "protected" placeholder that is 1 if Resource is protected by a Resource Group\n- Updated documentation, snippet properties descriptions\n\nWayfinder 2.3.1\n====================================\n- [#31] Add &scheme property for specifying link schemes\n- [#27] Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching\n\nWayfinder 2.3.0\n====================================\n- [#14] Fix issue with hideSubMenus when using it with a non-zero startId\n- Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc\n- Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set\n- Ensure that caching also caches by user ID to persist access permissions through cached result sets\n\nWayfinder 2.2.0\n====================================\n- [#23] Fix issue that generated error message in error.log due to &contexts always being processed regardless of empty state\n- [#21] Fix issue with unnecessary groupby that was breaking sorting in older mysql versions\n- [#22] Add &cacheResults parameter, which caches queries for faster loading\n- [#8] Add &contexts parameter, and &startIdContext parameter if navigating across multiple contexts and using a non-0 &startId\n\nWayfinder 2.1.3\n====================================\n- [#14] Fix hideSubMenus property\n- Add templates parameter that accepts a comma-delimited list of template IDs to filter by\n- Add where parameter that accepts a JSON object for where conditions\n- Add hereId parameter for specifying the active location\n\nWayfinder 2.1.2\n====================================\n- Fixed bug with includeDocs parameter\n\nWayfinder 2.1.1\n====================================\n- Wayfinder now properly uses MODx parsing system\n- Fixed issue with includeDocs statement\n- Fixed issues with PDO statements\n- Added the missing permissions check\n- Added wayfinder parameter "permissions" - default to "list", empty to bypass permissions check\n- [#WAYFINDER-20] TemplateVariables not rendering in Wayfinder templates.\n- Added changelog.";}', 'wayfinder', NULL, 2, 3, 3, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE IF NOT EXISTS `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`),
  KEY `active` (`active`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2016-07-21 08:14:45', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE IF NOT EXISTS `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'administrator', 'CoUaWMqIIndtxoj5Bbh9Xytl34C6CPk/ZlLDaGTL8nU=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '1f295daa920accd108d68d920483ede6', 1, NULL, 1, 1473858080);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE IF NOT EXISTS `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'administrator@administrator.administrator', '', '', 0, 0, 0, 2, 1473858154, 1473940634, 0, 'g624bc07ab2t5369idqs2uepo6', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_settings` (
  `group` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE IF NOT EXISTS `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE IF NOT EXISTS `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2016-09-14 16:01:17', 1, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
