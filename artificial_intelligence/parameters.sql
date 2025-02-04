create table parameters
(
    id              int auto_increment
        primary key,
    name            varchar(64)   null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index `check`
    on parameters (deletion_date, id);


