-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2024 a las 00:31:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duenios`
--

CREATE TABLE `duenios` (
  `ID_Duenio` int(11) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Apellido_Usuario` varchar(50) NOT NULL,
  `Email_Usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `duenios`
--

INSERT INTO `duenios` (`ID_Duenio`, `Nombre_Usuario`, `Apellido_Usuario`, `Email_Usuario`) VALUES
(1, 'Pepe', 'Gomez', 'pepegomez@gmail.com'),
(2, 'Loro', 'Pepe', 'loropepe@gmail.com'),
(3, 'josee', 'garcia', 'josegarcia@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `ID_Propiedad` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Estado_Propiedad` varchar(50) NOT NULL,
  `Hambientes` int(2) NOT NULL,
  `duenio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`ID_Propiedad`, `Direccion`, `Estado_Propiedad`, `Hambientes`, `duenio`) VALUES
(1, 'reforma universitaria 858', 'VENTA', 100, 1),
(3, 'hola 5436', 'venta', 100, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `duenios`
--
ALTER TABLE `duenios`
  ADD PRIMARY KEY (`ID_Duenio`);

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`ID_Propiedad`),
  ADD KEY `Usuario_FK` (`duenio`),
  ADD KEY `ID_Usuario` (`duenio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `duenios`
--
ALTER TABLE `duenios`
  MODIFY `ID_Duenio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `ID_Propiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD CONSTRAINT `propiedades_ibfk_1` FOREIGN KEY (`duenio`) REFERENCES `duenios` (`ID_Duenio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
