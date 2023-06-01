DROP DATABASE IF EXISTS pet_farm;

CREATE DATABASE pet_farm;
USE pet_farm;

CREATE TABLE pet_list
(
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    PetName VARCHAR(20), 
    Birthday DATE,
    GenusId int
);

CREATE TABLE pet_types
(
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    Genus_name VARCHAR(20)
);

INSERT INTO pet_types (Id, Genus_name)
VALUES ('1', 'Cat'),
('2', 'Dog'),
('3', 'Hamster');


CREATE TABLE pet_command
(
    Id INT AUTO_INCREMENT PRIMARY KEY, 
    PetId int, 
    CommandId int
);

CREATE TABLE commands
(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Command_name VARCHAR(50)
);

CREATE TABLE Genus_command
(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    GenusId int,
    CommandId int
);




