-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2025 at 08:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paw_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'suba3305', '1403aef93c1be5384b56189785bc016dfe687d4ab10aca1e9dcc1c8c3ff678f7');

-- --------------------------------------------------------

--
-- Table structure for table `adoption_requests`
--

CREATE TABLE `adoption_requests` (
  `id` int(11) NOT NULL,
  `pet_type` varchar(255) NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  `pet_age` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `reason` text NOT NULL,
  `status` enum('Pending','Approved','Rejected','Cancelled') DEFAULT 'Pending',
  `cancel_reason` text DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_requests`
--

INSERT INTO `adoption_requests` (`id`, `pet_type`, `pet_name`, `pet_age`, `full_name`, `email`, `phone`, `address`, `reason`, `status`, `cancel_reason`, `submission_date`) VALUES
(1, 'dog', 'Golden Retriever', 'puppy', 'John Doe', 'john.doe@example.com', '1234567890', '123 Elm Street, Springfield, IL', 'I have always loved dogs, and I am looking for a loyal companion.', 'Approved', NULL, '2025-03-14 17:05:45'),
(2, 'dog', 'Beagle', 'puppy', 'fdhgfffd', 'fdger@gmail.com', '2342356758', 'bfgjh', 'I love dogs and have the time to take care of a new puppy.', 'Pending', NULL, '2025-03-14 17:19:38'),
(3, 'cat', 'Persian Cat', 'adult', 'fdhgfffd', 'fdger@gmail.com', '2342356758', 'bfgjh', 'I want a cat as a companion. Persian cats are my favorite!', 'Approved', NULL, '2025-03-14 17:21:08'),
(4, 'cat', 'Maine Coon', 'kitten', 'mariappan', 'lakshmisuba586@gmail.com', '9342274965', '10 th murugar street , selam', 'I love pets', 'Cancelled', 'I dont want pet now', '2025-03-25 19:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `kitten_price` decimal(10,2) DEFAULT NULL,
  `adult_price` decimal(10,2) DEFAULT NULL,
  `senior_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `image`, `description`, `kitten_price`, `adult_price`, `senior_price`) VALUES
(2, 'Siamese Cat', 'img/ss.webp', 'Social, talkative, and playful.', 1800.00, 1300.00, 900.00),
(3, 'Maine Coon', 'img/mc.jpg', 'Large, friendly, and loyal.', 2500.00, 1700.00, 1200.00),
(4, 'Bengal Cat', 'img/bc.jpeg', 'Active, curious, and energetic.', 3000.00, 2200.00, 1500.00),
(5, 'Ragdoll Cat', 'img/rd.jpg', 'Loving, gentle, and calm.', 2400.00, 1700.00, 1100.00),
(6, 'British Shorthair', 'img/bs.jpeg', 'Calm, easygoing, and affectionate.', 1700.00, 1200.00, 800.00),
(7, 'Scottish Fold', 'img/sf.jpeg', 'Quiet, sweet, and loves attention.', 2000.00, 1500.00, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `dogs`
--

CREATE TABLE `dogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `puppy_price` int(11) NOT NULL,
  `adult_price` int(11) NOT NULL,
  `senior_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dogs`
--

INSERT INTO `dogs` (`id`, `name`, `image`, `description`, `puppy_price`, `adult_price`, `senior_price`) VALUES
(1, 'Golden Retriever', 'img/gr.jpg', 'Friendly, reliable, and trustworthy.', 500, 350, 200),
(2, 'Bulldog', 'img/bull.JPEG', 'Courageous, calm, and friendly.', 600, 400, 250),
(3, 'Labrador', 'img/lab.jpg', 'Friendly and outgoing.', 450, 300, 180),
(4, 'Beagle', 'img/bg.jpg', 'Curious, friendly, and merry.', 400, 280, 250),
(5, 'German Shepherd', 'img/gs.jpeg', 'Confident, courageous, and smart.', 1000, 500, 300),
(6, 'Poodle', 'img/pl.jpg', 'Intelligent, elegant, and active.', 650, 450, 280),
(7, 'Rottweiler', 'img/rottweiler.jpeg', 'Loyal, fearless, and confident.', 750, 550, 350),
(8, 'Chihuahua', 'img/cn.jpeg', 'Lively, brave, and confident.', 400, 350, 150),
(9, 'Dachshund', 'img/dd.jpg', 'Curious, courageous, and clever.', 500, 350, 200);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Great website! I love the pets section.', '2025-03-14 10:24:19'),
(2, 'priya', 'priya33@gmail.com', 'Impressed by your low price', '2025-03-14 10:26:07'),
(3, 'mariappan s', 'lakshmisuba586@gmail.com', 'you are Good', '2025-03-25 04:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `other_pets`
--

CREATE TABLE `other_pets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_pets`
--

INSERT INTO `other_pets` (`id`, `name`, `image`, `description`, `price`) VALUES
(1, 'Rabbit', 'img/rab.webp', 'Playful, social, and gentle.', 800.00),
(2, 'Parrot', 'img/par.jpg', 'Colorful, talkative, and intelligent.', 500.00),
(3, 'Guinea Pig', 'img/gp.jpeg', 'Loving, friendly, and easy to handle.', 1000.00),
(4, 'Hamster', 'img/ham2.webp', 'Curious, active, and low-maintenance.', 500.00),
(5, 'Turtle', 'img/tur.jpg', 'Slow-moving, peaceful, and long-lived.', 1200.00),
(6, 'Chinchilla', 'img/ch.jpg', 'Soft, active, and nocturnal.', 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `pet_name` varchar(255) DEFAULT NULL,
  `pet_type` enum('dog','cat','other') DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `pet_name`, `pet_type`, `breed`, `age`, `description`) VALUES
(1, 'Golden Retriever', 'dog', 'Golden Retriever', 2, 'Friendly, reliable, and trustworthy.'),
(2, 'Bulldog', 'dog', 'Bulldog', 3, 'Courageous, calm, and friendly.'),
(3, 'Labrador', 'dog', 'Labrador', 4, 'Friendly and outgoing.'),
(4, 'Beagle', 'dog', 'Beagle', 2, 'Curious, friendly, and merry.'),
(5, 'German Shepherd', 'dog', 'German Shepherd', 5, 'Confident, courageous, and smart.'),
(6, 'Poodle', 'dog', 'Poodle', 3, 'Intelligent, elegant, and active.'),
(7, 'Rottweiler', 'dog', 'Rottweiler', 4, 'Loyal, fearless, and confident.'),
(8, 'Chihuahua', 'dog', 'Chihuahua', 1, 'Lively, brave, and confident.'),
(9, 'Dachshund', 'dog', 'Dachshund', 2, 'Curious, courageous, and clever.'),
(10, 'Persian Cat', 'cat', 'Persian', 3, 'Gentle, affectionate, and calm.'),
(11, 'Siamese Cat', 'cat', 'Siamese', 2, 'Social, talkative, and playful.'),
(12, 'Maine Coon', 'cat', 'Maine Coon', 4, 'Large, friendly, and loyal.'),
(13, 'Bengal Cat', 'cat', 'Bengal', 3, 'Active, curious, and energetic.'),
(14, 'Ragdoll Cat', 'cat', 'Ragdoll', 2, 'Loving, gentle, and calm.'),
(15, 'British Shorthair', 'cat', 'British Shorthair', 4, 'Calm, easygoing, and affectionate.'),
(16, 'Scottish Fold', 'cat', 'Scottish Fold', 3, 'Quiet, sweet, and loves attention.'),
(17, 'Abyssinian Cat', 'cat', 'Abyssinian', 2, 'Curious, active, and playful.'),
(18, 'Sphynx Cat', 'cat', 'Sphynx', 2, 'Affectionate, energetic, and friendly.'),
(19, 'Rabbit', 'other', 'Rabbit', 1, 'Playful, social, and gentle.'),
(20, 'Parrot', 'other', 'Parrot', 2, 'Colorful, talkative, and intelligent.'),
(21, 'Guinea Pig', 'other', 'Guinea Pig', 1, 'Loving, friendly, and easy to handle.'),
(22, 'Hamster', 'other', 'Hamster', 1, 'Curious, active, and low-maintenance.'),
(23, 'Turtle', 'other', 'Turtle', 5, 'Slow-moving, peaceful, and long-lived.'),
(24, 'Chinchilla', 'other', 'Chinchilla', 2, 'Soft, active, and nocturnal.'),
(25, 'nandhy', 'cat', NULL, NULL, NULL),
(26, 'nandhy', 'cat', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pet_ages`
--

CREATE TABLE `pet_ages` (
  `id` int(11) NOT NULL,
  `pet_detail_id` int(11) DEFAULT NULL,
  `age_group` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_ages`
--

INSERT INTO `pet_ages` (`id`, `pet_detail_id`, `age_group`, `price`) VALUES
(1, 1, 'puppy', 500.00),
(2, 1, 'adult', 350.00),
(3, 1, 'senior', 200.00),
(4, 2, 'puppy', 600.00),
(5, 2, 'adult', 400.00),
(6, 2, 'senior', 250.00),
(7, 3, 'puppy', 450.00),
(8, 3, 'adult', 300.00),
(9, 3, 'senior', 180.00),
(10, 4, 'puppy', 400.00),
(11, 4, 'adult', 280.00),
(12, 4, 'senior', 150.00),
(13, 5, 'puppy', 700.00),
(14, 5, 'adult', 500.00),
(15, 5, 'senior', 300.00),
(16, 6, 'puppy', 650.00),
(17, 6, 'adult', 450.00),
(18, 6, 'senior', 280.00),
(19, 7, 'puppy', 750.00),
(20, 7, 'adult', 550.00),
(21, 7, 'senior', 350.00),
(22, 8, 'puppy', 400.00),
(23, 8, 'adult', 250.00),
(24, 8, 'senior', 150.00),
(25, 9, 'puppy', 500.00),
(26, 9, 'adult', 350.00),
(27, 9, 'senior', 200.00),
(28, 10, 'kitten', 300.00),
(29, 10, 'adult', 200.00),
(30, 10, 'senior', 100.00),
(31, 11, 'kitten', 350.00),
(32, 11, 'adult', 250.00),
(33, 11, 'senior', 150.00),
(34, 12, 'kitten', 400.00),
(35, 12, 'adult', 300.00),
(36, 12, 'senior', 180.00),
(37, 13, 'kitten', 450.00),
(38, 13, 'adult', 350.00),
(39, 13, 'senior', 220.00),
(40, 14, 'kitten', 500.00),
(41, 14, 'adult', 400.00),
(42, 14, 'senior', 250.00),
(43, 15, 'kitten', 550.00),
(44, 15, 'adult', 450.00),
(45, 15, 'senior', 300.00),
(46, 16, 'N/A', 100.00),
(47, 17, 'N/A', 50.00),
(48, 18, 'N/A', 80.00),
(49, 19, 'N/A', 30.00),
(50, 20, 'N/A', 120.00),
(51, 21, 'N/A', 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `pet_details`
--

CREATE TABLE `pet_details` (
  `id` int(11) NOT NULL,
  `pet_type_id` int(11) DEFAULT NULL,
  `pet_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_details`
--

INSERT INTO `pet_details` (`id`, `pet_type_id`, `pet_name`, `image`, `description`) VALUES
(1, 1, 'Labrador Retriever', 'img/lab.jpg', 'Friendly, active, and outgoing.'),
(2, 2, 'Golden Retriever', 'img/gr.jpg', 'Intelligent, friendly, and devoted.'),
(3, 3, 'German Shepherd', 'img/gs.jpeg', 'Confident, courageous, and intelligent.'),
(4, 4, 'Beagle', 'img/bg.jpg', 'Curious, friendly, and merry.'),
(5, 5, 'Bulldog', 'img/bull.JPEG', 'Calm, courageous, and affectionate.'),
(6, 6, 'Poodle', 'img/pl.jpg', 'Intelligent, elegant, and playful.'),
(7, 7, 'Boxer', 'img/bx3.jpg', 'Energetic, loyal, and fun-loving.'),
(8, 8, 'Dachshund', 'img/dd.jpg', 'Curious, brave, and lively.'),
(9, 9, 'Chihuahua', 'img/cn.jpeg', 'Loyal, alert, and charming.'),
(10, 2, 'Persian Cat', 'img/pc.jpg', 'Gentle, affectionate, and calm.'),
(11, 2, 'Siamese Cat', 'img/ss.webp', 'Social, talkative, and playful.'),
(12, 2, 'Maine Coon', 'img/mc.jpg', 'Large, friendly, and loyal.'),
(13, 2, 'Bengal Cat', 'img/bc.jpeg', 'Active, curious, and energetic.'),
(14, 2, 'Ragdoll Cat', 'img/rd.jpg', 'Loving, gentle, and calm.'),
(15, 2, 'British Shorthair', 'img/bs.jpeg', 'Calm, easygoing, and affectionate.'),
(16, 2, 'Scottish Fold', 'img/sf.jpeg', 'Quiet, sweet, and loves attention.'),
(17, 2, 'Abyssinian Cat', 'img/ac.jfif', 'Curious, active, and playful.'),
(18, 2, 'Sphynx Cat', 'img/sp.jpg', 'Affectionate, energetic, and friendly.'),
(19, 3, 'Rabbit', 'img/rab.webp', 'Playful, social, and gentle.'),
(20, 3, 'Parrot', 'img/par.jpg', 'Colorful, talkative, and intelligent.'),
(21, 3, 'Guinea Pig', 'img/gp.jpeg', 'Loving, friendly, and easy to handle.'),
(22, 3, 'Hamster', 'img/ham2.webp', 'Curious, active, and low-maintenance.'),
(23, 3, 'Turtle', 'img/tur.jpg', 'Slow-moving, peaceful, and long-lived.'),
(24, 3, 'Chinchilla', 'img/ch.jpg', 'Soft, active, and nocturnal.');

-- --------------------------------------------------------

--
-- Table structure for table `pet_types`
--

CREATE TABLE `pet_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_types`
--

INSERT INTO `pet_types` (`id`, `type`) VALUES
(1, 'dog'),
(2, 'cat'),
(3, 'other'),
(4, 'dog'),
(5, 'cat'),
(6, 'other'),
(7, 'dog'),
(8, 'cat'),
(9, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `created_at`) VALUES
(1, 'john_doe', '$2y$10$Edd4ZmFgXUz7xg3D2pYm3.q2YrZ2ocN9RrC3v5LlRLXGEobpUt9FG', '2025-03-14 10:16:21'),
(2, 'jane_smith', '$2y$10$k2YHQyE1rkKxUN9Tm7v7j4t.ZGf91j67aVdxO3q9i6oVZ09SvOpmW', '2025-03-14 10:16:21'),
(3, 'priya', '$2y$10$zJ1RxyqXaVxUlfN7mtPlTeJnjlB745w0rImXc9nP/HZORH6GYZ1LS', '2025-03-14 10:18:15'),
(4, 'priya34', '$2y$10$16gWAL0NpFzEmXs7NoLxZ.JntBfoCMF99J.NwivA0ACgWMNwiR1ue', '2025-03-18 21:04:13'),
(5, 'suba', '$2y$10$DvxNJQjpQ35Klhp9ZeGvmuiouIPfZqyzLOjpo48eCeLQDPYaUMvt.', '2025-03-19 01:10:00'),
(6, 'suba23', '$2y$10$L6B3sNzZNsyaaJG4o90R4O/TcBG7JJtecscAhVnu6I4I2W8mPbJJS', '2025-03-19 01:14:11'),
(7, 'suba12', '$2y$10$MPwPkpOYlqECTTpIBWYu6.BOI2zPCRR3ps3NajufsOEqVG8CFls.6', '2025-03-24 21:42:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dogs`
--
ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_pets`
--
ALTER TABLE `other_pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_ages`
--
ALTER TABLE `pet_ages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_detail_id` (`pet_detail_id`);

--
-- Indexes for table `pet_details`
--
ALTER TABLE `pet_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pet_type_id` (`pet_type_id`);

--
-- Indexes for table `pet_types`
--
ALTER TABLE `pet_types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dogs`
--
ALTER TABLE `dogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `other_pets`
--
ALTER TABLE `other_pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pet_ages`
--
ALTER TABLE `pet_ages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pet_details`
--
ALTER TABLE `pet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pet_types`
--
ALTER TABLE `pet_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pet_ages`
--
ALTER TABLE `pet_ages`
  ADD CONSTRAINT `pet_ages_ibfk_1` FOREIGN KEY (`pet_detail_id`) REFERENCES `pet_details` (`id`);

--
-- Constraints for table `pet_details`
--
ALTER TABLE `pet_details`
  ADD CONSTRAINT `pet_details_ibfk_1` FOREIGN KEY (`pet_type_id`) REFERENCES `pet_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
