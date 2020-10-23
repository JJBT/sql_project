CREATE DATABASE IF NOT EXISTS project;
USE project;

CREATE TABLE if not exists Team (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    division INT,
    plays INT,
    points INT
);

CREATE TABLE if not exists Inventory (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45)
);

CREATE TABLE if not exists Coach (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    xp INT,
    type ENUM('regular', 'manager', 'goalkeeper', 'fitness'),
    idTeam INT,
    constraint fk_team_coach FOREIGN KEY(idTeam) references Team(id)
);

CREATE TABLE if not exists Player (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    transfer_cost INT,
    position ENUM('goalkeeper', 'back', 'midfielder', 'forward'),
    idTeam INT,
    constraint fk_team_player FOREIGN KEY(idTeam) references Team(id)
);

CREATE TABLE if not exists Doctor (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    spec NCHAR(45)
);

CREATE TABLE if not exists Disease (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idPlayer INT NOT NULL,
    idDoctor INT NOT NULL,
    type NCHAR(45),
    settlement DATE,
    discharge DATE,
    constraint fk_player FOREIGN KEY(idPlayer) references Player(id),
    constraint fk_doctor FOREIGN KEY(idDoctor) references Doctor(id)
);

CREATE TABLE if not exists Team_Inventory (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idTeam INT NOT NULL,
    idInventory INT NOT NULL,
    start_time DATE,
    end_time DATE,
    constraint fk_pl_inv_inv FOREIGN KEY(idInventory) references Inventory(id),
    constraint fk_pl_inv_pl FOREIGN KEY(idTeam) references Team(id)
);
