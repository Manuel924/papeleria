-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2021 a las 15:32:13
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'PAPELES - PAPELERÍA', '2021-11-15 05:14:56'),
(2, 'LIBRETAS - PAPELERÍA', '2021-11-15 05:15:19'),
(3, 'CARTULINAS - PAPELERÍA', '2021-11-15 05:15:43'),
(4, 'COLORES - PAPELERÍA', '2021-11-15 05:16:02'),
(5, 'PINCELES - PAPELERÍA', '2021-11-15 05:16:19'),
(6, 'FOTOS - FOTOGRAFÍA', '2021-11-15 05:16:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `fecha`) VALUES
(1, 'Manuel Uc', 2345897, 'manuel@gmail.com', '(999) 999-9999', 'Calle 45F #23 - 4s', '2000-11-11', 10, '2021-11-18 01:56:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Papel bond blanco', 'vistas/img/productos/101/909.png', 11, 1.5, 4, 9, '2021-11-21 20:09:30'),
(2, 1, '102', 'Papel bond cuadriculado', '', 19, 1.5, 4, 1, '2021-11-18 01:56:25'),
(3, 1, '103', 'Papel china', '', 20, 1.5, 2.5, 0, '2021-11-12 04:12:30'),
(4, 1, '104', 'PAPEL CREPÉ', '', 20, 4, 6.5, 0, '2021-11-15 05:12:56'),
(5, 1, '105', 'PAPEL CASCARÓN - 1/8', '', 20, 2, 4, 0, '2021-11-15 05:13:24'),
(6, 1, '106', 'PAPEL CASCARÓN - 1/4', '', 20, 5, 8, 0, '2021-11-15 05:17:12'),
(7, 1, '107', 'PAPEL CASCARÓN - 1/2', '', 20, 9.5, 16, 0, '2021-11-15 05:17:37'),
(8, 1, '108', 'PAPEL CASCARÓN - ENTERO', '', 20, 24.5, 32, 0, '2021-11-15 05:18:07'),
(9, 1, '109', 'PAPEL CARBÓN', '', 20, 2, 3.5, 0, '2021-11-15 05:18:25'),
(10, 1, '110', 'Papel vegetal', '', 20, 2.5, 5, 0, '2021-11-12 04:12:30'),
(11, 1, '111', 'Papel de regalo', '', 20, 3.5, 7, 0, '2021-11-12 04:12:30'),
(12, 2, '201', 'Libreta italiana - rayada', '', 20, 23.5, 28, 0, '2021-11-13 23:40:13'),
(13, 2, '202', 'Libreta italiana - cuadriculada', '', 20, 25.5, 35, 0, '2021-11-13 23:40:31'),
(14, 2, '203', 'Libreta francesa - rayada', '', 20, 22, 29, 0, '2021-11-13 23:40:46'),
(15, 2, '204', 'Libreta francesa - cuadriculada', '', 20, 22, 34, 0, '2021-11-13 23:41:07'),
(16, 2, '205', 'Libreta profesional - rayada', '', 20, 30, 45, 0, '2021-11-13 23:41:19'),
(17, 2, '206', 'Libreta profesional - cuadriculada', '', 20, 15, 23, 0, '2021-11-13 23:41:41'),
(18, 2, '207', 'Libreta de apuntes - rayada', '', 20, 8, 12, 0, '2021-11-13 23:41:56'),
(19, 2, '208', 'Libreta de apuntes - cuadriculada', '', 20, 14, 21, 0, '2021-11-13 23:42:08'),
(20, 3, '301', 'Cartulina color pastel', '', 20, 2, 4, 0, '2021-11-12 04:12:30'),
(21, 3, '302', 'Cartulina color fosforescente', '', 20, 2.5, 6.5, 0, '2021-11-12 04:12:30'),
(22, 3, '303', 'Cartulina color iris', '', 20, 4, 8, 0, '2021-11-12 04:12:30'),
(23, 4, '401', 'Color smarty 12', '', 20, 35, 58, 0, '2021-11-12 04:12:30'),
(24, 4, '402', 'Color mapita largos 12', '', 20, 22, 33, 0, '2021-11-12 04:12:30'),
(25, 4, '403', 'Color total school 12', '', 20, 49, 69, 0, '2021-11-12 04:12:30'),
(26, 4, '404', 'COLOR SMARTY 24 COLORES, 12 LÁPICES', '', 20, 65, 88, 0, '2021-11-15 05:20:07'),
(27, 4, '405', 'COLOR SMARTY 24 LÁPICES', '', 20, 95, 124, 0, '2021-11-15 05:21:05'),
(28, 5, '501', 'Pincel #1, #2, #3, #4, #5', '', 20, 2.5, 5, 0, '2021-11-12 04:12:30'),
(29, 5, '502', 'Pincel #6', '', 20, 4, 8, 0, '2021-11-12 04:12:30'),
(30, 5, '503', 'Pincel #7', '', 20, 7, 9.5, 0, '2021-11-12 04:12:30'),
(31, 5, '504', 'Pincel #8, #9, #10', '', 20, 5, 11, 0, '2021-11-12 04:19:18'),
(32, 5, '505', 'Pincel #11, #12', '', 20, 8, 14, 0, '2021-11-12 04:19:18'),
(33, 6, '601', 'Foto infantil - Blanco y negro', '', 20, 9, 15, 0, '2021-11-12 04:19:18'),
(34, 6, '602', 'Foto infantil - color', '', 20, 29, 55, 0, '2021-11-12 04:19:18'),
(35, 6, '603', 'FOTO ENMARCADA CHICA - SIN EDICIÓN', '', 20, 40, 65, 0, '2021-11-15 05:22:44'),
(36, 6, '604', 'FOTO ENMARCADA MEDIANA - SIN EDICIÓN', '', 20, 40, 70, 0, '2021-11-15 05:24:04'),
(37, 6, '605', 'FOTO ENMARCADA GRANDE - SIN EDICIÓN', '', 20, 140, 200, 0, '2021-11-15 05:24:24'),
(38, 6, '606', 'FOTO ENMARCADA CHICA - CON EDICIÓN', '', 20, 325, 400, 0, '2021-11-15 05:24:46'),
(39, 6, '607', 'FOTO ENMARCADA MEDIANA - CON EDICIÓN', '', 20, 85, 130, 0, '2021-11-15 05:25:10'),
(40, 6, '608', 'FOTO ENMARCADA GRANDE - CON EDICIÓN', '', 20, 150, 220, 0, '2021-11-15 05:25:32'),
(41, 6, '609', 'Foto postal', '', 20, 330, 500, 0, '2021-11-12 04:19:18'),
(42, 6, '610', 'FOTO TAMAÑO CREDENCIAL', '', 20, 40, 65, 0, '2021-11-15 05:26:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(6, 'Henry Efrain Torres Esquivel', 'henry123', '$2a$07$asxx54ahjppf45sd87a5auA0H50XuUsLKJ5ZtvA/xu0uwE/KQ/oda', 'Administrador', 'vistas/img/usuarios/henry123/898.jpg', 1, '2021-11-21 14:07:58', '2021-11-21 20:07:58'),
(7, 'Ángel Mariano Uicab Canché', 'angel', '$2a$07$asxx54ahjppf45sd87a5auPvSF1a8ovBZKDzCc9y3PJ3Q9WwY0JwK', 'Administrador', '', 1, '2021-11-09 07:16:39', '2021-11-09 14:11:12'),
(10, 'Manuel Ricardo Uc Nicoli', 'manu', '$2a$07$asxx54ahjppf45sd87a5auiggQ5r6sRmsSC2rUHUIagtaOhQsle4i', 'Administrador', 'vistas/img/usuarios/manu/324.png', 1, '2021-11-05 18:52:49', '2021-11-09 14:02:50'),
(18, 'prueba', 'prueba', '$2a$07$asxx54ahjppf45sd87a5auBxWKi32TyN7LTmhz0ONBYdcwSQJ0lWO', 'Administrador', '', 0, '0000-00-00 00:00:00', '2021-11-11 18:02:28'),
(21, 'prueba2', 'prueba2', '$2a$07$asxx54ahjppf45sd87a5auBxWKi32TyN7LTmhz0ONBYdcwSQJ0lWO', 'Administrador', '', 0, '0000-00-00 00:00:00', '2021-11-14 00:05:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
