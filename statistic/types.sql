create table types
(
    id              int auto_increment
        primary key,
    correlation_id  int           null,
    application_id  int           null,
    name            varchar(128)  null,
    description     varchar(5333) null,
    creation_date   datetime      null,
    creation_reason varchar(5333) null,
    deletion_date   datetime      null,
    deletion_reason varchar(5333) null
);

create index `check`
    on types (deletion_date, id, application_id);


