create table botAICostLimits
(
    id                int auto_increment
        primary key,
    ai_model_id       int           null,
    server_id         bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    role_id           bigint        null,
    user              tinyint       null,
    `limit`           double        null,
    past_lookup       varchar(32)   null,
    timeout           tinyint(1)    null,
    message           varchar(2000) null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    created_by        bigint        null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null,
    deleted_by        bigint        null
);

create index get
    on botAICostLimits (expiration_date, deletion_date, ai_model_id);

create index `limit`
    on botAICostLimits (deletion_date, expiration_date, ai_model_id, server_id, channel_id, thread_id, user,
                        past_lookup);


