-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 12:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be20_cr6_bigevents_dejankostandinovic`
--
CREATE DATABASE IF NOT EXISTS `be20_cr6_bigevents_dejankostandinovic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be20_cr6_bigevents_dejankostandinovic`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231208105802', '2023-12-08 11:58:30', 12),
('DoctrineMigrations\\Version20231209170231', '2023-12-09 18:02:45', 20),
('DoctrineMigrations\\Version20231209174545', '2023-12-09 18:45:52', 4);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `description` longtext NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `start_date_time`, `description`, `capacity`, `contact_email`, `contact_phone_number`, `address`, `zip_code`, `city`, `url`, `type`, `picture`) VALUES
(5, 'Tech Talk', '2023-02-15 18:00:00', 'Join us for a series of tech talks featuring industry experts discussing the latest trends in artificial intelligence, blockchain, and cybersecurity.', 100, 'techtalk@example.com', '(555) 123-4567', 'Innovation Hub, 123 Tech Avenue', '56789', 'Techville', NULL, 'Educational/Technology', 'pexels-matheus-bertelli-3321793-657597ff4ed98.jpg'),
(6, 'Jazz Under the Stars', '2023-03-10 19:30:00', 'Enjoy an evening of live jazz music in the open air. Bring your blankets and picnic baskets for a relaxing night under the stars.', 200, 'jazznight@example.com', '(555) 234-5678', 'City Park Amphitheater', '67890', 'Harmonyville', NULL, 'Entertainment/Music', 'jazz-under-the-stars-event-6574b9e6160f6.jpg'),
(7, 'Fitness Bootcamp', '2024-04-05 09:00:00', 'Get ready to sweat! Join our intensive fitness bootcamp led by certified trainers. Suitable for all fitness levels.', 50, 'fitnessbootcamp@example.com', '(555) 345-6789', 'FitZone Gym, 456 Fitness Street', '12345', 'Healthville', NULL, 'Fitness/Health', 'pexels-max-rahubovskiy-7031705-6574bf6451dcb.jpg'),
(8, 'Culinary Delights Workshop', '2023-05-20 16:00:00', 'Explore the world of culinary arts with hands-on workshops. Learn to prepare delicious dishes from renowned chefs.', 80, 'culinaryworkshop@example.com', '(555) 456-7890', 'Gourmet Kitchen Studio, 789 Foodie Lane', '56789', 'Flavortown', NULL, 'Culinary/Workshop', 'pexels-bulat-khamitov-4563687-6574c216a15e9.jpg'),
(9, 'Movie Marathon Night', '2023-08-03 20:00:00', 'Grab your popcorn and enjoy a night of back-to-back blockbuster movies under the starry sky.', 100, 'moviemarathon@example.com', '(555) 789-0123', 'Open Air Cinema, 789 Movie Lane', '45678', 'Cinemaville', NULL, 'Entertainment/Movie Night', 'pexels-tima-miroshnichenko-7991579-6574c32246cc0.jpg'),
(10, 'Charity 5K Run', '2023-09-12 07:00:00', 'Lace up your running shoes for a charitable cause! Join the community in a 5K run to raise funds for local charities.', 200, 'charityrun@example.com', '(555) 890-1234', 'Community Park, 123 Charity Street', '56789', 'Compassion City', NULL, 'Charity/Run', 'pexels-run-ffwpu-2168292-6574c400d98dc.jpg'),
(11, 'Tech Innovators Expo', '2023-11-10 09:00:00', 'Dive into the world of cutting-edge technology at the Tech Innovators Expo. Discover the latest gadgets, innovations, and interactive displays from local tech enthusiasts and entrepreneurs. Whether you\'re a tech enthusiast or a curious mind, this expo is your gateway to the future.', 500, 'techexpo@example.com', '(555) 789-0123', 'Innovation Center, 789 Tech Avenue', '67890', 'Techtopia', NULL, 'Technology and Innovation Expo', 'pexels-bruno-bueno-3907022-6574c63221bfa.jpg'),
(12, 'Concert', '2023-08-20 19:30:00', 'Join us under the stars as we bring together a lineup of incredible artists and bands spanning various genres. From indie to rock, pop to electronic beats, this concert promises an eclectic musical journey for music lovers of all tastes.', 600, 'stellarsounds@example.com', '(555) 456-7890', 'Starlight Arena, 567 Harmony Blvd', '34567', 'Melodyville', NULL, 'Music Concert', 'pexels-wendy-wei-1190297-6574c6c2aec88.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
