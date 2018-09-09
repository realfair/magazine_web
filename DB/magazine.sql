-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 08:07 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magazine`
--

-- --------------------------------------------------------

--
-- Table structure for table `advert_categories`
--

CREATE TABLE `advert_categories` (
  `advert_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `width` int(12) NOT NULL,
  `height` int(12) NOT NULL,
  `status` varchar(123) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advert_categories`
--

INSERT INTO `advert_categories` (`advert_id`, `name`, `width`, `height`, `status`, `regDate`) VALUES
(1, 'LeaderBoard', 708, 90, 'ACTIVE', '2018-09-03 21:12:13'),
(2, 'Cube', 430, 360, 'ACTIVE', '2018-09-03 21:13:04'),
(3, 'Skyscrapper', 180, 640, 'ACTIVE', '2018-09-03 21:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `author_id` int(100) NOT NULL,
  `sub_title` varchar(1024) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validate_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `author_id`, `sub_title`, `title`, `description`, `text`, `status`, `submit_date`, `validate_date`) VALUES
(1, 1, 0, 'ssssssssss', 'ssssssssssss', '', '<p>sssssssssssssssssssssssss<strong>sdsssssssssssssssssssssssssssssssssssdsssssssssssssssssssssssfdfdfdfdfd</strong></p>', 'ACTIVE', '2018-09-03 19:17:53', ''),
(2, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>&nbsp;</p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 'ACTIVE', '2018-09-03 19:34:01', ''),
(3, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Â </p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 'PUBLISHED', '2018-09-03 20:00:59', ''),
(4, 2, 0, '', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p>Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.</p>', 'PUBLISHED', '2018-09-03 20:08:49', ''),
(5, 2, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 'PUBLISHED', '2018-09-03 20:12:55', ''),
(6, 1, 6, 'const current_article=null;', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p>const current_article=null;</p>', 'SUBMITTED', '2018-09-03 20:55:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `articles_attachments`
--

CREATE TABLE `articles_attachments` (
  `attach_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `file_name` varchar(1024) NOT NULL,
  `extenstion` varchar(50) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE `articles_categories` (
  `category_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`category_id`, `name`, `description`, `status`, `regDate`) VALUES
(1, 'UBUKUNGU', '', 'ACTIVE', '2018-09-03 13:14:59'),
(2, 'UBUZIMA', '', 'ACTIVE', '2018-09-03 20:08:17'),
(3, 'UBUREZI', '', 'ACTIVE', '2018-09-03 20:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `articles_comments`
--

CREATE TABLE `articles_comments` (
  `comment_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `user_mail` varchar(1024) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_names` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `attachment` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_likes`
--

CREATE TABLE `articles_likes` (
  `like_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_posters`
--

CREATE TABLE `articles_posters` (
  `poster_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `filename` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_posters`
--

INSERT INTO `articles_posters` (`poster_id`, `article_id`, `filename`, `status`, `regDate`) VALUES
(1, 6, '1628589569.jpg', 'ACTIVE', '2018-09-04 05:03:49'),
(2, 5, '1396822991.jpg', 'ACTIVE', '2018-09-04 05:14:57'),
(3, 4, '758775144.jpg', 'ACTIVE', '2018-09-04 05:36:08'),
(4, 3, '1885195813.jpg', 'ACTIVE', '2018-09-04 23:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `articles_visits`
--

CREATE TABLE `articles_visits` (
  `visit_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(100) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `bio` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `json` text NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_info`
--

CREATE TABLE `author_info` (
  `info_id` int(100) NOT NULL,
  `author_id` int(100) NOT NULL,
  `twitter_link` varchar(1024) NOT NULL,
  `facebook_link` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(100) NOT NULL,
  `advert_id` int(100) NOT NULL,
  `filename` varchar(1024) NOT NULL,
  `extension` varchar(100) NOT NULL,
  `section` varchar(123) NOT NULL,
  `status` varchar(122) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `advert_id`, `filename`, `extension`, `section`, `status`, `regDate`) VALUES
(1, 1, '1371676855.jpg', 'jpg', '', 'ACTIVE', '2018-09-03 22:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `user_id` int(100) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `password` varchar(255) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `user_type` int(2) NOT NULL,
  `verified` int(2) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `isOnline` varchar(100) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`user_id`, `email`, `password`, `names`, `phone`, `gender`, `user_type`, `verified`, `verification_code`, `status`, `isOnline`, `regDate`) VALUES
(1, 'sam@gmail.com', '123456', 'samuel sugira', '0987654321', 'M', 1, 1, '123456', 'ACTIVE', '0', '2018-08-26 09:13:35'),
(2, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 0, 0, '', 'ACTIVE', '', '2018-09-03 12:07:35'),
(3, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 1, 0, '', 'ACTIVE', '', '2018-09-03 12:07:56'),
(4, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 2, 0, '', 'ACTIVE', '', '2018-09-03 12:08:11'),
(5, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '333333333333333', '', 1, 0, '', 'ACTIVE', '', '2018-09-03 12:12:58'),
(6, 'elisa@gmail.com', '123456', 'elisa pro', '078898765', '', 2, 0, '', 'ACTIVE', '', '2018-09-03 13:19:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert_categories`
--
ALTER TABLE `advert_categories`
  ADD PRIMARY KEY (`advert_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `articles_attachments`
--
ALTER TABLE `articles_attachments`
  ADD PRIMARY KEY (`attach_id`);

--
-- Indexes for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `articles_comments`
--
ALTER TABLE `articles_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `articles_posters`
--
ALTER TABLE `articles_posters`
  ADD PRIMARY KEY (`poster_id`);

--
-- Indexes for table `articles_visits`
--
ALTER TABLE `articles_visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `author_info`
--
ALTER TABLE `author_info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advert_categories`
--
ALTER TABLE `advert_categories`
  MODIFY `advert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `articles_attachments`
--
ALTER TABLE `articles_attachments`
  MODIFY `attach_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles_comments`
--
ALTER TABLE `articles_comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `like_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_posters`
--
ALTER TABLE `articles_posters`
  MODIFY `poster_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `articles_visits`
--
ALTER TABLE `articles_visits`
  MODIFY `visit_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author_info`
--
ALTER TABLE `author_info`
  MODIFY `info_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
