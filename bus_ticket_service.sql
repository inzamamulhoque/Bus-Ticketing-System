-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 07:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_ticket_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `aminities`
--

CREATE TABLE `aminities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aminity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `passenger_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_no` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luggage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `passenger_name`, `age`, `gender`, `seat_no`, `phone`, `email`, `is_confirmed`, `order_number`, `luggage`, `price`, `trip_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Md Shorov Abedin', '24', 'Male', 3, '01888884333', 'shorov1952@gmail.com', 0, '462080192', '5', 1260, 1, '2023-02-08 10:24:38', '2023-02-08 10:24:38'),
(2, 2, 'Hridoy roy', '25', 'Male', 12, '01888888345', 'hridoy@gmail.com', 0, '997171990', '3', 820, 52, '2023-02-08 10:36:54', '2023-02-08 10:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_seats` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_type`, `plate_no`, `no_of_seats`, `image_url`, `status`, `operator_id`, `created_at`, `updated_at`) VALUES
(1, 'AC', 'BD-1234', 45, 'busImages/56343434car_1667540988.png', 'Active', 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(2, 'NON-AC', 'BD-1235', 45, 'busImages/56343434car_1667540988.png', 'Active', 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(3, 'AC', 'BD-2235', 45, 'busImages/56343434car_1667540988.png', 'Active', 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(4, 'NON-AC', 'BD-2234', 45, 'busImages/56343434car_1667540988.png', 'Active', 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(5, 'AC', 'BD-3234', 45, 'busImages/56343434car_1667540988.png', 'Active', 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(6, 'NON-AC', 'BD-3235', 45, 'busImages/56343434car_1667540988.png', 'Active', 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_25_192922_create_operators_table', 1),
(5, '2021_06_25_194230_create_buses_table', 1),
(6, '2021_06_25_195007_create_trips_table', 1),
(7, '2021_06_26_180323_create_seat_maps_table', 1),
(8, '2021_06_27_150725_create_tickets_table', 1),
(9, '2021_06_28_183601_create_aminities_table', 1),
(10, '2021_06_29_112200_create_routes_table', 1),
(11, '2021_07_10_185410_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `contact_person`, `phone`, `email`, `address`, `tin_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hanif', 'Kamal', '01777777777', 'support@hanif.com', 'Dhaka', '55555', 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(2, 'Star Line', 'Ikram', '01888888888', 'support@starline.com', 'Dhaka', '66666', 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(3, 'Northern Bus', 'Rakib', '01999999999', 'support@northern.com', 'Dhaka', '77777', 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `boarding_dropping` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `boarding_dropping`, `time`, `place`, `trip_id`, `created_at`, `updated_at`) VALUES
(1, 'Boarding', '12:04', 'Mirpur', 64, '2023-02-08 12:38:04', '2023-02-08 12:38:04'),
(2, 'Boarding', '16:00', 'Gabtoli', 27, '2023-02-08 12:38:33', '2023-02-08 12:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `seat_maps`
--

CREATE TABLE `seat_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seat_no` int(11) NOT NULL,
  `seat_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seat_maps`
--

INSERT INTO `seat_maps` (`id`, `seat_no`, `seat_value`, `created_at`, `updated_at`) VALUES
(1, 1, '1_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(2, 2, '1_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(3, 3, '2_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(4, 4, '2_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(5, 5, '2_5', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(6, 6, '3_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(7, 7, '3_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(8, 8, '1_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(9, 9, '3_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(10, 10, '3_5', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(11, 11, '4_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(12, 12, '4_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(13, 13, '4_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(14, 14, '4_5', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(15, 15, '5_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(16, 16, '5_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(17, 17, '5_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(18, 18, '5_5', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(19, 19, '6_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(20, 20, '6_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(21, 21, '6_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(22, 22, '6_5', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(23, 23, '7_1', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(24, 24, '7_2', '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(25, 25, '7_4', '2023-02-08 10:22:44', '2023-02-08 10:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passenger_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_no` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `ticket_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luggage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `travel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depart_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrive_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `available_seats_from` int(11) NOT NULL,
  `available_seats_upto` int(11) NOT NULL,
  `allowable_luggage` int(11) NOT NULL,
  `extra_luggage_fee` double NOT NULL,
  `total_trip_days_for` double NOT NULL DEFAULT 1,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `trip_no`, `travel_date`, `arrival_date`, `depart_from`, `arrive_at`, `departure_time`, `arrival_time`, `price`, `status`, `available_seats_from`, `available_seats_upto`, `allowable_luggage`, `extra_luggage_fee`, `total_trip_days_for`, `bus_id`, `created_at`, `updated_at`) VALUES
(1, '3333333', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(2, '3333334', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(3, '3333335', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(4, '3333336', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(5, '3333337', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(6, '3333338', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(7, '3333339', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(8, '3333340', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(9, '3333341', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(10, '3333342', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(11, '3333343', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(12, '3333344', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(13, '3333345', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(14, '3333346', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(15, '3333347', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'khulna', '10:00 AM', '6:00 PM', 1200, 1, 1, 45, 2, 20, 1, 1, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(16, '4444444', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(17, '4444445', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(18, '4444446', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(19, '4444447', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(20, '4444448', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(21, '4444449', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(22, '4444450', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(23, '4444451', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(24, '4444452', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(25, '4444453', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(26, '4444454', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(27, '4444455', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(28, '4444456', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(29, '4444457', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(30, '4444458', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'khulna', '11:00 AM', '7:00 PM', 800, 1, 1, 45, 2, 20, 1, 2, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(31, '5555555', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(32, '5555556', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(33, '5555557', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(34, '5555558', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(35, '5555559', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(36, '5555560', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(37, '5555561', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(38, '5555562', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(39, '5555563', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(40, '5555564', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(41, '5555565', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(42, '5555566', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(43, '5555567', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(44, '5555568', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(45, '5555569', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'Chittagong', '10:00 AM', '4:00 PM', 1250, 1, 1, 45, 2, 20, 1, 3, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(46, '6666666', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(47, '6666667', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(48, '6666668', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(49, '6666669', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(50, '6666670', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(51, '6666671', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(52, '6666672', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(53, '6666673', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(54, '6666674', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(55, '6666675', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(56, '6666676', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(57, '6666677', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(58, '6666678', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(59, '6666679', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(60, '6666680', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'Chittagong', '11:00 AM', '5:00 PM', 800, 1, 1, 45, 2, 20, 1, 4, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(61, '7777777', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(62, '7777778', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(63, '7777779', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(64, '7777780', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(65, '7777781', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(66, '7777782', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(67, '7777783', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(68, '7777784', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(69, '7777785', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(70, '7777786', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(71, '7777787', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(72, '7777788', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(73, '7777789', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(74, '7777790', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(75, '7777791', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'Rajshahi', '12:00 PM', '9:00 PM', 1250, 1, 1, 45, 2, 20, 1, 5, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(76, '8888888', '08-Feb-2023', '08-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(77, '8888889', '09-Feb-2023', '09-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(78, '8888890', '10-Feb-2023', '10-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(79, '8888891', '11-Feb-2023', '11-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(80, '8888892', '12-Feb-2023', '12-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(81, '8888893', '13-Feb-2023', '13-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(82, '8888894', '14-Feb-2023', '14-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(83, '8888895', '15-Feb-2023', '15-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(84, '8888896', '16-Feb-2023', '16-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(85, '8888897', '17-Feb-2023', '17-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(86, '8888898', '18-Feb-2023', '18-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(87, '8888899', '19-Feb-2023', '19-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(88, '8888900', '20-Feb-2023', '20-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(89, '8888901', '21-Feb-2023', '21-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45'),
(90, '8888902', '22-Feb-2023', '22-Feb-2023', 'Dhaka', 'Rajshahi', '1:00 PM', '10:00 PM', 800, 1, 1, 45, 2, 20, 1, 6, '2023-02-08 10:22:45', '2023-02-08 10:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `roles`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01857446931', 'admin', NULL, '$2y$10$gl1Htc8jP4jFGtgpnBNt1eSs4jsSjKIMJVKJVAbrgPrVolnDL2iJm', NULL, '2023-02-08 10:22:44', '2023-02-08 10:22:44'),
(2, 'Md Shorov Abedin', 'user@gmail.com', '01888888888', 'user', NULL, '$2y$10$BNuWci3U1fHwmMu.qvLZhOtL6pBT5qZ.C/BtXglXewVnsv0Gqm88G', NULL, '2023-02-08 10:22:44', '2023-02-08 10:44:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aminities`
--
ALTER TABLE `aminities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aminities_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buses_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operators_email_unique` (`email`),
  ADD UNIQUE KEY `operators_tin_no_unique` (`tin_no`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routes_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `seat_maps`
--
ALTER TABLE `seat_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aminities`
--
ALTER TABLE `aminities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seat_maps`
--
ALTER TABLE `seat_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aminities`
--
ALTER TABLE `aminities`
  ADD CONSTRAINT `aminities_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
