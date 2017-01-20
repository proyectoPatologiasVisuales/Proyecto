-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.11.220.2:3306
-- Tiempo de generación: 19-01-2017 a las 18:58:45
-- Versión del servidor: 5.5.52
-- Versión de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `femxa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Causa_patologia`
--

CREATE TABLE IF NOT EXISTS `Causa_patologia` (
  `id_patol` int(2) NOT NULL,
  `id_sint` int(2) NOT NULL,
  `id_causa` int(2) NOT NULL,
  PRIMARY KEY (`id_causa`),
  KEY `id_patol` (`id_patol`),
  KEY `id_sint` (`id_sint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Causa_patologia`
--

INSERT INTO `Causa_patologia` (`id_patol`, `id_sint`, `id_causa`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Patologias`
--

CREATE TABLE IF NOT EXISTS `Patologias` (
  `id_patol` int(2) NOT NULL,
  `nom_patol` varchar(50) NOT NULL,
  `des_patol` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_patol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Patologias`
--

INSERT INTO `Patologias` (`id_patol`, `nom_patol`, `des_patol`) VALUES
(1, 'Gripe', 'Gripe'),
(2, 'Ebola', 'Ebola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sintomas`
--

CREATE TABLE IF NOT EXISTS `Sintomas` (
  `id_sint` int(2) NOT NULL,
  `nom_sint` varchar(50) NOT NULL,
  PRIMARY KEY (`id_sint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Sintomas`
--

INSERT INTO `Sintomas` (`id_sint`, `nom_sint`) VALUES
(1, 'Fiebre'),
(2, 'Urticaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tratamiento`
--

CREATE TABLE IF NOT EXISTS `Tratamiento` (
  `id_trat` int(2) NOT NULL,
  `nom_trat` varchar(20) NOT NULL,
  `durac_trat` int(3) NOT NULL COMMENT 'Duración en días',
  PRIMARY KEY (`id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lista de Tratamientos';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Causa_patologia`
--
ALTER TABLE `Causa_patologia`
  ADD CONSTRAINT `Causa_patologia_ibfk_2` FOREIGN KEY (`id_sint`) REFERENCES `Sintomas` (`id_sint`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Causa_patologia_ibfk_1` FOREIGN KEY (`id_patol`) REFERENCES `Patologias` (`id_patol`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
