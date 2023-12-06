--
-- Table structure for table `timetables`
--

CREATE TABLE IF NOT EXISTS `timetables` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(255) NOT NULL,
	`category` varchar(255) NOT NULL,
	`image` varchar(255) NOT NULL,
	`date` varchar(20) NOT NULL,
	`day` varchar(20) NOT NULL,
	`start_time` varchar(20) NOT NULL,
	`end_time` varchar(20) NOT NULL,
	`trainer` varchar(255) NOT NULL,
	`color` int(11) NOT NULL,
	`content` text NOT NULL,
	`state` tinyint(4) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(255) NOT NULL,
	`state` tinyint(4) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`password` char(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`salt` char(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	`role` int(11) NOT NULL,
	`state` tinyint(3) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	UNIQUE KEY `username` (`username`),
	UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `salt`, `email`, `role`, `state`) VALUES
(1, 'Super Admin', 'admin', 'fd7e8a4c36e88f882e1a3db5ef3b14f1e1a0b0a7a12b660f70f2bda389c94355', '32adb74318e6e57f', 'admin@gmail.com', 1, 1);