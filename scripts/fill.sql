USE project;

INSERT INTO Team (division, plays, points) VALUES
(1, 5, 15),
(2, 8, 7),
(3, 4, 6);

INSERT INTO Coach (name, age, xp, type, idTeam) VALUES
('Coach 1', 45, 7, 'manager', 1),
('Coach 2', 40, 3, 'regular', 1),
('Coach 3', 35, 5, 'goalkeeper', 1),
('Coach 4', 38, 2, 'fitness', 1),
('Coach 5', 41, 4, 'manager', 2),
('Coach 6', 45, 7, 'regular', 2),
('Coach 7', 35, 1, 'manager', 3),
('Coach 8', 46, 3, 'regular', 3);

INSERT INTO Player (name, age, transfer_cost, position, idTeam) VALUES
('Player 1', 21, 120, 'goalkeeper', 1),
('Player 2', 21, 120, 'back', 1),
('Player 3', 21, 120, 'back', 1),
('Player 4', 21, 120, 'midfielder', 1),
('Player 5', 21, 120, 'midfielder', 1),
('Player 6', 21, 120, 'forward', 1),
('Player 7', 21, 120, 'goalkeeper', 2),
('Player 8', 21, 120, 'back', 2),
('Player 9', 21, 120, 'back', 2),
('Player 10', 21, 120, 'midfielder', 2),
('Player 11', 21, 120, 'midfielder', 2),
('Player 12', 21, 120, 'forward', 2),
('Player 13', 21, 120, 'goalkeeper', 3),
('Player 14', 21, 120, 'back', 3),
('Player 15', 21, 120, 'back', 3),
('Player 16', 21, 120, 'midfielder', 3),
('Player 17', 21, 120, 'midfielder', 3),
('Player 18', 21, 120, 'forward', 3);

INSERT INTO Doctor (name, age, spec) VALUES
('Doctor 1', 50, 'spec 1'),
('Doctor 2', 51, 'spec 2'),
('Doctor 3', 54, 'spec 3'),
('Doctor 4', 55, 'spec 4');

INSERT INTO Disease (idPlayer, idDoctor, type, settlement, discharge) VALUES
(5, 1, 'd', '2020-03-12', NULL);
