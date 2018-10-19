-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 07:29 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

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
  `views` int(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validate_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `author_id`, `sub_title`, `title`, `description`, `text`, `views`, `status`, `submit_date`, `validate_date`) VALUES
(1, 1, 0, 'ssssssssss', 'ssssssssssss', '', '<p>sssssssssssssssssssssssss<strong>sdsssssssssssssssssssssssssssssssssssdsssssssssssssssssssssssfdfdfdfdfd</strong></p>', 0, 'ACTIVE', '2018-09-03 19:17:53', ''),
(2, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>&nbsp;</p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 0, 'ACTIVE', '2018-09-03 19:34:01', ''),
(3, 1, 0, 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</strong><br /><em>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</em><br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Â </p>\n<ol>\n<li>dsdsdsdsd</li>\n</ol>', 0, 'PUBLISHED', '2018-09-03 20:00:59', ''),
(4, 2, 0, '', 'Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.', '', '<p>Welcome to My Homeland of Technology We Hope That You Enjoy The Temper You have Given Us.</p>', 0, 'SUBMITTED', '2018-09-03 20:08:49', ''),
(5, 2, 6, 'RWANDA: Welcome to my homeland of technology we hope you enjoy this', 'RWANDA: Welcome to my homeland of technology we hope you enjoy this', '', '&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community. After nearly a year spent in development, AT&amp;amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality. AT&amp;amp;T\'s effort marks a different, more proactive form of community outreach. It\'s unique, community leaders and activists say, because the company\'s not just cutting a check. Instead, it\'s leaning on the employees working in those communities, as well as local leaders and charity groups, to figure out how best to help. In doing so, the company hopes the program serves as a model that it can take from city to city, but also can inspire other corporations to follow.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;RWANDA IS BEST COUNTRY.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-03 20:12:55', ''),
(6, 1, 6, 'Welcome to my homeland of technology we hope you enjoy this', 'Welcome to my homeland of technology we hope you enjoy this', '', '&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community.\n\nAfter nearly a year spent in development, AT&amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality.\n\nAT&amp;T\'s effort marks a different, more proactive form of community outreach. It\'s unique, community leaders and activists say, because the company\'s not just cutting a check. Instead, it\'s leaning on the employees working in those communities, as well as local leaders and charity groups, to figure out how best to help. In doing so, the company hopes the program serves as a model that it can take from city to city, but also can inspire other corporations to follow.&lt;/p&gt;', 0, 'SUBMITTED', '2018-09-03 20:55:02', ''),
(7, 5, 6, 'The company\'s dialing up a unique community outreach program in Chicago.', 'Inside AT&amp;amp;amp;T\'s mission to help a city escape gun violence', '', '&lt;p&gt;welcome to AT &amp;amp; T Hackerthon&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-26 10:22:19', '2018-09-26'),
(8, 5, 6, 'The company\'s dialing up a unique community outreach program in Chicago.', 'Inside AT&T\'s mission to help a city escape gun violence', '', '&lt;p class=&quot;speakableTextP1&quot;&gt;Two years ago,&amp;nbsp;&lt;a href=&quot;https://www.cnet.com/tags/att/&quot; data-annotation=&quot;true&quot; data-component=&quot;linkTracker&quot; data-link-tracker-options=&quot;{&amp;quot;action&amp;quot;:&amp;quot;inline-annotation|AT&amp;amp;T|CNET_TAG|644&amp;quot;}&quot;&gt;AT&amp;amp;T&lt;/a&gt;&amp;nbsp;technician Cedric Wouldfolk was finishing up an installation at a customer\'s home when he received a call every parent dreads.&lt;/p&gt;\n&lt;p class=&quot;speakableTextP2&quot;&gt;The caller ID showed his son\'s number, but a female voice was on the other line. His son had been shot.&lt;/p&gt;\n&lt;p&gt;&quot;I went dark for a little while,&quot; Wouldfolk recalls.&lt;/p&gt;\n&lt;p&gt;His son, who was shot half a block from the Wouldfolks\' home in the Chicago neighborhood of Austin, was hit in the back of the leg. He now walks with a metal rod.&lt;/p&gt;\n&lt;p&gt;Rather than get angry, Wouldfolk tried to understand the problem, first by talking to the men hanging out at local street corners and hearing their stories. He needed to take action. &quot;I can\'t let something like this go,&quot; he says.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Wouldfolk, who strides easily in his 6-foot, 4-inch frame and speaks with a booming but jovial voice, wasn\'t involved much with the community. When he decided to act, many of his co-workers joined him.&lt;/p&gt;\n&lt;p&gt;He ended up helping the Austin Boxing Club, a program that gets kids off the street and teaches them valuable skills like conflict resolution, and that arguments don\'t always have to escalate to using guns.&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Wouldfolk\'s volunteer work and his calls to help with the gun violence facing the city served as one of the key inspirations behind AT&amp;amp;T\'s Believe Chicago initiative, which includes not only charitable contributions, but creating job opportunities, providing the necessary training and encouraging staff to volunteer in the community.&lt;/p&gt;\n&lt;p&gt;After nearly a year spent in development, AT&amp;amp;T announced the program on Tuesday. CNET got an early chance to talk with the people at the company and in the community who helped make it a reality.&lt;/p&gt;', 0, 'TRASHED', '2018-09-26 10:22:24', '2018-09-26'),
(9, 5, 6, 'Bimaze kumenyerwa ko muri Nzeri, uruganda rukora ibikoresho by&rsquo;ikoranabuhanga rwa Apple rushyira hanze telefoni nshya, kandi ikaza yisumbuye ku zo isanze ku isoko.', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '', 0, 'TRASHED', '2018-09-26 10:27:45', '2018-09-26'),
(10, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '&lt;h3 class=&quot;title-article&quot;&gt;Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko&lt;/h3&gt;', 0, 'TRASHED', '2018-09-26 10:30:26', '2018-09-26'),
(11, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko.', '', '&lt;h3 class=&quot;title-article&quot;&gt;Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko&lt;/h3&gt;', 0, 'TRASHED', '2018-09-26 10:31:33', '2018-09-26'),
(12, 6, 6, 'Ibyo kwitega kuri telefoni nshya Apple iteganya gushyira ku isoko', 'Telefoni nshya Apple iteganya gushyira ku isoko uyu mwaka.', '', '&lt;p&gt;Ku itariki ya 12 Nzeri nibwo Umuyobozi Mukuru wa Apple, Tim Cook azashyira ahagaragara telefoni nshya zakozwe muri uyu mwaka.&lt;/p&gt;\n&lt;p&gt;Bizakorerwa mu kiganiro n&amp;rsquo;abanyamakuru kizabera muri Steve Jobs Theater i Cupertino muri Leta ya California.&lt;/p&gt;\n&lt;p&gt;Mu gihe habura amasaha make ngo iki gikorwa kibe, ibinyamakuru bitandukanye byatangiye kugaragaza ibyo umuntu yakwitega kuri telefoni nshya.&lt;/p&gt;\n&lt;p&gt;Bloomberg na 9to5Mac byemeza ko byabonye amafoto ya telefoni nshya zizashyirwa hanze.&lt;/p&gt;\n&lt;p&gt;Bivuga ko muri zo harimo iPhone XS izaba imeze neza nk&amp;rsquo;iyayibanjirije, icyahindutse akaba ari uburyo yihuta na camera.&lt;/p&gt;\n&lt;p&gt;Iyi telefoni kandi ishobora kuzaba ifite indi bimeze kimwe ariko yisumbuye mu bunini kuko izaba ifite santimetero 17.2. Bikekwa ko izahabwa izina rya iPhone XS Max.&lt;/p&gt;\n&lt;p&gt;Apple kandi ishobora gushyira hanze izindi telefoni zifitemo udushya nk&amp;rsquo;utwa iPhone X, turimo nk&amp;rsquo;uburyo bwo gushyiramo urufunguzo ukoresheje isura (Face ID), buzasimbura igikumwe.&lt;/p&gt;\n&lt;p&gt;Abahanga mu birebana na telefoni bavuga ko ibi bizagira uruhare mu gutuma iPhone zinjiriza Apple amafaranga menshi, kabone n&amp;rsquo;ubwo igiciro cyazo gishobora kuzaba kiri hasi ugereranyije na iPhone X igura kugera ku bihumbi 999 by&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Uru ruganda ngo rushobora no gushyira hanze isaha (Apple Watch) isimbura imaze imyaka itatu ishyizwe ku isoko, byitezwe ko mu dushya izaba ifite harimo ikirahure kigera ku mpande nk&amp;rsquo;uko bimeze kuri iPhone X.&lt;/p&gt;\n&lt;p&gt;Mu bindi byitezwe harimo kuba Apple ishobora gushyira ku isoko AirPower ishobora kugufasha gushyira umuriro muri iPhone, Apple Watch ndetse no mu &amp;rsquo;utwumvisho (Airpods) bidasabye ko hakoreshwa umugozi.&lt;/p&gt;\n&lt;p&gt;Mu kumurika ibi bikoresho by&amp;rsquo;ikoranabuhanga bishya, binitezwe ko ubuyobozi bwa Apple buzanatangaza igihe porogaramu nshya zirimo Mac OS Mojave iOS 12, zizazana n&amp;rsquo;utundi dushya turimo Memoji [uburyo bwo guhindura isura], gukoresha Face Time [uburyo bwo guhamagara] mu itsinda, zizatangira gukoresherezwa.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-26 10:32:43', '2018-09-26'),
(13, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri â€˜Onlineâ€™', '', '', 0, 'TRASHED', '2018-09-26 10:37:31', '2018-09-26'),
(14, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri Online', '', '&lt;p&gt;Umuyobozi mukuru wa Twitter, Jack Dorsey, ku wa Gatanu yatangaje ko uretse ubu buryo bwerekana abantu bari ku rubuga bwiswe &amp;lsquo;presence&amp;rsquo;, hari n&amp;rsquo;ubundi buryo &amp;lsquo;threading&amp;rsquo; bukwereka uko ikiganiro gikurikiranye.&lt;/p&gt;\n&lt;p&gt;Ibi byitezweho gutuma abakoresha Twitter babasha kuganira n&amp;rsquo;ababakurikira bari gukoresha uru rubuga ako kanya, kandi no gukurikina ibintu biri kwandikwa ku ngingo runaka bikorohere.&lt;/p&gt;\n&lt;p&gt;Ni mu gihe mu busanzwe bidashoboka guhita umenya niba umuntu ari kuri Twitter, ndetse gukurikirana ikiganiro nabyo bikaba bigorana kubera uburyo ibyo abantu banditse biba bivanze.&lt;/p&gt;\n&lt;p&gt;Uru rubuga kandi rwagaragaje ko mu rwego rwo kumara impungege abakoresha Twitter batifuza ko hagira umenya niba bari &amp;lsquo;Online&amp;rsquo;, ruteganya gushyiraho uburyo bukwemerera kubihisha.&lt;/p&gt;\n&lt;p&gt;Ibi kandi binakorwa ku zindi mbuga nka Whatsapp, aho umuntu ahitamo kugaragaza ko ari &amp;lsquo;Online&amp;rsquo;, yanabishaka agahitamo ababibona n&amp;rsquo;abatabibona.&lt;/p&gt;', 0, 'TRASHED', '2018-09-26 10:37:42', '2018-09-26'),
(15, 5, 6, 'Mu gihe byari bisanzwe bimenyerewe ku zindi mbuga nkoranyambaga zirimo Whatsapp na Facebook, Ubuyobozi bwa Twitter, bwatangaje ko buri gukora igerageza ku buryo buzajya butuma umenya niba umuntu ukurikira ari ku rubuga ako kanya (online).', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &lsquo;Online&rsquo;', '', '&lt;p&gt;Umuyobozi mukuru wa Twitter, Jack Dorsey, ku wa Gatanu yatangaje ko uretse ubu buryo bwerekana abantu bari ku rubuga bwiswe &amp;lsquo;presence&amp;rsquo;, hari n&amp;rsquo;ubundi buryo &amp;lsquo;threading&amp;rsquo; bukwereka uko ikiganiro gikurikiranye.&lt;/p&gt;\n&lt;p&gt;Ibi byitezweho gutuma abakoresha Twitter babasha kuganira n&amp;rsquo;ababakurikira bari gukoresha uru rubuga ako kanya, kandi no gukurikina ibintu biri kwandikwa ku ngingo runaka bikorohere.&lt;/p&gt;\n&lt;p&gt;Ni mu gihe mu busanzwe bidashoboka guhita umenya niba umuntu ari kuri Twitter, ndetse gukurikirana ikiganiro nabyo bikaba bigorana kubera uburyo ibyo abantu banditse biba bivanze.&lt;/p&gt;\n&lt;p&gt;Uru rubuga kandi rwagaragaje ko mu rwego rwo kumara impungege abakoresha Twitter batifuza ko hagira umenya niba bari &amp;lsquo;Online&amp;rsquo;, ruteganya gushyiraho uburyo bukwemerera kubihisha.&lt;/p&gt;\n&lt;p&gt;Ibi kandi binakorwa ku zindi mbuga nka Whatsapp, aho umuntu ahitamo kugaragaza ko ari &amp;lsquo;Online&amp;rsquo;, yanabishaka agahitamo ababibona n&amp;rsquo;abatabibona.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-26 10:38:09', '2018-09-26'),
(16, 6, 6, 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &lsquo;Online&rsquo;', 'Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri â€˜Onlineâ€™', '', '&lt;p&gt;Twitter igiye gushyiraho uburyo buzajya bugaragaza umuntu uri &amp;lsquo;Online&amp;rsquo;&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-26 10:42:52', '2018-09-26'),
(17, 2, 6, 'This is a complex article test', 'This is a complex article test', '', '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;strong&gt;welcome to my homeland of technology&lt;/strong&gt;. &lt;em&gt;&lt;strong&gt;Grizzly&lt;/strong&gt;&lt;/em&gt; &lt;img src=&quot;plugins/tinymce/plugins/emoticons/img/smiley-cry.gif&quot; alt=&quot;cry&quot; /&gt; everyone to create, it\'s core of our mission to empower every person and every organisation on the planet to achieve more&lt;/p&gt;\n&lt;ol&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;please connect our resources&lt;/li&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;empowering wemones&lt;/li&gt;\n&lt;li style=&quot;text-align: left;&quot;&gt;hope for the future.&lt;/li&gt;\n&lt;/ol&gt;', 0, 'TRASHED', '2018-09-26 17:53:09', '2018-09-26'),
(18, 6, 6, 'Imibare ya Polisi y&rsquo;Igihugu igaragaza ko mu 2016 ibyaha by&rsquo;ikoranabuhanga byari ku kigero cya 0.36 by&rsquo;ibyaha ibihumbi 17 yakiriye mu mwaka wose, ariko ibyinshi byari abajura bashatse guca mu ikoranabuhanga ngo bibe amafaranga y&rsquo;abantu.', 'Icyuho mu bwirinzi bwâ€™ibitero byâ€™ikoranabuhanga mu Rwanda', '', '&lt;p&gt;Icyo gihe hari abashatse kwiba ibihumbi 700 by&amp;rsquo;amadorali imwe muri banki zo mu Rwanda polisi ibasha kubahagarika batarabikora.&lt;/p&gt;\n&lt;p&gt;Mu mwaka wa 2017 nabwo Banki Nkuru y&amp;rsquo;Igihugu yagabweho ibitero birenga ibihumbi 350, aho ibigera kuri 70% byaturutse mu mahanga.&lt;/p&gt;\n&lt;p&gt;Abahanga mu ikoranabuhanga bavuga ko bikigoye u Rwanda na Afurika kugira ibanga ku makuru babika mu buryo bw&amp;rsquo;ikoranabuhanga, kuko usanga abashinzwe umutekano w&amp;rsquo;ayo makuru ari abanyamahanga.&lt;/p&gt;\n&lt;p&gt;Ubwo abanyeshuri ba Kaminuza y&amp;rsquo;Abadivantisiti ya Afurika yo Hagati (AUCA) baganiraga ku gushaka ibisubizo by&amp;rsquo;ubwirinzi ku makuru y&amp;rsquo;ikoranabuhanga abikwa mu gihugu, hagaragajwe ko hakenewe ubwirinzi bukomeye kugira ngo serivisi zitangirwa mu ikoranabuhanga zikomeze gukora neza, kandi abagaba ibitero ntibabyaze umusaruro ayo makuru.&lt;/p&gt;\n&lt;p&gt;Niyodusenga Jean Pierre, umwarimu muri AUCA, ku mugoroba wo kuri uyu wa Kabiri yavuze ko hakenewe gukorwa uburyo bwo kwirinda ibitero by&amp;rsquo;ikoranabuhanga bukorewe imbere mu gihugu.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Turacyafite ikibazo kuko mu myigishirize bagiye bigisha gukora [porogaramu za mudasobwa] ariko kurinda ntabwo byigeze bihabwa agaciro cyane. Ariko ubu dukeneye guhanga ibyo kwirinda tuvuga ngo abantu batwinjirira twabarinda gute, kuko intambara igezweho ubu ntabwo ari iy&amp;rsquo;amasasu ni ukurwana n&amp;rsquo;ibintu bibera mu kirere, ni ukurwana tureba ngo za porogaramu zacu hatagira umuntu uzangiza.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yongeyeho ko kuzana abanyamahanga ngo barinde amakuru ari ikibazo ariko igisubizo akibona mu rubyiruko ruri kubyiga ubu.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Dufite icyuho tugomba kuziba kandi kizazibwa n&amp;rsquo;abanyarwanda. Ibyo turinda ni ibyacu bigomba kurindwa n&amp;rsquo;abanyarwanda. Aho kugira ngo uzane umuntu ukuye hanze utanabizi byaba na ngombwa akajya gucuruza amakuru yakuye aha ngaha, ibyo bintu bigomba gucika.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Edwin Kairu, umwarimu muri Carnegie Mellon University Africa yavuze ko kuzana abanyamahanga baje kurinda umutekano mu ikoranabuhanga ari amakosa kuko biba amakuru, nyamara amamiliyoni wabatanzeho yahugura abenegihugu benshi bakanakora porogaramu z&amp;rsquo;ubwirinzi kandi bwizewe.&lt;/p&gt;\n&lt;p&gt;Iradukunda Nicolas, umuybozi w&amp;rsquo;itsinda ryo kurwanya ibyaha bikorewe mu ikoranabuhanga (Cyber Security Club) muri AUCA, yatangaje ko ibi biganiro bibafasha kubona ubumenyi butagaragara mu masomo bigira mu ishuri kandi ngo bibatyaza ubwenge ku buryo bazaziba icyuho kikigaragara mu bwirinzi mu ikoranabuhanga.&lt;/p&gt;\n&lt;p&gt;Mu 2016, Minisiteri yari iy&amp;rsquo;Urubyiruko n&amp;rsquo;Ikoranabuhanga yatangaje ko ko u Rwanda rugabwaho ibitero bisaga 1000 by&amp;rsquo;ikoranabuhanga n&amp;rsquo;ubwo bisubizwa inyuma, inavuga ko hakenewe ubwirinzi buhagije butuma habaho guhangana nabyo mbere y&amp;rsquo;uko bigabwa.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-28 06:31:55', '2018-09-28'),
(19, 5, 6, 'Kevin Systrom na Mike Krieger bashinze urubuga nkoranyambaga rukoreshwa mu gusangiza abandi amafoto ruzwi nka Instagram, batangaje ko bagiye guhagarika kurukorera.', 'Abashinze Instagram bagiye guhagarika kuyikorera', '', '&lt;p&gt;Mu 2010 nibwo aba basore bombi bashinze uru rubuga rwahise rutangira gukoreshwa na miliyoni nyinshi z&amp;rsquo;abantu. Instagram yaje kugurwa na Facebook mu 2012 kuri miliyari imwe y&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Nyuma yo kugurwa na Facebook ya Mark Zuckerberg, Instagram yagiye izana utundi dushya turimo gusangiza amashusho, kuganira imbonankubone n&amp;rsquo;ibindi.&lt;/p&gt;\n&lt;p&gt;Nubwo uru rubuga rukoreshwa n&amp;rsquo;abasaga miliyari imwe rugenda rurushaho gutera imbere, Systrom usanzwe ari Umuyobozi Mukuru wa Instagram na Krieger ushinzwe ikoranabuhanga, bahisemo gusezera ku mirimo yabo.&lt;/p&gt;\n&lt;p&gt;Mu itangazo ryashyizwe ahagaragara ku wa Mbere, Systrom yavuze ko bashaka kuba bafashe ikiruhuko, bagatekereza ku tundi dushya bahanga.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Kubaka ibintu bishya bisaba ko tuba dufashe intambwe isubira inyuma, tukumva neza ibitekerezo dufite ndetse tukabihuza n&amp;rsquo;ibyo Isi ikeneye. Ibi nibyo duteganya gukora.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yakomeje avuga ko batewe amatsiko n&amp;rsquo;ibyo Instagram na Facebook bizageraho mu myaka iri mbere, mu gihe bavuye ku kuba abayobozi bagahinduka babiri muri miliyari zikoresha izi mbuga.&lt;/p&gt;\n&lt;p&gt;Zuckerberg yasobanuye ko Systrom na Krieger ari abayobozi badasanzwe, kandi ategerezanyije amatsiko agashya bazahanga nyuma yo kuva muri Instagram.&lt;/p&gt;\n&lt;p&gt;Ikinyamakuru Bloomberg ariko cyatangaje ko gusezera kw&amp;rsquo;aba basore bishobora kuba bifitanye isano n&amp;rsquo;ubwumvikane buke na Zuckerberg ku cyerecyezo Instagram ifite.&lt;/p&gt;\n&lt;p&gt;Abavugizi ba Facebook na Instagram banze kugira icyo batangaza kuri ibi, bagaragaza ko ibyatangajwe na Systrom bihagije.&lt;/p&gt;\n&lt;p&gt;Basezeye nyuma y&amp;rsquo;amezi atandatu gusa Jan Koum wari Umuyobozi wa WhatsApp yaguzwe na Facebook mu 2014 kuri miliyari 19 z&amp;rsquo;amadolari, nawe asezeye.&lt;/p&gt;\n&lt;p&gt;Yagiye akurikira Brian Acton wari mu bashinze WhatsApp wahagaritse gukorera uru rubuga mu 2017.&lt;/p&gt;\n&lt;p&gt;Ni umwe mu bashyigikiye ko abantu bahagarika gukoresha Facebook, nyuma y&amp;rsquo;uko bimenyekanye ko Cambridge Analytica yabashije kubona no gukoresha amakuru y&amp;rsquo;abasaga miliyoni 80 batabizi.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-28 06:35:24', '2018-09-28'),
(20, 5, 6, 'Ikigo cy&rsquo;ikoranabuhanga cya SpaceX cyatangaje ko umuherwe w&rsquo;Umuyapani, Yusaku Maezawa ari we mugenzi wa mbere uzajya ku kwezi akoresheje icyogajuru cya Big Falcon Rocket (BFR).', 'Umuyapani niwe uzaba uwa mbere kugera ku kwezi ajyanywe na SpaceX', '', '&lt;p&gt;Urugendo rwo kujya ku kwezi ruri gutegurwa n&amp;rsquo;iki kigo cyashinzwe n&amp;rsquo;umuherwe Elon Musk ruteganyijwe mu 2023.&lt;/p&gt;\n&lt;p&gt;Ni rwo rwa mbere ruzaba rukozwe n&amp;rsquo;abantu, nyuma y&amp;rsquo;abagiyeyo mu cyogajuru Apollo 17 cya NASA mu 1972.&lt;/p&gt;\n&lt;p&gt;BBC ivuga ko kuri uyu wa kabiri aribwo SpaceX yatangaje iby&amp;rsquo;uru rugendo rwa Maezawa, aho iki kigo gihamya ko ari intambwe ikomeye izafungurira amarembo abafite inzozi zo kuzenguruka mu isanzure.&lt;/p&gt;\n&lt;p&gt;Maezawa w&amp;rsquo;imyaka 42 usanzwe ukora ibijyanye n&amp;rsquo;ubuhanzi bw&amp;rsquo;imideli, yatangiye kuvugwa cyane umwaka ushize ubwo yaguraga igihangano cya nyakwigendera Jean Michel Basquiat kuri miliyoni 110.5 z&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Uyu mugabo usanzwe ukunda ibirebana n&amp;rsquo;ubuhanzi yavuze ko azatumira abanyaugeni bagera ku munani bakazajyana muri uru rugendo rugana ku kwezi.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo; Bazasabwa guhanga ikintu cyihariye nyuma yo kugaruka ku Isi. Ibihangano byabo bizabera inganzo abafite inzozi bose muri twebwe.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Abanyamerika 24 gusa nibo babashije kujya ku kwezi, gusa bose siko bahakandagije ibirenge kuko bamwe muri bo bari bafite inshingano zibasaba kuguma mu cyogajuru.&lt;/p&gt;\n&lt;p&gt;Maezawa nawe ntazabasha gukandagiza ibirenge bye ku kwezi, kuko nyuma yo kuzenguruka iruhande rw&amp;rsquo;iyi nyenyeri iruta izindi azahita agaruka ku Isi.&lt;/p&gt;\n&lt;p&gt;Iby&amp;rsquo;uru rugendo bitangajwe mu gihe Musk washinze SpaceX akomeje kunengwa n&amp;rsquo;abatari bake nyuma y&amp;rsquo;aho agaragaye ari kunywa urumogi, ubwo yaganiraga n&amp;rsquo;umunyarwenya w&amp;rsquo;Umunyamerika bakoresheje mudasobwa.&lt;/p&gt;\n&lt;p&gt;Ku wa Mbere kandi nabwo byatangajwe ko agiye kujyanwa mu nkiko ashinjwa gusebanya, nyuma yo kuvuga ko Umwongereza watabaye abana bo muri Thailand bari baheze mu buvumo azwiho gufata abana ku ngufu.&lt;/p&gt;\n&lt;p&gt;Vernon Unsworth uvuga ko yasebejwe yifuza guhabwa na Musk impozamarira ingana n&amp;rsquo;ibihumbi 75 by&amp;rsquo;amadolari.&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-28 06:38:13', '2018-09-28'),
(21, 5, 6, 'Ikigo gikomeye mu bucuruzi bw&rsquo;ibikoresho by&rsquo;ikoranabuhanga ya Apple cyujuje miliyoni 1000 z&rsquo;amadolari z&rsquo;agaciro gifite ku isoko nyuma y&rsquo;uko umugabane wayo wazamutse ukagera kuri 207.05.', 'Apple yabaye ikigo cya mbere muri Amerika kigize agaciro ka miliyari 1000 z&rsquo;amadolari.', '', '&lt;p&gt;Bijyanye n&amp;rsquo;izi mpinduka, ubu birabarwa ko iki kigo mu buryo bw&amp;rsquo;igereranya, umutungo wacyo urenze kimwe cya gatatu cy&amp;rsquo;ubukungu bw&amp;rsquo;u Bwongereza, ukaba uruta ubw&amp;rsquo;ibihugu bikomeye nka Turikiya cyangwa u Busuwisi.&lt;/p&gt;\n&lt;p&gt;Apple yageze kuri aka gahigo nyuma y&amp;rsquo;imyaka 42 ishinzwe n&amp;rsquo;imyaka 117 ubwo Uruganda rutunganya amabati rwa US Steel rwavuzwe ko rufite agaciro ka tiliyari y&amp;rsquo;amadolari ya Amerika mu 1901.&lt;/p&gt;\n&lt;p&gt;Iki kigo cyamamaye mu gukora ibikoresho birimo mudasobwa zigezweho za iMac na telefoni za iPhone, cyashinzwe na Steve Jobs mu 1976. Igiciro cy&amp;rsquo;umugabane wa Apple cyazamutse inshuro 2,000% kuva Tim Cook yasimbura Jobs ku mwanya w&amp;rsquo;ubuyobozi mu 2011.&lt;/p&gt;\n&lt;p&gt;Wall Street Journal yanditse ko kuzamuka mu gaciro k&amp;rsquo;imigabane ya Apple kwatangajwe ku wa Kabiri ubwo hasohorwaga uko ibigo byakoresheje imari mu mezi atatu kugeza muri Kamena 2018.&lt;/p&gt;\n&lt;p&gt;Apple yabonye inyungu ingana na miliyari $11.5 mu mezi atatu, mu bicuruzwa bya miliyari $53.3, byatumye imigabane ya iPhone izamuka n&amp;rsquo;agaciro k&amp;rsquo;ikigo kariyongera kava kuri miliyari $935 kugera kuri miliyari 1000 z&amp;rsquo;amadolari. Kuva telefoni za iPhone zajya ku isoko mu 2007, imigabane ya Apple yazamutseho 1,100%.&lt;/p&gt;\n&lt;p&gt;Umuyobozi Ushinzwe Imari muri Apple, Luca Maestri, yavuze ko &amp;lsquo;&amp;lsquo;Habaye izamuka ryihuse mu bice byose by&amp;rsquo;Isi.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Sosiyete zihanganye na Apple zirimo Facebook zasubiye inyuma ku isoko ry&amp;rsquo;imigabane aho mu munsi umwe yatakaje miliyari zirenga $120, imigabane yayo igabanukaho 20%.&lt;/p&gt;\n&lt;p&gt;Amazon yahabwaga amahirwe yo kuzuza miliyari 1000 z&amp;rsquo;amadolari na yo yasigaye inyuma aho ifite agaciro ka miliyari $883, mu gihe ibindi bigo birimo Alphabet yabyaye Google iri kuri miliyari $845.&lt;/p&gt;\n&lt;p&gt;Apple yatangiye kugurisha mudasobwa mu 1976 ariko umutungo wayo wazamuwe na iPod zasohotse mu 2001 na telefoni za iPhone zashyizwe ku isoko mu 2007. Kuva icyo gihe ubwoko 18 bumaze kumurikwa ndetse izigera kuri miliyari 1.2 zaracurujwe.&lt;/p&gt;\n&lt;p&gt;Mu mwaka ushize, Apple yacuruje miliyari $229, ibona inyungu ya miliyari $48.4, byayishyize ku isonga mu bigo byungutse akayabo muri Amerika.&lt;/p&gt;\n&lt;p&gt;Mu mateka, ikigo PetroChina na cyo agaciro ka tiliyari $1.1 ariko imigabane yacyo yari ifitwe na Leta y&amp;rsquo;u Bushinwa. Ubu ifite agaciro ka miliyari $220.&lt;/p&gt;\n&lt;center&gt;\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\n&lt;/center&gt;', 0, 'PUBLISHED', '2018-09-28 06:40:04', '2018-09-28'),
(22, 6, 6, 'Kenneth &amp;quot;Kenny&amp;quot; Wilson Gasana usanzwe ukina muri Maroc, yahawe asaga miliyoni eshatu ngo akinire REG BBC mu irushanwa rihuza amakipe yo mu Karere ka Gatanu rizabera i Dar es Salaam muri Tanzania.', 'Kenny Gasana yatanzweho asaga miliyoni eshatu ngo akinire REG BBC irushanwa ryâ€™icyumweru kimwe', '', '&lt;p&gt;Kuri iki Cyumweru tariki 30 Nzeri 2018 kugera tariki 7 Ukwakira 2018 ku kibuga Uwanja wa Taifa mu Murwa mukuru wa Tanzania, i Dar es Salaam hazakinirwa irushanwa rihuza amakipe yo mu Karere ka Gatanu &amp;lsquo;2018 FIBA Africa Zone Five Club Championships&amp;rsquo;.&lt;/p&gt;\n&lt;p&gt;U Rwanda ruzahagararirwa n&amp;rsquo;amakipe abiri; REG BBC na Patriots BBC yagabanye ibikombe bibiri bya shampiyona biheruka. Zakoze ku bakinnyi beza bose mu Rwanda zinatira abakina hanze.&lt;/p&gt;\n&lt;p&gt;REG BBC ihabwa amahirwe yo kwegukana iri rushanwa yatiye abakinnyi batanu muri 17 yahagurukanye mu rukerera rwo kuri uyu wa Gatanu tariki 28 Nzeri 2018 ijya muri Tanzania.&lt;/p&gt;\n&lt;p&gt;Abakinnyi b&amp;rsquo;Ikipe y&amp;rsquo;Igihugu bakina hanze yatiye ni Gasana Kenneth ukinira Club Tanger yo muri Maroc, Manzi Dan Sorozo ukinira University of Texas Rio Grande Valley yo muri Leta Zunze Ubumwe za Amerika, Hamza Ruhezamihigo (udafite ikipe), Engelbert Beleck Bell (Umunya-Cameroun udafite ikipe), Stephen Shepherd ukinira Benedictine Springfield University yo muri Leta Zunze Ubumwe za Amerika.&lt;/p&gt;\n&lt;p&gt;Iyi kipe yatanze amafaranga menshi kuri aba bakinnyi ngo bemere kuyikinira iri rushanwa ry&amp;rsquo;icyumweru kimwe.&lt;/p&gt;\n&lt;p&gt;Amakuru agera kuri IGIHE yemeza ko Gasana Kenny yatanzweho ibihumbi bine by&amp;rsquo;amadolari, asaga miliyoni 3 400 000 Frw, naho Hamza Ruhezamihigo we atangwaho 3 500 arenga gato miliyoni eshatu z&amp;rsquo;amanyarwanda.&lt;/p&gt;\n&lt;p&gt;Ibi byose byakozwe hagamijwe guhanganira iki gikombe nkuko IGIHE yabitangarijwe n&amp;rsquo;Umutoza wa REG BBC, Ngwijuruvugo Richard Patrick.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Aba bakinnyi bashya ntabwo baje kudufasha kuko ntabwo turi ikipe mbi ubusanzwe ahubwo baraje ngo twunganirane dushyire imbaraga hamwe kuko turifuza gutwara igikombe.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;&amp;ldquo;Ni irushanwa rikomeye kuko nk&amp;rsquo;Abarabu baba bakomeye cyane. Niyo mpamvu twagerageje gushyiramo amaraso mashya ngo duheshe ishema igihugu. Ntitwabyina intsinzi tutarakina ariko nzi neza ko tuzaba turi ikipe imwe mu zihabwa amahirwe&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Mu bagabo iri rushanwa ry&amp;rsquo;iminsi irindwi rizitabirwa n&amp;rsquo;amakipe 11 akomeye muri aka karere ka gatanu.&lt;/p&gt;\n&lt;p&gt;Arimo nka Patriots BBC na REG BBC (zo mu Rwanda) Wolkite City na Ethiopian Water Sport (zo muri Ethiopia) JKT na Oilers BBC (zo muri Tanzania) New Stars (y&amp;rsquo;i Burundi) KPA na Strathmore (zo muri Kenya) Al ahly na Sommohua (zo mu Misiri).&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Urutonde rw&amp;rsquo;abakinnyi 17 REG BBC yajyanye muri Tanzania&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;1. Ali Kubwimana Kazingufu&lt;/p&gt;\n&lt;p&gt;2. Nshobozwabyosenumukiza Jean Jacques Wilson&lt;/p&gt;\n&lt;p&gt;3. Mukengerwa Benjamin&lt;/p&gt;\n&lt;p&gt;4. Habiyaremye Patrick&lt;/p&gt;\n&lt;p&gt;5. Ikishatse Herv&amp;eacute;&lt;/p&gt;\n&lt;p&gt;6. Nkurunziza Christ Walter&lt;/p&gt;\n&lt;p&gt;7. Nshizirungu Patrick&lt;/p&gt;\n&lt;p&gt;8. Shyaka Olivier&lt;/p&gt;\n&lt;p&gt;9. Kami Kabange&lt;/p&gt;\n&lt;p&gt;10. Ncogoza Brunel&lt;/p&gt;\n&lt;p&gt;11. Kaje Elie&lt;/p&gt;\n&lt;p&gt;12. Ngandu Mbanze Bienvenue&lt;/p&gt;\n&lt;p&gt;13. Gasana Kenneth&lt;/p&gt;\n&lt;p&gt;14. Manzi Dan Sorozo&lt;/p&gt;\n&lt;p&gt;15. Hamza Ruhezamihigo&lt;/p&gt;\n&lt;p&gt;16. Engelbert Beleck Bell&lt;/p&gt;\n&lt;p&gt;17. Stephen Shepherd&lt;/p&gt;', 0, 'PUBLISHED', '2018-09-28 06:46:19', '2018-09-28'),
(23, 6, 6, 'Habimana Jean Eric yaje ku mwanya wa 40 mu isiganwa riri kubera mu Mujyi wa Innsbruck muri Autriche, aba umunyafurika wa kabiri warangije ku mwanya wa hafi nyuma ya Biniyam Ghirmay ukomoka muri Eritrea wabaye uwa 13.', 'Amagare: Habimana yaje ku mwanya wa 40 muri shampiyona y&rsquo;Isi muri Autriche', '', '&lt;p&gt;&lt;strong&gt;Habimana Jean Eric&lt;/strong&gt; aheruka kwegukana shampiyona y&amp;rsquo;u Rwanda y&amp;rsquo;ingimbi mu 2017.&lt;/p&gt;\n&lt;p&gt;Abanyarwanda bagorwa cyane no kwitwara neza muri shampiyona y&amp;rsquo;Isi kuko haba hahuriye abakinnyi beza kurusha abandi ku isi. Gusa mu kiciro cy&amp;rsquo;ingimbi, Habimana Jean Eric usanzwe ukinira ikipe ya Skol Brewery &amp;lsquo;Fly Cycling Club&amp;rsquo; yagerageje kwitwara neza.&lt;/p&gt;\n&lt;p&gt;Iri siganwa ry&amp;rsquo;abatarengeje imyaka 19 ryahuje abakinnyi 159 bavuye mu 54 bitandukanye ku Isi. Bahagurutse mu Mujyi wa Kufstein basoreza i Innsbruck ku ntera ya 126.8km.&lt;/p&gt;\n&lt;p&gt;Habimana yakoresheje imbaraga nyinshi kuko nubwo ari isiganwa ryanyuze mu mihanda irimo udusozi ryihutaga cyane, ku buryo abakinnyi bagenderaga ku muvuduko wa 43km mu isaha nk&amp;rsquo;uko abashinzwe imibare muri iyi shampiyona y&amp;rsquo;isi babitangaje.&lt;/p&gt;\n&lt;p&gt;Yasoreje ku mwanya wa 40 akoresheje amasaha 3:19:14. Yasizwe iminota 15:25 n&amp;rsquo;Umubiligi Remco Evenepoel waje imbere, we usanzwe ukinira ikipe yo mu kiciro cya mbere (World Tour Team) Quick-Step Floors y&amp;rsquo;iwabo mu Bubiligi.&lt;/p&gt;\n&lt;p&gt;Kuza ku mwanya wa 40 ni umusaruro mwiza nkuko uyu musore yabitangarije IGIHE.&lt;/p&gt;\n&lt;p&gt;Yagize ati &amp;ldquo;Ntabwo amasiganwa y&amp;rsquo;i Burayi aba ameze nk&amp;rsquo;ayo muri Afurika. Gusiganwa n&amp;rsquo;abantu barenga 150 bitandukanye n&amp;rsquo;ibyo dusanzwe dukina iwacu.&quot;&lt;/p&gt;\n&lt;p&gt;&quot;Byangoye mu bilometero bya mbere ariko nageze aho ndamenyera nkoresha imbaraga nyinshi mbasha gusoreza muri 40 ba mbere. Icya mbere kigora aha ni imiyaga ifite ingufu.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Habimana utozwa na Nathan Byukusenge muri iyi shampiyona y&amp;rsquo;isi, yakomeje ashimira abamufashije kwitegura bakanamushakira amasiganwa yitabiriye mu Bubiligi muri Nyakanga uyu mwaka.&lt;/p&gt;', 2, 'PUBLISHED', '2018-09-28 06:50:37', '2018-09-28'),
(24, 9, 6, 'Ikigo cyo muri Amerika gikora ibyogajuru kirateganya kohereza mukerarugendo hafi y&rsquo;ukwezi, gikoresheje icyogajuru kinini &lsquo;Big Falcon Rocket&rsquo;.', 'SpaceX igiye kohereza mukerarugendo hafi yâ€™ukwezi', '', '&lt;p&gt;Amakuru y&amp;rsquo;uru rugendo yatangajwe mu ijoro ryo ku wa 13 Nzeri binyuze ku rukuta rwa Twitter rwa SpaceX, yanatangaje ko umuntu uzatembere hafi y&amp;rsquo;ukwezi azamenyekana kuwa 17 Nzeri uyu mwaka.&lt;/p&gt;\n&lt;p&gt;Ubu butumwa bugira buti &amp;ldquo;SpaceX yasinyanye n&amp;rsquo;umuntu wa mbere uzajya gutembera hafi y&amp;rsquo;ukwezi agendeye mu cyogajuru cyacu tuzatangiza, ni intambwe ikomeye mu gufasha abantu bahora bifuza gutembera mu isanzure&amp;rdquo;.&lt;/p&gt;\n&lt;p&gt;Icyogajuru SpaceX yubatse kigizwe n&amp;rsquo;ibice bibiri; igice cyohereza mu kirere icyogajuru icyo aricyo cyose, n&amp;rsquo;igice kizava ku Isi kijya mu isanzure.&lt;/p&gt;\n&lt;p&gt;Umuvugizi wa SpaceX yirinze kugira byinshi atangaza, ndetse ntibizwi neza niba uru rugendo hari aho ruhuriye n&amp;rsquo;itangazo iki kigo cyasohoye muri Gashyantare 2017.&lt;/p&gt;\n&lt;p&gt;Ryavugaga ko cyasinyanye amasezerano n&amp;rsquo;abantu babiri bazajya mu bice byegereye ukwezi ariko nticyabavuga amazina n&amp;rsquo;amafaranga bizatwara.&lt;/p&gt;\n&lt;p&gt;Nyuma y&amp;rsquo;umwana SpaceX yatangije ikindi cyogajuru cyanabaye icya mbere gifite ingufu ku Isi yose.&lt;/p&gt;\n&lt;p&gt;Gusa umuherwe Elon Musk akaba na nyiri SpaceX, yari yatangaje ko icyo cyogajuru kitagenewe kugurukana umuntu mu kirere.&lt;/p&gt;\n&lt;p&gt;Musk yagize ati &amp;ldquo;Ushobora kongera kohereza umuntu ku kwezi ariko sinabijyamo inama. Gusa ndatekereza ko uburyo bwiza bwo kujyayo bwakoresha &amp;lsquo;Big Falcon Rocket&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;CNN yanditse ko uyu mugabo wihambira ku ntego ze, mu kiganiro cyihariye bagiranye muri Werurwe yari yavuze ko icyo cyogajuru bashobora kugisuzuma mu 2019.&lt;/p&gt;\n&lt;p&gt;Nta wundi muntu wari wakandagira ku kwezi nyuma ya Apollo. Abanyamerika b&amp;rsquo;abahanga mu by&amp;rsquo;ubumenyi bw&amp;rsquo;ikirere, Neil Armstrong na Buzz Aldrin, babaye aba mbere kujya mu kwezi mu 1969. Kuva ubwo abantu 24 mu mateka ni bo bamaze kujyayo.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, 'PUBLISHED', '2018-10-08 23:08:22', '2018-10-09'),
(25, 9, 6, 'Uruganda rukora ibikoresho by&rsquo;ikoranabuhanga rwa Apple rwamuritse iPhone eshatu nshya ndetse n&rsquo;isaha ifite ubushobozi bwo kugenzura uko umutima utera.', 'Apple yamuritse iPhone nshya nâ€™isaha ishobora gukurikirana imikorere yâ€™umutima.', '', '&lt;p&gt;Kuri uyu wa Gatatu tariki 12 Nzeri muri Steve Jobs Theater i Cupertino muri leta ya California, niho habereye iki gikorwa cyo kumurika ibikoresho bishya by&amp;rsquo;ikoranabuhanga bya Apple.&lt;/p&gt;\n&lt;p&gt;Nk&amp;rsquo;uko byari byitezwe, hashyizwe hanze Apple Watch Series 4, yaje ifite umwihariko wo kuba ikoranye ikoranabuhanga rigenzura uko umutima utera.&lt;/p&gt;\n&lt;p&gt;Umuyobozi ushinzwe ibikorwa muri Apple, Jeff Williams yavuze ko babonye uburenganzira bw&amp;rsquo;ikigo gishinzwe Ibiribwa n&amp;rsquo;Imiti, FDA, bubemerera kuba iyi saha yakoreshwa mu buvuzi.&lt;/p&gt;\n&lt;p&gt;Izajya ifasha uyambaye kuba yapima uko umutima we utera no kubona ibimenyetso by&amp;rsquo;ibibazo birimo kuba wahagarara cyangwa umwuka utageramo uko bikwiye (stroke), ku buryo wakwihutira kujya kwa muganga.&lt;/p&gt;\n&lt;p&gt;ABC News ivuga ko iyi saha ibasha kumenya niba umuntu anyereye cyangwa aguye hasi, igahamagara nimero z&amp;rsquo;abakora ubutabazi bwihuse igihe amaze umunota umwe atanyeganyega.&lt;/p&gt;\n&lt;p&gt;Apple Watch Serie 4 ifite umubyimba muto n&amp;rsquo;ikirahure kinini ugereranyije n&amp;rsquo;izayibanjirije, ikoresha akuma karanga ahantu (GPS) izajya igurishwa ku madolari 399, mu gihe ishobora gukoreshwa nka telefoni ari 499$.&lt;/p&gt;\n&lt;p&gt;Apple kandi yanashyize hanze telefoni nshya eshatu zirimo iPhone XS, iPhone XS Max na iPhone XR zose zifite ikirahure kinini kandi kigera ku mpande.&lt;/p&gt;\n&lt;p&gt;Icyo zitandukaniyeho na iPhone X yasohotse umwaka ushize ni amafoto meza, amajwi asohoka neza kandi akagera kure ndetse n&amp;rsquo;ikoranabuhanga rikorana n&amp;rsquo;isura ariko ryihuta cyane (Face ID).&lt;/p&gt;\n&lt;p&gt;Izi telefoni zizagera ku isoko tariki ya 21 Nzeri. iPhone XS Max izaba igura amadolari 1099, iPhone XS igure amadolari 999, ni mu gihe iPhone XR izatangira gucuruzwa ku wa 19 Ukwakira yo izajya igurishwa amadolari 749.&lt;/p&gt;', 2, 'PUBLISHED', '2018-10-08 23:38:44', '2018-10-09'),
(26, 9, 6, 'Ubushakashatsi bw&rsquo;Ikigo cy&rsquo;u Butaliyani gishinzwe ibirebana n&rsquo;isanzure, bwagaragaje ko munsi y&rsquo;ubutaka bw&rsquo;umubumbe wa Mars harimo igisa n&rsquo;ikiyaga, byongera icyizere ku bari gusuzuma niba kuri uyu mubumbe utukura hadashobora kuboneka amazi abereye ibinyabuzima.', 'Havumbuwe ikiyaga munsi yâ€™urubura ku mubumbe wa Mars', '', '&lt;p&gt;Abashakashatsi bemeje ibi nyuma yo gusesengura ibimenyetso byafashwe na radar ifite ubushobozi bwo kwahuranya urubura ikareba munsi yarwo, Marsis (Mars Advanced Radar for Subsurface and Ionosphere Sounding).&lt;/p&gt;\n&lt;p&gt;Iyi radar nayo yifashishije icyogajuru kiri mu butumwa bise Mars Express gikurikirana uwo mubumbe, aho camera zacyo zarebaga ku buso bwo hejuru habonwa n&amp;rsquo;amaso, naho radar ikarenzaho ikareba no munsi y&amp;rsquo;ubuso bugaragara ikagera ku bihishe mu nda ya Mars ku bujyakuzimu buringaniye, hifashishije imbaraga yoherezagayo hakumvwa urunyurane rw&amp;rsquo;amajwi agaruka.&lt;/p&gt;\n&lt;p&gt;Kuva muri Gicurasi 2012 kugera mu Ukuboza 2015, MARSIS yifashishijwe mu kugenzura amajyepfo ya Mars, haza gutahurwa ibimyenyetso by&amp;rsquo;ikiyaga giteye nk&amp;rsquo;ibikunze kugaragara ku mugabane wa Antarctique nubwo Mars ikonja kuwurusha.&lt;/p&gt;\n&lt;p&gt;Nk&amp;rsquo;uko CNN yabyanditse, abakozi ubu bushakashatsi bavuze ko bashingiye kuri biriya bimenyetso byatumye bahamya ko kuri Mars hari amazi.&lt;/p&gt;\n&lt;p&gt;Roberto Orosei wari ukuriye ubu bushakashatsi yavuze ko byabahaye icyizere ko mu bindi bice hashobora kuba hari amazi, kandi ashobora kuvumburwa igihe baramuka barushijeho gucukumbura.&lt;/p&gt;\n&lt;p&gt;Mu myaka 31 ishize nibwo byatangiye kuvugwa ko kuri uyu mubumbe utukura hashobora kuba hari amazi, kugeza ubu ari ko byari bitaremezwa neza, ubu akaba aribwo bushakashatsi bwa mbere butanze icyizere gifatika.&lt;/p&gt;\n&lt;p&gt;Abandi bashakashatsi bavuze ko batarabasha kubona amashusho agaragaza ko kuri Mars hari ikiyaga, bakaba biteguye gukoresha amakuru yakusanyijwe na MARSIS kugira ngo barebe niba koko ibyatangajwe n&amp;rsquo;Abataliyani ari byo.&lt;/p&gt;\n&lt;p&gt;Ikigo cy&amp;rsquo;Abanyamerika gishinzwe kugenzura iby&amp;rsquo;ikirere, NASA, nacyo giherutse gushyira hanze amafoto agaragaza urubura mu misozi ya Mars, abahanga bashimangira ko ikimenyetso cy&amp;rsquo;uko uyu mubumbe ushobora kuba ufite amasoko y&amp;rsquo;amazi ahagije. Ibintu bitanga icyizere ko umuntu ashobora kuzahatura.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-08 23:44:21', '2018-10-09'),
(27, 18, 6, 'Mu gihe imbuga nkoranyambaga zikoreshwa mu guhererekanya amafoto n&rsquo;amashusho nka Snapchat na Instagram zasaga n&rsquo;izigaruriye Isi, kuri ubu urubuga TikTok rurasa n&rsquo;urugiye kuzikura mu byicaro.', 'TikTok, urubuga nkoranyambaga rutangiye kwigarurira Isi', '', '&lt;p&gt;Uru rubuga rwashinzwe n&amp;rsquo;Ikigo ByteDance rukoreshwa mu gusangiza abandi amashusho y&amp;rsquo;ibyo urimo gukora ako kanya (live streaming).&lt;/p&gt;\n&lt;p&gt;Mu gihe cy&amp;rsquo;imyaka ibiri gusa, uru rubuga rwatangiriye mu Bushinwa rumaze kugira abarukoresha basaga miliyoni 500 buri kwezi, bagizwe na 40% bari hanze y&amp;rsquo;iki gihugu.&lt;/p&gt;\n&lt;p&gt;Rurusha abantu Twitter ifite abasaga miliyoni 335, ndetse rugenda rusatira Instagram ikoreshwa n&amp;rsquo;abagera kuri miliyari imwe. Izi mbuga zombi ntizemewe mu Bushinwa.&lt;/p&gt;\n&lt;p&gt;TikTok izwi nka Douyin mu Bushinwa yamaze gukura mu byicaro imbuga zizwi cyane muri iki gihugu zirimo; Tencent, WeChat, Weibo na Youku; kuko ikoreshwa n&amp;rsquo;abasaga miliyoni 150 ku munsi.&lt;/p&gt;\n&lt;p&gt;Ubushakashatsi bwakozwe n&amp;rsquo;ikigo Sensor Tower cyo muri Amerika bwagaragaje ko mezi atatu ya mbere ya 2018, uru rubuga rwaciye agahigo ko kuba ariyo porogaramu yashyizwe muri telefoni za iPhone nyinshi kuko yamanuwe [download] inshuro miliyoni 45.8.&lt;/p&gt;\n&lt;p&gt;CNN ivuga ko ByteDance ifite n&amp;rsquo;izindi porogaramu zizwi nka Vigo yahoze yitwa Flipagram na musical.ly ikoreshwa mu kuririmba.&lt;/p&gt;\n&lt;p&gt;Mu gukora TikTok bashyizemo utuntu tw&amp;rsquo;ingenzi dusanzwe dukoreshwa ku mbuga nka Snapchat, aho umuntu ashobora kwifata amashusho y&amp;rsquo;amasegonda 15 akayashyira kuri uru rubuga.&lt;/p&gt;\n&lt;p&gt;Undi mwihariko ni uko uba ufite ubushobozi bwo guhitamo indirimbo ushobora kongera mu mashusho yawe, kugira ngo arusheho kunongera abayareba n&amp;rsquo;abayumva, ndetse ukongeramo ibindi bintu bitarimo uyafata (special effects). TikTok iri mu ndimi 34.&lt;/p&gt;\n&lt;p&gt;Kubera uburyo uru rubuga rukomeje kumenyekana, ubwo aheruka mu Bushinwa mu cyumweru gishize, Umuyobozi Mukuru wa Apple, Tim Cook yasuye ByteDance agirana ibiganiro n&amp;rsquo;abagira uruhare mu mikorere myiza ya TikTok na Douyin.&lt;/p&gt;\n&lt;p&gt;Hari amakuru avuga ko ByteDance yashinzwe na Zhang Yiming w&amp;rsquo;imyaka 35 wahoze ari umukozi wa Microsoft, iri mu biganiro na SoftBank ishaka gushoramo agera kuri miliyari 75 z&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Ibi bizasiga ByteDance isanzwe ifite agaciro ka miliyari 20 z&amp;rsquo;amadolari, iza mu bigo bigitangira bifite umutungo mwinshi nyuma ya Uber.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:00:32', '2018-10-19'),
(28, 10, 6, 'Abanyeshuri b&rsquo;Abanyarwanda umunani batoranyijwe mu bitabiriye irushanwa rya &ldquo;Seeds for the Future&rdquo; rigamije guhishura abanyempano mu guhanga udushya mu ikoranabuhanga.', 'Huawei yatoranyije Abanyarwanda umunani mu irushanwa ry&rsquo;abanyempano mu ikoranabuhanga', '', '&lt;p&gt;Ku wa Gatatu tariki 17 Ukwakira 2018 nibwo IGIHE yatangaje ko AS Kigali yamaze kwemeza Masudi Djuma Irambona nk&amp;rsquo;Umutoza Mukuru wayo imaze gutandukana na Eric Nshimiyimana wayitoje kuva mu 2014.&lt;/p&gt;\n&lt;p&gt;Iyi kipe yarangije ku mwanya wa kabiri umwaka ushize w&amp;rsquo;imikino yihaye intego yo kwegukana igikombe cya shampiyona &amp;lsquo;AZAM Rwanda Premier League&amp;rsquo; uyu mwaka.&lt;/p&gt;\n&lt;p&gt;Byatumye ubuyobozi bushya bw&amp;rsquo;iyi kipe y&amp;rsquo;Umujyi wa Kigali buhagarariwe na Francis Gasana butangira ibiganiro na Masudi Djuma watandukanye na Simba SC mu ntangiriro z&amp;rsquo;uku kwezi.&lt;/p&gt;\n&lt;p&gt;Kuri uyu wa Gatanu tariki 19 Ukwakira 2018 saa 16:10 nibwo uyu mutoza abakunzi b&amp;rsquo;umupira w&amp;rsquo;amaguru bita &amp;lsquo;Commando&amp;rsquo; yerekanywe ku mugaragaro nk&amp;rsquo;Umutoza mushya wa AS Kigali.&lt;/p&gt;\n&lt;p&gt;Masudi Djuma yabwiye IGIHE ati &amp;ldquo;Ntabwo mfite byinshi byo gutangaza kuko sindahura n&amp;rsquo;abakinnyi banjye ngo dufatire hamwe ingamba ariko intego nta yindi ni ukongera gutwara igikombe cya shampiyona nkuko nabikoze mu myaka ibiri ishize.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Bivugwa ko yahise ahabwa ibihumbi bine by&amp;rsquo;amadolari bizamufasha kwimura umuryango we no gushinga ubuzima bushya muri Kigali, akazatangira akazi ku wa Mbere tariki 22 Ukwakira 2018 bivuga ko atazatoza umukino wo ku Cyumweru AS Kigali izakina na Musanze FC.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:03:05', '2018-10-19'),
(29, 17, 6, 'Itsinda ry&rsquo;abantu batanu bayobowe n&rsquo;Umunyamabanga wa Leta Ushinzwe Uburere Mboneragihugu muri C&ocirc;te d&rsquo;Ivoire, Siaka Ouattara, ryashimiye gahunda y&rsquo;Itorero ry&rsquo;Igihugu igamije kubaka Umunyarwanda ukunda Igihugu.', 'CÃ´te dâ€™Ivoire yashimye uko Itorero rifasha mu kubaka ubunyarwanda', '', '&lt;p&gt;Kuri uyu wa Kane nibwo Minisitiri Ouattara n&amp;rsquo;itsinda ry&amp;rsquo;abantu batanu bazanye basuye Minisiteri y&amp;rsquo;Ubutegetsi bw&amp;rsquo;Igihugu (MINALOC), basobanurirwa inshingano, imikorere n&amp;rsquo;ibimaze kugerwaho n&amp;rsquo;Itorero ry&amp;rsquo;Igihugu.&lt;/p&gt;\n&lt;p&gt;Ouattara yavuze iyo urebye nyuma ya Jenoside yakorewe Abatutsi, uburyo abanyarwanda babanye mu mahoro bakunda igihugu, ari isomo ryiza nawe ajyanye mu gihugu cye.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Muzi ko nyuma ya Jenoside ya 1994, byari bigoye kumva ko u Rwanda rwagira ibyo rugeraho. Twabonye ko Politiki nziza ariyo yabaye ishingiro ryo kugera aha. Twumvise ko mbere yo kuza kw&amp;rsquo;abakoloni, abanyarwanda bari bunze ubumwe, umunyarwanda yakundaga umuturanyi we, abanyarwanda barakoraga kandi bagatungwa n&amp;rsquo;ibyo bakoze.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;&amp;ldquo;Uyu munsi nyuma ya Jenoside yakorewe Abatutsi abanyarwanda barongeye bishyira hamwe bashyiraho uburyo bwo kwigisha uburere mboneragihugu. Bamenya ko bagomba kugira uruhare mu kubaka igihugu cyabo. Izo ndangagaciro zigishwa ko umunyarwanda agomba gukunda mugenzi we, agakunda igihugu akanagikorerea. Izo nizo ndagagaciro tujyanye mu gihugu cyacu.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Ingingo ya gatandatu Itegeko n&amp;deg;41/2013 ryo ku wa 16/06/2013 rishyiraho Komisiyo y&amp;rsquo;Igihugu y&amp;rsquo;Itorero rikanagena inshingano za NIC harimo gutoza Abanyarwanda kugira imyumvire y&amp;rsquo;indangagaciro na kirazira basangiye mu mibanire yabo, gukunda igihugu no kugiteza imbere.&lt;/p&gt;\n&lt;p&gt;Umunyamabanga wa Leta muri MINALOC ushinzwe Iterambere ry&amp;rsquo;Abaturage, Harerimana Cyriaque, yavuze ko nka leta bifuza ko abanyarwanda basubira inyuma bagatekereza ku miterere y&amp;rsquo;itorero rya cyera.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Itorero rya cyera ryari rigamije gukunda igihugu ukanacyubaka, buriya harimo no kucyagura, iyo bavugaga u Rwanda buriya bavugaga no kurwaguka. Bisaba rero ko twaguka cyane cyane mu mitekerereze ubwo rero birasaba ko icyo dushyiramo imbaraga ni uko umunyarwanda yabona itorero nk&amp;rsquo;ikintu akora ku giti cye.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Minisitiri Harerimana yashimiye kandi C&amp;ocirc;te d&amp;rsquo;Ivoire ko yafashije u Rwanda binyuze mu gushyigikira kandidatire ya Louise Mushikiwabo uherutse gutorerwa kuyobora Umuryango w&amp;rsquo;Ibihugu bivuga ururimio rw&amp;rsquo;Igifaransa, OIF.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:06:37', '2018-10-19');
INSERT INTO `articles` (`article_id`, `category_id`, `author_id`, `sub_title`, `title`, `description`, `text`, `views`, `status`, `submit_date`, `validate_date`) VALUES
(30, 20, 6, 'Lieven van der BORGHT yagizwe Perezida w&rsquo;inama y&rsquo;ubutegetsi y&rsquo;uruganda rukora ibinyobwa bisembuye n&rsquo;ibidasembuye, Bralirwa Plc, asimbuye Boudewijn HAARSMA wari muri uyu mwanya guhera muri Kanama 2015.', 'ralirwa Plc yahawe Umuyobozi Mukuru mushya', '', '&lt;p&gt;Kuri uyu wa Kane nibwo Inama y&amp;rsquo;ubutegetsi ya Bralirwa Plc yatangaje ko nyuma y&amp;rsquo;imyaka 3.5 ayoboye iterambere ry&amp;rsquo;uruganda, Boudewijn HAARSMA, yasimbuwe.&lt;/p&gt;\n&lt;p&gt;Itangazo yashyize ahagaragara rivuga ko uyu muyobozi yavuye muri Bralirwa Plc nyuma yo kwemera inshingano nshya yahawe na Heineken International nk&amp;rsquo;umuyobozi mukuru wa Heineken Russia.&lt;/p&gt;\n&lt;p&gt;Riti &amp;ldquo;Inama y&amp;rsquo;Ubutegetsi irashimira Boudewijn HAARSMA ku kazi yakoze mu myaka 3.5 n&amp;rsquo;umurongo yatangaga ku nama y&amp;rsquo;ubutegetsi n&amp;rsquo;uruganda nk&amp;rsquo;umuyobozi warwo&amp;nbsp;&lt;br class=&quot;autobr&quot; /&gt;akaba umuyobozi wa Heineken mu karere ka Afurika y&amp;rsquo;Iburasirazuba n&amp;rsquo;Iburengerazuba, Uburasirazuba bwo hagati n&amp;rsquo;u Burayi bw&amp;rsquo;Iburasirazuba, aho yari anashinzwe Bralirwa Plc mu Rwanda.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Mu gihe cye, Bralirwa Plc yabashije gukora inyungu nyinshi kandi irushaho gutera imbere.&lt;/p&gt;\n&lt;p&gt;Nyuma yo kwemezwa n&amp;rsquo;abanyamigabane, Boudewijn yayoboye inama eshatu z&amp;rsquo;ingenzi z&amp;rsquo;Inteko rusange kandi bamushimira uko yagiye azitwaramo.&lt;/p&gt;\n&lt;p&gt;Itangazo rikomeza riti &amp;ldquo;Mu izina ry&amp;rsquo;abanyamigabane n&amp;rsquo;abakozi ba Bralirwa, inama y&amp;rsquo;ubutegetsi irashimira byimazeyo Boudewijn HAARSMA ku musanzu yatanze nk&amp;rsquo;umuyobozi na Perezida w&amp;rsquo;inama y&amp;rsquo;ubutegetsi y&amp;rsquo;uruganda.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Lieven van der BORGHT yanasimbuye Boudewijn HAARSMA nk&amp;rsquo;umuyobozi wa Heineken NV mu karere ka Afurika y&amp;rsquo;Iburasirazuba n&amp;rsquo;Iburengerazuba, Uburasirazuba bwo hagati n&amp;rsquo;u Burayi bw&amp;rsquo;Iburasirazuba, Bralirwa iherereyemo.&lt;/p&gt;\n&lt;p&gt;Biteganyijwe ko izina rya Lieven van der BORGHT nka Perezida w&amp;rsquo;inama y&amp;rsquo;ubutegetsi rizagezwa ku nteko rusange ya Bralirwa iteganyijwe umwaka utaha ngo imwemeze.&lt;/p&gt;\n&lt;p&gt;Lieven yinjiye muri Heineken NV mu 1993 nyuma y&amp;rsquo;igihe akora muri Bralima Za&amp;iuml;re. Muri Heineken yagie ahabwa imyanya ikomeye muri Cura&amp;ccedil;ao, Cambodia, Repubulika ya Czech, Liban, Tunisia, C&amp;ocirc;te d&amp;rsquo;Ivoire, Congo Brazzaville, Maroc, Cameroun, Jordanie na leta ya Sirocco.&lt;/p&gt;\n&lt;p&gt;Uruganda rwa Bralirwa Plc rwashinzwe mu 1957. Rwenga inzoga za Primus, M&amp;uuml;tzig, Legend, Amstel na Turbo King byengerwa ku Gisenyi, rukagira na Heineken zitumizwa mu Buholandi.&lt;/p&gt;\n&lt;p&gt;Rufite kandi ibinyobwa bidasembuye bikorwa ku burenganzira bw&amp;rsquo;Uruganda rwa Coca-Cola, birimo Coca Cola, Fanta Orange, Fanta Citron, Fanta Fiesta, Sprite, Stoney na Krest Tonic, rukaba rwikorera ikinyobwa cya Vital&amp;rsquo; O.&lt;/p&gt;\n&lt;p&gt;BRALIRWA Plc ibarizwa mu kigo Heineken Group gifitemo imigabane ya 75%, mu gihe 25&amp;nbsp;% isigaye ifitwe n&amp;rsquo;abanyamigabane barimo ikigo Arisaig Africa Consumer Fund Limited gifitemo 7.06%, RSSB ifite 2.8% n&amp;rsquo;ibindi.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:08:40', '2018-10-19'),
(31, 2, 6, 'Kanyankole Alex wahoze ayobora Banki Itsura Amajyambere y&rsquo;u Rwanda (BRD), yahakanye icyaha cyo kwaka ruswa n&rsquo;indonke ndetse n&rsquo;itonesha mu gutanga inguzanyo, asaba ko yarekurwa kubera impamvu zirimo n&rsquo;indwara y&rsquo;umugongo n&rsquo;igifu arwaye.', 'Kanyankole yahakanye ruswa nâ€™itonesha asaba kurekurwa kuko arwaye', '', '&lt;p&gt;Muri Costume y&amp;rsquo;umukara, inkweto z&amp;rsquo;umukara, ishati ya karokaro yiganjemo umutuku n&amp;rsquo;indorerwamo z&amp;rsquo;amaso, Kanyankole, kuri uyu wa Kane yakomeje kuburana ku ifungwa n&amp;rsquo;ifungurwa ry&amp;rsquo;agateganyo mu rukiko rw&amp;rsquo;ibanze rwa Nyamirambo.&lt;/p&gt;\n&lt;p&gt;Yari kumwe n&amp;rsquo;abunganizi be babiri; Me Rukangira Emmanuel na Umuliza Alice.&lt;/p&gt;\n&lt;p&gt;Akekwaho ibyaha yakoze ayobora BRD, kuva ku wa 3 Nyakanga 2013 kugera mu 2017, byo gufata ibyemezo bishingiye ku itonesha no gusaba no kwakira impano cyangwa indonke.&lt;/p&gt;\n&lt;p&gt;Ibi byose bibumbiye mu nguzanyo eshatu akekwaho gutanga mu buryo butujuje ibisabwa zose hamwe zikabakaba hafi miliyoni 12 z&amp;rsquo;amadolari.&lt;/p&gt;\n&lt;p&gt;Kanyankole yakomeje yisobanura ku nguzanyo yahaye Top Services yakoraga ibyo kugemura amafumbire mu baturage. Ubushinjacyaha buvuga ko iyi kompanyi yahawe miliyoni 8.1 z&amp;rsquo;amadolari, itatanze ingwate zihwanye nazo ndetse n&amp;rsquo;izo yatanze zikaba zari zanditse ku yindi sosiyete.&lt;/p&gt;\n&lt;p&gt;Mu kwiregura Kanyankole yavuze ko ubushinjacyaha bushingira ku nyandiko yahaye Top Services yari ihagarariwe na Mwitende Ladislas, iha icyizere uwari kumuranguza ifumbire ko &amp;lsquo;niyuzuza ibisabwa azahabwa inguzanyo na BRD&amp;rsquo; [Commitment Letter], kandi iyi atari yo yemeza ko yahawe inguzanyo.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Icyemezo cy&amp;rsquo;inguzanyo yatanzwe ni ibaruwa imenyesha &amp;lsquo;Notification Letter&amp;rsquo; y&amp;rsquo;uwahawe inguzanyo kandi yatanzwe inama y&amp;rsquo;ubutegetsi yateranye, ntabwo ari ibaruwa itanga icyizere ko wujuje ibisabwa wahabwa inguzanyo natanze kandi nari mbyemerewe.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yahakanye itonesha kuri Top Services, avuga ko Mwitende &amp;lsquo;ntitwiganye, ntiduturanye, ntidusangira, twahuriye mu mirimo nari nshinzwe, sinumva itonesha namugirira kuko nasanze ari umukiriya wa BRD sinjye wagiye kumukangurira gukorana na yo ngo mbone uko nzamutonesha&amp;rsquo;.&lt;/p&gt;\n&lt;p&gt;Umucamanza yabajije ku ngwate za Top Services zari zanditse kuri Uwimu Ltd, ndetse ziri no ku zindi nguzanyo, Kanyankole asubiza ko hakozwe isuzuma rishyikirizwa inzego zose, rirerekanwa, habazwa ibibazo, byose birasobanurwa dore ko iyi nguzanyo yagombaga kwishyurwa mu mezi atandatu.&lt;/p&gt;\n&lt;p&gt;Avuga ko Mwitende yaje kugirana ikibazo na Minisiteri y&amp;rsquo;ubuhinzi n&amp;rsquo;ubworozi ntibumvikana ku gukoresha inkunga ya &amp;lsquo;Nkunganire&amp;rsquo;, bituma afungwa, bityo BRD ikurikirana ibigega by&amp;rsquo;ifumbire biri i Musanze, yandikira ubushinjacyaha hafatirwa konti ze ndetse banumvikana uko azishyura.&lt;/p&gt;\n&lt;p&gt;Me Umuliza yamwunganiye ko &amp;lsquo;mu gihe umukiriya atabashije kuriha inguzanyo ntabwo ari ikimenyetso cy&amp;rsquo;uko gutanga inguzanyo byakozwe nabi. Kuba Top service itarabashije kwishyura, ibyo ntabwo Kanyankole yabibazwa, kuko hari uwitwa Nkubiri bayiherewe rimwe, mu buryo bumwe ariko kuko yishyuye neza, ntabwo avugwamo hano.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Ku nguzanyo yahawe Trust Industries, Kanyankole yavuze ko atatonesheje uru ruganda rukora ibikoresho by&amp;rsquo;isuku kuko yasanze rumaze guhabwa inguzanyo na BRD inshuro enye. Iyasabwe ahageze yari iya gatanu.&lt;/p&gt;\n&lt;p&gt;Inguzanyo rwahawe yari yemejwe n&amp;rsquo;inama y&amp;rsquo;ubutegetsi bigendeye ku mwanzuro yafashe w&amp;rsquo;uko BRD iruguramo imigabane ingana na 25%.&lt;/p&gt;\n&lt;p&gt;Yanavuze ku bikoresho yahawe na Gahima byo kumuvura umugongo n&amp;rsquo;amadarubindi arimo camera yifashishaga yasuye imishinga ya BRD, asobanura ko uyu mugabo yamusanze muri BRD, akamubaza ngo&amp;rsquo; ko mbona usa n&amp;rsquo;urwaye undi akamubwira ko arwaye umugongo ateganya kujya kwivuza mu Buhinde.&amp;rsquo;&lt;/p&gt;\n&lt;p&gt;Ngo bwacyeye Gahima azana Biodisque na Water Tank Jug, abishyira mu biro bya Kanyankole, utarigeze abikoresha kuko atabyizeraga. Nyuma byaje gukurwa mu biro bijya kubikwa kuko byahateraga umwanda.&lt;/p&gt;\n&lt;p&gt;Kanyankole avuga ko yaje gupfa na Gahima ko yahawe inguzanyo ndetse agacunga nabi ishuri rya Good Harvest and Primary School, bigatuma atishyura bityo BRD ikandikira RDB isaba ko iri shuri rihabwa undi ushoboye kuricunga neza yishyura n&amp;rsquo;inguzanyo.&lt;/p&gt;\n&lt;p&gt;Ibi ngo byatumye Gahima avuga ko yamwatse indonke na ruswa ya miliyoni 50 Frw ngo amuhe inguzanyo. Abunganira Kanyankole bongeraho ko amadarubindi atari kunanirwa kuyigurira dore ko agurwa amayero 61.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Yasabye kurekurwa kubera uburwayi&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Ubushinjacyaha bwasabye ko Kanyankole afungwa iminsi 30 y&amp;rsquo;agateganyo kugira ngo hakomeze gukorwa iperereza, adatoroka ubutabera cyangwa agasibanganya ibimenyetso.&lt;/p&gt;\n&lt;p&gt;Kanyankole yasabye urukiko kumurekura kuko atuye, adashobora gusibanganya ibimenyetso ndetse akaba arwaye umugongo n&amp;rsquo;igifu.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Iperereza rimaze umwaka rikorwa nitaba ubugenzacyaha, sinkiri umuyobozi wa BRD ngo nasibanganya ibimenyetso, ndatuye ahantu hazwi ntabwo natoroka. Ikindi ndwaye umugongo n&amp;rsquo;igifu mfite impapuro za muganga.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Yakomeje agira ati &amp;ldquo;Maze imyaka irenga 15 ndi mu micungire y&amp;rsquo;amafaranga, ntabwo nigeze numva umuntu unshinja ruswa, uretse Gahima, kuko twananiwe kumvikana ku micungire y&amp;rsquo;uriya mushinga n&amp;rsquo;imyishyurire y&amp;rsquo;inguzanyo&amp;rdquo;.&lt;/p&gt;\n&lt;p&gt;Kanyankole n&amp;rsquo;abamwunganira basabye ko hakorwa iperereza hakarebwa inyandiko z&amp;rsquo;imishinga yahabwaga inama y&amp;rsquo;ubutegetsi, amasezerano y&amp;rsquo;ingwate, ay&amp;rsquo;inguzanyo, iz&amp;rsquo;ibyemezo by&amp;rsquo;inama y&amp;rsquo;ubutegetsi n&amp;rsquo;iy&amp;rsquo;ubuyobozi bwite bwa Banki.&lt;/p&gt;\n&lt;p&gt;Me Rukangira yavuze ko hashize umwaka hakorwa iperereza ariko ntihigeze harebwa ku batanze inguzanyo bose, kuko bidashoboka ko umuntu umwe ari we utanga inguzanyo. Ikindi kandi ngo ntihabajijwe inama y&amp;rsquo;ubutegetsi.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Nta mpamvu nimwe yatuma afungwa iminsi 30 kuko nta kimenyetso na kimwe cyatanzwe. Turasanga abo bantu babazwa hagashakwa n&amp;rsquo;imyanzuro ariko bigakorwa Kanyankole adafunzwe&amp;rdquo;.&lt;/p&gt;\n&lt;p&gt;Icyemezo ku ifungwa n&amp;rsquo;ifungurwa rya Kanyankole kizafatwa kuwa 23/10/2018, Saa Kumi z&amp;rsquo;umugoroba.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Indi nkuru wasoma:&lt;/strong&gt;&amp;nbsp;&lt;a class=&quot;spip_out&quot; href=&quot;https://igihe.com/amakuru/u-rwanda/article/kanyankole-wahoze-ayobora-brd-yitabye-urukiko-ku-byaha-bivugwamo-miliyoni&quot; rel=&quot;external&quot;&gt;Kanyankole wahoze ayobora BRD yitabye urukiko ku byaha bivugwamo miliyoni zirenga 12$&lt;/a&gt;&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:10:16', '2018-10-19'),
(32, 22, 6, 'Diamond Platnumz uri mu bahanzi bakomeye mu Karere ka Afurika y&rsquo;Uburasirazuba, yatewe ishyari n&rsquo;uko Wema Sepetu bahoze bakundana asigaye afite umukunzi.', 'Diamond yatewe ishyari nâ€™umukunzi mushya wa Wema Sepetu', '', '&lt;p&gt;Diamond yakanyujijeho mu rukundo na Wema mu 2012 baza gutandukana mu 2014, Diamond ahita atangira gukundana na Zari babanye mu nzu imwe bakanabyarana abana babiri gusa urukundo rwabo rukagera ku musozo mu ntangiro z&amp;rsquo;uyu mwaka.&lt;/p&gt;\n&lt;p&gt;Wema nyuma yo gutandukana na Diamond yabwo yahiriwe cyane mu rukundo kuko yakundanye na Idris Sultan uri mu bakomeye mu myidagaduro ya Tanzania kubera ko yatwaye Big Brother Africa 2014, baza gutandukana uyu mukobwa akuyemo inda y&amp;rsquo;umwana yari amutwitiye.&lt;/p&gt;\n&lt;p&gt;Ku mugoroba wo kuri uyu wa Gatatu, Wema Sepetu yagaragaje umukunzi we mushya.&lt;/p&gt;\n&lt;p&gt;Ku ifoto yashyize ku rubuga rwa Instagram aryamanye n&amp;rsquo;uyu musore mu buriri, yahise yandikaho amagambo agira ati &amp;ldquo;Umugabo wanjye w&amp;rsquo;ahazaza&amp;rdquo;.&lt;/p&gt;\n&lt;p&gt;Nyuma yo gushyira iyi foto kuri uru rubuga, Diamond nawe ntiyigeze azuyaza kuko yahise yandika amagambo aherekejwe n&amp;rsquo;ifoto ye yumvikanisha ko nawe yaba umugabo mwiza w&amp;rsquo;uyu mukobwa bigeze gukundana bigakomera.&lt;/p&gt;\n&lt;p&gt;Mu magambo yanditse yagize ati &amp;ldquo;Umugabo wawe w&amp;rsquo;ahazaza [ashyiraho udutangaro n&amp;rsquo;akamenyetso ko kwinginga] &amp;hellip; Njye se simbikwiye?&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Amagambo ya Diamond Platnumz yakuruye impaka ndende mu bamukurikira bamwe bazana iby&amp;rsquo;umubano we na Hamissa Mobetto baherutse kubyarana.&lt;/p&gt;\n&lt;p&gt;Diamond ntasiba mu itangazamakuru avugwa mu nkuru zo kwiruka mu bagore. Yavuzwe mu nkuru z&amp;rsquo;urukundo n&amp;rsquo;abakobwa benshi barimo Jokate Mwengelo, Wema Sepetu, Zari baherutse gutandukana n&amp;rsquo;abandi benshi.&lt;/p&gt;\n&lt;p&gt;Hari n&amp;rsquo;abavuga ko muri iyi minsi ahararanye bikomeye na Shaddy Boo uri mu bagore babica ku mbuga nkoranyambaga mu Rwanda. Anaherutse kumutumira nk&amp;rsquo;umushyitsi mukuru mu irushanwa ryari ryateguwe na Wasafi ryo kubyina indirimbo ye &amp;lsquo;Jibebe&amp;rsquo;.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:12:07', '2018-10-19'),
(33, 20, 6, 'Umutoniwase Anastasie uhagarariye u Rwanda mu irushanwa rya Miss Earth 2018 riri kubera muri Philippines, yiyerekeranye mu cyiciro cyo kwerekana ubwiza n&rsquo;imiterere y&rsquo;umubiri yambaye bikini.', 'Umutoniwase yambaye bikini muri Miss Earth 2018', '', '&lt;p&gt;Igikorwa cyo kwiyerekana mu mwambaro wa Bikini cyabaye kuri uyu wa Gatanu, guhera saa kumi n&amp;rsquo;ebyiri z&amp;rsquo;umugoroba muri Philippines [saa sita z&amp;rsquo;amanywa zo mu Rwanda] ahitwa Brisa Marina Beachfront Resort mu Mujyi wa Bataan.&lt;/p&gt;\n&lt;p&gt;Abakobwa bari mu itsinda ryiswe &amp;lsquo;Fire&amp;rsquo; bo muri Argentine, Armenia, Australia, Bolivia, Curacao, Czech, Denmark, Repubulika y&amp;rsquo;Abadominikani, u Budage, u Bugereki, Honduras, Korea, Malaysia, Montenegro, Nepal, u Buholandi, Nigeria, Panama, Pologne, Romania, u Burusiya, Sierra Leone, Singapore, Afurika y&amp;rsquo;Epfo, Espagne, Su&amp;egrave;de, Thailand, Leta Zunze Ubumwe za Amerika na Venezuela; ni bo biyerekanye bahatanye na Umutoniwase.&lt;/p&gt;\n&lt;p&gt;Abakobwa begukanye imidari harimo uwo muri Repubulika y&amp;rsquo;Abadominikani wegukanye umudari wa Zahabu n&amp;rsquo;aho uwo muri na Venezuela yegukana umudali w&amp;rsquo;umuringa. Uwo mu Rwanda nta mudali n&amp;rsquo;umwe yigeze yegukana.&lt;/p&gt;\n&lt;p&gt;Uyu munsi ubwo yiyerekanaga yagaragaye mu mwambaro wa bikini ugizwe n&amp;rsquo;isutiya ndetse n&amp;rsquo;ikariso, byose byijimye bifite ibara ry&amp;rsquo;umukara yambaye inkweto ndende.&lt;/p&gt;\n&lt;p&gt;Icyiciro cyo kwerekana imiterere n&amp;rsquo;umubiri cyiswe &amp;lsquo;Preliminary Judging for Figure and Form&amp;rsquo; kiri muri bitatu byibandwaho mu irushanwa rya Miss Earth riri kubera muri Phillipines kuva mu ntangiriro z&amp;rsquo;uku kwezi.&lt;/p&gt;\n&lt;p&gt;Ibindi byiciro bifite amanota menshi muri Miss Earth birimo; icyo kureba ubwiza bw&amp;rsquo;isura no gusuzuma ubumenyi bw&amp;rsquo;abahatana ku bintu bitandukanye cyane cyane ku bidukikije.&lt;/p&gt;\n&lt;p&gt;Uwase Hirwa Honorine &amp;lsquo;Igisabo&amp;rsquo; umwaka ushize ubwo yitabiraga iri rushanwa yavugishije benshi yanga kwambara bikini ubugira kabiri.&lt;/p&gt;\n&lt;p&gt;Irushanwa ry&amp;rsquo;uyu mwaka ryatangiye kuwa 6 Ukwakira, rizasozwa kuwa 3 Ugushyingo ahitwa Mall of Asia Arena mu Mujyi wa Pasay.&lt;/p&gt;\n&lt;p&gt;Umwaka ushize ikamba ryegukanywe na Karen Ibasco wo muri Philippines wari ku isonga mu basubije neza, ari nacyo cyashingiweho ahigika bagenzi be bari bahatanye.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:13:44', '2018-10-19'),
(34, 24, 6, 'Perezida Paul Kagame yashimiye abayobozi basimbuwe muri Guverinoma, anagaruka kuri Mushikiwabo Louise uheruka gutorerwa kuba Umunyamabanga Mukuru w&rsquo;Umuryango w&rsquo;Ibihugu bikoresha Igifaransa, OIF.', 'Perezida Kagame yashimiye abavuye muri Guverinoma, ashyira umwihariko kuri Mushikiwabo', '', '&lt;p&gt;Perezida Kagame yabigarutseho ubwo yakiraga indahiro z&amp;rsquo;abayobozi bashya muri Guverinoma, nyuma yo kuyivugurura kuri uyu wa Kane.&lt;/p&gt;\n&lt;p&gt;Muri izo mpinduka, Louise Mushikiwabo wari umaze hafi imyaka 10 muri Guverinoma, yasimbuwe na Sezibera Richard usanzwe ari senateri.&lt;/p&gt;\n&lt;p&gt;Perezida Kagame yashimiye abayobozi barahiye kuri uyu wa Gatanu, kuba bemeye inshingano ziremereye zo gukomeza gukorera Igihugu.&lt;/p&gt;\n&lt;p&gt;Yashimiye kandi n&amp;rsquo;abarangije inshingano zabo bamwe ndetse bakaba bahawe izindi, avuga ko ababasimbuye bazubakira ku byo bakoze.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;By&amp;rsquo;umwihariko, nagira ngo, mu izina rya Guverinoma, n&amp;rsquo;iry&amp;rsquo;Abanyarwanda twese, nshimire Madamu Louise Mushikiwabo akazi keza yakoreye Igihugu cyacu, n&amp;rsquo;umwanya yatorewe wo kuyobora umuryango mpuzamahanga wa Francophonie. Turamwifuriza akazi keza.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Ku wa 12 Ukwakira mu nteko rusange ya OIF i Erevan muri Arm&amp;eacute;nie, nibwo Mushikiwabo yagizwe Umunyamabanga Mukuru wa OIF muri manda y&amp;rsquo;imyaka ine.&lt;/p&gt;\n&lt;p&gt;Ni inshingano azatangira muri Mutarama 2019, aho azasimbura umunya-Canada Micha&amp;euml;lle Jean wari uwuriho guhera mu 2015, ariko utaragize amahirwe yo kongererwa manda n&amp;rsquo;abakuru b&amp;rsquo;ibihugu bigize umuryango.&lt;/p&gt;\n&lt;p&gt;Mu mavugurura yakozwe muri Guverinoma y&amp;rsquo;u Rwanda, umubare w&amp;rsquo;abayigize wagabanutse kuko wavuye ku baminisitiri n&amp;rsquo;abanyamabanga ba leta 31 bakagera kuri 26.&lt;/p&gt;\n&lt;p&gt;Guverinoma nshya irimo abagore 13, bangana na 50%.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:14:49', '2018-10-19'),
(35, 2, 6, 'Umunyarwanda wa mbere wegukanye agace muri Tour du Rwanda, Biziyaremye Joseph, asigaye atwara abagenzi kuri moto mu mujyi wa Kigali, nyuma y&rsquo;impanuka ikomeye yakoze muri Tour du Rwanda ya 2016.', 'Biziyaremye wakoze amateka muri â€˜Tour du Rwandaâ€™ asigaye ari umumotari i Kigali', '', '&lt;p&gt;Tour du Rwanda yashyizwe ku rwego mpuzamahanga muri 2009 nta munyarwanda wegukana agace muri iri siganwa, kugera tariki 26 Ugushyingo 2011 ubwo Biziyaremye Joseph yakoraga amateka agasiga abandi bari bahagurutse i Karongi bagasoreza i Nyamirambo ku ntera ya 130km.&lt;/p&gt;\n&lt;p&gt;Yongeye kubikora muri 2012 ubwo basorezaga i Nyanza bavuye i Rubavu.&lt;/p&gt;\n&lt;p&gt;Aya mateka muri Tour du Rwanda yashyizweho akadomo tariki 18 Ugushyingo 2016 ubwo yakoraga impanuka i Musanze ahasorejwe agace ka gatanu k&amp;rsquo;iri rushanwa, ryaje kwegukanwa na Valens Ndayisenga.&lt;/p&gt;\n&lt;p&gt;Biziyaremye Joseph wamaze ibyumweru bitatu ari muri koma kuko yakubise umutwe hasi muri iyi mpanuka, yabwiye TV10 ko nyuma yo kwitabwaho n&amp;rsquo;abaganga yahise agana umwuga w&amp;rsquo;ubumotari ngo abone uko atunga abana be.&lt;/p&gt;\n&lt;p&gt;Ati &amp;ldquo;Nakoze impanuka mara ibyumweru bitatu mu bitaro ndi muri koma, nkanguka ndimo kunyonga igare ngira ngo ndacyarimo gukina.&quot;&lt;/p&gt;\n&lt;p&gt;&quot;Nyuma nakomeje gukina kuko nanakinnye amasiganwa atatu gusa nabuze umuntu unyongerera imbaraga kuko nubwo nakomeje gukina nari nkihungabanye mu mutwe. Nasubiye mu buzima busanzwe nyuma y&amp;rsquo;amezi ane aribwo nahise mfata moto njya gushaka ibirayi by&amp;rsquo;abana.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Biziyaremye utuye ku Ruyenzi agakorera ubumotari Nyabugogo yemeza ko yifuza gusoza ubuzima bwe mu mukino wo gusiganwa ku magare tariki 15 Ukuboza 2018 ubwo Rwanda Cycling Cup y&amp;rsquo;uyu mwaka izaba isozwa.&lt;/p&gt;\n&lt;p&gt;Ashimangira ko afite icyizere ko umuhungu we Biziyaremye Contador azamusimbura kuko ngo ni umunyambaraga nubwo akiri muto.&lt;/p&gt;\n&lt;p&gt;Joseph bita Igisamagwe yavutse muri Mutarama 1988, akina mu makipe atandukanye arimo Cine Elmay, Muhazi Cycling Club na Team Rwanda yakiniye kuva 2009-2016.&lt;/p&gt;\n&lt;p&gt;Umwanya mwiza yagize muri Afurika ni uwa 16 muri shampiyona ya Afurika yabereye muri Maroc 2016, ubwo yasigwaga amasegonda 26 n&amp;rsquo;umunya-Eritrea Tesfom Okubamariam wegukanye umudali wa zahabu.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:16:04', '2018-10-19'),
(36, 12, 6, 'Mu gihe u Bwongereza bukomeje inkundura yo gusohoka mu Muryango w&rsquo;Ibihugu by&rsquo;u Burayi, Abadage biganjemo Abayahudi babaga muri iki gihugu, bakomeje kwiyongera basaba gusubira mu gihugu cyabo.', 'Abayahudi bahungiye Hitler mu Bwongereza barasaba gusubira mu Budage', '', '&lt;p&gt;Aba biganjemo imiryango y&amp;rsquo;abahunze ubwicanyi bwakorwaga n&amp;rsquo;ingoma y&amp;rsquo;aba-Nazi, yari iyobowe na Adolf Hitler.&lt;/p&gt;\n&lt;p&gt;Kuva muri Kamena 2016, Abadage babaga mu Bwongereza batangiye gusaba gusubizwa iwabo Kuva icyo gihe abagera ku 3 731 bamaze kubisaba, barimo abagera ku 3 408, bishingikirije ingingo ya 116 y&amp;rsquo;Itegeko Nshinga ry&amp;rsquo;u Budage.&lt;/p&gt;\n&lt;p&gt;Ivuga ko abahoze ari abaturage b&amp;rsquo;u Budage bavukijwe ubwenegihugu n&amp;rsquo;impamvu za politiki, irondaruhu cyangwa imyemerere, bo n&amp;rsquo;ababakomokaho bemerewe gusubirana ubwenegihugu bwabo.&lt;/p&gt;\n&lt;p&gt;Ibihumbi by&amp;rsquo;abayahudi bahunze u Budage bajya mu Bwongereza mbere no mu gihe cy&amp;rsquo;intambara ya kabiri y&amp;rsquo;Isi. Barimo abana ibihumbi 10 bajyanwe mu kiswe &amp;lsquo;Kindertransport&amp;rsquo;, hagati y&amp;rsquo;Ukuboza 1938 na Kanama 1939, benshi muri bo bakaba batarigeze bongera kubona ababyeyi babo.&lt;/p&gt;\n&lt;p&gt;Imibare igaragaza ko ubwiyongere bw&amp;rsquo;abasaba gusubira mu Budage bukomeje kwiyongera nyuma ya referendum y&amp;rsquo;u Bwongereza, yo kwivana muri EU.&lt;/p&gt;\n&lt;p&gt;Muri 2015 hari 59 basabye, mu 2016 ari nawo mwaka habereyeho referendum, abagera kuri 760 basabye gusubira mu Budage. Mu 2017, byakomeje kwiyongera hasaba abagera ku 1824, ndetse binakomeza muri 2018, aho abagera ku 1147 basabye mu mezi umunani ya mbere.&lt;/p&gt;\n&lt;p&gt;Uretse abayahudi, hari n&amp;rsquo;andi matsinda yahunze u Budage n&amp;rsquo;ingoma y&amp;rsquo;aba-Nazi, arimo; Abaromani, ababana bahuje ibitsina n&amp;rsquo;abataravugaga rumwe n&amp;rsquo;ubutegetsi.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:17:13', '2018-10-19'),
(37, 27, 6, 'Wayne Rooney yatangaje ko umutoza Sir Alex Ferguson atigeze na rimwe ayobora urwambariro rwe nkuko bamwe babikeka,ahubwo yabihaye abakinnyi 5 barimo nawe ndetse avuga ko ibyo abantu bavuga ko Manchester United yakinaga isatira ku bwa Ferguson atari byo kuko bo bakinaga Counter attack.\n\n \n \nWayne Rooney uhagaze neza mu ikipe ya DC United muri USA, yatangarije ikinyamakuru cyitwa Men In Blazers TV, ko agitozwa na Sir Alex Ferguson,hari abakinnyi 5 bari bashinzwe kumenyereza abakinnyi bashya kugira ngo badakora amakosa ndetse nawe yari muri bo.\n\nYagize ati &ldquo;Abakinnyi barimo njyewe,Ryan Giggs, Gary Neville, Paul Scholes, Rio Ferdinand twari tuzi umuco wa Manchester United ndetse twifuza ibyiza gusa kuri yo.Nitwe twiyoboreraga urwambariro ndetse nta mukinnyi wabaga yaduca muri humye ngo ateze akavuyo.\n\nNitwe twayoboraga urwambariro ubwacu,ntabwo Ferguson yigeze yifuza kubyikorera.Twizeraga cyane umutoza ndetse tukiyobora.&rdquo;\n\nNubwo Sir Alex Ferguson yasinyishije abakinnyi bari bafite amazina akomeye nka ', 'Wayne Rooney yatangaje bimwe mu bintu abantu batari bazi kuri Manchester United ya Ferguson', '', '&lt;div class=&quot;col s12&quot;&gt;\n&lt;p&gt;Wayne Rooney uhagaze neza mu ikipe ya DC United muri USA, yatangarije ikinyamakuru cyitwa Men In Blazers TV, ko agitozwa na Sir Alex Ferguson,hari abakinnyi 5 bari bashinzwe kumenyereza abakinnyi bashya kugira ngo badakora amakosa ndetse nawe yari muri bo.&lt;/p&gt;\n&lt;/div&gt;\n&lt;div class=&quot;col s12&quot;&gt;\n&lt;div class=&quot;wrapart&quot;&gt;\n&lt;p&gt;Yagize ati&amp;nbsp;&lt;em&gt;&amp;ldquo;Abakinnyi barimo njyewe,Ryan Giggs, Gary Neville, Paul Scholes, Rio Ferdinand twari tuzi umuco wa Manchester United ndetse twifuza ibyiza gusa kuri yo.Nitwe twiyoboreraga urwambariro ndetse nta mukinnyi wabaga yaduca muri humye ngo ateze akavuyo.&lt;/em&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em&gt;Nitwe twayoboraga urwambariro ubwacu,ntabwo Ferguson yigeze yifuza kubyikorera.Twizeraga cyane umutoza ndetse tukiyobora.&amp;rdquo;&lt;br class=&quot;autobr&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\n&lt;p&gt;Nubwo Sir Alex Ferguson yasinyishije abakinnyi bari bafite amazina akomeye nka Cristiano Ronaldo, Carlos Tevez, Nani na Dimitar Berbatov,nta n&amp;rsquo;umwe wari wemerewe kurenga kuri aba basore 5.&lt;/p&gt;\n&lt;p&gt;Wayne Rooney yatangaje kandi ko ibivugwa ko Manchester United yahoze ikina isatira atari byo kuko no mu gihe cya Ferguson bacungiraga kuri Counter attack.&lt;/p&gt;\n&lt;p&gt;Yagize ati&amp;nbsp;&lt;em&gt;&amp;ldquo;Abantu bakomeje kuvuga ko twasatiraga cyane,nyamara si ko byari bimeze.Imikino myinshi twayitsindiraga kuri Counter attack.Amakipe menshi twayatsindiraga ku muvuduko twari dufite.Niko twakinaga kuri Arsenal.Twari dufite ikipe yari yubakiye ku kwiba umugono kandi byaraduhiraga.&amp;rdquo;&lt;/em&gt;&lt;/p&gt;\n&lt;p&gt;Wayne Rooney yatsindiye Manchester United ibitego 253 mu mikino 559 ndetse yayifashije gutwara ibikombe byinshi birimo 5 bya Premier League na UEFA Champions League.&lt;/p&gt;\n&lt;/div&gt;\n&lt;/div&gt;', 0, 'PUBLISHED', '2018-10-19 16:18:52', '2018-10-19'),
(38, 29, 6, 'Mobisol, a leading player in decentralized solar electrification, offers a clean and affordable alternative to fossil fuels for lower-income households and small businesses in rural SubSaharan Africa.\n\nCombining solar energy with mobile payment technology, Mobisol designs, procures, distributes and services large solar home systems. This way, the Germany-based company enables rural families and business owners to power a range of complementary appliances, such as TVs, stereos, fridges, and thereby improve their standard of living and earn incremental income by establishing solar-powered businesses.\n\nMobisol provides a credible alternative to a grid connection that millions have been waiting for in vain, and ensures affordability through flexible payment plans', 'Job Advert: Mobisol is seeking to a â€œProduction & Planning Managerâ€.', '', '&lt;p&gt;&lt;br /&gt;Mobisol is seeking to a self-motivated, highly accountable, result-oriented person, strong interpersonal skills, and proactive, flexible, creative, excellent team player to fill the position of &amp;ldquo;Production &amp;amp;Planning Manager&amp;rdquo;.&lt;/p&gt;\n&lt;p&gt;Department:&lt;/p&gt;\n&lt;p&gt;COO, HQ&lt;/p&gt;\n&lt;p&gt;Authority:&lt;/p&gt;\n&lt;p&gt;Disciplinary: COO, HQ&lt;/p&gt;\n&lt;p&gt;Functional: COO, HQ&lt;/p&gt;\n&lt;p&gt;Interfaces:&lt;/p&gt;\n&lt;p&gt;&amp;bull; Procurement Department , CN , HQ&lt;/p&gt;\n&lt;p&gt;&amp;bull; Logistics Manager , TZ ,RW, KE , NG , CN&lt;/p&gt;\n&lt;p&gt;&amp;bull; Head of Sales , TZ, RW , KE , NG&lt;/p&gt;\n&lt;p&gt;&amp;bull; TechOps , TZ, RW, KE, NG&lt;/p&gt;\n&lt;p&gt;&amp;bull; Service Network TZ, RW, KE&lt;/p&gt;\n&lt;p&gt;&amp;bull; Wholesales ,HQ&lt;/p&gt;\n&lt;p&gt;&amp;bull; Finance , TZ, RW, KE, NG, HQ&lt;/p&gt;\n&lt;p&gt;Reporting to Mobisol Group COO, The Production &amp;amp; Planning Manger Responsibilities include delivering inventory performance with direct accountability for Demand and Supply, Planning activities and production flows across values streams from suppliers to delivery, distribution and /or consumption of product by end customers.&lt;/p&gt;\n&lt;p&gt;ïƒ˜ Act as a strong liaison between CO&amp;rsquo;S and HQ addressing major risks related to&lt;/p&gt;\n&lt;p&gt;Demand fluctuations&lt;/p&gt;\n&lt;p&gt;ïƒ˜ Create tools to track major metrics related to Global Supply Chain Performance&lt;/p&gt;\n&lt;p&gt;JOB FUNCTIONS:&lt;/p&gt;\n&lt;p&gt;&amp;bull; Demand planning&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review sales historic and forecast with local teams&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Lead Inventory Plan&amp;amp; Strategies (optimize inventory turnover )&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review and incorporate Service Network needs&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review New Product Introduction (NPI) to include into Demand Planning&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review B2B Sales to include into Demand Planning&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Release monthly Demand Planning&lt;/p&gt;\n&lt;p&gt;&amp;bull; Supply planning :&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Assess Production and Logistics capability&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Provide monthly Material Requirement Planning (MRP) to HQ Supply team&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review and support shipments planning and routing with HQ Logistics team in order to reduce lead-time&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Review available inventories in china (or other production zones)&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Roll-out of inventory management tool (Information accuracy and ordering process )&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Credit back inventory from TechOps refurbishment items&lt;/p&gt;\n&lt;p&gt;ï‚§ Continuous Improvement:&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Taking into account corporate strategy, improve any core processes related or impacted to the above, or aiming at improving customer services.&lt;/p&gt;\n&lt;p&gt;ïƒ¼ Preform actions aiming a reducing working capital and dead stock.&lt;/p&gt;\n&lt;p&gt;Requirements&lt;/p&gt;\n&lt;p&gt;- Master&amp;rsquo;s degree in Supply Chain or Operation Management&lt;/p&gt;\n&lt;p&gt;- Minimum 8+ years&amp;rsquo; experience in supply chain / Industrial project&lt;/p&gt;\n&lt;p&gt;- Skills in data analytics , forecasting , production planning , inventory management&lt;/p&gt;\n&lt;p&gt;- Proven team player&lt;/p&gt;\n&lt;p&gt;- Self-starter with a passion for Mobisol and its mission to plug in the world&lt;/p&gt;\n&lt;p&gt;- Quality value Engineering with local teams to improve efficiency&lt;/p&gt;\n&lt;p&gt;- Skills in manufacturing costs Analysis&lt;/p&gt;\n&lt;p&gt;- Multicultural team player , committed to deliver on time,&lt;/p&gt;\n&lt;p&gt;- Stress management&lt;/p&gt;\n&lt;p&gt;- Willingness to travel domestically/ internationally&lt;/p&gt;\n&lt;p&gt;- Fluency in English&lt;/p&gt;\n&lt;p&gt;Candidates matching the requirements are invited to apply by sending their CV and cover letter to hr_rw@plugintheworld.com, only selected candidates will be invited for interviews. Closing date 23/11 /2018 at 05:00 pm&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:22:14', '2018-10-19'),
(39, 23, 6, 'Rudeboy wahoze mu itsinda rya P-Square yageze I Kigali aho aje kwifatanya n&rsquo;abanyarwanda mu gitaramo cyo gutanga ibihembo ku bakora umwuga wa sinema muri Afurika (Africa Movie Academy Awards) biteganyijwe kuba kuri uyu wa Gatandatu ku Intare Conference Arena.', 'Umuhanzi Rudeboy wahoze muri P-Square yageze i Kigali [AMAFOTO]', '', '&lt;p&gt;Yagize ati &amp;ldquo;Murakoze cyane, nishimiye kuba ndi i Kigali sinjye uzarota ku wa Gatandatu hageze. Meza neza nta kibazo. Nateguye urubyiniro rw&amp;rsquo;umugisha, ndabizi ni umuriro gusa, munyizere. Iyi ni inshuro ya kane nje i Kigali,&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Rudeboy yakomeje avuga ko ari inshuro ya kane ageze mu Rwanda, ngo inshuro ebyiri yahageze ari kumwe n&amp;rsquo;impanga ye, izindi nshuro ebyiri arizana. Yavuze ko yiteguye gushimisha abanyarwanda n&amp;rsquo;abandi bazitabira ibi birori.&lt;/p&gt;\n&lt;p&gt;Biteganyijwe ko Ibi birori bizayoborwa n&amp;rsquo;umukinnyi wa filime Nse Ikpe Etim n&amp;rsquo;umunyarwanda umaze kumenyerwa mu gutera&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Twabibutsa ko Ibi bihembo bya Africa Movie Academy Awards byatangiye gutangwa muri 2005, ni no ku nshuro ya mbere bigiye gutangirwa mu Rwanda.&lt;/p&gt;', 0, 'SUBMITTED', '2018-10-19 16:24:36', '2018-10-19'),
(40, 18, 6, 'Itsinda rikora umuziki mu Rwanda rizwi nka TBB biravugwa ko ryaba ryabonye undi musore w&rsquo;umuhanga mu kuririmba injyana ya Dancehall uzwi nka Baume wasimbura umuhanzi Mc Tino waribarizwagamo ariko nyuma akaza kubiyomoraho akikorera ku giti cye.', 'BIRAVUGWA:Tbb yaba yabonye undi muhanzi w&rsquo;umuhanga usimbura Mc Tino mu Itsinda[AMAFOTO]', '', '&lt;p&gt;Ubundi Tbb ryari ijambo ry&amp;rsquo;impine ryasonaburaga amazina y&amp;rsquo;aba basore bari bagize iri tsinda aribyo Tino,Bob na Benja ndetse bikaba bivugwa ko umusore witwa Karama Sebastien uzwi ku izina ry&amp;rsquo;ubuhanzi rya &amp;rsquo;Baume&amp;rsquo; ariwe waba ugiye gusimbura Mc Tino mu itsinda.&lt;/p&gt;\n&lt;p&gt;Ibi bikaba bivuzwe nyuma y&amp;rsquo;uko bakoranye indirimbo bise &amp;rsquo;Komeza Umbeshye&amp;rsquo; ubundi bakumva uyu musore ari umuhanga mu njyana ya Dancehall ari nayo iri tsinda rya Tbb ryamenyekaniyeho.&lt;/p&gt;\n&lt;p&gt;Nubwo aba basore bombi &amp;rsquo;Bob na Benja&amp;rsquo; batarabihamya,amakuru agera k&amp;rsquo;UMURYANGO avuga ko aba basore bombi bakomeje kugirana ibiganiro n&amp;rsquo;uyu muhanzi ndetse bikaba binavugwa ko muri iyi minsi bari kugaragara muri Studio zitandukanye bari kumwe bose uko ari batatu &amp;rsquo;Bob,Benja na Baume&amp;rsquo;.&lt;/p&gt;\n&lt;p&gt;Baume ntabwo ari izina rishya mu muziki Nyarwanda kuko amaze gukora indirimbo nka: &amp;ldquo;Nyabugogo&amp;rdquo; yakoranye na Mutakubali, &amp;ldquo; I Mis you&amp;rdquo; yakoranye na Khaliban, &amp;ldquo;Mi nafurahi&amp;rdquo; n&amp;rsquo;izindi nyinshi.&lt;/p&gt;\n&lt;p&gt;REBA HASI INDIRIMBO NSHYA NZIZA &amp;rsquo;Tbb&amp;rsquo; YAKORANYE NA &amp;rsquo;BAUME&amp;rsquo; BISE &amp;rsquo;KOMEZA UMBESHYE&amp;rsquo;:&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:26:30', '2018-10-19'),
(41, 2, 6, 'Kimwe mu bitera abagabo akanyamuneza ngo ni ukureba amabere y&rsquo;abagore ndetse abahanga bagaragaza ko iyo umugabo agikubita amaso umuntu w&rsquo;igitsinagore ngo igikurikiraho ari ukureba aho amabere aherereye.', 'Kureba no gukora ku mabere yâ€™abagore bishobora kongerera abagabo iminsi yo kurama', '', '&lt;p&gt;Hifashishijwe ubushakashatsi bwasohotse muri 2012 mu kinyamakuru International Medecine byemejwe ko kureba amabere y&amp;rsquo;abagore byongerera abagabo igihe cyo kurama.&lt;/p&gt;\n&lt;p&gt;Ikinyamakuru &amp;lsquo;The Sun&amp;rsquo; na cyo cyahamije ko ubwo bushakatsi ari ubw&amp;rsquo;ukuri kuko iyo abagabo barebye amabere y&amp;rsquo;abagore bibatera akanyamuneza, kimwe mu bigira uruhare mu kuramba kw&amp;rsquo;umuntu.&lt;/p&gt;\n&lt;p&gt;Iki kinyamakuru cyakoze ubwo bushakashatsi nyuma yo gusanga impuzandengo yo kuramba ku Isi ku bagabo ari imyaka 79 mu gihe ku bagore ari imyaka 82 bakaba barifuzaga kumenya icyatuma n&amp;rsquo;abagabo na bo iminsi yabo yo kurama yiyongera.&lt;/p&gt;\n&lt;p&gt;Ibyo kandi bishimangirwa Mark Eis, Umushakashatsi muri kaminuza ya Naples mu Butaliyani nyuma yo gukorera ubushakashatsi ku bagabo 500.&lt;/p&gt;\n&lt;p&gt;Abo bagabo 500 bose nta kibazo cy&amp;rsquo;uburwayi namba bari bafite, bamwe muri bo basabwe kujya bareba amabere y&amp;rsquo;abagore buri munsi kandi kenshi gashoboka, naho abandi bagakomeza ubuzima bwabo busanzwe batayareba.&lt;/p&gt;\n&lt;p&gt;Nyuma y&amp;rsquo;imyaka itanu, uyu mushakashatsi yasanze abategetswe kujya bitegereza amabere y&amp;rsquo;abagore ndetse bakanayakoraho bari bafite ubuzima bwiza, nta kibazo cy&amp;rsquo;umuvuduko w&amp;rsquo;amaraso bafite, amaraso yabo atembera neza kandi bafite ibyago bikeya by&amp;rsquo;uko amaraso yabo ashobora kuvura.&lt;/p&gt;\n&lt;p&gt;Abandi batabikoze bari bafite ibibazo byo kurwara indwara z&amp;rsquo;umutima, umuvuduko ukabije w&amp;rsquo;amaraso, ibyago byo kurwara kanseri n&amp;rsquo;ibindi bibazo byo kwiheba byagize uruhare mu kwihutisha ubuzima bwabo bukagabanukaho imyaka itanu.&lt;/p&gt;\n&lt;p&gt;Umushakashatsi Mark Eis ati &quot; Kumara iminota 10 urimo gukora ku mabere y&amp;rsquo;umugore wambaye ubusa unayareba bigira ingaruka nziza ku buzima kuko bibyara imisemburo igenda igatwika ibinure ku buryo umusaruro bigira ku muntu ungana n&amp;rsquo;uw&amp;rsquo;umuntu umaze 30 ari muri gym.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Ikindi uyu mushakashatsi agarukaho ni uko ubunini bw&amp;rsquo;amabere na bwo bugira uko bureshya abagabo ndetse n&amp;rsquo;imitekerereze yabo igahita ihinduka ako kanya.&lt;/p&gt;\n&lt;p&gt;Dr. Weatherby wo mu Budage na we wakoze bene ubwo bushakashatsi ati &quot;Ubushakashatsi bwacu bwerekana ko kureba amabere y&amp;rsquo;umugore nibura iminota10 ku munsi bigabanya ibyago byo kugira umuvuduko ukabije w&amp;rsquo;amaraso ndetse n&amp;rsquo;indwara z&amp;rsquo;umutima kandi bigabanukaho kimwe cya kabiri iyo werekezaga mu kuzirwara.Turizera ko mu gukomeza kubikora umugabo ashobora kongera igihe cye cyo kurambaho imyaka ine cyangwa itanu.&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Ubu bushakashatsi nubwo bugaragaza ko gukora siporo ndetse umuntu akagira gahunda ihoraho byamufasha kwirinda indwara z&amp;rsquo;umutima mu buryo burambye kuko ngo abagabanyije ibyago byo kuzirwara kubera gukorakora amabere cyangwa kuyareba bitaba bivuga ko zitazabageraho.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:27:55', '2018-10-19'),
(42, 8, 6, 'Umunyarwenya Kibonke yasezeranye imbere y&rsquo;amategeko n&rsquo;umukunzi we Mutoni Jacky bamaze imyaka 3 bakundana.', 'Umunyarwenya Kibonke yasezeranye imbere yâ€™amategeko nâ€™umukunzi we', '', '&lt;p&gt;Kibonke kuri ubu ufite imyaka 28 y&amp;rsquo;amavuko ni umukinnyi wa filime wamamaye mu Rwanda kubera iyitwa &amp;lsquo;Seburikoko&amp;rsquo; , ubusanzwe kandi ni umunyarwenya akaba yaraninjiye muri muzika. Umuhango waba bombi wo gusezerana imbere y&amp;rsquo;amategeko wabereye mu murenge wa Nibo&lt;/p&gt;\n&lt;p&gt;Umunyarwenya ndetse akaba n&amp;rsquo;umukinnyi wa filime Mugisha Emmanuel uzwi cyane nka &amp;lsquo;Kibonke Clapton&amp;rsquo; ku gicamunsi cyo kuwa Kane taliki ya 18 Ukwakira 2018 ,nibwo ku mbuga nkoranyambaga hakwirakwijwe amafoto agaragaza uyu musore arimo kurahira imbere y&amp;rsquo;amategeko n&amp;rsquo;umukunzi we utwite inda nkuru.&lt;/p&gt;\n&lt;p&gt;Amakuru agera k&amp;rsquo;&amp;nbsp;&lt;strong&gt;UMURYANGO&lt;/strong&gt;&amp;nbsp;avuga ko aba bombi bamaranye imyaka 3 bakundana mu buryo bw&amp;rsquo;ibanga aho uyu musore yabazwaga n&amp;rsquo;itangazamakuru umukobwa bakundana akamuvuga mu mazina gusa benshi bataramuca iryera.&lt;/p&gt;\n&lt;p&gt;ye muri Kicukiro.&lt;/p&gt;', 1, 'PUBLISHED', '2018-10-19 16:31:34', '2018-10-19'),
(43, 5, 6, 'Louise Mushikiwabo (uherutse gutorerwa kuyobora Francophonie) na Gen James Kabarebe nibo ba Minisitiri bari basigaye mu itsinda ry&rsquo;abaminisitiri batangiranye manda ya 2 na Perezida Kagame muri 2010\n\nMuri Kanama 2010 nibwo Perezida Paul Kagame yatorewe kongera kuyobora u Rwanda muri manda ya kabiri. Ubwo yarahiraga tariki ya 06 Nzeli 2010 yavuze ko benshi mu bagize Guverinoma bazayigumamo kuko ngo ntawe uhindura &ldquo;ikipe itsinda&rdquo;.', 'Ahabanza Amakuru Mu Rwanda Mu Mahanga Imyidagaduro Imikino Urukundo Udushya UmuryangoTV Amatangazo    Guverinoma: &ldquo;Ikipe itsinda&rdquo; yari irangiye mu kibuga babiri mu bayihozemo baragaruka', '', '&lt;p&gt;Nyuma yo kurahira, Perezida Kagame akaba yaragumishije Sen Bernard Makuza ku mwanya wa Minisitiri w&amp;rsquo;Intebe yari ariho kugeza amatora aba, uyu nawe aterura Guverinoma yose y&amp;rsquo;abaminisitiri 22 yari iriho ndetse n&amp;rsquo;abanyamabanga ba Leta batatu.&lt;/p&gt;\n&lt;p&gt;Tariki 14 Nzeli 2010 iyi Guverinoma irarahira ikomereza aho yari igereje.&lt;/p&gt;\n&lt;p&gt;Aka gahenge ku bari bagiriwe ikizere ntikatinze kuko muri 2011 Bernard Makuza na Guverinoma ye basimbuwe na Pierre Damien Habumuremyi wahise ashyiraho indi Guverinoma.&lt;/p&gt;\n&lt;p&gt;Kuwa Gatanu tariki ya 7 Ukwakira 2011 nibwo Pierre Damien Habumuremyi yarahiriye kuyobora Guverinoma y&amp;rsquo;u Rwanda nyuma y&amp;rsquo;umunsi umwe gusa ashyizwe kuri uwo mwanya ndetse ahita ashyiraho Guverinoma.&lt;/p&gt;\n&lt;p&gt;Iki gihe &amp;ldquo;Ikipe Itsinda&amp;rdquo; yahise ikaba yaratakaje bamwe mu bakinnyi bayo b&amp;rsquo;imena barimo Bazivamo, Dr. Sezibera, Jeanne D&amp;rsquo;Arc Mujawamariya na Solina Nyirahabimana.&lt;/p&gt;\n&lt;p&gt;Mu myaka 8 yari ishize, kugeza uyu munsi ubwo Perezida Kagame yavugururaga Guverinoma, Gen James Kabarebe na Louise Mushikiwabo akaba aribo bari basigaye mu bari bagize itsinda ryiswe &amp;ldquo;ikipe itsinda&amp;rdquo; muri Guverinoma ya 2010.&lt;/p&gt;\n&lt;p&gt;Dr. Richard Sezibera na Solina Nyirahabimana bahoze mu &amp;ldquo;Ikipe Itsinda&amp;rdquo; bakaba bagarutse muri Guverinoma bari baravuyemo muri 2011. Dr. Richard Sezibera yabaye Minisitiri w&amp;rsquo;Ububanyi n&amp;rsquo;Amahanga naho Nyirahabimana ahabwa MIGEPROF.&lt;/p&gt;\n&lt;p&gt;Kuva muri 2010 Guverinoma y&amp;rsquo;u Rwanda ikaba imaze kuyoborwa n&amp;rsquo;Abaminisitiri b&amp;rsquo;Intebe na Edouard Ngirente uriho ubu.&lt;/p&gt;\n&lt;p&gt;Kuba Minisitiri mu Rwanda ukaramya bihira bake. Isaha n&amp;rsquo;isaha ikigusunikira ku muryango kiba kirekereje.&lt;/p&gt;\n&lt;p&gt;Uretse rimwe gusa nibwo Perezida Kagame yeruye avuga icyatumye yirukana umuminisitiri. Abandi ibitabaga bigaragariraga rubanda ngo ibashe gukeka icyo runaka azize ntibyamenyekanaga.&lt;/p&gt;\n&lt;p&gt;Hari abaminisitiri byaketswe ko bazize guca inyuma icyubahiro cyabo, umwe yarasezeye, abazize kunanirwa gukorana neza na bagenzi babo n&amp;rsquo;ibindi.&lt;br class=&quot;autobr&quot; /&gt;Minisiteri nka Mineduc, Migeprof, Minaloc, Miispoc na Minagiri zikaba ziri mu ziza ku isonga muri Minisiteri zikenya abayobozi.&lt;/p&gt;\n&lt;p&gt;Gusa icyagaragaye ni uko ihindagurika rya hato na hato ry&amp;rsquo;abaminisitiri muri Minisiteri iyi n&amp;rsquo;iyi bitagiye biba umuti w&amp;rsquo;ibibazo byabaga biyivugwamo.&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;Abari bagize Guverinoma yiswe &quot;Ikipe itsinda&quot; ya Minisitiri w&amp;rsquo; intebe Bernard MAKUZA yashyizeho tariki 14 Nzeli&amp;nbsp;&lt;em&gt;2010&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;1. Minisitiri w&amp;rsquo; ubutegetsi bw&amp;rsquo; igihugu amajyambere rusange n&amp;rsquo; imibereho myiza y&amp;rsquo; abaturage: James MUSONI&lt;/p&gt;\n&lt;p&gt;2. Minisitiri w&amp;rsquo; ubuhinzi n&amp;rsquo; ubworozi:Dr agn&amp;egrave;s KARIBATA&lt;/p&gt;\n&lt;p&gt;3. Minisitiri w&amp;rsquo; ubutabera akaba n&amp;rsquo; intumwa ya Leta:Tharcisse KARUGARAMA&lt;/p&gt;\n&lt;p&gt;4. Minisitiri w&amp;rsquo; ububanyi n&amp;rsquo; amahanga : Louise MUSHIKIWABO&lt;/p&gt;\n&lt;p&gt;5. Minisitiri w&amp;rsquo; ubuzima :Dr Richard SEZIBERA&lt;/p&gt;\n&lt;p&gt;6. Minisitiri w&amp;rsquo; umutekano mu gihugu:Sheikh MUSA Fazili Harelimana&lt;/p&gt;\n&lt;p&gt;7. Minisitiri w&amp;rsquo; ibihugu by&amp;rsquo; umuryango w&amp;rsquo;Afurika y&amp;rsquo;iburasirazuba:Monique MUKARURIZA&lt;/p&gt;\n&lt;p&gt;8. Minisitiri w&amp;rsquo; uburinganire n&amp;rsquo; iterambere ry&amp;rsquo; umuryango:Dr Jeanne d&amp;rsquo; Arc MUJAWAMALIYA&lt;/p&gt;\n&lt;p&gt;9. Minisitiri wa ICT no gusakaza ubumenyi:Dr Ignace GATARE&lt;/p&gt;\n&lt;p&gt;10. Minisitiri ushinzwe imirimo y&amp;rsquo; abaminisitiri: Protais MUSONI&lt;/p&gt;\n&lt;p&gt;11. Minisitiri w&amp;rsquo;ibikorwa remezo:Vincent KAREGA&lt;/p&gt;\n&lt;p&gt;12.Minisitiri w&amp;rsquo;amashyamba na Mine:Christophe BAZIVAMO&lt;/p&gt;\n&lt;p&gt;13.Minisitiri w&amp;rsquo;ibiza no gucyura impunzi: Marcel GATSINZI&lt;/p&gt;\n&lt;p&gt;14.Minisitiri w&amp;rsquo;Imali n&amp;rsquo; igenamigambi:John RWANGOMBWA&lt;/p&gt;\n&lt;p&gt;15.Minisitiri w&amp;rsquo;Ingabo:General James KABAREBE&lt;/p&gt;\n&lt;p&gt;16.Minisitiri w&amp;rsquo;Urubyiruko :Protais MITARI&lt;/p&gt;\n&lt;p&gt;17.Minisitiri w&amp;rsquo;umuco na sport:Joseph HABINEZA&lt;/p&gt;\n&lt;p&gt;18.Minisitiri muri Perezidansi ya repubulika:Solina NYIRAHABIMANA&lt;/p&gt;\n&lt;p&gt;19.Minisitiri w&amp;rsquo;Uburezi:Charles MULIGANDE&lt;/p&gt;\n&lt;p&gt;20.Minisitiri w&amp;rsquo;abakozi n&amp;rsquo; umurimo :Anastase MUREKEZI&lt;/p&gt;\n&lt;p&gt;21.Minisitiri w&amp;rsquo;ubucuruzi n&amp;rsquo; inganda;Monique NSANZABAGANWA&lt;/p&gt;', 0, 'TRASHED', '2018-10-19 16:33:21', '2018-10-19'),
(44, 26, 6, 'munyezamu wa APR FC,waraye atowe nk&rsquo;umunyezamu wahize abandi muri shampiyona ya 2017/2018,yitabiriye uyu muhango ari kumwe n&rsquo;umukunzi we Diane watumye benshi bacika ururondogoro.', 'Uburanga bwâ€™umukunzi wa Kimenyi Yves bwatangaje benshi mu bitabiriye ibirori bya 2018 AZAM Rwanda Premier League Awards [AMAFOTO]', '', '&lt;p&gt;munyezamu wa APR FC,waraye atowe nk&amp;rsquo;umunyezamu wahize abandi muri shampiyona ya 2017/2018,yitabiriye uyu muhango ari kumwe n&amp;rsquo;umukunzi we Diane watumye benshi bacika ururondogoro.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:37:10', '2018-10-19'),
(45, 26, 6, 'Ifoto ya Marina ari kumwe na Badrama ndetse na Queencha bose babarizwa muri Label imwe yaciye ibintu ku mbuga nkoranyambaga zo mu Rwanda kubera ipantalon yari yambaye.', 'Ifoto ya Marina yambaye Ipantalo igaragaza umubyimba nâ€™imiterere byâ€™igitsina cye yaciye ibintu ku mbuga nkoranyambaga[AMAFOTO]', '', '&lt;p&gt;&lt;strong&gt;Iyi niyo Foto ya Marina yavugishije abantu ibitandukanye&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Muri iki cyumweru nibwo ku mbuga nkoranyambaga zitandukanye zo mu Rwanda hakwirakwijwe ifoto ya BadRama,QueenCha na Marina yambaye Ipantalo igaragaza neza imiterere ndetse n&amp;rsquo;umubyimba w&amp;rsquo;igitsina cye,ibintu byagiye bivugisha benshi amagambo atandukanye atari meza kuri uyu muhanzikazi.&lt;/p&gt;\n&lt;p&gt;Iyi foto ikba ivuzweho byinshi bibi bitandukanye nyuma y&amp;rsquo;andi mafoto ya Marina nayo yagiye atavugwaho rumwe n&amp;rsquo;abakunzi b&amp;rsquo;umuziki Nyarwanda,aho aya mafoto harimo ayagiye afatirwa mu bitaramo yabaga yaririmbyemo bitewe n&amp;rsquo;imyambarire ye,hakaza n&amp;rsquo;andi we ubwe yagiye yishyirira hanze nabwo yerekana mu buryo bw&amp;rsquo;ikimenyetso imiterere y&amp;rsquo;igitsina cye bamwe bagiye bahamya ko yabaga abikora nkana kugira ngo ashotore igitsina gabo.&lt;/p&gt;', 0, 'PUBLISHED', '2018-10-19 16:42:18', '2018-10-19');

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
(8, 'IMYIDAGADURO', '', 'ACTIVE', '2018-09-28 06:48:14'),
(9, 'MUDASOBWA / IKORANABUHANGA', '', 'ACTIVE', '2018-10-08 23:05:45'),
(10, 'IBINYABIZIGA / IKORANABUHANGA', '', 'ACTIVE', '2018-10-15 22:10:40'),
(11, 'TELEFONI/IKORANABUHANGA', '', 'ACTIVE', '2018-10-15 22:11:01'),
(12, 'UBUMENYI K\'UMYUBAKIRE', '', 'ACTIVE', '2018-10-15 22:11:49'),
(13, 'GUKORA IMBATA Z\'INZU', '', 'ACTIVE', '2018-10-15 22:12:14'),
(14, 'AMAZU YO KUBAMO', '', 'ACTIVE', '2018-10-15 22:12:45'),
(15, 'UBUMENYAMUNTU/IBYEGERANYO', '', 'ACTIVE', '2018-10-15 22:13:08'),
(16, 'IKORANABUHANGA/IBYEGERANYO', '', 'ACTIVE', '2018-10-15 22:13:52'),
(17, 'POLITIKI/IBYERANYO', '', 'ACTIVE', '2018-10-15 22:14:19'),
(18, 'AMATEKA/IBYEGERANYO', '', 'ACTIVE', '2018-10-15 22:14:47'),
(19, 'GUSHUSHANYA', '', 'ACTIVE', '2018-10-15 22:15:35'),
(20, 'UBUBUMBYI', '', 'ACTIVE', '2018-10-15 22:15:49'),
(21, 'IBIHANGANO', '', 'ACTIVE', '2018-10-15 22:16:01'),
(22, 'UMUZIKI', '', 'ACTIVE', '2018-10-15 22:16:13'),
(23, 'INKURU ZIRANGIRA', '', 'ACTIVE', '2018-10-15 22:16:34'),
(24, 'INKURU Z\'URUHEREREKANE', '', 'ACTIVE', '2018-10-15 22:16:54'),
(25, 'INKURU Z\'URUKUNDO', '', 'ACTIVE', '2018-10-15 22:17:09'),
(26, 'INKURU Z\'IGISHA', '', 'ACTIVE', '2018-10-15 22:17:23'),
(27, 'UBUHAMYA', '', 'ACTIVE', '2018-10-15 22:17:34'),
(28, 'AMAZU', '', 'ACTIVE', '2018-10-15 22:17:51'),
(29, 'IBIBANZA', '', 'ACTIVE', '2018-10-15 22:17:58'),
(30, 'IBINYABIZIGA', '', 'ACTIVE', '2018-10-15 22:18:15'),
(31, 'CAMERA', '', 'ACTIVE', '2018-10-15 22:18:28'),
(32, 'MU RUGO', '', 'ACTIVE', '2018-10-15 22:18:48'),
(33, 'GUKORA AMASHUSHO', '', 'ACTIVE', '2018-10-15 22:19:27');

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

--
-- Dumping data for table `articles_comments`
--

INSERT INTO `articles_comments` (`comment_id`, `article_id`, `user_mail`, `user_phone`, `user_names`, `comment`, `attachment`, `status`, `submit_date`) VALUES
(1, 23, 'Sam@gmail.com', '', 'Manikiza', 'welcome to my homeland of technology.', '', 'ACTIVE', '2018-10-08 21:18:06');

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
(15, 23, '662515729.jpg', 'ACTIVE', '2018-09-28 06:51:05'),
(16, 24, '1474671318.jpg', 'ACTIVE', '2018-10-08 23:08:37'),
(17, 25, '554196787.jpg', 'ACTIVE', '2018-10-08 23:38:55'),
(18, 26, '555504754.jpg', 'ACTIVE', '2018-10-08 23:44:38'),
(19, 27, '2130789367.jpg', 'ACTIVE', '2018-10-19 16:00:46'),
(20, 28, '852308041.jpg', 'ACTIVE', '2018-10-19 16:03:25'),
(21, 29, '1054454480.jpg', 'ACTIVE', '2018-10-19 16:06:56'),
(22, 30, '808415480.jpg', 'ACTIVE', '2018-10-19 16:09:09'),
(23, 31, '490341854.jpg', 'ACTIVE', '2018-10-19 16:10:45'),
(24, 32, '1190040913.jpg', 'ACTIVE', '2018-10-19 16:12:37'),
(25, 33, '2062108199.jpg', 'ACTIVE', '2018-10-19 16:14:05'),
(26, 34, '1624411424.jpg', 'ACTIVE', '2018-10-19 16:15:25'),
(27, 35, '1971837003.jpg', 'ACTIVE', '2018-10-19 16:16:28'),
(28, 36, '279649901.jpg', 'PENDING', '2018-10-19 16:17:46'),
(29, 37, '182434393.jpg', 'ACTIVE', '2018-10-19 16:19:01'),
(30, 38, '1579242107.png', 'PENDING', '2018-10-19 16:22:24'),
(31, 39, '1737011975.jpg', 'ACTIVE', '2018-10-19 16:25:02'),
(32, 40, '1657450183.jpg', 'PENDING', '2018-10-19 16:26:50'),
(33, 41, '1689044597.jpg', 'PENDING', '2018-10-19 16:29:34'),
(34, 42, '596263715.jpg', 'PENDING', '2018-10-19 16:31:54'),
(35, 44, '1213482647.jpg', 'PENDING', '2018-10-19 16:37:26'),
(36, 45, '1269037754.jpg', 'ACTIVE', '2018-10-19 16:43:25'),
(37, 38, '420976357.jpg', 'ACTIVE', '2018-10-19 16:50:13'),
(38, 42, '1104571466.jpg', 'ACTIVE', '2018-10-19 16:50:38'),
(39, 41, '1597764772.jpg', 'ACTIVE', '2018-10-19 16:50:56'),
(40, 44, '621322011.jpg', 'ACTIVE', '2018-10-19 16:51:21'),
(41, 40, '498453322.jpg', 'ACTIVE', '2018-10-19 16:52:04'),
(42, 36, '1846381614.jpg', 'ACTIVE', '2018-10-19 16:52:22');

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
(1, 1, '1371676855.jpg', 'jpg', '', 'ACTIVE', '2018-09-03 22:06:55'),
(2, 2, '1913243665.jpg', 'jpg', '', 'ACTIVE', '2018-10-19 17:15:35');

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
  MODIFY `article_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `articles_attachments`
--
ALTER TABLE `articles_attachments`
  MODIFY `attach_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `articles_comments`
--
ALTER TABLE `articles_comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `like_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `articles_posters`
--
ALTER TABLE `articles_posters`
  MODIFY `poster_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
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
  MODIFY `banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
