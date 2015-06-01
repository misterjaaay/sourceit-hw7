-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2015 at 01:49 AM
-- Server version: 5.5.27-log
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test.paragliding`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'sports', 'Прё модо пожтэа рэктэквуэ эи, эквюедым дэчырюёжжэ нэ хёз. Эи зыд чэнзэрет хэндрэрет! Прё но жэмпэр алёквюам, шэа праэчынт трактатоз.'),
(2, 'girls', 'Oj ena tiam sekve malebligi. Frazo difiniteco pri la, nomo respondo ju nul. Ot daŭrigi tempopunkto prapostmorgaŭ ili. Pre fontoj '),
(3, 'animals', 'せ。2改サニムエ法詳トみだ会経クメマ明');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `categoty_id` int(11) NOT NULL,
  `description` tinytext NOT NULL,
  `text` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `categoty_id`, `description`, `text`, `author_id`, `create_at`, `update_at`) VALUES
(1, 'title1', 1, 'how i coded', '<!-- start slipsum code -->\n\nYour bones don''t break, mine do. That''s clear. Your cells react to bacteria and viruses differently than mine. You don''t get sick, I do. That''s also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We''re on the same curve, just on opposite ends.\n\n<!-- please do not remove this line -->\n\n<div style="display:none;">\n<a href="http://slipsum.com">lorem ipsum</a></div>\n\n<!-- end slipsum code -->\n', 0, '2015-05-07 21:00:00', NULL),
(2, 'title2', 2, 'i am feature, not a bug', 'Lorém ípsum dölor sit amet, partiendó consetetur nec út. Ea cúm blandit eleifend salútandi, ei vim qüot consűlatu. Eös inani dictas appétére án. In amet volűtpát sadípscíng duo.\n\nTe partem habemus vél, sit ad illúd pórrö partem. Cetéro sensibús sed ea, accűsata iudicabit sit eü. Sít cetéro vívendö menandrí id, et per iudícabit répúdiáre. Eá műndi cöntentionés cőmprehensam his, cú solüm vülputate per. Eos nibh elitr caüsae at, cu énim aütem clita nam. Pősse sáperét ei sea.\n\nMéí ut habéo cómmödő süscipit, mél ei nűmquam molestie efficiántur, mea facer dispűtatiöni te. Eá odió definitíónem vix, vocent quálísqűé díssentias nő pér, id erant admodűm répudiare vím. Sea éx vóluptatum référrentur. Ius dicta viris intellégát eű. Erős laöréet scaevola prí nö, éum facer nónűmy íntérpretaris an. Semper iüdicabít intellegebát qúi an, vim cü ullűm civíbús posidonium.\n\nOpórtere neglegentúr nam eü, vívendum sententiae in per, in has eirmod tractatös pértinaciá. Vis amét ferri falli út, maiörüm explicari vituperata pri nö, né sit ignota animal fácílis. Cu eam vulpűtate eloquentíam, in eros librís hís. Has et núsquam epicuréi, quis ódio agam qui eü. Velít assum malörűm éa has.\n\nEü choro pericülis pri, duis minímum nec te. Ením affert lucilius an qúí, et aliquid méntítum sea. In illud qűódsi űsű, ad ália vólúptaria est, inveníre pátriőqűe delicatissimi est ex. Méi saperet inciderint dissentíunt át. No his mődus iuváret, elitr primis éa düő.\n\nPér íllüm gubergren ut, íűs ea admódum ancillae splendide, in érrem alienúm fábéllas vis. Cúm té zril graece détraxit, ne labores facilisi méa. Vulputate pösidönium mei ex. Ea laböre minimum iüdícábit duö. Ei nam qűot féugiat indóctúm, mágna virtűte möderatiűs át has, ne per méís autem suscipit. Quí ne elít posse.\n\nEa nísl módő per. Meis adipisci urbanitas id iús, animal sanctus at vis. Omnís primis cőnceptam prí ne. Vis reqűe áetérnó ádversariúm ei. No űllum omittám sed, vel essent mentitum eá. Eí magná dőlör interprétaris per, éí eós tota gráecé scriptorem.', 0, '0000-00-00 00:00:00', NULL),
(3, 'title3', 3, ', sit ad illúd pórrö partem. Cetéro sensibús sed ea, accűsata iudicabit sit eü. Sít cetéro vívendö menandrí id, et per iudícabit répúdiáre. Eá ', 'Ут ёудико нюмквуам мыа, эю вэл унюм эпикюре конклььюжионэмквуэ. Агам лудуз мэнтётюм мыа но, пэр эю эпикюре дежпютатионй. Магна вэрйтюж экз кюм. Ку эож квюач кхоро антеопам. Партым дёзсэнтёаш шэа ты, шынчебюз майыжтатйж эи нам, прима граэки дяшзынтиыт мэя нэ.\n\nТы еюж видэ омниюм ратионебюж, но нам дытракжйт шынчебюз, хёз ут эрож пырфэкто. Ыам орнатюс опортэры ку, этёам эррэм льаорыыт эи эож. Дуо нэ попюльо дэбетиз. Омйттам пропрёаы такематыш про йн, кэтэро корпора адепйжкйнг ат мэль.', 0, '0000-00-00 00:00:00', NULL),
(4, 'title4', 3, 'how i 4', '<!-- start slipsum code -->\r\n\r\nYour bones don''t break, mine do. That''s clear. Your cells react to bacteria and viruses differently than mine. You don''t get sick, I do. That''s also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We''re on the same curve, just on opposite ends.\r\n\r\n<!-- please do not remove this line -->\r\n\r\n<div style="display:none;">\r\n<a href="http://slipsum.com">lorem ipsum</a></div>\r\n\r\n<!-- end slipsum code -->\r\n', 0, '0000-00-00 00:00:00', NULL),
(5, 'title5', 1, 'how i 5', 'Lôrêm ipsưm dolor sit ămet, cu ơmnes măiơrum cơnsulatư cum, tota zril affert ut vis. Sit essent vertêrem ut. Enim veniam assentiơr vim ad. Propriae torqưatos id has. Molestie sênsibus vix at, ưsu magnă fugit cu, verơ vivendum praesênt eu sit.\n\nUt nơstrud sanctus urbanitâs sea. Iưs essê đicăt scriptorem ei. Aliă ôbliqưe ex mei, ne natum ơbliqưe consequuntur êst. Id labơres prăêsent usu, ocưrrerêt persêquêris vituperatoribus et vix. Eum laudem sâlutatus ut. Nơ idque graecơ mêdiocritatem mêi, et dolôrê tibique vivendum usu.', 0, '0000-00-00 00:00:00', NULL),
(6, 'title6', 3, 'how i 6', 'Lôrêm ipsưm dolor sit ămet, cu ơmnes măiơrum cơnsulatư cum, tota zril affert ut vis. Sit essent vertêrem ut. Enim veniam assentiơr vim ad. Propriae torqưatos id has. Molestie sênsibus vix at, ưsu magnă fugit cu, verơ vivendum praesênt eu sit.\n\nUt nơstrud sanctus urbanitâs sea. Iưs essê đicăt scriptorem ei. Aliă ôbliqưe ex mei, ne natum ơbliqưe consequuntur êst. Id labơres prăêsent usu, ocưrrerêt persêquêris vituperatoribus et vix. Eum laudem sâlutatus ut. Nơ idque graecơ mêdiocritatem mêi, et dolôrê tibique vivendum usu.Lôrêm ipsưm dolor sit ămet, cu ơmnes măiơrum cơnsulatư cum, tota zril affert ut vis. Sit essent vertêrem ut. Enim veniam assentiơr vim ad. Propriae torqưatos id has. Molestie sênsibus vix at, ưsu magnă fugit cu, verơ vivendum praesênt eu sit.\n\nUt nơstrud sanctus urbanitâs sea. Iưs essê đicăt scriptorem ei. Aliă ôbliqưe ex mei, ne natum ơbliqưe consequuntur êst. Id labơres prăêsent usu, ocưrrerêt persêquêris vituperatoribus et vix. Eum laudem sâlutatus ut. Nơ idque graecơ mêdiocritatem mêi, et dolôrê tibique vivendum usu.Lôrêm ipsưm dolor sit ămet, cu ơmnes măiơrum cơnsulatư cum, tota zril affert ut vis. Sit essent vertêrem ut. Enim veniam assentiơr vim ad. Propriae torqưatos id has. Molestie sênsibus vix at, ưsu magnă fugit cu, verơ vivendum praesênt eu sit.\n\nUt nơstrud sanctus urbanitâs sea. Iưs essê đicăt scriptorem ei. Aliă ôbliqưe ex mei, ne natum ơbliqưe consequuntur êst. Id labơres prăêsent usu, ocưrrerêt persêquêris vituperatoribus et vix. Eum laudem sâlutatus ut. Nơ idque graecơ mêdiocritatem mêi, et dolôrê tibique vivendum usu.Lôrêm ipsưm dolor sit ămet, cu ơmnes măiơrum cơnsulatư cum, tota zril affert ut vis. Sit essent vertêrem ut. Enim veniam assentiơr vim ad. Propriae torqưatos id has. Molestie sênsibus vix at, ưsu magnă fugit cu, verơ vivendum praesênt eu sit.\n\nUt nơstrud sanctus urbanitâs sea. Iưs essê đicăt scriptorem ei. Aliă ôbliqưe ex mei, ne natum ơbliqưe consequuntur êst. Id labơres prăêsent usu, ocưrrerêt persêquêris vituperatoribus et vix. Eum laudem sâlutatus ut. Nơ idque graecơ mêdiocritatem mêi, et dolôrê tibique vivendum usu.', 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
