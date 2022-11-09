-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: mysql-db
-- Χρόνος δημιουργίας: 09 Νοε 2022 στις 13:20:20
-- Έκδοση διακομιστή: 8.0.31
-- Έκδοση PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `BookCatalogue`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `AuthorBook`
--

CREATE TABLE `AuthorBook` (
  `AuthorsId` int NOT NULL,
  `BooksId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Άδειασμα δεδομένων του πίνακα `AuthorBook`
--

INSERT INTO `AuthorBook` (`AuthorsId`, `BooksId`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24),
(24, 25);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Authors`
--

CREATE TABLE `Authors` (
  `Id` int NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Surname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dateOfBirth` date NOT NULL,
  `dateOfDeath` date NOT NULL,
  `countryOfBirth` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Authors`
--

INSERT INTO `Authors` (`Id`, `Name`, `Surname`, `dateOfBirth`, `dateOfDeath`, `countryOfBirth`) VALUES
(1, 'Harper', 'Lee', '0001-01-01', '0001-01-01', ''),
(2, 'J. D.', 'Salinger', '0001-01-01', '0001-01-01', ''),
(3, 'F. Scott', 'Fitzgerald', '0001-01-01', '0001-01-01', ''),
(4, 'Emily', 'Brontë', '0001-01-01', '0001-01-01', ''),
(5, 'Charlotte', 'Brontë', '0001-01-01', '0001-01-01', ''),
(6, 'Joseph', 'Heller', '0001-01-01', '0001-01-01', ''),
(7, 'Gabriel García', 'Márquez', '0001-01-01', '0001-01-01', ''),
(8, 'Jane', 'Austen', '0001-01-01', '0001-01-01', ''),
(9, 'Charles', 'Dickens', '0001-01-01', '0001-01-01', ''),
(10, 'J. R. R.', 'Tolkien', '0001-01-01', '0001-01-01', ''),
(11, 'Toni', 'Morrison', '0001-01-01', '0001-01-01', ''),
(12, 'John', 'Steinbeck', '0001-01-01', '0001-01-01', ''),
(13, 'Leo', 'Tolstoy', '0001-01-01', '0001-01-01', ''),
(14, 'Fyodor', 'Dostoevsky', '0001-01-01', '0001-01-01', ''),
(15, 'William', 'Golding', '0001-01-01', '0001-01-01', ''),
(16, 'George', 'Orwell', '0001-01-01', '0001-01-01', ''),
(17, 'Chinua', 'Achebe', '0001-01-01', '0001-01-01', ''),
(18, 'Miguel', 'de Cervantes', '0001-01-01', '0001-01-01', ''),
(19, 'Aldous', 'Huxley', '0001-01-01', '0001-01-01', ''),
(20, 'Ralph', 'Ellison', '0001-01-01', '0001-01-01', ''),
(21, 'Ray', 'Bradbury', '0001-01-01', '0001-01-01', ''),
(22, 'Margaret', 'Atwood', '0001-01-01', '0001-01-01', ''),
(23, 'Alice', 'Walker', '0001-01-01', '0001-01-01', ''),
(24, 'Margaret', 'Mitchell', '0001-01-01', '0001-01-01', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Books`
--

CREATE TABLE `Books` (
  `Id` int NOT NULL,
  `Title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dateOfFirstPublication` date NOT NULL,
  `Category` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `originalLanguage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CategoryId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Books`
--

INSERT INTO `Books` (`Id`, `Title`, `dateOfFirstPublication`, `Category`, `originalLanguage`, `CategoryId`) VALUES
(1, 'To Kill a Mockingbird', '0001-01-01', 'thriller', '', NULL),
(2, 'To Kill a Mockingbird 2', '0001-01-01', 'thriller', '', NULL),
(3, 'The Catcher in the Rye', '0001-01-01', 'fiction', '', NULL),
(4, 'The Great Gatsby', '0001-01-01', 'fiction', '', NULL),
(5, 'Wuthering Heights', '0001-01-01', 'romance', '', NULL),
(6, 'Jane Eyre', '0001-01-01', 'romance', '', NULL),
(7, 'Catch-22', '0001-01-01', 'satire', '', NULL),
(8, 'One Hundred Years of Solitude', '0001-01-01', 'high fantasy', '', NULL),
(9, 'Pride and Prejudice', '0001-01-01', 'romance', '', NULL),
(10, 'Great Expectations', '0001-01-01', 'fiction', '', NULL),
(11, 'The Lord of the Rings', '0001-01-01', 'high fantasy', '', NULL),
(12, 'Beloved', '0001-01-01', 'fiction', '', NULL),
(13, 'The Grapes of Wrath', '0001-01-01', 'fiction', '', NULL),
(14, 'Anna Karenina', '0001-01-01', 'fiction', '', NULL),
(15, 'Crime and Punishment', '0001-01-01', 'thriller', '', NULL),
(16, 'Lord of the Flies', '0001-01-01', 'fiction', '', NULL),
(17, 'Animal Farm', '0001-01-01', 'satire', '', NULL),
(18, 'Things Fall Apart', '0001-01-01', 'fiction', '', NULL),
(19, 'Don Quixote', '0001-01-01', 'satire', '', NULL),
(20, 'Brave New World', '0001-01-01', 'fiction', '', NULL),
(21, 'Invisible Man', '0001-01-01', 'fiction', '', NULL),
(22, 'Fahrenheit 451', '0001-01-01', 'fiction', '', NULL),
(23, 'The Handmaid\'s Tale', '0001-01-01', 'fiction', '', NULL),
(24, 'The Color Purple', '0001-01-01', 'fiction', '', NULL),
(25, 'Gone with the Wind', '0001-01-01', 'romance', '', NULL);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `Categories`
--

CREATE TABLE `Categories` (
  `Id` int NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Άδειασμα δεδομένων του πίνακα `Categories`
--

INSERT INTO `Categories` (`Id`, `Name`) VALUES
(1, 'thriller'),
(2, 'fiction'),
(3, 'romance'),
(4, 'satire'),
(5, 'high fantasy');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `AuthorBook`
--
ALTER TABLE `AuthorBook`
  ADD PRIMARY KEY (`AuthorsId`,`BooksId`),
  ADD KEY `IX_AuthorBook_BooksId` (`BooksId`);

--
-- Ευρετήρια για πίνακα `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`Id`);

--
-- Ευρετήρια για πίνακα `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Books_CategoryId` (`CategoryId`);

--
-- Ευρετήρια για πίνακα `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`Id`);

--
-- Ευρετήρια για πίνακα `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `Authors`
--
ALTER TABLE `Authors`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT για πίνακα `Books`
--
ALTER TABLE `Books`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT για πίνακα `Categories`
--
ALTER TABLE `Categories`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `AuthorBook`
--
ALTER TABLE `AuthorBook`
  ADD CONSTRAINT `FK_AuthorBook_Authors_AuthorsId` FOREIGN KEY (`AuthorsId`) REFERENCES `Authors` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AuthorBook_Books_BooksId` FOREIGN KEY (`BooksId`) REFERENCES `Books` (`Id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `Books`
--
ALTER TABLE `Books`
  ADD CONSTRAINT `FK_Books_Categories_CategoryId` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
