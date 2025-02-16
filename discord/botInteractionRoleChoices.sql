create table botInteractionRoleChoices
(
    id                  int auto_increment
        primary key,
    interaction_role_id int           null,
    priority            int           null,
    name                varchar(80)   null,
    description         varchar(100)  null,
    placeholder         varchar(150)  null,
    reply_success       varchar(2000) null,
    reply_failure       varchar(2000) null,
    color               varchar(32)   null,
    role_id             bigint        null,
    creation_date       datetime      null,
    creation_reason     varchar(4000) null,
    expiration_date     datetime      null,
    expiration_reason   varchar(4000) null,
    deletion_date       datetime      null,
    deletion_reason     varchar(4000) null,
    remove              tinyint(1)    null
);

create index get
    on botInteractionRoleChoices (interaction_role_id, expiration_date, deletion_date, priority);


