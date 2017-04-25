-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2017 a las 11:22:40
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webcafe`
--
CREATE DATABASE IF NOT EXISTS `webcafe` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webcafe`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad_tm`
--

CREATE TABLE `facultad_tm` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_universidad` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facultad_tm`
--

INSERT INTO `facultad_tm` (`id`, `nombre`, `id_universidad`) VALUES
(1, 'Filosofía y Letras', 1),
(2, 'Derecho', 1),
(3, 'Ufología', 2),
(4, 'Estudios Próximo-Siderales', 2),
(5, 'Magia Interdimensional', 2),
(6, 'Bellas Artes', 3),
(7, 'Ciencias Biológicas', 3),
(8, 'Ciencias de la Documentación', 3),
(9, 'Ciencias de la Información', 3),
(10, 'Ciancias Económicas y Empresariales', 3),
(11, 'Ciencias Físicas', 3),
(12, 'Ciencias Geológicas', 3),
(13, 'Ciencias Matemáticas', 3),
(14, 'Ciencias Políticas y Sociología', 3),
(15, 'Ciencias Químicas', 3),
(16, 'Comercio y Turismo', 3),
(17, 'Derecho', 3),
(18, 'Educación - CFP', 3),
(19, 'Enfermería, Fisioterapia y Podología', 3),
(20, 'Estudios Estadísticos', 3),
(21, 'Farmacia', 3),
(22, 'Filología', 3),
(23, 'Filosofía', 3),
(24, 'Geografía e Historia', 3),
(25, 'Informática', 3),
(26, 'Medicina', 3),
(27, 'Odontología', 3),
(28, 'Óptica y Optometría', 3),
(29, 'Psicología', 3),
(30, 'Trabajo Social', 3),
(31, 'Veterinaria', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_facultad` int(10) UNSIGNED DEFAULT NULL,
  `orden_plato` varchar(20) NOT NULL,
  `nombre_plato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais_tm`
--

CREATE TABLE `pais_tm` (
  `id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pais_tm`
--

INSERT INTO `pais_tm` (`id`, `nombre`) VALUES
('AC', 'Isla de la Ascensión'),
('AD', 'Andorra'),
('AE', 'Emiratos Árabes Unidos'),
('AF', 'Afganistán'),
('AG', 'Antigua y Barbuda'),
('AI', 'Anguila'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AO', 'Angola'),
('AQ', 'Antártida'),
('AR', 'Argentina'),
('AS', 'Samoa Americana'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Islas Åland'),
('AZ', 'Azerbaiyán'),
('BA', 'Bosnia-Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladés'),
('BE', 'Bélgica'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Baréin'),
('BI', 'Burundi'),
('BJ', 'Benín'),
('BL', 'San Bartolomé'),
('BM', 'Bermudas'),
('BN', 'Brunéi'),
('BO', 'Bolivia'),
('BQ', 'Caribe neerlandés'),
('BR', 'Brasil'),
('BS', 'Bahamas'),
('BT', 'Bután'),
('BW', 'Botsuana'),
('BY', 'Bielorrusia'),
('BZ', 'Belice'),
('CA', 'Canadá'),
('CC', 'Islas Cocos'),
('CD', 'República Democrática del Congo'),
('CF', 'República Centroafricana'),
('CG', 'República del Congo'),
('CH', 'Suiza'),
('CI', 'Costa de Marfil'),
('CK', 'Islas Cook'),
('CL', 'Chile'),
('CM', 'Camerún'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CU', 'Cuba'),
('CV', 'Cabo Verde'),
('CW', 'Curazao'),
('CX', 'Isla Christmas'),
('CY', 'Chipre'),
('CZ', 'República Checa'),
('DE', 'Alemania'),
('DG', 'Diego García'),
('DJ', 'Yibuti'),
('DK', 'Dinamarca'),
('DM', 'Dominica'),
('DO', 'República Dominicana'),
('DZ', 'Argelia'),
('EA', 'Ceuta y Melilla'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egipto'),
('EH', 'Sáhara Occidental'),
('ER', 'Eritrea'),
('ES', 'España'),
('ET', 'Etiopía'),
('FI', 'Finlandia'),
('FJ', 'Fiyi'),
('FK', 'Islas Malvinas'),
('FM', 'Micronesia'),
('FO', 'Islas Feroe'),
('FR', 'Francia'),
('GA', 'Gabón'),
('GB', 'Reino Unido'),
('GD', 'Granada'),
('GE', 'Georgia'),
('GF', 'Guayana Francesa'),
('GG', 'Guernesey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenlandia'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadalupe'),
('GQ', 'Guinea Ecuatorial'),
('GR', 'Grecia'),
('GS', 'Islas Georgia del Sur y Sandwich del Sur'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bisáu'),
('GY', 'Guyana'),
('HK', 'RAE de Hong Kong (China)'),
('HN', 'Honduras'),
('HR', 'Croacia'),
('HT', 'Haití'),
('HU', 'Hungría'),
('IC', 'islas Canarias'),
('ID', 'Indonesia'),
('IE', 'Irlanda'),
('IL', 'Israel'),
('IM', 'Isla de Man'),
('IN', 'India'),
('IO', 'Territorio Británico del Océano Índico'),
('IQ', 'Iraq'),
('IR', 'Irán'),
('IS', 'Islandia'),
('IT', 'Italia'),
('JE', 'Jersey'),
('JM', 'Jamaica'),
('JO', 'Jordania'),
('JP', 'Japón'),
('KE', 'Kenia'),
('KG', 'Kirguistán'),
('KH', 'Camboya'),
('KI', 'Kiribati'),
('KM', 'Comoras'),
('KN', 'San Cristóbal y Nieves'),
('KP', 'Corea del Norte'),
('KR', 'Corea del Sur'),
('KW', 'Kuwait'),
('KY', 'Islas Caimán'),
('KZ', 'Kazajistán'),
('LA', 'Laos'),
('LB', 'Líbano'),
('LC', 'Santa Lucía'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesoto'),
('LT', 'Lituania'),
('LU', 'Luxemburgo'),
('LV', 'Letonia'),
('LY', 'Libia'),
('MA', 'Marruecos'),
('MC', 'Mónaco'),
('MD', 'Moldavia'),
('ME', 'Montenegro'),
('MF', 'San Martín'),
('MG', 'Madagascar'),
('MH', 'Islas Marshall'),
('MK', 'Macedonia'),
('ML', 'Mali'),
('MM', 'Myanmar (Birmania)'),
('MN', 'Mongolia'),
('MO', 'RAE de Macao (China)'),
('MP', 'Islas Marianas del Norte'),
('MQ', 'Martinica'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauricio'),
('MV', 'Maldivas'),
('MW', 'Malaui'),
('MX', 'México'),
('MY', 'Malasia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'Nueva Caledonia'),
('NE', 'Níger'),
('NF', 'Isla Norfolk'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Países Bajos'),
('NO', 'Noruega'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Isla Niue'),
('NZ', 'Nueva Zelanda'),
('OM', 'Omán'),
('PA', 'Panamá'),
('PE', 'Perú'),
('PF', 'Polinesia Francesa'),
('PG', 'Papúa Nueva Guinea'),
('PH', 'Filipinas'),
('PK', 'Pakistán'),
('PL', 'Polonia'),
('PM', 'San Pedro y Miquelón'),
('PN', 'Islas Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Territorios Palestinos'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Catar'),
('RE', 'Reunión'),
('RO', 'Rumanía'),
('RS', 'Serbia'),
('RU', 'Rusia'),
('RW', 'Ruanda'),
('SA', 'Arabia Saudí'),
('SB', 'Islas Salomón'),
('SC', 'Seychelles'),
('SD', 'Sudán'),
('SE', 'Suecia'),
('SG', 'Singapur'),
('SH', 'Santa Elena'),
('SI', 'Eslovenia'),
('SJ', 'Svalbard y Jan Mayen'),
('SK', 'Eslovaquia'),
('SL', 'Sierra Leona'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Surinam'),
('SS', 'Sudán del Sur'),
('ST', 'Santo Tomé y Príncipe'),
('SV', 'El Salvador'),
('SX', 'Sint Maarten'),
('SY', 'Siria'),
('SZ', 'Suazilandia'),
('TA', 'Tristán da Cunha'),
('TC', 'Islas Turcas y Caicos'),
('TD', 'Chad'),
('TF', 'Territorios Australes Franceses'),
('TG', 'Togo'),
('TH', 'Tailandia'),
('TJ', 'Tayikistán'),
('TK', 'Tokelau'),
('TL', 'Timor Oriental'),
('TM', 'Turkmenistán'),
('TN', 'Túnez'),
('TO', 'Tonga'),
('TR', 'Turquía'),
('TT', 'Trinidad y Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwán'),
('TZ', 'Tanzania'),
('UA', 'Ucrania'),
('UG', 'Uganda'),
('UM', 'Islas menores alejadas de EE. UU.'),
('US', 'Estados Unidos'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistán'),
('VA', 'Ciudad del Vaticano'),
('VC', 'San Vicente y las Granadinas'),
('VE', 'Venezuela'),
('VG', 'Islas Vírgenes Británicas'),
('VI', 'Islas Vírgenes de EE. UU.'),
('VN', 'Vietnam'),
('VU', 'Vanuatu'),
('WF', 'Wallis y Futuna'),
('WS', 'Samoa'),
('XK', 'Kosovo'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'Sudáfrica'),
('ZM', 'Zambia'),
('ZW', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad_tm`
--

CREATE TABLE `universidad_tm` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universidad_tm`
--

INSERT INTO `universidad_tm` (`id`, `nombre`) VALUES
(1, 'Universidad de Zaragoza'),
(2, 'Universidad de Miskatonik'),
(3, 'Universidad Complutense de Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tm`
--

CREATE TABLE `usuario_tm` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `fecha_nacimiento` varchar(4) NOT NULL,
  `id_facultad` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_tm`
--

INSERT INTO `usuario_tm` (`id`, `nombre`, `apellido1`, `apellido2`, `nacionalidad`, `fecha_nacimiento`, `id_facultad`, `email`, `passwd`) VALUES
(1, 'Diego', 'Ordóñez', 'Sebastián', '(ES) España', '1989', 5, 'panopliaespartana@gmail.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facultad_tm`
--
ALTER TABLE `facultad_tm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais_tm`
--
ALTER TABLE `pais_tm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universidad_tm`
--
ALTER TABLE `universidad_tm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_tm`
--
ALTER TABLE `usuario_tm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facultad_tm`
--
ALTER TABLE `facultad_tm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `universidad_tm`
--
ALTER TABLE `universidad_tm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario_tm`
--
ALTER TABLE `usuario_tm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
