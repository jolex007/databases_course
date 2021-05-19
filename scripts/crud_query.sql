set search_path = air_travels;

-- insert, update, delete запросы на проверку ограничений целостности

-- Ошибка при добавлении человека с NULL значениями
insert into person (first_name, second_name)
    values (null, null);

-- Ошибка при добавлении данных о человеке с такими же данными
insert into person (first_name, second_name)
    values ('Алексей', 'Зерцалов');

-- support insert
insert into person (first_name, second_name)
    values ('Вася', 'Пупкин');
-- end of support insert

-- бред с индексами
update
    employee
set
    person_id = 67
where
    employee_id = 3;

-- При удалении человека из таблицы стирается вся информация о нем из всех таблиц
delete from person
    where first_name = 'Вася' and second_name = 'Пупкин';



-- Ошибка при добавлении самолета с NULL значениями
insert into airplane (airline_id, number, model_id)
    values (null, 'VX-XYZ', 1);

-- support insert
insert into airplane (airline_id, number, model_id)
    values (2, 'XY-ZUW', 1);
-- end of support insert

-- Ошибка при добавлении самолета с таким же порядковым номером
insert into airplane (airline_id, number, model_id)
    values (3, 'XY-ZUW', 2);

-- Ошибка при измении model_id на несуществующий
update
    airplane
set
    model_id = 102
where
    airline_id = 2;

delete from airplane
    where number = 'XY-ZUW';