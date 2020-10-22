CREATE DATABASE IF NOT EXISTS project;
USE project;

CREATE TABLE if not exists Team (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    division INT,
    plays INT,
    points INT
);

CREATE TABLE if not EXISTS Contract (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    salary INT,
    duration DATE
);

CREATE TABLE if not exists Coach (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    xp INT,
    type ENUM('regular', 'manager', 'goalkeeper', 'fitness'),
    idTeam INT,
    idContract INT NOT NULL,
    constraint fk_team_coach FOREIGN KEY(idTeam) references Team(id),
    constraint fk_contract_coach FOREIGN KEY(idContract) references Contract(id)
);

CREATE TABLE if not exists Player (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    transfer_cost INT,
    position ENUM('goalkeeper', 'back', 'midfielder', 'forward'),
    idTeam INT,
    idContract INT NOT NULL,
    constraint fk_team_player FOREIGN KEY(idTeam) references Team(id),
    constraint fk_contract_player FOREIGN KEY(idContract) references Contract(id)

);

CREATE TABLE if not exists Doctor (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name NCHAR(45),
    age INT,
    spec NCHAR(45)
);

CREATE TABLE if NOT EXISTS Disease (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idPlayer INT NOT NULL,
    idDoctor INT NOT NULL,
    type NCHAR(45),
    settlement DATE,
    discharge DATE,
    constraint fk_player FOREIGN KEY(idPlayer) references Player(id),
    constraint fk_doctor FOREIGN KEY(idDoctor) references Doctor(id)
);