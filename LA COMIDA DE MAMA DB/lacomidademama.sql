-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-12-2018 a las 10:51:54
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lacomidademama`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE IF NOT EXISTS `carro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `carro`
--

INSERT INTO `carro` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 5, 1),
(2, 11, '::1', 5, 1),
(3, 12, '::1', 5, 1),
(4, 1, '::1', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_title`) VALUES
(1, 'Carnes'),
(2, 'Verdura'),
(3, 'Legumbres'),
(4, 'Cereales'),
(5, 'Snacks'),
(6, 'Bebidas'),
(7, 'salsas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`) VALUES
(1, 2, 1, 'Tomates', 5, 'Tomates ecológicos', 'tomates.jpg'),
(2, 2, 1, 'Cebollas', 3, 'Cebollas ecológicas', 'cebollas.jpg'),
(3, 2, 1, 'Chiles', 3, 'Chiles ecológicos', 'chiles.jpg'),
(4, 1, 1, 'Cerdo ', 6, 'Cerdo Ecológico', 'cerdo.jpg'),
(5, 2, 1, 'Zanahorias', 4, 'Zanahorias ecológicas', 'zanahorias.jpg'),
(6, 2, 1, 'Patatas', 5, 'Zanahorias ecológicas', 'patatas.jpg'),
(7, 2, 1, 'Pepinos', 5, 'Pepinos ecológicos', 'pepinos.jpg'),
(8, 2, 1, 'Pimientos Verdes', 4, 'Pimientos Verdes ecológicos', 'pimientos verdes.jpg'),
(9, 2, 1, 'Lechuga', 8, 'Lechuga ecológica', 'lechuga.jpg'),
(10, 2, 1, 'Judias', 2, 'Judías ecológicas', 'judias.jpg'),
(11, 1, 2, 'Conejo ', 5, 'Conejo ecológico', 'conejo.jpg'),
(12, 1, 1, 'Pollo ', 7, 'Pollo ecológico', 'pollo.jpg'),
(13, 3, 1, 'Lentejas', 2, 'Lentejas ecológicas', 'lentejas.jpg'),
(14, 3, 1, 'Garbanzos', 3, 'Garbanzos ecológicos', 'garbanzos.jpg'),
(15, 2, 3, 'Boniato', 1, 'Boniato ecológico', 'boniato.jpg'),
(16, 1, 6, 'Ternera ', 8, 'Ternera ecológica', 'ternera.jpg'),
(17, 2, 1, 'Pimientos rojos', 5, 'Pimientos rojos ecológicos', 'pimientos rojos.jpg'),
(19, 1, 1, 'Pato', 7, 'Pato ecológico', 'pato.jpg'),
(20, 7, 4, 'Mantequilla ', 5, 'Mantequilla ecologica', 'mantequilla.jpg'),
(21, 7, 1, 'Crema de Mostaza y Fuet', 8, 'Crema de Mostaza y Fuet', 'fuet.jpg'),
(22, 7, 1, 'Queso de Cabra ', 6, 'Queso de Cabra', 'queso.jpg'),
(23, 4, 5, 'Arroz Blanco', 4, 'Arroz Blanco ecológico', 'arrozblanco.jpg'),
(24, 4, 5, 'Arroz Negro', 5, 'Arroz negro ecológico', 'arroznegro.jpg'),
(25, 4, 6, 'Avena', 4, 'Cereales de avena ecológicos', 'avena.jpg'),
(26, 5, 2, 'Nuggets', 5, 'Nuggets', 'nuggets.jpg'),
(27, 5, 4, 'Nuggets con Merluza', 5, 'nuggets merluza', 'nuggetsmerluza.JPG'),
(32, 5, 4, 'Patatas Fritas', 5, 'Patatas Fritas', 'patatasfritas.jpg'),
(33, 6, 5, 'Agua Mineral', 3, 'Agua Mineral', 'agua.jpg'),
(34, 6, 2, 'Refrescos', 3, 'Refrescos', 'refrescos.jpg'),
(35, 6, 1, 'Zumos', 3, 'Zumos', 'zumos.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'David', 'Ballester', 'dballesterv@hotmail.com', '178ecf3480bc66ecbd093c82baf753f9', '9644100000', 'calle de los dolores 12 -B ', '12500'),
(4, 'Federico', 'Garcia Lorca', 'fede@hotmail.com', 'fba46700df1adb7e97d9b19cf34f95c4', '1234567890', 'Calle de todos los Santos 25', '12340'),
(5, 'Federico', 'Garcia', 'federico@gmail.com', '5cef80f489e1e868c443887dda89f2b8', '654987321', 'Calle Melancolia nÂº 7', '12345678912');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
