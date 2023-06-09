-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 08:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gold`
--

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(20) NOT NULL,
  `time` time NOT NULL,
  `name` varchar(255) NOT NULL,
  `purchase_price` int(10) NOT NULL,
  `sell_off_price` int(10) NOT NULL,
  `user_name_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `time`, `name`, `purchase_price`, `sell_off_price`, `user_name_update`) VALUES
(999, '14:10:00', 'GoldSpot', 1991, 1992, 'data'),
(1000, '14:10:00', 'Silver', 25, 25, 'data'),
(1001, '14:10:00', 'THB', 34, 34, 'data'),
(1002, '14:10:00', 'สมาคมฯ', 32110, 32200, 'data'),
(1003, '14:10:00', '96.5%', 31978, 31994, 'data'),
(1004, '14:10:00', '99.99%', 33141, 33158, 'data'),
(1005, '14:10:00', 'GFM23', 32220, 32230, 'data'),
(1006, '14:10:00', 'GFQ23', 32300, 32310, 'data'),
(1007, '14:10:00', 'GFV23', 32380, 32390, 'data'),
(1008, '14:10:00', 'SVM23', 856, 859, 'data'),
(1009, '14:10:00', 'SVQ23', 858, 861, 'data'),
(1010, '14:10:00', 'SVV23', 860, 863, 'data'),
(1011, '14:10:00', 'GFPTM23-curr', 0, 10, 'data'),
(1012, '14:10:00', 'GF10M23-curr', 0, 32260, 'data'),
(1013, '14:10:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1014, '14:10:00', 'GF10V23-curr', 0, 32420, 'data'),
(1015, '14:10:00', 'GFM23-curr', 0, 32230, 'data'),
(1016, '14:10:00', 'GFQ23-curr', 0, 32360, 'data'),
(1017, '14:10:00', 'GFV23-curr', 0, 0, 'data'),
(1018, '14:10:00', 'SVFM23-curr', 0, 25, 'data'),
(1019, '14:10:00', 'SVFU23-curr', 0, 25, 'data'),
(1023, '14:12:00', 'GoldSpot', 1991, 1992, 'data'),
(1024, '14:12:00', 'Silver', 25, 25, 'data'),
(1025, '14:12:00', 'THB', 34, 34, 'data'),
(1026, '14:13:00', 'GoldSpot', 1991, 1992, 'data'),
(1027, '14:13:00', 'Silver', 25, 25, 'data'),
(1028, '14:13:00', 'THB', 34, 34, 'data'),
(1029, '14:15:00', 'GoldSpot', 1991, 1992, 'data'),
(1030, '14:15:00', 'Silver', 25, 25, 'data'),
(1031, '14:15:00', 'THB', 34, 34, 'data'),
(1032, '14:15:00', 'สมาคมฯ', 32150, 32200, 'data'),
(1033, '14:15:00', '96.5%', 31978, 31994, 'data'),
(1034, '14:15:00', '99.99%', 33141, 33158, 'data'),
(1035, '14:15:00', 'GFM23', 32220, 32230, 'data'),
(1036, '14:15:00', 'GFQ23', 32300, 32310, 'data'),
(1037, '14:15:00', 'GFV23', 32380, 32390, 'data'),
(1038, '14:15:00', 'SVM23', 856, 859, 'data'),
(1039, '14:15:00', 'SVQ23', 858, 861, 'data'),
(1040, '14:15:00', 'SVV23', 860, 863, 'data'),
(1041, '14:15:00', 'GFPTM23-curr', 0, 10, 'data'),
(1042, '14:15:00', 'GF10M23-curr', 0, 32260, 'data'),
(1043, '14:15:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1044, '14:15:00', 'GF10V23-curr', 0, 32420, 'data'),
(1045, '14:15:00', 'GFM23-curr', 0, 32230, 'data'),
(1046, '14:15:00', 'GFQ23-curr', 0, 32360, 'data'),
(1047, '14:15:00', 'GFV23-curr', 0, 0, 'data'),
(1048, '14:15:00', 'SVFM23-curr', 0, 25, 'data'),
(1049, '14:15:00', 'SVFU23-curr', 0, 25, 'data'),
(1050, '14:16:00', 'GoldSpot', 1991, 1992, 'data'),
(1051, '14:16:00', 'Silver', 25, 25, 'data'),
(1052, '14:16:00', 'THB', 34, 34, 'data'),
(1053, '14:16:00', 'สมาคมฯ', 32160, 32200, 'data'),
(1054, '14:16:00', '96.5%', 31978, 31994, 'data'),
(1055, '14:16:00', '99.99%', 33141, 33158, 'data'),
(1056, '14:16:00', 'GFM23', 32220, 32230, 'data'),
(1057, '14:16:00', 'GFQ23', 32300, 32310, 'data'),
(1058, '14:16:00', 'GFV23', 32380, 32390, 'data'),
(1059, '14:16:00', 'SVM23', 856, 859, 'data'),
(1060, '14:16:00', 'SVQ23', 858, 861, 'data'),
(1061, '14:16:00', 'SVV23', 860, 863, 'data'),
(1062, '14:16:00', 'GFPTM23-curr', 0, 10, 'data'),
(1063, '14:16:00', 'GF10M23-curr', 0, 32260, 'data'),
(1064, '14:16:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1065, '14:16:00', 'GF10V23-curr', 0, 32420, 'data'),
(1066, '14:16:00', 'GFM23-curr', 0, 32230, 'data'),
(1067, '14:16:00', 'GFQ23-curr', 0, 32360, 'data'),
(1068, '14:16:00', 'GFV23-curr', 0, 0, 'data'),
(1069, '14:16:00', 'SVFM23-curr', 0, 25, 'data'),
(1070, '14:16:00', 'SVFU23-curr', 0, 25, 'data'),
(1071, '14:20:00', 'GoldSpot', 1991, 1992, 'data'),
(1072, '14:20:00', 'Silver', 25, 25, 'data'),
(1073, '14:20:00', 'THB', 34, 34, 'data'),
(1074, '14:20:00', 'สมาคมฯ', 32101, 32200, 'data'),
(1075, '14:20:00', '96.5%', 31978, 31994, 'data'),
(1076, '14:20:00', '99.99%', 33141, 33158, 'data'),
(1077, '14:20:00', 'GFM23', 32220, 32230, 'data'),
(1078, '14:20:00', 'GFQ23', 32300, 32310, 'data'),
(1079, '14:20:00', 'GFV23', 32380, 32390, 'data'),
(1080, '14:20:00', 'SVM23', 856, 859, 'data'),
(1081, '14:20:00', 'SVQ23', 858, 861, 'data'),
(1082, '14:20:00', 'SVV23', 860, 863, 'data'),
(1083, '14:20:00', 'GFPTM23-curr', 0, 10, 'data'),
(1084, '14:20:00', 'GF10M23-curr', 0, 32260, 'data'),
(1085, '14:20:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1086, '14:20:00', 'GF10V23-curr', 0, 32420, 'data'),
(1087, '14:20:00', 'GFM23-curr', 0, 32230, 'data'),
(1088, '14:20:00', 'GFQ23-curr', 0, 32360, 'data'),
(1089, '14:20:00', 'GFV23-curr', 0, 0, 'data'),
(1090, '14:20:00', 'SVFM23-curr', 0, 25, 'data'),
(1091, '14:20:00', 'SVFU23-curr', 0, 25, 'data'),
(1092, '14:22:00', 'GoldSpot', 1991, 1992, 'data'),
(1093, '14:22:00', 'Silver', 25, 25, 'data'),
(1094, '14:22:00', 'THB', 34, 34, 'data'),
(1095, '14:22:00', 'สมาคมฯ', 32100, 32200, 'data'),
(1096, '14:22:00', '96.5%', 31978, 31994, 'data'),
(1097, '14:22:00', '99.99%', 33141, 33158, 'data'),
(1098, '14:22:00', 'GFM23', 32220, 32230, 'data'),
(1099, '14:22:00', 'GFQ23', 32300, 32310, 'data'),
(1100, '14:22:00', 'GFV23', 32380, 32390, 'data'),
(1101, '14:22:00', 'SVM23', 856, 859, 'data'),
(1102, '14:22:00', 'SVQ23', 858, 861, 'data'),
(1103, '14:22:00', 'SVV23', 860, 863, 'data'),
(1104, '14:22:00', 'GFPTM23-curr', 0, 10, 'data'),
(1105, '14:22:00', 'GF10M23-curr', 0, 32260, 'data'),
(1106, '14:22:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1107, '14:22:00', 'GF10V23-curr', 0, 32420, 'data'),
(1108, '14:22:00', 'GFM23-curr', 0, 32230, 'data'),
(1109, '14:22:00', 'GFQ23-curr', 0, 32360, 'data'),
(1110, '14:22:00', 'GFV23-curr', 0, 0, 'data'),
(1111, '14:22:00', 'SVFM23-curr', 0, 25, 'data'),
(1112, '14:22:00', 'SVFU23-curr', 0, 25, 'data'),
(1113, '14:23:00', 'GoldSpot', 1991, 1992, 'data'),
(1114, '14:23:00', 'Silver', 25, 25, 'data'),
(1115, '14:23:00', 'THB', 34, 34, 'data'),
(1116, '14:23:00', 'สมาคมฯ', 32100, 32200, 'data'),
(1117, '14:23:00', '96.5%', 31978, 31994, 'data'),
(1118, '14:23:00', '99.99%', 33141, 33158, 'data'),
(1119, '14:23:00', 'GFM23', 32220, 32230, 'data'),
(1120, '14:23:00', 'GFQ23', 32300, 32310, 'data'),
(1121, '14:23:00', 'GFV23', 32380, 32390, 'data'),
(1122, '14:23:00', 'SVM23', 856, 859, 'data'),
(1123, '14:23:00', 'SVQ23', 858, 861, 'data'),
(1124, '14:23:00', 'SVV23', 860, 863, 'data'),
(1125, '14:23:00', 'GFPTM23-curr', 0, 10, 'data'),
(1126, '14:23:00', 'GF10M23-curr', 0, 32260, 'data'),
(1127, '14:23:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1128, '14:23:00', 'GF10V23-curr', 0, 32420, 'data'),
(1129, '14:23:00', 'GFM23-curr', 0, 32230, 'data'),
(1130, '14:23:00', 'GFQ23-curr', 0, 32360, 'data'),
(1131, '14:23:00', 'GFV23-curr', 0, 0, 'data'),
(1132, '14:23:00', 'SVFM23-curr', 0, 25, 'data'),
(1133, '14:23:00', 'SVFU23-curr', 0, 25, 'data'),
(1165, '15:05:00', 'GoldSpot', 1991, 1992, 'data'),
(1166, '15:05:00', 'Silver', 25, 25, 'data'),
(1167, '15:05:00', 'THB', 34, 34, 'data'),
(1168, '15:05:00', 'สมาคมฯ', 32100, 32200, 'data'),
(1169, '15:05:00', '96.5%', 31978, 31994, 'data'),
(1170, '15:05:00', '99.99%', 33141, 33158, 'data'),
(1171, '15:05:00', 'GFM23', 32220, 32230, 'data'),
(1172, '15:05:00', 'GFQ23', 32300, 32310, 'data'),
(1173, '15:05:00', 'GFV23', 32380, 32390, 'data'),
(1174, '15:05:00', 'SVM23', 856, 859, 'data'),
(1175, '15:05:00', 'SVQ23', 858, 861, 'data'),
(1176, '15:05:00', 'SVV23', 860, 863, 'data'),
(1177, '15:05:00', 'GFPTM23-curr', 0, 10, 'data'),
(1178, '15:05:00', 'GF10M23-curr', 0, 32260, 'data'),
(1179, '15:05:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1180, '15:05:00', 'GF10V23-curr', 0, 32420, 'data'),
(1181, '15:05:00', 'GFM23-curr', 0, 32230, 'data'),
(1182, '15:05:00', 'GFQ23-curr', 0, 32360, 'data'),
(1183, '15:05:00', 'GFV23-curr', 0, 0, 'data'),
(1184, '15:05:00', 'SVFM23-curr', 0, 25, 'data'),
(1185, '15:05:00', 'SVFU23-curr', 0, 25, 'data'),
(1189, '16:10:00', 'Apple', 100, 105, 'ball'),
(1190, '16:10:00', 'Microsoft', 150, 152, 'ball'),
(1191, '16:10:00', 'Amazon', 300, 350, 'ball'),
(1197, '16:32:00', 'GoldSpot', 1991, 1992, 'data'),
(1198, '16:32:00', 'Silver', 25, 25, 'data'),
(1199, '16:32:00', 'THB', 34, 34, 'data'),
(1200, '16:32:00', 'สมาคมฯ', 32100, 32200, 'data'),
(1201, '16:32:00', '96.5%', 31978, 31994, 'data'),
(1202, '16:32:00', '99.99%', 33141, 33158, 'data'),
(1203, '16:32:00', 'GFM23', 32220, 32230, 'data'),
(1204, '16:32:00', 'GFQ23', 32300, 32310, 'data'),
(1205, '16:32:00', 'GFV23', 32380, 32390, 'data'),
(1206, '16:32:00', 'SVM23', 856, 859, 'data'),
(1207, '16:32:00', 'SVQ23', 858, 861, 'data'),
(1208, '16:32:00', 'SVV23', 860, 863, 'data'),
(1209, '16:32:00', 'GFPTM23-curr', 0, 10, 'data'),
(1210, '16:32:00', 'GF10M23-curr', 0, 32260, 'data'),
(1211, '16:32:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1212, '16:32:00', 'GF10V23-curr', 0, 32420, 'data'),
(1213, '16:32:00', 'GFM23-curr', 0, 32230, 'data'),
(1214, '16:32:00', 'GFQ23-curr', 0, 32360, 'data'),
(1215, '16:32:00', 'GFV23-curr', 0, 0, 'data'),
(1216, '16:32:00', 'SVFM23-curr', 0, 25, 'data'),
(1217, '16:32:00', 'SVFU23-curr', 0, 25, 'data'),
(1218, '09:40:00', 'GoldSpot', 1984, 1985, 'data'),
(1219, '09:40:00', 'Silver', 25, 25, 'data'),
(1220, '09:40:00', 'THB', 34, 34, 'data'),
(1221, '09:40:00', 'สมาคมฯ', 32200, 32150, 'data'),
(1222, '09:40:00', '96.5%', 32062, 32078, 'data'),
(1223, '09:40:00', '99.99%', 33228, 33245, 'data'),
(1224, '09:40:00', 'GFM23', 32300, 32310, 'data'),
(1225, '09:40:00', 'GFQ23', 32380, 32400, 'data'),
(1226, '09:40:00', 'GFV23', 32460, 32480, 'data'),
(1227, '09:40:00', 'SVM23', 861, 864, 'data'),
(1228, '09:40:00', 'SVQ23', 863, 866, 'data'),
(1229, '09:40:00', 'SVV23', 865, 868, 'data'),
(1230, '09:40:00', 'GFPTM23-curr', 0, 10, 'data'),
(1231, '09:40:00', 'GF10M23-curr', 0, 32260, 'data'),
(1232, '09:40:00', 'GF10Q23-curr', 0, 32350, 'data'),
(1233, '09:40:00', 'GF10V23-curr', 0, 32420, 'data'),
(1234, '09:40:00', 'GFM23-curr', 0, 32230, 'data'),
(1235, '09:40:00', 'GFQ23-curr', 0, 32360, 'data'),
(1236, '09:40:00', 'GFV23-curr', 0, 0, 'data'),
(1237, '09:40:00', 'SVFM23-curr', 0, 25, 'data'),
(1238, '09:40:00', 'SVFU23-curr', 0, 25, 'data'),
(1239, '11:05:00', 'GoldSpot', 1982, 1983, 'data'),
(1240, '11:05:00', 'Silver', 25, 25, 'data'),
(1241, '11:05:00', 'THB', 34, 34, 'data'),
(1242, '11:05:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1243, '11:05:00', '96.5%', 32024, 32040, 'data'),
(1244, '11:05:00', '99.99%', 33189, 33205, 'data'),
(1245, '11:05:00', 'GFM23', 32260, 32270, 'data'),
(1246, '11:05:00', 'GFQ23', 32340, 32360, 'data'),
(1247, '11:05:00', 'GFV23', 32420, 32440, 'data'),
(1248, '11:05:00', 'SVM23', 853, 857, 'data'),
(1249, '11:05:00', 'SVQ23', 855, 859, 'data'),
(1250, '11:05:00', 'SVV23', 857, 861, 'data'),
(1251, '11:05:00', 'GFPTM23-curr', 0, 0, 'data'),
(1252, '11:05:00', 'GF10M23-curr', 0, 32310, 'data'),
(1253, '11:05:00', 'GF10Q23-curr', 0, 32390, 'data'),
(1254, '11:05:00', 'GF10V23-curr', 0, 32480, 'data'),
(1255, '11:05:00', 'GFM23-curr', 0, 32340, 'data'),
(1256, '11:05:00', 'GFQ23-curr', 0, 32470, 'data'),
(1257, '11:05:00', 'GFV23-curr', 0, 32460, 'data'),
(1258, '11:05:00', 'SVFM23-curr', 0, 25, 'data'),
(1259, '11:05:00', 'SVFU23-curr', 0, 25, 'data'),
(1260, '11:10:00', 'GoldSpot', 1982, 1983, 'data'),
(1261, '11:10:00', 'Silver', 25, 25, 'data'),
(1262, '11:10:00', 'THB', 34, 34, 'data'),
(1263, '11:10:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1264, '11:10:00', '96.5%', 32025, 32042, 'data'),
(1265, '11:10:00', '99.99%', 33190, 33207, 'data'),
(1266, '11:10:00', 'GFM23', 32260, 32280, 'data'),
(1267, '11:10:00', 'GFQ23', 32340, 32360, 'data'),
(1268, '11:10:00', 'GFV23', 32420, 32440, 'data'),
(1269, '11:10:00', 'SVM23', 854, 857, 'data'),
(1270, '11:10:00', 'SVQ23', 856, 859, 'data'),
(1271, '11:10:00', 'SVV23', 858, 861, 'data'),
(1272, '11:10:00', 'GFPTM23-curr', 0, 0, 'data'),
(1273, '11:10:00', 'GF10M23-curr', 0, 32330, 'data'),
(1274, '11:10:00', 'GF10Q23-curr', 0, 32400, 'data'),
(1275, '11:10:00', 'GF10V23-curr', 0, 32480, 'data'),
(1276, '11:10:00', 'GFM23-curr', 0, 32340, 'data'),
(1277, '11:10:00', 'GFQ23-curr', 0, 32470, 'data'),
(1278, '11:10:00', 'GFV23-curr', 0, 32460, 'data'),
(1279, '11:10:00', 'SVFM23-curr', 0, 25, 'data'),
(1280, '11:10:00', 'SVFU23-curr', 0, 25, 'data'),
(1281, '11:54:00', 'GoldSpot', 1982, 1983, 'data'),
(1282, '11:54:00', 'Silver', 25, 25, 'data'),
(1283, '11:54:00', 'THB', 34, 34, 'data'),
(1284, '11:54:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1285, '11:54:00', '96.5%', 32022, 32038, 'data'),
(1286, '11:54:00', '99.99%', 33187, 33204, 'data'),
(1287, '11:54:00', 'GFM23', 32260, 32270, 'data'),
(1288, '11:54:00', 'GFQ23', 32340, 32350, 'data'),
(1289, '11:54:00', 'GFV23', 32420, 32440, 'data'),
(1290, '11:54:00', 'SVM23', 853, 856, 'data'),
(1291, '11:54:00', 'SVQ23', 855, 858, 'data'),
(1292, '11:54:00', 'SVV23', 857, 860, 'data'),
(1293, '11:54:00', 'GFPTM23-curr', 0, 0, 'data'),
(1294, '11:54:00', 'GF10M23-curr', 0, 32310, 'data'),
(1295, '11:54:00', 'GF10Q23-curr', 0, 32410, 'data'),
(1296, '11:54:00', 'GF10V23-curr', 0, 32500, 'data'),
(1297, '11:54:00', 'GFM23-curr', 0, 32300, 'data'),
(1298, '11:54:00', 'GFQ23-curr', 0, 32470, 'data'),
(1299, '11:54:00', 'GFV23-curr', 0, 32500, 'data'),
(1300, '11:54:00', 'SVFM23-curr', 0, 25, 'data'),
(1301, '11:54:00', 'SVFU23-curr', 0, 25, 'data'),
(1302, '11:54:00', 'GoldSpot', 1982, 1983, 'data'),
(1303, '11:54:00', 'Silver', 25, 25, 'data'),
(1304, '11:54:00', 'THB', 34, 34, 'data'),
(1305, '11:54:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1306, '11:54:00', '96.5%', 32022, 32038, 'data'),
(1307, '11:54:00', '99.99%', 33187, 33204, 'data'),
(1308, '11:54:00', 'GFM23', 32260, 32270, 'data'),
(1309, '11:54:00', 'GFQ23', 32340, 32350, 'data'),
(1310, '11:54:00', 'GFV23', 32420, 32440, 'data'),
(1311, '11:54:00', 'SVM23', 853, 856, 'data'),
(1312, '11:54:00', 'SVQ23', 855, 858, 'data'),
(1313, '11:54:00', 'SVV23', 857, 860, 'data'),
(1314, '11:54:00', 'GFPTM23-curr', 0, 0, 'data'),
(1315, '11:54:00', 'GF10M23-curr', 0, 32310, 'data'),
(1316, '11:54:00', 'GF10Q23-curr', 0, 32410, 'data'),
(1317, '11:54:00', 'GF10V23-curr', 0, 32500, 'data'),
(1318, '11:54:00', 'GFM23-curr', 0, 32300, 'data'),
(1319, '11:54:00', 'GFQ23-curr', 0, 32470, 'data'),
(1320, '11:54:00', 'GFV23-curr', 0, 32500, 'data'),
(1321, '11:54:00', 'SVFM23-curr', 0, 25, 'data'),
(1322, '11:54:00', 'SVFU23-curr', 0, 25, 'data'),
(1323, '11:55:00', 'GoldSpot', 1982, 1983, 'data'),
(1324, '11:55:00', 'Silver', 25, 25, 'data'),
(1325, '11:55:00', 'THB', 34, 34, 'data'),
(1326, '11:55:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1327, '11:55:00', '96.5%', 32025, 32042, 'data'),
(1328, '11:55:00', '99.99%', 33190, 33207, 'data'),
(1329, '11:55:00', 'GFM23', 32260, 32280, 'data'),
(1330, '11:55:00', 'GFQ23', 32340, 32360, 'data'),
(1331, '11:55:00', 'GFV23', 32420, 32440, 'data'),
(1332, '11:55:00', 'SVM23', 853, 856, 'data'),
(1333, '11:55:00', 'SVQ23', 855, 858, 'data'),
(1334, '11:55:00', 'SVV23', 857, 860, 'data'),
(1335, '11:55:00', 'GFPTM23-curr', 0, 0, 'data'),
(1336, '11:55:00', 'GF10M23-curr', 0, 32310, 'data'),
(1337, '11:55:00', 'GF10Q23-curr', 0, 32410, 'data'),
(1338, '11:55:00', 'GF10V23-curr', 0, 32500, 'data'),
(1339, '11:55:00', 'GFM23-curr', 0, 32300, 'data'),
(1340, '11:55:00', 'GFQ23-curr', 0, 32470, 'data'),
(1341, '11:55:00', 'GFV23-curr', 0, 32500, 'data'),
(1342, '11:55:00', 'SVFM23-curr', 0, 25, 'data'),
(1343, '11:55:00', 'SVFU23-curr', 0, 25, 'data'),
(1344, '11:58:00', 'GoldSpot', 1982, 1983, 'data'),
(1345, '11:58:00', 'Silver', 25, 25, 'data'),
(1346, '11:58:00', 'THB', 34, 34, 'data'),
(1347, '11:58:00', 'สมาคมฯ', 32050, 32150, 'data'),
(1348, '11:58:00', '96.5%', 32027, 32043, 'data'),
(1349, '11:58:00', '99.99%', 33192, 33209, 'data'),
(1350, '11:58:00', 'GFM23', 32260, 32280, 'data'),
(1351, '11:58:00', 'GFQ23', 32340, 32360, 'data'),
(1352, '11:58:00', 'GFV23', 32420, 32440, 'data'),
(1353, '11:58:00', 'SVM23', 853, 856, 'data'),
(1354, '11:58:00', 'SVQ23', 855, 858, 'data'),
(1355, '11:58:00', 'SVV23', 857, 860, 'data'),
(1356, '11:58:00', 'GFPTM23-curr', 0, 0, 'data'),
(1357, '11:58:00', 'GF10M23-curr', 0, 32310, 'data'),
(1358, '11:58:00', 'GF10Q23-curr', 0, 32410, 'data'),
(1359, '11:58:00', 'GF10V23-curr', 0, 32500, 'data'),
(1360, '11:58:00', 'GFM23-curr', 0, 32300, 'data'),
(1361, '11:58:00', 'GFQ23-curr', 0, 32470, 'data'),
(1362, '11:58:00', 'GFV23-curr', 0, 32500, 'data'),
(1363, '11:58:00', 'SVFM23-curr', 0, 25, 'data'),
(1364, '11:58:00', 'SVFU23-curr', 0, 25, 'data');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `name`) VALUES
(1, 'ball@gmail.com', '$2y$10$vXzUPto.66gceaZyM2WNn.9HpOcjJsB649FYfHQDiTdhgPKiGdy4.', 0, 'i am ball'),
(5, 'test@gmail.com', '$2y$10$4P4wCQ5p6yxNKyJTyCqsQO832TNYCB9QeTQsbn4htdD95ZmCJO616', 0, 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1365;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
