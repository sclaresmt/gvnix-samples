INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, employed_since, specialty, owner) VALUES ('Owner', 2, 'Calle de Serrano 26', '1968-03-11 00:00:00', 'Madrid', 'juan@gmail.com', 'Juan', '', 'Tomas Vallez', '22222222222', 1, NULL, NULL, NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, employed_since, specialty, owner) VALUES ('Owner', 3, 'Plaza Santo Domingo', '1985-10-13 00:00:00', 'Murcia', 'maria@gmail.com', 'Maria', '', 'Gonzalez Gil', '', 0, NULL, NULL, NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, employed_since, specialty, owner) VALUES ('Owner', 4, 'Carrer de Roger de Flor, 221', '1970-12-12 00:00:00', 'Barcelona', 'vicente@gmail.com', 'Vicente', '', 'Alfonso Perez', '1111111111', 0, NULL, NULL, NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, employed_since, specialty, owner) VALUES ('Vet', 5, 'Carrer Miquel Romeu, 130', '1972-04-23 00:00:00', 'Barcelona', 'vet.lola@gmail.com', 'Lola', 'www.vet.lola.com', 'Asensio Cruz', '55555555555', 0, '2003-10-01 00:00:00', 1, 4);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, employed_since, specialty, owner) VALUES ('Vet', 1, 'Paseo de Recoletos 25', '1975-07-01 00:00:00', 'Madrid', 'vet.ejemplo@gmail.com', 'Ana', 'www.vet.ejemplo.com', 'Martinez Valenzuela', '123456789', 1, '2000-10-21 00:00:00', 0, 2);


INSERT INTO pet (id, name, send_reminders, type, weight, owner) VALUES (1, 'Rocky', false, 0, 15.00, 2);
INSERT INTO pet (id, name, send_reminders, type, weight, owner) VALUES (2, 'Kitty', false, 1, 4.00, 3);
INSERT INTO pet (id, name, send_reminders, type, weight, owner) VALUES (3, 'Donald', false, 2, 5.00, 4);
INSERT INTO pet (id, name, send_reminders, type, weight, owner) VALUES (4, 'Simba', false, 0, 2.00, 3);
INSERT INTO pet (id, name, send_reminders, type, weight, owner) VALUES (5, 'Misifu', true, 1, 6.00, 4);


INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (1, 'vaccination', 0, '2015-10-08 00:00:00', 5, 5);
INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (2, 'Infection', 0, '2013-05-06 00:00:00', 3, 5);
INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (3, 'vaccination', 0, '2014-06-09 00:00:00', 5, 5);
INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (4, 'Irregular hearth beating', 0, '2010-07-10 00:00:00', 1, 1);
INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (5, 'Hearth surgery', 0, '2015-10-15 00:00:00', 1, 1);
INSERT INTO visit (id, description, version, visit_date, pet, vet) VALUES (6, 'Medical examination', 0, '2012-07-08 00:00:00', 1, 1);


