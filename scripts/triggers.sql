set search_path = air_travels;

-- Триггер, который проверяет при вставке или удалении, что дистанция полета
--      меньше, чем максимальная дистанция полета данного самолета
create or replace function check_flight_dist_func() returns trigger
language plpgsql
as  $$
    declare
        max_flight_dist bigint;
    begin
        select
            airplane_model.flight_distance into max_flight_dist
        from
            airplane
        inner join
            airplane_model
                on airplane.model_id = airplane_model.model_id
        where
            airplane.plane_id = new.plane_id;

        if (max_flight_dist < new.distance) then
            delete from
                flight
            where flight.flight_id = new.flight_id;
            raise 'Incorrect flight (distance < max_flight_distance)';
        end if;
        return new;
    end;
    $$;

create trigger check_flight_dist
after insert or update on flight
    for each row execute procedure check_flight_dist_func();

-- Здесь вылетит ошибка, так как расстояние = 100'000
insert into flight (plane_id, port_dep_id, port_arr_id, distance, planned_dep_time, planned_arr_time)
    values (1, 1, 3, 100000, '2021-05-18 18:30', '2021-05-18 20:00');


-- Триггер, который при добавлении экипажа проверяет, что этот экипаж свободен в это время
create or replace function check_crew_func() returns trigger
language plpgsql
as  $$
    declare
        is_vacant bool;
    begin
        select
            count(*) > 0 into is_vacant
        from
            crew
        inner join
            flight new_flight
                on new.flight_id = new_flight.flight_id
        inner join
            flight other_flights
                on new_flight.planned_dep_time <= other_flights.planned_arr_time
                    or other_flights.planned_dep_time <= new_flight.planned_arr_time
        where
            crew.employee_id = new.employee_id;

        if (is_vacant) then
            delete from
                crew
            where crew.flight_id = new.flight_id and crew.employee_id = new.employee_id;
            raise 'Incorrect crew (New crew that is used in that period of time)';
        end if;
        return new;
    end;
    $$;

create trigger check_crew
after insert or update on crew
    for each row execute procedure check_crew_func();

-- Тут сломается
insert into crew (flight_id, employee_id)
    values (4, 1);