create table functionalities
(
    id              bigint auto_increment
        primary key,
    name            varchar(32)   null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index functionality_id
    on functionalities (id, deletion_date);

create index functionality_name
    on functionalities (name, deletion_date);


