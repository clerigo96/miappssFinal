-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-01-2018 a las 00:59:57
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appss`
--

DELIMITER $$
--
-- Funciones
--
CREATE DEFINER=`root`@`localhost` FUNCTION `tesis_fun_Menudesc` (`p_cod_menuProd` INT(11), `p_cod_tipo` INT(1)) RETURNS VARCHAR(300) CHARSET latin1 NO SQL
BEGIN
    DECLARE descripcion VARCHAR(300);
    
   if  (p_cod_tipo=1) THEN
        SELECT mp.mePed_dsc_menu into descripcion from tesis_tab_menupedido mp WHERE mp.mePed_cod_mePed=p_cod_menuProd;
    end if;    

 if  (p_cod_tipo=2) THEN
        SELECT mp.mePed_cod_precio into descripcion from tesis_tab_menupedido mp WHERE mp.mePed_cod_mePed=p_cod_menuProd;
    end if;  
    
    RETURN descripcion;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `id_usua` int(11) DEFAULT NULL,
  `id_usua_anul` int(11) DEFAULT NULL,
  `fec_vcto` datetime DEFAULT NULL,
  `fec_vige` datetime DEFAULT NULL,
  `dsc_obser` varchar(255) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `client_email`, `id_usua`, `id_usua_anul`, `fec_vcto`, `fec_vige`, `dsc_obser`, `estado`) VALUES
(9, 'lgorigoitia@gmail.com', 3, 3, '2017-11-23 23:29:01', '2017-11-21 13:56:01', 'Retirado por Alumno', 3),
(10, 'lgorigoitia@gmail.com', 11, NULL, '2017-11-23 23:32:36', '2017-11-22 13:57:01', 'Retirado por Alumno', 3),
(11, 'lgorigoitia@gmail.com', 11, NULL, '2017-11-23 22:44:18', '2017-11-22 14:11:05', 'Retirado por Alumno', 3),
(12, 'lgorigoitia@gmail.com', 11, NULL, '2017-11-23 22:44:10', '2017-11-22 14:16:00', 'Retirado por Alumno', 3),
(13, 'lgorigoitia@gmail.com', 3, 3, NULL, '2017-11-23 14:13:42', ' Se anula pedido por irse del ipla', 4),
(14, 'lgorigoitia@gmail.com', 3, 3, NULL, '2017-11-23 22:11:17', ' ggggg', 4),
(15, 'lgorigoitia@gmail.com', 3, 1, '2017-11-23 22:44:24', '2017-11-23 22:28:35', 'Anulado por no entrega', 4),
(16, 'lgorigoitia@gmail.com', 3, 3, '2017-11-23 22:36:26', '2017-11-23 22:36:01', 'Retirado por Alumno', 4),
(17, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-23 23:32:36', '2017-11-23 23:15:27', 'Retirado por Alumno', 3),
(18, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-23 23:32:37', '2017-11-23 23:32:00', 'Retirado por Alumno', 3),
(19, 'lgorigoitia@gmail.com', 3, 3, NULL, '2017-11-24 10:23:04', ' no lo quiro', 4),
(20, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-26 09:48:26', '2017-11-24 11:24:11', 'Retirado por Alumno', 3),
(21, 'lgorigoitia@gmail.com', 3, 3, NULL, '2017-11-24 14:49:20', ' Se anula pedido por irse del ipla', 4),
(22, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-26 09:48:27', '2017-11-24 15:00:01', 'Retirado por Alumno', 3),
(23, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-26 09:48:27', '2017-11-24 15:00:11', 'Retirado por Alumno', 3),
(24, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-26 09:48:28', '2017-11-24 15:00:21', 'Retirado por Alumno', 3),
(25, 'lgorigoitia@gmail.com', 3, NULL, '2017-11-26 09:48:29', '2017-11-24 15:16:31', 'Retirado por Alumno', 3),
(26, 'lgorigohhh@fsdfsd.cl', 3, 3, '2017-11-26 09:48:29', '2017-11-25 15:37:06', 'Retirado por Alumno', 3),
(27, 'lgorigoitia@gmal.com', 11, NULL, '2017-11-26 09:48:29', '2017-11-26 09:47:43', 'Retirado por Alumno', 3),
(28, 'lgorigoitia@gmal.com', 11, NULL, '2017-11-26 09:48:30', '2017-11-26 09:47:59', 'Retirado por Alumno', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `q` float DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `fec_vige` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart_product`
--

INSERT INTO `cart_product` (`id`, `product_id`, `q`, `cart_id`, `fec_vige`) VALUES
(12, 6, 1, 9, '2017-11-21'),
(13, 5, 1, 9, '2017-11-21'),
(14, 4, 1, 10, '2017-11-20'),
(15, 6, 1, 11, '2017-11-22'),
(16, 5, 1, 11, '2017-11-22'),
(17, 2, 2, 12, '2017-11-22'),
(18, 3, 1, 13, '2017-11-23'),
(19, 1, 1, 14, '2017-11-23'),
(20, 4, 1, 15, '2017-11-23'),
(21, 5, 1, 15, '2017-11-23'),
(22, 1, 2, 16, '2017-11-23'),
(23, 2, 1, 16, '2017-11-23'),
(24, 6, 1, 17, '2017-11-23'),
(25, 9, 1, 18, '2017-11-23'),
(26, 8, 1, 19, '2017-11-24'),
(27, 5, 1, 20, '2017-11-24'),
(28, 8, 2, 20, '2017-11-24'),
(29, 7, 1, 20, '2017-11-24'),
(30, 11, 1, 21, '2017-11-24'),
(31, 8, 1, 22, '2017-11-24'),
(32, 9, 1, 23, '2017-11-24'),
(33, 10, 1, 24, '2017-11-24'),
(34, 4, 1, 25, '2017-11-24'),
(35, 1, 1, 26, '2017-11-25'),
(36, 5, 1, 27, '2017-11-26'),
(37, 7, 1, 28, '2017-11-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis_tab_menupedido`
--

CREATE TABLE `tesis_tab_menupedido` (
  `mePed_cod_mePed` int(11) NOT NULL,
  `mePed_dsc_menu` varchar(300) NOT NULL,
  `mePed_cod_precio` int(5) NOT NULL,
  `mePed_cod_stok` int(4) NOT NULL,
  `mePed_fec_vige` date NOT NULL,
  `mePed_fec_vcto` date DEFAULT NULL,
  `mePed_cod_valido` int(1) NOT NULL,
  `mePed_img_mePed_p` varchar(250) DEFAULT NULL,
  `mePed_cod_max_stock` int(4) DEFAULT NULL,
  `mePed_img_mePed_s` varchar(250) DEFAULT NULL,
  `mePed_dsc_Descripcion` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesis_tab_menupedido`
--

INSERT INTO `tesis_tab_menupedido` (`mePed_cod_mePed`, `mePed_dsc_menu`, `mePed_cod_precio`, `mePed_cod_stok`, `mePed_fec_vige`, `mePed_fec_vcto`, `mePed_cod_valido`, `mePed_img_mePed_p`, `mePed_cod_max_stock`, `mePed_img_mePed_s`, `mePed_dsc_Descripcion`) VALUES
(1, 'completo + bebida', 2000, 2, '2017-06-04', NULL, 1, 'img/completoP.png', 6, 'img/completoS.png', 'Entre los ingredientes más típicos o clásicos del completo chileno se encuentran primeramente la Palta/Aguacate hecha pasta o puré, tomate cortado en pequeños cubos y mayonesa, además de chucrut, queso derretido, salsa americana y salsa verde, entre otros.'),
(2, 'completo italiano + bebida', 2400, 2, '2017-06-04', NULL, 1, 'img/completoItaP.png', 6, 'img/completoItaS.png', 'Entre los ingredientes más típicos o clásicos del completo chileno se encuentran primeramente la Palta/Aguacate hecha pasta o puré, tomate cortado en pequeños cubos y mayonesa, además de chucrut, queso derretido, salsa americana y salsa verde, entre otros.'),
(3, 'pizza + bebida', 2400, 4, '2017-06-08', NULL, 1, 'img/pizzaP.png', 6, 'img/pizzaS.png', 'Ingredientes:dientes de ajo, taza de queso mozzarella rallado, tomate grande cortado en rodajas finas, puñado de hojas de albahaca, pimienta a gusto, 100 gr de panceta cortada en tiritas o cubos.'),
(4, 'churrasco Italianos + bebida', 2600, 4, '2017-06-08', NULL, 1, 'img/churrascoP.png', 6, 'img/churrascoS.png', 'Ingredientes: Filetes delgados de carne lomo de vacuno, Palta (Aguacate), Tomate, Panes para Sándwich, marraqueta o panecillo, Dientes de ajo, 1/2 Limón, Aceite de Oliva, Pimienta.'),
(5, 'sandwich Ave Palta + bebida', 2300, 2, '2017-06-08', NULL, 1, 'img/sandwichP.png', 6, 'img/sandwichS.png', 'Ingredientes:pechugas de pollo con hueso,cebolla, zanahoria y apio para el caldo, cucharadas de mayonesa, taza del caldo (aproximadamente), cucharada de semilla de sésamo, optativo, mostaza, a gusto, sal y pimienta, fold flatout.'),
(6, 'paila huevo + cafe', 2000, 3, '2017-06-08', NULL, 1, 'img/huevoP.png', 6, 'img/huevoS.png', 'Ingredientes : Huevos, Sal, Aceite, Jamon'),
(7, 'empanada + bebida', 1800, 4, '2017-06-08', NULL, 1, 'img/empanadaP.png', 6, 'img/empanadaS.png', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(8, 'fajita + bebida', 2400, 2, '2017-06-08', NULL, 1, 'img/fajitaP.png', 6, 'img/fajitaS.png', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(9, 'ensalada + bebida', 3400, 4, '2017-06-08', NULL, 1, 'img/ensaladasP.png', 6, 'img/ensaladasS.png', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(10, 'taco + bebida', 2100, 5, '2017-06-08', NULL, 1, 'img/tacosP.png', 6, 'img/tacosS.png', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(11, 'pollo + papas fritas + bebida', 3800, 5, '2017-06-08', NULL, 1, 'img/polloP.png', 6, 'img/polloS.png', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis_tab_observaciones`
--

CREATE TABLE `tesis_tab_observaciones` (
  `obser_cod_Obser` int(11) NOT NULL,
  `obser_dsc_Obser` varchar(500) NOT NULL,
  `obser_cod_menuped` int(11) NOT NULL,
  `obser_fec_vige` date NOT NULL,
  `obser_cod_megusta` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesis_tab_observaciones`
--

INSERT INTO `tesis_tab_observaciones` (`obser_cod_Obser`, `obser_dsc_Obser`, `obser_cod_menuped`, `obser_fec_vige`, `obser_cod_megusta`) VALUES
(1, 'me gusta', 1, '2018-01-01', 1),
(2, 'no me gusta', 1, '2018-01-02', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tesis_tab_menupedido`
--
ALTER TABLE `tesis_tab_menupedido`
  ADD PRIMARY KEY (`mePed_cod_mePed`);

--
-- Indices de la tabla `tesis_tab_observaciones`
--
ALTER TABLE `tesis_tab_observaciones`
  ADD PRIMARY KEY (`obser_cod_Obser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `tesis_tab_menupedido`
--
ALTER TABLE `tesis_tab_menupedido`
  MODIFY `mePed_cod_mePed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tesis_tab_observaciones`
--
ALTER TABLE `tesis_tab_observaciones`
  MODIFY `obser_cod_Obser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
