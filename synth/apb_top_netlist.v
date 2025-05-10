/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Wed May  7 12:09:39 2025
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
         \if_instance/fs1/N20 , n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395,
         n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405,
         n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415,
         n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425,
         n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435,
         n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445,
         n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455,
         n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465,
         n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475,
         n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485,
         n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495,
         n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505,
         n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515,
         n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525,
         n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535,
         n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545,
         n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555,
         n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565,
         n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635,
         n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645,
         n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655,
         n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665,
         n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675,
         n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685,
         n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695,
         n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705,
         n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715,
         n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725,
         n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735,
         n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745,
         n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755,
         n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765,
         n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775,
         n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785,
         n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795,
         n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805,
         n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815;
  wire   [31:0] gpio_addr;
  wire   [31:0] gpio_dat_o;
  wire   [31:0] aux_i;
  wire   [31:0] out_pad_o;
  wire   [31:0] oen_padoe_o;
  wire   [31:0] \reg_instance/data_reg ;
  wire   [31:0] \reg_instance/rgpio_ints ;
  wire   [31:0] \reg_instance/rgpio_in ;
  wire   [31:0] \reg_instance/in_mux ;
  wire   [31:0] \reg_instance/nextc_sampled ;
  wire   [31:0] \reg_instance/pextc_sampled ;
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
        \if_instance/fs1/present_state [1]), .QN(n1779) );
  FD2 \if_instance/fs1/present_state_reg[0]  ( .D(
        \if_instance/fs1/next_state [0]), .CP(sys_clk), .CD(sys_rst), .Q(
        \if_instance/fs1/present_state [0]) );
  FD2 \reg_instance/rgpio_eclk_reg[0]  ( .D(n1151), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [0]) );
  FD2 \reg_instance/rgpio_eclk_reg[1]  ( .D(n1144), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [1]) );
  FD2 \reg_instance/rgpio_eclk_reg[2]  ( .D(n1137), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [2]) );
  FD2 \reg_instance/rgpio_eclk_reg[3]  ( .D(n1130), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [3]) );
  FD2 \reg_instance/rgpio_eclk_reg[4]  ( .D(n1123), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [4]) );
  FD2 \reg_instance/rgpio_eclk_reg[5]  ( .D(n1116), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [5]) );
  FD2 \reg_instance/rgpio_eclk_reg[6]  ( .D(n1109), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [6]) );
  FD2 \reg_instance/rgpio_eclk_reg[7]  ( .D(n1102), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [7]) );
  FD2 \reg_instance/rgpio_eclk_reg[8]  ( .D(n1095), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [8]) );
  FD2 \reg_instance/rgpio_eclk_reg[9]  ( .D(n1088), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [9]) );
  FD2 \reg_instance/rgpio_eclk_reg[10]  ( .D(n1081), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [10]) );
  FD2 \reg_instance/rgpio_eclk_reg[11]  ( .D(n1074), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [11]) );
  FD2 \reg_instance/rgpio_eclk_reg[12]  ( .D(n1067), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [12]) );
  FD2 \reg_instance/rgpio_eclk_reg[13]  ( .D(n1060), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [13]) );
  FD2 \reg_instance/rgpio_eclk_reg[14]  ( .D(n1053), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [14]) );
  FD2 \reg_instance/rgpio_eclk_reg[15]  ( .D(n1046), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [15]) );
  FD2 \reg_instance/rgpio_eclk_reg[16]  ( .D(n1039), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [16]) );
  FD2 \reg_instance/rgpio_eclk_reg[17]  ( .D(n1032), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [17]) );
  FD2 \reg_instance/rgpio_eclk_reg[18]  ( .D(n1025), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [18]) );
  FD2 \reg_instance/rgpio_eclk_reg[19]  ( .D(n1018), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [19]) );
  FD2 \reg_instance/rgpio_eclk_reg[20]  ( .D(n1011), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [20]) );
  FD2 \reg_instance/rgpio_eclk_reg[21]  ( .D(n1004), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_eclk [21]) );
  FD2 \reg_instance/rgpio_eclk_reg[22]  ( .D(n997), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [22]) );
  FD2 \reg_instance/rgpio_eclk_reg[23]  ( .D(n990), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [23]) );
  FD2 \reg_instance/rgpio_eclk_reg[24]  ( .D(n983), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [24]) );
  FD2 \reg_instance/rgpio_eclk_reg[25]  ( .D(n976), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [25]) );
  FD2 \reg_instance/rgpio_eclk_reg[26]  ( .D(n969), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [26]) );
  FD2 \reg_instance/rgpio_eclk_reg[27]  ( .D(n962), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [27]) );
  FD2 \reg_instance/rgpio_eclk_reg[28]  ( .D(n955), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [28]) );
  FD2 \reg_instance/rgpio_eclk_reg[29]  ( .D(n948), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [29]) );
  FD2 \reg_instance/rgpio_eclk_reg[30]  ( .D(n941), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [30]) );
  FD2 \reg_instance/rgpio_eclk_reg[31]  ( .D(n934), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_eclk [31]) );
  FD2 \reg_instance/rgpio_aux_reg[0]  ( .D(n1150), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [0]) );
  FD2 \reg_instance/rgpio_aux_reg[1]  ( .D(n1143), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [1]) );
  FD2 \reg_instance/rgpio_aux_reg[2]  ( .D(n1136), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [2]) );
  FD2 \reg_instance/rgpio_aux_reg[3]  ( .D(n1129), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [3]) );
  FD2 \reg_instance/rgpio_aux_reg[4]  ( .D(n1122), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [4]) );
  FD2 \reg_instance/rgpio_aux_reg[5]  ( .D(n1115), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [5]) );
  FD2 \reg_instance/rgpio_aux_reg[6]  ( .D(n1108), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [6]) );
  FD2 \reg_instance/rgpio_aux_reg[7]  ( .D(n1101), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [7]) );
  FD2 \reg_instance/rgpio_aux_reg[8]  ( .D(n1094), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [8]) );
  FD2 \reg_instance/rgpio_aux_reg[9]  ( .D(n1087), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [9]) );
  FD2 \reg_instance/rgpio_aux_reg[10]  ( .D(n1080), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [10]) );
  FD2 \reg_instance/rgpio_aux_reg[11]  ( .D(n1073), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [11]) );
  FD2 \reg_instance/rgpio_aux_reg[12]  ( .D(n1066), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [12]) );
  FD2 \reg_instance/rgpio_aux_reg[13]  ( .D(n1059), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [13]) );
  FD2 \reg_instance/rgpio_aux_reg[14]  ( .D(n1052), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [14]) );
  FD2 \reg_instance/rgpio_aux_reg[15]  ( .D(n1045), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [15]) );
  FD2 \reg_instance/rgpio_aux_reg[16]  ( .D(n1038), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [16]) );
  FD2 \reg_instance/rgpio_aux_reg[17]  ( .D(n1031), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [17]) );
  FD2 \reg_instance/rgpio_aux_reg[18]  ( .D(n1024), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [18]) );
  FD2 \reg_instance/rgpio_aux_reg[19]  ( .D(n1017), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [19]) );
  FD2 \reg_instance/rgpio_aux_reg[20]  ( .D(n1010), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [20]) );
  FD2 \reg_instance/rgpio_aux_reg[21]  ( .D(n1003), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [21]) );
  FD2 \reg_instance/rgpio_aux_reg[22]  ( .D(n996), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [22]) );
  FD2 \reg_instance/rgpio_aux_reg[23]  ( .D(n989), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [23]) );
  FD2 \reg_instance/rgpio_aux_reg[24]  ( .D(n982), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [24]) );
  FD2 \reg_instance/rgpio_aux_reg[25]  ( .D(n975), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [25]) );
  FD2 \reg_instance/rgpio_aux_reg[26]  ( .D(n968), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [26]) );
  FD2 \reg_instance/rgpio_aux_reg[27]  ( .D(n961), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [27]) );
  FD2 \reg_instance/rgpio_aux_reg[28]  ( .D(n954), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [28]) );
  FD2 \reg_instance/rgpio_aux_reg[29]  ( .D(n947), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [29]) );
  FD2 \reg_instance/rgpio_aux_reg[30]  ( .D(n940), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [30]) );
  FD2 \reg_instance/rgpio_aux_reg[31]  ( .D(n933), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_aux [31]) );
  FD2 \reg_instance/rgpio_ptrig_reg[0]  ( .D(n1149), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [0]), .QN(n1780) );
  FD2 \reg_instance/rgpio_ptrig_reg[1]  ( .D(n1142), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [1]), .QN(n1782) );
  FD2 \reg_instance/rgpio_ptrig_reg[2]  ( .D(n1135), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [2]) );
  FD2 \reg_instance/rgpio_ptrig_reg[3]  ( .D(n1128), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [3]) );
  FD2 \reg_instance/rgpio_ptrig_reg[4]  ( .D(n1121), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [4]) );
  FD2 \reg_instance/rgpio_ptrig_reg[5]  ( .D(n1114), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [5]) );
  FD2 \reg_instance/rgpio_ptrig_reg[6]  ( .D(n1107), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [6]) );
  FD2 \reg_instance/rgpio_ptrig_reg[7]  ( .D(n1100), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [7]) );
  FD2 \reg_instance/rgpio_ptrig_reg[8]  ( .D(n1093), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [8]) );
  FD2 \reg_instance/rgpio_ptrig_reg[9]  ( .D(n1086), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [9]) );
  FD2 \reg_instance/rgpio_ptrig_reg[10]  ( .D(n1079), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [10]) );
  FD2 \reg_instance/rgpio_ptrig_reg[11]  ( .D(n1072), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [11]) );
  FD2 \reg_instance/rgpio_ptrig_reg[12]  ( .D(n1065), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [12]) );
  FD2 \reg_instance/rgpio_ptrig_reg[13]  ( .D(n1058), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [13]) );
  FD2 \reg_instance/rgpio_ptrig_reg[14]  ( .D(n1051), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [14]) );
  FD2 \reg_instance/rgpio_ptrig_reg[15]  ( .D(n1044), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [15]) );
  FD2 \reg_instance/rgpio_ptrig_reg[16]  ( .D(n1037), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [16]) );
  FD2 \reg_instance/rgpio_ptrig_reg[17]  ( .D(n1030), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [17]) );
  FD2 \reg_instance/rgpio_ptrig_reg[18]  ( .D(n1023), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [18]) );
  FD2 \reg_instance/rgpio_ptrig_reg[19]  ( .D(n1016), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [19]) );
  FD2 \reg_instance/rgpio_ptrig_reg[20]  ( .D(n1009), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [20]) );
  FD2 \reg_instance/rgpio_ptrig_reg[21]  ( .D(n1002), .CP(sys_clk), .CD(
        sys_rst), .Q(\reg_instance/rgpio_ptrig [21]) );
  FD2 \reg_instance/rgpio_ptrig_reg[22]  ( .D(n995), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [22]) );
  FD2 \reg_instance/rgpio_ptrig_reg[23]  ( .D(n988), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [23]) );
  FD2 \reg_instance/rgpio_ptrig_reg[24]  ( .D(n981), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [24]) );
  FD2 \reg_instance/rgpio_ptrig_reg[25]  ( .D(n974), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [25]) );
  FD2 \reg_instance/rgpio_ptrig_reg[26]  ( .D(n967), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [26]) );
  FD2 \reg_instance/rgpio_ptrig_reg[27]  ( .D(n960), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [27]) );
  FD2 \reg_instance/rgpio_ptrig_reg[28]  ( .D(n953), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [28]) );
  FD2 \reg_instance/rgpio_ptrig_reg[29]  ( .D(n946), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [29]) );
  FD2 \reg_instance/rgpio_ptrig_reg[30]  ( .D(n939), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [30]) );
  FD2 \reg_instance/rgpio_ptrig_reg[31]  ( .D(n932), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_ptrig [31]) );
  FD2 \reg_instance/rgpio_oe_reg[0]  ( .D(n1148), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[0]), .QN(n1778) );
  FD2 \reg_instance/rgpio_oe_reg[1]  ( .D(n1141), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[1]), .QN(n1777) );
  FD2 \reg_instance/rgpio_oe_reg[2]  ( .D(n1134), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[2]), .QN(n1776) );
  FD2 \reg_instance/rgpio_oe_reg[3]  ( .D(n1127), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[3]), .QN(n1775) );
  FD2 \reg_instance/rgpio_oe_reg[4]  ( .D(n1120), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[4]), .QN(n1774) );
  FD2 \reg_instance/rgpio_oe_reg[5]  ( .D(n1113), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[5]), .QN(n1773) );
  FD2 \reg_instance/rgpio_oe_reg[6]  ( .D(n1106), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[6]), .QN(n1772) );
  FD2 \reg_instance/rgpio_oe_reg[7]  ( .D(n1099), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[7]), .QN(n1771) );
  FD2 \reg_instance/rgpio_oe_reg[8]  ( .D(n1092), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[8]), .QN(n1770) );
  FD2 \reg_instance/rgpio_oe_reg[9]  ( .D(n1085), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[9]), .QN(n1769) );
  FD2 \reg_instance/rgpio_oe_reg[10]  ( .D(n1078), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[10]), .QN(n1768) );
  FD2 \reg_instance/rgpio_oe_reg[11]  ( .D(n1071), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[11]), .QN(n1767) );
  FD2 \reg_instance/rgpio_oe_reg[12]  ( .D(n1064), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[12]), .QN(n1766) );
  FD2 \reg_instance/rgpio_oe_reg[13]  ( .D(n1057), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[13]), .QN(n1765) );
  FD2 \reg_instance/rgpio_oe_reg[14]  ( .D(n1050), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[14]), .QN(n1764) );
  FD2 \reg_instance/rgpio_oe_reg[15]  ( .D(n1043), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[15]), .QN(n1763) );
  FD2 \reg_instance/rgpio_oe_reg[16]  ( .D(n1036), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[16]), .QN(n1762) );
  FD2 \reg_instance/rgpio_oe_reg[17]  ( .D(n1029), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[17]), .QN(n1761) );
  FD2 \reg_instance/rgpio_oe_reg[18]  ( .D(n1022), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[18]), .QN(n1760) );
  FD2 \reg_instance/rgpio_oe_reg[19]  ( .D(n1015), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[19]), .QN(n1759) );
  FD2 \reg_instance/rgpio_oe_reg[20]  ( .D(n1008), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[20]), .QN(n1758) );
  FD2 \reg_instance/rgpio_oe_reg[21]  ( .D(n1001), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[21]), .QN(n1757) );
  FD2 \reg_instance/rgpio_oe_reg[22]  ( .D(n994), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[22]), .QN(n1756) );
  FD2 \reg_instance/rgpio_oe_reg[23]  ( .D(n987), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[23]), .QN(n1755) );
  FD2 \reg_instance/rgpio_oe_reg[24]  ( .D(n980), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[24]), .QN(n1754) );
  FD2 \reg_instance/rgpio_oe_reg[25]  ( .D(n973), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[25]), .QN(n1753) );
  FD2 \reg_instance/rgpio_oe_reg[26]  ( .D(n966), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[26]), .QN(n1752) );
  FD2 \reg_instance/rgpio_oe_reg[27]  ( .D(n959), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[27]), .QN(n1751) );
  FD2 \reg_instance/rgpio_oe_reg[28]  ( .D(n952), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[28]), .QN(n1750) );
  FD2 \reg_instance/rgpio_oe_reg[29]  ( .D(n945), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[29]), .QN(n1749) );
  FD2 \reg_instance/rgpio_oe_reg[30]  ( .D(n938), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[30]), .QN(n1748) );
  FD2 \reg_instance/rgpio_oe_reg[31]  ( .D(n931), .CP(sys_clk), .CD(sys_rst), 
        .Q(oen_padoe_o[31]), .QN(n1747) );
  FD2 \reg_instance/rgpio_inte_reg[0]  ( .D(n1147), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [0]) );
  FD2 \reg_instance/rgpio_inte_reg[1]  ( .D(n1140), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [1]) );
  FD2 \reg_instance/rgpio_inte_reg[2]  ( .D(n1133), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [2]) );
  FD2 \reg_instance/rgpio_inte_reg[3]  ( .D(n1126), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [3]) );
  FD2 \reg_instance/rgpio_inte_reg[4]  ( .D(n1119), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [4]) );
  FD2 \reg_instance/rgpio_inte_reg[5]  ( .D(n1112), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [5]) );
  FD2 \reg_instance/rgpio_inte_reg[6]  ( .D(n1105), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [6]) );
  FD2 \reg_instance/rgpio_inte_reg[7]  ( .D(n1098), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [7]) );
  FD2 \reg_instance/rgpio_inte_reg[8]  ( .D(n1091), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [8]) );
  FD2 \reg_instance/rgpio_inte_reg[9]  ( .D(n1084), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [9]) );
  FD2 \reg_instance/rgpio_inte_reg[10]  ( .D(n1077), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [10]) );
  FD2 \reg_instance/rgpio_inte_reg[11]  ( .D(n1070), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [11]) );
  FD2 \reg_instance/rgpio_inte_reg[12]  ( .D(n1063), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [12]) );
  FD2 \reg_instance/rgpio_inte_reg[13]  ( .D(n1056), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [13]) );
  FD2 \reg_instance/rgpio_inte_reg[14]  ( .D(n1049), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [14]) );
  FD2 \reg_instance/rgpio_inte_reg[15]  ( .D(n1042), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [15]) );
  FD2 \reg_instance/rgpio_inte_reg[16]  ( .D(n1035), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [16]) );
  FD2 \reg_instance/rgpio_inte_reg[17]  ( .D(n1028), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [17]) );
  FD2 \reg_instance/rgpio_inte_reg[18]  ( .D(n1021), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [18]) );
  FD2 \reg_instance/rgpio_inte_reg[19]  ( .D(n1014), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [19]) );
  FD2 \reg_instance/rgpio_inte_reg[20]  ( .D(n1007), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [20]) );
  FD2 \reg_instance/rgpio_inte_reg[21]  ( .D(n1000), .CP(sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_inte [21]) );
  FD2 \reg_instance/rgpio_inte_reg[22]  ( .D(n993), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [22]) );
  FD2 \reg_instance/rgpio_inte_reg[23]  ( .D(n986), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [23]) );
  FD2 \reg_instance/rgpio_inte_reg[24]  ( .D(n979), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [24]) );
  FD2 \reg_instance/rgpio_inte_reg[25]  ( .D(n972), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [25]) );
  FD2 \reg_instance/rgpio_inte_reg[26]  ( .D(n965), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [26]) );
  FD2 \reg_instance/rgpio_inte_reg[27]  ( .D(n958), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [27]) );
  FD2 \reg_instance/rgpio_inte_reg[28]  ( .D(n951), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [28]) );
  FD2 \reg_instance/rgpio_inte_reg[29]  ( .D(n944), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [29]) );
  FD2 \reg_instance/rgpio_inte_reg[30]  ( .D(n937), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [30]) );
  FD2 \reg_instance/rgpio_inte_reg[31]  ( .D(n930), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_inte [31]) );
  FD2 \reg_instance/rgpio_out_reg[0]  ( .D(n1146), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [0]), .QN(n1781) );
  FD2 \reg_instance/rgpio_out_reg[1]  ( .D(n1139), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [1]), .QN(n1783) );
  FD2 \reg_instance/rgpio_out_reg[2]  ( .D(n1132), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [2]), .QN(n1784) );
  FD2 \reg_instance/rgpio_out_reg[3]  ( .D(n1125), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [3]), .QN(n1785) );
  FD2 \reg_instance/rgpio_out_reg[4]  ( .D(n1118), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [4]), .QN(n1786) );
  FD2 \reg_instance/rgpio_out_reg[5]  ( .D(n1111), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [5]), .QN(n1787) );
  FD2 \reg_instance/rgpio_out_reg[6]  ( .D(n1104), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [6]), .QN(n1788) );
  FD2 \reg_instance/rgpio_out_reg[7]  ( .D(n1097), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [7]), .QN(n1789) );
  FD2 \reg_instance/rgpio_out_reg[8]  ( .D(n1090), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [8]), .QN(n1790) );
  FD2 \reg_instance/rgpio_out_reg[9]  ( .D(n1083), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [9]), .QN(n1791) );
  FD2 \reg_instance/rgpio_out_reg[10]  ( .D(n1076), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [10]), .QN(n1792) );
  FD2 \reg_instance/rgpio_out_reg[11]  ( .D(n1069), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [11]), .QN(n1793) );
  FD2 \reg_instance/rgpio_out_reg[12]  ( .D(n1062), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [12]), .QN(n1794) );
  FD2 \reg_instance/rgpio_out_reg[13]  ( .D(n1055), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [13]), .QN(n1795) );
  FD2 \reg_instance/rgpio_out_reg[14]  ( .D(n1048), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [14]), .QN(n1796) );
  FD2 \reg_instance/rgpio_out_reg[15]  ( .D(n1041), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [15]), .QN(n1797) );
  FD2 \reg_instance/rgpio_out_reg[16]  ( .D(n1034), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [16]), .QN(n1798) );
  FD2 \reg_instance/rgpio_out_reg[17]  ( .D(n1027), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [17]), .QN(n1799) );
  FD2 \reg_instance/rgpio_out_reg[18]  ( .D(n1020), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [18]), .QN(n1800) );
  FD2 \reg_instance/rgpio_out_reg[19]  ( .D(n1013), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [19]), .QN(n1801) );
  FD2 \reg_instance/rgpio_out_reg[20]  ( .D(n1006), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [20]), .QN(n1802) );
  FD2 \reg_instance/rgpio_out_reg[21]  ( .D(n999), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [21]), .QN(n1803) );
  FD2 \reg_instance/rgpio_out_reg[22]  ( .D(n992), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [22]), .QN(n1804) );
  FD2 \reg_instance/rgpio_out_reg[23]  ( .D(n985), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [23]), .QN(n1805) );
  FD2 \reg_instance/rgpio_out_reg[24]  ( .D(n978), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [24]), .QN(n1806) );
  FD2 \reg_instance/rgpio_out_reg[25]  ( .D(n971), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [25]), .QN(n1807) );
  FD2 \reg_instance/rgpio_out_reg[26]  ( .D(n964), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [26]), .QN(n1808) );
  FD2 \reg_instance/rgpio_out_reg[27]  ( .D(n957), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [27]), .QN(n1809) );
  FD2 \reg_instance/rgpio_out_reg[28]  ( .D(n950), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [28]), .QN(n1810) );
  FD2 \reg_instance/rgpio_out_reg[29]  ( .D(n943), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [29]), .QN(n1811) );
  FD2 \reg_instance/rgpio_out_reg[30]  ( .D(n936), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [30]), .QN(n1812) );
  FD2 \reg_instance/rgpio_out_reg[31]  ( .D(n929), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_out [31]), .QN(n1813) );
  FD2 \reg_instance/rgpio_ctrl_reg[1]  ( .D(n927), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ctrl [1]), .QN(n1814) );
  FD2 \reg_instance/rgpio_nec_reg[31]  ( .D(n935), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [31]) );
  FD2 \reg_instance/rgpio_nec_reg[30]  ( .D(n942), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [30]) );
  FD2 \reg_instance/rgpio_nec_reg[29]  ( .D(n949), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [29]) );
  FD2 \reg_instance/rgpio_nec_reg[28]  ( .D(n956), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [28]) );
  FD2 \reg_instance/rgpio_nec_reg[27]  ( .D(n963), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [27]) );
  FD2 \reg_instance/rgpio_nec_reg[26]  ( .D(n970), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [26]) );
  FD2 \reg_instance/rgpio_nec_reg[25]  ( .D(n977), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [25]) );
  FD2 \reg_instance/rgpio_nec_reg[24]  ( .D(n984), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [24]) );
  FD2 \reg_instance/rgpio_nec_reg[23]  ( .D(n991), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [23]) );
  FD2 \reg_instance/rgpio_nec_reg[22]  ( .D(n998), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [22]) );
  FD2 \reg_instance/rgpio_nec_reg[21]  ( .D(n1005), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [21]) );
  FD2 \reg_instance/rgpio_nec_reg[20]  ( .D(n1012), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [20]) );
  FD2 \reg_instance/rgpio_nec_reg[19]  ( .D(n1019), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [19]) );
  FD2 \reg_instance/rgpio_nec_reg[18]  ( .D(n1026), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [18]) );
  FD2 \reg_instance/rgpio_nec_reg[17]  ( .D(n1033), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [17]) );
  FD2 \reg_instance/rgpio_nec_reg[16]  ( .D(n1040), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [16]) );
  FD2 \reg_instance/rgpio_nec_reg[15]  ( .D(n1047), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [15]) );
  FD2 \reg_instance/rgpio_nec_reg[14]  ( .D(n1054), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [14]) );
  FD2 \reg_instance/rgpio_nec_reg[13]  ( .D(n1061), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [13]) );
  FD2 \reg_instance/rgpio_nec_reg[12]  ( .D(n1068), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [12]) );
  FD2 \reg_instance/rgpio_nec_reg[11]  ( .D(n1075), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [11]) );
  FD2 \reg_instance/rgpio_nec_reg[10]  ( .D(n1082), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [10]) );
  FD2 \reg_instance/rgpio_nec_reg[9]  ( .D(n1089), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [9]) );
  FD2 \reg_instance/rgpio_nec_reg[8]  ( .D(n1096), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [8]) );
  FD2 \reg_instance/rgpio_nec_reg[7]  ( .D(n1103), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [7]) );
  FD2 \reg_instance/rgpio_nec_reg[6]  ( .D(n1110), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [6]) );
  FD2 \reg_instance/rgpio_nec_reg[5]  ( .D(n1117), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [5]) );
  FD2 \reg_instance/rgpio_nec_reg[4]  ( .D(n1124), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [4]) );
  FD2 \reg_instance/rgpio_nec_reg[3]  ( .D(n1131), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [3]) );
  FD2 \reg_instance/rgpio_nec_reg[2]  ( .D(n1138), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [2]) );
  FD2 \reg_instance/rgpio_nec_reg[1]  ( .D(n1145), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [1]) );
  FD2 \reg_instance/rgpio_nec_reg[0]  ( .D(n1152), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_nec [0]) );
  FD2 \aux_instance/i1/aux_i_reg[0]  ( .D(aux_in[0]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[0]) );
  FD2 \reg_instance/pextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [0]) );
  FD2 \reg_instance/rgpio_in_reg[0]  ( .D(\reg_instance/in_mux [0]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [0]) );
  FD2 \reg_instance/rgpio_ints_reg[0]  ( .D(n895), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [0]) );
  FD2 \aux_instance/i1/aux_i_reg[1]  ( .D(aux_in[1]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[1]) );
  FD2 \reg_instance/pextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [1]) );
  FD2 \reg_instance/rgpio_in_reg[1]  ( .D(\reg_instance/in_mux [1]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [1]) );
  FD2 \reg_instance/rgpio_ints_reg[1]  ( .D(n896), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [1]) );
  FD2 \reg_instance/gpio_dat_o_reg[1]  ( .D(\reg_instance/data_reg [1]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[1]) );
  FD2 \aux_instance/i1/aux_i_reg[2]  ( .D(aux_in[2]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[2]) );
  FD2 \reg_instance/pextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [2]) );
  FD2 \reg_instance/rgpio_in_reg[2]  ( .D(\reg_instance/in_mux [2]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [2]) );
  FD2 \reg_instance/rgpio_ints_reg[2]  ( .D(n897), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [2]) );
  FD2 \reg_instance/gpio_dat_o_reg[2]  ( .D(\reg_instance/data_reg [2]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[2]) );
  FD2 \aux_instance/i1/aux_i_reg[3]  ( .D(aux_in[3]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[3]) );
  FD2 \reg_instance/pextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [3]) );
  FD2 \reg_instance/rgpio_in_reg[3]  ( .D(\reg_instance/in_mux [3]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [3]) );
  FD2 \reg_instance/rgpio_ints_reg[3]  ( .D(n898), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [3]) );
  FD2 \reg_instance/gpio_dat_o_reg[3]  ( .D(\reg_instance/data_reg [3]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[3]) );
  FD2 \aux_instance/i1/aux_i_reg[4]  ( .D(aux_in[4]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[4]) );
  FD2 \reg_instance/pextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [4]) );
  FD2 \reg_instance/rgpio_in_reg[4]  ( .D(\reg_instance/in_mux [4]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [4]) );
  FD2 \reg_instance/rgpio_ints_reg[4]  ( .D(n899), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [4]) );
  FD2 \reg_instance/gpio_dat_o_reg[4]  ( .D(\reg_instance/data_reg [4]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[4]) );
  FD2 \aux_instance/i1/aux_i_reg[5]  ( .D(aux_in[5]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[5]) );
  FD2 \reg_instance/pextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [5]) );
  FD2 \reg_instance/rgpio_in_reg[5]  ( .D(\reg_instance/in_mux [5]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [5]) );
  FD2 \reg_instance/rgpio_ints_reg[5]  ( .D(n900), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [5]) );
  FD2 \reg_instance/gpio_dat_o_reg[5]  ( .D(\reg_instance/data_reg [5]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[5]) );
  FD2 \aux_instance/i1/aux_i_reg[6]  ( .D(aux_in[6]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[6]) );
  FD2 \reg_instance/pextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [6]) );
  FD2 \reg_instance/rgpio_in_reg[6]  ( .D(\reg_instance/in_mux [6]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [6]) );
  FD2 \reg_instance/rgpio_ints_reg[6]  ( .D(n901), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [6]) );
  FD2 \reg_instance/gpio_dat_o_reg[6]  ( .D(\reg_instance/data_reg [6]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[6]) );
  FD2 \aux_instance/i1/aux_i_reg[7]  ( .D(aux_in[7]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[7]) );
  FD2 \reg_instance/pextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [7]) );
  FD2 \reg_instance/rgpio_in_reg[7]  ( .D(\reg_instance/in_mux [7]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [7]) );
  FD2 \reg_instance/rgpio_ints_reg[7]  ( .D(n902), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [7]) );
  FD2 \reg_instance/gpio_dat_o_reg[7]  ( .D(\reg_instance/data_reg [7]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[7]) );
  FD2 \aux_instance/i1/aux_i_reg[8]  ( .D(aux_in[8]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[8]) );
  FD2 \reg_instance/pextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [8]) );
  FD2 \reg_instance/rgpio_in_reg[8]  ( .D(\reg_instance/in_mux [8]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [8]) );
  FD2 \reg_instance/rgpio_ints_reg[8]  ( .D(n903), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [8]) );
  FD2 \reg_instance/gpio_dat_o_reg[8]  ( .D(\reg_instance/data_reg [8]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[8]) );
  FD2 \aux_instance/i1/aux_i_reg[9]  ( .D(aux_in[9]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[9]) );
  FD2 \reg_instance/pextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [9]) );
  FD2 \reg_instance/rgpio_in_reg[9]  ( .D(\reg_instance/in_mux [9]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [9]) );
  FD2 \reg_instance/rgpio_ints_reg[9]  ( .D(n904), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [9]) );
  FD2 \reg_instance/gpio_dat_o_reg[9]  ( .D(\reg_instance/data_reg [9]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[9]) );
  FD2 \aux_instance/i1/aux_i_reg[10]  ( .D(aux_in[10]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[10]) );
  FD2 \reg_instance/pextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [10]) );
  FD2 \reg_instance/rgpio_in_reg[10]  ( .D(\reg_instance/in_mux [10]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [10]) );
  FD2 \reg_instance/rgpio_ints_reg[10]  ( .D(n905), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [10]) );
  FD2 \reg_instance/gpio_dat_o_reg[10]  ( .D(\reg_instance/data_reg [10]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[10]) );
  FD2 \aux_instance/i1/aux_i_reg[11]  ( .D(aux_in[11]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[11]) );
  FD2 \reg_instance/pextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [11]) );
  FD2 \reg_instance/rgpio_in_reg[11]  ( .D(\reg_instance/in_mux [11]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [11]) );
  FD2 \reg_instance/rgpio_ints_reg[11]  ( .D(n906), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [11]) );
  FD2 \reg_instance/gpio_dat_o_reg[11]  ( .D(\reg_instance/data_reg [11]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[11]) );
  FD2 \aux_instance/i1/aux_i_reg[12]  ( .D(aux_in[12]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[12]) );
  FD2 \reg_instance/pextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [12]) );
  FD2 \reg_instance/rgpio_in_reg[12]  ( .D(\reg_instance/in_mux [12]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [12]) );
  FD2 \reg_instance/rgpio_ints_reg[12]  ( .D(n907), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [12]) );
  FD2 \reg_instance/gpio_dat_o_reg[12]  ( .D(\reg_instance/data_reg [12]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[12]) );
  FD2 \aux_instance/i1/aux_i_reg[13]  ( .D(aux_in[13]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[13]) );
  FD2 \reg_instance/pextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [13]) );
  FD2 \reg_instance/rgpio_in_reg[13]  ( .D(\reg_instance/in_mux [13]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [13]) );
  FD2 \reg_instance/rgpio_ints_reg[13]  ( .D(n908), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [13]) );
  FD2 \reg_instance/gpio_dat_o_reg[13]  ( .D(\reg_instance/data_reg [13]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[13]) );
  FD2 \aux_instance/i1/aux_i_reg[14]  ( .D(aux_in[14]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[14]) );
  FD2 \reg_instance/pextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [14]) );
  FD2 \reg_instance/rgpio_in_reg[14]  ( .D(\reg_instance/in_mux [14]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [14]) );
  FD2 \reg_instance/rgpio_ints_reg[14]  ( .D(n909), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [14]) );
  FD2 \reg_instance/gpio_dat_o_reg[14]  ( .D(\reg_instance/data_reg [14]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[14]) );
  FD2 \aux_instance/i1/aux_i_reg[15]  ( .D(aux_in[15]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[15]) );
  FD2 \reg_instance/pextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [15]) );
  FD2 \reg_instance/rgpio_in_reg[15]  ( .D(\reg_instance/in_mux [15]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [15]) );
  FD2 \reg_instance/rgpio_ints_reg[15]  ( .D(n910), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [15]) );
  FD2 \reg_instance/gpio_dat_o_reg[15]  ( .D(\reg_instance/data_reg [15]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[15]) );
  FD2 \aux_instance/i1/aux_i_reg[16]  ( .D(aux_in[16]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[16]) );
  FD2 \reg_instance/pextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [16]) );
  FD2 \reg_instance/rgpio_in_reg[16]  ( .D(\reg_instance/in_mux [16]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [16]) );
  FD2 \reg_instance/rgpio_ints_reg[16]  ( .D(n911), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [16]) );
  FD2 \reg_instance/gpio_dat_o_reg[16]  ( .D(\reg_instance/data_reg [16]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[16]) );
  FD2 \aux_instance/i1/aux_i_reg[17]  ( .D(aux_in[17]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[17]) );
  FD2 \reg_instance/pextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [17]) );
  FD2 \reg_instance/rgpio_in_reg[17]  ( .D(\reg_instance/in_mux [17]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [17]) );
  FD2 \reg_instance/rgpio_ints_reg[17]  ( .D(n912), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [17]) );
  FD2 \reg_instance/gpio_dat_o_reg[17]  ( .D(\reg_instance/data_reg [17]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[17]) );
  FD2 \aux_instance/i1/aux_i_reg[18]  ( .D(aux_in[18]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[18]) );
  FD2 \reg_instance/pextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [18]) );
  FD2 \reg_instance/rgpio_in_reg[18]  ( .D(\reg_instance/in_mux [18]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [18]) );
  FD2 \reg_instance/rgpio_ints_reg[18]  ( .D(n913), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [18]) );
  FD2 \reg_instance/gpio_dat_o_reg[18]  ( .D(\reg_instance/data_reg [18]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[18]) );
  FD2 \aux_instance/i1/aux_i_reg[19]  ( .D(aux_in[19]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[19]) );
  FD2 \reg_instance/pextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [19]) );
  FD2 \reg_instance/rgpio_in_reg[19]  ( .D(\reg_instance/in_mux [19]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [19]) );
  FD2 \reg_instance/rgpio_ints_reg[19]  ( .D(n914), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [19]) );
  FD2 \reg_instance/gpio_dat_o_reg[19]  ( .D(\reg_instance/data_reg [19]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[19]) );
  FD2 \aux_instance/i1/aux_i_reg[20]  ( .D(aux_in[20]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[20]) );
  FD2 \reg_instance/pextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [20]) );
  FD2 \reg_instance/rgpio_in_reg[20]  ( .D(\reg_instance/in_mux [20]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [20]) );
  FD2 \reg_instance/rgpio_ints_reg[20]  ( .D(n915), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [20]) );
  FD2 \reg_instance/gpio_dat_o_reg[20]  ( .D(\reg_instance/data_reg [20]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[20]) );
  FD2 \aux_instance/i1/aux_i_reg[21]  ( .D(aux_in[21]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[21]) );
  FD2 \reg_instance/pextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [21]) );
  FD2 \reg_instance/rgpio_in_reg[21]  ( .D(\reg_instance/in_mux [21]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [21]) );
  FD2 \reg_instance/rgpio_ints_reg[21]  ( .D(n916), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [21]) );
  FD2 \reg_instance/gpio_dat_o_reg[21]  ( .D(\reg_instance/data_reg [21]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[21]) );
  FD2 \aux_instance/i1/aux_i_reg[22]  ( .D(aux_in[22]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[22]) );
  FD2 \reg_instance/pextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [22]) );
  FD2 \reg_instance/rgpio_in_reg[22]  ( .D(\reg_instance/in_mux [22]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [22]) );
  FD2 \reg_instance/rgpio_ints_reg[22]  ( .D(n917), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [22]) );
  FD2 \reg_instance/gpio_dat_o_reg[22]  ( .D(\reg_instance/data_reg [22]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[22]) );
  FD2 \aux_instance/i1/aux_i_reg[23]  ( .D(aux_in[23]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[23]) );
  FD2 \reg_instance/pextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [23]) );
  FD2 \reg_instance/rgpio_in_reg[23]  ( .D(\reg_instance/in_mux [23]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [23]) );
  FD2 \reg_instance/rgpio_ints_reg[23]  ( .D(n918), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [23]) );
  FD2 \reg_instance/gpio_dat_o_reg[23]  ( .D(\reg_instance/data_reg [23]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[23]) );
  FD2 \aux_instance/i1/aux_i_reg[24]  ( .D(aux_in[24]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[24]) );
  FD2 \reg_instance/pextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [24]) );
  FD2 \reg_instance/rgpio_in_reg[24]  ( .D(\reg_instance/in_mux [24]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [24]) );
  FD2 \reg_instance/rgpio_ints_reg[24]  ( .D(n919), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [24]) );
  FD2 \reg_instance/gpio_dat_o_reg[24]  ( .D(\reg_instance/data_reg [24]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[24]) );
  FD2 \aux_instance/i1/aux_i_reg[25]  ( .D(aux_in[25]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[25]) );
  FD2 \reg_instance/pextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [25]) );
  FD2 \reg_instance/rgpio_in_reg[25]  ( .D(\reg_instance/in_mux [25]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [25]) );
  FD2 \reg_instance/rgpio_ints_reg[25]  ( .D(n920), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [25]) );
  FD2 \reg_instance/gpio_dat_o_reg[25]  ( .D(\reg_instance/data_reg [25]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[25]) );
  FD2 \aux_instance/i1/aux_i_reg[26]  ( .D(aux_in[26]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[26]) );
  FD2 \reg_instance/pextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [26]) );
  FD2 \reg_instance/rgpio_in_reg[26]  ( .D(\reg_instance/in_mux [26]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [26]) );
  FD2 \reg_instance/rgpio_ints_reg[26]  ( .D(n921), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [26]) );
  FD2 \reg_instance/gpio_dat_o_reg[26]  ( .D(\reg_instance/data_reg [26]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[26]) );
  FD2 \aux_instance/i1/aux_i_reg[27]  ( .D(aux_in[27]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[27]) );
  FD2 \reg_instance/pextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [27]) );
  FD2 \reg_instance/rgpio_in_reg[27]  ( .D(\reg_instance/in_mux [27]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [27]) );
  FD2 \reg_instance/rgpio_ints_reg[27]  ( .D(n922), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [27]) );
  FD2 \reg_instance/gpio_dat_o_reg[27]  ( .D(\reg_instance/data_reg [27]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[27]) );
  FD2 \aux_instance/i1/aux_i_reg[28]  ( .D(aux_in[28]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[28]) );
  FD2 \reg_instance/pextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [28]) );
  FD2 \reg_instance/rgpio_in_reg[28]  ( .D(\reg_instance/in_mux [28]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [28]) );
  FD2 \reg_instance/rgpio_ints_reg[28]  ( .D(n923), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [28]) );
  FD2 \reg_instance/gpio_dat_o_reg[28]  ( .D(\reg_instance/data_reg [28]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[28]) );
  FD2 \aux_instance/i1/aux_i_reg[29]  ( .D(aux_in[29]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[29]) );
  FD2 \reg_instance/pextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [29]) );
  FD2 \reg_instance/rgpio_in_reg[29]  ( .D(\reg_instance/in_mux [29]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [29]) );
  FD2 \reg_instance/rgpio_ints_reg[29]  ( .D(n924), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [29]) );
  FD2 \reg_instance/gpio_dat_o_reg[29]  ( .D(\reg_instance/data_reg [29]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[29]) );
  FD2 \aux_instance/i1/aux_i_reg[30]  ( .D(aux_in[30]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[30]) );
  FD2 \reg_instance/pextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [30]) );
  FD2 \reg_instance/rgpio_in_reg[30]  ( .D(\reg_instance/in_mux [30]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [30]) );
  FD2 \reg_instance/rgpio_ints_reg[30]  ( .D(n925), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [30]) );
  FD2 \reg_instance/gpio_dat_o_reg[30]  ( .D(\reg_instance/data_reg [30]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[30]) );
  FD2 \aux_instance/i1/aux_i_reg[31]  ( .D(aux_in[31]), .CP(sys_clk), .CD(
        sys_rst), .Q(aux_i[31]) );
  FD2 \reg_instance/pextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(gpio_eclk), 
        .CD(sys_rst), .Q(\reg_instance/pextc_sampled [31]) );
  FD2 \reg_instance/rgpio_in_reg[31]  ( .D(\reg_instance/in_mux [31]), .CP(
        sys_clk), .CD(sys_rst), .Q(\reg_instance/rgpio_in [31]) );
  FD2 \reg_instance/rgpio_ints_reg[31]  ( .D(n928), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ints [31]) );
  FD2 \reg_instance/gpio_dat_o_reg[31]  ( .D(\reg_instance/data_reg [31]), 
        .CP(sys_clk), .CD(sys_rst), .Q(gpio_dat_o[31]) );
  FD2 \reg_instance/rgpio_ctrl_reg[0]  ( .D(n926), .CP(sys_clk), .CD(sys_rst), 
        .Q(\reg_instance/rgpio_ctrl [0]) );
  FD2 \reg_instance/gpio_dat_o_reg[0]  ( .D(\reg_instance/data_reg [0]), .CP(
        sys_clk), .CD(sys_rst), .Q(gpio_dat_o[0]) );
  LD1 \if_instance/fs1/next_state_reg[0]  ( .G(n1153), .D(
        \if_instance/fs1/N20 ), .Q(\if_instance/fs1/next_state [0]) );
  LD1 \if_instance/fs1/next_state_reg[1]  ( .G(n1153), .D(
        \if_instance/fs1/N21 ), .Q(\if_instance/fs1/next_state [1]) );
  FD2 \reg_instance/nextc_sampled_reg[0]  ( .D(in_pad_i[0]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [0]) );
  FD2 \reg_instance/nextc_sampled_reg[1]  ( .D(in_pad_i[1]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [1]) );
  FD2 \reg_instance/nextc_sampled_reg[2]  ( .D(in_pad_i[2]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [2]) );
  FD2 \reg_instance/nextc_sampled_reg[3]  ( .D(in_pad_i[3]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [3]) );
  FD2 \reg_instance/nextc_sampled_reg[4]  ( .D(in_pad_i[4]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [4]) );
  FD2 \reg_instance/nextc_sampled_reg[5]  ( .D(in_pad_i[5]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [5]) );
  FD2 \reg_instance/nextc_sampled_reg[6]  ( .D(in_pad_i[6]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [6]) );
  FD2 \reg_instance/nextc_sampled_reg[7]  ( .D(in_pad_i[7]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [7]) );
  FD2 \reg_instance/nextc_sampled_reg[8]  ( .D(in_pad_i[8]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [8]) );
  FD2 \reg_instance/nextc_sampled_reg[9]  ( .D(in_pad_i[9]), .CP(n1815), .CD(
        sys_rst), .Q(\reg_instance/nextc_sampled [9]) );
  FD2 \reg_instance/nextc_sampled_reg[10]  ( .D(in_pad_i[10]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [10]) );
  FD2 \reg_instance/nextc_sampled_reg[11]  ( .D(in_pad_i[11]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [11]) );
  FD2 \reg_instance/nextc_sampled_reg[12]  ( .D(in_pad_i[12]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [12]) );
  FD2 \reg_instance/nextc_sampled_reg[13]  ( .D(in_pad_i[13]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [13]) );
  FD2 \reg_instance/nextc_sampled_reg[14]  ( .D(in_pad_i[14]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [14]) );
  FD2 \reg_instance/nextc_sampled_reg[15]  ( .D(in_pad_i[15]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [15]) );
  FD2 \reg_instance/nextc_sampled_reg[16]  ( .D(in_pad_i[16]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [16]) );
  FD2 \reg_instance/nextc_sampled_reg[17]  ( .D(in_pad_i[17]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [17]) );
  FD2 \reg_instance/nextc_sampled_reg[18]  ( .D(in_pad_i[18]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [18]) );
  FD2 \reg_instance/nextc_sampled_reg[19]  ( .D(in_pad_i[19]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [19]) );
  FD2 \reg_instance/nextc_sampled_reg[20]  ( .D(in_pad_i[20]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [20]) );
  FD2 \reg_instance/nextc_sampled_reg[21]  ( .D(in_pad_i[21]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [21]) );
  FD2 \reg_instance/nextc_sampled_reg[22]  ( .D(in_pad_i[22]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [22]) );
  FD2 \reg_instance/nextc_sampled_reg[23]  ( .D(in_pad_i[23]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [23]) );
  FD2 \reg_instance/nextc_sampled_reg[24]  ( .D(in_pad_i[24]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [24]) );
  FD2 \reg_instance/nextc_sampled_reg[25]  ( .D(in_pad_i[25]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [25]) );
  FD2 \reg_instance/nextc_sampled_reg[26]  ( .D(in_pad_i[26]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [26]) );
  FD2 \reg_instance/nextc_sampled_reg[27]  ( .D(in_pad_i[27]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [27]) );
  FD2 \reg_instance/nextc_sampled_reg[28]  ( .D(in_pad_i[28]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [28]) );
  FD2 \reg_instance/nextc_sampled_reg[29]  ( .D(in_pad_i[29]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [29]) );
  FD2 \reg_instance/nextc_sampled_reg[30]  ( .D(in_pad_i[30]), .CP(n1815), 
        .CD(sys_rst), .Q(\reg_instance/nextc_sampled [30]) );
  FD2 \reg_instance/nextc_sampled_reg[31]  ( .D(in_pad_i[31]), .CP(n1815), 
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
  BTS4 \io_instance/in_pad_tri[0]  ( .A(io_pad[0]), .E(n1778), .Z(in_pad_i[0])
         );
  BTS4 \io_instance/in_pad_tri[1]  ( .A(io_pad[1]), .E(n1777), .Z(in_pad_i[1])
         );
  BTS4 \io_instance/in_pad_tri[2]  ( .A(io_pad[2]), .E(n1776), .Z(in_pad_i[2])
         );
  BTS4 \io_instance/in_pad_tri[3]  ( .A(io_pad[3]), .E(n1775), .Z(in_pad_i[3])
         );
  BTS4 \io_instance/in_pad_tri[4]  ( .A(io_pad[4]), .E(n1774), .Z(in_pad_i[4])
         );
  BTS4 \io_instance/in_pad_tri[5]  ( .A(io_pad[5]), .E(n1773), .Z(in_pad_i[5])
         );
  BTS4 \io_instance/in_pad_tri[6]  ( .A(io_pad[6]), .E(n1772), .Z(in_pad_i[6])
         );
  BTS4 \io_instance/in_pad_tri[7]  ( .A(io_pad[7]), .E(n1771), .Z(in_pad_i[7])
         );
  BTS4 \io_instance/in_pad_tri[8]  ( .A(io_pad[8]), .E(n1770), .Z(in_pad_i[8])
         );
  BTS4 \io_instance/in_pad_tri[9]  ( .A(io_pad[9]), .E(n1769), .Z(in_pad_i[9])
         );
  BTS4 \io_instance/in_pad_tri[10]  ( .A(io_pad[10]), .E(n1768), .Z(
        in_pad_i[10]) );
  BTS4 \io_instance/in_pad_tri[11]  ( .A(io_pad[11]), .E(n1767), .Z(
        in_pad_i[11]) );
  BTS4 \io_instance/in_pad_tri[12]  ( .A(io_pad[12]), .E(n1766), .Z(
        in_pad_i[12]) );
  BTS4 \io_instance/in_pad_tri[13]  ( .A(io_pad[13]), .E(n1765), .Z(
        in_pad_i[13]) );
  BTS4 \io_instance/in_pad_tri[14]  ( .A(io_pad[14]), .E(n1764), .Z(
        in_pad_i[14]) );
  BTS4 \io_instance/in_pad_tri[15]  ( .A(io_pad[15]), .E(n1763), .Z(
        in_pad_i[15]) );
  BTS4 \io_instance/in_pad_tri[16]  ( .A(io_pad[16]), .E(n1762), .Z(
        in_pad_i[16]) );
  BTS4 \io_instance/in_pad_tri[17]  ( .A(io_pad[17]), .E(n1761), .Z(
        in_pad_i[17]) );
  BTS4 \io_instance/in_pad_tri[18]  ( .A(io_pad[18]), .E(n1760), .Z(
        in_pad_i[18]) );
  BTS4 \io_instance/in_pad_tri[19]  ( .A(io_pad[19]), .E(n1759), .Z(
        in_pad_i[19]) );
  BTS4 \io_instance/in_pad_tri[20]  ( .A(io_pad[20]), .E(n1758), .Z(
        in_pad_i[20]) );
  BTS4 \io_instance/in_pad_tri[21]  ( .A(io_pad[21]), .E(n1757), .Z(
        in_pad_i[21]) );
  BTS4 \io_instance/in_pad_tri[22]  ( .A(io_pad[22]), .E(n1756), .Z(
        in_pad_i[22]) );
  BTS4 \io_instance/in_pad_tri[23]  ( .A(io_pad[23]), .E(n1755), .Z(
        in_pad_i[23]) );
  BTS4 \io_instance/in_pad_tri[24]  ( .A(io_pad[24]), .E(n1754), .Z(
        in_pad_i[24]) );
  BTS4 \io_instance/in_pad_tri[25]  ( .A(io_pad[25]), .E(n1753), .Z(
        in_pad_i[25]) );
  BTS4 \io_instance/in_pad_tri[26]  ( .A(io_pad[26]), .E(n1752), .Z(
        in_pad_i[26]) );
  BTS4 \io_instance/in_pad_tri[27]  ( .A(io_pad[27]), .E(n1751), .Z(
        in_pad_i[27]) );
  BTS4 \io_instance/in_pad_tri[28]  ( .A(io_pad[28]), .E(n1750), .Z(
        in_pad_i[28]) );
  BTS4 \io_instance/in_pad_tri[29]  ( .A(io_pad[29]), .E(n1749), .Z(
        in_pad_i[29]) );
  BTS4 \io_instance/in_pad_tri[30]  ( .A(io_pad[30]), .E(n1748), .Z(
        in_pad_i[30]) );
  BTS4 \io_instance/in_pad_tri[31]  ( .A(io_pad[31]), .E(n1747), .Z(
        in_pad_i[31]) );
  NR2 U1255 ( .A(\if_instance/fs1/present_state [0]), .B(n1779), .Z(PREADY) );
  IVP U1256 ( .A(gpio_eclk), .Z(n1815) );
  ND2 U1257 ( .A(aux_i[0]), .B(\reg_instance/rgpio_aux [0]), .Z(n1188) );
  AO7 U1258 ( .A(\reg_instance/rgpio_aux [0]), .B(n1781), .C(n1188), .Z(
        out_pad_o[0]) );
  ND2 U1259 ( .A(aux_i[1]), .B(\reg_instance/rgpio_aux [1]), .Z(n1189) );
  AO7 U1260 ( .A(\reg_instance/rgpio_aux [1]), .B(n1783), .C(n1189), .Z(
        out_pad_o[1]) );
  ND2 U1261 ( .A(aux_i[2]), .B(\reg_instance/rgpio_aux [2]), .Z(n1190) );
  AO7 U1262 ( .A(\reg_instance/rgpio_aux [2]), .B(n1784), .C(n1190), .Z(
        out_pad_o[2]) );
  ND2 U1263 ( .A(aux_i[3]), .B(\reg_instance/rgpio_aux [3]), .Z(n1191) );
  AO7 U1264 ( .A(\reg_instance/rgpio_aux [3]), .B(n1785), .C(n1191), .Z(
        out_pad_o[3]) );
  ND2 U1265 ( .A(aux_i[4]), .B(\reg_instance/rgpio_aux [4]), .Z(n1192) );
  AO7 U1266 ( .A(\reg_instance/rgpio_aux [4]), .B(n1786), .C(n1192), .Z(
        out_pad_o[4]) );
  ND2 U1267 ( .A(aux_i[5]), .B(\reg_instance/rgpio_aux [5]), .Z(n1193) );
  AO7 U1268 ( .A(\reg_instance/rgpio_aux [5]), .B(n1787), .C(n1193), .Z(
        out_pad_o[5]) );
  ND2 U1269 ( .A(aux_i[6]), .B(\reg_instance/rgpio_aux [6]), .Z(n1194) );
  AO7 U1270 ( .A(\reg_instance/rgpio_aux [6]), .B(n1788), .C(n1194), .Z(
        out_pad_o[6]) );
  ND2 U1271 ( .A(aux_i[7]), .B(\reg_instance/rgpio_aux [7]), .Z(n1195) );
  AO7 U1272 ( .A(\reg_instance/rgpio_aux [7]), .B(n1789), .C(n1195), .Z(
        out_pad_o[7]) );
  ND2 U1273 ( .A(aux_i[8]), .B(\reg_instance/rgpio_aux [8]), .Z(n1196) );
  AO7 U1274 ( .A(\reg_instance/rgpio_aux [8]), .B(n1790), .C(n1196), .Z(
        out_pad_o[8]) );
  ND2 U1275 ( .A(aux_i[9]), .B(\reg_instance/rgpio_aux [9]), .Z(n1197) );
  AO7 U1276 ( .A(\reg_instance/rgpio_aux [9]), .B(n1791), .C(n1197), .Z(
        out_pad_o[9]) );
  ND2 U1277 ( .A(aux_i[10]), .B(\reg_instance/rgpio_aux [10]), .Z(n1198) );
  AO7 U1278 ( .A(\reg_instance/rgpio_aux [10]), .B(n1792), .C(n1198), .Z(
        out_pad_o[10]) );
  ND2 U1279 ( .A(aux_i[11]), .B(\reg_instance/rgpio_aux [11]), .Z(n1199) );
  AO7 U1280 ( .A(\reg_instance/rgpio_aux [11]), .B(n1793), .C(n1199), .Z(
        out_pad_o[11]) );
  ND2 U1281 ( .A(aux_i[12]), .B(\reg_instance/rgpio_aux [12]), .Z(n1200) );
  AO7 U1282 ( .A(\reg_instance/rgpio_aux [12]), .B(n1794), .C(n1200), .Z(
        out_pad_o[12]) );
  ND2 U1283 ( .A(aux_i[13]), .B(\reg_instance/rgpio_aux [13]), .Z(n1201) );
  AO7 U1284 ( .A(\reg_instance/rgpio_aux [13]), .B(n1795), .C(n1201), .Z(
        out_pad_o[13]) );
  ND2 U1285 ( .A(aux_i[14]), .B(\reg_instance/rgpio_aux [14]), .Z(n1202) );
  AO7 U1286 ( .A(\reg_instance/rgpio_aux [14]), .B(n1796), .C(n1202), .Z(
        out_pad_o[14]) );
  ND2 U1287 ( .A(aux_i[15]), .B(\reg_instance/rgpio_aux [15]), .Z(n1203) );
  AO7 U1288 ( .A(\reg_instance/rgpio_aux [15]), .B(n1797), .C(n1203), .Z(
        out_pad_o[15]) );
  ND2 U1289 ( .A(aux_i[16]), .B(\reg_instance/rgpio_aux [16]), .Z(n1204) );
  AO7 U1290 ( .A(\reg_instance/rgpio_aux [16]), .B(n1798), .C(n1204), .Z(
        out_pad_o[16]) );
  ND2 U1291 ( .A(aux_i[17]), .B(\reg_instance/rgpio_aux [17]), .Z(n1205) );
  AO7 U1292 ( .A(\reg_instance/rgpio_aux [17]), .B(n1799), .C(n1205), .Z(
        out_pad_o[17]) );
  ND2 U1293 ( .A(aux_i[18]), .B(\reg_instance/rgpio_aux [18]), .Z(n1206) );
  AO7 U1294 ( .A(\reg_instance/rgpio_aux [18]), .B(n1800), .C(n1206), .Z(
        out_pad_o[18]) );
  ND2 U1295 ( .A(aux_i[19]), .B(\reg_instance/rgpio_aux [19]), .Z(n1207) );
  AO7 U1296 ( .A(\reg_instance/rgpio_aux [19]), .B(n1801), .C(n1207), .Z(
        out_pad_o[19]) );
  ND2 U1297 ( .A(aux_i[20]), .B(\reg_instance/rgpio_aux [20]), .Z(n1208) );
  AO7 U1298 ( .A(\reg_instance/rgpio_aux [20]), .B(n1802), .C(n1208), .Z(
        out_pad_o[20]) );
  ND2 U1299 ( .A(aux_i[21]), .B(\reg_instance/rgpio_aux [21]), .Z(n1209) );
  AO7 U1300 ( .A(\reg_instance/rgpio_aux [21]), .B(n1803), .C(n1209), .Z(
        out_pad_o[21]) );
  ND2 U1301 ( .A(aux_i[22]), .B(\reg_instance/rgpio_aux [22]), .Z(n1210) );
  AO7 U1302 ( .A(\reg_instance/rgpio_aux [22]), .B(n1804), .C(n1210), .Z(
        out_pad_o[22]) );
  ND2 U1303 ( .A(aux_i[23]), .B(\reg_instance/rgpio_aux [23]), .Z(n1211) );
  AO7 U1304 ( .A(\reg_instance/rgpio_aux [23]), .B(n1805), .C(n1211), .Z(
        out_pad_o[23]) );
  ND2 U1305 ( .A(aux_i[24]), .B(\reg_instance/rgpio_aux [24]), .Z(n1212) );
  AO7 U1306 ( .A(\reg_instance/rgpio_aux [24]), .B(n1806), .C(n1212), .Z(
        out_pad_o[24]) );
  ND2 U1307 ( .A(aux_i[25]), .B(\reg_instance/rgpio_aux [25]), .Z(n1213) );
  AO7 U1308 ( .A(\reg_instance/rgpio_aux [25]), .B(n1807), .C(n1213), .Z(
        out_pad_o[25]) );
  ND2 U1309 ( .A(aux_i[26]), .B(\reg_instance/rgpio_aux [26]), .Z(n1214) );
  AO7 U1310 ( .A(\reg_instance/rgpio_aux [26]), .B(n1808), .C(n1214), .Z(
        out_pad_o[26]) );
  ND2 U1311 ( .A(aux_i[27]), .B(\reg_instance/rgpio_aux [27]), .Z(n1215) );
  AO7 U1312 ( .A(\reg_instance/rgpio_aux [27]), .B(n1809), .C(n1215), .Z(
        out_pad_o[27]) );
  ND2 U1313 ( .A(aux_i[28]), .B(\reg_instance/rgpio_aux [28]), .Z(n1216) );
  AO7 U1314 ( .A(\reg_instance/rgpio_aux [28]), .B(n1810), .C(n1216), .Z(
        out_pad_o[28]) );
  ND2 U1315 ( .A(aux_i[29]), .B(\reg_instance/rgpio_aux [29]), .Z(n1217) );
  AO7 U1316 ( .A(\reg_instance/rgpio_aux [29]), .B(n1811), .C(n1217), .Z(
        out_pad_o[29]) );
  ND2 U1317 ( .A(aux_i[30]), .B(\reg_instance/rgpio_aux [30]), .Z(n1218) );
  AO7 U1318 ( .A(\reg_instance/rgpio_aux [30]), .B(n1812), .C(n1218), .Z(
        out_pad_o[30]) );
  ND2 U1319 ( .A(aux_i[31]), .B(\reg_instance/rgpio_aux [31]), .Z(n1219) );
  AO7 U1320 ( .A(\reg_instance/rgpio_aux [31]), .B(n1813), .C(n1219), .Z(
        out_pad_o[31]) );
  IVP U1321 ( .A(PSEL), .Z(n1222) );
  NR2 U1322 ( .A(PENABLE), .B(\if_instance/fs1/present_state [1]), .Z(n1220)
         );
  NR2 U1323 ( .A(PREADY), .B(n1220), .Z(n1221) );
  NR2 U1324 ( .A(n1222), .B(n1221), .Z(\if_instance/fs1/N20 ) );
  ND2 U1325 ( .A(\if_instance/fs1/present_state [0]), .B(n1779), .Z(n1429) );
  ND2 U1326 ( .A(PSEL), .B(PENABLE), .Z(n1223) );
  NR2 U1327 ( .A(n1429), .B(n1223), .Z(\if_instance/fs1/N21 ) );
  ND2 U1328 ( .A(PREADY), .B(sys_rst), .Z(n1224) );
  NR2 U1329 ( .A(PWRITE), .B(n1224), .Z(n1225) );
  AN2P U1330 ( .A(n1225), .B(gpio_dat_o[0]), .Z(PRDATA[0]) );
  AN2P U1331 ( .A(n1225), .B(gpio_dat_o[1]), .Z(PRDATA[1]) );
  AN2P U1332 ( .A(n1225), .B(gpio_dat_o[2]), .Z(PRDATA[2]) );
  AN2P U1333 ( .A(n1225), .B(gpio_dat_o[3]), .Z(PRDATA[3]) );
  AN2P U1334 ( .A(n1225), .B(gpio_dat_o[4]), .Z(PRDATA[4]) );
  AN2P U1335 ( .A(n1225), .B(gpio_dat_o[5]), .Z(PRDATA[5]) );
  AN2P U1336 ( .A(n1225), .B(gpio_dat_o[6]), .Z(PRDATA[6]) );
  AN2P U1337 ( .A(n1225), .B(gpio_dat_o[7]), .Z(PRDATA[7]) );
  AN2P U1338 ( .A(n1225), .B(gpio_dat_o[8]), .Z(PRDATA[8]) );
  AN2P U1339 ( .A(n1225), .B(gpio_dat_o[9]), .Z(PRDATA[9]) );
  AN2P U1340 ( .A(n1225), .B(gpio_dat_o[10]), .Z(PRDATA[10]) );
  AN2P U1341 ( .A(n1225), .B(gpio_dat_o[11]), .Z(PRDATA[11]) );
  AN2P U1342 ( .A(n1225), .B(gpio_dat_o[12]), .Z(PRDATA[12]) );
  AN2P U1343 ( .A(n1225), .B(gpio_dat_o[13]), .Z(PRDATA[13]) );
  AN2P U1344 ( .A(n1225), .B(gpio_dat_o[14]), .Z(PRDATA[14]) );
  AN2P U1345 ( .A(n1225), .B(gpio_dat_o[15]), .Z(PRDATA[15]) );
  AN2P U1346 ( .A(n1225), .B(gpio_dat_o[16]), .Z(PRDATA[16]) );
  AN2P U1347 ( .A(n1225), .B(gpio_dat_o[17]), .Z(PRDATA[17]) );
  AN2P U1348 ( .A(n1225), .B(gpio_dat_o[18]), .Z(PRDATA[18]) );
  AN2P U1349 ( .A(n1225), .B(gpio_dat_o[19]), .Z(PRDATA[19]) );
  AN2P U1350 ( .A(n1225), .B(gpio_dat_o[20]), .Z(PRDATA[20]) );
  AN2P U1351 ( .A(n1225), .B(gpio_dat_o[21]), .Z(PRDATA[21]) );
  AN2P U1352 ( .A(n1225), .B(gpio_dat_o[22]), .Z(PRDATA[22]) );
  AN2P U1353 ( .A(n1225), .B(gpio_dat_o[23]), .Z(PRDATA[23]) );
  AN2P U1354 ( .A(n1225), .B(gpio_dat_o[24]), .Z(PRDATA[24]) );
  AN2P U1355 ( .A(n1225), .B(gpio_dat_o[25]), .Z(PRDATA[25]) );
  AN2P U1356 ( .A(n1225), .B(gpio_dat_o[26]), .Z(PRDATA[26]) );
  AN2P U1357 ( .A(n1225), .B(gpio_dat_o[27]), .Z(PRDATA[27]) );
  AN2P U1358 ( .A(n1225), .B(gpio_dat_o[28]), .Z(PRDATA[28]) );
  AN2P U1359 ( .A(n1225), .B(gpio_dat_o[29]), .Z(PRDATA[29]) );
  AN2P U1360 ( .A(n1225), .B(gpio_dat_o[30]), .Z(PRDATA[30]) );
  AN2P U1361 ( .A(n1225), .B(gpio_dat_o[31]), .Z(PRDATA[31]) );
  NR2 U1362 ( .A(gpio_addr[5]), .B(gpio_addr[4]), .Z(n1236) );
  NR2 U1363 ( .A(gpio_addr[3]), .B(gpio_addr[2]), .Z(n1252) );
  ND2 U1364 ( .A(n1236), .B(n1252), .Z(n1267) );
  IVP U1365 ( .A(n1267), .Z(n1255) );
  IVP U1366 ( .A(gpio_addr[4]), .Z(n1226) );
  NR2 U1367 ( .A(gpio_addr[5]), .B(n1226), .Z(n1253) );
  IVP U1368 ( .A(n1253), .Z(n1229) );
  ND2 U1369 ( .A(gpio_addr[3]), .B(gpio_addr[2]), .Z(n1230) );
  NR2 U1370 ( .A(n1229), .B(n1230), .Z(n1268) );
  AO2 U1371 ( .A(\reg_instance/rgpio_in [0]), .B(n1255), .C(
        \reg_instance/rgpio_ints [0]), .D(n1268), .Z(n1227) );
  IVP U1372 ( .A(n1227), .Z(n1242) );
  NR2 U1373 ( .A(gpio_addr[4]), .B(gpio_addr[3]), .Z(n1228) );
  ND2 U1374 ( .A(gpio_addr[5]), .B(n1228), .Z(n1232) );
  NR2 U1375 ( .A(n1232), .B(gpio_addr[2]), .Z(n1433) );
  IVP U1376 ( .A(gpio_addr[2]), .Z(n1231) );
  ND2 U1377 ( .A(gpio_addr[3]), .B(n1231), .Z(n1233) );
  NR2 U1378 ( .A(n1229), .B(n1233), .Z(n1538) );
  AO2 U1379 ( .A(\reg_instance/rgpio_eclk [0]), .B(n1433), .C(
        \reg_instance/rgpio_ctrl [0]), .D(n1538), .Z(n1240) );
  IVP U1380 ( .A(n1236), .Z(n1234) );
  NR2 U1381 ( .A(n1230), .B(n1234), .Z(n1437) );
  NR2 U1382 ( .A(gpio_addr[3]), .B(n1231), .Z(n1235) );
  ND2 U1383 ( .A(n1253), .B(n1235), .Z(n1434) );
  IVP U1384 ( .A(n1434), .Z(n1257) );
  AO2 U1385 ( .A(\reg_instance/rgpio_inte [0]), .B(n1437), .C(n1257), .D(
        \reg_instance/rgpio_aux [0]), .Z(n1239) );
  NR2 U1386 ( .A(n1232), .B(n1231), .Z(n1431) );
  NR2 U1387 ( .A(n1234), .B(n1233), .Z(n1436) );
  AO2 U1388 ( .A(n1431), .B(\reg_instance/rgpio_nec [0]), .C(n1436), .D(
        oen_padoe_o[0]), .Z(n1238) );
  ND2 U1389 ( .A(n1236), .B(n1235), .Z(n1438) );
  IVP U1390 ( .A(n1438), .Z(n1258) );
  ND2 U1391 ( .A(n1258), .B(\reg_instance/rgpio_out [0]), .Z(n1237) );
  ND4 U1392 ( .A(n1240), .B(n1239), .C(n1238), .D(n1237), .Z(n1241) );
  NR2 U1393 ( .A(n1242), .B(n1241), .Z(n1254) );
  NR4 U1394 ( .A(gpio_addr[7]), .B(gpio_addr[6]), .C(gpio_addr[1]), .D(
        gpio_addr[0]), .Z(n1246) );
  NR4 U1395 ( .A(gpio_addr[11]), .B(gpio_addr[9]), .C(gpio_addr[8]), .D(
        gpio_addr[10]), .Z(n1245) );
  NR4 U1396 ( .A(gpio_addr[28]), .B(gpio_addr[25]), .C(gpio_addr[23]), .D(
        gpio_addr[26]), .Z(n1244) );
  NR4 U1397 ( .A(gpio_addr[29]), .B(gpio_addr[31]), .C(gpio_addr[27]), .D(
        gpio_addr[30]), .Z(n1243) );
  ND4 U1398 ( .A(n1246), .B(n1245), .C(n1244), .D(n1243), .Z(n1251) );
  NR4 U1399 ( .A(gpio_addr[22]), .B(gpio_addr[20]), .C(gpio_addr[24]), .D(
        gpio_addr[21]), .Z(n1249) );
  NR4 U1400 ( .A(gpio_addr[13]), .B(gpio_addr[16]), .C(gpio_addr[14]), .D(
        gpio_addr[12]), .Z(n1248) );
  NR4 U1401 ( .A(gpio_addr[19]), .B(gpio_addr[18]), .C(gpio_addr[15]), .D(
        gpio_addr[17]), .Z(n1247) );
  ND3 U1402 ( .A(n1249), .B(n1248), .C(n1247), .Z(n1250) );
  NR2 U1403 ( .A(n1251), .B(n1250), .Z(n1430) );
  IVP U1404 ( .A(n1430), .Z(n1269) );
  ND2 U1405 ( .A(n1253), .B(n1252), .Z(n1435) );
  NR2 U1406 ( .A(n1269), .B(n1435), .Z(n1416) );
  IVP U1407 ( .A(n1416), .Z(n1265) );
  AO4 U1408 ( .A(n1254), .B(n1269), .C(n1780), .D(n1265), .Z(
        \reg_instance/data_reg [0]) );
  AO2 U1409 ( .A(\reg_instance/rgpio_in [1]), .B(n1255), .C(
        \reg_instance/rgpio_ints [1]), .D(n1268), .Z(n1256) );
  IVP U1410 ( .A(n1256), .Z(n1264) );
  AO2 U1411 ( .A(\reg_instance/rgpio_ctrl [1]), .B(n1538), .C(
        \reg_instance/rgpio_eclk [1]), .D(n1433), .Z(n1262) );
  AO2 U1412 ( .A(\reg_instance/rgpio_inte [1]), .B(n1437), .C(n1257), .D(
        \reg_instance/rgpio_aux [1]), .Z(n1261) );
  AO2 U1413 ( .A(n1431), .B(\reg_instance/rgpio_nec [1]), .C(n1436), .D(
        oen_padoe_o[1]), .Z(n1260) );
  ND2 U1414 ( .A(n1258), .B(\reg_instance/rgpio_out [1]), .Z(n1259) );
  ND4 U1415 ( .A(n1262), .B(n1261), .C(n1260), .D(n1259), .Z(n1263) );
  NR2 U1416 ( .A(n1264), .B(n1263), .Z(n1266) );
  AO4 U1417 ( .A(n1266), .B(n1269), .C(n1782), .D(n1265), .Z(
        \reg_instance/data_reg [1]) );
  ND2 U1418 ( .A(n1430), .B(n1436), .Z(n1428) );
  NR2 U1419 ( .A(n1269), .B(n1438), .Z(n1415) );
  AO2 U1420 ( .A(\reg_instance/rgpio_ptrig [2]), .B(n1416), .C(
        \reg_instance/rgpio_out [2]), .D(n1415), .Z(n1274) );
  NR2 U1421 ( .A(n1269), .B(n1267), .Z(n1418) );
  AN2P U1422 ( .A(n1430), .B(n1268), .Z(n1417) );
  AO2 U1423 ( .A(\reg_instance/rgpio_in [2]), .B(n1418), .C(
        \reg_instance/rgpio_ints [2]), .D(n1417), .Z(n1272) );
  AN2P U1424 ( .A(n1430), .B(n1433), .Z(n1420) );
  AN2P U1425 ( .A(n1430), .B(n1431), .Z(n1419) );
  AO2 U1426 ( .A(\reg_instance/rgpio_eclk [2]), .B(n1420), .C(
        \reg_instance/rgpio_nec [2]), .D(n1419), .Z(n1271) );
  AN2P U1427 ( .A(n1430), .B(n1437), .Z(n1422) );
  NR2 U1428 ( .A(n1269), .B(n1434), .Z(n1421) );
  AO2 U1429 ( .A(\reg_instance/rgpio_inte [2]), .B(n1422), .C(
        \reg_instance/rgpio_aux [2]), .D(n1421), .Z(n1270) );
  AN3 U1430 ( .A(n1272), .B(n1271), .C(n1270), .Z(n1273) );
  AO3 U1431 ( .A(n1776), .B(n1428), .C(n1274), .D(n1273), .Z(
        \reg_instance/data_reg [2]) );
  AO2 U1432 ( .A(\reg_instance/rgpio_ptrig [3]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [3]), .Z(n1279) );
  AO2 U1433 ( .A(\reg_instance/rgpio_in [3]), .B(n1418), .C(
        \reg_instance/rgpio_ints [3]), .D(n1417), .Z(n1277) );
  AO2 U1434 ( .A(\reg_instance/rgpio_eclk [3]), .B(n1420), .C(
        \reg_instance/rgpio_nec [3]), .D(n1419), .Z(n1276) );
  AO2 U1435 ( .A(\reg_instance/rgpio_inte [3]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [3]), .Z(n1275) );
  AN3 U1436 ( .A(n1277), .B(n1276), .C(n1275), .Z(n1278) );
  AO3 U1437 ( .A(n1428), .B(n1775), .C(n1279), .D(n1278), .Z(
        \reg_instance/data_reg [3]) );
  AO2 U1438 ( .A(\reg_instance/rgpio_ptrig [4]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [4]), .Z(n1284) );
  AO2 U1439 ( .A(\reg_instance/rgpio_in [4]), .B(n1418), .C(
        \reg_instance/rgpio_ints [4]), .D(n1417), .Z(n1282) );
  AO2 U1440 ( .A(\reg_instance/rgpio_eclk [4]), .B(n1420), .C(
        \reg_instance/rgpio_nec [4]), .D(n1419), .Z(n1281) );
  AO2 U1441 ( .A(\reg_instance/rgpio_inte [4]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [4]), .Z(n1280) );
  AN3 U1442 ( .A(n1282), .B(n1281), .C(n1280), .Z(n1283) );
  AO3 U1443 ( .A(n1428), .B(n1774), .C(n1284), .D(n1283), .Z(
        \reg_instance/data_reg [4]) );
  AO2 U1444 ( .A(\reg_instance/rgpio_ptrig [5]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [5]), .Z(n1289) );
  AO2 U1445 ( .A(\reg_instance/rgpio_in [5]), .B(n1418), .C(
        \reg_instance/rgpio_ints [5]), .D(n1417), .Z(n1287) );
  AO2 U1446 ( .A(\reg_instance/rgpio_eclk [5]), .B(n1420), .C(
        \reg_instance/rgpio_nec [5]), .D(n1419), .Z(n1286) );
  AO2 U1447 ( .A(\reg_instance/rgpio_inte [5]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [5]), .Z(n1285) );
  AN3 U1448 ( .A(n1287), .B(n1286), .C(n1285), .Z(n1288) );
  AO3 U1449 ( .A(n1428), .B(n1773), .C(n1289), .D(n1288), .Z(
        \reg_instance/data_reg [5]) );
  AO2 U1450 ( .A(\reg_instance/rgpio_ptrig [6]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [6]), .Z(n1294) );
  AO2 U1451 ( .A(\reg_instance/rgpio_in [6]), .B(n1418), .C(
        \reg_instance/rgpio_ints [6]), .D(n1417), .Z(n1292) );
  AO2 U1452 ( .A(\reg_instance/rgpio_eclk [6]), .B(n1420), .C(
        \reg_instance/rgpio_nec [6]), .D(n1419), .Z(n1291) );
  AO2 U1453 ( .A(\reg_instance/rgpio_inte [6]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [6]), .Z(n1290) );
  AN3 U1454 ( .A(n1292), .B(n1291), .C(n1290), .Z(n1293) );
  AO3 U1455 ( .A(n1428), .B(n1772), .C(n1294), .D(n1293), .Z(
        \reg_instance/data_reg [6]) );
  AO2 U1456 ( .A(\reg_instance/rgpio_ptrig [7]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [7]), .Z(n1299) );
  AO2 U1457 ( .A(\reg_instance/rgpio_in [7]), .B(n1418), .C(
        \reg_instance/rgpio_ints [7]), .D(n1417), .Z(n1297) );
  AO2 U1458 ( .A(\reg_instance/rgpio_eclk [7]), .B(n1420), .C(
        \reg_instance/rgpio_nec [7]), .D(n1419), .Z(n1296) );
  AO2 U1459 ( .A(\reg_instance/rgpio_inte [7]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [7]), .Z(n1295) );
  AN3 U1460 ( .A(n1297), .B(n1296), .C(n1295), .Z(n1298) );
  AO3 U1461 ( .A(n1428), .B(n1771), .C(n1299), .D(n1298), .Z(
        \reg_instance/data_reg [7]) );
  AO2 U1462 ( .A(\reg_instance/rgpio_ptrig [8]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [8]), .Z(n1304) );
  AO2 U1463 ( .A(\reg_instance/rgpio_in [8]), .B(n1418), .C(
        \reg_instance/rgpio_ints [8]), .D(n1417), .Z(n1302) );
  AO2 U1464 ( .A(\reg_instance/rgpio_eclk [8]), .B(n1420), .C(
        \reg_instance/rgpio_nec [8]), .D(n1419), .Z(n1301) );
  AO2 U1465 ( .A(\reg_instance/rgpio_inte [8]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [8]), .Z(n1300) );
  AN3 U1466 ( .A(n1302), .B(n1301), .C(n1300), .Z(n1303) );
  AO3 U1467 ( .A(n1428), .B(n1770), .C(n1304), .D(n1303), .Z(
        \reg_instance/data_reg [8]) );
  AO2 U1468 ( .A(\reg_instance/rgpio_ptrig [9]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [9]), .Z(n1309) );
  AO2 U1469 ( .A(\reg_instance/rgpio_in [9]), .B(n1418), .C(
        \reg_instance/rgpio_ints [9]), .D(n1417), .Z(n1307) );
  AO2 U1470 ( .A(\reg_instance/rgpio_eclk [9]), .B(n1420), .C(
        \reg_instance/rgpio_nec [9]), .D(n1419), .Z(n1306) );
  AO2 U1471 ( .A(\reg_instance/rgpio_inte [9]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [9]), .Z(n1305) );
  AN3 U1472 ( .A(n1307), .B(n1306), .C(n1305), .Z(n1308) );
  AO3 U1473 ( .A(n1428), .B(n1769), .C(n1309), .D(n1308), .Z(
        \reg_instance/data_reg [9]) );
  AO2 U1474 ( .A(\reg_instance/rgpio_ptrig [10]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [10]), .Z(n1314) );
  AO2 U1475 ( .A(\reg_instance/rgpio_in [10]), .B(n1418), .C(
        \reg_instance/rgpio_ints [10]), .D(n1417), .Z(n1312) );
  AO2 U1476 ( .A(\reg_instance/rgpio_eclk [10]), .B(n1420), .C(
        \reg_instance/rgpio_nec [10]), .D(n1419), .Z(n1311) );
  AO2 U1477 ( .A(\reg_instance/rgpio_inte [10]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [10]), .Z(n1310) );
  AN3 U1478 ( .A(n1312), .B(n1311), .C(n1310), .Z(n1313) );
  AO3 U1479 ( .A(n1428), .B(n1768), .C(n1314), .D(n1313), .Z(
        \reg_instance/data_reg [10]) );
  AO2 U1480 ( .A(\reg_instance/rgpio_ptrig [11]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [11]), .Z(n1319) );
  AO2 U1481 ( .A(\reg_instance/rgpio_in [11]), .B(n1418), .C(
        \reg_instance/rgpio_ints [11]), .D(n1417), .Z(n1317) );
  AO2 U1482 ( .A(\reg_instance/rgpio_eclk [11]), .B(n1420), .C(
        \reg_instance/rgpio_nec [11]), .D(n1419), .Z(n1316) );
  AO2 U1483 ( .A(\reg_instance/rgpio_inte [11]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [11]), .Z(n1315) );
  AN3 U1484 ( .A(n1317), .B(n1316), .C(n1315), .Z(n1318) );
  AO3 U1485 ( .A(n1428), .B(n1767), .C(n1319), .D(n1318), .Z(
        \reg_instance/data_reg [11]) );
  AO2 U1486 ( .A(\reg_instance/rgpio_ptrig [12]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [12]), .Z(n1324) );
  AO2 U1487 ( .A(\reg_instance/rgpio_in [12]), .B(n1418), .C(
        \reg_instance/rgpio_ints [12]), .D(n1417), .Z(n1322) );
  AO2 U1488 ( .A(\reg_instance/rgpio_eclk [12]), .B(n1420), .C(
        \reg_instance/rgpio_nec [12]), .D(n1419), .Z(n1321) );
  AO2 U1489 ( .A(\reg_instance/rgpio_inte [12]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [12]), .Z(n1320) );
  AN3 U1490 ( .A(n1322), .B(n1321), .C(n1320), .Z(n1323) );
  AO3 U1491 ( .A(n1428), .B(n1766), .C(n1324), .D(n1323), .Z(
        \reg_instance/data_reg [12]) );
  AO2 U1492 ( .A(\reg_instance/rgpio_ptrig [13]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [13]), .Z(n1329) );
  AO2 U1493 ( .A(\reg_instance/rgpio_in [13]), .B(n1418), .C(
        \reg_instance/rgpio_ints [13]), .D(n1417), .Z(n1327) );
  AO2 U1494 ( .A(\reg_instance/rgpio_eclk [13]), .B(n1420), .C(
        \reg_instance/rgpio_nec [13]), .D(n1419), .Z(n1326) );
  AO2 U1495 ( .A(\reg_instance/rgpio_inte [13]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [13]), .Z(n1325) );
  AN3 U1496 ( .A(n1327), .B(n1326), .C(n1325), .Z(n1328) );
  AO3 U1497 ( .A(n1428), .B(n1765), .C(n1329), .D(n1328), .Z(
        \reg_instance/data_reg [13]) );
  AO2 U1498 ( .A(\reg_instance/rgpio_ptrig [14]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [14]), .Z(n1334) );
  AO2 U1499 ( .A(\reg_instance/rgpio_in [14]), .B(n1418), .C(
        \reg_instance/rgpio_ints [14]), .D(n1417), .Z(n1332) );
  AO2 U1500 ( .A(\reg_instance/rgpio_eclk [14]), .B(n1420), .C(
        \reg_instance/rgpio_nec [14]), .D(n1419), .Z(n1331) );
  AO2 U1501 ( .A(\reg_instance/rgpio_inte [14]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [14]), .Z(n1330) );
  AN3 U1502 ( .A(n1332), .B(n1331), .C(n1330), .Z(n1333) );
  AO3 U1503 ( .A(n1428), .B(n1764), .C(n1334), .D(n1333), .Z(
        \reg_instance/data_reg [14]) );
  AO2 U1504 ( .A(\reg_instance/rgpio_ptrig [15]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [15]), .Z(n1339) );
  AO2 U1505 ( .A(\reg_instance/rgpio_in [15]), .B(n1418), .C(
        \reg_instance/rgpio_ints [15]), .D(n1417), .Z(n1337) );
  AO2 U1506 ( .A(\reg_instance/rgpio_eclk [15]), .B(n1420), .C(
        \reg_instance/rgpio_nec [15]), .D(n1419), .Z(n1336) );
  AO2 U1507 ( .A(\reg_instance/rgpio_inte [15]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [15]), .Z(n1335) );
  AN3 U1508 ( .A(n1337), .B(n1336), .C(n1335), .Z(n1338) );
  AO3 U1509 ( .A(n1428), .B(n1763), .C(n1339), .D(n1338), .Z(
        \reg_instance/data_reg [15]) );
  AO2 U1510 ( .A(\reg_instance/rgpio_ptrig [16]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [16]), .Z(n1344) );
  AO2 U1511 ( .A(\reg_instance/rgpio_in [16]), .B(n1418), .C(
        \reg_instance/rgpio_ints [16]), .D(n1417), .Z(n1342) );
  AO2 U1512 ( .A(\reg_instance/rgpio_eclk [16]), .B(n1420), .C(
        \reg_instance/rgpio_nec [16]), .D(n1419), .Z(n1341) );
  AO2 U1513 ( .A(\reg_instance/rgpio_inte [16]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [16]), .Z(n1340) );
  AN3 U1514 ( .A(n1342), .B(n1341), .C(n1340), .Z(n1343) );
  AO3 U1515 ( .A(n1428), .B(n1762), .C(n1344), .D(n1343), .Z(
        \reg_instance/data_reg [16]) );
  AO2 U1516 ( .A(\reg_instance/rgpio_ptrig [17]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [17]), .Z(n1349) );
  AO2 U1517 ( .A(\reg_instance/rgpio_in [17]), .B(n1418), .C(
        \reg_instance/rgpio_ints [17]), .D(n1417), .Z(n1347) );
  AO2 U1518 ( .A(\reg_instance/rgpio_eclk [17]), .B(n1420), .C(
        \reg_instance/rgpio_nec [17]), .D(n1419), .Z(n1346) );
  AO2 U1519 ( .A(\reg_instance/rgpio_inte [17]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [17]), .Z(n1345) );
  AN3 U1520 ( .A(n1347), .B(n1346), .C(n1345), .Z(n1348) );
  AO3 U1521 ( .A(n1428), .B(n1761), .C(n1349), .D(n1348), .Z(
        \reg_instance/data_reg [17]) );
  AO2 U1522 ( .A(\reg_instance/rgpio_ptrig [18]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [18]), .Z(n1354) );
  AO2 U1523 ( .A(\reg_instance/rgpio_in [18]), .B(n1418), .C(
        \reg_instance/rgpio_ints [18]), .D(n1417), .Z(n1352) );
  AO2 U1524 ( .A(\reg_instance/rgpio_eclk [18]), .B(n1420), .C(
        \reg_instance/rgpio_nec [18]), .D(n1419), .Z(n1351) );
  AO2 U1525 ( .A(\reg_instance/rgpio_inte [18]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [18]), .Z(n1350) );
  AN3 U1526 ( .A(n1352), .B(n1351), .C(n1350), .Z(n1353) );
  AO3 U1527 ( .A(n1428), .B(n1760), .C(n1354), .D(n1353), .Z(
        \reg_instance/data_reg [18]) );
  AO2 U1528 ( .A(\reg_instance/rgpio_ptrig [19]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [19]), .Z(n1359) );
  AO2 U1529 ( .A(\reg_instance/rgpio_in [19]), .B(n1418), .C(
        \reg_instance/rgpio_ints [19]), .D(n1417), .Z(n1357) );
  AO2 U1530 ( .A(\reg_instance/rgpio_eclk [19]), .B(n1420), .C(
        \reg_instance/rgpio_nec [19]), .D(n1419), .Z(n1356) );
  AO2 U1531 ( .A(\reg_instance/rgpio_inte [19]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [19]), .Z(n1355) );
  AN3 U1532 ( .A(n1357), .B(n1356), .C(n1355), .Z(n1358) );
  AO3 U1533 ( .A(n1428), .B(n1759), .C(n1359), .D(n1358), .Z(
        \reg_instance/data_reg [19]) );
  AO2 U1534 ( .A(\reg_instance/rgpio_ptrig [20]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [20]), .Z(n1364) );
  AO2 U1535 ( .A(\reg_instance/rgpio_in [20]), .B(n1418), .C(
        \reg_instance/rgpio_ints [20]), .D(n1417), .Z(n1362) );
  AO2 U1536 ( .A(\reg_instance/rgpio_eclk [20]), .B(n1420), .C(
        \reg_instance/rgpio_nec [20]), .D(n1419), .Z(n1361) );
  AO2 U1537 ( .A(\reg_instance/rgpio_inte [20]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [20]), .Z(n1360) );
  AN3 U1538 ( .A(n1362), .B(n1361), .C(n1360), .Z(n1363) );
  AO3 U1539 ( .A(n1428), .B(n1758), .C(n1364), .D(n1363), .Z(
        \reg_instance/data_reg [20]) );
  AO2 U1540 ( .A(\reg_instance/rgpio_ptrig [21]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [21]), .Z(n1369) );
  AO2 U1541 ( .A(\reg_instance/rgpio_in [21]), .B(n1418), .C(
        \reg_instance/rgpio_ints [21]), .D(n1417), .Z(n1367) );
  AO2 U1542 ( .A(\reg_instance/rgpio_eclk [21]), .B(n1420), .C(
        \reg_instance/rgpio_nec [21]), .D(n1419), .Z(n1366) );
  AO2 U1543 ( .A(\reg_instance/rgpio_inte [21]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [21]), .Z(n1365) );
  AN3 U1544 ( .A(n1367), .B(n1366), .C(n1365), .Z(n1368) );
  AO3 U1545 ( .A(n1428), .B(n1757), .C(n1369), .D(n1368), .Z(
        \reg_instance/data_reg [21]) );
  AO2 U1546 ( .A(\reg_instance/rgpio_ptrig [22]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [22]), .Z(n1374) );
  AO2 U1547 ( .A(\reg_instance/rgpio_in [22]), .B(n1418), .C(
        \reg_instance/rgpio_ints [22]), .D(n1417), .Z(n1372) );
  AO2 U1548 ( .A(\reg_instance/rgpio_eclk [22]), .B(n1420), .C(
        \reg_instance/rgpio_nec [22]), .D(n1419), .Z(n1371) );
  AO2 U1549 ( .A(\reg_instance/rgpio_inte [22]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [22]), .Z(n1370) );
  AN3 U1550 ( .A(n1372), .B(n1371), .C(n1370), .Z(n1373) );
  AO3 U1551 ( .A(n1428), .B(n1756), .C(n1374), .D(n1373), .Z(
        \reg_instance/data_reg [22]) );
  AO2 U1552 ( .A(\reg_instance/rgpio_ptrig [23]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [23]), .Z(n1379) );
  AO2 U1553 ( .A(\reg_instance/rgpio_in [23]), .B(n1418), .C(
        \reg_instance/rgpio_ints [23]), .D(n1417), .Z(n1377) );
  AO2 U1554 ( .A(\reg_instance/rgpio_eclk [23]), .B(n1420), .C(
        \reg_instance/rgpio_nec [23]), .D(n1419), .Z(n1376) );
  AO2 U1555 ( .A(\reg_instance/rgpio_inte [23]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [23]), .Z(n1375) );
  AN3 U1556 ( .A(n1377), .B(n1376), .C(n1375), .Z(n1378) );
  AO3 U1557 ( .A(n1428), .B(n1755), .C(n1379), .D(n1378), .Z(
        \reg_instance/data_reg [23]) );
  AO2 U1558 ( .A(\reg_instance/rgpio_ptrig [24]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [24]), .Z(n1384) );
  AO2 U1559 ( .A(\reg_instance/rgpio_in [24]), .B(n1418), .C(
        \reg_instance/rgpio_ints [24]), .D(n1417), .Z(n1382) );
  AO2 U1560 ( .A(\reg_instance/rgpio_eclk [24]), .B(n1420), .C(
        \reg_instance/rgpio_nec [24]), .D(n1419), .Z(n1381) );
  AO2 U1561 ( .A(\reg_instance/rgpio_inte [24]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [24]), .Z(n1380) );
  AN3 U1562 ( .A(n1382), .B(n1381), .C(n1380), .Z(n1383) );
  AO3 U1563 ( .A(n1428), .B(n1754), .C(n1384), .D(n1383), .Z(
        \reg_instance/data_reg [24]) );
  AO2 U1564 ( .A(\reg_instance/rgpio_ptrig [25]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [25]), .Z(n1389) );
  AO2 U1565 ( .A(\reg_instance/rgpio_in [25]), .B(n1418), .C(
        \reg_instance/rgpio_ints [25]), .D(n1417), .Z(n1387) );
  AO2 U1566 ( .A(\reg_instance/rgpio_eclk [25]), .B(n1420), .C(
        \reg_instance/rgpio_nec [25]), .D(n1419), .Z(n1386) );
  AO2 U1567 ( .A(\reg_instance/rgpio_inte [25]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [25]), .Z(n1385) );
  AN3 U1568 ( .A(n1387), .B(n1386), .C(n1385), .Z(n1388) );
  AO3 U1569 ( .A(n1428), .B(n1753), .C(n1389), .D(n1388), .Z(
        \reg_instance/data_reg [25]) );
  AO2 U1570 ( .A(\reg_instance/rgpio_ptrig [26]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [26]), .Z(n1394) );
  AO2 U1571 ( .A(\reg_instance/rgpio_in [26]), .B(n1418), .C(
        \reg_instance/rgpio_ints [26]), .D(n1417), .Z(n1392) );
  AO2 U1572 ( .A(\reg_instance/rgpio_eclk [26]), .B(n1420), .C(
        \reg_instance/rgpio_nec [26]), .D(n1419), .Z(n1391) );
  AO2 U1573 ( .A(\reg_instance/rgpio_inte [26]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [26]), .Z(n1390) );
  AN3 U1574 ( .A(n1392), .B(n1391), .C(n1390), .Z(n1393) );
  AO3 U1575 ( .A(n1428), .B(n1752), .C(n1394), .D(n1393), .Z(
        \reg_instance/data_reg [26]) );
  AO2 U1576 ( .A(\reg_instance/rgpio_ptrig [27]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [27]), .Z(n1399) );
  AO2 U1577 ( .A(\reg_instance/rgpio_in [27]), .B(n1418), .C(
        \reg_instance/rgpio_ints [27]), .D(n1417), .Z(n1397) );
  AO2 U1578 ( .A(\reg_instance/rgpio_eclk [27]), .B(n1420), .C(
        \reg_instance/rgpio_nec [27]), .D(n1419), .Z(n1396) );
  AO2 U1579 ( .A(\reg_instance/rgpio_inte [27]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [27]), .Z(n1395) );
  AN3 U1580 ( .A(n1397), .B(n1396), .C(n1395), .Z(n1398) );
  AO3 U1581 ( .A(n1428), .B(n1751), .C(n1399), .D(n1398), .Z(
        \reg_instance/data_reg [27]) );
  AO2 U1582 ( .A(\reg_instance/rgpio_ptrig [28]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [28]), .Z(n1404) );
  AO2 U1583 ( .A(\reg_instance/rgpio_in [28]), .B(n1418), .C(
        \reg_instance/rgpio_ints [28]), .D(n1417), .Z(n1402) );
  AO2 U1584 ( .A(\reg_instance/rgpio_eclk [28]), .B(n1420), .C(
        \reg_instance/rgpio_nec [28]), .D(n1419), .Z(n1401) );
  AO2 U1585 ( .A(\reg_instance/rgpio_inte [28]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [28]), .Z(n1400) );
  AN3 U1586 ( .A(n1402), .B(n1401), .C(n1400), .Z(n1403) );
  AO3 U1587 ( .A(n1428), .B(n1750), .C(n1404), .D(n1403), .Z(
        \reg_instance/data_reg [28]) );
  AO2 U1588 ( .A(\reg_instance/rgpio_ptrig [29]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [29]), .Z(n1409) );
  AO2 U1589 ( .A(\reg_instance/rgpio_in [29]), .B(n1418), .C(
        \reg_instance/rgpio_ints [29]), .D(n1417), .Z(n1407) );
  AO2 U1590 ( .A(\reg_instance/rgpio_eclk [29]), .B(n1420), .C(
        \reg_instance/rgpio_nec [29]), .D(n1419), .Z(n1406) );
  AO2 U1591 ( .A(\reg_instance/rgpio_inte [29]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [29]), .Z(n1405) );
  AN3 U1592 ( .A(n1407), .B(n1406), .C(n1405), .Z(n1408) );
  AO3 U1593 ( .A(n1428), .B(n1749), .C(n1409), .D(n1408), .Z(
        \reg_instance/data_reg [29]) );
  AO2 U1594 ( .A(\reg_instance/rgpio_ptrig [30]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [30]), .Z(n1414) );
  AO2 U1595 ( .A(\reg_instance/rgpio_in [30]), .B(n1418), .C(
        \reg_instance/rgpio_ints [30]), .D(n1417), .Z(n1412) );
  AO2 U1596 ( .A(\reg_instance/rgpio_eclk [30]), .B(n1420), .C(
        \reg_instance/rgpio_nec [30]), .D(n1419), .Z(n1411) );
  AO2 U1597 ( .A(\reg_instance/rgpio_inte [30]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [30]), .Z(n1410) );
  AN3 U1598 ( .A(n1412), .B(n1411), .C(n1410), .Z(n1413) );
  AO3 U1599 ( .A(n1428), .B(n1748), .C(n1414), .D(n1413), .Z(
        \reg_instance/data_reg [30]) );
  AO2 U1600 ( .A(\reg_instance/rgpio_ptrig [31]), .B(n1416), .C(n1415), .D(
        \reg_instance/rgpio_out [31]), .Z(n1427) );
  AO2 U1601 ( .A(\reg_instance/rgpio_in [31]), .B(n1418), .C(
        \reg_instance/rgpio_ints [31]), .D(n1417), .Z(n1425) );
  AO2 U1602 ( .A(\reg_instance/rgpio_eclk [31]), .B(n1420), .C(
        \reg_instance/rgpio_nec [31]), .D(n1419), .Z(n1424) );
  AO2 U1603 ( .A(\reg_instance/rgpio_inte [31]), .B(n1422), .C(n1421), .D(
        \reg_instance/rgpio_aux [31]), .Z(n1423) );
  AN3 U1604 ( .A(n1425), .B(n1424), .C(n1423), .Z(n1426) );
  AO3 U1605 ( .A(n1428), .B(n1747), .C(n1427), .D(n1426), .Z(
        \reg_instance/data_reg [31]) );
  OR2P U1606 ( .A(n1429), .B(PSEL), .Z(n1153) );
  AN3 U1607 ( .A(n1430), .B(PREADY), .C(PWRITE), .Z(n1539) );
  ND2 U1608 ( .A(n1539), .B(n1431), .Z(n1742) );
  ND2 U1609 ( .A(sys_rst), .B(PWDATA[0]), .Z(n1554) );
  OR2P U1610 ( .A(n1742), .B(n1554), .Z(n1743) );
  ND2 U1611 ( .A(\reg_instance/rgpio_nec [0]), .B(n1742), .Z(n1432) );
  ND2 U1612 ( .A(n1743), .B(n1432), .Z(n1152) );
  AN2P U1613 ( .A(n1539), .B(n1433), .Z(n1503) );
  EO1 U1614 ( .A(n1503), .B(n1554), .C(\reg_instance/rgpio_eclk [0]), .D(n1503), .Z(n1151) );
  IVP U1615 ( .A(n1539), .Z(n1439) );
  NR2 U1616 ( .A(n1439), .B(n1434), .Z(n1504) );
  EO1 U1617 ( .A(n1504), .B(n1554), .C(\reg_instance/rgpio_aux [0]), .D(n1504), 
        .Z(n1150) );
  OR2P U1618 ( .A(n1439), .B(n1435), .Z(n1441) );
  IVP U1619 ( .A(n1441), .Z(n1505) );
  AO2 U1620 ( .A(n1505), .B(n1554), .C(n1780), .D(n1441), .Z(n1149) );
  ND2 U1621 ( .A(n1539), .B(n1436), .Z(n1506) );
  IVP U1622 ( .A(n1506), .Z(n1453) );
  AO2 U1623 ( .A(n1453), .B(n1554), .C(n1778), .D(n1506), .Z(n1148) );
  AN2P U1624 ( .A(n1539), .B(n1437), .Z(n1507) );
  EO1 U1625 ( .A(n1507), .B(n1554), .C(\reg_instance/rgpio_inte [0]), .D(n1507), .Z(n1147) );
  NR2 U1626 ( .A(n1439), .B(n1438), .Z(n1509) );
  IVP U1627 ( .A(n1509), .Z(n1462) );
  AO2 U1628 ( .A(n1509), .B(n1554), .C(n1781), .D(n1462), .Z(n1146) );
  ND2 U1629 ( .A(sys_rst), .B(PWDATA[1]), .Z(n1540) );
  OR2P U1630 ( .A(n1742), .B(n1540), .Z(n1733) );
  ND2 U1631 ( .A(\reg_instance/rgpio_nec [1]), .B(n1742), .Z(n1440) );
  ND2 U1632 ( .A(n1733), .B(n1440), .Z(n1145) );
  EO1 U1633 ( .A(n1503), .B(n1540), .C(\reg_instance/rgpio_eclk [1]), .D(n1503), .Z(n1144) );
  EO1 U1634 ( .A(n1504), .B(n1540), .C(\reg_instance/rgpio_aux [1]), .D(n1504), 
        .Z(n1143) );
  AO2 U1635 ( .A(n1505), .B(n1540), .C(n1782), .D(n1441), .Z(n1142) );
  AO2 U1636 ( .A(n1453), .B(n1540), .C(n1777), .D(n1506), .Z(n1141) );
  EO1 U1637 ( .A(n1507), .B(n1540), .C(\reg_instance/rgpio_inte [1]), .D(n1507), .Z(n1140) );
  AO2 U1638 ( .A(n1509), .B(n1540), .C(n1783), .D(n1462), .Z(n1139) );
  ND2 U1639 ( .A(sys_rst), .B(PWDATA[2]), .Z(n1443) );
  OR2P U1640 ( .A(n1742), .B(n1443), .Z(n1727) );
  ND2 U1641 ( .A(\reg_instance/rgpio_nec [2]), .B(n1742), .Z(n1442) );
  ND2 U1642 ( .A(n1727), .B(n1442), .Z(n1138) );
  EO1 U1643 ( .A(n1503), .B(n1443), .C(\reg_instance/rgpio_eclk [2]), .D(n1503), .Z(n1137) );
  EO1 U1644 ( .A(n1504), .B(n1443), .C(\reg_instance/rgpio_aux [2]), .D(n1504), 
        .Z(n1136) );
  EO1 U1645 ( .A(n1505), .B(n1443), .C(\reg_instance/rgpio_ptrig [2]), .D(
        n1505), .Z(n1135) );
  AO2 U1646 ( .A(n1453), .B(n1443), .C(n1776), .D(n1506), .Z(n1134) );
  EO1 U1647 ( .A(n1507), .B(n1443), .C(\reg_instance/rgpio_inte [2]), .D(n1507), .Z(n1133) );
  AO2 U1648 ( .A(n1509), .B(n1443), .C(n1784), .D(n1462), .Z(n1132) );
  ND2 U1649 ( .A(sys_rst), .B(PWDATA[3]), .Z(n1445) );
  OR2P U1650 ( .A(n1742), .B(n1445), .Z(n1721) );
  ND2 U1651 ( .A(\reg_instance/rgpio_nec [3]), .B(n1742), .Z(n1444) );
  ND2 U1652 ( .A(n1721), .B(n1444), .Z(n1131) );
  EO1 U1653 ( .A(n1503), .B(n1445), .C(\reg_instance/rgpio_eclk [3]), .D(n1503), .Z(n1130) );
  EO1 U1654 ( .A(n1504), .B(n1445), .C(\reg_instance/rgpio_aux [3]), .D(n1504), 
        .Z(n1129) );
  EO1 U1655 ( .A(n1505), .B(n1445), .C(\reg_instance/rgpio_ptrig [3]), .D(
        n1505), .Z(n1128) );
  AO2 U1656 ( .A(n1453), .B(n1445), .C(n1775), .D(n1506), .Z(n1127) );
  EO1 U1657 ( .A(n1507), .B(n1445), .C(\reg_instance/rgpio_inte [3]), .D(n1507), .Z(n1126) );
  AO2 U1658 ( .A(n1509), .B(n1445), .C(n1785), .D(n1462), .Z(n1125) );
  ND2 U1659 ( .A(sys_rst), .B(PWDATA[4]), .Z(n1447) );
  OR2P U1660 ( .A(n1742), .B(n1447), .Z(n1715) );
  ND2 U1661 ( .A(\reg_instance/rgpio_nec [4]), .B(n1742), .Z(n1446) );
  ND2 U1662 ( .A(n1715), .B(n1446), .Z(n1124) );
  EO1 U1663 ( .A(n1503), .B(n1447), .C(\reg_instance/rgpio_eclk [4]), .D(n1503), .Z(n1123) );
  EO1 U1664 ( .A(n1504), .B(n1447), .C(\reg_instance/rgpio_aux [4]), .D(n1504), 
        .Z(n1122) );
  EO1 U1665 ( .A(n1505), .B(n1447), .C(\reg_instance/rgpio_ptrig [4]), .D(
        n1505), .Z(n1121) );
  AO2 U1666 ( .A(n1453), .B(n1447), .C(n1774), .D(n1506), .Z(n1120) );
  EO1 U1667 ( .A(n1507), .B(n1447), .C(\reg_instance/rgpio_inte [4]), .D(n1507), .Z(n1119) );
  AO2 U1668 ( .A(n1509), .B(n1447), .C(n1786), .D(n1462), .Z(n1118) );
  ND2 U1669 ( .A(sys_rst), .B(PWDATA[5]), .Z(n1449) );
  OR2P U1670 ( .A(n1742), .B(n1449), .Z(n1709) );
  ND2 U1671 ( .A(\reg_instance/rgpio_nec [5]), .B(n1742), .Z(n1448) );
  ND2 U1672 ( .A(n1709), .B(n1448), .Z(n1117) );
  EO1 U1673 ( .A(n1503), .B(n1449), .C(\reg_instance/rgpio_eclk [5]), .D(n1503), .Z(n1116) );
  EO1 U1674 ( .A(n1504), .B(n1449), .C(\reg_instance/rgpio_aux [5]), .D(n1504), 
        .Z(n1115) );
  EO1 U1675 ( .A(n1505), .B(n1449), .C(\reg_instance/rgpio_ptrig [5]), .D(
        n1505), .Z(n1114) );
  AO2 U1676 ( .A(n1453), .B(n1449), .C(n1773), .D(n1506), .Z(n1113) );
  EO1 U1677 ( .A(n1507), .B(n1449), .C(\reg_instance/rgpio_inte [5]), .D(n1507), .Z(n1112) );
  AO2 U1678 ( .A(n1509), .B(n1449), .C(n1787), .D(n1462), .Z(n1111) );
  ND2 U1679 ( .A(sys_rst), .B(PWDATA[6]), .Z(n1451) );
  OR2P U1680 ( .A(n1742), .B(n1451), .Z(n1703) );
  ND2 U1681 ( .A(\reg_instance/rgpio_nec [6]), .B(n1742), .Z(n1450) );
  ND2 U1682 ( .A(n1703), .B(n1450), .Z(n1110) );
  EO1 U1683 ( .A(n1503), .B(n1451), .C(\reg_instance/rgpio_eclk [6]), .D(n1503), .Z(n1109) );
  EO1 U1684 ( .A(n1504), .B(n1451), .C(\reg_instance/rgpio_aux [6]), .D(n1504), 
        .Z(n1108) );
  EO1 U1685 ( .A(n1505), .B(n1451), .C(\reg_instance/rgpio_ptrig [6]), .D(
        n1505), .Z(n1107) );
  AO2 U1686 ( .A(n1453), .B(n1451), .C(n1772), .D(n1506), .Z(n1106) );
  EO1 U1687 ( .A(n1507), .B(n1451), .C(\reg_instance/rgpio_inte [6]), .D(n1507), .Z(n1105) );
  AO2 U1688 ( .A(n1509), .B(n1451), .C(n1788), .D(n1462), .Z(n1104) );
  ND2 U1689 ( .A(sys_rst), .B(PWDATA[7]), .Z(n1454) );
  OR2P U1690 ( .A(n1742), .B(n1454), .Z(n1697) );
  ND2 U1691 ( .A(\reg_instance/rgpio_nec [7]), .B(n1742), .Z(n1452) );
  ND2 U1692 ( .A(n1697), .B(n1452), .Z(n1103) );
  EO1 U1693 ( .A(n1503), .B(n1454), .C(\reg_instance/rgpio_eclk [7]), .D(n1503), .Z(n1102) );
  EO1 U1694 ( .A(n1504), .B(n1454), .C(\reg_instance/rgpio_aux [7]), .D(n1504), 
        .Z(n1101) );
  EO1 U1695 ( .A(n1505), .B(n1454), .C(\reg_instance/rgpio_ptrig [7]), .D(
        n1505), .Z(n1100) );
  AO2 U1696 ( .A(n1453), .B(n1454), .C(n1771), .D(n1506), .Z(n1099) );
  EO1 U1697 ( .A(n1507), .B(n1454), .C(\reg_instance/rgpio_inte [7]), .D(n1507), .Z(n1098) );
  AO2 U1698 ( .A(n1509), .B(n1454), .C(n1789), .D(n1462), .Z(n1097) );
  ND2 U1699 ( .A(sys_rst), .B(PWDATA[8]), .Z(n1456) );
  OR2P U1700 ( .A(n1742), .B(n1456), .Z(n1691) );
  ND2 U1701 ( .A(\reg_instance/rgpio_nec [8]), .B(n1742), .Z(n1455) );
  ND2 U1702 ( .A(n1691), .B(n1455), .Z(n1096) );
  EO1 U1703 ( .A(n1503), .B(n1456), .C(\reg_instance/rgpio_eclk [8]), .D(n1503), .Z(n1095) );
  EO1 U1704 ( .A(n1504), .B(n1456), .C(\reg_instance/rgpio_aux [8]), .D(n1504), 
        .Z(n1094) );
  EO1 U1705 ( .A(n1505), .B(n1456), .C(\reg_instance/rgpio_ptrig [8]), .D(
        n1505), .Z(n1093) );
  AO2 U1706 ( .A(n1453), .B(n1456), .C(n1770), .D(n1506), .Z(n1092) );
  EO1 U1707 ( .A(n1507), .B(n1456), .C(\reg_instance/rgpio_inte [8]), .D(n1507), .Z(n1091) );
  AO2 U1708 ( .A(n1509), .B(n1456), .C(n1790), .D(n1462), .Z(n1090) );
  ND2 U1709 ( .A(sys_rst), .B(PWDATA[9]), .Z(n1458) );
  OR2P U1710 ( .A(n1742), .B(n1458), .Z(n1685) );
  ND2 U1711 ( .A(\reg_instance/rgpio_nec [9]), .B(n1742), .Z(n1457) );
  ND2 U1712 ( .A(n1685), .B(n1457), .Z(n1089) );
  EO1 U1713 ( .A(n1503), .B(n1458), .C(\reg_instance/rgpio_eclk [9]), .D(n1503), .Z(n1088) );
  EO1 U1714 ( .A(n1504), .B(n1458), .C(\reg_instance/rgpio_aux [9]), .D(n1504), 
        .Z(n1087) );
  EO1 U1715 ( .A(n1505), .B(n1458), .C(\reg_instance/rgpio_ptrig [9]), .D(
        n1505), .Z(n1086) );
  AO2 U1716 ( .A(n1453), .B(n1458), .C(n1769), .D(n1506), .Z(n1085) );
  EO1 U1717 ( .A(n1507), .B(n1458), .C(\reg_instance/rgpio_inte [9]), .D(n1507), .Z(n1084) );
  AO2 U1718 ( .A(n1509), .B(n1458), .C(n1791), .D(n1462), .Z(n1083) );
  ND2 U1719 ( .A(sys_rst), .B(PWDATA[10]), .Z(n1460) );
  OR2P U1720 ( .A(n1742), .B(n1460), .Z(n1679) );
  ND2 U1721 ( .A(\reg_instance/rgpio_nec [10]), .B(n1742), .Z(n1459) );
  ND2 U1722 ( .A(n1679), .B(n1459), .Z(n1082) );
  EO1 U1723 ( .A(n1503), .B(n1460), .C(\reg_instance/rgpio_eclk [10]), .D(
        n1503), .Z(n1081) );
  EO1 U1724 ( .A(n1504), .B(n1460), .C(\reg_instance/rgpio_aux [10]), .D(n1504), .Z(n1080) );
  EO1 U1725 ( .A(n1505), .B(n1460), .C(\reg_instance/rgpio_ptrig [10]), .D(
        n1505), .Z(n1079) );
  AO2 U1726 ( .A(n1453), .B(n1460), .C(n1768), .D(n1506), .Z(n1078) );
  EO1 U1727 ( .A(n1507), .B(n1460), .C(\reg_instance/rgpio_inte [10]), .D(
        n1507), .Z(n1077) );
  AO2 U1728 ( .A(n1509), .B(n1460), .C(n1792), .D(n1462), .Z(n1076) );
  ND2 U1729 ( .A(sys_rst), .B(PWDATA[11]), .Z(n1463) );
  OR2P U1730 ( .A(n1742), .B(n1463), .Z(n1673) );
  ND2 U1731 ( .A(\reg_instance/rgpio_nec [11]), .B(n1742), .Z(n1461) );
  ND2 U1732 ( .A(n1673), .B(n1461), .Z(n1075) );
  EO1 U1733 ( .A(n1503), .B(n1463), .C(\reg_instance/rgpio_eclk [11]), .D(
        n1503), .Z(n1074) );
  EO1 U1734 ( .A(n1504), .B(n1463), .C(\reg_instance/rgpio_aux [11]), .D(n1504), .Z(n1073) );
  EO1 U1735 ( .A(n1505), .B(n1463), .C(\reg_instance/rgpio_ptrig [11]), .D(
        n1505), .Z(n1072) );
  AO2 U1736 ( .A(n1453), .B(n1463), .C(n1767), .D(n1506), .Z(n1071) );
  EO1 U1737 ( .A(n1507), .B(n1463), .C(\reg_instance/rgpio_inte [11]), .D(
        n1507), .Z(n1070) );
  AO2 U1738 ( .A(n1509), .B(n1463), .C(n1793), .D(n1462), .Z(n1069) );
  ND2 U1739 ( .A(sys_rst), .B(PWDATA[12]), .Z(n1465) );
  OR2P U1740 ( .A(n1742), .B(n1465), .Z(n1667) );
  ND2 U1741 ( .A(\reg_instance/rgpio_nec [12]), .B(n1742), .Z(n1464) );
  ND2 U1742 ( .A(n1667), .B(n1464), .Z(n1068) );
  EO1 U1743 ( .A(n1503), .B(n1465), .C(\reg_instance/rgpio_eclk [12]), .D(
        n1503), .Z(n1067) );
  EO1 U1744 ( .A(n1504), .B(n1465), .C(\reg_instance/rgpio_aux [12]), .D(n1504), .Z(n1066) );
  EO1 U1745 ( .A(n1505), .B(n1465), .C(\reg_instance/rgpio_ptrig [12]), .D(
        n1505), .Z(n1065) );
  AO2 U1746 ( .A(n1453), .B(n1465), .C(n1766), .D(n1506), .Z(n1064) );
  EO1 U1747 ( .A(n1507), .B(n1465), .C(\reg_instance/rgpio_inte [12]), .D(
        n1507), .Z(n1063) );
  AO2 U1748 ( .A(n1509), .B(n1465), .C(n1794), .D(n1462), .Z(n1062) );
  ND2 U1749 ( .A(sys_rst), .B(PWDATA[13]), .Z(n1467) );
  OR2P U1750 ( .A(n1742), .B(n1467), .Z(n1661) );
  ND2 U1751 ( .A(\reg_instance/rgpio_nec [13]), .B(n1742), .Z(n1466) );
  ND2 U1752 ( .A(n1661), .B(n1466), .Z(n1061) );
  EO1 U1753 ( .A(n1503), .B(n1467), .C(\reg_instance/rgpio_eclk [13]), .D(
        n1503), .Z(n1060) );
  EO1 U1754 ( .A(n1504), .B(n1467), .C(\reg_instance/rgpio_aux [13]), .D(n1504), .Z(n1059) );
  EO1 U1755 ( .A(n1505), .B(n1467), .C(\reg_instance/rgpio_ptrig [13]), .D(
        n1505), .Z(n1058) );
  AO2 U1756 ( .A(n1453), .B(n1467), .C(n1765), .D(n1506), .Z(n1057) );
  EO1 U1757 ( .A(n1507), .B(n1467), .C(\reg_instance/rgpio_inte [13]), .D(
        n1507), .Z(n1056) );
  AO2 U1758 ( .A(n1509), .B(n1467), .C(n1795), .D(n1462), .Z(n1055) );
  ND2 U1759 ( .A(sys_rst), .B(PWDATA[14]), .Z(n1469) );
  OR2P U1760 ( .A(n1742), .B(n1469), .Z(n1655) );
  ND2 U1761 ( .A(\reg_instance/rgpio_nec [14]), .B(n1742), .Z(n1468) );
  ND2 U1762 ( .A(n1655), .B(n1468), .Z(n1054) );
  EO1 U1763 ( .A(n1503), .B(n1469), .C(\reg_instance/rgpio_eclk [14]), .D(
        n1503), .Z(n1053) );
  EO1 U1764 ( .A(n1504), .B(n1469), .C(\reg_instance/rgpio_aux [14]), .D(n1504), .Z(n1052) );
  EO1 U1765 ( .A(n1505), .B(n1469), .C(\reg_instance/rgpio_ptrig [14]), .D(
        n1505), .Z(n1051) );
  AO2 U1766 ( .A(n1453), .B(n1469), .C(n1764), .D(n1506), .Z(n1050) );
  EO1 U1767 ( .A(n1507), .B(n1469), .C(\reg_instance/rgpio_inte [14]), .D(
        n1507), .Z(n1049) );
  AO2 U1768 ( .A(n1509), .B(n1469), .C(n1796), .D(n1462), .Z(n1048) );
  ND2 U1769 ( .A(sys_rst), .B(PWDATA[15]), .Z(n1471) );
  OR2P U1770 ( .A(n1742), .B(n1471), .Z(n1649) );
  ND2 U1771 ( .A(\reg_instance/rgpio_nec [15]), .B(n1742), .Z(n1470) );
  ND2 U1772 ( .A(n1649), .B(n1470), .Z(n1047) );
  EO1 U1773 ( .A(n1503), .B(n1471), .C(\reg_instance/rgpio_eclk [15]), .D(
        n1503), .Z(n1046) );
  EO1 U1774 ( .A(n1504), .B(n1471), .C(\reg_instance/rgpio_aux [15]), .D(n1504), .Z(n1045) );
  EO1 U1775 ( .A(n1505), .B(n1471), .C(\reg_instance/rgpio_ptrig [15]), .D(
        n1505), .Z(n1044) );
  AO2 U1776 ( .A(n1453), .B(n1471), .C(n1763), .D(n1506), .Z(n1043) );
  EO1 U1777 ( .A(n1507), .B(n1471), .C(\reg_instance/rgpio_inte [15]), .D(
        n1507), .Z(n1042) );
  AO2 U1778 ( .A(n1509), .B(n1471), .C(n1797), .D(n1462), .Z(n1041) );
  ND2 U1779 ( .A(sys_rst), .B(PWDATA[16]), .Z(n1473) );
  OR2P U1780 ( .A(n1742), .B(n1473), .Z(n1643) );
  ND2 U1781 ( .A(\reg_instance/rgpio_nec [16]), .B(n1742), .Z(n1472) );
  ND2 U1782 ( .A(n1643), .B(n1472), .Z(n1040) );
  EO1 U1783 ( .A(n1503), .B(n1473), .C(\reg_instance/rgpio_eclk [16]), .D(
        n1503), .Z(n1039) );
  EO1 U1784 ( .A(n1504), .B(n1473), .C(\reg_instance/rgpio_aux [16]), .D(n1504), .Z(n1038) );
  EO1 U1785 ( .A(n1505), .B(n1473), .C(\reg_instance/rgpio_ptrig [16]), .D(
        n1505), .Z(n1037) );
  AO2 U1786 ( .A(n1453), .B(n1473), .C(n1762), .D(n1506), .Z(n1036) );
  EO1 U1787 ( .A(n1507), .B(n1473), .C(\reg_instance/rgpio_inte [16]), .D(
        n1507), .Z(n1035) );
  AO2 U1788 ( .A(n1509), .B(n1473), .C(n1798), .D(n1462), .Z(n1034) );
  ND2 U1789 ( .A(sys_rst), .B(PWDATA[17]), .Z(n1475) );
  OR2P U1790 ( .A(n1742), .B(n1475), .Z(n1637) );
  ND2 U1791 ( .A(\reg_instance/rgpio_nec [17]), .B(n1742), .Z(n1474) );
  ND2 U1792 ( .A(n1637), .B(n1474), .Z(n1033) );
  EO1 U1793 ( .A(n1503), .B(n1475), .C(\reg_instance/rgpio_eclk [17]), .D(
        n1503), .Z(n1032) );
  EO1 U1794 ( .A(n1504), .B(n1475), .C(\reg_instance/rgpio_aux [17]), .D(n1504), .Z(n1031) );
  EO1 U1795 ( .A(n1505), .B(n1475), .C(\reg_instance/rgpio_ptrig [17]), .D(
        n1505), .Z(n1030) );
  AO2 U1796 ( .A(n1453), .B(n1475), .C(n1761), .D(n1506), .Z(n1029) );
  EO1 U1797 ( .A(n1507), .B(n1475), .C(\reg_instance/rgpio_inte [17]), .D(
        n1507), .Z(n1028) );
  AO2 U1798 ( .A(n1509), .B(n1475), .C(n1799), .D(n1462), .Z(n1027) );
  ND2 U1799 ( .A(sys_rst), .B(PWDATA[18]), .Z(n1477) );
  OR2P U1800 ( .A(n1742), .B(n1477), .Z(n1631) );
  ND2 U1801 ( .A(\reg_instance/rgpio_nec [18]), .B(n1742), .Z(n1476) );
  ND2 U1802 ( .A(n1631), .B(n1476), .Z(n1026) );
  EO1 U1803 ( .A(n1503), .B(n1477), .C(\reg_instance/rgpio_eclk [18]), .D(
        n1503), .Z(n1025) );
  EO1 U1804 ( .A(n1504), .B(n1477), .C(\reg_instance/rgpio_aux [18]), .D(n1504), .Z(n1024) );
  EO1 U1805 ( .A(n1505), .B(n1477), .C(\reg_instance/rgpio_ptrig [18]), .D(
        n1505), .Z(n1023) );
  AO2 U1806 ( .A(n1453), .B(n1477), .C(n1760), .D(n1506), .Z(n1022) );
  EO1 U1807 ( .A(n1507), .B(n1477), .C(\reg_instance/rgpio_inte [18]), .D(
        n1507), .Z(n1021) );
  AO2 U1808 ( .A(n1509), .B(n1477), .C(n1800), .D(n1462), .Z(n1020) );
  ND2 U1809 ( .A(sys_rst), .B(PWDATA[19]), .Z(n1479) );
  OR2P U1810 ( .A(n1742), .B(n1479), .Z(n1625) );
  ND2 U1811 ( .A(\reg_instance/rgpio_nec [19]), .B(n1742), .Z(n1478) );
  ND2 U1812 ( .A(n1625), .B(n1478), .Z(n1019) );
  EO1 U1813 ( .A(n1503), .B(n1479), .C(\reg_instance/rgpio_eclk [19]), .D(
        n1503), .Z(n1018) );
  EO1 U1814 ( .A(n1504), .B(n1479), .C(\reg_instance/rgpio_aux [19]), .D(n1504), .Z(n1017) );
  EO1 U1815 ( .A(n1505), .B(n1479), .C(\reg_instance/rgpio_ptrig [19]), .D(
        n1505), .Z(n1016) );
  AO2 U1816 ( .A(n1453), .B(n1479), .C(n1759), .D(n1506), .Z(n1015) );
  EO1 U1817 ( .A(n1507), .B(n1479), .C(\reg_instance/rgpio_inte [19]), .D(
        n1507), .Z(n1014) );
  AO2 U1818 ( .A(n1509), .B(n1479), .C(n1801), .D(n1462), .Z(n1013) );
  ND2 U1819 ( .A(sys_rst), .B(PWDATA[20]), .Z(n1481) );
  OR2P U1820 ( .A(n1742), .B(n1481), .Z(n1619) );
  ND2 U1821 ( .A(\reg_instance/rgpio_nec [20]), .B(n1742), .Z(n1480) );
  ND2 U1822 ( .A(n1619), .B(n1480), .Z(n1012) );
  EO1 U1823 ( .A(n1503), .B(n1481), .C(\reg_instance/rgpio_eclk [20]), .D(
        n1503), .Z(n1011) );
  EO1 U1824 ( .A(n1504), .B(n1481), .C(\reg_instance/rgpio_aux [20]), .D(n1504), .Z(n1010) );
  EO1 U1825 ( .A(n1505), .B(n1481), .C(\reg_instance/rgpio_ptrig [20]), .D(
        n1505), .Z(n1009) );
  AO2 U1826 ( .A(n1453), .B(n1481), .C(n1758), .D(n1506), .Z(n1008) );
  EO1 U1827 ( .A(n1507), .B(n1481), .C(\reg_instance/rgpio_inte [20]), .D(
        n1507), .Z(n1007) );
  AO2 U1828 ( .A(n1509), .B(n1481), .C(n1802), .D(n1462), .Z(n1006) );
  ND2 U1829 ( .A(sys_rst), .B(PWDATA[21]), .Z(n1483) );
  OR2P U1830 ( .A(n1742), .B(n1483), .Z(n1613) );
  ND2 U1831 ( .A(\reg_instance/rgpio_nec [21]), .B(n1742), .Z(n1482) );
  ND2 U1832 ( .A(n1613), .B(n1482), .Z(n1005) );
  EO1 U1833 ( .A(n1503), .B(n1483), .C(\reg_instance/rgpio_eclk [21]), .D(
        n1503), .Z(n1004) );
  EO1 U1834 ( .A(n1504), .B(n1483), .C(\reg_instance/rgpio_aux [21]), .D(n1504), .Z(n1003) );
  EO1 U1835 ( .A(n1505), .B(n1483), .C(\reg_instance/rgpio_ptrig [21]), .D(
        n1505), .Z(n1002) );
  AO2 U1836 ( .A(n1453), .B(n1483), .C(n1757), .D(n1506), .Z(n1001) );
  EO1 U1837 ( .A(n1507), .B(n1483), .C(\reg_instance/rgpio_inte [21]), .D(
        n1507), .Z(n1000) );
  AO2 U1838 ( .A(n1509), .B(n1483), .C(n1803), .D(n1462), .Z(n999) );
  ND2 U1839 ( .A(sys_rst), .B(PWDATA[22]), .Z(n1485) );
  OR2P U1840 ( .A(n1742), .B(n1485), .Z(n1607) );
  ND2 U1841 ( .A(\reg_instance/rgpio_nec [22]), .B(n1742), .Z(n1484) );
  ND2 U1842 ( .A(n1607), .B(n1484), .Z(n998) );
  EO1 U1843 ( .A(n1503), .B(n1485), .C(\reg_instance/rgpio_eclk [22]), .D(
        n1503), .Z(n997) );
  EO1 U1844 ( .A(n1504), .B(n1485), .C(\reg_instance/rgpio_aux [22]), .D(n1504), .Z(n996) );
  EO1 U1845 ( .A(n1505), .B(n1485), .C(\reg_instance/rgpio_ptrig [22]), .D(
        n1505), .Z(n995) );
  AO2 U1846 ( .A(n1453), .B(n1485), .C(n1756), .D(n1506), .Z(n994) );
  EO1 U1847 ( .A(n1507), .B(n1485), .C(\reg_instance/rgpio_inte [22]), .D(
        n1507), .Z(n993) );
  AO2 U1848 ( .A(n1509), .B(n1485), .C(n1804), .D(n1462), .Z(n992) );
  ND2 U1849 ( .A(sys_rst), .B(PWDATA[23]), .Z(n1487) );
  OR2P U1850 ( .A(n1742), .B(n1487), .Z(n1601) );
  ND2 U1851 ( .A(\reg_instance/rgpio_nec [23]), .B(n1742), .Z(n1486) );
  ND2 U1852 ( .A(n1601), .B(n1486), .Z(n991) );
  EO1 U1853 ( .A(n1503), .B(n1487), .C(\reg_instance/rgpio_eclk [23]), .D(
        n1503), .Z(n990) );
  EO1 U1854 ( .A(n1504), .B(n1487), .C(\reg_instance/rgpio_aux [23]), .D(n1504), .Z(n989) );
  EO1 U1855 ( .A(n1505), .B(n1487), .C(\reg_instance/rgpio_ptrig [23]), .D(
        n1505), .Z(n988) );
  AO2 U1856 ( .A(n1453), .B(n1487), .C(n1755), .D(n1506), .Z(n987) );
  EO1 U1857 ( .A(n1507), .B(n1487), .C(\reg_instance/rgpio_inte [23]), .D(
        n1507), .Z(n986) );
  AO2 U1858 ( .A(n1509), .B(n1487), .C(n1805), .D(n1462), .Z(n985) );
  ND2 U1859 ( .A(sys_rst), .B(PWDATA[24]), .Z(n1489) );
  OR2P U1860 ( .A(n1742), .B(n1489), .Z(n1595) );
  ND2 U1861 ( .A(\reg_instance/rgpio_nec [24]), .B(n1742), .Z(n1488) );
  ND2 U1862 ( .A(n1595), .B(n1488), .Z(n984) );
  EO1 U1863 ( .A(n1503), .B(n1489), .C(\reg_instance/rgpio_eclk [24]), .D(
        n1503), .Z(n983) );
  EO1 U1864 ( .A(n1504), .B(n1489), .C(\reg_instance/rgpio_aux [24]), .D(n1504), .Z(n982) );
  EO1 U1865 ( .A(n1505), .B(n1489), .C(\reg_instance/rgpio_ptrig [24]), .D(
        n1505), .Z(n981) );
  AO2 U1866 ( .A(n1453), .B(n1489), .C(n1754), .D(n1506), .Z(n980) );
  EO1 U1867 ( .A(n1507), .B(n1489), .C(\reg_instance/rgpio_inte [24]), .D(
        n1507), .Z(n979) );
  AO2 U1868 ( .A(n1509), .B(n1489), .C(n1806), .D(n1462), .Z(n978) );
  ND2 U1869 ( .A(sys_rst), .B(PWDATA[25]), .Z(n1491) );
  OR2P U1870 ( .A(n1742), .B(n1491), .Z(n1589) );
  ND2 U1871 ( .A(\reg_instance/rgpio_nec [25]), .B(n1742), .Z(n1490) );
  ND2 U1872 ( .A(n1589), .B(n1490), .Z(n977) );
  EO1 U1873 ( .A(n1503), .B(n1491), .C(\reg_instance/rgpio_eclk [25]), .D(
        n1503), .Z(n976) );
  EO1 U1874 ( .A(n1504), .B(n1491), .C(\reg_instance/rgpio_aux [25]), .D(n1504), .Z(n975) );
  EO1 U1875 ( .A(n1505), .B(n1491), .C(\reg_instance/rgpio_ptrig [25]), .D(
        n1505), .Z(n974) );
  AO2 U1876 ( .A(n1453), .B(n1491), .C(n1753), .D(n1506), .Z(n973) );
  EO1 U1877 ( .A(n1507), .B(n1491), .C(\reg_instance/rgpio_inte [25]), .D(
        n1507), .Z(n972) );
  AO2 U1878 ( .A(n1509), .B(n1491), .C(n1807), .D(n1462), .Z(n971) );
  ND2 U1879 ( .A(sys_rst), .B(PWDATA[26]), .Z(n1493) );
  OR2P U1880 ( .A(n1742), .B(n1493), .Z(n1583) );
  ND2 U1881 ( .A(\reg_instance/rgpio_nec [26]), .B(n1742), .Z(n1492) );
  ND2 U1882 ( .A(n1583), .B(n1492), .Z(n970) );
  EO1 U1883 ( .A(n1503), .B(n1493), .C(\reg_instance/rgpio_eclk [26]), .D(
        n1503), .Z(n969) );
  EO1 U1884 ( .A(n1504), .B(n1493), .C(\reg_instance/rgpio_aux [26]), .D(n1504), .Z(n968) );
  EO1 U1885 ( .A(n1505), .B(n1493), .C(\reg_instance/rgpio_ptrig [26]), .D(
        n1505), .Z(n967) );
  AO2 U1886 ( .A(n1453), .B(n1493), .C(n1752), .D(n1506), .Z(n966) );
  EO1 U1887 ( .A(n1507), .B(n1493), .C(\reg_instance/rgpio_inte [26]), .D(
        n1507), .Z(n965) );
  AO2 U1888 ( .A(n1509), .B(n1493), .C(n1808), .D(n1462), .Z(n964) );
  ND2 U1889 ( .A(sys_rst), .B(PWDATA[27]), .Z(n1495) );
  OR2P U1890 ( .A(n1742), .B(n1495), .Z(n1577) );
  ND2 U1891 ( .A(\reg_instance/rgpio_nec [27]), .B(n1742), .Z(n1494) );
  ND2 U1892 ( .A(n1577), .B(n1494), .Z(n963) );
  EO1 U1893 ( .A(n1503), .B(n1495), .C(\reg_instance/rgpio_eclk [27]), .D(
        n1503), .Z(n962) );
  EO1 U1894 ( .A(n1504), .B(n1495), .C(\reg_instance/rgpio_aux [27]), .D(n1504), .Z(n961) );
  EO1 U1895 ( .A(n1505), .B(n1495), .C(\reg_instance/rgpio_ptrig [27]), .D(
        n1505), .Z(n960) );
  AO2 U1896 ( .A(n1453), .B(n1495), .C(n1751), .D(n1506), .Z(n959) );
  EO1 U1897 ( .A(n1507), .B(n1495), .C(\reg_instance/rgpio_inte [27]), .D(
        n1507), .Z(n958) );
  AO2 U1898 ( .A(n1509), .B(n1495), .C(n1809), .D(n1462), .Z(n957) );
  ND2 U1899 ( .A(sys_rst), .B(PWDATA[28]), .Z(n1497) );
  OR2P U1900 ( .A(n1742), .B(n1497), .Z(n1571) );
  ND2 U1901 ( .A(\reg_instance/rgpio_nec [28]), .B(n1742), .Z(n1496) );
  ND2 U1902 ( .A(n1571), .B(n1496), .Z(n956) );
  EO1 U1903 ( .A(n1503), .B(n1497), .C(\reg_instance/rgpio_eclk [28]), .D(
        n1503), .Z(n955) );
  EO1 U1904 ( .A(n1504), .B(n1497), .C(\reg_instance/rgpio_aux [28]), .D(n1504), .Z(n954) );
  EO1 U1905 ( .A(n1505), .B(n1497), .C(\reg_instance/rgpio_ptrig [28]), .D(
        n1505), .Z(n953) );
  AO2 U1906 ( .A(n1453), .B(n1497), .C(n1750), .D(n1506), .Z(n952) );
  EO1 U1907 ( .A(n1507), .B(n1497), .C(\reg_instance/rgpio_inte [28]), .D(
        n1507), .Z(n951) );
  AO2 U1908 ( .A(n1509), .B(n1497), .C(n1810), .D(n1462), .Z(n950) );
  ND2 U1909 ( .A(sys_rst), .B(PWDATA[29]), .Z(n1499) );
  OR2P U1910 ( .A(n1742), .B(n1499), .Z(n1565) );
  ND2 U1911 ( .A(\reg_instance/rgpio_nec [29]), .B(n1742), .Z(n1498) );
  ND2 U1912 ( .A(n1565), .B(n1498), .Z(n949) );
  EO1 U1913 ( .A(n1503), .B(n1499), .C(\reg_instance/rgpio_eclk [29]), .D(
        n1503), .Z(n948) );
  EO1 U1914 ( .A(n1504), .B(n1499), .C(\reg_instance/rgpio_aux [29]), .D(n1504), .Z(n947) );
  EO1 U1915 ( .A(n1505), .B(n1499), .C(\reg_instance/rgpio_ptrig [29]), .D(
        n1505), .Z(n946) );
  AO2 U1916 ( .A(n1453), .B(n1499), .C(n1749), .D(n1506), .Z(n945) );
  EO1 U1917 ( .A(n1507), .B(n1499), .C(\reg_instance/rgpio_inte [29]), .D(
        n1507), .Z(n944) );
  AO2 U1918 ( .A(n1509), .B(n1499), .C(n1811), .D(n1462), .Z(n943) );
  ND2 U1919 ( .A(sys_rst), .B(PWDATA[30]), .Z(n1501) );
  OR2P U1920 ( .A(n1742), .B(n1501), .Z(n1559) );
  ND2 U1921 ( .A(\reg_instance/rgpio_nec [30]), .B(n1742), .Z(n1500) );
  ND2 U1922 ( .A(n1559), .B(n1500), .Z(n942) );
  EO1 U1923 ( .A(n1503), .B(n1501), .C(\reg_instance/rgpio_eclk [30]), .D(
        n1503), .Z(n941) );
  EO1 U1924 ( .A(n1504), .B(n1501), .C(\reg_instance/rgpio_aux [30]), .D(n1504), .Z(n940) );
  EO1 U1925 ( .A(n1505), .B(n1501), .C(\reg_instance/rgpio_ptrig [30]), .D(
        n1505), .Z(n939) );
  AO2 U1926 ( .A(n1453), .B(n1501), .C(n1748), .D(n1506), .Z(n938) );
  EO1 U1927 ( .A(n1507), .B(n1501), .C(\reg_instance/rgpio_inte [30]), .D(
        n1507), .Z(n937) );
  AO2 U1928 ( .A(n1509), .B(n1501), .C(n1812), .D(n1462), .Z(n936) );
  ND2 U1929 ( .A(sys_rst), .B(PWDATA[31]), .Z(n1508) );
  OR2P U1930 ( .A(n1742), .B(n1508), .Z(n1535) );
  ND2 U1931 ( .A(\reg_instance/rgpio_nec [31]), .B(n1742), .Z(n1502) );
  ND2 U1932 ( .A(n1535), .B(n1502), .Z(n935) );
  EO1 U1933 ( .A(n1503), .B(n1508), .C(\reg_instance/rgpio_eclk [31]), .D(
        n1503), .Z(n934) );
  EO1 U1934 ( .A(n1504), .B(n1508), .C(\reg_instance/rgpio_aux [31]), .D(n1504), .Z(n933) );
  EO1 U1935 ( .A(n1505), .B(n1508), .C(\reg_instance/rgpio_ptrig [31]), .D(
        n1505), .Z(n932) );
  AO2 U1936 ( .A(n1453), .B(n1508), .C(n1747), .D(n1506), .Z(n931) );
  EO1 U1937 ( .A(n1507), .B(n1508), .C(\reg_instance/rgpio_inte [31]), .D(
        n1507), .Z(n930) );
  AO2 U1938 ( .A(n1509), .B(n1508), .C(n1813), .D(n1462), .Z(n929) );
  NR4 U1939 ( .A(\reg_instance/rgpio_eclk [11]), .B(
        \reg_instance/rgpio_eclk [10]), .C(\reg_instance/rgpio_eclk [9]), .D(
        \reg_instance/rgpio_eclk [8]), .Z(n1513) );
  NR4 U1940 ( .A(\reg_instance/rgpio_eclk [15]), .B(
        \reg_instance/rgpio_eclk [14]), .C(\reg_instance/rgpio_eclk [13]), .D(
        \reg_instance/rgpio_eclk [12]), .Z(n1512) );
  NR4 U1941 ( .A(\reg_instance/rgpio_eclk [3]), .B(
        \reg_instance/rgpio_eclk [2]), .C(\reg_instance/rgpio_eclk [1]), .D(
        \reg_instance/rgpio_eclk [0]), .Z(n1511) );
  NR4 U1942 ( .A(\reg_instance/rgpio_eclk [7]), .B(
        \reg_instance/rgpio_eclk [6]), .C(\reg_instance/rgpio_eclk [5]), .D(
        \reg_instance/rgpio_eclk [4]), .Z(n1510) );
  ND4 U1943 ( .A(n1513), .B(n1512), .C(n1511), .D(n1510), .Z(n1519) );
  NR4 U1944 ( .A(\reg_instance/rgpio_eclk [27]), .B(
        \reg_instance/rgpio_eclk [26]), .C(\reg_instance/rgpio_eclk [25]), .D(
        \reg_instance/rgpio_eclk [24]), .Z(n1517) );
  NR4 U1945 ( .A(\reg_instance/rgpio_eclk [31]), .B(
        \reg_instance/rgpio_eclk [30]), .C(\reg_instance/rgpio_eclk [29]), .D(
        \reg_instance/rgpio_eclk [28]), .Z(n1516) );
  NR4 U1946 ( .A(\reg_instance/rgpio_eclk [19]), .B(
        \reg_instance/rgpio_eclk [18]), .C(\reg_instance/rgpio_eclk [17]), .D(
        \reg_instance/rgpio_eclk [16]), .Z(n1515) );
  NR4 U1947 ( .A(\reg_instance/rgpio_eclk [23]), .B(
        \reg_instance/rgpio_eclk [22]), .C(\reg_instance/rgpio_eclk [21]), .D(
        \reg_instance/rgpio_eclk [20]), .Z(n1514) );
  ND4 U1948 ( .A(n1517), .B(n1516), .C(n1515), .D(n1514), .Z(n1518) );
  NR2 U1949 ( .A(n1519), .B(n1518), .Z(n1737) );
  NR4 U1950 ( .A(\reg_instance/rgpio_nec [11]), .B(
        \reg_instance/rgpio_nec [10]), .C(\reg_instance/rgpio_nec [9]), .D(
        \reg_instance/rgpio_nec [8]), .Z(n1523) );
  NR4 U1951 ( .A(\reg_instance/rgpio_nec [15]), .B(
        \reg_instance/rgpio_nec [14]), .C(\reg_instance/rgpio_nec [13]), .D(
        \reg_instance/rgpio_nec [12]), .Z(n1522) );
  NR4 U1952 ( .A(\reg_instance/rgpio_nec [3]), .B(\reg_instance/rgpio_nec [2]), 
        .C(\reg_instance/rgpio_nec [1]), .D(\reg_instance/rgpio_nec [0]), .Z(
        n1521) );
  NR4 U1953 ( .A(\reg_instance/rgpio_nec [7]), .B(\reg_instance/rgpio_nec [6]), 
        .C(\reg_instance/rgpio_nec [5]), .D(\reg_instance/rgpio_nec [4]), .Z(
        n1520) );
  ND4 U1954 ( .A(n1523), .B(n1522), .C(n1521), .D(n1520), .Z(n1529) );
  NR4 U1955 ( .A(\reg_instance/rgpio_nec [27]), .B(
        \reg_instance/rgpio_nec [26]), .C(\reg_instance/rgpio_nec [25]), .D(
        \reg_instance/rgpio_nec [24]), .Z(n1527) );
  NR4 U1956 ( .A(\reg_instance/rgpio_nec [31]), .B(
        \reg_instance/rgpio_nec [30]), .C(\reg_instance/rgpio_nec [29]), .D(
        \reg_instance/rgpio_nec [28]), .Z(n1526) );
  NR4 U1957 ( .A(\reg_instance/rgpio_nec [19]), .B(
        \reg_instance/rgpio_nec [18]), .C(\reg_instance/rgpio_nec [17]), .D(
        \reg_instance/rgpio_nec [16]), .Z(n1525) );
  NR4 U1958 ( .A(\reg_instance/rgpio_nec [23]), .B(
        \reg_instance/rgpio_nec [22]), .C(\reg_instance/rgpio_nec [21]), .D(
        \reg_instance/rgpio_nec [20]), .Z(n1524) );
  ND4 U1959 ( .A(n1527), .B(n1526), .C(n1525), .D(n1524), .Z(n1528) );
  NR2 U1960 ( .A(n1529), .B(n1528), .Z(n1530) );
  NR2 U1961 ( .A(n1737), .B(n1530), .Z(n1736) );
  AO2 U1962 ( .A(n1737), .B(in_pad_i[31]), .C(n1736), .D(
        \reg_instance/nextc_sampled [31]), .Z(n1533) );
  IVP U1963 ( .A(n1530), .Z(n1531) );
  NR2 U1964 ( .A(n1737), .B(n1531), .Z(n1738) );
  ND2 U1965 ( .A(n1738), .B(\reg_instance/pextc_sampled [31]), .Z(n1532) );
  ND2 U1966 ( .A(n1533), .B(n1532), .Z(\reg_instance/in_mux [31]) );
  MUX21L U1967 ( .A(\reg_instance/rgpio_ptrig [31]), .B(
        \reg_instance/rgpio_in [31]), .S(\reg_instance/in_mux [31]), .Z(n1534)
         );
  AO3 U1968 ( .A(\reg_instance/rgpio_in [31]), .B(
        \reg_instance/rgpio_ptrig [31]), .C(\reg_instance/rgpio_inte [31]), 
        .D(n1534), .Z(n1537) );
  ND2 U1969 ( .A(\reg_instance/rgpio_ctrl [1]), .B(n1742), .Z(n1745) );
  ND2 U1970 ( .A(\reg_instance/rgpio_ints [31]), .B(n1742), .Z(n1536) );
  AO3 U1971 ( .A(n1537), .B(n1745), .C(n1536), .D(n1535), .Z(n928) );
  ND2 U1972 ( .A(n1539), .B(n1538), .Z(n1552) );
  NR2 U1973 ( .A(n1540), .B(n1552), .Z(n927) );
  NR4 U1974 ( .A(\reg_instance/rgpio_ints [23]), .B(
        \reg_instance/rgpio_ints [22]), .C(\reg_instance/rgpio_ints [21]), .D(
        \reg_instance/rgpio_ints [20]), .Z(n1544) );
  NR4 U1975 ( .A(\reg_instance/rgpio_ints [19]), .B(
        \reg_instance/rgpio_ints [18]), .C(\reg_instance/rgpio_ints [17]), .D(
        \reg_instance/rgpio_ints [16]), .Z(n1543) );
  NR4 U1976 ( .A(\reg_instance/rgpio_ints [31]), .B(
        \reg_instance/rgpio_ints [30]), .C(\reg_instance/rgpio_ints [29]), .D(
        \reg_instance/rgpio_ints [28]), .Z(n1542) );
  NR4 U1977 ( .A(\reg_instance/rgpio_ints [27]), .B(
        \reg_instance/rgpio_ints [26]), .C(\reg_instance/rgpio_ints [25]), .D(
        \reg_instance/rgpio_ints [24]), .Z(n1541) );
  ND4 U1978 ( .A(n1544), .B(n1543), .C(n1542), .D(n1541), .Z(n1550) );
  NR4 U1979 ( .A(\reg_instance/rgpio_ints [7]), .B(
        \reg_instance/rgpio_ints [6]), .C(\reg_instance/rgpio_ints [5]), .D(
        \reg_instance/rgpio_ints [4]), .Z(n1548) );
  NR4 U1980 ( .A(\reg_instance/rgpio_ints [3]), .B(
        \reg_instance/rgpio_ints [2]), .C(\reg_instance/rgpio_ints [1]), .D(
        \reg_instance/rgpio_ints [0]), .Z(n1547) );
  NR4 U1981 ( .A(\reg_instance/rgpio_ints [15]), .B(
        \reg_instance/rgpio_ints [14]), .C(\reg_instance/rgpio_ints [13]), .D(
        \reg_instance/rgpio_ints [12]), .Z(n1546) );
  NR4 U1982 ( .A(\reg_instance/rgpio_ints [11]), .B(
        \reg_instance/rgpio_ints [10]), .C(\reg_instance/rgpio_ints [9]), .D(
        \reg_instance/rgpio_ints [8]), .Z(n1545) );
  ND4 U1983 ( .A(n1548), .B(n1547), .C(n1546), .D(n1545), .Z(n1549) );
  NR2 U1984 ( .A(n1550), .B(n1549), .Z(n1551) );
  NR2 U1985 ( .A(n1814), .B(n1551), .Z(IRQ) );
  IVP U1986 ( .A(n1552), .Z(n1555) );
  NR2 U1987 ( .A(\reg_instance/rgpio_ctrl [0]), .B(IRQ), .Z(n1553) );
  AO2 U1988 ( .A(n1555), .B(n1554), .C(n1553), .D(n1552), .Z(n926) );
  AO2 U1989 ( .A(n1737), .B(in_pad_i[30]), .C(n1736), .D(
        \reg_instance/nextc_sampled [30]), .Z(n1557) );
  ND2 U1990 ( .A(n1738), .B(\reg_instance/pextc_sampled [30]), .Z(n1556) );
  ND2 U1991 ( .A(n1557), .B(n1556), .Z(\reg_instance/in_mux [30]) );
  MUX21L U1992 ( .A(\reg_instance/rgpio_ptrig [30]), .B(
        \reg_instance/rgpio_in [30]), .S(\reg_instance/in_mux [30]), .Z(n1558)
         );
  AO3 U1993 ( .A(\reg_instance/rgpio_in [30]), .B(
        \reg_instance/rgpio_ptrig [30]), .C(\reg_instance/rgpio_inte [30]), 
        .D(n1558), .Z(n1561) );
  ND2 U1994 ( .A(\reg_instance/rgpio_ints [30]), .B(n1742), .Z(n1560) );
  AO3 U1995 ( .A(n1561), .B(n1745), .C(n1560), .D(n1559), .Z(n925) );
  AO2 U1996 ( .A(n1737), .B(in_pad_i[29]), .C(n1736), .D(
        \reg_instance/nextc_sampled [29]), .Z(n1563) );
  ND2 U1997 ( .A(n1738), .B(\reg_instance/pextc_sampled [29]), .Z(n1562) );
  ND2 U1998 ( .A(n1563), .B(n1562), .Z(\reg_instance/in_mux [29]) );
  MUX21L U1999 ( .A(\reg_instance/rgpio_ptrig [29]), .B(
        \reg_instance/rgpio_in [29]), .S(\reg_instance/in_mux [29]), .Z(n1564)
         );
  AO3 U2000 ( .A(\reg_instance/rgpio_in [29]), .B(
        \reg_instance/rgpio_ptrig [29]), .C(\reg_instance/rgpio_inte [29]), 
        .D(n1564), .Z(n1567) );
  ND2 U2001 ( .A(\reg_instance/rgpio_ints [29]), .B(n1742), .Z(n1566) );
  AO3 U2002 ( .A(n1567), .B(n1745), .C(n1566), .D(n1565), .Z(n924) );
  AO2 U2003 ( .A(n1737), .B(in_pad_i[28]), .C(n1736), .D(
        \reg_instance/nextc_sampled [28]), .Z(n1569) );
  ND2 U2004 ( .A(n1738), .B(\reg_instance/pextc_sampled [28]), .Z(n1568) );
  ND2 U2005 ( .A(n1569), .B(n1568), .Z(\reg_instance/in_mux [28]) );
  MUX21L U2006 ( .A(\reg_instance/rgpio_ptrig [28]), .B(
        \reg_instance/rgpio_in [28]), .S(\reg_instance/in_mux [28]), .Z(n1570)
         );
  AO3 U2007 ( .A(\reg_instance/rgpio_in [28]), .B(
        \reg_instance/rgpio_ptrig [28]), .C(\reg_instance/rgpio_inte [28]), 
        .D(n1570), .Z(n1573) );
  ND2 U2008 ( .A(\reg_instance/rgpio_ints [28]), .B(n1742), .Z(n1572) );
  AO3 U2009 ( .A(n1573), .B(n1745), .C(n1572), .D(n1571), .Z(n923) );
  AO2 U2010 ( .A(n1737), .B(in_pad_i[27]), .C(n1736), .D(
        \reg_instance/nextc_sampled [27]), .Z(n1575) );
  ND2 U2011 ( .A(n1738), .B(\reg_instance/pextc_sampled [27]), .Z(n1574) );
  ND2 U2012 ( .A(n1575), .B(n1574), .Z(\reg_instance/in_mux [27]) );
  MUX21L U2013 ( .A(\reg_instance/rgpio_ptrig [27]), .B(
        \reg_instance/rgpio_in [27]), .S(\reg_instance/in_mux [27]), .Z(n1576)
         );
  AO3 U2014 ( .A(\reg_instance/rgpio_in [27]), .B(
        \reg_instance/rgpio_ptrig [27]), .C(\reg_instance/rgpio_inte [27]), 
        .D(n1576), .Z(n1579) );
  ND2 U2015 ( .A(\reg_instance/rgpio_ints [27]), .B(n1742), .Z(n1578) );
  AO3 U2016 ( .A(n1579), .B(n1745), .C(n1578), .D(n1577), .Z(n922) );
  AO2 U2017 ( .A(n1737), .B(in_pad_i[26]), .C(n1736), .D(
        \reg_instance/nextc_sampled [26]), .Z(n1581) );
  ND2 U2018 ( .A(n1738), .B(\reg_instance/pextc_sampled [26]), .Z(n1580) );
  ND2 U2019 ( .A(n1581), .B(n1580), .Z(\reg_instance/in_mux [26]) );
  MUX21L U2020 ( .A(\reg_instance/rgpio_ptrig [26]), .B(
        \reg_instance/rgpio_in [26]), .S(\reg_instance/in_mux [26]), .Z(n1582)
         );
  AO3 U2021 ( .A(\reg_instance/rgpio_in [26]), .B(
        \reg_instance/rgpio_ptrig [26]), .C(\reg_instance/rgpio_inte [26]), 
        .D(n1582), .Z(n1585) );
  ND2 U2022 ( .A(\reg_instance/rgpio_ints [26]), .B(n1742), .Z(n1584) );
  AO3 U2023 ( .A(n1585), .B(n1745), .C(n1584), .D(n1583), .Z(n921) );
  AO2 U2024 ( .A(n1737), .B(in_pad_i[25]), .C(n1736), .D(
        \reg_instance/nextc_sampled [25]), .Z(n1587) );
  ND2 U2025 ( .A(n1738), .B(\reg_instance/pextc_sampled [25]), .Z(n1586) );
  ND2 U2026 ( .A(n1587), .B(n1586), .Z(\reg_instance/in_mux [25]) );
  MUX21L U2027 ( .A(\reg_instance/rgpio_ptrig [25]), .B(
        \reg_instance/rgpio_in [25]), .S(\reg_instance/in_mux [25]), .Z(n1588)
         );
  AO3 U2028 ( .A(\reg_instance/rgpio_in [25]), .B(
        \reg_instance/rgpio_ptrig [25]), .C(\reg_instance/rgpio_inte [25]), 
        .D(n1588), .Z(n1591) );
  ND2 U2029 ( .A(\reg_instance/rgpio_ints [25]), .B(n1742), .Z(n1590) );
  AO3 U2030 ( .A(n1591), .B(n1745), .C(n1590), .D(n1589), .Z(n920) );
  AO2 U2031 ( .A(n1737), .B(in_pad_i[24]), .C(n1736), .D(
        \reg_instance/nextc_sampled [24]), .Z(n1593) );
  ND2 U2032 ( .A(n1738), .B(\reg_instance/pextc_sampled [24]), .Z(n1592) );
  ND2 U2033 ( .A(n1593), .B(n1592), .Z(\reg_instance/in_mux [24]) );
  MUX21L U2034 ( .A(\reg_instance/rgpio_ptrig [24]), .B(
        \reg_instance/rgpio_in [24]), .S(\reg_instance/in_mux [24]), .Z(n1594)
         );
  AO3 U2035 ( .A(\reg_instance/rgpio_in [24]), .B(
        \reg_instance/rgpio_ptrig [24]), .C(\reg_instance/rgpio_inte [24]), 
        .D(n1594), .Z(n1597) );
  ND2 U2036 ( .A(\reg_instance/rgpio_ints [24]), .B(n1742), .Z(n1596) );
  AO3 U2037 ( .A(n1597), .B(n1745), .C(n1596), .D(n1595), .Z(n919) );
  AO2 U2038 ( .A(n1737), .B(in_pad_i[23]), .C(n1736), .D(
        \reg_instance/nextc_sampled [23]), .Z(n1599) );
  ND2 U2039 ( .A(n1738), .B(\reg_instance/pextc_sampled [23]), .Z(n1598) );
  ND2 U2040 ( .A(n1599), .B(n1598), .Z(\reg_instance/in_mux [23]) );
  MUX21L U2041 ( .A(\reg_instance/rgpio_ptrig [23]), .B(
        \reg_instance/rgpio_in [23]), .S(\reg_instance/in_mux [23]), .Z(n1600)
         );
  AO3 U2042 ( .A(\reg_instance/rgpio_in [23]), .B(
        \reg_instance/rgpio_ptrig [23]), .C(\reg_instance/rgpio_inte [23]), 
        .D(n1600), .Z(n1603) );
  ND2 U2043 ( .A(\reg_instance/rgpio_ints [23]), .B(n1742), .Z(n1602) );
  AO3 U2044 ( .A(n1603), .B(n1745), .C(n1602), .D(n1601), .Z(n918) );
  AO2 U2045 ( .A(n1737), .B(in_pad_i[22]), .C(n1736), .D(
        \reg_instance/nextc_sampled [22]), .Z(n1605) );
  ND2 U2046 ( .A(n1738), .B(\reg_instance/pextc_sampled [22]), .Z(n1604) );
  ND2 U2047 ( .A(n1605), .B(n1604), .Z(\reg_instance/in_mux [22]) );
  MUX21L U2048 ( .A(\reg_instance/rgpio_ptrig [22]), .B(
        \reg_instance/rgpio_in [22]), .S(\reg_instance/in_mux [22]), .Z(n1606)
         );
  AO3 U2049 ( .A(\reg_instance/rgpio_in [22]), .B(
        \reg_instance/rgpio_ptrig [22]), .C(\reg_instance/rgpio_inte [22]), 
        .D(n1606), .Z(n1609) );
  ND2 U2050 ( .A(\reg_instance/rgpio_ints [22]), .B(n1742), .Z(n1608) );
  AO3 U2051 ( .A(n1609), .B(n1745), .C(n1608), .D(n1607), .Z(n917) );
  AO2 U2052 ( .A(n1737), .B(in_pad_i[21]), .C(n1736), .D(
        \reg_instance/nextc_sampled [21]), .Z(n1611) );
  ND2 U2053 ( .A(n1738), .B(\reg_instance/pextc_sampled [21]), .Z(n1610) );
  ND2 U2054 ( .A(n1611), .B(n1610), .Z(\reg_instance/in_mux [21]) );
  MUX21L U2055 ( .A(\reg_instance/rgpio_ptrig [21]), .B(
        \reg_instance/rgpio_in [21]), .S(\reg_instance/in_mux [21]), .Z(n1612)
         );
  AO3 U2056 ( .A(\reg_instance/rgpio_in [21]), .B(
        \reg_instance/rgpio_ptrig [21]), .C(\reg_instance/rgpio_inte [21]), 
        .D(n1612), .Z(n1615) );
  ND2 U2057 ( .A(\reg_instance/rgpio_ints [21]), .B(n1742), .Z(n1614) );
  AO3 U2058 ( .A(n1615), .B(n1745), .C(n1614), .D(n1613), .Z(n916) );
  AO2 U2059 ( .A(n1737), .B(in_pad_i[20]), .C(n1736), .D(
        \reg_instance/nextc_sampled [20]), .Z(n1617) );
  ND2 U2060 ( .A(n1738), .B(\reg_instance/pextc_sampled [20]), .Z(n1616) );
  ND2 U2061 ( .A(n1617), .B(n1616), .Z(\reg_instance/in_mux [20]) );
  MUX21L U2062 ( .A(\reg_instance/rgpio_ptrig [20]), .B(
        \reg_instance/rgpio_in [20]), .S(\reg_instance/in_mux [20]), .Z(n1618)
         );
  AO3 U2063 ( .A(\reg_instance/rgpio_in [20]), .B(
        \reg_instance/rgpio_ptrig [20]), .C(\reg_instance/rgpio_inte [20]), 
        .D(n1618), .Z(n1621) );
  ND2 U2064 ( .A(\reg_instance/rgpio_ints [20]), .B(n1742), .Z(n1620) );
  AO3 U2065 ( .A(n1621), .B(n1745), .C(n1620), .D(n1619), .Z(n915) );
  AO2 U2066 ( .A(n1737), .B(in_pad_i[19]), .C(n1736), .D(
        \reg_instance/nextc_sampled [19]), .Z(n1623) );
  ND2 U2067 ( .A(n1738), .B(\reg_instance/pextc_sampled [19]), .Z(n1622) );
  ND2 U2068 ( .A(n1623), .B(n1622), .Z(\reg_instance/in_mux [19]) );
  MUX21L U2069 ( .A(\reg_instance/rgpio_ptrig [19]), .B(
        \reg_instance/rgpio_in [19]), .S(\reg_instance/in_mux [19]), .Z(n1624)
         );
  AO3 U2070 ( .A(\reg_instance/rgpio_in [19]), .B(
        \reg_instance/rgpio_ptrig [19]), .C(\reg_instance/rgpio_inte [19]), 
        .D(n1624), .Z(n1627) );
  ND2 U2071 ( .A(\reg_instance/rgpio_ints [19]), .B(n1742), .Z(n1626) );
  AO3 U2072 ( .A(n1627), .B(n1745), .C(n1626), .D(n1625), .Z(n914) );
  AO2 U2073 ( .A(n1737), .B(in_pad_i[18]), .C(n1736), .D(
        \reg_instance/nextc_sampled [18]), .Z(n1629) );
  ND2 U2074 ( .A(n1738), .B(\reg_instance/pextc_sampled [18]), .Z(n1628) );
  ND2 U2075 ( .A(n1629), .B(n1628), .Z(\reg_instance/in_mux [18]) );
  MUX21L U2076 ( .A(\reg_instance/rgpio_ptrig [18]), .B(
        \reg_instance/rgpio_in [18]), .S(\reg_instance/in_mux [18]), .Z(n1630)
         );
  AO3 U2077 ( .A(\reg_instance/rgpio_in [18]), .B(
        \reg_instance/rgpio_ptrig [18]), .C(\reg_instance/rgpio_inte [18]), 
        .D(n1630), .Z(n1633) );
  ND2 U2078 ( .A(\reg_instance/rgpio_ints [18]), .B(n1742), .Z(n1632) );
  AO3 U2079 ( .A(n1633), .B(n1745), .C(n1632), .D(n1631), .Z(n913) );
  AO2 U2080 ( .A(n1737), .B(in_pad_i[17]), .C(n1736), .D(
        \reg_instance/nextc_sampled [17]), .Z(n1635) );
  ND2 U2081 ( .A(n1738), .B(\reg_instance/pextc_sampled [17]), .Z(n1634) );
  ND2 U2082 ( .A(n1635), .B(n1634), .Z(\reg_instance/in_mux [17]) );
  MUX21L U2083 ( .A(\reg_instance/rgpio_ptrig [17]), .B(
        \reg_instance/rgpio_in [17]), .S(\reg_instance/in_mux [17]), .Z(n1636)
         );
  AO3 U2084 ( .A(\reg_instance/rgpio_in [17]), .B(
        \reg_instance/rgpio_ptrig [17]), .C(\reg_instance/rgpio_inte [17]), 
        .D(n1636), .Z(n1639) );
  ND2 U2085 ( .A(\reg_instance/rgpio_ints [17]), .B(n1742), .Z(n1638) );
  AO3 U2086 ( .A(n1639), .B(n1745), .C(n1638), .D(n1637), .Z(n912) );
  AO2 U2087 ( .A(n1737), .B(in_pad_i[16]), .C(n1736), .D(
        \reg_instance/nextc_sampled [16]), .Z(n1641) );
  ND2 U2088 ( .A(n1738), .B(\reg_instance/pextc_sampled [16]), .Z(n1640) );
  ND2 U2089 ( .A(n1641), .B(n1640), .Z(\reg_instance/in_mux [16]) );
  MUX21L U2090 ( .A(\reg_instance/rgpio_ptrig [16]), .B(
        \reg_instance/rgpio_in [16]), .S(\reg_instance/in_mux [16]), .Z(n1642)
         );
  AO3 U2091 ( .A(\reg_instance/rgpio_in [16]), .B(
        \reg_instance/rgpio_ptrig [16]), .C(\reg_instance/rgpio_inte [16]), 
        .D(n1642), .Z(n1645) );
  ND2 U2092 ( .A(\reg_instance/rgpio_ints [16]), .B(n1742), .Z(n1644) );
  AO3 U2093 ( .A(n1645), .B(n1745), .C(n1644), .D(n1643), .Z(n911) );
  AO2 U2094 ( .A(n1737), .B(in_pad_i[15]), .C(n1736), .D(
        \reg_instance/nextc_sampled [15]), .Z(n1647) );
  ND2 U2095 ( .A(n1738), .B(\reg_instance/pextc_sampled [15]), .Z(n1646) );
  ND2 U2096 ( .A(n1647), .B(n1646), .Z(\reg_instance/in_mux [15]) );
  MUX21L U2097 ( .A(\reg_instance/rgpio_ptrig [15]), .B(
        \reg_instance/rgpio_in [15]), .S(\reg_instance/in_mux [15]), .Z(n1648)
         );
  AO3 U2098 ( .A(\reg_instance/rgpio_in [15]), .B(
        \reg_instance/rgpio_ptrig [15]), .C(\reg_instance/rgpio_inte [15]), 
        .D(n1648), .Z(n1651) );
  ND2 U2099 ( .A(\reg_instance/rgpio_ints [15]), .B(n1742), .Z(n1650) );
  AO3 U2100 ( .A(n1651), .B(n1745), .C(n1650), .D(n1649), .Z(n910) );
  AO2 U2101 ( .A(n1737), .B(in_pad_i[14]), .C(n1736), .D(
        \reg_instance/nextc_sampled [14]), .Z(n1653) );
  ND2 U2102 ( .A(n1738), .B(\reg_instance/pextc_sampled [14]), .Z(n1652) );
  ND2 U2103 ( .A(n1653), .B(n1652), .Z(\reg_instance/in_mux [14]) );
  MUX21L U2104 ( .A(\reg_instance/rgpio_ptrig [14]), .B(
        \reg_instance/rgpio_in [14]), .S(\reg_instance/in_mux [14]), .Z(n1654)
         );
  AO3 U2105 ( .A(\reg_instance/rgpio_in [14]), .B(
        \reg_instance/rgpio_ptrig [14]), .C(\reg_instance/rgpio_inte [14]), 
        .D(n1654), .Z(n1657) );
  ND2 U2106 ( .A(\reg_instance/rgpio_ints [14]), .B(n1742), .Z(n1656) );
  AO3 U2107 ( .A(n1657), .B(n1745), .C(n1656), .D(n1655), .Z(n909) );
  AO2 U2108 ( .A(n1737), .B(in_pad_i[13]), .C(n1736), .D(
        \reg_instance/nextc_sampled [13]), .Z(n1659) );
  ND2 U2109 ( .A(n1738), .B(\reg_instance/pextc_sampled [13]), .Z(n1658) );
  ND2 U2110 ( .A(n1659), .B(n1658), .Z(\reg_instance/in_mux [13]) );
  MUX21L U2111 ( .A(\reg_instance/rgpio_ptrig [13]), .B(
        \reg_instance/rgpio_in [13]), .S(\reg_instance/in_mux [13]), .Z(n1660)
         );
  AO3 U2112 ( .A(\reg_instance/rgpio_in [13]), .B(
        \reg_instance/rgpio_ptrig [13]), .C(\reg_instance/rgpio_inte [13]), 
        .D(n1660), .Z(n1663) );
  ND2 U2113 ( .A(\reg_instance/rgpio_ints [13]), .B(n1742), .Z(n1662) );
  AO3 U2114 ( .A(n1663), .B(n1745), .C(n1662), .D(n1661), .Z(n908) );
  AO2 U2115 ( .A(n1737), .B(in_pad_i[12]), .C(n1736), .D(
        \reg_instance/nextc_sampled [12]), .Z(n1665) );
  ND2 U2116 ( .A(n1738), .B(\reg_instance/pextc_sampled [12]), .Z(n1664) );
  ND2 U2117 ( .A(n1665), .B(n1664), .Z(\reg_instance/in_mux [12]) );
  MUX21L U2118 ( .A(\reg_instance/rgpio_ptrig [12]), .B(
        \reg_instance/rgpio_in [12]), .S(\reg_instance/in_mux [12]), .Z(n1666)
         );
  AO3 U2119 ( .A(\reg_instance/rgpio_in [12]), .B(
        \reg_instance/rgpio_ptrig [12]), .C(\reg_instance/rgpio_inte [12]), 
        .D(n1666), .Z(n1669) );
  ND2 U2120 ( .A(\reg_instance/rgpio_ints [12]), .B(n1742), .Z(n1668) );
  AO3 U2121 ( .A(n1669), .B(n1745), .C(n1668), .D(n1667), .Z(n907) );
  AO2 U2122 ( .A(n1737), .B(in_pad_i[11]), .C(n1736), .D(
        \reg_instance/nextc_sampled [11]), .Z(n1671) );
  ND2 U2123 ( .A(n1738), .B(\reg_instance/pextc_sampled [11]), .Z(n1670) );
  ND2 U2124 ( .A(n1671), .B(n1670), .Z(\reg_instance/in_mux [11]) );
  MUX21L U2125 ( .A(\reg_instance/rgpio_ptrig [11]), .B(
        \reg_instance/rgpio_in [11]), .S(\reg_instance/in_mux [11]), .Z(n1672)
         );
  AO3 U2126 ( .A(\reg_instance/rgpio_in [11]), .B(
        \reg_instance/rgpio_ptrig [11]), .C(\reg_instance/rgpio_inte [11]), 
        .D(n1672), .Z(n1675) );
  ND2 U2127 ( .A(\reg_instance/rgpio_ints [11]), .B(n1742), .Z(n1674) );
  AO3 U2128 ( .A(n1675), .B(n1745), .C(n1674), .D(n1673), .Z(n906) );
  AO2 U2129 ( .A(n1737), .B(in_pad_i[10]), .C(n1736), .D(
        \reg_instance/nextc_sampled [10]), .Z(n1677) );
  ND2 U2130 ( .A(n1738), .B(\reg_instance/pextc_sampled [10]), .Z(n1676) );
  ND2 U2131 ( .A(n1677), .B(n1676), .Z(\reg_instance/in_mux [10]) );
  MUX21L U2132 ( .A(\reg_instance/rgpio_ptrig [10]), .B(
        \reg_instance/rgpio_in [10]), .S(\reg_instance/in_mux [10]), .Z(n1678)
         );
  AO3 U2133 ( .A(\reg_instance/rgpio_in [10]), .B(
        \reg_instance/rgpio_ptrig [10]), .C(\reg_instance/rgpio_inte [10]), 
        .D(n1678), .Z(n1681) );
  ND2 U2134 ( .A(\reg_instance/rgpio_ints [10]), .B(n1742), .Z(n1680) );
  AO3 U2135 ( .A(n1681), .B(n1745), .C(n1680), .D(n1679), .Z(n905) );
  AO2 U2136 ( .A(n1737), .B(in_pad_i[9]), .C(n1736), .D(
        \reg_instance/nextc_sampled [9]), .Z(n1683) );
  ND2 U2137 ( .A(n1738), .B(\reg_instance/pextc_sampled [9]), .Z(n1682) );
  ND2 U2138 ( .A(n1683), .B(n1682), .Z(\reg_instance/in_mux [9]) );
  MUX21L U2139 ( .A(\reg_instance/rgpio_ptrig [9]), .B(
        \reg_instance/rgpio_in [9]), .S(\reg_instance/in_mux [9]), .Z(n1684)
         );
  AO3 U2140 ( .A(\reg_instance/rgpio_in [9]), .B(\reg_instance/rgpio_ptrig [9]), .C(\reg_instance/rgpio_inte [9]), .D(n1684), .Z(n1687) );
  ND2 U2141 ( .A(\reg_instance/rgpio_ints [9]), .B(n1742), .Z(n1686) );
  AO3 U2142 ( .A(n1687), .B(n1745), .C(n1686), .D(n1685), .Z(n904) );
  AO2 U2143 ( .A(n1737), .B(in_pad_i[8]), .C(n1736), .D(
        \reg_instance/nextc_sampled [8]), .Z(n1689) );
  ND2 U2144 ( .A(n1738), .B(\reg_instance/pextc_sampled [8]), .Z(n1688) );
  ND2 U2145 ( .A(n1689), .B(n1688), .Z(\reg_instance/in_mux [8]) );
  MUX21L U2146 ( .A(\reg_instance/rgpio_ptrig [8]), .B(
        \reg_instance/rgpio_in [8]), .S(\reg_instance/in_mux [8]), .Z(n1690)
         );
  AO3 U2147 ( .A(\reg_instance/rgpio_in [8]), .B(\reg_instance/rgpio_ptrig [8]), .C(\reg_instance/rgpio_inte [8]), .D(n1690), .Z(n1693) );
  ND2 U2148 ( .A(\reg_instance/rgpio_ints [8]), .B(n1742), .Z(n1692) );
  AO3 U2149 ( .A(n1693), .B(n1745), .C(n1692), .D(n1691), .Z(n903) );
  AO2 U2150 ( .A(n1737), .B(in_pad_i[7]), .C(n1736), .D(
        \reg_instance/nextc_sampled [7]), .Z(n1695) );
  ND2 U2151 ( .A(n1738), .B(\reg_instance/pextc_sampled [7]), .Z(n1694) );
  ND2 U2152 ( .A(n1695), .B(n1694), .Z(\reg_instance/in_mux [7]) );
  MUX21L U2153 ( .A(\reg_instance/rgpio_ptrig [7]), .B(
        \reg_instance/rgpio_in [7]), .S(\reg_instance/in_mux [7]), .Z(n1696)
         );
  AO3 U2154 ( .A(\reg_instance/rgpio_in [7]), .B(\reg_instance/rgpio_ptrig [7]), .C(\reg_instance/rgpio_inte [7]), .D(n1696), .Z(n1699) );
  ND2 U2155 ( .A(\reg_instance/rgpio_ints [7]), .B(n1742), .Z(n1698) );
  AO3 U2156 ( .A(n1699), .B(n1745), .C(n1698), .D(n1697), .Z(n902) );
  AO2 U2157 ( .A(n1737), .B(in_pad_i[6]), .C(n1736), .D(
        \reg_instance/nextc_sampled [6]), .Z(n1701) );
  ND2 U2158 ( .A(n1738), .B(\reg_instance/pextc_sampled [6]), .Z(n1700) );
  ND2 U2159 ( .A(n1701), .B(n1700), .Z(\reg_instance/in_mux [6]) );
  MUX21L U2160 ( .A(\reg_instance/rgpio_ptrig [6]), .B(
        \reg_instance/rgpio_in [6]), .S(\reg_instance/in_mux [6]), .Z(n1702)
         );
  AO3 U2161 ( .A(\reg_instance/rgpio_in [6]), .B(\reg_instance/rgpio_ptrig [6]), .C(\reg_instance/rgpio_inte [6]), .D(n1702), .Z(n1705) );
  ND2 U2162 ( .A(\reg_instance/rgpio_ints [6]), .B(n1742), .Z(n1704) );
  AO3 U2163 ( .A(n1705), .B(n1745), .C(n1704), .D(n1703), .Z(n901) );
  AO2 U2164 ( .A(n1737), .B(in_pad_i[5]), .C(n1736), .D(
        \reg_instance/nextc_sampled [5]), .Z(n1707) );
  ND2 U2165 ( .A(n1738), .B(\reg_instance/pextc_sampled [5]), .Z(n1706) );
  ND2 U2166 ( .A(n1707), .B(n1706), .Z(\reg_instance/in_mux [5]) );
  MUX21L U2167 ( .A(\reg_instance/rgpio_ptrig [5]), .B(
        \reg_instance/rgpio_in [5]), .S(\reg_instance/in_mux [5]), .Z(n1708)
         );
  AO3 U2168 ( .A(\reg_instance/rgpio_in [5]), .B(\reg_instance/rgpio_ptrig [5]), .C(\reg_instance/rgpio_inte [5]), .D(n1708), .Z(n1711) );
  ND2 U2169 ( .A(\reg_instance/rgpio_ints [5]), .B(n1742), .Z(n1710) );
  AO3 U2170 ( .A(n1711), .B(n1745), .C(n1710), .D(n1709), .Z(n900) );
  AO2 U2171 ( .A(n1737), .B(in_pad_i[4]), .C(n1736), .D(
        \reg_instance/nextc_sampled [4]), .Z(n1713) );
  ND2 U2172 ( .A(n1738), .B(\reg_instance/pextc_sampled [4]), .Z(n1712) );
  ND2 U2173 ( .A(n1713), .B(n1712), .Z(\reg_instance/in_mux [4]) );
  MUX21L U2174 ( .A(\reg_instance/rgpio_ptrig [4]), .B(
        \reg_instance/rgpio_in [4]), .S(\reg_instance/in_mux [4]), .Z(n1714)
         );
  AO3 U2175 ( .A(\reg_instance/rgpio_in [4]), .B(\reg_instance/rgpio_ptrig [4]), .C(\reg_instance/rgpio_inte [4]), .D(n1714), .Z(n1717) );
  ND2 U2176 ( .A(\reg_instance/rgpio_ints [4]), .B(n1742), .Z(n1716) );
  AO3 U2177 ( .A(n1717), .B(n1745), .C(n1716), .D(n1715), .Z(n899) );
  AO2 U2178 ( .A(n1737), .B(in_pad_i[3]), .C(n1736), .D(
        \reg_instance/nextc_sampled [3]), .Z(n1719) );
  ND2 U2179 ( .A(n1738), .B(\reg_instance/pextc_sampled [3]), .Z(n1718) );
  ND2 U2180 ( .A(n1719), .B(n1718), .Z(\reg_instance/in_mux [3]) );
  MUX21L U2181 ( .A(\reg_instance/rgpio_ptrig [3]), .B(
        \reg_instance/rgpio_in [3]), .S(\reg_instance/in_mux [3]), .Z(n1720)
         );
  AO3 U2182 ( .A(\reg_instance/rgpio_in [3]), .B(\reg_instance/rgpio_ptrig [3]), .C(\reg_instance/rgpio_inte [3]), .D(n1720), .Z(n1723) );
  ND2 U2183 ( .A(\reg_instance/rgpio_ints [3]), .B(n1742), .Z(n1722) );
  AO3 U2184 ( .A(n1723), .B(n1745), .C(n1722), .D(n1721), .Z(n898) );
  AO2 U2185 ( .A(n1737), .B(in_pad_i[2]), .C(n1736), .D(
        \reg_instance/nextc_sampled [2]), .Z(n1725) );
  ND2 U2186 ( .A(n1738), .B(\reg_instance/pextc_sampled [2]), .Z(n1724) );
  ND2 U2187 ( .A(n1725), .B(n1724), .Z(\reg_instance/in_mux [2]) );
  MUX21L U2188 ( .A(\reg_instance/rgpio_ptrig [2]), .B(
        \reg_instance/rgpio_in [2]), .S(\reg_instance/in_mux [2]), .Z(n1726)
         );
  AO3 U2189 ( .A(\reg_instance/rgpio_in [2]), .B(\reg_instance/rgpio_ptrig [2]), .C(\reg_instance/rgpio_inte [2]), .D(n1726), .Z(n1729) );
  ND2 U2190 ( .A(\reg_instance/rgpio_ints [2]), .B(n1742), .Z(n1728) );
  AO3 U2191 ( .A(n1729), .B(n1745), .C(n1728), .D(n1727), .Z(n897) );
  AO2 U2192 ( .A(n1737), .B(in_pad_i[1]), .C(n1736), .D(
        \reg_instance/nextc_sampled [1]), .Z(n1731) );
  ND2 U2193 ( .A(n1738), .B(\reg_instance/pextc_sampled [1]), .Z(n1730) );
  ND2 U2194 ( .A(n1731), .B(n1730), .Z(\reg_instance/in_mux [1]) );
  MUX21L U2195 ( .A(\reg_instance/rgpio_ptrig [1]), .B(
        \reg_instance/rgpio_in [1]), .S(\reg_instance/in_mux [1]), .Z(n1732)
         );
  AO3 U2196 ( .A(\reg_instance/rgpio_in [1]), .B(\reg_instance/rgpio_ptrig [1]), .C(\reg_instance/rgpio_inte [1]), .D(n1732), .Z(n1735) );
  ND2 U2197 ( .A(\reg_instance/rgpio_ints [1]), .B(n1742), .Z(n1734) );
  AO3 U2198 ( .A(n1735), .B(n1745), .C(n1734), .D(n1733), .Z(n896) );
  AO2 U2199 ( .A(n1737), .B(in_pad_i[0]), .C(n1736), .D(
        \reg_instance/nextc_sampled [0]), .Z(n1740) );
  ND2 U2200 ( .A(n1738), .B(\reg_instance/pextc_sampled [0]), .Z(n1739) );
  ND2 U2201 ( .A(n1740), .B(n1739), .Z(\reg_instance/in_mux [0]) );
  MUX21L U2202 ( .A(\reg_instance/rgpio_ptrig [0]), .B(
        \reg_instance/rgpio_in [0]), .S(\reg_instance/in_mux [0]), .Z(n1741)
         );
  AO3 U2203 ( .A(\reg_instance/rgpio_in [0]), .B(\reg_instance/rgpio_ptrig [0]), .C(\reg_instance/rgpio_inte [0]), .D(n1741), .Z(n1746) );
  ND2 U2204 ( .A(\reg_instance/rgpio_ints [0]), .B(n1742), .Z(n1744) );
  AO3 U2205 ( .A(n1746), .B(n1745), .C(n1744), .D(n1743), .Z(n895) );
endmodule

