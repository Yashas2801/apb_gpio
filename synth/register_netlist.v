/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Wed May  7 11:35:38 2025
/////////////////////////////////////////////////////////////


module register ( sys_clk, gpio_eclk, sys_rst, gpio_dat_i, gpio_addr, gpio_we, 
        in_pad_i, aux_i, out_pad_o, gpio_inta_o, gpio_dat_o, oen_padoe_o );
  input [31:0] gpio_dat_i;
  input [31:0] gpio_addr;
  input [31:0] in_pad_i;
  input [31:0] aux_i;
  output [31:0] out_pad_o;
  output [31:0] gpio_dat_o;
  output [31:0] oen_padoe_o;
  input sys_clk, gpio_eclk, sys_rst, gpio_we;
  output gpio_inta_o;
  wire   n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593,
         n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603,
         n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613,
         n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623,
         n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633,
         n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643,
         n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653,
         n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663,
         n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673,
         n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683,
         n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693,
         n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703,
         n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713,
         n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723,
         n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733,
         n1734, n1735;
  wire   [31:0] rgpio_out;
  wire   [31:0] rgpio_inte;
  wire   [31:0] rgpio_ptrig;
  wire   [31:0] rgpio_aux;
  wire   [31:0] rgpio_eclk;
  wire   [31:0] rgpio_nec;
  wire   [1:0] rgpio_ctrl;
  wire   [31:0] pextc_sampled;
  wire   [31:0] nextc_sampled;
  wire   [31:0] in_mux;
  wire   [31:0] rgpio_in;
  wire   [31:0] rgpio_ints;
  wire   [31:0] data_reg;

  FD2 \rgpio_out_reg[31]  ( .D(n1050), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[31]), .QN(n1701) );
  FD2 \rgpio_out_reg[30]  ( .D(n1049), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[30]), .QN(n1702) );
  FD2 \rgpio_out_reg[29]  ( .D(n1048), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[29]), .QN(n1703) );
  FD2 \rgpio_out_reg[28]  ( .D(n1047), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[28]), .QN(n1704) );
  FD2 \rgpio_out_reg[27]  ( .D(n1046), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[27]), .QN(n1705) );
  FD2 \rgpio_out_reg[26]  ( .D(n1045), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[26]), .QN(n1706) );
  FD2 \rgpio_out_reg[25]  ( .D(n1044), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[25]), .QN(n1707) );
  FD2 \rgpio_out_reg[24]  ( .D(n1043), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[24]), .QN(n1708) );
  FD2 \rgpio_out_reg[23]  ( .D(n1042), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[23]), .QN(n1709) );
  FD2 \rgpio_out_reg[22]  ( .D(n1041), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[22]), .QN(n1710) );
  FD2 \rgpio_out_reg[21]  ( .D(n1040), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[21]), .QN(n1711) );
  FD2 \rgpio_out_reg[20]  ( .D(n1039), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[20]), .QN(n1712) );
  FD2 \rgpio_out_reg[19]  ( .D(n1038), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[19]), .QN(n1713) );
  FD2 \rgpio_out_reg[18]  ( .D(n1037), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[18]), .QN(n1714) );
  FD2 \rgpio_out_reg[17]  ( .D(n1036), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[17]), .QN(n1715) );
  FD2 \rgpio_out_reg[16]  ( .D(n1035), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[16]), .QN(n1716) );
  FD2 \rgpio_out_reg[15]  ( .D(n1034), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[15]), .QN(n1717) );
  FD2 \rgpio_out_reg[14]  ( .D(n1033), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[14]), .QN(n1718) );
  FD2 \rgpio_out_reg[13]  ( .D(n1032), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[13]), .QN(n1719) );
  FD2 \rgpio_out_reg[12]  ( .D(n1031), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[12]), .QN(n1720) );
  FD2 \rgpio_out_reg[11]  ( .D(n1030), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[11]), .QN(n1721) );
  FD2 \rgpio_out_reg[10]  ( .D(n1029), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[10]), .QN(n1722) );
  FD2 \rgpio_out_reg[9]  ( .D(n1028), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[9]), .QN(n1723) );
  FD2 \rgpio_out_reg[8]  ( .D(n1027), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[8]), .QN(n1724) );
  FD2 \rgpio_out_reg[7]  ( .D(n1026), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[7]), .QN(n1725) );
  FD2 \rgpio_out_reg[6]  ( .D(n1025), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[6]), .QN(n1726) );
  FD2 \rgpio_out_reg[5]  ( .D(n1024), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[5]), .QN(n1727) );
  FD2 \rgpio_out_reg[4]  ( .D(n1023), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[4]), .QN(n1728) );
  FD2 \rgpio_out_reg[3]  ( .D(n1022), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[3]), .QN(n1729) );
  FD2 \rgpio_out_reg[2]  ( .D(n1021), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[2]), .QN(n1730) );
  FD2 \rgpio_out_reg[1]  ( .D(n1020), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[1]), .QN(n1731) );
  FD2 \rgpio_out_reg[0]  ( .D(n1019), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_out[0]), .QN(n1732) );
  FD2 \rgpio_inte_reg[31]  ( .D(n1018), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[31]) );
  FD2 \rgpio_inte_reg[30]  ( .D(n1017), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[30]) );
  FD2 \rgpio_inte_reg[29]  ( .D(n1016), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[29]) );
  FD2 \rgpio_inte_reg[28]  ( .D(n1015), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[28]) );
  FD2 \rgpio_inte_reg[27]  ( .D(n1014), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[27]) );
  FD2 \rgpio_inte_reg[26]  ( .D(n1013), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[26]) );
  FD2 \rgpio_inte_reg[25]  ( .D(n1012), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[25]) );
  FD2 \rgpio_inte_reg[24]  ( .D(n1011), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[24]) );
  FD2 \rgpio_inte_reg[23]  ( .D(n1010), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[23]) );
  FD2 \rgpio_inte_reg[22]  ( .D(n1009), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[22]) );
  FD2 \rgpio_inte_reg[21]  ( .D(n1008), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[21]) );
  FD2 \rgpio_inte_reg[20]  ( .D(n1007), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[20]) );
  FD2 \rgpio_inte_reg[19]  ( .D(n1006), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[19]) );
  FD2 \rgpio_inte_reg[18]  ( .D(n1005), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[18]) );
  FD2 \rgpio_inte_reg[17]  ( .D(n1004), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[17]) );
  FD2 \rgpio_inte_reg[16]  ( .D(n1003), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[16]) );
  FD2 \rgpio_inte_reg[15]  ( .D(n1002), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[15]) );
  FD2 \rgpio_inte_reg[14]  ( .D(n1001), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[14]) );
  FD2 \rgpio_inte_reg[13]  ( .D(n1000), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[13]) );
  FD2 \rgpio_inte_reg[12]  ( .D(n999), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[12]) );
  FD2 \rgpio_inte_reg[11]  ( .D(n998), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[11]) );
  FD2 \rgpio_inte_reg[10]  ( .D(n997), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[10]) );
  FD2 \rgpio_inte_reg[9]  ( .D(n996), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[9]) );
  FD2 \rgpio_inte_reg[8]  ( .D(n995), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[8]) );
  FD2 \rgpio_inte_reg[7]  ( .D(n994), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[7]) );
  FD2 \rgpio_inte_reg[6]  ( .D(n993), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[6]) );
  FD2 \rgpio_inte_reg[5]  ( .D(n992), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[5]) );
  FD2 \rgpio_inte_reg[4]  ( .D(n991), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[4]) );
  FD2 \rgpio_inte_reg[3]  ( .D(n990), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[3]) );
  FD2 \rgpio_inte_reg[2]  ( .D(n989), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[2]) );
  FD2 \rgpio_inte_reg[1]  ( .D(n988), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[1]) );
  FD2 \rgpio_inte_reg[0]  ( .D(n987), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_inte[0]) );
  FD2 \rgpio_oe_reg[31]  ( .D(n986), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[31]) );
  FD2 \rgpio_oe_reg[30]  ( .D(n985), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[30]) );
  FD2 \rgpio_oe_reg[29]  ( .D(n984), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[29]) );
  FD2 \rgpio_oe_reg[28]  ( .D(n983), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[28]) );
  FD2 \rgpio_oe_reg[27]  ( .D(n982), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[27]) );
  FD2 \rgpio_oe_reg[26]  ( .D(n981), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[26]) );
  FD2 \rgpio_oe_reg[25]  ( .D(n980), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[25]) );
  FD2 \rgpio_oe_reg[24]  ( .D(n979), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[24]) );
  FD2 \rgpio_oe_reg[23]  ( .D(n978), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[23]) );
  FD2 \rgpio_oe_reg[22]  ( .D(n977), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[22]) );
  FD2 \rgpio_oe_reg[21]  ( .D(n976), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[21]) );
  FD2 \rgpio_oe_reg[20]  ( .D(n975), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[20]) );
  FD2 \rgpio_oe_reg[19]  ( .D(n974), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[19]) );
  FD2 \rgpio_oe_reg[18]  ( .D(n973), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[18]) );
  FD2 \rgpio_oe_reg[17]  ( .D(n972), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[17]) );
  FD2 \rgpio_oe_reg[16]  ( .D(n971), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[16]) );
  FD2 \rgpio_oe_reg[15]  ( .D(n970), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[15]) );
  FD2 \rgpio_oe_reg[14]  ( .D(n969), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[14]) );
  FD2 \rgpio_oe_reg[13]  ( .D(n968), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[13]) );
  FD2 \rgpio_oe_reg[12]  ( .D(n967), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[12]) );
  FD2 \rgpio_oe_reg[11]  ( .D(n966), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[11]) );
  FD2 \rgpio_oe_reg[10]  ( .D(n965), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[10]) );
  FD2 \rgpio_oe_reg[9]  ( .D(n964), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[9]) );
  FD2 \rgpio_oe_reg[8]  ( .D(n963), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[8]) );
  FD2 \rgpio_oe_reg[7]  ( .D(n962), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[7]) );
  FD2 \rgpio_oe_reg[6]  ( .D(n961), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[6]) );
  FD2 \rgpio_oe_reg[5]  ( .D(n960), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[5]) );
  FD2 \rgpio_oe_reg[4]  ( .D(n959), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[4]) );
  FD2 \rgpio_oe_reg[3]  ( .D(n958), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[3]) );
  FD2 \rgpio_oe_reg[2]  ( .D(n957), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[2]) );
  FD2 \rgpio_oe_reg[1]  ( .D(n956), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[1]) );
  FD2 \rgpio_oe_reg[0]  ( .D(n955), .CP(sys_clk), .CD(sys_rst), .Q(
        oen_padoe_o[0]) );
  FD2 \rgpio_ptrig_reg[31]  ( .D(n954), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[31]), .QN(n1636) );
  FD2 \rgpio_ptrig_reg[30]  ( .D(n953), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[30]), .QN(n1637) );
  FD2 \rgpio_ptrig_reg[29]  ( .D(n952), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[29]), .QN(n1638) );
  FD2 \rgpio_ptrig_reg[28]  ( .D(n951), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[28]), .QN(n1639) );
  FD2 \rgpio_ptrig_reg[27]  ( .D(n950), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[27]), .QN(n1640) );
  FD2 \rgpio_ptrig_reg[26]  ( .D(n949), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[26]), .QN(n1641) );
  FD2 \rgpio_ptrig_reg[25]  ( .D(n948), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[25]), .QN(n1642) );
  FD2 \rgpio_ptrig_reg[24]  ( .D(n947), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[24]), .QN(n1643) );
  FD2 \rgpio_ptrig_reg[23]  ( .D(n946), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[23]), .QN(n1644) );
  FD2 \rgpio_ptrig_reg[22]  ( .D(n945), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[22]), .QN(n1645) );
  FD2 \rgpio_ptrig_reg[21]  ( .D(n944), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[21]), .QN(n1646) );
  FD2 \rgpio_ptrig_reg[20]  ( .D(n943), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[20]), .QN(n1647) );
  FD2 \rgpio_ptrig_reg[19]  ( .D(n942), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[19]), .QN(n1650) );
  FD2 \rgpio_ptrig_reg[18]  ( .D(n941), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[18]), .QN(n1651) );
  FD2 \rgpio_ptrig_reg[17]  ( .D(n940), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[17]), .QN(n1652) );
  FD2 \rgpio_ptrig_reg[16]  ( .D(n939), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[16]), .QN(n1653) );
  FD2 \rgpio_ptrig_reg[15]  ( .D(n938), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[15]), .QN(n1654) );
  FD2 \rgpio_ptrig_reg[14]  ( .D(n937), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[14]), .QN(n1655) );
  FD2 \rgpio_ptrig_reg[13]  ( .D(n936), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[13]), .QN(n1656) );
  FD2 \rgpio_ptrig_reg[12]  ( .D(n935), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[12]), .QN(n1657) );
  FD2 \rgpio_ptrig_reg[11]  ( .D(n934), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[11]), .QN(n1658) );
  FD2 \rgpio_ptrig_reg[10]  ( .D(n933), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[10]), .QN(n1659) );
  FD2 \rgpio_ptrig_reg[9]  ( .D(n932), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[9]), .QN(n1660) );
  FD2 \rgpio_ptrig_reg[8]  ( .D(n931), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[8]), .QN(n1661) );
  FD2 \rgpio_ptrig_reg[7]  ( .D(n930), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[7]), .QN(n1662) );
  FD2 \rgpio_ptrig_reg[6]  ( .D(n929), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[6]), .QN(n1663) );
  FD2 \rgpio_ptrig_reg[5]  ( .D(n928), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[5]), .QN(n1664) );
  FD2 \rgpio_ptrig_reg[4]  ( .D(n927), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[4]), .QN(n1665) );
  FD2 \rgpio_ptrig_reg[3]  ( .D(n926), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[3]), .QN(n1666) );
  FD2 \rgpio_ptrig_reg[2]  ( .D(n925), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[2]), .QN(n1667) );
  FD2 \rgpio_ptrig_reg[1]  ( .D(n924), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[1]), .QN(n1680) );
  FD2 \rgpio_ptrig_reg[0]  ( .D(n923), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ptrig[0]), .QN(n1681) );
  FD2 \rgpio_aux_reg[31]  ( .D(n922), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[31]) );
  FD2 \rgpio_aux_reg[30]  ( .D(n921), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[30]) );
  FD2 \rgpio_aux_reg[29]  ( .D(n920), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[29]) );
  FD2 \rgpio_aux_reg[28]  ( .D(n919), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[28]) );
  FD2 \rgpio_aux_reg[27]  ( .D(n918), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[27]) );
  FD2 \rgpio_aux_reg[26]  ( .D(n917), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[26]) );
  FD2 \rgpio_aux_reg[25]  ( .D(n916), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[25]) );
  FD2 \rgpio_aux_reg[24]  ( .D(n915), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[24]) );
  FD2 \rgpio_aux_reg[23]  ( .D(n914), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[23]) );
  FD2 \rgpio_aux_reg[22]  ( .D(n913), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[22]) );
  FD2 \rgpio_aux_reg[21]  ( .D(n912), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[21]) );
  FD2 \rgpio_aux_reg[20]  ( .D(n911), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[20]) );
  FD2 \rgpio_aux_reg[19]  ( .D(n910), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[19]) );
  FD2 \rgpio_aux_reg[18]  ( .D(n909), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[18]) );
  FD2 \rgpio_aux_reg[17]  ( .D(n908), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[17]) );
  FD2 \rgpio_aux_reg[16]  ( .D(n907), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[16]) );
  FD2 \rgpio_aux_reg[15]  ( .D(n906), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[15]) );
  FD2 \rgpio_aux_reg[14]  ( .D(n905), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[14]) );
  FD2 \rgpio_aux_reg[13]  ( .D(n904), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[13]) );
  FD2 \rgpio_aux_reg[12]  ( .D(n903), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[12]) );
  FD2 \rgpio_aux_reg[11]  ( .D(n902), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[11]) );
  FD2 \rgpio_aux_reg[10]  ( .D(n901), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[10]) );
  FD2 \rgpio_aux_reg[9]  ( .D(n900), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[9]) );
  FD2 \rgpio_aux_reg[8]  ( .D(n899), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[8]) );
  FD2 \rgpio_aux_reg[7]  ( .D(n898), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[7]) );
  FD2 \rgpio_aux_reg[6]  ( .D(n897), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[6]) );
  FD2 \rgpio_aux_reg[5]  ( .D(n896), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[5]) );
  FD2 \rgpio_aux_reg[4]  ( .D(n895), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[4]) );
  FD2 \rgpio_aux_reg[3]  ( .D(n894), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[3]) );
  FD2 \rgpio_aux_reg[2]  ( .D(n893), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[2]) );
  FD2 \rgpio_aux_reg[1]  ( .D(n892), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[1]) );
  FD2 \rgpio_aux_reg[0]  ( .D(n891), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_aux[0]) );
  FD2 \rgpio_eclk_reg[31]  ( .D(n890), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[31]) );
  FD2 \rgpio_eclk_reg[30]  ( .D(n889), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[30]) );
  FD2 \rgpio_eclk_reg[29]  ( .D(n888), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[29]) );
  FD2 \rgpio_eclk_reg[28]  ( .D(n887), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[28]) );
  FD2 \rgpio_eclk_reg[27]  ( .D(n886), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[27]) );
  FD2 \rgpio_eclk_reg[26]  ( .D(n885), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[26]) );
  FD2 \rgpio_eclk_reg[25]  ( .D(n884), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[25]) );
  FD2 \rgpio_eclk_reg[24]  ( .D(n883), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[24]) );
  FD2 \rgpio_eclk_reg[23]  ( .D(n882), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[23]) );
  FD2 \rgpio_eclk_reg[22]  ( .D(n881), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[22]) );
  FD2 \rgpio_eclk_reg[21]  ( .D(n880), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[21]) );
  FD2 \rgpio_eclk_reg[20]  ( .D(n879), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[20]) );
  FD2 \rgpio_eclk_reg[19]  ( .D(n878), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[19]) );
  FD2 \rgpio_eclk_reg[18]  ( .D(n877), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[18]) );
  FD2 \rgpio_eclk_reg[17]  ( .D(n876), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[17]) );
  FD2 \rgpio_eclk_reg[16]  ( .D(n875), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[16]) );
  FD2 \rgpio_eclk_reg[15]  ( .D(n874), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[15]) );
  FD2 \rgpio_eclk_reg[14]  ( .D(n873), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[14]) );
  FD2 \rgpio_eclk_reg[13]  ( .D(n872), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[13]) );
  FD2 \rgpio_eclk_reg[12]  ( .D(n871), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[12]) );
  FD2 \rgpio_eclk_reg[11]  ( .D(n870), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[11]) );
  FD2 \rgpio_eclk_reg[10]  ( .D(n869), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[10]) );
  FD2 \rgpio_eclk_reg[9]  ( .D(n868), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[9]) );
  FD2 \rgpio_eclk_reg[8]  ( .D(n867), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[8]) );
  FD2 \rgpio_eclk_reg[7]  ( .D(n866), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[7]) );
  FD2 \rgpio_eclk_reg[6]  ( .D(n865), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[6]) );
  FD2 \rgpio_eclk_reg[5]  ( .D(n864), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[5]) );
  FD2 \rgpio_eclk_reg[4]  ( .D(n863), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[4]) );
  FD2 \rgpio_eclk_reg[3]  ( .D(n862), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[3]) );
  FD2 \rgpio_eclk_reg[2]  ( .D(n861), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[2]) );
  FD2 \rgpio_eclk_reg[1]  ( .D(n860), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[1]) );
  FD2 \rgpio_eclk_reg[0]  ( .D(n859), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_eclk[0]) );
  FD2 \rgpio_nec_reg[31]  ( .D(n858), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[31]) );
  FD2 \rgpio_nec_reg[30]  ( .D(n857), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[30]) );
  FD2 \rgpio_nec_reg[29]  ( .D(n856), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[29]) );
  FD2 \rgpio_nec_reg[28]  ( .D(n855), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[28]) );
  FD2 \rgpio_nec_reg[27]  ( .D(n854), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[27]) );
  FD2 \rgpio_nec_reg[26]  ( .D(n853), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[26]) );
  FD2 \rgpio_nec_reg[25]  ( .D(n852), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[25]) );
  FD2 \rgpio_nec_reg[24]  ( .D(n851), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[24]) );
  FD2 \rgpio_nec_reg[23]  ( .D(n850), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[23]) );
  FD2 \rgpio_nec_reg[22]  ( .D(n849), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[22]) );
  FD2 \rgpio_nec_reg[21]  ( .D(n848), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[21]) );
  FD2 \rgpio_nec_reg[20]  ( .D(n847), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[20]) );
  FD2 \rgpio_nec_reg[19]  ( .D(n846), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[19]) );
  FD2 \rgpio_nec_reg[18]  ( .D(n845), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[18]) );
  FD2 \rgpio_nec_reg[17]  ( .D(n844), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[17]) );
  FD2 \rgpio_nec_reg[16]  ( .D(n843), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[16]) );
  FD2 \rgpio_nec_reg[15]  ( .D(n842), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[15]) );
  FD2 \rgpio_nec_reg[14]  ( .D(n841), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[14]) );
  FD2 \rgpio_nec_reg[13]  ( .D(n840), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[13]) );
  FD2 \rgpio_nec_reg[12]  ( .D(n839), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[12]) );
  FD2 \rgpio_nec_reg[11]  ( .D(n838), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[11]) );
  FD2 \rgpio_nec_reg[10]  ( .D(n837), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[10]) );
  FD2 \rgpio_nec_reg[9]  ( .D(n836), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[9]) );
  FD2 \rgpio_nec_reg[8]  ( .D(n835), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[8]) );
  FD2 \rgpio_nec_reg[7]  ( .D(n834), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[7]) );
  FD2 \rgpio_nec_reg[6]  ( .D(n833), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[6]) );
  FD2 \rgpio_nec_reg[5]  ( .D(n832), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[5]) );
  FD2 \rgpio_nec_reg[4]  ( .D(n831), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[4]) );
  FD2 \rgpio_nec_reg[3]  ( .D(n830), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[3]) );
  FD2 \rgpio_nec_reg[2]  ( .D(n829), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[2]) );
  FD2 \rgpio_nec_reg[1]  ( .D(n828), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[1]) );
  FD2 \rgpio_nec_reg[0]  ( .D(n827), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_nec[0]) );
  FD2 \rgpio_ctrl_reg[1]  ( .D(n1083), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ctrl[1]), .QN(n1682) );
  FD2 \pextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[31]) );
  FD2 \pextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[30]) );
  FD2 \pextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[29]) );
  FD2 \pextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[28]) );
  FD2 \pextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[27]) );
  FD2 \pextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[26]) );
  FD2 \pextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[25]) );
  FD2 \pextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[24]) );
  FD2 \pextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[23]) );
  FD2 \pextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[22]) );
  FD2 \pextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[21]) );
  FD2 \pextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[20]) );
  FD2 \pextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[19]) );
  FD2 \pextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[18]) );
  FD2 \pextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[17]) );
  FD2 \pextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[16]) );
  FD2 \pextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[15]) );
  FD2 \pextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[14]) );
  FD2 \pextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[13]) );
  FD2 \pextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[12]) );
  FD2 \pextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[11]) );
  FD2 \pextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[10]) );
  FD2 \pextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[9]) );
  FD2 \pextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[8]) );
  FD2 \pextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[7]) );
  FD2 \pextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[6]) );
  FD2 \pextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[5]) );
  FD2 \pextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[4]) );
  FD2 \pextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[3]) );
  FD2 \pextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[2]) );
  FD2 \pextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[1]) );
  FD2 \pextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(gpio_eclk), .CD(sys_rst), 
        .Q(pextc_sampled[0]) );
  FD2 \rgpio_in_reg[31]  ( .D(in_mux[31]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[31]), .QN(n1679) );
  FD2 \rgpio_in_reg[30]  ( .D(in_mux[30]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[30]), .QN(n1678) );
  FD2 \rgpio_in_reg[29]  ( .D(in_mux[29]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[29]), .QN(n1677) );
  FD2 \rgpio_in_reg[28]  ( .D(in_mux[28]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[28]), .QN(n1676) );
  FD2 \rgpio_in_reg[27]  ( .D(in_mux[27]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[27]), .QN(n1675) );
  FD2 \rgpio_in_reg[26]  ( .D(in_mux[26]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[26]), .QN(n1674) );
  FD2 \rgpio_in_reg[25]  ( .D(in_mux[25]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[25]), .QN(n1673) );
  FD2 \rgpio_in_reg[24]  ( .D(in_mux[24]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[24]), .QN(n1672) );
  FD2 \rgpio_in_reg[23]  ( .D(in_mux[23]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[23]), .QN(n1671) );
  FD2 \rgpio_in_reg[22]  ( .D(in_mux[22]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[22]), .QN(n1670) );
  FD2 \rgpio_in_reg[21]  ( .D(in_mux[21]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[21]), .QN(n1669) );
  FD2 \rgpio_in_reg[20]  ( .D(in_mux[20]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[20]), .QN(n1668) );
  FD2 \rgpio_in_reg[19]  ( .D(in_mux[19]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[19]), .QN(n1700) );
  FD2 \rgpio_in_reg[18]  ( .D(in_mux[18]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[18]), .QN(n1699) );
  FD2 \rgpio_in_reg[17]  ( .D(in_mux[17]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[17]), .QN(n1698) );
  FD2 \rgpio_in_reg[16]  ( .D(in_mux[16]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[16]), .QN(n1697) );
  FD2 \rgpio_in_reg[15]  ( .D(in_mux[15]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[15]), .QN(n1696) );
  FD2 \rgpio_in_reg[14]  ( .D(in_mux[14]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[14]), .QN(n1695) );
  FD2 \rgpio_in_reg[13]  ( .D(in_mux[13]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[13]), .QN(n1694) );
  FD2 \rgpio_in_reg[12]  ( .D(in_mux[12]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[12]), .QN(n1693) );
  FD2 \rgpio_in_reg[11]  ( .D(in_mux[11]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[11]), .QN(n1692) );
  FD2 \rgpio_in_reg[10]  ( .D(in_mux[10]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[10]), .QN(n1691) );
  FD2 \rgpio_in_reg[9]  ( .D(in_mux[9]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[9]), .QN(n1690) );
  FD2 \rgpio_in_reg[8]  ( .D(in_mux[8]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[8]), .QN(n1689) );
  FD2 \rgpio_in_reg[7]  ( .D(in_mux[7]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[7]), .QN(n1688) );
  FD2 \rgpio_in_reg[6]  ( .D(in_mux[6]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[6]), .QN(n1687) );
  FD2 \rgpio_in_reg[5]  ( .D(in_mux[5]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[5]), .QN(n1686) );
  FD2 \rgpio_in_reg[4]  ( .D(in_mux[4]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[4]), .QN(n1685) );
  FD2 \rgpio_in_reg[3]  ( .D(in_mux[3]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[3]), .QN(n1684) );
  FD2 \rgpio_in_reg[2]  ( .D(in_mux[2]), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_in[2]), .QN(n1683) );
  FD2 \rgpio_in_reg[1]  ( .D(in_mux[1]), .CP(sys_clk), .CD(sys_rst), .QN(n1649) );
  FD2 \rgpio_in_reg[0]  ( .D(in_mux[0]), .CP(sys_clk), .CD(sys_rst), .QN(n1648) );
  FD2 \rgpio_ints_reg[31]  ( .D(n1051), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[31]) );
  FD2 \rgpio_ints_reg[30]  ( .D(n1052), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[30]) );
  FD2 \rgpio_ints_reg[29]  ( .D(n1053), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[29]) );
  FD2 \rgpio_ints_reg[28]  ( .D(n1054), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[28]) );
  FD2 \rgpio_ints_reg[27]  ( .D(n1055), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[27]) );
  FD2 \rgpio_ints_reg[26]  ( .D(n1056), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[26]) );
  FD2 \rgpio_ints_reg[25]  ( .D(n1057), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[25]) );
  FD2 \rgpio_ints_reg[24]  ( .D(n1058), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[24]) );
  FD2 \rgpio_ints_reg[23]  ( .D(n1059), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[23]) );
  FD2 \rgpio_ints_reg[22]  ( .D(n1060), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[22]) );
  FD2 \rgpio_ints_reg[21]  ( .D(n1061), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[21]) );
  FD2 \rgpio_ints_reg[20]  ( .D(n1062), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[20]) );
  FD2 \rgpio_ints_reg[19]  ( .D(n1063), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[19]) );
  FD2 \rgpio_ints_reg[18]  ( .D(n1064), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[18]) );
  FD2 \rgpio_ints_reg[17]  ( .D(n1065), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[17]) );
  FD2 \rgpio_ints_reg[16]  ( .D(n1066), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[16]) );
  FD2 \rgpio_ints_reg[15]  ( .D(n1067), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[15]) );
  FD2 \rgpio_ints_reg[14]  ( .D(n1068), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[14]) );
  FD2 \rgpio_ints_reg[13]  ( .D(n1069), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[13]) );
  FD2 \rgpio_ints_reg[12]  ( .D(n1070), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[12]) );
  FD2 \rgpio_ints_reg[11]  ( .D(n1071), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[11]) );
  FD2 \rgpio_ints_reg[10]  ( .D(n1072), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[10]) );
  FD2 \rgpio_ints_reg[9]  ( .D(n1073), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[9]) );
  FD2 \rgpio_ints_reg[8]  ( .D(n1074), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[8]) );
  FD2 \rgpio_ints_reg[7]  ( .D(n1075), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[7]) );
  FD2 \rgpio_ints_reg[6]  ( .D(n1076), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[6]) );
  FD2 \rgpio_ints_reg[5]  ( .D(n1077), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[5]) );
  FD2 \rgpio_ints_reg[4]  ( .D(n1078), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[4]) );
  FD2 \rgpio_ints_reg[3]  ( .D(n1079), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[3]) );
  FD2 \rgpio_ints_reg[2]  ( .D(n1080), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[2]) );
  FD2 \rgpio_ints_reg[1]  ( .D(n1081), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[1]), .QN(n1734) );
  FD2 \rgpio_ints_reg[0]  ( .D(n1084), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ints[0]), .QN(n1733) );
  FD2 \rgpio_ctrl_reg[0]  ( .D(n1082), .CP(sys_clk), .CD(sys_rst), .Q(
        rgpio_ctrl[0]) );
  FD2 \gpio_dat_o_reg[31]  ( .D(data_reg[31]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[31]) );
  FD2 \gpio_dat_o_reg[30]  ( .D(data_reg[30]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[30]) );
  FD2 \gpio_dat_o_reg[29]  ( .D(data_reg[29]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[29]) );
  FD2 \gpio_dat_o_reg[28]  ( .D(data_reg[28]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[28]) );
  FD2 \gpio_dat_o_reg[27]  ( .D(data_reg[27]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[27]) );
  FD2 \gpio_dat_o_reg[26]  ( .D(data_reg[26]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[26]) );
  FD2 \gpio_dat_o_reg[25]  ( .D(data_reg[25]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[25]) );
  FD2 \gpio_dat_o_reg[24]  ( .D(data_reg[24]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[24]) );
  FD2 \gpio_dat_o_reg[23]  ( .D(data_reg[23]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[23]) );
  FD2 \gpio_dat_o_reg[22]  ( .D(data_reg[22]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[22]) );
  FD2 \gpio_dat_o_reg[21]  ( .D(data_reg[21]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[21]) );
  FD2 \gpio_dat_o_reg[20]  ( .D(data_reg[20]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[20]) );
  FD2 \gpio_dat_o_reg[19]  ( .D(data_reg[19]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[19]) );
  FD2 \gpio_dat_o_reg[18]  ( .D(data_reg[18]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[18]) );
  FD2 \gpio_dat_o_reg[17]  ( .D(data_reg[17]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[17]) );
  FD2 \gpio_dat_o_reg[16]  ( .D(data_reg[16]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[16]) );
  FD2 \gpio_dat_o_reg[15]  ( .D(data_reg[15]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[15]) );
  FD2 \gpio_dat_o_reg[14]  ( .D(data_reg[14]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[14]) );
  FD2 \gpio_dat_o_reg[13]  ( .D(data_reg[13]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[13]) );
  FD2 \gpio_dat_o_reg[12]  ( .D(data_reg[12]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[12]) );
  FD2 \gpio_dat_o_reg[11]  ( .D(data_reg[11]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[11]) );
  FD2 \gpio_dat_o_reg[10]  ( .D(data_reg[10]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[10]) );
  FD2 \gpio_dat_o_reg[9]  ( .D(data_reg[9]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[9]) );
  FD2 \gpio_dat_o_reg[8]  ( .D(data_reg[8]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[8]) );
  FD2 \gpio_dat_o_reg[7]  ( .D(data_reg[7]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[7]) );
  FD2 \gpio_dat_o_reg[6]  ( .D(data_reg[6]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[6]) );
  FD2 \gpio_dat_o_reg[5]  ( .D(data_reg[5]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[5]) );
  FD2 \gpio_dat_o_reg[4]  ( .D(data_reg[4]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[4]) );
  FD2 \gpio_dat_o_reg[3]  ( .D(data_reg[3]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[3]) );
  FD2 \gpio_dat_o_reg[2]  ( .D(data_reg[2]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[2]) );
  FD2 \gpio_dat_o_reg[1]  ( .D(data_reg[1]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[1]) );
  FD2 \gpio_dat_o_reg[0]  ( .D(data_reg[0]), .CP(sys_clk), .CD(sys_rst), .Q(
        gpio_dat_o[0]) );
  FD2 \nextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[31]) );
  FD2 \nextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[30]) );
  FD2 \nextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[29]) );
  FD2 \nextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[28]) );
  FD2 \nextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[27]) );
  FD2 \nextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[26]) );
  FD2 \nextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[25]) );
  FD2 \nextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[24]) );
  FD2 \nextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[23]) );
  FD2 \nextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[22]) );
  FD2 \nextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[21]) );
  FD2 \nextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[20]) );
  FD2 \nextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[19]) );
  FD2 \nextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[18]) );
  FD2 \nextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[17]) );
  FD2 \nextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[16]) );
  FD2 \nextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[15]) );
  FD2 \nextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[14]) );
  FD2 \nextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[13]) );
  FD2 \nextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[12]) );
  FD2 \nextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[11]) );
  FD2 \nextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(n1735), .CD(sys_rst), 
        .Q(nextc_sampled[10]) );
  FD2 \nextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[9]) );
  FD2 \nextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[8]) );
  FD2 \nextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[7]) );
  FD2 \nextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[6]) );
  FD2 \nextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[5]) );
  FD2 \nextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[4]) );
  FD2 \nextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[3]) );
  FD2 \nextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[2]) );
  FD2 \nextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[1]) );
  FD2 \nextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(n1735), .CD(sys_rst), .Q(
        nextc_sampled[0]) );
  IVP U1185 ( .A(gpio_eclk), .Z(n1735) );
  ND2 U1186 ( .A(aux_i[31]), .B(rgpio_aux[31]), .Z(n1086) );
  AO7 U1187 ( .A(rgpio_aux[31]), .B(n1701), .C(n1086), .Z(out_pad_o[31]) );
  ND2 U1188 ( .A(aux_i[30]), .B(rgpio_aux[30]), .Z(n1087) );
  AO7 U1189 ( .A(rgpio_aux[30]), .B(n1702), .C(n1087), .Z(out_pad_o[30]) );
  ND2 U1190 ( .A(aux_i[29]), .B(rgpio_aux[29]), .Z(n1088) );
  AO7 U1191 ( .A(rgpio_aux[29]), .B(n1703), .C(n1088), .Z(out_pad_o[29]) );
  ND2 U1192 ( .A(aux_i[28]), .B(rgpio_aux[28]), .Z(n1089) );
  AO7 U1193 ( .A(rgpio_aux[28]), .B(n1704), .C(n1089), .Z(out_pad_o[28]) );
  ND2 U1194 ( .A(aux_i[27]), .B(rgpio_aux[27]), .Z(n1090) );
  AO7 U1195 ( .A(rgpio_aux[27]), .B(n1705), .C(n1090), .Z(out_pad_o[27]) );
  ND2 U1196 ( .A(aux_i[26]), .B(rgpio_aux[26]), .Z(n1091) );
  AO7 U1197 ( .A(rgpio_aux[26]), .B(n1706), .C(n1091), .Z(out_pad_o[26]) );
  ND2 U1198 ( .A(aux_i[25]), .B(rgpio_aux[25]), .Z(n1092) );
  AO7 U1199 ( .A(rgpio_aux[25]), .B(n1707), .C(n1092), .Z(out_pad_o[25]) );
  ND2 U1200 ( .A(aux_i[24]), .B(rgpio_aux[24]), .Z(n1093) );
  AO7 U1201 ( .A(rgpio_aux[24]), .B(n1708), .C(n1093), .Z(out_pad_o[24]) );
  ND2 U1202 ( .A(aux_i[23]), .B(rgpio_aux[23]), .Z(n1094) );
  AO7 U1203 ( .A(rgpio_aux[23]), .B(n1709), .C(n1094), .Z(out_pad_o[23]) );
  ND2 U1204 ( .A(aux_i[22]), .B(rgpio_aux[22]), .Z(n1095) );
  AO7 U1205 ( .A(rgpio_aux[22]), .B(n1710), .C(n1095), .Z(out_pad_o[22]) );
  ND2 U1206 ( .A(aux_i[21]), .B(rgpio_aux[21]), .Z(n1096) );
  AO7 U1207 ( .A(rgpio_aux[21]), .B(n1711), .C(n1096), .Z(out_pad_o[21]) );
  ND2 U1208 ( .A(aux_i[20]), .B(rgpio_aux[20]), .Z(n1097) );
  AO7 U1209 ( .A(rgpio_aux[20]), .B(n1712), .C(n1097), .Z(out_pad_o[20]) );
  ND2 U1210 ( .A(aux_i[19]), .B(rgpio_aux[19]), .Z(n1098) );
  AO7 U1211 ( .A(rgpio_aux[19]), .B(n1713), .C(n1098), .Z(out_pad_o[19]) );
  ND2 U1212 ( .A(aux_i[18]), .B(rgpio_aux[18]), .Z(n1099) );
  AO7 U1213 ( .A(rgpio_aux[18]), .B(n1714), .C(n1099), .Z(out_pad_o[18]) );
  ND2 U1214 ( .A(aux_i[17]), .B(rgpio_aux[17]), .Z(n1100) );
  AO7 U1215 ( .A(rgpio_aux[17]), .B(n1715), .C(n1100), .Z(out_pad_o[17]) );
  ND2 U1216 ( .A(aux_i[16]), .B(rgpio_aux[16]), .Z(n1101) );
  AO7 U1217 ( .A(rgpio_aux[16]), .B(n1716), .C(n1101), .Z(out_pad_o[16]) );
  ND2 U1218 ( .A(aux_i[15]), .B(rgpio_aux[15]), .Z(n1102) );
  AO7 U1219 ( .A(rgpio_aux[15]), .B(n1717), .C(n1102), .Z(out_pad_o[15]) );
  ND2 U1220 ( .A(aux_i[14]), .B(rgpio_aux[14]), .Z(n1103) );
  AO7 U1221 ( .A(rgpio_aux[14]), .B(n1718), .C(n1103), .Z(out_pad_o[14]) );
  ND2 U1222 ( .A(aux_i[13]), .B(rgpio_aux[13]), .Z(n1104) );
  AO7 U1223 ( .A(rgpio_aux[13]), .B(n1719), .C(n1104), .Z(out_pad_o[13]) );
  ND2 U1224 ( .A(aux_i[12]), .B(rgpio_aux[12]), .Z(n1105) );
  AO7 U1225 ( .A(rgpio_aux[12]), .B(n1720), .C(n1105), .Z(out_pad_o[12]) );
  ND2 U1226 ( .A(aux_i[11]), .B(rgpio_aux[11]), .Z(n1106) );
  AO7 U1227 ( .A(rgpio_aux[11]), .B(n1721), .C(n1106), .Z(out_pad_o[11]) );
  ND2 U1228 ( .A(aux_i[10]), .B(rgpio_aux[10]), .Z(n1107) );
  AO7 U1229 ( .A(rgpio_aux[10]), .B(n1722), .C(n1107), .Z(out_pad_o[10]) );
  ND2 U1230 ( .A(aux_i[9]), .B(rgpio_aux[9]), .Z(n1108) );
  AO7 U1231 ( .A(rgpio_aux[9]), .B(n1723), .C(n1108), .Z(out_pad_o[9]) );
  ND2 U1232 ( .A(aux_i[8]), .B(rgpio_aux[8]), .Z(n1109) );
  AO7 U1233 ( .A(rgpio_aux[8]), .B(n1724), .C(n1109), .Z(out_pad_o[8]) );
  ND2 U1234 ( .A(aux_i[7]), .B(rgpio_aux[7]), .Z(n1110) );
  AO7 U1235 ( .A(rgpio_aux[7]), .B(n1725), .C(n1110), .Z(out_pad_o[7]) );
  ND2 U1236 ( .A(aux_i[6]), .B(rgpio_aux[6]), .Z(n1111) );
  AO7 U1237 ( .A(rgpio_aux[6]), .B(n1726), .C(n1111), .Z(out_pad_o[6]) );
  ND2 U1238 ( .A(aux_i[5]), .B(rgpio_aux[5]), .Z(n1112) );
  AO7 U1239 ( .A(rgpio_aux[5]), .B(n1727), .C(n1112), .Z(out_pad_o[5]) );
  ND2 U1240 ( .A(aux_i[4]), .B(rgpio_aux[4]), .Z(n1113) );
  AO7 U1241 ( .A(rgpio_aux[4]), .B(n1728), .C(n1113), .Z(out_pad_o[4]) );
  ND2 U1242 ( .A(aux_i[3]), .B(rgpio_aux[3]), .Z(n1114) );
  AO7 U1243 ( .A(rgpio_aux[3]), .B(n1729), .C(n1114), .Z(out_pad_o[3]) );
  ND2 U1244 ( .A(aux_i[2]), .B(rgpio_aux[2]), .Z(n1115) );
  AO7 U1245 ( .A(rgpio_aux[2]), .B(n1730), .C(n1115), .Z(out_pad_o[2]) );
  ND2 U1246 ( .A(aux_i[1]), .B(rgpio_aux[1]), .Z(n1116) );
  AO7 U1247 ( .A(rgpio_aux[1]), .B(n1731), .C(n1116), .Z(out_pad_o[1]) );
  ND2 U1248 ( .A(aux_i[0]), .B(rgpio_aux[0]), .Z(n1117) );
  AO7 U1249 ( .A(rgpio_aux[0]), .B(n1732), .C(n1117), .Z(out_pad_o[0]) );
  IVP U1250 ( .A(gpio_addr[2]), .Z(n1121) );
  NR2 U1251 ( .A(gpio_addr[5]), .B(n1121), .Z(n1124) );
  IVP U1252 ( .A(gpio_addr[4]), .Z(n1120) );
  IVP U1253 ( .A(gpio_addr[3]), .Z(n1119) );
  NR2 U1254 ( .A(n1120), .B(n1119), .Z(n1118) );
  ND2 U1255 ( .A(n1124), .B(n1118), .Z(n1156) );
  NR2 U1256 ( .A(gpio_addr[4]), .B(gpio_addr[3]), .Z(n1125) );
  NR2 U1257 ( .A(gpio_addr[5]), .B(gpio_addr[2]), .Z(n1142) );
  ND2 U1258 ( .A(n1125), .B(n1142), .Z(n1157) );
  AO4 U1259 ( .A(n1733), .B(n1156), .C(n1648), .D(n1157), .Z(n1131) );
  ND2 U1260 ( .A(n1125), .B(gpio_addr[5]), .Z(n1122) );
  NR2 U1261 ( .A(n1122), .B(gpio_addr[2]), .Z(n1158) );
  ND2 U1262 ( .A(n1118), .B(n1142), .Z(n1349) );
  IVP U1263 ( .A(n1349), .Z(n1144) );
  AO2 U1264 ( .A(rgpio_eclk[0]), .B(n1158), .C(rgpio_ctrl[0]), .D(n1144), .Z(
        n1129) );
  NR2 U1265 ( .A(gpio_addr[4]), .B(n1119), .Z(n1123) );
  ND2 U1266 ( .A(n1124), .B(n1123), .Z(n1527) );
  IVP U1267 ( .A(n1527), .Z(n1146) );
  NR2 U1268 ( .A(n1120), .B(gpio_addr[3]), .Z(n1141) );
  ND2 U1269 ( .A(n1124), .B(n1141), .Z(n1534) );
  IVP U1270 ( .A(n1534), .Z(n1145) );
  AO2 U1271 ( .A(rgpio_inte[0]), .B(n1146), .C(n1145), .D(rgpio_aux[0]), .Z(
        n1128) );
  NR2 U1272 ( .A(n1122), .B(n1121), .Z(n1159) );
  ND2 U1273 ( .A(n1142), .B(n1123), .Z(n1529) );
  IVP U1274 ( .A(n1529), .Z(n1147) );
  AO2 U1275 ( .A(n1159), .B(rgpio_nec[0]), .C(n1147), .D(oen_padoe_o[0]), .Z(
        n1127) );
  ND2 U1276 ( .A(n1125), .B(n1124), .Z(n1524) );
  IVP U1277 ( .A(n1524), .Z(n1148) );
  ND2 U1278 ( .A(n1148), .B(rgpio_out[0]), .Z(n1126) );
  ND4 U1279 ( .A(n1129), .B(n1128), .C(n1127), .D(n1126), .Z(n1130) );
  NR2 U1280 ( .A(n1131), .B(n1130), .Z(n1143) );
  NR4 U1281 ( .A(gpio_addr[7]), .B(gpio_addr[6]), .C(gpio_addr[1]), .D(
        gpio_addr[0]), .Z(n1135) );
  NR4 U1282 ( .A(gpio_addr[11]), .B(gpio_addr[9]), .C(gpio_addr[8]), .D(
        gpio_addr[10]), .Z(n1134) );
  NR4 U1283 ( .A(gpio_addr[28]), .B(gpio_addr[25]), .C(gpio_addr[23]), .D(
        gpio_addr[26]), .Z(n1133) );
  NR4 U1284 ( .A(gpio_addr[29]), .B(gpio_addr[31]), .C(gpio_addr[27]), .D(
        gpio_addr[30]), .Z(n1132) );
  ND4 U1285 ( .A(n1135), .B(n1134), .C(n1133), .D(n1132), .Z(n1140) );
  NR4 U1286 ( .A(gpio_addr[22]), .B(gpio_addr[20]), .C(gpio_addr[24]), .D(
        gpio_addr[21]), .Z(n1138) );
  NR4 U1287 ( .A(gpio_addr[13]), .B(gpio_addr[16]), .C(gpio_addr[14]), .D(
        gpio_addr[12]), .Z(n1137) );
  NR4 U1288 ( .A(gpio_addr[19]), .B(gpio_addr[18]), .C(gpio_addr[15]), .D(
        gpio_addr[17]), .Z(n1136) );
  ND3 U1289 ( .A(n1138), .B(n1137), .C(n1136), .Z(n1139) );
  NR2 U1290 ( .A(n1140), .B(n1139), .Z(n1344) );
  IVP U1291 ( .A(n1344), .Z(n1160) );
  ND2 U1292 ( .A(n1142), .B(n1141), .Z(n1531) );
  OR2P U1293 ( .A(n1160), .B(n1531), .Z(n1319) );
  AO4 U1294 ( .A(n1143), .B(n1160), .C(n1681), .D(n1319), .Z(data_reg[0]) );
  AO4 U1295 ( .A(n1734), .B(n1156), .C(n1649), .D(n1157), .Z(n1154) );
  AO2 U1296 ( .A(rgpio_ctrl[1]), .B(n1144), .C(rgpio_eclk[1]), .D(n1158), .Z(
        n1152) );
  AO2 U1297 ( .A(rgpio_inte[1]), .B(n1146), .C(n1145), .D(rgpio_aux[1]), .Z(
        n1151) );
  AO2 U1298 ( .A(n1159), .B(rgpio_nec[1]), .C(n1147), .D(oen_padoe_o[1]), .Z(
        n1150) );
  ND2 U1299 ( .A(n1148), .B(rgpio_out[1]), .Z(n1149) );
  ND4 U1300 ( .A(n1152), .B(n1151), .C(n1150), .D(n1149), .Z(n1153) );
  NR2 U1301 ( .A(n1154), .B(n1153), .Z(n1155) );
  AO4 U1302 ( .A(n1155), .B(n1160), .C(n1680), .D(n1319), .Z(data_reg[1]) );
  NR2 U1303 ( .A(n1160), .B(n1529), .Z(n1307) );
  NR2 U1304 ( .A(n1160), .B(n1524), .Z(n1306) );
  AO2 U1305 ( .A(oen_padoe_o[2]), .B(n1307), .C(rgpio_out[2]), .D(n1306), .Z(
        n1165) );
  NR2 U1306 ( .A(n1160), .B(n1156), .Z(n1309) );
  NR2 U1307 ( .A(n1160), .B(n1157), .Z(n1308) );
  AO2 U1308 ( .A(rgpio_ints[2]), .B(n1309), .C(rgpio_in[2]), .D(n1308), .Z(
        n1163) );
  IVP U1309 ( .A(n1158), .Z(n1536) );
  NR2 U1310 ( .A(n1160), .B(n1536), .Z(n1311) );
  IVP U1311 ( .A(n1159), .Z(n1345) );
  NR2 U1312 ( .A(n1160), .B(n1345), .Z(n1310) );
  AO2 U1313 ( .A(rgpio_eclk[2]), .B(n1311), .C(rgpio_nec[2]), .D(n1310), .Z(
        n1162) );
  NR2 U1314 ( .A(n1160), .B(n1527), .Z(n1313) );
  NR2 U1315 ( .A(n1160), .B(n1534), .Z(n1312) );
  AO2 U1316 ( .A(rgpio_inte[2]), .B(n1313), .C(rgpio_aux[2]), .D(n1312), .Z(
        n1161) );
  AN3 U1317 ( .A(n1163), .B(n1162), .C(n1161), .Z(n1164) );
  AO3 U1318 ( .A(n1667), .B(n1319), .C(n1165), .D(n1164), .Z(data_reg[2]) );
  AO2 U1319 ( .A(n1307), .B(oen_padoe_o[3]), .C(n1306), .D(rgpio_out[3]), .Z(
        n1170) );
  AO2 U1320 ( .A(rgpio_ints[3]), .B(n1309), .C(rgpio_in[3]), .D(n1308), .Z(
        n1168) );
  AO2 U1321 ( .A(rgpio_eclk[3]), .B(n1311), .C(rgpio_nec[3]), .D(n1310), .Z(
        n1167) );
  AO2 U1322 ( .A(rgpio_inte[3]), .B(n1313), .C(n1312), .D(rgpio_aux[3]), .Z(
        n1166) );
  AN3 U1323 ( .A(n1168), .B(n1167), .C(n1166), .Z(n1169) );
  AO3 U1324 ( .A(n1666), .B(n1319), .C(n1170), .D(n1169), .Z(data_reg[3]) );
  AO2 U1325 ( .A(n1307), .B(oen_padoe_o[4]), .C(n1306), .D(rgpio_out[4]), .Z(
        n1175) );
  AO2 U1326 ( .A(rgpio_ints[4]), .B(n1309), .C(rgpio_in[4]), .D(n1308), .Z(
        n1173) );
  AO2 U1327 ( .A(rgpio_eclk[4]), .B(n1311), .C(rgpio_nec[4]), .D(n1310), .Z(
        n1172) );
  AO2 U1328 ( .A(rgpio_inte[4]), .B(n1313), .C(n1312), .D(rgpio_aux[4]), .Z(
        n1171) );
  AN3 U1329 ( .A(n1173), .B(n1172), .C(n1171), .Z(n1174) );
  AO3 U1330 ( .A(n1665), .B(n1319), .C(n1175), .D(n1174), .Z(data_reg[4]) );
  AO2 U1331 ( .A(n1307), .B(oen_padoe_o[5]), .C(n1306), .D(rgpio_out[5]), .Z(
        n1180) );
  AO2 U1332 ( .A(rgpio_ints[5]), .B(n1309), .C(rgpio_in[5]), .D(n1308), .Z(
        n1178) );
  AO2 U1333 ( .A(rgpio_eclk[5]), .B(n1311), .C(rgpio_nec[5]), .D(n1310), .Z(
        n1177) );
  AO2 U1334 ( .A(rgpio_inte[5]), .B(n1313), .C(n1312), .D(rgpio_aux[5]), .Z(
        n1176) );
  AN3 U1335 ( .A(n1178), .B(n1177), .C(n1176), .Z(n1179) );
  AO3 U1336 ( .A(n1664), .B(n1319), .C(n1180), .D(n1179), .Z(data_reg[5]) );
  AO2 U1337 ( .A(n1307), .B(oen_padoe_o[6]), .C(n1306), .D(rgpio_out[6]), .Z(
        n1185) );
  AO2 U1338 ( .A(rgpio_ints[6]), .B(n1309), .C(rgpio_in[6]), .D(n1308), .Z(
        n1183) );
  AO2 U1339 ( .A(rgpio_eclk[6]), .B(n1311), .C(rgpio_nec[6]), .D(n1310), .Z(
        n1182) );
  AO2 U1340 ( .A(rgpio_inte[6]), .B(n1313), .C(n1312), .D(rgpio_aux[6]), .Z(
        n1181) );
  AN3 U1341 ( .A(n1183), .B(n1182), .C(n1181), .Z(n1184) );
  AO3 U1342 ( .A(n1663), .B(n1319), .C(n1185), .D(n1184), .Z(data_reg[6]) );
  AO2 U1343 ( .A(n1307), .B(oen_padoe_o[7]), .C(n1306), .D(rgpio_out[7]), .Z(
        n1190) );
  AO2 U1344 ( .A(rgpio_ints[7]), .B(n1309), .C(rgpio_in[7]), .D(n1308), .Z(
        n1188) );
  AO2 U1345 ( .A(rgpio_eclk[7]), .B(n1311), .C(rgpio_nec[7]), .D(n1310), .Z(
        n1187) );
  AO2 U1346 ( .A(rgpio_inte[7]), .B(n1313), .C(n1312), .D(rgpio_aux[7]), .Z(
        n1186) );
  AN3 U1347 ( .A(n1188), .B(n1187), .C(n1186), .Z(n1189) );
  AO3 U1348 ( .A(n1662), .B(n1319), .C(n1190), .D(n1189), .Z(data_reg[7]) );
  AO2 U1349 ( .A(n1307), .B(oen_padoe_o[8]), .C(n1306), .D(rgpio_out[8]), .Z(
        n1195) );
  AO2 U1350 ( .A(rgpio_ints[8]), .B(n1309), .C(rgpio_in[8]), .D(n1308), .Z(
        n1193) );
  AO2 U1351 ( .A(rgpio_eclk[8]), .B(n1311), .C(rgpio_nec[8]), .D(n1310), .Z(
        n1192) );
  AO2 U1352 ( .A(rgpio_inte[8]), .B(n1313), .C(n1312), .D(rgpio_aux[8]), .Z(
        n1191) );
  AN3 U1353 ( .A(n1193), .B(n1192), .C(n1191), .Z(n1194) );
  AO3 U1354 ( .A(n1661), .B(n1319), .C(n1195), .D(n1194), .Z(data_reg[8]) );
  AO2 U1355 ( .A(n1307), .B(oen_padoe_o[9]), .C(n1306), .D(rgpio_out[9]), .Z(
        n1200) );
  AO2 U1356 ( .A(rgpio_ints[9]), .B(n1309), .C(rgpio_in[9]), .D(n1308), .Z(
        n1198) );
  AO2 U1357 ( .A(rgpio_eclk[9]), .B(n1311), .C(rgpio_nec[9]), .D(n1310), .Z(
        n1197) );
  AO2 U1358 ( .A(rgpio_inte[9]), .B(n1313), .C(n1312), .D(rgpio_aux[9]), .Z(
        n1196) );
  AN3 U1359 ( .A(n1198), .B(n1197), .C(n1196), .Z(n1199) );
  AO3 U1360 ( .A(n1660), .B(n1319), .C(n1200), .D(n1199), .Z(data_reg[9]) );
  AO2 U1361 ( .A(n1307), .B(oen_padoe_o[10]), .C(n1306), .D(rgpio_out[10]), 
        .Z(n1205) );
  AO2 U1362 ( .A(rgpio_ints[10]), .B(n1309), .C(rgpio_in[10]), .D(n1308), .Z(
        n1203) );
  AO2 U1363 ( .A(rgpio_eclk[10]), .B(n1311), .C(rgpio_nec[10]), .D(n1310), .Z(
        n1202) );
  AO2 U1364 ( .A(rgpio_inte[10]), .B(n1313), .C(n1312), .D(rgpio_aux[10]), .Z(
        n1201) );
  AN3 U1365 ( .A(n1203), .B(n1202), .C(n1201), .Z(n1204) );
  AO3 U1366 ( .A(n1659), .B(n1319), .C(n1205), .D(n1204), .Z(data_reg[10]) );
  AO2 U1367 ( .A(n1307), .B(oen_padoe_o[11]), .C(n1306), .D(rgpio_out[11]), 
        .Z(n1210) );
  AO2 U1368 ( .A(rgpio_ints[11]), .B(n1309), .C(rgpio_in[11]), .D(n1308), .Z(
        n1208) );
  AO2 U1369 ( .A(rgpio_eclk[11]), .B(n1311), .C(rgpio_nec[11]), .D(n1310), .Z(
        n1207) );
  AO2 U1370 ( .A(rgpio_inte[11]), .B(n1313), .C(n1312), .D(rgpio_aux[11]), .Z(
        n1206) );
  AN3 U1371 ( .A(n1208), .B(n1207), .C(n1206), .Z(n1209) );
  AO3 U1372 ( .A(n1658), .B(n1319), .C(n1210), .D(n1209), .Z(data_reg[11]) );
  AO2 U1373 ( .A(n1307), .B(oen_padoe_o[12]), .C(n1306), .D(rgpio_out[12]), 
        .Z(n1215) );
  AO2 U1374 ( .A(rgpio_ints[12]), .B(n1309), .C(rgpio_in[12]), .D(n1308), .Z(
        n1213) );
  AO2 U1375 ( .A(rgpio_eclk[12]), .B(n1311), .C(rgpio_nec[12]), .D(n1310), .Z(
        n1212) );
  AO2 U1376 ( .A(rgpio_inte[12]), .B(n1313), .C(n1312), .D(rgpio_aux[12]), .Z(
        n1211) );
  AN3 U1377 ( .A(n1213), .B(n1212), .C(n1211), .Z(n1214) );
  AO3 U1378 ( .A(n1657), .B(n1319), .C(n1215), .D(n1214), .Z(data_reg[12]) );
  AO2 U1379 ( .A(n1307), .B(oen_padoe_o[13]), .C(n1306), .D(rgpio_out[13]), 
        .Z(n1220) );
  AO2 U1380 ( .A(rgpio_ints[13]), .B(n1309), .C(rgpio_in[13]), .D(n1308), .Z(
        n1218) );
  AO2 U1381 ( .A(rgpio_eclk[13]), .B(n1311), .C(rgpio_nec[13]), .D(n1310), .Z(
        n1217) );
  AO2 U1382 ( .A(rgpio_inte[13]), .B(n1313), .C(n1312), .D(rgpio_aux[13]), .Z(
        n1216) );
  AN3 U1383 ( .A(n1218), .B(n1217), .C(n1216), .Z(n1219) );
  AO3 U1384 ( .A(n1656), .B(n1319), .C(n1220), .D(n1219), .Z(data_reg[13]) );
  AO2 U1385 ( .A(n1307), .B(oen_padoe_o[14]), .C(n1306), .D(rgpio_out[14]), 
        .Z(n1225) );
  AO2 U1386 ( .A(rgpio_ints[14]), .B(n1309), .C(rgpio_in[14]), .D(n1308), .Z(
        n1223) );
  AO2 U1387 ( .A(rgpio_eclk[14]), .B(n1311), .C(rgpio_nec[14]), .D(n1310), .Z(
        n1222) );
  AO2 U1388 ( .A(rgpio_inte[14]), .B(n1313), .C(n1312), .D(rgpio_aux[14]), .Z(
        n1221) );
  AN3 U1389 ( .A(n1223), .B(n1222), .C(n1221), .Z(n1224) );
  AO3 U1390 ( .A(n1655), .B(n1319), .C(n1225), .D(n1224), .Z(data_reg[14]) );
  AO2 U1391 ( .A(n1307), .B(oen_padoe_o[15]), .C(n1306), .D(rgpio_out[15]), 
        .Z(n1230) );
  AO2 U1392 ( .A(rgpio_ints[15]), .B(n1309), .C(rgpio_in[15]), .D(n1308), .Z(
        n1228) );
  AO2 U1393 ( .A(rgpio_eclk[15]), .B(n1311), .C(rgpio_nec[15]), .D(n1310), .Z(
        n1227) );
  AO2 U1394 ( .A(rgpio_inte[15]), .B(n1313), .C(n1312), .D(rgpio_aux[15]), .Z(
        n1226) );
  AN3 U1395 ( .A(n1228), .B(n1227), .C(n1226), .Z(n1229) );
  AO3 U1396 ( .A(n1654), .B(n1319), .C(n1230), .D(n1229), .Z(data_reg[15]) );
  AO2 U1397 ( .A(n1307), .B(oen_padoe_o[16]), .C(n1306), .D(rgpio_out[16]), 
        .Z(n1235) );
  AO2 U1398 ( .A(rgpio_ints[16]), .B(n1309), .C(rgpio_in[16]), .D(n1308), .Z(
        n1233) );
  AO2 U1399 ( .A(rgpio_eclk[16]), .B(n1311), .C(rgpio_nec[16]), .D(n1310), .Z(
        n1232) );
  AO2 U1400 ( .A(rgpio_inte[16]), .B(n1313), .C(n1312), .D(rgpio_aux[16]), .Z(
        n1231) );
  AN3 U1401 ( .A(n1233), .B(n1232), .C(n1231), .Z(n1234) );
  AO3 U1402 ( .A(n1653), .B(n1319), .C(n1235), .D(n1234), .Z(data_reg[16]) );
  AO2 U1403 ( .A(n1307), .B(oen_padoe_o[17]), .C(n1306), .D(rgpio_out[17]), 
        .Z(n1240) );
  AO2 U1404 ( .A(rgpio_ints[17]), .B(n1309), .C(rgpio_in[17]), .D(n1308), .Z(
        n1238) );
  AO2 U1405 ( .A(rgpio_eclk[17]), .B(n1311), .C(rgpio_nec[17]), .D(n1310), .Z(
        n1237) );
  AO2 U1406 ( .A(rgpio_inte[17]), .B(n1313), .C(n1312), .D(rgpio_aux[17]), .Z(
        n1236) );
  AN3 U1407 ( .A(n1238), .B(n1237), .C(n1236), .Z(n1239) );
  AO3 U1408 ( .A(n1652), .B(n1319), .C(n1240), .D(n1239), .Z(data_reg[17]) );
  AO2 U1409 ( .A(n1307), .B(oen_padoe_o[18]), .C(n1306), .D(rgpio_out[18]), 
        .Z(n1245) );
  AO2 U1410 ( .A(rgpio_ints[18]), .B(n1309), .C(rgpio_in[18]), .D(n1308), .Z(
        n1243) );
  AO2 U1411 ( .A(rgpio_eclk[18]), .B(n1311), .C(rgpio_nec[18]), .D(n1310), .Z(
        n1242) );
  AO2 U1412 ( .A(rgpio_inte[18]), .B(n1313), .C(n1312), .D(rgpio_aux[18]), .Z(
        n1241) );
  AN3 U1413 ( .A(n1243), .B(n1242), .C(n1241), .Z(n1244) );
  AO3 U1414 ( .A(n1651), .B(n1319), .C(n1245), .D(n1244), .Z(data_reg[18]) );
  AO2 U1415 ( .A(n1307), .B(oen_padoe_o[19]), .C(n1306), .D(rgpio_out[19]), 
        .Z(n1250) );
  AO2 U1416 ( .A(rgpio_ints[19]), .B(n1309), .C(rgpio_in[19]), .D(n1308), .Z(
        n1248) );
  AO2 U1417 ( .A(rgpio_eclk[19]), .B(n1311), .C(rgpio_nec[19]), .D(n1310), .Z(
        n1247) );
  AO2 U1418 ( .A(rgpio_inte[19]), .B(n1313), .C(n1312), .D(rgpio_aux[19]), .Z(
        n1246) );
  AN3 U1419 ( .A(n1248), .B(n1247), .C(n1246), .Z(n1249) );
  AO3 U1420 ( .A(n1650), .B(n1319), .C(n1250), .D(n1249), .Z(data_reg[19]) );
  AO2 U1421 ( .A(n1307), .B(oen_padoe_o[20]), .C(n1306), .D(rgpio_out[20]), 
        .Z(n1255) );
  AO2 U1422 ( .A(rgpio_ints[20]), .B(n1309), .C(rgpio_in[20]), .D(n1308), .Z(
        n1253) );
  AO2 U1423 ( .A(rgpio_eclk[20]), .B(n1311), .C(rgpio_nec[20]), .D(n1310), .Z(
        n1252) );
  AO2 U1424 ( .A(rgpio_inte[20]), .B(n1313), .C(n1312), .D(rgpio_aux[20]), .Z(
        n1251) );
  AN3 U1425 ( .A(n1253), .B(n1252), .C(n1251), .Z(n1254) );
  AO3 U1426 ( .A(n1647), .B(n1319), .C(n1255), .D(n1254), .Z(data_reg[20]) );
  AO2 U1427 ( .A(n1307), .B(oen_padoe_o[21]), .C(n1306), .D(rgpio_out[21]), 
        .Z(n1260) );
  AO2 U1428 ( .A(rgpio_ints[21]), .B(n1309), .C(rgpio_in[21]), .D(n1308), .Z(
        n1258) );
  AO2 U1429 ( .A(rgpio_eclk[21]), .B(n1311), .C(rgpio_nec[21]), .D(n1310), .Z(
        n1257) );
  AO2 U1430 ( .A(rgpio_inte[21]), .B(n1313), .C(n1312), .D(rgpio_aux[21]), .Z(
        n1256) );
  AN3 U1431 ( .A(n1258), .B(n1257), .C(n1256), .Z(n1259) );
  AO3 U1432 ( .A(n1646), .B(n1319), .C(n1260), .D(n1259), .Z(data_reg[21]) );
  AO2 U1433 ( .A(n1307), .B(oen_padoe_o[22]), .C(n1306), .D(rgpio_out[22]), 
        .Z(n1265) );
  AO2 U1434 ( .A(rgpio_ints[22]), .B(n1309), .C(rgpio_in[22]), .D(n1308), .Z(
        n1263) );
  AO2 U1435 ( .A(rgpio_eclk[22]), .B(n1311), .C(rgpio_nec[22]), .D(n1310), .Z(
        n1262) );
  AO2 U1436 ( .A(rgpio_inte[22]), .B(n1313), .C(n1312), .D(rgpio_aux[22]), .Z(
        n1261) );
  AN3 U1437 ( .A(n1263), .B(n1262), .C(n1261), .Z(n1264) );
  AO3 U1438 ( .A(n1645), .B(n1319), .C(n1265), .D(n1264), .Z(data_reg[22]) );
  AO2 U1439 ( .A(n1307), .B(oen_padoe_o[23]), .C(n1306), .D(rgpio_out[23]), 
        .Z(n1270) );
  AO2 U1440 ( .A(rgpio_ints[23]), .B(n1309), .C(rgpio_in[23]), .D(n1308), .Z(
        n1268) );
  AO2 U1441 ( .A(rgpio_eclk[23]), .B(n1311), .C(rgpio_nec[23]), .D(n1310), .Z(
        n1267) );
  AO2 U1442 ( .A(rgpio_inte[23]), .B(n1313), .C(n1312), .D(rgpio_aux[23]), .Z(
        n1266) );
  AN3 U1443 ( .A(n1268), .B(n1267), .C(n1266), .Z(n1269) );
  AO3 U1444 ( .A(n1644), .B(n1319), .C(n1270), .D(n1269), .Z(data_reg[23]) );
  AO2 U1445 ( .A(n1307), .B(oen_padoe_o[24]), .C(n1306), .D(rgpio_out[24]), 
        .Z(n1275) );
  AO2 U1446 ( .A(rgpio_ints[24]), .B(n1309), .C(rgpio_in[24]), .D(n1308), .Z(
        n1273) );
  AO2 U1447 ( .A(rgpio_eclk[24]), .B(n1311), .C(rgpio_nec[24]), .D(n1310), .Z(
        n1272) );
  AO2 U1448 ( .A(rgpio_inte[24]), .B(n1313), .C(n1312), .D(rgpio_aux[24]), .Z(
        n1271) );
  AN3 U1449 ( .A(n1273), .B(n1272), .C(n1271), .Z(n1274) );
  AO3 U1450 ( .A(n1643), .B(n1319), .C(n1275), .D(n1274), .Z(data_reg[24]) );
  AO2 U1451 ( .A(n1307), .B(oen_padoe_o[25]), .C(n1306), .D(rgpio_out[25]), 
        .Z(n1280) );
  AO2 U1452 ( .A(rgpio_ints[25]), .B(n1309), .C(rgpio_in[25]), .D(n1308), .Z(
        n1278) );
  AO2 U1453 ( .A(rgpio_eclk[25]), .B(n1311), .C(rgpio_nec[25]), .D(n1310), .Z(
        n1277) );
  AO2 U1454 ( .A(rgpio_inte[25]), .B(n1313), .C(n1312), .D(rgpio_aux[25]), .Z(
        n1276) );
  AN3 U1455 ( .A(n1278), .B(n1277), .C(n1276), .Z(n1279) );
  AO3 U1456 ( .A(n1642), .B(n1319), .C(n1280), .D(n1279), .Z(data_reg[25]) );
  AO2 U1457 ( .A(n1307), .B(oen_padoe_o[26]), .C(n1306), .D(rgpio_out[26]), 
        .Z(n1285) );
  AO2 U1458 ( .A(rgpio_ints[26]), .B(n1309), .C(rgpio_in[26]), .D(n1308), .Z(
        n1283) );
  AO2 U1459 ( .A(rgpio_eclk[26]), .B(n1311), .C(rgpio_nec[26]), .D(n1310), .Z(
        n1282) );
  AO2 U1460 ( .A(rgpio_inte[26]), .B(n1313), .C(n1312), .D(rgpio_aux[26]), .Z(
        n1281) );
  AN3 U1461 ( .A(n1283), .B(n1282), .C(n1281), .Z(n1284) );
  AO3 U1462 ( .A(n1641), .B(n1319), .C(n1285), .D(n1284), .Z(data_reg[26]) );
  AO2 U1463 ( .A(n1307), .B(oen_padoe_o[27]), .C(n1306), .D(rgpio_out[27]), 
        .Z(n1290) );
  AO2 U1464 ( .A(rgpio_ints[27]), .B(n1309), .C(rgpio_in[27]), .D(n1308), .Z(
        n1288) );
  AO2 U1465 ( .A(rgpio_eclk[27]), .B(n1311), .C(rgpio_nec[27]), .D(n1310), .Z(
        n1287) );
  AO2 U1466 ( .A(rgpio_inte[27]), .B(n1313), .C(n1312), .D(rgpio_aux[27]), .Z(
        n1286) );
  AN3 U1467 ( .A(n1288), .B(n1287), .C(n1286), .Z(n1289) );
  AO3 U1468 ( .A(n1640), .B(n1319), .C(n1290), .D(n1289), .Z(data_reg[27]) );
  AO2 U1469 ( .A(n1307), .B(oen_padoe_o[28]), .C(n1306), .D(rgpio_out[28]), 
        .Z(n1295) );
  AO2 U1470 ( .A(rgpio_ints[28]), .B(n1309), .C(rgpio_in[28]), .D(n1308), .Z(
        n1293) );
  AO2 U1471 ( .A(rgpio_eclk[28]), .B(n1311), .C(rgpio_nec[28]), .D(n1310), .Z(
        n1292) );
  AO2 U1472 ( .A(rgpio_inte[28]), .B(n1313), .C(n1312), .D(rgpio_aux[28]), .Z(
        n1291) );
  AN3 U1473 ( .A(n1293), .B(n1292), .C(n1291), .Z(n1294) );
  AO3 U1474 ( .A(n1639), .B(n1319), .C(n1295), .D(n1294), .Z(data_reg[28]) );
  AO2 U1475 ( .A(n1307), .B(oen_padoe_o[29]), .C(n1306), .D(rgpio_out[29]), 
        .Z(n1300) );
  AO2 U1476 ( .A(rgpio_ints[29]), .B(n1309), .C(rgpio_in[29]), .D(n1308), .Z(
        n1298) );
  AO2 U1477 ( .A(rgpio_eclk[29]), .B(n1311), .C(rgpio_nec[29]), .D(n1310), .Z(
        n1297) );
  AO2 U1478 ( .A(rgpio_inte[29]), .B(n1313), .C(n1312), .D(rgpio_aux[29]), .Z(
        n1296) );
  AN3 U1479 ( .A(n1298), .B(n1297), .C(n1296), .Z(n1299) );
  AO3 U1480 ( .A(n1638), .B(n1319), .C(n1300), .D(n1299), .Z(data_reg[29]) );
  AO2 U1481 ( .A(n1307), .B(oen_padoe_o[30]), .C(n1306), .D(rgpio_out[30]), 
        .Z(n1305) );
  AO2 U1482 ( .A(rgpio_ints[30]), .B(n1309), .C(rgpio_in[30]), .D(n1308), .Z(
        n1303) );
  AO2 U1483 ( .A(rgpio_eclk[30]), .B(n1311), .C(rgpio_nec[30]), .D(n1310), .Z(
        n1302) );
  AO2 U1484 ( .A(rgpio_inte[30]), .B(n1313), .C(n1312), .D(rgpio_aux[30]), .Z(
        n1301) );
  AN3 U1485 ( .A(n1303), .B(n1302), .C(n1301), .Z(n1304) );
  AO3 U1486 ( .A(n1637), .B(n1319), .C(n1305), .D(n1304), .Z(data_reg[30]) );
  AO2 U1487 ( .A(n1307), .B(oen_padoe_o[31]), .C(n1306), .D(rgpio_out[31]), 
        .Z(n1318) );
  AO2 U1488 ( .A(rgpio_ints[31]), .B(n1309), .C(rgpio_in[31]), .D(n1308), .Z(
        n1316) );
  AO2 U1489 ( .A(rgpio_eclk[31]), .B(n1311), .C(rgpio_nec[31]), .D(n1310), .Z(
        n1315) );
  AO2 U1490 ( .A(rgpio_inte[31]), .B(n1313), .C(n1312), .D(rgpio_aux[31]), .Z(
        n1314) );
  AN3 U1491 ( .A(n1316), .B(n1315), .C(n1314), .Z(n1317) );
  AO3 U1492 ( .A(n1636), .B(n1319), .C(n1318), .D(n1317), .Z(data_reg[31]) );
  NR4 U1493 ( .A(rgpio_eclk[20]), .B(rgpio_eclk[21]), .C(rgpio_eclk[22]), .D(
        rgpio_eclk[23]), .Z(n1323) );
  NR4 U1494 ( .A(rgpio_eclk[16]), .B(rgpio_eclk[17]), .C(rgpio_eclk[18]), .D(
        rgpio_eclk[19]), .Z(n1322) );
  NR4 U1495 ( .A(rgpio_eclk[28]), .B(rgpio_eclk[29]), .C(rgpio_eclk[30]), .D(
        rgpio_eclk[31]), .Z(n1321) );
  NR4 U1496 ( .A(rgpio_eclk[24]), .B(rgpio_eclk[25]), .C(rgpio_eclk[26]), .D(
        rgpio_eclk[27]), .Z(n1320) );
  ND4 U1497 ( .A(n1323), .B(n1322), .C(n1321), .D(n1320), .Z(n1329) );
  NR4 U1498 ( .A(rgpio_eclk[4]), .B(rgpio_eclk[5]), .C(rgpio_eclk[6]), .D(
        rgpio_eclk[7]), .Z(n1327) );
  NR4 U1499 ( .A(rgpio_eclk[0]), .B(rgpio_eclk[1]), .C(rgpio_eclk[2]), .D(
        rgpio_eclk[3]), .Z(n1326) );
  NR4 U1500 ( .A(rgpio_eclk[12]), .B(rgpio_eclk[13]), .C(rgpio_eclk[14]), .D(
        rgpio_eclk[15]), .Z(n1325) );
  NR4 U1501 ( .A(rgpio_eclk[8]), .B(rgpio_eclk[9]), .C(rgpio_eclk[10]), .D(
        rgpio_eclk[11]), .Z(n1324) );
  ND4 U1502 ( .A(n1327), .B(n1326), .C(n1325), .D(n1324), .Z(n1328) );
  NR2 U1503 ( .A(n1329), .B(n1328), .Z(n1515) );
  NR4 U1504 ( .A(rgpio_nec[20]), .B(rgpio_nec[21]), .C(rgpio_nec[22]), .D(
        rgpio_nec[23]), .Z(n1333) );
  NR4 U1505 ( .A(rgpio_nec[16]), .B(rgpio_nec[17]), .C(rgpio_nec[18]), .D(
        rgpio_nec[19]), .Z(n1332) );
  NR4 U1506 ( .A(rgpio_nec[28]), .B(rgpio_nec[29]), .C(rgpio_nec[30]), .D(
        rgpio_nec[31]), .Z(n1331) );
  NR4 U1507 ( .A(rgpio_nec[24]), .B(rgpio_nec[25]), .C(rgpio_nec[26]), .D(
        rgpio_nec[27]), .Z(n1330) );
  ND4 U1508 ( .A(n1333), .B(n1332), .C(n1331), .D(n1330), .Z(n1339) );
  NR4 U1509 ( .A(rgpio_nec[4]), .B(rgpio_nec[5]), .C(rgpio_nec[6]), .D(
        rgpio_nec[7]), .Z(n1337) );
  NR4 U1510 ( .A(rgpio_nec[0]), .B(rgpio_nec[1]), .C(rgpio_nec[2]), .D(
        rgpio_nec[3]), .Z(n1336) );
  NR4 U1511 ( .A(rgpio_nec[12]), .B(rgpio_nec[13]), .C(rgpio_nec[14]), .D(
        rgpio_nec[15]), .Z(n1335) );
  NR4 U1512 ( .A(rgpio_nec[8]), .B(rgpio_nec[9]), .C(rgpio_nec[10]), .D(
        rgpio_nec[11]), .Z(n1334) );
  ND4 U1513 ( .A(n1337), .B(n1336), .C(n1335), .D(n1334), .Z(n1338) );
  NR2 U1514 ( .A(n1339), .B(n1338), .Z(n1340) );
  NR2 U1515 ( .A(n1515), .B(n1340), .Z(n1514) );
  AO2 U1516 ( .A(n1515), .B(in_pad_i[0]), .C(n1514), .D(nextc_sampled[0]), .Z(
        n1343) );
  IVP U1517 ( .A(n1340), .Z(n1341) );
  NR2 U1518 ( .A(n1515), .B(n1341), .Z(n1516) );
  ND2 U1519 ( .A(n1516), .B(pextc_sampled[0]), .Z(n1342) );
  ND2 U1520 ( .A(n1343), .B(n1342), .Z(in_mux[0]) );
  ND2 U1521 ( .A(n1344), .B(gpio_we), .Z(n1537) );
  NR2 U1522 ( .A(n1537), .B(n1345), .Z(n1631) );
  IVP U1523 ( .A(n1631), .Z(n1519) );
  NR2 U1524 ( .A(gpio_dat_i[0]), .B(n1519), .Z(n1635) );
  NR2 U1525 ( .A(n1631), .B(rgpio_ints[0]), .Z(n1348) );
  NR2 U1526 ( .A(n1631), .B(n1682), .Z(n1520) );
  AO3 U1527 ( .A(n1648), .B(n1681), .C(n1520), .D(rgpio_inte[0]), .Z(n1347) );
  EO1 U1528 ( .A(rgpio_ptrig[0]), .B(in_mux[0]), .C(in_mux[0]), .D(n1648), .Z(
        n1346) );
  AO4 U1529 ( .A(n1635), .B(n1348), .C(n1347), .D(n1346), .Z(n1084) );
  IVP U1530 ( .A(gpio_dat_i[1]), .Z(n1568) );
  NR2 U1531 ( .A(n1537), .B(n1349), .Z(n1363) );
  IVP U1532 ( .A(n1363), .Z(n1361) );
  NR2 U1533 ( .A(n1568), .B(n1361), .Z(n1083) );
  NR4 U1534 ( .A(rgpio_ints[8]), .B(rgpio_ints[9]), .C(rgpio_ints[10]), .D(
        rgpio_ints[11]), .Z(n1353) );
  NR4 U1535 ( .A(rgpio_ints[12]), .B(rgpio_ints[13]), .C(rgpio_ints[14]), .D(
        rgpio_ints[15]), .Z(n1352) );
  NR4 U1536 ( .A(rgpio_ints[0]), .B(rgpio_ints[1]), .C(rgpio_ints[2]), .D(
        rgpio_ints[3]), .Z(n1351) );
  NR4 U1537 ( .A(rgpio_ints[4]), .B(rgpio_ints[5]), .C(rgpio_ints[6]), .D(
        rgpio_ints[7]), .Z(n1350) );
  ND4 U1538 ( .A(n1353), .B(n1352), .C(n1351), .D(n1350), .Z(n1359) );
  NR4 U1539 ( .A(rgpio_ints[24]), .B(rgpio_ints[25]), .C(rgpio_ints[26]), .D(
        rgpio_ints[27]), .Z(n1357) );
  NR4 U1540 ( .A(rgpio_ints[28]), .B(rgpio_ints[29]), .C(rgpio_ints[30]), .D(
        rgpio_ints[31]), .Z(n1356) );
  NR4 U1541 ( .A(rgpio_ints[16]), .B(rgpio_ints[17]), .C(rgpio_ints[18]), .D(
        rgpio_ints[19]), .Z(n1355) );
  NR4 U1542 ( .A(rgpio_ints[20]), .B(rgpio_ints[21]), .C(rgpio_ints[22]), .D(
        rgpio_ints[23]), .Z(n1354) );
  ND4 U1543 ( .A(n1357), .B(n1356), .C(n1355), .D(n1354), .Z(n1358) );
  NR2 U1544 ( .A(n1359), .B(n1358), .Z(n1360) );
  NR2 U1545 ( .A(n1682), .B(n1360), .Z(gpio_inta_o) );
  IVP U1546 ( .A(gpio_dat_i[0]), .Z(n1569) );
  NR2 U1547 ( .A(rgpio_ctrl[0]), .B(gpio_inta_o), .Z(n1362) );
  AO2 U1548 ( .A(n1363), .B(n1569), .C(n1362), .D(n1361), .Z(n1082) );
  AO2 U1549 ( .A(n1515), .B(in_pad_i[1]), .C(n1514), .D(nextc_sampled[1]), .Z(
        n1365) );
  ND2 U1550 ( .A(n1516), .B(pextc_sampled[1]), .Z(n1364) );
  ND2 U1551 ( .A(n1365), .B(n1364), .Z(in_mux[1]) );
  NR2 U1552 ( .A(gpio_dat_i[1]), .B(n1519), .Z(n1633) );
  NR2 U1553 ( .A(n1631), .B(rgpio_ints[1]), .Z(n1368) );
  AO3 U1554 ( .A(n1649), .B(n1680), .C(n1520), .D(rgpio_inte[1]), .Z(n1367) );
  EO1 U1555 ( .A(rgpio_ptrig[1]), .B(in_mux[1]), .C(in_mux[1]), .D(n1649), .Z(
        n1366) );
  AO4 U1556 ( .A(n1633), .B(n1368), .C(n1367), .D(n1366), .Z(n1081) );
  AO2 U1557 ( .A(n1515), .B(in_pad_i[2]), .C(n1514), .D(nextc_sampled[2]), .Z(
        n1370) );
  ND2 U1558 ( .A(n1516), .B(pextc_sampled[2]), .Z(n1369) );
  ND2 U1559 ( .A(n1370), .B(n1369), .Z(in_mux[2]) );
  NR2 U1560 ( .A(gpio_dat_i[2]), .B(n1519), .Z(n1630) );
  NR2 U1561 ( .A(n1631), .B(rgpio_ints[2]), .Z(n1373) );
  AO3 U1562 ( .A(n1683), .B(n1667), .C(n1520), .D(rgpio_inte[2]), .Z(n1372) );
  EO1 U1563 ( .A(rgpio_ptrig[2]), .B(in_mux[2]), .C(in_mux[2]), .D(n1683), .Z(
        n1371) );
  AO4 U1564 ( .A(n1630), .B(n1373), .C(n1372), .D(n1371), .Z(n1080) );
  AO2 U1565 ( .A(n1515), .B(in_pad_i[3]), .C(n1514), .D(nextc_sampled[3]), .Z(
        n1375) );
  ND2 U1566 ( .A(n1516), .B(pextc_sampled[3]), .Z(n1374) );
  ND2 U1567 ( .A(n1375), .B(n1374), .Z(in_mux[3]) );
  NR2 U1568 ( .A(gpio_dat_i[3]), .B(n1519), .Z(n1628) );
  NR2 U1569 ( .A(n1631), .B(rgpio_ints[3]), .Z(n1378) );
  AO3 U1570 ( .A(n1684), .B(n1666), .C(n1520), .D(rgpio_inte[3]), .Z(n1377) );
  EO1 U1571 ( .A(rgpio_ptrig[3]), .B(in_mux[3]), .C(in_mux[3]), .D(n1684), .Z(
        n1376) );
  AO4 U1572 ( .A(n1628), .B(n1378), .C(n1377), .D(n1376), .Z(n1079) );
  AO2 U1573 ( .A(n1515), .B(in_pad_i[4]), .C(n1514), .D(nextc_sampled[4]), .Z(
        n1380) );
  ND2 U1574 ( .A(n1516), .B(pextc_sampled[4]), .Z(n1379) );
  ND2 U1575 ( .A(n1380), .B(n1379), .Z(in_mux[4]) );
  NR2 U1576 ( .A(gpio_dat_i[4]), .B(n1519), .Z(n1626) );
  NR2 U1577 ( .A(n1631), .B(rgpio_ints[4]), .Z(n1383) );
  AO3 U1578 ( .A(n1685), .B(n1665), .C(n1520), .D(rgpio_inte[4]), .Z(n1382) );
  EO1 U1579 ( .A(rgpio_ptrig[4]), .B(in_mux[4]), .C(in_mux[4]), .D(n1685), .Z(
        n1381) );
  AO4 U1580 ( .A(n1626), .B(n1383), .C(n1382), .D(n1381), .Z(n1078) );
  AO2 U1581 ( .A(n1515), .B(in_pad_i[5]), .C(n1514), .D(nextc_sampled[5]), .Z(
        n1385) );
  ND2 U1582 ( .A(n1516), .B(pextc_sampled[5]), .Z(n1384) );
  ND2 U1583 ( .A(n1385), .B(n1384), .Z(in_mux[5]) );
  NR2 U1584 ( .A(gpio_dat_i[5]), .B(n1519), .Z(n1624) );
  NR2 U1585 ( .A(n1631), .B(rgpio_ints[5]), .Z(n1388) );
  AO3 U1586 ( .A(n1686), .B(n1664), .C(n1520), .D(rgpio_inte[5]), .Z(n1387) );
  EO1 U1587 ( .A(rgpio_ptrig[5]), .B(in_mux[5]), .C(in_mux[5]), .D(n1686), .Z(
        n1386) );
  AO4 U1588 ( .A(n1624), .B(n1388), .C(n1387), .D(n1386), .Z(n1077) );
  AO2 U1589 ( .A(n1515), .B(in_pad_i[6]), .C(n1514), .D(nextc_sampled[6]), .Z(
        n1390) );
  ND2 U1590 ( .A(n1516), .B(pextc_sampled[6]), .Z(n1389) );
  ND2 U1591 ( .A(n1390), .B(n1389), .Z(in_mux[6]) );
  NR2 U1592 ( .A(gpio_dat_i[6]), .B(n1519), .Z(n1622) );
  NR2 U1593 ( .A(n1631), .B(rgpio_ints[6]), .Z(n1393) );
  AO3 U1594 ( .A(n1687), .B(n1663), .C(n1520), .D(rgpio_inte[6]), .Z(n1392) );
  EO1 U1595 ( .A(rgpio_ptrig[6]), .B(in_mux[6]), .C(in_mux[6]), .D(n1687), .Z(
        n1391) );
  AO4 U1596 ( .A(n1622), .B(n1393), .C(n1392), .D(n1391), .Z(n1076) );
  AO2 U1597 ( .A(n1515), .B(in_pad_i[7]), .C(n1514), .D(nextc_sampled[7]), .Z(
        n1395) );
  ND2 U1598 ( .A(n1516), .B(pextc_sampled[7]), .Z(n1394) );
  ND2 U1599 ( .A(n1395), .B(n1394), .Z(in_mux[7]) );
  NR2 U1600 ( .A(gpio_dat_i[7]), .B(n1519), .Z(n1620) );
  NR2 U1601 ( .A(n1631), .B(rgpio_ints[7]), .Z(n1398) );
  AO3 U1602 ( .A(n1688), .B(n1662), .C(n1520), .D(rgpio_inte[7]), .Z(n1397) );
  EO1 U1603 ( .A(rgpio_ptrig[7]), .B(in_mux[7]), .C(in_mux[7]), .D(n1688), .Z(
        n1396) );
  AO4 U1604 ( .A(n1620), .B(n1398), .C(n1397), .D(n1396), .Z(n1075) );
  AO2 U1605 ( .A(n1515), .B(in_pad_i[8]), .C(n1514), .D(nextc_sampled[8]), .Z(
        n1400) );
  ND2 U1606 ( .A(n1516), .B(pextc_sampled[8]), .Z(n1399) );
  ND2 U1607 ( .A(n1400), .B(n1399), .Z(in_mux[8]) );
  NR2 U1608 ( .A(gpio_dat_i[8]), .B(n1519), .Z(n1618) );
  NR2 U1609 ( .A(n1631), .B(rgpio_ints[8]), .Z(n1403) );
  AO3 U1610 ( .A(n1689), .B(n1661), .C(n1520), .D(rgpio_inte[8]), .Z(n1402) );
  EO1 U1611 ( .A(rgpio_ptrig[8]), .B(in_mux[8]), .C(in_mux[8]), .D(n1689), .Z(
        n1401) );
  AO4 U1612 ( .A(n1618), .B(n1403), .C(n1402), .D(n1401), .Z(n1074) );
  AO2 U1613 ( .A(n1515), .B(in_pad_i[9]), .C(n1514), .D(nextc_sampled[9]), .Z(
        n1405) );
  ND2 U1614 ( .A(n1516), .B(pextc_sampled[9]), .Z(n1404) );
  ND2 U1615 ( .A(n1405), .B(n1404), .Z(in_mux[9]) );
  NR2 U1616 ( .A(gpio_dat_i[9]), .B(n1519), .Z(n1616) );
  NR2 U1617 ( .A(n1631), .B(rgpio_ints[9]), .Z(n1408) );
  AO3 U1618 ( .A(n1690), .B(n1660), .C(n1520), .D(rgpio_inte[9]), .Z(n1407) );
  EO1 U1619 ( .A(rgpio_ptrig[9]), .B(in_mux[9]), .C(in_mux[9]), .D(n1690), .Z(
        n1406) );
  AO4 U1620 ( .A(n1616), .B(n1408), .C(n1407), .D(n1406), .Z(n1073) );
  AO2 U1621 ( .A(n1515), .B(in_pad_i[10]), .C(n1514), .D(nextc_sampled[10]), 
        .Z(n1410) );
  ND2 U1622 ( .A(n1516), .B(pextc_sampled[10]), .Z(n1409) );
  ND2 U1623 ( .A(n1410), .B(n1409), .Z(in_mux[10]) );
  NR2 U1624 ( .A(gpio_dat_i[10]), .B(n1519), .Z(n1614) );
  NR2 U1625 ( .A(n1631), .B(rgpio_ints[10]), .Z(n1413) );
  AO3 U1626 ( .A(n1691), .B(n1659), .C(n1520), .D(rgpio_inte[10]), .Z(n1412)
         );
  EO1 U1627 ( .A(rgpio_ptrig[10]), .B(in_mux[10]), .C(in_mux[10]), .D(n1691), 
        .Z(n1411) );
  AO4 U1628 ( .A(n1614), .B(n1413), .C(n1412), .D(n1411), .Z(n1072) );
  AO2 U1629 ( .A(n1515), .B(in_pad_i[11]), .C(n1514), .D(nextc_sampled[11]), 
        .Z(n1415) );
  ND2 U1630 ( .A(n1516), .B(pextc_sampled[11]), .Z(n1414) );
  ND2 U1631 ( .A(n1415), .B(n1414), .Z(in_mux[11]) );
  NR2 U1632 ( .A(gpio_dat_i[11]), .B(n1519), .Z(n1612) );
  NR2 U1633 ( .A(n1631), .B(rgpio_ints[11]), .Z(n1418) );
  AO3 U1634 ( .A(n1692), .B(n1658), .C(n1520), .D(rgpio_inte[11]), .Z(n1417)
         );
  EO1 U1635 ( .A(rgpio_ptrig[11]), .B(in_mux[11]), .C(in_mux[11]), .D(n1692), 
        .Z(n1416) );
  AO4 U1636 ( .A(n1612), .B(n1418), .C(n1417), .D(n1416), .Z(n1071) );
  AO2 U1637 ( .A(n1515), .B(in_pad_i[12]), .C(n1514), .D(nextc_sampled[12]), 
        .Z(n1420) );
  ND2 U1638 ( .A(n1516), .B(pextc_sampled[12]), .Z(n1419) );
  ND2 U1639 ( .A(n1420), .B(n1419), .Z(in_mux[12]) );
  NR2 U1640 ( .A(gpio_dat_i[12]), .B(n1519), .Z(n1610) );
  NR2 U1641 ( .A(n1631), .B(rgpio_ints[12]), .Z(n1423) );
  AO3 U1642 ( .A(n1693), .B(n1657), .C(n1520), .D(rgpio_inte[12]), .Z(n1422)
         );
  EO1 U1643 ( .A(rgpio_ptrig[12]), .B(in_mux[12]), .C(in_mux[12]), .D(n1693), 
        .Z(n1421) );
  AO4 U1644 ( .A(n1610), .B(n1423), .C(n1422), .D(n1421), .Z(n1070) );
  AO2 U1645 ( .A(n1515), .B(in_pad_i[13]), .C(n1514), .D(nextc_sampled[13]), 
        .Z(n1425) );
  ND2 U1646 ( .A(n1516), .B(pextc_sampled[13]), .Z(n1424) );
  ND2 U1647 ( .A(n1425), .B(n1424), .Z(in_mux[13]) );
  NR2 U1648 ( .A(gpio_dat_i[13]), .B(n1519), .Z(n1608) );
  NR2 U1649 ( .A(n1631), .B(rgpio_ints[13]), .Z(n1428) );
  AO3 U1650 ( .A(n1694), .B(n1656), .C(n1520), .D(rgpio_inte[13]), .Z(n1427)
         );
  EO1 U1651 ( .A(rgpio_ptrig[13]), .B(in_mux[13]), .C(in_mux[13]), .D(n1694), 
        .Z(n1426) );
  AO4 U1652 ( .A(n1608), .B(n1428), .C(n1427), .D(n1426), .Z(n1069) );
  AO2 U1653 ( .A(n1515), .B(in_pad_i[14]), .C(n1514), .D(nextc_sampled[14]), 
        .Z(n1430) );
  ND2 U1654 ( .A(n1516), .B(pextc_sampled[14]), .Z(n1429) );
  ND2 U1655 ( .A(n1430), .B(n1429), .Z(in_mux[14]) );
  NR2 U1656 ( .A(gpio_dat_i[14]), .B(n1519), .Z(n1606) );
  NR2 U1657 ( .A(n1631), .B(rgpio_ints[14]), .Z(n1433) );
  AO3 U1658 ( .A(n1695), .B(n1655), .C(n1520), .D(rgpio_inte[14]), .Z(n1432)
         );
  EO1 U1659 ( .A(rgpio_ptrig[14]), .B(in_mux[14]), .C(in_mux[14]), .D(n1695), 
        .Z(n1431) );
  AO4 U1660 ( .A(n1606), .B(n1433), .C(n1432), .D(n1431), .Z(n1068) );
  AO2 U1661 ( .A(n1515), .B(in_pad_i[15]), .C(n1514), .D(nextc_sampled[15]), 
        .Z(n1435) );
  ND2 U1662 ( .A(n1516), .B(pextc_sampled[15]), .Z(n1434) );
  ND2 U1663 ( .A(n1435), .B(n1434), .Z(in_mux[15]) );
  NR2 U1664 ( .A(gpio_dat_i[15]), .B(n1519), .Z(n1604) );
  NR2 U1665 ( .A(n1631), .B(rgpio_ints[15]), .Z(n1438) );
  AO3 U1666 ( .A(n1696), .B(n1654), .C(n1520), .D(rgpio_inte[15]), .Z(n1437)
         );
  EO1 U1667 ( .A(rgpio_ptrig[15]), .B(in_mux[15]), .C(in_mux[15]), .D(n1696), 
        .Z(n1436) );
  AO4 U1668 ( .A(n1604), .B(n1438), .C(n1437), .D(n1436), .Z(n1067) );
  AO2 U1669 ( .A(n1515), .B(in_pad_i[16]), .C(n1514), .D(nextc_sampled[16]), 
        .Z(n1440) );
  ND2 U1670 ( .A(n1516), .B(pextc_sampled[16]), .Z(n1439) );
  ND2 U1671 ( .A(n1440), .B(n1439), .Z(in_mux[16]) );
  NR2 U1672 ( .A(gpio_dat_i[16]), .B(n1519), .Z(n1602) );
  NR2 U1673 ( .A(n1631), .B(rgpio_ints[16]), .Z(n1443) );
  AO3 U1674 ( .A(n1697), .B(n1653), .C(n1520), .D(rgpio_inte[16]), .Z(n1442)
         );
  EO1 U1675 ( .A(rgpio_ptrig[16]), .B(in_mux[16]), .C(in_mux[16]), .D(n1697), 
        .Z(n1441) );
  AO4 U1676 ( .A(n1602), .B(n1443), .C(n1442), .D(n1441), .Z(n1066) );
  AO2 U1677 ( .A(n1515), .B(in_pad_i[17]), .C(n1514), .D(nextc_sampled[17]), 
        .Z(n1445) );
  ND2 U1678 ( .A(n1516), .B(pextc_sampled[17]), .Z(n1444) );
  ND2 U1679 ( .A(n1445), .B(n1444), .Z(in_mux[17]) );
  NR2 U1680 ( .A(gpio_dat_i[17]), .B(n1519), .Z(n1600) );
  NR2 U1681 ( .A(n1631), .B(rgpio_ints[17]), .Z(n1448) );
  AO3 U1682 ( .A(n1698), .B(n1652), .C(n1520), .D(rgpio_inte[17]), .Z(n1447)
         );
  EO1 U1683 ( .A(rgpio_ptrig[17]), .B(in_mux[17]), .C(in_mux[17]), .D(n1698), 
        .Z(n1446) );
  AO4 U1684 ( .A(n1600), .B(n1448), .C(n1447), .D(n1446), .Z(n1065) );
  AO2 U1685 ( .A(n1515), .B(in_pad_i[18]), .C(n1514), .D(nextc_sampled[18]), 
        .Z(n1450) );
  ND2 U1686 ( .A(n1516), .B(pextc_sampled[18]), .Z(n1449) );
  ND2 U1687 ( .A(n1450), .B(n1449), .Z(in_mux[18]) );
  NR2 U1688 ( .A(gpio_dat_i[18]), .B(n1519), .Z(n1598) );
  NR2 U1689 ( .A(n1631), .B(rgpio_ints[18]), .Z(n1453) );
  AO3 U1690 ( .A(n1699), .B(n1651), .C(n1520), .D(rgpio_inte[18]), .Z(n1452)
         );
  EO1 U1691 ( .A(rgpio_ptrig[18]), .B(in_mux[18]), .C(in_mux[18]), .D(n1699), 
        .Z(n1451) );
  AO4 U1692 ( .A(n1598), .B(n1453), .C(n1452), .D(n1451), .Z(n1064) );
  AO2 U1693 ( .A(n1515), .B(in_pad_i[19]), .C(n1514), .D(nextc_sampled[19]), 
        .Z(n1455) );
  ND2 U1694 ( .A(n1516), .B(pextc_sampled[19]), .Z(n1454) );
  ND2 U1695 ( .A(n1455), .B(n1454), .Z(in_mux[19]) );
  NR2 U1696 ( .A(gpio_dat_i[19]), .B(n1519), .Z(n1596) );
  NR2 U1697 ( .A(n1631), .B(rgpio_ints[19]), .Z(n1458) );
  AO3 U1698 ( .A(n1700), .B(n1650), .C(n1520), .D(rgpio_inte[19]), .Z(n1457)
         );
  EO1 U1699 ( .A(rgpio_ptrig[19]), .B(in_mux[19]), .C(in_mux[19]), .D(n1700), 
        .Z(n1456) );
  AO4 U1700 ( .A(n1596), .B(n1458), .C(n1457), .D(n1456), .Z(n1063) );
  AO2 U1701 ( .A(n1515), .B(in_pad_i[20]), .C(n1514), .D(nextc_sampled[20]), 
        .Z(n1460) );
  ND2 U1702 ( .A(n1516), .B(pextc_sampled[20]), .Z(n1459) );
  ND2 U1703 ( .A(n1460), .B(n1459), .Z(in_mux[20]) );
  NR2 U1704 ( .A(gpio_dat_i[20]), .B(n1519), .Z(n1594) );
  NR2 U1705 ( .A(n1631), .B(rgpio_ints[20]), .Z(n1463) );
  AO3 U1706 ( .A(n1668), .B(n1647), .C(n1520), .D(rgpio_inte[20]), .Z(n1462)
         );
  EO1 U1707 ( .A(rgpio_ptrig[20]), .B(in_mux[20]), .C(in_mux[20]), .D(n1668), 
        .Z(n1461) );
  AO4 U1708 ( .A(n1594), .B(n1463), .C(n1462), .D(n1461), .Z(n1062) );
  AO2 U1709 ( .A(n1515), .B(in_pad_i[21]), .C(n1514), .D(nextc_sampled[21]), 
        .Z(n1465) );
  ND2 U1710 ( .A(n1516), .B(pextc_sampled[21]), .Z(n1464) );
  ND2 U1711 ( .A(n1465), .B(n1464), .Z(in_mux[21]) );
  NR2 U1712 ( .A(gpio_dat_i[21]), .B(n1519), .Z(n1592) );
  NR2 U1713 ( .A(n1631), .B(rgpio_ints[21]), .Z(n1468) );
  AO3 U1714 ( .A(n1669), .B(n1646), .C(n1520), .D(rgpio_inte[21]), .Z(n1467)
         );
  EO1 U1715 ( .A(rgpio_ptrig[21]), .B(in_mux[21]), .C(in_mux[21]), .D(n1669), 
        .Z(n1466) );
  AO4 U1716 ( .A(n1592), .B(n1468), .C(n1467), .D(n1466), .Z(n1061) );
  AO2 U1717 ( .A(n1515), .B(in_pad_i[22]), .C(n1514), .D(nextc_sampled[22]), 
        .Z(n1470) );
  ND2 U1718 ( .A(n1516), .B(pextc_sampled[22]), .Z(n1469) );
  ND2 U1719 ( .A(n1470), .B(n1469), .Z(in_mux[22]) );
  NR2 U1720 ( .A(gpio_dat_i[22]), .B(n1519), .Z(n1590) );
  NR2 U1721 ( .A(n1631), .B(rgpio_ints[22]), .Z(n1473) );
  AO3 U1722 ( .A(n1670), .B(n1645), .C(n1520), .D(rgpio_inte[22]), .Z(n1472)
         );
  EO1 U1723 ( .A(rgpio_ptrig[22]), .B(in_mux[22]), .C(in_mux[22]), .D(n1670), 
        .Z(n1471) );
  AO4 U1724 ( .A(n1590), .B(n1473), .C(n1472), .D(n1471), .Z(n1060) );
  AO2 U1725 ( .A(n1515), .B(in_pad_i[23]), .C(n1514), .D(nextc_sampled[23]), 
        .Z(n1475) );
  ND2 U1726 ( .A(n1516), .B(pextc_sampled[23]), .Z(n1474) );
  ND2 U1727 ( .A(n1475), .B(n1474), .Z(in_mux[23]) );
  NR2 U1728 ( .A(gpio_dat_i[23]), .B(n1519), .Z(n1588) );
  NR2 U1729 ( .A(n1631), .B(rgpio_ints[23]), .Z(n1478) );
  AO3 U1730 ( .A(n1671), .B(n1644), .C(n1520), .D(rgpio_inte[23]), .Z(n1477)
         );
  EO1 U1731 ( .A(rgpio_ptrig[23]), .B(in_mux[23]), .C(in_mux[23]), .D(n1671), 
        .Z(n1476) );
  AO4 U1732 ( .A(n1588), .B(n1478), .C(n1477), .D(n1476), .Z(n1059) );
  AO2 U1733 ( .A(n1515), .B(in_pad_i[24]), .C(n1514), .D(nextc_sampled[24]), 
        .Z(n1480) );
  ND2 U1734 ( .A(n1516), .B(pextc_sampled[24]), .Z(n1479) );
  ND2 U1735 ( .A(n1480), .B(n1479), .Z(in_mux[24]) );
  NR2 U1736 ( .A(gpio_dat_i[24]), .B(n1519), .Z(n1586) );
  NR2 U1737 ( .A(n1631), .B(rgpio_ints[24]), .Z(n1483) );
  AO3 U1738 ( .A(n1672), .B(n1643), .C(n1520), .D(rgpio_inte[24]), .Z(n1482)
         );
  EO1 U1739 ( .A(rgpio_ptrig[24]), .B(in_mux[24]), .C(in_mux[24]), .D(n1672), 
        .Z(n1481) );
  AO4 U1740 ( .A(n1586), .B(n1483), .C(n1482), .D(n1481), .Z(n1058) );
  AO2 U1741 ( .A(n1515), .B(in_pad_i[25]), .C(n1514), .D(nextc_sampled[25]), 
        .Z(n1485) );
  ND2 U1742 ( .A(n1516), .B(pextc_sampled[25]), .Z(n1484) );
  ND2 U1743 ( .A(n1485), .B(n1484), .Z(in_mux[25]) );
  NR2 U1744 ( .A(gpio_dat_i[25]), .B(n1519), .Z(n1584) );
  NR2 U1745 ( .A(n1631), .B(rgpio_ints[25]), .Z(n1488) );
  AO3 U1746 ( .A(n1673), .B(n1642), .C(n1520), .D(rgpio_inte[25]), .Z(n1487)
         );
  EO1 U1747 ( .A(rgpio_ptrig[25]), .B(in_mux[25]), .C(in_mux[25]), .D(n1673), 
        .Z(n1486) );
  AO4 U1748 ( .A(n1584), .B(n1488), .C(n1487), .D(n1486), .Z(n1057) );
  AO2 U1749 ( .A(n1515), .B(in_pad_i[26]), .C(n1514), .D(nextc_sampled[26]), 
        .Z(n1490) );
  ND2 U1750 ( .A(n1516), .B(pextc_sampled[26]), .Z(n1489) );
  ND2 U1751 ( .A(n1490), .B(n1489), .Z(in_mux[26]) );
  NR2 U1752 ( .A(gpio_dat_i[26]), .B(n1519), .Z(n1582) );
  NR2 U1753 ( .A(n1631), .B(rgpio_ints[26]), .Z(n1493) );
  AO3 U1754 ( .A(n1674), .B(n1641), .C(n1520), .D(rgpio_inte[26]), .Z(n1492)
         );
  EO1 U1755 ( .A(rgpio_ptrig[26]), .B(in_mux[26]), .C(in_mux[26]), .D(n1674), 
        .Z(n1491) );
  AO4 U1756 ( .A(n1582), .B(n1493), .C(n1492), .D(n1491), .Z(n1056) );
  AO2 U1757 ( .A(n1515), .B(in_pad_i[27]), .C(n1514), .D(nextc_sampled[27]), 
        .Z(n1495) );
  ND2 U1758 ( .A(n1516), .B(pextc_sampled[27]), .Z(n1494) );
  ND2 U1759 ( .A(n1495), .B(n1494), .Z(in_mux[27]) );
  NR2 U1760 ( .A(gpio_dat_i[27]), .B(n1519), .Z(n1580) );
  NR2 U1761 ( .A(n1631), .B(rgpio_ints[27]), .Z(n1498) );
  AO3 U1762 ( .A(n1675), .B(n1640), .C(n1520), .D(rgpio_inte[27]), .Z(n1497)
         );
  EO1 U1763 ( .A(rgpio_ptrig[27]), .B(in_mux[27]), .C(in_mux[27]), .D(n1675), 
        .Z(n1496) );
  AO4 U1764 ( .A(n1580), .B(n1498), .C(n1497), .D(n1496), .Z(n1055) );
  AO2 U1765 ( .A(n1515), .B(in_pad_i[28]), .C(n1514), .D(nextc_sampled[28]), 
        .Z(n1500) );
  ND2 U1766 ( .A(n1516), .B(pextc_sampled[28]), .Z(n1499) );
  ND2 U1767 ( .A(n1500), .B(n1499), .Z(in_mux[28]) );
  NR2 U1768 ( .A(gpio_dat_i[28]), .B(n1519), .Z(n1578) );
  NR2 U1769 ( .A(n1631), .B(rgpio_ints[28]), .Z(n1503) );
  AO3 U1770 ( .A(n1676), .B(n1639), .C(n1520), .D(rgpio_inte[28]), .Z(n1502)
         );
  EO1 U1771 ( .A(rgpio_ptrig[28]), .B(in_mux[28]), .C(in_mux[28]), .D(n1676), 
        .Z(n1501) );
  AO4 U1772 ( .A(n1578), .B(n1503), .C(n1502), .D(n1501), .Z(n1054) );
  AO2 U1773 ( .A(n1515), .B(in_pad_i[29]), .C(n1514), .D(nextc_sampled[29]), 
        .Z(n1505) );
  ND2 U1774 ( .A(n1516), .B(pextc_sampled[29]), .Z(n1504) );
  ND2 U1775 ( .A(n1505), .B(n1504), .Z(in_mux[29]) );
  NR2 U1776 ( .A(gpio_dat_i[29]), .B(n1519), .Z(n1576) );
  NR2 U1777 ( .A(n1631), .B(rgpio_ints[29]), .Z(n1508) );
  AO3 U1778 ( .A(n1677), .B(n1638), .C(n1520), .D(rgpio_inte[29]), .Z(n1507)
         );
  EO1 U1779 ( .A(rgpio_ptrig[29]), .B(in_mux[29]), .C(in_mux[29]), .D(n1677), 
        .Z(n1506) );
  AO4 U1780 ( .A(n1576), .B(n1508), .C(n1507), .D(n1506), .Z(n1053) );
  AO2 U1781 ( .A(n1515), .B(in_pad_i[30]), .C(n1514), .D(nextc_sampled[30]), 
        .Z(n1510) );
  ND2 U1782 ( .A(n1516), .B(pextc_sampled[30]), .Z(n1509) );
  ND2 U1783 ( .A(n1510), .B(n1509), .Z(in_mux[30]) );
  NR2 U1784 ( .A(gpio_dat_i[30]), .B(n1519), .Z(n1574) );
  NR2 U1785 ( .A(n1631), .B(rgpio_ints[30]), .Z(n1513) );
  AO3 U1786 ( .A(n1678), .B(n1637), .C(n1520), .D(rgpio_inte[30]), .Z(n1512)
         );
  EO1 U1787 ( .A(rgpio_ptrig[30]), .B(in_mux[30]), .C(in_mux[30]), .D(n1678), 
        .Z(n1511) );
  AO4 U1788 ( .A(n1574), .B(n1513), .C(n1512), .D(n1511), .Z(n1052) );
  AO2 U1789 ( .A(n1515), .B(in_pad_i[31]), .C(n1514), .D(nextc_sampled[31]), 
        .Z(n1518) );
  ND2 U1790 ( .A(n1516), .B(pextc_sampled[31]), .Z(n1517) );
  ND2 U1791 ( .A(n1518), .B(n1517), .Z(in_mux[31]) );
  NR2 U1792 ( .A(gpio_dat_i[31]), .B(n1519), .Z(n1572) );
  NR2 U1793 ( .A(n1631), .B(rgpio_ints[31]), .Z(n1523) );
  AO3 U1794 ( .A(n1679), .B(n1636), .C(n1520), .D(rgpio_inte[31]), .Z(n1522)
         );
  EO1 U1795 ( .A(rgpio_ptrig[31]), .B(in_mux[31]), .C(in_mux[31]), .D(n1679), 
        .Z(n1521) );
  AO4 U1796 ( .A(n1572), .B(n1523), .C(n1522), .D(n1521), .Z(n1051) );
  NR2 U1797 ( .A(n1537), .B(n1524), .Z(n1526) );
  IVP U1798 ( .A(gpio_dat_i[31]), .Z(n1538) );
  IVP U1799 ( .A(n1526), .Z(n1525) );
  AO2 U1800 ( .A(n1526), .B(n1538), .C(n1701), .D(n1525), .Z(n1050) );
  IVP U1801 ( .A(gpio_dat_i[30]), .Z(n1539) );
  AO2 U1802 ( .A(n1526), .B(n1539), .C(n1702), .D(n1525), .Z(n1049) );
  IVP U1803 ( .A(gpio_dat_i[29]), .Z(n1540) );
  AO2 U1804 ( .A(n1526), .B(n1540), .C(n1703), .D(n1525), .Z(n1048) );
  IVP U1805 ( .A(gpio_dat_i[28]), .Z(n1541) );
  AO2 U1806 ( .A(n1526), .B(n1541), .C(n1704), .D(n1525), .Z(n1047) );
  IVP U1807 ( .A(gpio_dat_i[27]), .Z(n1542) );
  AO2 U1808 ( .A(n1526), .B(n1542), .C(n1705), .D(n1525), .Z(n1046) );
  IVP U1809 ( .A(gpio_dat_i[26]), .Z(n1543) );
  AO2 U1810 ( .A(n1526), .B(n1543), .C(n1706), .D(n1525), .Z(n1045) );
  IVP U1811 ( .A(gpio_dat_i[25]), .Z(n1544) );
  AO2 U1812 ( .A(n1526), .B(n1544), .C(n1707), .D(n1525), .Z(n1044) );
  IVP U1813 ( .A(gpio_dat_i[24]), .Z(n1545) );
  AO2 U1814 ( .A(n1526), .B(n1545), .C(n1708), .D(n1525), .Z(n1043) );
  IVP U1815 ( .A(gpio_dat_i[23]), .Z(n1546) );
  AO2 U1816 ( .A(n1526), .B(n1546), .C(n1709), .D(n1525), .Z(n1042) );
  IVP U1817 ( .A(gpio_dat_i[22]), .Z(n1547) );
  AO2 U1818 ( .A(n1526), .B(n1547), .C(n1710), .D(n1525), .Z(n1041) );
  IVP U1819 ( .A(gpio_dat_i[21]), .Z(n1548) );
  AO2 U1820 ( .A(n1526), .B(n1548), .C(n1711), .D(n1525), .Z(n1040) );
  IVP U1821 ( .A(gpio_dat_i[20]), .Z(n1549) );
  AO2 U1822 ( .A(n1526), .B(n1549), .C(n1712), .D(n1525), .Z(n1039) );
  IVP U1823 ( .A(gpio_dat_i[19]), .Z(n1550) );
  AO2 U1824 ( .A(n1526), .B(n1550), .C(n1713), .D(n1525), .Z(n1038) );
  IVP U1825 ( .A(gpio_dat_i[18]), .Z(n1551) );
  AO2 U1826 ( .A(n1526), .B(n1551), .C(n1714), .D(n1525), .Z(n1037) );
  IVP U1827 ( .A(gpio_dat_i[17]), .Z(n1552) );
  AO2 U1828 ( .A(n1526), .B(n1552), .C(n1715), .D(n1525), .Z(n1036) );
  IVP U1829 ( .A(gpio_dat_i[16]), .Z(n1553) );
  AO2 U1830 ( .A(n1526), .B(n1553), .C(n1716), .D(n1525), .Z(n1035) );
  IVP U1831 ( .A(gpio_dat_i[15]), .Z(n1554) );
  AO2 U1832 ( .A(n1526), .B(n1554), .C(n1717), .D(n1525), .Z(n1034) );
  IVP U1833 ( .A(gpio_dat_i[14]), .Z(n1555) );
  AO2 U1834 ( .A(n1526), .B(n1555), .C(n1718), .D(n1525), .Z(n1033) );
  IVP U1835 ( .A(gpio_dat_i[13]), .Z(n1556) );
  AO2 U1836 ( .A(n1526), .B(n1556), .C(n1719), .D(n1525), .Z(n1032) );
  IVP U1837 ( .A(gpio_dat_i[12]), .Z(n1557) );
  AO2 U1838 ( .A(n1526), .B(n1557), .C(n1720), .D(n1525), .Z(n1031) );
  IVP U1839 ( .A(gpio_dat_i[11]), .Z(n1558) );
  AO2 U1840 ( .A(n1526), .B(n1558), .C(n1721), .D(n1525), .Z(n1030) );
  IVP U1841 ( .A(gpio_dat_i[10]), .Z(n1559) );
  AO2 U1842 ( .A(n1526), .B(n1559), .C(n1722), .D(n1525), .Z(n1029) );
  IVP U1843 ( .A(gpio_dat_i[9]), .Z(n1560) );
  AO2 U1844 ( .A(n1526), .B(n1560), .C(n1723), .D(n1525), .Z(n1028) );
  IVP U1845 ( .A(gpio_dat_i[8]), .Z(n1561) );
  AO2 U1846 ( .A(n1526), .B(n1561), .C(n1724), .D(n1525), .Z(n1027) );
  IVP U1847 ( .A(gpio_dat_i[7]), .Z(n1562) );
  AO2 U1848 ( .A(n1526), .B(n1562), .C(n1725), .D(n1525), .Z(n1026) );
  IVP U1849 ( .A(gpio_dat_i[6]), .Z(n1563) );
  AO2 U1850 ( .A(n1526), .B(n1563), .C(n1726), .D(n1525), .Z(n1025) );
  IVP U1851 ( .A(gpio_dat_i[5]), .Z(n1564) );
  AO2 U1852 ( .A(n1526), .B(n1564), .C(n1727), .D(n1525), .Z(n1024) );
  IVP U1853 ( .A(gpio_dat_i[4]), .Z(n1565) );
  AO2 U1854 ( .A(n1526), .B(n1565), .C(n1728), .D(n1525), .Z(n1023) );
  IVP U1855 ( .A(gpio_dat_i[3]), .Z(n1566) );
  AO2 U1856 ( .A(n1526), .B(n1566), .C(n1729), .D(n1525), .Z(n1022) );
  IVP U1857 ( .A(gpio_dat_i[2]), .Z(n1567) );
  AO2 U1858 ( .A(n1526), .B(n1567), .C(n1730), .D(n1525), .Z(n1021) );
  AO2 U1859 ( .A(n1526), .B(n1568), .C(n1731), .D(n1525), .Z(n1020) );
  AO2 U1860 ( .A(n1526), .B(n1569), .C(n1732), .D(n1525), .Z(n1019) );
  NR2 U1861 ( .A(n1537), .B(n1527), .Z(n1528) );
  EO1 U1862 ( .A(n1528), .B(n1538), .C(rgpio_inte[31]), .D(n1528), .Z(n1018)
         );
  EO1 U1863 ( .A(n1528), .B(n1539), .C(rgpio_inte[30]), .D(n1528), .Z(n1017)
         );
  EO1 U1864 ( .A(n1528), .B(n1540), .C(rgpio_inte[29]), .D(n1528), .Z(n1016)
         );
  EO1 U1865 ( .A(n1528), .B(n1541), .C(rgpio_inte[28]), .D(n1528), .Z(n1015)
         );
  EO1 U1866 ( .A(n1528), .B(n1542), .C(rgpio_inte[27]), .D(n1528), .Z(n1014)
         );
  EO1 U1867 ( .A(n1528), .B(n1543), .C(rgpio_inte[26]), .D(n1528), .Z(n1013)
         );
  EO1 U1868 ( .A(n1528), .B(n1544), .C(rgpio_inte[25]), .D(n1528), .Z(n1012)
         );
  EO1 U1869 ( .A(n1528), .B(n1545), .C(rgpio_inte[24]), .D(n1528), .Z(n1011)
         );
  EO1 U1870 ( .A(n1528), .B(n1546), .C(rgpio_inte[23]), .D(n1528), .Z(n1010)
         );
  EO1 U1871 ( .A(n1528), .B(n1547), .C(rgpio_inte[22]), .D(n1528), .Z(n1009)
         );
  EO1 U1872 ( .A(n1528), .B(n1548), .C(rgpio_inte[21]), .D(n1528), .Z(n1008)
         );
  EO1 U1873 ( .A(n1528), .B(n1549), .C(rgpio_inte[20]), .D(n1528), .Z(n1007)
         );
  EO1 U1874 ( .A(n1528), .B(n1550), .C(rgpio_inte[19]), .D(n1528), .Z(n1006)
         );
  EO1 U1875 ( .A(n1528), .B(n1551), .C(rgpio_inte[18]), .D(n1528), .Z(n1005)
         );
  EO1 U1876 ( .A(n1528), .B(n1552), .C(rgpio_inte[17]), .D(n1528), .Z(n1004)
         );
  EO1 U1877 ( .A(n1528), .B(n1553), .C(rgpio_inte[16]), .D(n1528), .Z(n1003)
         );
  EO1 U1878 ( .A(n1528), .B(n1554), .C(rgpio_inte[15]), .D(n1528), .Z(n1002)
         );
  EO1 U1879 ( .A(n1528), .B(n1555), .C(rgpio_inte[14]), .D(n1528), .Z(n1001)
         );
  EO1 U1880 ( .A(n1528), .B(n1556), .C(rgpio_inte[13]), .D(n1528), .Z(n1000)
         );
  EO1 U1881 ( .A(n1528), .B(n1557), .C(rgpio_inte[12]), .D(n1528), .Z(n999) );
  EO1 U1882 ( .A(n1528), .B(n1558), .C(rgpio_inte[11]), .D(n1528), .Z(n998) );
  EO1 U1883 ( .A(n1528), .B(n1559), .C(rgpio_inte[10]), .D(n1528), .Z(n997) );
  EO1 U1884 ( .A(n1528), .B(n1560), .C(rgpio_inte[9]), .D(n1528), .Z(n996) );
  EO1 U1885 ( .A(n1528), .B(n1561), .C(rgpio_inte[8]), .D(n1528), .Z(n995) );
  EO1 U1886 ( .A(n1528), .B(n1562), .C(rgpio_inte[7]), .D(n1528), .Z(n994) );
  EO1 U1887 ( .A(n1528), .B(n1563), .C(rgpio_inte[6]), .D(n1528), .Z(n993) );
  EO1 U1888 ( .A(n1528), .B(n1564), .C(rgpio_inte[5]), .D(n1528), .Z(n992) );
  EO1 U1889 ( .A(n1528), .B(n1565), .C(rgpio_inte[4]), .D(n1528), .Z(n991) );
  EO1 U1890 ( .A(n1528), .B(n1566), .C(rgpio_inte[3]), .D(n1528), .Z(n990) );
  EO1 U1891 ( .A(n1528), .B(n1567), .C(rgpio_inte[2]), .D(n1528), .Z(n989) );
  EO1 U1892 ( .A(n1528), .B(n1568), .C(rgpio_inte[1]), .D(n1528), .Z(n988) );
  EO1 U1893 ( .A(n1528), .B(n1569), .C(rgpio_inte[0]), .D(n1528), .Z(n987) );
  NR2 U1894 ( .A(n1537), .B(n1529), .Z(n1530) );
  EO1 U1895 ( .A(n1530), .B(n1538), .C(oen_padoe_o[31]), .D(n1530), .Z(n986)
         );
  EO1 U1896 ( .A(n1530), .B(n1539), .C(oen_padoe_o[30]), .D(n1530), .Z(n985)
         );
  EO1 U1897 ( .A(n1530), .B(n1540), .C(oen_padoe_o[29]), .D(n1530), .Z(n984)
         );
  EO1 U1898 ( .A(n1530), .B(n1541), .C(oen_padoe_o[28]), .D(n1530), .Z(n983)
         );
  EO1 U1899 ( .A(n1530), .B(n1542), .C(oen_padoe_o[27]), .D(n1530), .Z(n982)
         );
  EO1 U1900 ( .A(n1530), .B(n1543), .C(oen_padoe_o[26]), .D(n1530), .Z(n981)
         );
  EO1 U1901 ( .A(n1530), .B(n1544), .C(oen_padoe_o[25]), .D(n1530), .Z(n980)
         );
  EO1 U1902 ( .A(n1530), .B(n1545), .C(oen_padoe_o[24]), .D(n1530), .Z(n979)
         );
  EO1 U1903 ( .A(n1530), .B(n1546), .C(oen_padoe_o[23]), .D(n1530), .Z(n978)
         );
  EO1 U1904 ( .A(n1530), .B(n1547), .C(oen_padoe_o[22]), .D(n1530), .Z(n977)
         );
  EO1 U1905 ( .A(n1530), .B(n1548), .C(oen_padoe_o[21]), .D(n1530), .Z(n976)
         );
  EO1 U1906 ( .A(n1530), .B(n1549), .C(oen_padoe_o[20]), .D(n1530), .Z(n975)
         );
  EO1 U1907 ( .A(n1530), .B(n1550), .C(oen_padoe_o[19]), .D(n1530), .Z(n974)
         );
  EO1 U1908 ( .A(n1530), .B(n1551), .C(oen_padoe_o[18]), .D(n1530), .Z(n973)
         );
  EO1 U1909 ( .A(n1530), .B(n1552), .C(oen_padoe_o[17]), .D(n1530), .Z(n972)
         );
  EO1 U1910 ( .A(n1530), .B(n1553), .C(oen_padoe_o[16]), .D(n1530), .Z(n971)
         );
  EO1 U1911 ( .A(n1530), .B(n1554), .C(oen_padoe_o[15]), .D(n1530), .Z(n970)
         );
  EO1 U1912 ( .A(n1530), .B(n1555), .C(oen_padoe_o[14]), .D(n1530), .Z(n969)
         );
  EO1 U1913 ( .A(n1530), .B(n1556), .C(oen_padoe_o[13]), .D(n1530), .Z(n968)
         );
  EO1 U1914 ( .A(n1530), .B(n1557), .C(oen_padoe_o[12]), .D(n1530), .Z(n967)
         );
  EO1 U1915 ( .A(n1530), .B(n1558), .C(oen_padoe_o[11]), .D(n1530), .Z(n966)
         );
  EO1 U1916 ( .A(n1530), .B(n1559), .C(oen_padoe_o[10]), .D(n1530), .Z(n965)
         );
  EO1 U1917 ( .A(n1530), .B(n1560), .C(oen_padoe_o[9]), .D(n1530), .Z(n964) );
  EO1 U1918 ( .A(n1530), .B(n1561), .C(oen_padoe_o[8]), .D(n1530), .Z(n963) );
  EO1 U1919 ( .A(n1530), .B(n1562), .C(oen_padoe_o[7]), .D(n1530), .Z(n962) );
  EO1 U1920 ( .A(n1530), .B(n1563), .C(oen_padoe_o[6]), .D(n1530), .Z(n961) );
  EO1 U1921 ( .A(n1530), .B(n1564), .C(oen_padoe_o[5]), .D(n1530), .Z(n960) );
  EO1 U1922 ( .A(n1530), .B(n1565), .C(oen_padoe_o[4]), .D(n1530), .Z(n959) );
  EO1 U1923 ( .A(n1530), .B(n1566), .C(oen_padoe_o[3]), .D(n1530), .Z(n958) );
  EO1 U1924 ( .A(n1530), .B(n1567), .C(oen_padoe_o[2]), .D(n1530), .Z(n957) );
  EO1 U1925 ( .A(n1530), .B(n1568), .C(oen_padoe_o[1]), .D(n1530), .Z(n956) );
  EO1 U1926 ( .A(n1530), .B(n1569), .C(oen_padoe_o[0]), .D(n1530), .Z(n955) );
  NR2 U1927 ( .A(n1537), .B(n1531), .Z(n1533) );
  AO2 U1928 ( .A(n1533), .B(n1538), .C(n1636), .D(n1532), .Z(n954) );
  AO2 U1929 ( .A(n1533), .B(n1539), .C(n1637), .D(n1532), .Z(n953) );
  AO2 U1930 ( .A(n1533), .B(n1540), .C(n1638), .D(n1532), .Z(n952) );
  AO2 U1931 ( .A(n1533), .B(n1541), .C(n1639), .D(n1532), .Z(n951) );
  AO2 U1932 ( .A(n1533), .B(n1542), .C(n1640), .D(n1532), .Z(n950) );
  AO2 U1933 ( .A(n1533), .B(n1543), .C(n1641), .D(n1532), .Z(n949) );
  AO2 U1934 ( .A(n1533), .B(n1544), .C(n1642), .D(n1532), .Z(n948) );
  AO2 U1935 ( .A(n1533), .B(n1545), .C(n1643), .D(n1532), .Z(n947) );
  AO2 U1936 ( .A(n1533), .B(n1546), .C(n1644), .D(n1532), .Z(n946) );
  AO2 U1937 ( .A(n1533), .B(n1547), .C(n1645), .D(n1532), .Z(n945) );
  AO2 U1938 ( .A(n1533), .B(n1548), .C(n1646), .D(n1532), .Z(n944) );
  AO2 U1939 ( .A(n1533), .B(n1549), .C(n1647), .D(n1532), .Z(n943) );
  IVP U1940 ( .A(n1533), .Z(n1532) );
  AO2 U1941 ( .A(n1533), .B(n1550), .C(n1650), .D(n1532), .Z(n942) );
  AO2 U1942 ( .A(n1533), .B(n1551), .C(n1651), .D(n1532), .Z(n941) );
  AO2 U1943 ( .A(n1533), .B(n1552), .C(n1652), .D(n1532), .Z(n940) );
  AO2 U1944 ( .A(n1533), .B(n1553), .C(n1653), .D(n1532), .Z(n939) );
  AO2 U1945 ( .A(n1533), .B(n1554), .C(n1654), .D(n1532), .Z(n938) );
  AO2 U1946 ( .A(n1533), .B(n1555), .C(n1655), .D(n1532), .Z(n937) );
  AO2 U1947 ( .A(n1533), .B(n1556), .C(n1656), .D(n1532), .Z(n936) );
  AO2 U1948 ( .A(n1533), .B(n1557), .C(n1657), .D(n1532), .Z(n935) );
  AO2 U1949 ( .A(n1533), .B(n1558), .C(n1658), .D(n1532), .Z(n934) );
  AO2 U1950 ( .A(n1533), .B(n1559), .C(n1659), .D(n1532), .Z(n933) );
  AO2 U1951 ( .A(n1533), .B(n1560), .C(n1660), .D(n1532), .Z(n932) );
  AO2 U1952 ( .A(n1533), .B(n1561), .C(n1661), .D(n1532), .Z(n931) );
  AO2 U1953 ( .A(n1533), .B(n1562), .C(n1662), .D(n1532), .Z(n930) );
  AO2 U1954 ( .A(n1533), .B(n1563), .C(n1663), .D(n1532), .Z(n929) );
  AO2 U1955 ( .A(n1533), .B(n1564), .C(n1664), .D(n1532), .Z(n928) );
  AO2 U1956 ( .A(n1533), .B(n1565), .C(n1665), .D(n1532), .Z(n927) );
  AO2 U1957 ( .A(n1533), .B(n1566), .C(n1666), .D(n1532), .Z(n926) );
  AO2 U1958 ( .A(n1533), .B(n1567), .C(n1667), .D(n1532), .Z(n925) );
  AO2 U1959 ( .A(n1533), .B(n1568), .C(n1680), .D(n1532), .Z(n924) );
  AO2 U1960 ( .A(n1533), .B(n1569), .C(n1681), .D(n1532), .Z(n923) );
  NR2 U1961 ( .A(n1537), .B(n1534), .Z(n1535) );
  EO1 U1962 ( .A(n1535), .B(n1538), .C(rgpio_aux[31]), .D(n1535), .Z(n922) );
  EO1 U1963 ( .A(n1535), .B(n1539), .C(rgpio_aux[30]), .D(n1535), .Z(n921) );
  EO1 U1964 ( .A(n1535), .B(n1540), .C(rgpio_aux[29]), .D(n1535), .Z(n920) );
  EO1 U1965 ( .A(n1535), .B(n1541), .C(rgpio_aux[28]), .D(n1535), .Z(n919) );
  EO1 U1966 ( .A(n1535), .B(n1542), .C(rgpio_aux[27]), .D(n1535), .Z(n918) );
  EO1 U1967 ( .A(n1535), .B(n1543), .C(rgpio_aux[26]), .D(n1535), .Z(n917) );
  EO1 U1968 ( .A(n1535), .B(n1544), .C(rgpio_aux[25]), .D(n1535), .Z(n916) );
  EO1 U1969 ( .A(n1535), .B(n1545), .C(rgpio_aux[24]), .D(n1535), .Z(n915) );
  EO1 U1970 ( .A(n1535), .B(n1546), .C(rgpio_aux[23]), .D(n1535), .Z(n914) );
  EO1 U1971 ( .A(n1535), .B(n1547), .C(rgpio_aux[22]), .D(n1535), .Z(n913) );
  EO1 U1972 ( .A(n1535), .B(n1548), .C(rgpio_aux[21]), .D(n1535), .Z(n912) );
  EO1 U1973 ( .A(n1535), .B(n1549), .C(rgpio_aux[20]), .D(n1535), .Z(n911) );
  EO1 U1974 ( .A(n1535), .B(n1550), .C(rgpio_aux[19]), .D(n1535), .Z(n910) );
  EO1 U1975 ( .A(n1535), .B(n1551), .C(rgpio_aux[18]), .D(n1535), .Z(n909) );
  EO1 U1976 ( .A(n1535), .B(n1552), .C(rgpio_aux[17]), .D(n1535), .Z(n908) );
  EO1 U1977 ( .A(n1535), .B(n1553), .C(rgpio_aux[16]), .D(n1535), .Z(n907) );
  EO1 U1978 ( .A(n1535), .B(n1554), .C(rgpio_aux[15]), .D(n1535), .Z(n906) );
  EO1 U1979 ( .A(n1535), .B(n1555), .C(rgpio_aux[14]), .D(n1535), .Z(n905) );
  EO1 U1980 ( .A(n1535), .B(n1556), .C(rgpio_aux[13]), .D(n1535), .Z(n904) );
  EO1 U1981 ( .A(n1535), .B(n1557), .C(rgpio_aux[12]), .D(n1535), .Z(n903) );
  EO1 U1982 ( .A(n1535), .B(n1558), .C(rgpio_aux[11]), .D(n1535), .Z(n902) );
  EO1 U1983 ( .A(n1535), .B(n1559), .C(rgpio_aux[10]), .D(n1535), .Z(n901) );
  EO1 U1984 ( .A(n1535), .B(n1560), .C(rgpio_aux[9]), .D(n1535), .Z(n900) );
  EO1 U1985 ( .A(n1535), .B(n1561), .C(rgpio_aux[8]), .D(n1535), .Z(n899) );
  EO1 U1986 ( .A(n1535), .B(n1562), .C(rgpio_aux[7]), .D(n1535), .Z(n898) );
  EO1 U1987 ( .A(n1535), .B(n1563), .C(rgpio_aux[6]), .D(n1535), .Z(n897) );
  EO1 U1988 ( .A(n1535), .B(n1564), .C(rgpio_aux[5]), .D(n1535), .Z(n896) );
  EO1 U1989 ( .A(n1535), .B(n1565), .C(rgpio_aux[4]), .D(n1535), .Z(n895) );
  EO1 U1990 ( .A(n1535), .B(n1566), .C(rgpio_aux[3]), .D(n1535), .Z(n894) );
  EO1 U1991 ( .A(n1535), .B(n1567), .C(rgpio_aux[2]), .D(n1535), .Z(n893) );
  EO1 U1992 ( .A(n1535), .B(n1568), .C(rgpio_aux[1]), .D(n1535), .Z(n892) );
  EO1 U1993 ( .A(n1535), .B(n1569), .C(rgpio_aux[0]), .D(n1535), .Z(n891) );
  NR2 U1994 ( .A(n1537), .B(n1536), .Z(n1570) );
  EO1 U1995 ( .A(n1570), .B(n1538), .C(rgpio_eclk[31]), .D(n1570), .Z(n890) );
  EO1 U1996 ( .A(n1570), .B(n1539), .C(rgpio_eclk[30]), .D(n1570), .Z(n889) );
  EO1 U1997 ( .A(n1570), .B(n1540), .C(rgpio_eclk[29]), .D(n1570), .Z(n888) );
  EO1 U1998 ( .A(n1570), .B(n1541), .C(rgpio_eclk[28]), .D(n1570), .Z(n887) );
  EO1 U1999 ( .A(n1570), .B(n1542), .C(rgpio_eclk[27]), .D(n1570), .Z(n886) );
  EO1 U2000 ( .A(n1570), .B(n1543), .C(rgpio_eclk[26]), .D(n1570), .Z(n885) );
  EO1 U2001 ( .A(n1570), .B(n1544), .C(rgpio_eclk[25]), .D(n1570), .Z(n884) );
  EO1 U2002 ( .A(n1570), .B(n1545), .C(rgpio_eclk[24]), .D(n1570), .Z(n883) );
  EO1 U2003 ( .A(n1570), .B(n1546), .C(rgpio_eclk[23]), .D(n1570), .Z(n882) );
  EO1 U2004 ( .A(n1570), .B(n1547), .C(rgpio_eclk[22]), .D(n1570), .Z(n881) );
  EO1 U2005 ( .A(n1570), .B(n1548), .C(rgpio_eclk[21]), .D(n1570), .Z(n880) );
  EO1 U2006 ( .A(n1570), .B(n1549), .C(rgpio_eclk[20]), .D(n1570), .Z(n879) );
  EO1 U2007 ( .A(n1570), .B(n1550), .C(rgpio_eclk[19]), .D(n1570), .Z(n878) );
  EO1 U2008 ( .A(n1570), .B(n1551), .C(rgpio_eclk[18]), .D(n1570), .Z(n877) );
  EO1 U2009 ( .A(n1570), .B(n1552), .C(rgpio_eclk[17]), .D(n1570), .Z(n876) );
  EO1 U2010 ( .A(n1570), .B(n1553), .C(rgpio_eclk[16]), .D(n1570), .Z(n875) );
  EO1 U2011 ( .A(n1570), .B(n1554), .C(rgpio_eclk[15]), .D(n1570), .Z(n874) );
  EO1 U2012 ( .A(n1570), .B(n1555), .C(rgpio_eclk[14]), .D(n1570), .Z(n873) );
  EO1 U2013 ( .A(n1570), .B(n1556), .C(rgpio_eclk[13]), .D(n1570), .Z(n872) );
  EO1 U2014 ( .A(n1570), .B(n1557), .C(rgpio_eclk[12]), .D(n1570), .Z(n871) );
  EO1 U2015 ( .A(n1570), .B(n1558), .C(rgpio_eclk[11]), .D(n1570), .Z(n870) );
  EO1 U2016 ( .A(n1570), .B(n1559), .C(rgpio_eclk[10]), .D(n1570), .Z(n869) );
  EO1 U2017 ( .A(n1570), .B(n1560), .C(rgpio_eclk[9]), .D(n1570), .Z(n868) );
  EO1 U2018 ( .A(n1570), .B(n1561), .C(rgpio_eclk[8]), .D(n1570), .Z(n867) );
  EO1 U2019 ( .A(n1570), .B(n1562), .C(rgpio_eclk[7]), .D(n1570), .Z(n866) );
  EO1 U2020 ( .A(n1570), .B(n1563), .C(rgpio_eclk[6]), .D(n1570), .Z(n865) );
  EO1 U2021 ( .A(n1570), .B(n1564), .C(rgpio_eclk[5]), .D(n1570), .Z(n864) );
  EO1 U2022 ( .A(n1570), .B(n1565), .C(rgpio_eclk[4]), .D(n1570), .Z(n863) );
  EO1 U2023 ( .A(n1570), .B(n1566), .C(rgpio_eclk[3]), .D(n1570), .Z(n862) );
  EO1 U2024 ( .A(n1570), .B(n1567), .C(rgpio_eclk[2]), .D(n1570), .Z(n861) );
  EO1 U2025 ( .A(n1570), .B(n1568), .C(rgpio_eclk[1]), .D(n1570), .Z(n860) );
  EO1 U2026 ( .A(n1570), .B(n1569), .C(rgpio_eclk[0]), .D(n1570), .Z(n859) );
  NR2 U2027 ( .A(n1631), .B(rgpio_nec[31]), .Z(n1571) );
  NR2 U2028 ( .A(n1572), .B(n1571), .Z(n858) );
  NR2 U2029 ( .A(n1631), .B(rgpio_nec[30]), .Z(n1573) );
  NR2 U2030 ( .A(n1574), .B(n1573), .Z(n857) );
  NR2 U2031 ( .A(n1631), .B(rgpio_nec[29]), .Z(n1575) );
  NR2 U2032 ( .A(n1576), .B(n1575), .Z(n856) );
  NR2 U2033 ( .A(n1631), .B(rgpio_nec[28]), .Z(n1577) );
  NR2 U2034 ( .A(n1578), .B(n1577), .Z(n855) );
  NR2 U2035 ( .A(n1631), .B(rgpio_nec[27]), .Z(n1579) );
  NR2 U2036 ( .A(n1580), .B(n1579), .Z(n854) );
  NR2 U2037 ( .A(n1631), .B(rgpio_nec[26]), .Z(n1581) );
  NR2 U2038 ( .A(n1582), .B(n1581), .Z(n853) );
  NR2 U2039 ( .A(n1631), .B(rgpio_nec[25]), .Z(n1583) );
  NR2 U2040 ( .A(n1584), .B(n1583), .Z(n852) );
  NR2 U2041 ( .A(n1631), .B(rgpio_nec[24]), .Z(n1585) );
  NR2 U2042 ( .A(n1586), .B(n1585), .Z(n851) );
  NR2 U2043 ( .A(n1631), .B(rgpio_nec[23]), .Z(n1587) );
  NR2 U2044 ( .A(n1588), .B(n1587), .Z(n850) );
  NR2 U2045 ( .A(n1631), .B(rgpio_nec[22]), .Z(n1589) );
  NR2 U2046 ( .A(n1590), .B(n1589), .Z(n849) );
  NR2 U2047 ( .A(n1631), .B(rgpio_nec[21]), .Z(n1591) );
  NR2 U2048 ( .A(n1592), .B(n1591), .Z(n848) );
  NR2 U2049 ( .A(n1631), .B(rgpio_nec[20]), .Z(n1593) );
  NR2 U2050 ( .A(n1594), .B(n1593), .Z(n847) );
  NR2 U2051 ( .A(n1631), .B(rgpio_nec[19]), .Z(n1595) );
  NR2 U2052 ( .A(n1596), .B(n1595), .Z(n846) );
  NR2 U2053 ( .A(n1631), .B(rgpio_nec[18]), .Z(n1597) );
  NR2 U2054 ( .A(n1598), .B(n1597), .Z(n845) );
  NR2 U2055 ( .A(n1631), .B(rgpio_nec[17]), .Z(n1599) );
  NR2 U2056 ( .A(n1600), .B(n1599), .Z(n844) );
  NR2 U2057 ( .A(n1631), .B(rgpio_nec[16]), .Z(n1601) );
  NR2 U2058 ( .A(n1602), .B(n1601), .Z(n843) );
  NR2 U2059 ( .A(n1631), .B(rgpio_nec[15]), .Z(n1603) );
  NR2 U2060 ( .A(n1604), .B(n1603), .Z(n842) );
  NR2 U2061 ( .A(n1631), .B(rgpio_nec[14]), .Z(n1605) );
  NR2 U2062 ( .A(n1606), .B(n1605), .Z(n841) );
  NR2 U2063 ( .A(n1631), .B(rgpio_nec[13]), .Z(n1607) );
  NR2 U2064 ( .A(n1608), .B(n1607), .Z(n840) );
  NR2 U2065 ( .A(n1631), .B(rgpio_nec[12]), .Z(n1609) );
  NR2 U2066 ( .A(n1610), .B(n1609), .Z(n839) );
  NR2 U2067 ( .A(n1631), .B(rgpio_nec[11]), .Z(n1611) );
  NR2 U2068 ( .A(n1612), .B(n1611), .Z(n838) );
  NR2 U2069 ( .A(n1631), .B(rgpio_nec[10]), .Z(n1613) );
  NR2 U2070 ( .A(n1614), .B(n1613), .Z(n837) );
  NR2 U2071 ( .A(n1631), .B(rgpio_nec[9]), .Z(n1615) );
  NR2 U2072 ( .A(n1616), .B(n1615), .Z(n836) );
  NR2 U2073 ( .A(n1631), .B(rgpio_nec[8]), .Z(n1617) );
  NR2 U2074 ( .A(n1618), .B(n1617), .Z(n835) );
  NR2 U2075 ( .A(n1631), .B(rgpio_nec[7]), .Z(n1619) );
  NR2 U2076 ( .A(n1620), .B(n1619), .Z(n834) );
  NR2 U2077 ( .A(n1631), .B(rgpio_nec[6]), .Z(n1621) );
  NR2 U2078 ( .A(n1622), .B(n1621), .Z(n833) );
  NR2 U2079 ( .A(n1631), .B(rgpio_nec[5]), .Z(n1623) );
  NR2 U2080 ( .A(n1624), .B(n1623), .Z(n832) );
  NR2 U2081 ( .A(n1631), .B(rgpio_nec[4]), .Z(n1625) );
  NR2 U2082 ( .A(n1626), .B(n1625), .Z(n831) );
  NR2 U2083 ( .A(n1631), .B(rgpio_nec[3]), .Z(n1627) );
  NR2 U2084 ( .A(n1628), .B(n1627), .Z(n830) );
  NR2 U2085 ( .A(n1631), .B(rgpio_nec[2]), .Z(n1629) );
  NR2 U2086 ( .A(n1630), .B(n1629), .Z(n829) );
  NR2 U2087 ( .A(n1631), .B(rgpio_nec[1]), .Z(n1632) );
  NR2 U2088 ( .A(n1633), .B(n1632), .Z(n828) );
  NR2 U2089 ( .A(n1631), .B(rgpio_nec[0]), .Z(n1634) );
  NR2 U2090 ( .A(n1635), .B(n1634), .Z(n827) );
endmodule

