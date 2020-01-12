-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.23 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.3.0.5771
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
DROP TABLE IF EXISTS `acteur`;
CREATE TABLE IF NOT EXISTS `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prenom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.acteur : ~40 rows (environ)
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` (`id`, `nom`, `prenom`) VALUES
	(20, 'Craig', 'Daniel'),
	(21, 'Dench', 'Judi'),
	(22, 'Brosnan', 'Pierce'),
	(23, 'Bourvil', ''),
	(24, 'De Funès', 'Louis'),
	(25, 'De Niro', 'Robert'),
	(26, 'Phoenix', 'Joaquin'),
	(27, 'DiCaprio', 'Leonardo'),
	(28, 'Robbie', 'Margot'),
	(29, 'Hanks', 'Tom'),
	(30, 'Reeves', 'Keanu'),
	(31, 'Downey JR', 'Robert'),
	(32, 'Johansson', 'Scarlett'),
	(33, 'Diesel', 'Vin'),
	(34, 'Harington', 'Kit'),
	(35, 'Abraham', 'F.Murray'),
	(36, 'Reddick', 'Lance'),
	(37, 'Egerton', 'Taron'),
	(38, 'Holland', 'Tom'),
	(39, 'L. Jackson', 'Samuel'),
	(40, 'Reynolds', 'Ryan'),
	(41, 'Green', 'Eva'),
	(42, 'Ford', 'Colin'),
	(43, 'Lawther', 'Alex'),
	(44, 'Barden', 'Jessica'),
	(45, 'Lincoln', 'Andrew'),
	(46, 'Malek', 'Rami'),
	(47, 'Apa', 'K.J.'),
	(48, 'Page', 'Ellen'),
	(49, 'Butterfield', 'Asa'),
	(50, 'Murphy', 'Cillian'),
	(51, 'Anderson', 'Paul'),
	(52, 'Cranston', 'Bryan'),
	(53, 'Paul', 'Aaron'),
	(54, 'Atalay', 'Erdogan'),
	(55, 'Beck', 'Tom'),
	(56, 'Hasson', 'Madie'),
	(57, 'T', 'Mr.'),
	(58, 'Kinnaman', 'Joel'),
	(59, 'Higareda', 'Martha');
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. categorie
DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.categorie : ~6 rows (environ)
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
DROP TABLE IF EXISTS `film`;
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
	(5, 'Joker', 'Dans les années 1980, à Gotham City, Arthur Fleck, un comédien de stand-up raté est agressé alors qu\'il ère dans les rues de la ville déguisé en clown. Méprisé de tous et bafoué, il bascule peu à peu dans la folie pour devenir le Joker, un dangereux tueur psychotique.', 'https://media.senscritique.com/media/000018727645/160/Joker.jpg', 1),
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
DROP TABLE IF EXISTS `film_acteur`;
CREATE TABLE IF NOT EXISTS `film_acteur` (
  `id_film` int(11) DEFAULT NULL,
  `id_acteur` int(11) DEFAULT NULL,
  KEY `FK_FILM_ACTEUR` (`id_film`),
  KEY `FK_ACTEUR_FILM` (`id_acteur`),
  CONSTRAINT `FK_ACTEUR_FILM` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FK_FILM_ACTEUR` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.film_acteur : ~28 rows (environ)
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
DROP TABLE IF EXISTS `serie`;
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

-- Listage des données de la table projet-cine.serie : ~14 rows (environ)
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` (`id`, `nom`, `description`, `url`, `id_categorie`) VALUES
	(1, 'DayBreak', 'Dans une ville post-apocalyptique, Glendale, Josh, un lycéen de 17 ans part à la recherche de sa petite amie disparue, Sam. Il est rejoint par un groupe de marginaux délinquants. Josh et ses acolytes tentent de rester en vie en se confrontant à des gangs de Ghoulies, des zombies.', 'https://media.senscritique.com/media/000018904119/150/Daybreak.jpg', 2),
	(2, 'The End of the F***ing World', 'James, 17 ans, est persuadé d\'être un psychopathe. Alyssa, 17 ans également, vient d\'arriver en ville et noue très rapidement une amitié forte avec James. Très sociable et communicative, elle va embarquer James à la recherche de son père qui a quitté le domicile conjugal lorsqu\'elle était jeune.', 'https://media.senscritique.com/media/000017518066/150/The_End_of_the_F_ing_World.jpg', 5),
	(3, 'The Walking Dead', 'Rick Grimes cherche sa femme et son fils après s\'être réveillé d\'un long coma. Il découvre alors un monde désolé, ravagé par une terrible épidémie.', 'https://media.senscritique.com/media/000006470599/160/The_Walking_Dead.jpg', 2),
	(5, 'Mr. Robot', 'Elliot est un jeune programmeur antisocial qui souffre d\'un trouble du comportement. Il est recruté par un anarchiste mystérieux, qui se fait appeler Mr. Robot.', 'https://media.senscritique.com/media/000010519445/160/Mr_Robot.jpg', 4),
	(6, 'Riverdale', 'Naviguant dans les eaux troubles du sexe, de l\'amour, de l\'éducation et de la famille, Archie et ses amis se retrouvent plongés au cœur d\'une mystérieuse affaire.', 'https://media.senscritique.com/media/000016645955/160/Riverdale.jpg', 4),
	(7, 'Love, Death & Robots', 'La particularité de chaque épisode sera d\'utiliser un style d\'animation singulier, porté par une équipe créative spécifique. L\'objectif du show est d\'explorer le travail d\'animation d\'artistes du monde entier.', 'https://media.senscritique.com/media/000018430334/160/Love_Death_Robots.jpg', 2),
	(8, 'The Umbrella Academy', 'Une famille de super-héros déjantés se réunit pour tenter de résoudre le mystère entourant la mort de leur père, la menace d\'une apocalypse et bien plus encore. Adaptée de la bande dessinée de Gerard Way et Gabriel Bá.', 'https://media.senscritique.com/media/000018246437/160/The_Umbrella_Academy.jpg', 1),
	(9, 'Sex Education', 'La rebelle Maeve entraîne Otis, un ado vierge mais doté d\'une mère sexologue, dans la création d\'une cellule de thérapie sexuelle clandestine au sein de leur lycée.', 'https://media.senscritique.com/media/000018616780/160/Sex_Education.jpg', 5),
	(10, 'Peaky Blinders', 'En 1919, à Birmingham, soldats, révolutionnaires politiques et criminels combattent pour se faire une place dans le paysage industriel de l\'après-Guerre. Le Parlement s\'attend à une violente révolte, et Winston Churchill mobilise des forces spéciales pour contenir les menaces. La famille Shelby compte parmi les membres les plus redoutables. Surnommés les "Peaky Blinders" par rapport à leur utilisation de lames de rasoir cachées dans leurs casquettes, ils tirent principalement leur argent de paris et de vol. Tommy Shelby, le plus dangereux de tous, va devoir faire face à l\'arrivée de Campbell, un impitoyable chef de la police qui a pour mission de nettoyer la ville.', 'https://media.senscritique.com/media/000005979274/160/Peaky_Blinders.jpg', 4),
	(11, 'Breaking Bad', 'Walter White, 50 ans, est professeur de chimie dans un lycée du Nouveau-Mexique. Pour subvenir aux besoins de Skyler, sa femme enceinte, et de Walt Junior, son fils handicapé, il est obligé de travailler doublement. Son quotidien déjà morose devient carrément noir lorsqu\'il apprend qu\'il est atteint d\'un incurable cancer des poumons. Les médecins ne lui donnent pas plus de deux ans à vivre. Pour réunir rapidement beaucoup d\'argent afin de mettre sa famille à l\'abri, Walter ne voit plus qu\'une solution : mettre ses connaissances en chimie à profit pour fabriquer et vendre de la méthamphétamine. Il propose à Jesse, un de ses anciens élèves devenu un petit dealer de seconde zone, de faire équipe avec lui.', 'https://media.senscritique.com/media/000006469472/160/Breaking_Bad.jpg', 4),
	(12, 'Alerte Cobra', 'Alerte Cobra relate l\'action d\'une unité de police autoroutière allemande : l\'équipe Cobra 11, qui a vu défiler de nombreux duos de policiers qui se recomposent au gré des péripéties.', 'https://media.senscritique.com/media/000006494375/160/Alerte_Cobra.jpg', 1),
	(13, 'Impulse', 'Une adolescente, lassée par sa petite ville natale, découvre au cours d\'une agression qu\'elle a le pouvoir de se téléporter.', 'https://media.senscritique.com/media/000017812925/160/Impulse.jpg', 2),
	(14, 'L\'agence tout risques', 'Accusés à tort du braquage d\'une banque, quatre vétérans du Vietnam sont mis en prison. Après s\'être évadés, les quatre compères décident de créer l\'Agence tous risques dont la vocation première est d\'aider la veuve et l\'orphelin...', 'https://media.senscritique.com/media/000006479615/160/L_agence_tous_risques.jpg', 1),
	(15, 'Altered Carbon', 'Dans le futur, la conscience humaine est numérisée et peut se télécharger dans n\'importe quel corps. Une nuit, l\'homme le plus riche de la planète se fait assassiner. Pour élucider sa propre mort, il fait revenir un ancien soldat, à qui il propose en échange de vivre à nouveau...', 'https://media.senscritique.com/media/000017561380/160/Altered_Carbon.jpg', 2);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;

-- Listage de la structure de la table projet-cine. serie_acteur
DROP TABLE IF EXISTS `serie_acteur`;
CREATE TABLE IF NOT EXISTS `serie_acteur` (
  `id_serie` int(11) DEFAULT NULL,
  `id_acteur` int(11) DEFAULT NULL,
  KEY `FK_SERIE_ACTEUR` (`id_serie`),
  KEY `FK_ACTEUR_SERIE` (`id_acteur`),
  CONSTRAINT `FK_ACTEUR_SERIE` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FK_SERIE_ACTEUR` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Listage des données de la table projet-cine.serie_acteur : ~18 rows (environ)
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
