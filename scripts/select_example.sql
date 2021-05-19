set search_path = air_travels;

-- Найти кол-во купленных билетов для каждого человека

select
    p.first_name as first_name
    , p.second_name as second_name
    , count(*) as number_of_tickets
from
    person p
inner join
    tickets t
        on t.owner_id = p.person_id
group by
    p.person_id
order by
    count(*) desc;


-- Выбрать марку самолета, который чаще всего летает

select
    model.model_id as model_id
    , model.name as model_name
    , count(*) as number_of_flights
from
    airplane_model model
inner join
    airplane
        on airplane.model_id = model.model_id
inner join
    flight
        on flight.plane_id = airplane.plane_id
group by
    model.model_id
order by
    count(*) desc
limit
    1;

-- Кол-во часов полета для каждого сотрудника

select
    employee_info.employee_id as employee_id
    , person.first_name as first_name
    , person.second_name as second_name
    , employee_info.total_flight_time as total_flight_time
from (
         select employee.employee_id                                   as employee_id
              , sum(flight.planned_arr_time - flight.planned_dep_time) as total_flight_time
         from employee
                  inner join
              person
              on employee.person_id = person.person_id
                  inner join
              crew
              on employee.employee_id = crew.employee_id
                  inner join
              flight
              on crew.flight_id = flight.flight_id
         group by employee.employee_id
     ) as employee_info
inner join
    person
        on person.person_id = employee_info.employee_id;

-- Сколько транзитных рейсов проходит через каждый город

select
    city.city_id as city_id
    , city.name as city_name
    , count(*) as number_of_transit
from
    flight
inner join
    flight as fl
        on flight.port_arr_id = fl.port_dep_id
            and flight.planned_arr_time <= fl.planned_dep_time
            and fl.planned_dep_time - flight.planned_arr_time <= '08:00:00'
            and flight.plane_id = fl.plane_id
inner join
    airport
        on flight.port_arr_id = airport.airport_id
inner join
    city
        on airport.city_id = city.city_id
group by
    city.city_id;

--