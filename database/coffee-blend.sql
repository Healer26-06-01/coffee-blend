-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2023 lúc 05:26 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `coffee-blend`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$UgI.dRzxNqmrUBrZRa/5YOGgPpPd70ffFk/Mn.WRXQRRe2koS0zlu', '2023-12-30 09:57:31'),
(2, 'admin2', 'admin2@gmail.com', '$2y$10$.WwkgZA3lG8sPMlTFtVdm.0tJH.Rnd.1H9H1EQajPxDD0wbAdBnc2', '2023-12-30 10:53:13'),
(3, 'admin3', 'admin3@gmail.com', '$2y$10$AyHBwJoHkCyDXMtT4d/ocuO6DERGXwDftZ6JQathuQ68cRiCcLyuW', '2023-12-30 11:44:03'),
(4, 'admin4', 'admin4@gmail.com', '$2y$10$sb4JzqkdS7ZUDgOR4zTzA.M6dOzUodI7Jz.AlTNZEdTKfD/TEx1GK', '2023-12-30 11:44:52'),
(5, 'admin4', 'admin4@gmail.com', '$2y$10$o7lNl2xr2e4Cl3IC7fpUH.EedFtVuhKlGzMATB/Qr8TCOxS1yGAKq', '2023-12-30 11:45:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Pending',
  `user_id` int(7) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `first_name`, `last_name`, `date`, `time`, `phone`, `message`, `status`, `user_id`, `created_at`) VALUES
(1, 'Phan', 'Hung', '12/30/2023', '12:00am', '0366822535', 'hi', 'Pending', 1, '2023-12-28 12:54:04'),
(3, 'Phan', 'Hung', '12/30/2023', '12:00am', '0366822535', 'hi', 'Done', 1, '2023-12-28 12:54:04'),
(4, 'Phan', 'Hung', '12/30/2023', '12:00am', '0366822535', 'hi', 'Pending', 1, '2023-12-28 12:54:04'),
(5, 'Phan', 'Hung', '12/30/2023', '12:00am', '0366822535', 'hi', 'Pending', 1, '2023-12-28 12:54:04'),
(6, 'Phan', 'Hung', '12/30/2023', '12:00am', '0366822535', 'hi', 'Done', 1, '2023-12-28 12:54:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(10) NOT NULL,
  `pro_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `street_address` varchar(200) NOT NULL,
  `town` varchar(200) NOT NULL,
  `zip_code` int(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` varchar(200) NOT NULL,
  `total_price` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `state`, `street_address`, `town`, `zip_code`, `phone`, `email_address`, `user_id`, `status`, `total_price`, `created_at`) VALUES
(15, 'Phan', 'Hung', 'France', '69 an phu dong', 'Tiền Giang', 100000, '0366822535', 'phanquochung19q@gmail.com', 1, 'Delivered', 20, '2023-12-29 16:37:11'),
(16, 'Phan', 'Hung', 'France', '69 an phu dong', 'Tiền Giang', 100000, '0366822535', 'phanquochung19q@gmail.com', 1, 'Delivered', 20, '2023-12-30 16:37:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `type`, `created_at`) VALUES
(1, 'Coffee Capuccino', 'menu-1.jpg', 'A small river named Duden flows by their place and supplies', '6', 'drink', '2023-12-28 13:16:33'),
(2, 'Ice Coffee', 'menu-2.jpg', 'A small river named Duden flows by their place and supplies', '7', 'drink', '2023-12-28 13:16:33'),
(3, 'Hot Cake Honey', 'dessert-1.jpg', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.', '3', 'dessert', '2023-12-29 20:04:35'),
(4, 'Hot Cake Honey', 'dessert-2.jpg', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.', '3', 'dessert', '2023-12-29 20:04:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) NOT NULL,
  `review` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `username`, `created_at`) VALUES
(4, 'hi', 'healer2662001', '2023-12-29 22:28:09'),
(5, 'hi', 'healer2662001', '2023-12-29 22:28:20'),
(6, 'hi', 'healer2662001', '2023-12-29 22:28:46'),
(7, 'hi', 'healer2662001', '2023-12-29 22:28:49'),
(8, 'hi', 'healer2662001', '2023-12-29 22:29:05'),
(9, 'hi', 'healer2662001', '2023-12-29 22:29:55'),
(10, 'hi', 'healer2662001', '2023-12-29 22:30:39'),
(11, 'hi', 'healer2662001', '2023-12-29 22:31:00'),
(12, 'hi', 'healer2662001', '2023-12-29 22:33:06'),
(14, 'hello', 'healer2662001', '2023-12-29 22:39:15'),
(15, 'hello', 'healer2662001', '2023-12-29 22:44:40'),
(16, 'hello', 'healer2662001', '2023-12-29 22:44:50'),
(17, 'hello', 'healer2662001', '2023-12-29 22:45:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'healer2662001', 'healer@gmail.com', '$2y$10$UgI.dRzxNqmrUBrZRa/5YOGgPpPd70ffFk/Mn.WRXQRRe2koS0zlu', '2023-12-27 13:38:21');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
