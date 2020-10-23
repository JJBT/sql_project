USE project;

INSERT INTO Team (division, plays, points) VALUES
(1, 5, 15),
(2, 8, 7),
(3, 4, 6);

INSERT INTO Inventory (name) VALUES
('Ball 1'),
('Ball 2'),
('Ball 3'),
('Ball 4'),
('Ball 5'),
('Ball 6'),
('Ball 7'),
('Ball 8'),
('Ball 9'),
('Ball 10'),
('Stadium 1'),
('Stadium 2'),
('Stadium 3'),
('Set cones 1'),
('Set cones 2'),
('Set cones 3');

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
('Pepe', 21, 80, 'forward', 3),
('Martinez', 24, 20, 'goalkeeper', 2),
('Gibbs', 23, 12, 'back', 2),
('Kolasinac', 29, 14, 'back', 2),
('Chamakh', 31, 28, 'midfielder', 2),
('Cazorla', 29, 20, 'midfielder', 2),
('Lacazett', 25, 45, 'forward', 2);


INSERT INTO Doctor (name, age, spec) VALUES
('Brown', 50, 'traumatologist'),
('Muhammad', 51, 'recover'),
('Ivanov', 54, 'traumatologist'),
('Hayek', 55, 'diagnostician');

INSERT INTO Disease (idPlayer, idDoctor, type, settlement, discharge) VALUES
(5, 1, 'knee', '2020-03-12', NULL),
(12, 3, 'meniscus', '2020-08-21', NULL),
(8, 3, 'calf', '2019-12-20', '2020-06-15'),
(8, 2, 'meniscus', '2020-06-16', '2020-07-20'),
(8, 3, 'calf', '2020-10-21', NULL),
(4, 4, 'concussion', '2020-07-12', '2020-09-21');


INSERT INTO Team_Inventory (idTeam, idInventory, start_time, end_time) VALUES
(1, 1, '2020-10-20', '2020-10-21'),
(1, 2, '2020-10-20', '2020-10-21'),
(1, 3, '2020-10-20', '2020-10-21'),
(1, 4, '2020-10-20', '2020-10-21'),
(1, 11, '2020-10-20', '2020-10-21'),
(1, 14, '2020-10-20', '2020-10-21'),
(2, 5, '2020-10-20', '2020-10-21'),
(2, 6, '2020-10-20', '2020-10-21'),
(2, 7, '2020-10-20', '2020-10-21'),
(2, 8, '2020-10-20', '2020-10-21'),
(2, 12, '2020-10-20', '2020-10-21'),
(2, 15, '2020-10-20', '2020-10-21'),
(1, 1, '2020-10-23', NULL),
(1, 2, '2020-10-23', NULL),
(1, 3, '2020-10-23', NULL),
(1, 4, '2020-10-23', NULL),
(1, 11, '2020-10-23', NULL),
(1, 14, '2020-10-23', NULL);
