/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat May 10 09:13:43 2025
/////////////////////////////////////////////////////////////


module apb_top ( PCLK, PRESETn, PSEL, PENABLE, PWRITE, PADDR, PWDATA, PRDATA, 
        IRQ, PREADY, aux_in, io_pad, ext_clk_pad_i );
  input [31:0] PADDR;
  input [31:0] PWDATA;
  output [31:0] PRDATA;
  input [31:0] aux_in;
  inout [31:0] io_pad;
  input PCLK, PRESETn, PSEL, PENABLE, PWRITE, ext_clk_pad_i;
  output IRQ, PREADY;
  wire   sys_clk, sys_rst, gpio_eclk, \if_instance/fs1/N21 ,
         \if_instance/fs1/N20 , n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652,
         n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662,
         n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672,
         n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682,
         n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712,
         n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722,
         n1723, n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732,
         n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742,
         n1743, n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752,
         n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762,
         n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772,
         n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782,
         n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792,
         n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802,
         n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812,
         n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822,
         n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832,
         n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842,
         n1843, n1844, n1845, n1846, n1847, n1848, n1849;
  wire   [31:0] gpio_addr;
  wire   [31:0] gpio_dat_o;
  wire   [31:0] aux_i;
  wire   [31:0] out_pad_o;
  wire   [31:0] oen_padoe_o;
  wire   [31:0] \reg_instance/data_reg ;
  wire   [31:0] \reg_instance/rgpio_in ;
  wire   [31:0] \reg_instance/in_mux ;
  wire   [31:0] \reg_instance/nextc_sampled ;
  wire   [31:0] \reg_instance/pextc_sampled ;
  wire   [31:0] \reg_instance/rgpio_ints ;
  wire   [1:0] \reg_instance/rgpio_ctrl ;
  wire   [31:0] \reg_instance/rgpio_nec ;
  wire   [31:0] \reg_instance/rgpio_eclk ;
  wire   [31:0] \reg_instance/rgpio_aux ;
  wire   [31:0] \reg_instance/rgpio_ptrig ;
  wire   [31:0] \reg_instance/rgpio_inte ;
  wire   [31:0] \reg_instance/rgpio_out ;
  wire   [1:0] \if_instance/fs1/next_state ;
  wire   [1:0] \if_instance/fs1/present_state ;
  tri   [31:0] io_pad;
  tri   [31:0] in_pad_i;
  assign sys_clk = PCLK;
  assign sys_rst = PRESETn;
  assign gpio_addr[31] = PADDR[31];
  assign gpio_addr[30] = PADDR[30];
  assign gpio_addr[29] = PADDR[29];
  assign gpio_addr[28] = PADDR[28];
  assign gpio_addr[27] = PADDR[27];
  assign gpio_addr[26] = PADDR[26];
  assign gpio_addr[25] = PADDR[25];
  assign gpio_addr[24] = PADDR[24];
  assign gpio_addr[23] = PADDR[23];
  assign gpio_addr[22] = PADDR[22];
  assign gpio_addr[21] = PADDR[21];
  assign gpio_addr[20] = PADDR[20];
  assign gpio_addr[19] = PADDR[19];
  assign gpio_addr[18] = PADDR[18];
  assign gpio_addr[17] = PADDR[17];
  assign gpio_addr[16] = PADDR[16];
  assign gpio_addr[15] = PADDR[15];
  assign gpio_addr[14] = PADDR[14];
  assign gpio_addr[13] = PADDR[13];
  assign gpio_addr[12] = PADDR[12];
  assign gpio_addr[11] = PADDR[11];
  assign gpio_addr[10] = PADDR[10];
  assign gpio_addr[9] = PADDR[9];
  assign gpio_addr[8] = PADDR[8];
  assign gpio_addr[7] = PADDR[7];
  assign gpio_addr[6] = PADDR[6];
  assign gpio_addr[5] = PADDR[5];
  assign gpio_addr[4] = PADDR[4];
  assign gpio_addr[3] = PADDR[3];
  assign gpio_addr[2] = PADDR[2];
  assign gpio_addr[1] = PADDR[1];
  assign gpio_addr[0] = PADDR[0];
  assign gpio_eclk = ext_clk_pad_i;

  FD2 \if_instance/fs1/present_state_reg[1]  ( .D(
        \if_instance/fs1/next_state [1]), .CP(sys_clk), .CD(sys_rst), .Q(
        \if_instance/fs1/present_state [1]), .QN(n1815) );
  FD2 \if_instance/fs1/present_state_reg[0]  ( .D(
        \if_instance/fs1/next_state [0]), .CP(sys_clk), .CD(sys_rst), .Q(
        \if_instance/fs1/present_state [0]) );
  FD2 \reg_instance/rgpio_nec_reg[0]  ( .D(n1127), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [0]) );
  FD2 \reg_instance/rgpio_nec_reg[1]  ( .D(n1120), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [1]) );
  FD2 \reg_instance/rgpio_nec_reg[2]  ( .D(n1113), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [2]) );
  FD2 \reg_instance/rgpio_nec_reg[3]  ( .D(n1106), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [3]) );
  FD2 \reg_instance/rgpio_nec_reg[4]  ( .D(n1099), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [4]) );
  FD2 \reg_instance/rgpio_nec_reg[5]  ( .D(n1092), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [5]) );
  FD2 \reg_instance/rgpio_nec_reg[6]  ( .D(n1085), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [6]) );
  FD2 \reg_instance/rgpio_nec_reg[7]  ( .D(n1078), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [7]) );
  FD2 \reg_instance/rgpio_nec_reg[8]  ( .D(n1071), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [8]) );
  FD2 \reg_instance/rgpio_nec_reg[9]  ( .D(n1064), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [9]) );
  FD2 \reg_instance/rgpio_nec_reg[10]  ( .D(n1057), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [10]) );
  FD2 \reg_instance/rgpio_nec_reg[11]  ( .D(n1050), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [11]) );
  FD2 \reg_instance/rgpio_nec_reg[12]  ( .D(n1043), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [12]) );
  FD2 \reg_instance/rgpio_nec_reg[13]  ( .D(n1036), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [13]) );
  FD2 \reg_instance/rgpio_nec_reg[14]  ( .D(n1029), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [14]) );
  FD2 \reg_instance/rgpio_nec_reg[15]  ( .D(n1022), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [15]) );
  FD2 \reg_instance/rgpio_nec_reg[16]  ( .D(n1015), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [16]) );
  FD2 \reg_instance/rgpio_nec_reg[17]  ( .D(n1008), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [17]) );
  FD2 \reg_instance/rgpio_nec_reg[18]  ( .D(n1001), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [18]) );
  FD2 \reg_instance/rgpio_nec_reg[19]  ( .D(n994), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [19]) );
  FD2 \reg_instance/rgpio_nec_reg[20]  ( .D(n987), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [20]) );
  FD2 \reg_instance/rgpio_nec_reg[21]  ( .D(n980), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [21]) );
  FD2 \reg_instance/rgpio_nec_reg[22]  ( .D(n973), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [22]) );
  FD2 \reg_instance/rgpio_nec_reg[23]  ( .D(n966), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [23]) );
  FD2 \reg_instance/rgpio_nec_reg[24]  ( .D(n959), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [24]) );
  FD2 \reg_instance/rgpio_nec_reg[25]  ( .D(n952), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [25]) );
  FD2 \reg_instance/rgpio_nec_reg[26]  ( .D(n945), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [26]) );
  FD2 \reg_instance/rgpio_nec_reg[27]  ( .D(n938), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [27]) );
  FD2 \reg_instance/rgpio_nec_reg[28]  ( .D(n931), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [28]) );
  FD2 \reg_instance/rgpio_nec_reg[29]  ( .D(n924), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [29]) );
  FD2 \reg_instance/rgpio_nec_reg[30]  ( .D(n917), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [30]) );
  FD2 \reg_instance/rgpio_nec_reg[31]  ( .D(n910), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [31]) );
  FD2 \reg_instance/rgpio_eclk_reg[0]  ( .D(n1126), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [0]) );
  FD2 \reg_instance/rgpio_eclk_reg[1]  ( .D(n1119), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [1]) );
  FD2 \reg_instance/rgpio_eclk_reg[2]  ( .D(n1112), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [2]) );
  FD2 \reg_instance/rgpio_eclk_reg[3]  ( .D(n1105), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [3]) );
  FD2 \reg_instance/rgpio_eclk_reg[4]  ( .D(n1098), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [4]) );
  FD2 \reg_instance/rgpio_eclk_reg[5]  ( .D(n1091), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [5]) );
  FD2 \reg_instance/rgpio_eclk_reg[6]  ( .D(n1084), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [6]) );
  FD2 \reg_instance/rgpio_eclk_reg[7]  ( .D(n1077), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [7]) );
  FD2 \reg_instance/rgpio_eclk_reg[8]  ( .D(n1070), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [8]) );
  FD2 \reg_instance/rgpio_eclk_reg[9]  ( .D(n1063), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [9]) );
  FD2 \reg_instance/rgpio_eclk_reg[10]  ( .D(n1056), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [10]) );
  FD2 \reg_instance/rgpio_eclk_reg[11]  ( .D(n1049), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [11]) );
  FD2 \reg_instance/rgpio_eclk_reg[12]  ( .D(n1042), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [12]) );
  FD2 \reg_instance/rgpio_eclk_reg[13]  ( .D(n1035), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [13]) );
  FD2 \reg_instance/rgpio_eclk_reg[14]  ( .D(n1028), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [14]) );
  FD2 \reg_instance/rgpio_eclk_reg[15]  ( .D(n1021), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [15]) );
  FD2 \reg_instance/rgpio_eclk_reg[16]  ( .D(n1014), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [16]) );
  FD2 \reg_instance/rgpio_eclk_reg[17]  ( .D(n1007), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [17]) );
  FD2 \reg_instance/rgpio_eclk_reg[18]  ( .D(n1000), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [18]) );
  FD2 \reg_instance/rgpio_eclk_reg[19]  ( .D(n993), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [19]) );
  FD2 \reg_instance/rgpio_eclk_reg[20]  ( .D(n986), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [20]) );
  FD2 \reg_instance/rgpio_eclk_reg[21]  ( .D(n979), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [21]) );
  FD2 \reg_instance/rgpio_eclk_reg[22]  ( .D(n972), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [22]) );
  FD2 \reg_instance/rgpio_eclk_reg[23]  ( .D(n965), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [23]) );
  FD2 \reg_instance/rgpio_eclk_reg[24]  ( .D(n958), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [24]) );
  FD2 \reg_instance/rgpio_eclk_reg[25]  ( .D(n951), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [25]) );
  FD2 \reg_instance/rgpio_eclk_reg[26]  ( .D(n944), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [26]) );
  FD2 \reg_instance/rgpio_eclk_reg[27]  ( .D(n937), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [27]) );
  FD2 \reg_instance/rgpio_eclk_reg[28]  ( .D(n930), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [28]) );
  FD2 \reg_instance/rgpio_eclk_reg[29]  ( .D(n923), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [29]) );
  FD2 \reg_instance/rgpio_eclk_reg[30]  ( .D(n916), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [30]) );
  FD2 \reg_instance/rgpio_eclk_reg[31]  ( .D(n909), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [31]) );
  FD2 \reg_instance/rgpio_aux_reg[0]  ( .D(n1125), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [0]) );
  FD2 \reg_instance/rgpio_aux_reg[1]  ( .D(n1118), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [1]) );
  FD2 \reg_instance/rgpio_aux_reg[2]  ( .D(n1111), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [2]) );
  FD2 \reg_instance/rgpio_aux_reg[3]  ( .D(n1104), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [3]) );
  FD2 \reg_instance/rgpio_aux_reg[4]  ( .D(n1097), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [4]) );
  FD2 \reg_instance/rgpio_aux_reg[5]  ( .D(n1090), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [5]) );
  FD2 \reg_instance/rgpio_aux_reg[6]  ( .D(n1083), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [6]) );
  FD2 \reg_instance/rgpio_aux_reg[7]  ( .D(n1076), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [7]) );
  FD2 \reg_instance/rgpio_aux_reg[8]  ( .D(n1069), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [8]) );
  FD2 \reg_instance/rgpio_aux_reg[9]  ( .D(n1062), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [9]) );
  FD2 \reg_instance/rgpio_aux_reg[10]  ( .D(n1055), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [10]) );
  FD2 \reg_instance/rgpio_aux_reg[11]  ( .D(n1048), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [11]) );
  FD2 \reg_instance/rgpio_aux_reg[12]  ( .D(n1041), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [12]) );
  FD2 \reg_instance/rgpio_aux_reg[13]  ( .D(n1034), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [13]) );
  FD2 \reg_instance/rgpio_aux_reg[14]  ( .D(n1027), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [14]) );
  FD2 \reg_instance/rgpio_aux_reg[15]  ( .D(n1020), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [15]) );
  FD2 \reg_instance/rgpio_aux_reg[16]  ( .D(n1013), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [16]) );
  FD2 \reg_instance/rgpio_aux_reg[17]  ( .D(n1006), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [17]) );
  FD2 \reg_instance/rgpio_aux_reg[18]  ( .D(n999), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [18]) );
  FD2 \reg_instance/rgpio_aux_reg[19]  ( .D(n992), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [19]) );
  FD2 \reg_instance/rgpio_aux_reg[20]  ( .D(n985), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [20]) );
  FD2 \reg_instance/rgpio_aux_reg[21]  ( .D(n978), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [21]) );
  FD2 \reg_instance/rgpio_aux_reg[22]  ( .D(n971), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [22]) );
  FD2 \reg_instance/rgpio_aux_reg[23]  ( .D(n964), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [23]) );
  FD2 \reg_instance/rgpio_aux_reg[24]  ( .D(n957), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [24]) );
  FD2 \reg_instance/rgpio_aux_reg[25]  ( .D(n950), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [25]) );
  FD2 \reg_instance/rgpio_aux_reg[26]  ( .D(n943), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [26]) );
  FD2 \reg_instance/rgpio_aux_reg[27]  ( .D(n936), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [27]) );
  FD2 \reg_instance/rgpio_aux_reg[28]  ( .D(n929), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [28]) );
  FD2 \reg_instance/rgpio_aux_reg[29]  ( .D(n922), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [29]) );
  FD2 \reg_instance/rgpio_aux_reg[30]  ( .D(n915), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [30]) );
  FD2 \reg_instance/rgpio_aux_reg[31]  ( .D(n908), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [31]) );
  FD2 \reg_instance/rgpio_ptrig_reg[0]  ( .D(n1124), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [0]) );
  FD2 \reg_instance/rgpio_ptrig_reg[1]  ( .D(n1117), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [1]) );
  FD2 \reg_instance/rgpio_ptrig_reg[2]  ( .D(n1110), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [2]) );
  FD2 \reg_instance/rgpio_ptrig_reg[3]  ( .D(n1103), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [3]) );
  FD2 \reg_instance/rgpio_ptrig_reg[4]  ( .D(n1096), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [4]) );
  FD2 \reg_instance/rgpio_ptrig_reg[5]  ( .D(n1089), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [5]) );
  FD2 \reg_instance/rgpio_ptrig_reg[6]  ( .D(n1082), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [6]) );
  FD2 \reg_instance/rgpio_ptrig_reg[7]  ( .D(n1075), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [7]) );
  FD2 \reg_instance/rgpio_ptrig_reg[8]  ( .D(n1068), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [8]) );
  FD2 \reg_instance/rgpio_ptrig_reg[9]  ( .D(n1061), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [9]) );
  FD2 \reg_instance/rgpio_ptrig_reg[10]  ( .D(n1054), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [10]) );
  FD2 \reg_instance/rgpio_ptrig_reg[11]  ( .D(n1047), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [11]) );
  FD2 \reg_instance/rgpio_ptrig_reg[12]  ( .D(n1040), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [12]) );
  FD2 \reg_instance/rgpio_ptrig_reg[13]  ( .D(n1033), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [13]) );
  FD2 \reg_instance/rgpio_ptrig_reg[14]  ( .D(n1026), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [14]) );
  FD2 \reg_instance/rgpio_ptrig_reg[15]  ( .D(n1019), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [15]) );
  FD2 \reg_instance/rgpio_ptrig_reg[16]  ( .D(n1012), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [16]) );
  FD2 \reg_instance/rgpio_ptrig_reg[17]  ( .D(n1005), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [17]) );
  FD2 \reg_instance/rgpio_ptrig_reg[18]  ( .D(n998), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [18]) );
  FD2 \reg_instance/rgpio_ptrig_reg[19]  ( .D(n991), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [19]) );
  FD2 \reg_instance/rgpio_ptrig_reg[20]  ( .D(n984), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [20]) );
  FD2 \reg_instance/rgpio_ptrig_reg[21]  ( .D(n977), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [21]) );
  FD2 \reg_instance/rgpio_ptrig_reg[22]  ( .D(n970), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [22]) );
  FD2 \reg_instance/rgpio_ptrig_reg[23]  ( .D(n963), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [23]) );
  FD2 \reg_instance/rgpio_ptrig_reg[24]  ( .D(n956), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [24]) );
  FD2 \reg_instance/rgpio_ptrig_reg[25]  ( .D(n949), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [25]) );
  FD2 \reg_instance/rgpio_ptrig_reg[26]  ( .D(n942), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [26]) );
  FD2 \reg_instance/rgpio_ptrig_reg[27]  ( .D(n935), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [27]) );
  FD2 \reg_instance/rgpio_ptrig_reg[28]  ( .D(n928), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [28]) );
  FD2 \reg_instance/rgpio_ptrig_reg[29]  ( .D(n921), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [29]) );
  FD2 \reg_instance/rgpio_ptrig_reg[30]  ( .D(n914), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [30]) );
  FD2 \reg_instance/rgpio_ptrig_reg[31]  ( .D(n907), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [31]) );
  FD2 \reg_instance/rgpio_oe_reg[0]  ( .D(n1123), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[0]), .QN(n1814) );
  FD2 \reg_instance/rgpio_oe_reg[1]  ( .D(n1116), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[1]), .QN(n1794) );
  FD2 \reg_instance/rgpio_oe_reg[2]  ( .D(n1109), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[2]), .QN(n1813) );
  FD2 \reg_instance/rgpio_oe_reg[3]  ( .D(n1102), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[3]), .QN(n1812) );
  FD2 \reg_instance/rgpio_oe_reg[4]  ( .D(n1095), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[4]), .QN(n1811) );
  FD2 \reg_instance/rgpio_oe_reg[5]  ( .D(n1088), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[5]), .QN(n1810) );
  FD2 \reg_instance/rgpio_oe_reg[6]  ( .D(n1081), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[6]), .QN(n1809) );
  FD2 \reg_instance/rgpio_oe_reg[7]  ( .D(n1074), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[7]), .QN(n1808) );
  FD2 \reg_instance/rgpio_oe_reg[8]  ( .D(n1067), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[8]), .QN(n1807) );
  FD2 \reg_instance/rgpio_oe_reg[9]  ( .D(n1060), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[9]), .QN(n1806) );
  FD2 \reg_instance/rgpio_oe_reg[10]  ( .D(n1053), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[10]), .QN(n1805) );
  FD2 \reg_instance/rgpio_oe_reg[11]  ( .D(n1046), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[11]), .QN(n1804) );
  FD2 \reg_instance/rgpio_oe_reg[12]  ( .D(n1039), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[12]), .QN(n1803) );
  FD2 \reg_instance/rgpio_oe_reg[13]  ( .D(n1032), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[13]), .QN(n1802) );
  FD2 \reg_instance/rgpio_oe_reg[14]  ( .D(n1025), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[14]), .QN(n1801) );
  FD2 \reg_instance/rgpio_oe_reg[15]  ( .D(n1018), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[15]), .QN(n1800) );
  FD2 \reg_instance/rgpio_oe_reg[16]  ( .D(n1011), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[16]), .QN(n1799) );
  FD2 \reg_instance/rgpio_oe_reg[17]  ( .D(n1004), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[17]), .QN(n1798) );
  FD2 \reg_instance/rgpio_oe_reg[18]  ( .D(n997), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[18]), .QN(n1797) );
  FD2 \reg_instance/rgpio_oe_reg[19]  ( .D(n990), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[19]), .QN(n1796) );
  FD2 \reg_instance/rgpio_oe_reg[20]  ( .D(n983), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[20]), .QN(n1793) );
  FD2 \reg_instance/rgpio_oe_reg[21]  ( .D(n976), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[21]), .QN(n1792) );
  FD2 \reg_instance/rgpio_oe_reg[22]  ( .D(n969), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[22]), .QN(n1791) );
  FD2 \reg_instance/rgpio_oe_reg[23]  ( .D(n962), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[23]), .QN(n1790) );
  FD2 \reg_instance/rgpio_oe_reg[24]  ( .D(n955), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[24]), .QN(n1789) );
  FD2 \reg_instance/rgpio_oe_reg[25]  ( .D(n948), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[25]), .QN(n1788) );
  FD2 \reg_instance/rgpio_oe_reg[26]  ( .D(n941), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[26]), .QN(n1787) );
  FD2 \reg_instance/rgpio_oe_reg[27]  ( .D(n934), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[27]), .QN(n1786) );
  FD2 \reg_instance/rgpio_oe_reg[28]  ( .D(n927), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[28]), .QN(n1785) );
  FD2 \reg_instance/rgpio_oe_reg[29]  ( .D(n920), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[29]), .QN(n1784) );
  FD2 \reg_instance/rgpio_oe_reg[30]  ( .D(n913), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[30]), .QN(n1783) );
  FD2 \reg_instance/rgpio_oe_reg[31]  ( .D(n906), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[31]), .QN(n1782) );
  FD2 \reg_instance/rgpio_inte_reg[0]  ( .D(n1122), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [0]) );
  FD2 \reg_instance/rgpio_inte_reg[1]  ( .D(n1115), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [1]) );
  FD2 \reg_instance/rgpio_inte_reg[2]  ( .D(n1108), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [2]) );
  FD2 \reg_instance/rgpio_inte_reg[3]  ( .D(n1101), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [3]) );
  FD2 \reg_instance/rgpio_inte_reg[4]  ( .D(n1094), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [4]) );
  FD2 \reg_instance/rgpio_inte_reg[5]  ( .D(n1087), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [5]) );
  FD2 \reg_instance/rgpio_inte_reg[6]  ( .D(n1080), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [6]) );
  FD2 \reg_instance/rgpio_inte_reg[7]  ( .D(n1073), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [7]) );
  FD2 \reg_instance/rgpio_inte_reg[8]  ( .D(n1066), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [8]) );
  FD2 \reg_instance/rgpio_inte_reg[9]  ( .D(n1059), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [9]) );
  FD2 \reg_instance/rgpio_inte_reg[10]  ( .D(n1052), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [10]) );
  FD2 \reg_instance/rgpio_inte_reg[11]  ( .D(n1045), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [11]) );
  FD2 \reg_instance/rgpio_inte_reg[12]  ( .D(n1038), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [12]) );
  FD2 \reg_instance/rgpio_inte_reg[13]  ( .D(n1031), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [13]) );
  FD2 \reg_instance/rgpio_inte_reg[14]  ( .D(n1024), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [14]) );
  FD2 \reg_instance/rgpio_inte_reg[15]  ( .D(n1017), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [15]) );
  FD2 \reg_instance/rgpio_inte_reg[16]  ( .D(n1010), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [16]) );
  FD2 \reg_instance/rgpio_inte_reg[17]  ( .D(n1003), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [17]) );
  FD2 \reg_instance/rgpio_inte_reg[18]  ( .D(n996), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [18]) );
  FD2 \reg_instance/rgpio_inte_reg[19]  ( .D(n989), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [19]) );
  FD2 \reg_instance/rgpio_inte_reg[20]  ( .D(n982), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [20]) );
  FD2 \reg_instance/rgpio_inte_reg[21]  ( .D(n975), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [21]) );
  FD2 \reg_instance/rgpio_inte_reg[22]  ( .D(n968), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [22]) );
  FD2 \reg_instance/rgpio_inte_reg[23]  ( .D(n961), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [23]) );
  FD2 \reg_instance/rgpio_inte_reg[24]  ( .D(n954), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [24]) );
  FD2 \reg_instance/rgpio_inte_reg[25]  ( .D(n947), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [25]) );
  FD2 \reg_instance/rgpio_inte_reg[26]  ( .D(n940), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [26]) );
  FD2 \reg_instance/rgpio_inte_reg[27]  ( .D(n933), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [27]) );
  FD2 \reg_instance/rgpio_inte_reg[28]  ( .D(n926), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [28]) );
  FD2 \reg_instance/rgpio_inte_reg[29]  ( .D(n919), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [29]) );
  FD2 \reg_instance/rgpio_inte_reg[30]  ( .D(n912), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [30]) );
  FD2 \reg_instance/rgpio_inte_reg[31]  ( .D(n905), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [31]) );
  FD2 \reg_instance/rgpio_out_reg[0]  ( .D(n1121), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [0]), .QN(n1816) );
  FD2 \reg_instance/rgpio_out_reg[1]  ( .D(n1114), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [1]), .QN(n1817) );
  FD2 \reg_instance/rgpio_out_reg[2]  ( .D(n1107), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [2]), .QN(n1818) );
  FD2 \reg_instance/rgpio_out_reg[3]  ( .D(n1100), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [3]), .QN(n1819) );
  FD2 \reg_instance/rgpio_out_reg[4]  ( .D(n1093), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [4]), .QN(n1820) );
  FD2 \reg_instance/rgpio_out_reg[5]  ( .D(n1086), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [5]), .QN(n1821) );
  FD2 \reg_instance/rgpio_out_reg[6]  ( .D(n1079), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [6]), .QN(n1822) );
  FD2 \reg_instance/rgpio_out_reg[7]  ( .D(n1072), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [7]), .QN(n1823) );
  FD2 \reg_instance/rgpio_out_reg[8]  ( .D(n1065), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [8]), .QN(n1824) );
  FD2 \reg_instance/rgpio_out_reg[9]  ( .D(n1058), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [9]), .QN(n1825) );
  FD2 \reg_instance/rgpio_out_reg[10]  ( .D(n1051), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [10]), .QN(n1826) );
  FD2 \reg_instance/rgpio_out_reg[11]  ( .D(n1044), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [11]), .QN(n1827) );
  FD2 \reg_instance/rgpio_out_reg[12]  ( .D(n1037), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [12]), .QN(n1828) );
  FD2 \reg_instance/rgpio_out_reg[13]  ( .D(n1030), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [13]), .QN(n1829) );
  FD2 \reg_instance/rgpio_out_reg[14]  ( .D(n1023), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [14]), .QN(n1830) );
  FD2 \reg_instance/rgpio_out_reg[15]  ( .D(n1016), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [15]), .QN(n1831) );
  FD2 \reg_instance/rgpio_out_reg[16]  ( .D(n1009), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [16]), .QN(n1832) );
  FD2 \reg_instance/rgpio_out_reg[17]  ( .D(n1002), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [17]), .QN(n1833) );
  FD2 \reg_instance/rgpio_out_reg[18]  ( .D(n995), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [18]), .QN(n1834) );
  FD2 \reg_instance/rgpio_out_reg[19]  ( .D(n988), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [19]), .QN(n1835) );
  FD2 \reg_instance/rgpio_out_reg[20]  ( .D(n981), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [20]), .QN(n1836) );
  FD2 \reg_instance/rgpio_out_reg[21]  ( .D(n974), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [21]), .QN(n1837) );
  FD2 \reg_instance/rgpio_out_reg[22]  ( .D(n967), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [22]), .QN(n1838) );
  FD2 \reg_instance/rgpio_out_reg[23]  ( .D(n960), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [23]), .QN(n1839) );
  FD2 \reg_instance/rgpio_out_reg[24]  ( .D(n953), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [24]), .QN(n1840) );
  FD2 \reg_instance/rgpio_out_reg[25]  ( .D(n946), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [25]), .QN(n1841) );
  FD2 \reg_instance/rgpio_out_reg[26]  ( .D(n939), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [26]), .QN(n1842) );
  FD2 \reg_instance/rgpio_out_reg[27]  ( .D(n932), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [27]), .QN(n1843) );
  FD2 \reg_instance/rgpio_out_reg[28]  ( .D(n925), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [28]), .QN(n1844) );
  FD2 \reg_instance/rgpio_out_reg[29]  ( .D(n918), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [29]), .QN(n1845) );
  FD2 \reg_instance/rgpio_out_reg[30]  ( .D(n911), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [30]), .QN(n1846) );
  FD2 \reg_instance/rgpio_out_reg[31]  ( .D(n904), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [31]), .QN(n1847) );
  FD2 \reg_instance/rgpio_ctrl_reg[1]  ( .D(n902), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ctrl [1]), .QN(n1795) );
  FD2 \aux_instance/i1/aux_i_reg[0]  ( .D(aux_in[0]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[0]) );
  FD2 \reg_instance/pextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [0]) );
  FD2 \reg_instance/rgpio_in_reg[0]  ( .D(\reg_instance/in_mux [0]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [0]) );
  FD2 \reg_instance/rgpio_ints_reg[0]  ( .D(n870), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [0]) );
  FD2 \aux_instance/i1/aux_i_reg[1]  ( .D(aux_in[1]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[1]) );
  FD2 \reg_instance/pextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [1]) );
  FD2 \reg_instance/rgpio_in_reg[1]  ( .D(\reg_instance/in_mux [1]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [1]), .QN(n1848) );
  FD2 \reg_instance/rgpio_ints_reg[1]  ( .D(n871), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [1]) );
  FD2 \reg_instance/gpio_dat_o_reg[1]  ( .D(\reg_instance/data_reg [1]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[1]) );
  FD2 \aux_instance/i1/aux_i_reg[2]  ( .D(aux_in[2]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[2]) );
  FD2 \reg_instance/pextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [2]) );
  FD2 \reg_instance/rgpio_in_reg[2]  ( .D(\reg_instance/in_mux [2]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [2]) );
  FD2 \reg_instance/rgpio_ints_reg[2]  ( .D(n872), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [2]) );
  FD2 \reg_instance/gpio_dat_o_reg[2]  ( .D(\reg_instance/data_reg [2]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[2]) );
  FD2 \aux_instance/i1/aux_i_reg[3]  ( .D(aux_in[3]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[3]) );
  FD2 \reg_instance/pextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [3]) );
  FD2 \reg_instance/rgpio_in_reg[3]  ( .D(\reg_instance/in_mux [3]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [3]) );
  FD2 \reg_instance/rgpio_ints_reg[3]  ( .D(n873), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [3]) );
  FD2 \reg_instance/gpio_dat_o_reg[3]  ( .D(\reg_instance/data_reg [3]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[3]) );
  FD2 \aux_instance/i1/aux_i_reg[4]  ( .D(aux_in[4]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[4]) );
  FD2 \reg_instance/pextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [4]) );
  FD2 \reg_instance/rgpio_in_reg[4]  ( .D(\reg_instance/in_mux [4]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [4]) );
  FD2 \reg_instance/rgpio_ints_reg[4]  ( .D(n874), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [4]) );
  FD2 \reg_instance/gpio_dat_o_reg[4]  ( .D(\reg_instance/data_reg [4]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[4]) );
  FD2 \aux_instance/i1/aux_i_reg[5]  ( .D(aux_in[5]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[5]) );
  FD2 \reg_instance/pextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [5]) );
  FD2 \reg_instance/rgpio_in_reg[5]  ( .D(\reg_instance/in_mux [5]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [5]) );
  FD2 \reg_instance/rgpio_ints_reg[5]  ( .D(n875), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [5]) );
  FD2 \reg_instance/gpio_dat_o_reg[5]  ( .D(\reg_instance/data_reg [5]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[5]) );
  FD2 \aux_instance/i1/aux_i_reg[6]  ( .D(aux_in[6]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[6]) );
  FD2 \reg_instance/pextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [6]) );
  FD2 \reg_instance/rgpio_in_reg[6]  ( .D(\reg_instance/in_mux [6]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [6]) );
  FD2 \reg_instance/rgpio_ints_reg[6]  ( .D(n876), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [6]) );
  FD2 \reg_instance/gpio_dat_o_reg[6]  ( .D(\reg_instance/data_reg [6]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[6]) );
  FD2 \aux_instance/i1/aux_i_reg[7]  ( .D(aux_in[7]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[7]) );
  FD2 \reg_instance/pextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [7]) );
  FD2 \reg_instance/rgpio_in_reg[7]  ( .D(\reg_instance/in_mux [7]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [7]) );
  FD2 \reg_instance/rgpio_ints_reg[7]  ( .D(n877), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [7]) );
  FD2 \reg_instance/gpio_dat_o_reg[7]  ( .D(\reg_instance/data_reg [7]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[7]) );
  FD2 \aux_instance/i1/aux_i_reg[8]  ( .D(aux_in[8]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[8]) );
  FD2 \reg_instance/pextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [8]) );
  FD2 \reg_instance/rgpio_in_reg[8]  ( .D(\reg_instance/in_mux [8]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [8]) );
  FD2 \reg_instance/rgpio_ints_reg[8]  ( .D(n878), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [8]) );
  FD2 \reg_instance/gpio_dat_o_reg[8]  ( .D(\reg_instance/data_reg [8]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[8]) );
  FD2 \aux_instance/i1/aux_i_reg[9]  ( .D(aux_in[9]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[9]) );
  FD2 \reg_instance/pextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [9]) );
  FD2 \reg_instance/rgpio_in_reg[9]  ( .D(\reg_instance/in_mux [9]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [9]) );
  FD2 \reg_instance/rgpio_ints_reg[9]  ( .D(n879), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [9]) );
  FD2 \reg_instance/gpio_dat_o_reg[9]  ( .D(\reg_instance/data_reg [9]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[9]) );
  FD2 \aux_instance/i1/aux_i_reg[10]  ( .D(aux_in[10]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[10]) );
  FD2 \reg_instance/pextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [10]) );
  FD2 \reg_instance/rgpio_in_reg[10]  ( .D(\reg_instance/in_mux [10]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [10]) );
  FD2 \reg_instance/rgpio_ints_reg[10]  ( .D(n880), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [10]) );
  FD2 \reg_instance/gpio_dat_o_reg[10]  ( .D(\reg_instance/data_reg [10]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[10]) );
  FD2 \aux_instance/i1/aux_i_reg[11]  ( .D(aux_in[11]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[11]) );
  FD2 \reg_instance/pextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [11]) );
  FD2 \reg_instance/rgpio_in_reg[11]  ( .D(\reg_instance/in_mux [11]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [11]) );
  FD2 \reg_instance/rgpio_ints_reg[11]  ( .D(n881), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [11]) );
  FD2 \reg_instance/gpio_dat_o_reg[11]  ( .D(\reg_instance/data_reg [11]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[11]) );
  FD2 \aux_instance/i1/aux_i_reg[12]  ( .D(aux_in[12]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[12]) );
  FD2 \reg_instance/pextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [12]) );
  FD2 \reg_instance/rgpio_in_reg[12]  ( .D(\reg_instance/in_mux [12]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [12]) );
  FD2 \reg_instance/rgpio_ints_reg[12]  ( .D(n882), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [12]) );
  FD2 \reg_instance/gpio_dat_o_reg[12]  ( .D(\reg_instance/data_reg [12]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[12]) );
  FD2 \aux_instance/i1/aux_i_reg[13]  ( .D(aux_in[13]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[13]) );
  FD2 \reg_instance/pextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [13]) );
  FD2 \reg_instance/rgpio_in_reg[13]  ( .D(\reg_instance/in_mux [13]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [13]) );
  FD2 \reg_instance/rgpio_ints_reg[13]  ( .D(n883), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [13]) );
  FD2 \reg_instance/gpio_dat_o_reg[13]  ( .D(\reg_instance/data_reg [13]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[13]) );
  FD2 \aux_instance/i1/aux_i_reg[14]  ( .D(aux_in[14]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[14]) );
  FD2 \reg_instance/pextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [14]) );
  FD2 \reg_instance/rgpio_in_reg[14]  ( .D(\reg_instance/in_mux [14]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [14]) );
  FD2 \reg_instance/rgpio_ints_reg[14]  ( .D(n884), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [14]) );
  FD2 \reg_instance/gpio_dat_o_reg[14]  ( .D(\reg_instance/data_reg [14]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[14]) );
  FD2 \aux_instance/i1/aux_i_reg[15]  ( .D(aux_in[15]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[15]) );
  FD2 \reg_instance/pextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [15]) );
  FD2 \reg_instance/rgpio_in_reg[15]  ( .D(\reg_instance/in_mux [15]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [15]) );
  FD2 \reg_instance/rgpio_ints_reg[15]  ( .D(n885), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [15]) );
  FD2 \reg_instance/gpio_dat_o_reg[15]  ( .D(\reg_instance/data_reg [15]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[15]) );
  FD2 \aux_instance/i1/aux_i_reg[16]  ( .D(aux_in[16]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[16]) );
  FD2 \reg_instance/pextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [16]) );
  FD2 \reg_instance/rgpio_in_reg[16]  ( .D(\reg_instance/in_mux [16]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [16]) );
  FD2 \reg_instance/rgpio_ints_reg[16]  ( .D(n886), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [16]) );
  FD2 \reg_instance/gpio_dat_o_reg[16]  ( .D(\reg_instance/data_reg [16]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[16]) );
  FD2 \aux_instance/i1/aux_i_reg[17]  ( .D(aux_in[17]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[17]) );
  FD2 \reg_instance/pextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [17]) );
  FD2 \reg_instance/rgpio_in_reg[17]  ( .D(\reg_instance/in_mux [17]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [17]) );
  FD2 \reg_instance/rgpio_ints_reg[17]  ( .D(n887), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [17]) );
  FD2 \reg_instance/gpio_dat_o_reg[17]  ( .D(\reg_instance/data_reg [17]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[17]) );
  FD2 \aux_instance/i1/aux_i_reg[18]  ( .D(aux_in[18]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[18]) );
  FD2 \reg_instance/pextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [18]) );
  FD2 \reg_instance/rgpio_in_reg[18]  ( .D(\reg_instance/in_mux [18]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [18]) );
  FD2 \reg_instance/rgpio_ints_reg[18]  ( .D(n888), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [18]) );
  FD2 \reg_instance/gpio_dat_o_reg[18]  ( .D(\reg_instance/data_reg [18]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[18]) );
  FD2 \aux_instance/i1/aux_i_reg[19]  ( .D(aux_in[19]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[19]) );
  FD2 \reg_instance/pextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [19]) );
  FD2 \reg_instance/rgpio_in_reg[19]  ( .D(\reg_instance/in_mux [19]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [19]) );
  FD2 \reg_instance/rgpio_ints_reg[19]  ( .D(n889), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [19]) );
  FD2 \reg_instance/gpio_dat_o_reg[19]  ( .D(\reg_instance/data_reg [19]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[19]) );
  FD2 \aux_instance/i1/aux_i_reg[20]  ( .D(aux_in[20]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[20]) );
  FD2 \reg_instance/pextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [20]) );
  FD2 \reg_instance/rgpio_in_reg[20]  ( .D(\reg_instance/in_mux [20]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [20]) );
  FD2 \reg_instance/rgpio_ints_reg[20]  ( .D(n890), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [20]) );
  FD2 \reg_instance/gpio_dat_o_reg[20]  ( .D(\reg_instance/data_reg [20]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[20]) );
  FD2 \aux_instance/i1/aux_i_reg[21]  ( .D(aux_in[21]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[21]) );
  FD2 \reg_instance/pextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [21]) );
  FD2 \reg_instance/rgpio_in_reg[21]  ( .D(\reg_instance/in_mux [21]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [21]) );
  FD2 \reg_instance/rgpio_ints_reg[21]  ( .D(n891), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [21]) );
  FD2 \reg_instance/gpio_dat_o_reg[21]  ( .D(\reg_instance/data_reg [21]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[21]) );
  FD2 \aux_instance/i1/aux_i_reg[22]  ( .D(aux_in[22]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[22]) );
  FD2 \reg_instance/pextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [22]) );
  FD2 \reg_instance/rgpio_in_reg[22]  ( .D(\reg_instance/in_mux [22]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [22]) );
  FD2 \reg_instance/rgpio_ints_reg[22]  ( .D(n892), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [22]) );
  FD2 \reg_instance/gpio_dat_o_reg[22]  ( .D(\reg_instance/data_reg [22]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[22]) );
  FD2 \aux_instance/i1/aux_i_reg[23]  ( .D(aux_in[23]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[23]) );
  FD2 \reg_instance/pextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [23]) );
  FD2 \reg_instance/rgpio_in_reg[23]  ( .D(\reg_instance/in_mux [23]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [23]) );
  FD2 \reg_instance/rgpio_ints_reg[23]  ( .D(n893), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [23]) );
  FD2 \reg_instance/gpio_dat_o_reg[23]  ( .D(\reg_instance/data_reg [23]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[23]) );
  FD2 \aux_instance/i1/aux_i_reg[24]  ( .D(aux_in[24]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[24]) );
  FD2 \reg_instance/pextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [24]) );
  FD2 \reg_instance/rgpio_in_reg[24]  ( .D(\reg_instance/in_mux [24]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [24]) );
  FD2 \reg_instance/rgpio_ints_reg[24]  ( .D(n894), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [24]) );
  FD2 \reg_instance/gpio_dat_o_reg[24]  ( .D(\reg_instance/data_reg [24]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[24]) );
  FD2 \aux_instance/i1/aux_i_reg[25]  ( .D(aux_in[25]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[25]) );
  FD2 \reg_instance/pextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [25]) );
  FD2 \reg_instance/rgpio_in_reg[25]  ( .D(\reg_instance/in_mux [25]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [25]) );
  FD2 \reg_instance/rgpio_ints_reg[25]  ( .D(n895), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [25]) );
  FD2 \reg_instance/gpio_dat_o_reg[25]  ( .D(\reg_instance/data_reg [25]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[25]) );
  FD2 \aux_instance/i1/aux_i_reg[26]  ( .D(aux_in[26]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[26]) );
  FD2 \reg_instance/pextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [26]) );
  FD2 \reg_instance/rgpio_in_reg[26]  ( .D(\reg_instance/in_mux [26]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [26]) );
  FD2 \reg_instance/rgpio_ints_reg[26]  ( .D(n896), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [26]) );
  FD2 \reg_instance/gpio_dat_o_reg[26]  ( .D(\reg_instance/data_reg [26]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[26]) );
  FD2 \aux_instance/i1/aux_i_reg[27]  ( .D(aux_in[27]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[27]) );
  FD2 \reg_instance/pextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [27]) );
  FD2 \reg_instance/rgpio_in_reg[27]  ( .D(\reg_instance/in_mux [27]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [27]) );
  FD2 \reg_instance/rgpio_ints_reg[27]  ( .D(n897), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [27]) );
  FD2 \reg_instance/gpio_dat_o_reg[27]  ( .D(\reg_instance/data_reg [27]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[27]) );
  FD2 \aux_instance/i1/aux_i_reg[28]  ( .D(aux_in[28]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[28]) );
  FD2 \reg_instance/pextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [28]) );
  FD2 \reg_instance/rgpio_in_reg[28]  ( .D(\reg_instance/in_mux [28]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [28]) );
  FD2 \reg_instance/rgpio_ints_reg[28]  ( .D(n898), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [28]) );
  FD2 \reg_instance/gpio_dat_o_reg[28]  ( .D(\reg_instance/data_reg [28]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[28]) );
  FD2 \aux_instance/i1/aux_i_reg[29]  ( .D(aux_in[29]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[29]) );
  FD2 \reg_instance/pextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [29]) );
  FD2 \reg_instance/rgpio_in_reg[29]  ( .D(\reg_instance/in_mux [29]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [29]) );
  FD2 \reg_instance/rgpio_ints_reg[29]  ( .D(n899), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [29]) );
  FD2 \reg_instance/gpio_dat_o_reg[29]  ( .D(\reg_instance/data_reg [29]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[29]) );
  FD2 \aux_instance/i1/aux_i_reg[30]  ( .D(aux_in[30]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[30]) );
  FD2 \reg_instance/pextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [30]) );
  FD2 \reg_instance/rgpio_in_reg[30]  ( .D(\reg_instance/in_mux [30]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [30]) );
  FD2 \reg_instance/rgpio_ints_reg[30]  ( .D(n900), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [30]) );
  FD2 \reg_instance/gpio_dat_o_reg[30]  ( .D(\reg_instance/data_reg [30]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[30]) );
  FD2 \aux_instance/i1/aux_i_reg[31]  ( .D(aux_in[31]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[31]) );
  FD2 \reg_instance/pextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [31]) );
  FD2 \reg_instance/rgpio_in_reg[31]  ( .D(\reg_instance/in_mux [31]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [31]) );
  FD2 \reg_instance/rgpio_ints_reg[31]  ( .D(n903), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [31]) );
  FD2 \reg_instance/gpio_dat_o_reg[31]  ( .D(\reg_instance/data_reg [31]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[31]) );
  FD2 \reg_instance/rgpio_ctrl_reg[0]  ( .D(n901), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ctrl [0]) );
  FD2 \reg_instance/gpio_dat_o_reg[0]  ( .D(\reg_instance/data_reg [0]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[0]) );
  LD1 \if_instance/fs1/next_state_reg[0]  ( .G(n1128), .D(
        \if_instance/fs1/N20 ), .Q(\if_instance/fs1/next_state [0]) );
  LD1 \if_instance/fs1/next_state_reg[1]  ( .G(n1128), .D(
        \if_instance/fs1/N21 ), .Q(\if_instance/fs1/next_state [1]) );
  FD2 \reg_instance/nextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [0]) );
  FD2 \reg_instance/nextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [1]) );
  FD2 \reg_instance/nextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [2]) );
  FD2 \reg_instance/nextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [3]) );
  FD2 \reg_instance/nextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [4]) );
  FD2 \reg_instance/nextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [5]) );
  FD2 \reg_instance/nextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [6]) );
  FD2 \reg_instance/nextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [7]) );
  FD2 \reg_instance/nextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [8]) );
  FD2 \reg_instance/nextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(n1849), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [9]) );
  FD2 \reg_instance/nextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [10]) );
  FD2 \reg_instance/nextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [11]) );
  FD2 \reg_instance/nextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [12]) );
  FD2 \reg_instance/nextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [13]) );
  FD2 \reg_instance/nextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [14]) );
  FD2 \reg_instance/nextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [15]) );
  FD2 \reg_instance/nextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [16]) );
  FD2 \reg_instance/nextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [17]) );
  FD2 \reg_instance/nextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [18]) );
  FD2 \reg_instance/nextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [19]) );
  FD2 \reg_instance/nextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [20]) );
  FD2 \reg_instance/nextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [21]) );
  FD2 \reg_instance/nextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [22]) );
  FD2 \reg_instance/nextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [23]) );
  FD2 \reg_instance/nextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [24]) );
  FD2 \reg_instance/nextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [25]) );
  FD2 \reg_instance/nextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [26]) );
  FD2 \reg_instance/nextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [27]) );
  FD2 \reg_instance/nextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [28]) );
  FD2 \reg_instance/nextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [29]) );
  FD2 \reg_instance/nextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [30]) );
  FD2 \reg_instance/nextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(n1849), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [31]) );
  BTS4 \io_instance/io_pad_tri[0]  ( .A(out_pad_o[0]), .E(oen_padoe_o[0]), .Z(
        io_pad[0]) );
  BTS4 \io_instance/io_pad_tri[1]  ( .A(out_pad_o[1]), .E(oen_padoe_o[1]), .Z(
        io_pad[1]) );
  BTS4 \io_instance/io_pad_tri[2]  ( .A(out_pad_o[2]), .E(oen_padoe_o[2]), .Z(
        io_pad[2]) );
  BTS4 \io_instance/io_pad_tri[3]  ( .A(out_pad_o[3]), .E(oen_padoe_o[3]), .Z(
        io_pad[3]) );
  BTS4 \io_instance/io_pad_tri[4]  ( .A(out_pad_o[4]), .E(oen_padoe_o[4]), .Z(
        io_pad[4]) );
  BTS4 \io_instance/io_pad_tri[5]  ( .A(out_pad_o[5]), .E(oen_padoe_o[5]), .Z(
        io_pad[5]) );
  BTS4 \io_instance/io_pad_tri[6]  ( .A(out_pad_o[6]), .E(oen_padoe_o[6]), .Z(
        io_pad[6]) );
  BTS4 \io_instance/io_pad_tri[7]  ( .A(out_pad_o[7]), .E(oen_padoe_o[7]), .Z(
        io_pad[7]) );
  BTS4 \io_instance/io_pad_tri[8]  ( .A(out_pad_o[8]), .E(oen_padoe_o[8]), .Z(
        io_pad[8]) );
  BTS4 \io_instance/io_pad_tri[9]  ( .A(out_pad_o[9]), .E(oen_padoe_o[9]), .Z(
        io_pad[9]) );
  BTS4 \io_instance/io_pad_tri[10]  ( .A(out_pad_o[10]), .E(oen_padoe_o[10]), 
        .Z(io_pad[10]) );
  BTS4 \io_instance/io_pad_tri[11]  ( .A(out_pad_o[11]), .E(oen_padoe_o[11]), 
        .Z(io_pad[11]) );
  BTS4 \io_instance/io_pad_tri[12]  ( .A(out_pad_o[12]), .E(oen_padoe_o[12]), 
        .Z(io_pad[12]) );
  BTS4 \io_instance/io_pad_tri[13]  ( .A(out_pad_o[13]), .E(oen_padoe_o[13]), 
        .Z(io_pad[13]) );
  BTS4 \io_instance/io_pad_tri[14]  ( .A(out_pad_o[14]), .E(oen_padoe_o[14]), 
        .Z(io_pad[14]) );
  BTS4 \io_instance/io_pad_tri[15]  ( .A(out_pad_o[15]), .E(oen_padoe_o[15]), 
        .Z(io_pad[15]) );
  BTS4 \io_instance/io_pad_tri[16]  ( .A(out_pad_o[16]), .E(oen_padoe_o[16]), 
        .Z(io_pad[16]) );
  BTS4 \io_instance/io_pad_tri[17]  ( .A(out_pad_o[17]), .E(oen_padoe_o[17]), 
        .Z(io_pad[17]) );
  BTS4 \io_instance/io_pad_tri[18]  ( .A(out_pad_o[18]), .E(oen_padoe_o[18]), 
        .Z(io_pad[18]) );
  BTS4 \io_instance/io_pad_tri[19]  ( .A(out_pad_o[19]), .E(oen_padoe_o[19]), 
        .Z(io_pad[19]) );
  BTS4 \io_instance/io_pad_tri[20]  ( .A(out_pad_o[20]), .E(oen_padoe_o[20]), 
        .Z(io_pad[20]) );
  BTS4 \io_instance/io_pad_tri[21]  ( .A(out_pad_o[21]), .E(oen_padoe_o[21]), 
        .Z(io_pad[21]) );
  BTS4 \io_instance/io_pad_tri[22]  ( .A(out_pad_o[22]), .E(oen_padoe_o[22]), 
        .Z(io_pad[22]) );
  BTS4 \io_instance/io_pad_tri[23]  ( .A(out_pad_o[23]), .E(oen_padoe_o[23]), 
        .Z(io_pad[23]) );
  BTS4 \io_instance/io_pad_tri[24]  ( .A(out_pad_o[24]), .E(oen_padoe_o[24]), 
        .Z(io_pad[24]) );
  BTS4 \io_instance/io_pad_tri[25]  ( .A(out_pad_o[25]), .E(oen_padoe_o[25]), 
        .Z(io_pad[25]) );
  BTS4 \io_instance/io_pad_tri[26]  ( .A(out_pad_o[26]), .E(oen_padoe_o[26]), 
        .Z(io_pad[26]) );
  BTS4 \io_instance/io_pad_tri[27]  ( .A(out_pad_o[27]), .E(oen_padoe_o[27]), 
        .Z(io_pad[27]) );
  BTS4 \io_instance/io_pad_tri[28]  ( .A(out_pad_o[28]), .E(oen_padoe_o[28]), 
        .Z(io_pad[28]) );
  BTS4 \io_instance/io_pad_tri[29]  ( .A(out_pad_o[29]), .E(oen_padoe_o[29]), 
        .Z(io_pad[29]) );
  BTS4 \io_instance/io_pad_tri[30]  ( .A(out_pad_o[30]), .E(oen_padoe_o[30]), 
        .Z(io_pad[30]) );
  BTS4 \io_instance/io_pad_tri[31]  ( .A(out_pad_o[31]), .E(oen_padoe_o[31]), 
        .Z(io_pad[31]) );
  BTS4 \io_instance/in_pad_tri[0]  ( .A(io_pad[0]), .E(n1814), .Z(in_pad_i[0])
         );
  BTS4 \io_instance/in_pad_tri[1]  ( .A(io_pad[1]), .E(n1794), .Z(in_pad_i[1])
         );
  BTS4 \io_instance/in_pad_tri[2]  ( .A(io_pad[2]), .E(n1813), .Z(in_pad_i[2])
         );
  BTS4 \io_instance/in_pad_tri[3]  ( .A(io_pad[3]), .E(n1812), .Z(in_pad_i[3])
         );
  BTS4 \io_instance/in_pad_tri[4]  ( .A(io_pad[4]), .E(n1811), .Z(in_pad_i[4])
         );
  BTS4 \io_instance/in_pad_tri[5]  ( .A(io_pad[5]), .E(n1810), .Z(in_pad_i[5])
         );
  BTS4 \io_instance/in_pad_tri[6]  ( .A(io_pad[6]), .E(n1809), .Z(in_pad_i[6])
         );
  BTS4 \io_instance/in_pad_tri[7]  ( .A(io_pad[7]), .E(n1808), .Z(in_pad_i[7])
         );
  BTS4 \io_instance/in_pad_tri[8]  ( .A(io_pad[8]), .E(n1807), .Z(in_pad_i[8])
         );
  BTS4 \io_instance/in_pad_tri[9]  ( .A(io_pad[9]), .E(n1806), .Z(in_pad_i[9])
         );
  BTS4 \io_instance/in_pad_tri[10]  ( .A(io_pad[10]), .E(n1805), .Z(
        in_pad_i[10]) );
  BTS4 \io_instance/in_pad_tri[11]  ( .A(io_pad[11]), .E(n1804), .Z(
        in_pad_i[11]) );
  BTS4 \io_instance/in_pad_tri[12]  ( .A(io_pad[12]), .E(n1803), .Z(
        in_pad_i[12]) );
  BTS4 \io_instance/in_pad_tri[13]  ( .A(io_pad[13]), .E(n1802), .Z(
        in_pad_i[13]) );
  BTS4 \io_instance/in_pad_tri[14]  ( .A(io_pad[14]), .E(n1801), .Z(
        in_pad_i[14]) );
  BTS4 \io_instance/in_pad_tri[15]  ( .A(io_pad[15]), .E(n1800), .Z(
        in_pad_i[15]) );
  BTS4 \io_instance/in_pad_tri[16]  ( .A(io_pad[16]), .E(n1799), .Z(
        in_pad_i[16]) );
  BTS4 \io_instance/in_pad_tri[17]  ( .A(io_pad[17]), .E(n1798), .Z(
        in_pad_i[17]) );
  BTS4 \io_instance/in_pad_tri[18]  ( .A(io_pad[18]), .E(n1797), .Z(
        in_pad_i[18]) );
  BTS4 \io_instance/in_pad_tri[19]  ( .A(io_pad[19]), .E(n1796), .Z(
        in_pad_i[19]) );
  BTS4 \io_instance/in_pad_tri[20]  ( .A(io_pad[20]), .E(n1793), .Z(
        in_pad_i[20]) );
  BTS4 \io_instance/in_pad_tri[21]  ( .A(io_pad[21]), .E(n1792), .Z(
        in_pad_i[21]) );
  BTS4 \io_instance/in_pad_tri[22]  ( .A(io_pad[22]), .E(n1791), .Z(
        in_pad_i[22]) );
  BTS4 \io_instance/in_pad_tri[23]  ( .A(io_pad[23]), .E(n1790), .Z(
        in_pad_i[23]) );
  BTS4 \io_instance/in_pad_tri[24]  ( .A(io_pad[24]), .E(n1789), .Z(
        in_pad_i[24]) );
  BTS4 \io_instance/in_pad_tri[25]  ( .A(io_pad[25]), .E(n1788), .Z(
        in_pad_i[25]) );
  BTS4 \io_instance/in_pad_tri[26]  ( .A(io_pad[26]), .E(n1787), .Z(
        in_pad_i[26]) );
  BTS4 \io_instance/in_pad_tri[27]  ( .A(io_pad[27]), .E(n1786), .Z(
        in_pad_i[27]) );
  BTS4 \io_instance/in_pad_tri[28]  ( .A(io_pad[28]), .E(n1785), .Z(
        in_pad_i[28]) );
  BTS4 \io_instance/in_pad_tri[29]  ( .A(io_pad[29]), .E(n1784), .Z(
        in_pad_i[29]) );
  BTS4 \io_instance/in_pad_tri[30]  ( .A(io_pad[30]), .E(n1783), .Z(
        in_pad_i[30]) );
  BTS4 \io_instance/in_pad_tri[31]  ( .A(io_pad[31]), .E(n1782), .Z(
        in_pad_i[31]) );
  NR2 U1230 ( .A(\if_instance/fs1/present_state [0]), .B(n1815), .Z(PREADY) );
  IVP U1231 ( .A(gpio_eclk), .Z(n1849) );
  NR4 U1232 ( .A(\reg_instance/rgpio_eclk [11]), .B(
        \reg_instance/rgpio_eclk [10]), .C(\reg_instance/rgpio_eclk [9]), .D(
        \reg_instance/rgpio_eclk [8]), .Z(n1166) );
  NR4 U1233 ( .A(\reg_instance/rgpio_eclk [15]), .B(
        \reg_instance/rgpio_eclk [14]), .C(\reg_instance/rgpio_eclk [13]), .D(
        \reg_instance/rgpio_eclk [12]), .Z(n1165) );
  NR4 U1234 ( .A(\reg_instance/rgpio_eclk [3]), .B(
        \reg_instance/rgpio_eclk [2]), .C(\reg_instance/rgpio_eclk [1]), .D(
        \reg_instance/rgpio_eclk [0]), .Z(n1164) );
  NR4 U1235 ( .A(\reg_instance/rgpio_eclk [7]), .B(
        \reg_instance/rgpio_eclk [6]), .C(\reg_instance/rgpio_eclk [5]), .D(
        \reg_instance/rgpio_eclk [4]), .Z(n1163) );
  ND4 U1236 ( .A(n1166), .B(n1165), .C(n1164), .D(n1163), .Z(n1172) );
  NR4 U1237 ( .A(\reg_instance/rgpio_eclk [27]), .B(
        \reg_instance/rgpio_eclk [26]), .C(\reg_instance/rgpio_eclk [25]), .D(
        \reg_instance/rgpio_eclk [24]), .Z(n1170) );
  NR4 U1238 ( .A(\reg_instance/rgpio_eclk [31]), .B(
        \reg_instance/rgpio_eclk [30]), .C(\reg_instance/rgpio_eclk [29]), .D(
        \reg_instance/rgpio_eclk [28]), .Z(n1169) );
  NR4 U1239 ( .A(\reg_instance/rgpio_eclk [19]), .B(
        \reg_instance/rgpio_eclk [18]), .C(\reg_instance/rgpio_eclk [17]), .D(
        \reg_instance/rgpio_eclk [16]), .Z(n1168) );
  NR4 U1240 ( .A(\reg_instance/rgpio_eclk [23]), .B(
        \reg_instance/rgpio_eclk [22]), .C(\reg_instance/rgpio_eclk [21]), .D(
        \reg_instance/rgpio_eclk [20]), .Z(n1167) );
  ND4 U1241 ( .A(n1170), .B(n1169), .C(n1168), .D(n1167), .Z(n1171) );
  NR2 U1242 ( .A(n1172), .B(n1171), .Z(n1761) );
  NR4 U1243 ( .A(\reg_instance/rgpio_nec [11]), .B(
        \reg_instance/rgpio_nec [10]), .C(\reg_instance/rgpio_nec [9]), .D(
        \reg_instance/rgpio_nec [8]), .Z(n1176) );
  NR4 U1244 ( .A(\reg_instance/rgpio_nec [15]), .B(
        \reg_instance/rgpio_nec [14]), .C(\reg_instance/rgpio_nec [13]), .D(
        \reg_instance/rgpio_nec [12]), .Z(n1175) );
  NR4 U1245 ( .A(\reg_instance/rgpio_nec [3]), .B(\reg_instance/rgpio_nec [2]), 
        .C(\reg_instance/rgpio_nec [1]), .D(\reg_instance/rgpio_nec [0]), .Z(
        n1174) );
  NR4 U1246 ( .A(\reg_instance/rgpio_nec [7]), .B(\reg_instance/rgpio_nec [6]), 
        .C(\reg_instance/rgpio_nec [5]), .D(\reg_instance/rgpio_nec [4]), .Z(
        n1173) );
  ND4 U1247 ( .A(n1176), .B(n1175), .C(n1174), .D(n1173), .Z(n1182) );
  NR4 U1248 ( .A(\reg_instance/rgpio_nec [27]), .B(
        \reg_instance/rgpio_nec [26]), .C(\reg_instance/rgpio_nec [25]), .D(
        \reg_instance/rgpio_nec [24]), .Z(n1180) );
  NR4 U1249 ( .A(\reg_instance/rgpio_nec [31]), .B(
        \reg_instance/rgpio_nec [30]), .C(\reg_instance/rgpio_nec [29]), .D(
        \reg_instance/rgpio_nec [28]), .Z(n1179) );
  NR4 U1250 ( .A(\reg_instance/rgpio_nec [19]), .B(
        \reg_instance/rgpio_nec [18]), .C(\reg_instance/rgpio_nec [17]), .D(
        \reg_instance/rgpio_nec [16]), .Z(n1178) );
  NR4 U1251 ( .A(\reg_instance/rgpio_nec [23]), .B(
        \reg_instance/rgpio_nec [22]), .C(\reg_instance/rgpio_nec [21]), .D(
        \reg_instance/rgpio_nec [20]), .Z(n1177) );
  ND4 U1252 ( .A(n1180), .B(n1179), .C(n1178), .D(n1177), .Z(n1181) );
  NR2 U1253 ( .A(n1182), .B(n1181), .Z(n1183) );
  NR2 U1254 ( .A(n1761), .B(n1183), .Z(n1760) );
  AO2 U1255 ( .A(n1761), .B(in_pad_i[31]), .C(n1760), .D(
        \reg_instance/nextc_sampled [31]), .Z(n1186) );
  IVP U1256 ( .A(n1183), .Z(n1184) );
  NR2 U1257 ( .A(n1761), .B(n1184), .Z(n1762) );
  ND2 U1258 ( .A(n1762), .B(\reg_instance/pextc_sampled [31]), .Z(n1185) );
  ND2 U1259 ( .A(n1186), .B(n1185), .Z(\reg_instance/in_mux [31]) );
  AO2 U1260 ( .A(n1761), .B(in_pad_i[30]), .C(n1760), .D(
        \reg_instance/nextc_sampled [30]), .Z(n1188) );
  ND2 U1261 ( .A(n1762), .B(\reg_instance/pextc_sampled [30]), .Z(n1187) );
  ND2 U1262 ( .A(n1188), .B(n1187), .Z(\reg_instance/in_mux [30]) );
  AO2 U1263 ( .A(n1761), .B(in_pad_i[29]), .C(n1760), .D(
        \reg_instance/nextc_sampled [29]), .Z(n1190) );
  ND2 U1264 ( .A(n1762), .B(\reg_instance/pextc_sampled [29]), .Z(n1189) );
  ND2 U1265 ( .A(n1190), .B(n1189), .Z(\reg_instance/in_mux [29]) );
  AO2 U1266 ( .A(n1761), .B(in_pad_i[28]), .C(n1760), .D(
        \reg_instance/nextc_sampled [28]), .Z(n1192) );
  ND2 U1267 ( .A(n1762), .B(\reg_instance/pextc_sampled [28]), .Z(n1191) );
  ND2 U1268 ( .A(n1192), .B(n1191), .Z(\reg_instance/in_mux [28]) );
  AO2 U1269 ( .A(n1761), .B(in_pad_i[27]), .C(n1760), .D(
        \reg_instance/nextc_sampled [27]), .Z(n1194) );
  ND2 U1270 ( .A(n1762), .B(\reg_instance/pextc_sampled [27]), .Z(n1193) );
  ND2 U1271 ( .A(n1194), .B(n1193), .Z(\reg_instance/in_mux [27]) );
  AO2 U1272 ( .A(n1761), .B(in_pad_i[26]), .C(n1760), .D(
        \reg_instance/nextc_sampled [26]), .Z(n1196) );
  ND2 U1273 ( .A(n1762), .B(\reg_instance/pextc_sampled [26]), .Z(n1195) );
  ND2 U1274 ( .A(n1196), .B(n1195), .Z(\reg_instance/in_mux [26]) );
  AO2 U1275 ( .A(n1761), .B(in_pad_i[25]), .C(n1760), .D(
        \reg_instance/nextc_sampled [25]), .Z(n1198) );
  ND2 U1276 ( .A(n1762), .B(\reg_instance/pextc_sampled [25]), .Z(n1197) );
  ND2 U1277 ( .A(n1198), .B(n1197), .Z(\reg_instance/in_mux [25]) );
  AO2 U1278 ( .A(n1761), .B(in_pad_i[24]), .C(n1760), .D(
        \reg_instance/nextc_sampled [24]), .Z(n1200) );
  ND2 U1279 ( .A(n1762), .B(\reg_instance/pextc_sampled [24]), .Z(n1199) );
  ND2 U1280 ( .A(n1200), .B(n1199), .Z(\reg_instance/in_mux [24]) );
  AO2 U1281 ( .A(n1761), .B(in_pad_i[23]), .C(n1760), .D(
        \reg_instance/nextc_sampled [23]), .Z(n1202) );
  ND2 U1282 ( .A(n1762), .B(\reg_instance/pextc_sampled [23]), .Z(n1201) );
  ND2 U1283 ( .A(n1202), .B(n1201), .Z(\reg_instance/in_mux [23]) );
  AO2 U1284 ( .A(n1761), .B(in_pad_i[22]), .C(n1760), .D(
        \reg_instance/nextc_sampled [22]), .Z(n1204) );
  ND2 U1285 ( .A(n1762), .B(\reg_instance/pextc_sampled [22]), .Z(n1203) );
  ND2 U1286 ( .A(n1204), .B(n1203), .Z(\reg_instance/in_mux [22]) );
  AO2 U1287 ( .A(n1761), .B(in_pad_i[21]), .C(n1760), .D(
        \reg_instance/nextc_sampled [21]), .Z(n1206) );
  ND2 U1288 ( .A(n1762), .B(\reg_instance/pextc_sampled [21]), .Z(n1205) );
  ND2 U1289 ( .A(n1206), .B(n1205), .Z(\reg_instance/in_mux [21]) );
  AO2 U1290 ( .A(n1761), .B(in_pad_i[20]), .C(n1760), .D(
        \reg_instance/nextc_sampled [20]), .Z(n1208) );
  ND2 U1291 ( .A(n1762), .B(\reg_instance/pextc_sampled [20]), .Z(n1207) );
  ND2 U1292 ( .A(n1208), .B(n1207), .Z(\reg_instance/in_mux [20]) );
  AO2 U1293 ( .A(n1761), .B(in_pad_i[19]), .C(n1760), .D(
        \reg_instance/nextc_sampled [19]), .Z(n1210) );
  ND2 U1294 ( .A(n1762), .B(\reg_instance/pextc_sampled [19]), .Z(n1209) );
  ND2 U1295 ( .A(n1210), .B(n1209), .Z(\reg_instance/in_mux [19]) );
  AO2 U1296 ( .A(n1761), .B(in_pad_i[18]), .C(n1760), .D(
        \reg_instance/nextc_sampled [18]), .Z(n1212) );
  ND2 U1297 ( .A(n1762), .B(\reg_instance/pextc_sampled [18]), .Z(n1211) );
  ND2 U1298 ( .A(n1212), .B(n1211), .Z(\reg_instance/in_mux [18]) );
  AO2 U1299 ( .A(n1761), .B(in_pad_i[17]), .C(n1760), .D(
        \reg_instance/nextc_sampled [17]), .Z(n1214) );
  ND2 U1300 ( .A(n1762), .B(\reg_instance/pextc_sampled [17]), .Z(n1213) );
  ND2 U1301 ( .A(n1214), .B(n1213), .Z(\reg_instance/in_mux [17]) );
  AO2 U1302 ( .A(n1761), .B(in_pad_i[16]), .C(n1760), .D(
        \reg_instance/nextc_sampled [16]), .Z(n1216) );
  ND2 U1303 ( .A(n1762), .B(\reg_instance/pextc_sampled [16]), .Z(n1215) );
  ND2 U1304 ( .A(n1216), .B(n1215), .Z(\reg_instance/in_mux [16]) );
  AO2 U1305 ( .A(n1761), .B(in_pad_i[15]), .C(n1760), .D(
        \reg_instance/nextc_sampled [15]), .Z(n1218) );
  ND2 U1306 ( .A(n1762), .B(\reg_instance/pextc_sampled [15]), .Z(n1217) );
  ND2 U1307 ( .A(n1218), .B(n1217), .Z(\reg_instance/in_mux [15]) );
  AO2 U1308 ( .A(n1761), .B(in_pad_i[14]), .C(n1760), .D(
        \reg_instance/nextc_sampled [14]), .Z(n1220) );
  ND2 U1309 ( .A(n1762), .B(\reg_instance/pextc_sampled [14]), .Z(n1219) );
  ND2 U1310 ( .A(n1220), .B(n1219), .Z(\reg_instance/in_mux [14]) );
  AO2 U1311 ( .A(n1761), .B(in_pad_i[13]), .C(n1760), .D(
        \reg_instance/nextc_sampled [13]), .Z(n1222) );
  ND2 U1312 ( .A(n1762), .B(\reg_instance/pextc_sampled [13]), .Z(n1221) );
  ND2 U1313 ( .A(n1222), .B(n1221), .Z(\reg_instance/in_mux [13]) );
  AO2 U1314 ( .A(n1761), .B(in_pad_i[12]), .C(n1760), .D(
        \reg_instance/nextc_sampled [12]), .Z(n1224) );
  ND2 U1315 ( .A(n1762), .B(\reg_instance/pextc_sampled [12]), .Z(n1223) );
  ND2 U1316 ( .A(n1224), .B(n1223), .Z(\reg_instance/in_mux [12]) );
  AO2 U1317 ( .A(n1761), .B(in_pad_i[11]), .C(n1760), .D(
        \reg_instance/nextc_sampled [11]), .Z(n1226) );
  ND2 U1318 ( .A(n1762), .B(\reg_instance/pextc_sampled [11]), .Z(n1225) );
  ND2 U1319 ( .A(n1226), .B(n1225), .Z(\reg_instance/in_mux [11]) );
  AO2 U1320 ( .A(n1761), .B(in_pad_i[10]), .C(n1760), .D(
        \reg_instance/nextc_sampled [10]), .Z(n1228) );
  ND2 U1321 ( .A(n1762), .B(\reg_instance/pextc_sampled [10]), .Z(n1227) );
  ND2 U1322 ( .A(n1228), .B(n1227), .Z(\reg_instance/in_mux [10]) );
  AO2 U1323 ( .A(n1761), .B(in_pad_i[9]), .C(n1760), .D(
        \reg_instance/nextc_sampled [9]), .Z(n1230) );
  ND2 U1324 ( .A(n1762), .B(\reg_instance/pextc_sampled [9]), .Z(n1229) );
  ND2 U1325 ( .A(n1230), .B(n1229), .Z(\reg_instance/in_mux [9]) );
  AO2 U1326 ( .A(n1761), .B(in_pad_i[8]), .C(n1760), .D(
        \reg_instance/nextc_sampled [8]), .Z(n1232) );
  ND2 U1327 ( .A(n1762), .B(\reg_instance/pextc_sampled [8]), .Z(n1231) );
  ND2 U1328 ( .A(n1232), .B(n1231), .Z(\reg_instance/in_mux [8]) );
  AO2 U1329 ( .A(n1761), .B(in_pad_i[7]), .C(n1760), .D(
        \reg_instance/nextc_sampled [7]), .Z(n1234) );
  ND2 U1330 ( .A(n1762), .B(\reg_instance/pextc_sampled [7]), .Z(n1233) );
  ND2 U1331 ( .A(n1234), .B(n1233), .Z(\reg_instance/in_mux [7]) );
  AO2 U1332 ( .A(n1761), .B(in_pad_i[6]), .C(n1760), .D(
        \reg_instance/nextc_sampled [6]), .Z(n1236) );
  ND2 U1333 ( .A(n1762), .B(\reg_instance/pextc_sampled [6]), .Z(n1235) );
  ND2 U1334 ( .A(n1236), .B(n1235), .Z(\reg_instance/in_mux [6]) );
  AO2 U1335 ( .A(n1761), .B(in_pad_i[5]), .C(n1760), .D(
        \reg_instance/nextc_sampled [5]), .Z(n1238) );
  ND2 U1336 ( .A(n1762), .B(\reg_instance/pextc_sampled [5]), .Z(n1237) );
  ND2 U1337 ( .A(n1238), .B(n1237), .Z(\reg_instance/in_mux [5]) );
  AO2 U1338 ( .A(n1761), .B(in_pad_i[4]), .C(n1760), .D(
        \reg_instance/nextc_sampled [4]), .Z(n1240) );
  ND2 U1339 ( .A(n1762), .B(\reg_instance/pextc_sampled [4]), .Z(n1239) );
  ND2 U1340 ( .A(n1240), .B(n1239), .Z(\reg_instance/in_mux [4]) );
  AO2 U1341 ( .A(n1761), .B(in_pad_i[3]), .C(n1760), .D(
        \reg_instance/nextc_sampled [3]), .Z(n1242) );
  ND2 U1342 ( .A(n1762), .B(\reg_instance/pextc_sampled [3]), .Z(n1241) );
  ND2 U1343 ( .A(n1242), .B(n1241), .Z(\reg_instance/in_mux [3]) );
  AO2 U1344 ( .A(n1761), .B(in_pad_i[2]), .C(n1760), .D(
        \reg_instance/nextc_sampled [2]), .Z(n1244) );
  ND2 U1345 ( .A(n1762), .B(\reg_instance/pextc_sampled [2]), .Z(n1243) );
  ND2 U1346 ( .A(n1244), .B(n1243), .Z(\reg_instance/in_mux [2]) );
  AO2 U1347 ( .A(n1761), .B(in_pad_i[0]), .C(n1760), .D(
        \reg_instance/nextc_sampled [0]), .Z(n1246) );
  ND2 U1348 ( .A(n1762), .B(\reg_instance/pextc_sampled [0]), .Z(n1245) );
  ND2 U1349 ( .A(n1246), .B(n1245), .Z(\reg_instance/in_mux [0]) );
  ND2 U1350 ( .A(aux_i[0]), .B(\reg_instance/rgpio_aux [0]), .Z(n1247) );
  AO7 U1351 ( .A(\reg_instance/rgpio_aux [0]), .B(n1816), .C(n1247), .Z(
        out_pad_o[0]) );
  ND2 U1352 ( .A(aux_i[1]), .B(\reg_instance/rgpio_aux [1]), .Z(n1248) );
  AO7 U1353 ( .A(\reg_instance/rgpio_aux [1]), .B(n1817), .C(n1248), .Z(
        out_pad_o[1]) );
  ND2 U1354 ( .A(aux_i[2]), .B(\reg_instance/rgpio_aux [2]), .Z(n1249) );
  AO7 U1355 ( .A(\reg_instance/rgpio_aux [2]), .B(n1818), .C(n1249), .Z(
        out_pad_o[2]) );
  ND2 U1356 ( .A(aux_i[3]), .B(\reg_instance/rgpio_aux [3]), .Z(n1250) );
  AO7 U1357 ( .A(\reg_instance/rgpio_aux [3]), .B(n1819), .C(n1250), .Z(
        out_pad_o[3]) );
  ND2 U1358 ( .A(aux_i[4]), .B(\reg_instance/rgpio_aux [4]), .Z(n1251) );
  AO7 U1359 ( .A(\reg_instance/rgpio_aux [4]), .B(n1820), .C(n1251), .Z(
        out_pad_o[4]) );
  ND2 U1360 ( .A(aux_i[5]), .B(\reg_instance/rgpio_aux [5]), .Z(n1252) );
  AO7 U1361 ( .A(\reg_instance/rgpio_aux [5]), .B(n1821), .C(n1252), .Z(
        out_pad_o[5]) );
  ND2 U1362 ( .A(aux_i[6]), .B(\reg_instance/rgpio_aux [6]), .Z(n1253) );
  AO7 U1363 ( .A(\reg_instance/rgpio_aux [6]), .B(n1822), .C(n1253), .Z(
        out_pad_o[6]) );
  ND2 U1364 ( .A(aux_i[7]), .B(\reg_instance/rgpio_aux [7]), .Z(n1254) );
  AO7 U1365 ( .A(\reg_instance/rgpio_aux [7]), .B(n1823), .C(n1254), .Z(
        out_pad_o[7]) );
  ND2 U1366 ( .A(aux_i[8]), .B(\reg_instance/rgpio_aux [8]), .Z(n1255) );
  AO7 U1367 ( .A(\reg_instance/rgpio_aux [8]), .B(n1824), .C(n1255), .Z(
        out_pad_o[8]) );
  ND2 U1368 ( .A(aux_i[9]), .B(\reg_instance/rgpio_aux [9]), .Z(n1256) );
  AO7 U1369 ( .A(\reg_instance/rgpio_aux [9]), .B(n1825), .C(n1256), .Z(
        out_pad_o[9]) );
  ND2 U1370 ( .A(aux_i[10]), .B(\reg_instance/rgpio_aux [10]), .Z(n1257) );
  AO7 U1371 ( .A(\reg_instance/rgpio_aux [10]), .B(n1826), .C(n1257), .Z(
        out_pad_o[10]) );
  ND2 U1372 ( .A(aux_i[11]), .B(\reg_instance/rgpio_aux [11]), .Z(n1258) );
  AO7 U1373 ( .A(\reg_instance/rgpio_aux [11]), .B(n1827), .C(n1258), .Z(
        out_pad_o[11]) );
  ND2 U1374 ( .A(aux_i[12]), .B(\reg_instance/rgpio_aux [12]), .Z(n1259) );
  AO7 U1375 ( .A(\reg_instance/rgpio_aux [12]), .B(n1828), .C(n1259), .Z(
        out_pad_o[12]) );
  ND2 U1376 ( .A(aux_i[13]), .B(\reg_instance/rgpio_aux [13]), .Z(n1260) );
  AO7 U1377 ( .A(\reg_instance/rgpio_aux [13]), .B(n1829), .C(n1260), .Z(
        out_pad_o[13]) );
  ND2 U1378 ( .A(aux_i[14]), .B(\reg_instance/rgpio_aux [14]), .Z(n1261) );
  AO7 U1379 ( .A(\reg_instance/rgpio_aux [14]), .B(n1830), .C(n1261), .Z(
        out_pad_o[14]) );
  ND2 U1380 ( .A(aux_i[15]), .B(\reg_instance/rgpio_aux [15]), .Z(n1262) );
  AO7 U1381 ( .A(\reg_instance/rgpio_aux [15]), .B(n1831), .C(n1262), .Z(
        out_pad_o[15]) );
  ND2 U1382 ( .A(aux_i[16]), .B(\reg_instance/rgpio_aux [16]), .Z(n1263) );
  AO7 U1383 ( .A(\reg_instance/rgpio_aux [16]), .B(n1832), .C(n1263), .Z(
        out_pad_o[16]) );
  ND2 U1384 ( .A(aux_i[17]), .B(\reg_instance/rgpio_aux [17]), .Z(n1264) );
  AO7 U1385 ( .A(\reg_instance/rgpio_aux [17]), .B(n1833), .C(n1264), .Z(
        out_pad_o[17]) );
  ND2 U1386 ( .A(aux_i[18]), .B(\reg_instance/rgpio_aux [18]), .Z(n1265) );
  AO7 U1387 ( .A(\reg_instance/rgpio_aux [18]), .B(n1834), .C(n1265), .Z(
        out_pad_o[18]) );
  ND2 U1388 ( .A(aux_i[19]), .B(\reg_instance/rgpio_aux [19]), .Z(n1266) );
  AO7 U1389 ( .A(\reg_instance/rgpio_aux [19]), .B(n1835), .C(n1266), .Z(
        out_pad_o[19]) );
  ND2 U1390 ( .A(aux_i[20]), .B(\reg_instance/rgpio_aux [20]), .Z(n1267) );
  AO7 U1391 ( .A(\reg_instance/rgpio_aux [20]), .B(n1836), .C(n1267), .Z(
        out_pad_o[20]) );
  ND2 U1392 ( .A(aux_i[21]), .B(\reg_instance/rgpio_aux [21]), .Z(n1268) );
  AO7 U1393 ( .A(\reg_instance/rgpio_aux [21]), .B(n1837), .C(n1268), .Z(
        out_pad_o[21]) );
  ND2 U1394 ( .A(aux_i[22]), .B(\reg_instance/rgpio_aux [22]), .Z(n1269) );
  AO7 U1395 ( .A(\reg_instance/rgpio_aux [22]), .B(n1838), .C(n1269), .Z(
        out_pad_o[22]) );
  ND2 U1396 ( .A(aux_i[23]), .B(\reg_instance/rgpio_aux [23]), .Z(n1270) );
  AO7 U1397 ( .A(\reg_instance/rgpio_aux [23]), .B(n1839), .C(n1270), .Z(
        out_pad_o[23]) );
  ND2 U1398 ( .A(aux_i[24]), .B(\reg_instance/rgpio_aux [24]), .Z(n1271) );
  AO7 U1399 ( .A(\reg_instance/rgpio_aux [24]), .B(n1840), .C(n1271), .Z(
        out_pad_o[24]) );
  ND2 U1400 ( .A(aux_i[25]), .B(\reg_instance/rgpio_aux [25]), .Z(n1272) );
  AO7 U1401 ( .A(\reg_instance/rgpio_aux [25]), .B(n1841), .C(n1272), .Z(
        out_pad_o[25]) );
  ND2 U1402 ( .A(aux_i[26]), .B(\reg_instance/rgpio_aux [26]), .Z(n1273) );
  AO7 U1403 ( .A(\reg_instance/rgpio_aux [26]), .B(n1842), .C(n1273), .Z(
        out_pad_o[26]) );
  ND2 U1404 ( .A(aux_i[27]), .B(\reg_instance/rgpio_aux [27]), .Z(n1274) );
  AO7 U1405 ( .A(\reg_instance/rgpio_aux [27]), .B(n1843), .C(n1274), .Z(
        out_pad_o[27]) );
  ND2 U1406 ( .A(aux_i[28]), .B(\reg_instance/rgpio_aux [28]), .Z(n1275) );
  AO7 U1407 ( .A(\reg_instance/rgpio_aux [28]), .B(n1844), .C(n1275), .Z(
        out_pad_o[28]) );
  ND2 U1408 ( .A(aux_i[29]), .B(\reg_instance/rgpio_aux [29]), .Z(n1276) );
  AO7 U1409 ( .A(\reg_instance/rgpio_aux [29]), .B(n1845), .C(n1276), .Z(
        out_pad_o[29]) );
  ND2 U1410 ( .A(aux_i[30]), .B(\reg_instance/rgpio_aux [30]), .Z(n1277) );
  AO7 U1411 ( .A(\reg_instance/rgpio_aux [30]), .B(n1846), .C(n1277), .Z(
        out_pad_o[30]) );
  ND2 U1412 ( .A(aux_i[31]), .B(\reg_instance/rgpio_aux [31]), .Z(n1278) );
  AO7 U1413 ( .A(\reg_instance/rgpio_aux [31]), .B(n1847), .C(n1278), .Z(
        out_pad_o[31]) );
  IVP U1414 ( .A(PSEL), .Z(n1281) );
  NR2 U1415 ( .A(PENABLE), .B(\if_instance/fs1/present_state [1]), .Z(n1279)
         );
  NR2 U1416 ( .A(PREADY), .B(n1279), .Z(n1280) );
  NR2 U1417 ( .A(n1281), .B(n1280), .Z(\if_instance/fs1/N20 ) );
  ND2 U1418 ( .A(\if_instance/fs1/present_state [0]), .B(n1815), .Z(n1483) );
  ND2 U1419 ( .A(PSEL), .B(PENABLE), .Z(n1282) );
  NR2 U1420 ( .A(n1483), .B(n1282), .Z(\if_instance/fs1/N21 ) );
  ND2 U1421 ( .A(PREADY), .B(sys_rst), .Z(n1283) );
  NR2 U1422 ( .A(PWRITE), .B(n1283), .Z(n1284) );
  AN2P U1423 ( .A(n1284), .B(gpio_dat_o[0]), .Z(PRDATA[0]) );
  AN2P U1424 ( .A(n1284), .B(gpio_dat_o[1]), .Z(PRDATA[1]) );
  AN2P U1425 ( .A(n1284), .B(gpio_dat_o[2]), .Z(PRDATA[2]) );
  AN2P U1426 ( .A(n1284), .B(gpio_dat_o[3]), .Z(PRDATA[3]) );
  AN2P U1427 ( .A(n1284), .B(gpio_dat_o[4]), .Z(PRDATA[4]) );
  AN2P U1428 ( .A(n1284), .B(gpio_dat_o[5]), .Z(PRDATA[5]) );
  AN2P U1429 ( .A(n1284), .B(gpio_dat_o[6]), .Z(PRDATA[6]) );
  AN2P U1430 ( .A(n1284), .B(gpio_dat_o[7]), .Z(PRDATA[7]) );
  AN2P U1431 ( .A(n1284), .B(gpio_dat_o[8]), .Z(PRDATA[8]) );
  AN2P U1432 ( .A(n1284), .B(gpio_dat_o[9]), .Z(PRDATA[9]) );
  AN2P U1433 ( .A(n1284), .B(gpio_dat_o[10]), .Z(PRDATA[10]) );
  AN2P U1434 ( .A(n1284), .B(gpio_dat_o[11]), .Z(PRDATA[11]) );
  AN2P U1435 ( .A(n1284), .B(gpio_dat_o[12]), .Z(PRDATA[12]) );
  AN2P U1436 ( .A(n1284), .B(gpio_dat_o[13]), .Z(PRDATA[13]) );
  AN2P U1437 ( .A(n1284), .B(gpio_dat_o[14]), .Z(PRDATA[14]) );
  AN2P U1438 ( .A(n1284), .B(gpio_dat_o[15]), .Z(PRDATA[15]) );
  AN2P U1439 ( .A(n1284), .B(gpio_dat_o[16]), .Z(PRDATA[16]) );
  AN2P U1440 ( .A(n1284), .B(gpio_dat_o[17]), .Z(PRDATA[17]) );
  AN2P U1441 ( .A(n1284), .B(gpio_dat_o[18]), .Z(PRDATA[18]) );
  AN2P U1442 ( .A(n1284), .B(gpio_dat_o[19]), .Z(PRDATA[19]) );
  AN2P U1443 ( .A(n1284), .B(gpio_dat_o[20]), .Z(PRDATA[20]) );
  AN2P U1444 ( .A(n1284), .B(gpio_dat_o[21]), .Z(PRDATA[21]) );
  AN2P U1445 ( .A(n1284), .B(gpio_dat_o[22]), .Z(PRDATA[22]) );
  AN2P U1446 ( .A(n1284), .B(gpio_dat_o[23]), .Z(PRDATA[23]) );
  AN2P U1447 ( .A(n1284), .B(gpio_dat_o[24]), .Z(PRDATA[24]) );
  AN2P U1448 ( .A(n1284), .B(gpio_dat_o[25]), .Z(PRDATA[25]) );
  AN2P U1449 ( .A(n1284), .B(gpio_dat_o[26]), .Z(PRDATA[26]) );
  AN2P U1450 ( .A(n1284), .B(gpio_dat_o[27]), .Z(PRDATA[27]) );
  AN2P U1451 ( .A(n1284), .B(gpio_dat_o[28]), .Z(PRDATA[28]) );
  AN2P U1452 ( .A(n1284), .B(gpio_dat_o[29]), .Z(PRDATA[29]) );
  AN2P U1453 ( .A(n1284), .B(gpio_dat_o[30]), .Z(PRDATA[30]) );
  AN2P U1454 ( .A(n1284), .B(gpio_dat_o[31]), .Z(PRDATA[31]) );
  NR4 U1455 ( .A(gpio_addr[7]), .B(gpio_addr[6]), .C(gpio_addr[1]), .D(
        gpio_addr[0]), .Z(n1288) );
  NR4 U1456 ( .A(gpio_addr[11]), .B(gpio_addr[9]), .C(gpio_addr[8]), .D(
        gpio_addr[10]), .Z(n1287) );
  NR4 U1457 ( .A(gpio_addr[28]), .B(gpio_addr[25]), .C(gpio_addr[23]), .D(
        gpio_addr[26]), .Z(n1286) );
  NR4 U1458 ( .A(gpio_addr[29]), .B(gpio_addr[31]), .C(gpio_addr[27]), .D(
        gpio_addr[30]), .Z(n1285) );
  ND4 U1459 ( .A(n1288), .B(n1287), .C(n1286), .D(n1285), .Z(n1293) );
  NR4 U1460 ( .A(gpio_addr[22]), .B(gpio_addr[20]), .C(gpio_addr[24]), .D(
        gpio_addr[21]), .Z(n1291) );
  NR4 U1461 ( .A(gpio_addr[13]), .B(gpio_addr[16]), .C(gpio_addr[14]), .D(
        gpio_addr[12]), .Z(n1290) );
  NR4 U1462 ( .A(gpio_addr[19]), .B(gpio_addr[18]), .C(gpio_addr[15]), .D(
        gpio_addr[17]), .Z(n1289) );
  ND3 U1463 ( .A(n1291), .B(n1290), .C(n1289), .Z(n1292) );
  NR2 U1464 ( .A(n1293), .B(n1292), .Z(n1484) );
  IVP U1465 ( .A(n1484), .Z(n1314) );
  IVP U1466 ( .A(gpio_addr[3]), .Z(n1298) );
  ND2 U1467 ( .A(gpio_addr[4]), .B(n1298), .Z(n1294) );
  NR2 U1468 ( .A(gpio_addr[5]), .B(n1294), .Z(n1295) );
  IVP U1469 ( .A(gpio_addr[2]), .Z(n1304) );
  ND2 U1470 ( .A(n1295), .B(n1304), .Z(n1488) );
  NR2 U1471 ( .A(n1314), .B(n1488), .Z(n1470) );
  ND2 U1472 ( .A(gpio_addr[2]), .B(n1295), .Z(n1487) );
  NR2 U1473 ( .A(n1314), .B(n1487), .Z(n1475) );
  AO2 U1474 ( .A(\reg_instance/rgpio_ptrig [0]), .B(n1470), .C(n1475), .D(
        \reg_instance/rgpio_aux [0]), .Z(n1311) );
  IVP U1475 ( .A(gpio_addr[5]), .Z(n1301) );
  NR2 U1476 ( .A(gpio_addr[3]), .B(gpio_addr[4]), .Z(n1297) );
  ND2 U1477 ( .A(n1304), .B(n1297), .Z(n1296) );
  NR2 U1478 ( .A(n1301), .B(n1296), .Z(n1312) );
  NR2 U1479 ( .A(gpio_addr[5]), .B(n1296), .Z(n1316) );
  AO2 U1480 ( .A(\reg_instance/rgpio_eclk [0]), .B(n1312), .C(
        \reg_instance/rgpio_in [0]), .D(n1316), .Z(n1308) );
  ND2 U1481 ( .A(gpio_addr[2]), .B(n1297), .Z(n1300) );
  NR2 U1482 ( .A(n1300), .B(gpio_addr[5]), .Z(n1492) );
  IVP U1483 ( .A(gpio_addr[4]), .Z(n1299) );
  NR2 U1484 ( .A(gpio_addr[5]), .B(n1298), .Z(n1303) );
  ND2 U1485 ( .A(n1299), .B(n1303), .Z(n1302) );
  NR2 U1486 ( .A(gpio_addr[2]), .B(n1302), .Z(n1490) );
  AO2 U1487 ( .A(n1492), .B(\reg_instance/rgpio_out [0]), .C(n1490), .D(
        oen_padoe_o[0]), .Z(n1307) );
  NR2 U1488 ( .A(n1301), .B(n1300), .Z(n1313) );
  NR2 U1489 ( .A(n1304), .B(n1302), .Z(n1491) );
  AO2 U1490 ( .A(\reg_instance/rgpio_nec [0]), .B(n1313), .C(
        \reg_instance/rgpio_inte [0]), .D(n1491), .Z(n1306) );
  ND2 U1491 ( .A(n1303), .B(gpio_addr[4]), .Z(n1315) );
  NR2 U1492 ( .A(n1315), .B(n1304), .Z(n1502) );
  NR2 U1493 ( .A(gpio_addr[2]), .B(n1315), .Z(n1511) );
  AO2 U1494 ( .A(n1502), .B(\reg_instance/rgpio_ints [0]), .C(n1511), .D(
        \reg_instance/rgpio_ctrl [0]), .Z(n1305) );
  ND4 U1495 ( .A(n1308), .B(n1307), .C(n1306), .D(n1305), .Z(n1309) );
  ND2 U1496 ( .A(n1484), .B(n1309), .Z(n1310) );
  ND2 U1497 ( .A(n1311), .B(n1310), .Z(\reg_instance/data_reg [0]) );
  AN2P U1498 ( .A(n1484), .B(n1502), .Z(n1476) );
  AN2P U1499 ( .A(n1484), .B(n1491), .Z(n1471) );
  AO2 U1500 ( .A(\reg_instance/rgpio_ints [1]), .B(n1476), .C(
        \reg_instance/rgpio_inte [1]), .D(n1471), .Z(n1322) );
  IVP U1501 ( .A(n1312), .Z(n1486) );
  NR2 U1502 ( .A(n1314), .B(n1486), .Z(n1474) );
  IVP U1503 ( .A(n1313), .Z(n1485) );
  NR2 U1504 ( .A(n1314), .B(n1485), .Z(n1473) );
  AO2 U1505 ( .A(\reg_instance/rgpio_eclk [1]), .B(n1474), .C(
        \reg_instance/rgpio_nec [1]), .D(n1473), .Z(n1321) );
  AO2 U1506 ( .A(\reg_instance/rgpio_ptrig [1]), .B(n1470), .C(
        \reg_instance/rgpio_aux [1]), .D(n1475), .Z(n1320) );
  AN2P U1507 ( .A(n1484), .B(n1492), .Z(n1469) );
  NR4 U1508 ( .A(gpio_addr[2]), .B(n1315), .C(n1314), .D(n1795), .Z(n1318) );
  ND2 U1509 ( .A(n1484), .B(n1316), .Z(n1323) );
  ND2 U1510 ( .A(n1484), .B(n1490), .Z(n1482) );
  AO4 U1511 ( .A(n1848), .B(n1323), .C(n1794), .D(n1482), .Z(n1317) );
  AO1P U1512 ( .A(\reg_instance/rgpio_out [1]), .B(n1469), .C(n1318), .D(n1317), .Z(n1319) );
  ND4 U1513 ( .A(n1322), .B(n1321), .C(n1320), .D(n1319), .Z(
        \reg_instance/data_reg [1]) );
  AO2 U1514 ( .A(\reg_instance/rgpio_ptrig [2]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [2]), .Z(n1328) );
  IVP U1515 ( .A(n1323), .Z(n1472) );
  AO2 U1516 ( .A(\reg_instance/rgpio_in [2]), .B(n1472), .C(
        \reg_instance/rgpio_inte [2]), .D(n1471), .Z(n1326) );
  AO2 U1517 ( .A(\reg_instance/rgpio_eclk [2]), .B(n1474), .C(
        \reg_instance/rgpio_nec [2]), .D(n1473), .Z(n1325) );
  AO2 U1518 ( .A(\reg_instance/rgpio_ints [2]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [2]), .Z(n1324) );
  AN3 U1519 ( .A(n1326), .B(n1325), .C(n1324), .Z(n1327) );
  AO3 U1520 ( .A(n1482), .B(n1813), .C(n1328), .D(n1327), .Z(
        \reg_instance/data_reg [2]) );
  AO2 U1521 ( .A(\reg_instance/rgpio_ptrig [3]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [3]), .Z(n1333) );
  AO2 U1522 ( .A(\reg_instance/rgpio_in [3]), .B(n1472), .C(
        \reg_instance/rgpio_inte [3]), .D(n1471), .Z(n1331) );
  AO2 U1523 ( .A(\reg_instance/rgpio_eclk [3]), .B(n1474), .C(
        \reg_instance/rgpio_nec [3]), .D(n1473), .Z(n1330) );
  AO2 U1524 ( .A(\reg_instance/rgpio_ints [3]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [3]), .Z(n1329) );
  AN3 U1525 ( .A(n1331), .B(n1330), .C(n1329), .Z(n1332) );
  AO3 U1526 ( .A(n1482), .B(n1812), .C(n1333), .D(n1332), .Z(
        \reg_instance/data_reg [3]) );
  AO2 U1527 ( .A(\reg_instance/rgpio_ptrig [4]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [4]), .Z(n1338) );
  AO2 U1528 ( .A(\reg_instance/rgpio_in [4]), .B(n1472), .C(
        \reg_instance/rgpio_inte [4]), .D(n1471), .Z(n1336) );
  AO2 U1529 ( .A(\reg_instance/rgpio_eclk [4]), .B(n1474), .C(
        \reg_instance/rgpio_nec [4]), .D(n1473), .Z(n1335) );
  AO2 U1530 ( .A(\reg_instance/rgpio_ints [4]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [4]), .Z(n1334) );
  AN3 U1531 ( .A(n1336), .B(n1335), .C(n1334), .Z(n1337) );
  AO3 U1532 ( .A(n1482), .B(n1811), .C(n1338), .D(n1337), .Z(
        \reg_instance/data_reg [4]) );
  AO2 U1533 ( .A(\reg_instance/rgpio_ptrig [5]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [5]), .Z(n1343) );
  AO2 U1534 ( .A(\reg_instance/rgpio_in [5]), .B(n1472), .C(
        \reg_instance/rgpio_inte [5]), .D(n1471), .Z(n1341) );
  AO2 U1535 ( .A(\reg_instance/rgpio_eclk [5]), .B(n1474), .C(
        \reg_instance/rgpio_nec [5]), .D(n1473), .Z(n1340) );
  AO2 U1536 ( .A(\reg_instance/rgpio_ints [5]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [5]), .Z(n1339) );
  AN3 U1537 ( .A(n1341), .B(n1340), .C(n1339), .Z(n1342) );
  AO3 U1538 ( .A(n1482), .B(n1810), .C(n1343), .D(n1342), .Z(
        \reg_instance/data_reg [5]) );
  AO2 U1539 ( .A(\reg_instance/rgpio_ptrig [6]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [6]), .Z(n1348) );
  AO2 U1540 ( .A(\reg_instance/rgpio_in [6]), .B(n1472), .C(
        \reg_instance/rgpio_inte [6]), .D(n1471), .Z(n1346) );
  AO2 U1541 ( .A(\reg_instance/rgpio_eclk [6]), .B(n1474), .C(
        \reg_instance/rgpio_nec [6]), .D(n1473), .Z(n1345) );
  AO2 U1542 ( .A(\reg_instance/rgpio_ints [6]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [6]), .Z(n1344) );
  AN3 U1543 ( .A(n1346), .B(n1345), .C(n1344), .Z(n1347) );
  AO3 U1544 ( .A(n1482), .B(n1809), .C(n1348), .D(n1347), .Z(
        \reg_instance/data_reg [6]) );
  AO2 U1545 ( .A(\reg_instance/rgpio_ptrig [7]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [7]), .Z(n1353) );
  AO2 U1546 ( .A(\reg_instance/rgpio_in [7]), .B(n1472), .C(
        \reg_instance/rgpio_inte [7]), .D(n1471), .Z(n1351) );
  AO2 U1547 ( .A(\reg_instance/rgpio_eclk [7]), .B(n1474), .C(
        \reg_instance/rgpio_nec [7]), .D(n1473), .Z(n1350) );
  AO2 U1548 ( .A(\reg_instance/rgpio_ints [7]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [7]), .Z(n1349) );
  AN3 U1549 ( .A(n1351), .B(n1350), .C(n1349), .Z(n1352) );
  AO3 U1550 ( .A(n1482), .B(n1808), .C(n1353), .D(n1352), .Z(
        \reg_instance/data_reg [7]) );
  AO2 U1551 ( .A(\reg_instance/rgpio_ptrig [8]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [8]), .Z(n1358) );
  AO2 U1552 ( .A(\reg_instance/rgpio_in [8]), .B(n1472), .C(
        \reg_instance/rgpio_inte [8]), .D(n1471), .Z(n1356) );
  AO2 U1553 ( .A(\reg_instance/rgpio_eclk [8]), .B(n1474), .C(
        \reg_instance/rgpio_nec [8]), .D(n1473), .Z(n1355) );
  AO2 U1554 ( .A(\reg_instance/rgpio_ints [8]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [8]), .Z(n1354) );
  AN3 U1555 ( .A(n1356), .B(n1355), .C(n1354), .Z(n1357) );
  AO3 U1556 ( .A(n1482), .B(n1807), .C(n1358), .D(n1357), .Z(
        \reg_instance/data_reg [8]) );
  AO2 U1557 ( .A(\reg_instance/rgpio_ptrig [9]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [9]), .Z(n1363) );
  AO2 U1558 ( .A(\reg_instance/rgpio_in [9]), .B(n1472), .C(
        \reg_instance/rgpio_inte [9]), .D(n1471), .Z(n1361) );
  AO2 U1559 ( .A(\reg_instance/rgpio_eclk [9]), .B(n1474), .C(
        \reg_instance/rgpio_nec [9]), .D(n1473), .Z(n1360) );
  AO2 U1560 ( .A(\reg_instance/rgpio_ints [9]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [9]), .Z(n1359) );
  AN3 U1561 ( .A(n1361), .B(n1360), .C(n1359), .Z(n1362) );
  AO3 U1562 ( .A(n1482), .B(n1806), .C(n1363), .D(n1362), .Z(
        \reg_instance/data_reg [9]) );
  AO2 U1563 ( .A(\reg_instance/rgpio_ptrig [10]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [10]), .Z(n1368) );
  AO2 U1564 ( .A(\reg_instance/rgpio_in [10]), .B(n1472), .C(
        \reg_instance/rgpio_inte [10]), .D(n1471), .Z(n1366) );
  AO2 U1565 ( .A(\reg_instance/rgpio_eclk [10]), .B(n1474), .C(
        \reg_instance/rgpio_nec [10]), .D(n1473), .Z(n1365) );
  AO2 U1566 ( .A(\reg_instance/rgpio_ints [10]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [10]), .Z(n1364) );
  AN3 U1567 ( .A(n1366), .B(n1365), .C(n1364), .Z(n1367) );
  AO3 U1568 ( .A(n1482), .B(n1805), .C(n1368), .D(n1367), .Z(
        \reg_instance/data_reg [10]) );
  AO2 U1569 ( .A(\reg_instance/rgpio_ptrig [11]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [11]), .Z(n1373) );
  AO2 U1570 ( .A(\reg_instance/rgpio_in [11]), .B(n1472), .C(
        \reg_instance/rgpio_inte [11]), .D(n1471), .Z(n1371) );
  AO2 U1571 ( .A(\reg_instance/rgpio_eclk [11]), .B(n1474), .C(
        \reg_instance/rgpio_nec [11]), .D(n1473), .Z(n1370) );
  AO2 U1572 ( .A(\reg_instance/rgpio_ints [11]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [11]), .Z(n1369) );
  AN3 U1573 ( .A(n1371), .B(n1370), .C(n1369), .Z(n1372) );
  AO3 U1574 ( .A(n1482), .B(n1804), .C(n1373), .D(n1372), .Z(
        \reg_instance/data_reg [11]) );
  AO2 U1575 ( .A(\reg_instance/rgpio_ptrig [12]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [12]), .Z(n1378) );
  AO2 U1576 ( .A(\reg_instance/rgpio_in [12]), .B(n1472), .C(
        \reg_instance/rgpio_inte [12]), .D(n1471), .Z(n1376) );
  AO2 U1577 ( .A(\reg_instance/rgpio_eclk [12]), .B(n1474), .C(
        \reg_instance/rgpio_nec [12]), .D(n1473), .Z(n1375) );
  AO2 U1578 ( .A(\reg_instance/rgpio_ints [12]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [12]), .Z(n1374) );
  AN3 U1579 ( .A(n1376), .B(n1375), .C(n1374), .Z(n1377) );
  AO3 U1580 ( .A(n1482), .B(n1803), .C(n1378), .D(n1377), .Z(
        \reg_instance/data_reg [12]) );
  AO2 U1581 ( .A(\reg_instance/rgpio_ptrig [13]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [13]), .Z(n1383) );
  AO2 U1582 ( .A(\reg_instance/rgpio_in [13]), .B(n1472), .C(
        \reg_instance/rgpio_inte [13]), .D(n1471), .Z(n1381) );
  AO2 U1583 ( .A(\reg_instance/rgpio_eclk [13]), .B(n1474), .C(
        \reg_instance/rgpio_nec [13]), .D(n1473), .Z(n1380) );
  AO2 U1584 ( .A(\reg_instance/rgpio_ints [13]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [13]), .Z(n1379) );
  AN3 U1585 ( .A(n1381), .B(n1380), .C(n1379), .Z(n1382) );
  AO3 U1586 ( .A(n1482), .B(n1802), .C(n1383), .D(n1382), .Z(
        \reg_instance/data_reg [13]) );
  AO2 U1587 ( .A(\reg_instance/rgpio_ptrig [14]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [14]), .Z(n1388) );
  AO2 U1588 ( .A(\reg_instance/rgpio_in [14]), .B(n1472), .C(
        \reg_instance/rgpio_inte [14]), .D(n1471), .Z(n1386) );
  AO2 U1589 ( .A(\reg_instance/rgpio_eclk [14]), .B(n1474), .C(
        \reg_instance/rgpio_nec [14]), .D(n1473), .Z(n1385) );
  AO2 U1590 ( .A(\reg_instance/rgpio_ints [14]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [14]), .Z(n1384) );
  AN3 U1591 ( .A(n1386), .B(n1385), .C(n1384), .Z(n1387) );
  AO3 U1592 ( .A(n1482), .B(n1801), .C(n1388), .D(n1387), .Z(
        \reg_instance/data_reg [14]) );
  AO2 U1593 ( .A(\reg_instance/rgpio_ptrig [15]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [15]), .Z(n1393) );
  AO2 U1594 ( .A(\reg_instance/rgpio_in [15]), .B(n1472), .C(
        \reg_instance/rgpio_inte [15]), .D(n1471), .Z(n1391) );
  AO2 U1595 ( .A(\reg_instance/rgpio_eclk [15]), .B(n1474), .C(
        \reg_instance/rgpio_nec [15]), .D(n1473), .Z(n1390) );
  AO2 U1596 ( .A(\reg_instance/rgpio_ints [15]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [15]), .Z(n1389) );
  AN3 U1597 ( .A(n1391), .B(n1390), .C(n1389), .Z(n1392) );
  AO3 U1598 ( .A(n1482), .B(n1800), .C(n1393), .D(n1392), .Z(
        \reg_instance/data_reg [15]) );
  AO2 U1599 ( .A(\reg_instance/rgpio_ptrig [16]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [16]), .Z(n1398) );
  AO2 U1600 ( .A(\reg_instance/rgpio_in [16]), .B(n1472), .C(
        \reg_instance/rgpio_inte [16]), .D(n1471), .Z(n1396) );
  AO2 U1601 ( .A(\reg_instance/rgpio_eclk [16]), .B(n1474), .C(
        \reg_instance/rgpio_nec [16]), .D(n1473), .Z(n1395) );
  AO2 U1602 ( .A(\reg_instance/rgpio_ints [16]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [16]), .Z(n1394) );
  AN3 U1603 ( .A(n1396), .B(n1395), .C(n1394), .Z(n1397) );
  AO3 U1604 ( .A(n1482), .B(n1799), .C(n1398), .D(n1397), .Z(
        \reg_instance/data_reg [16]) );
  AO2 U1605 ( .A(\reg_instance/rgpio_ptrig [17]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [17]), .Z(n1403) );
  AO2 U1606 ( .A(\reg_instance/rgpio_in [17]), .B(n1472), .C(
        \reg_instance/rgpio_inte [17]), .D(n1471), .Z(n1401) );
  AO2 U1607 ( .A(\reg_instance/rgpio_eclk [17]), .B(n1474), .C(
        \reg_instance/rgpio_nec [17]), .D(n1473), .Z(n1400) );
  AO2 U1608 ( .A(\reg_instance/rgpio_ints [17]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [17]), .Z(n1399) );
  AN3 U1609 ( .A(n1401), .B(n1400), .C(n1399), .Z(n1402) );
  AO3 U1610 ( .A(n1482), .B(n1798), .C(n1403), .D(n1402), .Z(
        \reg_instance/data_reg [17]) );
  AO2 U1611 ( .A(\reg_instance/rgpio_ptrig [18]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [18]), .Z(n1408) );
  AO2 U1612 ( .A(\reg_instance/rgpio_in [18]), .B(n1472), .C(
        \reg_instance/rgpio_inte [18]), .D(n1471), .Z(n1406) );
  AO2 U1613 ( .A(\reg_instance/rgpio_eclk [18]), .B(n1474), .C(
        \reg_instance/rgpio_nec [18]), .D(n1473), .Z(n1405) );
  AO2 U1614 ( .A(\reg_instance/rgpio_ints [18]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [18]), .Z(n1404) );
  AN3 U1615 ( .A(n1406), .B(n1405), .C(n1404), .Z(n1407) );
  AO3 U1616 ( .A(n1482), .B(n1797), .C(n1408), .D(n1407), .Z(
        \reg_instance/data_reg [18]) );
  AO2 U1617 ( .A(\reg_instance/rgpio_ptrig [19]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [19]), .Z(n1413) );
  AO2 U1618 ( .A(\reg_instance/rgpio_in [19]), .B(n1472), .C(
        \reg_instance/rgpio_inte [19]), .D(n1471), .Z(n1411) );
  AO2 U1619 ( .A(\reg_instance/rgpio_eclk [19]), .B(n1474), .C(
        \reg_instance/rgpio_nec [19]), .D(n1473), .Z(n1410) );
  AO2 U1620 ( .A(\reg_instance/rgpio_ints [19]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [19]), .Z(n1409) );
  AN3 U1621 ( .A(n1411), .B(n1410), .C(n1409), .Z(n1412) );
  AO3 U1622 ( .A(n1482), .B(n1796), .C(n1413), .D(n1412), .Z(
        \reg_instance/data_reg [19]) );
  AO2 U1623 ( .A(\reg_instance/rgpio_ptrig [20]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [20]), .Z(n1418) );
  AO2 U1624 ( .A(\reg_instance/rgpio_in [20]), .B(n1472), .C(
        \reg_instance/rgpio_inte [20]), .D(n1471), .Z(n1416) );
  AO2 U1625 ( .A(\reg_instance/rgpio_eclk [20]), .B(n1474), .C(
        \reg_instance/rgpio_nec [20]), .D(n1473), .Z(n1415) );
  AO2 U1626 ( .A(\reg_instance/rgpio_ints [20]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [20]), .Z(n1414) );
  AN3 U1627 ( .A(n1416), .B(n1415), .C(n1414), .Z(n1417) );
  AO3 U1628 ( .A(n1482), .B(n1793), .C(n1418), .D(n1417), .Z(
        \reg_instance/data_reg [20]) );
  AO2 U1629 ( .A(\reg_instance/rgpio_ptrig [21]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [21]), .Z(n1423) );
  AO2 U1630 ( .A(\reg_instance/rgpio_in [21]), .B(n1472), .C(
        \reg_instance/rgpio_inte [21]), .D(n1471), .Z(n1421) );
  AO2 U1631 ( .A(\reg_instance/rgpio_eclk [21]), .B(n1474), .C(
        \reg_instance/rgpio_nec [21]), .D(n1473), .Z(n1420) );
  AO2 U1632 ( .A(\reg_instance/rgpio_ints [21]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [21]), .Z(n1419) );
  AN3 U1633 ( .A(n1421), .B(n1420), .C(n1419), .Z(n1422) );
  AO3 U1634 ( .A(n1482), .B(n1792), .C(n1423), .D(n1422), .Z(
        \reg_instance/data_reg [21]) );
  AO2 U1635 ( .A(\reg_instance/rgpio_ptrig [22]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [22]), .Z(n1428) );
  AO2 U1636 ( .A(\reg_instance/rgpio_in [22]), .B(n1472), .C(
        \reg_instance/rgpio_inte [22]), .D(n1471), .Z(n1426) );
  AO2 U1637 ( .A(\reg_instance/rgpio_eclk [22]), .B(n1474), .C(
        \reg_instance/rgpio_nec [22]), .D(n1473), .Z(n1425) );
  AO2 U1638 ( .A(\reg_instance/rgpio_ints [22]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [22]), .Z(n1424) );
  AN3 U1639 ( .A(n1426), .B(n1425), .C(n1424), .Z(n1427) );
  AO3 U1640 ( .A(n1482), .B(n1791), .C(n1428), .D(n1427), .Z(
        \reg_instance/data_reg [22]) );
  AO2 U1641 ( .A(\reg_instance/rgpio_ptrig [23]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [23]), .Z(n1433) );
  AO2 U1642 ( .A(\reg_instance/rgpio_in [23]), .B(n1472), .C(
        \reg_instance/rgpio_inte [23]), .D(n1471), .Z(n1431) );
  AO2 U1643 ( .A(\reg_instance/rgpio_eclk [23]), .B(n1474), .C(
        \reg_instance/rgpio_nec [23]), .D(n1473), .Z(n1430) );
  AO2 U1644 ( .A(\reg_instance/rgpio_ints [23]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [23]), .Z(n1429) );
  AN3 U1645 ( .A(n1431), .B(n1430), .C(n1429), .Z(n1432) );
  AO3 U1646 ( .A(n1482), .B(n1790), .C(n1433), .D(n1432), .Z(
        \reg_instance/data_reg [23]) );
  AO2 U1647 ( .A(\reg_instance/rgpio_ptrig [24]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [24]), .Z(n1438) );
  AO2 U1648 ( .A(\reg_instance/rgpio_in [24]), .B(n1472), .C(
        \reg_instance/rgpio_inte [24]), .D(n1471), .Z(n1436) );
  AO2 U1649 ( .A(\reg_instance/rgpio_eclk [24]), .B(n1474), .C(
        \reg_instance/rgpio_nec [24]), .D(n1473), .Z(n1435) );
  AO2 U1650 ( .A(\reg_instance/rgpio_ints [24]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [24]), .Z(n1434) );
  AN3 U1651 ( .A(n1436), .B(n1435), .C(n1434), .Z(n1437) );
  AO3 U1652 ( .A(n1482), .B(n1789), .C(n1438), .D(n1437), .Z(
        \reg_instance/data_reg [24]) );
  AO2 U1653 ( .A(\reg_instance/rgpio_ptrig [25]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [25]), .Z(n1443) );
  AO2 U1654 ( .A(\reg_instance/rgpio_in [25]), .B(n1472), .C(
        \reg_instance/rgpio_inte [25]), .D(n1471), .Z(n1441) );
  AO2 U1655 ( .A(\reg_instance/rgpio_eclk [25]), .B(n1474), .C(
        \reg_instance/rgpio_nec [25]), .D(n1473), .Z(n1440) );
  AO2 U1656 ( .A(\reg_instance/rgpio_ints [25]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [25]), .Z(n1439) );
  AN3 U1657 ( .A(n1441), .B(n1440), .C(n1439), .Z(n1442) );
  AO3 U1658 ( .A(n1482), .B(n1788), .C(n1443), .D(n1442), .Z(
        \reg_instance/data_reg [25]) );
  AO2 U1659 ( .A(\reg_instance/rgpio_ptrig [26]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [26]), .Z(n1448) );
  AO2 U1660 ( .A(\reg_instance/rgpio_in [26]), .B(n1472), .C(
        \reg_instance/rgpio_inte [26]), .D(n1471), .Z(n1446) );
  AO2 U1661 ( .A(\reg_instance/rgpio_eclk [26]), .B(n1474), .C(
        \reg_instance/rgpio_nec [26]), .D(n1473), .Z(n1445) );
  AO2 U1662 ( .A(\reg_instance/rgpio_ints [26]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [26]), .Z(n1444) );
  AN3 U1663 ( .A(n1446), .B(n1445), .C(n1444), .Z(n1447) );
  AO3 U1664 ( .A(n1482), .B(n1787), .C(n1448), .D(n1447), .Z(
        \reg_instance/data_reg [26]) );
  AO2 U1665 ( .A(\reg_instance/rgpio_ptrig [27]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [27]), .Z(n1453) );
  AO2 U1666 ( .A(\reg_instance/rgpio_in [27]), .B(n1472), .C(
        \reg_instance/rgpio_inte [27]), .D(n1471), .Z(n1451) );
  AO2 U1667 ( .A(\reg_instance/rgpio_eclk [27]), .B(n1474), .C(
        \reg_instance/rgpio_nec [27]), .D(n1473), .Z(n1450) );
  AO2 U1668 ( .A(\reg_instance/rgpio_ints [27]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [27]), .Z(n1449) );
  AN3 U1669 ( .A(n1451), .B(n1450), .C(n1449), .Z(n1452) );
  AO3 U1670 ( .A(n1482), .B(n1786), .C(n1453), .D(n1452), .Z(
        \reg_instance/data_reg [27]) );
  AO2 U1671 ( .A(\reg_instance/rgpio_ptrig [28]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [28]), .Z(n1458) );
  AO2 U1672 ( .A(\reg_instance/rgpio_in [28]), .B(n1472), .C(
        \reg_instance/rgpio_inte [28]), .D(n1471), .Z(n1456) );
  AO2 U1673 ( .A(\reg_instance/rgpio_eclk [28]), .B(n1474), .C(
        \reg_instance/rgpio_nec [28]), .D(n1473), .Z(n1455) );
  AO2 U1674 ( .A(\reg_instance/rgpio_ints [28]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [28]), .Z(n1454) );
  AN3 U1675 ( .A(n1456), .B(n1455), .C(n1454), .Z(n1457) );
  AO3 U1676 ( .A(n1482), .B(n1785), .C(n1458), .D(n1457), .Z(
        \reg_instance/data_reg [28]) );
  AO2 U1677 ( .A(\reg_instance/rgpio_ptrig [29]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [29]), .Z(n1463) );
  AO2 U1678 ( .A(\reg_instance/rgpio_in [29]), .B(n1472), .C(
        \reg_instance/rgpio_inte [29]), .D(n1471), .Z(n1461) );
  AO2 U1679 ( .A(\reg_instance/rgpio_eclk [29]), .B(n1474), .C(
        \reg_instance/rgpio_nec [29]), .D(n1473), .Z(n1460) );
  AO2 U1680 ( .A(\reg_instance/rgpio_ints [29]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [29]), .Z(n1459) );
  AN3 U1681 ( .A(n1461), .B(n1460), .C(n1459), .Z(n1462) );
  AO3 U1682 ( .A(n1482), .B(n1784), .C(n1463), .D(n1462), .Z(
        \reg_instance/data_reg [29]) );
  AO2 U1683 ( .A(\reg_instance/rgpio_ptrig [30]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [30]), .Z(n1468) );
  AO2 U1684 ( .A(\reg_instance/rgpio_in [30]), .B(n1472), .C(
        \reg_instance/rgpio_inte [30]), .D(n1471), .Z(n1466) );
  AO2 U1685 ( .A(\reg_instance/rgpio_eclk [30]), .B(n1474), .C(
        \reg_instance/rgpio_nec [30]), .D(n1473), .Z(n1465) );
  AO2 U1686 ( .A(\reg_instance/rgpio_ints [30]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [30]), .Z(n1464) );
  AN3 U1687 ( .A(n1466), .B(n1465), .C(n1464), .Z(n1467) );
  AO3 U1688 ( .A(n1482), .B(n1783), .C(n1468), .D(n1467), .Z(
        \reg_instance/data_reg [30]) );
  AO2 U1689 ( .A(\reg_instance/rgpio_ptrig [31]), .B(n1470), .C(n1469), .D(
        \reg_instance/rgpio_out [31]), .Z(n1481) );
  AO2 U1690 ( .A(\reg_instance/rgpio_in [31]), .B(n1472), .C(
        \reg_instance/rgpio_inte [31]), .D(n1471), .Z(n1479) );
  AO2 U1691 ( .A(\reg_instance/rgpio_eclk [31]), .B(n1474), .C(
        \reg_instance/rgpio_nec [31]), .D(n1473), .Z(n1478) );
  AO2 U1692 ( .A(\reg_instance/rgpio_ints [31]), .B(n1476), .C(n1475), .D(
        \reg_instance/rgpio_aux [31]), .Z(n1477) );
  AN3 U1693 ( .A(n1479), .B(n1478), .C(n1477), .Z(n1480) );
  AO3 U1694 ( .A(n1482), .B(n1782), .C(n1481), .D(n1480), .Z(
        \reg_instance/data_reg [31]) );
  OR2P U1695 ( .A(n1483), .B(PSEL), .Z(n1128) );
  AN3 U1696 ( .A(n1484), .B(PREADY), .C(PWRITE), .Z(n1512) );
  IVP U1697 ( .A(n1512), .Z(n1489) );
  NR2 U1698 ( .A(n1489), .B(n1485), .Z(n1495) );
  ND2 U1699 ( .A(sys_rst), .B(PWDATA[0]), .Z(n1781) );
  EO1 U1700 ( .A(n1495), .B(n1781), .C(\reg_instance/rgpio_nec [0]), .D(n1495), 
        .Z(n1127) );
  NR2 U1701 ( .A(n1489), .B(n1486), .Z(n1496) );
  EO1 U1702 ( .A(n1496), .B(n1781), .C(\reg_instance/rgpio_eclk [0]), .D(n1496), .Z(n1126) );
  NR2 U1703 ( .A(n1489), .B(n1487), .Z(n1497) );
  EO1 U1704 ( .A(n1497), .B(n1781), .C(\reg_instance/rgpio_aux [0]), .D(n1497), 
        .Z(n1125) );
  NR2 U1705 ( .A(n1489), .B(n1488), .Z(n1498) );
  EO1 U1706 ( .A(n1498), .B(n1781), .C(\reg_instance/rgpio_ptrig [0]), .D(
        n1498), .Z(n1124) );
  ND2 U1707 ( .A(n1512), .B(n1490), .Z(n1499) );
  IVP U1708 ( .A(n1499), .Z(n1493) );
  AO2 U1709 ( .A(n1493), .B(n1781), .C(n1814), .D(n1499), .Z(n1123) );
  AN2P U1710 ( .A(n1512), .B(n1491), .Z(n1500) );
  EO1 U1711 ( .A(n1500), .B(n1781), .C(\reg_instance/rgpio_inte [0]), .D(n1500), .Z(n1122) );
  ND2 U1712 ( .A(n1512), .B(n1492), .Z(n1501) );
  IVP U1713 ( .A(n1501), .Z(n1494) );
  AO2 U1714 ( .A(n1494), .B(n1781), .C(n1816), .D(n1501), .Z(n1121) );
  ND2 U1715 ( .A(sys_rst), .B(PWDATA[1]), .Z(n1771) );
  EO1 U1716 ( .A(n1495), .B(n1771), .C(\reg_instance/rgpio_nec [1]), .D(n1495), 
        .Z(n1120) );
  EO1 U1717 ( .A(n1496), .B(n1771), .C(\reg_instance/rgpio_eclk [1]), .D(n1496), .Z(n1119) );
  EO1 U1718 ( .A(n1497), .B(n1771), .C(\reg_instance/rgpio_aux [1]), .D(n1497), 
        .Z(n1118) );
  EO1 U1719 ( .A(n1498), .B(n1771), .C(\reg_instance/rgpio_ptrig [1]), .D(
        n1498), .Z(n1117) );
  AO2 U1720 ( .A(n1493), .B(n1771), .C(n1794), .D(n1499), .Z(n1116) );
  EO1 U1721 ( .A(n1500), .B(n1771), .C(\reg_instance/rgpio_inte [1]), .D(n1500), .Z(n1115) );
  AO2 U1722 ( .A(n1494), .B(n1771), .C(n1817), .D(n1501), .Z(n1114) );
  ND2 U1723 ( .A(sys_rst), .B(PWDATA[2]), .Z(n1759) );
  EO1 U1724 ( .A(n1495), .B(n1759), .C(\reg_instance/rgpio_nec [2]), .D(n1495), 
        .Z(n1113) );
  EO1 U1725 ( .A(n1496), .B(n1759), .C(\reg_instance/rgpio_eclk [2]), .D(n1496), .Z(n1112) );
  EO1 U1726 ( .A(n1497), .B(n1759), .C(\reg_instance/rgpio_aux [2]), .D(n1497), 
        .Z(n1111) );
  EO1 U1727 ( .A(n1498), .B(n1759), .C(\reg_instance/rgpio_ptrig [2]), .D(
        n1498), .Z(n1110) );
  AO2 U1728 ( .A(n1493), .B(n1759), .C(n1813), .D(n1499), .Z(n1109) );
  EO1 U1729 ( .A(n1500), .B(n1759), .C(\reg_instance/rgpio_inte [2]), .D(n1500), .Z(n1108) );
  AO2 U1730 ( .A(n1494), .B(n1759), .C(n1818), .D(n1501), .Z(n1107) );
  ND2 U1731 ( .A(sys_rst), .B(PWDATA[3]), .Z(n1751) );
  EO1 U1732 ( .A(n1495), .B(n1751), .C(\reg_instance/rgpio_nec [3]), .D(n1495), 
        .Z(n1106) );
  EO1 U1733 ( .A(n1496), .B(n1751), .C(\reg_instance/rgpio_eclk [3]), .D(n1496), .Z(n1105) );
  EO1 U1734 ( .A(n1497), .B(n1751), .C(\reg_instance/rgpio_aux [3]), .D(n1497), 
        .Z(n1104) );
  EO1 U1735 ( .A(n1498), .B(n1751), .C(\reg_instance/rgpio_ptrig [3]), .D(
        n1498), .Z(n1103) );
  AO2 U1736 ( .A(n1493), .B(n1751), .C(n1812), .D(n1499), .Z(n1102) );
  EO1 U1737 ( .A(n1500), .B(n1751), .C(\reg_instance/rgpio_inte [3]), .D(n1500), .Z(n1101) );
  AO2 U1738 ( .A(n1494), .B(n1751), .C(n1819), .D(n1501), .Z(n1100) );
  ND2 U1739 ( .A(sys_rst), .B(PWDATA[4]), .Z(n1743) );
  EO1 U1740 ( .A(n1495), .B(n1743), .C(\reg_instance/rgpio_nec [4]), .D(n1495), 
        .Z(n1099) );
  EO1 U1741 ( .A(n1496), .B(n1743), .C(\reg_instance/rgpio_eclk [4]), .D(n1496), .Z(n1098) );
  EO1 U1742 ( .A(n1497), .B(n1743), .C(\reg_instance/rgpio_aux [4]), .D(n1497), 
        .Z(n1097) );
  EO1 U1743 ( .A(n1498), .B(n1743), .C(\reg_instance/rgpio_ptrig [4]), .D(
        n1498), .Z(n1096) );
  AO2 U1744 ( .A(n1493), .B(n1743), .C(n1811), .D(n1499), .Z(n1095) );
  EO1 U1745 ( .A(n1500), .B(n1743), .C(\reg_instance/rgpio_inte [4]), .D(n1500), .Z(n1094) );
  AO2 U1746 ( .A(n1494), .B(n1743), .C(n1820), .D(n1501), .Z(n1093) );
  ND2 U1747 ( .A(sys_rst), .B(PWDATA[5]), .Z(n1735) );
  EO1 U1748 ( .A(n1495), .B(n1735), .C(\reg_instance/rgpio_nec [5]), .D(n1495), 
        .Z(n1092) );
  EO1 U1749 ( .A(n1496), .B(n1735), .C(\reg_instance/rgpio_eclk [5]), .D(n1496), .Z(n1091) );
  EO1 U1750 ( .A(n1497), .B(n1735), .C(\reg_instance/rgpio_aux [5]), .D(n1497), 
        .Z(n1090) );
  EO1 U1751 ( .A(n1498), .B(n1735), .C(\reg_instance/rgpio_ptrig [5]), .D(
        n1498), .Z(n1089) );
  AO2 U1752 ( .A(n1493), .B(n1735), .C(n1810), .D(n1499), .Z(n1088) );
  EO1 U1753 ( .A(n1500), .B(n1735), .C(\reg_instance/rgpio_inte [5]), .D(n1500), .Z(n1087) );
  AO2 U1754 ( .A(n1494), .B(n1735), .C(n1821), .D(n1501), .Z(n1086) );
  ND2 U1755 ( .A(sys_rst), .B(PWDATA[6]), .Z(n1727) );
  EO1 U1756 ( .A(n1495), .B(n1727), .C(\reg_instance/rgpio_nec [6]), .D(n1495), 
        .Z(n1085) );
  EO1 U1757 ( .A(n1496), .B(n1727), .C(\reg_instance/rgpio_eclk [6]), .D(n1496), .Z(n1084) );
  EO1 U1758 ( .A(n1497), .B(n1727), .C(\reg_instance/rgpio_aux [6]), .D(n1497), 
        .Z(n1083) );
  EO1 U1759 ( .A(n1498), .B(n1727), .C(\reg_instance/rgpio_ptrig [6]), .D(
        n1498), .Z(n1082) );
  AO2 U1760 ( .A(n1493), .B(n1727), .C(n1809), .D(n1499), .Z(n1081) );
  EO1 U1761 ( .A(n1500), .B(n1727), .C(\reg_instance/rgpio_inte [6]), .D(n1500), .Z(n1080) );
  AO2 U1762 ( .A(n1494), .B(n1727), .C(n1822), .D(n1501), .Z(n1079) );
  ND2 U1763 ( .A(sys_rst), .B(PWDATA[7]), .Z(n1719) );
  EO1 U1764 ( .A(n1495), .B(n1719), .C(\reg_instance/rgpio_nec [7]), .D(n1495), 
        .Z(n1078) );
  EO1 U1765 ( .A(n1496), .B(n1719), .C(\reg_instance/rgpio_eclk [7]), .D(n1496), .Z(n1077) );
  EO1 U1766 ( .A(n1497), .B(n1719), .C(\reg_instance/rgpio_aux [7]), .D(n1497), 
        .Z(n1076) );
  EO1 U1767 ( .A(n1498), .B(n1719), .C(\reg_instance/rgpio_ptrig [7]), .D(
        n1498), .Z(n1075) );
  AO2 U1768 ( .A(n1493), .B(n1719), .C(n1808), .D(n1499), .Z(n1074) );
  EO1 U1769 ( .A(n1500), .B(n1719), .C(\reg_instance/rgpio_inte [7]), .D(n1500), .Z(n1073) );
  AO2 U1770 ( .A(n1494), .B(n1719), .C(n1823), .D(n1501), .Z(n1072) );
  ND2 U1771 ( .A(sys_rst), .B(PWDATA[8]), .Z(n1711) );
  EO1 U1772 ( .A(n1495), .B(n1711), .C(\reg_instance/rgpio_nec [8]), .D(n1495), 
        .Z(n1071) );
  EO1 U1773 ( .A(n1496), .B(n1711), .C(\reg_instance/rgpio_eclk [8]), .D(n1496), .Z(n1070) );
  EO1 U1774 ( .A(n1497), .B(n1711), .C(\reg_instance/rgpio_aux [8]), .D(n1497), 
        .Z(n1069) );
  EO1 U1775 ( .A(n1498), .B(n1711), .C(\reg_instance/rgpio_ptrig [8]), .D(
        n1498), .Z(n1068) );
  AO2 U1776 ( .A(n1493), .B(n1711), .C(n1807), .D(n1499), .Z(n1067) );
  EO1 U1777 ( .A(n1500), .B(n1711), .C(\reg_instance/rgpio_inte [8]), .D(n1500), .Z(n1066) );
  AO2 U1778 ( .A(n1494), .B(n1711), .C(n1824), .D(n1501), .Z(n1065) );
  ND2 U1779 ( .A(sys_rst), .B(PWDATA[9]), .Z(n1703) );
  EO1 U1780 ( .A(n1495), .B(n1703), .C(\reg_instance/rgpio_nec [9]), .D(n1495), 
        .Z(n1064) );
  EO1 U1781 ( .A(n1496), .B(n1703), .C(\reg_instance/rgpio_eclk [9]), .D(n1496), .Z(n1063) );
  EO1 U1782 ( .A(n1497), .B(n1703), .C(\reg_instance/rgpio_aux [9]), .D(n1497), 
        .Z(n1062) );
  EO1 U1783 ( .A(n1498), .B(n1703), .C(\reg_instance/rgpio_ptrig [9]), .D(
        n1498), .Z(n1061) );
  AO2 U1784 ( .A(n1493), .B(n1703), .C(n1806), .D(n1499), .Z(n1060) );
  EO1 U1785 ( .A(n1500), .B(n1703), .C(\reg_instance/rgpio_inte [9]), .D(n1500), .Z(n1059) );
  AO2 U1786 ( .A(n1494), .B(n1703), .C(n1825), .D(n1501), .Z(n1058) );
  ND2 U1787 ( .A(sys_rst), .B(PWDATA[10]), .Z(n1695) );
  EO1 U1788 ( .A(n1495), .B(n1695), .C(\reg_instance/rgpio_nec [10]), .D(n1495), .Z(n1057) );
  EO1 U1789 ( .A(n1496), .B(n1695), .C(\reg_instance/rgpio_eclk [10]), .D(
        n1496), .Z(n1056) );
  EO1 U1790 ( .A(n1497), .B(n1695), .C(\reg_instance/rgpio_aux [10]), .D(n1497), .Z(n1055) );
  EO1 U1791 ( .A(n1498), .B(n1695), .C(\reg_instance/rgpio_ptrig [10]), .D(
        n1498), .Z(n1054) );
  AO2 U1792 ( .A(n1493), .B(n1695), .C(n1805), .D(n1499), .Z(n1053) );
  EO1 U1793 ( .A(n1500), .B(n1695), .C(\reg_instance/rgpio_inte [10]), .D(
        n1500), .Z(n1052) );
  AO2 U1794 ( .A(n1494), .B(n1695), .C(n1826), .D(n1501), .Z(n1051) );
  ND2 U1795 ( .A(sys_rst), .B(PWDATA[11]), .Z(n1687) );
  EO1 U1796 ( .A(n1495), .B(n1687), .C(\reg_instance/rgpio_nec [11]), .D(n1495), .Z(n1050) );
  EO1 U1797 ( .A(n1496), .B(n1687), .C(\reg_instance/rgpio_eclk [11]), .D(
        n1496), .Z(n1049) );
  EO1 U1798 ( .A(n1497), .B(n1687), .C(\reg_instance/rgpio_aux [11]), .D(n1497), .Z(n1048) );
  EO1 U1799 ( .A(n1498), .B(n1687), .C(\reg_instance/rgpio_ptrig [11]), .D(
        n1498), .Z(n1047) );
  AO2 U1800 ( .A(n1493), .B(n1687), .C(n1804), .D(n1499), .Z(n1046) );
  EO1 U1801 ( .A(n1500), .B(n1687), .C(\reg_instance/rgpio_inte [11]), .D(
        n1500), .Z(n1045) );
  AO2 U1802 ( .A(n1494), .B(n1687), .C(n1827), .D(n1501), .Z(n1044) );
  ND2 U1803 ( .A(sys_rst), .B(PWDATA[12]), .Z(n1679) );
  EO1 U1804 ( .A(n1495), .B(n1679), .C(\reg_instance/rgpio_nec [12]), .D(n1495), .Z(n1043) );
  EO1 U1805 ( .A(n1496), .B(n1679), .C(\reg_instance/rgpio_eclk [12]), .D(
        n1496), .Z(n1042) );
  EO1 U1806 ( .A(n1497), .B(n1679), .C(\reg_instance/rgpio_aux [12]), .D(n1497), .Z(n1041) );
  EO1 U1807 ( .A(n1498), .B(n1679), .C(\reg_instance/rgpio_ptrig [12]), .D(
        n1498), .Z(n1040) );
  AO2 U1808 ( .A(n1493), .B(n1679), .C(n1803), .D(n1499), .Z(n1039) );
  EO1 U1809 ( .A(n1500), .B(n1679), .C(\reg_instance/rgpio_inte [12]), .D(
        n1500), .Z(n1038) );
  AO2 U1810 ( .A(n1494), .B(n1679), .C(n1828), .D(n1501), .Z(n1037) );
  ND2 U1811 ( .A(sys_rst), .B(PWDATA[13]), .Z(n1671) );
  EO1 U1812 ( .A(n1495), .B(n1671), .C(\reg_instance/rgpio_nec [13]), .D(n1495), .Z(n1036) );
  EO1 U1813 ( .A(n1496), .B(n1671), .C(\reg_instance/rgpio_eclk [13]), .D(
        n1496), .Z(n1035) );
  EO1 U1814 ( .A(n1497), .B(n1671), .C(\reg_instance/rgpio_aux [13]), .D(n1497), .Z(n1034) );
  EO1 U1815 ( .A(n1498), .B(n1671), .C(\reg_instance/rgpio_ptrig [13]), .D(
        n1498), .Z(n1033) );
  AO2 U1816 ( .A(n1493), .B(n1671), .C(n1802), .D(n1499), .Z(n1032) );
  EO1 U1817 ( .A(n1500), .B(n1671), .C(\reg_instance/rgpio_inte [13]), .D(
        n1500), .Z(n1031) );
  AO2 U1818 ( .A(n1494), .B(n1671), .C(n1829), .D(n1501), .Z(n1030) );
  ND2 U1819 ( .A(sys_rst), .B(PWDATA[14]), .Z(n1663) );
  EO1 U1820 ( .A(n1495), .B(n1663), .C(\reg_instance/rgpio_nec [14]), .D(n1495), .Z(n1029) );
  EO1 U1821 ( .A(n1496), .B(n1663), .C(\reg_instance/rgpio_eclk [14]), .D(
        n1496), .Z(n1028) );
  EO1 U1822 ( .A(n1497), .B(n1663), .C(\reg_instance/rgpio_aux [14]), .D(n1497), .Z(n1027) );
  EO1 U1823 ( .A(n1498), .B(n1663), .C(\reg_instance/rgpio_ptrig [14]), .D(
        n1498), .Z(n1026) );
  AO2 U1824 ( .A(n1493), .B(n1663), .C(n1801), .D(n1499), .Z(n1025) );
  EO1 U1825 ( .A(n1500), .B(n1663), .C(\reg_instance/rgpio_inte [14]), .D(
        n1500), .Z(n1024) );
  AO2 U1826 ( .A(n1494), .B(n1663), .C(n1830), .D(n1501), .Z(n1023) );
  ND2 U1827 ( .A(sys_rst), .B(PWDATA[15]), .Z(n1655) );
  EO1 U1828 ( .A(n1495), .B(n1655), .C(\reg_instance/rgpio_nec [15]), .D(n1495), .Z(n1022) );
  EO1 U1829 ( .A(n1496), .B(n1655), .C(\reg_instance/rgpio_eclk [15]), .D(
        n1496), .Z(n1021) );
  EO1 U1830 ( .A(n1497), .B(n1655), .C(\reg_instance/rgpio_aux [15]), .D(n1497), .Z(n1020) );
  EO1 U1831 ( .A(n1498), .B(n1655), .C(\reg_instance/rgpio_ptrig [15]), .D(
        n1498), .Z(n1019) );
  AO2 U1832 ( .A(n1493), .B(n1655), .C(n1800), .D(n1499), .Z(n1018) );
  EO1 U1833 ( .A(n1500), .B(n1655), .C(\reg_instance/rgpio_inte [15]), .D(
        n1500), .Z(n1017) );
  AO2 U1834 ( .A(n1494), .B(n1655), .C(n1831), .D(n1501), .Z(n1016) );
  ND2 U1835 ( .A(sys_rst), .B(PWDATA[16]), .Z(n1647) );
  EO1 U1836 ( .A(n1495), .B(n1647), .C(\reg_instance/rgpio_nec [16]), .D(n1495), .Z(n1015) );
  EO1 U1837 ( .A(n1496), .B(n1647), .C(\reg_instance/rgpio_eclk [16]), .D(
        n1496), .Z(n1014) );
  EO1 U1838 ( .A(n1497), .B(n1647), .C(\reg_instance/rgpio_aux [16]), .D(n1497), .Z(n1013) );
  EO1 U1839 ( .A(n1498), .B(n1647), .C(\reg_instance/rgpio_ptrig [16]), .D(
        n1498), .Z(n1012) );
  AO2 U1840 ( .A(n1493), .B(n1647), .C(n1799), .D(n1499), .Z(n1011) );
  EO1 U1841 ( .A(n1500), .B(n1647), .C(\reg_instance/rgpio_inte [16]), .D(
        n1500), .Z(n1010) );
  AO2 U1842 ( .A(n1494), .B(n1647), .C(n1832), .D(n1501), .Z(n1009) );
  ND2 U1843 ( .A(sys_rst), .B(PWDATA[17]), .Z(n1639) );
  EO1 U1844 ( .A(n1495), .B(n1639), .C(\reg_instance/rgpio_nec [17]), .D(n1495), .Z(n1008) );
  EO1 U1845 ( .A(n1496), .B(n1639), .C(\reg_instance/rgpio_eclk [17]), .D(
        n1496), .Z(n1007) );
  EO1 U1846 ( .A(n1497), .B(n1639), .C(\reg_instance/rgpio_aux [17]), .D(n1497), .Z(n1006) );
  EO1 U1847 ( .A(n1498), .B(n1639), .C(\reg_instance/rgpio_ptrig [17]), .D(
        n1498), .Z(n1005) );
  AO2 U1848 ( .A(n1493), .B(n1639), .C(n1798), .D(n1499), .Z(n1004) );
  EO1 U1849 ( .A(n1500), .B(n1639), .C(\reg_instance/rgpio_inte [17]), .D(
        n1500), .Z(n1003) );
  AO2 U1850 ( .A(n1494), .B(n1639), .C(n1833), .D(n1501), .Z(n1002) );
  ND2 U1851 ( .A(sys_rst), .B(PWDATA[18]), .Z(n1631) );
  EO1 U1852 ( .A(n1495), .B(n1631), .C(\reg_instance/rgpio_nec [18]), .D(n1495), .Z(n1001) );
  EO1 U1853 ( .A(n1496), .B(n1631), .C(\reg_instance/rgpio_eclk [18]), .D(
        n1496), .Z(n1000) );
  EO1 U1854 ( .A(n1497), .B(n1631), .C(\reg_instance/rgpio_aux [18]), .D(n1497), .Z(n999) );
  EO1 U1855 ( .A(n1498), .B(n1631), .C(\reg_instance/rgpio_ptrig [18]), .D(
        n1498), .Z(n998) );
  AO2 U1856 ( .A(n1493), .B(n1631), .C(n1797), .D(n1499), .Z(n997) );
  EO1 U1857 ( .A(n1500), .B(n1631), .C(\reg_instance/rgpio_inte [18]), .D(
        n1500), .Z(n996) );
  AO2 U1858 ( .A(n1494), .B(n1631), .C(n1834), .D(n1501), .Z(n995) );
  ND2 U1859 ( .A(sys_rst), .B(PWDATA[19]), .Z(n1623) );
  EO1 U1860 ( .A(n1495), .B(n1623), .C(\reg_instance/rgpio_nec [19]), .D(n1495), .Z(n994) );
  EO1 U1861 ( .A(n1496), .B(n1623), .C(\reg_instance/rgpio_eclk [19]), .D(
        n1496), .Z(n993) );
  EO1 U1862 ( .A(n1497), .B(n1623), .C(\reg_instance/rgpio_aux [19]), .D(n1497), .Z(n992) );
  EO1 U1863 ( .A(n1498), .B(n1623), .C(\reg_instance/rgpio_ptrig [19]), .D(
        n1498), .Z(n991) );
  AO2 U1864 ( .A(n1493), .B(n1623), .C(n1796), .D(n1499), .Z(n990) );
  EO1 U1865 ( .A(n1500), .B(n1623), .C(\reg_instance/rgpio_inte [19]), .D(
        n1500), .Z(n989) );
  AO2 U1866 ( .A(n1494), .B(n1623), .C(n1835), .D(n1501), .Z(n988) );
  ND2 U1867 ( .A(sys_rst), .B(PWDATA[20]), .Z(n1615) );
  EO1 U1868 ( .A(n1495), .B(n1615), .C(\reg_instance/rgpio_nec [20]), .D(n1495), .Z(n987) );
  EO1 U1869 ( .A(n1496), .B(n1615), .C(\reg_instance/rgpio_eclk [20]), .D(
        n1496), .Z(n986) );
  EO1 U1870 ( .A(n1497), .B(n1615), .C(\reg_instance/rgpio_aux [20]), .D(n1497), .Z(n985) );
  EO1 U1871 ( .A(n1498), .B(n1615), .C(\reg_instance/rgpio_ptrig [20]), .D(
        n1498), .Z(n984) );
  AO2 U1872 ( .A(n1493), .B(n1615), .C(n1793), .D(n1499), .Z(n983) );
  EO1 U1873 ( .A(n1500), .B(n1615), .C(\reg_instance/rgpio_inte [20]), .D(
        n1500), .Z(n982) );
  AO2 U1874 ( .A(n1494), .B(n1615), .C(n1836), .D(n1501), .Z(n981) );
  ND2 U1875 ( .A(sys_rst), .B(PWDATA[21]), .Z(n1607) );
  EO1 U1876 ( .A(n1495), .B(n1607), .C(\reg_instance/rgpio_nec [21]), .D(n1495), .Z(n980) );
  EO1 U1877 ( .A(n1496), .B(n1607), .C(\reg_instance/rgpio_eclk [21]), .D(
        n1496), .Z(n979) );
  EO1 U1878 ( .A(n1497), .B(n1607), .C(\reg_instance/rgpio_aux [21]), .D(n1497), .Z(n978) );
  EO1 U1879 ( .A(n1498), .B(n1607), .C(\reg_instance/rgpio_ptrig [21]), .D(
        n1498), .Z(n977) );
  AO2 U1880 ( .A(n1493), .B(n1607), .C(n1792), .D(n1499), .Z(n976) );
  EO1 U1881 ( .A(n1500), .B(n1607), .C(\reg_instance/rgpio_inte [21]), .D(
        n1500), .Z(n975) );
  AO2 U1882 ( .A(n1494), .B(n1607), .C(n1837), .D(n1501), .Z(n974) );
  ND2 U1883 ( .A(sys_rst), .B(PWDATA[22]), .Z(n1599) );
  EO1 U1884 ( .A(n1495), .B(n1599), .C(\reg_instance/rgpio_nec [22]), .D(n1495), .Z(n973) );
  EO1 U1885 ( .A(n1496), .B(n1599), .C(\reg_instance/rgpio_eclk [22]), .D(
        n1496), .Z(n972) );
  EO1 U1886 ( .A(n1497), .B(n1599), .C(\reg_instance/rgpio_aux [22]), .D(n1497), .Z(n971) );
  EO1 U1887 ( .A(n1498), .B(n1599), .C(\reg_instance/rgpio_ptrig [22]), .D(
        n1498), .Z(n970) );
  AO2 U1888 ( .A(n1493), .B(n1599), .C(n1791), .D(n1499), .Z(n969) );
  EO1 U1889 ( .A(n1500), .B(n1599), .C(\reg_instance/rgpio_inte [22]), .D(
        n1500), .Z(n968) );
  AO2 U1890 ( .A(n1494), .B(n1599), .C(n1838), .D(n1501), .Z(n967) );
  ND2 U1891 ( .A(sys_rst), .B(PWDATA[23]), .Z(n1591) );
  EO1 U1892 ( .A(n1495), .B(n1591), .C(\reg_instance/rgpio_nec [23]), .D(n1495), .Z(n966) );
  EO1 U1893 ( .A(n1496), .B(n1591), .C(\reg_instance/rgpio_eclk [23]), .D(
        n1496), .Z(n965) );
  EO1 U1894 ( .A(n1497), .B(n1591), .C(\reg_instance/rgpio_aux [23]), .D(n1497), .Z(n964) );
  EO1 U1895 ( .A(n1498), .B(n1591), .C(\reg_instance/rgpio_ptrig [23]), .D(
        n1498), .Z(n963) );
  AO2 U1896 ( .A(n1493), .B(n1591), .C(n1790), .D(n1499), .Z(n962) );
  EO1 U1897 ( .A(n1500), .B(n1591), .C(\reg_instance/rgpio_inte [23]), .D(
        n1500), .Z(n961) );
  AO2 U1898 ( .A(n1494), .B(n1591), .C(n1839), .D(n1501), .Z(n960) );
  ND2 U1899 ( .A(sys_rst), .B(PWDATA[24]), .Z(n1583) );
  EO1 U1900 ( .A(n1495), .B(n1583), .C(\reg_instance/rgpio_nec [24]), .D(n1495), .Z(n959) );
  EO1 U1901 ( .A(n1496), .B(n1583), .C(\reg_instance/rgpio_eclk [24]), .D(
        n1496), .Z(n958) );
  EO1 U1902 ( .A(n1497), .B(n1583), .C(\reg_instance/rgpio_aux [24]), .D(n1497), .Z(n957) );
  EO1 U1903 ( .A(n1498), .B(n1583), .C(\reg_instance/rgpio_ptrig [24]), .D(
        n1498), .Z(n956) );
  AO2 U1904 ( .A(n1493), .B(n1583), .C(n1789), .D(n1499), .Z(n955) );
  EO1 U1905 ( .A(n1500), .B(n1583), .C(\reg_instance/rgpio_inte [24]), .D(
        n1500), .Z(n954) );
  AO2 U1906 ( .A(n1494), .B(n1583), .C(n1840), .D(n1501), .Z(n953) );
  ND2 U1907 ( .A(sys_rst), .B(PWDATA[25]), .Z(n1575) );
  EO1 U1908 ( .A(n1495), .B(n1575), .C(\reg_instance/rgpio_nec [25]), .D(n1495), .Z(n952) );
  EO1 U1909 ( .A(n1496), .B(n1575), .C(\reg_instance/rgpio_eclk [25]), .D(
        n1496), .Z(n951) );
  EO1 U1910 ( .A(n1497), .B(n1575), .C(\reg_instance/rgpio_aux [25]), .D(n1497), .Z(n950) );
  EO1 U1911 ( .A(n1498), .B(n1575), .C(\reg_instance/rgpio_ptrig [25]), .D(
        n1498), .Z(n949) );
  AO2 U1912 ( .A(n1493), .B(n1575), .C(n1788), .D(n1499), .Z(n948) );
  EO1 U1913 ( .A(n1500), .B(n1575), .C(\reg_instance/rgpio_inte [25]), .D(
        n1500), .Z(n947) );
  AO2 U1914 ( .A(n1494), .B(n1575), .C(n1841), .D(n1501), .Z(n946) );
  ND2 U1915 ( .A(sys_rst), .B(PWDATA[26]), .Z(n1567) );
  EO1 U1916 ( .A(n1495), .B(n1567), .C(\reg_instance/rgpio_nec [26]), .D(n1495), .Z(n945) );
  EO1 U1917 ( .A(n1496), .B(n1567), .C(\reg_instance/rgpio_eclk [26]), .D(
        n1496), .Z(n944) );
  EO1 U1918 ( .A(n1497), .B(n1567), .C(\reg_instance/rgpio_aux [26]), .D(n1497), .Z(n943) );
  EO1 U1919 ( .A(n1498), .B(n1567), .C(\reg_instance/rgpio_ptrig [26]), .D(
        n1498), .Z(n942) );
  AO2 U1920 ( .A(n1493), .B(n1567), .C(n1787), .D(n1499), .Z(n941) );
  EO1 U1921 ( .A(n1500), .B(n1567), .C(\reg_instance/rgpio_inte [26]), .D(
        n1500), .Z(n940) );
  AO2 U1922 ( .A(n1494), .B(n1567), .C(n1842), .D(n1501), .Z(n939) );
  ND2 U1923 ( .A(sys_rst), .B(PWDATA[27]), .Z(n1559) );
  EO1 U1924 ( .A(n1495), .B(n1559), .C(\reg_instance/rgpio_nec [27]), .D(n1495), .Z(n938) );
  EO1 U1925 ( .A(n1496), .B(n1559), .C(\reg_instance/rgpio_eclk [27]), .D(
        n1496), .Z(n937) );
  EO1 U1926 ( .A(n1497), .B(n1559), .C(\reg_instance/rgpio_aux [27]), .D(n1497), .Z(n936) );
  EO1 U1927 ( .A(n1498), .B(n1559), .C(\reg_instance/rgpio_ptrig [27]), .D(
        n1498), .Z(n935) );
  AO2 U1928 ( .A(n1493), .B(n1559), .C(n1786), .D(n1499), .Z(n934) );
  EO1 U1929 ( .A(n1500), .B(n1559), .C(\reg_instance/rgpio_inte [27]), .D(
        n1500), .Z(n933) );
  AO2 U1930 ( .A(n1494), .B(n1559), .C(n1843), .D(n1501), .Z(n932) );
  ND2 U1931 ( .A(sys_rst), .B(PWDATA[28]), .Z(n1551) );
  EO1 U1932 ( .A(n1495), .B(n1551), .C(\reg_instance/rgpio_nec [28]), .D(n1495), .Z(n931) );
  EO1 U1933 ( .A(n1496), .B(n1551), .C(\reg_instance/rgpio_eclk [28]), .D(
        n1496), .Z(n930) );
  EO1 U1934 ( .A(n1497), .B(n1551), .C(\reg_instance/rgpio_aux [28]), .D(n1497), .Z(n929) );
  EO1 U1935 ( .A(n1498), .B(n1551), .C(\reg_instance/rgpio_ptrig [28]), .D(
        n1498), .Z(n928) );
  AO2 U1936 ( .A(n1493), .B(n1551), .C(n1785), .D(n1499), .Z(n927) );
  EO1 U1937 ( .A(n1500), .B(n1551), .C(\reg_instance/rgpio_inte [28]), .D(
        n1500), .Z(n926) );
  AO2 U1938 ( .A(n1494), .B(n1551), .C(n1844), .D(n1501), .Z(n925) );
  ND2 U1939 ( .A(sys_rst), .B(PWDATA[29]), .Z(n1543) );
  EO1 U1940 ( .A(n1495), .B(n1543), .C(\reg_instance/rgpio_nec [29]), .D(n1495), .Z(n924) );
  EO1 U1941 ( .A(n1496), .B(n1543), .C(\reg_instance/rgpio_eclk [29]), .D(
        n1496), .Z(n923) );
  EO1 U1942 ( .A(n1497), .B(n1543), .C(\reg_instance/rgpio_aux [29]), .D(n1497), .Z(n922) );
  EO1 U1943 ( .A(n1498), .B(n1543), .C(\reg_instance/rgpio_ptrig [29]), .D(
        n1498), .Z(n921) );
  AO2 U1944 ( .A(n1493), .B(n1543), .C(n1784), .D(n1499), .Z(n920) );
  EO1 U1945 ( .A(n1500), .B(n1543), .C(\reg_instance/rgpio_inte [29]), .D(
        n1500), .Z(n919) );
  AO2 U1946 ( .A(n1494), .B(n1543), .C(n1845), .D(n1501), .Z(n918) );
  ND2 U1947 ( .A(sys_rst), .B(PWDATA[30]), .Z(n1535) );
  EO1 U1948 ( .A(n1495), .B(n1535), .C(\reg_instance/rgpio_nec [30]), .D(n1495), .Z(n917) );
  EO1 U1949 ( .A(n1496), .B(n1535), .C(\reg_instance/rgpio_eclk [30]), .D(
        n1496), .Z(n916) );
  EO1 U1950 ( .A(n1497), .B(n1535), .C(\reg_instance/rgpio_aux [30]), .D(n1497), .Z(n915) );
  EO1 U1951 ( .A(n1498), .B(n1535), .C(\reg_instance/rgpio_ptrig [30]), .D(
        n1498), .Z(n914) );
  AO2 U1952 ( .A(n1493), .B(n1535), .C(n1783), .D(n1499), .Z(n913) );
  EO1 U1953 ( .A(n1500), .B(n1535), .C(\reg_instance/rgpio_inte [30]), .D(
        n1500), .Z(n912) );
  AO2 U1954 ( .A(n1494), .B(n1535), .C(n1846), .D(n1501), .Z(n911) );
  ND2 U1955 ( .A(sys_rst), .B(PWDATA[31]), .Z(n1510) );
  EO1 U1956 ( .A(n1495), .B(n1510), .C(\reg_instance/rgpio_nec [31]), .D(n1495), .Z(n910) );
  EO1 U1957 ( .A(n1496), .B(n1510), .C(\reg_instance/rgpio_eclk [31]), .D(
        n1496), .Z(n909) );
  EO1 U1958 ( .A(n1497), .B(n1510), .C(\reg_instance/rgpio_aux [31]), .D(n1497), .Z(n908) );
  EO1 U1959 ( .A(n1498), .B(n1510), .C(\reg_instance/rgpio_ptrig [31]), .D(
        n1498), .Z(n907) );
  AO2 U1960 ( .A(n1493), .B(n1510), .C(n1782), .D(n1499), .Z(n906) );
  EO1 U1961 ( .A(n1500), .B(n1510), .C(\reg_instance/rgpio_inte [31]), .D(
        n1500), .Z(n905) );
  AO2 U1962 ( .A(n1494), .B(n1510), .C(n1847), .D(n1501), .Z(n904) );
  ND2 U1963 ( .A(n1512), .B(n1502), .Z(n1780) );
  ND2 U1964 ( .A(\reg_instance/rgpio_ctrl [1]), .B(n1780), .Z(n1776) );
  IVP U1965 ( .A(\reg_instance/in_mux [31]), .Z(n1503) );
  NR2 U1966 ( .A(n1503), .B(\reg_instance/rgpio_in [31]), .Z(n1505) );
  NR2 U1967 ( .A(\reg_instance/rgpio_ptrig [31]), .B(\reg_instance/in_mux [31]), .Z(n1504) );
  AO2 U1968 ( .A(n1505), .B(\reg_instance/rgpio_ptrig [31]), .C(
        \reg_instance/rgpio_in [31]), .D(n1504), .Z(n1506) );
  NR2 U1969 ( .A(n1776), .B(n1506), .Z(n1507) );
  ND2 U1970 ( .A(\reg_instance/rgpio_inte [31]), .B(n1507), .Z(n1509) );
  ND2 U1971 ( .A(\reg_instance/rgpio_ints [31]), .B(n1780), .Z(n1508) );
  AO3 U1972 ( .A(n1510), .B(n1780), .C(n1509), .D(n1508), .Z(n903) );
  ND2 U1973 ( .A(n1512), .B(n1511), .Z(n1513) );
  IVP U1974 ( .A(n1513), .Z(n1527) );
  AO2 U1975 ( .A(n1527), .B(n1771), .C(n1795), .D(n1513), .Z(n902) );
  NR4 U1976 ( .A(\reg_instance/rgpio_ints [23]), .B(
        \reg_instance/rgpio_ints [22]), .C(\reg_instance/rgpio_ints [21]), .D(
        \reg_instance/rgpio_ints [20]), .Z(n1517) );
  NR4 U1977 ( .A(\reg_instance/rgpio_ints [19]), .B(
        \reg_instance/rgpio_ints [18]), .C(\reg_instance/rgpio_ints [17]), .D(
        \reg_instance/rgpio_ints [16]), .Z(n1516) );
  NR4 U1978 ( .A(\reg_instance/rgpio_ints [31]), .B(
        \reg_instance/rgpio_ints [30]), .C(\reg_instance/rgpio_ints [29]), .D(
        \reg_instance/rgpio_ints [28]), .Z(n1515) );
  NR4 U1979 ( .A(\reg_instance/rgpio_ints [27]), .B(
        \reg_instance/rgpio_ints [26]), .C(\reg_instance/rgpio_ints [25]), .D(
        \reg_instance/rgpio_ints [24]), .Z(n1514) );
  ND4 U1980 ( .A(n1517), .B(n1516), .C(n1515), .D(n1514), .Z(n1523) );
  NR4 U1981 ( .A(\reg_instance/rgpio_ints [7]), .B(
        \reg_instance/rgpio_ints [6]), .C(\reg_instance/rgpio_ints [5]), .D(
        \reg_instance/rgpio_ints [4]), .Z(n1521) );
  NR4 U1982 ( .A(\reg_instance/rgpio_ints [3]), .B(
        \reg_instance/rgpio_ints [2]), .C(\reg_instance/rgpio_ints [1]), .D(
        \reg_instance/rgpio_ints [0]), .Z(n1520) );
  NR4 U1983 ( .A(\reg_instance/rgpio_ints [15]), .B(
        \reg_instance/rgpio_ints [14]), .C(\reg_instance/rgpio_ints [13]), .D(
        \reg_instance/rgpio_ints [12]), .Z(n1519) );
  NR4 U1984 ( .A(\reg_instance/rgpio_ints [11]), .B(
        \reg_instance/rgpio_ints [10]), .C(\reg_instance/rgpio_ints [9]), .D(
        \reg_instance/rgpio_ints [8]), .Z(n1518) );
  ND4 U1985 ( .A(n1521), .B(n1520), .C(n1519), .D(n1518), .Z(n1522) );
  NR2 U1986 ( .A(n1523), .B(n1522), .Z(n1524) );
  NR2 U1987 ( .A(n1795), .B(n1524), .Z(IRQ) );
  ND2 U1988 ( .A(\reg_instance/rgpio_ctrl [0]), .B(n1795), .Z(n1526) );
  NR2 U1989 ( .A(n1527), .B(IRQ), .Z(n1525) );
  AO2 U1990 ( .A(n1781), .B(n1527), .C(n1526), .D(n1525), .Z(n901) );
  IVP U1991 ( .A(\reg_instance/in_mux [30]), .Z(n1528) );
  NR2 U1992 ( .A(n1528), .B(\reg_instance/rgpio_in [30]), .Z(n1530) );
  NR2 U1993 ( .A(\reg_instance/rgpio_ptrig [30]), .B(\reg_instance/in_mux [30]), .Z(n1529) );
  AO2 U1994 ( .A(n1530), .B(\reg_instance/rgpio_ptrig [30]), .C(
        \reg_instance/rgpio_in [30]), .D(n1529), .Z(n1531) );
  NR2 U1995 ( .A(n1776), .B(n1531), .Z(n1532) );
  ND2 U1996 ( .A(\reg_instance/rgpio_inte [30]), .B(n1532), .Z(n1534) );
  ND2 U1997 ( .A(\reg_instance/rgpio_ints [30]), .B(n1780), .Z(n1533) );
  AO3 U1998 ( .A(n1535), .B(n1780), .C(n1534), .D(n1533), .Z(n900) );
  IVP U1999 ( .A(\reg_instance/in_mux [29]), .Z(n1536) );
  NR2 U2000 ( .A(n1536), .B(\reg_instance/rgpio_in [29]), .Z(n1538) );
  NR2 U2001 ( .A(\reg_instance/rgpio_ptrig [29]), .B(\reg_instance/in_mux [29]), .Z(n1537) );
  AO2 U2002 ( .A(n1538), .B(\reg_instance/rgpio_ptrig [29]), .C(
        \reg_instance/rgpio_in [29]), .D(n1537), .Z(n1539) );
  NR2 U2003 ( .A(n1776), .B(n1539), .Z(n1540) );
  ND2 U2004 ( .A(\reg_instance/rgpio_inte [29]), .B(n1540), .Z(n1542) );
  ND2 U2005 ( .A(\reg_instance/rgpio_ints [29]), .B(n1780), .Z(n1541) );
  AO3 U2006 ( .A(n1543), .B(n1780), .C(n1542), .D(n1541), .Z(n899) );
  IVP U2007 ( .A(\reg_instance/in_mux [28]), .Z(n1544) );
  NR2 U2008 ( .A(n1544), .B(\reg_instance/rgpio_in [28]), .Z(n1546) );
  NR2 U2009 ( .A(\reg_instance/rgpio_ptrig [28]), .B(\reg_instance/in_mux [28]), .Z(n1545) );
  AO2 U2010 ( .A(n1546), .B(\reg_instance/rgpio_ptrig [28]), .C(
        \reg_instance/rgpio_in [28]), .D(n1545), .Z(n1547) );
  NR2 U2011 ( .A(n1776), .B(n1547), .Z(n1548) );
  ND2 U2012 ( .A(\reg_instance/rgpio_inte [28]), .B(n1548), .Z(n1550) );
  ND2 U2013 ( .A(\reg_instance/rgpio_ints [28]), .B(n1780), .Z(n1549) );
  AO3 U2014 ( .A(n1551), .B(n1780), .C(n1550), .D(n1549), .Z(n898) );
  IVP U2015 ( .A(\reg_instance/in_mux [27]), .Z(n1552) );
  NR2 U2016 ( .A(n1552), .B(\reg_instance/rgpio_in [27]), .Z(n1554) );
  NR2 U2017 ( .A(\reg_instance/rgpio_ptrig [27]), .B(\reg_instance/in_mux [27]), .Z(n1553) );
  AO2 U2018 ( .A(n1554), .B(\reg_instance/rgpio_ptrig [27]), .C(
        \reg_instance/rgpio_in [27]), .D(n1553), .Z(n1555) );
  NR2 U2019 ( .A(n1776), .B(n1555), .Z(n1556) );
  ND2 U2020 ( .A(\reg_instance/rgpio_inte [27]), .B(n1556), .Z(n1558) );
  ND2 U2021 ( .A(\reg_instance/rgpio_ints [27]), .B(n1780), .Z(n1557) );
  AO3 U2022 ( .A(n1559), .B(n1780), .C(n1558), .D(n1557), .Z(n897) );
  IVP U2023 ( .A(\reg_instance/in_mux [26]), .Z(n1560) );
  NR2 U2024 ( .A(n1560), .B(\reg_instance/rgpio_in [26]), .Z(n1562) );
  NR2 U2025 ( .A(\reg_instance/rgpio_ptrig [26]), .B(\reg_instance/in_mux [26]), .Z(n1561) );
  AO2 U2026 ( .A(n1562), .B(\reg_instance/rgpio_ptrig [26]), .C(
        \reg_instance/rgpio_in [26]), .D(n1561), .Z(n1563) );
  NR2 U2027 ( .A(n1776), .B(n1563), .Z(n1564) );
  ND2 U2028 ( .A(\reg_instance/rgpio_inte [26]), .B(n1564), .Z(n1566) );
  ND2 U2029 ( .A(\reg_instance/rgpio_ints [26]), .B(n1780), .Z(n1565) );
  AO3 U2030 ( .A(n1567), .B(n1780), .C(n1566), .D(n1565), .Z(n896) );
  IVP U2031 ( .A(\reg_instance/in_mux [25]), .Z(n1568) );
  NR2 U2032 ( .A(n1568), .B(\reg_instance/rgpio_in [25]), .Z(n1570) );
  NR2 U2033 ( .A(\reg_instance/rgpio_ptrig [25]), .B(\reg_instance/in_mux [25]), .Z(n1569) );
  AO2 U2034 ( .A(n1570), .B(\reg_instance/rgpio_ptrig [25]), .C(
        \reg_instance/rgpio_in [25]), .D(n1569), .Z(n1571) );
  NR2 U2035 ( .A(n1776), .B(n1571), .Z(n1572) );
  ND2 U2036 ( .A(\reg_instance/rgpio_inte [25]), .B(n1572), .Z(n1574) );
  ND2 U2037 ( .A(\reg_instance/rgpio_ints [25]), .B(n1780), .Z(n1573) );
  AO3 U2038 ( .A(n1575), .B(n1780), .C(n1574), .D(n1573), .Z(n895) );
  IVP U2039 ( .A(\reg_instance/in_mux [24]), .Z(n1576) );
  NR2 U2040 ( .A(n1576), .B(\reg_instance/rgpio_in [24]), .Z(n1578) );
  NR2 U2041 ( .A(\reg_instance/rgpio_ptrig [24]), .B(\reg_instance/in_mux [24]), .Z(n1577) );
  AO2 U2042 ( .A(n1578), .B(\reg_instance/rgpio_ptrig [24]), .C(
        \reg_instance/rgpio_in [24]), .D(n1577), .Z(n1579) );
  NR2 U2043 ( .A(n1776), .B(n1579), .Z(n1580) );
  ND2 U2044 ( .A(\reg_instance/rgpio_inte [24]), .B(n1580), .Z(n1582) );
  ND2 U2045 ( .A(\reg_instance/rgpio_ints [24]), .B(n1780), .Z(n1581) );
  AO3 U2046 ( .A(n1583), .B(n1780), .C(n1582), .D(n1581), .Z(n894) );
  IVP U2047 ( .A(\reg_instance/in_mux [23]), .Z(n1584) );
  NR2 U2048 ( .A(n1584), .B(\reg_instance/rgpio_in [23]), .Z(n1586) );
  NR2 U2049 ( .A(\reg_instance/rgpio_ptrig [23]), .B(\reg_instance/in_mux [23]), .Z(n1585) );
  AO2 U2050 ( .A(n1586), .B(\reg_instance/rgpio_ptrig [23]), .C(
        \reg_instance/rgpio_in [23]), .D(n1585), .Z(n1587) );
  NR2 U2051 ( .A(n1776), .B(n1587), .Z(n1588) );
  ND2 U2052 ( .A(\reg_instance/rgpio_inte [23]), .B(n1588), .Z(n1590) );
  ND2 U2053 ( .A(\reg_instance/rgpio_ints [23]), .B(n1780), .Z(n1589) );
  AO3 U2054 ( .A(n1591), .B(n1780), .C(n1590), .D(n1589), .Z(n893) );
  IVP U2055 ( .A(\reg_instance/in_mux [22]), .Z(n1592) );
  NR2 U2056 ( .A(n1592), .B(\reg_instance/rgpio_in [22]), .Z(n1594) );
  NR2 U2057 ( .A(\reg_instance/rgpio_ptrig [22]), .B(\reg_instance/in_mux [22]), .Z(n1593) );
  AO2 U2058 ( .A(n1594), .B(\reg_instance/rgpio_ptrig [22]), .C(
        \reg_instance/rgpio_in [22]), .D(n1593), .Z(n1595) );
  NR2 U2059 ( .A(n1776), .B(n1595), .Z(n1596) );
  ND2 U2060 ( .A(\reg_instance/rgpio_inte [22]), .B(n1596), .Z(n1598) );
  ND2 U2061 ( .A(\reg_instance/rgpio_ints [22]), .B(n1780), .Z(n1597) );
  AO3 U2062 ( .A(n1599), .B(n1780), .C(n1598), .D(n1597), .Z(n892) );
  IVP U2063 ( .A(\reg_instance/in_mux [21]), .Z(n1600) );
  NR2 U2064 ( .A(n1600), .B(\reg_instance/rgpio_in [21]), .Z(n1602) );
  NR2 U2065 ( .A(\reg_instance/rgpio_ptrig [21]), .B(\reg_instance/in_mux [21]), .Z(n1601) );
  AO2 U2066 ( .A(n1602), .B(\reg_instance/rgpio_ptrig [21]), .C(
        \reg_instance/rgpio_in [21]), .D(n1601), .Z(n1603) );
  NR2 U2067 ( .A(n1776), .B(n1603), .Z(n1604) );
  ND2 U2068 ( .A(\reg_instance/rgpio_inte [21]), .B(n1604), .Z(n1606) );
  ND2 U2069 ( .A(\reg_instance/rgpio_ints [21]), .B(n1780), .Z(n1605) );
  AO3 U2070 ( .A(n1607), .B(n1780), .C(n1606), .D(n1605), .Z(n891) );
  IVP U2071 ( .A(\reg_instance/in_mux [20]), .Z(n1608) );
  NR2 U2072 ( .A(n1608), .B(\reg_instance/rgpio_in [20]), .Z(n1610) );
  NR2 U2073 ( .A(\reg_instance/rgpio_ptrig [20]), .B(\reg_instance/in_mux [20]), .Z(n1609) );
  AO2 U2074 ( .A(n1610), .B(\reg_instance/rgpio_ptrig [20]), .C(
        \reg_instance/rgpio_in [20]), .D(n1609), .Z(n1611) );
  NR2 U2075 ( .A(n1776), .B(n1611), .Z(n1612) );
  ND2 U2076 ( .A(\reg_instance/rgpio_inte [20]), .B(n1612), .Z(n1614) );
  ND2 U2077 ( .A(\reg_instance/rgpio_ints [20]), .B(n1780), .Z(n1613) );
  AO3 U2078 ( .A(n1615), .B(n1780), .C(n1614), .D(n1613), .Z(n890) );
  IVP U2079 ( .A(\reg_instance/in_mux [19]), .Z(n1616) );
  NR2 U2080 ( .A(n1616), .B(\reg_instance/rgpio_in [19]), .Z(n1618) );
  NR2 U2081 ( .A(\reg_instance/rgpio_ptrig [19]), .B(\reg_instance/in_mux [19]), .Z(n1617) );
  AO2 U2082 ( .A(n1618), .B(\reg_instance/rgpio_ptrig [19]), .C(
        \reg_instance/rgpio_in [19]), .D(n1617), .Z(n1619) );
  NR2 U2083 ( .A(n1776), .B(n1619), .Z(n1620) );
  ND2 U2084 ( .A(\reg_instance/rgpio_inte [19]), .B(n1620), .Z(n1622) );
  ND2 U2085 ( .A(\reg_instance/rgpio_ints [19]), .B(n1780), .Z(n1621) );
  AO3 U2086 ( .A(n1623), .B(n1780), .C(n1622), .D(n1621), .Z(n889) );
  IVP U2087 ( .A(\reg_instance/in_mux [18]), .Z(n1624) );
  NR2 U2088 ( .A(n1624), .B(\reg_instance/rgpio_in [18]), .Z(n1626) );
  NR2 U2089 ( .A(\reg_instance/rgpio_ptrig [18]), .B(\reg_instance/in_mux [18]), .Z(n1625) );
  AO2 U2090 ( .A(n1626), .B(\reg_instance/rgpio_ptrig [18]), .C(
        \reg_instance/rgpio_in [18]), .D(n1625), .Z(n1627) );
  NR2 U2091 ( .A(n1776), .B(n1627), .Z(n1628) );
  ND2 U2092 ( .A(\reg_instance/rgpio_inte [18]), .B(n1628), .Z(n1630) );
  ND2 U2093 ( .A(\reg_instance/rgpio_ints [18]), .B(n1780), .Z(n1629) );
  AO3 U2094 ( .A(n1631), .B(n1780), .C(n1630), .D(n1629), .Z(n888) );
  IVP U2095 ( .A(\reg_instance/in_mux [17]), .Z(n1632) );
  NR2 U2096 ( .A(n1632), .B(\reg_instance/rgpio_in [17]), .Z(n1634) );
  NR2 U2097 ( .A(\reg_instance/rgpio_ptrig [17]), .B(\reg_instance/in_mux [17]), .Z(n1633) );
  AO2 U2098 ( .A(n1634), .B(\reg_instance/rgpio_ptrig [17]), .C(
        \reg_instance/rgpio_in [17]), .D(n1633), .Z(n1635) );
  NR2 U2099 ( .A(n1776), .B(n1635), .Z(n1636) );
  ND2 U2100 ( .A(\reg_instance/rgpio_inte [17]), .B(n1636), .Z(n1638) );
  ND2 U2101 ( .A(\reg_instance/rgpio_ints [17]), .B(n1780), .Z(n1637) );
  AO3 U2102 ( .A(n1639), .B(n1780), .C(n1638), .D(n1637), .Z(n887) );
  IVP U2103 ( .A(\reg_instance/in_mux [16]), .Z(n1640) );
  NR2 U2104 ( .A(n1640), .B(\reg_instance/rgpio_in [16]), .Z(n1642) );
  NR2 U2105 ( .A(\reg_instance/rgpio_ptrig [16]), .B(\reg_instance/in_mux [16]), .Z(n1641) );
  AO2 U2106 ( .A(n1642), .B(\reg_instance/rgpio_ptrig [16]), .C(
        \reg_instance/rgpio_in [16]), .D(n1641), .Z(n1643) );
  NR2 U2107 ( .A(n1776), .B(n1643), .Z(n1644) );
  ND2 U2108 ( .A(\reg_instance/rgpio_inte [16]), .B(n1644), .Z(n1646) );
  ND2 U2109 ( .A(\reg_instance/rgpio_ints [16]), .B(n1780), .Z(n1645) );
  AO3 U2110 ( .A(n1647), .B(n1780), .C(n1646), .D(n1645), .Z(n886) );
  IVP U2111 ( .A(\reg_instance/in_mux [15]), .Z(n1648) );
  NR2 U2112 ( .A(n1648), .B(\reg_instance/rgpio_in [15]), .Z(n1650) );
  NR2 U2113 ( .A(\reg_instance/rgpio_ptrig [15]), .B(\reg_instance/in_mux [15]), .Z(n1649) );
  AO2 U2114 ( .A(n1650), .B(\reg_instance/rgpio_ptrig [15]), .C(
        \reg_instance/rgpio_in [15]), .D(n1649), .Z(n1651) );
  NR2 U2115 ( .A(n1776), .B(n1651), .Z(n1652) );
  ND2 U2116 ( .A(\reg_instance/rgpio_inte [15]), .B(n1652), .Z(n1654) );
  ND2 U2117 ( .A(\reg_instance/rgpio_ints [15]), .B(n1780), .Z(n1653) );
  AO3 U2118 ( .A(n1655), .B(n1780), .C(n1654), .D(n1653), .Z(n885) );
  IVP U2119 ( .A(\reg_instance/in_mux [14]), .Z(n1656) );
  NR2 U2120 ( .A(n1656), .B(\reg_instance/rgpio_in [14]), .Z(n1658) );
  NR2 U2121 ( .A(\reg_instance/rgpio_ptrig [14]), .B(\reg_instance/in_mux [14]), .Z(n1657) );
  AO2 U2122 ( .A(n1658), .B(\reg_instance/rgpio_ptrig [14]), .C(
        \reg_instance/rgpio_in [14]), .D(n1657), .Z(n1659) );
  NR2 U2123 ( .A(n1776), .B(n1659), .Z(n1660) );
  ND2 U2124 ( .A(\reg_instance/rgpio_inte [14]), .B(n1660), .Z(n1662) );
  ND2 U2125 ( .A(\reg_instance/rgpio_ints [14]), .B(n1780), .Z(n1661) );
  AO3 U2126 ( .A(n1663), .B(n1780), .C(n1662), .D(n1661), .Z(n884) );
  IVP U2127 ( .A(\reg_instance/in_mux [13]), .Z(n1664) );
  NR2 U2128 ( .A(n1664), .B(\reg_instance/rgpio_in [13]), .Z(n1666) );
  NR2 U2129 ( .A(\reg_instance/rgpio_ptrig [13]), .B(\reg_instance/in_mux [13]), .Z(n1665) );
  AO2 U2130 ( .A(n1666), .B(\reg_instance/rgpio_ptrig [13]), .C(
        \reg_instance/rgpio_in [13]), .D(n1665), .Z(n1667) );
  NR2 U2131 ( .A(n1776), .B(n1667), .Z(n1668) );
  ND2 U2132 ( .A(\reg_instance/rgpio_inte [13]), .B(n1668), .Z(n1670) );
  ND2 U2133 ( .A(\reg_instance/rgpio_ints [13]), .B(n1780), .Z(n1669) );
  AO3 U2134 ( .A(n1671), .B(n1780), .C(n1670), .D(n1669), .Z(n883) );
  IVP U2135 ( .A(\reg_instance/in_mux [12]), .Z(n1672) );
  NR2 U2136 ( .A(n1672), .B(\reg_instance/rgpio_in [12]), .Z(n1674) );
  NR2 U2137 ( .A(\reg_instance/rgpio_ptrig [12]), .B(\reg_instance/in_mux [12]), .Z(n1673) );
  AO2 U2138 ( .A(n1674), .B(\reg_instance/rgpio_ptrig [12]), .C(
        \reg_instance/rgpio_in [12]), .D(n1673), .Z(n1675) );
  NR2 U2139 ( .A(n1776), .B(n1675), .Z(n1676) );
  ND2 U2140 ( .A(\reg_instance/rgpio_inte [12]), .B(n1676), .Z(n1678) );
  ND2 U2141 ( .A(\reg_instance/rgpio_ints [12]), .B(n1780), .Z(n1677) );
  AO3 U2142 ( .A(n1679), .B(n1780), .C(n1678), .D(n1677), .Z(n882) );
  IVP U2143 ( .A(\reg_instance/in_mux [11]), .Z(n1680) );
  NR2 U2144 ( .A(n1680), .B(\reg_instance/rgpio_in [11]), .Z(n1682) );
  NR2 U2145 ( .A(\reg_instance/rgpio_ptrig [11]), .B(\reg_instance/in_mux [11]), .Z(n1681) );
  AO2 U2146 ( .A(n1682), .B(\reg_instance/rgpio_ptrig [11]), .C(
        \reg_instance/rgpio_in [11]), .D(n1681), .Z(n1683) );
  NR2 U2147 ( .A(n1776), .B(n1683), .Z(n1684) );
  ND2 U2148 ( .A(\reg_instance/rgpio_inte [11]), .B(n1684), .Z(n1686) );
  ND2 U2149 ( .A(\reg_instance/rgpio_ints [11]), .B(n1780), .Z(n1685) );
  AO3 U2150 ( .A(n1687), .B(n1780), .C(n1686), .D(n1685), .Z(n881) );
  IVP U2151 ( .A(\reg_instance/in_mux [10]), .Z(n1688) );
  NR2 U2152 ( .A(n1688), .B(\reg_instance/rgpio_in [10]), .Z(n1690) );
  NR2 U2153 ( .A(\reg_instance/rgpio_ptrig [10]), .B(\reg_instance/in_mux [10]), .Z(n1689) );
  AO2 U2154 ( .A(n1690), .B(\reg_instance/rgpio_ptrig [10]), .C(
        \reg_instance/rgpio_in [10]), .D(n1689), .Z(n1691) );
  NR2 U2155 ( .A(n1776), .B(n1691), .Z(n1692) );
  ND2 U2156 ( .A(\reg_instance/rgpio_inte [10]), .B(n1692), .Z(n1694) );
  ND2 U2157 ( .A(\reg_instance/rgpio_ints [10]), .B(n1780), .Z(n1693) );
  AO3 U2158 ( .A(n1695), .B(n1780), .C(n1694), .D(n1693), .Z(n880) );
  IVP U2159 ( .A(\reg_instance/in_mux [9]), .Z(n1696) );
  NR2 U2160 ( .A(n1696), .B(\reg_instance/rgpio_in [9]), .Z(n1698) );
  NR2 U2161 ( .A(\reg_instance/rgpio_ptrig [9]), .B(\reg_instance/in_mux [9]), 
        .Z(n1697) );
  AO2 U2162 ( .A(n1698), .B(\reg_instance/rgpio_ptrig [9]), .C(
        \reg_instance/rgpio_in [9]), .D(n1697), .Z(n1699) );
  NR2 U2163 ( .A(n1776), .B(n1699), .Z(n1700) );
  ND2 U2164 ( .A(\reg_instance/rgpio_inte [9]), .B(n1700), .Z(n1702) );
  ND2 U2165 ( .A(\reg_instance/rgpio_ints [9]), .B(n1780), .Z(n1701) );
  AO3 U2166 ( .A(n1703), .B(n1780), .C(n1702), .D(n1701), .Z(n879) );
  IVP U2167 ( .A(\reg_instance/in_mux [8]), .Z(n1704) );
  NR2 U2168 ( .A(n1704), .B(\reg_instance/rgpio_in [8]), .Z(n1706) );
  NR2 U2169 ( .A(\reg_instance/rgpio_ptrig [8]), .B(\reg_instance/in_mux [8]), 
        .Z(n1705) );
  AO2 U2170 ( .A(n1706), .B(\reg_instance/rgpio_ptrig [8]), .C(
        \reg_instance/rgpio_in [8]), .D(n1705), .Z(n1707) );
  NR2 U2171 ( .A(n1776), .B(n1707), .Z(n1708) );
  ND2 U2172 ( .A(\reg_instance/rgpio_inte [8]), .B(n1708), .Z(n1710) );
  ND2 U2173 ( .A(\reg_instance/rgpio_ints [8]), .B(n1780), .Z(n1709) );
  AO3 U2174 ( .A(n1711), .B(n1780), .C(n1710), .D(n1709), .Z(n878) );
  IVP U2175 ( .A(\reg_instance/in_mux [7]), .Z(n1712) );
  NR2 U2176 ( .A(n1712), .B(\reg_instance/rgpio_in [7]), .Z(n1714) );
  NR2 U2177 ( .A(\reg_instance/rgpio_ptrig [7]), .B(\reg_instance/in_mux [7]), 
        .Z(n1713) );
  AO2 U2178 ( .A(n1714), .B(\reg_instance/rgpio_ptrig [7]), .C(
        \reg_instance/rgpio_in [7]), .D(n1713), .Z(n1715) );
  NR2 U2179 ( .A(n1776), .B(n1715), .Z(n1716) );
  ND2 U2180 ( .A(\reg_instance/rgpio_inte [7]), .B(n1716), .Z(n1718) );
  ND2 U2181 ( .A(\reg_instance/rgpio_ints [7]), .B(n1780), .Z(n1717) );
  AO3 U2182 ( .A(n1719), .B(n1780), .C(n1718), .D(n1717), .Z(n877) );
  IVP U2183 ( .A(\reg_instance/in_mux [6]), .Z(n1720) );
  NR2 U2184 ( .A(n1720), .B(\reg_instance/rgpio_in [6]), .Z(n1722) );
  NR2 U2185 ( .A(\reg_instance/rgpio_ptrig [6]), .B(\reg_instance/in_mux [6]), 
        .Z(n1721) );
  AO2 U2186 ( .A(n1722), .B(\reg_instance/rgpio_ptrig [6]), .C(
        \reg_instance/rgpio_in [6]), .D(n1721), .Z(n1723) );
  NR2 U2187 ( .A(n1776), .B(n1723), .Z(n1724) );
  ND2 U2188 ( .A(\reg_instance/rgpio_inte [6]), .B(n1724), .Z(n1726) );
  ND2 U2189 ( .A(\reg_instance/rgpio_ints [6]), .B(n1780), .Z(n1725) );
  AO3 U2190 ( .A(n1727), .B(n1780), .C(n1726), .D(n1725), .Z(n876) );
  IVP U2191 ( .A(\reg_instance/in_mux [5]), .Z(n1728) );
  NR2 U2192 ( .A(n1728), .B(\reg_instance/rgpio_in [5]), .Z(n1730) );
  NR2 U2193 ( .A(\reg_instance/rgpio_ptrig [5]), .B(\reg_instance/in_mux [5]), 
        .Z(n1729) );
  AO2 U2194 ( .A(n1730), .B(\reg_instance/rgpio_ptrig [5]), .C(
        \reg_instance/rgpio_in [5]), .D(n1729), .Z(n1731) );
  NR2 U2195 ( .A(n1776), .B(n1731), .Z(n1732) );
  ND2 U2196 ( .A(\reg_instance/rgpio_inte [5]), .B(n1732), .Z(n1734) );
  ND2 U2197 ( .A(\reg_instance/rgpio_ints [5]), .B(n1780), .Z(n1733) );
  AO3 U2198 ( .A(n1735), .B(n1780), .C(n1734), .D(n1733), .Z(n875) );
  IVP U2199 ( .A(\reg_instance/in_mux [4]), .Z(n1736) );
  NR2 U2200 ( .A(n1736), .B(\reg_instance/rgpio_in [4]), .Z(n1738) );
  NR2 U2201 ( .A(\reg_instance/rgpio_ptrig [4]), .B(\reg_instance/in_mux [4]), 
        .Z(n1737) );
  AO2 U2202 ( .A(n1738), .B(\reg_instance/rgpio_ptrig [4]), .C(
        \reg_instance/rgpio_in [4]), .D(n1737), .Z(n1739) );
  NR2 U2203 ( .A(n1776), .B(n1739), .Z(n1740) );
  ND2 U2204 ( .A(\reg_instance/rgpio_inte [4]), .B(n1740), .Z(n1742) );
  ND2 U2205 ( .A(\reg_instance/rgpio_ints [4]), .B(n1780), .Z(n1741) );
  AO3 U2206 ( .A(n1743), .B(n1780), .C(n1742), .D(n1741), .Z(n874) );
  IVP U2207 ( .A(\reg_instance/in_mux [3]), .Z(n1744) );
  NR2 U2208 ( .A(n1744), .B(\reg_instance/rgpio_in [3]), .Z(n1746) );
  NR2 U2209 ( .A(\reg_instance/rgpio_ptrig [3]), .B(\reg_instance/in_mux [3]), 
        .Z(n1745) );
  AO2 U2210 ( .A(n1746), .B(\reg_instance/rgpio_ptrig [3]), .C(
        \reg_instance/rgpio_in [3]), .D(n1745), .Z(n1747) );
  NR2 U2211 ( .A(n1776), .B(n1747), .Z(n1748) );
  ND2 U2212 ( .A(\reg_instance/rgpio_inte [3]), .B(n1748), .Z(n1750) );
  ND2 U2213 ( .A(\reg_instance/rgpio_ints [3]), .B(n1780), .Z(n1749) );
  AO3 U2214 ( .A(n1751), .B(n1780), .C(n1750), .D(n1749), .Z(n873) );
  IVP U2215 ( .A(\reg_instance/in_mux [2]), .Z(n1752) );
  NR2 U2216 ( .A(n1752), .B(\reg_instance/rgpio_in [2]), .Z(n1754) );
  NR2 U2217 ( .A(\reg_instance/rgpio_ptrig [2]), .B(\reg_instance/in_mux [2]), 
        .Z(n1753) );
  AO2 U2218 ( .A(n1754), .B(\reg_instance/rgpio_ptrig [2]), .C(
        \reg_instance/rgpio_in [2]), .D(n1753), .Z(n1755) );
  NR2 U2219 ( .A(n1776), .B(n1755), .Z(n1756) );
  ND2 U2220 ( .A(\reg_instance/rgpio_inte [2]), .B(n1756), .Z(n1758) );
  ND2 U2221 ( .A(\reg_instance/rgpio_ints [2]), .B(n1780), .Z(n1757) );
  AO3 U2222 ( .A(n1759), .B(n1780), .C(n1758), .D(n1757), .Z(n872) );
  AO2 U2223 ( .A(n1761), .B(in_pad_i[1]), .C(n1760), .D(
        \reg_instance/nextc_sampled [1]), .Z(n1764) );
  ND2 U2224 ( .A(n1762), .B(\reg_instance/pextc_sampled [1]), .Z(n1763) );
  ND2 U2225 ( .A(n1764), .B(n1763), .Z(\reg_instance/in_mux [1]) );
  AN2P U2226 ( .A(\reg_instance/in_mux [1]), .B(n1848), .Z(n1766) );
  NR2 U2227 ( .A(\reg_instance/rgpio_ptrig [1]), .B(\reg_instance/in_mux [1]), 
        .Z(n1765) );
  AO2 U2228 ( .A(n1766), .B(\reg_instance/rgpio_ptrig [1]), .C(
        \reg_instance/rgpio_in [1]), .D(n1765), .Z(n1767) );
  NR2 U2229 ( .A(n1776), .B(n1767), .Z(n1768) );
  ND2 U2230 ( .A(\reg_instance/rgpio_inte [1]), .B(n1768), .Z(n1770) );
  ND2 U2231 ( .A(\reg_instance/rgpio_ints [1]), .B(n1780), .Z(n1769) );
  AO3 U2232 ( .A(n1771), .B(n1780), .C(n1770), .D(n1769), .Z(n871) );
  IVP U2233 ( .A(\reg_instance/in_mux [0]), .Z(n1772) );
  NR2 U2234 ( .A(n1772), .B(\reg_instance/rgpio_in [0]), .Z(n1774) );
  NR2 U2235 ( .A(\reg_instance/rgpio_ptrig [0]), .B(\reg_instance/in_mux [0]), 
        .Z(n1773) );
  AO2 U2236 ( .A(n1774), .B(\reg_instance/rgpio_ptrig [0]), .C(
        \reg_instance/rgpio_in [0]), .D(n1773), .Z(n1775) );
  NR2 U2237 ( .A(n1776), .B(n1775), .Z(n1777) );
  ND2 U2238 ( .A(\reg_instance/rgpio_inte [0]), .B(n1777), .Z(n1779) );
  ND2 U2239 ( .A(\reg_instance/rgpio_ints [0]), .B(n1780), .Z(n1778) );
  AO3 U2240 ( .A(n1781), .B(n1780), .C(n1779), .D(n1778), .Z(n870) );
endmodule

