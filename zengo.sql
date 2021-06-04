-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Jún 04. 15:37
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zengo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `cities`
--

INSERT INTO `cities` (`id`, `name`, `county_id`, `created_at`, `updated_at`) VALUES
(1, 'Pécs', 1, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(2, 'Kecskemét', 2, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(3, 'Békéscsaba', 3, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(4, 'Miskolc', 4, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(5, 'Szeged', 5, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(6, 'Székesfehérvár', 6, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(7, 'Győr', 7, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(8, 'Debrecen', 8, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(9, 'Eger', 9, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(10, 'Szolnok', 10, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(11, 'Tatabánya', 11, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(12, 'Salgótarján', 12, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(13, 'Budapest', 13, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(14, 'Kaposvár', 14, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(15, 'Nyíregyháza', 15, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(16, 'Szekszárd', 16, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(17, 'Szombathely', 17, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(18, 'Veszprém', 18, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(19, 'Zalaegerszeg', 19, '2021-06-04 15:30:45', '2021-06-04 15:30:45'),
(20, 'Mohács', 1, '2021-06-04 13:31:08', '2021-06-04 13:31:08'),
(21, 'Komló', 1, '2021-06-04 13:31:14', '2021-06-04 13:31:14'),
(22, 'Kiskunhalas', 2, '2021-06-04 13:31:46', '2021-06-04 13:31:46'),
(23, 'Kalocsa', 2, '2021-06-04 13:31:49', '2021-06-04 13:31:49'),
(24, 'Szarvas', 3, '2021-06-04 13:32:06', '2021-06-04 13:32:06'),
(25, 'Gyula', 3, '2021-06-04 13:32:09', '2021-06-04 13:32:09'),
(26, 'Orosháza', 3, '2021-06-04 13:32:11', '2021-06-04 13:32:11'),
(27, 'Kazincbarcika', 4, '2021-06-04 13:32:28', '2021-06-04 13:32:28'),
(28, 'Mezőkövesd', 4, '2021-06-04 13:32:32', '2021-06-04 13:32:32'),
(29, 'Szentes', 5, '2021-06-04 13:32:46', '2021-06-04 13:32:46'),
(31, 'Kistelek', 5, '2021-06-04 13:33:10', '2021-06-04 13:33:10'),
(32, 'Mór', 6, '2021-06-04 13:33:24', '2021-06-04 13:33:24'),
(33, 'Bicske', 6, '2021-06-04 13:33:27', '2021-06-04 13:33:27'),
(34, 'Sopron', 7, '2021-06-04 13:33:40', '2021-06-04 13:33:40'),
(35, 'Kapuvár', 7, '2021-06-04 13:33:44', '2021-06-04 13:33:44'),
(36, 'Hajdúszoboszló', 8, '2021-06-04 13:34:16', '2021-06-04 13:34:16'),
(37, 'Keszthely', 19, '2021-06-04 13:34:43', '2021-06-04 13:34:43'),
(38, 'Hévíz', 19, '2021-06-04 13:34:45', '2021-06-04 13:34:45'),
(39, 'Ajka', 18, '2021-06-04 13:34:58', '2021-06-04 13:34:58'),
(40, 'Sümeg', 18, '2021-06-04 13:35:01', '2021-06-04 13:35:01'),
(41, 'Szombathely', 17, '2021-06-04 13:35:13', '2021-06-04 13:35:13'),
(42, 'Sárvár', 17, '2021-06-04 13:35:15', '2021-06-04 13:35:15'),
(43, 'Bonyhád', 16, '2021-06-04 13:35:25', '2021-06-04 13:35:25'),
(44, 'Paks', 16, '2021-06-04 13:35:27', '2021-06-04 13:35:27'),
(45, 'Mátészalka', 15, '2021-06-04 13:35:38', '2021-06-04 13:35:38'),
(46, 'Kisvárda', 15, '2021-06-04 13:35:39', '2021-06-04 13:35:39'),
(47, 'Marcall', 14, '2021-06-04 13:35:56', '2021-06-04 13:35:56'),
(48, 'Siófok', 14, '2021-06-04 13:35:57', '2021-06-04 13:35:57'),
(49, 'Cegléd', 13, '2021-06-04 13:36:05', '2021-06-04 13:36:05'),
(50, 'Albertirsa', 13, '2021-06-04 13:36:09', '2021-06-04 13:36:09'),
(51, 'Szécsény', 12, '2021-06-04 13:36:19', '2021-06-04 13:36:19'),
(52, 'Balassagyarmat', 12, '2021-06-04 13:36:25', '2021-06-04 13:36:25'),
(53, 'Tata', 11, '2021-06-04 13:36:35', '2021-06-04 13:36:35'),
(54, 'Ács', 11, '2021-06-04 13:36:37', '2021-06-04 13:36:37'),
(55, 'Jászberény', 10, '2021-06-04 13:36:48', '2021-06-04 13:36:48'),
(56, 'Mezőtúr', 10, '2021-06-04 13:36:50', '2021-06-04 13:36:50'),
(57, 'Hatvan', 9, '2021-06-04 13:37:03', '2021-06-04 13:37:03'),
(58, 'Heves', 9, '2021-06-04 13:37:04', '2021-06-04 13:37:04'),
(59, 'Püspökladány', 8, '2021-06-04 13:37:18', '2021-06-04 13:37:18');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `counties`
--

CREATE TABLE `counties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `counties`
--

INSERT INTO `counties` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baranya', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(2, 'Bács-Kiskun', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(3, 'Békés', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(4, 'Borsod-Abaúj-Zemplén', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(5, 'Csongrád-Csanád', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(6, 'Fejér', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(7, 'Győr-Moson-Sopron', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(8, 'Hajdú-Bihar', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(9, 'Heves', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(10, 'Jász-Nagykun-Szolnok', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(11, 'Komárom-Esztergom', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(12, 'Nógrád', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(13, 'Pest', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(14, 'Somogy', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(15, 'Szabolcs-Szatmár-Bereg', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(16, 'Tolna', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(17, 'Vas', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(18, 'Veszprém', '2021-06-04 15:30:37', '2021-06-04 15:30:37'),
(19, 'Zala', '2021-06-04 15:30:37', '2021-06-04 15:30:37');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_06_01_145030_create_counties_table', 1),
(4, '2021_06_01_145224_create_cities_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
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
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_county_id_foreign` (`county_id`);

--
-- A tábla indexei `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT a táblához `counties`
--
ALTER TABLE `counties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_county_id_foreign` FOREIGN KEY (`county_id`) REFERENCES `counties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
