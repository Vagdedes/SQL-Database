create table botGiveawayTracking
(
    id                   bigint        not null
        primary key,
    plan_id              int           null,
    giveaway_id          bigint        null,
    giveaway_creation_id bigint        null,
    server_id            bigint        null,
    channel_id           bigint        null,
    thread_id            bigint        null,
    message_id           bigint        null,
    user_id              bigint        null,
    copy                 tinyint(1)    null,
    running              tinyint(1)    null,
    creation_date        datetime      null,
    creation_reason      varchar(5333) null,
    created_by           bigint        null,
    expiration_date      datetime      null,
    expiration_reason    varchar(5333) null,
    deletion_date        datetime      null,
    deletion_reason      varchar(5333) null,
    deleted_by           bigint        null
);

create index expired
    on botGiveawayTracking (deletion_date, expiration_date, plan_id, copy, running);

create index redundancy
    on botGiveawayTracking (giveaway_creation_id);

create index running
    on botGiveawayTracking (running, deletion_date, server_id, giveaway_id, copy);

create index `update`
    on botGiveawayTracking (deletion_date, expiration_date, plan_id, copy, running, id);


