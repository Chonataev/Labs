  -- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 06 2021 г., 13:05
-- Версия сервера: 5.7.29-log
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ex_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ders`
--

CREATE TABLE `ders` (
  `DersId` int(11) NOT NULL,
  `DersAdi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kredisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ders`
--

INSERT INTO `ders` (`DersId`, `DersAdi`, `Kredisi`) VALUES
(1, 'Ume-405 Orcale', 3),
(2, 'Ume-408 Optimizasion', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `StudentId` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Adres` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Registration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`StudentId`, `Name`, `LastName`, `Birthday`, `Adres`, `Province`, `Email`, `Registration`) VALUES
(1, 'Maksat', 'Tologonov', '1999-01-09', 'Мира 26', 'Чуй', 'tologonovm@gmail.com', '2017-09-09'),
(2, 'Aman', 'Altynbek Uulu', '1998-11-08', 'Кустанайская 12', 'Чуй', 'amankul08111998@gmail.com', '2018-09-11');

-- --------------------------------------------------------

--
-- Структура таблицы `students_lessons`
--

CREATE TABLE `students_lessons` (
  `StudentLessonsId` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `DersId` int(11) DEFAULT NULL,
  `Vize` int(11) DEFAULT NULL,
  `Final` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `RegistrationId` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`RegistrationId`, `Title`, `Name`, `LastName`, `Room`, `Phone`) VALUES
(1, 'Доктор информационных наук', 'Джон ', 'Смит', '202', 1982929292),
(2, 'Профессор ', 'Асан ', 'Омуралиев', '203', 99922);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_lessons`
--

CREATE TABLE `teachers_lessons` (
  `TeacherLessonsId` int(11) NOT NULL,
  `TeacherId` int(11) DEFAULT NULL,
  `DersId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ders`
--
ALTER TABLE `ders`
  ADD PRIMARY KEY (`DersId`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentId`);

--
-- Индексы таблицы `students_lessons`
--
ALTER TABLE `students_lessons`
  ADD PRIMARY KEY (`StudentLessonsId`),
  ADD KEY `StudentId` (`StudentId`),
  ADD KEY `DersId` (`DersId`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`RegistrationId`);

--
-- Индексы таблицы `teachers_lessons`
--
ALTER TABLE `teachers_lessons`
  ADD PRIMARY KEY (`TeacherLessonsId`),
  ADD KEY `TeacherId` (`TeacherId`),
  ADD KEY `DersId` (`DersId`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `students_lessons`
--
ALTER TABLE `students_lessons`
  ADD CONSTRAINT `students_lessons_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `students` (`StudentId`),
  ADD CONSTRAINT `students_lessons_ibfk_2` FOREIGN KEY (`DersId`) REFERENCES `ders` (`DersId`);

--
-- Ограничения внешнего ключа таблицы `teachers_lessons`
--
ALTER TABLE `teachers_lessons`
  ADD CONSTRAINT `teachers_lessons_ibfk_1` FOREIGN KEY (`TeacherId`) REFERENCES `teachers` (`RegistrationId`),
  ADD CONSTRAINT `teachers_lessons_ibfk_2` FOREIGN KEY (`DersId`) REFERENCES `ders` (`DersId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
