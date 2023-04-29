-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2023 at 09:21 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentoriasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `AlumnoID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Contrasena` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Institucion` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
  `CursoID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `HorasSemana` float DEFAULT NULL,
  `Modalidad` varchar(255) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cursodominadopormentor`
--

DROP TABLE IF EXISTS `cursodominadopormentor`;
CREATE TABLE IF NOT EXISTS `cursodominadopormentor` (
  `DominadoID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Calificacion` int DEFAULT NULL,
  `Reconocimiento` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informaciondecursoporinstitucion`
--

DROP TABLE IF EXISTS `informaciondecursoporinstitucion`;
CREATE TABLE IF NOT EXISTS `informaciondecursoporinstitucion` (
  `Facultad` varchar(255) DEFAULT NULL,
  `Carrera` varchar(255) DEFAULT NULL,
  `CicloDeCurso` int DEFAULT NULL,
  `Modalidad` binary(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informaciondementor`
--

DROP TABLE IF EXISTS `informaciondementor`;
CREATE TABLE IF NOT EXISTS `informaciondementor` (
  `VideoDePresentacion` varchar(255) DEFAULT NULL,
  `NotasDeCurso` float DEFAULT NULL,
  `HorasDisponible` float DEFAULT NULL,
  `CalificacionServicio` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insteducativa`
--

DROP TABLE IF EXISTS `insteducativa`;
CREATE TABLE IF NOT EXISTS `insteducativa` (
  `InstEducativaID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
CREATE TABLE IF NOT EXISTS `mentor` (
  `MentorID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Contrasena` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Institucion` varchar(255) DEFAULT NULL,
  `CursoPorEnsenar` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
CREATE TABLE IF NOT EXISTS `ubicacion` (
  `UbicacionID` int DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
