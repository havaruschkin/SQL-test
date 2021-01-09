--liquibase formatted sql

--changeset yura:2020-12-26-select-procedure-for-data-mart-person/30
select data_mart_person_load();

--changeset yura:2020-01-04-select-procedure-for-data-mart-auto/41
select data_mart_auto_load();

--changeset yura:2020-01-04-select-procedure-for-data-mart-car/42
select data_mart_car_load();

--changeset yura:2020-01-04-select-procedure-for-data-mart-result-table/43
select data_mart_result_table_load();

--changeset yura:2020-01-04-select-procedure-for-data-mart-violation/44
select data_mart_violation_load();

