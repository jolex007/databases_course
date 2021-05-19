set search_path = air_travels;

-- Человек без ключа
create view v_person as
    select
        first_name
        , second_name
    from
        person;

select
    *
from
    v_person;


-- Сотрудник (ФИ) и название компании
create view v_employees as
    select
        person.first_name as first_name
        , person.second_name as second_name
        , job.name as job_name
        , airline.name as airline_name
    from
        employee
    inner join
        job
            on employee.job_id = job.job_id
    inner join
        person
            on employee.person_id = person.person_id
    inner join
        airline
            on employee.airline_id = airline.airline_id;

select
    *
from
    v_employees;


create view v_airplane as
    select
        airplane.number as number
        , airline.name as airline_name
        , airplane_model.name as model_name
        , airplane_model.seats_num as seats_num
        , airplane_model.flight_distance as max_flight_distance
    from
        airplane
    inner join
        airplane_model
            on airplane.model_id = airplane_model.model_id
    inner join
        airline
            on airplane.airline_id = airline.airline_id;

select
    *
from
    v_airplane;

create view v_airport as
    select
        airport.name as name
        , city.name as city
        , country.name as country
    from
        airport
    inner join
        city
            on airport.city_id = city.city_id
    inner join
        country
            on city.country_id = country.country_id;

select
    *
from
    v_airport;

create view v_flight as
    select
        flight.planned_dep_time as planned_dep_time
        , flight.planned_arr_time as planned_arr_time
        , port_dep.name as dep_airport_name
        , port_arr.name as arr_airport_name
        , airplane.number as plane_number
        , airplane_model.name as plane_name
    from
        flight
    inner join
        airplane
            on flight.plane_id = airplane.plane_id
    inner join
        airplane_model
            on airplane.model_id = airplane_model.model_id
    inner join
        airport port_arr
            on flight.port_arr_id = port_arr.airport_id
    inner join
        airport port_dep
            on flight.port_dep_id = port_dep.airport_id;

select
    *
from
    v_flight;

create view v_tickets as
    select
        person.first_name as first_name
        , person.second_name as second_name
        , port_dep.name as airport_dep_name
        , port_arr.name as airport_arr_name
        , flight.planned_dep_time as planned_dep_time
        , flight.planned_arr_time as planned_arr_time
        , airline.name as airline_name
    from
        tickets
    inner join
        flight
            on tickets.flight_id = flight.flight_id
    inner join
        airport port_dep
            on flight.port_dep_id = port_dep.airport_id
    inner join
        airport port_arr
            on flight.port_arr_id = port_arr.airport_id
    inner join
        person
            on tickets.owner_id = person.person_id
    inner join
        airline
            on tickets.airline_id = airline.airline_id;

select
    *
from
    v_tickets;