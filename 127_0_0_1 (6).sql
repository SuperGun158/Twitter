-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 03:50
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `danil_pn_09`
--
CREATE DATABASE IF NOT EXISTS `danil_pn_09` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `danil_pn_09`;

-- --------------------------------------------------------

--
-- Структура таблицы `date`
--

CREATE TABLE `date` (
  `date` date NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `date`
--

INSERT INTO `date` (`date`, `text`, `img`, `id`, `status`) VALUES
('8888-08-08', '1wwdooksa', '2.jpg', 9, 1),
('2019-02-07', 'dwdwiesgu9et9fhreh', '234478.jpg', 12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fany`
--

CREATE TABLE `fany` (
  `Name` varchar(355) NOT NULL,
  `Cena` varchar(255) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fany`
--

INSERT INTO `fany` (`Name`, `Cena`, `id`) VALUES
('Фомин', '5 5 н', 1),
('Кычкин', '4 4 н', 2),
('Семёнов', 'н н н', 3),
('Скрябин', '5 5 5', 4),
('Яковлев', '4 4 4', 5),
('Румянцева', 'н н н', 6),
('Тихомиров', '5 5 5', 7),
('Неустроев', '4 4 н', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `img` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `price` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`img`, `text`, `price`, `id`) VALUES
('image/1.jpg', 'AUE', '228', 22),
('image/3.jpg', 'wads', 'wdsw', 53);

-- --------------------------------------------------------

--
-- Структура таблицы `gigi`
--

CREATE TABLE `gigi` (
  `name` varchar(355) NOT NULL,
  `link` varchar(355) NOT NULL,
  `twits` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gigi`
--

INSERT INTO `gigi` (`name`, `link`, `twits`, `id`) VALUES
('ЛДПР', 'https://ru.wikipedia.org/wiki/%D0%9B%D0%94%D0%9F%D0%A0', '8800', 1),
('Украина', 'https://ru.wikipedia.org/wiki/%D0%A3%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0', '6564564654', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `good`
--

CREATE TABLE `good` (
  `gigi` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `good`
--

INSERT INTO `good` (`gigi`, `id`) VALUES
('ghh', 1),
('mish', 2),
('sobaca', 3),
('sobaca', 4),
('gohag', 5),
('gohag', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `spis`
--

CREATE TABLE `spis` (
  `name` varchar(355) NOT NULL,
  `price` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spis`
--

INSERT INTO `spis` (`name`, `price`, `id`) VALUES
('gfr', '9999', 1),
('EBENGRAD', '9999', 2),
('R I P', '947164', 3),
('Odad', '9999', 4),
('KOSAR MAN', '1000', 5),
('MAINCRAFT', '3298324897ry89q3rq3907329832', 6),
('21', '3990 рублей', 7),
('gfr', '9999', 8),
('YOUR MAM XXL', '387233843241241242472194949182557896', 9),
('qwads', '228228', 10),
('wads', 'wdsw', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `surname` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `surname`, `id`) VALUES
('Собака', 'Джексон', 3),
('Нил', 'Армстронг', 4),
('Нил', 'Армстронг', 5),
('Майн', 'Кравт', 8),
('й', 'йц', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `twit`
--

CREATE TABLE `twit` (
  `logo` varchar(355) NOT NULL,
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twit`
--

INSERT INTO `twit` (`logo`, `title`, `text`, `img`, `id`) VALUES
('1.jpg', 'gomh', 'YOU MAINCRAFTER ', 'habr.jpg', 5),
('1.jpg', 'gomh', 'efhufnifvmi', 'habr.jpg', 6),
('avatar.jpg', 'Vi', 'топор топор топор. АЗИНО ТРИ ТОПОРА, СПОСИБО МНЕ ПОРА!!!', 'habr.jpg', 11),
('avatar.jpg', 'Vi', 'eee boiii', 'habr.jpg', 12),
('avatar.jpg', 'Vi', 'ыщытшвстшватшамшмашрашщрипщшжрирщшпщшрпозавлыд', 'habr.jpg', 13),
('avatar.jpg', 'Vi', 'ыщытшвстшватшамшмашрашщрипщшжрирщшпщшрпозавлыд', 'habr.jpg', 14),
('2.jpg', 'Украiнский Пiс', 'Я ШРИВ', 'govno.jpg', 16),
('avatar.jpg', 'Vi', 'САРАНЧА', 'habr.jpg', 17),
('avatar.jpg', 'Vi', 'lo', 'habr.jpg', 18),
('avatar.jpg', 'Vi', 'Акуратные темы для вас ЛДПР Твитов: 8800  Украина Твитов: 6564564654', 'habr.jpg', 19);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fany`
--
ALTER TABLE `fany`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gigi`
--
ALTER TABLE `gigi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `good`
--
ALTER TABLE `good`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `spis`
--
ALTER TABLE `spis`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twit`
--
ALTER TABLE `twit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `date`
--
ALTER TABLE `date`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `fany`
--
ALTER TABLE `fany`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `gigi`
--
ALTER TABLE `gigi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `good`
--
ALTER TABLE `good`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `spis`
--
ALTER TABLE `spis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `twit`
--
ALTER TABLE `twit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
