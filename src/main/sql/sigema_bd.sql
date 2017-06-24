-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2017 a las 17:52:30
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sigema_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresados`
--

CREATE TABLE `egresados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_de_procedencia` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generacion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_de_tesis` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asesor` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximo_grado_de_estudio` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experienciaLab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_maestria` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ins_estudio_maestria` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion_ins_maestria` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linea_inv_maestria` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_doctorado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ins_estudio_doctorado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion_ins_doctorado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linea_inv_doctorado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodo_de_maestria` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodo_de_doctorado` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentarios_sugerencias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_de_ingreso` date NOT NULL,
  `fecha_de_egreso` date NOT NULL,
  `fecha_de_titulacion` date NOT NULL,
  `es_titulado` int(11) NOT NULL,
  `tiene_posgrado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleos`
--

CREATE TABLE `empleos` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_jefe` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto_jefe` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viaje_practicas` int(11) NOT NULL,
  `estancias_profesionales` int(11) NOT NULL,
  `educativa` int(11) NOT NULL,
  `privada` int(11) NOT NULL,
  `gubernamental` int(11) NOT NULL,
  `egresado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'Accion', '2017-03-24 16:30:37', '2017-03-24 16:30:37'),
(2, 'Caricaturas', '2017-03-24 16:33:54', '2017-03-24 16:33:54'),
(3, 'Horror', '2017-03-27 01:11:35', '2017-03-27 01:11:35'),
(4, 'Suspenso', '2017-03-28 00:14:12', '2017-03-28 00:14:12'),
(5, 'Drama', '2017-03-28 00:33:27', '2017-03-28 00:33:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_22_123226_create_egresados_table', 1),
(4, '2017_03_22_123241_create_empleos_table', 1),
(7, '2017_03_23_194510_create_genres_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'Monserrath Flores Quiroz', 'monse@ndikandi.com', '$2y$10$WRwu3Vz8cEo54yNI.r9JCuR.3Wb64nFM1Bl8cjlNR20497qVwfW2y', 1, NULL, '2017-03-23 18:17:27', '2017-03-23 18:17:27'),
(8, 'Yessica Rodriguez Macedas', 'capricornio_172010@hotmail.com', '$2y$10$ebVvgzuH3pVcpPCCtkB3zeV0UcrKVOuuQJXAnUSJPWXZe69ARmJ/y', 1, 'Tr62awf17XI53kOXXT51kc7Nc6wc8pNoG6Y7Sjo1GFbSekt224GQVNUN5JIy', '2017-03-23 08:08:22', '2017-03-23 08:08:22'),
(10, 'Everardo Flores Quiroz', 'evefq@hotmail.com', '$2y$10$2cXtDENdqf1DUd3HAbM1uuJ4Dv6/xdHIuNdNV4F9XY.mdD62Xta7i', 1, 'c8gXMXId08VvO6W1iiXxqvaY4Rg0Ciy0GdmDMFiZMozCP3U43Sf8OX6DHtuJ', '2017-03-23 17:51:56', '2017-03-23 17:51:56'),
(12, 'Carlos Santiago', 'cacatito@utm.mx', '$2y$10$BvwUrOsc/jM1xyFIgg0FsevEluJFtmIvOG1xS7ugbPGcLte2wnb3i', 1, NULL, '2017-03-23 17:59:57', '2017-03-23 17:59:57'),
(13, 'Gerardo Velazquez Flores', 'gelu@chikillo.com', '$2y$10$nGEF7QZw7BkJ4G/MJEnRPun6oJ1URCdizZvTwLrtbWilMh0YOnUtq', 1, NULL, '2017-03-23 18:00:19', '2017-03-23 18:00:19'),
(14, 'Kevin Jair Hernandez Hernandez', 'wuero@chikillo.com', '$2y$10$Vlg5rst3hfvdupopT5RaT.Gr2cL5vF52/TFy3s9aWjUPxGIV0TnVu', 1, NULL, '2017-03-23 18:00:41', '2017-03-23 18:00:41'),
(16, 'Chayan Martinez Quiroz', 'chayan@hotmail.com', '$2y$10$YQ24yC19CUOHOWuNvZwr7OiuOt0LcRpDY6c0Ga435rHiR9LifOYny', 1, NULL, '2017-03-25 18:27:36', '2017-03-25 18:27:36'),
(17, 'Angel Roman', 'angel@montoncuarteles.df', '$2y$10$IVEfP4dcFvV6s3RZzFSPwevHi0.78iJj94gNW43PC6HxsdpIFBTjy', 1, NULL, '2017-03-28 00:12:25', '2017-03-28 00:12:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `egresados`
--
ALTER TABLE `egresados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleos`
--
ALTER TABLE `empleos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleos_egresado_id_foreign` (`egresado_id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `egresados`
--
ALTER TABLE `egresados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleos`
--
ALTER TABLE `empleos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
