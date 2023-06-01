USE pet_farm;

INSERT INTO pet_list (PetName, Birthday, GenusId)
VALUES ('Симба', '2020.10.10', '1'),
('Мухтар', '2020.11.11', '2'),
('Кексик', '2021.10.12', '3');


INSERT INTO commands (Command_name)
VALUES  ('Прыжок'),
('Сидеть'),
('Лежать'),
('Фу'),
('Место'),
('Иди сюда'),
('След');


INSERT INTO Genus_command (GenusId, CommandId)
VALUES ('1', '1'), 
('1', '2'),
('1', '3'),
('2', '1'),
('2', '2'),
('2', '3'),
('2', '4'),
('2', '5'),
('2', '6'),
('2', '7'),
('3', '6');


INSERT INTO pet_command (PetId, CommandId)
VALUES ('1', '1'), 
('1', '2'),
('2', '1'),
('2', '2'),
('2', '3'),
('3', '6');
