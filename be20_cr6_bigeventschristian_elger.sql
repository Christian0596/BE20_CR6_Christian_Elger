-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Dez 2023 um 12:26
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be20_cr6_bigeventschristian_elger`
--
CREATE DATABASE IF NOT EXISTS `be20_cr6_bigeventschristian_elger` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be20_cr6_bigeventschristian_elger`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231208171542', '2023-12-08 18:16:05', 39);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `date_start_time` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `image` longtext NOT NULL,
  `capacity` int(11) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `url` longtext NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `date_start_time`, `image`, `capacity`, `contact_email`, `contact_number`, `address`, `url`, `type`) VALUES
(5, 'Konzert im Musikverein', 'Ein musikalisches Erlebnis im renommierten Musikverein', '2023-12-15 19:00:00', 'https://viennaticketing.com/media/catalog/product/cache/e0153496ac04a62b64f11846d05aeb01/w/m/wmo_-1-3.jpeg', 500, 'info@example.com', 2147483647, 'Musikvereinsplatz 1, 1010 Wien', 'https://www.musikverein.at', 'Musik'),
(6, 'Kunstausstellung im Belvedere', 'Entdecke beeindruckende Kunstwerke im Belvedere-Palast', '2023-12-18 10:00:00', 'https://www.belvedere.at/sites/default/files/styles/image_teaser/public/2022-10/OB-HP-small_0.jpg?h=3fa9d8f0&itok=Ij1B9spS', 200, 'info@example.com', 2147483647, 'Prinz Eugen-Straße 27, 1030 Wien', 'https://www.belvedere.at', 'Kultur'),
(7, 'Theaterstück im Burgtheater', 'Ein fesselndes Theaterstück im berühmten Burgtheater', '2023-12-20 20:00:00', 'https://www.wien-ticket.at/tools/imager/imager.php?file=%2Fmedia%2Fimage%2Foriginal%2F16765.jpg&width=1500', 300, 'info@example.com', 2147483647, 'Universitätsring 2, 1010 Wien', 'https://www.burgtheater.at', 'Theater'),
(8, 'Rockkonzert in der Stadthalle', 'Erlebe eine energiegeladene Rockshow in der Wiener Stadthalle', '2023-12-22 21:00:00', 'https://www.vol.at/2022/06/ABD0065-20220626-1-4-3-227036412731-3641x2731.jpg', 1000, 'info@example.com', 2147483647, 'Roland-Rainer-Platz 1, 1150 Wien', 'https://www.stadthalle.at', 'Musik'),
(9, 'Kulinarisches Festival am Naschmarkt', 'Genieße köstliche Speisen und Getränke am Wiener Naschmarkt', '2023-12-25 12:00:00', 'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6c/68/51.jpg', 400, 'info@example.com', 2147483647, 'Naschmarkt, 1060 Wien', 'https://www.naschmarkt.at', 'Kultur'),
(11, 'Drama am Schauspielhaus Graz', 'Ein packendes Theaterdrama im Schauspielhaus', '2023-12-28 19:30:00', 'https://dieroeckl.at/wp-content/uploads/2016/07/SH_HAUS_42_c_lupi_spuma_web_quadrat.jpg', 250, 'info@example.com', 2147483647, 'Hofgasse 11, 8010 Graz', 'https://www.schauspielhaus-graz.at', 'Theater'),
(12, 'Klassisches Stück im Opernhaus Graz', 'Genieße ein klassisches Theaterstück in der Grazer Oper', '2023-12-30 18:00:00', 'https://www.graz101.at/images/oper.jpg', 300, 'info@example.com', 2147483647, 'Opernring 24, 8010 Graz', 'https://www.oper-graz.com', 'Theater'),
(13, 'Moderne Inszenierung im Orpheum Graz', 'Erlebe eine moderne Theaterinszenierung im Orpheum', '2024-01-02 20:15:00', 'https://hotelmariahilf.at/wp-content/uploads/oper-graz-2.jpg', 200, 'info@example.com', 2147483647, 'Orpheumgasse 8, 8020 Graz', 'https://www.orpheum.at', 'Theater'),
(14, 'Kindertheater im Schlossberg', 'Ein unterhaltsames Theaterstück für Kinder auf dem Schlossberg', '2024-01-05 14:00:00', 'https://media04.meinbezirk.at/article/2022/12/04/7/31994077_L.jpg?1670189618', 150, 'info@example.com', 2147483647, 'Schlossberg, 8010 Graz', 'https://www.schlossberg.at', 'Theater'),
(16, '88.6 Merry RoXXmas', '88.6 definiert \"Weihnachtsfeier\" neu: Merry RoXXmas am 9. Dezem­ber in der Marx Halle in Wien - da haut\'s dem Christkind den Heiligenschein vom Kopf!', '2023-12-09 20:00:00', 'https://image.events.at/images/cfs_landscape_1864w_1049h/8306744/merryroxxmas.jpg', 150, 'marxhalle@hey-u.com', 43158885, 'Marx Halle  Karl-Farkas-Gasse 19 1030 Wien', 'https://events.at/event/886-merry-roxxmas', 'Musik'),
(17, 'Live-Konzert in Wien', 'Ein unvergessliches Live-Konzert mit bekannten Künstlern.', '2023-12-15 20:00:00', 'https://cdn.pixabay.com/photo/2013/07/12/18/17/equalizer-153212_1280.png', 1000, 'info@example.com', 2147483647, 'Wiener Stadthalle, Roland-Rainer-Platz 1, 1150 Wien', 'https://www.example.com/live-konzert', 'Musik'),
(18, 'Festival in Salzburg', 'Ein Musikfestival mit verschiedenen Bands und Künstlern.', '2023-12-20 18:00:00', 'https://cdn.pixabay.com/photo/2014/04/03/10/05/speakers-309753_1280.png', 5000, 'info@example.com', 2147483647, 'Red Bull Arena, Stadionstraße 2, 5071 Wals-Siezenheim', 'https://www.example.com/musik-festival', 'Musik'),
(19, 'Jazz-Abend in Graz', 'Ein entspannter Jazz-Abend in einer gemütlichen Location.', '2023-12-25 19:30:00', 'https://cdn.pixabay.com/photo/2022/09/24/17/31/abstract-7476913_1280.png', 200, 'info@example.com', 2147483647, 'Orpheum, Orpheumgasse 8, 8020 Graz', 'https://www.example.com/jazz-abend', 'Musik'),
(20, 'Rockkonzert in Linz', 'Ein energiegeladenes Rockkonzert, das die Stadt Linz zum Beben bringt.', '2024-01-02 21:00:00', 'https://cdn.pixabay.com/photo/2013/07/13/12/11/guitar-159362_1280.png', 800, 'info@example.com', 2147483647, 'TipsArena, Zaunergasse 1, 4010 Linz', 'https://www.example.com/rockkonzert', 'Musik'),
(21, 'Klassik-Event in Innsbruck', 'Ein klassisches Musikereignis mit renommierten Orchestern und Solisten.', '2024-01-10 19:00:00', 'https://www.gastein.com/fileadmin/userdaten/bilder/Events/Sommer/Klassik_Sommer/1920x600_Berg_Klassik_Sommer_Schlossalm_Konzert_GasteinertalTourismus_SalzburgerLand_Fotoatelier_Wolkersdorfer_113.JPG', 300, 'info@example.com', 2147483647, 'Congress Innsbruck, Rennweg 3, 6020 Innsbruck', 'https://www.example.com/klassik-event', 'Musik');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
