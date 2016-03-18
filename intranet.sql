-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-03-2016 a las 13:58:05
-- Versión del servidor: 5.5.44-0+deb8u1
-- Versión de PHP: 5.6.12-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `intranet`
--
CREATE DATABASE IF NOT EXISTS `intranet` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `intranet`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `absentismo`
--

DROP TABLE IF EXISTS `absentismo`;
CREATE TABLE IF NOT EXISTS `absentismo` (
`id` int(11) NOT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `mes` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `numero` bigint(21) NOT NULL DEFAULT '0',
  `unidad` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `jefatura` text COLLATE latin1_spanish_ci,
  `tutoria` text COLLATE latin1_spanish_ci,
  `orientacion` text COLLATE latin1_spanish_ci,
  `serv_sociales` text COLLATE latin1_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividadalumno`
--

DROP TABLE IF EXISTS `actividadalumno`;
CREATE TABLE IF NOT EXISTS `actividadalumno` (
`id` int(10) NOT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `cod_actividad` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

DROP TABLE IF EXISTS `actividades`;
CREATE TABLE IF NOT EXISTS `actividades` (
`id` smallint(5) unsigned NOT NULL,
  `grupos` text COLLATE latin1_spanish_ci,
  `actividad` varchar(164) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `departamento` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `profesor` varchar(196) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `horario` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `hoy` date NOT NULL DEFAULT '0000-00-00',
  `confirmado` tinyint(1) NOT NULL DEFAULT '0',
  `justificacion` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_seneca`
--

DROP TABLE IF EXISTS `actividades_seneca`;
CREATE TABLE IF NOT EXISTS `actividades_seneca` (
  `regactividad` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `idactividad` int(12) unsigned NOT NULL,
  `nomactividad` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `requnidadactividad` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `reqmateriaactividad` char(1) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizacion`
--

DROP TABLE IF EXISTS `actualizacion`;
CREATE TABLE IF NOT EXISTS `actualizacion` (
`id` int(11) NOT NULL,
  `modulo` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alma`
--

DROP TABLE IF EXISTS `alma`;
CREATE TABLE IF NOT EXISTS `alma` (
  `COMBASI` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ESTADOMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `CLAVEAL1` varchar(8) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PADRE` varchar(78) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNI` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DOMICILIO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CODPOSTAL` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIARESIDENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONOURGENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CORREO` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CURSO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NUMEROEXPEDIENTE` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `UNIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `APELLIDOS` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOPRIMERTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDADNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHAMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `MATRICULAS` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIANACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PAISNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EDAD` varchar(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXO` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alma_primera`
--

DROP TABLE IF EXISTS `alma_primera`;
CREATE TABLE IF NOT EXISTS `alma_primera` (
  `COMBASI` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ESTADOMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `CLAVEAL1` varchar(8) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PADRE` varchar(78) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNI` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DOMICILIO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CODPOSTAL` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIARESIDENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONOURGENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CORREO` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CURSO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NUMEROEXPEDIENTE` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `UNIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `APELLIDOS` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOPRIMERTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDADNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHAMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `MATRICULAS` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIANACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PAISNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EDAD` varchar(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXO` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alma_seg`
--

DROP TABLE IF EXISTS `alma_seg`;
CREATE TABLE IF NOT EXISTS `alma_seg` (
  `COMBASI` varchar(250) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ESTADOMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `CLAVEAL1` varchar(8) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PADRE` varchar(78) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNI` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DOMICILIO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CODPOSTAL` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIARESIDENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TELEFONOURGENCIA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CORREO` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CURSO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NUMEROEXPEDIENTE` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `UNIDAD` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `APELLIDOS` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOPRIMERTUTOR` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DNITUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRIMERAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEGUNDOAPELLIDOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRETUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXOTUTOR2` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `LOCALIDADNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FECHAMATRICULA` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `MATRICULAS` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROVINCIANACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PAISNACIMIENTO` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `EDAD` varchar(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NACIONALIDAD` varchar(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `SEXO` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
CREATE TABLE IF NOT EXISTS `asignaturas` (
  `CODIGO` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(96) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ABREV` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CURSO` varchar(128) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ausencias`
--

DROP TABLE IF EXISTS `ausencias`;
CREATE TABLE IF NOT EXISTS `ausencias` (
`id` int(11) NOT NULL,
  `profesor` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `inicio` date NOT NULL DEFAULT '0000-00-00',
  `fin` date NOT NULL DEFAULT '0000-00-00',
  `horas` int(11) NOT NULL DEFAULT '0',
  `tareas` text COLLATE latin1_spanish_ci NOT NULL,
  `ahora` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `archivo` varchar(186) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
CREATE TABLE IF NOT EXISTS `biblioteca` (
`id` int(11) NOT NULL,
  `Autor` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `Titulo` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `Editorial` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `ISBN` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `Tipo` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `anoEdicion` int(4) NOT NULL,
  `extension` varchar(8) COLLATE latin1_spanish_ci NOT NULL,
  `serie` int(11) NOT NULL,
  `lugaredicion` varchar(48) COLLATE latin1_spanish_ci NOT NULL,
  `tipoEjemplar` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `ubicacion` varchar(32) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca_lectores`
--

DROP TABLE IF EXISTS `biblioteca_lectores`;
CREATE TABLE IF NOT EXISTS `biblioteca_lectores` (
`id` int(11) NOT NULL,
  `Codigo` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `DNI` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `Apellidos` varchar(48) COLLATE latin1_spanish_ci NOT NULL,
  `Nombre` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `Grupo` varchar(6) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

DROP TABLE IF EXISTS `calendario`;
CREATE TABLE IF NOT EXISTS `calendario` (
`id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` longtext COLLATE latin1_spanish_ci NOT NULL,
  `fechaini` date DEFAULT NULL,
  `horaini` time DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `lugar` varchar(180) COLLATE latin1_spanish_ci NOT NULL,
  `departamento` text COLLATE latin1_spanish_ci,
  `profesores` text COLLATE latin1_spanish_ci,
  `unidades` text COLLATE latin1_spanish_ci,
  `asignaturas` text COLLATE latin1_spanish_ci,
  `fechareg` datetime NOT NULL,
  `profesorreg` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `confirmado` tinyint(1) NOT NULL,
  `observaciones` text COLLATE latin1_spanish_ci
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_categorias`
--

DROP TABLE IF EXISTS `calendario_categorias`;
CREATE TABLE IF NOT EXISTS `calendario_categorias` (
`id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `profesor` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `color` char(7) COLLATE latin1_spanish_ci NOT NULL,
  `espublico` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
CREATE TABLE IF NOT EXISTS `calificaciones` (
  `codigo` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `abreviatura` varchar(4) COLLATE latin1_spanish_ci DEFAULT NULL,
  `orden` varchar(4) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE IF NOT EXISTS `cargos` (
  `dni` varchar(9) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `cargo` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

DROP TABLE IF EXISTS `control`;
CREATE TABLE IF NOT EXISTS `control` (
`id` int(11) NOT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `pass` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `correo` varchar(128) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convivencia`
--

DROP TABLE IF EXISTS `convivencia`;
CREATE TABLE IF NOT EXISTS `convivencia` (
`id` int(11) NOT NULL,
  `claveal` int(8) NOT NULL DEFAULT '0',
  `dia` int(1) NOT NULL DEFAULT '0',
  `hora` int(1) NOT NULL DEFAULT '0',
  `trabajo` int(1) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `observaciones` text COLLATE latin1_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int(12) unsigned NOT NULL,
  `nomcurso` varchar(80) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_profes`
--

DROP TABLE IF EXISTS `c_profes`;
CREATE TABLE IF NOT EXISTS `c_profes` (
`id` int(11) NOT NULL,
  `pass` varchar(48) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PROFESOR` varchar(48) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dni` varchar(9) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `idea` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `correo` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

DROP TABLE IF EXISTS `datos`;
CREATE TABLE IF NOT EXISTS `datos` (
  `id` int(4) NOT NULL DEFAULT '0',
  `nota` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `ponderacion` char(3) COLLATE latin1_spanish_ci DEFAULT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `NOMBRE` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `DNI` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(80) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `CARGO` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idea` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos_seg`
--

DROP TABLE IF EXISTS `departamentos_seg`;
CREATE TABLE IF NOT EXISTS `departamentos_seg` (
  `NOMBRE` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `DNI` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `DEPARTAMENTO` varchar(80) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `CARGO` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idea` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos_seneca`
--

DROP TABLE IF EXISTS `departamentos_seneca`;
CREATE TABLE IF NOT EXISTS `departamentos_seneca` (
`iddepartamento` int(2) unsigned NOT NULL,
  `nomdepartamento` varchar(80) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

DROP TABLE IF EXISTS `dependencias`;
CREATE TABLE IF NOT EXISTS `dependencias` (
  `iddependencia` int(12) unsigned NOT NULL,
  `nomdependencia` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `descdependencia` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `reservadependencia` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

DROP TABLE IF EXISTS `evaluaciones`;
CREATE TABLE IF NOT EXISTS `evaluaciones` (
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `asignatura` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `evaluacion` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `profesor` text COLLATE latin1_spanish_ci NOT NULL,
  `calificaciones` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones_actas`
--

DROP TABLE IF EXISTS `evaluaciones_actas`;
CREATE TABLE IF NOT EXISTS `evaluaciones_actas` (
`id` int(10) unsigned NOT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `evaluacion` char(3) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `texto_acta` text COLLATE latin1_spanish_ci NOT NULL,
  `impresion` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FALTAS`
--

DROP TABLE IF EXISTS `FALTAS`;
CREATE TABLE IF NOT EXISTS `FALTAS` (
`id` int(11) NOT NULL,
  `CLAVEAL` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `UNIDAD` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NC` tinyint(2) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `DIA` tinyint(1) NOT NULL DEFAULT '0',
  `HORA` tinyint(1) DEFAULT NULL,
  `PROFESOR` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CODASI` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `FALTA` char(1) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FALUMNOS`
--

DROP TABLE IF EXISTS `FALUMNOS`;
CREATE TABLE IF NOT EXISTS `FALUMNOS` (
  `CLAVEAL` char(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NC` double DEFAULT NULL,
  `APELLIDOS` char(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` char(24) COLLATE latin1_spanish_ci DEFAULT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FALUMNOS_primero`
--

DROP TABLE IF EXISTS `FALUMNOS_primero`;
CREATE TABLE IF NOT EXISTS `FALUMNOS_primero` (
  `claveal` char(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nc` double DEFAULT NULL,
  `apellidos` char(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` char(24) COLLATE latin1_spanish_ci DEFAULT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FALUMNOS_seg`
--

DROP TABLE IF EXISTS `FALUMNOS_seg`;
CREATE TABLE IF NOT EXISTS `FALUMNOS_seg` (
  `CLAVEAL` char(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NC` double DEFAULT NULL,
  `APELLIDOS` char(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` char(24) COLLATE latin1_spanish_ci DEFAULT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FechCaduca`
--

DROP TABLE IF EXISTS `FechCaduca`;
CREATE TABLE IF NOT EXISTS `FechCaduca` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `dias` int(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fechoria`
--

DROP TABLE IF EXISTS `Fechoria`;
CREATE TABLE IF NOT EXISTS `Fechoria` (
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `FECHA` date NOT NULL DEFAULT '0000-00-00',
  `ASUNTO` text COLLATE latin1_spanish_ci NOT NULL,
  `NOTAS` text COLLATE latin1_spanish_ci NOT NULL,
  `INFORMA` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
`id` int(11) NOT NULL,
  `grave` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `medida` varchar(148) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `expulsion` tinyint(2) NOT NULL DEFAULT '0',
  `inicio` date DEFAULT '0000-00-00',
  `fin` date DEFAULT '0000-00-00',
  `tutoria` text COLLATE latin1_spanish_ci,
  `expulsionaula` tinyint(1) DEFAULT NULL,
  `enviado` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '1',
  `recibido` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `aula_conv` tinyint(1) DEFAULT '0',
  `inicio_aula` date DEFAULT NULL,
  `fin_aula` date DEFAULT NULL,
  `horas` int(11) DEFAULT '123456',
  `confirmado` tinyint(1) DEFAULT NULL,
  `tareas` char(2) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `festivos`
--

DROP TABLE IF EXISTS `festivos`;
CREATE TABLE IF NOT EXISTS `festivos` (
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `nombre` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `docentes` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `ambito` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FTUTORES`
--

DROP TABLE IF EXISTS `FTUTORES`;
CREATE TABLE IF NOT EXISTS `FTUTORES` (
  `UNIDAD` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TUTOR` varchar(48) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `observaciones1` text COLLATE utf8_unicode_ci NOT NULL,
  `observaciones2` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

DROP TABLE IF EXISTS `grupos`;
CREATE TABLE IF NOT EXISTS `grupos` (
`id` int(4) NOT NULL,
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asignatura` int(6) NOT NULL DEFAULT '0',
  `curso` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `alumnos` varchar(124) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardias`
--

DROP TABLE IF EXISTS `guardias`;
CREATE TABLE IF NOT EXISTS `guardias` (
`id` int(11) NOT NULL,
  `profesor` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `profe_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dia` tinyint(1) NOT NULL DEFAULT '0',
  `hora` tinyint(1) NOT NULL DEFAULT '0',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_guardia` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hermanos`
--

DROP TABLE IF EXISTS `hermanos`;
CREATE TABLE IF NOT EXISTS `hermanos` (
  `telefono` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefonourgencia` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hermanos` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horw`
--

DROP TABLE IF EXISTS `horw`;
CREATE TABLE IF NOT EXISTS `horw` (
`id` int(11) NOT NULL,
  `dia` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hora` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_asig` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asig` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `c_asig` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `prof` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `no_prof` tinyint(4) DEFAULT NULL,
  `c_prof` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_aula` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `n_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_grupo` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horw_faltas`
--

DROP TABLE IF EXISTS `horw_faltas`;
CREATE TABLE IF NOT EXISTS `horw_faltas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dia` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hora` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_asig` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asig` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `c_asig` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `prof` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `no_prof` tinyint(4) DEFAULT NULL,
  `c_prof` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_aula` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `n_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_grupo` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horw_seg`
--

DROP TABLE IF EXISTS `horw_seg`;
CREATE TABLE IF NOT EXISTS `horw_seg` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dia` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hora` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_asig` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asig` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `c_asig` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `prof` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `no_prof` tinyint(4) DEFAULT NULL,
  `c_prof` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_aula` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `n_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_grupo` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horw_seg_faltas`
--

DROP TABLE IF EXISTS `horw_seg_faltas`;
CREATE TABLE IF NOT EXISTS `horw_seg_faltas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dia` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hora` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_asig` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asig` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `c_asig` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `prof` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `no_prof` tinyint(4) DEFAULT NULL,
  `c_prof` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_aula` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `n_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_grupo` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horw_var`
--

DROP TABLE IF EXISTS `horw_var`;
CREATE TABLE IF NOT EXISTS `horw_var` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dia` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hora` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_asig` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asig` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `c_asig` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `prof` varchar(50) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `no_prof` tinyint(4) DEFAULT NULL,
  `c_prof` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_aula` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `n_aula` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `a_grupo` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infotut_alumno`
--

DROP TABLE IF EXISTS `infotut_alumno`;
CREATE TABLE IF NOT EXISTS `infotut_alumno` (
`ID` smallint(5) unsigned zerofill NOT NULL,
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `APELLIDOS` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NOMBRE` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `UNIDAD` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `F_ENTREV` date NOT NULL DEFAULT '0000-00-00',
  `TUTOR` varchar(40) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `FECHA_REGISTRO` date NOT NULL DEFAULT '0000-00-00',
  `valido` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=551 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infotut_profesor`
--

DROP TABLE IF EXISTS `infotut_profesor`;
CREATE TABLE IF NOT EXISTS `infotut_profesor` (
`id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL DEFAULT '0',
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asignatura` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `informe` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3223 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervenciones_profesores`
--

DROP TABLE IF EXISTS `intervenciones_profesores`;
CREATE TABLE IF NOT EXISTS `intervenciones_profesores` (
`id` int(11) NOT NULL,
  `idea` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(60) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `observaciones` text COLLATE latin1_spanish_ci NOT NULL,
  `causa` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `accion` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

DROP TABLE IF EXISTS `inventario`;
CREATE TABLE IF NOT EXISTS `inventario` (
`id` int(11) NOT NULL,
  `clase` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `lugar` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `marca` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `modelo` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `serie` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `unidades` int(11) NOT NULL DEFAULT '0',
  `fecha` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `ahora` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `departamento` varchar(80) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_clases`
--

DROP TABLE IF EXISTS `inventario_clases`;
CREATE TABLE IF NOT EXISTS `inventario_clases` (
`id` int(11) NOT NULL,
  `familia` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `clase` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_lugares`
--

DROP TABLE IF EXISTS `inventario_lugares`;
CREATE TABLE IF NOT EXISTS `inventario_lugares` (
`id` int(11) NOT NULL,
  `lugar` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listafechorias`
--

DROP TABLE IF EXISTS `listafechorias`;
CREATE TABLE IF NOT EXISTS `listafechorias` (
`ID` int(4) NOT NULL,
  `fechoria` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `medidas` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `medidas2` mediumtext COLLATE latin1_spanish_ci,
  `tipo` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE IF NOT EXISTS `materias` (
  `CODIGO` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NOMBRE` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ABREV` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CURSO` varchar(128) COLLATE latin1_spanish_ci DEFAULT NULL,
  `GRUPO` varchar(6) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias_seneca`
--

DROP TABLE IF EXISTS `materias_seneca`;
CREATE TABLE IF NOT EXISTS `materias_seneca` (
  `idmateria` int(12) unsigned NOT NULL,
  `nommateria` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `abrevmateria` varchar(8) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idcurso` int(12) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
CREATE TABLE IF NOT EXISTS `matriculas` (
`id` int(11) NOT NULL,
  `claveal` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `apellidos` varchar(36) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nacido` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `provincia` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nacimiento` date NOT NULL DEFAULT '0000-00-00',
  `domicilio` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `localidad` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dni` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `padre` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dnitutor` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `madre` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dnitutor2` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `telefono1` int(10) NOT NULL DEFAULT '0',
  `telefono2` int(10) NOT NULL DEFAULT '0',
  `colegio` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `otrocolegio` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `letra_grupo` char(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `correo` varchar(36) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idioma` varchar(6) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `religion` varchar(22) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `optativa1` tinyint(1) NOT NULL DEFAULT '0',
  `optativa2` tinyint(1) NOT NULL DEFAULT '0',
  `optativa3` tinyint(1) NOT NULL DEFAULT '0',
  `optativa4` tinyint(1) NOT NULL DEFAULT '0',
  `act1` tinyint(1) DEFAULT NULL,
  `act2` tinyint(1) DEFAULT NULL,
  `act3` tinyint(1) DEFAULT NULL,
  `act4` tinyint(1) DEFAULT NULL,
  `optativa21` tinyint(1) DEFAULT NULL,
  `optativa22` tinyint(1) DEFAULT NULL,
  `optativa23` tinyint(1) DEFAULT NULL,
  `optativa24` tinyint(1) DEFAULT NULL,
  `act21` tinyint(1) DEFAULT NULL,
  `act22` tinyint(1) DEFAULT NULL,
  `act23` tinyint(1) DEFAULT NULL,
  `act24` tinyint(1) DEFAULT NULL,
  `observaciones` text COLLATE latin1_spanish_ci,
  `exencion` tinyint(1) DEFAULT NULL,
  `bilinguismo` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `curso` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promociona` tinyint(1) DEFAULT NULL,
  `transporte` tinyint(1) DEFAULT NULL,
  `ruta_este` varchar(42) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ruta_oeste` varchar(42) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` varchar(6) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hermanos` tinyint(2) DEFAULT NULL,
  `nacionalidad` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `itinerario` tinyint(1) DEFAULT NULL,
  `matematicas4` char(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `optativa5` tinyint(1) DEFAULT NULL,
  `optativa6` tinyint(1) DEFAULT NULL,
  `optativa7` tinyint(1) DEFAULT NULL,
  `diversificacion` tinyint(1) DEFAULT NULL,
  `optativa25` tinyint(1) DEFAULT NULL,
  `optativa26` tinyint(1) DEFAULT NULL,
  `optativa27` tinyint(1) DEFAULT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `grupo_actual` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `revisado` tinyint(1) DEFAULT NULL,
  `enfermedad` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `otraenfermedad` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `foto` tinyint(1) NOT NULL,
  `divorcio` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `matematicas3` char(1) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas_bach`
--

DROP TABLE IF EXISTS `matriculas_bach`;
CREATE TABLE IF NOT EXISTS `matriculas_bach` (
`id` int(11) NOT NULL,
  `claveal` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `apellidos` varchar(36) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nacido` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `provincia` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nacimiento` date NOT NULL DEFAULT '0000-00-00',
  `domicilio` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `localidad` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dni` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `padre` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dnitutor` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `madre` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dnitutor2` varchar(13) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `telefono1` int(10) NOT NULL DEFAULT '0',
  `telefono2` int(10) NOT NULL DEFAULT '0',
  `colegio` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `otrocolegio` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `letra_grupo` char(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `correo` varchar(36) COLLATE latin1_spanish_ci DEFAULT NULL,
  `idioma1` varchar(7) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `idioma2` varchar(7) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `religion` varchar(22) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `observaciones` text COLLATE latin1_spanish_ci,
  `curso` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promociona` tinyint(1) DEFAULT NULL,
  `transporte` tinyint(1) DEFAULT NULL,
  `ruta_este` varchar(42) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ruta_oeste` varchar(42) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` varchar(6) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `hermanos` tinyint(2) DEFAULT NULL,
  `nacionalidad` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `confirmado` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `grupo_actual` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `revisado` tinyint(1) DEFAULT NULL,
  `itinerario1` tinyint(1) DEFAULT NULL,
  `itinerario2` tinyint(1) DEFAULT NULL,
  `optativa1` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `optativa2` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `optativa2b1` tinyint(1) DEFAULT NULL,
  `optativa2b2` tinyint(1) DEFAULT NULL,
  `optativa2b3` tinyint(1) DEFAULT NULL,
  `optativa2b4` tinyint(1) DEFAULT NULL,
  `optativa2b5` tinyint(1) DEFAULT NULL,
  `optativa2b6` tinyint(1) DEFAULT NULL,
  `optativa2b7` tinyint(1) DEFAULT NULL,
  `optativa2b8` tinyint(1) DEFAULT NULL,
  `optativa2b9` tinyint(1) DEFAULT NULL,
  `optativa2b10` tinyint(1) DEFAULT NULL,
  `repite` tinyint(1) NOT NULL DEFAULT '0',
  `enfermedad` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `otraenfermedad` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `foto` tinyint(1) NOT NULL,
  `divorcio` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `bilinguismo` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `religion1b` varchar(64) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mem_dep`
--

DROP TABLE IF EXISTS `mem_dep`;
CREATE TABLE IF NOT EXISTS `mem_dep` (
  `departamento` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `jefe` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `p1` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p2` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p3` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p4` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p5` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p6` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p7` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p8` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p9` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p10` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p11` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p12` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p13` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p14` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p15` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p16` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p17` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p18` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p19` longtext COLLATE latin1_spanish_ci NOT NULL,
  `p20` longtext COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE IF NOT EXISTS `mensajes` (
`id` int(10) unsigned NOT NULL,
  `ahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dni` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `claveal` int(12) NOT NULL DEFAULT '0',
  `asunto` text COLLATE latin1_spanish_ci NOT NULL,
  `texto` text COLLATE latin1_spanish_ci NOT NULL,
  `ip` varchar(15) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `recibidotutor` tinyint(1) NOT NULL DEFAULT '0',
  `recibidopadre` tinyint(1) NOT NULL DEFAULT '0',
  `correo` varchar(72) COLLATE latin1_spanish_ci DEFAULT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `archivo` varchar(254) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mens_profes`
--

DROP TABLE IF EXISTS `mens_profes`;
CREATE TABLE IF NOT EXISTS `mens_profes` (
`id_profe` int(10) unsigned NOT NULL,
  `id_texto` int(11) NOT NULL DEFAULT '0',
  `profesor` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `recibidoprofe` tinyint(1) NOT NULL DEFAULT '0',
  `recibidojefe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8355 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mens_profes_backup`
--

DROP TABLE IF EXISTS `mens_profes_backup`;
CREATE TABLE IF NOT EXISTS `mens_profes_backup` (
  `id_profe` int(10) unsigned NOT NULL DEFAULT '0',
  `id_texto` int(11) NOT NULL DEFAULT '0',
  `profesor` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `recibidoprofe` tinyint(1) NOT NULL DEFAULT '0',
  `recibidojefe` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mens_texto`
--

DROP TABLE IF EXISTS `mens_texto`;
CREATE TABLE IF NOT EXISTS `mens_texto` (
`id` int(10) unsigned NOT NULL,
  `ahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `origen` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `asunto` text COLLATE latin1_spanish_ci NOT NULL,
  `texto` longtext COLLATE latin1_spanish_ci NOT NULL,
  `destino` text COLLATE latin1_spanish_ci NOT NULL,
  `oculto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=676 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mens_texto_backup`
--

DROP TABLE IF EXISTS `mens_texto_backup`;
CREATE TABLE IF NOT EXISTS `mens_texto_backup` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `ahora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `origen` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `asunto` text COLLATE latin1_spanish_ci NOT NULL,
  `texto` longtext COLLATE latin1_spanish_ci NOT NULL,
  `destino` text COLLATE latin1_spanish_ci NOT NULL,
  `oculto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `notas1` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `notas2` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `notas3` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `notas4` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_cuaderno`
--

DROP TABLE IF EXISTS `notas_cuaderno`;
CREATE TABLE IF NOT EXISTS `notas_cuaderno` (
`id` int(11) NOT NULL,
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `nombre` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `texto` text COLLATE latin1_spanish_ci NOT NULL,
  `texto_pond` text COLLATE latin1_spanish_ci NOT NULL,
  `asignatura` int(6) NOT NULL DEFAULT '0',
  `curso` varchar(36) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `oculto` tinyint(1) NOT NULL DEFAULT '0',
  `visible_nota` int(1) unsigned NOT NULL DEFAULT '0',
  `orden` tinyint(2) NOT NULL DEFAULT '0',
  `Tipo` varchar(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `color` varchar(7) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE IF NOT EXISTS `noticias` (
`id` int(11) NOT NULL,
  `slug` text COLLATE latin1_spanish_ci NOT NULL,
  `content` longtext COLLATE latin1_spanish_ci,
  `contact` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clase` varchar(48) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `pagina` tinyint(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `no_docencia`
--

DROP TABLE IF EXISTS `no_docencia`;
CREATE TABLE IF NOT EXISTS `no_docencia` (
  `idea` varchar(16) COLLATE latin1_spanish_ci NOT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='Almacena información sobre los alumnos que reciben docencia por los profesores.';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevas`
--

DROP TABLE IF EXISTS `nuevas`;
CREATE TABLE IF NOT EXISTS `nuevas` (
`id` smallint(5) unsigned NOT NULL,
  `abrev` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `texto` varchar(128) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocultas`
--

DROP TABLE IF EXISTS `ocultas`;
CREATE TABLE IF NOT EXISTS `ocultas` (
`id` smallint(5) unsigned NOT NULL,
  `aula` varchar(48) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partestic`
--

DROP TABLE IF EXISTS `partestic`;
CREATE TABLE IF NOT EXISTS `partestic` (
`parte` smallint(5) unsigned NOT NULL,
  `unidad` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aula` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `carro` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nserie` varchar(15) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `hora` char(2) COLLATE latin1_spanish_ci DEFAULT '',
  `alumno` varchar(35) COLLATE latin1_spanish_ci DEFAULT NULL,
  `profesor` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `responsable` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `estado` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'activo',
  `nincidencia` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pendientes`
--

DROP TABLE IF EXISTS `pendientes`;
CREATE TABLE IF NOT EXISTS `pendientes` (
`id` int(11) NOT NULL,
  `claveal` varchar(9) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `codigo` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `grupo` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=403 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `nivel` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `materia` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `grupo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `profesor` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores_seg`
--

DROP TABLE IF EXISTS `profesores_seg`;
CREATE TABLE IF NOT EXISTS `profesores_seg` (
  `nivel` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `materia` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `grupo` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `profesor` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores_seneca`
--

DROP TABLE IF EXISTS `profesores_seneca`;
CREATE TABLE IF NOT EXISTS `profesores_seneca` (
  `idprofesor` int(9) unsigned NOT NULL,
  `ape1profesor` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `ape2profesor` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `nomprofesor` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `deptoprofesor` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `correoprofesor` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefonoprofesor` char(9) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos_alumnos`
--

DROP TABLE IF EXISTS `puestos_alumnos`;
CREATE TABLE IF NOT EXISTS `puestos_alumnos` (
  `unidad` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `puestos` text COLLATE latin1_spanish_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_intranet`
--

DROP TABLE IF EXISTS `reg_intranet`;
CREATE TABLE IF NOT EXISTS `reg_intranet` (
`id` int(11) NOT NULL,
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=6109 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_paginas`
--

DROP TABLE IF EXISTS `reg_paginas`;
CREATE TABLE IF NOT EXISTS `reg_paginas` (
`id` int(11) NOT NULL,
  `id_reg` int(11) NOT NULL DEFAULT '0',
  `pagina` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=65533 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_principal`
--

DROP TABLE IF EXISTS `reg_principal`;
CREATE TABLE IF NOT EXISTS `reg_principal` (
`id` int(11) NOT NULL,
  `pagina` text COLLATE latin1_spanish_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `dni` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
`id` smallint(5) unsigned NOT NULL,
  `eventdate` date DEFAULT NULL,
  `dia` tinyint(1) NOT NULL DEFAULT '0',
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `event1` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `event2` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `event3` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `event4` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `event5` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `event6` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `event7` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `servicio` varchar(32) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_elementos`
--

DROP TABLE IF EXISTS `reservas_elementos`;
CREATE TABLE IF NOT EXISTS `reservas_elementos` (
`id` int(11) NOT NULL,
  `elemento` varchar(128) COLLATE latin1_spanish_ci NOT NULL,
  `id_tipo` tinyint(2) NOT NULL,
  `oculto` tinyint(1) NOT NULL DEFAULT '0',
  `observaciones` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_hor`
--

DROP TABLE IF EXISTS `reservas_hor`;
CREATE TABLE IF NOT EXISTS `reservas_hor` (
  `dia` tinyint(1) NOT NULL DEFAULT '0',
  `hora1` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora2` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora3` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora4` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora5` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora6` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `hora7` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `servicio` varchar(32) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_tipos`
--

DROP TABLE IF EXISTS `reservas_tipos`;
CREATE TABLE IF NOT EXISTS `reservas_tipos` (
`id` int(11) NOT NULL,
  `tipo` varchar(254) COLLATE latin1_spanish_ci NOT NULL,
  `observaciones` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_departamento`
--

DROP TABLE IF EXISTS `r_departamento`;
CREATE TABLE IF NOT EXISTS `r_departamento` (
`id` smallint(5) unsigned NOT NULL,
  `contenido` longtext NOT NULL,
  `jefedep` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `departamento` varchar(80) DEFAULT NULL,
  `fecha` date NOT NULL,
  `impreso` tinyint(1) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_departamento_backup`
--

DROP TABLE IF EXISTS `r_departamento_backup`;
CREATE TABLE IF NOT EXISTS `r_departamento_backup` (
`id` smallint(5) unsigned NOT NULL,
  `contenido` longtext NOT NULL,
  `jefedep` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `departamento` varchar(80) DEFAULT NULL,
  `fecha` date NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistcal`
--

DROP TABLE IF EXISTS `sistcal`;
CREATE TABLE IF NOT EXISTS `sistcal` (
`id` int(11) NOT NULL,
  `sistcal` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `codigo` varchar(5) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nota` varchar(72) COLLATE latin1_spanish_ci DEFAULT NULL,
  `abrev` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sms`
--

DROP TABLE IF EXISTS `sms`;
CREATE TABLE IF NOT EXISTS `sms` (
`id` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `telefono` text COLLATE latin1_spanish_ci NOT NULL,
  `mensaje` varchar(160) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `profesor` varchar(48) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas_alumnos`
--

DROP TABLE IF EXISTS `tareas_alumnos`;
CREATE TABLE IF NOT EXISTS `tareas_alumnos` (
`ID` smallint(5) unsigned zerofill NOT NULL,
  `CLAVEAL` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `APELLIDOS` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `NOMBRE` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `FECHA` date NOT NULL DEFAULT '0000-00-00',
  `FIN` date NOT NULL DEFAULT '0000-00-00',
  `DURACION` smallint(2) NOT NULL DEFAULT '3',
  `PROFESOR` varchar(40) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas_profesor`
--

DROP TABLE IF EXISTS `tareas_profesor`;
CREATE TABLE IF NOT EXISTS `tareas_profesor` (
`id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL DEFAULT '0',
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `asignatura` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `tarea` text COLLATE latin1_spanish_ci NOT NULL,
  `confirmado` char(2) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

DROP TABLE IF EXISTS `temas`;
CREATE TABLE IF NOT EXISTS `temas` (
  `idea` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `tema` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `fondo` varchar(16) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Textos`
--

DROP TABLE IF EXISTS `Textos`;
CREATE TABLE IF NOT EXISTS `Textos` (
`id` int(10) unsigned NOT NULL,
  `Autor` varchar(128) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Titulo` varchar(128) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Editorial` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Nivel` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Grupo` text COLLATE latin1_spanish_ci,
  `Notas` text COLLATE latin1_spanish_ci,
  `Departamento` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Asignatura` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Obligatorio` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `Clase` varchar(8) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Texto',
  `isbn` varchar(18) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos_alumnos`
--

DROP TABLE IF EXISTS `textos_alumnos`;
CREATE TABLE IF NOT EXISTS `textos_alumnos` (
`id` int(11) NOT NULL,
  `claveal` int(12) NOT NULL DEFAULT '0',
  `materia` int(5) NOT NULL DEFAULT '0',
  `estado` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `devuelto` char(1) COLLATE latin1_spanish_ci DEFAULT '0',
  `fecha` datetime DEFAULT '0000-00-00 00:00:00',
  `curso` varchar(7) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos_gratis`
--

DROP TABLE IF EXISTS `textos_gratis`;
CREATE TABLE IF NOT EXISTS `textos_gratis` (
`id` int(11) NOT NULL,
  `materia` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `isbn` int(10) NOT NULL DEFAULT '0',
  `ean` int(14) NOT NULL DEFAULT '0',
  `editorial` varchar(32) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `titulo` varchar(96) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `ano` year(4) NOT NULL DEFAULT '0000',
  `caducado` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `importe` int(11) NOT NULL DEFAULT '0',
  `utilizado` char(2) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nivel` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramos`
--

DROP TABLE IF EXISTS `tramos`;
CREATE TABLE IF NOT EXISTS `tramos` (
  `tramo` int(6) unsigned NOT NULL,
  `hora` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `horini` int(4) unsigned NOT NULL,
  `horfin` int(4) unsigned NOT NULL,
  `hora_inicio` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `hora_fin` varchar(5) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

DROP TABLE IF EXISTS `tutoria`;
CREATE TABLE IF NOT EXISTS `tutoria` (
`id` int(11) NOT NULL,
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `apellidos` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(24) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `tutor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `observaciones` text COLLATE latin1_spanish_ci NOT NULL,
  `causa` varchar(42) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `accion` varchar(200) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `orienta` tinyint(1) NOT NULL DEFAULT '0',
  `prohibido` tinyint(1) NOT NULL DEFAULT '0',
  `jefatura` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

DROP TABLE IF EXISTS `unidades`;
CREATE TABLE IF NOT EXISTS `unidades` (
  `idunidad` int(12) unsigned NOT NULL,
  `nomunidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `idcurso` int(12) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `profesor` varchar(48) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioalumno`
--

DROP TABLE IF EXISTS `usuarioalumno`;
CREATE TABLE IF NOT EXISTS `usuarioalumno` (
  `usuario` varchar(18) COLLATE latin1_spanish_ci DEFAULT NULL,
  `pass` varchar(16) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(48) COLLATE latin1_spanish_ci DEFAULT NULL,
  `perfil` char(1) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `unidad` varchar(64) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `claveal` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioprofesor`
--

DROP TABLE IF EXISTS `usuarioprofesor`;
CREATE TABLE IF NOT EXISTS `usuarioprofesor` (
  `usuario` varchar(16) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(64) COLLATE latin1_spanish_ci DEFAULT NULL,
  `perfil` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `absentismo`
--
ALTER TABLE `absentismo`
 ADD PRIMARY KEY (`id`), ADD KEY `claveal` (`claveal`);

--
-- Indices de la tabla `actividadalumno`
--
ALTER TABLE `actividadalumno`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actividades_seneca`
--
ALTER TABLE `actividades_seneca`
 ADD PRIMARY KEY (`idactividad`);

--
-- Indices de la tabla `actualizacion`
--
ALTER TABLE `actualizacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alma`
--
ALTER TABLE `alma`
 ADD PRIMARY KEY (`CLAVEAL`), ADD KEY `CLAVEAL1` (`CLAVEAL1`), ADD KEY `NOMBRE` (`NOMBRE`), ADD KEY `APELLIDOS` (`APELLIDOS`);

--
-- Indices de la tabla `alma_primera`
--
ALTER TABLE `alma_primera`
 ADD KEY `CLAVEAL` (`CLAVEAL`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
 ADD KEY `CODIGO` (`CODIGO`), ADD KEY `ABREV` (`ABREV`);

--
-- Indices de la tabla `ausencias`
--
ALTER TABLE `ausencias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `biblioteca_lectores`
--
ALTER TABLE `biblioteca_lectores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendario_categorias`
--
ALTER TABLE `calendario_categorias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
 ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
 ADD KEY `claveal` (`dni`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convivencia`
--
ALTER TABLE `convivencia`
 ADD PRIMARY KEY (`id`), ADD KEY `claveal` (`claveal`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
 ADD PRIMARY KEY (`idcurso`);

--
-- Indices de la tabla `c_profes`
--
ALTER TABLE `c_profes`
 ADD PRIMARY KEY (`id`), ADD KEY `PROFESOR` (`PROFESOR`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
 ADD PRIMARY KEY (`idea`);

--
-- Indices de la tabla `departamentos_seneca`
--
ALTER TABLE `departamentos_seneca`
 ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
 ADD PRIMARY KEY (`iddependencia`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
 ADD PRIMARY KEY (`unidad`,`asignatura`,`evaluacion`);

--
-- Indices de la tabla `evaluaciones_actas`
--
ALTER TABLE `evaluaciones_actas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `FALTAS`
--
ALTER TABLE `FALTAS`
 ADD PRIMARY KEY (`id`), ADD KEY `unidad` (`UNIDAD`), ADD KEY `NC` (`NC`), ADD KEY `FECHA` (`FECHA`), ADD KEY `FALTA` (`FALTA`);

--
-- Indices de la tabla `FALUMNOS`
--
ALTER TABLE `FALUMNOS`
 ADD KEY `CLAVEAL` (`CLAVEAL`), ADD KEY `NC` (`NC`);

--
-- Indices de la tabla `FALUMNOS_primero`
--
ALTER TABLE `FALUMNOS_primero`
 ADD KEY `claveal` (`claveal`);

--
-- Indices de la tabla `Fechoria`
--
ALTER TABLE `Fechoria`
 ADD PRIMARY KEY (`id`), ADD KEY `CLAVEAL` (`CLAVEAL`), ADD KEY `FECHA` (`FECHA`);

--
-- Indices de la tabla `festivos`
--
ALTER TABLE `festivos`
 ADD PRIMARY KEY (`fecha`), ADD KEY `fecha` (`fecha`);

--
-- Indices de la tabla `FTUTORES`
--
ALTER TABLE `FTUTORES`
 ADD PRIMARY KEY (`UNIDAD`), ADD KEY `TUTOR` (`TUTOR`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
 ADD PRIMARY KEY (`id`), ADD KEY `profesor` (`profesor`);

--
-- Indices de la tabla `guardias`
--
ALTER TABLE `guardias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hermanos`
--
ALTER TABLE `hermanos`
 ADD KEY `telefono` (`telefono`), ADD KEY `telefonourgencia` (`telefonourgencia`);

--
-- Indices de la tabla `horw`
--
ALTER TABLE `horw`
 ADD PRIMARY KEY (`id`), ADD KEY `prof` (`prof`), ADD KEY `c_asig` (`c_asig`);

--
-- Indices de la tabla `horw_faltas`
--
ALTER TABLE `horw_faltas`
 ADD KEY `prof` (`prof`), ADD KEY `c_asig` (`c_asig`);

--
-- Indices de la tabla `infotut_alumno`
--
ALTER TABLE `infotut_alumno`
 ADD PRIMARY KEY (`ID`), ADD KEY `CLAVEAL` (`CLAVEAL`), ADD KEY `APELLIDOS` (`APELLIDOS`), ADD KEY `NOMBRE` (`NOMBRE`), ADD KEY `UNIDAD` (`UNIDAD`), ADD KEY `F_ENTREV` (`F_ENTREV`);

--
-- Indices de la tabla `infotut_profesor`
--
ALTER TABLE `infotut_profesor`
 ADD PRIMARY KEY (`id`), ADD KEY `id_alumno` (`id_alumno`,`profesor`);

--
-- Indices de la tabla `intervenciones_profesores`
--
ALTER TABLE `intervenciones_profesores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_clases`
--
ALTER TABLE `inventario_clases`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario_lugares`
--
ALTER TABLE `inventario_lugares`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listafechorias`
--
ALTER TABLE `listafechorias`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
 ADD KEY `CODIGO` (`CODIGO`);

--
-- Indices de la tabla `materias_seneca`
--
ALTER TABLE `materias_seneca`
 ADD PRIMARY KEY (`idmateria`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matriculas_bach`
--
ALTER TABLE `matriculas_bach`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mem_dep`
--
ALTER TABLE `mem_dep`
 ADD PRIMARY KEY (`departamento`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mens_profes`
--
ALTER TABLE `mens_profes`
 ADD PRIMARY KEY (`id_profe`), ADD KEY `profesor` (`profesor`);

--
-- Indices de la tabla `mens_texto`
--
ALTER TABLE `mens_texto`
 ADD PRIMARY KEY (`id`), ADD KEY `profesor` (`origen`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
 ADD PRIMARY KEY (`claveal`);

--
-- Indices de la tabla `notas_cuaderno`
--
ALTER TABLE `notas_cuaderno`
 ADD PRIMARY KEY (`id`), ADD KEY `profesor` (`profesor`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `no_docencia`
--
ALTER TABLE `no_docencia`
 ADD PRIMARY KEY (`idea`,`claveal`);

--
-- Indices de la tabla `nuevas`
--
ALTER TABLE `nuevas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocultas`
--
ALTER TABLE `ocultas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partestic`
--
ALTER TABLE `partestic`
 ADD PRIMARY KEY (`parte`);

--
-- Indices de la tabla `pendientes`
--
ALTER TABLE `pendientes`
 ADD PRIMARY KEY (`id`), ADD KEY `claveal` (`claveal`), ADD KEY `codigo` (`codigo`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
 ADD KEY `profesor` (`profesor`);

--
-- Indices de la tabla `profesores_seneca`
--
ALTER TABLE `profesores_seneca`
 ADD PRIMARY KEY (`idprofesor`);

--
-- Indices de la tabla `puestos_alumnos`
--
ALTER TABLE `puestos_alumnos`
 ADD PRIMARY KEY (`unidad`);

--
-- Indices de la tabla `reg_intranet`
--
ALTER TABLE `reg_intranet`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reg_paginas`
--
ALTER TABLE `reg_paginas`
 ADD PRIMARY KEY (`id`), ADD KEY `id_reg` (`id_reg`);

--
-- Indices de la tabla `reg_principal`
--
ALTER TABLE `reg_principal`
 ADD PRIMARY KEY (`id`), ADD KEY `ip` (`ip`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `reservas_elementos`
--
ALTER TABLE `reservas_elementos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas_hor`
--
ALTER TABLE `reservas_hor`
 ADD PRIMARY KEY (`dia`,`servicio`), ADD KEY `dia` (`dia`);

--
-- Indices de la tabla `reservas_tipos`
--
ALTER TABLE `reservas_tipos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `r_departamento`
--
ALTER TABLE `r_departamento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `r_departamento_backup`
--
ALTER TABLE `r_departamento_backup`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistcal`
--
ALTER TABLE `sistcal`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sms`
--
ALTER TABLE `sms`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tareas_alumnos`
--
ALTER TABLE `tareas_alumnos`
 ADD PRIMARY KEY (`ID`), ADD KEY `CLAVEAL` (`CLAVEAL`), ADD KEY `APELLIDOS` (`APELLIDOS`), ADD KEY `NOMBRE` (`NOMBRE`);

--
-- Indices de la tabla `tareas_profesor`
--
ALTER TABLE `tareas_profesor`
 ADD PRIMARY KEY (`id`), ADD KEY `id_alumno` (`id_alumno`,`profesor`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
 ADD UNIQUE KEY `idea` (`idea`);

--
-- Indices de la tabla `Textos`
--
ALTER TABLE `Textos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `textos_alumnos`
--
ALTER TABLE `textos_alumnos`
 ADD PRIMARY KEY (`id`), ADD KEY `claveal` (`claveal`);

--
-- Indices de la tabla `textos_gratis`
--
ALTER TABLE `textos_gratis`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramos`
--
ALTER TABLE `tramos`
 ADD PRIMARY KEY (`tramo`);

--
-- Indices de la tabla `tutoria`
--
ALTER TABLE `tutoria`
 ADD PRIMARY KEY (`id`), ADD KEY `claveal` (`claveal`), ADD KEY `tutor` (`tutor`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
 ADD PRIMARY KEY (`idunidad`,`idcurso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`profesor`);

--
-- Indices de la tabla `usuarioalumno`
--
ALTER TABLE `usuarioalumno`
 ADD KEY `claveal` (`claveal`);

--
-- Indices de la tabla `usuarioprofesor`
--
ALTER TABLE `usuarioprofesor`
 ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `absentismo`
--
ALTER TABLE `absentismo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `actividadalumno`
--
ALTER TABLE `actividadalumno`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `actualizacion`
--
ALTER TABLE `actualizacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ausencias`
--
ALTER TABLE `ausencias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `biblioteca_lectores`
--
ALTER TABLE `biblioteca_lectores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `calendario_categorias`
--
ALTER TABLE `calendario_categorias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `convivencia`
--
ALTER TABLE `convivencia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_profes`
--
ALTER TABLE `c_profes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `departamentos_seneca`
--
ALTER TABLE `departamentos_seneca`
MODIFY `iddepartamento` int(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `evaluaciones_actas`
--
ALTER TABLE `evaluaciones_actas`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `FALTAS`
--
ALTER TABLE `FALTAS`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Fechoria`
--
ALTER TABLE `Fechoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `guardias`
--
ALTER TABLE `guardias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horw`
--
ALTER TABLE `horw`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `infotut_alumno`
--
ALTER TABLE `infotut_alumno`
MODIFY `ID` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=551;
--
-- AUTO_INCREMENT de la tabla `infotut_profesor`
--
ALTER TABLE `infotut_profesor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3223;
--
-- AUTO_INCREMENT de la tabla `intervenciones_profesores`
--
ALTER TABLE `intervenciones_profesores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario_clases`
--
ALTER TABLE `inventario_clases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `inventario_lugares`
--
ALTER TABLE `inventario_lugares`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `listafechorias`
--
ALTER TABLE `listafechorias`
MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `matriculas_bach`
--
ALTER TABLE `matriculas_bach`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mens_profes`
--
ALTER TABLE `mens_profes`
MODIFY `id_profe` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8355;
--
-- AUTO_INCREMENT de la tabla `mens_texto`
--
ALTER TABLE `mens_texto`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=676;
--
-- AUTO_INCREMENT de la tabla `notas_cuaderno`
--
ALTER TABLE `notas_cuaderno`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `nuevas`
--
ALTER TABLE `nuevas`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ocultas`
--
ALTER TABLE `ocultas`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `partestic`
--
ALTER TABLE `partestic`
MODIFY `parte` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT de la tabla `pendientes`
--
ALTER TABLE `pendientes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT de la tabla `reg_intranet`
--
ALTER TABLE `reg_intranet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6109;
--
-- AUTO_INCREMENT de la tabla `reg_paginas`
--
ALTER TABLE `reg_paginas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65533;
--
-- AUTO_INCREMENT de la tabla `reg_principal`
--
ALTER TABLE `reg_principal`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT de la tabla `reservas_elementos`
--
ALTER TABLE `reservas_elementos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `reservas_tipos`
--
ALTER TABLE `reservas_tipos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `r_departamento`
--
ALTER TABLE `r_departamento`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `r_departamento_backup`
--
ALTER TABLE `r_departamento_backup`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `sistcal`
--
ALTER TABLE `sistcal`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sms`
--
ALTER TABLE `sms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tareas_alumnos`
--
ALTER TABLE `tareas_alumnos`
MODIFY `ID` smallint(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tareas_profesor`
--
ALTER TABLE `tareas_profesor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `Textos`
--
ALTER TABLE `Textos`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `textos_alumnos`
--
ALTER TABLE `textos_alumnos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `textos_gratis`
--
ALTER TABLE `textos_gratis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tutoria`
--
ALTER TABLE `tutoria`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
