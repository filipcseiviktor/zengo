-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Jún 06. 12:18
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
(1, 'Pécs', 1, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(2, 'Kecskemét', 2, '2021-06-06 11:26:49', '2021-06-06 10:16:59'),
(3, 'Békéscsaba', 3, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(4, 'Miskolc', 4, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(5, 'Szeged', 5, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(6, 'Székesfehérvár', 6, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(7, 'Győr', 7, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(8, 'Debrecen', 8, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(9, 'Eger', 9, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(10, 'Szolnok', 10, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(11, 'Tatabánya', 11, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(12, 'Salgótarján', 12, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(13, 'Budapest', 13, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(14, 'Kaposvár', 14, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(15, 'Nyíregyháza', 15, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(16, 'Szekszárd', 16, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(17, 'Szombathely', 17, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(18, 'Veszprém', 18, '2021-06-06 11:26:49', '2021-06-06 11:26:49'),
(19, 'Zalaegerszeg', 19, '2021-06-06 11:26:49', '2021-06-06 11:26:49');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `counties`
--

CREATE TABLE `counties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `counties`
--

INSERT INTO `counties` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Baranya', 'images/baranya.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(2, 'Bács-Kiskun', 'images/bacskiskun.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(3, 'Békés', 'images/bekes.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(4, 'Borsod-Abaúj-Zemplén', 'images/borsod.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(5, 'Csongrád-Csanád', 'images/csongrad.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(6, 'Fejér', 'images/fejer.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(7, 'Győr-Moson-Sopron', 'images/gyormoson.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(8, 'Hajdú-Bihar', 'images/hajdubihar.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(9, 'Heves', 'images/heves.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(10, 'Jász-Nagykun-Szolnok', 'images/jasznagykun.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(11, 'Komárom-Esztergom', 'images/komarom.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(12, 'Nógrád', 'images/nograd.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(13, 'Pest', 'images/pest.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(14, 'Somogy', 'images/somogy.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(15, 'Szabolcs-Szatmár-Bereg', 'images/szabolcs.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(16, 'Tolna', 'images/tolna.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(17, 'Vas', 'images/vas.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(18, 'Veszprém', 'images/veszprem.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36'),
(19, 'Zala', 'images/zala.png', '2021-06-06 11:26:36', '2021-06-06 11:26:36');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_06_01_145030_create_counties_table', 1),
(8, '2021_06_01_145224_create_cities_table', 1);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
