--liquibase formatted sql

--changeset yura:2020-12-25-create-procedure-for-data-mart-person/29 endDelimiter:#
create function data_mart_person_load() returns void
    language plpgsql
AS
$$
begin
    insert into data_mart.person (id, first_name, last_name, phone_number, car_id, created_at)
    select id, first_name, last_name, phone_number, car_id, now()
    from stage.person sp
    where sp.id not in (select id from data_mart.person);

    update data_mart.person as dp
    set first_name   = sp.first_name,
        last_name    = sp.last_name,
        phone_number = sp.phone_number,
        car_id       = sp.car_id,
        updated_at   = now()
    from stage.person as sp
    where dp.id = sp.id
      and (
            coalesce(dp.first_name, ' ') <> coalesce(sp.first_name, ' ') or
            coalesce(dp.last_name, ' ') <> coalesce(sp.last_name, ' ') or
            coalesce(dp.phone_number, ' ') <> coalesce(sp.phone_number, ' ') or
            coalesce(dp.car_id, 0) <> coalesce(sp.car_id, 0)
        );
end
$$;
--#

--changeset yura:2021-01-01-create-procedure-for-data-mart-auto/37 endDelimiter:#
create function data_mart_auto_load() returns void
    language plpgsql
AS
$$
begin
    insert into data_mart.auto (id, make, model, created_at)
    select id, make, model, now()
    from stage.auto as sa
    where sa.id not in (select id from data_mart.auto);

    update data_mart.auto as da
    set make       = sa.make,
        model      = sa.model,
        updated_at = now()
    from stage.auto as sa
    where da.id = sa.id
      and (
            coalesce(da.make, ' ') <> coalesce(sa.make, ' ') or
            coalesce(da.model, ' ') <> coalesce(sa.model, ' ')
        );
end;
$$;
--#

--changeset yura:2021-01-04-create-procedure-for-data-mart-car/38 endDelimiter:#
create function data_mart_car_load() returns void
    language plpgsql
AS
$$
begin
    insert into data_mart.car (id, auto_id, number_car, created_at)
    select id, auto_id, number_car, now()
    from stage.car as sc
    where sc.id not in (select id from data_mart.car);

    update data_mart.car as dc
    set auto_id    = sc.auto_id,
        number_car = sc.number_car,
        updated_at = now()
    from stage.car as sc
    where dc.id = sc.id
      and (
            coalesce(dc.auto_id, 0) <> coalesce(sc.auto_id, 0) or
            coalesce(dc.number_car, ' ') <> coalesce(sc.number_car, ' ')
        );
end;
$$;
--#

--changeset yura:2021-01-04-create-procedure-for-data-mart-result-table/39 endDelimiter:#
create function data_mart_result_table_load() returns void
    language plpgsql
AS
$$
begin
    insert into data_mart.result_table (id, person_id, violation_id, created_at)
    select id, person_id, violation_id, now()
    from stage.result_table as srt
    where srt.id not in (select id from data_mart.result_table);

    update data_mart.result_table as dmrt
    set person_id    = srt.person_id,
        violation_id = srt.violation_id,
        updated_at   = now()
    from stage.result_table as srt
    where dmrt.id = srt.id
      and (
            coalesce(dmrt.person_id, 0) <> coalesce(srt.person_id, 0) or
            coalesce(dmrt.violation_id, 0) <> coalesce(srt.violation_id, 0)
        );
end;
$$;
--#

--changeset yura:2021-01-04-create-procedure-for-data-mart-violation/40 endDelimiter:#
create function data_mart_violation_load() returns void
    language plpgsql
AS
$$
begin
    insert into data_mart.violation (id, violation_name, created_at)
    select id, violation_name, now()
    from stage.violation as sv
    where sv.id not in (select id from data_mart.violation);

    update data_mart.violation as dv
    set violation_name = dv.violation_name,
        updated_at     = now()
    from stage.violation as sv
    where dv.id = sv.id
      and coalesce(dv.violation_name, ' ') <> coalesce(sv.violation_name, ' ');
end;
$$;
--#

