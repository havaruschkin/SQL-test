--liquibase formatted sql

--changeset yura:2020-12-20-select-procedure-for-car/22
select stage_car_load();

--changeset yura:2020-12-20-select-procedure-for-auto/23
select stage_auto_load();

--changeset yura:2020-12-20-select-procedure-for-violation/24
select stage_violation_load();

--changeset yura:2020-12-20-select-procedure-for-person/25
select stage_person_load();

--changeset yura:2020-12-20-select-procedure-for-result-table/26
select stage_result_table_load();

