create table permissionDefinitions
(
    id              bigint auto_increment
        primary key,
    additional_id   int           null,
    name            varchar(64)   null,
    creation_date   datetime      null,
    creation_reason varchar(7500) null,
    deletion_date   datetime      null,
    deletion_reason varchar(7500) null
);

create index get_all
    on permissionDefinitions (deletion_date, additional_id);

create index get_by_id
    on permissionDefinitions (id, deletion_date, additional_id);

create index get_by_name
    on permissionDefinitions (name, deletion_date, additional_id);


