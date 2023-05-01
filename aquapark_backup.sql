-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 01 2023 г., 14:59
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aquapark`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `description`, `price`) VALUES
(1, 'Бассейн с волнами', 'Самый большой бассейн в аквапарке с волнами, высокие волны и кристально чистая вода', '1500.00'),
(2, 'Спуск на батутах', 'Прыгайте на батутах с настоящей горки, а потом окунитесь в бассейн', '500.00'),
(3, 'Камикадзе', 'Самый быстрый и крутой водный горок в аквапарке, высота 20 метров', '2000.00'),
(4, 'Водные качели', 'Качели, но на воде', '800.00'),
(5, 'Ленивая река', 'Река, по которой можно плавать на кругах и наблюдать за окружающей красотой', '1000.00'),
(6, 'Детский бассейн', 'Бассейн с низкой глубиной для маленьких детей', '500.00'),
(7, 'Труба', 'Спуск на круглой трубе, впечатление, будто падаешь вниз по воронке', '1200.00'),
(8, 'Слалом', 'Спуск на водном горке с множеством поворотов и скоростью', '1500.00'),
(9, 'Тропический душ', 'Под струями воды в тропическом стиле', '600.00'),
(10, 'Водопад', 'Подводный водопад, находящийся в бассейне', '800.00'),
(11, 'Гигантский водный шар', 'Входи в гигантский водный шар и катись по воде', '1200.00'),
(12, 'Водный лабиринт', 'Пройди лабиринт, перепрыгивая через различные препятствия и катясь на водных горках', '1500.00'),
(13, 'Автоматический бар', 'Бар на колесах, который катается по аквапарку и обслуживает гостей', '2000.00'),
(14, 'Водная горка \"Торнадо\"', 'Самая высокая водная горка, вращающаяся по спирали', '1800.00'),
(15, 'Бассейн с горкой', 'Бассейн с водной горкой для веселья и отдыха', '1000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `attractions_orders`
--

CREATE TABLE `attractions_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `attraction_id` int(11) DEFAULT NULL,
  `hours` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attractions_orders`
--

INSERT INTO `attractions_orders` (`id`, `order_id`, `attraction_id`, `hours`) VALUES
(1, 1, 9, 2.36),
(2, 1, 13, 2.23),
(3, 2, 3, 2.16),
(4, 2, 6, 1.18),
(5, 2, 9, 1.89),
(6, 2, 10, 1.13),
(7, 3, 2, 1.31),
(8, 3, 7, 2.46),
(9, 3, 10, 2.3),
(10, 3, 15, 0.77),
(11, 4, 5, 2.48),
(12, 4, 7, 2.17),
(13, 4, 8, 1.83),
(14, 4, 10, 2.25),
(15, 4, 11, 1.81),
(16, 4, 12, 1.65),
(17, 4, 14, 1.63),
(18, 5, 9, 0.71),
(19, 5, 11, 0.68),
(20, 6, 5, 1.08),
(21, 6, 7, 1.29),
(22, 7, 1, 1.12),
(23, 7, 2, 2.48),
(24, 7, 4, 2.18),
(25, 7, 5, 1.33),
(26, 7, 9, 1.98),
(27, 8, 5, 1.76),
(28, 10, 7, 2.35),
(29, 11, 1, 1.2),
(30, 11, 13, 2.12),
(31, 12, 5, 2.2),
(32, 12, 10, 2.13),
(33, 12, 12, 0.55),
(34, 12, 14, 2.11),
(35, 13, 4, 0.55),
(36, 13, 8, 0.67),
(37, 13, 13, 2.22),
(38, 13, 14, 2.1),
(39, 14, 2, 1.06),
(40, 14, 5, 1.54),
(41, 14, 6, 2.08),
(42, 14, 10, 1.21),
(43, 14, 13, 1.59),
(44, 15, 4, 1.51),
(45, 15, 5, 2.44),
(46, 15, 9, 1.8),
(47, 15, 10, 2.19),
(48, 15, 12, 1.96),
(49, 15, 13, 0.78),
(50, 15, 15, 2.34),
(51, 17, 10, 2.31),
(52, 17, 15, 2.21),
(53, 18, 8, 1.13),
(54, 18, 11, 2.34),
(55, 18, 12, 2.02),
(56, 18, 14, 1.41),
(57, 19, 1, 2.01),
(58, 19, 3, 1.04),
(59, 19, 6, 1.25),
(60, 19, 9, 2.36),
(61, 19, 10, 2.18),
(62, 20, 6, 2.49),
(63, 20, 13, 0.82),
(64, 21, 2, 1.04),
(65, 21, 3, 1.91),
(66, 21, 11, 0.73),
(67, 21, 13, 1.86),
(68, 21, 14, 1.11),
(69, 22, 8, 1.43),
(70, 22, 15, 2.24),
(71, 23, 4, 1.55),
(72, 23, 11, 0.5),
(73, 23, 15, 0.65),
(74, 24, 1, 1.39),
(75, 24, 6, 1.76),
(76, 24, 11, 2.15),
(77, 24, 13, 1.82),
(78, 24, 15, 1.8),
(79, 25, 2, 0.68),
(80, 25, 3, 2.03),
(81, 25, 6, 0.68),
(82, 25, 10, 1.07),
(83, 25, 11, 1.58),
(84, 26, 3, 0.83),
(85, 26, 12, 0.51),
(86, 27, 3, 2.39),
(87, 27, 6, 1.09),
(88, 27, 11, 1.74),
(89, 29, 4, 0.93),
(90, 29, 8, 1.59),
(91, 29, 14, 2.09),
(92, 30, 1, 1.99),
(93, 30, 4, 2.04),
(94, 30, 9, 2.14),
(95, 30, 10, 2.5),
(96, 31, 7, 1.69),
(97, 32, 2, 1),
(98, 32, 3, 2.37),
(99, 32, 7, 1.24),
(100, 32, 11, 0.68),
(101, 32, 14, 1.15),
(102, 33, 4, 1.49),
(103, 33, 6, 2.23),
(104, 33, 15, 1.48),
(105, 34, 1, 2.26),
(106, 34, 2, 1.13),
(107, 34, 3, 0.66),
(108, 34, 8, 0.51),
(109, 34, 11, 1.4),
(110, 34, 12, 2.36),
(111, 35, 4, 1.1),
(112, 35, 15, 1.92),
(113, 36, 3, 2.33),
(114, 36, 7, 1.76),
(115, 36, 12, 1.81),
(116, 37, 2, 1.22),
(117, 37, 14, 2.11),
(118, 38, 2, 2.04),
(119, 38, 5, 2.42),
(120, 38, 7, 1.28),
(121, 38, 14, 1.79),
(122, 38, 15, 1.07),
(123, 39, 4, 1.1),
(124, 39, 10, 0.93),
(125, 39, 12, 0.84),
(126, 40, 1, 1.64),
(127, 40, 8, 1.21),
(128, 40, 9, 2.19),
(129, 40, 12, 1.17),
(130, 40, 13, 2.08),
(131, 41, 11, 0.5),
(132, 41, 14, 0.97),
(133, 42, 3, 1.18),
(134, 42, 4, 1.82),
(135, 42, 12, 1.96),
(136, 43, 15, 1.88),
(256, 9, 9, 2.23),
(257, 16, 3, 2.27),
(258, 16, 4, 2.19),
(259, 16, 6, 1.77),
(260, 16, 14, 1.11),
(261, 28, 8, 0.92),
(262, 44, 1, 1.55),
(263, 44, 4, 2.06),
(264, 44, 7, 1.26),
(265, 44, 9, 1.64),
(266, 44, 12, 2.26);

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `price`) VALUES
(1, 'Шашлык из свинины', 'Кусочки свиной шейки, пропитанные специями и маринованные в соевом соусе', '450.00'),
(2, 'Салат \"Цезарь\"', 'Аппетитный салат с кусочками куриного филе, сыром пармезан, гренками и ароматным соусом', '320.00'),
(3, 'Суп грибной', 'Традиционный грибной суп с картофелем и морковью', '180.00'),
(4, 'Шашлык из баранины', 'Кусочки бараньей лопатки, пропитанные специями и маринованные в соевом соусе', '520.00'),
(5, 'Пельмени с мясом', 'Классические пельмени с начинкой из свинины и говядины', '250.00'),
(6, 'Салат \"Греческий\"', 'Салат с огурцами, помидорами, перцем, сыром фета, маслинами и ароматным соусом', '290.00'),
(7, 'Рыбный суп', 'Ароматный рыбный суп с филе трески, рисом и овощами', '220.00'),
(8, 'Шашлык из курицы', 'Кусочки куриного филе, пропитанные специями и маринованные в соевом соусе', '320.00'),
(9, 'Паста \"Болоньезе\"', 'Спагетти с мясным соусом из говядины и томатов', '360.00'),
(10, 'Салат \"Оливье\"', 'Традиционный салат с вареными овощами, колбасой и майонезом', '250.00'),
(11, 'Картофель фри', 'Хрустящие кусочки картофеля, приготовленные в глубокой жарке', '200.00'),
(12, 'Салат \"Летний\"', 'Салат с помидорами, огурцами, кукурузой, маслинами и ароматным соусом', '280.00'),
(13, 'Чечевичный суп', 'Сытный суп с чечевицей, морковью и луком', '200.00'),
(14, 'Шашлык из свиной вырезки', 'Кусочки свиной вырезки, пропитанные специями и маринованные в соевом соусе', '480.00'),
(15, 'Гренки', 'Хрустящие ломтики хлеба, запеченные в духовке с чесноком и зеленью', '180.00'),
(16, 'Лимонад', 'Охлаждающий напиток с лимоном и мятой', '250.00'),
(17, 'Кола', 'Газированный напиток с карамельным вкусом', '150.00'),
(18, 'Сидр', 'Натуральное яблочное вино', '350.00'),
(19, 'Коктейль \"Мохито\"', 'Алкогольный коктейль с ромом, лаймом и мятой', '450.00'),
(20, 'Смузи \"Энергия\"', 'Смузи с бананом, ягодами и медом', '350.00'),
(21, 'Чай \"Английский завтрак\"', 'Черный крупнолистовой чай', '200.00'),
(22, 'Кофе \"Капучино\"', 'Кофе с молоком и пенкой', '300.00'),
(23, 'Молочный коктейль', 'Коктейль с молоком и фруктами', '350.00'),
(24, 'Кислый морс', 'Безалкогольный напиток с ягодами', '200.00'),
(25, 'Тоник', 'Безалкогольный напиток с характерным вкусом хинина', '150.00'),
(26, 'Фанта', 'Газированный напиток с фруктовым вкусом', '150.00'),
(27, 'Сок \"Яблоко\"', 'Натуральный сок из яблок', '250.00'),
(28, 'Сок \"Апельсин\"', 'Натуральный сок из апельсинов', '250.00'),
(29, 'Сок \"Грейпфрут\"', 'Натуральный сок из грейпфрутов', '250.00'),
(30, 'Лимонад', 'Безалкогольный лимонный напиток', '200.00'),
(31, 'Мохито', 'Коктейль на основе рома с лаймом и мятой', '400.00'),
(32, 'Маргарита', 'Коктейль на основе текилы с лимоном и льдом', '450.00'),
(33, 'Пиво \"Старопрамен\"', 'Лагер светлый, алк. 5%', '350.00'),
(34, 'Пиво \"Guinness\"', 'Тёмное пиво с кремовой пеной, алк. 4,2%', '450.00');

-- --------------------------------------------------------

--
-- Структура таблицы `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `food_orders`
--

INSERT INTO `food_orders` (`id`, `order_id`, `food_id`, `quantity`) VALUES
(1, 1, 9, 2),
(2, 1, 17, 1),
(3, 1, 18, 2),
(4, 1, 22, 1),
(5, 2, 1, 1),
(6, 2, 3, 2),
(7, 2, 6, 2),
(8, 2, 13, 3),
(9, 2, 30, 2),
(10, 3, 11, 3),
(11, 3, 14, 1),
(12, 3, 27, 2),
(13, 4, 4, 3),
(14, 4, 11, 2),
(15, 4, 17, 2),
(16, 4, 27, 2),
(17, 4, 34, 2),
(18, 5, 19, 3),
(19, 6, 1, 2),
(20, 6, 16, 1),
(21, 6, 18, 3),
(22, 6, 22, 1),
(23, 6, 29, 2),
(24, 8, 9, 2),
(25, 8, 12, 1),
(26, 8, 17, 3),
(27, 9, 9, 1),
(28, 9, 10, 3),
(29, 9, 12, 3),
(30, 9, 22, 3),
(31, 9, 29, 1),
(32, 9, 34, 1),
(33, 10, 5, 2),
(34, 10, 20, 3),
(35, 11, 20, 2),
(36, 11, 26, 2),
(37, 11, 28, 3),
(38, 12, 5, 2),
(39, 12, 11, 1),
(40, 12, 12, 2),
(41, 12, 23, 2),
(42, 13, 1, 3),
(43, 13, 5, 2),
(44, 13, 11, 2),
(45, 13, 21, 2),
(46, 13, 24, 2),
(47, 13, 31, 1),
(48, 14, 3, 3),
(49, 14, 13, 2),
(50, 15, 6, 1),
(51, 15, 27, 3),
(52, 16, 3, 2),
(53, 16, 13, 2),
(54, 16, 16, 2),
(55, 16, 17, 2),
(56, 16, 30, 2),
(57, 17, 8, 2),
(58, 17, 12, 2),
(59, 17, 22, 2),
(60, 18, 6, 2),
(61, 19, 29, 3),
(62, 20, 1, 2),
(63, 20, 3, 2),
(64, 20, 19, 2),
(65, 20, 21, 2),
(66, 20, 30, 2),
(67, 20, 31, 2),
(68, 20, 33, 3),
(69, 21, 5, 3),
(70, 21, 8, 1),
(71, 21, 9, 2),
(72, 23, 34, 3),
(73, 24, 2, 1),
(74, 24, 3, 2),
(75, 24, 12, 2),
(76, 24, 30, 2),
(77, 24, 34, 2),
(78, 25, 13, 2),
(79, 25, 14, 3),
(80, 25, 26, 1),
(81, 26, 5, 2),
(82, 26, 11, 1),
(83, 26, 12, 2),
(84, 26, 21, 3),
(85, 26, 24, 3),
(86, 26, 30, 3),
(87, 26, 33, 2),
(88, 27, 3, 2),
(89, 27, 16, 2),
(90, 27, 17, 1),
(91, 27, 27, 3),
(92, 27, 30, 2),
(93, 28, 6, 2),
(94, 28, 7, 2),
(95, 28, 12, 1),
(96, 28, 33, 2),
(97, 29, 9, 2),
(98, 29, 20, 2),
(99, 29, 24, 3),
(100, 30, 5, 2),
(101, 30, 23, 2),
(102, 31, 9, 2),
(103, 31, 11, 1),
(104, 31, 14, 2),
(105, 32, 1, 3),
(106, 32, 12, 3),
(107, 32, 18, 2),
(108, 32, 27, 2),
(109, 32, 32, 2),
(110, 33, 10, 2),
(111, 33, 19, 1),
(112, 33, 22, 1),
(113, 34, 12, 1),
(114, 34, 18, 2),
(115, 35, 16, 3),
(116, 35, 23, 3),
(117, 35, 32, 1),
(118, 36, 4, 3),
(119, 36, 27, 1),
(120, 36, 29, 2),
(121, 37, 1, 2),
(122, 37, 4, 1),
(123, 37, 10, 3),
(124, 37, 25, 2),
(125, 38, 16, 2),
(126, 38, 17, 2),
(127, 38, 30, 1),
(128, 39, 28, 3),
(129, 39, 29, 3),
(130, 40, 1, 3),
(131, 40, 7, 2),
(132, 40, 24, 3),
(133, 41, 4, 1),
(134, 41, 20, 2),
(135, 41, 33, 3),
(136, 42, 29, 2),
(137, 43, 21, 2),
(138, 44, 5, 2),
(139, 44, 9, 1),
(140, 44, 12, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `involved_staff`
--

CREATE TABLE `involved_staff` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `involved_staff`
--

INSERT INTO `involved_staff` (`id`, `order_id`, `staff_id`) VALUES
(1, 1, 12),
(2, 2, 5),
(3, 3, 1),
(4, 4, 14),
(5, 5, 3),
(6, 6, 2),
(7, 7, 3),
(8, 7, 5),
(9, 8, 7),
(10, 8, 12),
(11, 9, 13),
(12, 9, 12),
(13, 10, 5),
(14, 11, 4),
(15, 12, 2),
(16, 12, 3),
(17, 12, 14),
(18, 13, 15),
(19, 14, 12),
(20, 15, 3),
(21, 15, 14),
(22, 15, 9),
(23, 16, 4),
(24, 17, 8),
(25, 18, 8),
(26, 18, 5),
(27, 18, 15),
(28, 19, 13),
(29, 20, 14),
(30, 20, 12),
(31, 22, 8),
(32, 23, 9),
(33, 25, 1),
(34, 25, 5),
(35, 26, 2),
(36, 26, 15),
(37, 27, 8),
(38, 27, 14),
(39, 28, 14),
(40, 29, 13),
(41, 31, 11),
(42, 32, 2),
(43, 32, 9),
(44, 33, 2),
(45, 34, 14),
(46, 34, 4),
(47, 34, 12),
(48, 35, 5),
(49, 35, 11),
(50, 36, 12),
(51, 37, 2),
(52, 38, 6),
(53, 38, 5),
(54, 40, 7),
(55, 41, 2),
(56, 42, 8),
(57, 42, 3),
(58, 43, 1),
(59, 43, 9),
(64, 21, 7),
(65, 30, 11),
(66, 30, 9),
(67, 39, 6),
(68, 39, 10),
(71, 24, 7),
(72, 24, 12),
(73, 44, 14),
(74, 44, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `client_name`, `order_date`) VALUES
(1, 'Иванова Анна Петровна', '2023-04-11 10:00:00'),
(2, 'Петров Павел Иванович', '2023-04-12 14:30:00'),
(3, 'Сидорова Елена Владимировна', '2023-04-13 11:15:00'),
(4, 'Ковалев Илья Викторович', '2023-04-14 18:00:00'),
(5, 'Жукова Анастасия Сергеевна', '2023-04-15 15:45:00'),
(6, 'Лебедев Даниил Олегович', '2023-04-16 12:30:00'),
(7, 'Михайлова Виктория Игоревна', '2023-04-17 13:15:00'),
(8, 'Тимофеев Алексей Андреевич', '2023-04-18 11:45:00'),
(9, 'Федорова Анастасия Андреевна', '2023-04-19 10:30:00'),
(10, 'Горбунова Ксения Ильинична', '2023-04-20 16:00:00'),
(11, 'Иванова Анна Сергеевна', '2023-04-20 10:00:00'),
(12, 'Петров Виктор Михайлович', '2023-04-22 14:30:00'),
(13, 'Сидорова Екатерина Ивановна', '2023-04-25 11:45:00'),
(14, 'Козлов Дмитрий Александрович', '2023-04-28 16:20:00'),
(15, 'Антонова Надежда Владимировна', '2023-04-30 09:15:00'),
(16, 'Григорьев Сергей Петрович', '2023-05-03 13:00:00'),
(17, 'Соколова Ольга Викторовна', '2023-05-05 17:30:00'),
(18, 'Макаров Андрей Николаевич', '2023-05-08 12:00:00'),
(19, 'Игнатова Татьяна Сергеевна', '2023-05-10 09:45:00'),
(20, 'Федоров Иван Петрович', '2023-05-13 15:20:00'),
(21, 'Белова Елена Дмитриевна', '2023-05-16 11:30:00'),
(22, 'Сергеев Алексей Андреевич', '2023-05-18 18:00:00'),
(23, 'Шестакова Мария Васильевна', '2023-05-21 09:30:00'),
(24, 'Кузьмина Анастасия Игоревна', '2023-05-23 13:45:00'),
(25, 'Громов Артем Максимович', '2023-05-26 15:10:00'),
(26, 'Новикова Анастасия Сергеевна', '2023-05-29 10:30:00'),
(27, 'Исаев Виктор Иванович', '2023-06-01 16:00:00'),
(28, 'Кудряшова Елена Михайловна', '2023-06-03 09:00:00'),
(29, 'Данилов Антон Валерьевич', '2023-06-06 14:15:00'),
(30, 'Маркова Оксана Александровна', '2023-06-08 11:20:00'),
(31, 'Александрова Елена Игоревна', '2023-06-11 17:30:00'),
(32, 'Петухов Михаил Сергеевич', '2023-06-13 12:45:00'),
(33, 'Сидоров Игорь Владимирович', '2023-06-16 10:30:00'),
(34, 'Донской Иван Дмитриевич', '2023-06-10 10:00:00'),
(35, 'Иванова Анна Сергеевна', '2023-05-22 10:30:00'),
(36, 'Петров Иван Петрович', '2023-05-22 11:45:00'),
(37, 'Сидоров Сергей Андреевич', '2023-05-23 13:15:00'),
(38, 'Козлова Екатерина Владимировна', '2023-05-23 14:30:00'),
(39, 'Михайлов Илья Александрович', '2023-05-24 16:45:00'),
(40, 'Федорова Анастасия Дмитриевна', '2023-05-24 17:30:00'),
(41, 'Никитина Елена Владимировна', '2023-05-25 11:00:00'),
(42, 'Григорьев Дмитрий Игоревич', '2023-05-25 13:30:00'),
(43, 'Смирнова Александра Ивановна', '2023-05-26 12:15:00'),
(44, 'Иванов Петр Николаевич', '2023-05-26 15:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Кассир'),
(2, 'Уборщик'),
(3, 'Повар'),
(4, 'Бармен'),
(5, 'Администратор'),
(6, 'Инструктор'),
(7, 'Спасатель'),
(8, 'Врач');

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `name`, `role_id`, `salary`) VALUES
(1, 'Иванов Иван Иванович', 1, '35000.00'),
(2, 'Петров Петр Петрович', 2, '30000.00'),
(3, 'Сидоров Сидор Сидорович', 3, '40000.00'),
(4, 'Кузнецова Елена Сергеевна', 4, '35000.00'),
(5, 'Новиков Николай Николаевич', 5, '45000.00'),
(6, 'Иванова Ольга Петровна', 1, '30000.00'),
(7, 'Кузнецов Константин Игоревич', 3, '50000.00'),
(8, 'Петрова Анна Александровна', 2, '25000.00'),
(9, 'Сидорова Мария Ивановна', 8, '30000.00'),
(10, 'Новикова Анна Алексеевна', 5, '40000.00'),
(11, 'Иванов Сергей Петрович', 6, '35000.00'),
(12, 'Кузнецова Наталья Игоревна', 4, '45000.00'),
(13, 'Петров Кирилл Владимирович', 2, '35000.00'),
(14, 'Сидоров Василий Васильевич', 3, '30000.00'),
(15, 'Новиков Игорь Александрович', 7, '40000.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attractions_orders`
--
ALTER TABLE `attractions_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `attraction_id` (`attraction_id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Индексы таблицы `involved_staff`
--
ALTER TABLE `involved_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `attractions_orders`
--
ALTER TABLE `attractions_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT для таблицы `involved_staff`
--
ALTER TABLE `involved_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `attractions_orders`
--
ALTER TABLE `attractions_orders`
  ADD CONSTRAINT `attractions_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `attractions_orders_ibfk_2` FOREIGN KEY (`attraction_id`) REFERENCES `attractions` (`id`);

--
-- Ограничения внешнего ключа таблицы `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `food_orders_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`);

--
-- Ограничения внешнего ключа таблицы `involved_staff`
--
ALTER TABLE `involved_staff`
  ADD CONSTRAINT `involved_staff_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `involved_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Ограничения внешнего ключа таблицы `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
