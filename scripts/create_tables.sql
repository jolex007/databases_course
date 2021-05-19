create schema if not exists air_travels;

set search_path = air_travels;

create table if not exists airline (
    airline_id          serial  primary key
    , name              text    not null unique
);

create table if not exists person (
    person_id           serial  primary key 
    , first_name        text    not null 
    , second_name       text    not null
    , unique (first_name, second_name)
);

create table if not exists job (
    job_id              serial  primary key 
    , name              text    not null unique
);

create table if not exists employee (
    employee_id         serial  primary key 
    , job_id            bigint  not null references "job"(job_id)
    , person_id         bigint  not null references "person"(person_id)
    , airline_id        bigint  not null references "airline"(airline_id)
);

create table if not exists airline_ban_list (
    airline_id          serial  not null references "airline"(airline_id)
    , person_id         serial  not null references "person"(person_id)
    , primary key (airline_id, person_id)
);

create table if not exists country (
    country_id          serial  primary key
    , name              text  not null unique
);

create table if not exists city (
    city_id             serial  primary key 
    , name              text    not null
    , country_id        bigint  not null  references "country"(country_id)
    , unique (name, country_id)
);

create table if not exists airport (
    airport_id          serial  primary key 
    , name              text    not null 
    , city_id           bigint  not null references "city"(city_id)
    , unique (name, city_id)
);

create table if not exists airport_ban_list (
    airport_id          serial  not null
    , person_id         serial  not null references "person"(person_id)
    , unique (airport_id, person_id)
);

create table if not exists airplane_model (
    model_id            serial  primary key 
    , name              text    not null unique
    , seats_num         int     not null 
    , flight_distance   int     not null 
);

create table if not exists airplane (
    plane_id            serial  primary key 
    , airline_id        bigint  not null references "airline"(airline_id)
    , number            text  unique  not null
    , model_id          bigint  not null references "airplane_model"(model_id)
);

create table if not exists flight (
    flight_id           serial  primary key
    , plane_id          bigint  not null  references "airplane"(plane_id)
    , port_dep_id       bigint  not null  references "airport"(airport_id)
    , port_arr_id       bigint  not null  references "airport"(airport_id)
    , distance          bigint  not null
    , planned_dep_time  time    not null
    , planned_arr_time  time    not null
);

create table if not exists tickets (
    ticket_id           serial  primary key 
    , flight_id         bigint  not null  references "flight"(flight_id)
    , owner_id          bigint  not null  references "person"(person_id)
    , airline_id        bigint  not null  references "airline"(airline_id)
    , unique (flight_id, owner_id, airline_id)
);

create table if not exists crew (
    flight_id           serial  not null  references "flight"(flight_id)
    , employee_id       serial  not null  references "employee"(employee_id)
    , unique (flight_id, employee_id)
);

