set search_path = air_travels;

-- Процедура, которая вставит по имени, фамилии, названии аэропорта,
-- и города в котором этот аэропорт находится
-- человека в бан-лист аэропорта
create procedure add_person_to_airport_ban_list(person_first_name text, person_second_name text, airport_name text, city_name text)
language plpgsql
as  $$
    declare
        airport_id_res  bigint;
        person_id_res   bigint;
    begin
        select
            airport.airport_id into airport_id_res
        from
            airport
        inner join
            city
                on airport.city_id = city.city_id
        where
            airport.name = airport_name
            and city.name = city_name;

        select
            person.person_id into person_id_res
        from
            person
        where
            person.first_name = person_first_name
            and person.second_name = person_second_name;

        insert into airport_ban_list (airport_id, person_id)
            values (airport_id_res, person_id_res);
    end;

    $$;

-- Проверим
call add_person_to_airport_ban_list('Дмитрий', 'Чупов', 'Шереметьево', 'Москва');