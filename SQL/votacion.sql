-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2023 a las 08:46:31
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Jose Torres Silva'),
(2, 'Javiera Lopez Valdivia'),
(3, 'Samuel Guzman Prada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `codigoInterno` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nombre` varchar(255) DEFAULT NULL,
  `codigo` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`codigoInterno`, `nombre`, `codigo`) VALUES
(346, 'ALTO HOSPICIO', 1),
(296, 'CAMINA', 1),
(297, 'COLCHANE', 1),
(3, 'HUARA', 1),
(2, 'IQUIQUE', 1),
(4, 'PICA', 1),
(5, 'POZO ALMONTE', 1),
(7, 'ANTOFAGASTA', 2),
(10, 'CALAMA', 2),
(298, 'MARIA ELENA', 2),
(8, 'MEJILLONES', 2),
(300, 'OLLAGUE', 2),
(301, 'SAN PEDRO DE ATACAMA', 2),
(299, 'SIERRA GORDA', 2),
(9, 'TALTAL', 2),
(6, 'TOCOPILLA', 2),
(302, 'ALTO DEL CARMEN', 3),
(14, 'CALDERA', 3),
(11, 'CHAÃ‘ARAL', 3),
(13, 'COPIAPO', 3),
(12, 'DIEGO DE ALMAGRO', 3),
(17, 'FREIRINA', 3),
(18, 'HUASCO', 3),
(15, 'TIERRA AMARILLA', 3),
(16, 'VALLENAR', 3),
(22, 'ANDACOLLO', 4),
(31, 'CANELA', 4),
(29, 'COMBARBALA', 4),
(21, 'COQUIMBO', 4),
(30, 'ILLAPEL', 4),
(20, 'LA HIGUERA', 4),
(19, 'LA SERENA', 4),
(33, 'LOS VILOS', 4),
(26, 'MONTE PATRIA', 4),
(25, 'OVALLE', 4),
(24, 'PAIHUANO', 4),
(27, 'PUNITAQUI', 4),
(28, 'RIO HURTADO', 4),
(32, 'SALAMANCA', 4),
(23, 'VICUÑA', 4),
(44, 'ALGARROBO', 5),
(56, 'CABILDO', 5),
(67, 'CALLE LARGA', 5),
(46, 'CARTAGENA', 5),
(40, 'CASABLANCA', 5),
(63, 'CATEMU', 5),
(340, 'CONCON', 5),
(45, 'EL QUISCO', 5),
(47, 'EL TABO', 5),
(51, 'HIJUELAS', 5),
(41, 'ISLA DE PASCUA', 5),
(321, 'JUAN FERNANDEZ', 5),
(50, 'LA CALERA', 5),
(49, 'LA CRUZ', 5),
(59, 'LA LIGUA', 5),
(53, 'LIMACHE', 5),
(65, 'LLAY LLAY', 5),
(66, 'LOS ANDES', 5),
(52, 'NOGALES', 5),
(54, 'OLMUE', 5),
(62, 'PANQUEHUE', 5),
(57, 'PAPUDO', 5),
(55, 'PETORCA', 5),
(36, 'PUCHUNCAVI', 5),
(61, 'PUTAENDO', 5),
(48, 'QUILLOTA', 5),
(38, 'QUILPUE', 5),
(35, 'QUINTERO', 5),
(68, 'RINCONADA', 5),
(42, 'SAN ANTONIO', 5),
(69, 'SAN ESTEBAN', 5),
(60, 'SAN FELIPE', 5),
(64, 'SANTA MARIA', 5),
(43, 'SANTO DOMINGO', 5),
(34, 'VALPARAISO', 5),
(39, 'VILLA ALEMANA', 5),
(37, 'VIÑA DEL MAR', 5),
(58, 'ZAPALLAR', 5),
(132, 'CHEPICA', 6),
(125, 'CHIMBARONGO', 6),
(110, 'CODEGUA', 6),
(114, 'COINCO', 6),
(113, 'COLTAUCO', 6),
(112, 'DOÑIHUE', 6),
(107, 'GRANEROS', 6),
(139, 'LA ESTRELLA', 6),
(116, 'LAS CABRAS', 6),
(136, 'LITUECHE', 6),
(129, 'LOLOL', 6),
(106, 'MACHALI', 6),
(122, 'MALLOA', 6),
(134, 'MARCHIGUE', 6),
(126, 'NANCAGUA', 6),
(138, 'NAVIDAD', 6),
(120, 'OLIVAR', 6),
(130, 'PALMILLA', 6),
(133, 'PAREDONES', 6),
(131, 'PERALILLO', 6),
(115, 'PEUMO', 6),
(118, 'PICHIDEGUA', 6),
(137, 'PICHILEMU', 6),
(127, 'PLACILLA', 6),
(135, 'PUMANQUE', 6),
(123, 'QUINTA DE TILCOCO', 6),
(105, 'RANCAGUA', 6),
(121, 'RENGO', 6),
(119, 'REQUINOA', 6),
(124, 'SAN FERNANDO', 6),
(111, 'SAN FRANCISCO DE MOSTAZAL', 6),
(117, 'SAN VICENTE', 6),
(128, 'SANTA CRUZ', 6),
(166, 'CAUQUENES', 7),
(167, 'CHANCO', 7),
(161, 'COLBUN', 7),
(157, 'CONSTITUCION', 7),
(155, 'CUREPTO', 7),
(140, 'CURICO', 7),
(158, 'EMPEDRADO', 7),
(144, 'HUALAÃ‘E', 7),
(145, 'LICANTEN', 7),
(159, 'LINARES', 7),
(162, 'LONGAVI', 7),
(154, 'MAULE', 7),
(147, 'MOLINA', 7),
(164, 'PARRAL', 7),
(152, 'PELARCO', 7),
(320, 'PELLUHUE', 7),
(153, 'PENCAHUE', 7),
(143, 'RAUCO', 7),
(165, 'RETIRO', 7),
(149, 'RIO CLARO', 7),
(141, 'ROMERAL', 7),
(148, 'SAGRADA FAMILIA', 7),
(151, 'SAN CLEMENTE', 7),
(156, 'SAN JAVIER', 7),
(341, 'SAN RAFAEL', 7),
(150, 'TALCA', 7),
(142, 'TENO', 7),
(146, 'VICHUQUEN', 7),
(163, 'VILLA ALEGRE', 7),
(160, 'YERBAS BUENAS', 7),
(303, 'ANTUCO', 8),
(198, 'ARAUCO', 8),
(180, 'BULNES', 16),
(208, 'CABRERO', 8),
(201, 'CAÑETE', 8),
(344, 'CHIGUAYANTE', 8),
(168, 'CHILLAN', 16),
(342, 'CHILLAN VIEJO', 16),
(175, 'COBQUECURA', 16),
(186, 'COELEMU', 16),
(170, 'COIHUECO', 16),
(188, 'CONCEPCION', 8),
(202, 'CONTULMO', 8),
(194, 'CORONEL', 8),
(197, 'CURANILAHUE', 8),
(185, 'EL CARMEN', 16),
(193, 'FLORIDA', 8),
(192, 'HUALQUI', 8),
(210, 'LAJA', 8),
(199, 'LEBU', 8),
(200, 'LOS ALAMOS', 8),
(204, 'LOS ANGELES', 8),
(195, 'LOTA', 8),
(214, 'MULCHEN', 8),
(212, 'NACIMIENTO', 8),
(213, 'NEGRETE', 8),
(174, 'NINHUE', 16),
(184, 'PEMUCO', 16),
(191, 'PENCO', 8),
(169, 'PINTO', 16),
(171, 'PORTEZUELO', 16),
(215, 'QUILACO', 8),
(206, 'QUILLECO', 8),
(182, 'QUILLON', 16),
(172, 'QUIRIHUE', 16),
(187, 'RANQUIL', 16),
(176, 'SAN CARLOS', 16),
(178, 'SAN FABIAN', 16),
(177, 'SAN GREGORIO DE Ã‘IQUEN', 8),
(181, 'SAN IGNACIO', 16),
(179, 'SAN NICOLAS', 16),
(343, 'SAN PEDRO DE LA PAZ', 8),
(211, 'SAN ROSENDO', 8),
(205, 'SANTA BARBARA', 8),
(196, 'SANTA JUANA', 8),
(189, 'TALCAHUANO', 8),
(203, 'TIRUA', 8),
(190, 'TOME', 8),
(173, 'TREHUACO', 16),
(209, 'TUCAPEL', 8),
(207, 'YUMBEL', 8),
(183, 'YUNGAY', 16),
(216, 'ANGOL', 9),
(235, 'CARAHUE', 9),
(220, 'COLLIPULLI', 9),
(230, 'CUNCO', 9),
(225, 'CURACAUTIN', 9),
(305, 'CURARREHUE', 9),
(221, 'ERCILLA', 9),
(229, 'FREIRE', 9),
(232, 'GALVARINO', 9),
(238, 'GORBEA', 9),
(231, 'LAUTARO', 9),
(240, 'LONCOCHE', 9),
(226, 'LONQUIMAY', 9),
(218, 'LOS SAUCES', 9),
(223, 'LUMACO', 9),
(304, 'MELIPEUCO', 9),
(234, 'NUEVA IMPERIAL', 9),
(345, 'PADRE LAS CASAS', 9),
(233, 'PERQUENCO', 9),
(237, 'PITRUFQUEN', 9),
(242, 'PUCON', 9),
(236, 'PUERTO SAAVEDRA', 9),
(217, 'PUREN', 9),
(219, 'RENAICO', 9),
(227, 'TEMUCO', 9),
(306, 'TEODORO SCHMIDT', 9),
(239, 'TOLTEN', 9),
(222, 'TRAIGUEN', 9),
(224, 'VICTORIA', 9),
(228, 'VILCUN', 9),
(241, 'VILLARRICA', 9),
(277, 'ANCUD', 10),
(265, 'CALBUCO', 10),
(270, 'CASTRO', 10),
(280, 'CHAITEN', 10),
(271, 'CHONCHI', 10),
(262, 'COCHAMO', 10),
(276, 'CURACO DE VELEZ', 10),
(279, 'DALCAHUE', 10),
(268, 'FRESIA', 10),
(269, 'FRUTILLAR', 10),
(281, 'FUTALEUFU', 10),
(308, 'HUALAIHUE', 10),
(267, 'LLANQUIHUE', 10),
(264, 'LOS MUERMOS', 10),
(263, 'MAULLIN', 10),
(255, 'OSORNO', 10),
(282, 'PALENA', 10),
(261, 'PUERTO MONTT', 10),
(258, 'PUERTO OCTAY', 10),
(266, 'PUERTO VARAS', 10),
(274, 'PUQUELDON', 10),
(260, 'PURRANQUE', 10),
(256, 'PUYEHUE', 10),
(272, 'QUEILEN', 10),
(273, 'QUELLON', 10),
(278, 'QUEMCHI', 10),
(275, 'QUINCHAO', 10),
(259, 'RIO NEGRO', 10),
(307, 'SAN JUAN DE LA COSTA', 10),
(257, 'SAN PABLO', 10),
(285, 'AYSEN', 11),
(287, 'CHILE CHICO', 11),
(286, 'CISNES', 11),
(289, 'COCHRANE', 11),
(284, 'COYHAIQUE', 11),
(309, 'GUAITECAS', 11),
(312, 'LAGO VERDE', 11),
(310, 'O\'HIGGINS', 11),
(288, 'RIO IBAÃ‘EZ', 11),
(311, 'TORTEL', 11),
(316, 'LAGUNA BLANCA', 12),
(319, 'NAVARINO', 12),
(292, 'PORVENIR', 12),
(317, 'PRIMAVERA', 12),
(291, 'PUERTO NATALES', 12),
(290, 'PUNTA ARENAS', 12),
(314, 'RIO VERDE', 12),
(315, 'SAN GREGORIO', 12),
(318, 'TIMAUKEL', 12),
(313, 'TORRES DEL PAINE', 12),
(109, 'ALHUE', 13),
(103, 'BUIN', 13),
(99, 'CALERA DE TANGO', 13),
(333, 'CERRILLOS', 13),
(324, 'CERRO NAVIA', 13),
(76, 'COLINA', 13),
(75, 'CONCHALI', 13),
(83, 'CURACAVI', 13),
(338, 'EL BOSQUE', 13),
(89, 'EL MONTE', 13),
(328, 'ESTACION CENTRAL', 13),
(334, 'HUECHURABA', 13),
(330, 'INDEPENDENCIA', 13),
(87, 'ISLA DE MAIPO', 13),
(96, 'LA CISTERNA', 13),
(93, 'LA FLORIDA', 13),
(97, 'LA GRANJA', 13),
(327, 'LA PINTANA', 13),
(92, 'LA REINA', 13),
(78, 'LAMPA', 13),
(71, 'LAS CONDES', 13),
(332, 'LO BARNECHEA', 13),
(337, 'LO ESPEJO', 13),
(325, 'LO PRADO', 13),
(323, 'MACUL', 13),
(94, 'MAIPU', 13),
(90, 'MARIA PINTO', 13),
(88, 'MELIPILLA', 13),
(91, 'ÑUÑOA', 13),
(339, 'PADRE HURTADO', 13),
(104, 'PAINE', 13),
(336, 'PEDRO AGUIRRE CERDA', 13),
(85, 'PEÑAFLOR', 13),
(322, 'PEÑALOLEN', 13),
(101, 'PIRQUE', 13),
(72, 'PROVIDENCIA', 13),
(82, 'PUDAHUEL', 13),
(100, 'PUENTE ALTO', 13),
(79, 'QUILICURA', 13),
(81, 'QUINTA NORMAL', 13),
(329, 'RECOLETA', 13),
(77, 'RENCA', 13),
(98, 'SAN BERNARDO', 13),
(335, 'SAN JOAQUIN', 13),
(102, 'SAN JOSE DE MAIPO', 13),
(95, 'SAN MIGUEL', 13),
(108, 'SAN PEDRO', 13),
(326, 'SAN RAMON', 13),
(70, 'SANTIAGO CENTRO', 13),
(73, 'SANTIAGO OESTE', 13),
(84, 'SANTIAGO SUR', 13),
(86, 'TALAGANTE', 13),
(80, 'TIL-TIL', 13),
(331, 'VITACURA', 13),
(244, 'CORRAL', 14),
(248, 'FUTRONO', 14),
(251, 'LA UNION', 14),
(254, 'LAGO RANCO', 14),
(249, 'LANCO', 14),
(247, 'LOS LAGOS', 14),
(246, 'MAFIL', 14),
(245, 'MARIQUINA', 14),
(243, 'VALDIVIA', 14),
(250, 'PANGUIPULLI', 14),
(252, 'PAILLACO', 14),
(253, 'RIO BUENO', 14),
(1, 'ARICA', 15),
(295, 'CAMARONES', 15),
(293, 'GENERAL LAGOS', 15),
(294, 'PUTRE', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_info`
--

CREATE TABLE `medio_info` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medio_info`
--

INSERT INTO `medio_info` (`id`, `nombre`) VALUES
(1, 'Web'),
(2, 'TV'),
(3, 'Redes Sociales'),
(4, 'Amigo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `codigo` int(11) NOT NULL,
  `nombre` char(255) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`codigo`, `nombre`, `orden`, `activo`) VALUES
(14, 'Región de Los Ríos', 0, 1),
(13, 'Región Metropolitana', 0, 1),
(12, 'Región de Magallanes y la Antártica Chilena', 0, 1),
(11, 'Región de Aysén del General Carlos Ibáñez del Campo', 0, 1),
(10, 'Región de Los Lagos', 0, 1),
(9, 'Región de la Araucanía', 0, 1),
(8, 'Región del Bio-Bío', 0, 1),
(7, 'Región del Maule', 0, 1),
(6, 'Región del Libertador General Bernardo OHiggins', 0, 1),
(5, 'Región de Valparaíso', 0, 1),
(4, 'Región de Coquimbo', 0, 1),
(3, 'Región de Atacama', 0, 1),
(2, 'Región de Antofagasta', 0, 1),
(1, 'Región de Tarapacá¡', 0, 1),
(15, 'Región de Arica y Parinacota', 0, 1),
(16, 'Región de Ñuble', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votacion_info_medios`
--

CREATE TABLE `votacion_info_medios` (
  `id` int(11) NOT NULL,
  `id_votante` int(11) NOT NULL,
  `id_medio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

CREATE TABLE `votantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_region` int(2) NOT NULL,
  `id_comuna` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `id` int(11) NOT NULL,
  `id_votante` int(11) NOT NULL,
  `id_candidato` int(11) NOT NULL,
  `fecha_voto` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`codigoInterno`);

--
-- Indices de la tabla `medio_info`
--
ALTER TABLE `medio_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `votacion_info_medios`
--
ALTER TABLE `votacion_info_medios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `medio_info`
--
ALTER TABLE `medio_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `votacion_info_medios`
--
ALTER TABLE `votacion_info_medios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `votantes`
--
ALTER TABLE `votantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
