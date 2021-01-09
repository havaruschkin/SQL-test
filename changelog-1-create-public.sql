--liquibase formatted sql

--changeset yura:2020-12-20-create-table-auto/1
create table auto
(
    id    serial,
    make  varchar(20),
    model varchar(20),
    primary key (id)
);

--changeset yura:2020-12-20-create-table-car/2
create table car
(
    id         serial,
    auto_id    int,
    number_car varchar(10),
    PRIMARY KEY (id),
    FOREIGN KEY (auto_id) REFERENCES auto (id)
);

--changeset yura:2020-12-20-create-table-person/3
create table person
(
    id           serial,
    first_name   varchar(20),
    last_name    varchar(20),
    phone_number varchar(20),
    car_id       int unique,
    PRIMARY KEY (id),
    foreign key (car_id) references car (id)
);

--changeset yura:2020-12-20-create-table-violation/4
create table violation
(
    id             serial,
    violation_name varchar(100),
    PRIMARY KEY (id)
);

--changeset yura:2020-12-20-create-table-result-table/5
create table result_table
(
    id           serial,
    person_id    int,
    violation_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES person (id),
    FOREIGN KEY (violation_id) REFERENCES violation (id)
);

