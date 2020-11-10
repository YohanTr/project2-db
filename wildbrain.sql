--db_name: wild_brain

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

INSERT INTO `card` (`question`, `answer`) VALUES
('coucou?', 'coucou!'),
('JS', 'bouuuuh'),
('twig', 'top'),
('POO', 'encapsulation, abstraction, polymorphisme, hérédité'),
('CSS', 'pour les JS'),
('HTML', 'toujours pour les JS');

CREATE TABLE `deck_card` (
  `deck_id` INT,
  `card_id` INT,
  PRIMARY KEY (deck_id, card_id)
);
  
ALTER TABLE deck_card
ADD CONSTRAINT fk_deck_card_to_card      
FOREIGN KEY (card_id)             
REFERENCES card(id);

ALTER TABLE deck_card
ADD CONSTRAINT fk_deck_card_to_deck      
FOREIGN KEY (deck_id)             
REFERENCES deck(id);

CREATE TABLE `label` ( 
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  label_name VARCHAR(100) NOT NULL 
);

INSERT INTO `label` (`label_name`) VALUES
('HTML'),
('CSS'),
('PHP'),
('JavaScript'),
('Symfony'),
('React'),
('NodeJS');
