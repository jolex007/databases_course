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
    values (2, 1, 5, 2200, '2021-05-18 17:00', '2021-05-18 20:20');
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (3, 2, 4, 2700, '2021-05-18 10:00', '2021-05-18 14:05');


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
