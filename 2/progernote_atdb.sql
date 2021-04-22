-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 23 2020 г., 09:58
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `progernote_atdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `title`, `price`, `description`, `image`) VALUES
(1, 'Товар 1', 100, 'Описание товара 1', '/images/image1.jpg'),
(2, 'Товар 2', 200, 'Описание товара 2', '/images/image2.jpg'),
(3, 'Товар 3', 300, 'Описание товара 3', '/images/image3.jpg'),
(4, 'Товар 4', 400, 'Описание товара 4', '/images/image4.jpg'),
(5, 'Товар 5', 500, 'Описание товара 5', '/images/image5.jpg'),
(6, 'Товар 6', 600, 'Описание товара 6', '/images/image6.jpg'),
(7, 'Товар 7', 700, 'Описание товара 7', '/images/image6.jpg'),
(8, 'Товар 8', 800, 'Описание товара 8', '/images/image8.jpg'),
(9, 'Товар 9', 900, 'Описание товара 9', '/images/image9.jpg'),
(10, 'Товар 10', 1000, 'Описание товара 10', '/images/image10.jpg'),
(11, 'Товар 11', 1100, 'Описание товара 11', '/images/image11.jpg'),
(12, 'Товар 12', 1200, 'Описание товара 12', '/images/image12.jpg'),
(13, 'Товар 13', 1300, 'Описание товара 13', '/images/image13.jpg'),
(14, 'Товар 14', 1400, 'Описание товара 14', '/images/image14.jpg'),
(15, 'Товар 15', 1500, 'Описание товара 15', '/images/image15.jpg'),
(16, 'Товар 16', 1600, 'Описание товара 16', '/images/image16.jpg'),
(16, 'Товар 16', 1600, 'Описание товара 17', '/images/image17.jpg'),
(16, 'Товар 16', 1600, 'Описание товара 18', '/images/image18.jpg'),
(16, 'Товар 16', 1600, 'Описание товара 19', '/images/image19.jpg'),
(16, 'Товар 16', 2000, 'Описание товара 20', '/images/image20.jpg'),
(21, 'Товар 21', 2100, 'Описание товара 21', '/images/image21.jpg'),
(22, 'Товар 22', 2200, 'Описание товара 22', '/images/image22.jpg'),
(23, 'Товар 23', 2300, 'Описание товара 23', '/images/image23.jpg'),
(24, 'Товар 24', 2400, 'Описание товара 24', '/images/image24.jpg'),
(25, 'Товар 25', 2500, 'Описание товара 25', '/images/image25.jpg'),
(26, 'Товар 26', 2600, 'Описание товара 26', '/images/image26.jpg'),
(27, 'Товар 27', 2700, 'Описание товара 27', '/images/image27.jpg'),
(28, 'Товар 28', 2800, 'Описание товара 28', '/images/image28.jpg'),
(29, 'Товар 29', 2900, 'Описание товара 29', '/images/image29.jpg'),
(30, 'Товар 30', 3000, 'Описание товара 30', '/images/image30.jpg'),
(31, 'Товар 31', 3100, 'Описание товара 31', '/images/image31.jpg'),
(32, 'Товар 32', 3200, 'Описание товара 32', '/images/image32.jpg'),
(33, 'Товар 33', 3300, 'Описание товара 33', '/images/image33.jpg'),
(34, 'Товар 34', 3400, 'Описание товара 34', '/images/image34.jpg'),
(35, 'Товар 35', 3500, 'Описание товара 35', '/images/image35.jpg'),
(36, 'Товар 36', 3600, 'Описание товара 36', '/images/image36.jpg'),
(37, 'Товар 37', 3700, 'Описание товара 37', '/images/image37.jpg'),
(38, 'Товар 38', 3800, 'Описание товара 38', '/images/image38.jpg'),
(39, 'Товар 39', 3900, 'Описание товара 39', '/images/image39.jpg'),
(40, 'Товар 40', 4000, 'Описание товара 40', '/images/image40.jpg'),
(41, 'Товар 41', 4100, 'Описание товара 41', '/images/image41.jpg'),
(42, 'Товар 42', 4200, 'Описание товара 42', '/images/image42.jpg'),
(43, 'Товар 43', 4300, 'Описание товара 43', '/images/image43.jpg'),
(44, 'Товар 44', 4400, 'Описание товара 44', '/images/image44.jpg'),
(45, 'Товар 45', 4500, 'Описание товара 45', '/images/image45.jpg'),
(46, 'Товар 46', 4600, 'Описание товара 46', '/images/image46.jpg'),
(47, 'Товар 47', 4700, 'Описание товара 47', '/images/image47.jpg'),
(48, 'Товар 48', 4800, 'Описание товара 48', '/images/image48.jpg'),
(49, 'Товар 49', 4900, 'Описание товара 49', '/images/image49.jpg'),
(50, 'Товар 50', 5000, 'Описание товара 50', '/images/image50.jpg'),
(51, 'Товар 51', 5100, 'Описание товара 51', '/images/image51.jpg'),
(52, 'Товар 52', 5200, 'Описание товара 52', '/images/image52.jpg'),
(53, 'Товар 53', 5300, 'Описание товара 53', '/images/image53.jpg'),
(54, 'Товар 54', 5400, 'Описание товара 54', '/images/image54.jpg'),
(55, 'Товар 55', 5500, 'Описание товара 55', '/images/image55.jpg'),
(56, 'Товар 56', 5600, 'Описание товара 56', '/images/image56.jpg'),
(57, 'Товар 57', 5700, 'Описание товара 57', '/images/image57.jpg'),
(58, 'Товар 58', 5800, 'Описание товара 58', '/images/image58.jpg'),
(59, 'Товар 59', 5900, 'Описание товара 59', '/images/image59.jpg'),
(60, 'Товар 60', 6000, 'Описание товара 60', '/images/image60.jpg'),
(61, 'Товар 61', 6100, 'Описание товара 61', '/images/image61.jpg'),
(62, 'Товар 62', 6200, 'Описание товара 62', '/images/image62.jpg'),
(63, 'Товар 63', 6300, 'Описание товара 63', '/images/image63.jpg'),
(64, 'Товар 64', 6400, 'Описание товара 64', '/images/image64.jpg'),
(65, 'Товар 65', 6500, 'Описание товара 65', '/images/image65.jpg'),
(66, 'Товар 66', 6600, 'Описание товара 66', '/images/image66.jpg'),
(67, 'Товар 67', 6700, 'Описание товара 67', '/images/image67.jpg'),
(68, 'Товар 68', 6800, 'Описание товара 68', '/images/image68.jpg'),
(69, 'Товар 69', 6900, 'Описание товара 69', '/images/image69.jpg'),
(70, 'Товар 70', 7000, 'Описание товара 70', '/images/image70.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
