create table botCommandArguments
(
    id              int auto_increment
        primary key,
    command_id      int           null,
    priority        int           null,
    name            varchar(32)   null,
    description     varchar(100)  null,
    required        tinyint(1)    null,
    type            varchar(32)   null,
    min_value       int           null,
    max_value       int           null,
    min_length      int           null,
    max_length      int           null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index get
    on botCommandArguments (command_id, deletion_date, priority);


