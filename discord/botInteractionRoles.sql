create table botInteractionRoles
(
    id                    int auto_increment
        primary key,
    controlled_message_id int           null,
    type                  varchar(32)   null,
    creation_date         datetime      null,
    creation_reason       varchar(5333) null,
    expiration_date       datetime      null,
    expiration_reason     varchar(5333) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(5333) null
);

create index get
    on botInteractionRoles (expiration_date, deletion_date);


