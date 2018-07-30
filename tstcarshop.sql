-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 24 2018 г., 17:08
-- Версия сервера: 10.1.26-MariaDB-0+deb9u1
-- Версия PHP: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tstcarshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `AutobilityModel`
--

CREATE TABLE `AutobilityModel` (
  `idAutobilityModel` int(11) NOT NULL,
  `name_autobility_model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `AutobilityModel`
--

INSERT INTO `AutobilityModel` (`idAutobilityModel`, `name_autobility_model`) VALUES
(1, 'x320'),
(2, 'x6'),
(3, 'a80');

-- --------------------------------------------------------

--
-- Структура таблицы `Car`
--

CREATE TABLE `Car` (
  `idCar` int(11) NOT NULL,
  `car_type` int(11) NOT NULL,
  `car_model` int(11) NOT NULL,
  `car_autobility_mdl` int(11) NOT NULL,
  `car_transm` int(11) NOT NULL,
  `car_drv_unit` int(11) NOT NULL,
  `car_colour` int(11) NOT NULL,
  `car_cond` int(11) NOT NULL,
  `car_eng_capacity` int(11) NOT NULL,
  `car_year` int(11) NOT NULL,
  `car_price` double NOT NULL,
  `car_curr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Car`
--

INSERT INTO `Car` (`idCar`, `car_type`, `car_model`, `car_autobility_mdl`, `car_transm`, `car_drv_unit`, `car_colour`, `car_cond`, `car_eng_capacity`, `car_year`, `car_price`, `car_curr`) VALUES
(1, 2, 1, 2, 1, 2, 1, 1, 1800, 2000, 50000, 1),
(2, 3, 3, 3, 1, 2, 3, 2, 2200, 2007, 1300000, 3),
(3, 1, 2, 1, 2, 1, 1, 1, 3200, 2005, 200000, 2),
(4, 5, 3, 3, 1, 3, 2, 1, 1500, 2017, 10000, 1),
(5, 4, 1, 1, 2, 1, 1, 2, 1300, 2010, 15000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `CarColour`
--

CREATE TABLE `CarColour` (
  `idCarColour` int(11) NOT NULL,
  `val_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CarColour`
--

INSERT INTO `CarColour` (`idCarColour`, `val_color`) VALUES
(1, 'красный'),
(2, 'металик'),
(3, 'черный');

-- --------------------------------------------------------

--
-- Структура таблицы `CarCondition`
--

CREATE TABLE `CarCondition` (
  `idCarCondition` int(11) NOT NULL,
  `name_Condition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CarCondition`
--

INSERT INTO `CarCondition` (`idCarCondition`, `name_Condition`) VALUES
(1, 'новый'),
(2, 'б/у');

-- --------------------------------------------------------

--
-- Структура таблицы `CarModel`
--

CREATE TABLE `CarModel` (
  `idCarModel` int(11) NOT NULL,
  `name_model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CarModel`
--

INSERT INTO `CarModel` (`idCarModel`, `name_model`) VALUES
(1, 'AUDI'),
(2, 'BWM'),
(3, 'Mazda');

-- --------------------------------------------------------

--
-- Структура таблицы `CarType`
--

CREATE TABLE `CarType` (
  `idCarType` int(11) NOT NULL,
  `name_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CarType`
--

INSERT INTO `CarType` (`idCarType`, `name_type`) VALUES
(1, 'легковая'),
(2, 'грузовик'),
(3, 'автобус'),
(4, 'мотоцикол'),
(5, 'скутер');

-- --------------------------------------------------------

--
-- Структура таблицы `Currency`
--

CREATE TABLE `Currency` (
  `idCurrency` int(11) NOT NULL,
  `name_currency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Currency`
--

INSERT INTO `Currency` (`idCurrency`, `name_currency`) VALUES
(1, 'доллар'),
(2, 'гривна'),
(3, 'рубль');

-- --------------------------------------------------------

--
-- Структура таблицы `DriveUnit`
--

CREATE TABLE `DriveUnit` (
  `idDriveUnit` int(11) NOT NULL,
  `val_drv_unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `DriveUnit`
--

INSERT INTO `DriveUnit` (`idDriveUnit`, `val_drv_unit`) VALUES
(1, 'передний'),
(2, 'задний'),
(3, 'полный');

-- --------------------------------------------------------

--
-- Структура таблицы `Transmission`
--

CREATE TABLE `Transmission` (
  `idTransmission` int(11) NOT NULL,
  `val_Transm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Transmission`
--

INSERT INTO `Transmission` (`idTransmission`, `val_Transm`) VALUES
(1, 'ручная'),
(2, 'автомат');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `AutobilityModel`
--
ALTER TABLE `AutobilityModel`
  ADD PRIMARY KEY (`idAutobilityModel`);

--
-- Индексы таблицы `Car`
--
ALTER TABLE `Car`
  ADD PRIMARY KEY (`idCar`),
  ADD KEY `fk_Car_2_idx` (`car_model`),
  ADD KEY `fk_Car_3_idx` (`car_autobility_mdl`),
  ADD KEY `fk_Car_4_idx` (`car_transm`),
  ADD KEY `fk_Car_5_idx` (`car_drv_unit`),
  ADD KEY `fk_Car_6_idx` (`car_colour`),
  ADD KEY `fk_Car_7_idx` (`car_curr`);

--
-- Индексы таблицы `CarColour`
--
ALTER TABLE `CarColour`
  ADD PRIMARY KEY (`idCarColour`);

--
-- Индексы таблицы `CarCondition`
--
ALTER TABLE `CarCondition`
  ADD PRIMARY KEY (`idCarCondition`);

--
-- Индексы таблицы `CarModel`
--
ALTER TABLE `CarModel`
  ADD PRIMARY KEY (`idCarModel`);

--
-- Индексы таблицы `CarType`
--
ALTER TABLE `CarType`
  ADD PRIMARY KEY (`idCarType`);

--
-- Индексы таблицы `Currency`
--
ALTER TABLE `Currency`
  ADD PRIMARY KEY (`idCurrency`);

--
-- Индексы таблицы `DriveUnit`
--
ALTER TABLE `DriveUnit`
  ADD PRIMARY KEY (`idDriveUnit`);

--
-- Индексы таблицы `Transmission`
--
ALTER TABLE `Transmission`
  ADD PRIMARY KEY (`idTransmission`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `AutobilityModel`
--
ALTER TABLE `AutobilityModel`
  MODIFY `idAutobilityModel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `Car`
--
ALTER TABLE `Car`
  MODIFY `idCar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `CarColour`
--
ALTER TABLE `CarColour`
  MODIFY `idCarColour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `CarModel`
--
ALTER TABLE `CarModel`
  MODIFY `idCarModel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `CarType`
--
ALTER TABLE `CarType`
  MODIFY `idCarType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `DriveUnit`
--
ALTER TABLE `DriveUnit`
  MODIFY `idDriveUnit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `Transmission`
--
ALTER TABLE `Transmission`
  MODIFY `idTransmission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Car`
--
ALTER TABLE `Car`
  ADD CONSTRAINT `fk_Car_1` FOREIGN KEY (`idCar`) REFERENCES `CarType` (`idCarType`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_2` FOREIGN KEY (`car_model`) REFERENCES `CarModel` (`idCarModel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_3` FOREIGN KEY (`car_autobility_mdl`) REFERENCES `AutobilityModel` (`idAutobilityModel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_4` FOREIGN KEY (`car_transm`) REFERENCES `Transmission` (`idTransmission`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_5` FOREIGN KEY (`car_drv_unit`) REFERENCES `DriveUnit` (`idDriveUnit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_6` FOREIGN KEY (`car_colour`) REFERENCES `CarColour` (`idCarColour`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Car_7` FOREIGN KEY (`car_curr`) REFERENCES `Currency` (`idCurrency`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
