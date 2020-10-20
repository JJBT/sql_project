USE project;

INSERT INTO Team (division, plays, points) VALUES
(1, 5, 15),
(2, 8, 7),
(3, 4, 6);

INSERT INTO Сontract (salary, duration) VALUES
()

INSERT INTO Coach (name, age, xp, type, idTeam) VALUES
('Wenger', 45, 7, 'manager', 1, 19),
('Arteta', 40, 3, 'regular', 1, 20),
('Emery', 35, 5, 'goalkeeper', 1, 21),
('Lampard', 38, 2, 'fitness', 1, 22),
('Fergusson', 41, 4, 'manager', 2, 23),
('Zidane', 45, 7, 'regular', 2, 24),
('Mourinho', 35, 1, 'manager', 3, 25),
('Johnson', 46, 3, 'regular', 3, 26);

INSERT INTO Player (name, age, transfer_cost, position, idTeam, idContract) VALUES
('Leno', 21, 20, 'goalkeeper', 1, 1),
('Mustafi', 31, 15, 'back', 1, 2),
('Luiz', 29, 16, 'back', 1, 3),
('Partey', 22, 50, 'midfielder', 1, 4),
('Willian', 29, 35, 'midfielder', 1, 5),
('Obaumeyang', 24, 90, 'forward', 1, 6),
('Sczesny', 32, 7, 'goalkeeper', 3, 7),
('Koscielny', 33, 5, 'back', 3, 8),
('Mertesacker', 34, 2, 'back', 3, 9),
('Wilshere', 28, 40, 'midfielder', 3, 10),
('Rosicky', 27, 18, 'midfielder', 3, 11),
('Pepe', 21, 80, 'forward', 3, 12);
('Martinez', 24, 20, 'goalkeeper', 2, 13),
('Gibbs', 23, 12, 'back', 2, 14),
('Kolasinac', 29, 14, 'back', 2, 15),
('Chamakh', 31, 28, 'midfielder', 2, 16),
('Cazorla', 29, 20, 'midfielder', 2, 17),
('Lacazett', 25, 45, 'forward', 2, 18),


INSERT INTO Doctor (name, age, spec) VALUES
('Brown', 50, 'traumatologist'),
('Muhammad', 51, 'recover'),
('Ivanov', 54, 'traumatologist'),
('Hayek', 55, 'diagnostician');

INSERT INTO Disease (idPlayer, idDoctor, type, settlement, discharge) VALUES
(5, 1, 'd', '2020-03-12', NULL);
