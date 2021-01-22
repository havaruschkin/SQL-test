--liquibase formatted sql

--changeset yura:2020-12-20-create-procedure-for-stage-violation/18 endDelimiter:#
create function stage_violation_load() returns void
    language plpgsql
AS
$$
begin
    TRUNCATE TABLE stage.violation;

    insert into stage.violation (id, violation_name)
    select id, violation_name
    from public.violation;
end;
$$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-auto/19 endDelimiter:#
create function stage_auto_load() returns void
    language plpgsql
AS
$$
begin
    TRUNCATE TABLE stage.auto;

    insert into stage.auto (id, make, model)
    select id, make, model
    from public.auto;
end;
$$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-car/20 endDelimiter:#
create function stage_car_load() returns void
    language plpgsql
AS
$$
begin
    TRUNCATE TABLE stage.car;

    insert into stage.car (id, auto_id, number_car)
    select id, auto_id, number_car
    from public.car;
end;
$$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-person/21 endDelimiter:#
create function stage_person_load() returns void
    language plpgsql
AS
$$
begin
    TRUNCATE TABLE stage.person;

    insert into stage.person (id, first_name, last_name, phone_number, car_id)
    select id, first_name, last_name, phone_number, car_id
    from public.person;
end;
$$;
--#

--changeset yura:2020-12-20-create-procedure-for-stage-result-table/22 endDelimiter:#
create function stage_result_table_load() returns void
    language plpgsql
AS
$$
begin
    TRUNCATE TABLE stage.result_table;

    insert into stage.result_table (id, person_id, violation_id)
    select id, person_id, violation_id
    from public.result_table;
end;
$$;
--#

