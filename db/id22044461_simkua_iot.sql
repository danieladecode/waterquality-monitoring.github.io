-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2024 at 04:51 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22044461_simkua_iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_iot`
--

CREATE TABLE `data_iot` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `ph` float NOT NULL,
  `tds` float NOT NULL,
  `suhu` float NOT NULL,
  `turbidity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_iot`
--

INSERT INTO `data_iot` (`id`, `tgl`, `jam`, `ph`, `tds`, `suhu`, `turbidity`) VALUES
(480, '2024-04-28', '17:43:00', 20, 0, -127, 223),
(481, '2024-04-28', '17:43:08', 20, 0, -127, 223),
(482, '2024-04-28', '17:43:13', 20, 6311.97, -127, 97),
(483, '2024-04-28', '17:43:27', 20, 6311.97, -127, 129),
(484, '2024-04-28', '17:43:36', 20, 0, -127, 223),
(485, '2024-04-28', '17:43:51', 20, 6311.97, -127, 20),
(486, '2024-04-28', '17:43:55', 20, 6311.97, -127, 13),
(487, '2024-04-28', '17:44:01', 20, 0, -127, 170),
(488, '2024-04-28', '17:44:08', 20, 0, -127, 223),
(489, '2024-04-28', '17:44:44', 20, 0, -127, 223),
(490, '2024-04-28', '17:45:01', 20, 2661.9, -127, 14),
(491, '2024-04-30', '20:26:53', 7, 475.55, -127, 2),
(492, '2024-04-30', '20:26:57', 7, 0, -127, 21),
(493, '2024-04-30', '20:27:03', 7, 727.12, -127, 8),
(494, '2024-04-30', '20:27:07', 7, 189.62, -127, 8),
(495, '2024-04-30', '20:27:11', 7, 340.7, -127, 18),
(496, '2024-04-30', '20:27:15', 7, 578.43, -127, 11),
(497, '2024-04-30', '20:27:20', 7, 91.09, -127, 23),
(498, '2024-04-30', '20:27:30', 7, 408.86, -127, 3),
(499, '2024-04-30', '20:27:39', 7, 203.42, -127, 14),
(500, '2024-04-30', '20:27:46', 7, 253.23, -127, 5),
(501, '2024-05-03', '14:14:06', 7, 466.38, -127, 21),
(502, '2024-05-03', '14:14:10', 7, 27, -127, 36),
(503, '2024-05-03', '14:14:15', 7, 0, -127, 94),
(504, '2024-05-03', '14:15:38', 7, 3426.65, -127, 50),
(505, '2024-05-03', '14:15:43', 7, 0, -127, 119),
(506, '2024-05-03', '14:15:47', 7, 513.69, -127, 53),
(507, '2024-05-03', '14:15:53', 7, 3516.47, -127, 21),
(508, '2024-05-03', '14:15:57', 7, 547.97, -127, 45),
(509, '2024-05-03', '14:16:02', 7, 4.38, -127, 87),
(510, '2024-05-03', '14:16:06', 7, 0, -127, 99),
(511, '2024-05-03', '14:16:10', 7, 2246.31, -127, 8),
(512, '2024-05-03', '14:16:25', 7, 0, -127, 130),
(513, '2024-05-03', '14:16:35', 7, 41.68, -127, 87),
(514, '2024-05-03', '14:16:39', 7, 757.4, -127, 51),
(515, '2024-05-03', '14:16:44', 7, 4065.23, -127, 15),
(516, '2024-05-03', '14:16:48', 7, 1937.57, -127, 93),
(517, '2024-05-03', '14:20:59', 7, 0, -127, 17),
(518, '2024-05-03', '14:21:04', 7, 0, -127, 17),
(519, '2024-05-03', '14:21:09', 7, 28.73, -127, 3),
(520, '2024-05-03', '14:21:13', 7, 0, -127, 4),
(521, '2024-05-03', '14:27:36', 7, 0, -127, 22),
(522, '2024-05-03', '14:27:40', 7, 557.87, -127, 15),
(523, '2024-05-03', '14:27:45', 7, 448.01, -127, 17),
(524, '2024-05-03', '14:27:50', 7, 212.31, -127, 27),
(525, '2024-05-03', '14:28:00', 7, 39.96, -127, 3),
(526, '2024-05-03', '14:28:04', 7, 1005.72, -127, 66),
(527, '2024-05-03', '14:28:13', 7, 448.78, -127, 17),
(528, '2024-05-03', '14:28:19', 7, 0, -127, 19),
(529, '2024-05-08', '05:16:15', 3.5, 5207.95, -127, 2),
(530, '2024-05-08', '05:16:20', 3.69, 5073.15, -127, 2),
(531, '2024-05-08', '05:16:24', 3.76, 5058.36, -127, 1),
(532, '2024-05-08', '05:16:28', 3.98, 5144.68, -127, 3),
(533, '2024-05-08', '05:16:33', 4.11, 5114.77, -127, 1),
(534, '2024-05-08', '05:16:37', 3.88, 4982.01, -127, 2),
(535, '2024-05-08', '05:16:42', 3.76, 4912.4, -127, 2),
(536, '2024-05-08', '05:16:47', 3.32, 5348.83, -127, 1),
(537, '2024-05-08', '05:16:52', 3.34, 5445.56, -127, 2),
(538, '2024-05-08', '05:16:56', 3.26, 5355.03, -127, 2),
(539, '2024-05-08', '05:17:01', 3.24, 5389.22, -127, 2),
(540, '2024-05-08', '05:17:05', 3.24, 5373.66, -127, 2),
(541, '2024-05-08', '05:17:10', 3.22, 5429.86, -127, 1),
(542, '2024-05-08', '06:11:58', 7.14, 3281.4, -127, 4),
(543, '2024-05-08', '06:12:03', 7.14, 3214.81, -127, 3),
(544, '2024-05-08', '06:12:08', 7.14, 3283.43, -127, 3),
(545, '2024-05-08', '06:12:12', 7.1, 3289.55, -127, 3),
(546, '2024-05-08', '06:12:17', 6.79, 3293.63, -127, 2),
(547, '2024-05-08', '06:12:21', 7.25, 3289.55, -127, 2),
(548, '2024-05-08', '06:12:25', 7.09, 3316.17, -127, 1),
(549, '2024-05-08', '06:12:47', 7.28, 3212.81, -127, 1),
(550, '2024-05-08', '06:12:52', 6.89, 3153.35, -127, 1),
(551, '2024-05-08', '06:12:56', 7.1, 3257.04, -127, 1),
(552, '2024-05-08', '06:14:00', 7.19, 3263.12, -127, 93),
(553, '2024-05-08', '06:14:09', 7.52, 3137.65, -127, 124),
(554, '2024-05-08', '06:14:14', 7.43, 3165.16, -127, 77),
(555, '2024-05-08', '06:14:27', 3.42, 5177.74, -127, 62),
(556, '2024-05-08', '06:14:36', 7.05, 3320.28, -127, 223),
(557, '2024-05-08', '06:14:40', 6.49, 3403.46, -127, 74),
(558, '2024-05-08', '06:14:49', 6.34, 3477.73, -127, 36),
(559, '2024-05-08', '06:14:54', 6.99, 3338.84, -127, 223),
(560, '2024-05-08', '06:14:58', 7.02, 3342.97, -127, 25),
(561, '2024-05-08', '06:22:40', 6.47, 1515.23, 29, 72),
(562, '2024-05-08', '06:22:44', 7.05, 1429.88, 29, 72),
(563, '2024-05-08', '06:23:05', 7.07, 1517.35, 29, 72),
(564, '2024-05-08', '06:23:19', 6.99, 1515.23, 29, 73),
(565, '2024-05-08', '06:23:24', 7, 1505.69, 29, 72),
(566, '2024-05-08', '06:23:28', 7.09, 1507.8, 29, 72),
(567, '2024-05-08', '06:23:32', 6.47, 1512.04, 29, 71),
(568, '2024-05-08', '06:23:36', 6.59, 1509.92, 29, 72),
(569, '2024-05-08', '06:23:41', 6.56, 1507.8, 29, 72),
(570, '2024-05-08', '06:23:46', 6.48, 1512.04, 29, 72),
(571, '2024-05-08', '06:23:50', 6.29, 1578.86, 29, 72),
(572, '2024-05-08', '06:23:54', 6.74, 1520.55, 29, 102),
(573, '2024-05-08', '06:23:58', 6.85, 1504.63, 29, 103),
(574, '2024-05-08', '06:24:03', 6.91, 1497.25, 29, 103),
(575, '2024-05-08', '06:24:07', 7.15, 1529.08, 29, 103),
(576, '2024-05-08', '06:24:26', 6.95, 1525.88, 29, 103),
(577, '2024-05-08', '06:24:31', 6.22, 1534.44, 29, 71),
(578, '2024-05-08', '06:24:35', 7.02, 1487.79, 29, 70),
(579, '2024-05-08', '06:24:40', 7.06, 1171.13, 29, 70),
(580, '2024-05-08', '06:24:44', 7.08, 728.67, 29, 70),
(581, '2024-05-08', '06:24:48', 6.8, 721.7, 29, 69),
(582, '2024-05-08', '06:24:52', 6.69, 747.28, 29, 68),
(583, '2024-05-08', '06:24:56', 7.13, 722.48, 29, 69),
(584, '2024-05-08', '06:25:01', 6.58, 721.7, 29, 69),
(585, '2024-05-08', '06:25:06', 6.89, 719.38, 29, 69),
(586, '2024-05-08', '06:25:10', 7.18, 721.7, 29, 69),
(587, '2024-05-08', '06:25:14', 7.45, 720.93, 29, 67),
(588, '2024-05-08', '06:25:18', 6.79, 721.7, 29, 69),
(589, '2024-05-08', '06:25:22', 7.07, 722.48, 29, 68),
(590, '2024-05-08', '06:25:27', 7, 721.7, 29, 68),
(591, '2024-05-08', '06:25:32', 7.02, 721.7, 29, 68),
(592, '2024-05-08', '06:25:36', 7.09, 722.48, 29, 68),
(593, '2024-05-08', '06:25:40', 7.11, 721.7, 29, 68),
(628, '2024-05-11', '10:40:20', 6.98, 0, 31.06, 76),
(629, '2024-05-11', '10:40:36', 6.99, 0, 31, 77),
(630, '2024-05-11', '10:40:40', 7.07, 0, 31.06, 76),
(631, '2024-05-11', '10:40:45', 6.96, 0, 31.06, 76),
(632, '2024-05-11', '10:40:50', 7.06, 0, 31.06, 77),
(633, '2024-05-11', '10:40:54', 7.05, 0, 31.06, 77),
(634, '2024-05-11', '10:40:59', 7.08, 0, 31.06, 77),
(635, '2024-05-11', '10:41:03', 7.09, 0, 31.06, 77),
(636, '2024-05-11', '10:41:08', 7.07, 0, 31.06, 77),
(637, '2024-05-11', '10:41:13', 7.06, 0, 31.06, 77),
(638, '2024-05-11', '10:41:18', 7.07, 0, 31.06, 77),
(639, '2024-05-11', '10:41:22', 7.08, 0, 31.06, 77),
(640, '2024-05-11', '10:41:26', 7.07, 0, 31.06, 76),
(641, '2024-05-11', '10:41:31', 7.08, 0, 31.06, 77),
(642, '2024-05-11', '10:41:35', 7.04, 0, 31.06, 76),
(643, '2024-05-11', '10:41:39', 7, 0, 31.06, 76),
(644, '2024-05-11', '10:41:44', 7.07, 0, 31.06, 77),
(645, '2024-05-16', '12:18:04', 7.45, 0, 30.62, 61),
(646, '2024-05-16', '12:18:10', 7.45, 0, 30.62, 63),
(647, '2024-05-16', '12:18:16', 7.38, 0, 30.62, 63),
(648, '2024-05-16', '12:18:21', 7.32, 0, 30.62, 64),
(649, '2024-05-16', '12:18:25', 7.02, 0, 30.62, 63),
(650, '2024-05-16', '12:18:29', 10.67, 0, 30.62, 63),
(651, '2024-05-16', '12:18:34', 10.61, 0, 30.62, 63),
(652, '2024-05-16', '12:18:38', 10.53, 0, 30.62, 63),
(653, '2024-05-16', '12:18:42', 10.5, 0, 30.56, 63),
(654, '2024-05-16', '12:18:46', 11.54, 1521.61, 30.62, 63),
(655, '2024-05-16', '12:18:51', 10.2, 1489.89, 30.62, 65),
(656, '2024-05-16', '12:18:58', 11.39, 1520.55, 30.62, 62),
(657, '2024-05-16', '12:19:02', 11.43, 1529.08, 30.56, 61),
(658, '2024-05-16', '12:21:11', 10.03, 1526.95, 30.5, 58),
(659, '2024-05-16', '12:21:14', 11.22, 1515.23, 30.62, 60),
(660, '2024-05-16', '12:21:18', 11.18, 1526.95, 30.56, 60),
(661, '2024-05-16', '12:21:25', 11.26, 1515.23, 30.56, 57),
(662, '2024-05-16', '12:21:29', 11.06, 1551.66, 30.56, 63),
(663, '2024-05-16', '12:21:36', 11.09, 1529.08, 30.56, 60),
(664, '2024-05-16', '12:21:41', 10.1, 1518.42, 30.56, 61),
(665, '2024-05-16', '12:21:44', 10.09, 1518.42, 30.56, 60),
(666, '2024-05-16', '12:21:49', 10.09, 1516.29, 30.56, 61),
(667, '2024-05-16', '12:21:53', 10.09, 1515.23, 30.56, 61),
(668, '2024-05-16', '12:21:57', 10.08, 1517.35, 30.44, 61),
(669, '2024-05-16', '12:22:01', 11.12, 1515.23, 30.25, 60),
(670, '2024-05-16', '12:22:05', 10.57, 572.34, 30.31, 61),
(671, '2024-05-16', '12:22:09', 10.56, 124.62, 30.12, 61),
(672, '2024-05-16', '12:22:13', 10.54, 435.75, 29.94, 60),
(673, '2024-05-16', '12:22:17', 10.56, 107.07, 29.69, 60),
(674, '2024-05-16', '12:22:21', 10.51, 28.73, 29.44, 61),
(675, '2024-05-16', '12:22:25', 10.55, 28.73, 29.25, 60),
(676, '2024-05-16', '12:22:29', 10.48, 23.53, 29.19, 61),
(677, '2024-05-16', '12:22:33', 10.45, 25.27, 29.06, 60),
(678, '2024-05-16', '12:22:38', 10.46, 25.27, 29, 60),
(679, '2024-05-16', '12:22:43', 10.42, 21.8, 28.87, 61),
(680, '2024-05-16', '12:22:47', 8.99, 16.59, 28.81, 61),
(681, '2024-05-16', '12:22:52', 8.12, 16.59, 28.75, 61),
(682, '2024-05-16', '12:22:59', 7.91, 23.53, 28.69, 61),
(683, '2024-05-16', '12:23:09', 7.75, 14.85, 28.62, 61),
(684, '2024-05-16', '12:23:13', 7.82, 13.97, 28.62, 60),
(685, '2024-05-16', '12:23:17', 7.77, 13.97, 28.56, 61),
(686, '2024-05-16', '12:23:20', 7.85, 18.32, 28.62, 60),
(687, '2024-05-16', '12:23:24', 7.75, 13.97, 28.56, 60),
(688, '2024-05-16', '12:23:28', 7.73, 13.97, 28.62, 60),
(689, '2024-05-16', '12:23:32', 7.72, 13.97, 28.56, 60),
(690, '2024-05-16', '12:25:47', 7.68, 0, 29.31, 61),
(691, '2024-05-16', '12:25:52', 7.68, 0, 29.31, 60),
(692, '2024-05-16', '12:25:55', 7.71, 0, 29.37, 61),
(693, '2024-05-16', '12:26:00', 7.68, 0, 29.44, 60),
(694, '2024-05-16', '12:26:05', 7.63, 0, 29.5, 60),
(695, '2024-05-16', '12:26:12', 7.67, 0, 29.5, 60),
(696, '2024-05-16', '12:26:16', 7.68, 0, 29.5, 61),
(697, '2024-05-16', '12:26:20', 7.75, 0, 29.56, 60),
(698, '2024-05-16', '12:26:24', 7.69, 0, 29.63, 60),
(699, '2024-05-16', '12:26:29', 7.69, 0, 29.63, 61),
(700, '2024-05-16', '12:26:33', 7.7, 0, 29.69, 61),
(701, '2024-05-16', '12:37:33', 9.12, 56.26, 28.38, 63),
(702, '2024-05-16', '12:40:45', 9.13, 12.23, 28.38, 64),
(703, '2024-05-16', '12:40:49', 8.89, 6.12, 28.38, 66),
(704, '2024-05-16', '12:40:53', 9.27, 10.49, 28.44, 64),
(705, '2024-05-16', '12:40:57', 9.16, 0, 28.38, 62),
(706, '2024-05-16', '12:41:01', 8.94, 11.36, 28.44, 63),
(707, '2024-05-16', '12:41:05', 9.13, 13.97, 28.38, 64),
(708, '2024-05-16', '12:41:09', 9.21, 42.54, 28.38, 64),
(709, '2024-05-16', '12:41:14', 7.92, 0, 28.44, 69),
(710, '2024-05-16', '12:41:18', 7.89, 0, 28.31, 64),
(711, '2024-05-16', '12:41:25', 7.73, 0, 28, 63),
(712, '2024-05-16', '12:41:29', 3.73, 0, 27.94, 64),
(713, '2024-05-16', '12:41:33', 3.44, 0, 27.81, 64),
(714, '2024-05-16', '12:41:37', 3.41, 0, 27.69, 64),
(715, '2024-05-16', '12:41:41', 3.36, 0, 27.5, 63),
(716, '2024-05-16', '12:41:45', 3.4, 0, 27.37, 64),
(717, '2024-05-16', '12:43:10', 7.46, 0, 28.06, 63),
(718, '2024-05-16', '12:43:14', 7.43, 0, 28.06, 63),
(719, '2024-05-16', '12:43:18', 7.78, 0, 28.06, 63),
(720, '2024-05-16', '12:43:22', 7.47, 0, 28.06, 63),
(721, '2024-05-16', '12:43:27', 7.41, 0, 28.06, 64),
(722, '2024-05-16', '12:43:34', 7.55, 0, 28.12, 64),
(723, '2024-05-16', '12:43:40', 7.99, 0, 28.12, 64),
(724, '2024-05-16', '12:43:44', 7.83, 0, 28.19, 63),
(725, '2024-05-16', '12:43:48', 7.85, 0, 28.12, 64),
(726, '2024-05-16', '12:43:59', 7.65, 0, 28.12, 64),
(727, '2024-05-16', '12:44:03', 7.61, 0, 28.19, 63),
(728, '2024-05-16', '12:44:07', 7.86, 0, 28.12, 63),
(729, '2024-05-16', '12:44:12', 7.92, 0, 28.19, 65),
(730, '2024-05-16', '12:44:16', 7.54, 0, 28.12, 63),
(731, '2024-05-16', '12:44:20', 7.76, 55.41, 28.19, 63),
(732, '2024-05-16', '12:44:24', 7.86, 0, 28.12, 63),
(733, '2024-05-16', '12:44:28', 7.7, 0, 28.19, 63),
(734, '2024-05-16', '12:44:32', 7.76, 0, 28.19, 61),
(735, '2024-05-16', '12:44:36', 7.79, 0, 28.12, 63),
(736, '2024-05-16', '12:44:40', 7.74, 0, 28.06, 65),
(737, '2024-05-16', '12:44:45', 7.93, 0, 28.12, 63),
(738, '2024-05-16', '12:44:48', 8.21, 0, 28.12, 63),
(739, '2024-05-16', '12:44:53', 5.57, 0, 28.19, 63),
(740, '2024-05-16', '12:44:57', 7.67, 0, 28.12, 61),
(741, '2024-05-16', '12:45:01', 7.76, 0, 28.19, 63),
(742, '2024-05-16', '12:45:05', 7.85, 0, 28.12, 66),
(743, '2024-05-16', '12:45:09', 7.92, 0, 28, 63),
(744, '2024-05-16', '12:45:13', 8.05, 0, 28.12, 63),
(745, '2024-05-16', '12:45:20', 7.88, 0, 28, 64),
(746, '2024-05-16', '12:45:24', 7.9, 0, 28, 74),
(747, '2024-05-16', '12:53:10', 7.44, 762.85, 27.87, 30),
(748, '2024-05-16', '12:53:14', 6.96, 778.47, 27.87, 30),
(749, '2024-05-16', '12:53:18', 7.76, 759.73, 27.94, 30),
(750, '2024-05-16', '12:53:43', 7.19, 768.31, 28, 31),
(751, '2024-05-16', '12:53:47', 7.84, 771.44, 28, 29),
(752, '2024-05-16', '12:53:51', 7.78, 776.91, 27.94, 30),
(753, '2024-05-16', '12:53:55', 7.27, 773, 27.94, 30),
(754, '2024-05-16', '12:54:00', 7.26, 780.04, 28, 30),
(755, '2024-05-16', '12:54:05', 7.22, 779.25, 28, 29),
(756, '2024-05-16', '12:54:10', 7.82, 746.51, 27.94, 30),
(757, '2024-05-16', '12:54:15', 7.73, 814.62, 28, 27),
(758, '2024-05-16', '12:54:21', 7.91, 783.17, 28, 30),
(759, '2024-05-16', '12:54:26', 7.89, 769.09, 28, 29),
(760, '2024-05-16', '12:54:30', 7.67, 784.74, 28, 29),
(761, '2024-05-16', '12:54:34', 7.6, 786.3, 28, 30),
(762, '2024-05-16', '12:54:38', 7.28, 786.3, 28, 29),
(763, '2024-05-16', '12:54:43', 7.71, 773.78, 28, 29),
(764, '2024-05-16', '12:54:50', 7.2, 813.04, 28, 30),
(765, '2024-05-16', '12:54:54', 7.7, 872.72, 28, 28),
(766, '2024-05-16', '12:54:58', 7.84, 0, 28.06, 29),
(767, '2024-05-16', '12:55:02', 7.79, 0, 27.87, 28),
(768, '2024-05-16', '12:55:17', 7.82, 0, 27.13, 28),
(769, '2024-05-16', '12:55:21', 7.72, 0, 27.06, 28),
(770, '2024-05-16', '12:55:26', 7.78, 0, 27, 26),
(771, '2024-05-16', '12:55:30', 7.74, 0, 26.87, 28),
(772, '2024-05-16', '12:55:34', 7.76, 0, 26.81, 27),
(773, '2024-05-16', '12:55:38', 7.82, 0, 26.75, 27),
(774, '2024-05-16', '12:55:41', 7.58, 0, 26.69, 27),
(775, '2024-05-16', '12:55:48', 7.72, 0, 26.62, 27),
(776, '2024-05-16', '12:55:53', 7.78, 0, 26.69, 27),
(777, '2024-05-16', '12:55:57', 7.92, 0, 26.69, 27),
(778, '2024-05-16', '12:56:01', 7.7, 0, 26.69, 28),
(779, '2024-05-16', '12:56:06', 7.78, 0, 26.69, 27),
(780, '2024-05-16', '12:56:10', 7.84, 0, 26.69, 27),
(781, '2024-05-16', '12:56:14', 7.85, 0, 26.69, 29),
(782, '2024-05-16', '12:56:18', 7.77, 0, 26.75, 28),
(783, '2024-05-16', '12:56:24', 7.73, 0, 26.87, 28),
(784, '2024-05-16', '12:56:28', 7.76, 0, 27, 27),
(785, '2024-05-16', '12:56:34', 7.82, 0, 27.13, 27),
(786, '2024-05-16', '12:56:38', 7.74, 0, 27.19, 27),
(787, '2024-05-16', '12:56:44', 7.84, 0, 27.25, 28),
(788, '2024-05-16', '12:56:50', 7.86, 0, 27.44, 28),
(789, '2024-05-16', '12:56:54', 7.5, 0, 27.44, 27),
(790, '2024-05-16', '12:57:01', 7.91, 0, 27.56, 28),
(791, '2024-05-16', '12:57:06', 7.78, 0, 27.62, 27),
(792, '2024-05-16', '12:57:10', 7.61, 0, 27.69, 27),
(793, '2024-05-16', '12:57:13', 7.87, 0, 27.81, 27),
(794, '2024-05-16', '12:57:18', 7.75, 0, 27.87, 27),
(795, '2024-05-16', '12:57:31', 7.68, 0, 28.12, 28),
(796, '2024-05-16', '12:57:35', 7.48, 0, 28.19, 28),
(797, '2024-05-16', '12:57:39', 7.84, 0, 28.31, 28),
(798, '2024-05-16', '12:57:44', 7.74, 0, 28.38, 27),
(799, '2024-05-16', '12:57:49', 7.83, 0, 28.44, 27),
(800, '2024-05-16', '12:57:57', 7.83, 0, 28.62, 28),
(801, '2024-05-16', '12:58:01', 7.82, 0, 28.69, 26),
(802, '2024-05-16', '12:58:05', 7.83, 0, 28.75, 27),
(803, '2024-05-16', '12:58:09', 7.9, 0, 28.81, 28),
(804, '2024-05-16', '12:58:14', 7.83, 0, 28.87, 29),
(805, '2024-05-16', '12:58:18', 7.9, 0, 28.94, 28),
(806, '2024-05-16', '12:58:24', 7.95, 0, 29, 25),
(807, '2024-05-16', '12:58:28', 7.84, 0, 29, 27),
(808, '2024-05-16', '12:58:32', 7.84, 0, 29, 28),
(809, '2024-05-16', '12:58:36', 7.88, 0, 29.12, 27),
(810, '2024-05-16', '12:58:40', 7.89, 0, 29.12, 29),
(811, '2024-05-16', '12:58:44', 7.74, 0, 29.12, 28),
(812, '2024-05-16', '12:58:48', 7.71, 0, 29.19, 29),
(813, '2024-05-16', '12:58:52', 7.85, 0, 29.19, 27),
(814, '2024-05-16', '12:58:56', 7.82, 0, 29.31, 28),
(815, '2024-05-16', '12:59:00', 7.84, 0, 29.31, 27),
(816, '2024-05-16', '12:59:04', 7.93, 0, 29.37, 28),
(817, '2024-05-16', '12:59:10', 7.97, 0, 29.44, 29),
(818, '2024-05-16', '12:59:15', 7.88, 1496.19, 29.37, 31),
(819, '2024-05-16', '12:59:19', 8.03, 1466.92, 28.87, 30),
(820, '2024-05-16', '12:59:23', 7.92, 1481.51, 28.62, 32),
(821, '2024-05-16', '12:59:27', 8.95, 1498.3, 28.5, 30),
(822, '2024-05-16', '12:59:32', 7.44, 1497.25, 28.38, 29),
(823, '2024-05-16', '12:59:36', 8.58, 1507.8, 28.31, 30),
(824, '2024-05-16', '12:59:40', 7.21, 1501.46, 28.31, 29),
(825, '2024-05-16', '12:59:46', 7.1, 1508.86, 28.25, 30),
(826, '2024-05-16', '12:59:51', 7.28, 1516.29, 28.25, 32),
(827, '2024-05-16', '12:59:56', 7.04, 1514.17, 28.25, 32),
(828, '2024-05-16', '13:00:01', 7.98, 1495.14, 28.25, 31),
(829, '2024-05-16', '13:00:59', 7.65, 1509.92, 28.25, 30),
(830, '2024-05-16', '13:01:07', 7.65, 1509.92, 28.25, 32),
(831, '2024-05-16', '13:01:10', 6.68, 1518.42, 28.19, 30),
(832, '2024-05-16', '13:01:15', 7.92, 1512.04, 28.25, 32),
(833, '2024-05-16', '13:01:21', 8.06, 1546.26, 28.25, 32),
(834, '2024-05-16', '13:01:25', 6.9, 1515.23, 28.19, 30),
(835, '2024-05-16', '13:01:29', 6.47, 1513.1, 28.25, 30),
(836, '2024-05-16', '13:01:36', 6.84, 1509.92, 28.25, 32),
(837, '2024-05-16', '13:01:39', 6.83, 1508.86, 28.25, 32),
(838, '2024-05-16', '13:01:53', 6.98, 1515.23, 28.25, 29),
(839, '2024-05-16', '13:01:59', 8.2, 1482.55, 28.25, 32),
(840, '2024-05-16', '13:04:13', 7.81, 0, 27.06, 28),
(841, '2024-05-16', '13:04:18', 7.89, 0, 26.94, 29),
(842, '2024-05-16', '13:04:21', 7.78, 0, 26.94, 28),
(843, '2024-05-16', '13:04:26', 8.05, 0, 26.87, 29),
(844, '2024-05-16', '13:04:29', 7.85, 0, 26.87, 28),
(845, '2024-05-16', '13:04:33', 7.74, 0, 26.94, 28),
(846, '2024-05-16', '13:04:37', 7.88, 0, 26.81, 28),
(847, '2024-05-16', '13:04:41', 7.75, 0, 26.94, 30),
(848, '2024-05-16', '13:04:54', 7.75, 0, 27.06, 29),
(849, '2024-05-16', '13:04:58', 7.91, 0, 27.06, 29),
(850, '2024-05-16', '13:05:05', 7.8, 0, 27.13, 29),
(851, '2024-05-16', '13:05:09', 7.76, 0, 27.25, 29),
(852, '2024-05-16', '13:05:13', 7.92, 0, 27.31, 27),
(853, '2024-05-16', '13:05:17', 7.72, 0, 27.37, 29),
(854, '2024-05-16', '13:05:21', 7.71, 0, 27.44, 28),
(855, '2024-05-16', '13:05:25', 7.66, 0, 27.5, 29),
(856, '2024-05-16', '13:05:29', 7.82, 0, 27.5, 29),
(857, '2024-05-16', '13:05:33', 7.92, 696.24, 27.62, 30),
(858, '2024-05-16', '13:05:36', 7.8, 746.51, 28.31, 30),
(859, '2024-05-16', '13:05:42', 7.83, 755.06, 28.69, 30),
(860, '2024-05-16', '13:05:47', 7.93, 746.51, 29.06, 30),
(861, '2024-05-16', '13:05:52', 9.1, 610.45, 29.25, 30),
(862, '2024-05-16', '13:05:57', 8.48, 618.84, 29.44, 29),
(863, '2024-05-16', '13:06:12', 7.98, 623.42, 29.56, 30),
(864, '2024-05-16', '13:06:16', 8.43, 635.65, 29.5, 30),
(865, '2024-05-16', '13:06:20', 7.68, 633.35, 29.5, 29),
(866, '2024-05-16', '13:06:43', 7.65, 627.24, 29.56, 30),
(867, '2024-05-16', '13:08:51', 7.91, 671.64, 29.5, 29),
(868, '2024-05-16', '13:08:55', 7.42, 668.57, 29.5, 29),
(869, '2024-05-16', '13:09:01', 7.85, 660.14, 29.56, 29),
(870, '2024-05-16', '13:09:04', 7.57, 624.19, 29.5, 29),
(871, '2024-05-16', '13:09:09', 7.92, 669.34, 29.5, 29),
(872, '2024-05-16', '13:09:12', 7.91, 710.89, 29.56, 29),
(873, '2024-05-16', '13:09:16', 7.91, 677.01, 29.56, 29),
(874, '2024-05-16', '13:09:21', 7.67, 691.62, 29.56, 29),
(875, '2024-05-16', '13:11:29', 7.75, 1013.3, 28.94, 30),
(876, '2024-05-16', '13:11:33', 8.24, 897.7, 29.06, 31),
(877, '2024-05-16', '13:14:26', 7.93, 993.97, 29.06, 27),
(878, '2024-05-16', '13:14:35', 7.81, 916.37, 29.06, 29),
(879, '2024-05-16', '13:14:42', 7.91, 978.94, 29, 29),
(880, '2024-05-16', '13:15:42', 7.86, 1052.43, 29, 30),
(881, '2024-05-16', '13:15:46', 7.83, 982.27, 29, 30),
(882, '2024-05-16', '13:15:50', 8.19, 978.94, 29, 31),
(883, '2024-05-16', '13:15:53', 7, 978.1, 29, 31),
(884, '2024-05-16', '13:15:57', 7.74, 978.94, 29, 28),
(885, '2024-05-16', '13:16:09', 7.09, 977.27, 29.06, 30),
(886, '2024-05-16', '13:16:13', 7.3, 981.44, 29, 29),
(887, '2024-05-16', '13:16:17', 7.8, 985.61, 29.06, 29),
(888, '2024-05-16', '13:16:22', 7.77, 1020.06, 29.06, 30),
(889, '2024-05-16', '13:16:26', 7.92, 983.1, 29, 29),
(890, '2024-05-16', '13:16:31', 7.95, 992.29, 29.06, 31),
(891, '2024-05-16', '13:16:44', 7.21, 926.98, 29, 32),
(892, '2024-05-16', '13:16:48', 7.67, 1088.71, 29.06, 29),
(893, '2024-05-16', '13:16:53', 7.27, 988.11, 29.06, 30),
(894, '2024-05-16', '13:16:57', 7.31, 989.79, 29, 30),
(895, '2024-05-16', '13:17:00', 7.92, 999.84, 29, 29),
(896, '2024-05-16', '13:17:05', 7.81, 1058.44, 29.06, 29),
(897, '2024-05-16', '13:17:08', 7.29, 993.13, 29, 30),
(898, '2024-05-16', '13:17:12', 7.22, 1052.43, 29, 30),
(899, '2024-05-16', '13:17:16', 7.22, 1080.89, 29, 30),
(900, '2024-05-16', '13:17:20', 7.38, 1009.93, 29.06, 30),
(901, '2024-05-16', '13:17:25', 7.18, 996.48, 29.06, 30),
(902, '2024-05-16', '13:17:31', 7.93, 1001.52, 29.06, 29),
(903, '2024-05-16', '13:17:35', 7.92, 1000.68, 29.06, 31),
(904, '2024-05-16', '13:17:40', 7.18, 1078.29, 29.06, 29),
(905, '2024-05-16', '13:17:45', 7.24, 1054.14, 29, 30),
(906, '2024-05-16', '13:17:49', 7.4, 1046.43, 29, 30),
(907, '2024-05-16', '13:17:53', 7.13, 1056.72, 29, 30),
(908, '2024-05-16', '13:17:57', 7.46, 993.97, 29, 29),
(909, '2024-05-16', '13:18:01', 7.66, 1073.09, 29, 30),
(910, '2024-05-16', '13:18:05', 7.85, 574.62, 29, 29),
(911, '2024-05-16', '13:18:09', 7.78, 1578.86, 28.87, 29),
(912, '2024-05-16', '13:18:13', 7.66, 1515.23, 28.56, 31),
(913, '2024-05-16', '13:18:17', 7.66, 1515.23, 28.31, 30),
(914, '2024-05-16', '13:18:21', 7.68, 1498.3, 28.12, 29),
(915, '2024-05-16', '13:18:27', 7.68, 1549.5, 27.87, 31),
(916, '2024-05-16', '13:18:31', 7.86, 1487.79, 27.69, 28),
(917, '2024-05-16', '13:18:38', 7.67, 1519.48, 27.5, 31),
(918, '2024-05-16', '13:18:42', 7.7, 1504.63, 27.37, 30),
(919, '2024-05-16', '13:18:49', 7.64, 1525.88, 27.25, 31),
(920, '2024-05-16', '13:18:53', 7.55, 1515.23, 27.19, 31),
(921, '2024-05-16', '13:18:57', 7.75, 1514.17, 27.06, 31),
(922, '2024-05-16', '13:20:39', 7.74, 201.8, 27.13, 29),
(923, '2024-05-16', '13:20:43', 7.76, 188.81, 27.25, 29),
(924, '2024-05-16', '13:21:10', 7.73, 158.54, 27.69, 30),
(925, '2024-05-16', '13:21:15', 7.54, 166.75, 27.75, 29),
(926, '2024-05-16', '13:21:19', 7.74, 149.48, 27.75, 30),
(927, '2024-05-16', '13:21:23', 7.73, 178.21, 27.81, 29),
(928, '2024-05-16', '13:21:27', 7.73, 138.73, 27.94, 27),
(929, '2024-05-16', '13:21:31', 7.75, 140.39, 27.94, 29),
(930, '2024-05-16', '13:21:35', 7.75, 131.27, 28, 29),
(931, '2024-05-16', '13:21:38', 7.91, 128.78, 28.12, 27),
(932, '2024-05-16', '13:23:23', 7.3, 651.71, 30, 28),
(933, '2024-05-16', '13:23:27', 7.4, 591.38, 29.94, 30),
(934, '2024-05-16', '13:23:31', 7.27, 621.13, 30, 30),
(935, '2024-05-16', '13:23:35', 6.77, 611.97, 29.94, 29),
(936, '2024-05-16', '13:23:38', 7.42, 556.35, 30, 29),
(937, '2024-05-16', '13:23:43', 7.37, 633.35, 30, 30),
(938, '2024-05-16', '13:23:47', 7.46, 618.08, 29.94, 29),
(939, '2024-05-16', '13:23:50', 7.53, 630.3, 30, 29),
(940, '2024-05-16', '13:23:57', 7.28, 623.42, 30, 29),
(941, '2024-05-16', '13:24:20', 7.28, 694.7, 29.94, 29),
(942, '2024-05-16', '13:24:25', 6.81, 623.42, 30, 28),
(943, '2024-05-16', '13:24:29', 7.41, 602.82, 30, 29),
(944, '2024-05-16', '13:24:35', 6.78, 622.66, 30, 29),
(945, '2024-05-16', '13:24:38', 7.45, 623.42, 29.94, 29),
(946, '2024-05-16', '13:24:46', 6.82, 615.79, 30, 28),
(947, '2024-05-16', '13:24:50', 6.77, 683.16, 30, 29),
(948, '2024-05-16', '13:24:54', 7.4, 611.21, 30, 29),
(949, '2024-05-16', '13:24:59', 7.32, 628, 29.94, 29),
(950, '2024-05-16', '13:25:03', 6.79, 622.66, 30, 29),
(951, '2024-05-16', '13:25:10', 7.27, 626.48, 29.94, 30),
(952, '2024-05-16', '13:25:13', 7.05, 622.66, 30, 29),
(953, '2024-05-16', '13:25:17', 7.37, 619.6, 30, 29),
(954, '2024-05-16', '13:25:30', 7.55, 672.41, 29.94, 31),
(955, '2024-05-16', '13:25:35', 7.68, 214.74, 29.81, 30),
(956, '2024-05-16', '13:25:39', 7.85, 194.5, 29.44, 29),
(957, '2024-05-16', '13:25:43', 7.68, 96.15, 29.31, 27),
(958, '2024-05-16', '13:25:47', 7.79, 76.71, 29.12, 25),
(959, '2024-05-16', '13:25:51', 7.69, 61.39, 29.06, 27),
(960, '2024-05-16', '13:26:01', 7.61, 45.12, 28.87, 28),
(961, '2024-05-16', '13:26:05', 7.84, 33.92, 28.81, 26),
(962, '2024-05-16', '13:26:09', 7.73, 30.46, 28.75, 28),
(963, '2024-05-16', '13:26:13', 7.71, 22.67, 28.75, 29),
(964, '2024-05-16', '13:26:20', 7.75, 15.72, 28.69, 28),
(965, '2024-05-16', '13:26:24', 7.75, 13.1, 28.62, 28),
(966, '2024-05-16', '13:26:31', 7.69, 7.87, 28.56, 28),
(967, '2024-05-16', '13:26:38', 7.71, 0, 28.56, 28),
(968, '2024-05-16', '13:26:42', 7.73, 19.19, 28.5, 27),
(969, '2024-05-16', '13:26:53', 7.66, 0, 28.56, 28),
(970, '2024-05-16', '13:27:01', 7.71, 0, 28.5, 29),
(971, '2024-05-16', '13:27:05', 7.73, 20.06, 28.38, 29),
(972, '2024-05-16', '13:27:09', 7.66, 0, 28.25, 29),
(973, '2024-05-16', '13:27:13', 7.73, 0, 28.19, 29),
(974, '2024-05-16', '13:27:17', 7.75, 0, 28.19, 29),
(975, '2024-05-16', '13:27:21', 7.74, 0, 28.12, 27),
(976, '2024-05-16', '13:27:25', 7.61, 0, 28.06, 28),
(977, '2024-05-16', '13:27:32', 7.67, 0, 28.06, 27),
(978, '2024-05-16', '13:27:37', 7.91, 0, 28, 28),
(979, '2024-05-16', '13:27:41', 7.86, 0, 27.94, 27),
(980, '2024-05-16', '13:27:47', 7.87, 0, 27.94, 28),
(981, '2024-05-16', '13:27:51', 7.74, 0, 27.94, 27),
(982, '2024-05-16', '13:27:56', 7.84, 0, 27.94, 29),
(983, '2024-05-16', '13:28:00', 7.84, 0, 28, 29),
(984, '2024-05-16', '14:15:16', 7.62, 842.36, 29.81, 129),
(985, '2024-05-16', '14:15:20', 7.59, 833.62, 29.75, 81),
(986, '2024-05-16', '14:15:24', 7.55, 839.18, 29.81, 223),
(987, '2024-05-16', '14:15:28', 9.03, 719.38, 29.81, 223),
(988, '2024-05-16', '14:15:41', 5.45, 769.09, 29.69, 17),
(989, '2024-05-16', '14:15:45', 5.35, 762.07, 29.69, 18),
(990, '2024-05-16', '14:16:21', 5.81, 845.54, 29.69, 223),
(991, '2024-05-16', '14:16:26', 5.16, 771.44, 29.69, 72),
(992, '2024-05-16', '14:16:32', 5.54, 849.52, 29.69, 58),
(993, '2024-05-16', '14:16:49', 5.33, 827.27, 29.69, 223),
(994, '2024-05-16', '14:16:53', 4.9, 827.27, 29.75, 223),
(995, '2024-05-16', '14:16:57', 5.73, 823.32, 29.69, 223),
(996, '2024-05-16', '14:17:05', 6.31, 824.11, 29.69, 88),
(997, '2024-05-16', '14:17:24', 5.85, 838.38, 29.69, 157),
(998, '2024-05-16', '14:17:28', 5.64, 833.62, 29.69, 135),
(999, '2024-05-16', '14:17:37', 5.55, 835.21, 29.69, 113),
(1000, '2024-05-16', '14:17:41', 5.5, 836, 29.75, 223),
(1001, '2024-05-16', '14:17:45', 6.01, 833.62, 29.69, 223),
(1002, '2024-05-16', '14:17:49', 4.96, 836, 29.69, 223),
(1003, '2024-05-16', '14:18:01', 4.54, 836, 29.69, 223),
(1004, '2024-05-16', '14:18:05', 5.4, 828.86, 29.69, 145),
(1005, '2024-05-16', '14:18:12', 4.79, 821.73, 29.63, 223),
(1006, '2024-05-16', '14:18:28', 7.15, 909.87, 29.69, 79),
(1007, '2024-05-16', '14:18:32', 7.49, 904.18, 29.69, 29),
(1008, '2024-05-16', '14:18:36', 6.69, 899.32, 29.69, 55),
(1009, '2024-05-16', '14:18:43', 7.37, 899.32, 29.69, 92),
(1010, '2024-05-16', '14:18:47', 6.93, 1541.96, 29.69, 38),
(1011, '2024-05-16', '14:18:51', 7.63, 1532.29, 29.69, 41),
(1012, '2024-05-16', '14:18:54', 7.27, 337.58, 29.69, 223),
(1013, '2024-05-16', '14:18:58', 7.45, 32.19, 29.56, 168),
(1014, '2024-05-16', '14:19:02', 7.43, 0, 29.31, 50),
(1015, '2024-05-16', '14:19:06', 7.2, 0, 29.06, 223),
(1016, '2024-05-16', '14:19:11', 7.46, 0, 28.81, 223),
(1017, '2024-05-16', '14:19:21', 7.52, 0, 28.06, 202),
(1018, '2024-05-16', '14:19:29', 7.25, 0, 27.5, 223),
(1019, '2024-05-16', '14:19:33', 7.67, 0, 27.31, 168),
(1020, '2024-05-16', '14:19:52', 7.3, 0, 26.69, 42),
(1021, '2024-05-16', '14:20:01', 7.63, 0, 26.56, 190),
(1022, '2024-05-16', '14:20:05', 7.48, 0, 26.44, 223),
(1023, '2024-05-16', '14:20:09', 7.4, 0, 26.31, 223),
(1024, '2024-05-16', '14:20:17', 7.4, 0, 26.31, 223),
(1025, '2024-05-16', '14:20:21', 7.74, 0, 26.25, 33),
(1026, '2024-05-16', '14:20:25', 7.24, 0, 26.25, 85),
(1027, '2024-05-16', '14:20:30', 7.48, 0, 26.19, 57),
(1028, '2024-05-16', '14:20:33', 7.45, 845.54, 26.62, 179),
(1029, '2024-05-16', '14:20:37', 7.46, 829.65, 27.19, 27),
(1030, '2024-05-16', '14:20:54', 8.11, 834.41, 28, 145),
(1031, '2024-05-16', '14:21:53', 7.56, 770.66, 28.31, 223),
(1032, '2024-05-16', '14:21:58', 7.5, 754.28, 28.38, 30),
(1033, '2024-05-16', '14:22:10', 7.75, 861.5, 28.31, 22),
(1034, '2024-05-16', '14:22:38', 7.63, 792.58, 28.38, 223),
(1035, '2024-05-16', '14:22:42', 7, 830.44, 28.38, 135),
(1036, '2024-05-16', '14:22:53', 7.3, 832.82, 28.44, 223),
(1037, '2024-05-16', '14:22:57', 6.69, 799.65, 28.44, 223),
(1038, '2024-05-16', '14:23:01', 7, 834.41, 28.44, 223),
(1039, '2024-05-16', '14:23:05', 7.3, 825.69, 28.44, 223),
(1040, '2024-05-16', '14:23:36', 6.59, 839.18, 28.5, 223),
(1041, '2024-05-16', '14:23:51', 3.46, 873.52, 28.44, 223),
(1042, '2024-05-16', '14:23:58', 3.6, 328.99, 28.31, 101),
(1043, '2024-05-16', '14:24:02', 3.56, 0, 28.19, 31),
(1044, '2024-05-16', '14:24:06', 3.66, 0, 28.06, 102),
(1045, '2024-05-16', '14:24:10', 3.53, 0, 27.94, 128),
(1046, '2024-05-16', '14:24:14', 3.34, 0, 27.75, 139),
(1047, '2024-05-16', '14:24:17', 3.35, 0, 27.62, 147),
(1048, '2024-05-16', '14:24:21', 3.5, 0, 27.5, 74),
(1049, '2024-05-16', '14:24:30', 3.38, 0, 27.06, 154),
(1050, '2024-05-16', '14:24:34', 3.27, 0, 26.87, 115),
(1051, '2024-05-16', '14:24:39', 3.51, 0, 26.75, 16),
(1052, '2024-05-16', '14:24:42', 3.34, 0, 26.69, 127),
(1053, '2024-05-16', '14:24:50', 3.54, 0, 26.44, 88),
(1054, '2024-05-16', '14:24:54', 3.53, 0, 26.44, 72),
(1055, '2024-05-16', '14:24:58', 3.43, 0, 26.44, 216),
(1056, '2024-05-16', '14:25:02', 3.45, 0, 26.37, 165),
(1057, '2024-05-16', '14:25:08', 3.34, 0, 26.31, 223),
(1058, '2024-05-16', '14:25:16', 3.42, 0, 26.19, 1),
(1059, '2024-05-16', '14:25:34', 3.4, 0, 26.12, 19),
(1060, '2024-05-16', '14:25:51', 3.3, 0, 26, 223),
(1061, '2024-05-16', '14:25:55', 3.51, 0, 26, 145),
(1062, '2024-05-16', '14:26:02', 3.35, 0, 26, 223),
(1063, '2024-05-16', '14:26:06', 3.34, 0, 26, 223),
(1064, '2024-05-16', '14:27:30', 6.83, 361.71, 29.56, 183),
(1065, '2024-05-16', '14:27:37', 6.16, 362.48, 29.56, 16),
(1066, '2024-05-16', '14:27:42', 6.06, 369.46, 29.63, 223),
(1067, '2024-05-16', '14:27:48', 6.16, 354.71, 29.63, 202),
(1068, '2024-05-16', '14:27:54', 6.02, 356.27, 29.56, 217),
(1069, '2024-05-16', '14:27:59', 5.76, 364.81, 29.56, 223),
(1070, '2024-05-16', '14:28:06', 6.46, 358.6, 29.56, 13),
(1071, '2024-05-16', '14:28:10', 6.46, 356.27, 29.63, 50),
(1072, '2024-05-16', '14:30:17', 7.29, 348.49, 29.5, 223),
(1073, '2024-05-16', '14:30:22', 7.07, 346.16, 29.5, 47),
(1074, '2024-05-16', '14:30:26', 7.13, 336.8, 29.5, 136),
(1075, '2024-05-16', '14:30:34', 6.69, 339.14, 29.56, 223),
(1076, '2024-05-16', '14:30:38', 7.3, 337.58, 29.56, 223),
(1077, '2024-05-16', '14:30:42', 7.04, 334.46, 29.56, 75),
(1078, '2024-05-16', '14:30:59', 7.64, 339.14, 29.63, 74),
(1079, '2024-05-16', '14:31:06', 6.92, 337.58, 29.5, 223),
(1080, '2024-05-16', '14:31:10', 7.4, 332.9, 29.5, 216),
(1081, '2024-05-16', '14:31:14', 7.1, 350.05, 29.56, 223),
(1082, '2024-05-16', '14:31:19', 5.23, 382.62, 29.5, 2),
(1083, '2024-05-16', '14:31:37', 3.39, 0, 28.62, 104),
(1084, '2024-05-16', '14:31:41', 3.19, 0, 28.44, 223),
(1085, '2024-05-16', '14:31:45', 3.22, 0, 28.25, 223),
(1086, '2024-05-16', '14:31:57', 3.19, 0, 27.75, 223),
(1087, '2024-05-16', '14:32:04', 3.4, 0, 27.56, 73),
(1088, '2024-05-16', '14:32:08', 3.15, 0, 27.31, 223),
(1089, '2024-05-16', '14:32:17', 3.38, 0, 27.13, 164),
(1090, '2024-05-16', '14:32:23', 3.36, 0, 27.06, 44),
(1091, '2024-05-16', '14:32:29', 3.08, 0, 27, 207),
(1092, '2024-05-16', '14:32:37', 3.32, 0, 26.81, 223),
(1093, '2024-05-16', '14:32:45', 3.16, 0, 26.75, 151),
(1094, '2024-05-16', '14:32:49', 3.27, 0, 26.69, 223),
(1095, '2024-05-16', '14:32:53', 3.43, 0, 26.69, 223),
(1096, '2024-05-16', '14:32:57', 3.36, 0, 26.62, 223),
(1097, '2024-05-16', '14:33:12', 3.14, 0, 26.56, 115),
(1098, '2024-05-16', '14:33:15', 3.53, 0, 26.5, 21),
(1099, '2024-05-16', '14:33:22', 3.29, 0, 26.5, 223),
(1100, '2024-05-16', '14:33:35', 2.97, 1107.94, 27.44, 223),
(1101, '2024-05-16', '14:34:35', 7.37, 1031.09, 29, 223),
(1102, '2024-05-16', '14:34:43', 6.16, 1030.24, 29, 223),
(1103, '2024-05-16', '14:34:55', 6.84, 1030.24, 28.94, 98),
(1104, '2024-05-16', '14:35:20', 6.19, 1031.09, 28.94, 223),
(1105, '2024-05-16', '14:35:24', 6.88, 1026.84, 28.94, 68),
(1106, '2024-05-16', '14:35:28', 7.45, 1024.3, 28.94, 223),
(1107, '2024-05-16', '14:35:33', 7.28, 1022.6, 28.87, 223),
(1108, '2024-05-16', '14:35:53', 6.62, 1029.39, 28.87, 223),
(1109, '2024-05-16', '14:36:12', 6.84, 1018.37, 28.94, 223),
(1110, '2024-05-16', '14:36:20', 6.93, 1018.37, 29, 223),
(1111, '2024-05-16', '14:36:37', 6.24, 1021.76, 29, 223),
(1112, '2024-05-16', '14:36:46', 7.21, 1019.22, 28.94, 223),
(1113, '2024-05-16', '14:36:50', 6.73, 1021.76, 29, 105),
(1114, '2024-05-16', '14:36:54', 6.96, 1016.68, 28.94, 223),
(1115, '2024-05-16', '14:36:58', 6.89, 1014.99, 29, 223),
(1116, '2024-05-16', '14:37:14', 6.54, 1017.53, 28.94, 223),
(1117, '2024-05-16', '14:37:22', 6.33, 1015.84, 29, 223),
(1118, '2024-05-16', '14:37:27', 6.87, 1015.84, 28.94, 223),
(1119, '2024-05-16', '14:37:48', 7.43, 1014.15, 28.94, 223),
(1120, '2024-05-16', '14:38:02', 6.03, 1020.91, 29, 223),
(1121, '2024-05-16', '14:38:09', 6.16, 1015.84, 28.94, 83),
(1122, '2024-05-16', '14:38:13', 3.35, 1087.84, 28.94, 223),
(1123, '2024-05-16', '14:38:25', 3.13, 0, 28.44, 223),
(1124, '2024-05-16', '14:38:31', 3.24, 0, 28.19, 8),
(1125, '2024-05-16', '14:38:35', 3.22, 0, 27.69, 7),
(1126, '2024-05-16', '14:38:43', 3.12, 0, 27.44, 223),
(1127, '2024-05-16', '14:38:48', 3.04, 0, 27.25, 223),
(1128, '2024-05-16', '14:38:56', 2.99, 0, 27.13, 223),
(1129, '2024-05-16', '14:39:00', 3.05, 0, 27.06, 48),
(1130, '2024-05-16', '14:39:08', 3.44, 0, 26.94, 223),
(1131, '2024-05-16', '14:39:21', 2.9, 0, 26.94, 146),
(1132, '2024-05-16', '14:39:29', 3, 0, 26.81, 88),
(1133, '2024-05-16', '14:39:42', 3.04, 0, 26.81, 223),
(1134, '2024-05-16', '14:39:51', 3.76, 0, 26.75, 197),
(1135, '2024-05-16', '14:39:55', 2.9, 0, 26.75, 223),
(1136, '2024-05-16', '14:40:12', 3.28, 0, 26.69, 223),
(1137, '2024-05-16', '14:40:17', 2.84, 0, 26.75, 110),
(1138, '2024-05-16', '14:40:22', 2.92, 0, 26.75, 223),
(1139, '2024-05-16', '14:40:26', 3.05, 0, 26.75, 19),
(1140, '2024-05-16', '14:40:30', 3.52, 0, 26.69, 32),
(1141, '2024-05-16', '14:40:46', 3.39, 0, 26.75, 223),
(1142, '2024-05-16', '14:40:50', 3.55, 0, 26.75, 44),
(1143, '2024-05-16', '14:41:01', 3.45, 0, 26.75, 223),
(1144, '2024-05-16', '14:41:09', 2.9, 0, 26.81, 39),
(1145, '2024-05-16', '14:41:13', 3.31, 1547.34, 27.19, 223),
(1146, '2024-05-16', '14:41:21', 2.96, 1554.91, 29.25, 223),
(1147, '2024-05-16', '14:41:30', 11.9, 1561.41, 30.12, 223),
(1148, '2024-05-16', '14:42:22', 11.08, 1565.76, 30.5, 206),
(1149, '2024-05-16', '14:42:30', 11.52, 1550.58, 30.5, 160),
(1150, '2024-05-16', '14:42:34', 11.53, 1618.65, 30.5, 223),
(1151, '2024-05-16', '14:42:42', 12, 1565.76, 30.56, 74),
(1152, '2024-05-16', '14:42:46', 11.67, 1553.82, 30.5, 223),
(1153, '2024-05-16', '14:42:50', 11.15, 1550.58, 30.56, 223),
(1154, '2024-05-16', '14:42:54', 11.17, 1569.03, 30.56, 223),
(1155, '2024-05-16', '14:42:57', 11.17, 1639.95, 30.56, 223),
(1156, '2024-05-16', '14:43:01', 11.16, 1548.42, 30.5, 223),
(1157, '2024-05-16', '14:43:10', 10.95, 1550.58, 30.5, 223),
(1158, '2024-05-16', '14:43:14', 11.39, 1546.26, 30.5, 164),
(1159, '2024-05-16', '14:43:18', 10.94, 1557.07, 30.44, 139),
(1160, '2024-05-16', '14:43:37', 11.94, 1563.58, 30.56, 223),
(1161, '2024-05-16', '14:43:41', 11.14, 1550.58, 30.5, 223),
(1162, '2024-05-16', '14:44:01', 4.97, 0, 29.19, 161),
(1163, '2024-05-16', '14:44:05', 5.16, 0, 28.87, 191),
(1164, '2024-05-16', '14:44:09', 4.99, 0, 28.5, 4),
(1165, '2024-05-16', '14:44:12', 4.93, 0, 28.25, 88),
(1166, '2024-05-16', '14:44:16', 4.91, 0, 27.94, 207),
(1167, '2024-05-16', '14:44:24', 4.67, 0, 27.62, 51),
(1168, '2024-05-16', '14:44:28', 5, 0, 27.44, 6),
(1169, '2024-05-16', '14:44:32', 4.74, 0, 27.25, 74),
(1170, '2024-05-16', '14:44:40', 4.57, 0, 26.94, 32),
(1171, '2024-05-16', '14:44:44', 4.61, 0, 26.81, 85),
(1172, '2024-05-16', '15:08:25', 4.96, 0, 30.88, 207),
(1173, '2024-05-16', '15:08:29', 3.96, 0, 30.88, 9),
(1174, '2024-05-16', '15:08:32', 4.25, 1142.43, 30.81, 223),
(1175, '2024-05-16', '15:08:36', 4.08, 1031.09, 30.37, 18),
(1176, '2024-05-16', '15:08:43', 4.92, 978.1, 29.94, 223),
(1177, '2024-05-16', '15:09:42', 5.91, 1102.68, 28.69, 10),
(1178, '2024-05-16', '15:09:51', 4.63, 1073.09, 28.69, 220),
(1179, '2024-05-16', '15:09:55', 3.88, 1064.46, 28.69, 223),
(1180, '2024-05-16', '15:10:03', 4.09, 1094.81, 28.69, 109),
(1181, '2024-05-16', '15:10:06', 4.85, 1043.87, 28.69, 223),
(1182, '2024-05-16', '15:10:13', 4.8, 1063.6, 28.69, 223),
(1183, '2024-05-16', '15:10:17', 4.94, 1002.36, 28.62, 223),
(1184, '2024-05-16', '15:10:21', 4.29, 973.11, 28.69, 4),
(1185, '2024-05-16', '15:10:30', 3.73, 990.62, 28.62, 223),
(1186, '2024-05-16', '15:10:35', 4.83, 989.79, 28.62, 223),
(1187, '2024-05-16', '15:10:44', 1.91, 851.92, 28.69, 223),
(1188, '2024-05-16', '15:10:48', 2.8, 0, 28.62, 52);

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
-- Indexes for table `data_iot`
--
ALTER TABLE `data_iot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_iot`
--
ALTER TABLE `data_iot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
