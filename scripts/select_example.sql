set search_path = air_travels;

-- Найти кол-во купленных билетов для каждого человека

select
    p.first_name
    , p.second_name
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
    model.model_id
    , model.name
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

--

