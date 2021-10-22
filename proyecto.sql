-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2021 a las 03:15:23
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

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
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `textColor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `descripcion`, `start`, `end`, `color`, `textColor`, `created_at`, `updated_at`) VALUES
(1, '111', '11111', '2021-10-18 00:00:00', '2021-10-19 00:00:00', '#00ff00', '#800000', '2021-10-19 02:25:47', '2021-10-19 02:25:47'),
(2, '111', '11111', '2021-10-18 10:30:00', '2021-10-18 11:30:00', '#00ff00', '#800000', '2021-10-19 02:33:57', '2021-10-19 02:33:57'),
(3, '111', '11111', '2021-10-18 10:30:00', '2021-10-18 11:30:00', '#ff0000', '#000000', '2021-10-19 02:34:48', '2021-10-19 02:34:48'),
(6, '4444', '4444', '2021-10-13 00:00:00', '2021-10-15 00:00:00', '#0091ff', '#000000', '2021-10-19 02:48:07', '2021-10-19 02:48:07'),
(7, '4444aa', '4444aa', '2021-10-13 10:30:00', '2021-10-13 12:00:00', '#0091ff', '#000000', '2021-10-19 02:49:25', '2021-10-19 02:49:25'),
(8, 'sssss', 'sssss', '2021-10-16 00:00:00', '2021-10-18 00:00:00', '#ff0000', '#400080', '2021-10-19 03:02:16', '2021-10-19 03:02:16'),
(9, 'aaaa', 'aaaa', '2021-10-21 00:00:00', '2021-10-21 00:00:00', '#0091ff', '#000000', '2021-10-19 03:03:44', '2021-10-19 03:03:44'),
(10, 'ss', 'ss', '2021-10-14 00:00:00', '2021-10-14 00:00:00', '#800080', '#400080', '2021-10-19 03:07:16', '2021-10-19 03:07:16'),
(11, 'RRR', 'RRR', '2021-10-27 00:00:00', '2021-10-27 00:00:00', '#1d99ca', '#000000', '2021-10-19 03:41:18', '2021-10-19 03:41:18'),
(12, 'usot', 'nuevo evento', '2021-10-22 10:45:00', '2021-10-24 10:12:00', '#8000ff', '#200020', '2021-10-19 04:13:03', '2021-10-19 04:13:03'),
(13, 'lista', 'lista de alumons', '2021-10-22 10:30:00', '2021-10-22 11:30:00', '#1d99ca', '#000000', '2021-10-19 04:15:16', '2021-10-19 04:15:16'),
(14, 'Lista alumnos', 'Lista alumnos', '2021-10-23 10:30:00', '2021-10-23 11:00:00', '#1d99ca', '#000000', '2021-10-19 04:15:43', '2021-10-19 04:15:43'),
(16, 'Lista alumnos', 'Lista alumnos', '2021-10-22 10:30:00', '2021-10-25 11:00:00', '#ff0000', '#000000', '2021-10-19 04:16:28', '2021-10-19 04:57:12'),
(17, 'Ultimo evento', 'Ultimo evento', '2021-10-19 10:30:00', '2021-10-20 10:30:00', '#ff0000', '#000000', '2021-10-19 04:58:11', '2021-10-21 10:10:26'),
(18, '111', '11111', '2021-10-19 10:30:00', '2021-10-19 11:30:00', '#00ff00', '#800000', '2021-10-19 05:04:57', '2021-10-19 05:04:57'),
(19, '111', '11111', '2021-10-20 10:30:00', '2021-10-20 11:30:00', '#00ff00', '#800000', '2021-10-19 05:05:10', '2021-10-19 05:05:10'),
(25, 'prueba servidor local', 'Servidor local', '2021-10-05 11:30:00', '2021-10-05 11:45:00', '#5b2067', '#d73920', '2021-10-20 12:10:58', '2021-10-20 12:10:58'),
(27, 'UNIVERSIDAD', 'aaaaa', '2021-10-01 00:00:00', '2021-10-01 00:00:00', '#ff0000', '#000000', '2021-10-20 14:23:29', '2021-10-20 14:23:29'),
(28, 'aaa', 'aaa', '2021-10-07 00:00:00', '2021-10-07 00:00:00', '#1d99ca', '#000000', '2021-10-20 15:48:21', '2021-10-20 15:48:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_10_18_080511_create_eventos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yosh Perez', 'elroller-@hotmail.com', NULL, 'rollerorco', NULL, '2021-10-19 05:14:34', '2021-10-19 05:14:34'),
(2, 'Yosh Perez', 'elrolle-@hotmail.com', NULL, '$2y$10$Nn5PP0pk0JEHU4kxctqcauxivcPTi0Rh8AbL.OKyIXqxSHkbz746.', 'V3Ja5DxWrUYv12joQELqMtqprgPg7ooDhq8J7yaFrTs88MRSmsPsaTPlET7T', '2021-10-19 06:13:32', '2021-10-19 06:13:32'),
(3, 'Yosh Perez', 'elroll-@hotmail.com', NULL, '$2y$10$iIvHQ.m0JJduhM8FaKRin./mx08OkFF1b5yX5A3FYT2M0JrnXo31u', NULL, '2021-10-20 13:47:35', '2021-10-20 13:47:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
