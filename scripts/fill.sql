USE project;

INSERT INTO Team (division, plays, points) VALUES
(1, 5, 15),
(2, 8, 7),
(3, 4, 6);

INSERT INTO Сontract (salary, duration) VALUES
(15200, "2020-12-25"),
(19000, "2021-03-20"),
(14000, "2021-05-15"),
(15500, "2021-02-18"),
(17000, "2021-08-19"),
(18700, "2021-08-22"),
(20500, "2021-02-24"),
(30000, "2021-07-16"),
(12500, "2021-06-07"),
(15000, "2021-04-05"),
(15000, "2021-03-09"),
(15000, "2021-01-03"),
(15000, "2021-02-02"),
(15000, "2021-05-01"),
(15000, "2021-10-05"),
(15000, "2021-11-14"),
(15000, "2021-03-15"),
(15000, "2021-03-20"),
(15000, "2021-08-19"),
(15000, "2021-04-18"),
(15000, "2021-05-15"),
(15000, "2021-02-21"),
(15000, "2021-08-19"),
(15000, "2021-07-28"),
(15000, "2021-11-15"),
(15000, "2021-12-30");

INSERT INTO Coach (name, age, xp, type, idTeam) VALUES
('Wenger', 45, 7, 'manager', 1),
('Arteta', 40, 3, 'regular', 1),
('Emery', 35, 5, 'goalkeeper', 1),
('Lampard', 38, 2, 'fitness', 1),
('Fergusson', 41, 4, 'manager', 2),
('Zidane', 45, 7, 'regular', 2),
('Mourinho', 35, 1, 'manager', 3),
('Johnson', 46, 3, 'regular', 3);

INSERT INTO Player (name, age, transfer_cost, position, idTeam) VALUES
('Leno', 21, 20, 'goalkeeper', 1),
('Mustafi', 31, 15, 'back', 1),
('Luiz', 29, 16, 'back', 1),
('Partey', 22, 50, 'midfielder', 1),
('Willian', 29, 35, 'midfielder', 1),
('Obaumeyang', 24, 90, 'forward', 1),
('Sczesny', 32, 7, 'goalkeeper', 3),
('Koscielny', 33, 5, 'back', 3),
('Mertesacker', 34, 2, 'back', 3),
('Wilshere', 28, 40, 'midfielder', 3),
('Rosicky', 27, 18, 'midfielder', 3),
('Pepe', 21, 80, 'forward', 3);
('Martinez', 24, 20, 'goalkeeper', 2),
('Gibbs', 23, 12, 'back', 2),
('Kolasinac', 29, 14, 'back', 2),
('Chamakh', 31, 28, 'midfielder', 2),
('Cazorla', 29, 20, 'midfielder', 2),
('Lacazett', 25, 45, 'forward', 2),


INSERT INTO Doctor (name, age, spec) VALUES
('Brown', 50, 'traumatologist'),
('Muhammad', 51, 'recover'),
('Ivanov', 54, 'traumatologist'),
('Hayek', 55, 'diagnostician');

INSERT INTO Disease (idPlayer, idDoctor, type, settlement, discharge) VALUES
(5, 1, 'd', '2020-03-12', NULL);
