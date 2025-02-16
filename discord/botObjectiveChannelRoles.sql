create table botObjectiveChannelRoles
(
    id                   bigint auto_increment
        primary key,
    objective_channel_id int           null,
    role_id              bigint        null,
    creation_date        datetime      null,
    creation_reason      varchar(5333) null,
    expiration_date      datetime      null,
    expiration_reason    varchar(5333) null,
    deletion_date        datetime      null,
    deletion_reason      varchar(5333) null
);


