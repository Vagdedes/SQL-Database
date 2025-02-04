create table moderations
(
    id              int auto_increment
        primary key,
    application_id  int           null,
    name            varchar(32)   null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index moderation_id
    on moderations (deletion_date, application_id, id);

create index moderation_name
    on moderations (name, deletion_date, application_id);


