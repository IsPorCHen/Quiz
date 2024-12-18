-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 18 2024 г., 20:38
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `quiz_app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `is_correct`) VALUES
(23, 1, 'Париж', 1),
(24, 1, 'Берлин', 0),
(25, 1, 'Мадрид', 0),
(26, 1, 'Лондон', 0),
(27, 1, 'Париж', 1),
(28, 1, 'Берлин', 0),
(29, 1, 'Мадрид', 0),
(30, 1, 'Лондон', 0),
(31, 2, 'Темза', 1),
(32, 2, 'Рейн', 0),
(33, 2, 'Волга', 0),
(34, 2, 'Дунай', 0),
(35, 2, 'Темза', 1),
(36, 2, 'Рейн', 0),
(37, 2, 'Волга', 0),
(38, 2, 'Дунай', 0),
(39, 3, 'Тихий океан', 1),
(40, 3, 'Атлантический океан', 0),
(41, 3, 'Индийский океан', 0),
(42, 3, 'Арктический океан', 0),
(43, 3, 'Тихий океан', 1),
(44, 3, 'Атлантический океан', 0),
(45, 3, 'Индийский океан', 0),
(46, 3, 'Арктический океан', 0),
(47, 4, 'Россия', 1),
(48, 4, 'Канада', 0),
(49, 4, 'США', 0),
(50, 4, 'Китай', 0),
(51, 4, 'Россия', 1),
(52, 4, 'Канада', 0),
(53, 4, 'США', 0),
(54, 4, 'Китай', 0),
(55, 5, '4', 1),
(56, 5, '5', 0),
(57, 5, '3', 0),
(58, 5, '6', 0),
(59, 5, '4', 1),
(60, 5, '5', 0),
(61, 5, '3', 0),
(62, 5, '6', 0),
(63, 6, '4', 1),
(64, 6, '8', 0),
(65, 6, '2', 0),
(66, 6, '16', 0),
(67, 6, '4', 1),
(68, 6, '8', 0),
(69, 6, '2', 0),
(70, 6, '16', 0),
(71, 7, '42', 1),
(72, 7, '56', 0),
(73, 7, '36', 0),
(74, 7, '49', 0),
(75, 7, '42', 1),
(76, 7, '56', 0),
(77, 7, '36', 0),
(78, 7, '49', 0),
(79, 8, 'Отношение противолежащего катета к гипотенузе', 1),
(80, 8, 'Отношение прилежащего катета к гипотенузе', 0),
(81, 8, 'Отношение противолежащего катета к прилежащему', 0),
(82, 8, 'Сумма катетов', 0),
(83, 8, 'Отношение противолежащего катета к гипотенузе', 1),
(84, 8, 'Отношение прилежащего катета к гипотенузе', 0),
(85, 8, 'Отношение противолежащего катета к прилежащему', 0),
(86, 8, 'Сумма катетов', 0),
(87, 9, 'Джордж Вашингтон', 1),
(88, 9, 'Томас Джефферсон', 0),
(89, 9, 'Авраам Линкольн', 0),
(90, 9, 'Джон Адамс', 0),
(91, 9, 'Джордж Вашингтон', 1),
(92, 9, 'Томас Джефферсон', 0),
(93, 9, 'Авраам Линкольн', 0),
(94, 9, 'Джон Адамс', 0),
(95, 10, '1939', 1),
(96, 10, '1941', 0),
(97, 10, '1945', 0),
(98, 10, '1937', 0),
(99, 10, '1939', 1),
(100, 10, '1941', 0),
(101, 10, '1945', 0),
(102, 10, '1937', 0),
(103, 11, '1918', 1),
(104, 11, '1914', 0),
(105, 11, '1920', 0),
(106, 11, '1939', 0),
(107, 11, '1918', 1),
(108, 11, '1914', 0),
(109, 11, '1920', 0),
(110, 11, '1939', 0),
(111, 12, 'Наполеон I', 1),
(112, 12, 'Петр I', 0),
(113, 12, 'Александр I', 0),
(114, 12, 'Николай I', 0),
(115, 12, 'Наполеон I', 1),
(116, 12, 'Петр I', 0),
(117, 12, 'Александр I', 0),
(118, 12, 'Николай I', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question_text`) VALUES
(1, 1, 'Какая столица Франции?'),
(2, 1, 'Какая река протекает через Лондон?'),
(3, 1, 'Какой океан омывает западное побережье США?'),
(4, 1, 'Какая страна является самой большой по площади?'),
(5, 2, 'Сколько будет 2 + 2?'),
(6, 2, 'Что такое квадратный корень из 16?'),
(7, 2, 'Какой результат умножения 7 на 6?'),
(8, 2, 'Что такое синус угла в прямоугольном треугольнике?'),
(9, 3, 'Кто был первым президентом США?'),
(10, 3, 'В каком году началась Вторая мировая война?'),
(11, 3, 'Какой год стал годом окончания Первой мировой войны?'),
(12, 3, 'Кто был императором России в 1812 году?');

-- --------------------------------------------------------

--
-- Структура таблицы `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`, `created_by`, `created_at`) VALUES
(1, 'Викторина по географии', 'Проверь свои знания о странах и континентах.', 1, '2024-12-18 19:15:05'),
(2, 'Викторина по математике', 'Ответь на вопросы о математических задачах и формулах.', 1, '2024-12-18 19:15:05'),
(3, 'Викторина по истории', 'Узнай, как хорошо ты знаешь исторические события.', 1, '2024-12-18 19:15:05');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin1', 'password123', 'admin1@example.com', 'user'),
(2, 'admin2', 'password123', 'admin2@example.com', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Индексы таблицы `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Ограничения внешнего ключа таблицы `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
