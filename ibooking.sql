-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 01:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_agent`
--

CREATE TABLE `gmz_agent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_address` varchar(191) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `video` varchar(191) DEFAULT NULL,
  `post_type` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_agent`
--

INSERT INTO `gmz_agent` (`id`, `post_title`, `post_content`, `location_address`, `thumbnail_id`, `gallery`, `rating`, `is_featured`, `video`, `post_type`, `author`, `status`, `created_at`, `updated_at`) VALUES
(1, '[:en]Aurora[:vi]New agent 1621934632[:ja]New agent 1621934632[:]', '[:en][:vi][:ja][:]', NULL, '208', NULL, NULL, '0', NULL, 'beauty', 1, 'publish', '2021-05-25 02:23:52', '2021-05-25 02:30:22'),
(2, '[:en]Bernice[:vi]New agent 1621935037[:ja]New agent 1621935037[:]', '[:en][:vi][:ja][:]', NULL, '207', NULL, NULL, '0', NULL, 'beauty', 1, 'publish', '2021-05-25 02:30:37', '2021-05-25 02:30:47'),
(3, '[:en]Eira[:vi]New agent 1621935053[:ja]New agent 1621935053[:]', '[:en][:vi][:ja][:]', NULL, '206', NULL, NULL, '0', NULL, 'beauty', 1, 'publish', '2021-05-25 02:30:53', '2021-05-25 02:31:02'),
(4, '[:en]Ernesta[:vi]New agent 1621935069[:ja]New agent 1621935069[:]', '[:en][:vi][:ja][:]', NULL, '205', NULL, NULL, '0', NULL, 'beauty', 1, 'publish', '2021-05-25 02:31:09', '2021-05-25 02:31:19'),
(5, '[:en]Mimi[:vi]New agent 1621935087[:ja]New agent 1621935087[:]', '[:en][:vi][:ja][:]', NULL, '204', NULL, NULL, '0', NULL, 'beauty', 1, 'publish', '2021-05-25 02:31:27', '2021-05-25 02:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_agent_availability`
--

CREATE TABLE `gmz_agent_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `post_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_agent_relation`
--

CREATE TABLE `gmz_agent_relation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_agent_relation`
--

INSERT INTO `gmz_agent_relation` (`id`, `agent_id`, `post_id`, `post_type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'beauty', NULL, NULL),
(2, 2, 3, 'beauty', NULL, NULL),
(3, 2, 4, 'beauty', NULL, NULL),
(4, 3, 4, 'beauty', NULL, NULL),
(7, 4, 5, 'beauty', NULL, NULL),
(8, 5, 5, 'beauty', NULL, NULL),
(9, 1, 6, 'beauty', NULL, NULL),
(10, 2, 6, 'beauty', NULL, NULL),
(11, 3, 6, 'beauty', NULL, NULL),
(12, 3, 7, 'beauty', NULL, NULL),
(13, 4, 7, 'beauty', NULL, NULL),
(14, 5, 7, 'beauty', NULL, NULL),
(15, 2, 8, 'beauty', NULL, NULL),
(16, 3, 8, 'beauty', NULL, NULL),
(17, 2, 9, 'beauty', NULL, NULL),
(18, 4, 9, 'beauty', NULL, NULL),
(19, 5, 9, 'beauty', NULL, NULL),
(20, 1, 10, 'beauty', NULL, NULL),
(21, 2, 10, 'beauty', NULL, NULL),
(22, 4, 10, 'beauty', NULL, NULL),
(23, 1, 11, 'beauty', NULL, NULL),
(24, 2, 11, 'beauty', NULL, NULL),
(28, 2, 12, 'beauty', NULL, NULL),
(29, 3, 12, 'beauty', NULL, NULL),
(30, 4, 12, 'beauty', NULL, NULL),
(37, 1, 13, 'beauty', NULL, NULL),
(38, 2, 13, 'beauty', NULL, NULL),
(39, 3, 13, 'beauty', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_apartment`
--

CREATE TABLE `gmz_apartment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'instant',
  `number_of_guest` int(11) DEFAULT NULL,
  `number_of_bedroom` int(11) DEFAULT NULL,
  `number_of_bathroom` int(11) DEFAULT NULL,
  `size` double(8,2) DEFAULT NULL,
  `min_stay` int(11) DEFAULT NULL,
  `max_stay` int(11) DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `extra_services` longtext DEFAULT NULL,
  `apartment_type` varchar(191) DEFAULT NULL,
  `apartment_amenity` varchar(191) DEFAULT NULL,
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `checkin_time` varchar(25) DEFAULT NULL,
  `checkout_time` varchar(25) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `discount_by_day` text DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_booking` varchar(3) DEFAULT 'off',
  `external_link` varchar(191) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `ical` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_apartment`
--

INSERT INTO `gmz_apartment` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `booking_form`, `number_of_guest`, `number_of_bedroom`, `number_of_bathroom`, `size`, `min_stay`, `max_stay`, `booking_type`, `extra_services`, `apartment_type`, `apartment_amenity`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `checkin_time`, `checkout_time`, `rating`, `is_featured`, `discount_by_day`, `video`, `author`, `status`, `created_at`, `updated_at`, `external_booking`, `external_link`, `post_description`, `ical`, `deleted_at`) VALUES
(3, '[:en]Independent cottage[:vi]New apartment 1612023076[:]', 'independent-cottage-mountain-view', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '83', '86,85,84,83', 50.00, 'both', 10, 2, 2, 750.00, NULL, NULL, 'per_day', '[]', '25', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 09:11:16', '2021-01-30 09:13:21', 'off', NULL, NULL, NULL, NULL),
(4, '[:en]Lussuoso. Vista incantevole[:vi]New apartment 1612023207[:]', 'lussuoso-vista-incantevole', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi][:]', 40.764800, -73.980800, '[:en]NewYork, US[:vi][:]', '12', NULL, NULL, NULL, NULL, '88', '89,88,87', 100.00, 'instant', 7, 3, 2, 500.00, NULL, NULL, 'per_day', '[]', '26', '31,32,33,34,35,36,37,38,39,40,41', 'off', 5, '[:en][:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 09:13:27', '2021-01-30 09:15:23', 'off', NULL, NULL, NULL, NULL),
(5, '[:en]Hector Cave House[:vi]New apartment 1612023342[:]', 'hector-cave-house', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi][:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '90', '92,91,90', 150.00, 'instant', 8, 3, 1, 450.00, NULL, NULL, 'per_day', '[]', '27', '31,32,33,34,35,36,37,38,39,40,41', 'off', 5, '[:en][:vi][:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-30 09:15:42', '2021-01-30 09:17:21', 'off', NULL, NULL, NULL, NULL),
(6, '[:en]Via di San Crisogono[:vi]New apartment 1612066086[:]', 'via-di-san-crisogono', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Trastevere-Gianicolo. This home’s white-painted rooms are all furnished with clean-cut pieces, but you’ll find lively touches – printed cushions and diverse, colourful artworks – and original details here too. There’s also a pretty rooftop terrace, with space to sit. Below, the bustling streets are lined with characterful boutiques and eateries, and you’ll find several historic churches within walking distance. You’re close to the Isola Tiberina and Campo de’ Fiori, and it’s just a two-minute walk to the nearest tram stop, Sonnino/s. Galliano.</span></p>[:vi][:]', 41.870000, -87.650000, '[:en]Chicago, IL 60607, USA[:vi][:]', '12', NULL, NULL, NULL, NULL, '105', '104,107,106,105', 60.00, 'both', 7, 3, 2, 125.00, NULL, NULL, 'per_day', '[]', '25', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi][:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-30 21:08:06', '2021-01-30 21:14:05', 'off', NULL, NULL, NULL, NULL),
(8, '[:en]Turtle Ridge[:vi]New apartment 1612102859[:]', 'turtle-ridge', '[:en]<p>Find yourself in the perfect environment to make the most memorable vacation. Located in lower Bight, Turtle Ridge Villa sits directly overlooking the breathtaking award-winning Grace Bay beach. The views are amazing with only a 3 minute walk to the beach.</p><p>It’s said that the best in life is worth waiting for and this is certainly true of this beautiful three-bedroom villa with direct walkout onto the Pool deck with loungers, wet bar, outdoor kitchen and BBQ grill.</p><p>There are three bedrooms: 3 masters with king beds. Bedroom #3 can be converted to twins as needed upon request. All have bath ensuite. Living room as well as each bedroom have flat screen TV with Netflix. The villa comes fully-equipped with wireless internet, cable TV, metered air-conditioning (bedrooms only) and a fully-stocked kitchen and linen closet. There is a safe in each bedroom to store valuable items.</p>[:vi][:]', 41.880000, -87.640000, '[:en]Chicago, IL 60606, USA[:vi][:]', '12', NULL, NULL, NULL, NULL, '108', '111,110,109,108', 65.00, 'both', 8, 2, 2, 118.00, NULL, NULL, 'per_day', '[]', '26', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi][:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-31 07:20:59', '2021-01-31 07:23:05', 'off', NULL, NULL, NULL, NULL),
(9, '[:en]Gregory Place[:vi]New apartment 1612103093[:]', 'gregory-place', '[:en]<p>Tucked away on a lane in the heart of Kensington, Gregory Place is a home worth discovering. Vintage travel posters line the walls in the sitting room, to the left of the entrance hallway, which has wooden floors and a pair of cream sofas. There’s a skylight overhead, and to the left is the open-plan kitchen. It’s a contemporary space, with a round dining table for three and glossy black cabinets that stand out against white walls.</p><p>Straight ahead of the front door is the staircase to the first floor. The second bedroom is on the left, the third bedroom to the right. Both have shuttered windows and a varnished wooden floor, and the second bedroom has a double bed with a bright pink headboard. There’s a bathroom straight ahead, and another upstairs and to the left. Up here, there’s one room left to discover—the master bedroom, with its king-sized bed.</p>[:vi][:]', 41.870000, -87.650000, '[:en]Chicago, IL 60607, USA[:vi][:]', '12', NULL, NULL, NULL, NULL, '114', '114,113,112', 70.00, 'both', 12, 3, 2, 210.00, NULL, NULL, 'per_day', '[]', '27', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-31 07:24:53', '2021-01-31 07:26:37', 'off', NULL, NULL, NULL, NULL),
(10, '[:en]Hans Place IV[:vi]New apartment 1612103265[:]', 'hans-place-iv', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air. The master bedroom is impressive too, with a generous ensuite and doors onto the roof terrace, where there’s another table for six. The surrounding area’s just as elegant – close to all South Kensington’s boutiques, you’re also within walking distance of Harrods and the shop-and-café-lined King’s Road. What’s more, Knightsbridge tube station is just a six-minute walk from here.</span></p>[:vi][:]', 41.860000, -87.620000, '[:en]Chicago, IL 60616, USA[:vi][:]', '12', NULL, NULL, NULL, NULL, '116', '116,117,115', 75.00, 'instant', 10, 3, 2, 114.00, NULL, NULL, 'per_day', '[]', '28', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-31 07:27:45', '2021-01-31 07:29:11', 'off', NULL, NULL, NULL, NULL),
(11, '[:en]Potts Point Terrace[:vi]New apartment 1612103364[:]', 'potts-point-terrace', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.</span></p><p><span style=\"color: rgb(122, 122, 122);\">This terrace has been bought into the 21st century with it’s paired- back design using raw materials such as exposed brick and hand carved sandstone to give a modern industrial feel. Simple but fashionable furnishings and artwork with pops of colour complement this home’s design. The kitchen is equipped with all modern appliances. The generously sized lounge area has two large glass doors opening onto a patio area looking into a small garden creating some privacy from the street. Downstairs is a cozy little reading nook, office, and separate laundry room. Master bedroom and the second bedroom sharing a beautifully renovated bathroom.</span></p>[:vi][:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '119', '118,121,120,119', 67.00, 'instant', 10, 3, 2, 210.00, NULL, NULL, 'per_day', '[]', '29', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-31 07:29:24', '2021-01-31 07:31:07', 'off', NULL, NULL, NULL, NULL),
(12, '[:en]Ebury Street[:vi]New apartment 1612103479[:]', 'ebury-street', '[:en]<p>This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.</p><p>There’s a trio of bedrooms, all with intricately patterned wallpaper. Each bedroom has an ensuite bathroom—the master ensuite has a decorative fireplace and a library ladder, and the third bedroom’s ensuite has hexagonal floor tiles and a pair of marble-clad showers. Lastly, there’s a wood-panelled dining room, and a circular dining table on the patio.</p>[:vi][:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '122', '125,124,123,122', 45.00, 'both', 10, 3, 2, 123.00, NULL, NULL, 'per_day', '[]', '30', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-31 07:31:19', '2021-01-31 07:33:07', 'off', NULL, NULL, NULL, NULL),
(13, '[:en]Via della Scala[:vi]New apartment 1612103606[:]', 'via-della-scala', '[:en]<p>Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.</p><p>Head up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.</p>[:vi][:]', 41.860000, -87.650000, '[:en]Chicago, IL 60608, USA[:vi][:]', '12', NULL, NULL, NULL, NULL, '126', '129,128,127,126', 89.00, 'both', 9, 3, 2, 211.00, NULL, NULL, 'per_day', '[]', '25', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.\r\n\r\nHead up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.[:vi][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-31 07:33:26', '2021-01-31 07:35:25', 'off', NULL, NULL, NULL, NULL),
(14, '[:en]De Walden Street[:vi]New apartment 1612103739[:]', 'de-walden-street', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br></p><p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br></p><p><span style=\"color: rgb(122, 122, 122);\"><span class=\"ql-cursor\">﻿</span>De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p>[:vi][:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '132', '133,132,131,130', 99.00, 'enquiry', 9, 3, 2, 154.00, NULL, NULL, 'per_day', '[]', '26', '31,32,33,34,35,36,37,38,39,40,41', 'on', 5, '[:en]De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).[:vi][:]', NULL, NULL, 5.0, 'on', '[]', '', 1, 'publish', '2021-01-31 07:35:39', '2021-02-01 04:15:49', 'off', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_apartment_availability`
--

CREATE TABLE `gmz_apartment_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_base` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_beauty`
--

CREATE TABLE `gmz_beauty` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'instant',
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `video` varchar(191) DEFAULT NULL,
  `service` bigint(20) UNSIGNED DEFAULT NULL,
  `available_space` smallint(5) UNSIGNED DEFAULT NULL,
  `service_starts` int(11) DEFAULT NULL,
  `service_ends` int(11) DEFAULT NULL,
  `service_duration` int(11) DEFAULT NULL,
  `branch` bigint(20) UNSIGNED DEFAULT NULL,
  `day_off_week` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_booking` varchar(3) DEFAULT 'off',
  `external_link` varchar(191) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_beauty`
--

INSERT INTO `gmz_beauty` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `booking_form`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `quantity`, `rating`, `is_featured`, `video`, `service`, `available_space`, `service_starts`, `service_ends`, `service_duration`, `branch`, `day_off_week`, `author`, `status`, `created_at`, `updated_at`, `external_booking`, `external_link`, `post_description`, `deleted_at`) VALUES
(3, '[:en]Pokemon tatto - small size[:vi]New beauty service 1622001206[:ja]New beauty service 1622001206[:]', 'pokemon-tatto-small-size', '[:en]<p>Pokemon tattoo with small size - up to 25 square centimeters.</p><p>Can be tattooed in many places on the body.</p><p>You can choose your own sample image.</p><p><br /></p><p>Below are photos from some of our customers:</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/e4af19aa3830ff7b6d0e71a1b15e3999-1622001768.jpg\"/></p><p><br /></p>[:vi]<p>Pokemon tattoo with small size - up to 25 square centimeters.</p><p>Can be tattooed in many places on the body.</p><p>You can choose your own sample image.</p><p><br /></p><p>Below are photos from some of our customers:</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/7890206b46e694e8d80145d441da97a3-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/0cb532765beb832287ec008954f406c0-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/e4af19aa3830ff7b6d0e71a1b15e3999-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/a610cb243475d236d7adb13747456e35-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/f8475a01bf633aa1da99e250c904854b-1622001769.jpg\"/></p><p><br /></p>[:ja]<p>Pokemon tattoo with small size - up to 25 square centimeters.</p><p>Can be tattooed in many places on the body.</p><p>You can choose your own sample image.</p><p><br /></p><p>Below are photos from some of our customers:</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/7890206b46e694e8d80145d441da97a3-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/0cb532765beb832287ec008954f406c0-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/e4af19aa3830ff7b6d0e71a1b15e3999-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/a610cb243475d236d7adb13747456e35-1622001768.jpg\"/><img src=\"http://ibooking.booteam.co/storage/2021/05/26/f8475a01bf633aa1da99e250c904854b-1622001769.jpg\"/></p><p><br /></p>[:]', 40.731328, -74.001458, '[:en]329 6th Ave, New York, NY 10014, USA[:vi][:ja][:]', '12.801524430368724', NULL, NULL, NULL, NULL, '213', '215,214,213,212,211', 100.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 142, 3, 32400, 64800, 7200, 150, '', 1, 'publish', '2021-05-25 20:53:26', '2021-05-25 21:06:12', 'off', NULL, NULL, NULL),
(4, '[:en]Small Colorful Flowers Tattoo[:vi]New beauty service 1622003783[:ja]New beauty service 1622003783[:]', 'small-colorful-flowers-tattoo', '[:en]<p>Flowers Tattoo with small size - up to 20 square centimeters.</p><p>Can be tattooed in many places on the body.</p><p>You can choose your own sample image.</p><p><br /></p><p>Below are photos from some of our customers:</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/3455e1dccf827f368aedd49d646321be-1622004005.jpg\"/></p>[:vi][:ja][:]', 40.714212, -73.953978, '[:en]439 Metropolitan Ave, Brooklyn, NY 11211, USA[:vi][:ja][:]', '12.828020072084037', NULL, NULL, NULL, NULL, '220', '220,219,218,217,216', 80.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 142, 1, 32400, 64800, 7200, 149, '', 1, 'publish', '2021-05-25 21:36:23', '2021-05-25 21:41:14', 'off', NULL, NULL, NULL),
(5, '[:en]Men\'s haircuts[:vi]New beauty service 1622006147[:ja]New beauty service 1622006147[:]', 'mens-haircuts', '[:en]<p>Men\'s haircut in 3 steps:</p><ol><li>Haircuts</li><li>Shampoo</li><li>Hairstyling</li></ol><p>The completion time is 1 hour.</p><p>Choose a barber technician.</p><p>Washing your hair may be done by someone else.</p><p><br /></p><p><br /></p>[:vi]<p>Men\'s haircut in 3 steps:</p><ol><li>Haircuts</li><li>Shampoo</li><li>Hairstyling</li></ol><p><br /></p><p>The completion time is 1 hour. </p><p>Choose a barber technician. </p><p>Washing your hair may be done by someone else.</p>[:ja]<p>Men\'s haircut in 3 steps:</p><ol><li>Haircuts</li><li>Shampoo</li><li>Hairstyling</li></ol><p><br /></p><p>The completion time is 1 hour. </p><p>Choose a barber technician. </p><p>Washing your hair may be done by someone else.</p>[:]', 40.263881, -75.327830, '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '225', '225,224,223,222,221', 15.00, 'instant', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 141, 2, 32400, 64800, 3600, 152, '6', 1, 'publish', '2021-05-25 22:15:47', '2021-05-25 22:24:41', 'off', NULL, NULL, NULL),
(6, '[:en]Hair Dye Highlight For Women[:vi]New beauty service 1622010554[:ja]New beauty service 1622010554[:]', 'hair-dye-highlight-for-women', '[:en]<p>100+ optional color schemes.</p><p>Used with many other types of hair.</p><p>Professional technician team.</p><p><strong>Gift of hair care shampoo.</strong></p><p><br /></p><p>Photos of our customers:</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/ebcfd925c6ccc6cb7472b0c9e20ea4cc-1622011067.jpg\"/></p>[:vi][:ja][:]', 40.263881, -75.327830, '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '230', '230,227,229,228,226', 220.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 141, 2, 32400, 64800, 14400, 152, '', 1, 'publish', '2021-05-25 23:29:14', '2021-05-25 23:39:38', 'off', NULL, NULL, NULL),
(7, '[:en]Curling hair[:vi]New beauty service 1622011277[:ja]New beauty service 1622011277[:]', 'curling-hair', '[:en]<p><span style=\"color: rgb(86, 86, 86);\">We are creating different types of curls–spiral curls, barrel curls, and everything in-between.</span></p><p>Every request is met at a reasonable cost.</p><p>Please contact us if you need further advice.</p><p><br /></p><p>Customer\'s picture: </p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/a6060982d313addf1ea65fd7f9f43a4a-1622011066.jpg\"/></p><p><br /></p>[:vi][:ja][:]', 40.263881, -75.327830, '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '235', '235,234,233,232,231,227', 280.00, 'instant', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 141, 1, 32400, 64800, 14400, 152, '', 1, 'publish', '2021-05-25 23:41:17', '2021-05-25 23:47:05', 'off', NULL, NULL, NULL),
(8, '[:en]Hair Care[:vi]New beauty service 1622011727[:ja]New beauty service 1622011727[:]', 'hair-care', '[:en]<p>Getting into a hair care routine is just like embarking on a skincare one. Once you’ve found one that works for you, you’ll rarely stray.</p><p>But the process of finding that routine can seem a little daunting, especially when there are numerous options for people with the same hair type.</p><p>We will advise and find the right hair care solution for you. Then we will take care of your hair so you have great hair.</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/cec5513ceabd2b9e614026e8349aa26b-1622011066.jpg\"/></p><p><br /></p>[:vi][:ja][:]', 40.263881, -75.327830, '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '226', '233,230,227,226', 12.00, 'instant', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 141, 1, 32400, 64800, 3600, 152, '', 1, 'publish', '2021-05-25 23:48:47', '2021-05-25 23:53:10', 'off', NULL, NULL, NULL),
(9, '[:en]Full Body Massage[:vi]New beauty service 1622016660[:ja]New beauty service 1622016660[:]', 'full-body-massage', '[:en]<p>Full body massage with herbal essential oils for 60 minutes</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/full-body-massage-500x500-1622016817.jpg\"/></p><p><br /></p>[:vi]<p>Full body massage with herbal essential oils for 60 minutes</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/full-body-massage-500x500-1622016817.jpg\"/></p><p><br /></p>[:ja]<p>Full body massage with herbal essential oils for 60 minutes</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/full-body-massage-500x500-1622016817.jpg\"/></p><p><br /></p>[:]', 40.739152, -73.988298, '[:en]42 E 21st St, New York, NY 10010, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '238', '240,238,237', 80.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 140, 3, 32400, 64800, 3600, 146, '', 1, 'publish', '2021-05-26 01:11:00', '2021-05-26 01:16:19', 'off', NULL, NULL, NULL),
(10, '[:en]Facial Massage[:vi]New beauty service 1622017053[:ja]New beauty service 1622017053[:]', 'facial-massage', '[:en]<p><strong style=\"color: rgb(27, 26, 26);\">Facial massage instantly</strong><span style=\"color: rgb(27, 26, 26);\">&nbsp;calms your mind, slips you into de-stress mode and help you achieve impeccable and enviable skin. Not just that,&nbsp;</span><strong style=\"color: rgb(27, 26, 26);\">face massage benefits your skin</strong><span style=\"color: rgb(27, 26, 26);\">&nbsp;in many other ways as well. Facial massage tones your skin, brightens the complexion and slows down your ageing clock. If you didn’t know that, you’re not alone. You’ve been oblivious to the many benefits of facial massage for too long now and it is time you know how it does wonders for your skin. Read on to know all the&nbsp;</span><strong style=\"color: rgb(27, 26, 26);\">surprising benefits of face massage</strong><span style=\"color: rgb(27, 26, 26);\">&nbsp;and why you need to treat your skin with a stress-busting face massage RN...</span></p>[:vi][:ja][:]', 40.739152, -73.988298, '[:en]42 E 21st St, New York, NY 10010, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '244', '244,243,242,241', 30.00, 'instant', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 140, 2, 32400, 64800, 3600, 146, '', 1, 'publish', '2021-05-26 01:17:33', '2021-05-26 01:20:47', 'off', NULL, NULL, NULL),
(11, '[:en]Makeup[:vi]New beauty service 1622018542[:ja]New beauty service 1622018542[:]', 'makeup', '[:en]<p>Makeup full-face Includes eyelash extensions.</p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/221317223-1622018733.jpg\"/></p>[:vi][:ja][:]', 40.263881, -75.327830, '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '247', '248,247,246,245', 95.00, 'instant', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 139, 3, 32400, 64800, 3600, 152, '', 1, 'publish', '2021-05-26 01:42:22', '2021-05-26 01:46:24', 'off', NULL, NULL, NULL),
(12, '[:en]Foot waxing[:vi]New beauty service 1622018917[:ja]New beauty service 1622018917[:]', 'foot-waxing', '[:en]<p>When performing wax treatments day in, day out, it can become easy for therapists to slip into bad routines. In such a competitive field, this is enough to drive those customers away to your local competitors.</p><p>Reviewing and updating your processes is key if you want clients to return time and time again.&nbsp;We speak with the industry’s leading waxers to find out their trade secrets on keeping clients committed to your salon, from&nbsp;reward systems and extra touches, to the right communication,&nbsp;and round-up the best products to help you deliver a first-class service.</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/loi-khuyen-huu-ich-ve-waxing-danh-cho-moi-co-gai-125393-1622019017.jpg\"/></p><p><br /></p>[:vi][:ja][:]', 40.739152, -73.988298, '[:en]42 E 21st St, New York, NY 10010, USA[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '251', '252,251,250,249', 60.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'off', '', 138, 3, 32400, 64800, 3600, 146, '', 1, 'publish', '2021-05-26 01:48:37', '2021-05-26 01:51:47', 'off', NULL, NULL, NULL),
(13, '[:en]Gel manicure and pedicure[:vi]New beauty service 1622019939[:ja]New beauty service 1622019939[:]', 'gel-manicure-and-pedicure', '[:en]<p>Complete manicure and pedicure with premium quality gel polish.</p><p><br /></p><p><img src=\"http://ibooking.booteam.co/storage/2021/05/26/elgbychendi170981740277965704060476489959598827591048n-1618553120519868385426-1622020025.jpg\"/></p>[:vi][:ja][:]', 40.744920, -73.976970, '[:en]222 E 34th St Studio 24, New York, NY 10016, United States[:vi][:ja][:]', '13', NULL, NULL, NULL, NULL, '255', '257,258,256,255,254', 25.00, 'both', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, 'on', '', 137, 3, 32400, 64800, 3600, 145, '', 1, 'publish', '2021-05-26 02:05:39', '2021-05-26 02:09:52', 'off', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_beauty_availability`
--

CREATE TABLE `gmz_beauty_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_car`
--

CREATE TABLE `gmz_car` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'instant',
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `equipments` longtext DEFAULT NULL,
  `car_type` varchar(191) DEFAULT NULL,
  `car_feature` varchar(191) DEFAULT NULL,
  `car_equipment` varchar(191) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `discount_by_day` text DEFAULT NULL,
  `insurance_plan` text DEFAULT NULL,
  `passenger` int(11) DEFAULT 1,
  `gear_shift` varchar(191) DEFAULT NULL,
  `baggage` int(11) DEFAULT NULL,
  `door` int(11) DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_booking` varchar(3) DEFAULT 'off',
  `external_link` varchar(191) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_car`
--

INSERT INTO `gmz_car` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `booking_form`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `quantity`, `equipments`, `car_type`, `car_feature`, `car_equipment`, `rating`, `is_featured`, `discount_by_day`, `insurance_plan`, `passenger`, `gear_shift`, `baggage`, `door`, `video`, `author`, `status`, `created_at`, `updated_at`, `external_booking`, `external_link`, `post_description`, `deleted_at`) VALUES
(7, '[:en]Mercedes Benz G[:vi]New car 1612018713[:ja]Mercedes Benz G[:]', 'mercedes-benz-g', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 40.764800, -73.980800, '[:en]NewYork, US[:vi]Newyour, US[:]', '11.133305399577752', NULL, NULL, NULL, NULL, '23', '27,26,24,25', 300.00, 'enquiry', 'on', 5, '[:en]The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '4', '14,15,16,17,18,19', '20,21,22,23,24', 4.5, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 07:58:33', '2021-02-15 06:26:09', 'off', NULL, NULL, NULL),
(8, '[:en]Huyndai Acent 2020[:vi]New car 1612019867[:ja]Vinfast Lux A2.0[:]', 'vinfast-lux-a20', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 21.000000, 105.750000, '[:en]Ha Noi, Viet Nam[:vi][:]', '12', NULL, NULL, NULL, NULL, '36', '36,35,34,33,32,31', 450.00, 'both', 'on', 5, '[:en]The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '7', '14,15,16,17,18,19', '20,21,22,23,24', 5.0, 'on', '[]', '[]', 5, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:17:47', '2021-03-16 18:21:20', 'off', NULL, NULL, NULL),
(9, '[:en]Mecedez S300[:vi]New car 1612020050[:ja]Honda Accord 2020[:]', 'honda-accord-2020', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '38', '38,40,39,37', 600.00, 'instant', 'on', 5, '[:en]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '7', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:20:50', '2021-03-16 18:22:03', 'off', NULL, NULL, NULL),
(10, '[:en]Toyota Camry 2020[:vi]New car 1612020273[:]', 'toyota-camry-2020', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi][:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '43', '43,42,41', 300.00, 'enquiry', 'on', 5, '[:en]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '9', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:24:33', '2021-01-30 08:26:29', 'off', NULL, NULL, NULL),
(11, '[:en]2020 Nissan Titan Pro-4X[:vi]New car 1612020412[:]', '2020-nissan-titan-pro-4x', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi][:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '45', '44,45,46', 250.00, 'instant', 'on', 5, '[:en]The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '8', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'off', '[]', '[]', 7, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:26:52', '2021-01-30 08:28:51', 'off', NULL, NULL, NULL),
(12, '[:en]BMW-X6-facelift[:vi]New car 1612020668[:ja]Honda Civic[:]', 'honda-civic', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '47', '47,49,48,50', 500.00, 'instant', 'off', 5, '[:en][:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '4', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:31:08', '2021-03-16 18:20:46', 'off', NULL, NULL, NULL),
(13, '[:en]Mansory Aventador[:vi]New car 1612020804[:ja]VinFast Fadil[:]', 'vinfast-fadil', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '52', '52,54,53,51', 350.00, 'instant', 'on', 2, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '5', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:33:24', '2021-03-16 18:19:04', 'off', NULL, NULL, NULL),
(14, '[:en]BMW M6 Gran Coupe[:vi]New car 1612020954[:]', 'bmw-m6-gran-coupe', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi][:]', 16.083330, 108.083330, '[:en]Da Nang, Viet Nam[:vi][:]', '12', NULL, NULL, NULL, NULL, '55', '57,56,55', 460.00, 'both', 'on', 3, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '6', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:35:54', '2021-01-30 08:38:02', 'off', NULL, NULL, NULL),
(15, '[:en]2019 Honda Clarity[:vi]New car 1612021111[:]', '2019-honda-clarity', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi][:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '59', '60,59,58', 700.00, 'instant', 'on', 5, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '7', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'off', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:38:31', '2021-01-30 08:40:11', 'off', NULL, NULL, NULL),
(16, '[:en]2019 Audi S3[:vi]New car 1612021247[:]', '2019-audi-s3', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi][:]', '12', NULL, NULL, NULL, NULL, '61', '64,63,62,61', 250.00, 'instant', 'on', 5, '[:en]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '8', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 7, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:40:47', '2021-01-30 08:42:27', 'off', NULL, NULL, NULL),
(17, '[:en]Mitsubishi Outlander[:vi]New car 1612021381[:ja]Lamborghini[:]', 'lamborghini', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi]Paris, France[:ja]Paris, France[:]', '12', NULL, NULL, NULL, NULL, '146', '68,67,66,65', 800.00, 'both', 'on', 5, '[:en]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:vi]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:]', 10, 'a:5:{i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '9', '19,18,17,16,15,14', '24,23,22,21,20', NULL, 'on', '[]', '[]', 4, 'automatic', 8, 4, '', 1, 'publish', '2021-01-30 08:43:01', '2021-03-16 18:17:50', 'off', NULL, NULL, NULL),
(18, '[:en]Land Rover Evoque[:vi]New car 1612021511[:ja]Nissan GT R[:]', 'nissan-gt-r', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '70', '70,69,71,72', 600.00, 'instant', 'on', 5, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '10', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:45:11', '2021-03-16 18:14:14', 'off', NULL, NULL, NULL),
(19, '[:en]Honda Civic[:vi]New car 1612021640[:ja]Honda CR-V[:]', 'honda-cr-v', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 40.764800, -73.980800, '[:en]NewYork, US[:vi][:]', '12', NULL, NULL, NULL, NULL, '73', '73,74', 300.00, 'instant', 'on', 5, '[:en]The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '12', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 4, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:47:20', '2021-03-16 18:13:34', 'off', NULL, NULL, NULL),
(20, '[:en]Toyota Prius Plus[:vi]New car 1612021867[:ja]Toyota Fortuner 2019[:]', 'toyota-fortuner-2019', '[:en]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:vi]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:ja]<p>The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p><p>In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.</p><p>The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi][:]', '12', NULL, NULL, NULL, NULL, '75', '75,76', 500.00, 'instant', 'on', 5, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class[:vi][:]', 10, 'a:5:{i:20;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:21;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:22;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:23;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}i:24;a:2:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";N;}}', '13', '14,15,16,17,18,19', '20,21,22,23,24', NULL, 'on', '[]', '[]', 7, '0', 8, 4, '', 1, 'publish', '2021-01-30 08:51:07', '2021-03-16 18:12:26', 'off', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_car_availability`
--

CREATE TABLE `gmz_car_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `number` varchar(191) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_base` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_car_availability`
--

INSERT INTO `gmz_car_availability` (`id`, `post_id`, `check_in`, `check_out`, `number`, `price`, `booked`, `status`, `created_at`, `updated_at`, `is_base`) VALUES
(1, 7, 1611853200, 1611853200, '20', '', 0, 'unavailable', '2021-01-30 08:06:00', '2021-01-30 08:06:00', 0),
(2, 7, 1611939600, 1611939600, '20', '', 0, 'unavailable', '2021-01-30 08:06:12', '2021-01-30 08:06:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_comment`
--

CREATE TABLE `gmz_comment` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_title` varchar(191) DEFAULT NULL,
  `comment_content` longtext NOT NULL,
  `comment_name` varchar(191) NOT NULL,
  `comment_email` varchar(191) NOT NULL,
  `comment_author` int(11) NOT NULL,
  `comment_rate` varchar(191) DEFAULT NULL,
  `post_type` varchar(191) NOT NULL,
  `parent` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_comment`
--

INSERT INTO `gmz_comment` (`comment_id`, `post_id`, `comment_title`, `comment_content`, `comment_name`, `comment_email`, `comment_author`, `comment_rate`, `post_type`, `parent`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Easy way to discover the city', 'Varius massa maecenas et id dictumst mattis. Donec fringilla ac parturient posuere id phasellus erat elementum nullam lacus cursus rhoncus parturient vitae praesent quisque nascetur molestie quis', 'Admin Name', 'admin@admin.com', 1, '5', 'car', 0, 'publish', '2021-01-30 08:11:34', '2021-01-30 08:11:34', NULL),
(2, 7, 'Very Good', 'Buses don\'t come often and drivers don\'t have this information, there is a site that shows you the GPS location of the bus', 'Admin Name', 'admin@admin.com', 1, '4', 'car', 0, 'publish', '2021-01-30 08:11:58', '2021-01-30 08:11:58', NULL),
(5, 13, NULL, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', 'Boo Team', 'admin@admin.com', 1, '5', 'post', 0, 'publish', '2021-02-01 01:12:09', '2021-02-01 01:12:09', NULL),
(6, 13, NULL, 'This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Boo Team', 'admin@admin.com', 1, '5', 'post', 0, 'publish', '2021-02-01 01:12:31', '2021-02-01 04:07:49', NULL),
(7, 14, 'This Apartment is very good!', 'De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix', 'Boo Team', 'admin@admin.com', 1, '5', 'apartment', 0, 'publish', '2021-02-01 02:28:31', '2021-02-01 04:15:49', NULL),
(8, 8, 'This Car is very good!', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production.', 'Boo Team', 'admin@admin.com', 1, '5', 'car', 0, 'publish', '2021-02-01 03:00:38', '2021-02-01 03:00:38', NULL),
(9, 13, NULL, 'This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Boo Team', 'admin@booteam.co', 1, '5', 'post', 0, 'publish', '2021-03-11 19:34:02', '2021-03-11 19:34:02', NULL),
(10, 12, 'This hotel is better', 'Overlooking the Atlantic Ocean, this beachfront hotel features private beach access, a 7th-floor outdoor pool, and spacious suites. Grand Beach Hotel is 3.7 mi drive from South Beach.', 'Boo Team', 'admin@booteam.co', 1, '5', 'hotel', 0, 'publish', '2021-03-25 01:27:27', '2021-03-25 01:27:27', NULL),
(11, 12, 'Very good service', 'Chez Gaston Restaurant serves Latin and American cuisine throughout the day in a casual atmosphere. Guests can get drinks at any of the 3 bars including the poolside Sunset Bar.', 'Boo Team', 'admin@booteam.co', 1, '5', 'hotel', 0, 'publish', '2021-03-25 01:27:44', '2021-03-25 01:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_coupon`
--

CREATE TABLE `gmz_coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `percent` double(16,5) NOT NULL,
  `author` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_coupon`
--

INSERT INTO `gmz_coupon` (`id`, `code`, `description`, `start_date`, `end_date`, `percent`, `author`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COUPON_1', '[:en][:vi][:]', '1612112400', '1612285200', 50.00000, 1, 'publish', '2021-02-01 08:25:37', '2021-02-01 08:25:37'),
(2, 'COUPON_2', '[:en][:vi][:]', '1612630800', '1612890000', 75.00000, 1, 'publish', '2021-02-01 08:26:00', '2021-02-01 08:26:00'),
(3, 'COUPON_3', '[:en][:vi][:]', '1613408400', '1613754000', 25.00000, 1, 'publish', '2021-02-01 08:26:22', '2021-02-01 08:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_earnings`
--

CREATE TABLE `gmz_earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL DEFAULT 0.00,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `net_earnings` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_earnings`
--

INSERT INTO `gmz_earnings` (`id`, `user_id`, `total`, `balance`, `net_earnings`, `created_at`, `updated_at`) VALUES
(1, 1, 5682.60, 4261.95, 4261.95, '2021-02-01 03:22:46', '2021-03-25 01:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_hotel`
--

CREATE TABLE `gmz_hotel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `extra_services` longtext DEFAULT NULL,
  `hotel_star` int(11) DEFAULT NULL,
  `hotel_logo` varchar(191) DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `policy` longtext DEFAULT NULL,
  `checkin_time` varchar(25) DEFAULT NULL,
  `checkout_time` varchar(25) DEFAULT NULL,
  `min_day_booking` int(11) DEFAULT NULL,
  `min_day_stay` int(11) DEFAULT NULL,
  `nearby_common` longtext DEFAULT NULL,
  `nearby_education` longtext DEFAULT NULL,
  `nearby_health` longtext DEFAULT NULL,
  `nearby_top_attractions` longtext DEFAULT NULL,
  `nearby_restaurants_cafes` longtext DEFAULT NULL,
  `nearby_natural_beauty` longtext DEFAULT NULL,
  `nearby_airports` longtext DEFAULT NULL,
  `faq` longtext DEFAULT NULL,
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `property_type` varchar(191) DEFAULT NULL,
  `hotel_facilities` varchar(191) DEFAULT NULL,
  `hotel_services` varchar(191) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'both',
  `external_booking` varchar(3) DEFAULT 'off',
  `external_link` varchar(191) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_hotel`
--

INSERT INTO `gmz_hotel` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `extra_services`, `hotel_star`, `hotel_logo`, `video`, `policy`, `checkin_time`, `checkout_time`, `min_day_booking`, `min_day_stay`, `nearby_common`, `nearby_education`, `nearby_health`, `nearby_top_attractions`, `nearby_restaurants_cafes`, `nearby_natural_beauty`, `nearby_airports`, `faq`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `property_type`, `hotel_facilities`, `hotel_services`, `rating`, `is_featured`, `author`, `status`, `created_at`, `updated_at`, `booking_form`, `external_booking`, `external_link`, `post_description`, `deleted_at`) VALUES
(3, 'EnVision Hotel Boston', 'envision-hotel-boston', '<p><span class=\"ql-cursor\">﻿</span>Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.</p><p>First-rate hotel services and facilities that define the Choice Hotels experience await you at the enVision Hotel Boston-Longwood an Ascend Hotel Col. For the comfort and convenience of guests, the hotel offers Wi-Fi in public areas, pets allowed.</p><p>Experience high quality room facilities during your stay here. Some rooms include television LCD/plasma screen, air conditioning, heating, iPod docking station, internet access – LAN (complimentary), provided to help guests recharge after a long day. Besides, the hotel’s host of recreational offerings ensures you have plenty to do during your stay. Discover an engaging blend of professional service and a wide array of features at enVision Hotel Boston-Longwood an Ascend Hotel Col.</p>', 42.360500, -71.059600, 'Boston, MA, USA', '12', NULL, NULL, NULL, NULL, '127', '133,132,131,130,129', 200.00, '[]', 5, '134', '', 'a:2:{i:16166404415679;a:2:{s:5:\"title\";s:30:\"Conveniently located in Boston\";s:7:\"content\";s:371:\"Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.\";}i:16166404929330;a:2:{s:5:\"title\";s:25:\"First-rate hotel services\";s:7:\"content\";s:247:\"First-rate hotel services and facilities that define the Choice Hotels experience await you at the enVision Hotel Boston-Longwood an Ascend Hotel Col. For the comfort and convenience of guests, the hotel offers Wi-Fi in public areas, pets allowed.\";}}', '10:00', '13:00', 2, 3, '[]', '[]', '[]', '[]', '[]', '[]', '[]', 'a:4:{i:16166403317950;a:2:{s:8:\"question\";s:35:\"Conveniently located in Boston (MA)\";s:6:\"answer\";s:371:\"Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.\";}i:16166403328306;a:2:{s:8:\"question\";s:35:\"Conveniently located in Boston (MA)\";s:6:\"answer\";s:371:\"Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.\";}i:16166403338027;a:2:{s:8:\"question\";s:35:\"Conveniently located in Boston (MA)\";s:6:\"answer\";s:371:\"Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.\";}i:16166403355558;a:2:{s:8:\"question\";s:35:\"Conveniently located in Boston (MA)\";s:6:\"answer\";s:371:\"Conveniently located in Boston (MA), enVision Hotel Boston-Longwood an Ascend Hotel Col is a great base from which to explore this vibrant city. From here, guests can enjoy easy access to all that the lively city has to offer. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Children’s Hospital, Massart, Gasp.\";}}', 'off', 5, '', '68', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 02:21:30', '2021-03-24 20:59:44', 'both', 'off', NULL, NULL, NULL),
(4, 'Dylan Hotel', 'dylan-hotel', '<p><span style=\"color: rgb(94, 109, 119);\">Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</span></p>', 28.346543, -81.422678, 'Regal Cinemas Battery', '12.843197984267643', NULL, NULL, NULL, NULL, '130', '112,111,110,109', 399.00, 'a:3:{i:16166409034713;a:2:{s:5:\"title\";s:15:\"Extra Service 1\";s:5:\"price\";s:2:\"10\";}i:16166409142734;a:2:{s:5:\"title\";s:15:\"Extra Service 2\";s:5:\"price\";s:2:\"20\";}i:16166409218363;a:2:{s:5:\"title\";s:15:\"Extra Service 3\";s:5:\"price\";s:2:\"30\";}}', 5, '134', '', 'a:6:{i:16166410087522;a:2:{s:5:\"title\";s:13:\"Built in 1986\";s:7:\"content\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166410109411;a:2:{s:5:\"title\";s:15:\"USA and 9 other\";s:7:\"content\";s:146:\"USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166410112880;a:2:{s:5:\"title\";s:16:\"Accommodation as\";s:7:\"content\";s:146:\"USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166410121375;a:2:{s:5:\"title\";s:19:\"Northern California\";s:7:\"content\";s:95:\"Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco\";}i:16166410148364;a:2:{s:5:\"title\";s:26:\"The excitement of the city\";s:7:\"content\";s:305:\"The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour\";}i:16166410157135;a:2:{s:5:\"title\";s:28:\"Hotel Stanford is a distinct\";s:7:\"content\";s:103:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers.\";}}', '10:00', '13:00', 0, 1, 'a:3:{i:16166408715889;a:2:{s:5:\"title\";s:13:\"Built in 1986\";s:8:\"distance\";s:3:\"2km\";}i:16166408798170;a:2:{s:5:\"title\";s:14:\"Hotel Stanford\";s:8:\"distance\";s:3:\"3km\";}i:16166408861603;a:2:{s:5:\"title\";s:19:\"No less exceptional\";s:8:\"distance\";s:3:\"4km\";}}', '[]', '[]', '[]', '[]', '[]', '[]', 'a:5:{i:16166409512624;a:2:{s:8:\"question\";s:52:\"Built in 1986, Hotel Stanford is a distinct addition\";s:6:\"answer\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166409571369;a:2:{s:8:\"question\";s:52:\"Built in 1986, Hotel Stanford is a distinct addition\";s:6:\"answer\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166409576775;a:2:{s:8:\"question\";s:52:\"Built in 1986, Hotel Stanford is a distinct addition\";s:6:\"answer\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166409592286;a:2:{s:8:\"question\";s:52:\"Built in 1986, Hotel Stanford is a distinct addition\";s:6:\"answer\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}i:16166409594262;a:2:{s:8:\"question\";s:52:\"Built in 1986, Hotel Stanford is a distinct addition\";s:6:\"answer\";s:653:\"Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.\";}}', 'off', 5, '', '67', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 19:49:13', '2021-03-24 19:57:54', 'both', 'off', NULL, NULL, NULL),
(5, 'Sofitel Legend Metropole Hanoi', 'sofitel-legend-metropole-hanoi', '<p>A&nbsp;<strong style=\"background-color: initial;\">historic</strong>&nbsp;<strong style=\"background-color: initial;\">luxury</strong>&nbsp;landmark since 1901, Sofitel&nbsp;<strong style=\"background-color: initial;\">Legend Metropole</strong>&nbsp;offers pampering spa services, 24-hour room service and a heated swimming pool. It is located in central Hanoi, near the Old Quarter.</p><p>The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.</p><p>Still retaining the hotel’s original grandness, rooms feature either an elegant neo-classical theme or classic French decor. Fully air-conditioned, each room is equipped with free internet and a flat-screen TV.</p><p>Offering a blend of Eastern and Western therapies, guests can indulge with a massage and body treatment at Le Spa du Metropole. So Fit Fitness Center is well-equipped and provides exercise classes. The hotel also provides a business center and gift shop.</p><p>Housing a private dining room and outdoor terrace, Spices Garden serves Asian and Vietnamese specialties. Other dining options include Angelina, Hanoi\'s bespoke cocktail bar, whiskey lounge and restaurant and the first-ever French restaurant in Hanoi, Le Beaulieu.</p><p>This is our guests\' favorite part of Hanoi, according to independent reviews.</p><p>Couples in particular like the location – they rated it&nbsp;<strong>9.7</strong>&nbsp;for a two-person trip.</p><p>We speak your language!</p>', 21.028890, 105.852500, 'Hoan Kiem, Hanoi, Vietnam', '12', NULL, NULL, NULL, NULL, '113', '148,147,139,138,132', 150.00, '[]', 5, '134', '', 'a:5:{i:16166414311052;a:2:{s:5:\"title\";s:20:\"Very good experience\";s:7:\"content\";s:145:\"The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.\";}i:16166414371888;a:2:{s:5:\"title\";s:20:\"Very good experience\";s:7:\"content\";s:145:\"The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.\";}i:16166414393185;a:2:{s:5:\"title\";s:20:\"Very good experience\";s:7:\"content\";s:145:\"The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.\";}i:16166414403882;a:2:{s:5:\"title\";s:20:\"Very good experience\";s:7:\"content\";s:145:\"The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.\";}i:16166414415527;a:2:{s:5:\"title\";s:20:\"Very good experience\";s:7:\"content\";s:145:\"The 5-star Sofitel Legend Metropole is just 161 m from the famous Hanoi Opera House. The scenic Hoan Kiem Lake is less than 500 m from the hotel.\";}}', '10:00', '13:00', 1, 1, 'a:5:{i:16166411802807;a:2:{s:5:\"title\";s:16:\"Press Club Hanoi\";s:8:\"distance\";s:6:\"0.1 km\";}i:16166411939445;a:2:{s:5:\"title\";s:16:\"Trang Tien Plaza\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166411944039;a:2:{s:5:\"title\";s:17:\"Hanoi Opera House\";s:8:\"distance\";s:6:\"0.3 km\";}i:16166411951175;a:2:{s:5:\"title\";s:23:\"Hanoi Children\'s Palace\";s:8:\"distance\";s:6:\"0.3 km\";}i:16166411967583;a:2:{s:5:\"title\";s:17:\"Hanoi Post Office\";s:8:\"distance\";s:6:\"0.4 km\";}}', '[]', '[]', 'a:5:{i:16166412718506;a:2:{s:5:\"title\";s:31:\"Thang Long Water Puppet Theater\";s:8:\"distance\";s:6:\"0.7 km\";}i:16166412783122;a:2:{s:5:\"title\";s:20:\"St. Joseph Cathedral\";s:8:\"distance\";s:6:\"0.8 km\";}i:16166412792781;a:2:{s:5:\"title\";s:19:\"Hanoi Old City Gate\";s:8:\"distance\";s:6:\"1.3 km\";}i:16166412809652;a:2:{s:5:\"title\";s:20:\"Ha Noi Train Station\";s:8:\"distance\";s:6:\"1.5 km\";}i:16166413099243;a:2:{s:5:\"title\";s:16:\"Dong Xuan Market\";s:8:\"distance\";s:6:\"1.5 km\";}}', 'a:2:{i:16166413183915;a:2:{s:5:\"title\";s:26:\"Cafe/Bar  Starbucks Coffee\";s:8:\"distance\";s:6:\"0.1 km\";}i:16166413266783;a:2:{s:5:\"title\";s:30:\"Restaurant  Ly Club Restaurant\";s:8:\"distance\";s:6:\"0.5 km\";}}', 'a:1:{i:16166413357897;a:2:{s:5:\"title\";s:20:\"Lake  Hoan Kiem Lake\";s:8:\"distance\";s:6:\"0.2 km\";}}', 'a:2:{i:16166413413787;a:2:{s:5:\"title\";s:29:\"Noi Bai International Airport\";s:8:\"distance\";s:7:\"21.7 km\";}i:16166413475971;a:2:{s:5:\"title\";s:28:\"Cat Bi International Airport\";s:8:\"distance\";s:7:\"92.9 km\";}}', 'a:4:{i:16166413785409;a:2:{s:8:\"question\";s:33:\"Very good experience in the hotel\";s:6:\"answer\";s:203:\"Very good experience in the hotel, everything is prefect. My son left his toy in the hotel and the staff was very nice to help us finding it and delivered to another hotel, I really really appreciate it.\";}i:16166413899317;a:2:{s:8:\"question\";s:33:\"Very good experience in the hotel\";s:6:\"answer\";s:203:\"Very good experience in the hotel, everything is prefect. My son left his toy in the hotel and the staff was very nice to help us finding it and delivered to another hotel, I really really appreciate it.\";}i:16166413914376;a:2:{s:8:\"question\";s:33:\"Very good experience in the hotel\";s:6:\"answer\";s:203:\"Very good experience in the hotel, everything is prefect. My son left his toy in the hotel and the staff was very nice to help us finding it and delivered to another hotel, I really really appreciate it.\";}i:16166413921349;a:2:{s:8:\"question\";s:33:\"Very good experience in the hotel\";s:6:\"answer\";s:203:\"Very good experience in the hotel, everything is prefect. My son left his toy in the hotel and the staff was very nice to help us finding it and delivered to another hotel, I really really appreciate it.\";}}', 'off', 5, '', '66', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 19:58:27', '2021-03-24 20:04:25', 'both', 'off', NULL, NULL, NULL),
(6, '[:en]Riu Plaza Miami Beach[:vi]Riu Plaza Miami Beach[:ja]Riu Plaza Miami Beach[:]', 'riu-plaza-miami-beach', '[:en]<p>Located 160 metres’ walk from the beach, this Miami Beach hotel features an outdoor swimming pool and sun terrace. The hotel is 9 minutes’ drive from the shops and restaurants of Lincoln Road and offers free WiFi to guests.</p><p>A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.</p><p>A fitness centre is available. This beachfront property offers bicycle hires, concierge services, and a 24-hour front desk. Dining options include a poolside snack bar and a buffet restaurant that features salads, fresh fruit, cheese plates, and more.</p><p>Guests can explore the waters, architecture, and nightlife of South Beach (3.6 km) or play a round of golf at Bayshore Golf Course (2.6 km). Miami Beach Convention Centre is 2.4 kilometres’ drive away while Miami International Airport is 17 minutes\' drive by car.</p>[:vi]<p>Located 160 metres’ walk from the beach, this Miami Beach hotel features an outdoor swimming pool and sun terrace. The hotel is 9 minutes’ drive from the shops and restaurants of Lincoln Road and offers free WiFi to guests.</p><p>A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.</p><p>A fitness centre is available. This beachfront property offers bicycle hires, concierge services, and a 24-hour front desk. Dining options include a poolside snack bar and a buffet restaurant that features salads, fresh fruit, cheese plates, and more.</p><p>Guests can explore the waters, architecture, and nightlife of South Beach (3.6 km) or play a round of golf at Bayshore Golf Course (2.6 km). Miami Beach Convention Centre is 2.4 kilometres’ drive away while Miami International Airport is 17 minutes\' drive by car.</p>[:ja]<p>Located 160 metres’ walk from the beach, this Miami Beach hotel features an outdoor swimming pool and sun terrace. The hotel is 9 minutes’ drive from the shops and restaurants of Lincoln Road and offers free WiFi to guests.</p><p>A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.</p><p>A fitness centre is available. This beachfront property offers bicycle hires, concierge services, and a 24-hour front desk. Dining options include a poolside snack bar and a buffet restaurant that features salads, fresh fruit, cheese plates, and more.</p><p>Guests can explore the waters, architecture, and nightlife of South Beach (3.6 km) or play a round of golf at Bayshore Golf Course (2.6 km). Miami Beach Convention Centre is 2.4 kilometres’ drive away while Miami International Airport is 17 minutes\' drive by car.</p>[:]', 25.788299, -80.127754, '[:en]Miami Beach, United States of America[:vi]Miami Beach, United States of America[:ja]Miami Beach, United States of America[:]', '12', NULL, NULL, NULL, NULL, '123', '119,118,117,116', 500.00, 'a:10:{i:16166627017409;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 1[:vi][:ja][:]\";s:5:\"price\";s:2:\"10\";}i:1616662713167;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 2[:vi][:ja][:]\";s:5:\"price\";s:2:\"20\";}i:16166627227309;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 3[:vi][:ja][:]\";s:5:\"price\";s:2:\"30\";}i:16166627259480;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 4[:vi][:ja][:]\";s:5:\"price\";s:2:\"40\";}i:16166627296304;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 5[:vi][:ja][:]\";s:5:\"price\";s:2:\"50\";}i:16166627351447;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 6[:vi][:ja][:]\";s:5:\"price\";s:2:\"60\";}i:16166627402375;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 7[:vi][:ja][:]\";s:5:\"price\";s:2:\"70\";}i:16166627446375;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 8[:vi][:ja][:]\";s:5:\"price\";s:2:\"80\";}i:16166627505252;a:2:{s:5:\"title\";s:33:\"[:en]Extra Service 9[:vi][:ja][:]\";s:5:\"price\";s:2:\"90\";}i:16166627541427;a:2:{s:5:\"title\";s:34:\"[:en]Extra Service 10[:vi][:ja][:]\";s:5:\"price\";s:3:\"100\";}}', 5, '134', 'https://www.youtube.com/watch?v=0VIhza1IyE0', 'a:7:{i:16166628014924;a:2:{s:5:\"title\";s:26:\"[:en]Check-in[:vi][:ja][:]\";s:7:\"content\";s:23:\"[:en]10:00[:vi][:ja][:]\";}i:1616663478127;a:2:{s:5:\"title\";s:27:\"[:en]Check-out[:vi][:ja][:]\";s:7:\"content\";s:23:\"[:en]13:00[:vi][:ja][:]\";}i:16166634873346;a:2:{s:5:\"title\";s:42:\"[:en]Cancellation/ prepayment[:vi][:ja][:]\";s:7:\"content\";s:176:\"[:en]Cancellation and prepayment policies vary according to accommodation type. Please enter the dates of your stay and check the conditions of your required room.[:vi][:ja][:]\";}i:16166634958103;a:2:{s:5:\"title\";s:35:\"[:en]Children and beds[:vi][:ja][:]\";s:7:\"content\";s:602:\"[:en]Child policies\r\nChildren of any age are welcome.\r\n\r\nChildren aged 12 years and above are considered adults at this property.\r\n\r\nTo see correct prices and occupancy information, please add the number of children in your group and their ages to your search.\r\n\r\nSupplements are not calculated automatically in the total costs and will have to be paid for separately during your stay.\r\n\r\nThe maximum number of extra beds and cots allowed is dependent on the room you choose. Please check your selected room for the maximum capacity.\r\n\r\nAll cots and extra beds are subject to availability.[:vi][:ja][:]\";}i:16166635105753;a:2:{s:5:\"title\";s:36:\"[:en]No age restriction[:vi][:ja][:]\";s:7:\"content\";s:58:\"[:en]There is no age requirement for check-in[:vi][:ja][:]\";}i:16166635178141;a:2:{s:5:\"title\";s:22:\"[:en]Pets[:vi][:ja][:]\";s:7:\"content\";s:39:\"[:en]Pets are not allowed.[:vi][:ja][:]\";}i:16166635259004;a:2:{s:5:\"title\";s:24:\"[:en]Groups[:vi][:ja][:]\";s:7:\"content\";s:106:\"[:en]When booking more than 7 rooms, different policies and additional supplements may apply.[:vi][:ja][:]\";}}', '10:00', '13:00', 1, 2, 'a:5:{i:16166418477989;a:2:{s:5:\"title\";s:72:\"[:en]Bass Museum of Art[:vi]Bass Museum of Art[:ja]Bass Museum of Art[:]\";s:8:\"distance\";s:6:\"1.2 km\";}i:16166418514898;a:2:{s:5:\"title\";s:81:\"[:en]Miami Beach Golf Club[:vi]Miami Beach Golf Club[:ja]Miami Beach Golf Club[:]\";s:8:\"distance\";s:6:\"1.5 km\";}i:16166418579092;a:2:{s:5:\"title\";s:78:\"[:en]Bayshore Golf Course[:vi]Bayshore Golf Course[:ja]Bayshore Golf Course[:]\";s:8:\"distance\";s:6:\"1.6 km\";}i:16166418639691;a:2:{s:5:\"title\";s:102:\"[:en]Miami Beach Botanical Garden[:vi]Miami Beach Botanical Garden[:ja]Miami Beach Botanical Garden[:]\";s:8:\"distance\";s:6:\"1.7 km\";}i:16166418699393;a:2:{s:5:\"title\";s:153:\"[:en]Jackie Gleason Theater of the Performing Arts[:vi]Jackie Gleason Theater of the Performing Arts[:ja]Jackie Gleason Theater of the Performing Arts[:]\";s:8:\"distance\";s:6:\"1.8 km\";}}', '[]', '[]', 'a:5:{i:16166418815432;a:2:{s:5:\"title\";s:54:\"[:en]Lincoln Road[:vi]Lincoln Road[:ja]Lincoln Road[:]\";s:8:\"distance\";N;}i:16166418879402;a:2:{s:5:\"title\";s:63:\"[:en]Versace Mansion[:vi]Versace Mansion[:ja]Versace Mansion[:]\";s:8:\"distance\";s:6:\"2.9 km\";}i:16166418935577;a:2:{s:5:\"title\";s:96:\"[:en]Art Deco Historic District[:vi]Art Deco Historic District[:ja]Art Deco Historic District[:]\";s:8:\"distance\";s:6:\"3.1 km\";}i:16166418993157;a:2:{s:5:\"title\";s:51:\"[:en]Ocean Drive[:vi]Ocean Drive[:ja]Ocean Drive[:]\";s:8:\"distance\";s:6:\"3.3 km\";}i:16166419063827;a:2:{s:5:\"title\";s:57:\"[:en]Port of Miami[:vi]Port of Miami[:ja]Port of Miami[:]\";s:8:\"distance\";s:6:\"6.2 km\";}}', 'a:3:{i:16166419129116;a:2:{s:5:\"title\";s:84:\"[:en]Restaurant  Nobu Miami[:vi]Restaurant  Nobu Miami[:ja]Restaurant  Nobu Miami[:]\";s:8:\"distance\";s:6:\"1.6 km\";}i:16166419196209;a:2:{s:5:\"title\";s:105:\"[:en]Cafe/Bar  Tropical Beach Cafe[:vi]Cafe/Bar  Tropical Beach Cafe[:ja]Cafe/Bar  Tropical Beach Cafe[:]\";s:8:\"distance\";s:6:\"1.6 km\";}i:16166419261979;a:2:{s:5:\"title\";s:117:\"[:en]Restaurant  Bella Cuba Restaurant[:vi]Restaurant  Bella Cuba Restaurant[:ja]Restaurant  Bella Cuba Restaurant[:]\";s:8:\"distance\";s:6:\"3.2 km\";}}', 'a:2:{i:16166419313219;a:2:{s:5:\"title\";s:87:\"[:en]Miami Beach  White sand[:vi]Miami Beach  White sand[:ja]Miami Beach  White sand[:]\";s:8:\"distance\";s:5:\"150 m\";}i:16166419404261;a:2:{s:5:\"title\";s:126:\"[:en]Swimming, Water Sports, Food & Drink[:vi]Swimming, Water Sports, Food & Drink[:ja]Swimming, Water Sports, Food & Drink[:]\";s:8:\"distance\";s:5:\"150 m\";}}', 'a:3:{i:16166419496844;a:2:{s:5:\"title\";s:75:\"[:en]Miami Seaplane Base[:vi]Miami Seaplane Base[:ja]Miami Seaplane Base[:]\";s:8:\"distance\";s:4:\"6 km\";}i:16166419555126;a:2:{s:5:\"title\";s:99:\"[:en]Miami International Airport[:vi]Miami International Airport[:ja]Miami International Airport[:]\";s:8:\"distance\";s:7:\"15.4 km\";}i:16166419614261;a:2:{s:5:\"title\";s:159:\"[:en]Fort Lauderdale-Hollywood International Airport[:vi]Fort Lauderdale-Hollywood International Airport[:ja]Fort Lauderdale-Hollywood International Airport[:]\";s:8:\"distance\";s:7:\"29.7 km\";}}', 'a:3:{i:16166420435589;a:2:{s:8:\"question\";s:66:\"[:en]A flat-screen TV[:vi]A flat-screen TV[:ja]A flat-screen TV[:]\";s:6:\"answer\";s:615:\"[:en]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:vi]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:ja]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:]\";}i:16166420485037;a:2:{s:8:\"question\";s:66:\"[:en]A flat-screen TV[:vi]A flat-screen TV[:ja]A flat-screen TV[:]\";s:6:\"answer\";s:615:\"[:en]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:vi]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:ja]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:]\";}i:16166420507998;a:2:{s:8:\"question\";s:66:\"[:en]A flat-screen TV[:vi]A flat-screen TV[:ja]A flat-screen TV[:]\";s:6:\"answer\";s:615:\"[:en]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:vi]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:ja]A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.[:]\";}}', 'on', 5, '[:en]When booking more than 7 rooms, different policies and additional supplements may apply.[:vi][:ja][:]', '65', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', 5.0, 'on', 1, 'publish', '2021-03-24 20:07:34', '2021-03-25 02:13:07', 'both', 'off', NULL, NULL, NULL),
(7, 'Fontainebleau Miami Beach', 'fontainebleau-miami-beach', '<p>Beachfront Fontainebleau Miami Beach features scenic ocean views and 6 outdoor swimming pools surrounded by private cabanas. A nightclub, 9 restaurants, and a spa are located on site for comfort.</p><p>A flat-screen TV and WiFi access come standard in every guestroom. Select rooms feature a kitchenette and a balcony with ocean views.</p><p>Enjoy music by the pools or relax in one of the private cabanas that include a flat-screen TV, WiFi, and butler service. There is also a children’s playground, children’s waterscape, and direct beach access.</p><p>Hotel Fontainebleau Miami Beach offers 9 dining establishments with a wide range of cuisines, including Chinese, Italian, and Japanese. Guests can enjoy oceanfront dining at La Cote or relax with coffee and cake at Chez Bon Bon.</p><p>Take a tour of the Art Deco District (3.4 mi drive) or enjoy the shops, restaurants, and sights of Lincoln Road Mall (3.1 mi drive). Miami International Airport is 20 minutes’ drive away.</p><p>Couples in particular like the location – they rated it&nbsp;<strong>8.6</strong>&nbsp;for a two-person trip.</p><p>We speak your language!</p>', 25.788299, -80.127754, 'Miami Beach, United States of America', '12', NULL, NULL, NULL, NULL, '149', '133,132,125,124,117,116', 300.00, '[]', 5, '134', '', '[]', '10:00', '13:00', 1, 1, 'a:4:{i:16166460393190;a:2:{s:5:\"title\";s:21:\"Miami Beach Golf Club\";s:8:\"distance\";s:6:\"2.4 km\";}i:16166461506665;a:2:{s:5:\"title\";s:18:\"Bass Museum of Art\";s:8:\"distance\";s:6:\"2.4 km\";}i:16166461574510;a:2:{s:5:\"title\";s:20:\"Bayshore Golf Course\";s:8:\"distance\";s:6:\"2.5 km\";}i:16166461692076;a:2:{s:5:\"title\";s:28:\"Miami Beach Botanical Garden\";s:8:\"distance\";s:6:\"2.9 km\";}}', '[]', '[]', 'a:4:{i:16166461774807;a:2:{s:5:\"title\";s:12:\"Lincoln Road\";s:8:\"distance\";s:6:\"3.3 km\";}i:16166461853024;a:2:{s:5:\"title\";s:15:\"Versace Mansion\";s:8:\"distance\";s:6:\"4.1 km\";}i:16166461911482;a:2:{s:5:\"title\";s:26:\"Art Deco Historic District\";s:8:\"distance\";s:6:\"4.4 km\";}i:1616646198567;a:2:{s:5:\"title\";s:11:\"Ocean Drive\";s:8:\"distance\";s:6:\"4.6 km\";}}', '[]', '[]', 'a:3:{i:16166462134006;a:2:{s:5:\"title\";s:19:\"Miami Seaplane Base\";s:8:\"distance\";s:6:\"6.7 km\";}i:16166462191962;a:2:{s:5:\"title\";s:27:\"Miami International Airport\";s:8:\"distance\";s:7:\"15.7 km\";}i:1616646225118;a:2:{s:5:\"title\";s:47:\"Fort Lauderdale-Hollywood International Airport\";s:8:\"distance\";s:7:\"28.5 km\";}}', 'a:4:{i:16166462686912;a:2:{s:8:\"question\";s:24:\"Enjoy music by the pools\";s:6:\"answer\";s:211:\"Enjoy music by the pools or relax in one of the private cabanas that include a flat-screen TV, WiFi, and butler service. There is also a children’s playground, children’s waterscape, and direct beach access.\";}i:16166462763282;a:2:{s:8:\"question\";s:24:\"Enjoy music by the pools\";s:6:\"answer\";s:211:\"Enjoy music by the pools or relax in one of the private cabanas that include a flat-screen TV, WiFi, and butler service. There is also a children’s playground, children’s waterscape, and direct beach access.\";}i:16166462788092;a:2:{s:8:\"question\";s:24:\"Enjoy music by the pools\";s:6:\"answer\";s:211:\"Enjoy music by the pools or relax in one of the private cabanas that include a flat-screen TV, WiFi, and butler service. There is also a children’s playground, children’s waterscape, and direct beach access.\";}i:16166462782241;a:2:{s:8:\"question\";s:24:\"Enjoy music by the pools\";s:6:\"answer\";s:211:\"Enjoy music by the pools or relax in one of the private cabanas that include a flat-screen TV, WiFi, and butler service. There is also a children’s playground, children’s waterscape, and direct beach access.\";}}', 'off', 5, '', '63', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 21:14:17', '2021-03-24 21:25:24', 'both', 'off', NULL, NULL, NULL),
(9, 'Riu Plaza New York Times Square', 'riu-plaza-new-york-times-square', '<p>Located in New York, 100 m from Restaurant Row, Riu Plaza New York Times Square offers WiFi. The hotel has a terrace and fitness center, and guests can enjoy a meal at the restaurant The Theater Buffet.</p><p>All rooms have a TV. Every room is fitted with a private bathroom with a bath or shower, with free toiletries and a hair dryer provided.</p><p>There is a 24-hour front desk at the property and Capital Grab &amp; Go offers coffee.</p><p>Times Square is 400 m from Riu Plaza New York Times Square, while Broadway Theater is 601 m from the property. La Guardia Airport is 6.2 mi away.</p><p>This is our guests\' favorite part of New York, according to independent reviews.</p><p>Couples in particular like the location – they rated it&nbsp;<strong>9.5</strong>&nbsp;for a two-person trip.</p>', 40.755888, -73.980562, 'New York, United States of America', '12', NULL, NULL, NULL, NULL, '116', '128,125,122,117', 150.00, '[]', 4, '134', '', '[]', '10:00', '13:00', 1, 1, 'a:5:{i:16166538763091;a:2:{s:5:\"title\";s:14:\"Restaurant Row\";s:8:\"distance\";s:6:\"0.1 km\";}i:1616653881918;a:2:{s:5:\"title\";s:23:\"Richard Rodgers Theatre\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166538881888;a:2:{s:5:\"title\";s:20:\"The Majestic Theatre\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166538942982;a:2:{s:5:\"title\";s:16:\"Minskoff Theatre\";s:8:\"distance\";s:6:\"0.3 km\";}i:16166539001130;a:2:{s:5:\"title\";s:19:\"PlayStation Theater\";s:8:\"distance\";s:6:\"0.3 km\";}}', '[]', '[]', 'a:2:{i:16166539135842;a:2:{s:5:\"title\";s:18:\"Rockefeller Center\";s:8:\"distance\";s:6:\"0.9 km\";}i:16166539202745;a:2:{s:5:\"title\";s:20:\"Museum of Modern Art\";s:8:\"distance\";s:4:\"1 km\";}}', 'a:1:{i:1616653926991;a:2:{s:5:\"title\";s:26:\"Restaurant  Hell\'s Kitchen\";s:8:\"distance\";s:6:\"0.6 km\";}}', '[]', 'a:3:{i:16166539378727;a:2:{s:5:\"title\";s:17:\"LaGuardia Airport\";s:8:\"distance\";s:6:\"9.9 km\";}i:16166539435816;a:2:{s:5:\"title\";s:36:\"Newark Liberty International Airport\";s:8:\"distance\";s:7:\"17.8 km\";}i:16166539496251;a:2:{s:5:\"title\";s:37:\"John F. Kennedy International Airport\";s:8:\"distance\";s:7:\"21.3 km\";}}', 'a:5:{i:16166539744505;a:2:{s:8:\"question\";s:31:\"All rooms have air-conditioning\";s:6:\"answer\";s:789:\"The RIU Plaza New York Times Square Hotel offers the most comprehensive range of installations and services in the very heart of Manhattan. The hotel occupies 29 storeys with an elegant avant-garde décor and first rate services: a restaurant, a cafeteria with “Grab & Go”, executive room, bar, 4 meeting rooms and Gym. The hotel facility fee includes Wi-Fi, cloakroom access, a water bottle in each room, unlimited use of the gym and several other services. Family and executive rooms offer all manner of facilities, including a mini-fridge, work desk, flat screen TV and Wireless Internet. All rooms have air-conditioning and central heating, as well as a safe. There is a wide offer of rooms at different rates and with varying characteristics to adapt to all types of requirements.\";}i:16166539808937;a:2:{s:8:\"question\";s:31:\"All rooms have air-conditioning\";s:6:\"answer\";s:789:\"The RIU Plaza New York Times Square Hotel offers the most comprehensive range of installations and services in the very heart of Manhattan. The hotel occupies 29 storeys with an elegant avant-garde décor and first rate services: a restaurant, a cafeteria with “Grab & Go”, executive room, bar, 4 meeting rooms and Gym. The hotel facility fee includes Wi-Fi, cloakroom access, a water bottle in each room, unlimited use of the gym and several other services. Family and executive rooms offer all manner of facilities, including a mini-fridge, work desk, flat screen TV and Wireless Internet. All rooms have air-conditioning and central heating, as well as a safe. There is a wide offer of rooms at different rates and with varying characteristics to adapt to all types of requirements.\";}i:16166539818051;a:2:{s:8:\"question\";s:31:\"All rooms have air-conditioning\";s:6:\"answer\";s:789:\"The RIU Plaza New York Times Square Hotel offers the most comprehensive range of installations and services in the very heart of Manhattan. The hotel occupies 29 storeys with an elegant avant-garde décor and first rate services: a restaurant, a cafeteria with “Grab & Go”, executive room, bar, 4 meeting rooms and Gym. The hotel facility fee includes Wi-Fi, cloakroom access, a water bottle in each room, unlimited use of the gym and several other services. Family and executive rooms offer all manner of facilities, including a mini-fridge, work desk, flat screen TV and Wireless Internet. All rooms have air-conditioning and central heating, as well as a safe. There is a wide offer of rooms at different rates and with varying characteristics to adapt to all types of requirements.\";}i:1616653983699;a:2:{s:8:\"question\";s:31:\"All rooms have air-conditioning\";s:6:\"answer\";s:789:\"The RIU Plaza New York Times Square Hotel offers the most comprehensive range of installations and services in the very heart of Manhattan. The hotel occupies 29 storeys with an elegant avant-garde décor and first rate services: a restaurant, a cafeteria with “Grab & Go”, executive room, bar, 4 meeting rooms and Gym. The hotel facility fee includes Wi-Fi, cloakroom access, a water bottle in each room, unlimited use of the gym and several other services. Family and executive rooms offer all manner of facilities, including a mini-fridge, work desk, flat screen TV and Wireless Internet. All rooms have air-conditioning and central heating, as well as a safe. There is a wide offer of rooms at different rates and with varying characteristics to adapt to all types of requirements.\";}i:16166539834784;a:2:{s:8:\"question\";s:31:\"All rooms have air-conditioning\";s:6:\"answer\";s:789:\"The RIU Plaza New York Times Square Hotel offers the most comprehensive range of installations and services in the very heart of Manhattan. The hotel occupies 29 storeys with an elegant avant-garde décor and first rate services: a restaurant, a cafeteria with “Grab & Go”, executive room, bar, 4 meeting rooms and Gym. The hotel facility fee includes Wi-Fi, cloakroom access, a water bottle in each room, unlimited use of the gym and several other services. Family and executive rooms offer all manner of facilities, including a mini-fridge, work desk, flat screen TV and Wireless Internet. All rooms have air-conditioning and central heating, as well as a safe. There is a wide offer of rooms at different rates and with varying characteristics to adapt to all types of requirements.\";}}', 'off', 5, '', '68', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 23:12:47', '2021-03-24 23:33:41', 'both', 'off', NULL, NULL, NULL),
(10, 'EAST Miami', 'east-miami', '<p>With 4 pools, an on-site restaurant, and a 24-hour fitness center, there\'s something for everyone at EAST Miami. Located in Brickell City Center, EAST Miami offers premium retail shops, a movie theater, restaurants &amp; bars, spas, and more.</p><p>Rooms and suites offer elegant decor with modern accessories, including floor-to-ceiling windows, a walk-in rain shower, and complimentary WiFi for guests. Each accommodations houses a spacious balcony and en suite tea and coffee-making facilities. All rooms include 50-inch, flat-screen TVs.</p><p>The 20,000-square-foot outdoor pool deck features 4 unique pool experiences, which include a lap pool, spa pool, cold plunge, and hot tub.</p><p>Enjoy city views of Brickell from the 40th-level rooftop bar, Sugar, or explore the light snacks and beverage options of Domain lounge. Guests can taste authentic Uruguayan fares at East, Miami\'s 5th-level restaurant and bar, Quinto La Huella.</p><p>The exhibits of the Perez Art Museum Miami and the American Airlines Arena are within a 1.9 miles’ drive from the property. The shops, restaurants, and nightlife of South Beach are 15 minutes’ drive from EAST Miami. Miami International Airport is a 7.5 miles’ drive.</p>', 25.766833, -80.188727, 'Miami, United States of America', '12', NULL, NULL, NULL, NULL, '152', '153,152,151,150,149', 300.00, '[]', 3, '134', '', '[]', '10:00', '13:00', 1, 1, 'a:5:{i:16166543161724;a:2:{s:5:\"title\";s:20:\"Brickell City Centre\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166543274604;a:2:{s:5:\"title\";s:12:\"HistoryMiami\";s:8:\"distance\";s:6:\"0.9 km\";}i:16166543337927;a:2:{s:5:\"title\";s:16:\"Miami Art Museum\";s:8:\"distance\";s:6:\"0.9 km\";}i:16166543389024;a:2:{s:5:\"title\";s:28:\"Miami-Dade County Courthouse\";s:8:\"distance\";s:6:\"0.9 km\";}i:16166543444754;a:2:{s:5:\"title\";s:34:\"Historical Museum of South Florida\";s:8:\"distance\";s:4:\"1 km\";}}', '[]', '[]', 'a:4:{i:16166543565431;a:2:{s:5:\"title\";s:23:\"American Airlines Arena\";s:8:\"distance\";s:6:\"1.7 km\";}i:16166543617321;a:2:{s:5:\"title\";s:13:\"Port of Miami\";s:8:\"distance\";s:4:\"2 km\";}i:16166543675804;a:2:{s:5:\"title\";s:12:\"Marlins Park\";s:8:\"distance\";s:4:\"3 km\";}i:16166543738100;a:2:{s:5:\"title\";s:14:\"Crandon Marina\";s:8:\"distance\";s:6:\"5.8 km\";}}', 'a:5:{i:16166543827019;a:2:{s:5:\"title\";s:38:\"Restaurant  KOMODO Restaurant & Lounge\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166543885635;a:2:{s:5:\"title\";s:25:\"Cafe/Bar  Barú Latin Bar\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166543943298;a:2:{s:5:\"title\";s:24:\"Cafe/Bar  Fado Irish Pub\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166544003590;a:2:{s:5:\"title\";s:41:\"Cafe/Bar  Perricone\'s Marketplace & Café\";s:8:\"distance\";s:6:\"0.3 km\";}i:1616654406434;a:2:{s:5:\"title\";s:35:\"Restaurant  Pubbelly Sushi Brickell\";s:8:\"distance\";s:6:\"0.1 km\";}}', '[]', 'a:3:{i:16166544165640;a:2:{s:5:\"title\";s:19:\"Miami Seaplane Base\";s:8:\"distance\";s:6:\"2.3 km\";}i:16166544229406;a:2:{s:5:\"title\";s:27:\"Miami International Airport\";s:8:\"distance\";s:6:\"9.1 km\";}i:16166544279373;a:2:{s:5:\"title\";s:47:\"Fort Lauderdale-Hollywood International Airport\";s:8:\"distance\";s:7:\"34.3 km\";}}', 'a:4:{i:16166544536314;a:2:{s:8:\"question\";s:30:\"Miami skyline and Biscayne Bay\";s:6:\"answer\";s:1127:\"EAST, Miami, the anchor hotel for Swire Properties’ $1.05 Billion, 5.4 million square foot mixed-used development, and the first of its kind for the Hong Kong-based brand in the United States, features destination dining, state-of-the-art fitness facilities, cutting edge technology, and quality amenities available to both local residents and visitors to Miami. The hotel offers a distinctive and unconventional experience for individuals who seek innovation, style and personalized service, building upon the success of the EAST brand, which includes EAST, Hong Kong and EAST, Beijing. EAST, Miami offers 352 guest rooms to include eight suites and 89 residence suites all owned and operated by Swire Hotels. Ranging in size from 300 to 1,800 square feet, the contemporary rooms, suites, and residence suites feature balconies with views of the Miami skyline and Biscayne Bay, floor-to-ceiling windows, walk-in rain shower, and complimentary WiFi. The one-, two- and three-bedroom residence suite options also offer fully equipped kitchen and laundry facilities along with access to all amenities and services of the hotel.\";}i:16166544598103;a:2:{s:8:\"question\";s:30:\"Miami skyline and Biscayne Bay\";s:6:\"answer\";s:1127:\"EAST, Miami, the anchor hotel for Swire Properties’ $1.05 Billion, 5.4 million square foot mixed-used development, and the first of its kind for the Hong Kong-based brand in the United States, features destination dining, state-of-the-art fitness facilities, cutting edge technology, and quality amenities available to both local residents and visitors to Miami. The hotel offers a distinctive and unconventional experience for individuals who seek innovation, style and personalized service, building upon the success of the EAST brand, which includes EAST, Hong Kong and EAST, Beijing. EAST, Miami offers 352 guest rooms to include eight suites and 89 residence suites all owned and operated by Swire Hotels. Ranging in size from 300 to 1,800 square feet, the contemporary rooms, suites, and residence suites feature balconies with views of the Miami skyline and Biscayne Bay, floor-to-ceiling windows, walk-in rain shower, and complimentary WiFi. The one-, two- and three-bedroom residence suite options also offer fully equipped kitchen and laundry facilities along with access to all amenities and services of the hotel.\";}i:16166544606012;a:2:{s:8:\"question\";s:30:\"Miami skyline and Biscayne Bay\";s:6:\"answer\";s:1127:\"EAST, Miami, the anchor hotel for Swire Properties’ $1.05 Billion, 5.4 million square foot mixed-used development, and the first of its kind for the Hong Kong-based brand in the United States, features destination dining, state-of-the-art fitness facilities, cutting edge technology, and quality amenities available to both local residents and visitors to Miami. The hotel offers a distinctive and unconventional experience for individuals who seek innovation, style and personalized service, building upon the success of the EAST brand, which includes EAST, Hong Kong and EAST, Beijing. EAST, Miami offers 352 guest rooms to include eight suites and 89 residence suites all owned and operated by Swire Hotels. Ranging in size from 300 to 1,800 square feet, the contemporary rooms, suites, and residence suites feature balconies with views of the Miami skyline and Biscayne Bay, floor-to-ceiling windows, walk-in rain shower, and complimentary WiFi. The one-, two- and three-bedroom residence suite options also offer fully equipped kitchen and laundry facilities along with access to all amenities and services of the hotel.\";}i:16166544615051;a:2:{s:8:\"question\";s:30:\"Miami skyline and Biscayne Bay\";s:6:\"answer\";s:1127:\"EAST, Miami, the anchor hotel for Swire Properties’ $1.05 Billion, 5.4 million square foot mixed-used development, and the first of its kind for the Hong Kong-based brand in the United States, features destination dining, state-of-the-art fitness facilities, cutting edge technology, and quality amenities available to both local residents and visitors to Miami. The hotel offers a distinctive and unconventional experience for individuals who seek innovation, style and personalized service, building upon the success of the EAST brand, which includes EAST, Hong Kong and EAST, Beijing. EAST, Miami offers 352 guest rooms to include eight suites and 89 residence suites all owned and operated by Swire Hotels. Ranging in size from 300 to 1,800 square feet, the contemporary rooms, suites, and residence suites feature balconies with views of the Miami skyline and Biscayne Bay, floor-to-ceiling windows, walk-in rain shower, and complimentary WiFi. The one-, two- and three-bedroom residence suite options also offer fully equipped kitchen and laundry facilities along with access to all amenities and services of the hotel.\";}}', 'off', 5, '', '67', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 23:37:11', '2021-03-24 23:41:49', 'both', 'off', NULL, NULL, NULL);
INSERT INTO `gmz_hotel` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `extra_services`, `hotel_star`, `hotel_logo`, `video`, `policy`, `checkin_time`, `checkout_time`, `min_day_booking`, `min_day_stay`, `nearby_common`, `nearby_education`, `nearby_health`, `nearby_top_attractions`, `nearby_restaurants_cafes`, `nearby_natural_beauty`, `nearby_airports`, `faq`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `property_type`, `hotel_facilities`, `hotel_services`, `rating`, `is_featured`, `author`, `status`, `created_at`, `updated_at`, `booking_form`, `external_booking`, `external_link`, `post_description`, `deleted_at`) VALUES
(11, 'Avanti International Resort', 'avanti-international-resort', '<p>Located in&nbsp;<strong style=\"background-color: initial;\">Orlando</strong>, Florida,&nbsp;<strong style=\"background-color: initial;\">Avanti Resort</strong>&nbsp;features an outdoor&nbsp;<strong style=\"background-color: initial;\">swimming pool</strong>, a&nbsp;<strong style=\"background-color: initial;\">poolside bar</strong>&nbsp;and grill, a barista in the lobby, and free property-wide WiFi. The Orange County Convention Center, home of the 2018 PGA Merchandise Show and the 2018 International Builders\' Show, is 1.7 km away.</p><p>A refrigerator and coffee machine come standard in each room at Avanti Resort as well as a private bathroom and flat-screen cable TV. Select rooms offer a microwave as well.</p><p>A fitness centre, volleyball court, and shuffleboard are featured at the Orlando hotel. Other facilities include a games room and vending machines.</p><p>Walt Disney World Resort is just 10 minutes’ drive from the Avanti. The Orlando Eye and Madame Tussauds are within 10 minutes\' walk of the hotel.</p><p>This is our guests\' favorite part of Orlando, according to independent reviews.</p><p>Couples in particular like the location – they rated it&nbsp;<strong>8.8</strong>&nbsp;for a two-person trip.</p><p>We speak your language!</p>', 28.470000, -81.470000, 'Orlando, United States of America', '12', NULL, NULL, NULL, NULL, '104', '141,139,133,132,130', 400.00, '[]', 2, '134', '', '[]', '10:00', '13:00', 1, 1, 'a:5:{i:16166552874237;a:2:{s:5:\"title\";s:20:\"Americas Escape Game\";s:8:\"distance\";s:6:\"0.2 km\";}i:16166552975746;a:2:{s:5:\"title\";s:28:\"Pirate\'s Cove Adventure Golf\";s:8:\"distance\";s:6:\"0.3 km\";}i:16166553029135;a:2:{s:5:\"title\";s:14:\"Icebar Orlando\";s:8:\"distance\";s:6:\"0.5 km\";}i:16166553074518;a:2:{s:5:\"title\";s:30:\"The Wheel at ICON Park Orlando\";s:8:\"distance\";s:6:\"0.6 km\";}i:16166553135489;a:2:{s:5:\"title\";s:19:\"Wonderworks Orlando\";s:8:\"distance\";s:6:\"0.6 km\";}}', '[]', '[]', 'a:5:{i:16166553238394;a:2:{s:5:\"title\";s:16:\"SeaWorld Orlando\";s:8:\"distance\";s:6:\"3.5 km\";}i:16166553299576;a:2:{s:5:\"title\";s:39:\"Universal Studios\' Islands of Adventure\";s:8:\"distance\";s:6:\"3.7 km\";}i:16166553348561;a:2:{s:5:\"title\";s:35:\"The Wizarding World of Harry Potter\";s:8:\"distance\";s:6:\"3.8 km\";}i:16166553398495;a:2:{s:5:\"title\";s:25:\"Universal Studios Orlando\";s:8:\"distance\";s:6:\"3.8 km\";}i:16166553445699;a:2:{s:5:\"title\";s:25:\"SeaWorld\'s Discovery Cove\";s:8:\"distance\";s:6:\"3.9 km\";}}', '[]', '[]', 'a:3:{i:16166553527097;a:2:{s:5:\"title\";s:29:\"Orlando International Airport\";s:8:\"distance\";s:5:\"16 km\";}i:1616655357964;a:2:{s:5:\"title\";s:25:\"Orlando Executive Airport\";s:8:\"distance\";s:7:\"17.9 km\";}i:16166553633566;a:2:{s:5:\"title\";s:37:\"Orlando Sanford International Airport\";s:8:\"distance\";s:7:\"43.5 km\";}}', '[]', 'off', 5, '', '67', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', NULL, 'on', 1, 'publish', '2021-03-24 23:53:41', '2021-03-24 23:56:58', 'both', 'off', NULL, NULL, NULL),
(12, 'Grand Beach Hotel', 'grand-beach-hotel', '<p>Overlooking the Atlantic Ocean, this beachfront hotel features private beach access, a 7th-floor outdoor pool, and spacious suites. Grand Beach Hotel is 3.7 mi drive from South Beach.</p><p>Two 42-inch LCD TVs with free movies, a refrigerator, and a seating area are offered in every modernly-decorated Grand Beach Hotel suite. Most suites have a private balcony and 2 full bathrooms.</p><p>Hotel Grand Beach features 2 family-friendly, beachfront pools, hot tubs, and a 24-hour gym with panoramic view. Beach and pool-side spa services are available. Plus, a children\'s recreational area is on the 7th floor.</p><p>Chez Gaston Restaurant serves Latin and American cuisine throughout the day in a casual atmosphere. Guests can get drinks at any of the 3 bars including the poolside Sunset Bar.</p><p>Outdoor activities include snorkeling, windsurfing and deep sea fishing. Lincoln Road Mall is 3.5 mi drive from Hotel Grand Beach.</p><p>Couples in particular like the location – they rated it&nbsp;<strong>8.5</strong>&nbsp;for a two-person trip.</p><p>We speak your language!</p>', 25.788299, -80.127754, 'Miami, United States of America', '12', NULL, NULL, NULL, NULL, '129', '133,132,124,123', 250.00, '[]', 5, '134', '', '[]', '10:00', '13:00', 1, 1, 'a:3:{i:16166556523673;a:2:{s:5:\"title\";s:21:\"Miami Beach Golf Club\";s:8:\"distance\";s:4:\"3 km\";}i:16166556631911;a:2:{s:5:\"title\";s:18:\"Bass Museum of Art\";s:8:\"distance\";s:6:\"3.2 km\";}i:16166556688099;a:2:{s:5:\"title\";s:20:\"Bayshore Golf Course\";s:8:\"distance\";s:6:\"3.2 km\";}}', '[]', '[]', 'a:3:{i:16166556803416;a:2:{s:5:\"title\";s:12:\"Lincoln Road\";s:8:\"distance\";s:6:\"4.1 km\";}i:16166556842677;a:2:{s:5:\"title\";s:15:\"Versace Mansion\";s:8:\"distance\";s:6:\"4.8 km\";}i:16166556897030;a:2:{s:5:\"title\";s:26:\"Art Deco Historic District\";s:8:\"distance\";s:6:\"5.1 km\";}}', '[]', '[]', 'a:3:{i:16166556955930;a:2:{s:5:\"title\";s:19:\"Miami Seaplane Base\";s:8:\"distance\";s:6:\"7.2 km\";}i:16166557013280;a:2:{s:5:\"title\";s:27:\"Miami International Airport\";s:8:\"distance\";s:7:\"15.9 km\";}i:16166557078238;a:2:{s:5:\"title\";s:47:\"Fort Lauderdale-Hollywood International Airport\";s:8:\"distance\";s:7:\"27.8 km\";}}', 'a:4:{i:16166557292920;a:2:{s:8:\"question\";s:26:\"Hotel Grand Beach features\";s:6:\"answer\";s:218:\"Hotel Grand Beach features 2 family-friendly, beachfront pools, hot tubs, and a 24-hour gym with panoramic view. Beach and pool-side spa services are available. Plus, a children\'s recreational area is on the 7th floor.\";}i:1616655736136;a:2:{s:8:\"question\";s:26:\"Hotel Grand Beach features\";s:6:\"answer\";s:218:\"Hotel Grand Beach features 2 family-friendly, beachfront pools, hot tubs, and a 24-hour gym with panoramic view. Beach and pool-side spa services are available. Plus, a children\'s recreational area is on the 7th floor.\";}i:16166557378301;a:2:{s:8:\"question\";s:26:\"Hotel Grand Beach features\";s:6:\"answer\";s:218:\"Hotel Grand Beach features 2 family-friendly, beachfront pools, hot tubs, and a 24-hour gym with panoramic view. Beach and pool-side spa services are available. Plus, a children\'s recreational area is on the 7th floor.\";}i:16166557373354;a:2:{s:8:\"question\";s:26:\"Hotel Grand Beach features\";s:6:\"answer\";s:218:\"Hotel Grand Beach features 2 family-friendly, beachfront pools, hot tubs, and a 24-hour gym with panoramic view. Beach and pool-side spa services are available. Plus, a children\'s recreational area is on the 7th floor.\";}}', 'off', 5, '', '63', '76,75,74,73,72,71,69', '85,84,83,82,81,80,79,78,77', 5.0, 'on', 1, 'publish', '2021-03-24 23:59:40', '2021-03-25 01:27:44', 'both', 'off', NULL, NULL, NULL),
(13, '[:en]Earum facere porro e[:vi]New hotel 1687697093[:]', 'doloribus-eaque-culp', '[:en]<p>Adipisicing providen.</p>[:vi]<p>Consequatur? Harum f.</p>[:]', 21.023985, 105.791488, '[:en][:vi][:]', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:16876971142418;a:2:{s:5:\"title\";s:13:\"[:en][:vi][:]\";s:8:\"distance\";N;}}', 'a:1:{i:16876971168322;a:2:{s:5:\"title\";s:13:\"[:en][:vi][:]\";s:8:\"distance\";N;}}', '[]', '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, '66', NULL, NULL, NULL, 'on', 1, 'pending', '2023-06-25 13:44:53', '2023-06-25 13:45:21', 'instant', 'off', NULL, '[:en]Aspernatur amet exp[:vi][:]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_language`
--

CREATE TABLE `gmz_language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `flag_code` varchar(191) DEFAULT NULL,
  `flag_name` varchar(191) DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `rtl` varchar(5) DEFAULT 'no',
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_language`
--

INSERT INTO `gmz_language` (`id`, `code`, `name`, `flag_code`, `flag_name`, `priority`, `rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'United Kingdom of Great Britain and Northern Ireland', 1, 'no', 'on', '2021-01-25 23:46:19', '2021-02-01 19:12:58'),
(2, 'vi', 'Vietnamese', 'vn', 'Viet Nam', 2, 'no', 'on', '2021-01-25 23:46:56', '2021-02-01 19:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_media`
--

CREATE TABLE `gmz_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_title` varchar(191) DEFAULT NULL,
  `media_name` varchar(191) NOT NULL,
  `media_url` varchar(191) NOT NULL,
  `media_path` varchar(191) NOT NULL,
  `media_description` varchar(191) DEFAULT NULL,
  `media_size` varchar(191) NOT NULL,
  `media_type` varchar(50) NOT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_media`
--

INSERT INTO `gmz_media` (`id`, `media_title`, `media_name`, `media_url`, `media_path`, `media_description`, `media_size`, `media_type`, `author`, `created_at`, `updated_at`) VALUES
(2, '8QBFk1687344915', '8qbfk1687344915', 'http://127.0.0.1:8000/storage/2023/06/26/8qbfk1687344915-1687751331.jpg', 'C:\\xampp7\\htdocs\\ibooking-Mod\\storage\\app/public/2023/06/26\\8qbfk1687344915-1687751331.jpg', '8QBFk1687344915', '147398', 'jpg', 1, '2023-06-26 04:48:51', '2023-06-26 04:48:51'),
(3, 'photo-1483884105135-c06ea81a7a80', 'photo-1483884105135-c06ea81a7a80', 'http://127.0.0.1:8000/storage/2023/06/27/photo-1483884105135-c06ea81a7a80-1687838639.jpg', 'E:\\Tour\\iBooking-Modified\\storage\\app/public/2023/06/27\\photo-1483884105135-c06ea81a7a80-1687838639.jpg', 'photo-1483884105135-c06ea81a7a80', '34809', 'jpg', 1, '2023-06-27 05:03:59', '2023-06-27 05:03:59'),
(4, 'photo-1483884105135-c06ea81a7a80', 'photo-1483884105135-c06ea81a7a80', 'http://127.0.0.1:8000/storage/2023/06/27/photo-1483884105135-c06ea81a7a80-1687838715.jpg', 'E:\\Tour\\iBooking-Modified\\storage\\app/public/2023/06/27\\photo-1483884105135-c06ea81a7a80-1687838715.jpg', 'photo-1483884105135-c06ea81a7a80', '34809', 'jpg', 1, '2023-06-27 05:05:15', '2023-06-27 05:05:15'),
(5, '5bd00f30c4f30-wallpaper-preview', '5bd00f30c4f30-wallpaper-preview', 'http://127.0.0.1:8000/storage/2023/06/27/5bd00f30c4f30-wallpaper-preview-1687841842.jpg', 'E:\\Tour\\iBooking-Modified\\storage\\app/public/2023/06/27\\5bd00f30c4f30-wallpaper-preview-1687841842.jpg', '5bd00f30c4f30-wallpaper-preview', '70565', 'jpg', 1, '2023-06-27 05:57:22', '2023-06-27 05:57:22'),
(6, 'HD-wallpaper-travel-couple-lifestyle', 'hd-wallpaper-travel-couple-lifestyle', 'http://127.0.0.1:8000/storage/2023/06/27/hd-wallpaper-travel-couple-lifestyle-1687841922.jpg', 'E:\\Tour\\iBooking-Modified\\storage\\app/public/2023/06/27\\hd-wallpaper-travel-couple-lifestyle-1687841922.jpg', 'HD-wallpaper-travel-couple-lifestyle', '62114', 'jpg', 1, '2023-06-27 05:58:42', '2023-06-27 05:58:42'),
(9, 'ttt', 'ttt', 'http://127.0.0.1:8000/storage/2023/06/27/ttt-1687845112.jpg', 'E:\\Tour\\iBooking-Modified\\storage\\app/public/2023/06/27\\ttt-1687845112.jpg', 'ttt', '87452', 'jpg', 1, '2023-06-27 06:51:52', '2023-06-27 06:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_menu`
--

CREATE TABLE `gmz_menu` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(191) NOT NULL,
  `menu_position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_menu`
--

INSERT INTO `gmz_menu` (`menu_id`, `menu_title`, `menu_position`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'primary', '2021-01-25 00:52:50', '2021-05-28 20:40:43'),
(2, 'COMPANY', NULL, '2021-01-30 09:30:03', '2021-01-30 18:42:52'),
(3, 'SUPPORT', NULL, '2021-01-30 18:46:02', '2021-01-30 18:46:02'),
(4, 'TOP CITIES', NULL, '2021-01-30 18:47:56', '2021-01-30 18:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_menu_structure`
--

CREATE TABLE `gmz_menu_structure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `depth` longtext DEFAULT NULL,
  `left` varchar(191) DEFAULT NULL,
  `right` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `post_id` varchar(191) DEFAULT NULL,
  `post_title` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `menu_id` varchar(191) DEFAULT NULL,
  `menu_lang` varchar(191) DEFAULT 'en',
  `target_blank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_menu_structure`
--

INSERT INTO `gmz_menu_structure` (`id`, `item_id`, `parent_id`, `depth`, `left`, `right`, `name`, `type`, `post_id`, `post_title`, `url`, `class`, `menu_id`, `menu_lang`, `target_blank`, `created_at`, `updated_at`) VALUES
(86, NULL, NULL, '0', '1', '14', '', '', '', '', '', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(87, '1', NULL, '1', '2', '3', 'Contact Us', 'custom', '0', 'Contact US', 'http://127.0.0.1:8000/contact-us', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(88, '2', NULL, '1', '4', '5', 'Become A Partner', 'custom', '0', 'Become A Partner', 'http://127.0.0.1:8000/become-a-partner', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(90, '4', NULL, '1', '8', '9', 'Rewards', 'custom', '0', 'Rewards', '#', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(91, '5', NULL, '1', '10', '11', 'Work with Us', 'custom', '0', 'Work with Us', '#', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(92, '6', NULL, '1', '12', '13', 'Meet the Team', 'custom', '0', 'Meet the Team', '#', '', '2', 'en', 0, '2021-01-30 18:45:44', '2021-01-30 18:45:44'),
(94, NULL, NULL, '0', '1', '14', '', '', '', '', '', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(95, '1', NULL, '1', '2', '3', 'Account', 'custom', '0', 'Account', '#', '', '0', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(96, '2', NULL, '1', '4', '5', 'About Us', 'custom', '0', 'About Us', '#', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(97, '3', NULL, '1', '6', '7', 'Legal', 'custom', '0', 'Legal', '#', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(98, '4', NULL, '1', '8', '9', 'Contact', 'custom', '0', 'Contact', '#', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(99, '5', NULL, '1', '10', '11', 'Affiliate Program', 'custom', '0', 'Affiliate Program', '#', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(100, '6', NULL, '1', '12', '13', 'Privacy Policy', 'custom', '0', 'Privacy Policy', '#', '', '3', 'en', 0, '2021-01-30 18:47:07', '2021-01-30 18:47:07'),
(102, NULL, NULL, '0', '1', '14', '', '', '', '', '', '', '4', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(103, '1', NULL, '1', '2', '3', 'Chicago', 'custom', '0', 'Chicago', '#', '', '4', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(104, '2', NULL, '1', '4', '5', 'New York', 'custom', '0', 'New York', '#', '', '4', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(105, '3', NULL, '1', '6', '7', 'San Francisco', 'custom', '0', 'San Francisco', '#', '', '4', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(106, '4', NULL, '1', '8', '9', 'California', 'custom', '0', 'California', '#', '', '0', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(107, '5', NULL, '1', '10', '11', 'Ohio', 'custom', '0', 'Ohio', '#', '', '0', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(108, '6', NULL, '1', '12', '13', 'Alaska', 'custom', '0', 'Alaska', '#', '', '0', 'en', 0, '2021-01-30 18:49:15', '2021-01-30 18:49:15'),
(484, NULL, NULL, '0', '1', '60', '', '', '', '', '', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(485, '1', NULL, '1', '2', '3', 'Home', 'custom', '0', 'Home', 'http://127.0.0.1:8000/', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(486, '2', NULL, '1', '4', '45', 'Tours', 'custom', '0', 'Tour', '#', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(487, '3', NULL, '2', '5', '10', 'All Inclusives', 'custom', '0', 'Hotel', 'http://127.0.0.1:8000/hotel', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(488, '4', '3', '3', '6', '7', 'Hotel Search Page', 'custom', '0', 'Hotel', 'http://127.0.0.1:8000/hotel-search', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(489, '5', '3', '3', '8', '9', 'Hotel Single', 'hotel', '6', 'Riu Plaza Miami Beach', 'http://127.0.0.1:8000/hotel/riu-plaza-miami-beach', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(490, '6', '2', '2', '11', '16', 'Apartment', 'custom', '0', 'Apartment', 'http://127.0.0.1:8000/apartment', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(491, '7', '6', '3', '12', '13', 'Apartment Search Page', 'custom', '0', 'Apartment', 'http://127.0.0.1:8000/apartment-search', '', '4', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(492, '8', '6', '3', '14', '15', 'Apartment Single', 'apartment', '5', 'Hector Cave House', 'http://127.0.0.1:8000/apartment/hector-cave-house', '', '4', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(493, '9', '2', '2', '17', '22', 'Car', 'custom', '0', 'Car', 'http://127.0.0.1:8000/car', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(494, '10', '9', '3', '18', '19', 'Car Search Page', 'custom', '0', 'Car', 'http://127.0.0.1:8000/car-search', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(495, '11', '9', '3', '20', '21', 'Car Single', 'car', '8', 'Vinfast Lux A2.0', 'http://127.0.0.1:8000/car/vinfast-lux-a20', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(496, '12', '2', '2', '23', '32', 'Space', 'custom', '0', 'Space', 'http://127.0.0.1:8000/space', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(497, '13', '12', '3', '24', '25', 'Space Search Page', 'custom', '0', 'Space', 'http://127.0.0.1:8000/space-search', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(498, '14', '12', '3', '26', '31', 'Space Single', 'custom', '0', 'Space Single', '#', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(499, '15', '12', '4', '27', '28', 'Dy Day', 'space', '14', 'Gregory Place', 'http://127.0.0.1:8000/space/gregory-place', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(500, '16', '14', '4', '29', '30', 'By Hour', 'space', '13', 'Turtle Ridge', 'http://127.0.0.1:8000/space/turtle-ridge', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(501, '17', '2', '2', '33', '38', 'Beauty', 'custom', '0', 'Beauty', 'http://127.0.0.1:8000/beauty-services', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(502, '18', '17', '3', '34', '35', 'Beauty Search Page', 'custom', '0', 'Beauty Search Page', 'http://127.0.0.1:8000/beauty-search', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(503, '19', '17', '3', '36', '37', 'Beauty Single', 'beauty', '6', 'Hair Dye Highlight For Women', 'http://127.0.0.1:8000/beauty-service/hair-dye-highlight-for-women', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(504, '20', '2', '2', '39', '44', 'Tour', 'custom', '0', 'Tour', 'http://127.0.0.1:8000/tour', '', '0', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(505, '21', '2', '2', '40', '41', 'Tour Search Page', 'custom', '0', 'Tour', 'http://127.0.0.1:8000/tour-search', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(506, '22', '2', '2', '42', '43', 'Tour Single', 'tour', '3', 'American Parks Trail end Rapid City', 'http://127.0.0.1:8000/tour/american-parks-trail-end-rapid-city', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(507, '23', NULL, '1', '46', '47', 'Blog', 'custom', '0', 'Blog', 'http://127.0.0.1:8000/blog', '', '4', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(508, '24', NULL, '1', '48', '57', 'Other Pages', 'custom', '0', 'Other Pages', '#', '', '4', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(509, '25', '24', '2', '49', '50', 'Post Single', 'post', '7', 'A Seaside Reset in Laguna Beach', 'http://127.0.0.1:8000/post/a-seaside-reset-in-laguna-beach-1', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(510, '26', '24', '2', '51', '52', '404 Page', 'custom', '0', '404 Page', 'http://127.0.0.1:8000/404', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(511, '27', NULL, '2', '53', '54', 'Latest Tours', 'tour', '45', 'It has roots', 'http://127.0.0.1:8000/tour-search', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(512, '28', NULL, '2', '55', '56', 'Inclusive Tours', 'custom', '0', 'tour', 'http://127.0.0.1:8000/tour', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43'),
(513, '29', NULL, '1', '58', '59', 'Contact Us', 'custom', '0', 'Contact Us', 'http://127.0.0.1:8000/contact-us', '', '1', 'en', 0, '2021-05-28 20:40:43', '2021-05-28 20:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_meta`
--

CREATE TABLE `gmz_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_type` varchar(191) DEFAULT NULL,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_notification`
--

CREATE TABLE `gmz_notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_from` bigint(20) DEFAULT NULL,
  `user_to` bigint(20) NOT NULL,
  `title` varchar(191) NOT NULL,
  `message` longtext NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_notification`
--

INSERT INTO `gmz_notification` (`id`, `user_from`, `user_to`, `title`, `message`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'New request booking for Car', 'New request booking for Car service on 2020-02-01', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(2, 1, 1, 'New request booking for Apartment', 'New request booking for Apartment service on 2020-02-01', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(3, 1, 1, 'New enquiry request for Car', 'New enquiry request for Car service on 2020-02-01', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(4, 1, 1, 'New enquiry request for Car', 'New enquiry request for Car service on 2020-02-02', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(5, 1, 1, 'New account has been created', 'New account has been created on 2020-02-01', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(6, 1, 1, 'New enquiry request for Car', 'New enquiry request for Car service on 2020-02-02', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(7, 1, 1, 'New enquiry request for Car', 'New enquiry request for Car service on 2020-02-02', 'system', '2021-02-01 00:42:03', '2021-02-01 00:42:03'),
(8, 1, 1, 'New Partner request', 'New Partner request on 02/02/2021', 'global', '2021-02-01 19:44:12', '2021-02-01 19:44:12'),
(9, 1, 4, 'Partner was approved', 'Your partner account has been approved on 02/02/2021', 'global', '2021-02-01 19:49:08', '2021-02-01 19:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_options`
--

CREATE TABLE `gmz_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_options`
--

INSERT INTO `gmz_options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'gmz_options', 'a:221:{s:11:\"general_tab\";s:7:\"#e2a03f\";s:8:\"page_tab\";s:7:\"#e2a03f\";s:10:\"currencies\";a:1:{i:0;a:8:{s:4:\"name\";s:3:\"USD\";s:6:\"symbol\";s:1:\"$\";s:4:\"unit\";s:3:\"USD\";s:8:\"exchange\";s:1:\"1\";s:8:\"position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:16:\"currency_decimal\";s:1:\"2\";}}s:16:\"primary_currency\";s:3:\"USD\";s:12:\"tax_included\";s:3:\"off\";s:11:\"tax_percent\";s:2:\"10\";s:10:\"commission\";s:2:\"25\";s:15:\"payment_heading\";s:0:\"\";s:11:\"payment_tab\";s:7:\"#e2a03f\";s:11:\"service_tab\";s:7:\"#e2a03f\";s:18:\"enable_post_review\";s:2:\"on\";s:13:\"enable_review\";s:2:\"on\";s:22:\"need_booking_to_review\";s:3:\"off\";s:19:\"need_approve_review\";s:3:\"off\";s:14:\"appearance_tab\";s:7:\"#e2a03f\";s:10:\"logo_email\";s:0:\"\";s:17:\"enable_queue_mail\";s:3:\"off\";s:13:\"email_heading\";s:0:\"\";s:10:\"email_host\";s:0:\"\";s:14:\"email_username\";s:0:\"\";s:14:\"email_password\";s:0:\"\";s:10:\"email_port\";s:0:\"\";s:16:\"email_encryption\";s:0:\"\";s:12:\"invoice_logo\";s:0:\"\";s:12:\"invoice_name\";s:0:\"\";s:15:\"invoice_address\";s:0:\"\";s:21:\"page_term_conditional\";s:1:\"9\";s:13:\"site_language\";s:2:\"en\";s:14:\"multi_language\";s:3:\"off\";s:6:\"is_rtl\";s:3:\"off\";s:11:\"date_format\";s:5:\"d/m/Y\";s:11:\"time_format\";s:5:\"h:i A\";s:9:\"time_type\";s:2:\"12\";s:15:\"unit_of_measure\";s:2:\"m2\";s:12:\"mapbox_token\";s:89:\"pk.eyJ1IjoianJlYW1vcSIsImEiOiJjanhsbGp3eGUwMXZ5M3VvM2NteXIyam9nIn0.ysDAJn41bgYT21EJihW0Hw\";s:14:\"social_heading\";s:0:\"\";s:10:\"social_tab\";s:7:\"#e2a03f\";s:12:\"ical_heading\";s:0:\"\";s:15:\"ical_time_value\";s:1:\"1\";s:14:\"ical_time_type\";s:4:\"hour\";s:9:\"site_name\";s:8:\"iBooking\";s:16:\"site_description\";s:0:\"\";s:10:\"admin_user\";s:1:\"1\";s:4:\"logo\";s:3:\"134\";s:7:\"favicon\";s:3:\"136\";s:14:\"logo-dashboard\";s:0:\"\";s:10:\"main_color\";s:7:\"#1ea69a\";s:10:\"custom_css\";s:0:\"\";s:11:\"header_code\";s:0:\"\";s:11:\"footer_code\";s:0:\"\";s:14:\"home_page_link\";s:0:\"\";s:16:\"home_slider_text\";s:41:\"Enjoy a great ride with SayYesToVacations\";s:11:\"home_slider\";s:3:\"9,2\";s:16:\"list_destination\";a:4:{i:16120236074305;a:4:{s:4:\"name\";s:7:\"Chicago\";s:5:\"image\";s:2:\"86\";s:3:\"lat\";s:10:\"41.8339037\";s:3:\"lng\";s:11:\"-87.8720466\";}i:16120237193814;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16120237619014;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16120237986194;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:12:\"testimonials\";a:3:{i:16115597118594;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16120234919384;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16120235196894;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:9:\"blog_link\";s:0:\"\";s:18:\"blog_feature_image\";s:2:\"14\";s:12:\"contact_link\";s:0:\"\";s:21:\"contact_feature_image\";s:2:\"14\";s:15:\"contact_heading\";N;s:19:\"contact_description\";N;s:15:\"contact_address\";N;s:13:\"contact_phone\";s:10:\"0123456789\";s:13:\"contact_email\";s:16:\"hello@booteam.co\";s:15:\"contact_map_lat\";s:18:\"21.024406943816178\";s:15:\"contact_map_lng\";s:15:\"105.78565294657\";s:26:\"payment_submit_form_enable\";s:2:\"on\";s:24:\"payment_submit_form_name\";s:11:\"Submit Form\";s:24:\"payment_submit_form_desc\";s:0:\"\";s:24:\"payment_submit_form_logo\";s:0:\"\";s:28:\"payment_bank_transfer_enable\";s:2:\"on\";s:26:\"payment_bank_transfer_name\";s:13:\"Bank Transfer\";s:26:\"payment_bank_transfer_desc\";s:0:\"\";s:26:\"payment_bank_transfer_logo\";s:0:\"\";s:21:\"payment_paypal_enable\";s:2:\"on\";s:19:\"payment_paypal_name\";s:6:\"Paypal\";s:19:\"payment_paypal_desc\";s:0:\"\";s:19:\"payment_paypal_logo\";s:0:\"\";s:23:\"payment_paypal_testmode\";s:2:\"on\";s:24:\"payment_paypal_client_id\";s:36:\"sb-bkvit4148522@business.example.com\";s:25:\"payment_paypal_secret_key\";s:8:\"3K.i1!^t\";s:21:\"payment_stripe_enable\";s:2:\"on\";s:19:\"payment_stripe_name\";s:6:\"Stripe\";s:19:\"payment_stripe_desc\";s:0:\"\";s:19:\"payment_stripe_logo\";s:0:\"\";s:22:\"payment_stripe_api_key\";s:107:\"sk_test_51I1RGnKYi385reoaQtwEPNXmLjTZEkAqqjzZfqn69DlL7Xf9AFadkFPNNv90JNiPNk0TQ29n65YAcSemRQdXZn8E00Uy70csFU\";s:25:\"payment_stripe_secret_key\";s:0:\"\";s:21:\"payment_skrill_enable\";s:3:\"off\";s:19:\"payment_skrill_name\";s:6:\"Skrill\";s:19:\"payment_skrill_desc\";s:0:\"\";s:19:\"payment_skrill_logo\";s:0:\"\";s:20:\"payment_skrill_email\";s:31:\"skrill_user_test2@smart2pay.com\";s:23:\"payment_skrill_password\";s:13:\"Qazxsw21.s2p!\";s:28:\"payment_authorize_net_enable\";s:3:\"off\";s:26:\"payment_authorize_net_name\";s:13:\"Authorize.Net\";s:26:\"payment_authorize_net_desc\";s:0:\"\";s:26:\"payment_authorize_net_logo\";s:0:\"\";s:29:\"payment_authorize_net_sandbox\";s:2:\"on\";s:34:\"payment_authorize_net_api_login_id\";s:0:\"\";s:37:\"payment_authorize_net_transaction_key\";s:0:\"\";s:23:\"payment_bluesnap_enable\";s:3:\"off\";s:21:\"payment_bluesnap_name\";s:8:\"BlueSnap\";s:21:\"payment_bluesnap_desc\";s:0:\"\";s:21:\"payment_bluesnap_logo\";s:0:\"\";s:24:\"payment_bluesnap_sandbox\";s:2:\"on\";s:24:\"payment_bluesnap_api_key\";s:0:\"\";s:29:\"payment_bluesnap_api_password\";s:0:\"\";s:24:\"payment_braintree_enable\";s:3:\"off\";s:22:\"payment_braintree_name\";s:9:\"Braintree\";s:22:\"payment_braintree_desc\";s:0:\"\";s:22:\"payment_braintree_logo\";s:0:\"\";s:25:\"payment_braintree_sandbox\";s:2:\"on\";s:29:\"payment_braintree_merchant_id\";s:16:\"fxxw8jyspm6h6csx\";s:28:\"payment_braintree_public_key\";s:16:\"vnfz6m2xhbxtbdry\";s:29:\"payment_braintree_private_key\";s:32:\"13b78efe546f730f5cd3c1dce61a171d\";s:19:\"payment_payu_enable\";s:3:\"off\";s:17:\"payment_payu_name\";s:4:\"PayU\";s:17:\"payment_payu_desc\";s:0:\"\";s:17:\"payment_payu_logo\";s:0:\"\";s:20:\"payment_payu_sandbox\";s:2:\"on\";s:19:\"payment_payu_pos_id\";s:0:\"\";s:23:\"payment_payu_second_key\";s:0:\"\";s:26:\"payment_payu_client_secret\";s:0:\"\";s:26:\"payment_securionpay_enable\";s:3:\"off\";s:24:\"payment_securionpay_name\";s:11:\"Securionpay\";s:24:\"payment_securionpay_desc\";s:0:\"\";s:24:\"payment_securionpay_logo\";s:0:\"\";s:30:\"payment_securionpay_public_key\";s:0:\"\";s:30:\"payment_securionpay_secret_key\";s:0:\"\";s:10:\"hotel_link\";s:0:\"\";s:12:\"hotel_enable\";s:3:\"off\";s:13:\"hotel_approve\";s:3:\"off\";s:23:\"hotel_show_partner_info\";s:2:\"on\";s:19:\"hotel_search_radius\";s:2:\"25\";s:19:\"hotel_search_number\";s:1:\"6\";s:17:\"hotel_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:12:\"hotel_slider\";s:8:\"15,14,13\";s:22:\"hotel_list_destination\";a:4:{i:16166619206816;a:4:{s:4:\"name\";s:5:\"Miami\";s:5:\"image\";s:3:\"154\";s:3:\"lat\";s:10:\"25.8102247\";s:3:\"lng\";s:11:\"-80.2101828\";}i:16166619457572;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16166619709461;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16166619892966;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:18:\"hotel_testimonials\";a:3:{i:16166620164920;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16166620294927;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16166620333060;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:14:\"apartment_link\";s:0:\"\";s:16:\"apartment_enable\";s:3:\"off\";s:17:\"apartment_approve\";s:3:\"off\";s:27:\"apartment_show_partner_info\";s:2:\"on\";s:23:\"apartment_search_radius\";s:2:\"25\";s:23:\"apartment_search_number\";s:1:\"6\";s:21:\"apartment_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:16:\"apartment_slider\";s:8:\"15,12,14\";s:26:\"apartment_list_destination\";a:4:{i:16120637783002;a:4:{s:4:\"name\";s:7:\"Chicago\";s:5:\"image\";s:2:\"86\";s:3:\"lat\";s:10:\"41.8339037\";s:3:\"lng\";s:11:\"-87.8720466\";}i:16120637916566;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16120637967481;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16120637937015;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:22:\"apartment_testimonials\";a:3:{i:16120638756836;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16120638795565;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16120638803149;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:8:\"car_link\";s:0:\"\";s:10:\"car_enable\";s:3:\"off\";s:11:\"car_approve\";s:3:\"off\";s:21:\"car_show_partner_info\";s:2:\"on\";s:17:\"car_search_radius\";s:2:\"25\";s:17:\"car_search_number\";s:1:\"6\";s:15:\"car_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:10:\"car_slider\";s:8:\"14,15,13\";s:20:\"car_list_destination\";a:4:{i:16120639767887;a:4:{s:4:\"name\";s:7:\"Chicago\";s:5:\"image\";s:2:\"86\";s:3:\"lat\";s:10:\"41.8339037\";s:3:\"lng\";s:11:\"-87.8720466\";}i:16120639786609;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16120639792703;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16120639802636;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:16:\"car_testimonials\";a:3:{i:16120640431727;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16120640457431;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16120640465151;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:10:\"space_link\";s:0:\"\";s:12:\"space_enable\";s:3:\"off\";s:13:\"space_approve\";s:3:\"off\";s:23:\"space_show_partner_info\";s:2:\"on\";s:19:\"space_search_radius\";s:2:\"25\";s:19:\"space_search_number\";s:1:\"6\";s:17:\"space_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:12:\"space_slider\";s:8:\"15,14,12\";s:22:\"space_list_destination\";a:4:{i:16170089797409;a:4:{s:4:\"name\";s:7:\"Chicago\";s:5:\"image\";s:2:\"86\";s:3:\"lat\";s:10:\"41.8339037\";s:3:\"lng\";s:11:\"-87.8720466\";}i:16170090007073;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16170090254045;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16170090445588;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:18:\"space_testimonials\";a:3:{i:16170090648881;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16170090734605;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16170090855658;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:9:\"tour_link\";s:0:\"\";s:11:\"tour_enable\";s:2:\"on\";s:12:\"tour_approve\";s:3:\"off\";s:22:\"tour_show_partner_info\";s:2:\"on\";s:18:\"tour_search_radius\";s:2:\"25\";s:18:\"tour_search_number\";s:1:\"6\";s:16:\"tour_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:11:\"tour_slider\";s:8:\"15,14,13\";s:21:\"tour_list_destination\";a:4:{i:16209756785605;a:4:{s:4:\"name\";s:6:\"Ha Noi\";s:5:\"image\";s:3:\"154\";s:3:\"lat\";s:9:\"21.000000\";s:3:\"lng\";s:10:\"105.750000\";}i:1620975695971;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16209757205910;a:4:{s:4:\"name\";s:10:\"Washington\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"48.025005\";s:3:\"lng\";s:11:\"-120.094293\";}i:16209757409720;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"37.074360\";s:3:\"lng\";s:11:\"-119.699375\";}}s:17:\"tour_testimonials\";a:3:{i:16209757632076;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16209757735104;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16209757817938;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:11:\"beauty_link\";s:0:\"\";s:13:\"beauty_enable\";s:3:\"off\";s:14:\"beauty_approve\";s:3:\"off\";s:24:\"beauty_show_partner_info\";s:2:\"on\";s:20:\"beauty_search_radius\";s:2:\"25\";s:20:\"beauty_search_number\";s:1:\"6\";s:18:\"beauty_slider_text\";s:32:\"Enjoy a great ride with ibooking\";s:13:\"beauty_slider\";s:8:\"15,14,13\";s:23:\"beauty_list_destination\";a:4:{i:16217588286895;a:4:{s:4:\"name\";s:5:\"Miami\";s:5:\"image\";s:3:\"154\";s:3:\"lat\";s:10:\"25.8102247\";s:3:\"lng\";s:11:\"-80.2101828\";}i:16217588303011;a:4:{s:4:\"name\";s:8:\"New York\";s:5:\"image\";s:2:\"94\";s:3:\"lat\";s:9:\"40.713847\";s:3:\"lng\";s:10:\"-74.006225\";}i:16217588315086;a:4:{s:4:\"name\";s:13:\"San Francisco\";s:5:\"image\";s:2:\"95\";s:3:\"lat\";s:9:\"37.774201\";s:3:\"lng\";s:11:\"-122.414230\";}i:16217588372732;a:4:{s:4:\"name\";s:10:\"California\";s:5:\"image\";s:2:\"93\";s:3:\"lat\";s:9:\"36.567592\";s:3:\"lng\";s:11:\"-119.645883\";}}s:19:\"beauty_testimonials\";a:3:{i:16217589653254;a:2:{s:4:\"name\";s:8:\"Crocodie\";s:7:\"content\";s:165:\"Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home\";}i:16217589675772;a:2:{s:4:\"name\";s:12:\"Rakel France\";s:7:\"content\";s:168:\"I can not say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.\";}i:16217589684678;a:2:{s:4:\"name\";s:11:\"Christof JR\";s:7:\"content\";s:154:\"If you want real marketing that works and effective implementation - home got you covered. Your company is truly upstanding and is behind its product 100%\";}}s:21:\"footer_menu_1_heading\";s:0:\"\";s:13:\"footer_menu_1\";s:1:\"2\";s:21:\"footer_menu_2_heading\";s:0:\"\";s:13:\"footer_menu_2\";s:1:\"3\";s:21:\"footer_menu_3_heading\";s:0:\"\";s:13:\"footer_menu_3\";s:1:\"4\";s:13:\"footer_menu_4\";s:1:\"1\";s:16:\"footer_copyright\";s:0:\"\";s:6:\"social\";a:3:{i:16115598256863;a:3:{s:5:\"title\";s:15:\"Fanpage booteam\";s:4:\"icon\";s:20:\"icon_brands_facebook\";s:3:\"url\";s:19:\"http://facebook.com\";}i:16115598724666;a:3:{s:5:\"title\";s:7:\"Booteam\";s:4:\"icon\";s:21:\"icon_brands_instagram\";s:3:\"url\";s:20:\"http://instagram.com\";}i:16115599046435;a:3:{s:5:\"title\";s:11:\"twitter.com\";s:4:\"icon\";s:19:\"icon_brands_twitter\";s:3:\"url\";s:18:\"http://twitter.com\";}}s:15:\"top_bar_display\";s:2:\"on\";s:18:\"top_bar_promo_text\";s:0:\"\";s:18:\"top_bar_promo_code\";s:0:\"\";s:19:\"top_bar_button_text\";s:7:\"SEE NOW\";s:18:\"top_bar_button_url\";s:0:\"\";s:11:\"gdpr_enable\";s:2:\"on\";s:21:\"gdpr_hide_after_click\";s:2:\"on\";s:13:\"gdpr_position\";s:4:\"left\";s:16:\"gdpr_manage_text\";s:0:\"\";s:19:\"gdpr_banner_heading\";s:0:\"\";s:23:\"gdpr_banner_description\";s:0:\"\";s:21:\"gdpr_banner_link_text\";s:0:\"\";s:16:\"gdpr_policy_page\";s:1:\"9\";s:23:\"gdpr_button_accept_text\";s:0:\"\";s:23:\"gdpr_button_reject_text\";s:0:\"\";s:21:\"facebook_login_enable\";s:2:\"on\";s:24:\"facebook_login_client_id\";s:0:\"\";s:28:\"facebook_login_client_secret\";s:0:\"\";s:27:\"facebook_login_redirect_url\";s:0:\"\";s:19:\"google_login_enable\";s:2:\"on\";s:22:\"google_login_client_id\";s:0:\"\";s:26:\"google_login_client_secret\";s:0:\"\";s:25:\"google_login_redirect_url\";s:0:\"\";}', '2021-01-24 21:18:37', '2023-06-27 06:51:58'),
(2, 'gmz_plugins', '{\"SubmitFormGateway\":\"1.0.0\",\"AuthorizeNetGateway\":\"1.0.0\",\"BluesnapGateway\":\"1.0.0\",\"BraintreeGateway\":\"1.0.0\",\"SecurionpayGateway\":\"1.0.0\",\"SkrillGateway\":\"1.0.0\"}', '2021-02-18 03:46:31', '2021-03-25 21:18:46'),
(3, 'payment_structure', '\"[\\\"submit_form\\\",\\\"bank_transfer\\\",\\\"paypal\\\",\\\"stripe\\\",\\\"skrill\\\"]\"', '2021-02-18 03:47:15', '2021-02-18 03:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_order`
--

CREATE TABLE `gmz_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(50) NOT NULL,
  `order_token` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `total` double(16,5) NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `buyer` int(10) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `checkout_data` mediumtext NOT NULL,
  `token_code` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `commission` tinyint(3) UNSIGNED NOT NULL,
  `start_date` int(10) UNSIGNED NOT NULL,
  `end_date` int(10) UNSIGNED NOT NULL,
  `start_time` int(10) UNSIGNED DEFAULT NULL,
  `end_time` int(10) UNSIGNED DEFAULT NULL,
  `post_type` varchar(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `money_to_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `change_log` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_page`
--

CREATE TABLE `gmz_page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_page`
--

INSERT INTO `gmz_page` (`id`, `post_title`, `post_slug`, `post_content`, `thumbnail_id`, `status`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, '[:en]Lorem Ipsum is simply dummy[:vi]New page 1612168759[:]', 'lorem-ipsum-is-simply-dummy', '[:en]<h2>What is Lorem Ipsum?</h2><p class=\"ql-align-justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p class=\"ql-align-justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br></p><h2>Where does it come from?</h2><p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p><br></p>[:vi][:]', '132', 'publish', 1, '2021-02-01 01:39:19', '2021-02-01 01:39:52', NULL),
(8, '[:en]Where does it come from?[:vi]New page 1612168813[:]', 'where-does-it-come-from', '[:en]<h2>What is Lorem Ipsum?</h2><p class=\"ql-align-justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p class=\"ql-align-justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br></p><h2>Where does it come from?</h2><p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p><br></p>[:vi][:]', '128', 'publish', 1, '2021-02-01 01:40:13', '2021-02-01 01:40:29', NULL),
(9, '[:en]Lorem Ipsum passage[:vi]New page 1612168837[:]', 'lorem-ipsum-passage', '[:en]<h2>What is Lorem Ipsum?</h2><p class=\"ql-align-justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p class=\"ql-align-justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br></p><h2>Where does it come from?</h2><p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p><br></p>[:vi][:]', '98', 'publish', 1, '2021-02-01 01:40:37', '2021-02-01 01:41:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_post`
--

CREATE TABLE `gmz_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_description` text DEFAULT NULL,
  `post_content` longtext DEFAULT NULL,
  `post_category` varchar(191) DEFAULT NULL,
  `post_tag` varchar(191) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_post`
--

INSERT INTO `gmz_post` (`id`, `post_title`, `post_slug`, `post_description`, `post_content`, `post_category`, `post_tag`, `thumbnail_id`, `status`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '[:en]All Aboard the Rocky Mountaineer[:vi]New post 1612023938[:]', 'a-seaside-reset-in-laguna-beach', '[:en]The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33[:vi]The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.[:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p> </p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p> </p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:]', '46', '47,48', '96', 'publish', 1, '2021-01-30 09:25:38', '2021-01-30 20:43:52', NULL),
(6, '[:en]City Spotlight: Philadelphia[:vi]New post 1612024020[:]', 'city-spotlight-philadelphia', '[:en]The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.[:vi][:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '42', '49,50,51', '97', 'publish', 1, '2021-01-30 09:27:00', '2021-01-30 09:28:10', NULL),
(7, '[:en]A Seaside Reset in Laguna Beach[:vi]New post 1612024097[:]', 'a-seaside-reset-in-laguna-beach-1', '[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC[:vi][:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '43', '52', '98', 'publish', 1, '2021-01-30 09:28:17', '2021-01-30 09:29:22', NULL),
(9, '[:en]My 12 Favorite Cities in the World[:vi]New post 1612064646[:]', 'my-12-favorite-cities-in-the-world', '[:en]Contrary to popular belief, Lorem Ipsum is not simply random text.[:vi][:]', '[:en]<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '45', '53', '99', 'publish', 1, '2021-01-30 20:44:06', '2021-01-30 20:45:40', NULL),
(10, '[:en]What Does Travel Mean to You?[:vi]New post 1612064748[:]', 'what-does-travel-mean-to-you', '[:en]Contrary to popular belief, Lorem Ipsum is not simply random text.[:vi][:]', '[:en]<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout</p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of “de Finibus Bonorum et Malorum” (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, “Lorem ipsum dolor sit amet..”, comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from “de Finibus Bonorum et Malorum” by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '42', '49', '100', 'publish', 1, '2021-01-30 20:45:48', '2021-01-30 20:46:41', NULL),
(11, '[:en]Where can I get some?[:vi]New post 1612064808[:]', 'where-can-i-get-some', '[:en]The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\"[:vi][:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '', '52,49', '101', 'publish', 1, '2021-01-30 20:46:48', '2021-01-30 20:47:41', NULL),
(12, '[:en]1914 translation by H. Rackham[:vi]New post 1612064873[:]', '1914-translation-by-h-rackham', '[:en]Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia[:vi][:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '44', '54,53', '102', 'publish', 1, '2021-01-30 20:47:53', '2021-01-30 20:48:47', NULL),
(13, '[:en]The first line of Lorem Ipsum[:vi]New post 1612064958[:]', 'the-first-line-of-lorem-ipsum', '[:en]Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum[:vi][:]', '[:en]<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>[:vi][:]', '45', '53,55', '14', 'publish', 1, '2021-01-30 20:49:18', '2021-01-30 20:49:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_room`
--

CREATE TABLE `gmz_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `number_of_room` int(11) DEFAULT NULL,
  `room_footage` double(8,2) DEFAULT NULL,
  `number_of_bed` int(11) DEFAULT NULL,
  `number_of_adult` int(11) DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `room_facilities` varchar(191) DEFAULT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ical` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_room`
--

INSERT INTO `gmz_room` (`id`, `post_title`, `post_content`, `thumbnail_id`, `gallery`, `base_price`, `number_of_room`, `room_footage`, `number_of_bed`, `number_of_adult`, `number_of_children`, `room_facilities`, `hotel_id`, `author`, `status`, `created_at`, `updated_at`, `ical`, `deleted_at`) VALUES
(1, 'Deluxe City View King Room', '<p>Located 525 feet’ walk from the beach, this Miami Beach hotel features an outdoor swimming pool and sun terrace. The hotel is 9 minutes’ drive from the shops and restaurants of Lincoln Road and offers free WiFi to guests.</p><p>A flat-screen TV, ironing facilities, and coffee-making facilities are available in Hotel Riu Plaza Miami Beach rooms. Private bathrooms feature a shower and hairdryer. Select rooms offer a sea view.</p>', '131', '133,132,131,130,129', 400.00, 10, 450.00, 2, 4, 5, '97,96,94,92,91,90,87,86', 6, 1, 'publish', '2021-03-24 20:15:11', '2021-03-24 21:09:59', NULL, NULL),
(2, 'Standard Double Room', '<p>Standard Double Room comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk &amp; Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.</p>', '130', '133,132,131,130', 200.00, 10, 50.00, 2, 3, 4, '97,96,95,94,93,92,91,90,89,88,87,86', 3, 1, 'publish', '2021-03-24 20:52:11', '2021-03-24 20:53:40', NULL, NULL),
(3, 'Single Room', '<p><span style=\"color: rgb(33, 37, 41);\">Experience high quality room facilities during your stay here. Some rooms include television LCD/plasma screen, air conditioning, heating, iPod docking station, internet access – LAN (complimentary), provided to help guests recharge after a long day. Besides, the hotel’s host of recreational offerings ensures you have plenty to do during your stay. Discover an engaging blend of professional service and a wide array of features at enVision Hotel Boston-Longwood an Ascend Hotel Col.</span></p>', '121', '133,125,124,123', 150.00, 10, 35.00, 3, 3, 3, '97,96,94,93,91,90,88', 3, 1, 'publish', '2021-03-24 20:53:57', '2021-03-24 20:54:39', NULL, NULL),
(4, 'Standard Double Room', '<p><span style=\"color: rgb(94, 109, 119);\">Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board</span></p>', '125', '118,117,116,115', 399.00, 10, 60.00, 1, 2, 3, '97,95,94,92,91,89,88,86', 4, 1, 'publish', '2021-03-24 20:55:49', '2021-03-24 20:56:52', NULL, NULL),
(5, 'Room Kerama Islands', '<p><span style=\"color: rgb(94, 109, 119);\">Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board</span></p>', '117', '128,127,126,125', 250.00, 10, 25.00, 2, 3, 4, '95,94,93,92,91,90,88,87', 4, 1, 'publish', '2021-03-24 20:57:10', '2021-03-24 20:57:54', NULL, NULL),
(6, 'Double Room With Town View', '<p><span style=\"color: rgb(94, 109, 119);\">Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</span></p>', '118', '129,123,122,121', 300.00, 10, 25.00, 1, 2, 3, '97,96,95,94,93,92,90,87', 4, 1, 'publish', '2021-03-24 20:58:05', '2021-03-24 20:58:47', NULL, NULL),
(7, 'Opera Wing - Premium Twin Room', '<p><span style=\"color: rgb(51, 51, 51);\">Features bright interiors fitted with elegant timber flooring, a modern bathroom, and facilities like a flat screen TV, free Wi-Fi and wired internet.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">This room type cannot accommodate an extra bed or a crib. Guests enjoy: - 30% off on spa</span></p>', '107', '117,116,115,114', 150.00, 10, 32.00, 2, 3, 4, '97,95,94,92,91,90,88,87', 5, 1, 'publish', '2021-03-24 21:01:26', '2021-03-24 21:02:12', NULL, NULL),
(8, 'Historical Wing - Luxury Twin Room', '<p><span style=\"color: rgb(51, 51, 51);\">Elegant rooms feature decor distinctive of 1920s France, natural wooden flooring, a flat screen TV and free Wi-Fi and wired internet.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">This room type cannot accommodate an extra bed or a crib. Guests enjoy: - 30% off on spa</span></p>', '106', '120,119,118,117', 100.00, 10, 32.00, 3, 4, 5, '97,94,93,91,90,89,87,86', 5, 1, 'publish', '2021-03-24 21:06:53', '2021-03-24 21:08:00', NULL, NULL),
(9, 'Opera Wing - Premium Double Room', '<p><span style=\"color: rgb(51, 51, 51);\">Lofty and bright interiors are fitted with elegant timber flooring. Features a modern bathroom, flat screen TV and free Wi-Fi and wired internet.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">This room type cannot accommodate an extra bed or a crib. Guests enjoy: - 30% off on spa</span></p>', '110', '120,119,118,117', 120.00, 10, 32.00, 1, 2, 3, '97,96,94,93,91,90,89,88', 5, 1, 'publish', '2021-03-24 21:08:11', '2021-03-24 21:09:04', NULL, NULL),
(11, 'Deluxe City View with Two Double Beds', '<p><span style=\"color: rgb(51, 51, 51);\">This spacious double room has air conditioning and offers city views.</span></p>', '112', '112,111,110,109,108', 500.00, 10, 300.00, 3, 4, 5, '97,96,95,94,93,92,91,90,89,88,87,86', 6, 1, 'publish', '2021-03-24 21:10:30', '2021-03-24 21:11:30', NULL, NULL),
(12, 'Deluxe Ocean View King Room', '<p><span style=\"color: rgb(51, 51, 51);\">This double room features a balcony, air conditioning and flat-screen TV.</span></p>', '105', '120,119,117,112,110', 300.00, 10, 120.00, 3, 4, 5, '97,96,95,94,93,92,91,90,89,88,87,86', 6, 1, 'publish', '2021-03-24 21:11:40', '2021-03-24 21:13:56', NULL, NULL),
(13, 'Tresor Bay View Junior Suite', '<p>This room offers an extra large bed and spacious sitting area equipped with a 32-inch LCD TV, iPod docking station and work desk. The marble bathroom features a bathtub or shower and includes a bathrobe and toiletries.</p><p><br /></p>', '107', '128,127,124,120,119,115', 300.00, 10, 46.00, 3, 4, 5, '97,96,94,93,91,90', 7, 1, 'publish', '2021-03-24 21:26:14', '2021-03-24 21:26:51', NULL, NULL),
(14, 'Standard Room with King Bed', '<p>This room with carpeted floors features a flat-screen TV, iPod docking station and bathroom with bathtub or shower. A bathrobe and toiletries are included.</p><p><br /></p>', '106', '133,130,128,124,122,121', 250.00, 10, 28.00, 1, 1, 1, '97,96,95,94,93,90', 7, 1, 'publish', '2021-03-24 21:27:00', '2021-03-24 21:27:41', NULL, NULL),
(15, 'Deluxe King Room with Balcony', '<p>In the Landmark Fontainebleau Chateau or Versailles buildings, this room includes a balcony. It comes with a flat-screen TV and iPod docking station. Bathroom amenities include a bathrobe and toiletries.</p><p><br /></p>', '117', '126,124,122,120,116', 200.00, 10, 30.00, 1, 1, 1, '97,96,94,93,89,86', 7, 1, 'publish', '2021-03-24 21:27:54', '2021-03-24 21:28:41', NULL, NULL),
(16, 'Deluxe Queen Room', '<p>This double room has air conditioning and satellite TV.</p><p><br /></p>', '121', '127,126,125,118', 150.00, 10, 18.00, 2, 3, 4, '97,96,95,94,93,92,91,90,89,88,87,86', 9, 1, 'publish', '2021-03-24 23:34:02', '2021-03-24 23:34:44', NULL, NULL),
(17, 'Deluxe King Room', '<p>This double room has a satellite TV and air conditioning.</p><p><br /></p>', '128', '128,127,126,125', 140.00, 10, 18.00, 1, 2, 3, '97,96,94,93,91,90', 9, 1, 'publish', '2021-03-24 23:35:07', '2021-03-24 23:35:48', NULL, NULL),
(18, 'Deluxe Double Room with Two Double Beds', '<p>This quadruple room features air conditioning and view.</p><p><br /></p>', '112', '119,118,117,116,115', 120.00, 10, 23.00, 1, 1, 1, '97,96,95,94,93,92,91,90,89,88,87,86', 9, 1, 'publish', '2021-03-24 23:36:11', '2021-03-24 23:36:47', NULL, NULL),
(19, 'Urban King Room', '<p>The Urban King Room includes a full-sized work desk, content streaming, and a fully stocked mini-bar. Additional luxuries include floor-to-ceiling windows, bath amenities, and spacious balconies that offers views of Brickell and Miami city center.</p><p><br /></p>', '105', '128,127,126,120,119', 300.00, 10, 33.00, 2, 3, 4, '97,96,95,94,93,92,91,90,89', 10, 1, 'publish', '2021-03-24 23:50:11', '2021-03-24 23:51:19', NULL, NULL),
(20, 'Urban Room with Two Double Beds', '<p>The Urban Double Room features floor-to ceiling windows, city and bay views, and en suite content streaming via the 50-inch smart TV. The room includes energy-efficient options as well as luxury bath amenities and free WiFi.</p><p><br /></p>', '107', '122,121,116,115,114,113', 250.00, 10, 28.00, 1, 1, 1, '97,96,95,94,93,92,91,90,89,88', 10, 1, 'publish', '2021-03-24 23:51:30', '2021-03-24 23:52:06', NULL, NULL),
(21, 'Corner King Room', '<p>The Corner King Room features a wrap-around balcony, floor-to-ceiling windows, and city views. The room includes energy-efficient options as well as a spacious, five-foot bath.</p><p><br /></p>', '112', '148,147,138,132,131,130', 280.00, 10, 38.00, 1, 1, 1, '97,95,94,92,90,87', 10, 1, 'publish', '2021-03-24 23:52:16', '2021-03-24 23:52:49', NULL, NULL),
(22, 'Bay King Room', '<p>The Bay King Room features a wrap-around balcony, free WiFi, and floor-to-ceiling windows that highlight Key Biscayne and the Port of Miami. Guests can stream content on the 50-inch smart TV or unwind with en suite bath amenities.</p><p><br /></p>', '148', '150,148,138,130', 220.00, 10, 38.00, 1, 1, 1, '97,94,93,90,89,86', 10, 1, 'publish', '2021-03-24 23:52:56', '2021-03-24 23:53:32', NULL, NULL),
(23, 'Deluxe King Room', '<p>This room features a refrigerator, coffee machine, and flat-screen cable TV.</p><p><br /></p>', '148', '153,152,151,150,149', 400.00, 10, 33.00, 2, 3, 4, '97,94,93,91,90,89,88,87,86', 11, 1, 'publish', '2021-03-24 23:57:12', '2021-03-24 23:57:47', NULL, NULL),
(24, 'Deluxe Queen Room with Two Queen Beds', '<p>This room features a refrigerator, coffee machine, and flat-screen cable TV.</p><p><br /></p>', '120', '133,132,131,130,129', 350.00, 10, 33.00, 1, 1, 1, '97,94,92,90,89,87', 11, 1, 'publish', '2021-03-24 23:58:03', '2021-03-24 23:58:37', NULL, NULL),
(25, 'Superier King Room with Pool View', '<p>This room features a refrigerator, coffee machine, and flat-screen cable TV.</p><p><br /></p>', '150', '151,150,132,131,130,123', 300.00, 10, 33.00, 1, 1, 1, '96,94,92,91,89,87', 11, 1, 'publish', '2021-03-24 23:58:45', '2021-03-24 23:59:21', NULL, NULL),
(26, 'King Suite with Pool View', '<p><span style=\"color: rgb(51, 51, 51);\">Overlooking the pool, this king suite includes two 42-inch flat-screen TVs, a private balcony, and coffee-making facilities.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">Please note that the room rate is based on 2 guests. Maximum occupancy is 4 guests (see Hotel Policies)</span></p>', '130', '132,131,130,129', 250.00, 10, 41.00, 1, 1, 1, '97,96,94,93,91,88', 12, 1, 'publish', '2021-03-25 00:03:25', '2021-03-25 00:03:54', NULL, NULL),
(27, 'King Suite with Bay View', '<p><span style=\"color: rgb(51, 51, 51);\">Overlooking Biscayne Bay, this king suite includes a sofa bed, balcony, and 1 full bathroom. Two 42-inch flat-screen TVs are provided.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">Please note that the room rate is based on 2 guests. Maximum occupancy is 4 guests (see Hotel Policies)</span></p>', '120', '118,117,116,115,114', 200.00, 10, 41.00, 1, 1, 1, '94,91,90,89,87,86', 12, 1, 'publish', '2021-03-25 00:04:00', '2021-03-25 00:04:31', NULL, NULL),
(28, 'King Suite with Partial Ocean View', '<p><span style=\"color: rgb(51, 51, 51);\">This suite faces either north or south and provides partial views of the Atlantic Ocean.</span></p><p><br /></p><p><span style=\"color: rgb(51, 51, 51);\">Please note that the room rate is based on 2 guests. Maximum occupancy is 4 guests (see Hotel Policies)</span></p>', '127', '145,141,140,132', 200.00, 10, 38.00, 1, 1, 1, '97,96,95,94,93,92,91,90,89,88,87,86', 12, 1, 'publish', '2021-03-25 00:04:38', '2021-03-25 00:05:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_room_availability`
--

CREATE TABLE `gmz_room_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `total_room` bigint(20) DEFAULT NULL,
  `adult_number` int(11) DEFAULT NULL,
  `child_number` int(11) DEFAULT NULL,
  `check_in` int(11) DEFAULT NULL,
  `check_out` int(11) DEFAULT NULL,
  `number` varchar(191) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_base` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_room_availability`
--

INSERT INTO `gmz_room_availability` (`id`, `post_id`, `hotel_id`, `total_room`, `adult_number`, `child_number`, `check_in`, `check_out`, `number`, `price`, `booked`, `status`, `created_at`, `updated_at`, `is_base`) VALUES
(1, 1, 6, 3, 4, 5, NULL, NULL, '10', '400', 0, 'available', '2021-03-24 20:15:11', '2021-03-24 21:13:36', 0),
(2, 2, 3, 2, 3, 4, NULL, NULL, '10', '200', 0, 'available', '2021-03-24 20:52:11', '2021-03-24 20:54:28', 0),
(3, 3, 3, 2, 3, 3, NULL, NULL, '10', '150', 0, 'available', '2021-03-24 20:53:57', '2021-03-24 20:54:28', 0),
(4, 4, 4, 3, 2, 3, NULL, NULL, '10', '399', 0, 'available', '2021-03-24 20:55:49', '2021-03-24 20:58:37', 0),
(5, 5, 4, 3, 3, 4, NULL, NULL, '10', '250', 0, 'available', '2021-03-24 20:57:10', '2021-03-24 20:58:37', 0),
(6, 6, 4, 3, 2, 3, NULL, NULL, '10', '300', 0, 'available', '2021-03-24 20:58:05', '2021-03-24 20:58:37', 0),
(7, 7, 5, 3, 3, 4, NULL, NULL, '10', '150', 0, 'available', '2021-03-24 21:01:26', '2021-03-24 21:08:49', 0),
(8, 8, 5, 3, 4, 5, NULL, NULL, '10', '100', 0, 'available', '2021-03-24 21:06:53', '2021-03-24 21:08:49', 0),
(9, 9, 5, 3, 2, 3, NULL, NULL, '10', '120', 0, 'available', '2021-03-24 21:08:11', '2021-03-24 21:08:49', 0),
(11, 11, 6, 3, 4, 5, NULL, NULL, '10', '500', 0, 'available', '2021-03-24 21:10:30', '2021-03-24 21:13:36', 0),
(12, 12, 6, 3, 4, 5, NULL, NULL, '10', '300', 0, 'available', '2021-03-24 21:11:40', '2021-03-24 21:13:36', 0),
(13, 13, 7, 3, 4, 5, NULL, NULL, '10', '300', 0, 'available', '2021-03-24 21:26:14', '2021-03-24 21:28:27', 0),
(14, 14, 7, 3, 1, 1, NULL, NULL, '10', '250', 0, 'available', '2021-03-24 21:27:00', '2021-03-24 21:28:27', 0),
(15, 15, 7, 3, 1, 1, NULL, NULL, '10', '200', 0, 'available', '2021-03-24 21:27:54', '2021-03-24 21:28:27', 0),
(16, 16, 9, 3, 3, 4, NULL, NULL, '10', '150', 0, 'available', '2021-03-24 23:34:02', '2021-03-24 23:36:36', 0),
(17, 17, 9, 3, 2, 3, NULL, NULL, '10', '140', 0, 'available', '2021-03-24 23:35:07', '2021-03-24 23:36:36', 0),
(18, 18, 9, 3, 1, 1, NULL, NULL, '10', '120', 0, 'available', '2021-03-24 23:36:11', '2021-03-24 23:36:36', 0),
(19, 19, 10, 4, 3, 4, NULL, NULL, '10', '300', 0, 'available', '2021-03-24 23:50:11', '2021-03-24 23:53:21', 0),
(20, 20, 10, 4, 1, 1, NULL, NULL, '10', '250', 0, 'available', '2021-03-24 23:51:30', '2021-03-24 23:53:21', 0),
(21, 21, 10, 4, 1, 1, NULL, NULL, '10', '280', 0, 'available', '2021-03-24 23:52:16', '2021-03-24 23:53:21', 0),
(22, 22, 10, 4, 1, 1, NULL, NULL, '10', '220', 0, 'available', '2021-03-24 23:52:56', '2021-03-24 23:53:21', 0),
(23, 23, 11, 3, 3, 4, NULL, NULL, '10', '400', 0, 'available', '2021-03-24 23:57:12', '2021-03-24 23:59:08', 0),
(24, 24, 11, 3, 1, 1, NULL, NULL, '10', '350', 0, 'available', '2021-03-24 23:58:03', '2021-03-24 23:59:08', 0),
(25, 25, 11, 3, 1, 1, NULL, NULL, '10', '300', 0, 'available', '2021-03-24 23:58:45', '2021-03-24 23:59:08', 0),
(26, 26, 12, 3, 1, 1, NULL, NULL, '10', '250', 0, 'available', '2021-03-25 00:03:25', '2021-03-25 00:05:03', 0),
(27, 27, 12, 3, 1, 1, NULL, NULL, '10', '200', 0, 'available', '2021-03-25 00:04:00', '2021-03-25 00:05:03', 0),
(28, 28, 12, 3, 1, 1, NULL, NULL, '10', '200', 0, 'available', '2021-03-25 00:04:38', '2021-03-25 00:05:03', 0),
(29, 23, 11, 3, 3, 4, 1616864400, 1616864400, '10', '400', 1, 'available', '2021-03-25 01:30:26', '2021-03-25 01:30:26', 0),
(30, 24, 11, 3, 1, 1, 1616864400, 1616864400, '10', '350', 3, 'available', '2021-03-25 01:30:26', '2021-03-25 01:30:26', 0),
(31, 27, 12, 3, 1, 1, 1616864400, 1616864400, '10', '200', 3, 'available', '2021-03-25 01:31:23', '2021-03-25 01:31:23', 0),
(32, 27, 12, 3, 1, 1, 1616950800, 1616950800, '10', '200', 3, 'available', '2021-03-25 01:31:23', '2021-03-25 01:31:23', 0),
(33, 27, 12, 3, 1, 1, 1617037200, 1617037200, '10', '200', 3, 'available', '2021-03-25 01:31:23', '2021-03-25 01:31:23', 0),
(34, 16, 9, 3, 3, 4, 1616950800, 1616950800, '10', '150', 2, 'available', '2021-03-25 01:32:08', '2021-03-25 01:32:08', 0),
(35, 17, 9, 3, 2, 3, 1616950800, 1616950800, '10', '140', 3, 'available', '2021-03-25 01:32:08', '2021-03-25 01:32:08', 0),
(36, 18, 9, 3, 1, 1, 1616950800, 1616950800, '10', '120', 9, 'available', '2021-03-25 01:32:08', '2021-03-25 01:32:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_seo`
--

CREATE TABLE `gmz_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_type` varchar(50) NOT NULL DEFAULT 'post',
  `seo_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_image_facebook` varchar(191) DEFAULT NULL,
  `seo_title_facebook` varchar(191) DEFAULT NULL,
  `meta_description_facebook` text DEFAULT NULL,
  `seo_image_twitter` varchar(191) DEFAULT NULL,
  `seo_title_twitter` varchar(191) DEFAULT NULL,
  `meta_description_twitter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_space`
--

CREATE TABLE `gmz_space` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `base_price` double(8,2) DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'instant',
  `number_of_guest` int(11) DEFAULT NULL,
  `number_of_bedroom` int(11) DEFAULT NULL,
  `number_of_bathroom` int(11) DEFAULT NULL,
  `size` double(8,2) DEFAULT NULL,
  `min_stay` int(11) DEFAULT NULL,
  `max_stay` int(11) DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `extra_services` longtext DEFAULT NULL,
  `space_type` varchar(191) DEFAULT NULL,
  `space_amenity` varchar(191) DEFAULT NULL,
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `checkin_time` varchar(25) DEFAULT NULL,
  `checkout_time` varchar(25) DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `discount_by_day` text DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_booking` varchar(3) DEFAULT 'off',
  `external_link` varchar(191) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `ical` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_space`
--

INSERT INTO `gmz_space` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `booking_form`, `number_of_guest`, `number_of_bedroom`, `number_of_bathroom`, `size`, `min_stay`, `max_stay`, `booking_type`, `extra_services`, `space_type`, `space_amenity`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `checkin_time`, `checkout_time`, `rating`, `is_featured`, `discount_by_day`, `video`, `author`, `status`, `created_at`, `updated_at`, `external_booking`, `external_link`, `post_description`, `ical`, `deleted_at`) VALUES
(3, '[:en]Hector Cave House[:vi]New apartment 1612023342[:ja]Hector Cave House[:]', 'hector-cave-house', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:ja]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi]Paris, France[:ja]Paris, France[:]', '12', NULL, NULL, NULL, NULL, '90', '92,91,90', 150.00, 'instant', 8, 3, 1, 450.00, NULL, NULL, 'per_day', '[]', '101', '114,113,112,111,110,109,108,107,106,105,104', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-30 01:15:42', '2021-03-29 03:03:51', 'off', NULL, NULL, NULL, NULL),
(4, '[:en]Lussuoso. Vista incantevole[:vi]New apartment 1612023207[:ja]Lussuoso. Vista incantevole[:]', 'lussuoso-vista-incantevole', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:ja]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:]', 40.764800, -73.980800, '[:en]NewYork, US[:vi]NewYork, US[:ja]NewYork, US[:]', '12', NULL, NULL, NULL, NULL, '88', '89,88,87', 100.00, 'instant', 7, 3, 2, 500.00, NULL, NULL, 'per_day', '[]', '102', '114,113,112,111,110,109,108,107,106,105,104', 'off', 5, '[:en][:vi][:ja][:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 01:13:27', '2021-03-29 03:03:29', 'off', NULL, NULL, NULL, NULL),
(5, '[:en]Independent cottage[:vi]New apartment 1612023076[:ja]Independent cottage[:]', 'independent-cottage-mountain-view', '[:en]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:vi]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:ja]<p><span style=\"color: rgb(42, 42, 42);\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.</span></p><p><br /></p><p><span style=\"color: rgb(42, 42, 42);\">The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower.</span></p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi]Chicago, United States[:ja]Chicago, United States[:]', '12', NULL, NULL, NULL, NULL, '83', '86,85,84,83', 50.00, 'both', 10, 2, 2, 750.00, NULL, NULL, 'per_day', '[]', '103', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.[:vi]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.[:ja]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 01:11:16', '2021-03-29 03:03:09', 'off', NULL, NULL, NULL, NULL),
(6, '[:en]Hans Place IV[:vi]New apartment 1612103265[:ja]Hans Place IV[:]', 'hans-place-iv', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air. The master bedroom is impressive too, with a generous ensuite and doors onto the roof terrace, where there’s another table for six. The surrounding area’s just as elegant – close to all South Kensington’s boutiques, you’re also within walking distance of Harrods and the shop-and-café-lined King’s Road. What’s more, Knightsbridge tube station is just a six-minute walk from here.</span></p>[:vi]<p><span style=\"color: rgb(122, 122, 122);\">Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air. The master bedroom is impressive too, with a generous ensuite and doors onto the roof terrace, where there’s another table for six. The surrounding area’s just as elegant – close to all South Kensington’s boutiques, you’re also within walking distance of Harrods and the shop-and-café-lined King’s Road. What’s more, Knightsbridge tube station is just a six-minute walk from here.</span></p>[:ja]<p><span style=\"color: rgb(122, 122, 122);\">Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air. The master bedroom is impressive too, with a generous ensuite and doors onto the roof terrace, where there’s another table for six. The surrounding area’s just as elegant – close to all South Kensington’s boutiques, you’re also within walking distance of Harrods and the shop-and-café-lined King’s Road. What’s more, Knightsbridge tube station is just a six-minute walk from here.</span></p>[:]', 41.860000, -87.620000, '[:en]Chicago, IL 60616, USA[:vi]Chicago, IL 60616, USA[:ja]Chicago, IL 60616, USA[:]', '12', NULL, NULL, NULL, NULL, '116', '116,117,115', 75.00, 'instant', 10, 3, 2, 114.00, NULL, NULL, 'per_day', '[]', '98', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air.[:vi]Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air.[:ja]Hans Place IV is a three bedroom, three bathroom home in Knightsbridge. Sleekly designed and furnished with stylish pieces (the dining table, set with six lime-green chairs, is an especial highlight), this home’s living areas have a very upscale air.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 23:27:45', '2021-03-29 03:02:50', 'off', NULL, NULL, NULL, NULL),
(8, '[:en]Via della Scala[:vi]New apartment 1612103606[:ja]Via della Scala[:]', 'via-della-scala', '[:en]<p>Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.</p><p>Head up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.</p>[:vi]<p>Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.</p><p>Head up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.</p>[:ja]<p>Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.</p><p>Head up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.</p>[:]', 41.860000, -87.650000, '[:en]Chicago, IL 60608, USA[:vi]Chicago, IL 60608, USA[:ja]Chicago, IL 60608, USA[:]', '12', NULL, NULL, NULL, NULL, '126', '129,128,127,126', 89.00, 'both', 9, 3, 2, 211.00, NULL, NULL, 'per_day', '[]', '99', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.\r\n\r\nHead up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.[:vi]Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.\r\n\r\nHead up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.[:ja]Via della Scala is a home rich in culture and in colour. Entering into the kitchen, four can dine at the wooden table, and on the right you’ll come to the sitting room, painted in pastel-green. Beamed ceilings run above vintage porcelain and a classical bust, and there’s a bright boldness to the rounded magenta armchairs and purple rug. Just off the sitting room, the master bedroom has a blue-tiled ensuite, light-yellow walls and a queen-size bed.\r\n\r\nHead up the spiral staircase, and you’ll come to the second bedroom. Rough-hewn beams contrast a contemporary wooden floor, and opposite the lime-green bedstead are a grey sofa and traditional writing desk. You’ll find sloping skylights in the white-tiled ensuite bathroom, next door, while the outdoor terrace has views over to the historic Janiculum Hill.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 23:33:26', '2021-03-29 03:02:29', 'off', NULL, NULL, NULL, NULL),
(9, '[:en]De Walden Street[:vi]New apartment 1612103739[:ja]De Walden Street[:]', 'de-walden-street', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\"><span class=\"ql-cursor\">﻿</span>De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p>[:vi]<p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\"><span class=\"ql-cursor\">﻿</span>De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p>[:ja]<p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\">De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p><p><br /></p><p><span style=\"color: rgb(122, 122, 122);\"><span class=\"ql-cursor\">﻿</span>De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).</span></p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi]Chicago, United States[:ja]Chicago, United States[:]', '12', NULL, NULL, NULL, NULL, '132', '133,132,131,130', 99.00, 'enquiry', 9, 3, 2, 154.00, NULL, NULL, 'per_day', '[]', '100', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).[:vi]De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).[:ja]De Walden Street is a two bedroom, one bathroom home in Marylebone. This home’s open-plan living area is furnished with an elegant mix of contemporary and more classic pieces (the two well-loved leather armchairs, which sit beside the working fireplace, are especially charming), plus a bold collection of artworks. Downstairs, the two bedrooms are similarly stylish, as is the retro bathroom. What’s more, you’re only a short stroll away from all the shops and cafés of Marylebone High Street. It’s just a little further to Oxford Street, and the tube at Regent’s Park is also nearby (around a ten-minute walk).[:]', NULL, NULL, 5.0, 'on', '[]', '', 1, 'publish', '2021-01-30 23:35:39', '2021-03-29 03:01:51', 'off', NULL, NULL, NULL, NULL),
(10, '[:en]Via di San Crisogono[:vi]New apartment 1612066086[:ja]Via di San Crisogono[:]', 'via-di-san-crisogono', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Trastevere-Gianicolo. This home’s white-painted rooms are all furnished with clean-cut pieces, but you’ll find lively touches – printed cushions and diverse, colourful artworks – and original details here too. There’s also a pretty rooftop terrace, with space to sit. Below, the bustling streets are lined with characterful boutiques and eateries, and you’ll find several historic churches within walking distance. You’re close to the Isola Tiberina and Campo de’ Fiori, and it’s just a two-minute walk to the nearest tram stop, Sonnino/s. Galliano.</span></p>[:vi]<p><span style=\"color: rgb(122, 122, 122);\">Trastevere-Gianicolo. This home’s white-painted rooms are all furnished with clean-cut pieces, but you’ll find lively touches – printed cushions and diverse, colourful artworks – and original details here too. There’s also a pretty rooftop terrace, with space to sit. Below, the bustling streets are lined with characterful boutiques and eateries, and you’ll find several historic churches within walking distance. You’re close to the Isola Tiberina and Campo de’ Fiori, and it’s just a two-minute walk to the nearest tram stop, Sonnino/s. Galliano.</span></p>[:ja]<p><span style=\"color: rgb(122, 122, 122);\">Trastevere-Gianicolo. This home’s white-painted rooms are all furnished with clean-cut pieces, but you’ll find lively touches – printed cushions and diverse, colourful artworks – and original details here too. There’s also a pretty rooftop terrace, with space to sit. Below, the bustling streets are lined with characterful boutiques and eateries, and you’ll find several historic churches within walking distance. You’re close to the Isola Tiberina and Campo de’ Fiori, and it’s just a two-minute walk to the nearest tram stop, Sonnino/s. Galliano.</span></p>[:]', 41.870000, -87.650000, '[:en]Chicago, IL 60607, USA[:vi]Chicago, IL 60607, USA[:ja]Chicago, IL 60607, USA[:]', '12', NULL, NULL, NULL, NULL, '105', '104,107,106,105', 60.00, 'both', 7, 3, 2, 125.00, NULL, NULL, 'per_day', '[]', '101', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:ja]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-30 13:08:06', '2021-03-29 03:01:24', 'off', NULL, NULL, NULL, NULL),
(11, '[:en]Potts Point Terrace[:vi]New apartment 1612103364[:ja]Potts Point Terrace[:]', 'potts-point-terrace', '[:en]<p><span style=\"color: rgb(122, 122, 122);\">Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.</span></p><p><span style=\"color: rgb(122, 122, 122);\">This terrace has been bought into the 21st century with it’s paired- back design using raw materials such as exposed brick and hand carved sandstone to give a modern industrial feel. Simple but fashionable furnishings and artwork with pops of colour complement this home’s design. The kitchen is equipped with all modern appliances. The generously sized lounge area has two large glass doors opening onto a patio area looking into a small garden creating some privacy from the street. Downstairs is a cozy little reading nook, office, and separate laundry room. Master bedroom and the second bedroom sharing a beautifully renovated bathroom.</span></p>[:vi]<p><span style=\"color: rgb(122, 122, 122);\">Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.</span></p><p><span style=\"color: rgb(122, 122, 122);\">This terrace has been bought into the 21st century with it’s paired- back design using raw materials such as exposed brick and hand carved sandstone to give a modern industrial feel. Simple but fashionable furnishings and artwork with pops of colour complement this home’s design. The kitchen is equipped with all modern appliances. The generously sized lounge area has two large glass doors opening onto a patio area looking into a small garden creating some privacy from the street. Downstairs is a cozy little reading nook, office, and separate laundry room. Master bedroom and the second bedroom sharing a beautifully renovated bathroom.</span></p>[:ja]<p><span style=\"color: rgb(122, 122, 122);\">Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.</span></p><p><span style=\"color: rgb(122, 122, 122);\">This terrace has been bought into the 21st century with it’s paired- back design using raw materials such as exposed brick and hand carved sandstone to give a modern industrial feel. Simple but fashionable furnishings and artwork with pops of colour complement this home’s design. The kitchen is equipped with all modern appliances. The generously sized lounge area has two large glass doors opening onto a patio area looking into a small garden creating some privacy from the street. Downstairs is a cozy little reading nook, office, and separate laundry room. Master bedroom and the second bedroom sharing a beautifully renovated bathroom.</span></p>[:]', 41.875600, -87.624400, '[:en]Chicago, United States[:vi]Chicago, United States[:ja]Chicago, United States[:]', '12', NULL, NULL, NULL, NULL, '119', '118,121,120,119', 67.00, 'instant', 10, 3, 2, 210.00, NULL, NULL, 'per_day', '[]', '102', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.[:vi]Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.[:ja]Quietly positioned on the ground floor of a Victorian Terrace this bright and cool, art-filled home will surprise you with its attention to detail and first-class finishing’s. A spacious flowing floorplan over two levels with two bedrooms, one bathroom and wash room to accommodate up to 4 people.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 23:29:24', '2021-03-29 03:00:37', 'off', NULL, NULL, NULL, NULL),
(12, '[:en]Ebury Street[:vi]New apartment 1612103479[:ja]Ebury Street[:]', 'ebury-street', '[:en]<p>This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.</p><p>There’s a trio of bedrooms, all with intricately patterned wallpaper. Each bedroom has an ensuite bathroom—the master ensuite has a decorative fireplace and a library ladder, and the third bedroom’s ensuite has hexagonal floor tiles and a pair of marble-clad showers. Lastly, there’s a wood-panelled dining room, and a circular dining table on the patio.</p>[:vi]<p>This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.</p><p>There’s a trio of bedrooms, all with intricately patterned wallpaper. Each bedroom has an ensuite bathroom—the master ensuite has a decorative fireplace and a library ladder, and the third bedroom’s ensuite has hexagonal floor tiles and a pair of marble-clad showers. Lastly, there’s a wood-panelled dining room, and a circular dining table on the patio.</p>[:ja]<p>This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.</p><p>There’s a trio of bedrooms, all with intricately patterned wallpaper. Each bedroom has an ensuite bathroom—the master ensuite has a decorative fireplace and a library ladder, and the third bedroom’s ensuite has hexagonal floor tiles and a pair of marble-clad showers. Lastly, there’s a wood-panelled dining room, and a circular dining table on the patio.</p>[:]', 48.856580, 2.351830, '[:en]Paris, France[:vi]Paris, France[:ja]Paris, France[:]', '12', NULL, NULL, NULL, NULL, '122', '125,124,123,122', 45.00, 'both', 10, 3, 2, 123.00, NULL, NULL, 'per_day', '[]', '103', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.[:vi]This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.[:ja]This three bedroom, three bathroom home in Belgravia hits all the right notes. The sitting room is classically decorated in white and powder-blue, and is separated by an arch into two clusters of chairs and sofas, with an ornamental fireplace and piano at one end. The kitchen is also smart and with traditional touches (like the oven mantle) mixed with more modern innovations such as the central breakfast bar.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 23:31:19', '2021-03-29 02:59:56', 'off', NULL, NULL, NULL, NULL),
(13, '[:en]Turtle Ridge[:vi]New apartment 1612102859[:ja]Turtle Ridge[:]', 'turtle-ridge', '[:en]<p>Find yourself in the perfect environment to make the most memorable vacation. Located in lower Bight, Turtle Ridge Villa sits directly overlooking the breathtaking award-winning Grace Bay beach. The views are amazing with only a 3 minute walk to the beach.</p><p>It’s said that the best in life is worth waiting for and this is certainly true of this beautiful three-bedroom villa with direct walkout onto the Pool deck with loungers, wet bar, outdoor kitchen and BBQ grill.</p><p>There are three bedrooms: 3 masters with king beds. Bedroom #3 can be converted to twins as needed upon request. All have bath ensuite. Living room as well as each bedroom have flat screen TV with Netflix. The villa comes fully-equipped with wireless internet, cable TV, metered air-conditioning (bedrooms only) and a fully-stocked kitchen and linen closet. There is a safe in each bedroom to store valuable items.</p>[:vi]<p>Find yourself in the perfect environment to make the most memorable vacation. Located in lower Bight, Turtle Ridge Villa sits directly overlooking the breathtaking award-winning Grace Bay beach. The views are amazing with only a 3 minute walk to the beach.</p><p>It’s said that the best in life is worth waiting for and this is certainly true of this beautiful three-bedroom villa with direct walkout onto the Pool deck with loungers, wet bar, outdoor kitchen and BBQ grill.</p><p>There are three bedrooms: 3 masters with king beds. Bedroom #3 can be converted to twins as needed upon request. All have bath ensuite. Living room as well as each bedroom have flat screen TV with Netflix. The villa comes fully-equipped with wireless internet, cable TV, metered air-conditioning (bedrooms only) and a fully-stocked kitchen and linen closet. There is a safe in each bedroom to store valuable items.</p>[:ja]<p>Find yourself in the perfect environment to make the most memorable vacation. Located in lower Bight, Turtle Ridge Villa sits directly overlooking the breathtaking award-winning Grace Bay beach. The views are amazing with only a 3 minute walk to the beach.</p><p>It’s said that the best in life is worth waiting for and this is certainly true of this beautiful three-bedroom villa with direct walkout onto the Pool deck with loungers, wet bar, outdoor kitchen and BBQ grill.</p><p>There are three bedrooms: 3 masters with king beds. Bedroom #3 can be converted to twins as needed upon request. All have bath ensuite. Living room as well as each bedroom have flat screen TV with Netflix. The villa comes fully-equipped with wireless internet, cable TV, metered air-conditioning (bedrooms only) and a fully-stocked kitchen and linen closet. There is a safe in each bedroom to store valuable items.</p>[:]', 41.880000, -87.640000, '[:en]Chicago, IL 60606, USA[:vi]Chicago, IL 60606, USA[:ja]Chicago, IL 60606, USA[:]', '12', NULL, NULL, NULL, NULL, '108', '111,110,109,108', 10.00, 'both', 8, 2, 2, 118.00, NULL, NULL, 'per_hour', '[]', '99', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi][:]', NULL, NULL, NULL, 'on', '[]', 'https://www.youtube.com/watch?v=GmuZTa4LV0I', 1, 'publish', '2021-01-30 23:20:59', '2021-03-29 03:11:46', 'off', NULL, NULL, NULL, NULL);
INSERT INTO `gmz_space` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `base_price`, `booking_form`, `number_of_guest`, `number_of_bedroom`, `number_of_bathroom`, `size`, `min_stay`, `max_stay`, `booking_type`, `extra_services`, `space_type`, `space_amenity`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `checkin_time`, `checkout_time`, `rating`, `is_featured`, `discount_by_day`, `video`, `author`, `status`, `created_at`, `updated_at`, `external_booking`, `external_link`, `post_description`, `ical`, `deleted_at`) VALUES
(14, '[:en]Gregory Place[:vi]New apartment 1612103093[:ja]Gregory Place[:]', 'gregory-place', '[:en]<p>Tucked away on a lane in the heart of Kensington, Gregory Place is a home worth discovering. Vintage travel posters line the walls in the sitting room, to the left of the entrance hallway, which has wooden floors and a pair of cream sofas. There’s a skylight overhead, and to the left is the open-plan kitchen. It’s a contemporary space, with a round dining table for three and glossy black cabinets that stand out against white walls.</p><p>Straight ahead of the front door is the staircase to the first floor. The second bedroom is on the left, the third bedroom to the right. Both have shuttered windows and a varnished wooden floor, and the second bedroom has a double bed with a bright pink headboard. There’s a bathroom straight ahead, and another upstairs and to the left. Up here, there’s one room left to discover—the master bedroom, with its king-sized bed.</p>[:vi]<p>Tucked away on a lane in the heart of Kensington, Gregory Place is a home worth discovering. Vintage travel posters line the walls in the sitting room, to the left of the entrance hallway, which has wooden floors and a pair of cream sofas. There’s a skylight overhead, and to the left is the open-plan kitchen. It’s a contemporary space, with a round dining table for three and glossy black cabinets that stand out against white walls.</p><p>Straight ahead of the front door is the staircase to the first floor. The second bedroom is on the left, the third bedroom to the right. Both have shuttered windows and a varnished wooden floor, and the second bedroom has a double bed with a bright pink headboard. There’s a bathroom straight ahead, and another upstairs and to the left. Up here, there’s one room left to discover—the master bedroom, with its king-sized bed.</p>[:ja]<p>Tucked away on a lane in the heart of Kensington, Gregory Place is a home worth discovering. Vintage travel posters line the walls in the sitting room, to the left of the entrance hallway, which has wooden floors and a pair of cream sofas. There’s a skylight overhead, and to the left is the open-plan kitchen. It’s a contemporary space, with a round dining table for three and glossy black cabinets that stand out against white walls.</p><p>Straight ahead of the front door is the staircase to the first floor. The second bedroom is on the left, the third bedroom to the right. Both have shuttered windows and a varnished wooden floor, and the second bedroom has a double bed with a bright pink headboard. There’s a bathroom straight ahead, and another upstairs and to the left. Up here, there’s one room left to discover—the master bedroom, with its king-sized bed.</p>[:]', 41.870000, -87.650000, '[:en]Chicago, IL 60607, USA[:vi]Chicago, IL 60607, USA[:ja]Chicago, IL 60607, USA[:]', '12', NULL, NULL, NULL, NULL, '114', '114,113,112', 70.00, 'both', 12, 3, 2, 210.00, NULL, NULL, 'per_day', '[]', '100', '114,113,112,111,110,109,108,107,106,105,104', 'on', 5, '[:en]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:vi]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:ja]Provided you book more than 7 days before the start of your stay, you can cancel your booking within 24 hours and we’ll provide a full refund.[:]', NULL, NULL, NULL, 'on', '[]', '', 1, 'publish', '2021-01-30 23:24:53', '2021-03-29 03:04:13', 'off', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_space_availability`
--

CREATE TABLE `gmz_space_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_base` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_taxonomy`
--

CREATE TABLE `gmz_taxonomy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_title` varchar(191) NOT NULL,
  `taxonomy_name` varchar(191) NOT NULL,
  `taxonomy_description` varchar(191) DEFAULT NULL,
  `post_type` varchar(191) NOT NULL DEFAULT 'post',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_taxonomy`
--

INSERT INTO `gmz_taxonomy` (`id`, `taxonomy_title`, `taxonomy_name`, `taxonomy_description`, `post_type`, `created_at`, `updated_at`) VALUES
(1, 'Categories', 'post-category', NULL, 'post', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(2, 'Tags', 'post-tag', NULL, 'post', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(3, 'Car Types', 'car-type', NULL, 'car', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(4, 'Car Features', 'car-feature', NULL, 'car', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(5, 'Car Equipments', 'car-equipment', NULL, 'car', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(6, 'Apartment Types', 'apartment-type', NULL, 'apartment', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(7, 'Apartment Amenities', 'apartment-amenity', NULL, 'apartment', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(8, 'Property Types', 'property-type', NULL, 'hotel', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(9, 'Hotel Facilities', 'hotel-facilities', NULL, 'hotel', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(10, 'Hotel Services', 'hotel-services', NULL, 'hotel', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(11, 'Room Facilities', 'room-facilities', NULL, 'room', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(12, 'Service Categories', 'beauty-services', NULL, 'beauty', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(13, 'Beauty Branch', 'beauty-branch', NULL, 'beauty', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(14, 'Space Types', 'space-type', NULL, 'space', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(15, 'Space Amenities', 'space-amenity', NULL, 'space', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(16, 'Tour Types', 'tour-type', NULL, 'tour', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(17, 'Tour Include', 'tour-include', NULL, 'tour', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(18, 'Tour Exclude', 'tour-exclude', NULL, 'tour', '2023-06-25 13:41:40', '2023-06-25 13:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_term`
--

CREATE TABLE `gmz_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_title` text NOT NULL,
  `term_name` varchar(191) NOT NULL,
  `term_description` longtext DEFAULT NULL,
  `term_icon` varchar(191) DEFAULT NULL,
  `term_image` varchar(191) DEFAULT NULL,
  `term_price` varchar(191) DEFAULT NULL,
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `term_location` text DEFAULT NULL,
  `author` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_term`
--

INSERT INTO `gmz_term` (`id`, `term_title`, `term_name`, `term_description`, `term_icon`, `term_image`, `term_price`, `taxonomy_id`, `created_at`, `updated_at`, `parent`, `term_location`, `author`) VALUES
(4, '[:en]Economy[:vi]Economy[:]', 'economy', '[:en]2 Adults, 2 Bags[:vi]2 Adults, 2 Bags[:]', NULL, '16', NULL, 3, '2021-01-26 01:23:09', '2021-01-30 06:56:54', 0, '0', 0),
(5, '[:en]Compact[:vi]Compact[:]', 'compact', '[:en]4 Adults, 2 Bags[:vi]4 Adults, 2 Bags[:]', NULL, '18', NULL, 3, '2021-01-26 01:23:50', '2021-01-30 07:00:26', 0, '0', 0),
(6, '[:en]Standard[:vi]Standard[:]', 'standard', '[:en]5 Adults, 3 Bags[:vi]5 Adults, 2 Bags[:]', NULL, '19', NULL, 3, '2021-01-26 01:24:35', '2021-01-30 07:10:47', 0, '0', 0),
(7, '[:en]Minivan[:vi]Minivan[:]', 'minivan', '[:en]5 Adults, 5 Bags[:vi]5 Adults, 5 Bags[:]', NULL, '20', NULL, 3, '2021-01-26 01:25:41', '2021-01-30 07:03:44', 0, '0', 0),
(8, '[:en]Full-size SUV[:vi]Full-size SUV[:]', 'full-size-suv', '[:en]5 Adults, 2 Bags[:vi]5 Adults, 2 Bags[:]', NULL, '19', NULL, 3, '2021-01-26 01:26:10', '2021-01-30 07:06:19', 0, '0', 0),
(9, '[:en]Premium[:vi]Premium[:]', 'premium', '[:en]5 Adults, 5 Bags[:vi]5 Adults, 5 Bags[:]', NULL, '21', NULL, 3, '2021-01-26 01:26:33', '2021-01-30 07:07:32', 0, '0', 0),
(10, '[:en]Luxury[:vi]Luxury[:]', 'luxury', '[:en]5 Adults, 5 Bags[:vi]5 Adults, 5 Bags[:]', NULL, '21', NULL, 3, '2021-01-26 01:26:56', '2021-01-30 07:07:59', 0, '0', 0),
(12, '[:en]Intermediate[:vi]Intermediate[:]', 'intermediate', '[:en]5 Adults, 3 Bags[:vi]5 Adults, 3 Bags[:]', NULL, '16', NULL, 3, '2021-01-30 07:05:38', '2021-01-30 07:12:01', 0, '0', 0),
(13, '[:en]Passenger Van[:vi]Passenger Van[:]', 'passenger-van', '[:en]5 Adults, 5 Bags[:vi]5 Adults, 5 Bags[:]', NULL, '22', NULL, 3, '2021-01-30 07:10:12', '2021-01-30 07:10:12', 0, '0', 0),
(14, '[:en]Airbag[:vi]Airbag[:]', 'airbag', '[:en][:vi][:]', 'icon_airbag', NULL, NULL, 4, '2021-01-30 07:24:07', '2021-01-30 07:24:07', 0, '0', 0),
(15, '[:en]FM Radio[:vi][:]', 'fm-radio', '[:en][:vi][:]', 'icon_radio', NULL, NULL, 4, '2021-01-30 07:25:41', '2021-01-30 07:25:41', 0, '0', 0),
(16, '[:en]Power Windows[:vi][:]', 'power-windows', '[:en][:vi][:]', 'icon_car_door', NULL, NULL, 4, '2021-01-30 07:26:07', '2021-01-30 07:26:07', 0, '0', 0),
(17, '[:en]Sensor[:vi][:]', 'sensor', '[:en][:vi][:]', 'icon_sensor', NULL, NULL, 4, '2021-01-30 07:26:24', '2021-01-30 07:26:24', 0, '0', 0),
(18, '[:en]Speed Km[:vi][:]', 'speed-km', '[:en][:vi][:]', 'icon_speedkm', NULL, NULL, 4, '2021-01-30 07:26:56', '2021-01-30 07:26:56', 0, '0', 0),
(19, '[:en]Steering Wheel[:vi][:]', 'steering-wheel', '[:en][:vi][:]', 'icon_steering_wheel', NULL, NULL, 4, '2021-01-30 07:27:18', '2021-01-30 07:27:18', 0, '0', 0),
(20, '[:en]Wifi[:vi][:]', 'wifi', '[:en][:vi][:]', 'icon_wifi', NULL, '5', 5, '2021-01-30 07:31:42', '2021-01-30 07:31:42', 0, '0', 0),
(21, '[:en]Hand tool[:vi][:]', 'hand-tool', '[:en][:vi][:]', 'icon_hand_tool', NULL, '10', 5, '2021-01-30 07:31:54', '2021-01-30 07:31:54', 0, '0', 0),
(22, '[:en]GPS Satellite[:vi][:]', 'gps-satellite', '[:en][:vi][:]', 'icon_gps_satellite', NULL, '4', 5, '2021-01-30 07:32:09', '2021-01-30 07:32:09', 0, '0', 0),
(23, '[:en]Infant Child Seat[:vi][:]', 'infant-child-seat', '[:en][:vi][:]', 'icon_infant_child_seat', NULL, '10', 5, '2021-01-30 07:32:29', '2021-01-30 07:32:29', 0, '0', 0),
(24, '[:en]Ski Rack[:vi][:]', 'ski-rack', '[:en][:vi][:]', 'icon_ski_rack', NULL, '5', 5, '2021-01-30 07:32:44', '2021-01-30 07:32:44', 0, '0', 0),
(25, '[:en]House[:vi][:]', 'house', '[:en][:vi][:]', NULL, '77', NULL, 6, '2021-01-30 09:03:08', '2021-01-30 09:03:08', 0, '0', 0),
(26, '[:en]Hostel[:vi][:]', 'hostel', '[:en][:vi][:]', NULL, '81', NULL, 6, '2021-01-30 09:03:21', '2021-01-30 09:03:21', 0, '0', 0),
(27, '[:en]Guesthouse[:vi][:]', 'guesthouse', '[:en][:vi][:]', NULL, '80', NULL, 6, '2021-01-30 09:03:32', '2021-01-30 09:03:32', 0, '0', 0),
(28, '[:en]Cabin[:vi][:]', 'cabin', '[:en][:vi][:]', NULL, '78', NULL, 6, '2021-01-30 09:03:40', '2021-01-30 09:03:40', 0, '0', 0),
(29, '[:en]Bungalow[:vi][:]', 'bungalow', '[:en][:vi][:]', NULL, '82', NULL, 6, '2021-01-30 09:03:52', '2021-01-30 09:03:52', 0, '0', 0),
(30, '[:en]Apartment[:vi][:]', 'apartment', '[:en][:vi][:]', NULL, '79', NULL, 6, '2021-01-30 09:04:01', '2021-01-30 09:04:01', 0, '0', 0),
(31, '[:en]Bed[:vi][:]', 'bed', '[:en][:vi][:]', 'icon_system_bedroom', NULL, NULL, 7, '2021-01-30 09:08:11', '2021-01-30 09:08:11', 0, '0', 0),
(32, '[:en]Hair dryer[:vi][:]', 'hair-dryer', '[:en][:vi][:]', 'icon_hair_dryer', NULL, NULL, 7, '2021-01-30 09:08:22', '2021-01-30 09:08:22', 0, '0', 0),
(33, '[:en]Iron[:vi][:]', 'iron', '[:en][:vi][:]', 'icon_iron', NULL, NULL, 7, '2021-01-30 09:08:31', '2021-01-30 09:08:31', 0, '0', 0),
(34, '[:en]Tea / Coffee[:vi][:]', 'tea-coffee', '[:en][:vi][:]', 'icon_coffe', NULL, NULL, 7, '2021-01-30 09:08:40', '2021-01-30 09:08:40', 0, '0', 0),
(35, '[:en]Adapters[:vi][:]', 'adapters', '[:en][:vi][:]', 'icon_adapter', NULL, NULL, 7, '2021-01-30 09:08:49', '2021-01-30 09:08:49', 0, '0', 0),
(36, '[:en]Mobile USB[:vi][:]', 'mobile-usb', '[:en][:vi][:]', 'icon_mobile_usb', NULL, NULL, 7, '2021-01-30 09:08:59', '2021-01-30 09:08:59', 0, '0', 0),
(37, '[:en]DVD Player[:vi][:]', 'dvd-player', '[:en][:vi][:]', 'icon_dvd', NULL, NULL, 7, '2021-01-30 09:09:12', '2021-01-30 09:09:12', 0, '0', 0),
(38, '[:en]Television[:vi][:]', 'television', '[:en][:vi][:]', 'icon_television', NULL, NULL, 7, '2021-01-30 09:09:20', '2021-01-30 09:09:20', 0, '0', 0),
(39, '[:en]Table[:vi][:]', 'table', '[:en][:vi][:]', 'icon_table', NULL, NULL, 7, '2021-01-30 09:09:28', '2021-01-30 09:09:28', 0, '0', 0),
(40, '[:en]Telephone[:vi][:]', 'telephone', '[:en][:vi][:]', 'icon_telephone', NULL, NULL, 7, '2021-01-30 09:09:35', '2021-01-30 09:09:35', 0, '0', 0),
(41, '[:en]Wifi[:vi][:]', 'wifi', '[:en][:vi][:]', 'icon_wifi', NULL, NULL, 7, '2021-01-30 09:09:44', '2021-01-30 09:09:44', 0, '0', 0),
(42, '[:en]Latin professor[:vi]Travel[:ja]Travel[:]', 'latin-professor', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-01-30 09:25:06', '2021-03-11 18:37:01', 0, '0', 0),
(43, '[:en]Richard McClintock[:vi]Museums[:ja]Museums[:]', 'richard-mcclintock', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-01-30 09:25:11', '2021-03-11 18:36:53', 0, '0', 0),
(44, '[:en]Latin literature[:vi]Mountains[:ja]Mountains[:]', 'latin-literature', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-01-30 09:25:17', '2021-03-11 18:36:41', 0, '0', 0),
(45, '[:en]It has roots[:vi]Cultural events[:ja]Cultural events[:]', 'it-has-roots', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-01-30 09:25:22', '2021-03-11 18:36:30', 0, '0', 0),
(47, 'Beauty', 'beauty', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:26:33', '2021-01-30 09:26:33', 0, '0', 0),
(48, 'Beaches', 'beaches', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:26:33', '2021-01-30 09:26:33', 0, '0', 0),
(49, 'Travel', 'travel', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:28:10', '2021-01-30 09:28:10', 0, '0', 0),
(50, 'Picnic', 'picnic', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:28:10', '2021-01-30 09:28:10', 0, '0', 0),
(51, 'Spotlight', 'spotlight', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:28:10', '2021-01-30 09:28:10', 0, '0', 0),
(52, 'Museums', 'museums', NULL, NULL, NULL, NULL, 2, '2021-01-30 09:29:22', '2021-01-30 09:29:22', 0, '0', 0),
(53, 'Cultural events', 'cultural-events', NULL, NULL, NULL, NULL, 2, '2021-01-30 20:45:40', '2021-01-30 20:45:40', 0, '0', 0),
(54, 'Mountains', 'mountains', NULL, NULL, NULL, NULL, 2, '2021-01-30 20:48:47', '2021-01-30 20:48:47', 0, '0', 0),
(55, 'Beauty beaches', 'beauty-beaches', NULL, NULL, NULL, NULL, 2, '2021-01-30 20:49:59', '2021-01-30 20:49:59', 0, '0', 0),
(57, '[:en]Contrary to[:vi]Beauty beaches[:ja]Beauty beaches[:]', 'contrary-to', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-02-01 04:07:05', '2021-03-11 18:36:19', 0, '0', 0),
(58, '[:en]Hampden-Sydney[:vi][:ja][:]', 'hampden-sydney', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-03-11 18:37:08', '2021-03-11 18:37:08', 0, '0', 0),
(59, '[:en]College in Virginia[:vi][:ja][:]', 'college-in-virginia', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-03-11 18:37:15', '2021-03-11 18:37:15', 0, '0', 0),
(60, '[:en]Lorem Ipsum[:vi][:ja][:]', 'lorem-ipsum', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-03-11 18:37:24', '2021-03-11 18:37:24', 0, '0', 0),
(61, '[:en]Lorem Ipsum comes[:vi][:ja][:]', 'lorem-ipsum-comes', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 1, '2021-03-11 18:37:32', '2021-03-11 18:37:32', 0, '0', 0),
(63, 'Hotels', 'hotels', NULL, NULL, '148', NULL, 8, '2021-03-24 02:30:08', '2021-03-24 02:30:08', 0, '0', 0),
(64, 'Homestays', 'homestays', NULL, NULL, '149', NULL, 8, '2021-03-24 02:30:55', '2021-03-24 02:30:55', 0, '0', 0),
(65, 'Villas', 'villas', NULL, NULL, '150', NULL, 8, '2021-03-24 02:31:39', '2021-03-24 02:31:39', 0, '0', 0),
(66, 'Motels', 'motels', NULL, NULL, '151', NULL, 8, '2021-03-24 02:32:34', '2021-03-24 02:32:34', 0, '0', 0),
(67, 'Resorts', 'resorts', NULL, NULL, '152', NULL, 8, '2021-03-24 02:33:10', '2021-03-24 02:33:10', 0, '0', 0),
(68, 'Lodges', 'lodges', NULL, NULL, '153', NULL, 8, '2021-03-24 02:33:40', '2021-03-24 02:33:40', 0, '0', 0),
(69, '[:en]Air Conditioning[:vi]Air Conditioning[:ja]Air Conditioning[:]', 'air-conditioning', '[:en][:vi][:ja][:]', 'fal fa-air-conditioner', NULL, NULL, 9, '2021-03-24 02:49:25', '2021-05-13 19:27:42', 0, '0', 0),
(71, 'Airport Transport', 'airport-transport', NULL, 'icon_airport_transport', NULL, NULL, 9, '2021-03-24 03:12:28', '2021-03-24 03:12:28', 0, '0', 0),
(72, 'Heater', 'heater', NULL, 'icon_heater', NULL, NULL, 9, '2021-03-24 03:12:44', '2021-03-24 03:12:44', 0, '0', 0),
(73, 'Fitness Center', 'fitness-center', NULL, 'icon_fitness_center', NULL, NULL, 9, '2021-03-24 03:12:56', '2021-03-24 03:12:56', 0, '0', 0),
(74, 'Television', 'television', NULL, 'icon_television', NULL, NULL, 9, '2021-03-24 03:13:11', '2021-03-24 03:13:11', 0, '0', 0),
(75, 'Internet – Wifi', 'internet-wifi', NULL, 'icon_wifi', NULL, NULL, 9, '2021-03-24 03:13:22', '2021-03-24 03:13:22', 0, '0', 0),
(76, 'Parking', 'parking', NULL, 'icon_parking', NULL, NULL, 9, '2021-03-24 03:13:51', '2021-03-24 03:13:51', 0, '0', 0),
(77, 'Car rental services', 'car-rental-services', NULL, 'icon_system_pickup_car', NULL, NULL, 10, '2021-03-24 03:18:57', '2021-03-24 03:18:57', 0, '0', 0),
(78, 'Catering services', 'catering-services', NULL, 'icon_bar_service', NULL, NULL, 10, '2021-03-24 03:20:17', '2021-03-24 03:20:17', 0, '0', 0),
(79, 'Courier services', 'courier-services', NULL, 'icon_courier', NULL, NULL, 10, '2021-03-24 03:21:39', '2021-03-24 03:21:39', 0, '0', 0),
(80, 'Doctor on call', 'doctor-on-call', NULL, 'icon_doctor', NULL, NULL, 10, '2021-03-24 03:22:29', '2021-03-24 03:22:29', 0, '0', 0),
(81, 'Dry cleaning', 'dry-cleaning', NULL, 'icon_laundry', NULL, NULL, 10, '2021-03-24 03:23:26', '2021-03-24 03:23:26', 0, '0', 0),
(82, 'Excursions and guided tours', 'excursions-and-guided-tours', NULL, 'icon_tour_guide', NULL, NULL, 10, '2021-03-24 03:24:23', '2021-03-24 03:24:23', 0, '0', 0),
(83, 'Flower arrangement', 'flower-arrangement', NULL, 'icon_flower', NULL, NULL, 10, '2021-03-24 03:25:21', '2021-03-24 03:25:21', 0, '0', 0),
(84, 'Ironing service', 'ironing-service', NULL, 'icon_iron', NULL, NULL, 10, '2021-03-24 03:26:16', '2021-03-24 03:26:16', 0, '0', 0),
(85, 'Massages', 'massages', NULL, 'icon_massage', NULL, NULL, 10, '2021-03-24 03:27:04', '2021-03-24 03:27:04', 0, '0', 0),
(86, 'TV', 'tv', NULL, 'icon_television', NULL, NULL, 11, '2021-03-24 20:16:54', '2021-03-24 20:16:54', 0, '0', 0),
(87, 'Coffee machine', 'coffee-machine', NULL, 'icon_coffee_cup', NULL, NULL, 11, '2021-03-24 20:17:45', '2021-03-24 20:17:45', 0, '0', 0),
(88, 'Telephone', 'telephone', NULL, 'icon_telephone', NULL, NULL, 11, '2021-03-24 20:17:59', '2021-03-24 20:17:59', 0, '0', 0),
(89, 'Satellite channels', 'satellite-channels', NULL, 'icon_satellite', NULL, NULL, 11, '2021-03-24 20:19:06', '2021-03-24 20:19:06', 0, '0', 0),
(90, 'Cable channels', 'cable-channels', NULL, 'icon_cable_tv', NULL, NULL, 11, '2021-03-24 20:20:53', '2021-03-24 20:20:53', 0, '0', 0),
(91, 'Socket near the bed', 'socket-near-the-bed', NULL, 'icon_outlet', NULL, NULL, 11, '2021-03-24 20:21:48', '2021-03-24 20:21:48', 0, '0', 0),
(92, 'Linens', 'linens', NULL, 'icon_bed_sheets', NULL, NULL, 11, '2021-03-24 20:22:36', '2021-03-24 20:22:36', 0, '0', 0),
(93, 'Wardrobe', 'wardrobe', NULL, 'icon_wardrobe', NULL, NULL, 11, '2021-03-24 20:24:36', '2021-03-24 20:24:36', 0, '0', 0),
(94, 'Air conditioning', 'air-conditioning', NULL, 'icon_aircondition', NULL, NULL, 11, '2021-03-24 20:24:51', '2021-03-24 20:24:51', 0, '0', 0),
(95, 'Safe', 'safe', NULL, 'icon_protection', NULL, NULL, 11, '2021-03-24 20:25:30', '2021-03-24 20:25:30', 0, '0', 0),
(96, 'Ironing facilities', 'ironing-facilities', NULL, 'icon_iron', NULL, NULL, 11, '2021-03-24 20:25:42', '2021-03-24 20:25:42', 0, '0', 0),
(97, 'Fan', 'fan', NULL, 'icon_fan', NULL, NULL, 11, '2021-03-24 20:26:26', '2021-03-24 20:26:26', 0, '0', 0),
(98, '[:en]Villa[:vi][:ja][:]', 'villa', '[:en][:vi][:ja][:]', NULL, '152', NULL, 14, '2021-03-29 02:43:38', '2021-03-29 02:43:38', 0, '0', 0),
(99, '[:en]Warehouse[:vi][:ja][:]', 'warehouse', '[:en][:vi][:ja][:]', NULL, '149', NULL, 14, '2021-03-29 02:44:03', '2021-03-29 02:44:03', 0, '0', 0),
(100, '[:en]Yoga Studio[:vi][:ja][:]', 'yoga-studio', '[:en][:vi][:ja][:]', NULL, '155', NULL, 14, '2021-03-29 02:44:45', '2021-03-29 02:44:45', 0, '0', 0),
(101, '[:en]Recording Studio[:vi][:ja][:]', 'recording-studio', '[:en][:vi][:ja][:]', NULL, '156', NULL, 14, '2021-03-29 02:45:34', '2021-03-29 02:45:34', 0, '0', 0),
(102, '[:en]Office[:vi][:ja][:]', 'office', '[:en][:vi][:ja][:]', NULL, '141', NULL, 14, '2021-03-29 02:46:11', '2021-03-29 02:46:11', 0, '0', 0),
(103, '[:en]Cafe[:vi][:ja][:]', 'cafe', '[:en][:vi][:ja][:]', NULL, '157', NULL, 14, '2021-03-29 02:46:51', '2021-03-29 02:46:51', 0, '0', 0),
(104, '[:en]Wifi[:vi][:ja][:]', 'wifi', '[:en][:vi][:ja][:]', 'icon_wifi', NULL, NULL, 15, '2021-03-29 02:55:22', '2021-03-29 02:55:22', 0, '0', 0),
(105, '[:en]Telephone[:vi][:ja][:]', 'telephone', '[:en][:vi][:ja][:]', 'icon_telephone', NULL, NULL, 15, '2021-03-29 02:55:32', '2021-03-29 02:55:32', 0, '0', 0),
(106, '[:en]Table[:vi][:ja][:]', 'table', '[:en][:vi][:ja][:]', 'icon_table', NULL, NULL, 15, '2021-03-29 02:55:43', '2021-03-29 02:55:43', 0, '0', 0),
(107, '[:en]Television[:vi][:ja][:]', 'television', '[:en][:vi][:ja][:]', 'icon_television', NULL, NULL, 15, '2021-03-29 02:55:53', '2021-03-29 02:55:53', 0, '0', 0),
(108, '[:en]DVD Player[:vi][:ja][:]', 'dvd-player', '[:en][:vi][:ja][:]', 'icon_dvd', NULL, NULL, 15, '2021-03-29 02:56:03', '2021-03-29 02:56:03', 0, '0', 0),
(109, '[:en]Mobile USB[:vi][:ja][:]', 'mobile-usb', '[:en][:vi][:ja][:]', 'icon_mobile_usb', NULL, NULL, 15, '2021-03-29 02:56:17', '2021-03-29 02:56:17', 0, '0', 0),
(110, '[:en]Adapters[:vi][:ja][:]', 'adapters', '[:en][:vi][:ja][:]', 'icon_adapter', NULL, NULL, 15, '2021-03-29 02:56:28', '2021-03-29 02:56:28', 0, '0', 0),
(111, '[:en]Tea / Coffee[:vi][:ja][:]', 'tea-coffee', '[:en][:vi][:ja][:]', 'icon_coffe', NULL, NULL, 15, '2021-03-29 02:56:50', '2021-03-29 02:56:50', 0, '0', 0),
(112, '[:en]Iron[:vi][:ja][:]', 'iron', '[:en][:vi][:ja][:]', 'icon_iron', NULL, NULL, 15, '2021-03-29 02:57:01', '2021-03-29 02:57:01', 0, '0', 0),
(113, '[:en]Hair dryer[:vi][:ja][:]', 'hair-dryer', '[:en][:vi][:ja][:]', 'icon_hair_dryer', NULL, NULL, 15, '2021-03-29 02:57:12', '2021-03-29 02:57:12', 0, '0', 0),
(114, '[:en]Bed[:vi][:ja][:]', 'bed', '[:en][:vi][:ja][:]', 'icon_system_bedroom', NULL, NULL, 15, '2021-03-29 02:57:27', '2021-03-29 02:57:27', 0, '0', 0),
(115, '[:en]Cultural[:vi][:ja][:]', 'cultural', '[:en][:vi][:ja][:]', NULL, '171', NULL, 16, '2021-05-13 19:56:05', '2021-05-13 19:56:05', 0, '0', 1),
(116, '[:en]Nature & Adventure[:vi][:ja][:]', 'nature-adventure', '[:en][:vi][:ja][:]', NULL, '176', NULL, 16, '2021-05-13 19:56:35', '2021-05-13 19:56:35', 0, '0', 1),
(117, '[:en]Marine[:vi][:ja][:]', 'marine', '[:en][:vi][:ja][:]', NULL, '173', NULL, 16, '2021-05-13 19:56:49', '2021-05-13 19:56:49', 0, '0', 1),
(118, '[:en]Independent[:vi][:ja][:]', 'independent', '[:en][:vi][:ja][:]', NULL, '174', NULL, 16, '2021-05-13 19:57:05', '2021-05-13 19:57:05', 0, '0', 1),
(119, '[:en]Festival & Events[:vi]Festival & Events[:ja]Festival & Events[:]', 'festival-events', '[:en][:vi][:ja][:]', NULL, '178', NULL, 16, '2021-05-13 19:57:17', '2021-05-13 19:59:10', 0, '0', 1),
(120, '[:en]Activities[:vi][:ja][:]', 'activities', '[:en][:vi][:ja][:]', NULL, '177', NULL, 16, '2021-05-13 19:58:28', '2021-05-13 19:58:28', 0, '0', 1),
(121, '[:en]Departure tax[:vi][:ja][:]', 'departure-tax', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:02', '2021-05-13 20:12:02', 0, '0', 1),
(122, '[:en]Entry or admission fee[:vi][:ja][:]', 'entry-or-admission-fee', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:08', '2021-05-13 20:12:08', 0, '0', 1),
(123, '[:en]Landing & facility fees[:vi][:ja][:]', 'landing-facility-fees', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:16', '2021-05-13 20:12:16', 0, '0', 1),
(124, '[:en]Parking fees[:vi][:ja][:]', 'parking-fees', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:21', '2021-05-13 20:12:21', 0, '0', 1),
(125, '[:en]Tip or gratuity[:vi][:ja][:]', 'tip-or-gratuity', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:27', '2021-05-13 20:12:27', 0, '0', 1),
(126, '[:en]Private Transport[:vi][:ja][:]', 'private-transport', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:45', '2021-05-13 20:12:45', 0, '0', 1),
(127, '[:en]Specialized bilingual guide[:vi][:ja][:]', 'specialized-bilingual-guide', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:12:51', '2021-05-13 20:12:51', 0, '0', 1),
(128, '[:en]Entrance fees[:vi][:ja][:]', 'entrance-fees', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 17, '2021-05-13 20:13:05', '2021-05-13 20:13:05', 0, '0', 1),
(129, '[:en]Additional Services[:vi][:ja][:]', 'additional-services', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:15', '2021-05-13 20:13:15', 0, '0', 1),
(130, '[:en]Insurance[:vi][:ja][:]', 'insurance', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:21', '2021-05-13 20:13:21', 0, '0', 1),
(131, '[:en]Drink[:vi][:ja][:]', 'drink', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:26', '2021-05-13 20:13:26', 0, '0', 1),
(132, '[:en]Tickets[:vi][:ja][:]', 'tickets', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:33', '2021-05-13 20:13:33', 0, '0', 1),
(133, '[:en]Bus fare[:vi][:ja][:]', 'bus-fare', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:41', '2021-05-13 20:13:41', 0, '0', 1),
(134, '[:en]Food & drinks[:vi][:ja][:]', 'food-drinks', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:47', '2021-05-13 20:13:47', 0, '0', 1),
(135, '[:en]Fuel surcharge[:vi][:ja][:]', 'fuel-surcharge', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:13:54', '2021-05-13 20:13:54', 0, '0', 1),
(136, '[:en]Wifi[:vi][:ja][:]', 'wifi', '[:en][:vi][:ja][:]', NULL, NULL, NULL, 18, '2021-05-13 20:14:00', '2021-05-13 20:14:00', 0, '0', 1),
(137, '[:en]Nail[:vi][:ja][:]', 'nail', '[:en][:vi][:ja][:]', NULL, '200', NULL, 12, '2021-05-25 02:16:20', '2021-05-25 02:16:20', 0, '0', 1),
(138, '[:en]Waxing[:vi]Haircuts[:ja]Haircuts[:]', 'waxing', '[:en][:vi][:ja][:]', NULL, '209', NULL, 12, '2021-05-25 02:16:55', '2021-05-25 20:38:47', 0, '0', 1),
(139, '[:en]Makeup[:vi]Eyelash extensions[:ja]Eyelash extensions[:]', 'makeup', '[:en][:vi][:ja][:]', NULL, '210', NULL, 12, '2021-05-25 02:17:16', '2021-05-25 20:40:39', 0, '0', 1),
(140, '[:en]Massage[:vi][:ja][:]', 'massage', '[:en][:vi][:ja][:]', NULL, '203', NULL, 12, '2021-05-25 02:17:29', '2021-05-25 02:17:29', 0, '0', 1),
(141, '[:en]Hair Stylist[:vi]Dyeing hair[:ja]Dyeing hair[:]', 'hair-stylist', '[:en][:vi][:ja][:]', NULL, '201', NULL, 12, '2021-05-25 02:17:43', '2021-05-25 20:36:19', 0, '0', 1),
(142, '[:en]Tattoo[:vi][:ja][:]', 'tattoo', '[:en][:vi][:ja][:]', NULL, '202', NULL, 12, '2021-05-25 02:17:54', '2021-05-25 02:17:54', 0, '0', 1),
(143, '[:en]Manhattan Nails Salon[:vi][:ja][:]', 'manhattan-nails-salon', '[:en]128 W 36th St 3rd floor, New York, NY 10018, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:22:53', '2021-05-25 20:22:53', 0, '{\"zoom\":\"13\",\"lat\":\"40.751522\",\"lng\":\"-73.988319\"}', 1),
(144, '[:en]New York Nails & Spa[:vi][:ja][:]', 'new-york-nails-spa', '[:en]145 W 55th St, New York, NY 10019, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:23:32', '2021-05-25 20:23:32', 0, '{\"zoom\":\"12.019113150257986\",\"lat\":\"40.763938\",\"lng\":\"-73.980055\"}', 1),
(145, '[:en]Art Up Nail Studio NYC[:vi][:ja][:]', 'art-up-nail-studio-nyc', '[:en]222 E 34th St Studio 24, New York, NY 10016, United States[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:24:23', '2021-05-25 20:24:23', 0, '{\"zoom\":\"13\",\"lat\":\"40.74492\",\"lng\":\"-73.97697\"}', 1),
(146, '[:en]Dyanna Spa & Waxing Center NYC[:vi][:ja][:]', 'dyanna-spa-waxing-center-nyc', '[:en]42 E 21st St, New York, NY 10010, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:25:47', '2021-05-25 20:25:47', 0, '{\"zoom\":\"13\",\"lat\":\"40.739152\",\"lng\":\"-73.988298\"}', 1),
(147, '[:en]Salon X[:vi][:ja][:]', 'salon-x', '[:en]228 7th St, Jersey City, NJ 07302, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:26:47', '2021-05-25 20:26:47', 0, '{\"zoom\":\"5.651696435989416\",\"lat\":\"40.726248\",\"lng\":\"-74.043751\"}', 1),
(148, '[:en]Massage Envy[:vi][:ja][:]', 'massage-envy', '[:en]389 Washington St, Jersey City, NJ 07302, Hoa Kỳ[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:27:40', '2021-05-25 20:27:40', 0, '{\"zoom\":\"11.999923335797707\",\"lat\":\"40.721574\",\"lng\":\"-74.036851\"}', 1),
(149, '[:en]Fleur Noire Tattoo[:vi][:ja][:]', 'fleur-noire-tattoo', '[:en]439 Metropolitan Ave, Brooklyn, NY 11211, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:29:02', '2021-05-25 20:29:02', 0, '{\"zoom\":\"12.828020072084037\",\"lat\":\"40.714212\",\"lng\":\"-73.953978\"}', 1),
(150, '[:en]Mischief Tattoo[:vi][:ja][:]', 'mischief-tattoo', '[:en]329 6th Ave, New York, NY 10014, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:29:45', '2021-05-25 20:29:45', 0, '{\"zoom\":\"12.801524430368724\",\"lat\":\"40.731328\",\"lng\":\"-74.001458\"}', 1),
(151, '[:en]My Makeup Artist Victoria[:vi][:ja][:]', 'my-makeup-artist-victoria', '[:en]151 Park Ave, Rutherford, NJ 07070, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:34:00', '2021-05-25 20:34:00', 0, '{\"zoom\":\"10.896525966953128\",\"lat\":\"40.825221\",\"lng\":\"-74.10898\"}', 1),
(152, '[:en]Makeup Artist & Hair Stylist[:vi][:ja][:]', 'makeup-artist-hair-stylist', '[:en]3043 Bainbridge Dr, Lansdale, PA 19446, USA[:vi][:ja][:]', NULL, NULL, NULL, 13, '2021-05-25 20:37:11', '2021-05-25 20:37:11', 0, '{\"zoom\":\"13\",\"lat\":\"40.263881\",\"lng\":\"-75.32783\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_term_relation`
--

CREATE TABLE `gmz_term_relation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_term_relation`
--

INSERT INTO `gmz_term_relation` (`id`, `term_id`, `post_id`, `post_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 14, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(14, 15, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(15, 16, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(16, 17, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(17, 18, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(18, 19, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(19, 20, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(20, 21, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(21, 22, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(22, 23, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(23, 24, 7, 'car', '2021-01-30 08:07:05', '2021-01-30 08:07:05', NULL),
(26, 14, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(27, 15, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(28, 16, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(29, 17, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(30, 18, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(31, 19, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(32, 20, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(33, 21, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(34, 22, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(35, 23, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(36, 24, 8, 'car', '2021-01-30 08:18:54', '2021-01-30 08:18:54', NULL),
(38, 14, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(39, 15, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(40, 16, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(41, 17, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(42, 18, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(43, 19, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(44, 20, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(45, 21, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(46, 22, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(47, 23, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(48, 24, 9, 'car', '2021-01-30 08:22:08', '2021-01-30 08:22:08', NULL),
(49, 9, 10, 'car', '2021-01-30 08:25:32', '2021-01-30 08:25:32', NULL),
(50, 14, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(51, 15, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(52, 16, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(53, 17, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(54, 18, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(55, 19, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(56, 20, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(57, 21, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(58, 22, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(59, 23, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(60, 24, 10, 'car', '2021-01-30 08:25:59', '2021-01-30 08:25:59', NULL),
(61, 8, 11, 'car', '2021-01-30 08:27:52', '2021-01-30 08:27:52', NULL),
(62, 14, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(63, 15, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(64, 16, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(65, 17, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(66, 18, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(67, 19, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(68, 20, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(69, 21, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(70, 22, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(71, 23, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(72, 24, 11, 'car', '2021-01-30 08:28:22', '2021-01-30 08:28:22', NULL),
(74, 14, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(75, 15, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(76, 16, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(77, 17, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(78, 18, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(79, 19, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(80, 20, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(81, 21, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(82, 22, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(83, 23, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(84, 24, 12, 'car', '2021-01-30 08:32:18', '2021-01-30 08:32:18', NULL),
(86, 14, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(87, 15, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(88, 16, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(89, 17, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(90, 18, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(91, 19, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(92, 20, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(93, 21, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(94, 22, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(95, 23, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(96, 24, 13, 'car', '2021-01-30 08:34:27', '2021-01-30 08:34:27', NULL),
(97, 6, 14, 'car', '2021-01-30 08:36:48', '2021-01-30 08:36:48', NULL),
(98, 14, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(99, 15, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(100, 16, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(101, 17, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(102, 18, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(103, 19, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(104, 20, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(105, 21, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(106, 22, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(107, 23, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(108, 24, 14, 'car', '2021-01-30 08:37:31', '2021-01-30 08:37:31', NULL),
(109, 7, 15, 'car', '2021-01-30 08:39:32', '2021-01-30 08:39:32', NULL),
(110, 14, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(111, 15, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(112, 16, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(113, 17, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(114, 18, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(115, 19, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(116, 20, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(117, 21, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(118, 22, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(119, 23, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(120, 24, 15, 'car', '2021-01-30 08:39:48', '2021-01-30 08:39:48', NULL),
(122, 14, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(123, 15, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(124, 16, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(125, 17, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(126, 18, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(127, 19, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(128, 20, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(129, 21, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(130, 22, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(131, 23, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(132, 24, 16, 'car', '2021-01-30 08:41:27', '2021-01-30 08:41:27', NULL),
(133, 8, 16, 'car', '2021-01-30 08:42:21', '2021-01-30 08:42:21', NULL),
(148, 14, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(149, 15, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(150, 16, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(151, 17, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(152, 18, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(153, 19, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(154, 20, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(155, 21, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(156, 22, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(157, 23, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(158, 24, 18, 'car', '2021-01-30 08:46:08', '2021-01-30 08:46:08', NULL),
(160, 14, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(161, 15, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(162, 16, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(163, 17, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(164, 18, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(165, 19, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(166, 20, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(167, 21, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(168, 22, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(169, 23, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(170, 24, 19, 'car', '2021-01-30 08:49:40', '2021-01-30 08:49:40', NULL),
(172, 14, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(173, 15, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(174, 16, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(175, 17, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(176, 18, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(177, 19, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(178, 20, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(179, 21, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(180, 22, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(181, 23, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(182, 24, 20, 'car', '2021-01-30 08:51:43', '2021-01-30 08:51:43', NULL),
(184, 31, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(185, 32, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(186, 33, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(187, 34, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(188, 35, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(189, 36, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(190, 37, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(191, 38, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(192, 39, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(193, 40, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(194, 41, 3, 'apartment', '2021-01-30 09:12:08', '2021-01-30 09:12:08', NULL),
(195, 25, 3, 'apartment', '2021-01-30 09:13:21', '2021-01-30 09:13:21', NULL),
(196, 26, 4, 'apartment', '2021-01-30 09:14:22', '2021-01-30 09:14:22', NULL),
(197, 31, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(198, 32, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(199, 33, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(200, 34, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(201, 35, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(202, 36, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(203, 37, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(204, 38, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(205, 39, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(206, 40, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(207, 41, 4, 'apartment', '2021-01-30 09:14:56', '2021-01-30 09:14:56', NULL),
(208, 27, 5, 'apartment', '2021-01-30 09:16:21', '2021-01-30 09:16:21', NULL),
(209, 31, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(210, 32, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(211, 33, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(212, 34, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(213, 35, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(214, 36, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(215, 37, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(216, 38, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(217, 39, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(218, 40, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(219, 41, 5, 'apartment', '2021-01-30 09:16:50', '2021-01-30 09:16:50', NULL),
(244, 25, 6, 'apartment', '2021-01-30 21:11:42', '2021-01-30 21:11:42', NULL),
(245, 31, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(246, 32, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(247, 33, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(248, 34, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(249, 35, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(250, 36, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(251, 37, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(252, 38, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(253, 39, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(254, 40, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(255, 41, 6, 'apartment', '2021-01-30 21:12:25', '2021-01-30 21:12:25', NULL),
(256, 26, 8, 'apartment', '2021-01-31 07:21:47', '2021-01-31 07:21:47', NULL),
(257, 31, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(258, 32, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(259, 33, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(260, 34, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(261, 35, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(262, 36, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(263, 37, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(264, 38, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(265, 39, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(266, 40, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(267, 41, 8, 'apartment', '2021-01-31 07:22:33', '2021-01-31 07:22:33', NULL),
(268, 27, 9, 'apartment', '2021-01-31 07:25:38', '2021-01-31 07:25:38', NULL),
(269, 31, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(270, 32, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(271, 33, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(272, 34, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(273, 35, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(274, 36, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(275, 37, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(276, 38, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(277, 39, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(278, 40, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(279, 41, 9, 'apartment', '2021-01-31 07:26:06', '2021-01-31 07:26:06', NULL),
(280, 28, 10, 'apartment', '2021-01-31 07:27:59', '2021-01-31 07:27:59', NULL),
(281, 31, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(282, 32, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(283, 33, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(284, 34, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(285, 35, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(286, 36, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(287, 37, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(288, 38, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(289, 39, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(290, 40, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(291, 41, 10, 'apartment', '2021-01-31 07:28:33', '2021-01-31 07:28:33', NULL),
(292, 29, 11, 'apartment', '2021-01-31 07:30:03', '2021-01-31 07:30:03', NULL),
(293, 31, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(294, 32, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(295, 33, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(296, 34, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(297, 35, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(298, 36, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(299, 37, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(300, 38, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(301, 39, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(302, 40, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(303, 41, 11, 'apartment', '2021-01-31 07:30:38', '2021-01-31 07:30:38', NULL),
(304, 30, 12, 'apartment', '2021-01-31 07:32:04', '2021-01-31 07:32:04', NULL),
(305, 31, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(306, 32, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(307, 33, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(308, 34, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(309, 35, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(310, 36, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(311, 37, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(312, 38, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(313, 39, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(314, 40, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(315, 41, 12, 'apartment', '2021-01-31 07:32:35', '2021-01-31 07:32:35', NULL),
(316, 25, 13, 'apartment', '2021-01-31 07:34:14', '2021-01-31 07:34:14', NULL),
(328, 31, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(329, 32, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(330, 33, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(331, 34, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(332, 35, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(333, 36, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(334, 37, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(335, 38, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(336, 39, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(337, 40, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(338, 41, 13, 'apartment', '2021-01-31 07:34:52', '2021-01-31 07:34:52', NULL),
(339, 26, 14, 'apartment', '2021-01-31 07:36:14', '2021-01-31 07:36:14', NULL),
(340, 31, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(341, 32, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(342, 33, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(343, 34, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(344, 35, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(345, 36, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(346, 37, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(347, 38, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(348, 39, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(349, 40, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(350, 41, 14, 'apartment', '2021-01-31 07:36:39', '2021-01-31 07:36:39', NULL),
(368, 4, 7, 'car', '2021-02-15 06:26:09', '2021-02-15 06:26:09', NULL),
(372, 44, 12, 'post', '2021-03-11 18:33:47', '2021-03-11 18:33:47', NULL),
(373, 53, 12, 'post', '2021-03-11 18:33:47', '2021-03-11 18:33:47', NULL),
(374, 54, 12, 'post', '2021-03-11 18:33:47', '2021-03-11 18:33:47', NULL),
(375, 49, 11, 'post', '2021-03-11 18:33:55', '2021-03-11 18:33:55', NULL),
(376, 52, 11, 'post', '2021-03-11 18:33:55', '2021-03-11 18:33:55', NULL),
(377, 42, 10, 'post', '2021-03-11 18:34:02', '2021-03-11 18:34:02', NULL),
(378, 49, 10, 'post', '2021-03-11 18:34:02', '2021-03-11 18:34:02', NULL),
(379, 45, 9, 'post', '2021-03-11 18:34:09', '2021-03-11 18:34:09', NULL),
(380, 53, 9, 'post', '2021-03-11 18:34:09', '2021-03-11 18:34:09', NULL),
(381, 43, 7, 'post', '2021-03-11 18:34:16', '2021-03-11 18:34:16', NULL),
(382, 52, 7, 'post', '2021-03-11 18:34:16', '2021-03-11 18:34:16', NULL),
(383, 42, 6, 'post', '2021-03-11 18:34:23', '2021-03-11 18:34:23', NULL),
(384, 49, 6, 'post', '2021-03-11 18:34:23', '2021-03-11 18:34:23', NULL),
(385, 50, 6, 'post', '2021-03-11 18:34:23', '2021-03-11 18:34:23', NULL),
(386, 51, 6, 'post', '2021-03-11 18:34:23', '2021-03-11 18:34:23', NULL),
(387, 47, 5, 'post', '2021-03-11 18:34:30', '2021-03-11 18:34:30', NULL),
(388, 48, 5, 'post', '2021-03-11 18:34:30', '2021-03-11 18:34:30', NULL),
(389, 45, 13, 'post', '2021-03-11 18:36:03', '2021-03-11 18:36:03', NULL),
(390, 53, 13, 'post', '2021-03-11 18:36:03', '2021-03-11 18:36:03', NULL),
(391, 55, 13, 'post', '2021-03-11 18:36:03', '2021-03-11 18:36:03', NULL),
(392, 13, 20, 'car', '2021-03-16 18:12:26', '2021-03-16 18:12:26', NULL),
(393, 12, 19, 'car', '2021-03-16 18:13:34', '2021-03-16 18:13:34', NULL),
(394, 10, 18, 'car', '2021-03-16 18:14:14', '2021-03-16 18:14:14', NULL),
(396, 19, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(397, 18, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(398, 17, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(399, 16, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(400, 15, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(401, 14, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(402, 24, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(403, 23, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(404, 22, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(405, 21, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(406, 20, 17, 'car', '2021-03-16 18:16:38', '2021-03-16 18:16:38', NULL),
(407, 9, 17, 'car', '2021-03-16 18:17:23', '2021-03-16 18:17:23', NULL),
(408, 5, 13, 'car', '2021-03-16 18:19:04', '2021-03-16 18:19:04', NULL),
(409, 4, 12, 'car', '2021-03-16 18:20:46', '2021-03-16 18:20:46', NULL),
(410, 7, 8, 'car', '2021-03-16 18:21:20', '2021-03-16 18:21:20', NULL),
(411, 7, 9, 'car', '2021-03-16 18:22:03', '2021-03-16 18:22:03', NULL),
(413, 76, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(414, 75, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(415, 74, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(416, 73, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(417, 72, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(418, 71, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(419, 69, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(420, 85, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(421, 84, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(422, 83, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(423, 82, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(424, 81, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(425, 80, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(426, 79, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(427, 78, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(428, 77, 3, 'hotel', '2021-03-24 19:45:57', '2021-03-24 19:45:57', NULL),
(429, 67, 4, 'hotel', '2021-03-24 19:54:05', '2021-03-24 19:54:05', NULL),
(430, 76, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(431, 75, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(432, 74, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(433, 73, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(434, 72, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(435, 71, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(436, 69, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(437, 85, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(438, 84, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(439, 83, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(440, 82, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(441, 81, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(442, 80, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(443, 79, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(444, 78, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(445, 77, 4, 'hotel', '2021-03-24 19:56:27', '2021-03-24 19:56:27', NULL),
(446, 66, 5, 'hotel', '2021-03-24 19:59:22', '2021-03-24 19:59:22', NULL),
(447, 76, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(448, 75, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(449, 74, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(450, 73, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(451, 72, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(452, 71, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(453, 69, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(454, 85, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(455, 84, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(456, 83, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(457, 82, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(458, 81, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(459, 80, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(460, 79, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(461, 78, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(462, 77, 5, 'hotel', '2021-03-24 20:03:29', '2021-03-24 20:03:29', NULL),
(480, 97, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(481, 96, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(482, 95, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(483, 94, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(484, 93, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(485, 92, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(486, 91, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(487, 90, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(488, 89, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(489, 88, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(490, 87, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(491, 86, 2, 'car', '2021-03-24 20:52:50', '2021-03-24 20:52:50', NULL),
(492, 97, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(493, 96, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(494, 94, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(495, 93, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(496, 91, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(497, 90, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(498, 88, 3, 'car', '2021-03-24 20:54:28', '2021-03-24 20:54:28', NULL),
(499, 97, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(500, 95, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(501, 94, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(502, 92, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(503, 91, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(504, 89, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(505, 88, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(506, 86, 4, 'car', '2021-03-24 20:56:42', '2021-03-24 20:56:42', NULL),
(507, 95, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(508, 94, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(509, 93, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(510, 92, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(511, 91, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(512, 90, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(513, 88, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(514, 87, 5, 'car', '2021-03-24 20:57:42', '2021-03-24 20:57:42', NULL),
(515, 97, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(516, 96, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(517, 95, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(518, 94, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(519, 93, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(520, 92, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(521, 90, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(522, 87, 6, 'car', '2021-03-24 20:58:37', '2021-03-24 20:58:37', NULL),
(523, 68, 3, 'hotel', '2021-03-24 20:59:38', '2021-03-24 20:59:38', NULL),
(524, 97, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(525, 95, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(526, 94, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(527, 92, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(528, 91, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(529, 90, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(530, 88, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(531, 87, 7, 'car', '2021-03-24 21:01:59', '2021-03-24 21:01:59', NULL),
(532, 97, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(533, 94, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(534, 93, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(535, 91, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(536, 90, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(537, 89, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(538, 87, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(539, 86, 8, 'car', '2021-03-24 21:07:22', '2021-03-24 21:07:22', NULL),
(540, 97, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(541, 96, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(542, 94, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(543, 93, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(544, 91, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(545, 90, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(546, 89, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(547, 88, 9, 'car', '2021-03-24 21:08:49', '2021-03-24 21:08:49', NULL),
(548, 97, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(549, 96, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(550, 94, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(551, 92, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(552, 91, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(553, 90, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(554, 87, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(555, 86, 1, 'car', '2021-03-24 21:09:59', '2021-03-24 21:09:59', NULL),
(556, 97, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(557, 96, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(558, 95, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(559, 94, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(560, 93, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(561, 92, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(562, 91, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(563, 90, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(564, 89, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(565, 88, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(566, 87, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(567, 86, 11, 'car', '2021-03-24 21:11:18', '2021-03-24 21:11:18', NULL),
(568, 97, 12, 'car', '2021-03-24 21:13:35', '2021-03-24 21:13:35', NULL),
(569, 96, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(570, 95, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(571, 94, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(572, 93, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(573, 92, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(574, 91, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(575, 90, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(576, 89, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(577, 88, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(578, 87, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(579, 86, 12, 'car', '2021-03-24 21:13:36', '2021-03-24 21:13:36', NULL),
(580, 63, 7, 'hotel', '2021-03-24 21:20:16', '2021-03-24 21:20:16', NULL),
(581, 76, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(582, 75, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(583, 74, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(584, 73, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(585, 72, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(586, 71, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(587, 69, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(588, 85, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(589, 84, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(590, 83, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(591, 82, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(592, 81, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(593, 80, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(594, 79, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(595, 78, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(596, 77, 7, 'hotel', '2021-03-24 21:24:56', '2021-03-24 21:24:56', NULL),
(597, 97, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(598, 96, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(599, 94, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(600, 93, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(601, 91, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(602, 90, 13, 'car', '2021-03-24 21:26:36', '2021-03-24 21:26:36', NULL),
(603, 97, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(604, 96, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(605, 95, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(606, 94, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(607, 93, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(608, 90, 14, 'car', '2021-03-24 21:27:24', '2021-03-24 21:27:24', NULL),
(609, 97, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(610, 96, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(611, 94, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(612, 93, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(613, 89, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(614, 86, 15, 'car', '2021-03-24 21:28:27', '2021-03-24 21:28:27', NULL),
(616, 68, 9, 'hotel', '2021-03-24 23:29:37', '2021-03-24 23:29:37', NULL),
(617, 76, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(618, 75, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(619, 74, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(620, 73, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(621, 72, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(622, 71, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(623, 69, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(624, 85, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(625, 84, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(626, 83, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(627, 82, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(628, 81, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(629, 80, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(630, 79, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(631, 78, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(632, 77, 9, 'hotel', '2021-03-24 23:33:23', '2021-03-24 23:33:23', NULL),
(633, 97, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(634, 96, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(635, 95, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(636, 94, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(637, 93, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(638, 92, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(639, 91, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(640, 90, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(641, 89, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(642, 88, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(643, 87, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(644, 86, 16, 'car', '2021-03-24 23:34:35', '2021-03-24 23:34:35', NULL),
(645, 97, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(646, 96, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(647, 94, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(648, 93, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(649, 91, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(650, 90, 17, 'car', '2021-03-24 23:35:38', '2021-03-24 23:35:38', NULL),
(651, 97, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(652, 96, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(653, 95, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(654, 94, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(655, 93, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(656, 92, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(657, 91, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(658, 90, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(659, 89, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(660, 88, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(661, 87, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(662, 86, 18, 'car', '2021-03-24 23:36:36', '2021-03-24 23:36:36', NULL),
(663, 67, 10, 'hotel', '2021-03-24 23:38:13', '2021-03-24 23:38:13', NULL),
(664, 76, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(665, 75, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(666, 74, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(667, 73, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(668, 72, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(669, 71, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(670, 69, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(671, 85, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(672, 84, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(673, 83, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(674, 82, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(675, 81, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(676, 80, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(677, 79, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(678, 78, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(679, 77, 10, 'hotel', '2021-03-24 23:41:24', '2021-03-24 23:41:24', NULL),
(680, 97, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(681, 96, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(682, 95, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(683, 94, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(684, 93, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(685, 92, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(686, 91, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(687, 90, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(688, 89, 19, 'car', '2021-03-24 23:51:07', '2021-03-24 23:51:07', NULL),
(689, 97, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(690, 96, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(691, 95, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(692, 94, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(693, 93, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(694, 92, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(695, 91, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(696, 90, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(697, 89, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(698, 88, 20, 'car', '2021-03-24 23:51:54', '2021-03-24 23:51:54', NULL),
(699, 97, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(700, 95, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(701, 94, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(702, 92, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(703, 90, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(704, 87, 21, 'car', '2021-03-24 23:52:36', '2021-03-24 23:52:36', NULL),
(705, 97, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(706, 94, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(707, 93, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(708, 90, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(709, 89, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(710, 86, 22, 'car', '2021-03-24 23:53:21', '2021-03-24 23:53:21', NULL),
(711, 67, 11, 'hotel', '2021-03-24 23:54:30', '2021-03-24 23:54:30', NULL),
(712, 76, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(713, 75, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(714, 74, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(715, 73, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(716, 72, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(717, 71, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(718, 69, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(719, 85, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(720, 84, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(721, 83, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(722, 82, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(723, 81, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(724, 80, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(725, 79, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(726, 78, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(727, 77, 11, 'hotel', '2021-03-24 23:56:27', '2021-03-24 23:56:27', NULL),
(728, 97, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(729, 94, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(730, 93, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(731, 91, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(732, 90, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(733, 89, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(734, 88, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(735, 87, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(736, 86, 23, 'car', '2021-03-24 23:57:38', '2021-03-24 23:57:38', NULL),
(737, 97, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(738, 94, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(739, 92, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(740, 90, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(741, 89, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(742, 87, 24, 'car', '2021-03-24 23:58:26', '2021-03-24 23:58:26', NULL),
(743, 96, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(744, 94, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(745, 92, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(746, 91, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(747, 89, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(748, 87, 25, 'car', '2021-03-24 23:59:08', '2021-03-24 23:59:08', NULL),
(749, 63, 12, 'hotel', '2021-03-25 00:00:34', '2021-03-25 00:00:34', NULL),
(750, 76, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(751, 75, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(752, 74, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(753, 73, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(754, 72, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(755, 71, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(756, 69, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(757, 85, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(758, 84, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(759, 83, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(760, 82, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(761, 81, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(762, 80, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(763, 79, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(764, 78, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(765, 77, 12, 'hotel', '2021-03-25 00:02:36', '2021-03-25 00:02:36', NULL),
(766, 97, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(767, 96, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(768, 94, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(769, 93, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(770, 91, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(771, 88, 26, 'car', '2021-03-25 00:03:45', '2021-03-25 00:03:45', NULL),
(772, 94, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(773, 91, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(774, 90, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(775, 89, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(776, 87, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(777, 86, 27, 'car', '2021-03-25 00:04:20', '2021-03-25 00:04:20', NULL),
(778, 97, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(779, 96, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(780, 95, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(781, 94, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(782, 93, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(783, 92, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(784, 91, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(785, 90, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(786, 89, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(787, 88, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(788, 87, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(789, 86, 28, 'car', '2021-03-25 00:05:03', '2021-03-25 00:05:03', NULL),
(791, 65, 6, 'hotel', '2021-03-25 01:58:15', '2021-03-25 01:58:15', NULL),
(792, 76, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(793, 75, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL);
INSERT INTO `gmz_term_relation` (`id`, `term_id`, `post_id`, `post_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(794, 74, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(795, 73, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(796, 72, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(797, 71, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(798, 69, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(799, 85, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(800, 84, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(801, 83, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(802, 82, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(803, 81, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(804, 80, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(805, 79, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(806, 78, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(807, 77, 6, 'hotel', '2021-03-25 01:59:26', '2021-03-25 01:59:26', NULL),
(808, 103, 12, 'space', '2021-03-29 02:59:33', '2021-03-29 02:59:33', NULL),
(809, 114, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(810, 113, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(811, 112, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(812, 111, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(813, 110, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(814, 109, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(815, 108, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(816, 107, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(817, 106, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(818, 105, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(819, 104, 12, 'space', '2021-03-29 02:59:51', '2021-03-29 02:59:51', NULL),
(820, 102, 11, 'space', '2021-03-29 03:00:06', '2021-03-29 03:00:06', NULL),
(821, 114, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(822, 113, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(823, 112, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(824, 111, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(825, 110, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(826, 109, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(827, 108, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(828, 107, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(829, 106, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(830, 105, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(831, 104, 11, 'space', '2021-03-29 03:00:33', '2021-03-29 03:00:33', NULL),
(833, 101, 10, 'space', '2021-03-29 03:00:48', '2021-03-29 03:00:48', NULL),
(834, 114, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(835, 113, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(836, 112, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(837, 111, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(838, 110, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(839, 109, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(840, 108, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(841, 107, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(842, 106, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(843, 105, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(844, 104, 10, 'space', '2021-03-29 03:01:00', '2021-03-29 03:01:00', NULL),
(846, 100, 9, 'space', '2021-03-29 03:01:36', '2021-03-29 03:01:36', NULL),
(847, 114, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(848, 113, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(849, 112, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(850, 111, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(851, 110, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(852, 109, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(853, 108, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(854, 107, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(855, 106, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(856, 105, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(857, 104, 9, 'space', '2021-03-29 03:01:46', '2021-03-29 03:01:46', NULL),
(858, 99, 8, 'space', '2021-03-29 03:02:06', '2021-03-29 03:02:06', NULL),
(859, 114, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(860, 113, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(861, 112, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(862, 111, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(863, 110, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(864, 109, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(865, 108, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(866, 107, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(867, 106, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(868, 105, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(869, 104, 8, 'space', '2021-03-29 03:02:16', '2021-03-29 03:02:16', NULL),
(870, 98, 6, 'space', '2021-03-29 03:02:34', '2021-03-29 03:02:34', NULL),
(871, 114, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(872, 113, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(873, 112, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(874, 111, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(875, 110, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(876, 109, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(877, 108, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(878, 107, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(879, 106, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(880, 105, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(881, 104, 6, 'space', '2021-03-29 03:02:47', '2021-03-29 03:02:47', NULL),
(882, 103, 5, 'space', '2021-03-29 03:02:55', '2021-03-29 03:02:55', NULL),
(883, 114, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(884, 113, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(885, 112, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(886, 111, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(887, 110, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(888, 109, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(889, 108, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(890, 107, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(891, 106, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(892, 105, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(893, 104, 5, 'space', '2021-03-29 03:03:05', '2021-03-29 03:03:05', NULL),
(894, 102, 4, 'space', '2021-03-29 03:03:17', '2021-03-29 03:03:17', NULL),
(895, 114, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(896, 113, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(897, 112, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(898, 111, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(899, 110, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(900, 109, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(901, 108, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(902, 107, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(903, 106, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(904, 105, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(905, 104, 4, 'space', '2021-03-29 03:03:26', '2021-03-29 03:03:26', NULL),
(906, 101, 3, 'space', '2021-03-29 03:03:35', '2021-03-29 03:03:35', NULL),
(907, 114, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(908, 113, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(909, 112, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(910, 111, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(911, 110, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(912, 109, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(913, 108, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(914, 107, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(915, 106, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(916, 105, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(917, 104, 3, 'space', '2021-03-29 03:03:44', '2021-03-29 03:03:44', NULL),
(931, 114, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(932, 113, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(933, 112, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(934, 111, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(935, 110, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(936, 109, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(937, 108, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(938, 107, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(939, 106, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(940, 105, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(941, 104, 13, 'space', '2021-03-29 03:04:29', '2021-03-29 03:04:29', NULL),
(942, 99, 13, 'space', '2021-03-29 03:11:41', '2021-03-29 03:11:41', NULL),
(945, 120, 1, 'tour', '2021-05-13 20:46:35', '2021-05-13 20:46:35', NULL),
(946, 128, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(947, 127, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(948, 125, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(949, 124, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(950, 122, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(951, 121, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(952, 136, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(953, 135, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(954, 133, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(955, 132, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(956, 130, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(957, 129, 1, 'tour', '2021-05-13 20:48:54', '2021-05-13 20:48:54', NULL),
(959, 127, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(960, 126, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(961, 124, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(962, 123, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(963, 122, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(964, 121, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(965, 136, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(966, 135, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(967, 134, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(968, 132, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(969, 131, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(970, 129, 2, 'tour', '2021-05-13 20:54:42', '2021-05-13 20:54:42', NULL),
(972, 119, 2, 'tour', '2021-05-13 20:56:35', '2021-05-13 20:56:35', NULL),
(987, 128, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(988, 126, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(989, 125, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(990, 124, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(991, 123, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(992, 121, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(993, 136, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(994, 134, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(995, 133, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(996, 132, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(997, 131, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(998, 129, 4, 'tour', '2021-05-13 21:09:22', '2021-05-13 21:09:22', NULL),
(999, 117, 4, 'tour', '2021-05-13 21:10:47', '2021-05-13 21:10:47', NULL),
(1001, 128, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1002, 125, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1003, 124, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1004, 122, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1005, 121, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1006, 136, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1007, 134, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1008, 133, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1009, 131, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1010, 130, 5, 'tour', '2021-05-13 21:19:18', '2021-05-13 21:19:18', NULL),
(1011, 115, 6, 'tour', '2021-05-13 21:24:59', '2021-05-13 21:24:59', NULL),
(1012, 128, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1013, 127, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1014, 125, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1015, 124, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1016, 122, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1017, 121, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1018, 136, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1019, 134, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1020, 133, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1021, 132, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1022, 131, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1023, 129, 6, 'tour', '2021-05-13 21:26:42', '2021-05-13 21:26:42', NULL),
(1024, 120, 7, 'tour', '2021-05-13 23:25:24', '2021-05-13 23:25:24', NULL),
(1025, 128, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1026, 127, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1027, 125, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1028, 124, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1029, 122, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1030, 121, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1031, 135, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1032, 134, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1033, 132, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1034, 131, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1035, 129, 7, 'tour', '2021-05-13 23:27:37', '2021-05-13 23:27:37', NULL),
(1036, 119, 8, 'tour', '2021-05-13 23:30:04', '2021-05-13 23:30:04', NULL),
(1037, 128, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1038, 127, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1039, 125, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1040, 124, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1041, 122, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1042, 121, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1043, 136, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1044, 135, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1045, 133, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1046, 132, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1047, 130, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1048, 129, 8, 'tour', '2021-05-13 23:31:51', '2021-05-13 23:31:51', NULL),
(1050, 128, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1051, 126, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1052, 125, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1053, 124, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1054, 123, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1055, 121, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1056, 136, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1057, 134, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1058, 133, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1059, 132, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1060, 131, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1061, 129, 9, 'tour', '2021-05-13 23:34:48', '2021-05-13 23:34:48', NULL),
(1072, 116, 5, 'tour', '2021-05-14 00:04:52', '2021-05-14 00:04:52', NULL),
(1073, 120, 9, 'tour', '2021-05-14 00:05:39', '2021-05-14 00:05:39', NULL),
(1075, 118, 3, 'tour', '2021-05-14 00:22:51', '2021-05-14 00:22:51', NULL),
(1076, 128, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1077, 127, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1078, 126, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1079, 125, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1080, 124, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1081, 123, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1082, 136, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1083, 135, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1084, 132, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1085, 131, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1086, 130, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1087, 129, 3, 'tour', '2021-05-14 00:26:06', '2021-05-14 00:26:06', NULL),
(1088, 142, 3, 'beauty', '2021-05-25 21:04:14', '2021-05-25 21:04:14', NULL),
(1089, 150, 3, 'beauty', '2021-05-25 21:04:14', '2021-05-25 21:04:14', NULL),
(1090, 142, 4, 'beauty', '2021-05-25 21:41:14', '2021-05-25 21:41:14', NULL),
(1091, 149, 4, 'beauty', '2021-05-25 21:41:14', '2021-05-25 21:41:14', NULL),
(1094, 141, 5, 'beauty', '2021-05-25 22:24:37', '2021-05-25 22:24:37', NULL),
(1095, 152, 5, 'beauty', '2021-05-25 22:24:37', '2021-05-25 22:24:37', NULL),
(1101, 141, 6, 'beauty', '2021-05-25 23:38:53', '2021-05-25 23:38:53', NULL),
(1102, 152, 6, 'beauty', '2021-05-25 23:38:53', '2021-05-25 23:38:53', NULL),
(1103, 141, 7, 'beauty', '2021-05-25 23:44:33', '2021-05-25 23:44:33', NULL),
(1104, 152, 7, 'beauty', '2021-05-25 23:44:33', '2021-05-25 23:44:33', NULL),
(1105, 141, 8, 'beauty', '2021-05-25 23:52:39', '2021-05-25 23:52:39', NULL),
(1106, 152, 8, 'beauty', '2021-05-25 23:52:39', '2021-05-25 23:52:39', NULL),
(1112, 97, 29, 'car', '2021-05-26 00:01:53', '2021-05-26 00:01:53', NULL),
(1113, 94, 29, 'car', '2021-05-26 00:01:53', '2021-05-26 00:01:53', NULL),
(1114, 91, 29, 'car', '2021-05-26 00:01:53', '2021-05-26 00:01:53', NULL),
(1115, 88, 29, 'car', '2021-05-26 00:01:53', '2021-05-26 00:01:53', NULL),
(1120, 140, 9, 'beauty', '2021-05-26 01:16:45', '2021-05-26 01:16:45', NULL),
(1121, 146, 9, 'beauty', '2021-05-26 01:16:45', '2021-05-26 01:16:45', NULL),
(1134, 140, 10, 'beauty', '2021-05-26 01:19:00', '2021-05-26 01:19:00', NULL),
(1135, 146, 10, 'beauty', '2021-05-26 01:19:00', '2021-05-26 01:19:00', NULL),
(1136, 139, 11, 'beauty', '2021-05-26 01:46:13', '2021-05-26 01:46:13', NULL),
(1137, 152, 11, 'beauty', '2021-05-26 01:46:13', '2021-05-26 01:46:13', NULL),
(1140, 138, 12, 'beauty', '2021-05-26 01:51:46', '2021-05-26 01:51:46', NULL),
(1141, 146, 12, 'beauty', '2021-05-26 01:51:46', '2021-05-26 01:51:46', NULL),
(1142, 100, 14, 'space', '2021-05-26 01:54:33', '2021-05-26 01:54:33', NULL),
(1143, 114, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1144, 113, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1145, 112, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1146, 111, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1147, 110, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1148, 109, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1149, 108, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1150, 107, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1151, 106, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1152, 105, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1153, 104, 14, 'space', '2021-05-26 01:56:20', '2021-05-26 01:56:20', NULL),
(1158, 137, 13, 'beauty', '2021-05-26 02:09:52', '2021-05-26 02:09:52', NULL),
(1159, 145, 13, 'beauty', '2021-05-26 02:09:52', '2021-05-26 02:09:52', NULL),
(1160, 116, 10, 'tour', '2021-05-26 02:38:53', '2021-05-26 02:38:53', NULL),
(1161, 128, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1162, 125, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1163, 124, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1164, 122, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1165, 136, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1166, 134, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1167, 133, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1168, 131, 10, 'tour', '2021-05-26 02:40:25', '2021-05-26 02:40:25', NULL),
(1169, 66, 13, 'hotel', '2023-06-25 13:45:07', '2023-06-25 13:45:07', NULL),
(1170, 118, 11, 'tour', '2023-06-25 13:48:24', '2023-06-25 13:48:24', NULL),
(1171, 120, 12, 'tour', '2023-06-26 04:47:21', '2023-06-26 04:47:21', NULL),
(1172, 128, 12, 'tour', '2023-06-26 04:48:44', '2023-06-26 04:48:44', NULL),
(1173, 125, 12, 'tour', '2023-06-26 04:48:44', '2023-06-26 04:48:44', NULL),
(1174, 122, 12, 'tour', '2023-06-26 04:48:44', '2023-06-26 04:48:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_tour`
--

CREATE TABLE `gmz_tour` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text NOT NULL,
  `post_slug` varchar(191) NOT NULL,
  `post_content` longtext DEFAULT NULL,
  `location_lat` double(10,6) DEFAULT 21.023985,
  `location_lng` double(10,6) DEFAULT 105.791488,
  `location_address` varchar(191) DEFAULT NULL,
  `location_zoom` varchar(191) DEFAULT '12',
  `location_state` varchar(191) DEFAULT NULL,
  `location_postcode` varchar(15) DEFAULT NULL,
  `location_country` varchar(50) DEFAULT NULL,
  `location_city` varchar(50) DEFAULT NULL,
  `thumbnail_id` varchar(191) DEFAULT NULL,
  `gallery` varchar(191) DEFAULT NULL,
  `adult_price` double(8,2) DEFAULT NULL,
  `children_price` double(8,2) DEFAULT NULL,
  `infant_price` double(8,2) DEFAULT NULL,
  `booking_form` varchar(20) DEFAULT 'instant',
  `group_size` int(11) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT 'date',
  `external_link` varchar(191) DEFAULT NULL,
  `extra_services` longtext DEFAULT NULL,
  `tour_type` varchar(191) DEFAULT NULL,
  `tour_include` varchar(191) DEFAULT NULL,
  `tour_exclude` varchar(191) DEFAULT NULL,
  `highlight` longtext DEFAULT NULL,
  `itinerary` longtext DEFAULT NULL,
  `faq` longtext DEFAULT NULL,
  `enable_cancellation` varchar(10) DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) DEFAULT '0',
  `video` varchar(191) DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `ical` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `package_start_date` varchar(191) DEFAULT NULL,
  `package_end_date` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_tour`
--

INSERT INTO `gmz_tour` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `adult_price`, `children_price`, `infant_price`, `booking_form`, `group_size`, `duration`, `booking_type`, `external_link`, `extra_services`, `tour_type`, `tour_include`, `tour_exclude`, `highlight`, `itinerary`, `faq`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `video`, `author`, `status`, `created_at`, `updated_at`, `post_description`, `ical`, `deleted_at`, `package_start_date`, `package_end_date`) VALUES
(1, '[:en]Two Hour Walking Tour of Manhattan[:vi]New tour 1620962049[:ja]New tour 1620962049[:]', 'two-hour-walking-tour-of-manhattan', '[:en]<p><span style=\"color: rgb(94, 109, 119);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span></p>[:vi][:ja][:]', 40.716700, -74.000000, '[:en]New York, United States[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '179', '182,181,180,179', 50.00, 30.00, 10.00, 'both', 10, '[:en]2 days[:vi][:ja][:]', 'date', '', '[]', '120', '128,127,125,124,122,121', '136,135,133,132,130,129', 'a:4:{i:1620964050181;a:2:{s:5:\"title\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";s:7:\"content\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";}i:16209640582671;a:2:{s:5:\"title\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";s:7:\"content\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";}i:1620964063534;a:2:{s:5:\"title\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";s:7:\"content\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";}i:16209640689299;a:2:{s:5:\"title\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";}}', 'a:3:{i:16209640732191;a:2:{s:5:\"title\";s:23:\"[:en]Day 1[:vi][:ja][:]\";s:7:\"content\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}i:16209640858841;a:2:{s:5:\"title\";s:23:\"[:en]Day 2[:vi][:ja][:]\";s:7:\"content\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}i:16209640945165;a:2:{s:5:\"title\";s:23:\"[:en]Day 3[:vi][:ja][:]\";s:7:\"content\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}}', 'a:3:{i:16209641048805;a:2:{s:8:\"question\";s:44:\"[:en]Latin professor at Hampden[:vi][:ja][:]\";s:6:\"answer\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}i:16209641105435;a:2:{s:8:\"question\";s:43:\"[:en]Lorem Ipsum is not simply[:vi][:ja][:]\";s:6:\"answer\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}i:16209641128577;a:2:{s:8:\"question\";s:44:\"[:en]Contrary to popular belief[:vi][:ja][:]\";s:6:\"answer\";s:446:\"[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]\";}}', 'on', 5, '[:en]Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 20:14:09', '2021-05-13 20:50:30', NULL, NULL, NULL, NULL, NULL),
(2, '[:en]Cooking in Local Villa Activity One Day[:vi]New tour 1620964294[:ja]New tour 1620964294[:]', 'cooking-class-in-local-villa', '[:en]<p>You can be a Valdivian artisan chocolate maker!</p><p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:vi]<p>You can be a Valdivian artisan chocolate maker!</p><p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:ja]<p>You can be a Valdivian artisan chocolate maker!</p><p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:]', 48.856580, 2.351830, '[:en]Paris, Franch[:vi]Paris, Franch[:ja]Paris, Franch[:]', '12', NULL, NULL, NULL, NULL, '185', '185,184,183', 100.00, 50.00, 30.00, 'both', 5, '[:en]1 day[:vi]1 day[:ja]1 day[:]', 'date', '', '[]', '119', '127,126,124,123,122,121', '136,135,134,132,131,129', 'a:3:{i:16209644008093;a:2:{s:5:\"title\";s:65:\"[:en]You can be a Valdivian artisan chocolate maker![:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}i:16209644238332;a:2:{s:5:\"title\";s:55:\"[:en]You will learn the process of melting[:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}i:16209644274522;a:2:{s:5:\"title\";s:49:\"[:en]We will prepare some chocolates[:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}}', 'a:4:{i:16209644432552;a:2:{s:5:\"title\";s:53:\"[:en]Quam nulla porttitor massa id neque[:vi][:ja][:]\";s:7:\"content\";s:438:\"[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus[:vi][:ja][:]\";}i:16209644566763;a:2:{s:5:\"title\";s:55:\"[:en]Eros in cursus turpis massa tincidunt[:vi][:ja][:]\";s:7:\"content\";s:438:\"[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus[:vi][:ja][:]\";}i:16209644584805;a:2:{s:5:\"title\";s:50:\"[:en]Dapibus ultrices in iaculis nunc[:vi][:ja][:]\";s:7:\"content\";s:438:\"[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus[:vi][:ja][:]\";}i:16209644603070;a:2:{s:5:\"title\";s:47:\"[:en]Lorem dolor sed viverra ipsum[:vi][:ja][:]\";s:7:\"content\";s:438:\"[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus[:vi][:ja][:]\";}}', '[]', 'on', 5, '[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 20:51:34', '2021-05-13 20:56:35', NULL, NULL, NULL, NULL, NULL),
(3, '[:en]American Parks Trail end Rapid City[:vi]New tour 1620964883[:ja]New tour 1620964883[:]', 'american-parks-trail-end-rapid-city', '[:en]<p><span style=\"color: rgb(94, 109, 119);\">Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.</span></p>[:vi]<p><span style=\"color: rgb(94, 109, 119);\">Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.</span></p>[:ja]<p><span style=\"color: rgb(94, 109, 119);\">Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.</span></p>[:]', 40.071120, -116.598822, '[:en]Nevada, American[:vi]Nevada, American[:ja]Nevada, American[:]', '12', NULL, NULL, NULL, NULL, '178', '187,186,178', 70.00, 60.00, 50.00, 'both', 6, '[:en]5 days[:vi]5 days[:ja]5 days[:]', 'date', '', 'a:5:{i:16209769753922;a:3:{s:5:\"title\";s:28:\"[:en]Car pickup[:vi][:ja][:]\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:3:\"off\";}i:16209770223775;a:3:{s:5:\"title\";s:30:\"[:en]Vietnam Visa[:vi][:ja][:]\";s:5:\"price\";s:2:\"50\";s:8:\"required\";s:2:\"on\";}i:16209770423322;a:3:{s:5:\"title\";s:22:\"[:en]Camp[:vi][:ja][:]\";s:5:\"price\";s:1:\"5\";s:8:\"required\";s:3:\"off\";}i:16209770667845;a:3:{s:5:\"title\";s:29:\"[:en]Transit car[:vi][:ja][:]\";s:5:\"price\";s:2:\"20\";s:8:\"required\";s:2:\"on\";}i:16209771012447;a:3:{s:5:\"title\";s:29:\"[:en]Other items[:vi][:ja][:]\";s:5:\"price\";s:1:\"3\";s:8:\"required\";s:3:\"off\";}}', '118', '128,127,126,125,124,123', '136,135,132,131,130,129', 'a:4:{i:16209649598874;a:2:{s:5:\"title\";s:147:\"[:en]Optional transportation from Waikiki hotels[:vi]Optional transportation from Waikiki hotels[:ja]Optional transportation from Waikiki hotels[:]\";s:7:\"content\";s:147:\"[:en]Optional transportation from Waikiki hotels[:vi]Optional transportation from Waikiki hotels[:ja]Optional transportation from Waikiki hotels[:]\";}i:16209649603603;a:2:{s:5:\"title\";s:219:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:ja]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:]\";s:7:\"content\";s:219:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:ja]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:]\";}i:16209649618884;a:2:{s:5:\"title\";s:210:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:ja]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:]\";s:7:\"content\";s:210:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:ja]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:]\";}i:16209649648465;a:2:{s:5:\"title\";s:168:\"[:en]Visit eight villages showcasing Polynesian culture[:vi]Visit eight villages showcasing Polynesian culture[:ja]Visit eight villages showcasing Polynesian culture[:]\";s:7:\"content\";s:168:\"[:en]Visit eight villages showcasing Polynesian culture[:vi]Visit eight villages showcasing Polynesian culture[:ja]Visit eight villages showcasing Polynesian culture[:]\";}}', 'a:3:{i:16209650093542;a:2:{s:5:\"title\";s:189:\"[:en]8:00 See the impressive LA grid from atop Mount Hollywood[:vi]8:00 See the impressive LA grid from atop Mount Hollywood[:ja]8:00 See the impressive LA grid from atop Mount Hollywood[:]\";s:7:\"content\";s:1017:\"[:en]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year.\r\nIn this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:vi]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year.\r\nIn this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:ja]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year.\r\nIn this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:]\";}i:16209650193379;a:2:{s:5:\"title\";s:171:\"[:en]10:00 Exercise and burn calories while you sightsee[:vi]10:00 Exercise and burn calories while you sightsee[:ja]10:00 Exercise and burn calories while you sightsee[:]\";s:7:\"content\";s:1014:\"[:en]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:vi]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:ja]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:]\";}i:16209650838282;a:2:{s:5:\"title\";s:207:\"[:en]12:00 Leisurely hike in Griffith Park with panoramic city views[:vi]12:00 Leisurely hike in Griffith Park with panoramic city views[:ja]12:00 Leisurely hike in Griffith Park with panoramic city views[:]\";s:7:\"content\";s:1014:\"[:en]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:vi]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:ja]In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car\'s performance but to improve its overall quality, which had been neglected in the haste to start production.[:]\";}}', 'a:3:{i:1620977146669;a:2:{s:8:\"question\";s:60:\"[:en]Start in Salt Lake City and end in Denver![:vi][:ja][:]\";s:6:\"answer\";s:385:\"[:en]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:vi][:ja][:]\";}i:16209771524732;a:2:{s:8:\"question\";s:60:\"[:en]Start in Salt Lake City and end in Denver![:vi][:ja][:]\";s:6:\"answer\";s:385:\"[:en]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:vi][:ja][:]\";}i:16209771544400;a:2:{s:8:\"question\";s:60:\"[:en]Start in Salt Lake City and end in Denver![:vi][:ja][:]\";s:6:\"answer\";s:385:\"[:en]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:vi][:ja][:]\";}}', 'on', 5, '[:en]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:vi]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:ja]Start in Salt Lake City and end in Denver! With the in-depth cultural tour American Parks Trail end Rapid City (Summer 2019), you have a 9 day tour package taking you through Salt Lake City, USA and 12 other destinations in USA. American Parks Trail end Rapid City (Summer 2019) includes accommodation in a hotel as well as an expert guide, meals, transport and more.[:]', 4.5, 'on', 'https://www.youtube.com/watch?v=AmZ0WrEaf34', 1, 'publish', '2021-05-13 21:01:23', '2021-05-14 00:27:02', NULL, NULL, NULL, NULL, NULL),
(4, '[:en]Handmade pasta with grandma activity[:vi]New tour 1620965212[:ja]New tour 1620965212[:]', 'handmade-pasta-with-grandma', '[:en]<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:vi]<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:ja]<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p><p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:]', 40.417420, -82.711449, '[:en]Ohio, American[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '171', '171,189,188', 80.00, 70.00, 60.00, 'both', 3, '[:en]5 hours[:vi]5 hours[:ja]5 hours[:]', 'date', '', '[]', '117', '128,126,125,124,123,121', '136,134,133,132,131,129', 'a:4:{i:16209653189824;a:2:{s:5:\"title\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";s:7:\"content\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";}i:16209653278810;a:2:{s:5:\"title\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";s:7:\"content\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";}i:16209653302413;a:2:{s:5:\"title\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";s:7:\"content\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";}i:16209653323787;a:2:{s:5:\"title\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";s:7:\"content\";s:89:\"[:en]Throughout the activity, I will tell you about the history of chocolate[:vi][:ja][:]\";}}', 'a:3:{i:16209653344052;a:2:{s:5:\"title\";s:49:\"[:en]We will prepare some chocolates[:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}i:16209653402325;a:2:{s:5:\"title\";s:63:\"[:en]Then, we will finish with a chocolate tasting[:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}i:16209653413260;a:2:{s:5:\"title\";s:55:\"[:en]You will learn the process of melting[:vi][:ja][:]\";s:7:\"content\";s:367:\"[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]\";}}', '[]', 'on', 5, '[:en]You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 21:06:52', '2021-05-13 21:10:47', NULL, NULL, NULL, NULL, NULL),
(5, '[:en]Northern California Summer 2019[:vi]New tour 1620965499[:ja]New tour 1620965499[:]', 'northern-california-summer-2019', '[:en]<p class=\"ql-align-justify\">Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><p><br /></p>[:vi]<p class=\"ql-align-justify\">Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><p><br /></p>[:ja]<p class=\"ql-align-justify\">Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><p><br /></p>[:]', 37.074360, -119.699375, '[:en]California, USA[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '192', '192,191,190', 50.00, 40.00, 30.00, 'instant', 12, '[:en]10 hours[:vi]10 hours[:ja]10 hours[:]', 'date', '', '[]', '116', '128,125,124,122,121', '136,134,133,131,130', 'a:5:{i:1620965869356;a:2:{s:5:\"title\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";}i:16209658769209;a:2:{s:5:\"title\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";s:7:\"content\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";}i:16209658802472;a:2:{s:5:\"title\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";s:7:\"content\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";}i:16209658861681;a:2:{s:5:\"title\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";}i:16209658914528;a:2:{s:5:\"title\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";s:7:\"content\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";}}', 'a:5:{i:16209658935569;a:2:{s:5:\"title\";s:45:\"[:en]Day 1: Arrive San Francisco[:vi][:ja][:]\";s:7:\"content\";s:316:\"[:en]From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception[:vi][:ja][:]\";}i:16209659016052;a:2:{s:5:\"title\";s:59:\"[:en]Day 2: San Francisco Sightseeing – Napa[:vi][:ja][:]\";s:7:\"content\";s:295:\"[:en]Admire the eclectic mix of architecture, culture and cuisines of one of the world\'s most livable cities. Embark on a morning exploration that takes you from the lively tourist hotspot of Fisherman\'s Wharf to Union Square, a historical landmark linked to the American Civil War.[:vi][:ja][:]\";}i:16209659091003;a:2:{s:5:\"title\";s:47:\"[:en]Day 3: Lake Tahoe Sightseeing[:vi][:ja][:]\";s:7:\"content\";s:217:\"[:en]Enjoy a scenic drive through the Napa Valley area before boarding the Napa Valley Wine Train\'s lovingly restored Pullman cars for a taste of the golden age of rail travel and a enjoy a Regional Meal.[:vi][:ja][:]\";}i:16209659161175;a:2:{s:5:\"title\";s:59:\"[:en]Day 4: Monterey, Carmel and 17-Mile Drive[:vi][:ja][:]\";s:7:\"content\";s:216:\"[:en]The pinch me moments continue as we follow the sun-kissed California coast, cruising scenic 17-Mile Drive. We return to Monterey for a visit of Cannery Row, immortalised in the John Steinbeck novel.[:vi][:ja][:]\";}i:16209659246548;a:2:{s:5:\"title\";s:75:\"[:en]Day 5: Monterey – Roaring Camp – Depart San Francisco[:vi][:ja][:]\";s:7:\"content\";s:244:\"[:en]California\'s towering redwoods provide an imposing backdrop for this morning as we journey back in time to the era of lumberjacks and sawmills in a re-created 1890s logging camp, complete with general store and railroad depot.[:vi][:ja][:]\";}}', 'a:3:{i:16209659355512;a:2:{s:8:\"question\";s:56:\"[:en]California\'s towering redwoods provide[:vi][:ja][:]\";s:6:\"answer\";s:244:\"[:en]California\'s towering redwoods provide an imposing backdrop for this morning as we journey back in time to the era of lumberjacks and sawmills in a re-created 1890s logging camp, complete with general store and railroad depot.[:vi][:ja][:]\";}i:16209659378175;a:2:{s:8:\"question\";s:56:\"[:en]California\'s towering redwoods provide[:vi][:ja][:]\";s:6:\"answer\";s:244:\"[:en]California\'s towering redwoods provide an imposing backdrop for this morning as we journey back in time to the era of lumberjacks and sawmills in a re-created 1890s logging camp, complete with general store and railroad depot.[:vi][:ja][:]\";}i:16209659381735;a:2:{s:8:\"question\";s:56:\"[:en]California\'s towering redwoods provide[:vi][:ja][:]\";s:6:\"answer\";s:244:\"[:en]California\'s towering redwoods provide an imposing backdrop for this morning as we journey back in time to the era of lumberjacks and sawmills in a re-created 1890s logging camp, complete with general store and railroad depot.[:vi][:ja][:]\";}}', 'on', 5, '[:en]Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.[:vi][:ja][:]', NULL, 'on', 'https://www.youtube.com/watch?v=0VIhza1IyE0', 1, 'publish', '2021-05-13 21:11:39', '2021-05-14 00:04:52', NULL, NULL, NULL, NULL, NULL),
(6, '[:en]New York: Museum of Modern Art[:vi]New tour 1620966268[:ja]New tour 1620966268[:]', 'new-york-museum-of-modern-art', '[:en]<p class=\"ql-align-justify\">The Museum of Modern Art is a place that fuels creativity, challenges minds, and provides inspiration. With extraordinary exhibitions and the world’s finest collection of modern and contemporary art, MoMA is dedicated to the conversation between the past and the present, the established and the experimental. Purchase your admission and skip the lines to one of the world’s most celebrated art museums.</p><p><br /></p>[:vi][:ja][:]', 40.716700, -74.000000, '[:en]New York, USA[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '184', '184,183,182', 100.00, 50.00, 40.00, 'both', 4, '[:en]3 days[:vi][:ja][:]', 'date', '', '[]', '115', '128,127,125,124,122,121', '136,134,133,132,131,129', 'a:5:{i:16209663408556;a:2:{s:5:\"title\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";}i:1620966345619;a:2:{s:5:\"title\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";s:7:\"content\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";}i:16209663498963;a:2:{s:5:\"title\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";s:7:\"content\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";}i:16209663538961;a:2:{s:5:\"title\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";}i:16209663576582;a:2:{s:5:\"title\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";s:7:\"content\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";}}', 'a:5:{i:16209663611528;a:2:{s:5:\"title\";s:71:\"[:en]8:00 The Hayden Planetarium Space Show: Dark Universe[:vi][:ja][:]\";s:7:\"content\";s:326:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration. Featuring exquisite renderings of enigmatic cosmic phenomena, seminal scientific instruments, and spectacular scenes in deep space[:vi][:ja][:]\";}i:16209663694047;a:2:{s:5:\"title\";s:82:\"[:en]10:00 Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:327:\"[:en]The Museum of Modern Art is a place that fuels creativity, challenges minds, and provides inspiration. With extraordinary exhibitions and the world\'s finest collection of modern and contemporary art, MoMA is dedicated to the conversation between the past and the present, the established and the experimental.[:vi][:ja][:]\";}i:16209663828072;a:2:{s:5:\"title\";s:78:\"[:en]12:00 Enjoy free admission to all special exhibits and films[:vi][:ja][:]\";s:7:\"content\";s:111:\"[:en]Purchase your admission and skip the lines to one of the world\'s most celebrated art museums.[:vi][:ja][:]\";}i:16209663866764;a:2:{s:5:\"title\";s:55:\"[:en]14:00 Receive a free pass to MoMA PS1[:vi][:ja][:]\";s:7:\"content\";s:193:\"[:en]MoMA offers a panoramic overview of modern and contemporary art, from the innovative European painting and sculpture of the 1880s to today\'s film, design, and performance art.[:vi][:ja][:]\";}i:16209663936973;a:2:{s:5:\"title\";s:82:\"[:en]16:00 Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:195:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]\";}}', '[]', 'on', 5, '[:en]The Museum of Modern Art is a place that fuels creativity, challenges minds, and provides inspiration. With extraordinary exhibitions and the world’s finest collection of modern and contemporary art, MoMA is dedicated to the conversation between the past and the present, the established and the experimental. Purchase your admission and skip the lines to one of the world’s most celebrated art museums.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 21:24:28', '2021-05-13 21:27:15', NULL, NULL, NULL, NULL, NULL),
(7, '[:en]New York: Museum of Modern Art[:vi]New tour 1620973095[:ja]New tour 1620973095[:]', 'new-york-museum-of-modern-art-1', '[:en]<p class=\"ql-align-justify\">The Museum of Modern Art is a place that fuels creativity, challenges minds, and provides inspiration. With extraordinary exhibitions and the world’s finest collection of modern and contemporary art, MoMA is dedicated to the conversation between the past and the present, the established and the experimental. Purchase your admission and skip the lines to one of the world’s most celebrated art museums.</p><p><br /></p>[:vi][:ja][:]', 40.150248, -74.389317, '[:en]New Jersey, USA[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '173', '191,190,173,171', 60.00, 50.00, 40.00, 'both', 10, '[:en]4 days[:vi][:ja][:]', 'date', '', '[]', '120', '128,127,125,124,122,121', '135,134,132,131,129', 'a:5:{i:16209735775976;a:2:{s:5:\"title\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Visit the Museum of Modern Art in Manhattan[:vi][:ja][:]\";}i:16209735868197;a:2:{s:5:\"title\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";s:7:\"content\";s:102:\"[:en]See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night[:vi][:ja][:]\";}i:16209735891600;a:2:{s:5:\"title\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";s:7:\"content\";s:87:\"[:en]Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse[:vi][:ja][:]\";}i:16209735931818;a:2:{s:5:\"title\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:76:\"[:en]Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";}i:16209736009459;a:2:{s:5:\"title\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";s:7:\"content\";s:108:\"[:en]Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese[:vi][:ja][:]\";}}', 'a:5:{i:16209736021493;a:2:{s:5:\"title\";s:71:\"[:en]8:00 The Hayden Planetarium Space Show: Dark Universe[:vi][:ja][:]\";s:7:\"content\";s:326:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration. Featuring exquisite renderings of enigmatic cosmic phenomena, seminal scientific instruments, and spectacular scenes in deep space[:vi][:ja][:]\";}i:1620973613832;a:2:{s:5:\"title\";s:82:\"[:en]10:00 Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:327:\"[:en]The Museum of Modern Art is a place that fuels creativity, challenges minds, and provides inspiration. With extraordinary exhibitions and the world\'s finest collection of modern and contemporary art, MoMA is dedicated to the conversation between the past and the present, the established and the experimental.[:vi][:ja][:]\";}i:16209736185602;a:2:{s:5:\"title\";s:78:\"[:en]12:00 Enjoy free admission to all special exhibits and films[:vi][:ja][:]\";s:7:\"content\";s:111:\"[:en]Purchase your admission and skip the lines to one of the world\'s most celebrated art museums.[:vi][:ja][:]\";}i:16209736257809;a:2:{s:5:\"title\";s:55:\"[:en]14:00 Receive a free pass to MoMA PS1[:vi][:ja][:]\";s:7:\"content\";s:193:\"[:en]MoMA offers a panoramic overview of modern and contemporary art, from the innovative European painting and sculpture of the 1880s to today\'s film, design, and performance art.[:vi][:ja][:]\";}i:16209736327519;a:2:{s:5:\"title\";s:82:\"[:en]16:00 Behold masterpieces by Gauguin, Dali, Picasso, and Pollock[:vi][:ja][:]\";s:7:\"content\";s:195:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]\";}}', 'a:3:{i:16209736391672;a:2:{s:8:\"question\";s:52:\"[:en]Celebrates the pivotal discoveries[:vi][:ja][:]\";s:6:\"answer\";s:195:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]\";}i:1620973643410;a:2:{s:8:\"question\";s:52:\"[:en]Celebrates the pivotal discoveries[:vi][:ja][:]\";s:6:\"answer\";s:195:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]\";}i:1620973645199;a:2:{s:8:\"question\";s:52:\"[:en]Celebrates the pivotal discoveries[:vi][:ja][:]\";s:6:\"answer\";s:195:\"[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]\";}}', 'on', 5, '[:en]Celebrates the pivotal discoveries that have led us to greater knowledge of the structure and history of the universe and our place in it—and to new frontiers for exploration.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 23:18:15', '2021-05-13 23:27:55', NULL, NULL, NULL, NULL, NULL),
(8, '[:en]Trip of New York – Discover America[:vi]New tour 1620973760[:ja]New tour 1620973760[:]', 'trip-of-new-york-discover-america', '[:en]<p>Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.</p><p>Iriure evertitur vix cu, ad has dictas mandamus explicari, ne vocibus consectetuer cum. Ea prima perfecto sed. Summo impedit mentitum cum ut. Verear prompta recteque ex vix. No cum quidam antiopam, numquam equidem eam ea. Eos eu hinc doctus interpretaris, quis mucius et ius.</p><p>Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.</p>[:vi][:ja][:]', -33.929100, 151.187930, '[:en]New South Wales, Úc[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '183', '183,182,180', 60.00, 30.00, 10.00, 'enquiry', 12, '[:en]4 days[:vi][:ja][:]', 'date', '', '[]', '119', '128,127,125,124,122,121', '136,135,133,132,130,129', 'a:4:{i:1620973865981;a:2:{s:5:\"title\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";s:7:\"content\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";}i:16209738718280;a:2:{s:5:\"title\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";s:7:\"content\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";}i:16209738757198;a:2:{s:5:\"title\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";s:7:\"content\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";}i:16209738801272;a:2:{s:5:\"title\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";}}', 'a:4:{i:16209738839800;a:2:{s:5:\"title\";s:23:\"[:en]Day 1[:vi][:ja][:]\";s:7:\"content\";s:394:\"[:en]Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.[:vi][:ja][:]\";}i:16209738908442;a:2:{s:5:\"title\";s:23:\"[:en]Day 2[:vi][:ja][:]\";s:7:\"content\";s:394:\"[:en]Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.[:vi][:ja][:]\";}i:16209738977619;a:2:{s:5:\"title\";s:23:\"[:en]Day 3[:vi][:ja][:]\";s:7:\"content\";s:394:\"[:en]Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.[:vi][:ja][:]\";}i:16209739046577;a:2:{s:5:\"title\";s:23:\"[:en]Day 4[:vi][:ja][:]\";s:7:\"content\";s:394:\"[:en]Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.[:vi][:ja][:]\";}}', '[]', 'on', 5, '[:en]Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 23:29:20', '2021-05-13 23:32:08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `gmz_tour` (`id`, `post_title`, `post_slug`, `post_content`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `thumbnail_id`, `gallery`, `adult_price`, `children_price`, `infant_price`, `booking_form`, `group_size`, `duration`, `booking_type`, `external_link`, `extra_services`, `tour_type`, `tour_include`, `tour_exclude`, `highlight`, `itinerary`, `faq`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `video`, `author`, `status`, `created_at`, `updated_at`, `post_description`, `ical`, `deleted_at`, `package_start_date`, `package_end_date`) VALUES
(9, '[:en]Segway Tour of Washington, D.C. Highlights[:vi]New tour 1620973968[:ja]New tour 1620973968[:]', 'segway-tour-of-washington-dc-highlights', '[:en]<p>Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.</p><p>Iriure evertitur vix cu, ad has dictas mandamus explicari, ne vocibus consectetuer cum. Ea prima perfecto sed. Summo impedit mentitum cum ut. Verear prompta recteque ex vix. No cum quidam antiopam, numquam equidem eam ea. Eos eu hinc doctus interpretaris, quis mucius et ius.</p><p>Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.</p>[:vi]<p>Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.</p><p>Iriure evertitur vix cu, ad has dictas mandamus explicari, ne vocibus consectetuer cum. Ea prima perfecto sed. Summo impedit mentitum cum ut. Verear prompta recteque ex vix. No cum quidam antiopam, numquam equidem eam ea. Eos eu hinc doctus interpretaris, quis mucius et ius.</p><p>Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.</p>[:ja]<p>Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te. In commune pericula mediocritatem per. Cu audiam dolorum appareat per, id habeo suavitate argumentum vel. Te his eros ludus tibique.</p><p>Iriure evertitur vix cu, ad has dictas mandamus explicari, ne vocibus consectetuer cum. Ea prima perfecto sed. Summo impedit mentitum cum ut. Verear prompta recteque ex vix. No cum quidam antiopam, numquam equidem eam ea. Eos eu hinc doctus interpretaris, quis mucius et ius.</p><p>Ridens reprimique sed ei, ei qui dicta officiis. Dicat intellegebat vim in, at fastidii prodesset gloriatur qui, sed dicam eripuit necessitatibus an. Has ex enim adolescens vituperata. Nam malorum debitis reprimique no, quaestio percipitur referrentur pro te.</p>[:]', 48.025005, -120.094293, '[:en]Washington, USA[:vi][:ja][:]', '12', NULL, NULL, NULL, NULL, '176', '192,191,190,189', 100.00, 50.00, 10.00, 'both', 4, '[:en]1 day[:vi]1 day[:ja]1 day[:]', 'date', '', '[]', '120', '128,126,125,124,123,121', '136,134,133,132,131,129', 'a:4:{i:16209740285419;a:2:{s:5:\"title\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";s:7:\"content\";s:68:\"[:en]Visit eight villages showcasing Polynesian culture[:vi][:ja][:]\";}i:16209740326661;a:2:{s:5:\"title\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";s:7:\"content\";s:82:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi][:ja][:]\";}i:16209740383994;a:2:{s:5:\"title\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";s:7:\"content\";s:85:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi][:ja][:]\";}i:16209740428977;a:2:{s:5:\"title\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";s:7:\"content\";s:61:\"[:en]Optional transportation from Waikiki hotels[:vi][:ja][:]\";}}', 'a:5:{i:16209740461130;a:2:{s:5:\"title\";s:32:\"[:en]Transportation[:vi][:ja][:]\";s:7:\"content\";s:62:\"[:en]Air, sea, road, rail etc to/from destination[:vi][:ja][:]\";}i:16209740521283;a:2:{s:5:\"title\";s:31:\"[:en]Accommodation[:vi][:ja][:]\";s:7:\"content\";s:49:\"[:en]Hotels, guest houses, cottages.[:vi][:ja][:]\";}i:16209740611624;a:2:{s:5:\"title\";s:23:\"[:en]Meals[:vi][:ja][:]\";s:7:\"content\";s:54:\"[:en]Breakfast, half board and full board[:vi][:ja][:]\";}i:1620974071613;a:2:{s:5:\"title\";s:40:\"[:en]Supplementary services[:vi][:ja][:]\";s:7:\"content\";s:60:\"[:en]Events, city sight seeing, theme evenings.[:vi][:ja][:]\";}i:16209740839599;a:2:{s:5:\"title\";s:27:\"[:en]Insurance[:vi][:ja][:]\";s:7:\"content\";s:46:\"[:en]and other ancillary service.[:vi][:ja][:]\";}}', '[]', 'on', 5, '[:en]Iriure evertitur vix cu, ad has dictas mandamus explicari, ne vocibus consectetuer cum. Ea prima perfecto sed. Summo impedit mentitum cum ut. Verear prompta recteque ex vix. No cum quidam antiopam, numquam equidem eam ea. Eos eu hinc doctus interpretaris, quis mucius et ius.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 23:32:48', '2021-05-14 00:05:39', NULL, NULL, NULL, NULL, NULL),
(10, '[:en]Giverny and Versailles Small Group Day Trip[:vi]New tour 1620974132[:ja]New tour 1620974132[:]', 'giverny-and-versailles-small-group-day-trip', '[:en]<p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p><p><br /></p>[:vi]<p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p><p><br /></p>[:ja]<p class=\"ql-align-justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p><p><br /></p>[:]', 21.000000, 105.750000, '[:en]Ha Noi, Viet Nam[:vi]Ha Noi, Viet Nam[:ja]Ha Noi, Viet Nam[:]', '12', NULL, NULL, NULL, NULL, '187', '191,190,189,188', 50.00, 30.00, 10.00, 'both', 13, '[:en]2 days[:vi]2 days[:ja]2 days[:]', 'date', '', '[]', '116', '128,125,124,122', '136,134,133,131', 'a:4:{i:16209741896573;a:2:{s:5:\"title\";s:168:\"[:en]Visit eight villages showcasing Polynesian culture[:vi]Visit eight villages showcasing Polynesian culture[:ja]Visit eight villages showcasing Polynesian culture[:]\";s:7:\"content\";s:168:\"[:en]Visit eight villages showcasing Polynesian culture[:vi]Visit eight villages showcasing Polynesian culture[:ja]Visit eight villages showcasing Polynesian culture[:]\";}i:1620974194958;a:2:{s:5:\"title\";s:210:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:ja]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:]\";s:7:\"content\";s:210:\"[:en]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:vi]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:ja]Canoe ride, tattoos, spear throwing, ukulele lessons and fishing[:]\";}i:16209741975482;a:2:{s:5:\"title\";s:219:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:ja]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:]\";s:7:\"content\";s:219:\"[:en]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:vi]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:ja]Spectacular Polynesian evening dinner show ‘Ha: Breath of Life’[:]\";}i:1620974201575;a:2:{s:5:\"title\";s:147:\"[:en]Optional transportation from Waikiki hotels[:vi]Optional transportation from Waikiki hotels[:ja]Optional transportation from Waikiki hotels[:]\";s:7:\"content\";s:147:\"[:en]Optional transportation from Waikiki hotels[:vi]Optional transportation from Waikiki hotels[:ja]Optional transportation from Waikiki hotels[:]\";}}', 'a:5:{i:16209742069005;a:2:{s:5:\"title\";s:33:\"[:en]08:00[:vi]08:00[:ja]08:00[:]\";s:7:\"content\";s:807:\"[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:ja]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:]\";}i:16209742136723;a:2:{s:5:\"title\";s:33:\"[:en]09:00[:vi]09:00[:ja]09:00[:]\";s:7:\"content\";s:807:\"[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:ja]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:]\";}i:16209742188413;a:2:{s:5:\"title\";s:33:\"[:en]10:00[:vi]10:00[:ja]10:00[:]\";s:7:\"content\";s:807:\"[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:ja]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:]\";}i:16209742256195;a:2:{s:5:\"title\";s:33:\"[:en]11:00[:vi]11:00[:ja]11:00[:]\";s:7:\"content\";s:807:\"[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:ja]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:]\";}i:16209742317068;a:2:{s:5:\"title\";s:33:\"[:en]14:00[:vi]14:00[:ja]14:00[:]\";s:7:\"content\";s:807:\"[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:ja]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:]\";}}', '[]', 'on', 5, '[:en]We’ll depart early for our amazing 3 Day / 2 Night Boat trip to the stunning natural wonder of Ha Long Bay. We’ll cruise on beautiful emerald green waters on our traditional Vietnamese ‘junk’ boat through towering limestone islands topped with rainforest.[:vi][:ja][:]', NULL, 'on', '', 1, 'publish', '2021-05-13 23:35:32', '2021-05-26 02:40:25', NULL, NULL, NULL, NULL, NULL),
(11, '[:en]Architecto tenetur e[:vi]New tour 1687697278[:]', 'aliquid-irure-sint-v', '[:en]<p>Nulla ut officia com.</p>[:vi]<p>Blanditiis est debit.</p>[:]', 21.022287, 105.785051, '[:en][:vi][:]', '12', NULL, NULL, NULL, NULL, '', '', 21321.00, 213213.00, 213213.00, 'both', 1, '[:en]Laboriosam libero n[:vi][:]', 'package', '', '[]', '118', '', '', '[]', '[]', '[]', NULL, NULL, NULL, NULL, 'on', '', 1, 'publish', '2023-06-25 13:47:58', '2023-06-25 13:49:09', NULL, '[]', NULL, '2023-06-25', '2023-06-27'),
(12, 'Test Tour', 'test-tour', '<p>The Krystal Cancun offers the best of both worlds. It is in the prime area of Punta Cancun and boasts a fantastic and convenient location within walking distance of shopping, nightlife and hotel zone attractions yet once you step through our doors, leave the hustle and bustle of the world behind as you relax on our stretch of white sand beach, take a dip in our hotel\'s panoramic pool, or enjoy a massage at the spa or even better, abandon yourself in our beach bali beds. Everything you could need or want is at your fingertips and our goal is to ensure your ultimate relaxation. This stunning all-inclusive resort offers a huge variety of services and amenities plus luxury guest accommodations. We\'ll tantalize your palate with a wide range of cuisines in our three restaurants, cool </p>', 21.023985, 105.791488, 'Dhaka, Bangladesh', '12', NULL, NULL, NULL, NULL, '2', '', 2500.00, 2000.00, 1000.00, 'instant', 5, '10', 'package', '', '[]', '120', '128,125,122', '', '[]', '[]', '[]', 'off', 5, '', NULL, 'on', '', 1, 'publish', '2023-06-26 04:46:24', '2023-06-26 04:49:21', NULL, '[]', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gmz_tour_availability`
--

CREATE TABLE `gmz_tour_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) DEFAULT NULL,
  `adult_price` double(8,2) DEFAULT NULL,
  `children_price` double(8,2) DEFAULT NULL,
  `infant_price` double(8,2) DEFAULT NULL,
  `group_size` int(11) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_base` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_tour_availability`
--

INSERT INTO `gmz_tour_availability` (`id`, `post_id`, `check_in`, `check_out`, `adult_price`, `children_price`, `infant_price`, `group_size`, `booked`, `status`, `created_at`, `updated_at`, `is_base`) VALUES
(1, 3, 1621270800, 1621270800, 70.00, 60.00, 50.00, 6, 6, 'available', '2021-05-14 00:29:22', '2021-05-14 00:29:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gmz_wishlist`
--

CREATE TABLE `gmz_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_type` varchar(191) NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmz_withdrawal`
--

CREATE TABLE `gmz_withdrawal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmz_withdrawal`
--

INSERT INTO `gmz_withdrawal` (`id`, `user_id`, `withdraw`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 100.00, 'peding', '2021-02-01 03:32:01', '2021-02-01 03:32:01'),
(2, 1, 150.00, 'peding', '2021-01-27 03:32:01', '2021-02-01 03:32:01'),
(3, 1, 1407.45, 'cancelled', '2021-02-01 04:00:40', '2021-02-01 04:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_comment_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_05_14_100000_create_options_table', 1),
(6, '2020_05_16_100000_create_apartment_availability_table', 1),
(7, '2020_05_16_100000_create_apartment_table', 1),
(8, '2020_05_16_100000_create_car_availability_table', 1),
(9, '2020_05_16_100000_create_car_table', 1),
(10, '2020_05_16_100000_create_coupon_table', 1),
(11, '2020_05_16_100000_create_media_table', 1),
(12, '2020_05_16_100000_create_menu_structure_table', 1),
(13, '2020_05_16_100000_create_menu_table', 1),
(14, '2020_05_16_100000_create_order_table', 1),
(15, '2020_05_16_100000_create_page_table', 1),
(16, '2020_05_16_100000_create_post_table', 1),
(17, '2020_05_16_100001_create_taxonomy_table', 1),
(18, '2020_05_16_100002_create_notification_table', 1),
(19, '2020_05_16_100002_create_term_table', 1),
(20, '2020_05_16_100003_create_term_relation_table', 1),
(21, '2020_11_27_145620_create_roles_table', 1),
(22, '2020_11_27_145731_create_language_table', 1),
(23, '2020_11_27_145731_create_role_user_table', 1),
(24, '2020_12_30_053006_create_earnings_table', 1),
(25, '2020_12_30_053207_create_withdrawal_table', 1),
(26, '2020_12_30_100000_create_term_102_table', 1),
(27, '2020_12_30_100001_create_hotel_102_table', 1),
(28, '2020_12_30_100002_create_room_102_table', 1),
(29, '2020_12_30_100003_create_room_availability_102_table', 1),
(30, '2020_12_30_100004_create_space_102_table', 1),
(31, '2020_12_30_100005_create_space_availability_102_table', 1),
(32, '2021_03_30_100050_create_beauty_104n_table', 1),
(33, '2021_03_30_100051_create_beauty_availability_104n_table', 1),
(34, '2021_03_30_100052_create_agent_104n_table', 1),
(35, '2021_03_30_100053_create_agent_availability_104nn_table', 1),
(36, '2021_03_30_100054_create_agent_relation_104n_table', 1),
(37, '2021_03_30_100055_create_jobs_104n_table', 1),
(38, '2021_03_30_100056_create_tour_104n_table', 1),
(39, '2021_03_30_100057_create_tour_availability_104n_table', 1),
(40, '2021_03_30_100058_create_term_104_table', 1),
(41, '2021_05_30_100000_create_wishlist_105_table', 1),
(42, '2021_06_10_100000_create_hotel_106_table', 1),
(43, '2021_06_10_100001_create_apartment_106_table', 1),
(44, '2021_06_10_100002_create_car_106_table', 1),
(45, '2021_06_10_100003_create_space_106_table', 1),
(46, '2021_06_10_100004_create_beauty_106_table', 1),
(47, '2021_07_08_100000_create_tour_106_table', 1),
(48, '2021_07_10_100000_create_seo_106_table', 1),
(49, '2021_07_26_100000_create_tour_availability_107_table', 1),
(50, '2021_07_26_100001_create_room_availability_107_table', 1),
(51, '2021_07_26_100002_create_apartment_availability_107_table', 1),
(52, '2021_07_26_100003_create_space_availability_107_table', 1),
(53, '2021_07_26_100004_create_car_availability_107_table', 1),
(54, '2021_10_06_100000_create_room_107_table', 1),
(55, '2021_10_06_100001_create_apartment_107_table', 1),
(56, '2021_10_06_100002_create_space_107_table', 1),
(57, '2021_10_06_100003_create_tour_107_table', 1),
(58, '2021_10_08_100000_create_users_107_table', 1),
(59, '2021_11_08_100000_create_post_108_table', 1),
(60, '2021_11_09_100001_create_term_relation_108_table', 1),
(61, '2021_11_09_100002_create_comment_108_table', 1),
(62, '2021_11_09_100003_create_seo_108_table', 1),
(63, '2021_11_09_100004_create_page_108_table', 1),
(64, '2021_11_09_100005_create_hotel_108_table', 1),
(65, '2021_11_09_100006_create_room_108_table', 1),
(66, '2021_11_09_100007_create_wishlist_108_table', 1),
(67, '2021_11_10_100000_create_apartment_108_table', 1),
(68, '2021_11_10_100001_create_car_108_table', 1),
(69, '2021_11_10_100002_create_space_108_table', 1),
(70, '2021_11_10_100003_create_tour_108_table', 1),
(71, '2021_11_10_100004_create_beauty_108_table', 1),
(72, '2021_11_11_100000_create_meta_108_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'A Admin User', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(2, 'partner', 'A Partner User', '2023-06-25 13:41:40', '2023-06-25 13:41:40'),
(3, 'customer', 'A Customer User', '2023-06-25 13:41:40', '2023-06-25 13:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 1, 4, '2023-06-27 06:38:50', '2023-06-27 06:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `request` int(11) DEFAULT 0,
  `request_date` varchar(191) DEFAULT NULL,
  `avatar` int(11) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `payout` varchar(500) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_check_notification` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `phone`, `password`, `address`, `request`, `request_date`, `avatar`, `provider`, `provider_id`, `payout`, `remember_token`, `last_check_notification`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Admin', 'Name', 'admin@booteam.co', NULL, NULL, '$2y$10$rN9Ja9D7ow9AKWWjvgKXBO3Mu/TWJ5zS4bfWuXsnn7M9AeoE0Bebq', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'vMiqr68kpCjbXh9He4JrSiAB5E0Np3Exxu1uZMLYoW3oa3nkDvsI9HAgt2iM', '2023-06-27 08:27:44', '2023-06-25 13:41:40', '2023-06-27 08:27:44', NULL),
(2, 'Partner', 'Name', 'partner@booteam.co', NULL, NULL, '$2y$10$WMSwjXaetkBGsgcqSGTpe.qhEBsKJag7i10zHN/Y5u9BT6TyxzUQu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-25 13:41:40', '2023-06-25 13:41:40', NULL),
(3, 'Customer', 'Name', 'customer@booteam.co', NULL, NULL, '$2y$10$duxdsXls0wa3vK2PjtrSCedUbJzBbvUXYtlGimnwhBH5ZKl2.xCxq', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-25 13:41:40', '2023-06-25 13:41:40', NULL),
(4, 'Al', 'Mamun', 'shamimalmamun.aiub@gmail.com', NULL, NULL, '$2y$10$vFcKQjBs0Tjnu2TJorPDZe9Q40A1HBAgOaze4Sv13A6xApg3kR9JO', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'ktqCEGJYgGAyCPg99yU8GD7c03qTQ0Wb5XmZu1LdRiwtz4NumZdUIz7W93cC', '2023-06-27 11:07:39', '2023-06-27 06:38:50', '2023-06-27 11:07:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_agent`
--
ALTER TABLE `gmz_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_agent_availability`
--
ALTER TABLE `gmz_agent_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmz_agent_availability_post_id_foreign` (`post_id`);

--
-- Indexes for table `gmz_agent_relation`
--
ALTER TABLE `gmz_agent_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmz_agent_relation_agent_id_foreign` (`agent_id`);

--
-- Indexes for table `gmz_apartment`
--
ALTER TABLE `gmz_apartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_apartment_availability`
--
ALTER TABLE `gmz_apartment_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_beauty`
--
ALTER TABLE `gmz_beauty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_beauty_availability`
--
ALTER TABLE `gmz_beauty_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_car`
--
ALTER TABLE `gmz_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_car_availability`
--
ALTER TABLE `gmz_car_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_comment`
--
ALTER TABLE `gmz_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `gmz_coupon`
--
ALTER TABLE `gmz_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_earnings`
--
ALTER TABLE `gmz_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_hotel`
--
ALTER TABLE `gmz_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_language`
--
ALTER TABLE `gmz_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_media`
--
ALTER TABLE `gmz_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_menu`
--
ALTER TABLE `gmz_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `gmz_menu_structure`
--
ALTER TABLE `gmz_menu_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_meta`
--
ALTER TABLE `gmz_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_notification`
--
ALTER TABLE `gmz_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_options`
--
ALTER TABLE `gmz_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gmz_options_name_unique` (`name`);

--
-- Indexes for table `gmz_order`
--
ALTER TABLE `gmz_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_page`
--
ALTER TABLE `gmz_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_post`
--
ALTER TABLE `gmz_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_room`
--
ALTER TABLE `gmz_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_room_availability`
--
ALTER TABLE `gmz_room_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_seo`
--
ALTER TABLE `gmz_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_space`
--
ALTER TABLE `gmz_space`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_space_availability`
--
ALTER TABLE `gmz_space_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_taxonomy`
--
ALTER TABLE `gmz_taxonomy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_term`
--
ALTER TABLE `gmz_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmz_term_taxonomy_id_foreign` (`taxonomy_id`);

--
-- Indexes for table `gmz_term_relation`
--
ALTER TABLE `gmz_term_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmz_term_relation_term_id_foreign` (`term_id`);

--
-- Indexes for table `gmz_tour`
--
ALTER TABLE `gmz_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_tour_availability`
--
ALTER TABLE `gmz_tour_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_wishlist`
--
ALTER TABLE `gmz_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmz_withdrawal`
--
ALTER TABLE `gmz_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_agent`
--
ALTER TABLE `gmz_agent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gmz_agent_availability`
--
ALTER TABLE `gmz_agent_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_agent_relation`
--
ALTER TABLE `gmz_agent_relation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `gmz_apartment`
--
ALTER TABLE `gmz_apartment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gmz_apartment_availability`
--
ALTER TABLE `gmz_apartment_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_beauty`
--
ALTER TABLE `gmz_beauty`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gmz_beauty_availability`
--
ALTER TABLE `gmz_beauty_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_car`
--
ALTER TABLE `gmz_car`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `gmz_car_availability`
--
ALTER TABLE `gmz_car_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gmz_comment`
--
ALTER TABLE `gmz_comment`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gmz_coupon`
--
ALTER TABLE `gmz_coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gmz_earnings`
--
ALTER TABLE `gmz_earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gmz_hotel`
--
ALTER TABLE `gmz_hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gmz_language`
--
ALTER TABLE `gmz_language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gmz_media`
--
ALTER TABLE `gmz_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gmz_menu`
--
ALTER TABLE `gmz_menu`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gmz_menu_structure`
--
ALTER TABLE `gmz_menu_structure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `gmz_meta`
--
ALTER TABLE `gmz_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_notification`
--
ALTER TABLE `gmz_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gmz_options`
--
ALTER TABLE `gmz_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gmz_order`
--
ALTER TABLE `gmz_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_page`
--
ALTER TABLE `gmz_page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gmz_post`
--
ALTER TABLE `gmz_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gmz_room`
--
ALTER TABLE `gmz_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gmz_room_availability`
--
ALTER TABLE `gmz_room_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gmz_seo`
--
ALTER TABLE `gmz_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_space`
--
ALTER TABLE `gmz_space`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gmz_space_availability`
--
ALTER TABLE `gmz_space_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_taxonomy`
--
ALTER TABLE `gmz_taxonomy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gmz_term`
--
ALTER TABLE `gmz_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `gmz_term_relation`
--
ALTER TABLE `gmz_term_relation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1175;

--
-- AUTO_INCREMENT for table `gmz_tour`
--
ALTER TABLE `gmz_tour`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gmz_tour_availability`
--
ALTER TABLE `gmz_tour_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gmz_wishlist`
--
ALTER TABLE `gmz_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmz_withdrawal`
--
ALTER TABLE `gmz_withdrawal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gmz_agent_availability`
--
ALTER TABLE `gmz_agent_availability`
  ADD CONSTRAINT `gmz_agent_availability_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `gmz_agent` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gmz_agent_relation`
--
ALTER TABLE `gmz_agent_relation`
  ADD CONSTRAINT `gmz_agent_relation_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `gmz_agent` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gmz_term`
--
ALTER TABLE `gmz_term`
  ADD CONSTRAINT `gmz_term_taxonomy_id_foreign` FOREIGN KEY (`taxonomy_id`) REFERENCES `gmz_taxonomy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gmz_term_relation`
--
ALTER TABLE `gmz_term_relation`
  ADD CONSTRAINT `gmz_term_relation_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `gmz_term` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
