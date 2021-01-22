--liquibase formatted sql

--changeset yura:2020-12-20-create-schema-stage/12
CREATE SCHEMA stage;

--changeset yura:2020-12-20-create-table-violation-for-stage/13
create table stage.violation
(
    id             int,
    violation_name varchar(100),
    PRIMARY KEY (id)
);

--changeset yura:2020-12-20-create-table-auto-for-stage/14
create table stage.auto
(
    id    int,
    make  varchar(20),
    model varchar(20),
    primary key (id)
);

--changeset yura:2020-12-20-create-table-car-for-stage/15
create table stage.car
(
    id         int,
    auto_id    int,
    number_car varchar(10),
    PRIMARY KEY (id),
    FOREIGN KEY (auto_id) REFERENCES auto (id)
);

--changeset yura:2020-12-20-create-table-person-for-stage/16
create table stage.person
(
    id           int,
    first_name   varchar(20),
    last_name    varchar(20),
    phone_number varchar(20),
    car_id       int unique,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) references car (id)
);

--changeset yura:2020-12-20-create-table-result-table-for-stage/17
create table stage.result_table
(
    id           int,
    person_id    int,
    violation_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES person (id),
    FOREIGN KEY (violation_id) REFERENCES violation (id)
);

