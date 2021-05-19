set search_path = air_travels;

-- person table
insert into person (first_name, second_name)
    values ('Алексей', 'Зерцалов');
insert into person (first_name, second_name)
    values ('Роман', 'Бердашкевич');
insert into person (first_name, second_name)
    values ('Александр', 'Халяпов');
insert into person (first_name, second_name)
    values ('Артем', 'Андрианов');
insert into person (first_name, second_name)
    values ('Степан', 'Платинский');
insert into person (first_name, second_name)
    values ('Владимир', 'Путин');
insert into person (first_name, second_name)
    values ('Дамир', 'Юсопов');
insert into person (first_name, second_name)
    values ('Георгий', 'Мурзин');
insert into person (first_name, second_name)
    values ('Георгий', 'Баронча');
insert into person (first_name, second_name)
    values ('Дмитрий', 'Чупов');
insert into person (first_name, second_name)
    values ('Сергей', 'Никулов');
insert into person (first_name, second_name)
    values ('Василий', 'Пупкин');
insert into person (first_name, second_name)
    values ('Генадий', 'Букин');
insert into person (first_name, second_name)
    values ('Георгий', 'Слепцов');
insert into person (first_name, second_name)
    values ('Виктор', 'Яковлев');
insert into person (first_name, second_name)
    values ('Надежда', 'Меркурьева');


-- job table
insert into job (name)
    values ('Пилот');
insert into job (name)
    values ('Стюарт');

-- airline table
insert into airline (name)
    values ('Аэрофлот');
insert into airline (name)
    values ('S7');
insert into airline (name)
    values ('Победа');
insert into airline (name)
    values ('Уральские авиалинии');

-- employee table
insert into employee (job_id, person_id, airline_id)
    values (1, 7, 1);
insert into employee (job_id, person_id, airline_id)
    values (1, 8, 1);
insert into employee (job_id, person_id, airline_id)
    values (2, 3, 1);
insert into employee (job_id, person_id, airline_id)
    values (2, 4, 1);
insert into employee (job_id, person_id, airline_id)
    values (2, 8, 1);
insert into employee (job_id, person_id, airline_id)
    values (1, 14, 1);
insert into employee (job_id, person_id, airline_id)
    values (1, 13, 1);
insert into employee (job_id, person_id, airline_id)
    values (2, 15, 1);

-- country table
insert into country (name)
    values ('Россия');
insert into country (name)
    values ('Великобритания');
insert into country (name)
    values ('Германия');
insert into country (name)
    values ('Украина');
insert into country (name)
    values ('Азербайджан');
insert into country (name)
    values ('Соединенные штаты Америки');
insert into country (name)
    values ('Египет');
insert into country (name)
    values ('Турция');

-- city country
insert into city (name, country_id)
    values ('Москва', 1);
insert into city (name, country_id)
    values ('Санкт-Петербург', 1);
insert into city (name, country_id)
    values ('Лондон', 2);
insert into city (name, country_id)
    values ('Мюнхен', 3);
insert into city (name, country_id)
    values ('Киев', 4);
insert into city (name, country_id)
    values ('Баку', 5);
insert into city (name, country_id)
    values ('Нью-Йорк', 6);
insert into city (name, country_id)
    values ('Каир', 7);
insert into city (name, country_id)
    values ('Анкара', 8);
insert into city (name, country_id)
    values ('Белек', 8);
insert into city (name, country_id)
    values ('Шарм-эль-Шейх', 7);


-- airport table
insert into airport (name, city_id)
    values ('Шереметьево', 1);
insert into airport (name, city_id)
    values ('Домодедово', 1);
insert into airport (name, city_id)
    values ('Пулково', 2);
insert into airport (name, city_id)
    values ('Хитроу', 3);
insert into airport (name, city_id)
    values ('аэропорт имени Штраусса', 4);
insert into airport (name, city_id)
    values ('Жуляны', 5);
insert into airport (name, city_id)
    values ('Гейдар Алиев', 6);
insert into airport (name, city_id)
    values ('аэропорт имени Джона Кеннеди', 7);
insert into airport (name, city_id)
    values ('Каир', 8);
insert into airport (name, city_id)
    values ('Эсенбога', 9);
insert into airport (name, city_id)
    values ('Анталия', 10);
insert into airport (name, city_id)
    values ('Шарм-эш-Шейх', 11);


-- airport_ban_list table


-- airline_ban_list table


-- airplane_model table
insert into airplane_model (name, seats_num, flight_distance)
    values ('Airbus A320', 180, 4600);
insert into airplane_model (name, seats_num, flight_distance)
    values ('Boeing 737', 210, 5970);
insert into airplane_model (name, seats_num, flight_distance)
    values ('Boeing 777', 174, 6045);
insert into airplane_model (name, seats_num, flight_distance)
    values ('Иркут МС-21', 165, 6400);
insert into airplane_model (name, seats_num, flight_distance)
    values ('Airbus A330', 293, 13400);


-- airplane table
insert into airplane (airline_id, number, model_id)
    values (1, 'RA-XYZ', 1);
insert into airplane (airline_id, number, model_id)
    values (1, 'RA-XYY', 2);
insert into airplane (airline_id, number, model_id)
    values (1, 'RA-XYX', 3);
insert into airplane (airline_id, number, model_id)
    values (1, 'RA-XXX', 4);
insert into airplane (airline_id, number, model_id)
    values (1, 'RA-YYY', 5);


-- flight table
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (1, 1, 3, 710, '2021-05-18 18:30', '2021-05-18 20:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (1, 3, 1, 710, '2021-05-18 22:30', '2021-05-18 23:55');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 1, 5, 2200, '2021-05-18 10:00', '2021-05-18 13:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 5, 1, 2200, '2021-05-18 17:00', '2021-05-18 20:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 1, 4, 3000, '2021-05-19 06:00', '2021-05-17 10:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 4, 8, 5600, '2021-05-19 16:00', '2021-05-20 02:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 8, 4, 5600, '2021-05-21 10:00', '2021-05-21 19:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 4, 1, 3000, '2021-05-21 23:30', '2021-05-22 04:40');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 1, 3, 710, '2021-05-19 08:00', '2021-05-19 09:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 3, 2, 750, '2021-05-19 12:00', '2021-05-19 13:50');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 2, 6, 800, '2021-05-19 16:00', '2021-05-19 18:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 6, 2, 800, '2021-05-19 20:00', '2021-05-19 22:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 2, 11, 1800, '2021-05-20 09:30', '2021-05-20 15:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 11, 2, 1800, '2021-05-21 05:00', '2021-05-21 10:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 2, 3, 750, '2021-05-21 13:00', '2021-05-21 14:40');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 1, 7, 3000, '2021-05-22 07:00', '2021-05-22 11:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 7, 1, 3000, '2021-05-23 10:00', '2021-05-23 14:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 3, 1, 710, '2021-05-25 08:00', '2021-05-25 09:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 1, 10, 2400, '2021-05-25 12:00', '2021-05-25 15:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 10, 1, 2400, '2021-05-26 12:30', '2021-05-26 16:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (5, 1, 3, 710, '2021-05-26 20:00', '2021-05-26 21:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 1, 3, 710, '2021-05-27 12:00', '2021-05-27 13:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 3, 12, 4500, '2021-05-27 16:00', '2021-05-27 21:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 12, 1, 3800, '2021-05-28 10:00', '2021-05-28 14:00');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 3, 1, 710, '2021-06-01 12:00', '2021-06-01 13:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 1, 9, 4500, '2021-06-01 16:00', '2021-06-01 20:40');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (2, 9, 1, 4500, '2021-06-02 10:00', '2021-06-02 14:40');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 1, 3, 710, '2021-06-01 12:00', '2021-06-01 13:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 3, 10, 5800, '2021-06-01 16:00', '2021-06-01 22:30');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (4, 10, 1, 5000, '2021-06-02 10:00', '2021-06-02 15:30');


-- ticket table
insert into tickets (flight_id, owner_id, airline_id)
    values (1, 1, 1);
insert into tickets (flight_id, owner_id, airline_id)
    values (1, 2, 1);
insert into tickets (flight_id, owner_id, airline_id)
    values (1, 3, 1);
insert into tickets (flight_id, owner_id, airline_id)
    values (1, 4, 1);
insert into tickets (flight_id, owner_id, airline_id)
    values (2, 1, 1);

-- crew table
insert into crew (flight_id, employee_id)
    values (1, 1);
insert into crew (flight_id, employee_id)
    values (1, 2);
insert into crew (flight_id, employee_id)
    values (1, 3);
insert into crew (flight_id, employee_id)
    values (2, 1);
insert into crew (flight_id, employee_id)
    values (2, 2);
insert into crew (flight_id, employee_id)
    values (2, 3);
insert into crew (flight_id, employee_id)
    values (3, 6);
insert into crew (flight_id, employee_id)
    values (3, 7);
insert into crew (flight_id, employee_id)
    values (3, 8);
insert into crew (flight_id, employee_id)
    values (4, 6);
insert into crew (flight_id, employee_id)
    values (4, 7);
insert into crew (flight_id, employee_id)
    values (4, 8);
insert into crew (flight_id, employee_id)
    values (5, 1);
insert into crew (flight_id, employee_id)
    values (5, 2);
insert into crew (flight_id, employee_id)
    values (5, 3);
insert into crew (flight_id, employee_id)
    values (6, 1);
insert into crew (flight_id, employee_id)
    values (6, 2);
insert into crew (flight_id, employee_id)
    values (6, 3);
insert into crew (flight_id, employee_id)
    values (7, 1);
insert into crew (flight_id, employee_id)
    values (7, 2);
insert into crew (flight_id, employee_id)
    values (7, 3);
insert into crew (flight_id, employee_id)
    values (8, 1);
insert into crew (flight_id, employee_id)
    values (8, 2);
insert into crew (flight_id, employee_id)
    values (8, 3);
insert into crew (flight_id, employee_id)
    values (9, 6);
insert into crew (flight_id, employee_id)
    values (9, 7);
insert into crew (flight_id, employee_id)
    values (9, 8);
insert into crew (flight_id, employee_id)
    values (10, 6);
insert into crew (flight_id, employee_id)
    values (10, 7);
insert into crew (flight_id, employee_id)
    values (10, 8);
insert into crew (flight_id, employee_id)
    values (11, 6);
insert into crew (flight_id, employee_id)
    values (11, 7);
insert into crew (flight_id, employee_id)
    values (11, 8);
insert into crew (flight_id, employee_id)
    values (12, 6);
insert into crew (flight_id, employee_id)
    values (12, 7);
insert into crew (flight_id, employee_id)
    values (12, 8);
insert into crew (flight_id, employee_id)
    values (13, 1);
insert into crew (flight_id, employee_id)
    values (13, 2);
insert into crew (flight_id, employee_id)
    values (13, 3);
insert into crew (flight_id, employee_id)
    values (14, 1);
insert into crew (flight_id, employee_id)
    values (14, 2);
insert into crew (flight_id, employee_id)
    values (14, 3);
insert into crew (flight_id, employee_id)
    values (15, 1);
insert into crew (flight_id, employee_id)
    values (15, 2);
insert into crew (flight_id, employee_id)
    values (15, 3);
insert into crew (flight_id, employee_id)
    values (16, 6);
insert into crew (flight_id, employee_id)
    values (16, 7);
insert into crew (flight_id, employee_id)
    values (16, 8);
insert into crew (flight_id, employee_id)
    values (17, 6);
insert into crew (flight_id, employee_id)
    values (17, 7);
insert into crew (flight_id, employee_id)
    values (17, 8);
insert into crew (flight_id, employee_id)
    values (18, 1);
insert into crew (flight_id, employee_id)
    values (18, 2);
insert into crew (flight_id, employee_id)
    values (18, 3);
insert into crew (flight_id, employee_id)
    values (19, 1);
insert into crew (flight_id, employee_id)
    values (19, 2);
insert into crew (flight_id, employee_id)
    values (19, 3);
insert into crew (flight_id, employee_id)
    values (20, 1);
insert into crew (flight_id, employee_id)
    values (20, 2);
insert into crew (flight_id, employee_id)
    values (20, 3);
insert into crew (flight_id, employee_id)
    values (21, 1);
insert into crew (flight_id, employee_id)
    values (21, 2);
insert into crew (flight_id, employee_id)
    values (21, 3);
insert into crew (flight_id, employee_id)
    values (22, 6);
insert into crew (flight_id, employee_id)
    values (22, 7);
insert into crew (flight_id, employee_id)
    values (22, 8);
insert into crew (flight_id, employee_id)
    values (23, 6);
insert into crew (flight_id, employee_id)
    values (23, 7);
insert into crew (flight_id, employee_id)
    values (23, 8);
insert into crew (flight_id, employee_id)
    values (24, 6);
insert into crew (flight_id, employee_id)
    values (24, 7);
insert into crew (flight_id, employee_id)
    values (24, 8);
insert into crew (flight_id, employee_id)
    values (25, 1);
insert into crew (flight_id, employee_id)
    values (25, 2);
insert into crew (flight_id, employee_id)
    values (25, 3);
insert into crew (flight_id, employee_id)
    values (26, 1);
insert into crew (flight_id, employee_id)
    values (26, 2);
insert into crew (flight_id, employee_id)
    values (26, 3);
insert into crew (flight_id, employee_id)
    values (27, 1);
insert into crew (flight_id, employee_id)
    values (27, 2);
insert into crew (flight_id, employee_id)
    values (27, 3);
insert into crew (flight_id, employee_id)
    values (28, 6);
insert into crew (flight_id, employee_id)
    values (28, 7);
insert into crew (flight_id, employee_id)
    values (28, 8);
insert into crew (flight_id, employee_id)
    values (29, 6);
insert into crew (flight_id, employee_id)
    values (29, 7);
insert into crew (flight_id, employee_id)
    values (29, 8);
insert into crew (flight_id, employee_id)
    values (30, 6);
insert into crew (flight_id, employee_id)
    values (30, 7);
insert into crew (flight_id, employee_id)
    values (30, 8);


