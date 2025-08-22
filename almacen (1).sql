-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2025 a las 18:18:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_Categoria` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_Categoria`, `categoria`) VALUES
(1, 'Comida'),
(2, 'Farmacia'),
(3, 'Ferretería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `cedula` varchar(30) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `primer_A` varchar(50) DEFAULT NULL,
  `segundo_A` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `cedula`, `nombre`, `primer_A`, `segundo_A`, `correo`, `telefono`) VALUES
(1, '1-1234-5678', 'Laura', 'Gómez', 'Jiménez', 'laura.gj@gmail.com', '7201-5566'),
(2, '2-2233-4455', 'Carlos', 'Mora', 'Ramírez', 'carlos.mr@yahoo.com', '6055-7788'),
(3, '3-3344-5566', 'Daniela', 'Vargas', 'Chacón', 'danivc@hotmail.com', '8999-1122'),
(4, '4-4455-6677', 'Esteban', 'Rojas', 'Quesada', 'estebanrq@outlook.com', '7456-2233'),
(5, '5-5566-7788', 'Sofía', 'Fernández', 'Castillo', 'sofiacast@gmail.com', '8300-3344');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `primer_A` varchar(50) DEFAULT NULL,
  `segundo_A` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `cedula`, `nombre`, `primer_A`, `segundo_A`, `correo`, `telefono`) VALUES
(1, '1-796-879', 'Jeremy', 'Moraaaaaaaa', 'Esquivel', 'morajere777@gmail.com', '7230-5960'),
(2, '2 0889 0901', 'Rodrigo', 'Rodriguez', 'Mora', 'Hola@gmail.com', '0000-6467'),
(3, '4 4444 0901', 'Francisco', 'Rodolfo', 'Perez', 'edtsr@gmail.com', '1111-6467'),
(4, '1 6666 0901', 'Rodolfo', 'Aponte', 'Esquivel', 'tuml@gmail.com', '2521-6467'),
(5, '6 6566 0901', 'Mateo', 'Villalobos', 'Ortega', 'hijl@gmail.com', '6666-6467'),
(6, '3 6466 0901', 'Rafael', 'Mena', 'Fernandez', '5854@gmail.com', '7777-6467'),
(7, '2 1234 5678', 'Valeria', 'Castro', 'Jiménez', 'valcastro@gmail.com', '8456-1234'),
(9, '3 9876 5432', 'Camila', 'López', 'González', 'camilagz@gmail.com', '6123-4567'),
(10, '4 1111 2222', 'Javier', 'Martínez', 'Solis', 'javierms@hotmail.com', '7890-3321'),
(11, '5 3333 4444', 'Natalia', 'Rojas', 'Cordero', 'natalia_rc@yahoo.com', '8000-9988'),
(19, '208890901', 'Juan ', 'Vainas', 'Colombia', 'juan@gmail.com', '41150223'),
(33, '', '', '', '', '', ''),
(34, '', '', '', '', '', ''),
(35, '00000444', 'Popi', 'Lopez', 'Ñoño', 'mora@gmail.com', '02020222'),
(36, '', '', '', '', '', ''),
(37, '', '', '', '', '', ''),
(38, '', '', '', '', '', ''),
(39, '', '', '', '', '', ''),
(40, '', '', '', '', '', ''),
(41, '', '', '', '', '', ''),
(42, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `precio_v` double DEFAULT NULL,
  `precio_c` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `factura` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `id_categoria`, `precio_v`, `precio_c`, `cantidad`, `id_proveedor`, `factura`) VALUES
(6, 1, 1, 1200, 900, 100, 1, ''),
(7, 6, 2, 2500, 1800, 50, 2, ''),
(8, 11, 3, 4500, 3200, 20, 4, ''),
(9, 3, 1, 1800, 1300, 80, 2, ''),
(10, 8, 2, 3600, 2600, 30, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Producto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `presentación` varchar(100) DEFAULT NULL,
  `peso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Producto`, `nombre`, `id_categoria`, `presentación`, `peso`) VALUES
(1, 'Coca Cola', 1, 'Caja', '500g'),
(2, 'Atún', 1, 'Lata', '250g'),
(3, 'Arroz', 1, 'Bolsa', '1kg'),
(4, 'Ranchitas', 1, 'Bolsa', '200g'),
(20, 'Caracoles', 1, 'Caja', '100g'),
(21, 'Pastilla', 2, 'Tabletas', '10mg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `correo`, `telefono`, `contacto`) VALUES
(1, 'Distribuidora Mascotín', 'contacto@mascotin.com', '7012-3344', 'Juan Mora'),
(2, 'Alimentos Peluditos', 'ventas@peluditos.cr', '7200-9988', 'Pepe el grillo'),
(3, 'VetPro Suplementos', 'info@vetpro.cr', '6100-4455', 'Samurio Roes'),
(4, 'Mundo Animal S.A.', 'servicio@mundanimal.com', '8301-2345', 'Tino Valenciano'),
(5, 'Patitas Felices', 'proveedor@patitasfelices.org', '8456-7890', 'Leonardo DiCaprio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_Categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `fk_inventario_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
