-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 05 2021 г., 04:07
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hospital`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 4, '2021-09-05', '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(2, 5, '2021-09-06', '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(3, 7, '2021-09-07', '2021-09-04 21:06:18', '2021-09-04 21:06:18');

-- --------------------------------------------------------

--
-- Структура таблицы `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `doctor_id`, `time`, `status`, `created_at`, `updated_at`, `date`) VALUES
(1, 14, 4, '13:20', 0, '2021-09-05 07:46:46', '2021-09-05 07:46:46', '2021-09-05'),
(2, 15, 4, '12:40', 0, '2021-09-05 07:53:43', '2021-09-05 07:53:43', '2021-09-05');

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Кардиолог', '2021-09-04 20:26:20', '2021-09-04 20:26:20'),
(2, 'Терапевт', '2021-09-04 20:26:37', '2021-09-04 20:26:37'),
(3, 'Офтальмолог', '2021-09-04 20:27:07', '2021-09-04 20:27:07'),
(4, 'Онколог', '2021-09-04 20:27:14', '2021-09-04 20:27:14'),
(5, 'Педиатр', '2021-09-04 20:27:20', '2021-09-04 20:27:20'),
(6, 'Психолог', '2021-09-04 20:27:34', '2021-09-04 20:27:34'),
(7, 'Хирург', '2021-09-04 20:27:54', '2021-09-04 20:27:54'),
(8, 'Аллерголог', '2021-09-04 20:28:09', '2021-09-04 20:28:09'),
(9, 'Пульмонолог', '2021-09-04 20:28:25', '2021-09-04 20:28:25');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_04_203100_create_roles_table', 1),
(5, '2021_08_04_203931_add_gender_to_users_table', 2),
(6, '2021_08_10_191429_create_appointments_table', 3),
(7, '2021_08_11_181345_create_times_table', 3),
(8, '2021_08_16_205529_create_bookings_table', 4),
(9, '2021_08_16_213348_add_date_to_bookings_table', 5),
(10, '2021_08_23_213439_create_prescriptions_table', 6),
(11, '2021_09_02_195725_create_departments_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_disease` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedure_to_use_medicine` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'doctor', '2021-08-04 17:52:44', '2021-08-04 17:52:44'),
(2, 'admin', '2021-08-04 17:52:44', '2021-08-04 17:52:44'),
(3, 'patient', '2021-08-04 17:52:44', '2021-08-04 17:52:44');

-- --------------------------------------------------------

--
-- Структура таблицы `times`
--

CREATE TABLE `times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `times`
--

INSERT INTO `times` (`id`, `appointment_id`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '8:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(2, 1, '8:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(3, 1, '8:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(4, 1, '9:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(5, 1, '9:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(6, 1, '10:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(7, 1, '10:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(8, 1, '11:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(9, 1, '11:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(10, 1, '11:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(11, 1, '12:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(12, 1, '12:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(13, 1, '12:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(14, 1, '13:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(15, 1, '13:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(16, 1, '13:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(17, 1, '14:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(18, 1, '14:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(19, 1, '14:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(20, 1, '15:00', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(21, 1, '15:20', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(22, 1, '15:40', 0, '2021-09-04 21:04:52', '2021-09-04 21:04:52'),
(23, 1, '16:00', 0, '2021-09-04 21:04:53', '2021-09-04 21:04:53'),
(24, 1, '16:20', 0, '2021-09-04 21:04:53', '2021-09-04 21:04:53'),
(25, 1, '16:40', 0, '2021-09-04 21:04:53', '2021-09-04 21:04:53'),
(26, 2, '8:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(27, 2, '9:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(28, 2, '9:20', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(29, 2, '10:20', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(30, 2, '11:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(31, 2, '12:20', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(32, 2, '12:40', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(33, 2, '13:40', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(34, 2, '15:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(35, 2, '17:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(36, 2, '18:00', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(37, 2, '18:20', 0, '2021-09-04 21:05:36', '2021-09-04 21:05:36'),
(38, 3, '14:00', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(39, 3, '14:20', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(40, 3, '14:40', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(41, 3, '15:00', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(42, 3, '15:20', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(43, 3, '15:40', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(44, 3, '16:00', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(45, 3, '16:20', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18'),
(46, 3, '16:40', 0, '2021-09-04 21:06:18', '2021-09-04 21:06:18');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `address`, `phone_number`, `department`, `image`, `education`, `description`, `remember_token`, `created_at`, `updated_at`, `gender`) VALUES
(2, 'Админ', 'admin@mail.ru', NULL, '$2y$10$lg5tnULQzmwzENHjSCCKruWOXD61HUek3Df3hzPGk3.FYcIbO38dO', 2, 'Чистопольская д.25', '+7999999999', 'Кардиолог', 'n7QntarPE1e9Y7m5YfncT0WyG7rNGpg9VQmPfpwK.png', 'Высшее', 'Админ', NULL, '2021-09-04 20:49:41', '2021-09-04 20:49:41', 'Мужской'),
(3, 'Бершова Лилия Александровна', 'doctor1@mail.ru', NULL, '$2y$10$eWbDuuJGlwQzPbEHzA2Q.eLdTIboLjqBvZNr8s/x.8K7HKgmjvl/e', 1, 'Чистопольская д.25', '+7999999999', 'Кардиолог', 'nwTvU04KilJelXh6jI2VHywe4X268h9ipcS5KVKt.png', 'Высшее', 'Стаж: 1 год', NULL, '2021-09-04 20:52:21', '2021-09-04 20:52:21', 'Женский'),
(4, 'Гребнев Алексей Арсениевич', 'doctor2@mail.ru', NULL, '$2y$10$PGH5nOywxzjz.p.tSZuTsedYIJDMDWd7wW.jPjwnREXA0KALzys7.', 1, 'Чистопольская д.25', '+7999999999', 'Терапевт', 'FA9nJcMSKQ0N9KiUCOyKVV811l2HobdllN7N79Jf.png', 'Высшее', 'Стаж: 2 года', NULL, '2021-09-04 20:53:18', '2021-09-04 20:53:18', 'Мужской'),
(5, 'Шамило Виссарион Проклович', 'doctor3@mail.ru', NULL, '$2y$10$/dP60Qpr1Aa/8HhIIpConODeyV/fi./q9Hhb8cTqWEbBsy4ELApIq', 1, 'Чистопольская д.25', '+7999999999', 'Офтальмолог', 'z9t1C55KBctS0lBqHygcNsiLITWSTuxOCSeh0jjS.png', 'Высшее', 'Стаж: 10 лет', NULL, '2021-09-04 20:54:08', '2021-09-04 20:54:08', 'Мужской'),
(6, 'Шамило Виссарион Проклович', 'doctor4@mail.ru', NULL, '$2y$10$p2.OnLq9EhS1YmgWP492euoEnoLnJYCnQO4vsF9UXQTbHoUl6A4BO', 1, 'Чистопольская д.25', '+7999999999', 'Офтальмолог', 'wecoe6SR0R8rT7J1k9zgNo76zUimoRj8esrLr6JR.png', 'Высшее', 'Стаж: 10 лет', NULL, '2021-09-04 20:54:27', '2021-09-04 20:54:27', 'Мужской'),
(7, 'Суходолин Порфирий Демьянович', 'doctor5@mail.ru', NULL, '$2y$10$j5sVa8u5eIC1netwsmeWn.rnyDtbH2bLBy29AyhjdFO.AgXF.7fh.', 1, 'Чистопольская д.25', '+7999999999', 'Онколог', 'kw4G9Wwr3Zb2hN9i9t5BCE4gKtpnQlfmZ9oUlVyz.png', 'Высшее', 'Стаж: 12 лет', NULL, '2021-09-04 20:55:19', '2021-09-04 20:55:19', 'Мужской'),
(8, 'Новокшонова Анисья Иосифовна', 'doctor6@mail.ru', NULL, '$2y$10$W63xMpNCN4QAIgQ1NOfuUeNN8Ly.Q6oNYBQsTxWV3ohm0LDnHfAKO', 1, 'Чистопольская д.25', '+7999999999', 'Педиатр', 'tujojV88N0eXpceeqOnqBrEgHV1UBJXJkT0cEyNN.png', 'Среднее профессиональное', 'Стаж: 1 год', NULL, '2021-09-04 20:56:36', '2021-09-04 20:57:10', 'Женский'),
(9, 'Астафьева Эльвира Алексеевна', 'doctor7@mail.ru', NULL, '$2y$10$unKO6UuXHnmiobUNezQ7Q.zFmF/yQhBpRWjR8BW.4QFHrgsZRYNZu', 1, 'Чистопольская д.25', '+7999999999', 'Психолог', 'Iak7GzmQmSKxPiHXe84IfHQkTVmweIDjRY5ikQ5D.png', 'Среднее профессиональное', 'Стаж: 3 года', NULL, '2021-09-04 20:58:27', '2021-09-04 20:58:27', 'Женский'),
(10, 'Беляев Вячеслав Сократович', 'doctor8@mail.ru', NULL, '$2y$10$h0QNPzlCh2qnbpDk.UT2yOKIq5eG6H40bPdW6X3Cozd.iOkYU2sy6', 1, 'Чистопольская д.25', '+7999999999', 'Аллерголог', 'Q9wvDDbcTxg8bJ4KQGeFQDbHPYJiEzEfXgaehX92.png', 'Высшее', 'Стаж: 16 лет', NULL, '2021-09-04 20:59:06', '2021-09-04 20:59:06', 'Мужской'),
(11, 'Сочеванов Семен Евлампиевич', 'doctor9@mail.ru', NULL, '$2y$10$ddjHDFrYD5yr8JyZ5jAtuOUfXdIjbFVHSCzuC/4cr9cDHe.pNpohW', 1, 'Чистопольская д.25', '+7999999999', 'Хирург', '90R0iDEi9Q8iCecrqEvw1YTsXBo8Jtyz8I3lRrqn.png', 'Высшее', 'Стаж: 20 лет', NULL, '2021-09-04 21:00:18', '2021-09-04 21:00:18', 'Мужской'),
(12, 'Сомкина Анисья Кузьмевна', 'doctor11@mail.ru', NULL, '$2y$10$yVK9txnqQJ5IK96nANTAHOlhKS.V1zsGYdBx5ysa71Zd39lBygHAa', 1, 'Чистопольская д.25', '+7999999999', 'Кардиолог', 'GKtfdZD8xRfGbepHpfbCW3eezxZ2IQJXJTgSeLFG.png', 'Среднее профессиональное', 'Стаж: 12 лет', NULL, '2021-09-04 21:01:02', '2021-09-04 21:01:02', 'Женский'),
(13, 'Брагин Адриан Проклович', 'doctor12@mail.ru', NULL, '$2y$10$y0aVV6dGAo79lVVTLtakU.Nq5afqp1LNG76R.Xajf43X0mIFxI6F.', 1, 'Чистопольская д.25', '+7999999999', 'Онколог', 'ZRCD4ZtYe2Cl0mC9weH2Q4yMWqixBxsHvZ3wXrsG.png', 'Высшее', 'Стаж: 2 года', NULL, '2021-09-04 21:01:43', '2021-09-04 21:01:43', 'Мужской'),
(15, 'Тестов Тест Тестович', 'patient03@yandex.ru', NULL, '$2y$10$bZDabubSXX6HVWNYU6WgV.0eOG2ROYUVkTQ9o7.xunSmGv27syk/e', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-04 21:50:57', '2021-09-04 21:50:57', 'male');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
