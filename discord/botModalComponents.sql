create table botModalComponents
(
    id                        bigint auto_increment
        primary key,
    name                      varchar(64)   null,
    custom_id                 int           null,
    creation_listener_class   varchar(64)   null,
    creation_listener_method  varchar(128)  null,
    implement_listener_class  varchar(64)   null,
    implement_listener_method varchar(128)  null,
    title                     varchar(45)   null,
    ephemeral                 tinyint(1)    null,
    response                  varchar(2000) null,
    creation_date             datetime      null,
    creation_reason           varchar(4000) null,
    expiration_date           datetime      null,
    expiration_reason         varchar(4000) null,
    deletion_date             datetime      null,
    deletion_reason           varchar(4000) null
);

create index get_id
    on botModalComponents (deletion_date, expiration_date, id);

create index get_name
    on botModalComponents (name, expiration_date, deletion_date);


