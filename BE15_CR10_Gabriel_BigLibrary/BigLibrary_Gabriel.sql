-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 19. Mrz 2022 um 16:55
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `BigLibrary_Gabriel`
--
CREATE DATABASE IF NOT EXISTS `BigLibrary_Gabriel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BigLibrary_Gabriel`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Library`
--

CREATE TABLE `Library` (
  `library_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `isbnean` int(15) NOT NULL,
  `type` varchar(30) NOT NULL,
  `autor_first_name` varchar(30) NOT NULL,
  `autor_last_name` varchar(30) NOT NULL,
  `publisher_name` varchar(30) NOT NULL,
  `publisher_addres` varchar(30) NOT NULL,
  `publisher_date` int(11) NOT NULL,
  `availability` varchar(30) NOT NULL,
  `short_description` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `Library`
--

INSERT INTO `Library` (`library_id`, `title`, `photo`, `isbnean`, `type`, `autor_first_name`, `autor_last_name`, `publisher_name`, `publisher_addres`, `publisher_date`, `availability`, `short_description`) VALUES
(45, 'The Great Gatsby', '6235d3d04dc82.jpg', 647466575, 'book', 'F. Scott', 'Fitzgerald', 'Modern Classics', 'UK', 2000, 'yes', 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. '),
(46, 'Moby Dick', '6235d4a277315.jpg', 547475477, 'book', 'Herman', 'Melville', 'Modern Classics', 'UK', 2003, 'yes', 'Moby-Dick is a masterful study of obsession by Tom Quirk.'),
(47, 'Frankenstein', '6235d5a7e9d95.jpg', 9786747, 'book', 'Mary', 'Shelley', 'Penguin', 'UK', 2012, 'no', 'Frankenstein is a novel by Mary Shelley 1818. Summary. '),
(48, 'The Master and Margarita', '6235d64977d60.jpg', 5363464, 'book', 'Mikhail', 'Bulgakov', 'Vintage Classics', 'Germany', 2010, 'yes', 'The devil makes a personal appearance in Moscow accompanied by various demons black cat'),
(49, 'Dracula', '6235d6b40178c.jpg', 42354235, 'book', 'Bram', 'Stoker', 'Penguin', 'UK', 2003, 'yes', 'A masterpiece of the horror genre, Dracula also probes identity'),
(50, 'Catch-22', '6235d71eb6c30.jpg', 5474546, 'book', 'Joseph', 'Heller', 'Vintage Classics', 'Germany', 2004, 'yes', '‘Catch-22’ that allows for no possibility of escape.'),
(51, 'Highway to Hell', '6235d7cdf24b5.jpg', 346654, 'cd', 'AC/DC', 'Robert John', 'Lange', 'Australia', 1979, 'yes', 'Highway to Hell was the last album the band would record in the ‘70s'),
(52, 'In Rock', '6235d874200e0.jpg', 56356346, 'cd', 'Deep Purple', '', 'Speed King', 'USA', 1970, 'no', 'Bashed down the door, rebuilding the framework from the record as “Speed King” sounded'),
(53, 'The Doors', '6235d912d27f5.jpg', 5243523, 'cd', 'The Doors', '', 'Paul A.', 'Rothchild', 1967, 'yes', 'The last time a rock band released a perfect debut album'),
(54, 'Le Mans 66', '6235d9f29a89f.jpg', 436536, 'dvd', 'James', 'Mangold', '20th Century Studios', 'USA', 2019, 'yes', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference '),
(55, 'Rocky', '6235da70c8f4e.jpg', 54235, 'dvd', 'John G.', 'Avildsen', '20th Century Studios', 'USA', 1976, 'no', 'A small-time Philadelphia boxer gets a supremely rare chance to fight the world camp'),
(56, 'The Godfather', '6235db033609b.jpg', 647457, 'dvd', 'Francis Ford', 'Coppola', 'Paramount Pictures', 'USA', 1972, 'yes', 'The Godfather is a 1972 American epic crime film'),
(57, 'Good Will Hunting', '6235dbfc4ec46.jpg', 6565363, 'dvd', 'Gus Van', 'Sant', 'Miramax', 'USA', 1997, 'yes', 'Janitor at MIT has needs help from a psychologist to find direction in his life'),
(58, 'The Godfather: Part II', '6235dc4f005ad.jpg', 53635, 'dvd', 'Francis Ford', 'Coppola', 'Paramount Pictures', 'USA', 1974, 'yes', 'The early life and career of Vito Corleone in 1920s New York City');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Library`
--
ALTER TABLE `Library`
  ADD PRIMARY KEY (`library_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Library`
--
ALTER TABLE `Library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
