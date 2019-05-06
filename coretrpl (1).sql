-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2019 at 10:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coretrpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(3) COLLATE utf8_bin NOT NULL,
  `status` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `product_id`, `quantity`, `size`, `status`) VALUES
(2, 'username', 13, 3, 's', 'BELUM DIAMBIL'),
(3, 'username', 14, 4, 'm', 'BELUM DIKEMBALIKAN'),
(5, 'username', 17, 4, 'x', 'SUKSES'),
(9, 'username', 14, 12, 's', 'BELUM DIAMBIL'),
(10, 'ganteng', 14, 2, 's', 'CART'),
(11, 'username', 19, 99, 'xl', 'SUKSES'),
(12, 'username', 20, 4, 'm', 'BELUM DIKEMBALIKAN'),
(15, 'ardp.rian', 14, 1, 's', 'SUKSES'),
(16, 'username', 14, 1, 's', 'BELUM DIKEMBALIKAN'),
(17, 'username', 14, 2147483647, 'xl', 'BELUM DIAMBIL'),
(18, 'username', 14, 2, 'm', 'CART'),
(19, 'ardp.service', 14, 1, 's', 'CART'),
(20, 'username', 15, 1, 's', 'SUKSES'),
(21, 'username', 14, 1000, 's', 'BELUM DIAMBIL');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(4) NOT NULL,
  `product_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `product_bio` text COLLATE utf8_bin NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_quantity_s` int(4) NOT NULL,
  `product_quantity_m` int(4) NOT NULL,
  `product_quantity_l` int(4) NOT NULL,
  `product_quantity_xl` int(4) NOT NULL,
  `image` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_bio`, `product_price`, `product_quantity_s`, `product_quantity_m`, `product_quantity_l`, `product_quantity_xl`, `image`) VALUES
(12, 'Gayo Kulo (ACEH)', 'Sepasang pakaian pengantin', 900000, 2, 2, 2, 2, '5ccaac5aa45e5.jpg'),
(13, 'LOMBOK2', 'Pakaian adat lombok', 1000000, 3, 4, 3, 2, '5ccaacf9995c7.jpg'),
(14, 'LOMBOK', 'Baju adat lombok', 2000000, 3, 4, 3, 2, '5ccaad7ae287d.jpg'),
(15, 'BANJAR', 'Baju pengantin banjar', 1500000, 3, 3, 4, 5, '5ccaade0e62ff.jpg'),
(16, 'Minang', 'Baju minang', 2000000, 7, 9, 3, 4, '5ccabfe01de6d.jpg'),
(17, 'Jawa', 'Baju pengantin jawa', 4000000, 3, 4, 5, 4, '5ccac0ff9aa3a.jpg'),
(18, 'JAWA2', 'Baju pengantin adat jawa', 4000000, 3, 2, 4, 5, '5ccaced52e4f6.jpg'),
(19, 'JAWA3', 'BAJU JAWA', 900000, 3, 3, 2, 4, '5ccada7dc6c5f.jpg'),
(20, 'BATAK', 'Baju pengantin batak', 4354553, 4, 3, 5, 3, '5ccadfc7d544e.jpg'),
(21, 'CONTOH', 'CONTOH', 782756, 3, 4, 4, 4, '5ccfa44becd01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `nomorhp` int(20) NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `nomorhp`, `alamat`) VALUES
(2, 'user1', 'user1@email.com', '$2y$10$pwiunEog5AuZnZEKqiIpSOjq/k960Ro/jcWwCkEok7D2L0KoYTVey', 1234, 'Dramaga'),
(4, 'user3', 'ardp.rian@gmail.com', '$2y$10$BZYn/r06eDrnglk7RgzhSOzXO2hBdwEc6BaQ58XqaM.JLWBpcyfcC', 897, 'Dramaga'),
(5, 'username', 'user1@email.com', '$2y$10$K1vtryudrs9GscauCLXdXeUBfNn7dWofA2AWNXJvVVPXSdBQJYfpa', 6776, 'Dramaga'),
(7, 'ganteng', 'ganteng@gmail.com', '$2y$10$L6CMFQ6K2vhuw4c7Foy4O.nz5jMflwYr96qcbOmUxAUuNEo100g.S', 8564321, 'DC'),
(8, 'ardp.rian', 'rianap@email.com', '$2y$10$G.tqSpGOti091yJigv4B4OCnvvZbkOqmV4WPV0n.At88tsskeCZ7m', 897831738, 'Dramaga'),
(9, 'ardp.service', 'ardp.service@email.com', '$2y$10$185JW8Dy3DAqJcAEhsqxpeNdel1bPPWawEpLePa.L/7I.oPq9yxRy', 2147483647, 'Dramaga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`username`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
