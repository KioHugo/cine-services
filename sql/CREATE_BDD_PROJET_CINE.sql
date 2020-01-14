-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.11 - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour projet-cine
DROP DATABASE IF EXISTS `projet-cine`;
CREATE DATABASE IF NOT EXISTS `projet-cine` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `projet-cine`;

-- Listage de la structure de la table projet-cine. acteur
CREATE TABLE IF NOT EXISTS `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `img` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.acteur : ~40 rows (environ)
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` (`id`, `nom`, `prenom`, `img`, `description`) VALUES
	(20, 'Craig', 'Daniel', 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Daniel_Craig_-_Film_Premiere_%22Spectre%22_007_-_on_the_Red_Carpet_in_Berlin_%2822387409720%29_%28cropped%29.jpg', 'Daniel Craig [ˈdanjəl kɹeɪɡ]1 est un acteur britannique, né le 2 mars 1968 à Chester. Sixième acteur à interpréter James Bond au cinéma, il fait ses débuts dans le rôle de l\'agent James Bond de matricule 007 dans Casino Royale, puis continue avec Quantum of Solace, Skyfall, Spectre et Mourir peut attendre, dont la sortie est prévue pour 2020, et marquera le cinquième et dernier film de la saga avec Craig dans le rôle.'),
	(21, 'Dench', 'Judi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Judi_Dench_at_the_BAFTAs_2007.jpg/330px-Judi_Dench_at_the_BAFTAs_2007.jpg', 'Dame Judith Olivia Dench, dite Judi Dench [ˈd͡ʒuːdi ˈdɛnt͡ʃ ]1, née le 9 décembre 1934 à York, est une actrice britannique, mondialement connue pour avoir interprété M dans sept films de James Bond.'),
	(22, 'Brosnan', 'Pierce', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Pierce_Brosnan_Deauville_2019.jpg/390px-Pierce_Brosnan_Deauville_2019.jpg', 'Pierce Brosnan [pɪə(ɹ)s ˈbɹɑsnæn]1 est un acteur et producteur de cinéma irlando-américain, né le 16 mai 1953, à Drogheda en Irlande. Révélé par la série télévisée Les Enquêtes de Remington Steele, il est notamment connu pour être le cinquième acteur à incarner James Bond, qu\'il a interprété dans quatre films de la franchise britannique : GoldenEye, Demain ne meurt jamais, Le monde ne suffit pas et Meurs un autre jour. Il est par ailleurs présent dans d\'autres productions à succès, telles que Mars Attacks!, Thomas Crown et The Foreigner.'),
	(23, 'Bourvil', '', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Bourvil2.jpg', 'André Raimbourg, dit Bourvil, est un acteur, chanteur et humoriste français, né le 25 juillet 1917 à Prétot-Vicquemare (Seine-Inférieure)1 et mort le 23 septembre 1970 à Paris (16e arrondissement).'),
	(24, 'De Funès', 'Louis', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Louis_de_Fun%C3%A8s_%E2%80%94_L%27Homme_orchestre_%281970%29_%28recadr%C3%A9%29.jpg/390px-Louis_de_Fun%C3%A8s_%E2%80%94_L%27Homme_orchestre_%281970%29_%28recadr%C3%A9%29.jpg', 'Louis de Funès de Galarza, dit Louis de Funès, est un acteur comique français né le 31 juillet 1914 à Courbevoie et mort le 27 janvier 1983 à Nantes.'),
	(25, 'De Niro', 'Robert', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Robert_De_Niro_Cannes_2016.jpg/330px-Robert_De_Niro_Cannes_2016.jpg', 'Robert De Niro /ˈɹɑbəɹt də ˈnɪəɹoʊ/1 est un acteur, réalisateur et producteur de cinéma américain né le 17 août 1943 à New York. D\'origine italienne par son père, il est également devenu citoyen italien en 20062,3.'),
	(26, 'Phoenix', 'Joaquin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Joaquin_Phoenix_at_the_2018_Berlin_Film_Festival.jpg/330px-Joaquin_Phoenix_at_the_2018_Berlin_Film_Festival.jpg', 'Joaquin Phoenix /hwɑːˈkiːn ˈfiːnɪks/1, né le 28 octobre 1974 à San Juan (Porto Rico), est un acteur, producteur, musicien et militant américain.'),
	(27, 'DiCaprio', 'Leonardo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Leonardo_Dicaprio_Cannes_2019.jpg/375px-Leonardo_Dicaprio_Cannes_2019.jpg', 'Leonardo DiCaprio [ˈliːoʊnɚdoʊ dɪˈkæprioʊ]1, né le 11 novembre 1974 à Los Angeles, est un acteur, scénariste et producteur de cinéma américain.'),
	(28, 'Robbie', 'Margot', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/SYDNEY%2C_AUSTRALIA_-_JANUARY_23_Margot_Robbie_arrives_at_the_Australian_Premiere_of_%27I%2C_Tonya%27_on_January_23%2C_2018_in_Sydney%2C_Australia_%2828074883999%29_%28cropped_2%29.jpg/390px-thumbnail.jpg', 'Margot Robbie [ˈmɑːɹɡoʊ ˈɹɒbi]1, née le 2 juillet 1990 à Dalby (Queensland, Australie), est une actrice et productrice australienne.'),
	(29, 'Hanks', 'Tom', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Tom_Hanks_TIFF_2019.jpg/330px-Tom_Hanks_TIFF_2019.jpg', 'Tom Hanks [tɑm hæŋks]1 est un acteur, réalisateur et producteur de cinéma américain, né le 9 juillet 1956 à Concord en Californie.'),
	(30, 'Reeves', 'Keanu', 'https://upload.wikimedia.org/wikipedia/commons/a/af/Keanu_Reeves_%2825448963336%29_%28cropped%29.jpg', 'Keanu Reeves /kiˈɑnu ˈɹiːvz/1 est un acteur canadien, né le 2 septembre 1964 à Beyrouth2,3 (Liban) et qui habite aux Etats-Unis.'),
	(31, 'Downey JR', 'Robert', 'https://img-4.linternaute.com/sNQzFil47Avexd1NnvVRwVQrE3w=/1000x/smart/613ac5a99cba46da83722e86c6eed610/ccmcms-linternaute/10763274.jpg', 'Robert Downey Jr. /ˈɹɑbɚt ˈdaʊni ˈd͡ʒunjɚ/1 est un acteur américain, né le 4 avril 1965 à New York. Révélé à la fin des années 1980, il est nommé pour l\'Oscar du meilleur acteur en 1993 pour son interprétation de Charlie Chaplin dans Chaplin, mais connaît ensuite un passage à vide du fait de graves problèmes de drogue et d\'alcool qui le conduisent en prison. Rétabli, il opère un retour en force et devient, en 2008, l\'interprète d\'Iron Man dans les films des studios Marvel, un premier film qui se trouve à l\'origine de la création de l\'Univers cinématographique Marvel. Ce rôle, qu\'il interprète dans la trilogie Iron Man ainsi que dans les films des séries Avengers, Captain America et Spider-Man lui vaut d\'être l\'un des acteurs les mieux payés au monde2.'),
	(32, 'Johansson', 'Scarlett', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Scarlett_Johansson_by_Gage_Skidmore_2019.jpg/330px-Scarlett_Johansson_by_Gage_Skidmore_2019.jpg', 'Scarlett Johansson [ˈskɑɹlɪt d͡ʒoʊˈhɑnsʌn]1 est une actrice, chanteuse et réalisatrice américaine, née le 22 novembre 1984 à New York.'),
	(33, 'Diesel', 'Vin', 'http://image.noelshack.com/fichiers/2014/04/1390692167-qdez.png', 'Mark Sinclair Vincent, dit Vin Diesel, né le 18 juillet 1967, à Alameda, en Californie est un acteur, scénariste et producteur de cinéma américain.'),
	(34, 'Harington', 'Kit', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Kit_harrington_by_sachyn_mital_%28cropped%29.jpg/330px-Kit_harrington_by_sachyn_mital_%28cropped%29.jpg', 'Christopher Harington, dit Kit Harington est un acteur et producteur britannique, né le 26 décembre 1986 à Acton (Grand Londres).'),
	(35, 'Abraham', 'F.Murray', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/F_Murray.Abraham_cropped.jpg/375px-F_Murray.Abraham_cropped.jpg', 'Murray Abraham-Stello, dit F. Murray Abraham1,2, est un acteur américain né le 24 octobre 1939 à Pittsburgh (Pennsylvanie).'),
	(36, 'Reddick', 'Lance', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Lance_Reddick_by_Gage_Skidmore.jpg/390px-Lance_Reddick_by_Gage_Skidmore.jpg', 'Lance Reddick est un acteur américain, né le 31 décembre 1962 à Baltimore (Maryland).'),
	(37, 'Egerton', 'Taron', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Taron_Egerton_by_Gage_Skidmore_2.jpg/330px-Taron_Egerton_by_Gage_Skidmore_2.jpg', 'Taron Egerton est un acteur britannique, né le 10 novembre 1989 à Birkenhead en Angleterre1,2.'),
	(38, 'Holland', 'Tom', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm_tL66M7G4OkKz6bgXh8QEvdLwsDO9GYyC-QKH5B8Vl_JUfX_Cg&s', 'Thomas Stanley Holland dit Tom Holland est un acteur britannique, né le 1er juin 1996 à Kingston upon Thames dans la banlieue de Londres.'),
	(39, 'L. Jackson', 'Samuel', 'https://www.challenges.fr/assets/img/2007/06/02/cover-r4x3w1000-5835c17155b18-samuel-l-jackson-dans-jackie.jpg', 'Samuel Leroy Jackson [ˈsæmjuəl ˈliːˌɹɔɪ ˈd͡ʒæksən]1 est un acteur et producteur de cinéma américain, né à Washington D.C. le 21 décembre 1948.'),
	(40, 'Reynolds', 'Ryan', 'https://cdn.kulturegeek.fr/wp-content/uploads/2019/11/Ryan-Reynolds-moustache-.jpg', 'Ryan Reynolds est un acteur, mannequin et producteur de cinéma américano-canadien, né le 23 octobre 1976 à Vancouver1.'),
	(41, 'Green', 'Eva', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Eva_Green_%28Headshot%29.jpg/330px-Eva_Green_%28Headshot%29.jpg', 'Eva Green /eva gʁeːn/n 1 est une actrice française, née le 6 juillet 1980 à Paris.'),
	(42, 'Ford', 'Colin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Colin_Ford_SDCC_2014_%28cropped%29.jpg/330px-Colin_Ford_SDCC_2014_%28cropped%29.jpg', 'Colin Ford est un acteur américain, né le 12 septembre 1996 à Nashville en Tennessee.'),
	(43, 'Lawther', 'Alex', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Alex_Lawther_at_58th_BFI_London_Film_Festival_Awards.jpg/330px-Alex_Lawther_at_58th_BFI_London_Film_Festival_Awards.jpg', 'Alex Lawther, né le 4 mai 1995 à Petersfield, est un acteur britannique.'),
	(44, 'Barden', 'Jessica', 'data:image/jpeg;base64,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', 'Jessica Barden, née le 21 juillet 1992 à Northallerton, est une actrice britannique. En 2017, elle joue le rôle d\'une adolescente rebelle nommée Alyssa, dans la série télévisée Netflix The End of the F***ing World.'),
	(45, 'Lincoln', 'Andrew', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Andrew_Lincoln_%2842749683025%29_%28cropped%29.jpg/330px-Andrew_Lincoln_%2842749683025%29_%28cropped%29.jpg', 'Andrew James Clutterbuck, plus connu sous son nom professionnel Andrew Lincoln est un acteur britannique, né le 14 septembre 1973 à Londres (Angleterre).'),
	(46, 'Malek', 'Rami', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/SXSW_2016_-_Rami_Malek_%2825138464364%29_%28cropped_2%29.jpg/390px-SXSW_2016_-_Rami_Malek_%2825138464364%29_%28cropped_2%29.jpg', 'Rami Said Malek /ˈrɑːmi saɪd ˈmælɪk/1 est un acteur et producteur américain, né le 12 mai 1981 à Los Angeles.'),
	(47, 'Apa', 'K.J.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/KJ_Apa_%2848478684051%29_%28cropped%29.jpg/330px-KJ_Apa_%2848478684051%29_%28cropped%29.jpg', 'K.J. Apa, de son vrai nom Keneti James Fitzgerald Apa, est un acteur et chanteur néo-zélandais né le 17 juin 1997 à Auckland en Nouvelle-Zélande.'),
	(48, 'Page', 'Ellen', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Ellen_Page_by_Gage_Skidmore.jpg/330px-Ellen_Page_by_Gage_Skidmore.jpg', 'Ellen Page [ˈɛlən peɪd͡ʒ]1, née le 21 février 1987 à Halifax en Nouvelle-Écosse, est une actrice canadienne.'),
	(49, 'Butterfield', 'Asa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Asa_Butterfield_in_2019_%28cropped%29.jpg/330px-Asa_Butterfield_in_2019_%28cropped%29.jpg', 'Asa Butterfield [ˈeɪsə ˈbʌtəfiːld]1, né le 1er avril 1997 dans le quartier d’Islington à Londres, est un acteur britannique.'),
	(50, 'Murphy', 'Cillian', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Cillian_Murphy_Press_Conference_The_Party_Berlinale_2017_02cr.jpg/390px-Cillian_Murphy_Press_Conference_The_Party_Berlinale_2017_02cr.jpg', 'Cillian Murphy /ˈkɪliən ˈmɜːfi/1 est un acteur, né le 25 mai 1976 à Douglas (Comté de Cork) (Irlande).'),
	(51, 'Anderson', 'Paul', 'http://fr.web.img5.acsta.net/pictures/16/01/19/11/09/349169.jpg', 'Paul Anderson est un acteur britannique de films et de théâtre1 né le 12 février 1978. Il est principalement connu pour avoir interprété Arthur Shelby dans Peaky Blinders2 et Sebastian Moran dans Sherlock Holmes : Jeu d\'ombres. Après avoir été diplômé par la Webber Douglas Academy of Dramatic Art, Anderson a commencé sa carrière d\'acteur en interprétant des personnages écrits par son ami Gregory Burke.'),
	(52, 'Cranston', 'Bryan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Bryan_Cranston_at_the_2018_Berlin_Film_Festival_%282%29.jpg/390px-Bryan_Cranston_at_the_2018_Berlin_Film_Festival_%282%29.jpg', 'Bryan Cranston /ˈbɹaɪən ˈkɹænstən/1 est un acteur américain, né le 7 mars 1956 à San Fernando (Californie).'),
	(53, 'Paul', 'Aaron', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Aaron_Paul_%2829734396088%29_%28cropped%29.jpg/390px-Aaron_Paul_%2829734396088%29_%28cropped%29.jpg', 'Aaron Paul /ˈɛɹən pɔl/1 est un acteur américain, né le 27 août 1979 à Emmett (Idaho).'),
	(54, 'Atalay', 'Erdogan', 'https://pbs.twimg.com/media/DltnQCbWsAAFngH.jpg', 'Erdoğan Atalay, né le 22 septembre 1966 à Hanovre, est un acteur et scénariste allemand. Il est notamment connu pour son rôle de Sami Gerçan ou Semir Gerkhan en VO dans Alerte Cobra.'),
	(55, 'Beck', 'Tom', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/MJK_11945_Tom_Beck.jpg/330px-MJK_11945_Tom_Beck.jpg', 'Thomas Helmut Beck, plus connu sous le nom de Tom Beck, né le 26 février 1978 à Nuremberg en Allemagne, est un acteur et chanteur allemand.'),
	(56, 'Hasson', 'Madie', 'https://m.media-amazon.com/images/M/MV5BMjIzNTY1NjkwNV5BMl5BanBnXkFtZTgwNDg5MzA1MDI@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 'Maddie Hasson, née le 4 janvier 1995 à Wilmington en Caroline du Nord, est une actrice américaine.'),
	(57, 'T', 'Mr.', 'https://external-preview.redd.it/NuG6diAnGS0KUBop9cktkdDWHEE0cqqBKQnGs6e4GOQ.jpg?auto=webp&s=6cb4c5aa9af964d7f4f498a3ede196d63be0e247', 'Laurence Tureaud, dit Mister T. (ou Mr. T. ; en anglais Mr. T, sans point après le T), est un acteur et catcheur nord-américain, né le 21 mai 1952 à Chicago dans l\'Illinois. Il est célèbre pour ses rôles dans des séries télévisées des années 1980 telles que L\'Agence tous risques et pour son rôle de Clubber Lang dans le film Rocky 3 : L\'Œil du tigre.'),
	(58, 'Kinnaman', 'Joel', 'http://img4.bdbphotos.com/images/400x400/4/g/4g292u7o1svk9v2k.jpg?skj2io4l', 'Joel Kinnaman est un acteur suédo-américain, né le 25 novembre 1979, à Stockholm.'),
	(59, 'Higareda', 'Martha', 'http://fr.web.img6.acsta.net/pictures/17/08/28/02/53/372404.jpg', 'Fille de l\'actrice Martha Cervantes et de l\'artiste José Luis Higareda, Martha a commencé son expérience sur la scène très tôt, remportant des concours de danses folkloriques mexicaines et de déclamation. Comme pour son frère, ses parents ont insisté sur son éducation artistique. Elle a assisté à des cours de claquettes, de jazz, de flamenco et de comédie. C\'est dans cette dernière activité qu\'elle a trouvé sa vocation.');
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. categorie
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.categorie : ~5 rows (environ)
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` (`id`, `nom`) VALUES
	(1, 'action'),
	(2, 'fiction'),
	(3, 'romance'),
	(4, 'policier'),
	(5, 'comedie'),
	(6, 'film d\'animation');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. film
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin,
  `id_categorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CATEGORIE_FILM` (`id_categorie`),
  CONSTRAINT `FK_CATEGORIE_FILM` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.film : ~16 rows (environ)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` (`id`, `nom`, `description`, `url`, `id_categorie`) VALUES
	(1, 'La Grande Vadrouille', 'En 1942, un avion anglais est abattu par les Allemands au-dessus de Paris. Les trois pilotes sautent en parachute et atterrissent dans différents endroits de la capitale. Ils sont aidés par deux civils français, un chef d\'orchestre et un peintre en bâtiment qui acceptent de les mener en zone libre; ils deviennent ainsi, malgré eux, acteurs de la Résistance.', 'https://media.senscritique.com/media/000012584893/160/La_Grande_Vadrouille.jpg', 5),
	(2, 'GoldenEye', 'Bond doit arrêter un terroriste, qui a mis la main sur un satellite d\'armement soviétique top secret, le Goldeneye, avant qu\'il ne puisse s\'en servir.', 'https://media.senscritique.com/media/000008044443/160/Golden_Eye.jpg', 1),
	(3, 'Casino Royale', 'Après avoir commis un incident diplomatique, James Bond est envoyé en vacances. Il se trouve alors sur la piste du Chiffre, le banquier du terrorisme international.', 'https://media.senscritique.com/media/000012408254/160/Casino_Royale.jpg', 1),
	(4, 'La Soupe aux choux', 'Le Glaude et le Bombé, deux vieux paysans portés sur la bouteille, vivent très retirés de la vie moderne. Une nuit, un extra-terrestre atterrit en soucoupe volante dans le jardin du Glaude. En gage de bienvenue, ce dernier lui offre un peu de sa fameuse soupe aux choux...', 'https://media.senscritique.com/media/000010795955/160/La_Soupe_aux_choux.jpg', 5),
	(5, 'Joker', 'Dans les années 1980, à Gotham City, Arthur Fleck, un comédien de stand-up raté est agressé alors qu\'il ère dans les rues de la ville déguisé en clown. Méprisé de tous et bafoué, il bascule peu à peu dans la folie pour devenir le Joker, un dangereux tueur psychotique.', 'https://media.senscritique.com/media/000018727645/160/Joker.jpg', 4),
	(6, 'Once Upon a Time... in Hollywood', 'En 1969, la star de télévision Rick Dalton et le cascadeur Cliff Booth, sa doublure de longue date, poursuivent leurs carrières au sein d’une industrie qu’ils ne reconnaissent plus.', 'https://media.senscritique.com/media/000018630904/160/Once_Upon_a_Time_in_Hollywood.jpg', 5),
	(7, 'Toy Story 4', 'Woody a toujours privilégié la joie et le bien-être de ses jeunes propriétaires – Andy puis Bonnie – et de ses compagnons, n’hésitant pas à prendre tous les risques pour eux, aussi inconsidérés soient-ils. L’arrivée de Forky un nouveau jouet qui ne veut pas en être un dans la chambre de Bonnie met toute la petite bande en émoi. C’est le début d’une grande aventure et d’un extraordinaire voyage pour Woody et ses amis. Le cowboy va découvrir à quel point le monde peut être vaste pour un jouet…', 'https://media.senscritique.com/media/000018476713/160/Toy_Story_4.jpg', 6),
	(8, 'Avengers: Endgame', 'Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.', 'https://media.senscritique.com/media/000018476719/160/Avengers_Endgame.jpg', 2),
	(9, 'Dragons 3: Le Monde caché', 'Harold est maintenant le chef de Berk au côté d’Astrid et Krokmou, en tant que dragon, est devenu le leader de son espèce. Ils réalisent enfin leurs rêves de vivre en paix entre vikings et dragons. Mais lorsque l’apparition soudaine d’une Furie Eclair coïncide avec la plus grande menace que le village n’ait jamais connue, Harold et Krokmou sont forcés de quitter leur village pour un voyage dans un monde caché dont ils n’auraient jamais soupçonnés l’existence. Alors que leurs véritables destins se révèlent, dragons et vikings vont se battre ensemble jusqu’au bout du monde pour protéger tout ce qu’ils chérissent', 'https://media.senscritique.com/media/000018296169/160/Dragons_3_Le_Monde_cache.jpg', 6),
	(10, 'John Wick: Parabellum', 'John Wick a transgressé une règle fondamentale : il a tué à l’intérieur même de l’Hôtel Continental. "Excommunié", tous les services liés au Continental lui sont fermés et sa tête mise à prix. John se retrouve sans soutien, traqué par tous les plus dangereux tueurs du monde.', 'https://media.senscritique.com/media/000018476737/160/John_Wick_Parabellum.jpg', 1),
    (11, 'Rocketman', 'Rocketman nous raconte la vie hors du commun d’Elton John, depuis ses premiers succès jusqu’à sa consécration internationale. Le film retrace la métamorphose de Reginald Dwight, un jeune pianiste prodige timide, en une superstar mondiale. Il est aujourd’hui connu sous le nom d’Elton John. Son histoire inspirante – sur fond des plus belles chansons de la star – nous fait vivre l’incroyable succès d’un enfant d’une petite ville de province devenu icône de la pop culture mondiale.', 'https://media.senscritique.com/media/000018381201/160/Rocketman.jpg', 5),
	(12, 'Spider-Man: Far From Home', 'L’araignée sympa du quartier décide de rejoindre ses meilleurs amis Ned, MJ, et le reste de la bande pour des vacances en Europe. Cependant, le projet de Peter de laisser son costume de super-héros derrière lui pendant quelques semaines est rapidement compromis quand il accepte à contrecoeur d’aider Nick Fury à découvrir le mystère de plusieurs attaques de créatures, qui ravagent le continent !', 'https://media.senscritique.com/media/000018606707/160/Spider_Man_Far_From_Home.jpg', 2),
	(13, 'Dragon Ball Super: Broly', 'Goku et Vegeta font face à un nouvel ennemi, le Super Saïyen Légendaire Broly, dans un combat explosif pour sauver notre planète.', 'https://media.senscritique.com/media/000018389716/160/Dragon_Ball_Super_Broly.jpg', 6),
	(14, 'Captain Marvel', 'Captain Marvel raconte l’histoire de Carol Danvers qui va devenir l’une des super-héroïnes les plus puissantes de l’univers lorsque la Terre se révèle l’enjeu d’une guerre galactique entre deux races extraterrestres.', 'https://media.senscritique.com/media/000018355538/160/Captain_Marvel.jpg', 2),
	(15, 'Pokémon Détective Pikachu', 'Après la disparition mystérieuse de Harry Goodman, un détective privé, son fils Tim va tenter de découvrir ce qui s’est passé. Le détective Pikachu, ancien partenaire de Harry, participe alors à l’enquête : un super-détective adorable à la sagacité hilarante, qui en laisse plus d’un perplexe, dont lui-même. Constatant qu’ils sont particulièrement bien assortis, Tim et Pikachu unissent leurs forces dans une aventure palpitante pour résoudre cet insondable mystère. À la recherche d’indices dans les rues peuplées de néons de la ville de Ryme – métropole moderne et tentaculaire où humains et Pokémon vivent côte à côte dans un monde en live-action très réaliste –, ils rencontrent plusieurs personnages Pokémon et découvrent alors un complot choquant qui pourrait bien détruire cette coexistence pacifique et menacer l’ensemble de leur univers.', 'https://media.senscritique.com/media/000018461758/160/Pokemon_Detective_Pikachu.jpg', 6),
	(16, 'Dumbo', 'Les enfants de Holt Farrier, ex-artiste de cirque chargé de s’occuper d’un éléphanteau dont les oreilles démesurées sont la risée du public, découvrent que ce dernier sait voler…', 'https://media.senscritique.com/media/000018360675/160/Dumbo.jpg', 6);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. film_acteur
CREATE TABLE IF NOT EXISTS `film_acteur` (
  `id_film` int(11) DEFAULT NULL,
  `id_acteur` int(11) DEFAULT NULL,
  KEY `FK_FILM_ACTEUR` (`id_film`),
  KEY `FK_ACTEUR_FILM` (`id_acteur`),
  CONSTRAINT `FK_ACTEUR_FILM` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FK_FILM_ACTEUR` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.film_acteur : ~26 rows (environ)
/*!40000 ALTER TABLE `film_acteur` DISABLE KEYS */;
INSERT INTO `film_acteur` (`id_film`, `id_acteur`) VALUES
	(3, 20),
	(3, 21),
	(2, 21),
	(2, 22),
	(1, 24),
	(1, 23),
	(4, 24),
	(5, 26),
	(5, 25),
	(6, 28),
	(6, 27),
	(7, 30),
	(7, 29),
	(8, 31),
	(8, 32),
	(8, 33),
	(9, 35),
	(9, 34),
	(10, 30),
	(10, 36),
	(11, 37),
	(8, 39),
	(12, 39),
	(12, 38),
	(14, 39),
	(15, 40),
	(3, 41),
	(16, 41);
/*!40000 ALTER TABLE `film_acteur` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. serie
CREATE TABLE IF NOT EXISTS `serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin,
  `url` text COLLATE utf8_bin,
  `id_categorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CATEGORIE_SERIE` (`id_categorie`),
  CONSTRAINT `FK_CATEGORIE_SERIE` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.serie : ~15 rows (environ)
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` (`id`, `nom`, `description`, `url`, `id_categorie`) VALUES
	(1, 'DayBreak', 'Dans une ville post-apocalyptique, Glendale, Josh, un lycéen de 17 ans part à la recherche de sa petite amie disparue, Sam. Il est rejoint par un groupe de marginaux délinquants. Josh et ses acolytes tentent de rester en vie en se confrontant à des gangs de Ghoulies, des zombies.', 'https://media.senscritique.com/media/000018904119/150/Daybreak.jpg', 1),
	(2, 'The End of the F***ing World', 'James, 17 ans, est persuadé d\'être un psychopathe. Alyssa, 17 ans également, vient d\'arriver en ville et noue très rapidement une amitié forte avec James. Très sociable et communicative, elle va embarquer James à la recherche de son père qui a quitté le domicile conjugal lorsqu\'elle était jeune.', 'https://media.senscritique.com/media/000017518066/150/The_End_of_the_F_ing_World.jpg', 1),
	(3, 'The Walking Dead', 'Rick Grimes cherche sa femme et son fils après s\'être réveillé d\'un long coma. Il découvre alors un monde désolé, ravagé par une terrible épidémie.', 'https://media.senscritique.com/media/000006470599/160/The_Walking_Dead.jpg', 1),
	(5, 'Mr. Robot', 'Elliot est un jeune programmeur antisocial qui souffre d\'un trouble du comportement. Il est recruté par un anarchiste mystérieux, qui se fait appeler Mr. Robot.', 'https://media.senscritique.com/media/000010519445/160/Mr_Robot.jpg', 1),
	(6, 'Riverdale', 'Naviguant dans les eaux troubles du sexe, de l\'amour, de l\'éducation et de la famille, Archie et ses amis se retrouvent plongés au cœur d\'une mystérieuse affaire.', 'https://media.senscritique.com/media/000016645955/160/Riverdale.jpg', 1),
	(7, 'Love, Death & Robots', 'La particularité de chaque épisode sera d\'utiliser un style d\'animation singulier, porté par une équipe créative spécifique. L\'objectif du show est d\'explorer le travail d\'animation d\'artistes du monde entier.', 'https://media.senscritique.com/media/000018430334/160/Love_Death_Robots.jpg', 1),
	(8, 'The Umbrella Academy', 'Une famille de super-héros déjantés se réunit pour tenter de résoudre le mystère entourant la mort de leur père, la menace d\'une apocalypse et bien plus encore. Adaptée de la bande dessinée de Gerard Way et Gabriel Bá.', 'https://media.senscritique.com/media/000018246437/160/The_Umbrella_Academy.jpg', 1),
	(9, 'Sex Education', 'La rebelle Maeve entraîne Otis, un ado vierge mais doté d\'une mère sexologue, dans la création d\'une cellule de thérapie sexuelle clandestine au sein de leur lycée.', 'https://media.senscritique.com/media/000018616780/160/Sex_Education.jpg', 1),
	(10, 'Peaky Blinders', 'En 1919, à Birmingham, soldats, révolutionnaires politiques et criminels combattent pour se faire une place dans le paysage industriel de l\'après-Guerre. Le Parlement s\'attend à une violente révolte, et Winston Churchill mobilise des forces spéciales pour contenir les menaces. La famille Shelby compte parmi les membres les plus redoutables. Surnommés les "Peaky Blinders" par rapport à leur utilisation de lames de rasoir cachées dans leurs casquettes, ils tirent principalement leur argent de paris et de vol. Tommy Shelby, le plus dangereux de tous, va devoir faire face à l\'arrivée de Campbell, un impitoyable chef de la police qui a pour mission de nettoyer la ville.', 'https://media.senscritique.com/media/000005979274/160/Peaky_Blinders.jpg', 1),
	(11, 'Breaking Bad', 'Walter White, 50 ans, est professeur de chimie dans un lycée du Nouveau-Mexique. Pour subvenir aux besoins de Skyler, sa femme enceinte, et de Walt Junior, son fils handicapé, il est obligé de travailler doublement. Son quotidien déjà morose devient carrément noir lorsqu\'il apprend qu\'il est atteint d\'un incurable cancer des poumons. Les médecins ne lui donnent pas plus de deux ans à vivre. Pour réunir rapidement beaucoup d\'argent afin de mettre sa famille à l\'abri, Walter ne voit plus qu\'une solution : mettre ses connaissances en chimie à profit pour fabriquer et vendre de la méthamphétamine. Il propose à Jesse, un de ses anciens élèves devenu un petit dealer de seconde zone, de faire équipe avec lui.', 'https://media.senscritique.com/media/000006469472/160/Breaking_Bad.jpg', 1),
	(12, 'Alerte Cobra', 'Alerte Cobra relate l\'action d\'une unité de police autoroutière allemande : l\'équipe Cobra 11, qui a vu défiler de nombreux duos de policiers qui se recomposent au gré des péripéties.', 'https://media.senscritique.com/media/000006494375/160/Alerte_Cobra.jpg', 1),
	(13, 'Impulse', 'Une adolescente, lassée par sa petite ville natale, découvre au cours d\'une agression qu\'elle a le pouvoir de se téléporter.', 'https://media.senscritique.com/media/000017812925/160/Impulse.jpg', 1),
	(14, 'L\'agence tout risques', 'Accusés à tort du braquage d\'une banque, quatre vétérans du Vietnam sont mis en prison. Après s\'être évadés, les quatre compères décident de créer l\'Agence tous risques dont la vocation première est d\'aider la veuve et l\'orphelin...', 'https://media.senscritique.com/media/000006479615/160/L_agence_tous_risques.jpg', 1),
	(15, 'Altered Carbon', 'Dans le futur, la conscience humaine est numérisée et peut se télécharger dans n\'importe quel corps. Une nuit, l\'homme le plus riche de la planète se fait assassiner. Pour élucider sa propre mort, il fait revenir un ancien soldat, à qui il propose en échange de vivre à nouveau...', 'https://media.senscritique.com/media/000017561380/160/Altered_Carbon.jpg', 1);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. serie_acteur
CREATE TABLE IF NOT EXISTS `serie_acteur` (
  `id_serie` int(11) DEFAULT NULL,
  `id_acteur` int(11) DEFAULT NULL,
  KEY `FK_SERIE_ACTEUR` (`id_serie`),
  KEY `FK_ACTEUR_SERIE` (`id_acteur`),
  CONSTRAINT `FK_ACTEUR_SERIE` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FK_SERIE_ACTEUR` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.serie_acteur : ~17 rows (environ)
/*!40000 ALTER TABLE `serie_acteur` DISABLE KEYS */;
INSERT INTO `serie_acteur` (`id_serie`, `id_acteur`) VALUES
	(1, 42),
	(2, 43),
	(2, 44),
	(3, 45),
	(5, 46),
	(6, 47),
	(8, 48),
	(9, 49),
	(10, 50),
	(10, 51),
	(11, 53),
	(11, 52),
	(12, 54),
	(12, 55),
	(13, 56),
	(14, 57),
	(15, 59),
	(15, 58);
/*!40000 ALTER TABLE `serie_acteur` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
