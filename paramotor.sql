-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 25 May 2023, 07:41:28
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `paramotor`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `subtitle` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `detail` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isView` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `title`, `subtitle`, `detail`, `image`, `isView`, `order`) VALUES
(1, 'Road to Success', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt\r\n								labore dolore magna aliqua enim minim veniam quis nostrud.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt\r\n								labore dolore magna aliqua enim minim veniam quis nostrud.', 'mission-1.jpg', 1, 1),
(2, 'bla bla', 'clyktyjzryksyjstuksryksryky', 'srykyktykzykzytksykykzyk', 'mission-1.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `description` longtext COLLATE utf8_turkish_ci NOT NULL,
  `facebook` varchar(260) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `youtube` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `logoimage` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `favicon` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `site`
--

INSERT INTO `site` (`id`, `title`, `url`, `email`, `description`, `facebook`, `twitter`, `instagram`, `youtube`, `logoimage`, `favicon`) VALUES
(1, 'Paramotor', 'Paramotor', 'Paramotor@gmail.com', 'Türkiye de yamaç paraşütü ve paramotor ', 'https://www.facebook.com/Paramotorturkey', 'https//www.twitter.com/paramotorturkey', 'https//www.instagram.com/paramotorturkey', 'https//www.youtube.com/paramotorturkey', 'logo.png', 'favicon.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8_turkish_ci,
  `urltext` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `urltarget` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isView` tinyint(1) DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `title`, `subtitle`, `urltext`, `image`, `url`, `urltarget`, `isView`, `orderBy`) VALUES
(1, 'Business with Finance', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n											tempor incididunt ut labore et dolore magna aliqua.', 'Explore Us', 'slider-1.jpg', 'blog/blabla/1', 'target', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `subtitle` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isView` tinyint(1) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `facebook` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `youtube` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `linkedin` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `team`
--

INSERT INTO `team` (`id`, `title`, `subtitle`, `image`, `isView`, `order`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`) VALUES
(1, 'Glenn Watson', 'Managing Director (Sales)', 'indir.jpg', 1, 1, 'https://tr-tr.facebook.com', 'https://twitter.com', 'https://www.instagram.com', 'https://www.youtube.com ', 'https://tr.linkedin.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
