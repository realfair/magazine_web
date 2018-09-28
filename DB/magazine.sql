-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 02:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magazine`
--

-- --------------------------------------------------------

--
-- Table structure for table `advert_categories`
--

CREATE TABLE `advert_categories` (
  `advert_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `width` int(12) NOT NULL,
  `height` int(12) NOT NULL,
  `status` varchar(123) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advert_categories`
--

INSERT INTO `advert_categories` (`advert_id`, `name`, `width`, `height`, `status`, `regDate`) VALUES
(1, 'LeaderBoard', 708, 90, 'ACTIVE', '2018-09-03 21:12:13'),
(2, 'Cube', 430, 360, 'ACTIVE', '2018-09-03 21:13:04'),
(3, 'Skyscrapper', 180, 640, 'ACTIVE', '2018-09-03 21:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `author_id` int(100) NOT NULL,
  `sub_title` varchar(1024) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validate_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `author_id`, `sub_title`, `title`, `description`, `text`, `status`, `submit_date`, `validate_date`) VALUES
(1, 1, 0, 'ssssssssss', 'ssssssssssss', '', '<p>sssssssssssssssssssssssss<strong>sdsssssssssssssssssssssssssssssssssssdsssssssssssssssssssssssfdfdfdfdfd</strong></p>', 'ACTIVE', '2018-09-03 19:17:53', ''),
(2, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>&nbsp;</p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 'ACTIVE', '2018-09-03 19:34:01', ''),
(3, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Â </p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 'PUBLISHED', '2018-09-03 20:00:59', ''),
(4, 2, 0, '', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p>Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.</p>', 'SUBMITTED', '2018-09-03 20:08:49', ''),
(5, 2, 6, 'RWANDA: Welcome to my homeland of technology we hope you enjoy this', 'RWANDA: Welcome to my homeland of technology we hope you enjoy this', '', '&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community. After nearly a year spent in development, AT&amp;amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality. AT&amp;amp;T\'s effort marks a different, more proactive form of community outreach. It\'s unique, community leaders and activists say, because the company\'s not just cutting a check. Instead, it\'s leaning on the employees working in those communities, as well as local leaders and charity groups, to figure out how best to help. In doing so, the company hopes the program serves as a model that it can take from city to city, but also can inspire other corporations to follow.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;RWANDA IS BEST COUNTRY.&lt;/p&gt;', 'PUBLISHED', '2018-09-03 20:12:55', ''),
(6, 1, 6, 'Welcome to my homeland of technology we hope you enjoy this', 'Welcome to my homeland of technology we hope you enjoy this', '', '&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community.\n\nAfter nearly a year spent in development, AT&amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality.\n\nAT&amp;T\'s effort marks a different, more proactive form of community outreach. It\'s unique, community leaders and activists say, because the company\'s not just cutting a check. Instead, it\'s leaning on the employees working in those communities, as well as local leaders and charity groups, to figure out how best to help. In doing so, the company hopes the program serves as a model that it can take from city to city, but also can inspire other corporations to follow.&lt;/p&gt;', 'SUBMITTED', '2018-09-03 20:55:02', ''),
(7, 5, 6, 'The company\'s dialing up a unique community outreach program in Chicago.', 'Inside AT&amp;amp;T\'s mission to help a city escape gun violence', '', '&lt;p&gt;welcome to AT &amp;amp; T Hackerthon&lt;/p&gt;', 'PUBLISHED', '2018-09-26 10:22:19', '2018-09-26'),
(8, 5, 6, 'The company\'s dialing up a unique community outreach program in Chicago.', 'Inside AT&T\'s mission to help a city escape gun violence', '', '&lt;p class=&quot;speakableTextP1&quot;&gt;Two years ago,&amp;nbsp;&lt;a href=&quot;https://www.cnet.com/tags/att/&quot; data-annotation=&quot;true&quot; data-component=&quot;linkTracker&quot; data-link-tracker-options=&quot;{&amp;quot;action&amp;quot;:&amp;quot;inline-annotation|AT&amp;amp;T|CNET_TAG|644&amp;quot;}&quot;&gt;AT&amp;amp;T&lt;/a&gt;&amp;nbsp;technician Cedric Wouldfolk was finishing up an installation at a customer\'s home when he received a call every parent dreads.&lt;/p&gt;\n&lt;p class=&quot;speakableTextP2&quot;&gt;The caller ID showed his son\'s number, but a female voice was on the other line. His son had been shot.&lt;/p&gt;\n&lt;p&gt;&quot;I went dark for a little while,&quot; Wouldfolk recalls.&lt;/p&gt;\n&lt;p&gt;His son, who was shot half a block from the Wouldfolks\' home in the Chicago neighborhood of Austin, was hit in the back of the leg. He now walks with a metal rod.&lt;/p&gt;\n&lt;p&gt;Rather than get angry, Wouldfolk tried to understand the problem, first by talking to the men hanging out at local street corners and hearing their stories. He needed to take action. &quot;I can\'t let something like this go,&quot; he says.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Wouldfolk, who strides easily in his 6-foot, 4-inch frame and speaks with a booming but jovial voice, wasn\'t involved much with the community. When he decided to act, many of his co-workers joined him.&lt;/p&gt;\n&lt;p&gt;He ended up helping the Austin Boxing Club, a program that gets kids off the street and teaches them valuable skills like conflict resolution, and that arguments don\'t always have to escalate to using guns.&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community.&lt;/p&gt;\n&lt;p&gt;After nearly a year spent in development, AT&amp;amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality.&lt;/p&gt;', 'TRASHED', '2018-09-26 10:22:24', '2018-09-26'),
(9, 5, 6, 'Bimaze kumenyerwa ko muri Nzeri, uruganda rukora ibikoresho by&rsquo;ikoranabuhanga rwa Apple rushyira hanze telefoni nshya, kandi ikaza yisumbuye ku zo isanze ku isoko.', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '', 'TRASHED', '2018-09-26 10:27:45', '2018-09-26'),
(10, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '&lt;h3 class=&quot;title-article&quot;&gt;Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko&lt;/h3&gt;', 'TRASHED', '2018-09-26 10:30:26', '2018-09-26'),
(11, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '&lt;h3 class=&quot;title-article&quot;&gt;Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko&lt;/h3&gt;', 'TRASHED', '2018-09-26 10:31:33', '2018-09-26'),
(12, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Telefoni nshya Apple iteganya gushyira ku isoko uyu mwaka.', '', '&lt;p&gt;Ku itariki ya 12 Nzeri nibwo Umuyobozi Mukuru wa Apple, Tim Cook azashyira ahagaragara telefoni nshya zakozwe muri uyu mwaka.&lt;/p&gt;\n&lt;p&gt;Bizakorerwa mu kiganiro n&amp;rsquo;abanyamakuru kizabera muri Steve Jobs Theater i Cupertino muri Leta ya California.&lt;/p&gt;\n&lt;p&gt;Mu gihe habura amasaha make ngo iki gikorwa kibe, ibinyamakuru bitandukanye byatangiye kugaragaza ibyo umuntu yakwitega kuri telefoni nshya.&lt;/p&gt;\n&lt;p&gt;Bloomberg na 9to5Mac byemeza ko byabonye amafoto ya telefoni nshya zizashyirwa hanze.&lt;/p&gt;\n&lt;p&gt;Bivuga ko muri zo harimo iPhone XS izaba imeze neza nk&amp;rsquo;iyayibanjirije, icyahindutse akaba ari uburyo yihuta na camera.&lt;/p&gt;\n&lt;p&gt;Iyi telefoni kandi ishobora kuzaba ifite indi bimeze kimwe ariko yisumbuye mu bunini kuko izaba ifite santimetero 17.2. Bikekwa ko izahabwa izina rya iPhone XS Max.&lt;/p&gt;\n&lt;p&gt;Apple kandi ishobora gushyira hanze izindi telefoni zifitemo udushya nk&amp;rsquo;utwa iPhone X, turimo nk&amp;rsquo;uburyo bwo gushyiramo urufunguzo ukoresheje isura (Face ID), buzasimbura igikumwe.&lt;/p&gt;\n&lt;p&gt;Abahanga mu birebana na telefoni bavuga ko ibi bizagira uruhare mu gutuma iPhone zinjiriza Apple amafaranga menshi, kabone n&amp;rsquo;ubwo igiciro cyazo gishobora kuzaba kiri hasi ugereranyije na iPhone X igura kugera ku bihumbi 999 by&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Uru ruganda ngo rushobora no gushyira hanze isaha (Apple Watch) isimbura imaze imyaka itatu ishyizwe ku isoko, byitezwe ko mu dushya izaba ifite harimo ikirahure kigera ku mpande nk&amp;rsquo;uko bimeze kuri iPhone X.&lt;/p&gt;\n&lt;p&gt;Mu bindi byitezwe harimo kuba Apple ishobora gushyira ku isoko AirPower ishobora kugufasha gushyira umuriro muri iPhone, Apple Watch ndetse no mu &amp;rsquo;utwumvisho (Airpods) bidasabye ko hakoreshwa umugozi.&lt;/p&gt;\n&lt;p&gt;Mu kumurika ibi bikoresho by&amp;rsquo;ikoranabuhanga bishya, binitezwe ko ubuyobozi bwa Apple buzanatangaza igihe porogaramu nshya zirimo Mac OS Mojave iOS 12, zizazana n&amp;rsquo;utundi dushya turimo Memoji [uburyo bwo guhindura isura], gukoresha Face Time [uburyo bwo guhamagara] mu itsinda, zizatangira gukoresherezwa.&lt;/p&gt;', 'PUBLISHED', '2018-09-26 10:32:43', '2018-09-26'),
(13, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri â€˜Onlineâ€™', '', '', 'TRASHED', '2018-09-26 10:37:31', '2018-09-26'),
(14, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri Online', '', '&lt;p&gt;Umuyobozi mukuru wa Twitter, Jack Dorsey, ku wa Gatanu yatangaje ko uretse ubu buryo bwerekana abantu bari ku rubuga bwiswe &amp;lsquo;presence&amp;rsquo;, hari n&amp;rsquo;ubundi buryo &amp;lsquo;threading&amp;rsquo; bukwereka uko ikiganiro gikurikiranye.&lt;/p&gt;\n&lt;p&gt;Ibi byitezweho gutuma abakoresha Twitter babasha kuganira n&amp;rsquo;ababakurikira bari gukoresha uru rubuga ako kanya, kandi no gukurikina ibintu biri kwandikwa ku ngingo runaka bikorohere.&lt;/p&gt;\n&lt;p&gt;Ni mu gihe mu busanzwe bidashoboka guhita umenya niba umuntu ari kuri Twitter, ndetse gukurikirana ikiganiro nabyo bikaba bigorana kubera uburyo ibyo abantu banditse biba bivanze.&lt;/p&gt;\n&lt;p&gt;Uru rubuga kandi rwagaragaje ko mu rwego rwo kumara impungege abakoresha Twitter batifuza ko hagira umenya niba bari &amp;lsquo;Online&amp;rsquo;, ruteganya gushyiraho uburyo bukwemerera kubihisha.&lt;/p&gt;\n&lt;p&gt;Ibi kandi binakorwa ku zindi mbuga nka Whatsapp, aho umuntu ahitamo kugaragaza ko ari &amp;lsquo;Online&amp;rsquo;, yanabishaka agahitamo ababibona n&amp;rsquo;abatabibona.&lt;/p&gt;', 'TRASHED', '2018-09-26 10:37:42', '2018-09-26'),
(15, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &lsquo;Online&rsquo;', '', '&lt;p&gt;Umuyobozi mukuru wa Twitter, Jack Dorsey, ku wa Gatanu yatangaje ko uretse ubu buryo bwerekana abantu bari ku rubuga bwiswe &amp;lsquo;presence&amp;rsquo;, hari n&amp;rsquo;ubundi buryo &amp;lsquo;threading&amp;rsquo; bukwereka uko ikiganiro gikurikiranye.&lt;/p&gt;\n&lt;p&gt;Ibi byitezweho gutuma abakoresha Twitter babasha kuganira n&amp;rsquo;ababakurikira bari gukoresha uru rubuga ako kanya, kandi no gukurikina ibintu biri kwandikwa ku ngingo runaka bikorohere.&lt;/p&gt;\n&lt;p&gt;Ni mu gihe mu busanzwe bidashoboka guhita umenya niba umuntu ari kuri Twitter, ndetse gukurikirana ikiganiro nabyo bikaba bigorana kubera uburyo ibyo abantu banditse biba bivanze.&lt;/p&gt;\n&lt;p&gt;Uru rubuga kandi rwagaragaje ko mu rwego rwo kumara impungege abakoresha Twitter batifuza ko hagira umenya niba bari &amp;lsquo;Online&amp;rsquo;, ruteganya gushyiraho uburyo bukwemerera kubihisha.&lt;/p&gt;\n&lt;p&gt;Ibi kandi binakorwa ku zindi mbuga nka Whatsapp, aho umuntu ahitamo kugaragaza ko ari &amp;lsquo;Online&amp;rsquo;, yanabishaka agahitamo ababibona n&amp;rsquo;abatabibona.&lt;/p&gt;', 'PUBLISHED', '2018-09-26 10:38:09', '2018-09-26'),
(16, 6, 6, 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &lsquo;Online&rsquo;', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri â€˜Onlineâ€™', '', '&lt;p&gt;Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &amp;lsquo;Online&amp;rsquo;&lt;/p&gt;', 'PUBLISHED', '2018-09-26 10:42:52', '2018-09-26'),
(17, 2, 6, 'This is a complex article test', 'This is a complex article test', '', '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;strong&gt;welcome to my homeland of technology&lt;/strong&gt;. &lt;em&gt;&lt;strong&gt;Grizzly&lt;/strong&gt;&lt;/em&gt; &lt;img src=&quot;plugins/tinymce/plugins/emoticons/img/smiley-cry.gif&quot; alt=&quot;cry&quot; /&gt; everyone to create, it\'s core of our mission to empower every person and every organisation on the planet to achieve more&lt;/p&gt;\n&lt;ol&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;please connect our resources&lt;/li&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;empowering wemones&lt;/li&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;hope for the future.&lt;/li&gt;\n&lt;/ol&gt;', 'TRASHED', '2018-09-26 17:53:09', '2018-09-26'),
(18, 6, 6, 'Imibare ya Polisi y&rsquo;Igihugu igaragaza ko mu 2016 ibyaha by&rsquo;ikoranabuhanga byari ku kigero cya 0.36 by&rsquo;ibyaha ibihumbi 17 yakiriye mu mwaka wose, ariko ibyinshi byari abajura bashatse guca mu ikoranabuhanga ngo bibe amafaranga y&rsquo;abantu.', 'Icyuho mu bwirinzi bwâ€™ibitero byâ€™ikoranabuhanga mu Rwanda', '', '&lt;p&gt;Icyo gihe hari abashatse kwiba ibihumbi 700 by&amp;rsquo;amadorali imwe muri banki zo mu Rwanda polisi ibasha kubahagarika batarabikora.&lt;/p&gt;\n&lt;p&gt;Mu mwaka wa 2017 nabwo Banki Nkuru y&amp;rsquo;Igihugu yagabweho ibitero birenga ibihumbi 350, aho ibigera kuri 70% byaturutse mu mahanga.&lt;/p&gt;\n&lt;p&gt;Abahanga mu ikoranabuhanga bavuga ko bikigoye u Rwanda na Afurika kugira ibanga ku makuru babika mu buryo bw&amp;rsquo;ikoranabuhanga, kuko usanga abashinzwe umutekano w&amp;rsquo;ayo makuru ari abanyamahanga.&lt;/p&gt;\n&lt;p&gt;Ubwo abanyeshuri ba Kaminuza y&amp;rsquo;Abadivantisiti ya Afurika yo Hagati (AUCA) baganiraga ku gushaka ibisubizo by&amp;rsquo;ubwirinzi ku makuru y&amp;rsquo;ikoranabuhanga abikwa mu gihugu, hagaragajwe ko hakenewe ubwirinzi bukomeye kugira ngo serivisi zitangirwa mu ikoranabuhanga zikomeze gukora neza, kandi abagaba ibitero ntibabyaze umusaruro ayo makuru.&lt;/p&gt;\n&lt;p&gt;Niyodusenga Jean Pierre, umwarimu muri AUCA, ku mugoroba wo kuri uyu wa Kabiri yavuze ko hakenewe gukorwa uburyo bwo kwirinda ibitero by&amp;rsquo;ikoranabuhanga bukorewe imbere mu gihugu.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Turacyafite ikibazo kuko mu myigishirize bagiye bigisha gukora [porogaramu za mudasobwa] ariko kurinda ntabwo byigeze bihabwa agaciro cyane. Ariko ubu dukeneye guhanga ibyo kwirinda tuvuga ngo abantu batwinjirira twabarinda gute, kuko intambara igezweho ubu ntabwo ari iy&amp;rsquo;amasasu ni ukurwana n&amp;rsquo;ibintu bibera mu kirere, ni ukurwana tureba ngo za porogaramu zacu hatagira umuntu uzangiza.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yongeyeho ko kuzana abanyamahanga ngo barinde amakuru ari ikibazo ariko igisubizo akibona mu rubyiruko ruri kubyiga ubu.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Dufite icyuho tugomba kuziba kandi kizazibwa n&amp;rsquo;abanyarwanda. Ibyo turinda ni ibyacu bigomba kurindwa n&amp;rsquo;abanyarwanda. Aho kugira ngo uzane umuntu ukuye hanze utanabizi byaba na ngombwa akajya gucuruza amakuru yakuye aha ngaha, ibyo bintu bigomba gucika.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Edwin Kairu, umwarimu muri Carnegie Mellon University Africa yavuze ko kuzana abanyamahanga baje kurinda umutekano mu ikoranabuhanga ari amakosa kuko biba amakuru, nyamara amamiliyoni wabatanzeho yahugura abenegihugu benshi bakanakora porogaramu z&amp;rsquo;ubwirinzi kandi bwizewe.&lt;/p&gt;\n&lt;p&gt;Iradukunda Nicolas, umuybozi w&amp;rsquo;itsinda ryo kurwanya ibyaha bikorewe mu ikoranabuhanga (Cyber Security Club) muri AUCA, yatangaje ko ibi biganiro bibafasha kubona ubumenyi butagaragara mu masomo bigira mu ishuri kandi ngo bibatyaza ubwenge ku buryo bazaziba icyuho kikigaragara mu bwirinzi mu ikoranabuhanga.&lt;/p&gt;\n&lt;p&gt;Mu 2016, Minisiteri yari iy&amp;rsquo;Urubyiruko n&amp;rsquo;Ikoranabuhanga yatangaje ko ko u Rwanda rugabwaho ibitero bisaga 1000 by&amp;rsquo;ikoranabuhanga n&amp;rsquo;ubwo bisubizwa inyuma, inavuga ko hakenewe ubwirinzi buhagije butuma habaho guhangana nabyo mbere y&amp;rsquo;uko bigabwa.&lt;/p&gt;', 'PUBLISHED', '2018-09-28 06:31:55', '2018-09-28'),
(19, 5, 6, 'Kevin Systrom na Mike Krieger bashinze urubuga nkoranyambaga rukoreshwa mu gusangiza abandi amafoto ruzwi nka Instagram, batangaje ko bagiye guhagarika kurukorera.', 'Abashinze Instagram bagiye guhagarika kuyikorera', '', '&lt;p&gt;Mu 2010 nibwo aba basore bombi bashinze uru rubuga rwahise rutangira gukoreshwa na miliyoni nyinshi z&amp;rsquo;abantu. Instagram yaje kugurwa na Facebook mu 2012 kuri miliyari imwe y&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Nyuma yo kugurwa na Facebook ya Mark Zuckerberg, Instagram yagiye izana utundi dushya turimo gusangiza amashusho, kuganira imbonankubone n&amp;rsquo;ibindi.&lt;/p&gt;\n&lt;p&gt;Nubwo uru rubuga rukoreshwa n&amp;rsquo;abasaga miliyari imwe rugenda rurushaho gutera imbere, Systrom usanzwe ari Umuyobozi Mukuru wa Instagram na Krieger ushinzwe ikoranabuhanga, bahisemo gusezera ku mirimo yabo.&lt;/p&gt;\n&lt;p&gt;Mu itangazo ryashyizwe ahagaragara ku wa Mbere, Systrom yavuze ko bashaka kuba bafashe ikiruhuko, bagatekereza ku tundi dushya bahanga.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Kubaka ibintu bishya bisaba ko tuba dufashe intambwe isubira inyuma, tukumva neza ibitekerezo dufite ndetse tukabihuza n&amp;rsquo;ibyo Isi ikeneye. Ibi nibyo duteganya gukora.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yakomeje avuga ko batewe amatsiko n&amp;rsquo;ibyo Instagram na Facebook bizageraho mu myaka iri mbere, mu gihe bavuye ku kuba abayobozi bagahinduka babiri muri miliyari zikoresha izi mbuga.&lt;/p&gt;\n&lt;p&gt;Zuckerberg yasobanuye ko Systrom na Krieger ari abayobozi badasanzwe, kandi ategerezanyije amatsiko agashya bazahanga nyuma yo kuva muri Instagram.&lt;/p&gt;\n&lt;p&gt;Ikinyamakuru Bloomberg ariko cyatangaje ko gusezera kw&amp;rsquo;aba basore bishobora kuba bifitanye isano n&amp;rsquo;ubwumvikane buke na Zuckerberg ku cyerecyezo Instagram ifite.&lt;/p&gt;\n&lt;p&gt;Abavugizi ba Facebook na Instagram banze kugira icyo batangaza kuri ibi, bagaragaza ko ibyatangajwe na Systrom bihagije.&lt;/p&gt;\n&lt;p&gt;Basezeye nyuma y&amp;rsquo;amezi atandatu gusa Jan Koum wari Umuyobozi wa WhatsApp yaguzwe na Facebook mu 2014 kuri miliyari 19 z&amp;rsquo;amadolari, nawe asezeye.&lt;/p&gt;\n&lt;p&gt;Yagiye akurikira Brian Acton wari mu bashinze WhatsApp wahagaritse gukorera uru rubuga mu 2017.&lt;/p&gt;\n&lt;p&gt;Ni umwe mu bashyigikiye ko abantu bahagarika gukoresha Facebook, nyuma y&amp;rsquo;uko bimenyekanye ko Cambridge Analytica yabashije kubona no gukoresha amakuru y&amp;rsquo;abasaga miliyoni 80 batabizi.&lt;/p&gt;', 'PUBLISHED', '2018-09-28 06:35:24', '2018-09-28'),
(20, 5, 6, 'Ikigo cy&rsquo;ikoranabuhanga cya SpaceX cyatangaje ko umuherwe w&rsquo;Umuyapani, Yusaku Maezawa ari we mugenzi wa mbere uzajya ku kwezi akoresheje icyogajuru cya Big Falcon Rocket (BFR).', 'Umuyapani niwe uzaba uwa mbere kugera ku kwezi ajyanywe na SpaceX', '', '&lt;p&gt;Urugendo rwo kujya ku kwezi ruri gutegurwa n&amp;rsquo;iki kigo cyashinzwe n&amp;rsquo;umuherwe Elon Musk ruteganyijwe mu 2023.&lt;/p&gt;\n&lt;p&gt;Ni rwo rwa mbere ruzaba rukozwe n&amp;rsquo;abantu, nyuma y&amp;rsquo;abagiyeyo mu cyogajuru Apollo 17 cya NASA mu 1972.&lt;/p&gt;\n&lt;p&gt;BBC ivuga ko kuri uyu wa kabiri aribwo SpaceX yatangaje iby&amp;rsquo;uru rugendo rwa Maezawa, aho iki kigo gihamya ko ari intambwe ikomeye izafungurira amarembo abafite inzozi zo kuzenguruka mu isanzure.&lt;/p&gt;\n&lt;p&gt;Maezawa w&amp;rsquo;imyaka 42 usanzwe ukora ibijyanye n&amp;rsquo;ubuhanzi bw&amp;rsquo;imideli, yatangiye kuvugwa cyane umwaka ushize ubwo yaguraga igihangano cya nyakwigendera Jean Michel Basquiat kuri miliyoni 110.5 z&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Uyu mugabo usanzwe ukunda ibirebana n&amp;rsquo;ubuhanzi yavuze ko azatumira abanyaugeni bagera ku munani bakazajyana muri uru rugendo rugana ku kwezi.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo; Bazasabwa guhanga ikintu cyihariye nyuma yo kugaruka ku Isi. Ibihangano byabo bizabera inganzo abafite inzozi bose muri twebwe.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Abanyamerika 24 gusa nibo babashije kujya ku kwezi, gusa bose siko bahakandagije ibirenge kuko bamwe muri bo bari bafite inshingano zibasaba kuguma mu cyogajuru.&lt;/p&gt;\n&lt;p&gt;Maezawa nawe ntazabasha gukandagiza ibirenge bye ku kwezi, kuko nyuma yo kuzenguruka iruhande rw&amp;rsquo;iyi nyenyeri iruta izindi azahita agaruka ku Isi.&lt;/p&gt;\n&lt;p&gt;Iby&amp;rsquo;uru rugendo bitangajwe mu gihe Musk washinze SpaceX akomeje kunengwa n&amp;rsquo;abatari bake nyuma y&amp;rsquo;aho agaragaye ari kunywa urumogi, ubwo yaganiraga n&amp;rsquo;umunyarwenya w&amp;rsquo;Umunyamerika bakoresheje mudasobwa.&lt;/p&gt;\n&lt;p&gt;Ku wa Mbere kandi nabwo byatangajwe ko agiye kujyanwa mu nkiko ashinjwa gusebanya, nyuma yo kuvuga ko Umwongereza watabaye abana bo muri Thailand bari baheze mu buvumo azwiho gufata abana ku ngufu.&lt;/p&gt;\n&lt;p&gt;Vernon Unsworth uvuga ko yasebejwe yifuza guhabwa na Musk impozamarira ingana n&amp;rsquo;ibihumbi 75 by&amp;rsquo;amadolari.&lt;/p&gt;', 'PUBLISHED', '2018-09-28 06:38:13', '2018-09-28'),
(21, 5, 6, 'Ikigo gikomeye mu bucuruzi bw&rsquo;ibikoresho by&rsquo;ikoranabuhanga ya Apple cyujuje miliyoni 1000 z&rsquo;amadolari z&rsquo;agaciro gifite ku isoko nyuma y&rsquo;uko umugabane wayo wazamutse ukagera kuri 207.05.', 'Apple yabaye ikigo cya mbere muri Amerika kigize agaciro ka miliyari 1000 zâ€™amadolari.', '', '&lt;p&gt;Bijyanye n&amp;rsquo;izi mpinduka, ubu birabarwa ko iki kigo mu buryo bw&amp;rsquo;igereranya, umutungo wacyo urenze kimwe cya gatatu cy&amp;rsquo;ubukungu bw&amp;rsquo;u Bwongereza, ukaba uruta ubw&amp;rsquo;ibihugu bikomeye nka Turikiya cyangwa u Busuwisi.&lt;/p&gt;\n&lt;p&gt;Apple yageze kuri aka gahigo nyuma y&amp;rsquo;imyaka 42 ishinzwe n&amp;rsquo;imyaka 117 ubwo Uruganda rutunganya amabati rwa US Steel rwavuzwe ko rufite agaciro ka tiliyari y&amp;rsquo;amadolari ya Amerika mu 1901.&lt;/p&gt;\n&lt;p&gt;Iki kigo cyamamaye mu gukora ibikoresho birimo mudasobwa zigezweho za iMac na telefoni za iPhone, cyashinzwe na Steve Jobs mu 1976. Igiciro cy&amp;rsquo;umugabane wa Apple cyazamutse inshuro 2,000% kuva Tim Cook yasimbura Jobs ku mwanya w&amp;rsquo;ubuyobozi mu 2011.&lt;/p&gt;\n&lt;p&gt;Wall Street Journal yanditse ko kuzamuka mu gaciro k&amp;rsquo;imigabane ya Apple kwatangajwe ku wa Kabiri ubwo hasohorwaga uko ibigo byakoresheje imari mu mezi atatu kugeza muri Kamena 2018.&lt;/p&gt;\n&lt;p&gt;Apple yabonye inyungu ingana na miliyari $11.5 mu mezi atatu, mu bicuruzwa bya miliyari $53.3, byatumye imigabane ya iPhone izamuka n&amp;rsquo;agaciro k&amp;rsquo;ikigo kariyongera kava kuri miliyari $935 kugera kuri miliyari 1000 z&amp;rsquo;amadolari. Kuva telefoni za iPhone zajya ku isoko mu 2007, imigabane ya Apple yazamutseho 1,100%.&lt;/p&gt;\n&lt;p&gt;Umuyobozi Ushinzwe Imari muri Apple, Luca Maestri, yavuze ko &amp;lsquo;&amp;lsquo;Habaye izamuka ryihuse mu bice byose by&amp;rsquo;Isi.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Sosiyete zihanganye na Apple zirimo Facebook zasubiye inyuma ku isoko ry&amp;rsquo;imigabane aho mu munsi umwe yatakaje miliyari zirenga $120, imigabane yayo igabanukaho 20%.&lt;/p&gt;\n&lt;p&gt;Amazon yahabwaga amahirwe yo kuzuza miliyari 1000 z&amp;rsquo;amadolari na yo yasigaye inyuma aho ifite agaciro ka miliyari $883, mu gihe ibindi bigo birimo Alphabet yabyaye Google iri kuri miliyari $845.&lt;/p&gt;\n&lt;p&gt;Apple yatangiye kugurisha mudasobwa mu 1976 ariko umutungo wayo wazamuwe na iPod zasohotse mu 2001 na telefoni za iPhone zashyizwe ku isoko mu 2007. Kuva icyo gihe ubwoko 18 bumaze kumurikwa ndetse izigera kuri miliyari 1.2 zaracurujwe.&lt;/p&gt;\n&lt;p&gt;Mu mwaka ushize, Apple yacuruje miliyari $229, ibona inyungu ya miliyari $48.4, byayishyize ku isonga mu bigo byungutse akayabo muri Amerika.&lt;/p&gt;\n&lt;p&gt;Mu mateka, ikigo PetroChina na cyo agaciro ka tiliyari $1.1 ariko imigabane yacyo yari ifitwe na Leta y&amp;rsquo;u Bushinwa. Ubu ifite agaciro ka miliyari $220.&lt;/p&gt;\n&lt;center&gt;\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\n&lt;/center&gt;', 'PUBLISHED', '2018-09-28 06:40:04', '2018-09-28'),
(22, 6, 6, 'Kenneth &amp;quot;Kenny&amp;quot; Wilson Gasana usanzwe ukina muri Maroc, yahawe asaga miliyoni eshatu ngo akinire REG BBC mu irushanwa rihuza amakipe yo mu Karere ka Gatanu rizabera i Dar es Salaam muri Tanzania.', 'Kenny Gasana yatanzweho asaga miliyoni eshatu ngo akinire REG BBC irushanwa ryâ€™icyumweru kimwe', '', '&lt;p&gt;Kuri iki Cyumweru tariki 30 Nzeri 2018 kugera tariki 7 Ukwakira 2018 ku kibuga Uwanja wa Taifa mu Murwa mukuru wa Tanzania, i Dar es Salaam hazakinirwa irushanwa rihuza amakipe yo mu Karere ka Gatanu &amp;lsquo;2018 FIBA Africa Zone Five Club Championships&amp;rsquo;.&lt;/p&gt;\n&lt;p&gt;U Rwanda ruzahagararirwa n&amp;rsquo;amakipe abiri; REG BBC na Patriots BBC yagabanye ibikombe bibiri bya shampiyona biheruka. Zakoze ku bakinnyi beza bose mu Rwanda zinatira abakina hanze.&lt;/p&gt;\n&lt;p&gt;REG BBC ihabwa amahirwe yo kwegukana iri rushanwa yatiye abakinnyi batanu muri 17 yahagurukanye mu rukerera rwo kuri uyu wa Gatanu tariki 28 Nzeri 2018 ijya muri Tanzania.&lt;/p&gt;\n&lt;p&gt;Abakinnyi b&amp;rsquo;Ikipe y&amp;rsquo;Igihugu bakina hanze yatiye ni Gasana Kenneth ukinira Club Tanger yo muri Maroc, Manzi Dan Sorozo ukinira University of Texas Rio Grande Valley yo muri Leta Zunze Ubumwe za Amerika, Hamza Ruhezamihigo (udafite ikipe), Engelbert Beleck Bell (Umunya-Cameroun udafite ikipe), Stephen Shepherd ukinira Benedictine Springfield University yo muri Leta Zunze Ubumwe za Amerika.&lt;/p&gt;\n&lt;p&gt;Iyi kipe yatanze amafaranga menshi kuri aba bakinnyi ngo bemere kuyikinira iri rushanwa ry&amp;rsquo;icyumweru kimwe.&lt;/p&gt;\n&lt;p&gt;Amakuru agera kuri IGIHE yemeza ko Gasana Kenny yatanzweho ibihumbi bine by&amp;rsquo;amadolari, asaga miliyoni 3 400 000 Frw, naho Hamza Ruhezamihigo we atangwaho 3 500 arenga gato miliyoni eshatu z&amp;rsquo;amanyarwanda.&lt;/p&gt;\n&lt;p&gt;Ibi byose byakozwe hagamijwe guhanganira iki gikombe nkuko IGIHE yabitangarijwe n&amp;rsquo;Umutoza wa REG BBC, Ngwijuruvugo Richard Patrick.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Aba bakinnyi bashya ntabwo baje kudufasha kuko ntabwo turi ikipe mbi ubusanzwe ahubwo baraje ngo twunganirane dushyire imbaraga hamwe kuko turifuza gutwara igikombe.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;&amp;ldquo;Ni irushanwa rikomeye kuko nk&amp;rsquo;Abarabu baba bakomeye cyane. Niyo mpamvu twagerageje gushyiramo amaraso mashya ngo duheshe ishema igihugu. Ntitwabyina intsinzi tutarakina ariko nzi neza ko tuzaba turi ikipe imwe mu zihabwa amahirwe&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Mu bagabo iri rushanwa ry&amp;rsquo;iminsi irindwi rizitabirwa n&amp;rsquo;amakipe 11 akomeye muri aka karere ka gatanu.&lt;/p&gt;\n&lt;p&gt;Arimo nka Patriots BBC na REG BBC (zo mu Rwanda) Wolkite City na Ethiopian Water Sport (zo muri Ethiopia) JKT na Oilers BBC (zo muri Tanzania) New Stars (y&amp;rsquo;i Burundi) KPA na Strathmore (zo muri Kenya) Al ahly na Sommohua (zo mu Misiri).&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Urutonde rw&amp;rsquo;abakinnyi 17 REG BBC yajyanye muri Tanzania&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;1. Ali Kubwimana Kazingufu&lt;/p&gt;\n&lt;p&gt;2. Nshobozwabyosenumukiza Jean Jacques Wilson&lt;/p&gt;\n&lt;p&gt;3. Mukengerwa Benjamin&lt;/p&gt;\n&lt;p&gt;4. Habiyaremye Patrick&lt;/p&gt;\n&lt;p&gt;5. Ikishatse Herv&amp;eacute;&lt;/p&gt;\n&lt;p&gt;6. Nkurunziza Christ Walter&lt;/p&gt;\n&lt;p&gt;7. Nshizirungu Patrick&lt;/p&gt;\n&lt;p&gt;8. Shyaka Olivier&lt;/p&gt;\n&lt;p&gt;9. Kami Kabange&lt;/p&gt;\n&lt;p&gt;10. Ncogoza Brunel&lt;/p&gt;\n&lt;p&gt;11. Kaje Elie&lt;/p&gt;\n&lt;p&gt;12. Ngandu Mbanze Bienvenue&lt;/p&gt;\n&lt;p&gt;13. Gasana Kenneth&lt;/p&gt;\n&lt;p&gt;14. Manzi Dan Sorozo&lt;/p&gt;\n&lt;p&gt;15. Hamza Ruhezamihigo&lt;/p&gt;\n&lt;p&gt;16. Engelbert Beleck Bell&lt;/p&gt;\n&lt;p&gt;17. Stephen Shepherd&lt;/p&gt;', 'PUBLISHED', '2018-09-28 06:46:19', '2018-09-28'),
(23, 6, 6, 'Habimana Jean Eric yaje ku mwanya wa 40 mu isiganwa riri kubera mu Mujyi wa Innsbruck muri Autriche, aba umunyafurika wa kabiri warangije ku mwanya wa hafi nyuma ya Biniyam Ghirmay ukomoka muri Eritrea wabaye uwa 13.', 'Amagare: Habimana yaje ku mwanya wa 40 muri shampiyona yâ€™Isi muri Autriche', '', '&lt;p&gt;Habimana Jean Eric aheruka kwegukana shampiyona y&amp;rsquo;u Rwanda y&amp;rsquo;ingimbi mu 2017.&lt;/p&gt;\n&lt;p&gt;Abanyarwanda bagorwa cyane no kwitwara neza muri shampiyona y&amp;rsquo;Isi kuko haba hahuriye abakinnyi beza kurusha abandi ku isi. Gusa mu kiciro cy&amp;rsquo;ingimbi, Habimana Jean Eric usanzwe ukinira ikipe ya Skol Brewery &amp;lsquo;Fly Cycling Club&amp;rsquo; yagerageje kwitwara neza.&lt;/p&gt;\n&lt;p&gt;Iri siganwa ry&amp;rsquo;abatarengeje imyaka 19 ryahuje abakinnyi 159 bavuye mu 54 bitandukanye ku Isi. Bahagurutse mu Mujyi wa Kufstein basoreza i Innsbruck ku ntera ya 126.8km.&lt;/p&gt;\n&lt;p&gt;Habimana yakoresheje imbaraga nyinshi kuko nubwo ari isiganwa ryanyuze mu mihanda irimo udusozi ryihutaga cyane, ku buryo abakinnyi bagenderaga ku muvuduko wa 43km mu isaha nk&amp;rsquo;uko abashinzwe imibare muri iyi shampiyona y&amp;rsquo;isi babitangaje.&lt;/p&gt;\n&lt;p&gt;Yasoreje ku mwanya wa 40 akoresheje amasaha 3:19:14. Yasizwe iminota 15:25 n&amp;rsquo;Umubiligi Remco Evenepoel waje imbere, we usanzwe ukinira ikipe yo mu kiciro cya mbere (World Tour Team) Quick-Step Floors y&amp;rsquo;iwabo mu Bubiligi.&lt;/p&gt;\n&lt;p&gt;Kuza ku mwanya wa 40 ni umusaruro mwiza nkuko uyu musore yabitangarije IGIHE.&lt;/p&gt;\n&lt;p&gt;Yagize ati &amp;ldquo;Ntabwo amasiganwa y&amp;rsquo;i Burayi aba ameze nk&amp;rsquo;ayo muri Afurika. Gusiganwa n&amp;rsquo;abantu barenga 150 bitandukanye n&amp;rsquo;ibyo dusanzwe dukina iwacu.&quot;&lt;/p&gt;\n&lt;p&gt;&quot;Byangoye mu bilometero bya mbere ariko nageze aho ndamenyera nkoresha imbaraga nyinshi mbasha gusoreza muri 40 ba mbere. Icya mbere kigora aha ni imiyaga ifite ingufu.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Habimana utozwa na Nathan Byukusenge muri iyi shampiyona y&amp;rsquo;isi, yakomeje ashimira abamufashije kwitegura bakanamushakira amasiganwa yitabiriye mu Bubiligi muri Nyakanga uyu mwaka.&lt;/p&gt;', 'PUBLISHED', '2018-09-28 06:50:37', '2018-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `articles_attachments`
--

CREATE TABLE `articles_attachments` (
  `attach_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `file_name` varchar(1024) NOT NULL,
  `extenstion` varchar(50) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_attachments`
--

INSERT INTO `articles_attachments` (`attach_id`, `article_id`, `file_name`, `extenstion`, `file_size`, `file_type`, `status`, `upload_date`) VALUES
(1, 16, '25367968c207eb55a8bf745f2be66066-189348244.jpg', 'jpg', '', 'jpg', 'DELETED', '2018-09-26 23:47:29'),
(2, 16, 'merlin_142977771_f7d7e1fa-9126-4b63-8ec6-624eec509811-jumbo-1683900077.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-27 00:18:21'),
(3, 16, 'amazon-prime-day-949750582.jpg', 'jpg', '', 'jpg', 'DELETED', '2018-09-27 00:48:03'),
(4, 16, 'amazon-prime-day-2043158703.jpg', 'jpg', '', 'jpg', 'DELETED', '2018-09-27 00:48:54'),
(5, 18, 'hacker-384344397.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:33:11'),
(6, 19, 'instagram-ne4a68-0e274-825955819.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:36:03'),
(7, 20, 'umuyapani-2je041-8e774-1160182236.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:38:42'),
(8, 21, 'ct-biz-apple2448-3b929-1937229945.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:40:40'),
(9, 22, 'hamza_ruhezaf76d-a454e-1166084468.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:46:48'),
(10, 22, 'abakinnyi_ba552f-32a47-961668177.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:47:01'),
(11, 22, 'gasana_kenny7eea-d092d-1641192782.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:47:22'),
(12, 23, 'ikipe_y_ingie246-c8b79-957128109.jpg', 'jpg', '', 'jpg', 'PENDING', '2018-09-28 06:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE `articles_categories` (
  `category_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`category_id`, `name`, `description`, `status`, `regDate`) VALUES
(1, 'UBUKUNGU', '', 'ACTIVE', '2018-09-03 13:14:59'),
(2, 'UBUZIMA', '', 'ACTIVE', '2018-09-03 20:08:17'),
(3, 'UBUREZI', '', 'ACTIVE', '2018-09-03 20:48:26'),
(4, 'UBUGENI', '', 'ACTIVE', '2018-09-26 10:20:46'),
(5, 'IKORANABUHANGA', '', 'ACTIVE', '2018-09-26 10:21:04'),
(6, 'IBYEGERANYO', '', 'ACTIVE', '2018-09-26 10:21:26'),
(7, 'IMIKINO', '', 'ACTIVE', '2018-09-28 06:43:57'),
(8, 'IMYIDAGADURO', '', 'ACTIVE', '2018-09-28 06:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `articles_comments`
--

CREATE TABLE `articles_comments` (
  `comment_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `user_mail` varchar(1024) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_names` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `attachment` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_likes`
--

CREATE TABLE `articles_likes` (
  `like_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `articles_posters`
--

CREATE TABLE `articles_posters` (
  `poster_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `filename` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_posters`
--

INSERT INTO `articles_posters` (`poster_id`, `article_id`, `filename`, `status`, `regDate`) VALUES
(1, 6, '1628589569.jpg', 'ACTIVE', '2018-09-04 05:03:49'),
(2, 5, '1396822991.jpg', 'PENDING', '2018-09-04 05:14:57'),
(3, 4, '758775144.jpg', 'ACTIVE', '2018-09-04 05:36:08'),
(4, 3, '1885195813.jpg', 'ACTIVE', '2018-09-04 23:48:14'),
(5, 5, '1562388790.jpg', 'ACTIVE', '2018-09-26 07:02:26'),
(6, 12, '1467038594.jpg', 'ACTIVE', '2018-09-26 10:33:23'),
(7, 16, '956037205.jpg', 'ACTIVE', '2018-09-26 10:45:24'),
(8, 15, '453801863.jpg', 'ACTIVE', '2018-09-26 17:04:53'),
(9, 7, '1061139865.jpg', 'ACTIVE', '2018-09-26 17:46:48'),
(10, 18, '474841595.jpg', 'ACTIVE', '2018-09-28 06:32:59'),
(11, 19, '665895007.jpg', 'ACTIVE', '2018-09-28 06:35:48'),
(12, 20, '564293864.jpg', 'ACTIVE', '2018-09-28 06:38:28'),
(13, 21, '1389484870.jpg', 'ACTIVE', '2018-09-28 06:40:20'),
(14, 22, '1139405416.jpg', 'ACTIVE', '2018-09-28 06:46:36'),
(15, 23, '662515729.jpg', 'ACTIVE', '2018-09-28 06:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `articles_visits`
--

CREATE TABLE `articles_visits` (
  `visit_id` int(100) NOT NULL,
  `article_id` int(100) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(100) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `bio` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `json` text NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `author_info`
--

CREATE TABLE `author_info` (
  `info_id` int(100) NOT NULL,
  `author_id` int(100) NOT NULL,
  `twitter_link` varchar(1024) NOT NULL,
  `facebook_link` varchar(1024) NOT NULL,
  `status` varchar(50) NOT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(100) NOT NULL,
  `advert_id` int(100) NOT NULL,
  `filename` varchar(1024) NOT NULL,
  `extension` varchar(100) NOT NULL,
  `section` varchar(123) NOT NULL,
  `status` varchar(122) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `advert_id`, `filename`, `extension`, `section`, `status`, `regDate`) VALUES
(1, 1, '1371676855.jpg', 'jpg', '', 'ACTIVE', '2018-09-03 22:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `user_id` int(100) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `password` varchar(255) NOT NULL,
  `names` varchar(1024) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `user_type` int(2) NOT NULL,
  `verified` int(2) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `isOnline` varchar(100) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`user_id`, `email`, `password`, `names`, `phone`, `gender`, `user_type`, `verified`, `verification_code`, `status`, `isOnline`, `regDate`) VALUES
(1, 'sam@gmail.com', '123456', 'samuel sugira', '0987654321', 'M', 1, 1, '123456', 'ACTIVE', '0', '2018-08-26 09:13:35'),
(2, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 0, 0, '', 'ACTIVE', '', '2018-09-03 12:07:35'),
(3, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 1, 0, '', 'ACTIVE', '', '2018-09-03 12:07:56'),
(4, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '222222222222', '', 2, 0, '', 'ACTIVE', '', '2018-09-03 12:08:11'),
(5, 'dsdsd@gmail.com', 'samuels', 'dsdsd', '333333333333333', '', 1, 0, '', 'ACTIVE', '', '2018-09-03 12:12:58'),
(6, 'elisa@gmail.com', '123456', 'elisa pro', '078898765', '', 2, 0, '', 'ACTIVE', '', '2018-09-03 13:19:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert_categories`
--
ALTER TABLE `advert_categories`
  ADD PRIMARY KEY (`advert_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `articles_attachments`
--
ALTER TABLE `articles_attachments`
  ADD PRIMARY KEY (`attach_id`);

--
-- Indexes for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `articles_comments`
--
ALTER TABLE `articles_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `articles_posters`
--
ALTER TABLE `articles_posters`
  ADD PRIMARY KEY (`poster_id`);

--
-- Indexes for table `articles_visits`
--
ALTER TABLE `articles_visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `author_info`
--
ALTER TABLE `author_info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advert_categories`
--
ALTER TABLE `advert_categories`
  MODIFY `advert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `articles_attachments`
--
ALTER TABLE `articles_attachments`
  MODIFY `attach_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles_comments`
--
ALTER TABLE `articles_comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `like_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_posters`
--
ALTER TABLE `articles_posters`
  MODIFY `poster_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles_visits`
--
ALTER TABLE `articles_visits`
  MODIFY `visit_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author_info`
--
ALTER TABLE `author_info`
  MODIFY `info_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
