-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2024 a las 01:39:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE DATABASE dancesync;

USE dancesync;

CREATE TABLE `empresas` (
  `ID_Empresa` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Contacto` varchar(255) NOT NULL,
  `Pagos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`ID_Empresa`, `Nombre`, `Contacto`, `Pagos`) VALUES
(1, 'CBD BTroula', 'contacto@dancesync.es', ''),
(2, 'CBD Alma Studio', 'info@baileyalmastudio.com', ''),
(3, 'CBD Pasos', 'contacto@pasosdefuego.com', ''),
(4, 'CBD Ritmo Academy', 'info@ritmoandsabor.com', ''),
(5, 'Euforia Dance Center', 'contacto@euforiadancecenter.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `ID_Evento` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  `Localizacion` varchar(255) NOT NULL,
  `Director` varchar(255) NOT NULL,
  `Secretario` varchar(255) NOT NULL,
  `Escrutinio` varchar(255) NOT NULL,
  `Licencia_DJ` varchar(255) NOT NULL,
  `Pista` varchar(255) NOT NULL,
  `Finalizado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`ID_Evento`, `Nombre`, `Fecha`, `Localizacion`, `Director`, `Secretario`, `Escrutinio`, `Licencia_DJ`, `Pista`, `Finalizado`) VALUES
(1, 'Atlantic Open Marín 2024', '2024-07-09', 'Pavillón Municipal de A Raña\r\nRúa Recamán, 26, 36915 Marín, Pontevedra', 'Javier Gómez Herrera', 'Mateo Castro Navarro', 'FEBD', 'Andrés Paz', '27x17', 1),
(2, 'Circuito Ibérico 2024', '2024-08-06', 'R. Canónigo Valiño, s/n, 36700 Tui, Pontevedra', 'Laura Fernández Martínez', 'Andrés López García', 'FEBD', 'Sonia Castro', '30x20', 0),
(3, 'Torneo Internacional Vigo 2024', '2024-09-12', 'Complejo Deportivo As Travesas\r\nAv. de Castrelos, 1, 36210 Vigo, Pontevedra', 'Carla Rodríguez Pérez', 'Martín Sánchez Torres', 'FEBD', 'Antón Silva', '28x18', 0),
(4, 'Campeonato Gallego Santiago 2024', '2024-10-15', 'Estadio Multiusos de San Lázaro\r\nAv. Fernando de Casas Novoa, s/n, 15703 Santiago de Compostela, A Coruña', 'Sofía Morales Díaz', 'Javier Gómez Herrera', 'FEBD', 'Anxo Pérez', '29x19', 0),
(5, 'Open de Invierno Ourense 2024', '2024-11-20', 'Polideportivo Os Remedios\r\nRúa de Remedios, 8, 32002 Ourense, Ourense', 'Valeria Ruiz Ortiz', 'Lucas Ortiz Paredes', 'FEBD', 'Mario Lopez', '26x16', 0),
(6, 'XX Trofeo Concello Da Estrada De Baile Deportivo', '2024-07-02', 'Pavillón Polideportivo Manuel Coto Ferreiro Rúa da Cultura, 10, 36680 A Estrada, Pontevedra', 'Marcos Ródriguez Costas', 'Mateo Castro Navarro', 'FEBD', 'Andrés Paz', '25x19', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_empresa`
--

CREATE TABLE `eventos_empresa` (
  `ID_Evento` int(11) NOT NULL,
  `ID_Empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos_empresa`
--

INSERT INTO `eventos_empresa` (`ID_Evento`, `ID_Empresa`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_parejas`
--

CREATE TABLE `eventos_parejas` (
  `ID_Participante` int(11) NOT NULL,
  `ID_Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_participantecoreo`
--

CREATE TABLE `eventos_participantecoreo` (
  `ID_Participante` int(11) NOT NULL,
  `ID_Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_participantesingle`
--

CREATE TABLE `eventos_participantesingle` (
  `ID_Participante` int(11) NOT NULL,
  `ID_Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_participantesparejas`
--

CREATE TABLE `eventos_participantesparejas` (
  `ID_Pareja` int(11) NOT NULL,
  `ID_Evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes_coreografica`
--

CREATE TABLE `participantes_coreografica` (
  `ID_Grupo` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Poblacion` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Club` varchar(255) NOT NULL,
  `Cat_Edad` varchar(255) NOT NULL,
  `Cancion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes_parejas`
--

CREATE TABLE `participantes_parejas` (
  `ID_Pareja` int(11) NOT NULL,
  `Datos Hombre` varchar(255) NOT NULL,
  `Datos Mujer` varchar(255) NOT NULL,
  `Poblacion` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Club` varchar(255) NOT NULL,
  `Cat_Edad` varchar(255) NOT NULL,
  `Modalidades` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes_single`
--

CREATE TABLE `participantes_single` (
  `ID_Single` int(11) NOT NULL,
  `Datos` varchar(255) NOT NULL,
  `Poblacion` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Club` varchar(255) NOT NULL,
  `Cat_Edad` varchar(255) NOT NULL,
  `Modalidades` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Apellidos`, `Email`, `pass`) VALUES
(4, 'Alvaro', 'Lamas', 'alvaro.balixe@gmail.com', '$2y$10$YAlF18m5jB1gUC.soz1Sb.x8udU2HZu8SdGVC9aiY0RKBAdBvf0Iu'),
(7, 'Alvaro', 'Lamas', 'altruistgames1@gmail.com', '$2y$10$1A4v6doxzBXw8z.sm6PvseDsLbnJtn064I9cm16LfkRwc8uFIO9/u');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`ID_Empresa`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ID_Evento`);

--
-- Indices de la tabla `eventos_empresa`
--
ALTER TABLE `eventos_empresa`
  ADD PRIMARY KEY (`ID_Evento`,`ID_Empresa`),
  ADD KEY `fk_eventos_empresa_empresas` (`ID_Empresa`);

--
-- Indices de la tabla `eventos_parejas`
--
ALTER TABLE `eventos_parejas`
  ADD KEY `fk_eventos_parejas_eventos` (`ID_Evento`),
  ADD KEY `fk_eventos_parejas_participantes_parejas` (`ID_Participante`);

--
-- Indices de la tabla `eventos_participantecoreo`
--
ALTER TABLE `eventos_participantecoreo`
  ADD KEY `fk_eventos_participantecoreo_eventos` (`ID_Evento`),
  ADD KEY `fk_eventos_participantecoreo_participantes_coreografica` (`ID_Participante`);

--
-- Indices de la tabla `eventos_participantesingle`
--
ALTER TABLE `eventos_participantesingle`
  ADD KEY `fk_eventos_participantesingle_eventos` (`ID_Evento`),
  ADD KEY `fk_eventos_participantesingle_participantes_single` (`ID_Participante`);

--
-- Indices de la tabla `eventos_participantesparejas`
--
ALTER TABLE `eventos_participantesparejas`
  ADD KEY `fk_eventos_participantesparejas_eventos` (`ID_Evento`),
  ADD KEY `fk_eventos_participantesparejas_participantes_parejas` (`ID_Pareja`);

--
-- Indices de la tabla `participantes_coreografica`
--
ALTER TABLE `participantes_coreografica`
  ADD PRIMARY KEY (`ID_Grupo`);

--
-- Indices de la tabla `participantes_parejas`
--
ALTER TABLE `participantes_parejas`
  ADD PRIMARY KEY (`ID_Pareja`);

--
-- Indices de la tabla `participantes_single`
--
ALTER TABLE `participantes_single`
  ADD PRIMARY KEY (`ID_Single`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `ID_Empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `ID_Evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `participantes_coreografica`
--
ALTER TABLE `participantes_coreografica`
  MODIFY `ID_Grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participantes_parejas`
--
ALTER TABLE `participantes_parejas`
  MODIFY `ID_Pareja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participantes_single`
--
ALTER TABLE `participantes_single`
  MODIFY `ID_Single` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos_empresa`
--
ALTER TABLE `eventos_empresa`
  ADD CONSTRAINT `fk_eventos_empresa_empresas` FOREIGN KEY (`ID_Empresa`) REFERENCES `empresas` (`ID_Empresa`),
  ADD CONSTRAINT `fk_eventos_empresa_eventos` FOREIGN KEY (`ID_Evento`) REFERENCES `eventos` (`ID_Evento`);

--
-- Filtros para la tabla `eventos_parejas`
--
ALTER TABLE `eventos_parejas`
  ADD CONSTRAINT `fk_eventos_parejas_eventos` FOREIGN KEY (`ID_Evento`) REFERENCES `eventos` (`ID_Evento`),
  ADD CONSTRAINT `fk_eventos_parejas_participantes_parejas` FOREIGN KEY (`ID_Participante`) REFERENCES `participantes_parejas` (`ID_Pareja`);

--
-- Filtros para la tabla `eventos_participantecoreo`
--
ALTER TABLE `eventos_participantecoreo`
  ADD CONSTRAINT `fk_eventos_participantecoreo_eventos` FOREIGN KEY (`ID_Evento`) REFERENCES `eventos` (`ID_Evento`),
  ADD CONSTRAINT `fk_eventos_participantecoreo_participantes_coreografica` FOREIGN KEY (`ID_Participante`) REFERENCES `participantes_coreografica` (`ID_Grupo`);

--
-- Filtros para la tabla `eventos_participantesingle`
--
ALTER TABLE `eventos_participantesingle`
  ADD CONSTRAINT `fk_eventos_participantesingle_eventos` FOREIGN KEY (`ID_Evento`) REFERENCES `eventos` (`ID_Evento`),
  ADD CONSTRAINT `fk_eventos_participantesingle_participantes_single` FOREIGN KEY (`ID_Participante`) REFERENCES `participantes_single` (`ID_Single`);

--
-- Filtros para la tabla `eventos_participantesparejas`
--
ALTER TABLE `eventos_participantesparejas`
  ADD CONSTRAINT `fk_eventos_participantesparejas_eventos` FOREIGN KEY (`ID_Evento`) REFERENCES `eventos` (`ID_Evento`),
  ADD CONSTRAINT `fk_eventos_participantesparejas_participantes_parejas` FOREIGN KEY (`ID_Pareja`) REFERENCES `participantes_parejas` (`ID_Pareja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
