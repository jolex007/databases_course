create schema if not exists air_travels;

set search_path = air_travels;

create table if not exists airline (
    airline_id          serial  primary key
    , name              text    not null 
);

create table if not exists person (
    person_id           serial  primary key 
    , first_name        text    not null 
    , second_name       text    not null 
);

create table if not exists job (
    job_id              serial  primary key 
    , name              text    not null 
);

create table if not exists employee (
    employee_id         serial  primary key 
    , job_id            bigint  not null 
    , person_id         bigint  not null 
    , airline_id        bigint  not null 
);

create table if not exists airline_ban_list (
    airline_id          serial  not null 
    , person_id         serial  not null 
);

create table if not exists country (
    country_id          serial  primary key 
    , name              text    not null 
);

create table if not exists city (
    city_id             serial  primary key 
    , name              text    not null 
    , country_id        bigint  not null 
);

create table if not exists airport (
    airport_id          serial  primary key 
    , name              text    not null 
    , city_id           bigint  not null 
);

create table if not exists airport_ban_list (
    airport_id          serial  primary key 
    , person_id         serial  not null 
);

create table if not exists airplane_model (
    model_id            serial  primary key 
    , name              text    not null 
    , seats_num         int     not null 
    , flight_distance   int     not null 
);

create table if not exists airplane (
    plane_id            serial  primary key 
    , airline_id        bigint  not null 
    , number            text    not null 
    , model_id          bigint  not null 
);

create table if not exists tickets (
    ticket_id           serial  primary key 
    , flight_id         bigint  not null 
    , owner_id          bigint  not null 
    , airline_id        bigint  not null 
);

create table if not exists crew (
    flight_id           serial  not null 
    , employee_id       serial  not null 
);

create table if not exists flight (
    flight_id           serial  primary key 
    , plane_id          bigint  not null 
    , port_dep_id       bigint  not null 
    , port_arr_id       bigint  not null 
    , distance          bigint
    , planned_dep_time  time    not null
    , planned_arr_time  time    not null
);