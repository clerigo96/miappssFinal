-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2018 a las 19:08:12
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
  `obser_dsc_Obser` varchar(2000) DEFAULT NULL,
  `obser_cod_menuped` int(11) NOT NULL,
  `obser_fec_vige` date NOT NULL,
  `obser_cod_megusta` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tesis_tab_observaciones`
--

INSERT INTO `tesis_tab_observaciones` (`obser_cod_Obser`, `obser_dsc_Obser`, `obser_cod_menuped`, `obser_fec_vige`, `obser_cod_megusta`) VALUES
(1, 'me gusto mucha ', 1, '2018-01-22', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tesis_tab_menupedido`
--
ALTER TABLE `tesis_tab_menupedido`
  ADD PRIMARY KEY (`mePed_cod_mePed`);

--
-- Indices de la tabla `tesis_tab_observaciones`
--
ALTER TABLE `tesis_tab_observaciones`
  ADD KEY `obser_cod_Obser` (`obser_cod_Obser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tesis_tab_menupedido`
--
ALTER TABLE `tesis_tab_menupedido`
  MODIFY `mePed_cod_mePed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tesis_tab_observaciones`
--
ALTER TABLE `tesis_tab_observaciones`
  MODIFY `obser_cod_Obser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
