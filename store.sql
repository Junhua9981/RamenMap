-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 01 月 06 日 22:55
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `RamenMap`
--

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `StoreID` int(50) NOT NULL,
  `StoreName` varchar(255) NOT NULL,
  `MRTStation` varchar(35) NOT NULL,
  `MRTRoute` varchar(20) NOT NULL,
  `Tel` varchar(20) DEFAULT NULL,
  `BusinessHour` varchar(255) NOT NULL,
  `iframe` varchar(255) DEFAULT NULL,
  `delCount` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `store`
--

INSERT INTO `store` (`StoreID`, `StoreName`, `MRTStation`, `MRTRoute`, `Tel`, `BusinessHour`, `iframe`, `delCount`) VALUES
(1, 'ラーメン凪 Ramen Nagi (信義店)', '象山', '淡水信義線(紅線)', '(02) 8780-4688', '週一~週日:11:30–19:30', 'https://reurl.cc/jk51L1\r\n', 0),
(2, '一幻拉麵 台北信義店', '象山', '淡水信義線(紅線)', '(02) 2723-5578', '週一~週五:11:30–15:30、17:00–21:30、週六~週日:11:30–16:00、17', 'https://reurl.cc/Dd6yN5\r\n', 0),
(3, '一真亭ラーメン', '台北101/世貿', '淡水信義線(紅線)', '(02) 8786-1093', '週一~週日:11:00–14:00、17:00–20:00', 'https://reurl.cc/7eoDZd\r\n', 0),
(4, '一蘭 台灣台北別館', '象山', '淡水信義線(紅線)', '(02) 2729-9866', '週一~週日:10:00–04:00', 'https://reurl.cc/Np6R16\r\n', 0),
(5, '一蘭 台灣台北本店', '象山', '淡水信義線(紅線)', '(02) 2758-3868', '24小時營業', 'https://reurl.cc/3jLo80\r\n', 0),
(6, '一風堂EXPRESS微風南山店', '台北101/世貿', '淡水信義線(紅線)', '(02) 2723-1911', '週一~週五:11:00–21:30', 'https://reurl.cc/2DgZxv\r\n', 0),
(7, '一風堂台北101店', '台北101/世貿', '淡水信義線(紅線)', '', '週一~週五:11:00–21:30', 'https://reurl.cc/rQ8Dzk\r\n', 0),
(8, '一風堂微風台北車站店', '台北車站', '淡水信義線(紅線)', '(02) 2370-9222', '週一~週日:10:00–22:00', 'https://reurl.cc/e683jb\r\n', 0),
(9, '二月ラーメン拉麵', '淡水', '淡水信義線(紅線)', '', '週三~週一: 上午11:00 - 下午2:00、下午5:00 - 下午9:00 (週二公休)', 'https://reurl.cc/OpqA9R\r\n', 0),
(10, '勝王', '雙連(馬偕紀念醫院)', '淡水信義線(紅線)', '', '週一~週五:11:30–14:00、17:00–20:30、週六~週日 :11:30–15:00、17:00–20:30\n', 'https://reurl.cc/Rj1rAZ\r\n', 2),
(11, '吉鴙拉麵', '大安', '淡水信義線(紅線)', '(02) 2325-0010', '週一~週六:11:00–14:30、16:00–20:30 (週日公休)', 'https://reurl.cc/e683jj\r\n', 0),
(12, '太陽蕃茄拉麵 站前本店', '台北車站', '淡水信義線(紅線)', '(02) 2361-7188', '週日~週四:11:00–22:00、週五~週六:11:00–22:30', 'https://reurl.cc/ve1d9e\r\n', 0),
(13, '屯京拉麵 (新光三越A8)', '象山', '淡水信義線(紅線)', '(02) 2722-5883', '週一~週五:11:00–21:30、週六~週日:11:00–22:00', 'https://reurl.cc/pWyMna\r\n', 0),
(14, '屯京拉麵 中山店', '中山', '淡水信義線(紅線)', '(02) 2562-5066', '週一~週日:11:00–23:00', 'https://reurl.cc/yQgrxE\r\n', 0),
(15, '屯京拉麵 台北站前店', '台北車站', '淡水信義線(紅線)', '(02) 2388-7166', '週日~週四:11:00–22:00、週五~週六:11:00–22:30', 'https://reurl.cc/g0m2LR\r\n', 0),
(16, '山嵐拉麵 大安店', '大安', '淡水信義線(紅線)', '(02) 2706-5005', '週一~週日:11:30–14:00、17:15–20:30 ', 'https://reurl.cc/VjXDG5\r\n', 0),
(17, '山形心心拉麵', '劍潭', '淡水信義線(紅線)', '', '週一~週五:16:30–23:00、週六~週日:16:30–23:00', 'https://reurl.cc/44m1Ev\r\n', 0),
(18, '札幌炎神拉麵 ATT 4 FUN 信義店', '象山', '淡水信義線(紅線)', '(02) 7737-8895', '週一~週日:11:00–22:00', 'https://reurl.cc/8Wnp4j\r\n', 0),
(19, '柑橘Shinn - Soba', '信義安和', '淡水信義線(紅線)', '(02) 2755-6705', '週一~週日:11:30–14:00、17:00–20:30', 'https://reurl.cc/nE01Q1\r\n', 0),
(20, '樂山窄巷', '北投', '淡水信義線(紅線)', '02 2892 6265', '週一~週日:11:00 - 14:30, 17:00 - 20:30', 'https://reurl.cc/qO85Q3\r\n', 0),
(21, '橫濱家系拉麵 特濃屋', '雙連(馬偕紀念醫院)', '淡水信義線(紅線)', '(02) 2522-2808', '週二~週日:11:30–15:00、17:00–21:00', 'https://reurl.cc/Mbd0rK\r\n', 0),
(22, '荷麵亭Hasumentei 士林店', '士林', '淡水信義線(紅線)', '(02) 2883-0460', '週一~週日:11:40 - 14:15、17:10 - 20:30', 'https://reurl.cc/g0m29R\r\n', 0),
(23, '藤芯•拉麵', '劍潭', '淡水信義線(紅線)', '', '週二~週六 17:00–22:30 (週日、週一公休)', 'https://reurl.cc/X4kjo3\r\n', 0),
(24, '象子 麵', '象山', '淡水信義線(紅線)', '(02) 2722-6630', '週三~週一:12:00–14:30、17:30–20:30、週二:12:00~14:00、17:00', 'https://reurl.cc/Opq4b7\r\n', 0),
(25, '道樂屋台', '士林', '淡水信義線(紅線)', '(02) 2882-0852', '週一~週五:17:00–22:45、週六~週日:12:00–14:00、17:00–22:45', 'https://reurl.cc/02OpL9\r\n', 0),
(26, '醇一拉麵', '大安', '淡水信義線(紅線)', '(02) 2706-6800', '週一~週日:11:30–15:00、17:00–21:00', 'https://reurl.cc/Rj1raZ\r\n', 0),
(27, '隱家拉麵', '士林', '淡水信義線(紅線)', '', '週一~週日:11:30 - 14:00, 16:30 - 22:00', 'https://reurl.cc/5Gq5eM\r\n', 0),
(28, '隱家拉麵 芝山店', '芝山', '淡水信義線(紅線)', '(02) 2838-3696', '週一~週日:11:30 - 14:00, 16:30 - 22:00', 'https://reurl.cc/yQgr2E\r\n', 0),
(29, '隱家拉麵 赤峰店', '雙連(馬偕紀念醫院)', '淡水信義線(紅線)', '(02) 2559-5970', '週一~週日:11:30 - 14:00, 16:30 - 22:00', 'https://reurl.cc/nE01ke\r\n', 0),
(30, '麵屋 緣', '信義安和', '淡水信義線(紅線)', '(02) 2708-9822', '週一~週日:11:00–14:00、17:00–20:00', 'https://reurl.cc/8Wnorj\r\n', 0),
(31, '麵屋武藏-本店', '台北車站', '淡水信義線(紅線)', '(02) 2371-1889', '週日~週四:11:00–20:30、週五~週六:11:00–21:00', 'https://reurl.cc/5Gq50M\r\n', 0),
(32, '麵屋武藏-神山', '中山', '淡水信義線(紅線)', '(02) 2542-8222', '週一~週日:11:30–21:30', 'https://reurl.cc/8Wno14\r\n', 0),
(33, '黑曜麵屋', '石牌', '淡水信義線(紅線)', '0979047907', '週一~週日:11:00 - 21:00', 'https://reurl.cc/Mbd0qK\r\n', 0),
(34, '黑田屋', '民權西路', '淡水信義線(紅線)', '(02) 2393-8893', '週二~週日:11:30–20:00', 'https://reurl.cc/Epzrkv\r\n', 0),
(35, '泰拉風拉麵店', '板橋', '板南線(藍線)', '(02) 2965-5233', '週二~週日:11:30–14:00、17:00–20:30\r\n', 'https://reurl.cc/xO0704\r\n', 0),
(36, '初原麵場(新板特區店)\r\n', '板橋', '板南線(藍線)', '(02) 2963-1360', '週五~週四:12:00–20:00\r\n', 'https://reurl.cc/rQ85Q1\r\n', 0),
(37, '濟善老麵\r\n', '龍山寺（艋舺商圈）', '板南線(藍線)', '(02) 2302-5833', '週一~週六:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/Np60b6\r\n', 0),
(38, '東京油組總本店 台北華山組\r\n', '善導寺（華山）', '板南線(藍線)', '(02) 2321-9553', '週一~週日:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/l9dDNQ\r\n', 0),
(39, '鳥人拉麵-台灣總店TOTTO Ramen\r\n', '忠孝復興', '板南線(藍線)', '(02) 2778-9866', '週一~週日:12:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/6El5jM\r\n', 0),
(40, '凪Nagi 忠孝店\r\n', '忠孝復興', '板南線(藍線)', '(02) 2778-1899', '週一~週日:11:00–14:30、17:30–20:00\r\n', 'https://reurl.cc/44mo6K\r\n', 0),
(41, '豚人拉麵復興店 京都一乗寺豚人ラーメン\r\n', '忠孝復興', '板南線(藍線)', '', '', 'https://reurl.cc/zMzY5Q\r\n', 0),
(42, '橫濱家系ラーメン大和家\r\n', '忠孝復興', '板南線(藍線)', '(02) 2771-8810', '週一~週日:11:00–22:30\r\n', 'https://reurl.cc/pWy6Yb\r\n', 0),
(43, '裸湯拉麵\r\n', '忠孝敦化', '板南線(藍線)', '(02) 8771-4670', '週一~週日:11:00–21:00\r\n', 'https://reurl.cc/AK8A3Q\r\n', 0),
(44, '麵屋牛一\r\n', '忠孝敦化', '板南線(藍線)', '(02) 2752-1552', '', 'https://reurl.cc/bkR9NX\r\n', 0),
(45, '豚人ラ－メン_台灣本店\r\n', '忠孝敦化', '板南線(藍線)', '', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/Np60NQ\r\n', 0),
(46, '麺処田冶\r\n', '忠孝敦化', '板南線(藍線)', '(02) 2779-0660', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/nE0Dll\r\n', 0),
(47, '麵屋壹の穴 ICHI\r\n', '國父紀念館', '板南線(藍線)', '(02) 2711-4319', '週二~週日:11:30–14:00、17:00–21:00\r\n', 'https://reurl.cc/akvVM7\r\n', 0),
(48, 'Due Italian\r\n', '市政府', '板南線(藍線)', '(02) 2720-3369', '週一~週日:11:00–21:30\r\n', 'https://reurl.cc/5Gq1bn\r\n', 0),
(49, '五之神製作所 台灣\r\n', '市政府', '板南線(藍線)', '(02) 2746-6867', '週一~週日:11:00–14:30、17:30–20:00\r\n', 'https://reurl.cc/g0mDnL\r\n', 0),
(50, '鷹流東京涼麺 涼風庵\r\n', '市政府', '板南線(藍線)', '(02) 2765-7711', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/LpdA23\r\n', 0),
(51, '熊二拉麵\r\n', '永春', '板南線(藍線)', '', '週一~週六:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/GorAax\r\n', 0),
(52, '海貓亭拉麵 うみねこ亭\r\n', '新店 (碧潭)', '松山新店線(綠線)', '', '週三~週一: 11:00 - 14:00、17:00 - 21:00 (週二公休)\r\n', 'https://reurl.cc/oed54D\r\n', 0),
(53, 'Hiro\'s らぁ麵Kitchen 新店店\r\n', '大坪林', '松山新店線(綠線)', '', '週一~週日:11:00 - 14:30, 17:00 - 20:30\r\n', 'https://reurl.cc/WkLvMD\r\n', 0),
(54, '墨洋拉麵\r\n', '公館 (台灣大學)', '松山新店線(綠線)', '', '週一~週日:11:00 - 21:00\r\n', 'https://reurl.cc/Zr7yq3\r\n', 0),
(55, '鷹流東京豚骨拉麵-極匠\r\n', '公館 (台灣大學)', '松山新店線(綠線)', '', '週一~週日:11:30 - 14:00, 16:30 - 22:00\r\n', 'https://reurl.cc/5GqOZn\r\n', 0),
(56, '山嵐拉麵 公館店\r\n', '公館 (台灣大學)', '松山新店線(綠線)', '(02) 2369-0122', '週一~週日:11:30 - 14:00, 16:30 - 22:00\r\n', 'https://reurl.cc/g0mapL\r\n', 0),
(57, '真劍拉麵\r\n', '台電大樓', '松山新店線(綠線)', '', '週一~週五:17:00–22:45、週六~週日:12:00–14:00、17:00–22:45\r\n', 'https://reurl.cc/Dd6oE6\r\n', 0),
(58, '山嵐拉麵 古亭店\r\n', '古亭', '松山新店線(綠線)', '(02) 2779-1221', '週一~週日:11:40 - 14:15、17:10 - 20:30\r\n', 'https://reurl.cc/9OXRan\r\n', 0),
(59, '重熙老麵\r\n', '小南門', '松山新店線(綠線)', '(02) 2371-8707', '週二~週六:17:00–22:30 (週日、週一公休)\r\n', 'https://reurl.cc/rQ862x\r\n', 0),
(60, '吉天元拉麵\r\n', '西門', '松山新店線(綠線)', '', '週一~週五:16:30–23:00、週六~週日:16:30–23:00\r\n', 'https://reurl.cc/Kpj35M\r\n', 0),
(61, '道樂商店\r\n', '西門', '松山新店線(綠線)', '(02) 2381-5557', '週二~週日:11:30–20:00\"\r\n', 'https://reurl.cc/WkLvgy\r\n', 0),
(62, '豚骨拉麵 Nagi 凪 西門店\r\n', '西門', '松山新店線(綠線)', '(02) 2370-2000', '週二~週日:11:30–15:00、17:00–21:00\r\n', 'https://reurl.cc/xO062V\r\n', 0),
(63, 'Totto Ramen 鳥人拉麵 西門店\r\n', '西門', '松山新店線(綠線)', '(02) 2314-6338', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/2DgEOr\r\n', 0),
(64, '辣麻味噌拉麵 鬼金棒 松江南京店\r\n', '松江南京', '松山新店線(綠線)', '', '週一~週日:11:30 - 14:00, 16:30 - 22:00\r\n', 'https://reurl.cc/jk5veD\r\n', 0),
(65, '美濃屋\r\n', '松江南京', '松山新店線(綠線)', '(02) 2567-5418', '週一~週日:11:30–21:30\r\n', 'https://reurl.cc/Dd6opj\r\n', 0),
(66, '麵屋輝\r\n', '松江南京', '松山新店線(綠線)', '(02) 2504-1800', '週一~週日:11:00–23:00\r\n', 'https://reurl.cc/GorKYy\r\n', 0),
(67, '拉麵公子\r\n', '南京復興', '松山新店線(綠線)', '', '週日~週四:11:00–22:00、週五~週六:11:00–22:30\r\n', 'https://reurl.cc/Y96050\r\n', 0),
(68, '麵試十一次\r\n', '台北小巨蛋', '松山新店線(綠線)', '', '週一~週日:11:30–21:30\r\n', 'https://reurl.cc/dX5mby\r\n', 0),
(69, '小高拉麵南勢角\r\n', '南勢角', '中和新蘆線(橘線)', '', '週二~週日:11:30–14:00、17:00–20:30\r\n', 'https://reurl.cc/Qj3e5o\r\n', 0),
(70, '藏味拉麵\r\n', '景安', '中和新蘆線(橘線)', '', '週二~週日:11:30–14:00、17:00–20:30\r\n', 'https://reurl.cc/Rj1WLG\r\n', 0),
(71, '初原麵場(中和南華店)\r\n', '景安', '中和新蘆線(橘線)', '(02) 2246-8688', '週一~週六:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/zMzlpV\r\n', 0),
(72, '辰拉麵\r\n', '頂溪', '中和新蘆線(橘線)', '', '週一~週日:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/akvLZQ\r\n', 0),
(73, '麵屋壹慶\r\n', '中山國小（晴光商圈）', '中和新蘆線(橘線)', '', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/yQgYRy\r\n', 0),
(74, '創作拉麵 悠然\r\n', '中山國小（晴光商圈）', '中和新蘆線(橘線)', '', '週二~週日:11:30–14:00、17:00–21:00\r\n', 'https://reurl.cc/rQ8rE1\r\n', 0),
(75, '富山天滿\r\n', '大橋頭（大橋國小）', '中和新蘆線(橘線)', '(02) 2585-7766', '週一~週日:11:00–14:30、17:30–20:00\r\n', 'https://reurl.cc/AK84Md\r\n', 0),
(76, '麵屋道樂\r\n', '徐匯中學', '中和新蘆線(橘線)', '(02) 2280-0335', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/oedr8V\r\n', 0),
(77, '坂道拉麵\r\n', '三民高中（空中大學）', '中和新蘆線(橘線)', '', '週一~週日:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/3jL7KR\r\n', 0),
(78, '柑橘鴨蔥\r\n', '六張犁', '文湖線(棕線)', '(02) 8732-0977', '週一~週日:11:00–22:30\r\n', 'https://reurl.cc/dX5AGD\r\n', 0),
(79, '重熙老麵-樂利店\r\n', '六張犁', '文湖線(棕線)', '(02) 2732-8638', '週一~週日:11:00–21:00\r\n', 'https://reurl.cc/KpjRA9\r\n', 0),
(80, '崇燈拉麵\r\n', '六張犁', '文湖線(棕線)', '', '週一~週日:11:00–21:30\r\n', 'https://reurl.cc/Lpdqbe\r\n', 0),
(81, '小川拉麵\r\n', '科技大樓', '文湖線(棕線)', '(02) 2703-7713', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/X4kyW3\r\n', 0),
(82, '裸湯拉麵\r\n', '科技大樓', '文湖線(棕線)', '(02) 2736-0159', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/Epzenv\r\n', 0),
(83, '壹之穴\r\n', '科技大樓', '文湖線(棕線)', '(02) 2377-6326', '週二~週日:11:30–14:00、17:00–21:00\r\n', 'https://reurl.cc/WkL73Z\r\n', 0),
(84, '勝拉麵\r\n', '大直(實踐大學)', '文湖線(棕線)', '(02) 8509-7138', '週一~週日:11:00–21:30\r\n', 'https://reurl.cc/8Wy28y\r\n\r\n', 0),
(85, '凪(Nagi)- 大直店\r\n', '劍南路(美麗華)', '文湖線(棕線)', '(02) 8501-5300', '週一~週日:11:00–14:30、17:30–20:00\r\n', 'https://reurl.cc/VjXlEA\r\n', 0),
(86, '雞吉君拉麵\r\n', '西湖(德明科大)', '文湖線(棕線)', '(02) 8797-8978', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/xO0AGz\r\n', 0),
(87, '鳳華拉麵 （らぁ麺 鳳華）\r\n', '西湖(德明科大)', '文湖線(棕線)', '(02) 2627-2388', '週一~週六:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/yQgGeE\r\n', 0),
(88, '一番星拉麵\r\n', '西湖(德明科大)', '文湖線(棕線)', '', '週二~週日:11:30–14:00、17:00–20:30\r\n', 'https://reurl.cc/Y96pjX\r\n', 0),
(89, '麵屋一番\r\n', '港墘', '文湖線(棕線)', '(09) 8314-1511', '週五~週四:12:00–20:00\r\n', 'https://reurl.cc/02ORx9\r\n', 0),
(90, '北一家拉麺\r\n', '港墘', '文湖線(棕線)', '', '週一~週六:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/124qoX\r\n', 0),
(91, '麵屋昕家\r\n', '東湖', '文湖線(棕線)', '(09) 1895-3118', '週一~週日:11:00–14:00、17:00–20:00\r\n', 'https://reurl.cc/g0m1zR\r\n', 0),
(92, '双豚ラーメン\r\n', '新埔民生', '環狀線(黃線)', '', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/5GqzOq\r\n', 0),
(93, '熊越岳\r\n', '幸福', '環狀線(黃線)', '', '週一~週五:11:30–14:00、17:00–20:30、週六~週日:11:30–15:00、17:00–20:30\r\n', 'https://reurl.cc/AK8Y0K\r\n', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`StoreID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `store`
--
ALTER TABLE `store`
  MODIFY `StoreID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
