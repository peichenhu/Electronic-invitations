-- phpMyAdmin SQL Dump
-- version 3.4.8
-- http://www.phpmyadmin.net
--
-- 主机: pch1024.gotoftp11.com
-- 生成日期: 2017 年 03 月 29 日 17:02
-- 服务器版本: 5.1.69
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pch1024`
--

-- --------------------------------------------------------

--
-- 表的结构 `bless`
--

CREATE TABLE IF NOT EXISTS `bless` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '访客ID',
  `g_hash` varchar(255) NOT NULL COMMENT '访客标识符',
  `g_ip` varchar(255) NOT NULL COMMENT '访客IP',
  `g_agent` varchar(255) NOT NULL COMMENT '访客代理浏览器',
  `g_time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='二姐电子请柬访客点赞表' AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `bless`
--

INSERT INTO `bless` (`id`, `g_hash`, `g_ip`, `g_agent`, `g_time`) VALUES
(2, '1c724cd7b6bd50736aec230c1fc6cf61', '58.38.157.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-10-26 22:24:43'),
(3, '7e72284777b72f69b8a98086ed8c7eae', '58.38.157.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-10-26 23:12:29'),
(4, 'a90e13a35c5d242ac3be1c0ae510876e', '58.38.157.144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13G36 MicroMessenger/6.3.28 NetType/WIFI Language/zh_CN', '2016-10-27 00:05:15'),
(5, '1', '1', '1', '0000-00-00 00:00:00'),
(6, '820e6d03eed211dbd6afa163709e1874', '58.38.157.144', 'Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/8.0; Touch; rv:11.0; WebBrowser/8.1; IEMobile/11.0; Microsoft; RM-1096) like Gecko', '2016-10-27 02:35:36'),
(7, '23d3567e703aedf0a90ddee645834021', '210.13.103.39', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '2016-10-27 18:35:35'),
(8, '21a6ce007216d02a4fbfbf0f1e2f54e3', '58.38.157.144', 'Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/8.0; Touch; rv:11.0; WebBrowser/8.1; IEMobile/11.0; Microsoft; RM-1096) like Gecko', '2016-10-29 18:01:03'),
(9, '199e492bba2ec7a2a7a5df4fc17f50ed', '106.119.65.40', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036824 Safari/537.36 V1_AND_SQ_6.5.5_410_YYB_D QQ/6.5.5.2880 NetType/WIFI WebP/0.3.0 Pixel/1080', '2016-10-29 19:01:38'),
(10, '523711f5497f7a4ed72e2483d95e30f6', '106.119.65.40', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036824 Safari/537.36 V1_AND_SQ_6.5.5_410_YYB_D QQ/6.5.5.2880 NetType/WIFI WebP/0.3.0 Pixel/1080', '2016-10-29 19:01:39'),
(11, '0b6cc6a0aed0aa45932aa6257d106cb9', '106.119.65.40', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036824 Safari/537.36 V1_AND_SQ_6.5.5_410_YYB_D QQ/6.5.5.2880 NetType/WIFI WebP/0.3.0 Pixel/1080', '2016-10-30 13:55:00'),
(12, 'c3e307c1b243d2a90080ff54ed119e82', '58.38.177.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-10-30 17:20:39'),
(13, '3f482530980cb6db0a10e36239f2ff6a', '58.38.177.169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-10-30 17:28:48'),
(14, 'bb487415cfaaafb891ccc7f077d416a7', '210.13.103.39', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '2016-11-02 17:47:48'),
(15, '696b92c6d4f54b3b3ab83678800b42cf', '223.104.13.158', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.28.900 NetType/cmnet Language/zh_CN', '2016-11-03 20:42:33'),
(16, '6c3b8dadf5a30c48c36d493aadccd738', '106.119.71.233', 'Mozilla/5.0 (Linux; Android 5.0.2; NX508J Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.28.900 NetType/WIFI Language/zh_CN', '2016-11-13 19:01:04'),
(17, 'e6dc34428f5d676d73a10f38771ab89d', '27.188.248.33', 'Mozilla/5.0 (Linux; Android 6.0; HUAWEI GRA-CL00 Build/HUAWEIGRA-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:01:08'),
(18, 'e8930f14637f183b3c35564850ebe843', '223.104.3.202', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/43.0.2357.121 Mobile Safari/537.36 MicroMessenger/6.3.25.861 NetType/cmnet Language/zh_CN', '2016-11-16 21:02:10'),
(19, '309b028d9eca9b7522c6783df0b47fb0', '223.104.3.202', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/43.0.2357.121 Mobile Safari/537.36 MicroMessenger/6.3.25.861 NetType/cmnet Language/zh_CN', '2016-11-16 21:02:11'),
(20, '3fa1c5854c7e50755fb17ec7fd501152', '27.188.234.143', 'Mozilla/5.0 (Linux; Android 4.3; R8007 Build/JLS36C) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 21:03:14'),
(21, '9ba5de3dfff1e4d34ae713cc03ed8910', '180.99.183.149', 'Mozilla/5.0 (Linux; Android 5.1.1; R7Plusm Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/ctlte Language/zh_CN', '2016-11-16 21:03:17'),
(22, '0e8c22e792786eccac79da81c0fac42c', '180.99.183.149', 'Mozilla/5.0 (Linux; Android 5.1.1; R7Plusm Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/ctlte Language/zh_CN', '2016-11-16 21:03:16'),
(23, '96f43f52449db7e904c529531c40ce3d', '210.13.103.39', 'Mozilla/5.0 (Linux; Android 6.0.1; NX549J Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:04:59'),
(24, '2e482a74d7d0f18fc3f4118dc667f7cf', '123.180.18.101', 'Mozilla/5.0 (Linux; Android 6.0; PLK-TL01H Build/HONORPLK-TL01H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:06:04'),
(25, '1d36923be3c634e68bef0e009d00e3c2', '111.226.3.54', 'Mozilla/5.0 (Linux; Android 6.0; Le X620 Build/HEXCNFN5801708221S) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:06:34'),
(26, 'eb6e5901adb51c9b665188f1a795307d', '106.119.64.249', 'Mozilla/5.0 (Linux; Android 5.1; HUAWEI RIO-CL00 Build/HuaweiRIO-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:07:56'),
(27, '66a2ffe889db77378a9c4a269531ea2b', '221.192.178.121', 'Mozilla/5.0 (Linux; Android 5.1; m3 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.22.821 NetType/3gnet Language/zh_CN', '2016-11-16 21:08:13'),
(28, 'fbd5a570f4635c718a1b8e6b295b1c35', '106.119.64.249', 'Mozilla/5.0 (Linux; Android 5.1; HUAWEI RIO-CL00 Build/HuaweiRIO-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:09:31'),
(29, 'aadb302636099e0b04a490973219db1b', '106.115.88.22', 'Mozilla/5.0 (Linux; Android 4.4.4; vivo Y23L Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 21:11:55'),
(30, '6b436d0abd4ee6d421036ad4bfee8388', '106.115.88.22', 'Mozilla/5.0 (Linux; Android 4.4.4; vivo Y23L Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 21:11:57'),
(31, 'eabfd55db6b72dbc89f5e96cf24e92a7', '106.115.88.22', 'Mozilla/5.0 (Linux; Android 4.4.4; vivo Y23L Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 21:11:59'),
(32, '437f90a59e7b923b4c18042a2b4cbdd1', '182.18.108.167', 'Mozilla/5.0 (Linux; Android 5.0.1; GT-I9500 Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 21:15:34'),
(33, '5823cc9c48480c7b51b6d94b4fba12fe', '27.188.239.33', 'Mozilla/5.0 (Linux; Android 4.4.4; MI 3 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:16:25'),
(34, '783892c78200856bb05c551a8d82cb5e', '183.198.243.202', 'Mozilla/5.0 (Linux; Android 5.0; vivo X5Pro L Build/LRX21M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.28.900 NetType/WIFI Language/zh_CN', '2016-11-16 21:21:52'),
(35, '2b8c28a72b192b45e131d968b0ba46bb', '27.188.251.37', 'Mozilla/5.0 (Linux; Android 5.1.1; OPPO R9 Plustm A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:44:39'),
(36, 'd59f7e59acaac5deead4700ef9685791', '27.188.251.37', 'Mozilla/5.0 (Linux; Android 5.1.1; OPPO R9 Plustm A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:44:44'),
(37, 'd44df2dcfe1d6387c7481e01b68e0eb8', '27.188.251.37', 'Mozilla/5.0 (Linux; Android 5.1.1; OPPO R9 Plustm A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:44:44'),
(38, 'ab26dcc6175aa9992c2c1a1b2c0715b3', '27.187.93.185', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.3.30 NetType/WIFI Language/zh_CN', '2016-11-16 21:45:28'),
(39, 'd0ec57033de4da96956b1cf83dca55f6', '210.13.103.39', 'Mozilla/5.0 (Linux; Android 6.0.1; NX549J Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:49:50'),
(40, '8bad324156445172c1a7a3ba35252ff1', '210.13.103.39', 'Mozilla/5.0 (Linux; Android 6.0.1; NX549J Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:49:51'),
(41, 'f3db6dc6a8bc1c24334a0aa165110f0e', '106.119.72.114', 'Mozilla/5.0 (Linux; Android 6.0.1; KIW-TL00 Build/HONORKIW-TL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.18.800 NetType/WIFI Language/zh_CN', '2016-11-16 22:02:58'),
(42, '401f0d17b04d499144664815fb3a5803', '223.104.13.22', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Mobile/14B100 MicroMessenger/6.3.30 NetType/WIFI Language/zh_CN', '2016-11-16 22:12:25'),
(43, '5930a9572503939fca489331861167bc', '120.221.28.181', 'Mozilla/5.0 (Linux; Android 4.4.4; Che1-CL20 Build/Che1-CL20) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', '2016-11-16 22:28:24'),
(44, '0a4dbb277c8d6394244629227b53df92', '121.24.197.55', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_2 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Mobile/14A456 MicroMessenger/6.3.30 NetType/WIFI Language/zh_CN', '2016-11-16 22:45:58'),
(45, 'f3740a44f4d88e6a53e6bac7b91d5425', '27.188.252.26', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo Xplay5A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 22:58:28'),
(46, 'c1589790eb359ef308b27ad0ffcbc185', '27.188.252.26', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo Xplay5A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 22:58:31'),
(47, '0e8f2c2511cae5585d6345860f2e2d12', '27.188.250.249', 'Mozilla/5.0 (Linux; Android 4.2.2; SCH-P709 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/WIFI Language/zh_CN', '2016-11-16 23:03:26'),
(48, '30130e6a0fcd521aba49a371d4b36180', '223.104.13.151', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo X6S A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/cmnet Language/zh_CN', '2016-11-16 23:03:48'),
(49, 'f8a124c598e58dd17c118eec89781312', '223.104.13.151', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo X6S A Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.27.880 NetType/cmnet Language/zh_CN', '2016-11-16 23:03:45'),
(50, 'a9d34de5904e6ef04155057d64f17f83', '106.115.238.14', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.28.900 NetType/WIFI Language/zh_CN', '2016-11-16 23:41:01'),
(51, '2ed2be058c4cc7efef81892d753f5aaf', '223.104.13.156', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo X7Plus Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-17 07:56:51'),
(52, 'f68b37775c7e43cb6ecbea2630513e93', '106.115.14.176', 'Mozilla/5.0 (Linux; Android 4.4.2; HONOR H30-L01 Build/HonorH30-L01) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-17 08:39:20'),
(53, 'b7b9f434a6262eaeb21d582f4fa672a2', '221.223.45.81', 'Mozilla/5.0 (Linux; Android 6.0.1; vivo Y55A Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-17 08:41:34'),
(54, '4adb703c9682413b5fdcd30b47fe0411', '223.104.13.58', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.28.900 NetType/cmnet Language/zh_CN', '2016-11-17 09:28:57'),
(55, '9e8684762f9159986e90999abd365009', '124.236.192.155', 'Mozilla/5.0 (Linux; U; Android 6.0; zh-CN; 1503-A01 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/40.0.2214.89 UCBrowser/11.2.0.880 Mobile Safari/537.36', '2016-11-17 09:38:33'),
(56, 'dff88e631a19633289c8df13243c566f', '106.117.80.166', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9m Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.8.98_rc625be9.680 NetType/WIFI Language/zh_CN', '2016-11-17 10:34:52'),
(57, 'f26c3a1db164544e878b195f69c51271', '106.119.29.248', 'Mozilla/5.0 (Linux; Android 6.0; Le X620 Build/HEXCNFN5601304221S) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/ctnet Language/zh_CN', '2016-11-17 11:19:29'),
(58, '9290724b7fd568aa09c2ae08b9ff7926', '117.136.47.213', 'Mozilla/5.0 (Linux; Android 4.2.1; vivo Y19t Build/JOP40D) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.23.840 NetType/cmnet Language/zh_CN', '2016-11-17 12:04:27'),
(59, '2907278e904c8a4778a04cd6d679cc31', '183.198.11.203', 'Mozilla/5.0 (Linux; Android 6.0.1; MI 5 Build/MXB48T) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-17 13:17:27'),
(60, 'c0e6dbf8683a116f2caf536593771fca', '106.119.67.225', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-17 18:07:37'),
(61, '6f1c37c2c9ca325aa5fbc767dd643af8', '223.104.13.135', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Mobile/14B100 MicroMessenger/6.3.31 NetType/2G Language/zh_CN', '2016-11-24 18:26:38'),
(62, 'ddbae66bd8aad884f9480a0823bb58ec', '223.104.13.148', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G9250 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/cmnet Language/zh_CN', '2016-11-24 22:01:58'),
(63, '379a8dcd2816c08e29a0803cdb8cd9ff', '106.117.141.53', 'Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 3 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-25 17:05:21'),
(64, 'e7d5eb79a588d3b36e53f64d64cb9164', '106.119.68.61', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.49 Mobile MQQBrowser/6.2 TBS/043024 Safari/537.36 MicroMessenger/6.5.4.1000 NetType/WIFI Language/zh_CN', '2017-02-21 15:59:47'),
(65, 'd70edaa3fcc29e1612198cc883e37f20', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '2017-03-29 16:58:20');

-- --------------------------------------------------------

--
-- 表的结构 `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '嘉宾ID',
  `f_name` varchar(255) NOT NULL COMMENT '亲友名字',
  `f_phone` varchar(255) NOT NULL COMMENT '亲友手机',
  `f_num` int(9) NOT NULL COMMENT '亲友数量',
  `f_position` varchar(255) NOT NULL COMMENT '亲友方',
  `f_text` varchar(255) NOT NULL COMMENT '亲友寄语',
  `f_ip` varchar(255) NOT NULL COMMENT '亲友IP',
  `f_agent` varchar(255) NOT NULL COMMENT '亲友bowser',
  `f_time` datetime NOT NULL COMMENT '亲友来访时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='二姐亲友团' AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `guest`
--

INSERT INTO `guest` (`id`, `f_name`, `f_phone`, `f_num`, `f_position`, `f_text`, `f_ip`, `f_agent`, `f_time`) VALUES
(25, '虎的', '15266885285', 1, '女', '白头偕老', '210.13.103.39', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-11-16 21:43:08'),
(26, '刘英', '15373776372', 3, '男方', '我们亲爱的牛牛！就要成为新郎了，深深地祝福你和美丽的新娘百年好合！永结同心！早生贵子！', '106.119.64.249', 'Mozilla/5.0 (Linux; Android 5.1; HUAWEI RIO-CL00 Build/HuaweiRIO-CL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 21:44:16'),
(27, '磊', '15203306008', 1, '女', '新婚快乐', '210.13.103.39', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-11-16 21:44:45'),
(28, '测试', '15266885285', 1, '男', '百年', '210.13.103.39', 'Mozilla/5.0 (Linux; Android 6.0.1; NX549J Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036872 Safari/537.36 MicroMessenger/6.3.30.920 NetType/WIFI Language/zh_CN', '2016-11-16 23:08:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
