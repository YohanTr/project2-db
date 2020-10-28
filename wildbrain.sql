
--db_name: wild_brain

-- --------------------------------------------------------

--
-- Structure de la table `fiche`
--

CREATE TABLE `card` (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `question` TEXT NOT NULL,
  `answer` TEXT NOT NULL
);

CREATE TABLE `deck` (
  `id` int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name` varchar(100) NOT NULL
);

INSERT INTO `deck` (`name`) VALUES
('PHP'),
('JS'),
('twig'),
('POO'),
('CSS'),
('HTML');
