--liquibase formatted sql

--changeset yura:2020-12-25-create-schema-data-mart/27
create schema data_mart;

--changeset yura:2020-12-25-create-table-person-for-data-mart/28
create table data_mart.person
(
    id           int,
    first_name   varchar(20),
    last_name    varchar(20),
    phone_number varchar(20),
    car_id       int unique,
    created_at   timestamp,
    updated_at   timestamp,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) references car (id)
);

--changeset yura:2021-01-01-create-table-auto-for-data-mart/33
create table data_mart.auto
(
    id         int,
    make       varchar(20),
    model      varchar(20),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);

--changeset yura:2021-01-01-create-table-car-for-data-mart/34
create table data_mart.car
(
    id         int,
    auto_id    int,
    number_car varchar(10),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id),
    FOREIGN KEY (auto_id) REFERENCES auto (id)
);

--changeset yura:2021-01-01-create-table-violation-for-data-mart/35
create table data_mart.violation
(
    id             int,
    violation_name varchar(100),
    created_at     timestamp,
    updated_at     timestamp,
    PRIMARY KEY (id)
);

--changeset yura:2021-01-01-create-table-result-table-for-data-mart/36
create table data_mart.result_table
(
    id           int,
    person_id    int,
    violation_id int,
    created_at   timestamp,
    updated_at   timestamp,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES person (id),
    FOREIGN KEY (violation_id) REFERENCES violation (id)
);

