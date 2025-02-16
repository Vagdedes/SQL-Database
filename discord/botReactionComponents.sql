create table botReactionComponents
(
    id                    bigint auto_increment
        primary key,
    name                  varchar(64)   null,
    priority              int           null,
    controlled_message_id bigint        null,
    emoji                 varchar(32)   null,
    response              varchar(2000) null,
    listener_class        varchar(64)   null,
    listener_method       varchar(128)  null,
    creation_date         datetime      null,
    creation_reason       varchar(4000) null,
    expiration_date       datetime      null,
    expiration_reason     varchar(4000) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(4000) null
);

create index get
    on botReactionComponents (deletion_date, expiration_date, controlled_message_id, priority);


