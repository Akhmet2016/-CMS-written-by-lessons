-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 24 2018 г., 17:00
-- Версия сервера: 5.5.50-log
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ownEngine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`) VALUES
(1, 'Home'),
(2, 'Next menu');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `parent` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '999',
  `link` varchar(255) NOT NULL DEFAULT '#'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `menu_id`, `name`, `parent`, `position`, `link`) VALUES
(1, 0, 'Home', 0, 0, '#'),
(2, 0, 'About', 0, 0, '#'),
(3, 0, 'Sample post', 0, 0, '#'),
(4, 0, 'Contact', 0, 0, '#'),
(6, 1, 'New item wow', 0, 999, '#'),
(10, 2, 'New item', 0, 999, '#');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `date`) VALUES
(1, 'Next', '<p>Delta</p>', '2018-05-30 14:41:13'),
(2, 'Clear', '<p>Solid</p>', '2018-05-30 14:41:32'),
(3, 'Cool', '<p>View</p>', '2018-05-30 14:59:12'),
(4, 'Back', '<p>​Stage</p>', '2018-05-31 14:31:13'),
(5, 'Last', '<p>​Page</p>', '2018-05-31 14:34:34'),
(6, 'Last', '<p>​Page</p>', '2018-05-31 14:34:37'),
(7, 'Fo', '<p>​ghhg</p>', '2018-05-31 14:34:50'),
(8, 'Read', '<p>​Kids</p>', '2018-05-31 14:35:05'),
(9, 'Max', '<p>​Vas</p>', '2018-06-01 08:32:38');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `date`) VALUES
(1, 'Maxik', '<p>​NR</p>', '2018-06-01 08:32:51');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `key_field` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `name`, `key_field`, `value`) VALUES
(1, 'Name site', 'name_site', 'Cms'),
(2, 'Description', 'description', 'Example description Cms'),
(3, 'Admin email', 'admin_email', 'admin@admin.ru'),
(4, 'Language', 'language', 'english');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('admin','moderator','user','') NOT NULL,
  `hash` varchar(32) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `hash`, `date_reg`) VALUES
(1, 'admin@admin.ru', 'b59c67bf196a4758191e42f76670ceba', 'admin', 'b3a90e8bd41f9b660695f743d40f69ba', '2018-04-30 21:00:00'),
(2, 'test@admin.com', 'e4da3b7fbbce2345d7772b0674a318d5', 'user', 'new', '2018-05-29 13:36:09'),
(3, 'test@admin.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user', 'new', '2018-05-29 13:36:10'),
(4, 'test@admin.com', '1679091c5a880faf6fb5e6087eb1b2dc', 'user', 'new', '2018-05-29 13:36:11'),
(5, 'test@admin.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user', 'new', '2018-05-29 13:36:11'),
(6, 'test@admin.com', 'd3d9446802a44259755d38e6d163e820', 'user', 'new', '2018-05-29 13:36:21'),
(7, 'test@admin.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user', 'new', '2018-05-29 13:36:32'),
(8, 'test@admin.com', 'd3d9446802a44259755d38e6d163e820', 'user', 'new', '2018-05-29 13:37:12'),
(9, 'test@admin.com', 'e4da3b7fbbce2345d7772b0674a318d5', 'user', 'new', '2018-05-29 13:37:13'),
(10, 'test@admin.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user', 'new', '2018-05-29 13:37:24'),
(11, 'test@admin.com', 'c9f0f895fb98ab9159f51fd0297e236d', 'user', 'new', '2018-05-29 13:39:22'),
(12, 'test@admin.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user', 'new', '2018-05-29 13:47:48'),
(13, 'test@admin.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user', 'new', '2018-05-29 13:51:05'),
(14, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 13:51:08'),
(15, 'test@admin.com', 'c9f0f895fb98ab9159f51fd0297e236d', 'user', 'new', '2018-05-29 13:51:09'),
(16, 'test@admin.com', 'd3d9446802a44259755d38e6d163e820', 'user', 'new', '2018-05-29 13:51:09'),
(17, 'test@admin.com', '8f14e45fceea167a5a36dedd4bea2543', 'user', 'new', '2018-05-29 13:51:09'),
(18, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 13:51:10'),
(19, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 13:51:11'),
(20, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 14:00:51'),
(21, 'test@admin.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user', 'new', '2018-05-29 14:01:04'),
(22, 'test@admin.com', 'e4da3b7fbbce2345d7772b0674a318d5', 'user', 'new', '2018-05-29 14:01:11'),
(23, 'test@admin.com', '1679091c5a880faf6fb5e6087eb1b2dc', 'user', 'new', '2018-05-29 14:03:26'),
(24, 'test@admin.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user', 'new', '2018-05-29 14:07:53'),
(25, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 14:07:56'),
(26, 'test@admin.com', '1679091c5a880faf6fb5e6087eb1b2dc', 'user', 'new', '2018-05-29 14:08:01'),
(27, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-29 14:12:17'),
(28, 'test@admin.com', 'd3d9446802a44259755d38e6d163e820', 'user', 'new', '2018-05-29 14:13:44'),
(29, 'test@admin.com', '8f14e45fceea167a5a36dedd4bea2543', 'user', 'new', '2018-05-29 14:14:23'),
(30, 'test@admin.com', 'd3d9446802a44259755d38e6d163e820', 'user', 'new', '2018-05-29 14:15:31'),
(31, 'test@admin.com', 'a87ff679a2f3e71d9181a67b7542122c', 'user', 'new', '2018-05-30 06:56:46'),
(32, 'test@admin.com', '8f14e45fceea167a5a36dedd4bea2543', 'user', 'new', '2018-05-30 13:34:33'),
(33, 'test@admin.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user', 'new', '2018-05-30 13:35:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `key_field` (`key_field`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
